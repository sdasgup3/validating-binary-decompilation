; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x62ea38_type = type <{ [4 x i8] }>
%G_0x633b40_type = type <{ [4 x i8] }>
%G_0x633b54_type = type <{ [4 x i8] }>
%G_0x633b58_type = type <{ [4 x i8] }>
%G_0x85f150_type = type <{ [4 x i8] }>
%G_0x85f154_type = type <{ [1 x i8] }>
%G_0x85f164_type = type <{ [4 x i8] }>
%G_0x8661bc_type = type <{ [1 x i8] }>
%G_0x886a78_type = type <{ [1 x i8] }>
%G_0x886bc0_type = type <{ [4 x i8] }>
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
@G_0x62ea38 = local_unnamed_addr global %G_0x62ea38_type zeroinitializer
@G_0x633b40 = local_unnamed_addr global %G_0x633b40_type zeroinitializer
@G_0x633b54 = local_unnamed_addr global %G_0x633b54_type zeroinitializer
@G_0x633b58 = local_unnamed_addr global %G_0x633b58_type zeroinitializer
@G_0x85f150 = local_unnamed_addr global %G_0x85f150_type zeroinitializer
@G_0x85f154 = local_unnamed_addr global %G_0x85f154_type zeroinitializer
@G_0x85f164 = local_unnamed_addr global %G_0x85f164_type zeroinitializer
@G_0x8661bc = local_unnamed_addr global %G_0x8661bc_type zeroinitializer
@G_0x886a78 = local_unnamed_addr global %G_0x886a78_type zeroinitializer
@G_0x886bc0 = local_unnamed_addr global %G_0x886bc0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_4207f0.StoreTT(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_402920.is_draw(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407e30.gen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4098e0.in_check(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b730.make(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406680.check_legal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40c7a0.unmake(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @set_proof_and_disproof_numbers(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -12392
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 12384
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %RDI.i134 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i134, align 8
  %42 = add i64 %10, 14
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -8
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 4
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %45 to i64*
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %RDI.i134, align 8
  %50 = add i64 %49, 2
  %51 = add i64 %46, 8
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %50 to i8*
  %53 = load i8, i8* %52, align 1
  store i8 0, i8* %14, align 1
  %54 = zext i8 %53 to i32
  %55 = tail call i32 @llvm.ctpop.i32(i32 %54)
  %56 = trunc i32 %55 to i8
  %57 = and i8 %56, 1
  %58 = xor i8 %57, 1
  store i8 %58, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %59 = icmp eq i8 %53, 0
  %60 = zext i1 %59 to i8
  store i8 %60, i8* %29, align 1
  %61 = lshr i8 %53, 7
  store i8 %61, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v187 = select i1 %59, i64 738, i64 14
  %62 = add i64 %46, %.v187
  store i64 %62, i64* %3, align 8
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i807 = getelementptr inbounds %union.anon, %union.anon* %63, i64 0, i32 0
  br i1 %59, label %block_.L_4136f1, label %block_41341d

block_41341d:                                     ; preds = %entry
  %RCX.i253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  store i64 0, i64* %RCX.i253, align 8
  %64 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %65 = icmp eq i32 %64, 0
  %66 = zext i1 %65 to i64
  store i64 %66, i64* %RAX.i807, align 8
  %67 = zext i1 %65 to i32
  %68 = load i32, i32* bitcast (%G_0x633b54_type* @G_0x633b54 to i32*), align 8
  %69 = sub i32 %67, %68
  %70 = icmp ult i32 %67, %68
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %14, align 1
  %72 = and i32 %69, 255
  %73 = tail call i32 @llvm.ctpop.i32(i32 %72)
  %74 = trunc i32 %73 to i8
  %75 = and i8 %74, 1
  %76 = xor i8 %75, 1
  store i8 %76, i8* %21, align 1
  %77 = xor i32 %68, %69
  %78 = lshr i32 %77, 4
  %79 = trunc i32 %78 to i8
  %80 = and i8 %79, 1
  store i8 %80, i8* %26, align 1
  %81 = icmp eq i32 %69, 0
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %29, align 1
  %83 = lshr i32 %69, 31
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %32, align 1
  %85 = lshr i32 %68, 31
  %86 = add nuw nsw i32 %83, %85
  %87 = icmp eq i32 %86, 2
  %88 = zext i1 %87 to i8
  store i8 %88, i8* %38, align 1
  %.v191 = select i1 %81, i64 348, i64 31
  %89 = add i64 %62, %.v191
  store i64 %89, i64* %3, align 8
  br i1 %81, label %block_.L_413579, label %block_41343c

block_41343c:                                     ; preds = %block_41341d
  %90 = add i64 %44, -12
  %91 = add i64 %89, 7
  store i64 %91, i64* %3, align 8
  %92 = inttoptr i64 %90 to i32*
  store i32 0, i32* %92, align 4
  %93 = load i64, i64* %RBP.i, align 8
  %94 = add i64 %93, -16
  %95 = load i64, i64* %3, align 8
  %96 = add i64 %95, 7
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %94 to i32*
  store i32 100000000, i32* %97, align 4
  %98 = load i64, i64* %RBP.i, align 8
  %99 = add i64 %98, -20
  %100 = load i64, i64* %3, align 8
  %101 = add i64 %100, 7
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %99 to i32*
  store i32 0, i32* %102, align 4
  %RDX.i1111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_413451

block_.L_413451:                                  ; preds = %block_.L_4134c3, %block_41343c
  %103 = phi i64 [ %335, %block_.L_4134c3 ], [ %.pre, %block_41343c ]
  %104 = load i64, i64* %RBP.i, align 8
  %105 = add i64 %104, -20
  %106 = add i64 %103, 3
  store i64 %106, i64* %3, align 8
  %107 = inttoptr i64 %105 to i32*
  %108 = load i32, i32* %107, align 4
  %109 = zext i32 %108 to i64
  store i64 %109, i64* %RAX.i807, align 8
  %110 = add i64 %104, -8
  %111 = add i64 %103, 7
  store i64 %111, i64* %3, align 8
  %112 = inttoptr i64 %110 to i64*
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %RCX.i253, align 8
  %114 = add i64 %113, 1
  %115 = add i64 %103, 11
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %114 to i8*
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i64
  store i64 %118, i64* %RDX.i1111, align 8
  %119 = zext i8 %117 to i32
  %120 = sub i32 %108, %119
  %121 = icmp ult i32 %108, %119
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %14, align 1
  %123 = and i32 %120, 255
  %124 = tail call i32 @llvm.ctpop.i32(i32 %123)
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  %127 = xor i8 %126, 1
  store i8 %127, i8* %21, align 1
  %128 = xor i32 %119, %108
  %129 = xor i32 %128, %120
  %130 = lshr i32 %129, 4
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  store i8 %132, i8* %26, align 1
  %133 = icmp eq i32 %120, 0
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %29, align 1
  %135 = lshr i32 %120, 31
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %32, align 1
  %137 = lshr i32 %108, 31
  %138 = xor i32 %135, %137
  %139 = add nuw nsw i32 %138, %137
  %140 = icmp eq i32 %139, 2
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %38, align 1
  %142 = icmp ne i8 %136, 0
  %143 = xor i1 %142, %140
  %.v192 = select i1 %143, i64 19, i64 133
  %144 = add i64 %103, %.v192
  store i64 %144, i64* %3, align 8
  br i1 %143, label %block_413464, label %block_.L_4134d6

block_413464:                                     ; preds = %block_.L_413451
  %145 = add i64 %144, 4
  store i64 %145, i64* %3, align 8
  %146 = load i64, i64* %112, align 8
  store i64 %146, i64* %RAX.i807, align 8
  %147 = add i64 %146, 16
  %148 = add i64 %144, 8
  store i64 %148, i64* %3, align 8
  %149 = inttoptr i64 %147 to i64*
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %RAX.i807, align 8
  %151 = add i64 %144, 12
  store i64 %151, i64* %3, align 8
  %152 = load i32, i32* %107, align 4
  %153 = sext i32 %152 to i64
  store i64 %153, i64* %RCX.i253, align 8
  %154 = shl nsw i64 %153, 3
  %155 = add i64 %154, %150
  %156 = add i64 %144, 16
  store i64 %156, i64* %3, align 8
  %157 = inttoptr i64 %155 to i64*
  %158 = load i64, i64* %157, align 8
  store i64 %158, i64* %RAX.i807, align 8
  %159 = add i64 %158, 4
  %160 = add i64 %144, 19
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %159 to i32*
  %162 = load i32, i32* %161, align 4
  %163 = zext i32 %162 to i64
  store i64 %163, i64* %RDX.i1111, align 8
  %164 = add i64 %104, -12
  %165 = add i64 %144, 22
  store i64 %165, i64* %3, align 8
  %166 = inttoptr i64 %164 to i32*
  %167 = load i32, i32* %166, align 4
  %168 = add i32 %167, %162
  %169 = zext i32 %168 to i64
  store i64 %169, i64* %RDX.i1111, align 8
  %170 = icmp ult i32 %168, %162
  %171 = icmp ult i32 %168, %167
  %172 = or i1 %170, %171
  %173 = zext i1 %172 to i8
  store i8 %173, i8* %14, align 1
  %174 = and i32 %168, 255
  %175 = tail call i32 @llvm.ctpop.i32(i32 %174)
  %176 = trunc i32 %175 to i8
  %177 = and i8 %176, 1
  %178 = xor i8 %177, 1
  store i8 %178, i8* %21, align 1
  %179 = xor i32 %167, %162
  %180 = xor i32 %179, %168
  %181 = lshr i32 %180, 4
  %182 = trunc i32 %181 to i8
  %183 = and i8 %182, 1
  store i8 %183, i8* %26, align 1
  %184 = icmp eq i32 %168, 0
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %29, align 1
  %186 = lshr i32 %168, 31
  %187 = trunc i32 %186 to i8
  store i8 %187, i8* %32, align 1
  %188 = lshr i32 %162, 31
  %189 = lshr i32 %167, 31
  %190 = xor i32 %186, %188
  %191 = xor i32 %186, %189
  %192 = add nuw nsw i32 %190, %191
  %193 = icmp eq i32 %192, 2
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %38, align 1
  %195 = add i64 %144, 25
  store i64 %195, i64* %3, align 8
  store i32 %168, i32* %166, align 4
  %196 = load i64, i64* %RBP.i, align 8
  %197 = add i64 %196, -12
  %198 = load i64, i64* %3, align 8
  %199 = add i64 %198, 7
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %197 to i32*
  %201 = load i32, i32* %200, align 4
  %202 = add i32 %201, -100000000
  %203 = icmp ult i32 %201, 100000000
  %204 = zext i1 %203 to i8
  store i8 %204, i8* %14, align 1
  %205 = and i32 %202, 255
  %206 = tail call i32 @llvm.ctpop.i32(i32 %205)
  %207 = trunc i32 %206 to i8
  %208 = and i8 %207, 1
  %209 = xor i8 %208, 1
  store i8 %209, i8* %21, align 1
  %210 = xor i32 %202, %201
  %211 = lshr i32 %210, 4
  %212 = trunc i32 %211 to i8
  %213 = and i8 %212, 1
  store i8 %213, i8* %26, align 1
  %214 = icmp eq i32 %202, 0
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %29, align 1
  %216 = lshr i32 %202, 31
  %217 = trunc i32 %216 to i8
  store i8 %217, i8* %32, align 1
  %218 = lshr i32 %201, 31
  %219 = xor i32 %216, %218
  %220 = add nuw nsw i32 %219, %218
  %221 = icmp eq i32 %220, 2
  %222 = zext i1 %221 to i8
  store i8 %222, i8* %38, align 1
  %223 = icmp ne i8 %217, 0
  %224 = xor i1 %223, %221
  %225 = or i1 %214, %224
  %.v197 = select i1 %225, i64 20, i64 13
  %226 = add i64 %198, %.v197
  store i64 %226, i64* %3, align 8
  br i1 %225, label %block_.L_413491, label %block_41348a

block_41348a:                                     ; preds = %block_413464
  %227 = add i64 %226, 7
  store i64 %227, i64* %3, align 8
  store i32 100000000, i32* %200, align 4
  %.pre68 = load i64, i64* %RBP.i, align 8
  %.pre69 = load i64, i64* %3, align 8
  br label %block_.L_413491

block_.L_413491:                                  ; preds = %block_41348a, %block_413464
  %228 = phi i64 [ %.pre69, %block_41348a ], [ %226, %block_413464 ]
  %229 = phi i64 [ %.pre68, %block_41348a ], [ %196, %block_413464 ]
  %230 = add i64 %229, -8
  %231 = add i64 %228, 4
  store i64 %231, i64* %3, align 8
  %232 = inttoptr i64 %230 to i64*
  %233 = load i64, i64* %232, align 8
  store i64 %233, i64* %RAX.i807, align 8
  %234 = add i64 %233, 16
  %235 = add i64 %228, 8
  store i64 %235, i64* %3, align 8
  %236 = inttoptr i64 %234 to i64*
  %237 = load i64, i64* %236, align 8
  store i64 %237, i64* %RAX.i807, align 8
  %238 = add i64 %229, -20
  %239 = add i64 %228, 12
  store i64 %239, i64* %3, align 8
  %240 = inttoptr i64 %238 to i32*
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  store i64 %242, i64* %RCX.i253, align 8
  %243 = shl nsw i64 %242, 3
  %244 = add i64 %243, %237
  %245 = add i64 %228, 16
  store i64 %245, i64* %3, align 8
  %246 = inttoptr i64 %244 to i64*
  %247 = load i64, i64* %246, align 8
  store i64 %247, i64* %RAX.i807, align 8
  %248 = add i64 %247, 8
  %249 = add i64 %228, 19
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %248 to i32*
  %251 = load i32, i32* %250, align 4
  %252 = zext i32 %251 to i64
  store i64 %252, i64* %RDX.i1111, align 8
  %253 = add i64 %229, -16
  %254 = add i64 %228, 22
  store i64 %254, i64* %3, align 8
  %255 = inttoptr i64 %253 to i32*
  %256 = load i32, i32* %255, align 4
  %257 = sub i32 %251, %256
  %258 = icmp ult i32 %251, %256
  %259 = zext i1 %258 to i8
  store i8 %259, i8* %14, align 1
  %260 = and i32 %257, 255
  %261 = tail call i32 @llvm.ctpop.i32(i32 %260)
  %262 = trunc i32 %261 to i8
  %263 = and i8 %262, 1
  %264 = xor i8 %263, 1
  store i8 %264, i8* %21, align 1
  %265 = xor i32 %256, %251
  %266 = xor i32 %265, %257
  %267 = lshr i32 %266, 4
  %268 = trunc i32 %267 to i8
  %269 = and i8 %268, 1
  store i8 %269, i8* %26, align 1
  %270 = icmp eq i32 %257, 0
  %271 = zext i1 %270 to i8
  store i8 %271, i8* %29, align 1
  %272 = lshr i32 %257, 31
  %273 = trunc i32 %272 to i8
  store i8 %273, i8* %32, align 1
  %274 = lshr i32 %251, 31
  %275 = lshr i32 %256, 31
  %276 = xor i32 %275, %274
  %277 = xor i32 %272, %274
  %278 = add nuw nsw i32 %277, %276
  %279 = icmp eq i32 %278, 2
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %38, align 1
  %281 = icmp ne i8 %273, 0
  %282 = xor i1 %281, %279
  %.v198 = select i1 %282, i64 28, i64 50
  %283 = add i64 %228, %.v198
  store i64 %283, i64* %3, align 8
  br i1 %282, label %block_4134ad, label %block_.L_4134c3

block_4134ad:                                     ; preds = %block_.L_413491
  %284 = add i64 %283, 4
  store i64 %284, i64* %3, align 8
  %285 = load i64, i64* %232, align 8
  store i64 %285, i64* %RAX.i807, align 8
  %286 = add i64 %285, 16
  %287 = add i64 %283, 8
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %286 to i64*
  %289 = load i64, i64* %288, align 8
  store i64 %289, i64* %RAX.i807, align 8
  %290 = add i64 %283, 12
  store i64 %290, i64* %3, align 8
  %291 = load i32, i32* %240, align 4
  %292 = sext i32 %291 to i64
  store i64 %292, i64* %RCX.i253, align 8
  %293 = shl nsw i64 %292, 3
  %294 = add i64 %293, %289
  %295 = add i64 %283, 16
  store i64 %295, i64* %3, align 8
  %296 = inttoptr i64 %294 to i64*
  %297 = load i64, i64* %296, align 8
  store i64 %297, i64* %RAX.i807, align 8
  %298 = add i64 %297, 8
  %299 = add i64 %283, 19
  store i64 %299, i64* %3, align 8
  %300 = inttoptr i64 %298 to i32*
  %301 = load i32, i32* %300, align 4
  %302 = zext i32 %301 to i64
  store i64 %302, i64* %RDX.i1111, align 8
  %303 = add i64 %283, 22
  store i64 %303, i64* %3, align 8
  store i32 %301, i32* %255, align 4
  %.pre70 = load i64, i64* %3, align 8
  %.pre71 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4134c3

block_.L_4134c3:                                  ; preds = %block_.L_413491, %block_4134ad
  %304 = phi i64 [ %229, %block_.L_413491 ], [ %.pre71, %block_4134ad ]
  %305 = phi i64 [ %283, %block_.L_413491 ], [ %.pre70, %block_4134ad ]
  %306 = add i64 %304, -20
  %307 = add i64 %305, 8
  store i64 %307, i64* %3, align 8
  %308 = inttoptr i64 %306 to i32*
  %309 = load i32, i32* %308, align 4
  %310 = add i32 %309, 1
  %311 = zext i32 %310 to i64
  store i64 %311, i64* %RAX.i807, align 8
  %312 = icmp eq i32 %309, -1
  %313 = icmp eq i32 %310, 0
  %314 = or i1 %312, %313
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %14, align 1
  %316 = and i32 %310, 255
  %317 = tail call i32 @llvm.ctpop.i32(i32 %316)
  %318 = trunc i32 %317 to i8
  %319 = and i8 %318, 1
  %320 = xor i8 %319, 1
  store i8 %320, i8* %21, align 1
  %321 = xor i32 %310, %309
  %322 = lshr i32 %321, 4
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  store i8 %324, i8* %26, align 1
  %325 = zext i1 %313 to i8
  store i8 %325, i8* %29, align 1
  %326 = lshr i32 %310, 31
  %327 = trunc i32 %326 to i8
  store i8 %327, i8* %32, align 1
  %328 = lshr i32 %309, 31
  %329 = xor i32 %326, %328
  %330 = add nuw nsw i32 %329, %326
  %331 = icmp eq i32 %330, 2
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %38, align 1
  %333 = add i64 %305, 14
  store i64 %333, i64* %3, align 8
  store i32 %310, i32* %308, align 4
  %334 = load i64, i64* %3, align 8
  %335 = add i64 %334, -128
  store i64 %335, i64* %3, align 8
  br label %block_.L_413451

block_.L_4134d6:                                  ; preds = %block_.L_413451
  %336 = add i64 %104, -12
  %337 = add i64 %144, 4
  store i64 %337, i64* %3, align 8
  %338 = inttoptr i64 %336 to i32*
  %339 = load i32, i32* %338, align 4
  store i8 0, i8* %14, align 1
  %340 = and i32 %339, 255
  %341 = tail call i32 @llvm.ctpop.i32(i32 %340)
  %342 = trunc i32 %341 to i8
  %343 = and i8 %342, 1
  %344 = xor i8 %343, 1
  store i8 %344, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %345 = icmp eq i32 %339, 0
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %29, align 1
  %347 = lshr i32 %339, 31
  %348 = trunc i32 %347 to i8
  store i8 %348, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v193 = select i1 %345, i64 23, i64 10
  %349 = add i64 %144, %.v193
  store i64 %349, i64* %3, align 8
  br i1 %345, label %block_.L_4134ed, label %block_4134e0

block_4134e0:                                     ; preds = %block_.L_4134d6
  %350 = add i64 %104, -16
  %351 = add i64 %349, 7
  store i64 %351, i64* %3, align 8
  %352 = inttoptr i64 %350 to i32*
  %353 = load i32, i32* %352, align 4
  %354 = add i32 %353, -100000000
  %355 = icmp ult i32 %353, 100000000
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %14, align 1
  %357 = and i32 %354, 255
  %358 = tail call i32 @llvm.ctpop.i32(i32 %357)
  %359 = trunc i32 %358 to i8
  %360 = and i8 %359, 1
  %361 = xor i8 %360, 1
  store i8 %361, i8* %21, align 1
  %362 = xor i32 %354, %353
  %363 = lshr i32 %362, 4
  %364 = trunc i32 %363 to i8
  %365 = and i8 %364, 1
  store i8 %365, i8* %26, align 1
  %366 = icmp eq i32 %354, 0
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %29, align 1
  %368 = lshr i32 %354, 31
  %369 = trunc i32 %368 to i8
  store i8 %369, i8* %32, align 1
  %370 = lshr i32 %353, 31
  %371 = xor i32 %368, %370
  %372 = add nuw nsw i32 %371, %370
  %373 = icmp eq i32 %372, 2
  %374 = zext i1 %373 to i8
  store i8 %374, i8* %38, align 1
  %.v194 = select i1 %366, i64 13, i64 69
  %375 = add i64 %349, %.v194
  store i64 %375, i64* %3, align 8
  br i1 %366, label %block_.L_4134ed, label %block_.L_413525

block_.L_4134ed:                                  ; preds = %block_4134e0, %block_.L_4134d6
  %376 = phi i64 [ %375, %block_4134e0 ], [ %349, %block_.L_4134d6 ]
  store i64 999500, i64* %RDI.i134, align 8
  %RSI.i1026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 1000000, i64* %RSI.i1026, align 8
  store i64 4293967296, i64* %RDX.i1111, align 8
  store i64 4294967295, i64* %RCX.i253, align 8
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 0, i64* %377, align 8
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  store i64 200, i64* %378, align 8
  %379 = load i32, i32* bitcast (%G_0x633b58_type* @G_0x633b58 to i32*), align 8
  %380 = add i32 %379, 1
  %381 = zext i32 %380 to i64
  store i64 %381, i64* %RAX.i807, align 8
  %382 = icmp eq i32 %379, -1
  %383 = icmp eq i32 %380, 0
  %384 = or i1 %382, %383
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %14, align 1
  %386 = and i32 %380, 255
  %387 = tail call i32 @llvm.ctpop.i32(i32 %386)
  %388 = trunc i32 %387 to i8
  %389 = and i8 %388, 1
  %390 = xor i8 %389, 1
  store i8 %390, i8* %21, align 1
  %391 = xor i32 %380, %379
  %392 = lshr i32 %391, 4
  %393 = trunc i32 %392 to i8
  %394 = and i8 %393, 1
  store i8 %394, i8* %26, align 1
  %395 = zext i1 %383 to i8
  store i8 %395, i8* %29, align 1
  %396 = lshr i32 %380, 31
  %397 = trunc i32 %396 to i8
  store i8 %397, i8* %32, align 1
  %398 = lshr i32 %379, 31
  %399 = xor i32 %396, %398
  %400 = add nuw nsw i32 %399, %396
  %401 = icmp eq i32 %400, 2
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %38, align 1
  store i32 %380, i32* bitcast (%G_0x633b58_type* @G_0x633b58 to i32*), align 8
  %403 = add i64 %376, 54019
  %404 = add i64 %376, 51
  %405 = load i64, i64* %6, align 8
  %406 = add i64 %405, -8
  %407 = inttoptr i64 %406 to i64*
  store i64 %404, i64* %407, align 8
  store i64 %406, i64* %6, align 8
  store i64 %403, i64* %3, align 8
  %call2_41351b = tail call %struct.Memory* @sub_4207f0.StoreTT(%struct.State* nonnull %0, i64 %403, %struct.Memory* %2)
  %408 = load i64, i64* %3, align 8
  %409 = add i64 %408, 84
  br label %block_.L_413574

block_.L_413525:                                  ; preds = %block_4134e0
  %410 = add i64 %375, 4
  store i64 %410, i64* %3, align 8
  %411 = load i32, i32* %352, align 4
  store i8 0, i8* %14, align 1
  %412 = and i32 %411, 255
  %413 = tail call i32 @llvm.ctpop.i32(i32 %412)
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  %416 = xor i8 %415, 1
  store i8 %416, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %417 = icmp eq i32 %411, 0
  %418 = zext i1 %417 to i8
  store i8 %418, i8* %29, align 1
  %419 = lshr i32 %411, 31
  %420 = trunc i32 %419 to i8
  store i8 %420, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v195 = select i1 %417, i64 23, i64 10
  %421 = add i64 %375, %.v195
  store i64 %421, i64* %3, align 8
  br i1 %417, label %block_.L_41353c, label %block_41352f

block_41352f:                                     ; preds = %block_.L_413525
  %422 = add i64 %421, 7
  store i64 %422, i64* %3, align 8
  %423 = load i32, i32* %338, align 4
  %424 = add i32 %423, -100000000
  %425 = icmp ult i32 %423, 100000000
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %14, align 1
  %427 = and i32 %424, 255
  %428 = tail call i32 @llvm.ctpop.i32(i32 %427)
  %429 = trunc i32 %428 to i8
  %430 = and i8 %429, 1
  %431 = xor i8 %430, 1
  store i8 %431, i8* %21, align 1
  %432 = xor i32 %424, %423
  %433 = lshr i32 %432, 4
  %434 = trunc i32 %433 to i8
  %435 = and i8 %434, 1
  store i8 %435, i8* %26, align 1
  %436 = icmp eq i32 %424, 0
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %29, align 1
  %438 = lshr i32 %424, 31
  %439 = trunc i32 %438 to i8
  store i8 %439, i8* %32, align 1
  %440 = lshr i32 %423, 31
  %441 = xor i32 %438, %440
  %442 = add nuw nsw i32 %441, %440
  %443 = icmp eq i32 %442, 2
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %38, align 1
  %.v196 = select i1 %436, i64 13, i64 64
  %445 = add i64 %421, %.v196
  store i64 %445, i64* %3, align 8
  br i1 %436, label %block_.L_41353c, label %block_.L_41356f

block_.L_41353c:                                  ; preds = %block_41352f, %block_.L_413525
  %446 = phi i64 [ %445, %block_41352f ], [ %421, %block_.L_413525 ]
  store i64 4293967796, i64* %RDI.i134, align 8
  %RSI.i1000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 1000000, i64* %RSI.i1000, align 8
  store i64 4293967296, i64* %RDX.i1111, align 8
  store i64 4294967295, i64* %RCX.i253, align 8
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 0, i64* %447, align 8
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  store i64 200, i64* %448, align 8
  %449 = load i32, i32* bitcast (%G_0x633b58_type* @G_0x633b58 to i32*), align 8
  %450 = add i32 %449, 1
  %451 = zext i32 %450 to i64
  store i64 %451, i64* %RAX.i807, align 8
  %452 = icmp eq i32 %449, -1
  %453 = icmp eq i32 %450, 0
  %454 = or i1 %452, %453
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %14, align 1
  %456 = and i32 %450, 255
  %457 = tail call i32 @llvm.ctpop.i32(i32 %456)
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  %460 = xor i8 %459, 1
  store i8 %460, i8* %21, align 1
  %461 = xor i32 %450, %449
  %462 = lshr i32 %461, 4
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 1
  store i8 %464, i8* %26, align 1
  %465 = zext i1 %453 to i8
  store i8 %465, i8* %29, align 1
  %466 = lshr i32 %450, 31
  %467 = trunc i32 %466 to i8
  store i8 %467, i8* %32, align 1
  %468 = lshr i32 %449, 31
  %469 = xor i32 %466, %468
  %470 = add nuw nsw i32 %469, %466
  %471 = icmp eq i32 %470, 2
  %472 = zext i1 %471 to i8
  store i8 %472, i8* %38, align 1
  store i32 %450, i32* bitcast (%G_0x633b58_type* @G_0x633b58 to i32*), align 8
  %473 = add i64 %446, 53940
  %474 = add i64 %446, 51
  %475 = load i64, i64* %6, align 8
  %476 = add i64 %475, -8
  %477 = inttoptr i64 %476 to i64*
  store i64 %474, i64* %477, align 8
  store i64 %476, i64* %6, align 8
  store i64 %473, i64* %3, align 8
  %call2_41356a = tail call %struct.Memory* @sub_4207f0.StoreTT(%struct.State* nonnull %0, i64 %473, %struct.Memory* %2)
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_41356f

block_.L_41356f:                                  ; preds = %block_41352f, %block_.L_41353c
  %478 = phi i64 [ %.pre67, %block_.L_41353c ], [ %445, %block_41352f ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_41356a, %block_.L_41353c ], [ %2, %block_41352f ]
  %479 = add i64 %478, 5
  store i64 %479, i64* %3, align 8
  br label %block_.L_413574

block_.L_413574:                                  ; preds = %block_.L_41356f, %block_.L_4134ed
  %storemerge = phi i64 [ %409, %block_.L_4134ed ], [ %479, %block_.L_41356f ]
  %MEMORY.6 = phi %struct.Memory* [ %call2_41351b, %block_.L_4134ed ], [ %MEMORY.5, %block_.L_41356f ]
  %480 = add i64 %storemerge, 322
  br label %block_.L_4136b6

block_.L_413579:                                  ; preds = %block_41341d
  %481 = add i64 %44, -16
  %482 = add i64 %89, 7
  store i64 %482, i64* %3, align 8
  %483 = inttoptr i64 %481 to i32*
  store i32 0, i32* %483, align 4
  %484 = load i64, i64* %RBP.i, align 8
  %485 = add i64 %484, -12
  %486 = load i64, i64* %3, align 8
  %487 = add i64 %486, 7
  store i64 %487, i64* %3, align 8
  %488 = inttoptr i64 %485 to i32*
  store i32 100000000, i32* %488, align 4
  %489 = load i64, i64* %RBP.i, align 8
  %490 = add i64 %489, -20
  %491 = load i64, i64* %3, align 8
  %492 = add i64 %491, 7
  store i64 %492, i64* %3, align 8
  %493 = inttoptr i64 %490 to i32*
  store i32 0, i32* %493, align 4
  %RDX.i969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_41358e

block_.L_41358e:                                  ; preds = %block_.L_413600, %block_.L_413579
  %494 = phi i64 [ %726, %block_.L_413600 ], [ %.pre72, %block_.L_413579 ]
  %495 = load i64, i64* %RBP.i, align 8
  %496 = add i64 %495, -20
  %497 = add i64 %494, 3
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %496 to i32*
  %499 = load i32, i32* %498, align 4
  %500 = zext i32 %499 to i64
  store i64 %500, i64* %RAX.i807, align 8
  %501 = add i64 %495, -8
  %502 = add i64 %494, 7
  store i64 %502, i64* %3, align 8
  %503 = inttoptr i64 %501 to i64*
  %504 = load i64, i64* %503, align 8
  store i64 %504, i64* %RCX.i253, align 8
  %505 = add i64 %504, 1
  %506 = add i64 %494, 11
  store i64 %506, i64* %3, align 8
  %507 = inttoptr i64 %505 to i8*
  %508 = load i8, i8* %507, align 1
  %509 = zext i8 %508 to i64
  store i64 %509, i64* %RDX.i969, align 8
  %510 = zext i8 %508 to i32
  %511 = sub i32 %499, %510
  %512 = icmp ult i32 %499, %510
  %513 = zext i1 %512 to i8
  store i8 %513, i8* %14, align 1
  %514 = and i32 %511, 255
  %515 = tail call i32 @llvm.ctpop.i32(i32 %514)
  %516 = trunc i32 %515 to i8
  %517 = and i8 %516, 1
  %518 = xor i8 %517, 1
  store i8 %518, i8* %21, align 1
  %519 = xor i32 %510, %499
  %520 = xor i32 %519, %511
  %521 = lshr i32 %520, 4
  %522 = trunc i32 %521 to i8
  %523 = and i8 %522, 1
  store i8 %523, i8* %26, align 1
  %524 = icmp eq i32 %511, 0
  %525 = zext i1 %524 to i8
  store i8 %525, i8* %29, align 1
  %526 = lshr i32 %511, 31
  %527 = trunc i32 %526 to i8
  store i8 %527, i8* %32, align 1
  %528 = lshr i32 %499, 31
  %529 = xor i32 %526, %528
  %530 = add nuw nsw i32 %529, %528
  %531 = icmp eq i32 %530, 2
  %532 = zext i1 %531 to i8
  store i8 %532, i8* %38, align 1
  %533 = icmp ne i8 %527, 0
  %534 = xor i1 %533, %531
  %.v199 = select i1 %534, i64 19, i64 133
  %535 = add i64 %494, %.v199
  store i64 %535, i64* %3, align 8
  br i1 %534, label %block_4135a1, label %block_.L_413613

block_4135a1:                                     ; preds = %block_.L_41358e
  %536 = add i64 %535, 4
  store i64 %536, i64* %3, align 8
  %537 = load i64, i64* %503, align 8
  store i64 %537, i64* %RAX.i807, align 8
  %538 = add i64 %537, 16
  %539 = add i64 %535, 8
  store i64 %539, i64* %3, align 8
  %540 = inttoptr i64 %538 to i64*
  %541 = load i64, i64* %540, align 8
  store i64 %541, i64* %RAX.i807, align 8
  %542 = add i64 %535, 12
  store i64 %542, i64* %3, align 8
  %543 = load i32, i32* %498, align 4
  %544 = sext i32 %543 to i64
  store i64 %544, i64* %RCX.i253, align 8
  %545 = shl nsw i64 %544, 3
  %546 = add i64 %545, %541
  %547 = add i64 %535, 16
  store i64 %547, i64* %3, align 8
  %548 = inttoptr i64 %546 to i64*
  %549 = load i64, i64* %548, align 8
  store i64 %549, i64* %RAX.i807, align 8
  %550 = add i64 %549, 8
  %551 = add i64 %535, 19
  store i64 %551, i64* %3, align 8
  %552 = inttoptr i64 %550 to i32*
  %553 = load i32, i32* %552, align 4
  %554 = zext i32 %553 to i64
  store i64 %554, i64* %RDX.i969, align 8
  %555 = add i64 %495, -16
  %556 = add i64 %535, 22
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %555 to i32*
  %558 = load i32, i32* %557, align 4
  %559 = add i32 %558, %553
  %560 = zext i32 %559 to i64
  store i64 %560, i64* %RDX.i969, align 8
  %561 = icmp ult i32 %559, %553
  %562 = icmp ult i32 %559, %558
  %563 = or i1 %561, %562
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %14, align 1
  %565 = and i32 %559, 255
  %566 = tail call i32 @llvm.ctpop.i32(i32 %565)
  %567 = trunc i32 %566 to i8
  %568 = and i8 %567, 1
  %569 = xor i8 %568, 1
  store i8 %569, i8* %21, align 1
  %570 = xor i32 %558, %553
  %571 = xor i32 %570, %559
  %572 = lshr i32 %571, 4
  %573 = trunc i32 %572 to i8
  %574 = and i8 %573, 1
  store i8 %574, i8* %26, align 1
  %575 = icmp eq i32 %559, 0
  %576 = zext i1 %575 to i8
  store i8 %576, i8* %29, align 1
  %577 = lshr i32 %559, 31
  %578 = trunc i32 %577 to i8
  store i8 %578, i8* %32, align 1
  %579 = lshr i32 %553, 31
  %580 = lshr i32 %558, 31
  %581 = xor i32 %577, %579
  %582 = xor i32 %577, %580
  %583 = add nuw nsw i32 %581, %582
  %584 = icmp eq i32 %583, 2
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %38, align 1
  %586 = add i64 %535, 25
  store i64 %586, i64* %3, align 8
  store i32 %559, i32* %557, align 4
  %587 = load i64, i64* %RBP.i, align 8
  %588 = add i64 %587, -16
  %589 = load i64, i64* %3, align 8
  %590 = add i64 %589, 7
  store i64 %590, i64* %3, align 8
  %591 = inttoptr i64 %588 to i32*
  %592 = load i32, i32* %591, align 4
  %593 = add i32 %592, -100000000
  %594 = icmp ult i32 %592, 100000000
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %14, align 1
  %596 = and i32 %593, 255
  %597 = tail call i32 @llvm.ctpop.i32(i32 %596)
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  %600 = xor i8 %599, 1
  store i8 %600, i8* %21, align 1
  %601 = xor i32 %593, %592
  %602 = lshr i32 %601, 4
  %603 = trunc i32 %602 to i8
  %604 = and i8 %603, 1
  store i8 %604, i8* %26, align 1
  %605 = icmp eq i32 %593, 0
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %29, align 1
  %607 = lshr i32 %593, 31
  %608 = trunc i32 %607 to i8
  store i8 %608, i8* %32, align 1
  %609 = lshr i32 %592, 31
  %610 = xor i32 %607, %609
  %611 = add nuw nsw i32 %610, %609
  %612 = icmp eq i32 %611, 2
  %613 = zext i1 %612 to i8
  store i8 %613, i8* %38, align 1
  %614 = icmp ne i8 %608, 0
  %615 = xor i1 %614, %612
  %616 = or i1 %605, %615
  %.v204 = select i1 %616, i64 20, i64 13
  %617 = add i64 %589, %.v204
  store i64 %617, i64* %3, align 8
  br i1 %616, label %block_.L_4135ce, label %block_4135c7

block_4135c7:                                     ; preds = %block_4135a1
  %618 = add i64 %617, 7
  store i64 %618, i64* %3, align 8
  store i32 100000000, i32* %591, align 4
  %.pre74 = load i64, i64* %RBP.i, align 8
  %.pre75 = load i64, i64* %3, align 8
  br label %block_.L_4135ce

block_.L_4135ce:                                  ; preds = %block_4135c7, %block_4135a1
  %619 = phi i64 [ %.pre75, %block_4135c7 ], [ %617, %block_4135a1 ]
  %620 = phi i64 [ %.pre74, %block_4135c7 ], [ %587, %block_4135a1 ]
  %621 = add i64 %620, -8
  %622 = add i64 %619, 4
  store i64 %622, i64* %3, align 8
  %623 = inttoptr i64 %621 to i64*
  %624 = load i64, i64* %623, align 8
  store i64 %624, i64* %RAX.i807, align 8
  %625 = add i64 %624, 16
  %626 = add i64 %619, 8
  store i64 %626, i64* %3, align 8
  %627 = inttoptr i64 %625 to i64*
  %628 = load i64, i64* %627, align 8
  store i64 %628, i64* %RAX.i807, align 8
  %629 = add i64 %620, -20
  %630 = add i64 %619, 12
  store i64 %630, i64* %3, align 8
  %631 = inttoptr i64 %629 to i32*
  %632 = load i32, i32* %631, align 4
  %633 = sext i32 %632 to i64
  store i64 %633, i64* %RCX.i253, align 8
  %634 = shl nsw i64 %633, 3
  %635 = add i64 %634, %628
  %636 = add i64 %619, 16
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %635 to i64*
  %638 = load i64, i64* %637, align 8
  store i64 %638, i64* %RAX.i807, align 8
  %639 = add i64 %638, 4
  %640 = add i64 %619, 19
  store i64 %640, i64* %3, align 8
  %641 = inttoptr i64 %639 to i32*
  %642 = load i32, i32* %641, align 4
  %643 = zext i32 %642 to i64
  store i64 %643, i64* %RDX.i969, align 8
  %644 = add i64 %620, -12
  %645 = add i64 %619, 22
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %644 to i32*
  %647 = load i32, i32* %646, align 4
  %648 = sub i32 %642, %647
  %649 = icmp ult i32 %642, %647
  %650 = zext i1 %649 to i8
  store i8 %650, i8* %14, align 1
  %651 = and i32 %648, 255
  %652 = tail call i32 @llvm.ctpop.i32(i32 %651)
  %653 = trunc i32 %652 to i8
  %654 = and i8 %653, 1
  %655 = xor i8 %654, 1
  store i8 %655, i8* %21, align 1
  %656 = xor i32 %647, %642
  %657 = xor i32 %656, %648
  %658 = lshr i32 %657, 4
  %659 = trunc i32 %658 to i8
  %660 = and i8 %659, 1
  store i8 %660, i8* %26, align 1
  %661 = icmp eq i32 %648, 0
  %662 = zext i1 %661 to i8
  store i8 %662, i8* %29, align 1
  %663 = lshr i32 %648, 31
  %664 = trunc i32 %663 to i8
  store i8 %664, i8* %32, align 1
  %665 = lshr i32 %642, 31
  %666 = lshr i32 %647, 31
  %667 = xor i32 %666, %665
  %668 = xor i32 %663, %665
  %669 = add nuw nsw i32 %668, %667
  %670 = icmp eq i32 %669, 2
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %38, align 1
  %672 = icmp ne i8 %664, 0
  %673 = xor i1 %672, %670
  %.v205 = select i1 %673, i64 28, i64 50
  %674 = add i64 %619, %.v205
  store i64 %674, i64* %3, align 8
  br i1 %673, label %block_4135ea, label %block_.L_413600

block_4135ea:                                     ; preds = %block_.L_4135ce
  %675 = add i64 %674, 4
  store i64 %675, i64* %3, align 8
  %676 = load i64, i64* %623, align 8
  store i64 %676, i64* %RAX.i807, align 8
  %677 = add i64 %676, 16
  %678 = add i64 %674, 8
  store i64 %678, i64* %3, align 8
  %679 = inttoptr i64 %677 to i64*
  %680 = load i64, i64* %679, align 8
  store i64 %680, i64* %RAX.i807, align 8
  %681 = add i64 %674, 12
  store i64 %681, i64* %3, align 8
  %682 = load i32, i32* %631, align 4
  %683 = sext i32 %682 to i64
  store i64 %683, i64* %RCX.i253, align 8
  %684 = shl nsw i64 %683, 3
  %685 = add i64 %684, %680
  %686 = add i64 %674, 16
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %685 to i64*
  %688 = load i64, i64* %687, align 8
  store i64 %688, i64* %RAX.i807, align 8
  %689 = add i64 %688, 4
  %690 = add i64 %674, 19
  store i64 %690, i64* %3, align 8
  %691 = inttoptr i64 %689 to i32*
  %692 = load i32, i32* %691, align 4
  %693 = zext i32 %692 to i64
  store i64 %693, i64* %RDX.i969, align 8
  %694 = add i64 %674, 22
  store i64 %694, i64* %3, align 8
  store i32 %692, i32* %646, align 4
  %.pre76 = load i64, i64* %3, align 8
  %.pre77 = load i64, i64* %RBP.i, align 8
  br label %block_.L_413600

block_.L_413600:                                  ; preds = %block_.L_4135ce, %block_4135ea
  %695 = phi i64 [ %620, %block_.L_4135ce ], [ %.pre77, %block_4135ea ]
  %696 = phi i64 [ %674, %block_.L_4135ce ], [ %.pre76, %block_4135ea ]
  %697 = add i64 %695, -20
  %698 = add i64 %696, 8
  store i64 %698, i64* %3, align 8
  %699 = inttoptr i64 %697 to i32*
  %700 = load i32, i32* %699, align 4
  %701 = add i32 %700, 1
  %702 = zext i32 %701 to i64
  store i64 %702, i64* %RAX.i807, align 8
  %703 = icmp eq i32 %700, -1
  %704 = icmp eq i32 %701, 0
  %705 = or i1 %703, %704
  %706 = zext i1 %705 to i8
  store i8 %706, i8* %14, align 1
  %707 = and i32 %701, 255
  %708 = tail call i32 @llvm.ctpop.i32(i32 %707)
  %709 = trunc i32 %708 to i8
  %710 = and i8 %709, 1
  %711 = xor i8 %710, 1
  store i8 %711, i8* %21, align 1
  %712 = xor i32 %701, %700
  %713 = lshr i32 %712, 4
  %714 = trunc i32 %713 to i8
  %715 = and i8 %714, 1
  store i8 %715, i8* %26, align 1
  %716 = zext i1 %704 to i8
  store i8 %716, i8* %29, align 1
  %717 = lshr i32 %701, 31
  %718 = trunc i32 %717 to i8
  store i8 %718, i8* %32, align 1
  %719 = lshr i32 %700, 31
  %720 = xor i32 %717, %719
  %721 = add nuw nsw i32 %720, %717
  %722 = icmp eq i32 %721, 2
  %723 = zext i1 %722 to i8
  store i8 %723, i8* %38, align 1
  %724 = add i64 %696, 14
  store i64 %724, i64* %3, align 8
  store i32 %701, i32* %699, align 4
  %725 = load i64, i64* %3, align 8
  %726 = add i64 %725, -128
  store i64 %726, i64* %3, align 8
  br label %block_.L_41358e

block_.L_413613:                                  ; preds = %block_.L_41358e
  %727 = add i64 %495, -12
  %728 = add i64 %535, 4
  store i64 %728, i64* %3, align 8
  %729 = inttoptr i64 %727 to i32*
  %730 = load i32, i32* %729, align 4
  store i8 0, i8* %14, align 1
  %731 = and i32 %730, 255
  %732 = tail call i32 @llvm.ctpop.i32(i32 %731)
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  %735 = xor i8 %734, 1
  store i8 %735, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %736 = icmp eq i32 %730, 0
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %29, align 1
  %738 = lshr i32 %730, 31
  %739 = trunc i32 %738 to i8
  store i8 %739, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v200 = select i1 %736, i64 23, i64 10
  %740 = add i64 %535, %.v200
  store i64 %740, i64* %3, align 8
  br i1 %736, label %block_.L_41362a, label %block_41361d

block_41361d:                                     ; preds = %block_.L_413613
  %741 = add i64 %495, -16
  %742 = add i64 %740, 7
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %741 to i32*
  %744 = load i32, i32* %743, align 4
  %745 = add i32 %744, -100000000
  %746 = icmp ult i32 %744, 100000000
  %747 = zext i1 %746 to i8
  store i8 %747, i8* %14, align 1
  %748 = and i32 %745, 255
  %749 = tail call i32 @llvm.ctpop.i32(i32 %748)
  %750 = trunc i32 %749 to i8
  %751 = and i8 %750, 1
  %752 = xor i8 %751, 1
  store i8 %752, i8* %21, align 1
  %753 = xor i32 %745, %744
  %754 = lshr i32 %753, 4
  %755 = trunc i32 %754 to i8
  %756 = and i8 %755, 1
  store i8 %756, i8* %26, align 1
  %757 = icmp eq i32 %745, 0
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %29, align 1
  %759 = lshr i32 %745, 31
  %760 = trunc i32 %759 to i8
  store i8 %760, i8* %32, align 1
  %761 = lshr i32 %744, 31
  %762 = xor i32 %759, %761
  %763 = add nuw nsw i32 %762, %761
  %764 = icmp eq i32 %763, 2
  %765 = zext i1 %764 to i8
  store i8 %765, i8* %38, align 1
  %.v201 = select i1 %757, i64 13, i64 69
  %766 = add i64 %740, %.v201
  store i64 %766, i64* %3, align 8
  br i1 %757, label %block_.L_41362a, label %block_.L_413662

block_.L_41362a:                                  ; preds = %block_41361d, %block_.L_413613
  %767 = phi i64 [ %766, %block_41361d ], [ %740, %block_.L_413613 ]
  store i64 999500, i64* %RDI.i134, align 8
  %RSI.i884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 1000000, i64* %RSI.i884, align 8
  store i64 4293967296, i64* %RDX.i969, align 8
  store i64 4294967295, i64* %RCX.i253, align 8
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 0, i64* %768, align 8
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  store i64 200, i64* %769, align 8
  %770 = load i32, i32* bitcast (%G_0x633b58_type* @G_0x633b58 to i32*), align 8
  %771 = add i32 %770, 1
  %772 = zext i32 %771 to i64
  store i64 %772, i64* %RAX.i807, align 8
  %773 = icmp eq i32 %770, -1
  %774 = icmp eq i32 %771, 0
  %775 = or i1 %773, %774
  %776 = zext i1 %775 to i8
  store i8 %776, i8* %14, align 1
  %777 = and i32 %771, 255
  %778 = tail call i32 @llvm.ctpop.i32(i32 %777)
  %779 = trunc i32 %778 to i8
  %780 = and i8 %779, 1
  %781 = xor i8 %780, 1
  store i8 %781, i8* %21, align 1
  %782 = xor i32 %771, %770
  %783 = lshr i32 %782, 4
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  store i8 %785, i8* %26, align 1
  %786 = zext i1 %774 to i8
  store i8 %786, i8* %29, align 1
  %787 = lshr i32 %771, 31
  %788 = trunc i32 %787 to i8
  store i8 %788, i8* %32, align 1
  %789 = lshr i32 %770, 31
  %790 = xor i32 %787, %789
  %791 = add nuw nsw i32 %790, %787
  %792 = icmp eq i32 %791, 2
  %793 = zext i1 %792 to i8
  store i8 %793, i8* %38, align 1
  store i32 %771, i32* bitcast (%G_0x633b58_type* @G_0x633b58 to i32*), align 8
  %794 = add i64 %767, 53702
  %795 = add i64 %767, 51
  %796 = load i64, i64* %6, align 8
  %797 = add i64 %796, -8
  %798 = inttoptr i64 %797 to i64*
  store i64 %795, i64* %798, align 8
  store i64 %797, i64* %6, align 8
  store i64 %794, i64* %3, align 8
  %call2_413658 = tail call %struct.Memory* @sub_4207f0.StoreTT(%struct.State* nonnull %0, i64 %794, %struct.Memory* %2)
  %799 = load i64, i64* %3, align 8
  %800 = add i64 %799, 84
  br label %block_.L_4136b1

block_.L_413662:                                  ; preds = %block_41361d
  %801 = add i64 %766, 4
  store i64 %801, i64* %3, align 8
  %802 = load i32, i32* %743, align 4
  store i8 0, i8* %14, align 1
  %803 = and i32 %802, 255
  %804 = tail call i32 @llvm.ctpop.i32(i32 %803)
  %805 = trunc i32 %804 to i8
  %806 = and i8 %805, 1
  %807 = xor i8 %806, 1
  store i8 %807, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %808 = icmp eq i32 %802, 0
  %809 = zext i1 %808 to i8
  store i8 %809, i8* %29, align 1
  %810 = lshr i32 %802, 31
  %811 = trunc i32 %810 to i8
  store i8 %811, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v202 = select i1 %808, i64 23, i64 10
  %812 = add i64 %766, %.v202
  store i64 %812, i64* %3, align 8
  br i1 %808, label %block_.L_413679, label %block_41366c

block_41366c:                                     ; preds = %block_.L_413662
  %813 = add i64 %812, 7
  store i64 %813, i64* %3, align 8
  %814 = load i32, i32* %729, align 4
  %815 = add i32 %814, -100000000
  %816 = icmp ult i32 %814, 100000000
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %14, align 1
  %818 = and i32 %815, 255
  %819 = tail call i32 @llvm.ctpop.i32(i32 %818)
  %820 = trunc i32 %819 to i8
  %821 = and i8 %820, 1
  %822 = xor i8 %821, 1
  store i8 %822, i8* %21, align 1
  %823 = xor i32 %815, %814
  %824 = lshr i32 %823, 4
  %825 = trunc i32 %824 to i8
  %826 = and i8 %825, 1
  store i8 %826, i8* %26, align 1
  %827 = icmp eq i32 %815, 0
  %828 = zext i1 %827 to i8
  store i8 %828, i8* %29, align 1
  %829 = lshr i32 %815, 31
  %830 = trunc i32 %829 to i8
  store i8 %830, i8* %32, align 1
  %831 = lshr i32 %814, 31
  %832 = xor i32 %829, %831
  %833 = add nuw nsw i32 %832, %831
  %834 = icmp eq i32 %833, 2
  %835 = zext i1 %834 to i8
  store i8 %835, i8* %38, align 1
  %.v203 = select i1 %827, i64 13, i64 64
  %836 = add i64 %812, %.v203
  store i64 %836, i64* %3, align 8
  br i1 %827, label %block_.L_413679, label %block_.L_4136ac

block_.L_413679:                                  ; preds = %block_41366c, %block_.L_413662
  %837 = phi i64 [ %836, %block_41366c ], [ %812, %block_.L_413662 ]
  store i64 4293967796, i64* %RDI.i134, align 8
  %RSI.i858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 1000000, i64* %RSI.i858, align 8
  store i64 4293967296, i64* %RDX.i969, align 8
  store i64 4294967295, i64* %RCX.i253, align 8
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  store i64 0, i64* %838, align 8
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  store i64 200, i64* %839, align 8
  %840 = load i32, i32* bitcast (%G_0x633b58_type* @G_0x633b58 to i32*), align 8
  %841 = add i32 %840, 1
  %842 = zext i32 %841 to i64
  store i64 %842, i64* %RAX.i807, align 8
  %843 = icmp eq i32 %840, -1
  %844 = icmp eq i32 %841, 0
  %845 = or i1 %843, %844
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %14, align 1
  %847 = and i32 %841, 255
  %848 = tail call i32 @llvm.ctpop.i32(i32 %847)
  %849 = trunc i32 %848 to i8
  %850 = and i8 %849, 1
  %851 = xor i8 %850, 1
  store i8 %851, i8* %21, align 1
  %852 = xor i32 %841, %840
  %853 = lshr i32 %852, 4
  %854 = trunc i32 %853 to i8
  %855 = and i8 %854, 1
  store i8 %855, i8* %26, align 1
  %856 = zext i1 %844 to i8
  store i8 %856, i8* %29, align 1
  %857 = lshr i32 %841, 31
  %858 = trunc i32 %857 to i8
  store i8 %858, i8* %32, align 1
  %859 = lshr i32 %840, 31
  %860 = xor i32 %857, %859
  %861 = add nuw nsw i32 %860, %857
  %862 = icmp eq i32 %861, 2
  %863 = zext i1 %862 to i8
  store i8 %863, i8* %38, align 1
  store i32 %841, i32* bitcast (%G_0x633b58_type* @G_0x633b58 to i32*), align 8
  %864 = add i64 %837, 53623
  %865 = add i64 %837, 51
  %866 = load i64, i64* %6, align 8
  %867 = add i64 %866, -8
  %868 = inttoptr i64 %867 to i64*
  store i64 %865, i64* %868, align 8
  store i64 %867, i64* %6, align 8
  store i64 %864, i64* %3, align 8
  %call2_4136a7 = tail call %struct.Memory* @sub_4207f0.StoreTT(%struct.State* nonnull %0, i64 %864, %struct.Memory* %2)
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_4136ac

block_.L_4136ac:                                  ; preds = %block_41366c, %block_.L_413679
  %869 = phi i64 [ %.pre73, %block_.L_413679 ], [ %836, %block_41366c ]
  %MEMORY.12 = phi %struct.Memory* [ %call2_4136a7, %block_.L_413679 ], [ %2, %block_41366c ]
  %870 = add i64 %869, 5
  store i64 %870, i64* %3, align 8
  br label %block_.L_4136b1

block_.L_4136b1:                                  ; preds = %block_.L_4136ac, %block_.L_41362a
  %storemerge44 = phi i64 [ %800, %block_.L_41362a ], [ %870, %block_.L_4136ac ]
  %MEMORY.13 = phi %struct.Memory* [ %call2_413658, %block_.L_41362a ], [ %MEMORY.12, %block_.L_4136ac ]
  %871 = add i64 %storemerge44, 5
  store i64 %871, i64* %3, align 8
  br label %block_.L_4136b6

block_.L_4136b6:                                  ; preds = %block_.L_4136b1, %block_.L_413574
  %storemerge43 = phi i64 [ %480, %block_.L_413574 ], [ %871, %block_.L_4136b1 ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.6, %block_.L_413574 ], [ %MEMORY.13, %block_.L_4136b1 ]
  %872 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %873 = zext i32 %872 to i64
  store i64 %873, i64* %RAX.i807, align 8
  %874 = load i32, i32* bitcast (%G_0x62ea38_type* @G_0x62ea38 to i32*), align 8
  %875 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %876 = add i32 %875, %874
  %877 = icmp eq i32 %876, 0
  %878 = zext i1 %877 to i8
  %879 = lshr i32 %876, 31
  %880 = add i32 %876, -1
  %881 = zext i32 %880 to i64
  store i64 %881, i64* %RCX.i253, align 8
  store i8 %878, i8* %14, align 1
  %882 = and i32 %880, 255
  %883 = tail call i32 @llvm.ctpop.i32(i32 %882)
  %884 = trunc i32 %883 to i8
  %885 = and i8 %884, 1
  %886 = xor i8 %885, 1
  store i8 %886, i8* %21, align 1
  %887 = xor i32 %880, %876
  %888 = lshr i32 %887, 4
  %889 = trunc i32 %888 to i8
  %890 = and i8 %889, 1
  store i8 %890, i8* %26, align 1
  %891 = icmp eq i32 %880, 0
  %892 = zext i1 %891 to i8
  store i8 %892, i8* %29, align 1
  %893 = lshr i32 %880, 31
  %894 = trunc i32 %893 to i8
  store i8 %894, i8* %32, align 1
  %895 = xor i32 %893, %879
  %896 = add nuw nsw i32 %895, %879
  %897 = icmp eq i32 %896, 2
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %38, align 1
  %RDX.i833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %899 = sext i32 %880 to i64
  store i64 %899, i64* %RDX.i833, align 8
  %900 = shl nsw i64 %899, 2
  %901 = add nsw i64 %900, 8692688
  %902 = add i64 %storemerge43, 34
  store i64 %902, i64* %3, align 8
  %903 = inttoptr i64 %901 to i32*
  store i32 %872, i32* %903, align 4
  %904 = load i64, i64* %RBP.i, align 8
  %905 = add i64 %904, -12
  %906 = load i64, i64* %3, align 8
  %907 = add i64 %906, 3
  store i64 %907, i64* %3, align 8
  %908 = inttoptr i64 %905 to i32*
  %909 = load i32, i32* %908, align 4
  %910 = zext i32 %909 to i64
  store i64 %910, i64* %RAX.i807, align 8
  %911 = add i64 %904, -8
  %912 = add i64 %906, 7
  store i64 %912, i64* %3, align 8
  %913 = inttoptr i64 %911 to i64*
  %914 = load i64, i64* %913, align 8
  store i64 %914, i64* %RDX.i833, align 8
  %915 = add i64 %914, 4
  %916 = add i64 %906, 10
  store i64 %916, i64* %3, align 8
  %917 = inttoptr i64 %915 to i32*
  store i32 %909, i32* %917, align 4
  %918 = load i64, i64* %RBP.i, align 8
  %919 = add i64 %918, -16
  %920 = load i64, i64* %3, align 8
  %921 = add i64 %920, 3
  store i64 %921, i64* %3, align 8
  %922 = inttoptr i64 %919 to i32*
  %923 = load i32, i32* %922, align 4
  %924 = zext i32 %923 to i64
  store i64 %924, i64* %RAX.i807, align 8
  %925 = add i64 %918, -8
  %926 = add i64 %920, 7
  store i64 %926, i64* %3, align 8
  %927 = inttoptr i64 %925 to i64*
  %928 = load i64, i64* %927, align 8
  store i64 %928, i64* %RDX.i833, align 8
  %929 = add i64 %928, 8
  %930 = add i64 %920, 10
  store i64 %930, i64* %3, align 8
  %931 = inttoptr i64 %929 to i32*
  store i32 %923, i32* %931, align 4
  br label %block_.L_413d9e

block_.L_4136f1:                                  ; preds = %entry
  %932 = add i64 %62, 4
  store i64 %932, i64* %3, align 8
  %933 = load i64, i64* %48, align 8
  store i64 %933, i64* %RAX.i807, align 8
  %934 = add i64 %933, 3
  %935 = add i64 %62, 8
  store i64 %935, i64* %3, align 8
  %936 = inttoptr i64 %934 to i8*
  %937 = load i8, i8* %936, align 1
  store i8 0, i8* %14, align 1
  %938 = zext i8 %937 to i32
  %939 = tail call i32 @llvm.ctpop.i32(i32 %938)
  %940 = trunc i32 %939 to i8
  %941 = and i8 %940, 1
  %942 = xor i8 %941, 1
  store i8 %942, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %943 = icmp eq i8 %937, 0
  %944 = zext i1 %943 to i8
  store i8 %944, i8* %29, align 1
  %945 = lshr i8 %937, 7
  store i8 %945, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v = select i1 %943, i64 1682, i64 14
  %946 = add i64 %62, %.v
  %947 = add i64 %946, 4
  store i64 %947, i64* %3, align 8
  %948 = load i64, i64* %48, align 8
  store i64 %948, i64* %RAX.i807, align 8
  br i1 %943, label %block_.L_413d83, label %block_4136ff

block_4136ff:                                     ; preds = %block_.L_4136f1
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i799 = getelementptr inbounds %union.anon, %union.anon* %949, i64 0, i32 0
  %950 = add i64 %946, 7
  store i64 %950, i64* %3, align 8
  %951 = inttoptr i64 %948 to i8*
  %952 = load i8, i8* %951, align 1
  %953 = zext i8 %952 to i64
  store i64 %953, i64* %RCX.i799, align 8
  %ECX.i796 = bitcast %union.anon* %949 to i32*
  %954 = zext i8 %952 to i32
  %955 = add nsw i32 %954, -2
  %956 = icmp ult i8 %952, 2
  %957 = zext i1 %956 to i8
  store i8 %957, i8* %14, align 1
  %958 = and i32 %955, 255
  %959 = tail call i32 @llvm.ctpop.i32(i32 %958)
  %960 = trunc i32 %959 to i8
  %961 = and i8 %960, 1
  %962 = xor i8 %961, 1
  store i8 %962, i8* %21, align 1
  %963 = xor i32 %955, %954
  %964 = lshr i32 %963, 4
  %965 = trunc i32 %964 to i8
  %966 = and i8 %965, 1
  store i8 %966, i8* %26, align 1
  %967 = icmp eq i32 %955, 0
  %968 = zext i1 %967 to i8
  store i8 %968, i8* %29, align 1
  %969 = lshr i32 %955, 31
  %970 = trunc i32 %969 to i8
  store i8 %970, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v189 = select i1 %967, i64 16, i64 1524
  %971 = add i64 %946, %.v189
  store i64 %971, i64* %3, align 8
  br i1 %967, label %block_41370f, label %block_.L_413cf3

block_41370f:                                     ; preds = %block_4136ff
  %972 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %973 = zext i32 %972 to i64
  store i64 %973, i64* %RAX.i807, align 8
  %974 = load i32, i32* bitcast (%G_0x62ea38_type* @G_0x62ea38 to i32*), align 8
  %975 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %976 = add i32 %975, %974
  %977 = icmp eq i32 %976, 0
  %978 = zext i1 %977 to i8
  %979 = lshr i32 %976, 31
  %980 = add i32 %976, -1
  %981 = zext i32 %980 to i64
  store i64 %981, i64* %RCX.i799, align 8
  store i8 %978, i8* %14, align 1
  %982 = and i32 %980, 255
  %983 = tail call i32 @llvm.ctpop.i32(i32 %982)
  %984 = trunc i32 %983 to i8
  %985 = and i8 %984, 1
  %986 = xor i8 %985, 1
  store i8 %986, i8* %21, align 1
  %987 = xor i32 %980, %976
  %988 = lshr i32 %987, 4
  %989 = trunc i32 %988 to i8
  %990 = and i8 %989, 1
  store i8 %990, i8* %26, align 1
  %991 = icmp eq i32 %980, 0
  %992 = zext i1 %991 to i8
  store i8 %992, i8* %29, align 1
  %993 = lshr i32 %980, 31
  %994 = trunc i32 %993 to i8
  store i8 %994, i8* %32, align 1
  %995 = xor i32 %993, %979
  %996 = add nuw nsw i32 %995, %979
  %997 = icmp eq i32 %996, 2
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %38, align 1
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i785 = getelementptr inbounds %union.anon, %union.anon* %999, i64 0, i32 0
  %1000 = sext i32 %980 to i64
  store i64 %1000, i64* %RDX.i785, align 8
  %EAX.i781 = bitcast %union.anon* %63 to i32*
  %1001 = shl nsw i64 %1000, 2
  %1002 = add nsw i64 %1001, 8692688
  %1003 = add i64 %971, 34
  store i64 %1003, i64* %3, align 8
  %1004 = inttoptr i64 %1002 to i32*
  store i32 %972, i32* %1004, align 4
  %1005 = load i64, i64* %3, align 8
  %1006 = add i64 %1005, -69137
  %1007 = add i64 %1005, 5
  %1008 = load i64, i64* %6, align 8
  %1009 = add i64 %1008, -8
  %1010 = inttoptr i64 %1009 to i64*
  store i64 %1007, i64* %1010, align 8
  store i64 %1009, i64* %6, align 8
  store i64 %1006, i64* %3, align 8
  %call2_413731 = tail call %struct.Memory* @sub_402920.is_draw(%struct.State* nonnull %0, i64 %1006, %struct.Memory* %2)
  %1011 = load i32, i32* %EAX.i781, align 4
  %1012 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1013 = and i32 %1011, 255
  %1014 = tail call i32 @llvm.ctpop.i32(i32 %1013)
  %1015 = trunc i32 %1014 to i8
  %1016 = and i8 %1015, 1
  %1017 = xor i8 %1016, 1
  store i8 %1017, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1018 = icmp eq i32 %1011, 0
  %1019 = zext i1 %1018 to i8
  store i8 %1019, i8* %29, align 1
  %1020 = lshr i32 %1011, 31
  %1021 = trunc i32 %1020 to i8
  store i8 %1021, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v207 = select i1 %1018, i64 9, i64 26
  %1022 = add i64 %1012, %.v207
  store i64 %1022, i64* %3, align 8
  br i1 %1018, label %block_41373f, label %block_.L_413750

block_41373f:                                     ; preds = %block_41370f
  %1023 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %1024 = add i32 %1023, -200
  %1025 = icmp ult i32 %1023, 200
  %1026 = zext i1 %1025 to i8
  store i8 %1026, i8* %14, align 1
  %1027 = and i32 %1024, 255
  %1028 = tail call i32 @llvm.ctpop.i32(i32 %1027)
  %1029 = trunc i32 %1028 to i8
  %1030 = and i8 %1029, 1
  %1031 = xor i8 %1030, 1
  store i8 %1031, i8* %21, align 1
  %1032 = xor i32 %1024, %1023
  %1033 = lshr i32 %1032, 4
  %1034 = trunc i32 %1033 to i8
  %1035 = and i8 %1034, 1
  store i8 %1035, i8* %26, align 1
  %1036 = icmp eq i32 %1024, 0
  %1037 = zext i1 %1036 to i8
  store i8 %1037, i8* %29, align 1
  %1038 = lshr i32 %1024, 31
  %1039 = trunc i32 %1038 to i8
  store i8 %1039, i8* %32, align 1
  %1040 = lshr i32 %1023, 31
  %1041 = xor i32 %1038, %1040
  %1042 = add nuw nsw i32 %1041, %1040
  %1043 = icmp eq i32 %1042, 2
  %1044 = zext i1 %1043 to i8
  store i8 %1044, i8* %38, align 1
  %1045 = icmp ne i8 %1039, 0
  %1046 = xor i1 %1045, %1043
  %1047 = or i1 %1036, %1046
  %.v208 = select i1 %1047, i64 44, i64 17
  %1048 = add i64 %1022, %.v208
  store i64 %1048, i64* %3, align 8
  br i1 %1047, label %block_.L_41376b, label %block_.L_413750

block_.L_413750:                                  ; preds = %block_41370f, %block_41373f
  %1049 = phi i64 [ %1048, %block_41373f ], [ %1022, %block_41370f ]
  %1050 = load i64, i64* %RBP.i, align 8
  %1051 = add i64 %1050, -8
  %1052 = add i64 %1049, 4
  store i64 %1052, i64* %3, align 8
  %1053 = inttoptr i64 %1051 to i64*
  %1054 = load i64, i64* %1053, align 8
  store i64 %1054, i64* %RAX.i807, align 8
  %1055 = add i64 %1054, 4
  %1056 = add i64 %1049, 11
  store i64 %1056, i64* %3, align 8
  %1057 = inttoptr i64 %1055 to i32*
  store i32 50000, i32* %1057, align 4
  %1058 = load i64, i64* %RBP.i, align 8
  %1059 = add i64 %1058, -8
  %1060 = load i64, i64* %3, align 8
  %1061 = add i64 %1060, 4
  store i64 %1061, i64* %3, align 8
  %1062 = inttoptr i64 %1059 to i64*
  %1063 = load i64, i64* %1062, align 8
  store i64 %1063, i64* %RAX.i807, align 8
  %1064 = add i64 %1063, 8
  %1065 = add i64 %1060, 11
  store i64 %1065, i64* %3, align 8
  %1066 = inttoptr i64 %1064 to i32*
  store i32 50000, i32* %1066, align 4
  br label %block_.L_413d9e

block_.L_41376b:                                  ; preds = %block_41373f
  %1067 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %1068 = add i32 %1067, -4
  %1069 = icmp ult i32 %1067, 4
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %14, align 1
  %1071 = and i32 %1068, 255
  %1072 = tail call i32 @llvm.ctpop.i32(i32 %1071)
  %1073 = trunc i32 %1072 to i8
  %1074 = and i8 %1073, 1
  %1075 = xor i8 %1074, 1
  store i8 %1075, i8* %21, align 1
  %1076 = xor i32 %1068, %1067
  %1077 = lshr i32 %1076, 4
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  store i8 %1079, i8* %26, align 1
  %1080 = icmp eq i32 %1068, 0
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %29, align 1
  %1082 = lshr i32 %1068, 31
  %1083 = trunc i32 %1082 to i8
  store i8 %1083, i8* %32, align 1
  %1084 = lshr i32 %1067, 31
  %1085 = xor i32 %1082, %1084
  %1086 = add nuw nsw i32 %1085, %1084
  %1087 = icmp eq i32 %1086, 2
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %38, align 1
  %.v209 = select i1 %1080, i64 218, i64 14
  %1089 = add i64 %1048, %.v209
  %1090 = load i64, i64* %RBP.i, align 8
  %1091 = add i64 %1090, -12320
  %1092 = add i64 %1089, 7
  store i64 %1092, i64* %3, align 8
  store i64 %1091, i64* %RDI.i134, align 8
  br i1 %1080, label %block_.L_413845, label %block_413779

block_413779:                                     ; preds = %block_.L_41376b
  %1093 = add i64 %1090, -12328
  %1094 = add i64 %1089, 17
  store i64 %1094, i64* %3, align 8
  %1095 = inttoptr i64 %1093 to i32*
  store i32 0, i32* %1095, align 4
  %1096 = load i64, i64* %3, align 8
  %1097 = add i64 %1096, -47450
  %1098 = add i64 %1096, 5
  %1099 = load i64, i64* %6, align 8
  %1100 = add i64 %1099, -8
  %1101 = inttoptr i64 %1100 to i64*
  store i64 %1098, i64* %1101, align 8
  store i64 %1100, i64* %6, align 8
  store i64 %1097, i64* %3, align 8
  %call2_41378a = tail call %struct.Memory* @sub_407e30.gen(%struct.State* nonnull %0, i64 %1097, %struct.Memory* %call2_413731)
  %1102 = load i64, i64* %3, align 8
  %1103 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %1104 = zext i32 %1103 to i64
  store i64 %1104, i64* %RAX.i807, align 8
  %1105 = load i64, i64* %RBP.i, align 8
  %1106 = add i64 %1105, -12328
  %1107 = add i64 %1102, 13
  store i64 %1107, i64* %3, align 8
  %1108 = inttoptr i64 %1106 to i32*
  store i32 %1103, i32* %1108, align 4
  %1109 = load i64, i64* %3, align 8
  %1110 = add i64 %1109, -40636
  %1111 = add i64 %1109, 5
  %1112 = load i64, i64* %6, align 8
  %1113 = add i64 %1112, -8
  %1114 = inttoptr i64 %1113 to i64*
  store i64 %1111, i64* %1114, align 8
  store i64 %1113, i64* %6, align 8
  store i64 %1110, i64* %3, align 8
  %call2_41379c = tail call %struct.Memory* @sub_4098e0.in_check(%struct.State* nonnull %0, i64 %1110, %struct.Memory* %call2_41378a)
  %1115 = load i64, i64* %RBP.i, align 8
  %1116 = add i64 %1115, -12332
  %1117 = load i32, i32* %EAX.i781, align 4
  %1118 = load i64, i64* %3, align 8
  %1119 = add i64 %1118, 6
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1116 to i32*
  store i32 %1117, i32* %1120, align 4
  %1121 = load i64, i64* %3, align 8
  %1122 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %1123 = add i32 %1122, -3
  %1124 = icmp ult i32 %1122, 3
  %1125 = zext i1 %1124 to i8
  store i8 %1125, i8* %14, align 1
  %1126 = and i32 %1123, 255
  %1127 = tail call i32 @llvm.ctpop.i32(i32 %1126)
  %1128 = trunc i32 %1127 to i8
  %1129 = and i8 %1128, 1
  %1130 = xor i8 %1129, 1
  store i8 %1130, i8* %21, align 1
  %1131 = xor i32 %1123, %1122
  %1132 = lshr i32 %1131, 4
  %1133 = trunc i32 %1132 to i8
  %1134 = and i8 %1133, 1
  store i8 %1134, i8* %26, align 1
  %1135 = icmp eq i32 %1123, 0
  %1136 = zext i1 %1135 to i8
  store i8 %1136, i8* %29, align 1
  %1137 = lshr i32 %1123, 31
  %1138 = trunc i32 %1137 to i8
  store i8 %1138, i8* %32, align 1
  %1139 = lshr i32 %1122, 31
  %1140 = xor i32 %1137, %1139
  %1141 = add nuw nsw i32 %1140, %1139
  %1142 = icmp eq i32 %1141, 2
  %1143 = zext i1 %1142 to i8
  store i8 %1143, i8* %38, align 1
  %.v210 = select i1 %1135, i64 140, i64 14
  %1144 = add i64 %1121, %.v210
  store i64 %1144, i64* %3, align 8
  br i1 %1135, label %block_.L_413833, label %block_4137b5

block_4137b5:                                     ; preds = %block_413779
  %1145 = load i64, i64* %RBP.i, align 8
  %1146 = add i64 %1145, -12324
  %1147 = add i64 %1144, 10
  store i64 %1147, i64* %3, align 8
  %1148 = inttoptr i64 %1146 to i32*
  store i32 0, i32* %1148, align 4
  %1149 = load i64, i64* %RBP.i, align 8
  %1150 = add i64 %1149, -20
  %1151 = load i64, i64* %3, align 8
  %1152 = add i64 %1151, 7
  store i64 %1152, i64* %3, align 8
  %1153 = inttoptr i64 %1150 to i32*
  store i32 0, i32* %1153, align 4
  %RSI.i728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %.pre78 = load i64, i64* %3, align 8
  br label %block_.L_4137c6

block_.L_4137c6:                                  ; preds = %block_.L_413811, %block_4137b5
  %1154 = phi i64 [ %1304, %block_.L_413811 ], [ %.pre78, %block_4137b5 ]
  %1155 = load i64, i64* %RBP.i, align 8
  %1156 = add i64 %1155, -20
  %1157 = add i64 %1154, 3
  store i64 %1157, i64* %3, align 8
  %1158 = inttoptr i64 %1156 to i32*
  %1159 = load i32, i32* %1158, align 4
  %1160 = zext i32 %1159 to i64
  store i64 %1160, i64* %RAX.i807, align 8
  %1161 = add i64 %1155, -12328
  %1162 = add i64 %1154, 9
  store i64 %1162, i64* %3, align 8
  %1163 = inttoptr i64 %1161 to i32*
  %1164 = load i32, i32* %1163, align 4
  %1165 = sub i32 %1159, %1164
  %1166 = icmp ult i32 %1159, %1164
  %1167 = zext i1 %1166 to i8
  store i8 %1167, i8* %14, align 1
  %1168 = and i32 %1165, 255
  %1169 = tail call i32 @llvm.ctpop.i32(i32 %1168)
  %1170 = trunc i32 %1169 to i8
  %1171 = and i8 %1170, 1
  %1172 = xor i8 %1171, 1
  store i8 %1172, i8* %21, align 1
  %1173 = xor i32 %1164, %1159
  %1174 = xor i32 %1173, %1165
  %1175 = lshr i32 %1174, 4
  %1176 = trunc i32 %1175 to i8
  %1177 = and i8 %1176, 1
  store i8 %1177, i8* %26, align 1
  %1178 = icmp eq i32 %1165, 0
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %29, align 1
  %1180 = lshr i32 %1165, 31
  %1181 = trunc i32 %1180 to i8
  store i8 %1181, i8* %32, align 1
  %1182 = lshr i32 %1159, 31
  %1183 = lshr i32 %1164, 31
  %1184 = xor i32 %1183, %1182
  %1185 = xor i32 %1180, %1182
  %1186 = add nuw nsw i32 %1185, %1184
  %1187 = icmp eq i32 %1186, 2
  %1188 = zext i1 %1187 to i8
  store i8 %1188, i8* %38, align 1
  %1189 = icmp ne i8 %1181, 0
  %1190 = xor i1 %1189, %1187
  %.v211 = select i1 %1190, i64 15, i64 104
  %1191 = add i64 %1154, %.v211
  store i64 %1191, i64* %3, align 8
  br i1 %1190, label %block_4137d5, label %block_.L_41382e

block_4137d5:                                     ; preds = %block_.L_4137c6
  %1192 = add i64 %1155, -12320
  store i64 %1192, i64* %RDI.i134, align 8
  %1193 = add i64 %1191, 10
  store i64 %1193, i64* %3, align 8
  %1194 = load i32, i32* %1158, align 4
  %1195 = zext i32 %1194 to i64
  store i64 %1195, i64* %RSI.i728, align 8
  %1196 = add i64 %1191, -32933
  %1197 = add i64 %1191, 15
  %1198 = load i64, i64* %6, align 8
  %1199 = add i64 %1198, -8
  %1200 = inttoptr i64 %1199 to i64*
  store i64 %1197, i64* %1200, align 8
  store i64 %1199, i64* %6, align 8
  store i64 %1196, i64* %3, align 8
  %call2_4137df = tail call %struct.Memory* @sub_40b730.make(%struct.State* nonnull %0, i64 %1196, %struct.Memory* %call2_41379c)
  %1201 = load i64, i64* %RBP.i, align 8
  %1202 = add i64 %1201, -12320
  %1203 = load i64, i64* %3, align 8
  store i64 %1202, i64* %RDI.i134, align 8
  %1204 = add i64 %1201, -20
  %1205 = add i64 %1203, 10
  store i64 %1205, i64* %3, align 8
  %1206 = inttoptr i64 %1204 to i32*
  %1207 = load i32, i32* %1206, align 4
  %1208 = zext i32 %1207 to i64
  store i64 %1208, i64* %RSI.i728, align 8
  %1209 = add i64 %1201, -12332
  %1210 = add i64 %1203, 16
  store i64 %1210, i64* %3, align 8
  %1211 = inttoptr i64 %1209 to i32*
  %1212 = load i32, i32* %1211, align 4
  %1213 = zext i32 %1212 to i64
  store i64 %1213, i64* %RDX.i785, align 8
  %1214 = add i64 %1203, -53604
  %1215 = add i64 %1203, 21
  %1216 = load i64, i64* %6, align 8
  %1217 = add i64 %1216, -8
  %1218 = inttoptr i64 %1217 to i64*
  store i64 %1215, i64* %1218, align 8
  store i64 %1217, i64* %6, align 8
  store i64 %1214, i64* %3, align 8
  %call2_4137f4 = tail call %struct.Memory* @sub_406680.check_legal(%struct.State* nonnull %0, i64 %1214, %struct.Memory* %call2_41379c)
  %1219 = load i32, i32* %EAX.i781, align 4
  %1220 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1221 = and i32 %1219, 255
  %1222 = tail call i32 @llvm.ctpop.i32(i32 %1221)
  %1223 = trunc i32 %1222 to i8
  %1224 = and i8 %1223, 1
  %1225 = xor i8 %1224, 1
  store i8 %1225, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1226 = icmp eq i32 %1219, 0
  %1227 = zext i1 %1226 to i8
  store i8 %1227, i8* %29, align 1
  %1228 = lshr i32 %1219, 31
  %1229 = trunc i32 %1228 to i8
  store i8 %1229, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v222 = select i1 %1226, i64 24, i64 9
  %1230 = add i64 %1220, %.v222
  store i64 %1230, i64* %3, align 8
  br i1 %1226, label %block_.L_413811, label %block_413802

block_413802:                                     ; preds = %block_4137d5
  %1231 = load i64, i64* %RBP.i, align 8
  %1232 = add i64 %1231, -12324
  %1233 = add i64 %1230, 6
  store i64 %1233, i64* %3, align 8
  %1234 = inttoptr i64 %1232 to i32*
  %1235 = load i32, i32* %1234, align 4
  %1236 = add i32 %1235, 1
  %1237 = zext i32 %1236 to i64
  store i64 %1237, i64* %RAX.i807, align 8
  %1238 = icmp eq i32 %1235, -1
  %1239 = icmp eq i32 %1236, 0
  %1240 = or i1 %1238, %1239
  %1241 = zext i1 %1240 to i8
  store i8 %1241, i8* %14, align 1
  %1242 = and i32 %1236, 255
  %1243 = tail call i32 @llvm.ctpop.i32(i32 %1242)
  %1244 = trunc i32 %1243 to i8
  %1245 = and i8 %1244, 1
  %1246 = xor i8 %1245, 1
  store i8 %1246, i8* %21, align 1
  %1247 = xor i32 %1236, %1235
  %1248 = lshr i32 %1247, 4
  %1249 = trunc i32 %1248 to i8
  %1250 = and i8 %1249, 1
  store i8 %1250, i8* %26, align 1
  %1251 = zext i1 %1239 to i8
  store i8 %1251, i8* %29, align 1
  %1252 = lshr i32 %1236, 31
  %1253 = trunc i32 %1252 to i8
  store i8 %1253, i8* %32, align 1
  %1254 = lshr i32 %1235, 31
  %1255 = xor i32 %1252, %1254
  %1256 = add nuw nsw i32 %1255, %1252
  %1257 = icmp eq i32 %1256, 2
  %1258 = zext i1 %1257 to i8
  store i8 %1258, i8* %38, align 1
  %1259 = add i64 %1230, 15
  store i64 %1259, i64* %3, align 8
  store i32 %1236, i32* %1234, align 4
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_413811

block_.L_413811:                                  ; preds = %block_413802, %block_4137d5
  %1260 = phi i64 [ %.pre79, %block_413802 ], [ %1230, %block_4137d5 ]
  %1261 = load i64, i64* %RBP.i, align 8
  %1262 = add i64 %1261, -12320
  store i64 %1262, i64* %RDI.i134, align 8
  %1263 = add i64 %1261, -20
  %1264 = add i64 %1260, 10
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1263 to i32*
  %1266 = load i32, i32* %1265, align 4
  %1267 = zext i32 %1266 to i64
  store i64 %1267, i64* %RSI.i728, align 8
  %1268 = add i64 %1260, -28785
  %1269 = add i64 %1260, 15
  %1270 = load i64, i64* %6, align 8
  %1271 = add i64 %1270, -8
  %1272 = inttoptr i64 %1271 to i64*
  store i64 %1269, i64* %1272, align 8
  store i64 %1271, i64* %6, align 8
  store i64 %1268, i64* %3, align 8
  %call2_41381b = tail call %struct.Memory* @sub_40c7a0.unmake(%struct.State* nonnull %0, i64 %1268, %struct.Memory* %call2_41379c)
  %1273 = load i64, i64* %RBP.i, align 8
  %1274 = add i64 %1273, -20
  %1275 = load i64, i64* %3, align 8
  %1276 = add i64 %1275, 3
  store i64 %1276, i64* %3, align 8
  %1277 = inttoptr i64 %1274 to i32*
  %1278 = load i32, i32* %1277, align 4
  %1279 = add i32 %1278, 1
  %1280 = zext i32 %1279 to i64
  store i64 %1280, i64* %RAX.i807, align 8
  %1281 = icmp eq i32 %1278, -1
  %1282 = icmp eq i32 %1279, 0
  %1283 = or i1 %1281, %1282
  %1284 = zext i1 %1283 to i8
  store i8 %1284, i8* %14, align 1
  %1285 = and i32 %1279, 255
  %1286 = tail call i32 @llvm.ctpop.i32(i32 %1285)
  %1287 = trunc i32 %1286 to i8
  %1288 = and i8 %1287, 1
  %1289 = xor i8 %1288, 1
  store i8 %1289, i8* %21, align 1
  %1290 = xor i32 %1279, %1278
  %1291 = lshr i32 %1290, 4
  %1292 = trunc i32 %1291 to i8
  %1293 = and i8 %1292, 1
  store i8 %1293, i8* %26, align 1
  %1294 = zext i1 %1282 to i8
  store i8 %1294, i8* %29, align 1
  %1295 = lshr i32 %1279, 31
  %1296 = trunc i32 %1295 to i8
  store i8 %1296, i8* %32, align 1
  %1297 = lshr i32 %1278, 31
  %1298 = xor i32 %1295, %1297
  %1299 = add nuw nsw i32 %1298, %1295
  %1300 = icmp eq i32 %1299, 2
  %1301 = zext i1 %1300 to i8
  store i8 %1301, i8* %38, align 1
  %1302 = add i64 %1275, 9
  store i64 %1302, i64* %3, align 8
  store i32 %1279, i32* %1277, align 4
  %1303 = load i64, i64* %3, align 8
  %1304 = add i64 %1303, -99
  store i64 %1304, i64* %3, align 8
  br label %block_.L_4137c6

block_.L_41382e:                                  ; preds = %block_.L_4137c6
  %1305 = add i64 %1191, 18
  store i64 %1305, i64* %3, align 8
  br label %block_.L_413840

block_.L_413833:                                  ; preds = %block_413779
  %1306 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %1307 = zext i32 %1306 to i64
  store i64 %1307, i64* %RAX.i807, align 8
  %1308 = load i64, i64* %RBP.i, align 8
  %1309 = add i64 %1308, -12324
  %1310 = add i64 %1144, 13
  store i64 %1310, i64* %3, align 8
  %1311 = inttoptr i64 %1309 to i32*
  store i32 %1306, i32* %1311, align 4
  %.pre80 = load i64, i64* %3, align 8
  %.pre85.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_413840

block_.L_413840:                                  ; preds = %block_.L_413833, %block_.L_41382e
  %.pre85 = phi i64 [ %.pre85.pre, %block_.L_413833 ], [ %1155, %block_.L_41382e ]
  %1312 = phi i64 [ %.pre80, %block_.L_413833 ], [ %1305, %block_.L_41382e ]
  %1313 = add i64 %1312, 392
  br label %block_.L_4139c8

block_.L_413845:                                  ; preds = %block_.L_41376b
  %1314 = add i64 %1090, -12324
  %1315 = add i64 %1089, 17
  store i64 %1315, i64* %3, align 8
  %1316 = inttoptr i64 %1314 to i32*
  store i32 0, i32* %1316, align 4
  %1317 = load i64, i64* %3, align 8
  store i32 1, i32* bitcast (%G_0x85f164_type* @G_0x85f164 to i32*), align 8
  %1318 = load i64, i64* %RBP.i, align 8
  %1319 = add i64 %1318, -12328
  %1320 = add i64 %1317, 21
  store i64 %1320, i64* %3, align 8
  %1321 = inttoptr i64 %1319 to i32*
  store i32 0, i32* %1321, align 4
  %1322 = load i64, i64* %3, align 8
  %1323 = add i64 %1322, -47675
  %1324 = add i64 %1322, 5
  %1325 = load i64, i64* %6, align 8
  %1326 = add i64 %1325, -8
  %1327 = inttoptr i64 %1326 to i64*
  store i64 %1324, i64* %1327, align 8
  store i64 %1326, i64* %6, align 8
  store i64 %1323, i64* %3, align 8
  %call2_41386b = tail call %struct.Memory* @sub_407e30.gen(%struct.State* nonnull %0, i64 %1323, %struct.Memory* %call2_413731)
  %1328 = load i64, i64* %3, align 8
  %1329 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %1330 = zext i32 %1329 to i64
  store i64 %1330, i64* %RAX.i807, align 8
  %1331 = load i64, i64* %RBP.i, align 8
  %1332 = add i64 %1331, -12328
  %1333 = add i64 %1328, 13
  store i64 %1333, i64* %3, align 8
  %1334 = inttoptr i64 %1332 to i32*
  store i32 %1329, i32* %1334, align 4
  %1335 = load i64, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x85f164_type* @G_0x85f164 to i32*), align 8
  %1336 = add i64 %1335, -40861
  %1337 = add i64 %1335, 16
  %1338 = load i64, i64* %6, align 8
  %1339 = add i64 %1338, -8
  %1340 = inttoptr i64 %1339 to i64*
  store i64 %1337, i64* %1340, align 8
  store i64 %1339, i64* %6, align 8
  store i64 %1336, i64* %3, align 8
  %call2_413888 = tail call %struct.Memory* @sub_4098e0.in_check(%struct.State* nonnull %0, i64 %1336, %struct.Memory* %call2_41386b)
  %1341 = load i64, i64* %RBP.i, align 8
  %1342 = add i64 %1341, -12332
  %1343 = load i32, i32* %EAX.i781, align 4
  %1344 = load i64, i64* %3, align 8
  %1345 = add i64 %1344, 6
  store i64 %1345, i64* %3, align 8
  %1346 = inttoptr i64 %1342 to i32*
  store i32 %1343, i32* %1346, align 4
  %1347 = load i64, i64* %RBP.i, align 8
  %1348 = add i64 %1347, -12328
  %1349 = load i64, i64* %3, align 8
  %1350 = add i64 %1349, 7
  store i64 %1350, i64* %3, align 8
  %1351 = inttoptr i64 %1348 to i32*
  %1352 = load i32, i32* %1351, align 4
  store i8 0, i8* %14, align 1
  %1353 = and i32 %1352, 255
  %1354 = tail call i32 @llvm.ctpop.i32(i32 %1353)
  %1355 = trunc i32 %1354 to i8
  %1356 = and i8 %1355, 1
  %1357 = xor i8 %1356, 1
  store i8 %1357, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1358 = icmp eq i32 %1352, 0
  %1359 = zext i1 %1358 to i8
  store i8 %1359, i8* %29, align 1
  %1360 = lshr i32 %1352, 31
  %1361 = trunc i32 %1360 to i8
  store i8 %1361, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v223 = select i1 %1358, i64 129, i64 13
  %1362 = add i64 %1349, %.v223
  store i64 %1362, i64* %3, align 8
  br i1 %1358, label %block_.L_413914, label %block_4138a0

block_4138a0:                                     ; preds = %block_.L_413845
  %1363 = add i64 %1347, -20
  %1364 = add i64 %1362, 7
  store i64 %1364, i64* %3, align 8
  %1365 = inttoptr i64 %1363 to i32*
  store i32 0, i32* %1365, align 4
  %RSI.i646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_4138a7

block_.L_4138a7:                                  ; preds = %block_.L_4138f2, %block_4138a0
  %1366 = phi i64 [ %1516, %block_.L_4138f2 ], [ %.pre81, %block_4138a0 ]
  %1367 = load i64, i64* %RBP.i, align 8
  %1368 = add i64 %1367, -20
  %1369 = add i64 %1366, 3
  store i64 %1369, i64* %3, align 8
  %1370 = inttoptr i64 %1368 to i32*
  %1371 = load i32, i32* %1370, align 4
  %1372 = zext i32 %1371 to i64
  store i64 %1372, i64* %RAX.i807, align 8
  %1373 = add i64 %1367, -12328
  %1374 = add i64 %1366, 9
  store i64 %1374, i64* %3, align 8
  %1375 = inttoptr i64 %1373 to i32*
  %1376 = load i32, i32* %1375, align 4
  %1377 = sub i32 %1371, %1376
  %1378 = icmp ult i32 %1371, %1376
  %1379 = zext i1 %1378 to i8
  store i8 %1379, i8* %14, align 1
  %1380 = and i32 %1377, 255
  %1381 = tail call i32 @llvm.ctpop.i32(i32 %1380)
  %1382 = trunc i32 %1381 to i8
  %1383 = and i8 %1382, 1
  %1384 = xor i8 %1383, 1
  store i8 %1384, i8* %21, align 1
  %1385 = xor i32 %1376, %1371
  %1386 = xor i32 %1385, %1377
  %1387 = lshr i32 %1386, 4
  %1388 = trunc i32 %1387 to i8
  %1389 = and i8 %1388, 1
  store i8 %1389, i8* %26, align 1
  %1390 = icmp eq i32 %1377, 0
  %1391 = zext i1 %1390 to i8
  store i8 %1391, i8* %29, align 1
  %1392 = lshr i32 %1377, 31
  %1393 = trunc i32 %1392 to i8
  store i8 %1393, i8* %32, align 1
  %1394 = lshr i32 %1371, 31
  %1395 = lshr i32 %1376, 31
  %1396 = xor i32 %1395, %1394
  %1397 = xor i32 %1392, %1394
  %1398 = add nuw nsw i32 %1397, %1396
  %1399 = icmp eq i32 %1398, 2
  %1400 = zext i1 %1399 to i8
  store i8 %1400, i8* %38, align 1
  %1401 = icmp ne i8 %1393, 0
  %1402 = xor i1 %1401, %1399
  %.v224 = select i1 %1402, i64 15, i64 104
  %1403 = add i64 %1366, %.v224
  store i64 %1403, i64* %3, align 8
  br i1 %1402, label %block_4138b6, label %block_.L_41390f

block_4138b6:                                     ; preds = %block_.L_4138a7
  %1404 = add i64 %1367, -12320
  store i64 %1404, i64* %RDI.i134, align 8
  %1405 = add i64 %1403, 10
  store i64 %1405, i64* %3, align 8
  %1406 = load i32, i32* %1370, align 4
  %1407 = zext i32 %1406 to i64
  store i64 %1407, i64* %RSI.i646, align 8
  %1408 = add i64 %1403, -33158
  %1409 = add i64 %1403, 15
  %1410 = load i64, i64* %6, align 8
  %1411 = add i64 %1410, -8
  %1412 = inttoptr i64 %1411 to i64*
  store i64 %1409, i64* %1412, align 8
  store i64 %1411, i64* %6, align 8
  store i64 %1408, i64* %3, align 8
  %call2_4138c0 = tail call %struct.Memory* @sub_40b730.make(%struct.State* nonnull %0, i64 %1408, %struct.Memory* %call2_413888)
  %1413 = load i64, i64* %RBP.i, align 8
  %1414 = add i64 %1413, -12320
  %1415 = load i64, i64* %3, align 8
  store i64 %1414, i64* %RDI.i134, align 8
  %1416 = add i64 %1413, -20
  %1417 = add i64 %1415, 10
  store i64 %1417, i64* %3, align 8
  %1418 = inttoptr i64 %1416 to i32*
  %1419 = load i32, i32* %1418, align 4
  %1420 = zext i32 %1419 to i64
  store i64 %1420, i64* %RSI.i646, align 8
  %1421 = add i64 %1413, -12332
  %1422 = add i64 %1415, 16
  store i64 %1422, i64* %3, align 8
  %1423 = inttoptr i64 %1421 to i32*
  %1424 = load i32, i32* %1423, align 4
  %1425 = zext i32 %1424 to i64
  store i64 %1425, i64* %RDX.i785, align 8
  %1426 = add i64 %1415, -53829
  %1427 = add i64 %1415, 21
  %1428 = load i64, i64* %6, align 8
  %1429 = add i64 %1428, -8
  %1430 = inttoptr i64 %1429 to i64*
  store i64 %1427, i64* %1430, align 8
  store i64 %1429, i64* %6, align 8
  store i64 %1426, i64* %3, align 8
  %call2_4138d5 = tail call %struct.Memory* @sub_406680.check_legal(%struct.State* nonnull %0, i64 %1426, %struct.Memory* %call2_413888)
  %1431 = load i32, i32* %EAX.i781, align 4
  %1432 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1433 = and i32 %1431, 255
  %1434 = tail call i32 @llvm.ctpop.i32(i32 %1433)
  %1435 = trunc i32 %1434 to i8
  %1436 = and i8 %1435, 1
  %1437 = xor i8 %1436, 1
  store i8 %1437, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1438 = icmp eq i32 %1431, 0
  %1439 = zext i1 %1438 to i8
  store i8 %1439, i8* %29, align 1
  %1440 = lshr i32 %1431, 31
  %1441 = trunc i32 %1440 to i8
  store i8 %1441, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v228 = select i1 %1438, i64 24, i64 9
  %1442 = add i64 %1432, %.v228
  store i64 %1442, i64* %3, align 8
  br i1 %1438, label %block_.L_4138f2, label %block_4138e3

block_4138e3:                                     ; preds = %block_4138b6
  %1443 = load i64, i64* %RBP.i, align 8
  %1444 = add i64 %1443, -12324
  %1445 = add i64 %1442, 6
  store i64 %1445, i64* %3, align 8
  %1446 = inttoptr i64 %1444 to i32*
  %1447 = load i32, i32* %1446, align 4
  %1448 = add i32 %1447, 1
  %1449 = zext i32 %1448 to i64
  store i64 %1449, i64* %RAX.i807, align 8
  %1450 = icmp eq i32 %1447, -1
  %1451 = icmp eq i32 %1448, 0
  %1452 = or i1 %1450, %1451
  %1453 = zext i1 %1452 to i8
  store i8 %1453, i8* %14, align 1
  %1454 = and i32 %1448, 255
  %1455 = tail call i32 @llvm.ctpop.i32(i32 %1454)
  %1456 = trunc i32 %1455 to i8
  %1457 = and i8 %1456, 1
  %1458 = xor i8 %1457, 1
  store i8 %1458, i8* %21, align 1
  %1459 = xor i32 %1448, %1447
  %1460 = lshr i32 %1459, 4
  %1461 = trunc i32 %1460 to i8
  %1462 = and i8 %1461, 1
  store i8 %1462, i8* %26, align 1
  %1463 = zext i1 %1451 to i8
  store i8 %1463, i8* %29, align 1
  %1464 = lshr i32 %1448, 31
  %1465 = trunc i32 %1464 to i8
  store i8 %1465, i8* %32, align 1
  %1466 = lshr i32 %1447, 31
  %1467 = xor i32 %1464, %1466
  %1468 = add nuw nsw i32 %1467, %1464
  %1469 = icmp eq i32 %1468, 2
  %1470 = zext i1 %1469 to i8
  store i8 %1470, i8* %38, align 1
  %1471 = add i64 %1442, 15
  store i64 %1471, i64* %3, align 8
  store i32 %1448, i32* %1446, align 4
  %.pre82 = load i64, i64* %3, align 8
  br label %block_.L_4138f2

block_.L_4138f2:                                  ; preds = %block_4138e3, %block_4138b6
  %1472 = phi i64 [ %.pre82, %block_4138e3 ], [ %1442, %block_4138b6 ]
  %1473 = load i64, i64* %RBP.i, align 8
  %1474 = add i64 %1473, -12320
  store i64 %1474, i64* %RDI.i134, align 8
  %1475 = add i64 %1473, -20
  %1476 = add i64 %1472, 10
  store i64 %1476, i64* %3, align 8
  %1477 = inttoptr i64 %1475 to i32*
  %1478 = load i32, i32* %1477, align 4
  %1479 = zext i32 %1478 to i64
  store i64 %1479, i64* %RSI.i646, align 8
  %1480 = add i64 %1472, -29010
  %1481 = add i64 %1472, 15
  %1482 = load i64, i64* %6, align 8
  %1483 = add i64 %1482, -8
  %1484 = inttoptr i64 %1483 to i64*
  store i64 %1481, i64* %1484, align 8
  store i64 %1483, i64* %6, align 8
  store i64 %1480, i64* %3, align 8
  %call2_4138fc = tail call %struct.Memory* @sub_40c7a0.unmake(%struct.State* nonnull %0, i64 %1480, %struct.Memory* %call2_413888)
  %1485 = load i64, i64* %RBP.i, align 8
  %1486 = add i64 %1485, -20
  %1487 = load i64, i64* %3, align 8
  %1488 = add i64 %1487, 3
  store i64 %1488, i64* %3, align 8
  %1489 = inttoptr i64 %1486 to i32*
  %1490 = load i32, i32* %1489, align 4
  %1491 = add i32 %1490, 1
  %1492 = zext i32 %1491 to i64
  store i64 %1492, i64* %RAX.i807, align 8
  %1493 = icmp eq i32 %1490, -1
  %1494 = icmp eq i32 %1491, 0
  %1495 = or i1 %1493, %1494
  %1496 = zext i1 %1495 to i8
  store i8 %1496, i8* %14, align 1
  %1497 = and i32 %1491, 255
  %1498 = tail call i32 @llvm.ctpop.i32(i32 %1497)
  %1499 = trunc i32 %1498 to i8
  %1500 = and i8 %1499, 1
  %1501 = xor i8 %1500, 1
  store i8 %1501, i8* %21, align 1
  %1502 = xor i32 %1491, %1490
  %1503 = lshr i32 %1502, 4
  %1504 = trunc i32 %1503 to i8
  %1505 = and i8 %1504, 1
  store i8 %1505, i8* %26, align 1
  %1506 = zext i1 %1494 to i8
  store i8 %1506, i8* %29, align 1
  %1507 = lshr i32 %1491, 31
  %1508 = trunc i32 %1507 to i8
  store i8 %1508, i8* %32, align 1
  %1509 = lshr i32 %1490, 31
  %1510 = xor i32 %1507, %1509
  %1511 = add nuw nsw i32 %1510, %1507
  %1512 = icmp eq i32 %1511, 2
  %1513 = zext i1 %1512 to i8
  store i8 %1513, i8* %38, align 1
  %1514 = add i64 %1487, 9
  store i64 %1514, i64* %3, align 8
  store i32 %1491, i32* %1489, align 4
  %1515 = load i64, i64* %3, align 8
  %1516 = add i64 %1515, -99
  store i64 %1516, i64* %3, align 8
  br label %block_.L_4138a7

block_.L_41390f:                                  ; preds = %block_.L_4138a7
  %1517 = add i64 %1403, 5
  store i64 %1517, i64* %3, align 8
  br label %block_.L_413914

block_.L_413914:                                  ; preds = %block_.L_41390f, %block_.L_413845
  %1518 = phi i64 [ %1517, %block_.L_41390f ], [ %1362, %block_.L_413845 ]
  %1519 = phi i64 [ %1367, %block_.L_41390f ], [ %1347, %block_.L_413845 ]
  %1520 = add i64 %1519, -12324
  %1521 = add i64 %1518, 7
  store i64 %1521, i64* %3, align 8
  %1522 = inttoptr i64 %1520 to i32*
  %1523 = load i32, i32* %1522, align 4
  store i8 0, i8* %14, align 1
  %1524 = and i32 %1523, 255
  %1525 = tail call i32 @llvm.ctpop.i32(i32 %1524)
  %1526 = trunc i32 %1525 to i8
  %1527 = and i8 %1526, 1
  %1528 = xor i8 %1527, 1
  store i8 %1528, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1529 = icmp eq i32 %1523, 0
  %1530 = zext i1 %1529 to i8
  store i8 %1530, i8* %29, align 1
  %1531 = lshr i32 %1523, 31
  %1532 = trunc i32 %1531 to i8
  store i8 %1532, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v225 = select i1 %1529, i64 13, i64 175
  %1533 = add i64 %1518, %.v225
  store i64 %1533, i64* %3, align 8
  br i1 %1529, label %block_413921, label %block_.L_4139c3

block_413921:                                     ; preds = %block_.L_413914
  %1534 = add i64 %1519, -12320
  store i64 %1534, i64* %RDI.i134, align 8
  store i32 0, i32* bitcast (%G_0x85f164_type* @G_0x85f164 to i32*), align 8
  %1535 = add i64 %1519, -12328
  %1536 = add i64 %1533, 28
  store i64 %1536, i64* %3, align 8
  %1537 = inttoptr i64 %1535 to i32*
  store i32 0, i32* %1537, align 4
  %1538 = load i64, i64* %3, align 8
  %1539 = add i64 %1538, -47885
  %1540 = add i64 %1538, 5
  %1541 = load i64, i64* %6, align 8
  %1542 = add i64 %1541, -8
  %1543 = inttoptr i64 %1542 to i64*
  store i64 %1540, i64* %1543, align 8
  store i64 %1542, i64* %6, align 8
  store i64 %1539, i64* %3, align 8
  %call2_41393d = tail call %struct.Memory* @sub_407e30.gen(%struct.State* nonnull %0, i64 %1539, %struct.Memory* %call2_413888)
  %1544 = load i64, i64* %3, align 8
  %1545 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %1546 = zext i32 %1545 to i64
  store i64 %1546, i64* %RAX.i807, align 8
  %1547 = load i64, i64* %RBP.i, align 8
  %1548 = add i64 %1547, -12328
  %1549 = add i64 %1544, 13
  store i64 %1549, i64* %3, align 8
  %1550 = inttoptr i64 %1548 to i32*
  store i32 %1545, i32* %1550, align 4
  %1551 = load i64, i64* %RBP.i, align 8
  %1552 = add i64 %1551, -20
  %1553 = load i64, i64* %3, align 8
  %1554 = add i64 %1553, 7
  store i64 %1554, i64* %3, align 8
  %1555 = inttoptr i64 %1552 to i32*
  store i32 0, i32* %1555, align 4
  %RSI.i577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %.pre83 = load i64, i64* %3, align 8
  br label %block_.L_413956

block_.L_413956:                                  ; preds = %block_.L_4139a1, %block_413921
  %1556 = phi i64 [ %1706, %block_.L_4139a1 ], [ %.pre83, %block_413921 ]
  %1557 = load i64, i64* %RBP.i, align 8
  %1558 = add i64 %1557, -20
  %1559 = add i64 %1556, 3
  store i64 %1559, i64* %3, align 8
  %1560 = inttoptr i64 %1558 to i32*
  %1561 = load i32, i32* %1560, align 4
  %1562 = zext i32 %1561 to i64
  store i64 %1562, i64* %RAX.i807, align 8
  %1563 = add i64 %1557, -12328
  %1564 = add i64 %1556, 9
  store i64 %1564, i64* %3, align 8
  %1565 = inttoptr i64 %1563 to i32*
  %1566 = load i32, i32* %1565, align 4
  %1567 = sub i32 %1561, %1566
  %1568 = icmp ult i32 %1561, %1566
  %1569 = zext i1 %1568 to i8
  store i8 %1569, i8* %14, align 1
  %1570 = and i32 %1567, 255
  %1571 = tail call i32 @llvm.ctpop.i32(i32 %1570)
  %1572 = trunc i32 %1571 to i8
  %1573 = and i8 %1572, 1
  %1574 = xor i8 %1573, 1
  store i8 %1574, i8* %21, align 1
  %1575 = xor i32 %1566, %1561
  %1576 = xor i32 %1575, %1567
  %1577 = lshr i32 %1576, 4
  %1578 = trunc i32 %1577 to i8
  %1579 = and i8 %1578, 1
  store i8 %1579, i8* %26, align 1
  %1580 = icmp eq i32 %1567, 0
  %1581 = zext i1 %1580 to i8
  store i8 %1581, i8* %29, align 1
  %1582 = lshr i32 %1567, 31
  %1583 = trunc i32 %1582 to i8
  store i8 %1583, i8* %32, align 1
  %1584 = lshr i32 %1561, 31
  %1585 = lshr i32 %1566, 31
  %1586 = xor i32 %1585, %1584
  %1587 = xor i32 %1582, %1584
  %1588 = add nuw nsw i32 %1587, %1586
  %1589 = icmp eq i32 %1588, 2
  %1590 = zext i1 %1589 to i8
  store i8 %1590, i8* %38, align 1
  %1591 = icmp ne i8 %1583, 0
  %1592 = xor i1 %1591, %1589
  %.v226 = select i1 %1592, i64 15, i64 104
  %1593 = add i64 %1556, %.v226
  store i64 %1593, i64* %3, align 8
  br i1 %1592, label %block_413965, label %block_.L_4139be

block_413965:                                     ; preds = %block_.L_413956
  %1594 = add i64 %1557, -12320
  store i64 %1594, i64* %RDI.i134, align 8
  %1595 = add i64 %1593, 10
  store i64 %1595, i64* %3, align 8
  %1596 = load i32, i32* %1560, align 4
  %1597 = zext i32 %1596 to i64
  store i64 %1597, i64* %RSI.i577, align 8
  %1598 = add i64 %1593, -33333
  %1599 = add i64 %1593, 15
  %1600 = load i64, i64* %6, align 8
  %1601 = add i64 %1600, -8
  %1602 = inttoptr i64 %1601 to i64*
  store i64 %1599, i64* %1602, align 8
  store i64 %1601, i64* %6, align 8
  store i64 %1598, i64* %3, align 8
  %call2_41396f = tail call %struct.Memory* @sub_40b730.make(%struct.State* nonnull %0, i64 %1598, %struct.Memory* %call2_41393d)
  %1603 = load i64, i64* %RBP.i, align 8
  %1604 = add i64 %1603, -12320
  %1605 = load i64, i64* %3, align 8
  store i64 %1604, i64* %RDI.i134, align 8
  %1606 = add i64 %1603, -20
  %1607 = add i64 %1605, 10
  store i64 %1607, i64* %3, align 8
  %1608 = inttoptr i64 %1606 to i32*
  %1609 = load i32, i32* %1608, align 4
  %1610 = zext i32 %1609 to i64
  store i64 %1610, i64* %RSI.i577, align 8
  %1611 = add i64 %1603, -12332
  %1612 = add i64 %1605, 16
  store i64 %1612, i64* %3, align 8
  %1613 = inttoptr i64 %1611 to i32*
  %1614 = load i32, i32* %1613, align 4
  %1615 = zext i32 %1614 to i64
  store i64 %1615, i64* %RDX.i785, align 8
  %1616 = add i64 %1605, -54004
  %1617 = add i64 %1605, 21
  %1618 = load i64, i64* %6, align 8
  %1619 = add i64 %1618, -8
  %1620 = inttoptr i64 %1619 to i64*
  store i64 %1617, i64* %1620, align 8
  store i64 %1619, i64* %6, align 8
  store i64 %1616, i64* %3, align 8
  %call2_413984 = tail call %struct.Memory* @sub_406680.check_legal(%struct.State* nonnull %0, i64 %1616, %struct.Memory* %call2_41393d)
  %1621 = load i32, i32* %EAX.i781, align 4
  %1622 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1623 = and i32 %1621, 255
  %1624 = tail call i32 @llvm.ctpop.i32(i32 %1623)
  %1625 = trunc i32 %1624 to i8
  %1626 = and i8 %1625, 1
  %1627 = xor i8 %1626, 1
  store i8 %1627, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1628 = icmp eq i32 %1621, 0
  %1629 = zext i1 %1628 to i8
  store i8 %1629, i8* %29, align 1
  %1630 = lshr i32 %1621, 31
  %1631 = trunc i32 %1630 to i8
  store i8 %1631, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v227 = select i1 %1628, i64 24, i64 9
  %1632 = add i64 %1622, %.v227
  store i64 %1632, i64* %3, align 8
  br i1 %1628, label %block_.L_4139a1, label %block_413992

block_413992:                                     ; preds = %block_413965
  %1633 = load i64, i64* %RBP.i, align 8
  %1634 = add i64 %1633, -12324
  %1635 = add i64 %1632, 6
  store i64 %1635, i64* %3, align 8
  %1636 = inttoptr i64 %1634 to i32*
  %1637 = load i32, i32* %1636, align 4
  %1638 = add i32 %1637, 1
  %1639 = zext i32 %1638 to i64
  store i64 %1639, i64* %RAX.i807, align 8
  %1640 = icmp eq i32 %1637, -1
  %1641 = icmp eq i32 %1638, 0
  %1642 = or i1 %1640, %1641
  %1643 = zext i1 %1642 to i8
  store i8 %1643, i8* %14, align 1
  %1644 = and i32 %1638, 255
  %1645 = tail call i32 @llvm.ctpop.i32(i32 %1644)
  %1646 = trunc i32 %1645 to i8
  %1647 = and i8 %1646, 1
  %1648 = xor i8 %1647, 1
  store i8 %1648, i8* %21, align 1
  %1649 = xor i32 %1638, %1637
  %1650 = lshr i32 %1649, 4
  %1651 = trunc i32 %1650 to i8
  %1652 = and i8 %1651, 1
  store i8 %1652, i8* %26, align 1
  %1653 = zext i1 %1641 to i8
  store i8 %1653, i8* %29, align 1
  %1654 = lshr i32 %1638, 31
  %1655 = trunc i32 %1654 to i8
  store i8 %1655, i8* %32, align 1
  %1656 = lshr i32 %1637, 31
  %1657 = xor i32 %1654, %1656
  %1658 = add nuw nsw i32 %1657, %1654
  %1659 = icmp eq i32 %1658, 2
  %1660 = zext i1 %1659 to i8
  store i8 %1660, i8* %38, align 1
  %1661 = add i64 %1632, 15
  store i64 %1661, i64* %3, align 8
  store i32 %1638, i32* %1636, align 4
  %.pre84 = load i64, i64* %3, align 8
  br label %block_.L_4139a1

block_.L_4139a1:                                  ; preds = %block_413992, %block_413965
  %1662 = phi i64 [ %.pre84, %block_413992 ], [ %1632, %block_413965 ]
  %1663 = load i64, i64* %RBP.i, align 8
  %1664 = add i64 %1663, -12320
  store i64 %1664, i64* %RDI.i134, align 8
  %1665 = add i64 %1663, -20
  %1666 = add i64 %1662, 10
  store i64 %1666, i64* %3, align 8
  %1667 = inttoptr i64 %1665 to i32*
  %1668 = load i32, i32* %1667, align 4
  %1669 = zext i32 %1668 to i64
  store i64 %1669, i64* %RSI.i577, align 8
  %1670 = add i64 %1662, -29185
  %1671 = add i64 %1662, 15
  %1672 = load i64, i64* %6, align 8
  %1673 = add i64 %1672, -8
  %1674 = inttoptr i64 %1673 to i64*
  store i64 %1671, i64* %1674, align 8
  store i64 %1673, i64* %6, align 8
  store i64 %1670, i64* %3, align 8
  %call2_4139ab = tail call %struct.Memory* @sub_40c7a0.unmake(%struct.State* nonnull %0, i64 %1670, %struct.Memory* %call2_41393d)
  %1675 = load i64, i64* %RBP.i, align 8
  %1676 = add i64 %1675, -20
  %1677 = load i64, i64* %3, align 8
  %1678 = add i64 %1677, 3
  store i64 %1678, i64* %3, align 8
  %1679 = inttoptr i64 %1676 to i32*
  %1680 = load i32, i32* %1679, align 4
  %1681 = add i32 %1680, 1
  %1682 = zext i32 %1681 to i64
  store i64 %1682, i64* %RAX.i807, align 8
  %1683 = icmp eq i32 %1680, -1
  %1684 = icmp eq i32 %1681, 0
  %1685 = or i1 %1683, %1684
  %1686 = zext i1 %1685 to i8
  store i8 %1686, i8* %14, align 1
  %1687 = and i32 %1681, 255
  %1688 = tail call i32 @llvm.ctpop.i32(i32 %1687)
  %1689 = trunc i32 %1688 to i8
  %1690 = and i8 %1689, 1
  %1691 = xor i8 %1690, 1
  store i8 %1691, i8* %21, align 1
  %1692 = xor i32 %1681, %1680
  %1693 = lshr i32 %1692, 4
  %1694 = trunc i32 %1693 to i8
  %1695 = and i8 %1694, 1
  store i8 %1695, i8* %26, align 1
  %1696 = zext i1 %1684 to i8
  store i8 %1696, i8* %29, align 1
  %1697 = lshr i32 %1681, 31
  %1698 = trunc i32 %1697 to i8
  store i8 %1698, i8* %32, align 1
  %1699 = lshr i32 %1680, 31
  %1700 = xor i32 %1697, %1699
  %1701 = add nuw nsw i32 %1700, %1697
  %1702 = icmp eq i32 %1701, 2
  %1703 = zext i1 %1702 to i8
  store i8 %1703, i8* %38, align 1
  %1704 = add i64 %1677, 9
  store i64 %1704, i64* %3, align 8
  store i32 %1681, i32* %1679, align 4
  %1705 = load i64, i64* %3, align 8
  %1706 = add i64 %1705, -99
  store i64 %1706, i64* %3, align 8
  br label %block_.L_413956

block_.L_4139be:                                  ; preds = %block_.L_413956
  %1707 = add i64 %1593, 5
  store i64 %1707, i64* %3, align 8
  br label %block_.L_4139c3

block_.L_4139c3:                                  ; preds = %block_.L_413914, %block_.L_4139be
  %1708 = phi i64 [ %1519, %block_.L_413914 ], [ %1557, %block_.L_4139be ]
  %1709 = phi i64 [ %1533, %block_.L_413914 ], [ %1707, %block_.L_4139be ]
  %MEMORY.24 = phi %struct.Memory* [ %call2_413888, %block_.L_413914 ], [ %call2_41393d, %block_.L_4139be ]
  %1710 = add i64 %1709, 5
  store i64 %1710, i64* %3, align 8
  br label %block_.L_4139c8

block_.L_4139c8:                                  ; preds = %block_.L_4139c3, %block_.L_413840
  %1711 = phi i64 [ %.pre85, %block_.L_413840 ], [ %1708, %block_.L_4139c3 ]
  %storemerge45 = phi i64 [ %1313, %block_.L_413840 ], [ %1710, %block_.L_4139c3 ]
  %MEMORY.25 = phi %struct.Memory* [ %call2_41379c, %block_.L_413840 ], [ %MEMORY.24, %block_.L_4139c3 ]
  %1712 = add i64 %1711, -12324
  %1713 = add i64 %storemerge45, 7
  store i64 %1713, i64* %3, align 8
  %1714 = inttoptr i64 %1712 to i32*
  %1715 = load i32, i32* %1714, align 4
  store i8 0, i8* %14, align 1
  %1716 = and i32 %1715, 255
  %1717 = tail call i32 @llvm.ctpop.i32(i32 %1716)
  %1718 = trunc i32 %1717 to i8
  %1719 = and i8 %1718, 1
  %1720 = xor i8 %1719, 1
  store i8 %1720, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1721 = icmp eq i32 %1715, 0
  %1722 = zext i1 %1721 to i8
  store i8 %1722, i8* %29, align 1
  %1723 = lshr i32 %1715, 31
  %1724 = trunc i32 %1723 to i8
  store i8 %1724, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v212 = select i1 %1721, i64 13, i64 40
  %1725 = add i64 %storemerge45, %.v212
  store i64 %1725, i64* %3, align 8
  br i1 %1721, label %block_4139d5, label %block_.L_4139f0

block_4139d5:                                     ; preds = %block_.L_4139c8
  %1726 = add i64 %1711, -8
  %1727 = add i64 %1725, 4
  store i64 %1727, i64* %3, align 8
  %1728 = inttoptr i64 %1726 to i64*
  %1729 = load i64, i64* %1728, align 8
  store i64 %1729, i64* %RAX.i807, align 8
  %1730 = add i64 %1729, 4
  %1731 = add i64 %1725, 11
  store i64 %1731, i64* %3, align 8
  %1732 = inttoptr i64 %1730 to i32*
  store i32 1, i32* %1732, align 4
  %1733 = load i64, i64* %RBP.i, align 8
  %1734 = add i64 %1733, -8
  %1735 = load i64, i64* %3, align 8
  %1736 = add i64 %1735, 4
  store i64 %1736, i64* %3, align 8
  %1737 = inttoptr i64 %1734 to i64*
  %1738 = load i64, i64* %1737, align 8
  store i64 %1738, i64* %RAX.i807, align 8
  %1739 = add i64 %1738, 8
  %1740 = add i64 %1735, 11
  store i64 %1740, i64* %3, align 8
  %1741 = inttoptr i64 %1739 to i32*
  store i32 1, i32* %1741, align 4
  %1742 = load i64, i64* %3, align 8
  %1743 = add i64 %1742, 771
  br label %block_.L_413cee

block_.L_4139f0:                                  ; preds = %block_.L_4139c8
  store i64 0, i64* %RCX.i799, align 8
  %1744 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %1745 = icmp eq i32 %1744, 0
  %1746 = zext i1 %1745 to i64
  store i64 %1746, i64* %RAX.i807, align 8
  %1747 = zext i1 %1745 to i32
  %1748 = load i32, i32* bitcast (%G_0x633b54_type* @G_0x633b54 to i32*), align 8
  %1749 = icmp eq i32 %1747, %1748
  %.v213 = select i1 %1749, i64 31, i64 424
  %1750 = add i64 %1725, %.v213
  %1751 = add i64 %1750, 8
  store i64 %1751, i64* %3, align 8
  %1752 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %1753 = add i32 %1752, -3
  %1754 = icmp ult i32 %1752, 3
  %1755 = zext i1 %1754 to i8
  store i8 %1755, i8* %14, align 1
  %1756 = and i32 %1753, 255
  %1757 = tail call i32 @llvm.ctpop.i32(i32 %1756)
  %1758 = trunc i32 %1757 to i8
  %1759 = and i8 %1758, 1
  %1760 = xor i8 %1759, 1
  store i8 %1760, i8* %21, align 1
  %1761 = xor i32 %1753, %1752
  %1762 = lshr i32 %1761, 4
  %1763 = trunc i32 %1762 to i8
  %1764 = and i8 %1763, 1
  store i8 %1764, i8* %26, align 1
  %1765 = icmp eq i32 %1753, 0
  %1766 = zext i1 %1765 to i8
  store i8 %1766, i8* %29, align 1
  %1767 = lshr i32 %1753, 31
  %1768 = trunc i32 %1767 to i8
  store i8 %1768, i8* %32, align 1
  %1769 = lshr i32 %1752, 31
  %1770 = xor i32 %1767, %1769
  %1771 = add nuw nsw i32 %1770, %1769
  %1772 = icmp eq i32 %1771, 2
  %1773 = zext i1 %1772 to i8
  store i8 %1773, i8* %38, align 1
  br i1 %1749, label %block_413a0f, label %block_.L_413b98

block_413a0f:                                     ; preds = %block_.L_4139f0
  %.v218 = select i1 %1765, i64 111, i64 14
  %1774 = add i64 %1750, %.v218
  store i64 %1774, i64* %3, align 8
  %.pre159 = add i32 %1752, -4
  br i1 %1765, label %block_413a0f.block_.L_413a7e_crit_edge, label %block_413a1d

block_413a0f.block_.L_413a7e_crit_edge:           ; preds = %block_413a0f
  %.pre161 = and i32 %.pre159, 255
  %.pre163 = tail call i32 @llvm.ctpop.i32(i32 %.pre161)
  %.pre165 = trunc i32 %.pre163 to i8
  %.pre167 = and i8 %.pre165, 1
  %.pre169 = xor i8 %.pre167, 1
  %.pre171 = xor i32 %.pre159, %1752
  %.pre173 = lshr i32 %.pre171, 4
  %.pre175 = trunc i32 %.pre173 to i8
  %.pre177 = and i8 %.pre175, 1
  %.pre179 = lshr i32 %.pre159, 31
  %.pre183 = xor i32 %.pre179, %1769
  %.pre185 = add nuw nsw i32 %.pre183, %1769
  br label %block_.L_413a7e

block_413a1d:                                     ; preds = %block_413a0f
  %1775 = icmp ult i32 %1752, 4
  %1776 = zext i1 %1775 to i8
  store i8 %1776, i8* %14, align 1
  %1777 = and i32 %.pre159, 255
  %1778 = tail call i32 @llvm.ctpop.i32(i32 %1777)
  %1779 = trunc i32 %1778 to i8
  %1780 = and i8 %1779, 1
  %1781 = xor i8 %1780, 1
  store i8 %1781, i8* %21, align 1
  %1782 = xor i32 %.pre159, %1752
  %1783 = lshr i32 %1782, 4
  %1784 = trunc i32 %1783 to i8
  %1785 = and i8 %1784, 1
  store i8 %1785, i8* %26, align 1
  %1786 = icmp eq i32 %.pre159, 0
  %1787 = zext i1 %1786 to i8
  store i8 %1787, i8* %29, align 1
  %1788 = lshr i32 %.pre159, 31
  %1789 = trunc i32 %1788 to i8
  store i8 %1789, i8* %32, align 1
  %1790 = xor i32 %1788, %1769
  %1791 = add nuw nsw i32 %1790, %1769
  %1792 = icmp eq i32 %1791, 2
  %1793 = zext i1 %1792 to i8
  store i8 %1793, i8* %38, align 1
  %.v219 = select i1 %1786, i64 97, i64 14
  %1794 = add i64 %1774, %.v219
  store i64 %1794, i64* %3, align 8
  br i1 %1786, label %block_.L_413a7e, label %block_413a2b

block_413a2b:                                     ; preds = %block_413a1d
  %1795 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %1796 = zext i32 %1795 to i64
  store i64 %1796, i64* %RCX.i799, align 8
  %1797 = load i64, i64* %RBP.i, align 8
  %1798 = add i64 %1797, -12336
  %1799 = add i64 %1794, 18
  store i64 %1799, i64* %3, align 8
  %1800 = inttoptr i64 %1798 to i32*
  store i32 50, i32* %1800, align 4
  %1801 = load i32, i32* %ECX.i796, align 4
  %1802 = zext i32 %1801 to i64
  %1803 = load i64, i64* %3, align 8
  store i64 %1802, i64* %RAX.i807, align 8
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1805 = sext i32 %1801 to i64
  %1806 = lshr i64 %1805, 32
  store i64 %1806, i64* %1804, align 8
  %1807 = load i64, i64* %RBP.i, align 8
  %1808 = add i64 %1807, -12336
  %1809 = add i64 %1803, 9
  store i64 %1809, i64* %3, align 8
  %1810 = inttoptr i64 %1808 to i32*
  %1811 = load i32, i32* %1810, align 4
  %1812 = zext i32 %1811 to i64
  store i64 %1812, i64* %RCX.i799, align 8
  %1813 = add i64 %1803, 11
  store i64 %1813, i64* %3, align 8
  %1814 = sext i32 %1811 to i64
  %1815 = shl nuw i64 %1806, 32
  %1816 = or i64 %1815, %1802
  %1817 = sdiv i64 %1816, %1814
  %1818 = shl i64 %1817, 32
  %1819 = ashr exact i64 %1818, 32
  %1820 = icmp eq i64 %1817, %1819
  br i1 %1820, label %1823, label %1821

; <label>:1821:                                   ; preds = %block_413a2b
  %1822 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1813, %struct.Memory* %MEMORY.25)
  %.pre86 = load i64, i64* %RAX.i807, align 8
  %.pre87 = load i64, i64* %3, align 8
  %.pre88 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit488

; <label>:1823:                                   ; preds = %block_413a2b
  %1824 = srem i64 %1816, %1814
  %1825 = and i64 %1817, 4294967295
  store i64 %1825, i64* %RAX.i807, align 8
  %1826 = and i64 %1824, 4294967295
  store i64 %1826, i64* %RDX.i785, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit488

routine_idivl__ecx.exit488:                       ; preds = %1823, %1821
  %1827 = phi i64 [ %.pre88, %1821 ], [ %1807, %1823 ]
  %1828 = phi i64 [ %.pre87, %1821 ], [ %1813, %1823 ]
  %1829 = phi i64 [ %.pre86, %1821 ], [ %1825, %1823 ]
  %1830 = phi %struct.Memory* [ %1822, %1821 ], [ %MEMORY.25, %1823 ]
  %1831 = trunc i64 %1829 to i32
  %1832 = add i32 %1831, 1
  %1833 = zext i32 %1832 to i64
  store i64 %1833, i64* %RAX.i807, align 8
  %1834 = icmp eq i32 %1831, -1
  %1835 = icmp eq i32 %1832, 0
  %1836 = or i1 %1834, %1835
  %1837 = zext i1 %1836 to i8
  store i8 %1837, i8* %14, align 1
  %1838 = and i32 %1832, 255
  %1839 = tail call i32 @llvm.ctpop.i32(i32 %1838)
  %1840 = trunc i32 %1839 to i8
  %1841 = and i8 %1840, 1
  %1842 = xor i8 %1841, 1
  store i8 %1842, i8* %21, align 1
  %1843 = xor i32 %1832, %1831
  %1844 = lshr i32 %1843, 4
  %1845 = trunc i32 %1844 to i8
  %1846 = and i8 %1845, 1
  store i8 %1846, i8* %26, align 1
  %1847 = zext i1 %1835 to i8
  store i8 %1847, i8* %29, align 1
  %1848 = lshr i32 %1832, 31
  %1849 = trunc i32 %1848 to i8
  store i8 %1849, i8* %32, align 1
  %1850 = lshr i32 %1831, 31
  %1851 = xor i32 %1848, %1850
  %1852 = add nuw nsw i32 %1851, %1848
  %1853 = icmp eq i32 %1852, 2
  %1854 = zext i1 %1853 to i8
  store i8 %1854, i8* %38, align 1
  %RSI.i482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %1855 = add i64 %1827, -8
  %1856 = add i64 %1828, 7
  store i64 %1856, i64* %3, align 8
  %1857 = inttoptr i64 %1855 to i64*
  %1858 = load i64, i64* %1857, align 8
  store i64 %1858, i64* %RSI.i482, align 8
  %1859 = add i64 %1858, 4
  %1860 = add i64 %1828, 10
  store i64 %1860, i64* %3, align 8
  %1861 = inttoptr i64 %1859 to i32*
  store i32 %1832, i32* %1861, align 4
  %1862 = load i64, i64* %RBP.i, align 8
  %1863 = add i64 %1862, -12324
  %1864 = load i64, i64* %3, align 8
  %1865 = add i64 %1864, 6
  store i64 %1865, i64* %3, align 8
  %1866 = inttoptr i64 %1863 to i32*
  %1867 = load i32, i32* %1866, align 4
  %1868 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %1869 = zext i32 %1868 to i64
  store i64 %1869, i64* %RDI.i134, align 8
  %1870 = add i64 %1862, -12340
  %1871 = add i64 %1864, 19
  store i64 %1871, i64* %3, align 8
  %1872 = inttoptr i64 %1870 to i32*
  store i32 %1867, i32* %1872, align 4
  %EDI.i468 = bitcast %union.anon* %39 to i32*
  %1873 = load i32, i32* %EDI.i468, align 4
  %1874 = zext i32 %1873 to i64
  %1875 = load i64, i64* %3, align 8
  store i64 %1874, i64* %RAX.i807, align 8
  %1876 = sext i32 %1873 to i64
  %1877 = lshr i64 %1876, 32
  store i64 %1877, i64* %1804, align 8
  %1878 = load i32, i32* %ECX.i796, align 4
  %1879 = add i64 %1875, 5
  store i64 %1879, i64* %3, align 8
  %1880 = sext i32 %1878 to i64
  %1881 = shl nuw i64 %1877, 32
  %1882 = or i64 %1881, %1874
  %1883 = sdiv i64 %1882, %1880
  %1884 = shl i64 %1883, 32
  %1885 = ashr exact i64 %1884, 32
  %1886 = icmp eq i64 %1883, %1885
  br i1 %1886, label %1889, label %1887

; <label>:1887:                                   ; preds = %routine_idivl__ecx.exit488
  %1888 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1879, %struct.Memory* %1830)
  %.pre89 = load i64, i64* %3, align 8
  %.pre90 = load i32, i32* %EAX.i781, align 4
  br label %routine_idivl__ecx.exit463

; <label>:1889:                                   ; preds = %routine_idivl__ecx.exit488
  %1890 = srem i64 %1882, %1880
  %1891 = and i64 %1883, 4294967295
  store i64 %1891, i64* %RAX.i807, align 8
  %1892 = and i64 %1890, 4294967295
  store i64 %1892, i64* %RDX.i785, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1893 = trunc i64 %1883 to i32
  br label %routine_idivl__ecx.exit463

routine_idivl__ecx.exit463:                       ; preds = %1889, %1887
  %1894 = phi i32 [ %.pre90, %1887 ], [ %1893, %1889 ]
  %1895 = phi i64 [ %.pre89, %1887 ], [ %1879, %1889 ]
  %1896 = phi %struct.Memory* [ %1888, %1887 ], [ %1830, %1889 ]
  %1897 = load i64, i64* %RBP.i, align 8
  %1898 = add i64 %1897, -12340
  %1899 = add i64 %1895, 6
  store i64 %1899, i64* %3, align 8
  %1900 = inttoptr i64 %1898 to i32*
  %1901 = load i32, i32* %1900, align 4
  %1902 = add i32 %1894, %1901
  %1903 = zext i32 %1902 to i64
  store i64 %1903, i64* %RDI.i134, align 8
  %1904 = icmp ult i32 %1902, %1901
  %1905 = icmp ult i32 %1902, %1894
  %1906 = or i1 %1904, %1905
  %1907 = zext i1 %1906 to i8
  store i8 %1907, i8* %14, align 1
  %1908 = and i32 %1902, 255
  %1909 = tail call i32 @llvm.ctpop.i32(i32 %1908)
  %1910 = trunc i32 %1909 to i8
  %1911 = and i8 %1910, 1
  %1912 = xor i8 %1911, 1
  store i8 %1912, i8* %21, align 1
  %1913 = xor i32 %1894, %1901
  %1914 = xor i32 %1913, %1902
  %1915 = lshr i32 %1914, 4
  %1916 = trunc i32 %1915 to i8
  %1917 = and i8 %1916, 1
  store i8 %1917, i8* %26, align 1
  %1918 = icmp eq i32 %1902, 0
  %1919 = zext i1 %1918 to i8
  store i8 %1919, i8* %29, align 1
  %1920 = lshr i32 %1902, 31
  %1921 = trunc i32 %1920 to i8
  store i8 %1921, i8* %32, align 1
  %1922 = lshr i32 %1901, 31
  %1923 = lshr i32 %1894, 31
  %1924 = xor i32 %1920, %1922
  %1925 = xor i32 %1920, %1923
  %1926 = add nuw nsw i32 %1924, %1925
  %1927 = icmp eq i32 %1926, 2
  %1928 = zext i1 %1927 to i8
  store i8 %1928, i8* %38, align 1
  %1929 = add i64 %1897, -8
  %1930 = add i64 %1895, 12
  store i64 %1930, i64* %3, align 8
  %1931 = inttoptr i64 %1929 to i64*
  %1932 = load i64, i64* %1931, align 8
  store i64 %1932, i64* %RSI.i482, align 8
  %1933 = add i64 %1932, 8
  %1934 = add i64 %1895, 15
  store i64 %1934, i64* %3, align 8
  %1935 = inttoptr i64 %1933 to i32*
  store i32 %1902, i32* %1935, align 4
  %1936 = load i64, i64* %3, align 8
  %1937 = add i64 %1936, 282
  br label %block_.L_413b93

block_.L_413a7e:                                  ; preds = %block_413a0f.block_.L_413a7e_crit_edge, %block_413a1d
  %.pre-phi186 = phi i32 [ %.pre185, %block_413a0f.block_.L_413a7e_crit_edge ], [ %1791, %block_413a1d ]
  %.pre-phi182 = phi i8 [ 1, %block_413a0f.block_.L_413a7e_crit_edge ], [ %1789, %block_413a1d ]
  %.pre-phi178 = phi i8 [ %.pre177, %block_413a0f.block_.L_413a7e_crit_edge ], [ %1785, %block_413a1d ]
  %.pre-phi170 = phi i8 [ %.pre169, %block_413a0f.block_.L_413a7e_crit_edge ], [ %1781, %block_413a1d ]
  %.pre-phi160 = phi i1 [ false, %block_413a0f.block_.L_413a7e_crit_edge ], [ true, %block_413a1d ]
  %1938 = phi i64 [ %1774, %block_413a0f.block_.L_413a7e_crit_edge ], [ %1794, %block_413a1d ]
  %1939 = icmp ult i32 %1752, 4
  %1940 = zext i1 %1939 to i8
  store i8 %1940, i8* %14, align 1
  store i8 %.pre-phi170, i8* %21, align 1
  store i8 %.pre-phi178, i8* %26, align 1
  %1941 = zext i1 %.pre-phi160 to i8
  store i8 %1941, i8* %29, align 1
  store i8 %.pre-phi182, i8* %32, align 1
  %1942 = icmp eq i32 %.pre-phi186, 2
  %1943 = zext i1 %1942 to i8
  store i8 %1943, i8* %38, align 1
  %.v220 = select i1 %.pre-phi160, i64 14, i64 194
  %1944 = add i64 %1938, %.v220
  store i64 %1944, i64* %3, align 8
  br i1 %.pre-phi160, label %block_413a8c, label %block_.L_413b40

block_413a8c:                                     ; preds = %block_.L_413a7e
  %1945 = load i32, i32* bitcast (%G_0x886a78_type* @G_0x886a78 to i32*), align 8
  %1946 = add i32 %1945, -2
  %1947 = icmp ult i32 %1945, 2
  %1948 = zext i1 %1947 to i8
  store i8 %1948, i8* %14, align 1
  %1949 = and i32 %1946, 255
  %1950 = tail call i32 @llvm.ctpop.i32(i32 %1949)
  %1951 = trunc i32 %1950 to i8
  %1952 = and i8 %1951, 1
  %1953 = xor i8 %1952, 1
  store i8 %1953, i8* %21, align 1
  %1954 = xor i32 %1946, %1945
  %1955 = lshr i32 %1954, 4
  %1956 = trunc i32 %1955 to i8
  %1957 = and i8 %1956, 1
  store i8 %1957, i8* %26, align 1
  %1958 = icmp eq i32 %1946, 0
  %1959 = zext i1 %1958 to i8
  store i8 %1959, i8* %29, align 1
  %1960 = lshr i32 %1946, 31
  %1961 = trunc i32 %1960 to i8
  store i8 %1961, i8* %32, align 1
  %1962 = lshr i32 %1945, 31
  %1963 = xor i32 %1960, %1962
  %1964 = add nuw nsw i32 %1963, %1962
  %1965 = icmp eq i32 %1964, 2
  %1966 = zext i1 %1965 to i8
  store i8 %1966, i8* %38, align 1
  %.v221 = select i1 %1958, i64 14, i64 97
  %1967 = add i64 %1944, %.v221
  %1968 = add i64 %1967, 5
  store i64 %1968, i64* %3, align 8
  %1969 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %1970 = zext i32 %1969 to i64
  store i64 %1970, i64* %RCX.i799, align 8
  %1971 = load i64, i64* %RBP.i, align 8
  br i1 %1958, label %block_413a9a, label %block_.L_413aed

block_413a9a:                                     ; preds = %block_413a8c
  %1972 = add i64 %1971, -12344
  %1973 = add i64 %1967, 18
  store i64 %1973, i64* %3, align 8
  %1974 = inttoptr i64 %1972 to i32*
  store i32 30, i32* %1974, align 4
  %1975 = load i32, i32* %ECX.i796, align 4
  %1976 = zext i32 %1975 to i64
  %1977 = load i64, i64* %3, align 8
  store i64 %1976, i64* %RAX.i807, align 8
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1979 = sext i32 %1975 to i64
  %1980 = lshr i64 %1979, 32
  store i64 %1980, i64* %1978, align 8
  %1981 = load i64, i64* %RBP.i, align 8
  %1982 = add i64 %1981, -12344
  %1983 = add i64 %1977, 9
  store i64 %1983, i64* %3, align 8
  %1984 = inttoptr i64 %1982 to i32*
  %1985 = load i32, i32* %1984, align 4
  %1986 = zext i32 %1985 to i64
  store i64 %1986, i64* %RCX.i799, align 8
  %1987 = add i64 %1977, 11
  store i64 %1987, i64* %3, align 8
  %1988 = sext i32 %1985 to i64
  %1989 = shl nuw i64 %1980, 32
  %1990 = or i64 %1989, %1976
  %1991 = sdiv i64 %1990, %1988
  %1992 = shl i64 %1991, 32
  %1993 = ashr exact i64 %1992, 32
  %1994 = icmp eq i64 %1991, %1993
  br i1 %1994, label %1997, label %1995

; <label>:1995:                                   ; preds = %block_413a9a
  %1996 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1987, %struct.Memory* %MEMORY.25)
  %.pre91 = load i64, i64* %RAX.i807, align 8
  %.pre92 = load i64, i64* %3, align 8
  %.pre93 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit427

; <label>:1997:                                   ; preds = %block_413a9a
  %1998 = srem i64 %1990, %1988
  %1999 = and i64 %1991, 4294967295
  store i64 %1999, i64* %RAX.i807, align 8
  %2000 = and i64 %1998, 4294967295
  store i64 %2000, i64* %RDX.i785, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit427

routine_idivl__ecx.exit427:                       ; preds = %1997, %1995
  %2001 = phi i64 [ %.pre93, %1995 ], [ %1981, %1997 ]
  %2002 = phi i64 [ %.pre92, %1995 ], [ %1987, %1997 ]
  %2003 = phi i64 [ %.pre91, %1995 ], [ %1999, %1997 ]
  %2004 = phi %struct.Memory* [ %1996, %1995 ], [ %MEMORY.25, %1997 ]
  %2005 = trunc i64 %2003 to i32
  %2006 = add i32 %2005, 1
  %2007 = zext i32 %2006 to i64
  store i64 %2007, i64* %RAX.i807, align 8
  %2008 = icmp eq i32 %2005, -1
  %2009 = icmp eq i32 %2006, 0
  %2010 = or i1 %2008, %2009
  %2011 = zext i1 %2010 to i8
  store i8 %2011, i8* %14, align 1
  %2012 = and i32 %2006, 255
  %2013 = tail call i32 @llvm.ctpop.i32(i32 %2012)
  %2014 = trunc i32 %2013 to i8
  %2015 = and i8 %2014, 1
  %2016 = xor i8 %2015, 1
  store i8 %2016, i8* %21, align 1
  %2017 = xor i32 %2006, %2005
  %2018 = lshr i32 %2017, 4
  %2019 = trunc i32 %2018 to i8
  %2020 = and i8 %2019, 1
  store i8 %2020, i8* %26, align 1
  %2021 = zext i1 %2009 to i8
  store i8 %2021, i8* %29, align 1
  %2022 = lshr i32 %2006, 31
  %2023 = trunc i32 %2022 to i8
  store i8 %2023, i8* %32, align 1
  %2024 = lshr i32 %2005, 31
  %2025 = xor i32 %2022, %2024
  %2026 = add nuw nsw i32 %2025, %2022
  %2027 = icmp eq i32 %2026, 2
  %2028 = zext i1 %2027 to i8
  store i8 %2028, i8* %38, align 1
  %RSI.i421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %2029 = add i64 %2001, -8
  %2030 = add i64 %2002, 7
  store i64 %2030, i64* %3, align 8
  %2031 = inttoptr i64 %2029 to i64*
  %2032 = load i64, i64* %2031, align 8
  store i64 %2032, i64* %RSI.i421, align 8
  %2033 = add i64 %2032, 4
  %2034 = add i64 %2002, 10
  store i64 %2034, i64* %3, align 8
  %2035 = inttoptr i64 %2033 to i32*
  store i32 %2006, i32* %2035, align 4
  %2036 = load i64, i64* %RBP.i, align 8
  %2037 = add i64 %2036, -12324
  %2038 = load i64, i64* %3, align 8
  %2039 = add i64 %2038, 6
  store i64 %2039, i64* %3, align 8
  %2040 = inttoptr i64 %2037 to i32*
  %2041 = load i32, i32* %2040, align 4
  %2042 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2043 = zext i32 %2042 to i64
  store i64 %2043, i64* %RDI.i134, align 8
  %2044 = add i64 %2036, -12348
  %2045 = add i64 %2038, 19
  store i64 %2045, i64* %3, align 8
  %2046 = inttoptr i64 %2044 to i32*
  store i32 %2041, i32* %2046, align 4
  %EDI.i407 = bitcast %union.anon* %39 to i32*
  %2047 = load i32, i32* %EDI.i407, align 4
  %2048 = zext i32 %2047 to i64
  %2049 = load i64, i64* %3, align 8
  store i64 %2048, i64* %RAX.i807, align 8
  %2050 = sext i32 %2047 to i64
  %2051 = lshr i64 %2050, 32
  store i64 %2051, i64* %1978, align 8
  %2052 = load i32, i32* %ECX.i796, align 4
  %2053 = add i64 %2049, 5
  store i64 %2053, i64* %3, align 8
  %2054 = sext i32 %2052 to i64
  %2055 = shl nuw i64 %2051, 32
  %2056 = or i64 %2055, %2048
  %2057 = sdiv i64 %2056, %2054
  %2058 = shl i64 %2057, 32
  %2059 = ashr exact i64 %2058, 32
  %2060 = icmp eq i64 %2057, %2059
  br i1 %2060, label %2063, label %2061

; <label>:2061:                                   ; preds = %routine_idivl__ecx.exit427
  %2062 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2053, %struct.Memory* %2004)
  %.pre94 = load i64, i64* %3, align 8
  %.pre95 = load i32, i32* %EAX.i781, align 4
  br label %routine_idivl__ecx.exit402

; <label>:2063:                                   ; preds = %routine_idivl__ecx.exit427
  %2064 = srem i64 %2056, %2054
  %2065 = and i64 %2057, 4294967295
  store i64 %2065, i64* %RAX.i807, align 8
  %2066 = and i64 %2064, 4294967295
  store i64 %2066, i64* %RDX.i785, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2067 = trunc i64 %2057 to i32
  br label %routine_idivl__ecx.exit402

routine_idivl__ecx.exit402:                       ; preds = %2063, %2061
  %2068 = phi i32 [ %.pre95, %2061 ], [ %2067, %2063 ]
  %2069 = phi i64 [ %.pre94, %2061 ], [ %2053, %2063 ]
  %2070 = phi %struct.Memory* [ %2062, %2061 ], [ %2004, %2063 ]
  %2071 = load i64, i64* %RBP.i, align 8
  %2072 = add i64 %2071, -12348
  %2073 = add i64 %2069, 6
  store i64 %2073, i64* %3, align 8
  %2074 = inttoptr i64 %2072 to i32*
  %2075 = load i32, i32* %2074, align 4
  %2076 = add i32 %2068, %2075
  %2077 = zext i32 %2076 to i64
  store i64 %2077, i64* %RDI.i134, align 8
  %2078 = icmp ult i32 %2076, %2075
  %2079 = icmp ult i32 %2076, %2068
  %2080 = or i1 %2078, %2079
  %2081 = zext i1 %2080 to i8
  store i8 %2081, i8* %14, align 1
  %2082 = and i32 %2076, 255
  %2083 = tail call i32 @llvm.ctpop.i32(i32 %2082)
  %2084 = trunc i32 %2083 to i8
  %2085 = and i8 %2084, 1
  %2086 = xor i8 %2085, 1
  store i8 %2086, i8* %21, align 1
  %2087 = xor i32 %2068, %2075
  %2088 = xor i32 %2087, %2076
  %2089 = lshr i32 %2088, 4
  %2090 = trunc i32 %2089 to i8
  %2091 = and i8 %2090, 1
  store i8 %2091, i8* %26, align 1
  %2092 = icmp eq i32 %2076, 0
  %2093 = zext i1 %2092 to i8
  store i8 %2093, i8* %29, align 1
  %2094 = lshr i32 %2076, 31
  %2095 = trunc i32 %2094 to i8
  store i8 %2095, i8* %32, align 1
  %2096 = lshr i32 %2075, 31
  %2097 = lshr i32 %2068, 31
  %2098 = xor i32 %2094, %2096
  %2099 = xor i32 %2094, %2097
  %2100 = add nuw nsw i32 %2098, %2099
  %2101 = icmp eq i32 %2100, 2
  %2102 = zext i1 %2101 to i8
  store i8 %2102, i8* %38, align 1
  %2103 = add i64 %2071, -8
  %2104 = add i64 %2069, 12
  store i64 %2104, i64* %3, align 8
  %2105 = inttoptr i64 %2103 to i64*
  %2106 = load i64, i64* %2105, align 8
  store i64 %2106, i64* %RSI.i421, align 8
  %2107 = add i64 %2106, 8
  %2108 = add i64 %2069, 15
  store i64 %2108, i64* %3, align 8
  %2109 = inttoptr i64 %2107 to i32*
  store i32 %2076, i32* %2109, align 4
  %2110 = load i64, i64* %3, align 8
  %2111 = add i64 %2110, 83
  store i64 %2111, i64* %3, align 8
  br label %block_.L_413b3b

block_.L_413aed:                                  ; preds = %block_413a8c
  %2112 = add i64 %1971, -12352
  %2113 = add i64 %1967, 18
  store i64 %2113, i64* %3, align 8
  %2114 = inttoptr i64 %2112 to i32*
  store i32 80, i32* %2114, align 4
  %2115 = load i32, i32* %ECX.i796, align 4
  %2116 = zext i32 %2115 to i64
  %2117 = load i64, i64* %3, align 8
  store i64 %2116, i64* %RAX.i807, align 8
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2119 = sext i32 %2115 to i64
  %2120 = lshr i64 %2119, 32
  store i64 %2120, i64* %2118, align 8
  %2121 = load i64, i64* %RBP.i, align 8
  %2122 = add i64 %2121, -12352
  %2123 = add i64 %2117, 9
  store i64 %2123, i64* %3, align 8
  %2124 = inttoptr i64 %2122 to i32*
  %2125 = load i32, i32* %2124, align 4
  %2126 = zext i32 %2125 to i64
  store i64 %2126, i64* %RCX.i799, align 8
  %2127 = add i64 %2117, 11
  store i64 %2127, i64* %3, align 8
  %2128 = sext i32 %2125 to i64
  %2129 = shl nuw i64 %2120, 32
  %2130 = or i64 %2129, %2116
  %2131 = sdiv i64 %2130, %2128
  %2132 = shl i64 %2131, 32
  %2133 = ashr exact i64 %2132, 32
  %2134 = icmp eq i64 %2131, %2133
  br i1 %2134, label %2137, label %2135

; <label>:2135:                                   ; preds = %block_.L_413aed
  %2136 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2127, %struct.Memory* %MEMORY.25)
  %.pre96 = load i64, i64* %RAX.i807, align 8
  %.pre97 = load i64, i64* %3, align 8
  %.pre98 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit371

; <label>:2137:                                   ; preds = %block_.L_413aed
  %2138 = srem i64 %2130, %2128
  %2139 = and i64 %2131, 4294967295
  store i64 %2139, i64* %RAX.i807, align 8
  %2140 = and i64 %2138, 4294967295
  store i64 %2140, i64* %RDX.i785, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit371

routine_idivl__ecx.exit371:                       ; preds = %2137, %2135
  %2141 = phi i64 [ %.pre98, %2135 ], [ %2121, %2137 ]
  %2142 = phi i64 [ %.pre97, %2135 ], [ %2127, %2137 ]
  %2143 = phi i64 [ %.pre96, %2135 ], [ %2139, %2137 ]
  %2144 = phi %struct.Memory* [ %2136, %2135 ], [ %MEMORY.25, %2137 ]
  %2145 = trunc i64 %2143 to i32
  %2146 = add i32 %2145, 1
  %2147 = zext i32 %2146 to i64
  store i64 %2147, i64* %RAX.i807, align 8
  %2148 = icmp eq i32 %2145, -1
  %2149 = icmp eq i32 %2146, 0
  %2150 = or i1 %2148, %2149
  %2151 = zext i1 %2150 to i8
  store i8 %2151, i8* %14, align 1
  %2152 = and i32 %2146, 255
  %2153 = tail call i32 @llvm.ctpop.i32(i32 %2152)
  %2154 = trunc i32 %2153 to i8
  %2155 = and i8 %2154, 1
  %2156 = xor i8 %2155, 1
  store i8 %2156, i8* %21, align 1
  %2157 = xor i32 %2146, %2145
  %2158 = lshr i32 %2157, 4
  %2159 = trunc i32 %2158 to i8
  %2160 = and i8 %2159, 1
  store i8 %2160, i8* %26, align 1
  %2161 = zext i1 %2149 to i8
  store i8 %2161, i8* %29, align 1
  %2162 = lshr i32 %2146, 31
  %2163 = trunc i32 %2162 to i8
  store i8 %2163, i8* %32, align 1
  %2164 = lshr i32 %2145, 31
  %2165 = xor i32 %2162, %2164
  %2166 = add nuw nsw i32 %2165, %2162
  %2167 = icmp eq i32 %2166, 2
  %2168 = zext i1 %2167 to i8
  store i8 %2168, i8* %38, align 1
  %RSI.i365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %2169 = add i64 %2141, -8
  %2170 = add i64 %2142, 7
  store i64 %2170, i64* %3, align 8
  %2171 = inttoptr i64 %2169 to i64*
  %2172 = load i64, i64* %2171, align 8
  store i64 %2172, i64* %RSI.i365, align 8
  %2173 = add i64 %2172, 4
  %2174 = add i64 %2142, 10
  store i64 %2174, i64* %3, align 8
  %2175 = inttoptr i64 %2173 to i32*
  store i32 %2146, i32* %2175, align 4
  %2176 = load i64, i64* %RBP.i, align 8
  %2177 = add i64 %2176, -12324
  %2178 = load i64, i64* %3, align 8
  %2179 = add i64 %2178, 6
  store i64 %2179, i64* %3, align 8
  %2180 = inttoptr i64 %2177 to i32*
  %2181 = load i32, i32* %2180, align 4
  %2182 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2183 = zext i32 %2182 to i64
  store i64 %2183, i64* %RDI.i134, align 8
  %2184 = add i64 %2176, -12356
  %2185 = add i64 %2178, 19
  store i64 %2185, i64* %3, align 8
  %2186 = inttoptr i64 %2184 to i32*
  store i32 %2181, i32* %2186, align 4
  %EDI.i351 = bitcast %union.anon* %39 to i32*
  %2187 = load i32, i32* %EDI.i351, align 4
  %2188 = zext i32 %2187 to i64
  %2189 = load i64, i64* %3, align 8
  store i64 %2188, i64* %RAX.i807, align 8
  %2190 = sext i32 %2187 to i64
  %2191 = lshr i64 %2190, 32
  store i64 %2191, i64* %2118, align 8
  %2192 = load i32, i32* %ECX.i796, align 4
  %2193 = add i64 %2189, 5
  store i64 %2193, i64* %3, align 8
  %2194 = sext i32 %2192 to i64
  %2195 = shl nuw i64 %2191, 32
  %2196 = or i64 %2195, %2188
  %2197 = sdiv i64 %2196, %2194
  %2198 = shl i64 %2197, 32
  %2199 = ashr exact i64 %2198, 32
  %2200 = icmp eq i64 %2197, %2199
  br i1 %2200, label %2203, label %2201

; <label>:2201:                                   ; preds = %routine_idivl__ecx.exit371
  %2202 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2193, %struct.Memory* %2144)
  %.pre99 = load i64, i64* %3, align 8
  %.pre100 = load i32, i32* %EAX.i781, align 4
  br label %routine_idivl__ecx.exit346

; <label>:2203:                                   ; preds = %routine_idivl__ecx.exit371
  %2204 = srem i64 %2196, %2194
  %2205 = and i64 %2197, 4294967295
  store i64 %2205, i64* %RAX.i807, align 8
  %2206 = and i64 %2204, 4294967295
  store i64 %2206, i64* %RDX.i785, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2207 = trunc i64 %2197 to i32
  br label %routine_idivl__ecx.exit346

routine_idivl__ecx.exit346:                       ; preds = %2203, %2201
  %2208 = phi i32 [ %.pre100, %2201 ], [ %2207, %2203 ]
  %2209 = phi i64 [ %.pre99, %2201 ], [ %2193, %2203 ]
  %2210 = phi %struct.Memory* [ %2202, %2201 ], [ %2144, %2203 ]
  %2211 = load i64, i64* %RBP.i, align 8
  %2212 = add i64 %2211, -12356
  %2213 = add i64 %2209, 6
  store i64 %2213, i64* %3, align 8
  %2214 = inttoptr i64 %2212 to i32*
  %2215 = load i32, i32* %2214, align 4
  %2216 = add i32 %2208, %2215
  %2217 = zext i32 %2216 to i64
  store i64 %2217, i64* %RDI.i134, align 8
  %2218 = icmp ult i32 %2216, %2215
  %2219 = icmp ult i32 %2216, %2208
  %2220 = or i1 %2218, %2219
  %2221 = zext i1 %2220 to i8
  store i8 %2221, i8* %14, align 1
  %2222 = and i32 %2216, 255
  %2223 = tail call i32 @llvm.ctpop.i32(i32 %2222)
  %2224 = trunc i32 %2223 to i8
  %2225 = and i8 %2224, 1
  %2226 = xor i8 %2225, 1
  store i8 %2226, i8* %21, align 1
  %2227 = xor i32 %2208, %2215
  %2228 = xor i32 %2227, %2216
  %2229 = lshr i32 %2228, 4
  %2230 = trunc i32 %2229 to i8
  %2231 = and i8 %2230, 1
  store i8 %2231, i8* %26, align 1
  %2232 = icmp eq i32 %2216, 0
  %2233 = zext i1 %2232 to i8
  store i8 %2233, i8* %29, align 1
  %2234 = lshr i32 %2216, 31
  %2235 = trunc i32 %2234 to i8
  store i8 %2235, i8* %32, align 1
  %2236 = lshr i32 %2215, 31
  %2237 = lshr i32 %2208, 31
  %2238 = xor i32 %2234, %2236
  %2239 = xor i32 %2234, %2237
  %2240 = add nuw nsw i32 %2238, %2239
  %2241 = icmp eq i32 %2240, 2
  %2242 = zext i1 %2241 to i8
  store i8 %2242, i8* %38, align 1
  %2243 = add i64 %2211, -8
  %2244 = add i64 %2209, 12
  store i64 %2244, i64* %3, align 8
  %2245 = inttoptr i64 %2243 to i64*
  %2246 = load i64, i64* %2245, align 8
  store i64 %2246, i64* %RSI.i365, align 8
  %2247 = add i64 %2246, 8
  %2248 = add i64 %2209, 15
  store i64 %2248, i64* %3, align 8
  %2249 = inttoptr i64 %2247 to i32*
  store i32 %2216, i32* %2249, align 4
  %.pre101 = load i64, i64* %3, align 8
  br label %block_.L_413b3b

block_.L_413b3b:                                  ; preds = %routine_idivl__ecx.exit346, %routine_idivl__ecx.exit402
  %2250 = phi i64 [ %.pre101, %routine_idivl__ecx.exit346 ], [ %2111, %routine_idivl__ecx.exit402 ]
  %MEMORY.27 = phi %struct.Memory* [ %2210, %routine_idivl__ecx.exit346 ], [ %2070, %routine_idivl__ecx.exit402 ]
  %2251 = add i64 %2250, 83
  store i64 %2251, i64* %3, align 8
  br label %block_.L_413b8e

block_.L_413b40:                                  ; preds = %block_.L_413a7e
  %2252 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2253 = zext i32 %2252 to i64
  store i64 %2253, i64* %RCX.i799, align 8
  %2254 = load i64, i64* %RBP.i, align 8
  %2255 = add i64 %2254, -12360
  %2256 = add i64 %1944, 18
  store i64 %2256, i64* %3, align 8
  %2257 = inttoptr i64 %2255 to i32*
  store i32 150, i32* %2257, align 4
  %2258 = load i32, i32* %ECX.i796, align 4
  %2259 = zext i32 %2258 to i64
  %2260 = load i64, i64* %3, align 8
  store i64 %2259, i64* %RAX.i807, align 8
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2262 = sext i32 %2258 to i64
  %2263 = lshr i64 %2262, 32
  store i64 %2263, i64* %2261, align 8
  %2264 = load i64, i64* %RBP.i, align 8
  %2265 = add i64 %2264, -12360
  %2266 = add i64 %2260, 9
  store i64 %2266, i64* %3, align 8
  %2267 = inttoptr i64 %2265 to i32*
  %2268 = load i32, i32* %2267, align 4
  %2269 = zext i32 %2268 to i64
  store i64 %2269, i64* %RCX.i799, align 8
  %2270 = add i64 %2260, 11
  store i64 %2270, i64* %3, align 8
  %2271 = sext i32 %2268 to i64
  %2272 = shl nuw i64 %2263, 32
  %2273 = or i64 %2272, %2259
  %2274 = sdiv i64 %2273, %2271
  %2275 = shl i64 %2274, 32
  %2276 = ashr exact i64 %2275, 32
  %2277 = icmp eq i64 %2274, %2276
  br i1 %2277, label %2280, label %2278

; <label>:2278:                                   ; preds = %block_.L_413b40
  %2279 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2270, %struct.Memory* %MEMORY.25)
  %.pre102 = load i64, i64* %RAX.i807, align 8
  %.pre103 = load i64, i64* %3, align 8
  %.pre104 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit313

; <label>:2280:                                   ; preds = %block_.L_413b40
  %2281 = srem i64 %2273, %2271
  %2282 = and i64 %2274, 4294967295
  store i64 %2282, i64* %RAX.i807, align 8
  %2283 = and i64 %2281, 4294967295
  store i64 %2283, i64* %RDX.i785, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit313

routine_idivl__ecx.exit313:                       ; preds = %2280, %2278
  %2284 = phi i64 [ %.pre104, %2278 ], [ %2264, %2280 ]
  %2285 = phi i64 [ %.pre103, %2278 ], [ %2270, %2280 ]
  %2286 = phi i64 [ %.pre102, %2278 ], [ %2282, %2280 ]
  %2287 = phi %struct.Memory* [ %2279, %2278 ], [ %MEMORY.25, %2280 ]
  %2288 = trunc i64 %2286 to i32
  %2289 = add i32 %2288, 1
  %2290 = zext i32 %2289 to i64
  store i64 %2290, i64* %RAX.i807, align 8
  %2291 = icmp eq i32 %2288, -1
  %2292 = icmp eq i32 %2289, 0
  %2293 = or i1 %2291, %2292
  %2294 = zext i1 %2293 to i8
  store i8 %2294, i8* %14, align 1
  %2295 = and i32 %2289, 255
  %2296 = tail call i32 @llvm.ctpop.i32(i32 %2295)
  %2297 = trunc i32 %2296 to i8
  %2298 = and i8 %2297, 1
  %2299 = xor i8 %2298, 1
  store i8 %2299, i8* %21, align 1
  %2300 = xor i32 %2289, %2288
  %2301 = lshr i32 %2300, 4
  %2302 = trunc i32 %2301 to i8
  %2303 = and i8 %2302, 1
  store i8 %2303, i8* %26, align 1
  %2304 = zext i1 %2292 to i8
  store i8 %2304, i8* %29, align 1
  %2305 = lshr i32 %2289, 31
  %2306 = trunc i32 %2305 to i8
  store i8 %2306, i8* %32, align 1
  %2307 = lshr i32 %2288, 31
  %2308 = xor i32 %2305, %2307
  %2309 = add nuw nsw i32 %2308, %2305
  %2310 = icmp eq i32 %2309, 2
  %2311 = zext i1 %2310 to i8
  store i8 %2311, i8* %38, align 1
  %RSI.i307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %2312 = add i64 %2284, -8
  %2313 = add i64 %2285, 7
  store i64 %2313, i64* %3, align 8
  %2314 = inttoptr i64 %2312 to i64*
  %2315 = load i64, i64* %2314, align 8
  store i64 %2315, i64* %RSI.i307, align 8
  %2316 = add i64 %2315, 4
  %2317 = add i64 %2285, 10
  store i64 %2317, i64* %3, align 8
  %2318 = inttoptr i64 %2316 to i32*
  store i32 %2289, i32* %2318, align 4
  %2319 = load i64, i64* %RBP.i, align 8
  %2320 = add i64 %2319, -12324
  %2321 = load i64, i64* %3, align 8
  %2322 = add i64 %2321, 6
  store i64 %2322, i64* %3, align 8
  %2323 = inttoptr i64 %2320 to i32*
  %2324 = load i32, i32* %2323, align 4
  %2325 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2326 = zext i32 %2325 to i64
  store i64 %2326, i64* %RDI.i134, align 8
  %2327 = add i64 %2319, -12364
  %2328 = add i64 %2321, 19
  store i64 %2328, i64* %3, align 8
  %2329 = inttoptr i64 %2327 to i32*
  store i32 %2324, i32* %2329, align 4
  %EDI.i293 = bitcast %union.anon* %39 to i32*
  %2330 = load i32, i32* %EDI.i293, align 4
  %2331 = zext i32 %2330 to i64
  %2332 = load i64, i64* %3, align 8
  store i64 %2331, i64* %RAX.i807, align 8
  %2333 = sext i32 %2330 to i64
  %2334 = lshr i64 %2333, 32
  store i64 %2334, i64* %2261, align 8
  %2335 = load i32, i32* %ECX.i796, align 4
  %2336 = add i64 %2332, 5
  store i64 %2336, i64* %3, align 8
  %2337 = sext i32 %2335 to i64
  %2338 = shl nuw i64 %2334, 32
  %2339 = or i64 %2338, %2331
  %2340 = sdiv i64 %2339, %2337
  %2341 = shl i64 %2340, 32
  %2342 = ashr exact i64 %2341, 32
  %2343 = icmp eq i64 %2340, %2342
  br i1 %2343, label %2346, label %2344

; <label>:2344:                                   ; preds = %routine_idivl__ecx.exit313
  %2345 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2336, %struct.Memory* %2287)
  %.pre105 = load i64, i64* %3, align 8
  %.pre106 = load i32, i32* %EAX.i781, align 4
  br label %routine_idivl__ecx.exit

; <label>:2346:                                   ; preds = %routine_idivl__ecx.exit313
  %2347 = srem i64 %2339, %2337
  %2348 = and i64 %2340, 4294967295
  store i64 %2348, i64* %RAX.i807, align 8
  %2349 = and i64 %2347, 4294967295
  store i64 %2349, i64* %RDX.i785, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2350 = trunc i64 %2340 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %2346, %2344
  %2351 = phi i32 [ %.pre106, %2344 ], [ %2350, %2346 ]
  %2352 = phi i64 [ %.pre105, %2344 ], [ %2336, %2346 ]
  %2353 = phi %struct.Memory* [ %2345, %2344 ], [ %2287, %2346 ]
  %2354 = load i64, i64* %RBP.i, align 8
  %2355 = add i64 %2354, -12364
  %2356 = add i64 %2352, 6
  store i64 %2356, i64* %3, align 8
  %2357 = inttoptr i64 %2355 to i32*
  %2358 = load i32, i32* %2357, align 4
  %2359 = add i32 %2351, %2358
  %2360 = zext i32 %2359 to i64
  store i64 %2360, i64* %RDI.i134, align 8
  %2361 = icmp ult i32 %2359, %2358
  %2362 = icmp ult i32 %2359, %2351
  %2363 = or i1 %2361, %2362
  %2364 = zext i1 %2363 to i8
  store i8 %2364, i8* %14, align 1
  %2365 = and i32 %2359, 255
  %2366 = tail call i32 @llvm.ctpop.i32(i32 %2365)
  %2367 = trunc i32 %2366 to i8
  %2368 = and i8 %2367, 1
  %2369 = xor i8 %2368, 1
  store i8 %2369, i8* %21, align 1
  %2370 = xor i32 %2351, %2358
  %2371 = xor i32 %2370, %2359
  %2372 = lshr i32 %2371, 4
  %2373 = trunc i32 %2372 to i8
  %2374 = and i8 %2373, 1
  store i8 %2374, i8* %26, align 1
  %2375 = icmp eq i32 %2359, 0
  %2376 = zext i1 %2375 to i8
  store i8 %2376, i8* %29, align 1
  %2377 = lshr i32 %2359, 31
  %2378 = trunc i32 %2377 to i8
  store i8 %2378, i8* %32, align 1
  %2379 = lshr i32 %2358, 31
  %2380 = lshr i32 %2351, 31
  %2381 = xor i32 %2377, %2379
  %2382 = xor i32 %2377, %2380
  %2383 = add nuw nsw i32 %2381, %2382
  %2384 = icmp eq i32 %2383, 2
  %2385 = zext i1 %2384 to i8
  store i8 %2385, i8* %38, align 1
  %2386 = add i64 %2354, -8
  %2387 = add i64 %2352, 12
  store i64 %2387, i64* %3, align 8
  %2388 = inttoptr i64 %2386 to i64*
  %2389 = load i64, i64* %2388, align 8
  store i64 %2389, i64* %RSI.i307, align 8
  %2390 = add i64 %2389, 8
  %2391 = add i64 %2352, 15
  store i64 %2391, i64* %3, align 8
  %2392 = inttoptr i64 %2390 to i32*
  store i32 %2359, i32* %2392, align 4
  %.pre107 = load i64, i64* %3, align 8
  br label %block_.L_413b8e

block_.L_413b8e:                                  ; preds = %routine_idivl__ecx.exit, %block_.L_413b3b
  %2393 = phi i64 [ %.pre107, %routine_idivl__ecx.exit ], [ %2251, %block_.L_413b3b ]
  %MEMORY.28 = phi %struct.Memory* [ %2353, %routine_idivl__ecx.exit ], [ %MEMORY.27, %block_.L_413b3b ]
  %2394 = add i64 %2393, 5
  store i64 %2394, i64* %3, align 8
  br label %block_.L_413b93

block_.L_413b93:                                  ; preds = %block_.L_413b8e, %routine_idivl__ecx.exit463
  %storemerge48 = phi i64 [ %1937, %routine_idivl__ecx.exit463 ], [ %2394, %block_.L_413b8e ]
  %MEMORY.29 = phi %struct.Memory* [ %1896, %routine_idivl__ecx.exit463 ], [ %MEMORY.28, %block_.L_413b8e ]
  %2395 = add i64 %storemerge48, 342
  br label %block_.L_413ce9

block_.L_413b98:                                  ; preds = %block_.L_4139f0
  %.v214 = select i1 %1765, i64 97, i64 14
  %2396 = add i64 %1750, %.v214
  store i64 %2396, i64* %3, align 8
  %.pre132 = add i32 %1752, -4
  br i1 %1765, label %block_.L_413b98.block_.L_413bf9_crit_edge, label %block_413ba6

block_.L_413b98.block_.L_413bf9_crit_edge:        ; preds = %block_.L_413b98
  %.pre133 = and i32 %.pre132, 255
  %.pre135 = tail call i32 @llvm.ctpop.i32(i32 %.pre133)
  %.pre137 = trunc i32 %.pre135 to i8
  %.pre139 = and i8 %.pre137, 1
  %.pre141 = xor i8 %.pre139, 1
  %.pre143 = xor i32 %.pre132, %1752
  %.pre145 = lshr i32 %.pre143, 4
  %.pre147 = trunc i32 %.pre145 to i8
  %.pre149 = and i8 %.pre147, 1
  %.pre151 = lshr i32 %.pre132, 31
  %.pre155 = xor i32 %.pre151, %1769
  %.pre157 = add nuw nsw i32 %.pre155, %1769
  br label %block_.L_413bf9

block_413ba6:                                     ; preds = %block_.L_413b98
  %2397 = icmp ult i32 %1752, 4
  %2398 = zext i1 %2397 to i8
  store i8 %2398, i8* %14, align 1
  %2399 = and i32 %.pre132, 255
  %2400 = tail call i32 @llvm.ctpop.i32(i32 %2399)
  %2401 = trunc i32 %2400 to i8
  %2402 = and i8 %2401, 1
  %2403 = xor i8 %2402, 1
  store i8 %2403, i8* %21, align 1
  %2404 = xor i32 %.pre132, %1752
  %2405 = lshr i32 %2404, 4
  %2406 = trunc i32 %2405 to i8
  %2407 = and i8 %2406, 1
  store i8 %2407, i8* %26, align 1
  %2408 = icmp eq i32 %.pre132, 0
  %2409 = zext i1 %2408 to i8
  store i8 %2409, i8* %29, align 1
  %2410 = lshr i32 %.pre132, 31
  %2411 = trunc i32 %2410 to i8
  store i8 %2411, i8* %32, align 1
  %2412 = xor i32 %2410, %1769
  %2413 = add nuw nsw i32 %2412, %1769
  %2414 = icmp eq i32 %2413, 2
  %2415 = zext i1 %2414 to i8
  store i8 %2415, i8* %38, align 1
  %.v215 = select i1 %2408, i64 83, i64 14
  %2416 = add i64 %2396, %.v215
  store i64 %2416, i64* %3, align 8
  br i1 %2408, label %block_.L_413bf9, label %block_413bb4

block_413bb4:                                     ; preds = %block_413ba6
  store i64 50, i64* %RAX.i807, align 8
  %2417 = load i64, i64* %RBP.i, align 8
  %2418 = add i64 %2417, -12324
  %2419 = add i64 %2416, 11
  store i64 %2419, i64* %3, align 8
  %2420 = inttoptr i64 %2418 to i32*
  %2421 = load i32, i32* %2420, align 4
  %2422 = zext i32 %2421 to i64
  store i64 %2422, i64* %RCX.i799, align 8
  %2423 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2424 = zext i32 %2423 to i64
  store i64 %2424, i64* %RDX.i785, align 8
  %2425 = add i64 %2417, -12368
  %2426 = add i64 %2416, 24
  store i64 %2426, i64* %3, align 8
  %2427 = inttoptr i64 %2425 to i32*
  store i32 50, i32* %2427, align 4
  %EDX.i259 = bitcast %union.anon* %999 to i32*
  %2428 = load i32, i32* %EDX.i259, align 4
  %2429 = zext i32 %2428 to i64
  %2430 = load i64, i64* %3, align 8
  store i64 %2429, i64* %RAX.i807, align 8
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2432 = sext i32 %2428 to i64
  %2433 = lshr i64 %2432, 32
  store i64 %2433, i64* %2431, align 8
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i255 = getelementptr inbounds %union.anon, %union.anon* %2434, i64 0, i32 0
  %2435 = load i64, i64* %RBP.i, align 8
  %2436 = add i64 %2435, -12368
  %2437 = add i64 %2430, 9
  store i64 %2437, i64* %3, align 8
  %2438 = inttoptr i64 %2436 to i32*
  %2439 = load i32, i32* %2438, align 4
  %2440 = zext i32 %2439 to i64
  store i64 %2440, i64* %RSI.i255, align 8
  %ESI.i249 = bitcast %union.anon* %2434 to i32*
  %2441 = add i64 %2430, 11
  store i64 %2441, i64* %3, align 8
  %2442 = sext i32 %2439 to i64
  %2443 = shl nuw i64 %2433, 32
  %2444 = or i64 %2443, %2429
  %2445 = sdiv i64 %2444, %2442
  %2446 = shl i64 %2445, 32
  %2447 = ashr exact i64 %2446, 32
  %2448 = icmp eq i64 %2445, %2447
  br i1 %2448, label %2451, label %2449

; <label>:2449:                                   ; preds = %block_413bb4
  %2450 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2441, %struct.Memory* %MEMORY.25)
  %.pre108 = load i32, i32* %EAX.i781, align 4
  %.pre109 = load i64, i64* %3, align 8
  %.pre110 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit250

; <label>:2451:                                   ; preds = %block_413bb4
  %2452 = srem i64 %2444, %2442
  %2453 = and i64 %2445, 4294967295
  store i64 %2453, i64* %RAX.i807, align 8
  %2454 = and i64 %2452, 4294967295
  store i64 %2454, i64* %RDX.i785, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2455 = trunc i64 %2445 to i32
  br label %routine_idivl__esi.exit250

routine_idivl__esi.exit250:                       ; preds = %2451, %2449
  %2456 = phi i64 [ %.pre110, %2449 ], [ %2435, %2451 ]
  %2457 = phi i64 [ %.pre109, %2449 ], [ %2441, %2451 ]
  %2458 = phi i32 [ %.pre108, %2449 ], [ %2455, %2451 ]
  %2459 = phi %struct.Memory* [ %2450, %2449 ], [ %MEMORY.25, %2451 ]
  %2460 = load i64, i64* %RCX.i799, align 8
  %2461 = zext i32 %2458 to i64
  %2462 = trunc i64 %2460 to i32
  %2463 = add i32 %2458, %2462
  %2464 = zext i32 %2463 to i64
  store i64 %2464, i64* %RCX.i799, align 8
  %2465 = icmp ult i32 %2463, %2462
  %2466 = icmp ult i32 %2463, %2458
  %2467 = or i1 %2465, %2466
  %2468 = zext i1 %2467 to i8
  store i8 %2468, i8* %14, align 1
  %2469 = and i32 %2463, 255
  %2470 = tail call i32 @llvm.ctpop.i32(i32 %2469)
  %2471 = trunc i32 %2470 to i8
  %2472 = and i8 %2471, 1
  %2473 = xor i8 %2472, 1
  store i8 %2473, i8* %21, align 1
  %2474 = xor i64 %2461, %2460
  %2475 = trunc i64 %2474 to i32
  %2476 = xor i32 %2475, %2463
  %2477 = lshr i32 %2476, 4
  %2478 = trunc i32 %2477 to i8
  %2479 = and i8 %2478, 1
  store i8 %2479, i8* %26, align 1
  %2480 = icmp eq i32 %2463, 0
  %2481 = zext i1 %2480 to i8
  store i8 %2481, i8* %29, align 1
  %2482 = lshr i32 %2463, 31
  %2483 = trunc i32 %2482 to i8
  store i8 %2483, i8* %32, align 1
  %2484 = lshr i32 %2462, 31
  %2485 = lshr i32 %2458, 31
  %2486 = xor i32 %2482, %2484
  %2487 = xor i32 %2482, %2485
  %2488 = add nuw nsw i32 %2486, %2487
  %2489 = icmp eq i32 %2488, 2
  %2490 = zext i1 %2489 to i8
  store i8 %2490, i8* %38, align 1
  %2491 = add i64 %2456, -8
  %2492 = add i64 %2457, 6
  store i64 %2492, i64* %3, align 8
  %2493 = inttoptr i64 %2491 to i64*
  %2494 = load i64, i64* %2493, align 8
  store i64 %2494, i64* %RDI.i134, align 8
  %2495 = add i64 %2494, 4
  %2496 = add i64 %2457, 9
  store i64 %2496, i64* %3, align 8
  %2497 = inttoptr i64 %2495 to i32*
  store i32 %2463, i32* %2497, align 4
  %2498 = load i64, i64* %3, align 8
  %2499 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2500 = zext i32 %2499 to i64
  store i64 %2500, i64* %RAX.i807, align 8
  %2501 = sext i32 %2499 to i64
  %2502 = lshr i64 %2501, 32
  store i64 %2502, i64* %2431, align 8
  %2503 = load i32, i32* %ESI.i249, align 4
  %2504 = add i64 %2498, 10
  store i64 %2504, i64* %3, align 8
  %2505 = sext i32 %2503 to i64
  %2506 = shl nuw i64 %2502, 32
  %2507 = or i64 %2506, %2500
  %2508 = sdiv i64 %2507, %2505
  %2509 = shl i64 %2508, 32
  %2510 = ashr exact i64 %2509, 32
  %2511 = icmp eq i64 %2508, %2510
  br i1 %2511, label %2514, label %2512

; <label>:2512:                                   ; preds = %routine_idivl__esi.exit250
  %2513 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2504, %struct.Memory* %2459)
  %.pre111 = load i64, i64* %RAX.i807, align 8
  %.pre112 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit233

; <label>:2514:                                   ; preds = %routine_idivl__esi.exit250
  %2515 = srem i64 %2507, %2505
  %2516 = and i64 %2508, 4294967295
  store i64 %2516, i64* %RAX.i807, align 8
  %2517 = and i64 %2515, 4294967295
  store i64 %2517, i64* %RDX.i785, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__esi.exit233

routine_idivl__esi.exit233:                       ; preds = %2514, %2512
  %2518 = phi i64 [ %.pre112, %2512 ], [ %2504, %2514 ]
  %2519 = phi i64 [ %.pre111, %2512 ], [ %2516, %2514 ]
  %2520 = phi %struct.Memory* [ %2513, %2512 ], [ %2459, %2514 ]
  %2521 = trunc i64 %2519 to i32
  %2522 = add i32 %2521, 1
  %2523 = zext i32 %2522 to i64
  store i64 %2523, i64* %RAX.i807, align 8
  %2524 = icmp eq i32 %2521, -1
  %2525 = icmp eq i32 %2522, 0
  %2526 = or i1 %2524, %2525
  %2527 = zext i1 %2526 to i8
  store i8 %2527, i8* %14, align 1
  %2528 = and i32 %2522, 255
  %2529 = tail call i32 @llvm.ctpop.i32(i32 %2528)
  %2530 = trunc i32 %2529 to i8
  %2531 = and i8 %2530, 1
  %2532 = xor i8 %2531, 1
  store i8 %2532, i8* %21, align 1
  %2533 = xor i32 %2522, %2521
  %2534 = lshr i32 %2533, 4
  %2535 = trunc i32 %2534 to i8
  %2536 = and i8 %2535, 1
  store i8 %2536, i8* %26, align 1
  %2537 = zext i1 %2525 to i8
  store i8 %2537, i8* %29, align 1
  %2538 = lshr i32 %2522, 31
  %2539 = trunc i32 %2538 to i8
  store i8 %2539, i8* %32, align 1
  %2540 = lshr i32 %2521, 31
  %2541 = xor i32 %2538, %2540
  %2542 = add nuw nsw i32 %2541, %2538
  %2543 = icmp eq i32 %2542, 2
  %2544 = zext i1 %2543 to i8
  store i8 %2544, i8* %38, align 1
  %2545 = load i64, i64* %RBP.i, align 8
  %2546 = add i64 %2545, -8
  %2547 = add i64 %2518, 7
  store i64 %2547, i64* %3, align 8
  %2548 = inttoptr i64 %2546 to i64*
  %2549 = load i64, i64* %2548, align 8
  store i64 %2549, i64* %RDI.i134, align 8
  %2550 = add i64 %2549, 8
  %2551 = add i64 %2518, 10
  store i64 %2551, i64* %3, align 8
  %2552 = inttoptr i64 %2550 to i32*
  store i32 %2522, i32* %2552, align 4
  %2553 = load i64, i64* %3, align 8
  %2554 = add i64 %2553, 240
  br label %block_.L_413ce4

block_.L_413bf9:                                  ; preds = %block_.L_413b98.block_.L_413bf9_crit_edge, %block_413ba6
  %.pre-phi158 = phi i32 [ %.pre157, %block_.L_413b98.block_.L_413bf9_crit_edge ], [ %2413, %block_413ba6 ]
  %.pre-phi154 = phi i8 [ 1, %block_.L_413b98.block_.L_413bf9_crit_edge ], [ %2411, %block_413ba6 ]
  %.pre-phi150 = phi i8 [ %.pre149, %block_.L_413b98.block_.L_413bf9_crit_edge ], [ %2407, %block_413ba6 ]
  %.pre-phi142 = phi i8 [ %.pre141, %block_.L_413b98.block_.L_413bf9_crit_edge ], [ %2403, %block_413ba6 ]
  %.pre-phi = phi i1 [ false, %block_.L_413b98.block_.L_413bf9_crit_edge ], [ true, %block_413ba6 ]
  %2555 = phi i64 [ %2396, %block_.L_413b98.block_.L_413bf9_crit_edge ], [ %2416, %block_413ba6 ]
  %2556 = icmp ult i32 %1752, 4
  %2557 = zext i1 %2556 to i8
  store i8 %2557, i8* %14, align 1
  store i8 %.pre-phi142, i8* %21, align 1
  store i8 %.pre-phi150, i8* %26, align 1
  %2558 = zext i1 %.pre-phi to i8
  store i8 %2558, i8* %29, align 1
  store i8 %.pre-phi154, i8* %32, align 1
  %2559 = icmp eq i32 %.pre-phi158, 2
  %2560 = zext i1 %2559 to i8
  store i8 %2560, i8* %38, align 1
  %.v216 = select i1 %.pre-phi, i64 14, i64 166
  %2561 = add i64 %2555, %.v216
  store i64 %2561, i64* %3, align 8
  br i1 %.pre-phi, label %block_413c07, label %block_.L_413c9f

block_413c07:                                     ; preds = %block_.L_413bf9
  %2562 = load i32, i32* bitcast (%G_0x886a78_type* @G_0x886a78 to i32*), align 8
  %2563 = add i32 %2562, -2
  %2564 = icmp ult i32 %2562, 2
  %2565 = zext i1 %2564 to i8
  store i8 %2565, i8* %14, align 1
  %2566 = and i32 %2563, 255
  %2567 = tail call i32 @llvm.ctpop.i32(i32 %2566)
  %2568 = trunc i32 %2567 to i8
  %2569 = and i8 %2568, 1
  %2570 = xor i8 %2569, 1
  store i8 %2570, i8* %21, align 1
  %2571 = xor i32 %2563, %2562
  %2572 = lshr i32 %2571, 4
  %2573 = trunc i32 %2572 to i8
  %2574 = and i8 %2573, 1
  store i8 %2574, i8* %26, align 1
  %2575 = icmp eq i32 %2563, 0
  %2576 = zext i1 %2575 to i8
  store i8 %2576, i8* %29, align 1
  %2577 = lshr i32 %2563, 31
  %2578 = trunc i32 %2577 to i8
  store i8 %2578, i8* %32, align 1
  %2579 = lshr i32 %2562, 31
  %2580 = xor i32 %2577, %2579
  %2581 = add nuw nsw i32 %2580, %2579
  %2582 = icmp eq i32 %2581, 2
  %2583 = zext i1 %2582 to i8
  store i8 %2583, i8* %38, align 1
  %.v217 = select i1 %2575, i64 14, i64 83
  %2584 = add i64 %2561, %.v217
  %2585 = add i64 %2584, 5
  store i64 %2585, i64* %3, align 8
  br i1 %2575, label %block_413c15, label %block_.L_413c5a

block_413c15:                                     ; preds = %block_413c07
  store i64 30, i64* %RAX.i807, align 8
  %2586 = load i64, i64* %RBP.i, align 8
  %2587 = add i64 %2586, -12324
  %2588 = add i64 %2584, 11
  store i64 %2588, i64* %3, align 8
  %2589 = inttoptr i64 %2587 to i32*
  %2590 = load i32, i32* %2589, align 4
  %2591 = zext i32 %2590 to i64
  store i64 %2591, i64* %RCX.i799, align 8
  %2592 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2593 = zext i32 %2592 to i64
  store i64 %2593, i64* %RDX.i785, align 8
  %2594 = add i64 %2586, -12372
  %2595 = add i64 %2584, 24
  store i64 %2595, i64* %3, align 8
  %2596 = inttoptr i64 %2594 to i32*
  store i32 30, i32* %2596, align 4
  %EDX.i206 = bitcast %union.anon* %999 to i32*
  %2597 = load i32, i32* %EDX.i206, align 4
  %2598 = zext i32 %2597 to i64
  %2599 = load i64, i64* %3, align 8
  store i64 %2598, i64* %RAX.i807, align 8
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2601 = sext i32 %2597 to i64
  %2602 = lshr i64 %2601, 32
  store i64 %2602, i64* %2600, align 8
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i202 = getelementptr inbounds %union.anon, %union.anon* %2603, i64 0, i32 0
  %2604 = load i64, i64* %RBP.i, align 8
  %2605 = add i64 %2604, -12372
  %2606 = add i64 %2599, 9
  store i64 %2606, i64* %3, align 8
  %2607 = inttoptr i64 %2605 to i32*
  %2608 = load i32, i32* %2607, align 4
  %2609 = zext i32 %2608 to i64
  store i64 %2609, i64* %RSI.i202, align 8
  %ESI.i198 = bitcast %union.anon* %2603 to i32*
  %2610 = add i64 %2599, 11
  store i64 %2610, i64* %3, align 8
  %2611 = sext i32 %2608 to i64
  %2612 = shl nuw i64 %2602, 32
  %2613 = or i64 %2612, %2598
  %2614 = sdiv i64 %2613, %2611
  %2615 = shl i64 %2614, 32
  %2616 = ashr exact i64 %2615, 32
  %2617 = icmp eq i64 %2614, %2616
  br i1 %2617, label %2620, label %2618

; <label>:2618:                                   ; preds = %block_413c15
  %2619 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2610, %struct.Memory* %MEMORY.25)
  %.pre113 = load i32, i32* %EAX.i781, align 4
  %.pre114 = load i64, i64* %3, align 8
  %.pre115 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit199

; <label>:2620:                                   ; preds = %block_413c15
  %2621 = srem i64 %2613, %2611
  %2622 = and i64 %2614, 4294967295
  store i64 %2622, i64* %RAX.i807, align 8
  %2623 = and i64 %2621, 4294967295
  store i64 %2623, i64* %RDX.i785, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2624 = trunc i64 %2614 to i32
  br label %routine_idivl__esi.exit199

routine_idivl__esi.exit199:                       ; preds = %2620, %2618
  %2625 = phi i64 [ %.pre115, %2618 ], [ %2604, %2620 ]
  %2626 = phi i64 [ %.pre114, %2618 ], [ %2610, %2620 ]
  %2627 = phi i32 [ %.pre113, %2618 ], [ %2624, %2620 ]
  %2628 = phi %struct.Memory* [ %2619, %2618 ], [ %MEMORY.25, %2620 ]
  %2629 = load i64, i64* %RCX.i799, align 8
  %2630 = zext i32 %2627 to i64
  %2631 = trunc i64 %2629 to i32
  %2632 = add i32 %2627, %2631
  %2633 = zext i32 %2632 to i64
  store i64 %2633, i64* %RCX.i799, align 8
  %2634 = icmp ult i32 %2632, %2631
  %2635 = icmp ult i32 %2632, %2627
  %2636 = or i1 %2634, %2635
  %2637 = zext i1 %2636 to i8
  store i8 %2637, i8* %14, align 1
  %2638 = and i32 %2632, 255
  %2639 = tail call i32 @llvm.ctpop.i32(i32 %2638)
  %2640 = trunc i32 %2639 to i8
  %2641 = and i8 %2640, 1
  %2642 = xor i8 %2641, 1
  store i8 %2642, i8* %21, align 1
  %2643 = xor i64 %2630, %2629
  %2644 = trunc i64 %2643 to i32
  %2645 = xor i32 %2644, %2632
  %2646 = lshr i32 %2645, 4
  %2647 = trunc i32 %2646 to i8
  %2648 = and i8 %2647, 1
  store i8 %2648, i8* %26, align 1
  %2649 = icmp eq i32 %2632, 0
  %2650 = zext i1 %2649 to i8
  store i8 %2650, i8* %29, align 1
  %2651 = lshr i32 %2632, 31
  %2652 = trunc i32 %2651 to i8
  store i8 %2652, i8* %32, align 1
  %2653 = lshr i32 %2631, 31
  %2654 = lshr i32 %2627, 31
  %2655 = xor i32 %2651, %2653
  %2656 = xor i32 %2651, %2654
  %2657 = add nuw nsw i32 %2655, %2656
  %2658 = icmp eq i32 %2657, 2
  %2659 = zext i1 %2658 to i8
  store i8 %2659, i8* %38, align 1
  %2660 = add i64 %2625, -8
  %2661 = add i64 %2626, 6
  store i64 %2661, i64* %3, align 8
  %2662 = inttoptr i64 %2660 to i64*
  %2663 = load i64, i64* %2662, align 8
  store i64 %2663, i64* %RDI.i134, align 8
  %2664 = add i64 %2663, 4
  %2665 = add i64 %2626, 9
  store i64 %2665, i64* %3, align 8
  %2666 = inttoptr i64 %2664 to i32*
  store i32 %2632, i32* %2666, align 4
  %2667 = load i64, i64* %3, align 8
  %2668 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2669 = zext i32 %2668 to i64
  store i64 %2669, i64* %RAX.i807, align 8
  %2670 = sext i32 %2668 to i64
  %2671 = lshr i64 %2670, 32
  store i64 %2671, i64* %2600, align 8
  %2672 = load i32, i32* %ESI.i198, align 4
  %2673 = add i64 %2667, 10
  store i64 %2673, i64* %3, align 8
  %2674 = sext i32 %2672 to i64
  %2675 = shl nuw i64 %2671, 32
  %2676 = or i64 %2675, %2669
  %2677 = sdiv i64 %2676, %2674
  %2678 = shl i64 %2677, 32
  %2679 = ashr exact i64 %2678, 32
  %2680 = icmp eq i64 %2677, %2679
  br i1 %2680, label %2683, label %2681

; <label>:2681:                                   ; preds = %routine_idivl__esi.exit199
  %2682 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2673, %struct.Memory* %2628)
  %.pre116 = load i64, i64* %RAX.i807, align 8
  %.pre117 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit182

; <label>:2683:                                   ; preds = %routine_idivl__esi.exit199
  %2684 = srem i64 %2676, %2674
  %2685 = and i64 %2677, 4294967295
  store i64 %2685, i64* %RAX.i807, align 8
  %2686 = and i64 %2684, 4294967295
  store i64 %2686, i64* %RDX.i785, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__esi.exit182

routine_idivl__esi.exit182:                       ; preds = %2683, %2681
  %2687 = phi i64 [ %.pre117, %2681 ], [ %2673, %2683 ]
  %2688 = phi i64 [ %.pre116, %2681 ], [ %2685, %2683 ]
  %2689 = phi %struct.Memory* [ %2682, %2681 ], [ %2628, %2683 ]
  %2690 = trunc i64 %2688 to i32
  %2691 = add i32 %2690, 1
  %2692 = zext i32 %2691 to i64
  store i64 %2692, i64* %RAX.i807, align 8
  %2693 = icmp eq i32 %2690, -1
  %2694 = icmp eq i32 %2691, 0
  %2695 = or i1 %2693, %2694
  %2696 = zext i1 %2695 to i8
  store i8 %2696, i8* %14, align 1
  %2697 = and i32 %2691, 255
  %2698 = tail call i32 @llvm.ctpop.i32(i32 %2697)
  %2699 = trunc i32 %2698 to i8
  %2700 = and i8 %2699, 1
  %2701 = xor i8 %2700, 1
  store i8 %2701, i8* %21, align 1
  %2702 = xor i32 %2691, %2690
  %2703 = lshr i32 %2702, 4
  %2704 = trunc i32 %2703 to i8
  %2705 = and i8 %2704, 1
  store i8 %2705, i8* %26, align 1
  %2706 = zext i1 %2694 to i8
  store i8 %2706, i8* %29, align 1
  %2707 = lshr i32 %2691, 31
  %2708 = trunc i32 %2707 to i8
  store i8 %2708, i8* %32, align 1
  %2709 = lshr i32 %2690, 31
  %2710 = xor i32 %2707, %2709
  %2711 = add nuw nsw i32 %2710, %2707
  %2712 = icmp eq i32 %2711, 2
  %2713 = zext i1 %2712 to i8
  store i8 %2713, i8* %38, align 1
  %2714 = load i64, i64* %RBP.i, align 8
  %2715 = add i64 %2714, -8
  %2716 = add i64 %2687, 7
  store i64 %2716, i64* %3, align 8
  %2717 = inttoptr i64 %2715 to i64*
  %2718 = load i64, i64* %2717, align 8
  store i64 %2718, i64* %RDI.i134, align 8
  %2719 = add i64 %2718, 8
  %2720 = add i64 %2687, 10
  store i64 %2720, i64* %3, align 8
  %2721 = inttoptr i64 %2719 to i32*
  store i32 %2691, i32* %2721, align 4
  %2722 = load i64, i64* %3, align 8
  %2723 = add i64 %2722, 69
  store i64 %2723, i64* %3, align 8
  br label %block_.L_413c9a

block_.L_413c5a:                                  ; preds = %block_413c07
  store i64 80, i64* %RAX.i807, align 8
  %2724 = load i64, i64* %RBP.i, align 8
  %2725 = add i64 %2724, -12324
  %2726 = add i64 %2584, 11
  store i64 %2726, i64* %3, align 8
  %2727 = inttoptr i64 %2725 to i32*
  %2728 = load i32, i32* %2727, align 4
  %2729 = zext i32 %2728 to i64
  store i64 %2729, i64* %RCX.i799, align 8
  %2730 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2731 = zext i32 %2730 to i64
  store i64 %2731, i64* %RDX.i785, align 8
  %2732 = add i64 %2724, -12376
  %2733 = add i64 %2584, 24
  store i64 %2733, i64* %3, align 8
  %2734 = inttoptr i64 %2732 to i32*
  store i32 80, i32* %2734, align 4
  %EDX.i159 = bitcast %union.anon* %999 to i32*
  %2735 = load i32, i32* %EDX.i159, align 4
  %2736 = zext i32 %2735 to i64
  %2737 = load i64, i64* %3, align 8
  store i64 %2736, i64* %RAX.i807, align 8
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2739 = sext i32 %2735 to i64
  %2740 = lshr i64 %2739, 32
  store i64 %2740, i64* %2738, align 8
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i155 = getelementptr inbounds %union.anon, %union.anon* %2741, i64 0, i32 0
  %2742 = load i64, i64* %RBP.i, align 8
  %2743 = add i64 %2742, -12376
  %2744 = add i64 %2737, 9
  store i64 %2744, i64* %3, align 8
  %2745 = inttoptr i64 %2743 to i32*
  %2746 = load i32, i32* %2745, align 4
  %2747 = zext i32 %2746 to i64
  store i64 %2747, i64* %RSI.i155, align 8
  %ESI.i149 = bitcast %union.anon* %2741 to i32*
  %2748 = add i64 %2737, 11
  store i64 %2748, i64* %3, align 8
  %2749 = sext i32 %2746 to i64
  %2750 = shl nuw i64 %2740, 32
  %2751 = or i64 %2750, %2736
  %2752 = sdiv i64 %2751, %2749
  %2753 = shl i64 %2752, 32
  %2754 = ashr exact i64 %2753, 32
  %2755 = icmp eq i64 %2752, %2754
  br i1 %2755, label %2758, label %2756

; <label>:2756:                                   ; preds = %block_.L_413c5a
  %2757 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2748, %struct.Memory* %MEMORY.25)
  %.pre118 = load i32, i32* %EAX.i781, align 4
  %.pre119 = load i64, i64* %3, align 8
  %.pre120 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit150

; <label>:2758:                                   ; preds = %block_.L_413c5a
  %2759 = srem i64 %2751, %2749
  %2760 = and i64 %2752, 4294967295
  store i64 %2760, i64* %RAX.i807, align 8
  %2761 = and i64 %2759, 4294967295
  store i64 %2761, i64* %RDX.i785, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2762 = trunc i64 %2752 to i32
  br label %routine_idivl__esi.exit150

routine_idivl__esi.exit150:                       ; preds = %2758, %2756
  %2763 = phi i64 [ %.pre120, %2756 ], [ %2742, %2758 ]
  %2764 = phi i64 [ %.pre119, %2756 ], [ %2748, %2758 ]
  %2765 = phi i32 [ %.pre118, %2756 ], [ %2762, %2758 ]
  %2766 = phi %struct.Memory* [ %2757, %2756 ], [ %MEMORY.25, %2758 ]
  %2767 = load i64, i64* %RCX.i799, align 8
  %2768 = zext i32 %2765 to i64
  %2769 = trunc i64 %2767 to i32
  %2770 = add i32 %2765, %2769
  %2771 = zext i32 %2770 to i64
  store i64 %2771, i64* %RCX.i799, align 8
  %2772 = icmp ult i32 %2770, %2769
  %2773 = icmp ult i32 %2770, %2765
  %2774 = or i1 %2772, %2773
  %2775 = zext i1 %2774 to i8
  store i8 %2775, i8* %14, align 1
  %2776 = and i32 %2770, 255
  %2777 = tail call i32 @llvm.ctpop.i32(i32 %2776)
  %2778 = trunc i32 %2777 to i8
  %2779 = and i8 %2778, 1
  %2780 = xor i8 %2779, 1
  store i8 %2780, i8* %21, align 1
  %2781 = xor i64 %2768, %2767
  %2782 = trunc i64 %2781 to i32
  %2783 = xor i32 %2782, %2770
  %2784 = lshr i32 %2783, 4
  %2785 = trunc i32 %2784 to i8
  %2786 = and i8 %2785, 1
  store i8 %2786, i8* %26, align 1
  %2787 = icmp eq i32 %2770, 0
  %2788 = zext i1 %2787 to i8
  store i8 %2788, i8* %29, align 1
  %2789 = lshr i32 %2770, 31
  %2790 = trunc i32 %2789 to i8
  store i8 %2790, i8* %32, align 1
  %2791 = lshr i32 %2769, 31
  %2792 = lshr i32 %2765, 31
  %2793 = xor i32 %2789, %2791
  %2794 = xor i32 %2789, %2792
  %2795 = add nuw nsw i32 %2793, %2794
  %2796 = icmp eq i32 %2795, 2
  %2797 = zext i1 %2796 to i8
  store i8 %2797, i8* %38, align 1
  %2798 = add i64 %2763, -8
  %2799 = add i64 %2764, 6
  store i64 %2799, i64* %3, align 8
  %2800 = inttoptr i64 %2798 to i64*
  %2801 = load i64, i64* %2800, align 8
  store i64 %2801, i64* %RDI.i134, align 8
  %2802 = add i64 %2801, 4
  %2803 = add i64 %2764, 9
  store i64 %2803, i64* %3, align 8
  %2804 = inttoptr i64 %2802 to i32*
  store i32 %2770, i32* %2804, align 4
  %2805 = load i64, i64* %3, align 8
  %2806 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2807 = zext i32 %2806 to i64
  store i64 %2807, i64* %RAX.i807, align 8
  %2808 = sext i32 %2806 to i64
  %2809 = lshr i64 %2808, 32
  store i64 %2809, i64* %2738, align 8
  %2810 = load i32, i32* %ESI.i149, align 4
  %2811 = add i64 %2805, 10
  store i64 %2811, i64* %3, align 8
  %2812 = sext i32 %2810 to i64
  %2813 = shl nuw i64 %2809, 32
  %2814 = or i64 %2813, %2807
  %2815 = sdiv i64 %2814, %2812
  %2816 = shl i64 %2815, 32
  %2817 = ashr exact i64 %2816, 32
  %2818 = icmp eq i64 %2815, %2817
  br i1 %2818, label %2821, label %2819

; <label>:2819:                                   ; preds = %routine_idivl__esi.exit150
  %2820 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2811, %struct.Memory* %2766)
  %.pre121 = load i64, i64* %RAX.i807, align 8
  %.pre122 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit132

; <label>:2821:                                   ; preds = %routine_idivl__esi.exit150
  %2822 = srem i64 %2814, %2812
  %2823 = and i64 %2815, 4294967295
  store i64 %2823, i64* %RAX.i807, align 8
  %2824 = and i64 %2822, 4294967295
  store i64 %2824, i64* %RDX.i785, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__esi.exit132

routine_idivl__esi.exit132:                       ; preds = %2821, %2819
  %2825 = phi i64 [ %.pre122, %2819 ], [ %2811, %2821 ]
  %2826 = phi i64 [ %.pre121, %2819 ], [ %2823, %2821 ]
  %2827 = phi %struct.Memory* [ %2820, %2819 ], [ %2766, %2821 ]
  %2828 = trunc i64 %2826 to i32
  %2829 = add i32 %2828, 1
  %2830 = zext i32 %2829 to i64
  store i64 %2830, i64* %RAX.i807, align 8
  %2831 = icmp eq i32 %2828, -1
  %2832 = icmp eq i32 %2829, 0
  %2833 = or i1 %2831, %2832
  %2834 = zext i1 %2833 to i8
  store i8 %2834, i8* %14, align 1
  %2835 = and i32 %2829, 255
  %2836 = tail call i32 @llvm.ctpop.i32(i32 %2835)
  %2837 = trunc i32 %2836 to i8
  %2838 = and i8 %2837, 1
  %2839 = xor i8 %2838, 1
  store i8 %2839, i8* %21, align 1
  %2840 = xor i32 %2829, %2828
  %2841 = lshr i32 %2840, 4
  %2842 = trunc i32 %2841 to i8
  %2843 = and i8 %2842, 1
  store i8 %2843, i8* %26, align 1
  %2844 = zext i1 %2832 to i8
  store i8 %2844, i8* %29, align 1
  %2845 = lshr i32 %2829, 31
  %2846 = trunc i32 %2845 to i8
  store i8 %2846, i8* %32, align 1
  %2847 = lshr i32 %2828, 31
  %2848 = xor i32 %2845, %2847
  %2849 = add nuw nsw i32 %2848, %2845
  %2850 = icmp eq i32 %2849, 2
  %2851 = zext i1 %2850 to i8
  store i8 %2851, i8* %38, align 1
  %2852 = load i64, i64* %RBP.i, align 8
  %2853 = add i64 %2852, -8
  %2854 = add i64 %2825, 7
  store i64 %2854, i64* %3, align 8
  %2855 = inttoptr i64 %2853 to i64*
  %2856 = load i64, i64* %2855, align 8
  store i64 %2856, i64* %RDI.i134, align 8
  %2857 = add i64 %2856, 8
  %2858 = add i64 %2825, 10
  store i64 %2858, i64* %3, align 8
  %2859 = inttoptr i64 %2857 to i32*
  store i32 %2829, i32* %2859, align 4
  %.pre123 = load i64, i64* %3, align 8
  br label %block_.L_413c9a

block_.L_413c9a:                                  ; preds = %routine_idivl__esi.exit132, %routine_idivl__esi.exit182
  %2860 = phi i64 [ %.pre123, %routine_idivl__esi.exit132 ], [ %2723, %routine_idivl__esi.exit182 ]
  %MEMORY.31 = phi %struct.Memory* [ %2827, %routine_idivl__esi.exit132 ], [ %2689, %routine_idivl__esi.exit182 ]
  %2861 = add i64 %2860, 69
  store i64 %2861, i64* %3, align 8
  br label %block_.L_413cdf

block_.L_413c9f:                                  ; preds = %block_.L_413bf9
  store i64 150, i64* %RAX.i807, align 8
  %2862 = load i64, i64* %RBP.i, align 8
  %2863 = add i64 %2862, -12324
  %2864 = add i64 %2561, 11
  store i64 %2864, i64* %3, align 8
  %2865 = inttoptr i64 %2863 to i32*
  %2866 = load i32, i32* %2865, align 4
  %2867 = zext i32 %2866 to i64
  store i64 %2867, i64* %RCX.i799, align 8
  %2868 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2869 = zext i32 %2868 to i64
  store i64 %2869, i64* %RDX.i785, align 8
  %2870 = add i64 %2862, -12380
  %2871 = add i64 %2561, 24
  store i64 %2871, i64* %3, align 8
  %2872 = inttoptr i64 %2870 to i32*
  store i32 150, i32* %2872, align 4
  %EDX.i = bitcast %union.anon* %999 to i32*
  %2873 = load i32, i32* %EDX.i, align 4
  %2874 = zext i32 %2873 to i64
  %2875 = load i64, i64* %3, align 8
  store i64 %2874, i64* %RAX.i807, align 8
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2877 = sext i32 %2873 to i64
  %2878 = lshr i64 %2877, 32
  store i64 %2878, i64* %2876, align 8
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i = getelementptr inbounds %union.anon, %union.anon* %2879, i64 0, i32 0
  %2880 = load i64, i64* %RBP.i, align 8
  %2881 = add i64 %2880, -12380
  %2882 = add i64 %2875, 9
  store i64 %2882, i64* %3, align 8
  %2883 = inttoptr i64 %2881 to i32*
  %2884 = load i32, i32* %2883, align 4
  %2885 = zext i32 %2884 to i64
  store i64 %2885, i64* %RSI.i, align 8
  %ESI.i103 = bitcast %union.anon* %2879 to i32*
  %2886 = add i64 %2875, 11
  store i64 %2886, i64* %3, align 8
  %2887 = sext i32 %2884 to i64
  %2888 = shl nuw i64 %2878, 32
  %2889 = or i64 %2888, %2874
  %2890 = sdiv i64 %2889, %2887
  %2891 = shl i64 %2890, 32
  %2892 = ashr exact i64 %2891, 32
  %2893 = icmp eq i64 %2890, %2892
  br i1 %2893, label %2896, label %2894

; <label>:2894:                                   ; preds = %block_.L_413c9f
  %2895 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2886, %struct.Memory* %MEMORY.25)
  %.pre124 = load i32, i32* %EAX.i781, align 4
  %.pre125 = load i64, i64* %3, align 8
  %.pre126 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit104

; <label>:2896:                                   ; preds = %block_.L_413c9f
  %2897 = srem i64 %2889, %2887
  %2898 = and i64 %2890, 4294967295
  store i64 %2898, i64* %RAX.i807, align 8
  %2899 = and i64 %2897, 4294967295
  store i64 %2899, i64* %RDX.i785, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2900 = trunc i64 %2890 to i32
  br label %routine_idivl__esi.exit104

routine_idivl__esi.exit104:                       ; preds = %2896, %2894
  %2901 = phi i64 [ %.pre126, %2894 ], [ %2880, %2896 ]
  %2902 = phi i64 [ %.pre125, %2894 ], [ %2886, %2896 ]
  %2903 = phi i32 [ %.pre124, %2894 ], [ %2900, %2896 ]
  %2904 = phi %struct.Memory* [ %2895, %2894 ], [ %MEMORY.25, %2896 ]
  %2905 = load i64, i64* %RCX.i799, align 8
  %2906 = zext i32 %2903 to i64
  %2907 = trunc i64 %2905 to i32
  %2908 = add i32 %2903, %2907
  %2909 = zext i32 %2908 to i64
  store i64 %2909, i64* %RCX.i799, align 8
  %2910 = icmp ult i32 %2908, %2907
  %2911 = icmp ult i32 %2908, %2903
  %2912 = or i1 %2910, %2911
  %2913 = zext i1 %2912 to i8
  store i8 %2913, i8* %14, align 1
  %2914 = and i32 %2908, 255
  %2915 = tail call i32 @llvm.ctpop.i32(i32 %2914)
  %2916 = trunc i32 %2915 to i8
  %2917 = and i8 %2916, 1
  %2918 = xor i8 %2917, 1
  store i8 %2918, i8* %21, align 1
  %2919 = xor i64 %2906, %2905
  %2920 = trunc i64 %2919 to i32
  %2921 = xor i32 %2920, %2908
  %2922 = lshr i32 %2921, 4
  %2923 = trunc i32 %2922 to i8
  %2924 = and i8 %2923, 1
  store i8 %2924, i8* %26, align 1
  %2925 = icmp eq i32 %2908, 0
  %2926 = zext i1 %2925 to i8
  store i8 %2926, i8* %29, align 1
  %2927 = lshr i32 %2908, 31
  %2928 = trunc i32 %2927 to i8
  store i8 %2928, i8* %32, align 1
  %2929 = lshr i32 %2907, 31
  %2930 = lshr i32 %2903, 31
  %2931 = xor i32 %2927, %2929
  %2932 = xor i32 %2927, %2930
  %2933 = add nuw nsw i32 %2931, %2932
  %2934 = icmp eq i32 %2933, 2
  %2935 = zext i1 %2934 to i8
  store i8 %2935, i8* %38, align 1
  %2936 = add i64 %2901, -8
  %2937 = add i64 %2902, 6
  store i64 %2937, i64* %3, align 8
  %2938 = inttoptr i64 %2936 to i64*
  %2939 = load i64, i64* %2938, align 8
  store i64 %2939, i64* %RDI.i134, align 8
  %2940 = add i64 %2939, 4
  %2941 = add i64 %2902, 9
  store i64 %2941, i64* %3, align 8
  %2942 = inttoptr i64 %2940 to i32*
  store i32 %2908, i32* %2942, align 4
  %2943 = load i64, i64* %3, align 8
  %2944 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2945 = zext i32 %2944 to i64
  store i64 %2945, i64* %RAX.i807, align 8
  %2946 = sext i32 %2944 to i64
  %2947 = lshr i64 %2946, 32
  store i64 %2947, i64* %2876, align 8
  %2948 = load i32, i32* %ESI.i103, align 4
  %2949 = add i64 %2943, 10
  store i64 %2949, i64* %3, align 8
  %2950 = sext i32 %2948 to i64
  %2951 = shl nuw i64 %2947, 32
  %2952 = or i64 %2951, %2945
  %2953 = sdiv i64 %2952, %2950
  %2954 = shl i64 %2953, 32
  %2955 = ashr exact i64 %2954, 32
  %2956 = icmp eq i64 %2953, %2955
  br i1 %2956, label %2959, label %2957

; <label>:2957:                                   ; preds = %routine_idivl__esi.exit104
  %2958 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2949, %struct.Memory* %2904)
  %.pre127 = load i64, i64* %RAX.i807, align 8
  %.pre128 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit

; <label>:2959:                                   ; preds = %routine_idivl__esi.exit104
  %2960 = srem i64 %2952, %2950
  %2961 = and i64 %2953, 4294967295
  store i64 %2961, i64* %RAX.i807, align 8
  %2962 = and i64 %2960, 4294967295
  store i64 %2962, i64* %RDX.i785, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %2959, %2957
  %2963 = phi i64 [ %.pre128, %2957 ], [ %2949, %2959 ]
  %2964 = phi i64 [ %.pre127, %2957 ], [ %2961, %2959 ]
  %2965 = phi %struct.Memory* [ %2958, %2957 ], [ %2904, %2959 ]
  %2966 = trunc i64 %2964 to i32
  %2967 = add i32 %2966, 1
  %2968 = zext i32 %2967 to i64
  store i64 %2968, i64* %RAX.i807, align 8
  %2969 = icmp eq i32 %2966, -1
  %2970 = icmp eq i32 %2967, 0
  %2971 = or i1 %2969, %2970
  %2972 = zext i1 %2971 to i8
  store i8 %2972, i8* %14, align 1
  %2973 = and i32 %2967, 255
  %2974 = tail call i32 @llvm.ctpop.i32(i32 %2973)
  %2975 = trunc i32 %2974 to i8
  %2976 = and i8 %2975, 1
  %2977 = xor i8 %2976, 1
  store i8 %2977, i8* %21, align 1
  %2978 = xor i32 %2967, %2966
  %2979 = lshr i32 %2978, 4
  %2980 = trunc i32 %2979 to i8
  %2981 = and i8 %2980, 1
  store i8 %2981, i8* %26, align 1
  %2982 = zext i1 %2970 to i8
  store i8 %2982, i8* %29, align 1
  %2983 = lshr i32 %2967, 31
  %2984 = trunc i32 %2983 to i8
  store i8 %2984, i8* %32, align 1
  %2985 = lshr i32 %2966, 31
  %2986 = xor i32 %2983, %2985
  %2987 = add nuw nsw i32 %2986, %2983
  %2988 = icmp eq i32 %2987, 2
  %2989 = zext i1 %2988 to i8
  store i8 %2989, i8* %38, align 1
  %2990 = load i64, i64* %RBP.i, align 8
  %2991 = add i64 %2990, -8
  %2992 = add i64 %2963, 7
  store i64 %2992, i64* %3, align 8
  %2993 = inttoptr i64 %2991 to i64*
  %2994 = load i64, i64* %2993, align 8
  store i64 %2994, i64* %RDI.i134, align 8
  %2995 = add i64 %2994, 8
  %2996 = add i64 %2963, 10
  store i64 %2996, i64* %3, align 8
  %2997 = inttoptr i64 %2995 to i32*
  store i32 %2967, i32* %2997, align 4
  %.pre129 = load i64, i64* %3, align 8
  br label %block_.L_413cdf

block_.L_413cdf:                                  ; preds = %routine_idivl__esi.exit, %block_.L_413c9a
  %2998 = phi i64 [ %.pre129, %routine_idivl__esi.exit ], [ %2861, %block_.L_413c9a ]
  %MEMORY.32 = phi %struct.Memory* [ %2965, %routine_idivl__esi.exit ], [ %MEMORY.31, %block_.L_413c9a ]
  %2999 = add i64 %2998, 5
  store i64 %2999, i64* %3, align 8
  br label %block_.L_413ce4

block_.L_413ce4:                                  ; preds = %block_.L_413cdf, %routine_idivl__esi.exit233
  %storemerge50 = phi i64 [ %2554, %routine_idivl__esi.exit233 ], [ %2999, %block_.L_413cdf ]
  %MEMORY.33 = phi %struct.Memory* [ %2520, %routine_idivl__esi.exit233 ], [ %MEMORY.32, %block_.L_413cdf ]
  %3000 = add i64 %storemerge50, 5
  store i64 %3000, i64* %3, align 8
  br label %block_.L_413ce9

block_.L_413ce9:                                  ; preds = %block_.L_413ce4, %block_.L_413b93
  %storemerge49 = phi i64 [ %2395, %block_.L_413b93 ], [ %3000, %block_.L_413ce4 ]
  %MEMORY.34 = phi %struct.Memory* [ %MEMORY.29, %block_.L_413b93 ], [ %MEMORY.33, %block_.L_413ce4 ]
  %3001 = add i64 %storemerge49, 5
  store i64 %3001, i64* %3, align 8
  br label %block_.L_413cee

block_.L_413cee:                                  ; preds = %block_.L_413ce9, %block_4139d5
  %storemerge46 = phi i64 [ %1743, %block_4139d5 ], [ %3001, %block_.L_413ce9 ]
  %MEMORY.35 = phi %struct.Memory* [ %MEMORY.25, %block_4139d5 ], [ %MEMORY.34, %block_.L_413ce9 ]
  %3002 = add i64 %storemerge46, 144
  br label %block_.L_413d7e

block_.L_413cf3:                                  ; preds = %block_4136ff
  %3003 = add i64 %971, 4
  store i64 %3003, i64* %3, align 8
  %3004 = load i64, i64* %48, align 8
  store i64 %3004, i64* %RAX.i807, align 8
  %3005 = add i64 %971, 7
  store i64 %3005, i64* %3, align 8
  %3006 = inttoptr i64 %3004 to i8*
  %3007 = load i8, i8* %3006, align 1
  %3008 = zext i8 %3007 to i64
  store i64 %3008, i64* %RCX.i799, align 8
  %3009 = zext i8 %3007 to i32
  store i8 0, i8* %14, align 1
  %3010 = tail call i32 @llvm.ctpop.i32(i32 %3009)
  %3011 = trunc i32 %3010 to i8
  %3012 = and i8 %3011, 1
  %3013 = xor i8 %3012, 1
  store i8 %3013, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3014 = icmp eq i8 %3007, 0
  %3015 = zext i1 %3014 to i8
  store i8 %3015, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v188 = select i1 %3014, i64 16, i64 43
  %3016 = add i64 %971, %.v188
  %3017 = add i64 %3016, 4
  store i64 %3017, i64* %3, align 8
  %3018 = load i64, i64* %48, align 8
  store i64 %3018, i64* %RAX.i807, align 8
  br i1 %3014, label %block_413d03, label %block_.L_413d1e

block_413d03:                                     ; preds = %block_.L_413cf3
  %3019 = add i64 %3018, 4
  %3020 = add i64 %3016, 11
  store i64 %3020, i64* %3, align 8
  %3021 = inttoptr i64 %3019 to i32*
  store i32 100000000, i32* %3021, align 4
  %3022 = load i64, i64* %RBP.i, align 8
  %3023 = add i64 %3022, -8
  %3024 = load i64, i64* %3, align 8
  %3025 = add i64 %3024, 4
  store i64 %3025, i64* %3, align 8
  %3026 = inttoptr i64 %3023 to i64*
  %3027 = load i64, i64* %3026, align 8
  store i64 %3027, i64* %RAX.i807, align 8
  %3028 = add i64 %3027, 8
  %3029 = add i64 %3024, 11
  store i64 %3029, i64* %3, align 8
  %3030 = inttoptr i64 %3028 to i32*
  store i32 0, i32* %3030, align 4
  %3031 = load i64, i64* %3, align 8
  %3032 = add i64 %3031, 96
  br label %block_.L_413d79

block_.L_413d1e:                                  ; preds = %block_.L_413cf3
  %3033 = add i64 %3016, 7
  store i64 %3033, i64* %3, align 8
  %3034 = inttoptr i64 %3018 to i8*
  %3035 = load i8, i8* %3034, align 1
  %3036 = zext i8 %3035 to i64
  store i64 %3036, i64* %RCX.i799, align 8
  %3037 = zext i8 %3035 to i32
  %3038 = add nsw i32 %3037, -1
  %3039 = icmp eq i8 %3035, 0
  %3040 = zext i1 %3039 to i8
  store i8 %3040, i8* %14, align 1
  %3041 = and i32 %3038, 255
  %3042 = tail call i32 @llvm.ctpop.i32(i32 %3041)
  %3043 = trunc i32 %3042 to i8
  %3044 = and i8 %3043, 1
  %3045 = xor i8 %3044, 1
  store i8 %3045, i8* %21, align 1
  %3046 = xor i32 %3038, %3037
  %3047 = lshr i32 %3046, 4
  %3048 = trunc i32 %3047 to i8
  %3049 = and i8 %3048, 1
  store i8 %3049, i8* %26, align 1
  %3050 = icmp eq i32 %3038, 0
  %3051 = zext i1 %3050 to i8
  store i8 %3051, i8* %29, align 1
  %3052 = lshr i32 %3038, 31
  %3053 = trunc i32 %3052 to i8
  store i8 %3053, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v190 = select i1 %3050, i64 16, i64 43
  %3054 = add i64 %3016, %.v190
  %3055 = add i64 %3054, 4
  store i64 %3055, i64* %3, align 8
  %3056 = load i64, i64* %48, align 8
  store i64 %3056, i64* %RAX.i807, align 8
  br i1 %3050, label %block_413d2e, label %block_.L_413d49

block_413d2e:                                     ; preds = %block_.L_413d1e
  %3057 = add i64 %3056, 4
  %3058 = add i64 %3054, 11
  store i64 %3058, i64* %3, align 8
  %3059 = inttoptr i64 %3057 to i32*
  store i32 0, i32* %3059, align 4
  %3060 = load i64, i64* %RBP.i, align 8
  %3061 = add i64 %3060, -8
  %3062 = load i64, i64* %3, align 8
  %3063 = add i64 %3062, 4
  store i64 %3063, i64* %3, align 8
  %3064 = inttoptr i64 %3061 to i64*
  %3065 = load i64, i64* %3064, align 8
  store i64 %3065, i64* %RAX.i807, align 8
  %3066 = add i64 %3065, 8
  %3067 = add i64 %3062, 11
  store i64 %3067, i64* %3, align 8
  %3068 = inttoptr i64 %3066 to i32*
  store i32 100000000, i32* %3068, align 4
  %3069 = load i64, i64* %3, align 8
  %3070 = add i64 %3069, 48
  br label %block_.L_413d74

block_.L_413d49:                                  ; preds = %block_.L_413d1e
  %3071 = add i64 %3054, 7
  store i64 %3071, i64* %3, align 8
  %3072 = inttoptr i64 %3056 to i8*
  %3073 = load i8, i8* %3072, align 1
  %3074 = zext i8 %3073 to i64
  store i64 %3074, i64* %RCX.i799, align 8
  %3075 = zext i8 %3073 to i32
  %3076 = add nsw i32 %3075, -3
  %3077 = icmp ult i8 %3073, 3
  %3078 = zext i1 %3077 to i8
  store i8 %3078, i8* %14, align 1
  %3079 = and i32 %3076, 255
  %3080 = tail call i32 @llvm.ctpop.i32(i32 %3079)
  %3081 = trunc i32 %3080 to i8
  %3082 = and i8 %3081, 1
  %3083 = xor i8 %3082, 1
  store i8 %3083, i8* %21, align 1
  %3084 = xor i32 %3076, %3075
  %3085 = lshr i32 %3084, 4
  %3086 = trunc i32 %3085 to i8
  %3087 = and i8 %3086, 1
  store i8 %3087, i8* %26, align 1
  %3088 = icmp eq i32 %3076, 0
  %3089 = zext i1 %3088 to i8
  store i8 %3089, i8* %29, align 1
  %3090 = lshr i32 %3076, 31
  %3091 = trunc i32 %3090 to i8
  store i8 %3091, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v206 = select i1 %3088, i64 16, i64 38
  %3092 = add i64 %3054, %.v206
  store i64 %3092, i64* %3, align 8
  br i1 %3088, label %block_413d59, label %block_.L_413d6f

block_413d59:                                     ; preds = %block_.L_413d49
  %3093 = add i64 %3092, 4
  store i64 %3093, i64* %3, align 8
  %3094 = load i64, i64* %48, align 8
  store i64 %3094, i64* %RAX.i807, align 8
  %3095 = add i64 %3094, 4
  %3096 = add i64 %3092, 11
  store i64 %3096, i64* %3, align 8
  %3097 = inttoptr i64 %3095 to i32*
  store i32 50000, i32* %3097, align 4
  %3098 = load i64, i64* %RBP.i, align 8
  %3099 = add i64 %3098, -8
  %3100 = load i64, i64* %3, align 8
  %3101 = add i64 %3100, 4
  store i64 %3101, i64* %3, align 8
  %3102 = inttoptr i64 %3099 to i64*
  %3103 = load i64, i64* %3102, align 8
  store i64 %3103, i64* %RAX.i807, align 8
  %3104 = add i64 %3103, 8
  %3105 = add i64 %3100, 11
  store i64 %3105, i64* %3, align 8
  %3106 = inttoptr i64 %3104 to i32*
  store i32 50000, i32* %3106, align 4
  %.pre130 = load i64, i64* %3, align 8
  br label %block_.L_413d6f

block_.L_413d6f:                                  ; preds = %block_.L_413d49, %block_413d59
  %3107 = phi i64 [ %.pre130, %block_413d59 ], [ %3092, %block_.L_413d49 ]
  %3108 = add i64 %3107, 5
  store i64 %3108, i64* %3, align 8
  br label %block_.L_413d74

block_.L_413d74:                                  ; preds = %block_.L_413d6f, %block_413d2e
  %storemerge52 = phi i64 [ %3070, %block_413d2e ], [ %3108, %block_.L_413d6f ]
  %3109 = add i64 %storemerge52, 5
  store i64 %3109, i64* %3, align 8
  br label %block_.L_413d79

block_.L_413d79:                                  ; preds = %block_.L_413d74, %block_413d03
  %storemerge51 = phi i64 [ %3032, %block_413d03 ], [ %3109, %block_.L_413d74 ]
  %3110 = add i64 %storemerge51, 5
  store i64 %3110, i64* %3, align 8
  br label %block_.L_413d7e

block_.L_413d7e:                                  ; preds = %block_.L_413d79, %block_.L_413cee
  %storemerge47 = phi i64 [ %3002, %block_.L_413cee ], [ %3110, %block_.L_413d79 ]
  %MEMORY.39 = phi %struct.Memory* [ %MEMORY.35, %block_.L_413cee ], [ %2, %block_.L_413d79 ]
  %3111 = add i64 %storemerge47, 27
  store i64 %3111, i64* %3, align 8
  br label %block_.L_413d9e

block_.L_413d83:                                  ; preds = %block_.L_4136f1
  %3112 = add i64 %948, 8
  %3113 = add i64 %946, 11
  store i64 %3113, i64* %3, align 8
  %3114 = inttoptr i64 %3112 to i32*
  store i32 1, i32* %3114, align 4
  %3115 = load i64, i64* %RBP.i, align 8
  %3116 = add i64 %3115, -8
  %3117 = load i64, i64* %3, align 8
  %3118 = add i64 %3117, 4
  store i64 %3118, i64* %3, align 8
  %3119 = inttoptr i64 %3116 to i64*
  %3120 = load i64, i64* %3119, align 8
  store i64 %3120, i64* %RAX.i807, align 8
  %3121 = add i64 %3120, 4
  %3122 = add i64 %3117, 11
  store i64 %3122, i64* %3, align 8
  %3123 = inttoptr i64 %3121 to i32*
  store i32 1, i32* %3123, align 4
  br label %block_.L_413d9e

block_.L_413d9e:                                  ; preds = %block_.L_413d7e, %block_.L_413d83, %block_.L_413750, %block_.L_4136b6
  %.sink54 = phi i64 [ 1592, %block_.L_413750 ], [ 1714, %block_.L_4136b6 ], [ 5, %block_.L_413d83 ], [ 5, %block_.L_413d7e ]
  %MEMORY.41 = phi %struct.Memory* [ %call2_413731, %block_.L_413750 ], [ %MEMORY.14, %block_.L_4136b6 ], [ %2, %block_.L_413d83 ], [ %MEMORY.39, %block_.L_413d7e ]
  %3124 = load i64, i64* %3, align 8
  %3125 = add i64 %3124, %.sink54
  %3126 = load i64, i64* %6, align 8
  %3127 = add i64 %3126, 12384
  store i64 %3127, i64* %6, align 8
  %3128 = icmp ugt i64 %3126, -12385
  %3129 = zext i1 %3128 to i8
  store i8 %3129, i8* %14, align 1
  %3130 = trunc i64 %3127 to i32
  %3131 = and i32 %3130, 255
  %3132 = tail call i32 @llvm.ctpop.i32(i32 %3131)
  %3133 = trunc i32 %3132 to i8
  %3134 = and i8 %3133, 1
  %3135 = xor i8 %3134, 1
  store i8 %3135, i8* %21, align 1
  %3136 = xor i64 %3127, %3126
  %3137 = lshr i64 %3136, 4
  %3138 = trunc i64 %3137 to i8
  %3139 = and i8 %3138, 1
  store i8 %3139, i8* %26, align 1
  %3140 = icmp eq i64 %3127, 0
  %3141 = zext i1 %3140 to i8
  store i8 %3141, i8* %29, align 1
  %3142 = lshr i64 %3127, 63
  %3143 = trunc i64 %3142 to i8
  store i8 %3143, i8* %32, align 1
  %3144 = lshr i64 %3126, 63
  %3145 = xor i64 %3142, %3144
  %3146 = add nuw nsw i64 %3145, %3142
  %3147 = icmp eq i64 %3146, 2
  %3148 = zext i1 %3147 to i8
  store i8 %3148, i8* %38, align 1
  %3149 = add i64 %3125, 8
  store i64 %3149, i64* %3, align 8
  %3150 = add i64 %3126, 12392
  %3151 = inttoptr i64 %3127 to i64*
  %3152 = load i64, i64* %3151, align 8
  store i64 %3152, i64* %RBP.i, align 8
  store i64 %3150, i64* %6, align 8
  %3153 = add i64 %3125, 9
  store i64 %3153, i64* %3, align 8
  %3154 = inttoptr i64 %3150 to i64*
  %3155 = load i64, i64* %3154, align 8
  store i64 %3155, i64* %3, align 8
  %3156 = add i64 %3126, 12400
  store i64 %3156, i64* %6, align 8
  ret %struct.Memory* %MEMORY.41
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
define %struct.Memory* @routine_subq__0x3060___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -12384
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 12384
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
define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpb__0x0__0x2__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = zext i8 %8 to i32
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i8 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i8 %8, 7
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4136f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x633b54___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x633b54_type* @G_0x633b54 to i32*), align 8
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
define %struct.Memory* @routine_je_.L_413579(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x5f5e100__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 100000000, i32* %7, align 4
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
define %struct.Memory* @routine_movzbl_0x1__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDX, align 8
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
define %struct.Memory* @routine_jge_.L_4134d6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_0x4__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_addl_MINUS0xc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5f5e100__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -100000000
  %10 = icmp ult i32 %8, 100000000
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
define %struct.Memory* @routine_jle_.L_413491(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x5f5e100__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 100000000, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_cmpl_MINUS0x10__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16
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
define %struct.Memory* @routine_jge_.L_4134c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__edx__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4134c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_413451(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_4134ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x5f5e100__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -100000000
  %10 = icmp ult i32 %8, 100000000
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
define %struct.Memory* @routine_jne_.L_413525(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xf404c___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 999500, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xf4240___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1000000, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xfff0bdc0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4293967296, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4294967295, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 0, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc8___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 200, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x633b58___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x633b58_type* @G_0x633b58 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x633b58(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x633b58_type* @G_0x633b58 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.StoreTT(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_413574(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_je_.L_41353c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41356f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xfff0bfb4___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4293967796, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4136b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_413613(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_MINUS0x10__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jle_.L_4135ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_jge_.L_413600(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_413605(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41358e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41362a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_413662(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4136b1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_413679(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4136ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x633b40___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62ea38___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62ea38_type* @G_0x62ea38 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x886bc0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %8 = add i32 %7, %6
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  %10 = icmp ult i32 %8, %6
  %11 = icmp ult i32 %8, %7
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %7, %6
  %22 = xor i32 %21, %8
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %8, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %8, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %6, 31
  %34 = lshr i32 %7, 31
  %35 = xor i32 %30, %33
  %36 = xor i32 %30, %34
  %37 = add nuw nsw i32 %35, %36
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
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
define %struct.Memory* @routine_movl__eax__0x84a3d0___rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8692688
  %7 = load i32, i32* %EAX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x4__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl__eax__0x8__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413d9e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpb__0x0__0x3__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = zext i8 %8 to i32
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i8 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i8 %8, 7
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_413d83(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i64
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -2
  %8 = icmp ult i32 %4, 2
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
define %struct.Memory* @routine_jne_.L_413cf3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.is_draw(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_413750(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xc8__0x886bc0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %6 = add i32 %5, -200
  %7 = icmp ult i32 %5, 200
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
define %struct.Memory* @routine_jle_.L_41376b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xc350__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 50000, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc350__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 50000, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__0x85f154(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %6 = add i32 %5, -4
  %7 = icmp ult i32 %5, 4
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
define %struct.Memory* @routine_je_.L_413845(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x3020__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12320
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x3028__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.gen(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x85f150___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3028__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12328
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.in_check(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x302c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12332
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__0x85f154(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %6 = add i32 %5, -3
  %7 = icmp ult i32 %5, 3
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
define %struct.Memory* @routine_je_.L_413833(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x3024__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12324
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x3028__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12328
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
define %struct.Memory* @routine_jge_.L_41382e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.make(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x302c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12332
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
define %struct.Memory* @routine_callq_.check_legal(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_413811(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x3024__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12324
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
define %struct.Memory* @routine_movl__eax__MINUS0x3024__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12324
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.unmake(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4137c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413840(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4139c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x85f164(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x85f164_type* @G_0x85f164 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x85f164(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x85f164_type* @G_0x85f164 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x3028__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12328
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
define %struct.Memory* @routine_je_.L_413914(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_41390f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4138f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4138a7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413914(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x3024__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12324
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
define %struct.Memory* @routine_jne_.L_4139c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4139be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4139a1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_413956(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4139c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4139f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413cee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_413b98(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_413a7e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x32___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 50, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x886bc0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3030__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12336
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
define %struct.Memory* @routine_movl_MINUS0x3030__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12336
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x4__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_0x886bc0___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3034__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12340
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
define %struct.Memory* @routine_movl_MINUS0x3034__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12340
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__eax___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
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
define %struct.Memory* @routine_movl__edi__0x8__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413b93(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_413b40(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__0x886a78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886a78_type* @G_0x886a78 to i32*), align 8
  %6 = add i32 %5, -2
  %7 = icmp ult i32 %5, 2
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
define %struct.Memory* @routine_jne_.L_413aed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1e___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 30, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3038__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12344
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3038__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12344
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
define %struct.Memory* @routine_movl__eax__MINUS0x303c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12348
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x303c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12348
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413b3b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x50___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 80, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3040__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12352
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3040__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12352
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
define %struct.Memory* @routine_movl__eax__MINUS0x3044__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12356
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3044__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12356
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413b8e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x96___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 150, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3048__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12360
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3048__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12360
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
define %struct.Memory* @routine_movl__eax__MINUS0x304c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12364
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x304c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12364
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413ce9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_413bf9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x3024__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12324
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
define %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3050__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12368
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_movl_MINUS0x3050__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12368
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
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
define %struct.Memory* @routine_addl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_movl__ecx__0x4__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x886bc0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x8__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413ce4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_413c9f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_413c5a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x3054__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12372
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3054__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12372
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
define %struct.Memory* @routine_jmpq_.L_413c9a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3058__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12376
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3058__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12376
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
define %struct.Memory* @routine_jmpq_.L_413cdf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x305c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12380
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x305c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12380
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
define %struct.Memory* @routine_jmpq_.L_413d7e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_413d1e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x5f5e100__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 100000000, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413d79(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -1
  %8 = icmp eq i32 %4, 0
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
define %struct.Memory* @routine_jne_.L_413d49(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x5f5e100__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 100000000, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_413d74(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_413d6f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_413d99(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x3060___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 12384
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -12385
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
