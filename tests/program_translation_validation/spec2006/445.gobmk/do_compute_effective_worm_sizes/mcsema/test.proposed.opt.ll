; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x58ad1__rip__type = type <{ [8 x i8] }>
%G_0x58b3a__rip__type = type <{ [8 x i8] }>
%G_0x7ae438_type = type <{ [4 x i8] }>
%G__0x582e3b_type = type <{ [8 x i8] }>
%G__0x5832cb_type = type <{ [8 x i8] }>
%G__0xae4620_type = type <{ [8 x i8] }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
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
@G_0x58ad1__rip_ = global %G_0x58ad1__rip__type zeroinitializer
@G_0x58b3a__rip_ = global %G_0x58b3a__rip__type zeroinitializer
@G_0x7ae438 = local_unnamed_addr global %G_0x7ae438_type zeroinitializer
@G__0x582e3b = global %G__0x582e3b_type zeroinitializer
@G__0x5832cb = global %G__0x5832cb_type zeroinitializer
@G__0xae4620 = global %G__0xae4620_type zeroinitializer
@G__0xb0eff0 = global %G__0xb0eff0_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_488480.propagate_worm(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @do_compute_effective_worm_sizes(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -3288
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 3280
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
  %41 = add i64 %7, -12
  %42 = load i32, i32* %EDI.i, align 4
  %43 = add i64 %10, 13
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %RSI.i753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -16
  %47 = load i64, i64* %RSI.i753, align 8
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i64*
  store i64 %47, i64* %50, align 8
  %RDX.i750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -24
  %53 = load i64, i64* %RDX.i750, align 8
  %54 = load i64, i64* %3, align 8
  %55 = add i64 %54, 4
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %56, align 8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i747 = bitcast %union.anon* %57 to i32*
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -28
  %60 = load i32, i32* %ECX.i747, align 4
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %61, 3
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %59 to i32*
  store i32 %60, i32* %63, align 4
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -32
  %66 = load i64, i64* %3, align 8
  %67 = add i64 %66, 7
  store i64 %67, i64* %3, align 8
  %68 = inttoptr i64 %65 to i32*
  store i32 21, i32* %68, align 4
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i739 = getelementptr inbounds %union.anon, %union.anon* %69, i64 0, i32 0
  %RCX.i737 = getelementptr inbounds %union.anon, %union.anon* %57, i64 0, i32 0
  %EAX.i718 = bitcast %union.anon* %69 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_489f90

block_.L_489f90:                                  ; preds = %block_.L_48a0af, %entry
  %70 = phi i64 [ %443, %block_.L_48a0af ], [ %.pre, %entry ]
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -32
  %73 = add i64 %70, 7
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %72 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = add i32 %75, -400
  %77 = icmp ult i32 %75, 400
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %14, align 1
  %79 = and i32 %76, 255
  %80 = tail call i32 @llvm.ctpop.i32(i32 %79)
  %81 = trunc i32 %80 to i8
  %82 = and i8 %81, 1
  %83 = xor i8 %82, 1
  store i8 %83, i8* %21, align 1
  %84 = xor i32 %75, 16
  %85 = xor i32 %84, %76
  %86 = lshr i32 %85, 4
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  store i8 %88, i8* %27, align 1
  %89 = icmp eq i32 %76, 0
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %30, align 1
  %91 = lshr i32 %76, 31
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %33, align 1
  %93 = lshr i32 %75, 31
  %94 = xor i32 %91, %93
  %95 = add nuw nsw i32 %94, %93
  %96 = icmp eq i32 %95, 2
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %39, align 1
  %98 = icmp ne i8 %92, 0
  %99 = xor i1 %98, %96
  %.v85 = select i1 %99, i64 13, i64 301
  %100 = add i64 %70, %.v85
  store i64 %100, i64* %3, align 8
  br i1 %99, label %block_489f9d, label %block_.L_48a0bd

block_489f9d:                                     ; preds = %block_.L_489f90
  %101 = add i64 %100, 4
  store i64 %101, i64* %3, align 8
  %102 = load i32, i32* %74, align 4
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %RAX.i739, align 8
  %104 = add nsw i64 %103, 12099168
  %105 = add i64 %100, 12
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %104 to i8*
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i64
  store i64 %108, i64* %RCX.i737, align 8
  %109 = zext i8 %107 to i32
  %110 = add nsw i32 %109, -3
  %111 = icmp ult i8 %107, 3
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %14, align 1
  %113 = and i32 %110, 255
  %114 = tail call i32 @llvm.ctpop.i32(i32 %113)
  %115 = trunc i32 %114 to i8
  %116 = and i8 %115, 1
  %117 = xor i8 %116, 1
  store i8 %117, i8* %21, align 1
  %118 = xor i32 %110, %109
  %119 = lshr i32 %118, 4
  %120 = trunc i32 %119 to i8
  %121 = and i8 %120, 1
  store i8 %121, i8* %27, align 1
  %122 = icmp eq i32 %110, 0
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %30, align 1
  %124 = lshr i32 %110, 31
  %125 = trunc i32 %124 to i8
  store i8 %125, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v108 = select i1 %122, i64 21, i64 26
  %126 = add i64 %100, %.v108
  store i64 %126, i64* %3, align 8
  br i1 %122, label %block_489fb2, label %block_.L_489fb7

block_489fb2:                                     ; preds = %block_489f9d
  %127 = add i64 %126, 253
  br label %block_.L_48a0af

block_.L_489fb7:                                  ; preds = %block_489f9d
  %128 = add i64 %71, -3244
  %129 = add i64 %126, 10
  store i64 %129, i64* %3, align 8
  %130 = inttoptr i64 %128 to i32*
  store i32 0, i32* %130, align 4
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_489fc1

block_.L_489fc1:                                  ; preds = %block_489fdc, %block_.L_489fb7
  %131 = phi i64 [ %243, %block_489fdc ], [ %.pre80, %block_.L_489fb7 ]
  %132 = load i64, i64* %RBP.i, align 8
  %133 = add i64 %132, -3244
  %134 = add i64 %131, 6
  store i64 %134, i64* %3, align 8
  %135 = inttoptr i64 %133 to i32*
  %136 = load i32, i32* %135, align 4
  %137 = zext i32 %136 to i64
  store i64 %137, i64* %RAX.i739, align 8
  %138 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %139 = add i32 %138, -1
  %140 = shl i32 %139, 1
  %141 = zext i32 %140 to i64
  store i64 %141, i64* %RCX.i737, align 8
  %142 = sub i32 %136, %140
  %143 = icmp ult i32 %136, %140
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %14, align 1
  %145 = and i32 %142, 255
  %146 = tail call i32 @llvm.ctpop.i32(i32 %145)
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  %149 = xor i8 %148, 1
  store i8 %149, i8* %21, align 1
  %150 = xor i32 %140, %136
  %151 = xor i32 %150, %142
  %152 = lshr i32 %151, 4
  %153 = trunc i32 %152 to i8
  %154 = and i8 %153, 1
  store i8 %154, i8* %27, align 1
  %155 = icmp eq i32 %142, 0
  %156 = zext i1 %155 to i8
  store i8 %156, i8* %30, align 1
  %157 = lshr i32 %142, 31
  %158 = trunc i32 %157 to i8
  store i8 %158, i8* %33, align 1
  %159 = lshr i32 %136, 31
  %160 = lshr i32 %139, 30
  %161 = and i32 %160, 1
  %162 = xor i32 %161, %159
  %163 = xor i32 %157, %159
  %164 = add nuw nsw i32 %163, %162
  %165 = icmp eq i32 %164, 2
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %39, align 1
  %167 = icmp ne i8 %158, 0
  %168 = xor i1 %167, %165
  %.v109 = select i1 %168, i64 26, i64 84
  %169 = add i64 %131, %.v109
  store i64 %169, i64* %3, align 8
  br i1 %168, label %block_489fdc, label %block_.L_48a016

block_489fdc:                                     ; preds = %block_.L_489fc1
  store i64 ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64), i64* %RAX.i739, align 8
  %170 = load i64, i64* %RBP.i, align 8
  %171 = add i64 %170, -32
  %172 = add i64 %169, 14
  store i64 %172, i64* %3, align 8
  %173 = inttoptr i64 %171 to i32*
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = mul nsw i64 %175, 144
  store i64 %176, i64* %RCX.i737, align 8
  %177 = lshr i64 %176, 63
  %178 = add i64 %176, ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64)
  store i64 %178, i64* %RAX.i739, align 8
  %179 = icmp ult i64 %178, ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64)
  %180 = icmp ult i64 %178, %176
  %181 = or i1 %179, %180
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %14, align 1
  %183 = trunc i64 %178 to i32
  %184 = and i32 %183, 248
  %185 = tail call i32 @llvm.ctpop.i32(i32 %184)
  %186 = trunc i32 %185 to i8
  %187 = and i8 %186, 1
  %188 = xor i8 %187, 1
  store i8 %188, i8* %21, align 1
  %189 = xor i64 %176, ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64)
  %190 = xor i64 %189, %178
  %191 = lshr i64 %190, 4
  %192 = trunc i64 %191 to i8
  %193 = and i8 %192, 1
  store i8 %193, i8* %27, align 1
  %194 = icmp eq i64 %178, 0
  %195 = zext i1 %194 to i8
  store i8 %195, i8* %30, align 1
  %196 = lshr i64 %178, 63
  %197 = trunc i64 %196 to i8
  store i8 %197, i8* %33, align 1
  %198 = xor i64 %196, lshr (i64 ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64), i64 63)
  %199 = xor i64 %196, %177
  %200 = add nuw nsw i64 %198, %199
  %201 = icmp eq i64 %200, 2
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %39, align 1
  %203 = add i64 %170, -3244
  %204 = add i64 %169, 31
  store i64 %204, i64* %3, align 8
  %205 = inttoptr i64 %203 to i32*
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  store i64 %207, i64* %RCX.i737, align 8
  %208 = shl nsw i64 %207, 2
  %209 = add i64 %208, %178
  %210 = add i64 %169, 38
  store i64 %210, i64* %3, align 8
  %211 = inttoptr i64 %209 to i32*
  store i32 0, i32* %211, align 4
  %212 = load i64, i64* %RBP.i, align 8
  %213 = add i64 %212, -3244
  %214 = load i64, i64* %3, align 8
  %215 = add i64 %214, 6
  store i64 %215, i64* %3, align 8
  %216 = inttoptr i64 %213 to i32*
  %217 = load i32, i32* %216, align 4
  %218 = add i32 %217, 1
  %219 = zext i32 %218 to i64
  store i64 %219, i64* %RAX.i739, align 8
  %220 = icmp eq i32 %217, -1
  %221 = icmp eq i32 %218, 0
  %222 = or i1 %220, %221
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %14, align 1
  %224 = and i32 %218, 255
  %225 = tail call i32 @llvm.ctpop.i32(i32 %224)
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  %228 = xor i8 %227, 1
  store i8 %228, i8* %21, align 1
  %229 = xor i32 %218, %217
  %230 = lshr i32 %229, 4
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  store i8 %232, i8* %27, align 1
  %233 = zext i1 %221 to i8
  store i8 %233, i8* %30, align 1
  %234 = lshr i32 %218, 31
  %235 = trunc i32 %234 to i8
  store i8 %235, i8* %33, align 1
  %236 = lshr i32 %217, 31
  %237 = xor i32 %234, %236
  %238 = add nuw nsw i32 %237, %234
  %239 = icmp eq i32 %238, 2
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %39, align 1
  %241 = add i64 %214, 15
  store i64 %241, i64* %3, align 8
  store i32 %218, i32* %216, align 4
  %242 = load i64, i64* %3, align 8
  %243 = add i64 %242, -80
  store i64 %243, i64* %3, align 8
  br label %block_.L_489fc1

block_.L_48a016:                                  ; preds = %block_.L_489fc1
  %244 = load i64, i64* %RBP.i, align 8
  %245 = add i64 %244, -32
  %246 = add i64 %169, 4
  store i64 %246, i64* %3, align 8
  %247 = inttoptr i64 %245 to i32*
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  store i64 %249, i64* %RAX.i739, align 8
  %250 = shl nsw i64 %249, 2
  %251 = add i64 %244, -3232
  %252 = add i64 %251, %250
  %253 = add i64 %169, 15
  store i64 %253, i64* %3, align 8
  %254 = inttoptr i64 %252 to i32*
  store i32 0, i32* %254, align 4
  %255 = load i64, i64* %RBP.i, align 8
  %256 = add i64 %255, -32
  %257 = load i64, i64* %3, align 8
  %258 = add i64 %257, 4
  store i64 %258, i64* %3, align 8
  %259 = inttoptr i64 %256 to i32*
  %260 = load i32, i32* %259, align 4
  %261 = sext i32 %260 to i64
  store i64 %261, i64* %RAX.i739, align 8
  %262 = add nsw i64 %261, 12099168
  %263 = add i64 %257, 12
  store i64 %263, i64* %3, align 8
  %264 = inttoptr i64 %262 to i8*
  %265 = load i8, i8* %264, align 1
  %266 = zext i8 %265 to i64
  store i64 %266, i64* %RCX.i737, align 8
  %267 = add i64 %255, -4
  %268 = add i64 %257, 15
  store i64 %268, i64* %3, align 8
  %269 = zext i8 %265 to i32
  %270 = inttoptr i64 %267 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = and i32 %271, %269
  %273 = zext i32 %272 to i64
  store i64 %273, i64* %RCX.i737, align 8
  %274 = icmp eq i32 %272, 0
  %275 = zext i1 %274 to i8
  store i8 0, i8* %14, align 1
  %276 = tail call i32 @llvm.ctpop.i32(i32 %272)
  %277 = trunc i32 %276 to i8
  %278 = and i8 %277, 1
  %279 = xor i8 %278, 1
  store i8 %279, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 %275, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v110 = select i1 %274, i64 118, i64 24
  %280 = add i64 %257, %.v110
  store i64 %280, i64* %3, align 8
  br i1 %274, label %block_.L_48a09b, label %block_48a03d

block_48a03d:                                     ; preds = %block_.L_48a016
  store i64 ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64), i64* %RAX.i739, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RCX.i737, align 8
  %281 = add i64 %280, 24
  store i64 %281, i64* %3, align 8
  %282 = load i32, i32* %259, align 4
  %283 = sext i32 %282 to i64
  store i64 %283, i64* %RDX.i750, align 8
  %284 = shl nsw i64 %283, 2
  %285 = add i64 %255, -1632
  %286 = add i64 %285, %284
  %287 = add i64 %280, 35
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %286 to i32*
  store i32 0, i32* %288, align 4
  %289 = load i64, i64* %RBP.i, align 8
  %290 = add i64 %289, -32
  %291 = load i64, i64* %3, align 8
  %292 = add i64 %291, 4
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %290 to i32*
  %294 = load i32, i32* %293, align 4
  %295 = sext i32 %294 to i64
  %296 = mul nsw i64 %295, 380
  store i64 %296, i64* %RDX.i750, align 8
  %297 = lshr i64 %296, 63
  %298 = load i64, i64* %RCX.i737, align 8
  %299 = add i64 %296, %298
  store i64 %299, i64* %RCX.i737, align 8
  %300 = icmp ult i64 %299, %298
  %301 = icmp ult i64 %299, %296
  %302 = or i1 %300, %301
  %303 = zext i1 %302 to i8
  store i8 %303, i8* %14, align 1
  %304 = trunc i64 %299 to i32
  %305 = and i32 %304, 255
  %306 = tail call i32 @llvm.ctpop.i32(i32 %305)
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  %309 = xor i8 %308, 1
  store i8 %309, i8* %21, align 1
  %310 = xor i64 %296, %298
  %311 = xor i64 %310, %299
  %312 = lshr i64 %311, 4
  %313 = trunc i64 %312 to i8
  %314 = and i8 %313, 1
  store i8 %314, i8* %27, align 1
  %315 = icmp eq i64 %299, 0
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %30, align 1
  %317 = lshr i64 %299, 63
  %318 = trunc i64 %317 to i8
  store i8 %318, i8* %33, align 1
  %319 = lshr i64 %298, 63
  %320 = xor i64 %317, %319
  %321 = xor i64 %317, %297
  %322 = add nuw nsw i64 %320, %321
  %323 = icmp eq i64 %322, 2
  %324 = zext i1 %323 to i8
  store i8 %324, i8* %39, align 1
  %325 = add i64 %299, 12
  %326 = add i64 %291, 17
  store i64 %326, i64* %3, align 8
  %327 = inttoptr i64 %325 to i32*
  %328 = load i32, i32* %327, align 4
  %329 = zext i32 %328 to i64
  store i64 %329, i64* %RSI.i753, align 8
  %330 = add i64 %291, 21
  store i64 %330, i64* %3, align 8
  %331 = load i32, i32* %293, align 4
  %332 = sext i32 %331 to i64
  %333 = mul nsw i64 %332, 144
  store i64 %333, i64* %RCX.i737, align 8
  %334 = lshr i64 %333, 63
  %335 = load i64, i64* %RAX.i739, align 8
  %336 = add i64 %333, %335
  store i64 %336, i64* %RAX.i739, align 8
  %337 = icmp ult i64 %336, %335
  %338 = icmp ult i64 %336, %333
  %339 = or i1 %337, %338
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %14, align 1
  %341 = trunc i64 %336 to i32
  %342 = and i32 %341, 255
  %343 = tail call i32 @llvm.ctpop.i32(i32 %342)
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  %346 = xor i8 %345, 1
  store i8 %346, i8* %21, align 1
  %347 = xor i64 %333, %335
  %348 = xor i64 %347, %336
  %349 = lshr i64 %348, 4
  %350 = trunc i64 %349 to i8
  %351 = and i8 %350, 1
  store i8 %351, i8* %27, align 1
  %352 = icmp eq i64 %336, 0
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %30, align 1
  %354 = lshr i64 %336, 63
  %355 = trunc i64 %354 to i8
  store i8 %355, i8* %33, align 1
  %356 = lshr i64 %335, 63
  %357 = xor i64 %354, %356
  %358 = xor i64 %354, %334
  %359 = add nuw nsw i64 %357, %358
  %360 = icmp eq i64 %359, 2
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %39, align 1
  %362 = inttoptr i64 %336 to i32*
  %363 = add i64 %291, 33
  store i64 %363, i64* %3, align 8
  store i32 %328, i32* %362, align 4
  %364 = load i64, i64* %RBP.i, align 8
  %365 = add i64 %364, -32
  %366 = load i64, i64* %3, align 8
  %367 = add i64 %366, 4
  store i64 %367, i64* %3, align 8
  %368 = inttoptr i64 %365 to i32*
  %369 = load i32, i32* %368, align 4
  %370 = sext i32 %369 to i64
  store i64 %370, i64* %RAX.i739, align 8
  %371 = shl nsw i64 %370, 2
  %372 = add i64 %364, -3232
  %373 = add i64 %372, %371
  %374 = add i64 %366, 11
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = add i32 %376, 1
  %378 = zext i32 %377 to i64
  store i64 %378, i64* %RSI.i753, align 8
  %379 = icmp eq i32 %376, -1
  %380 = icmp eq i32 %377, 0
  %381 = or i1 %379, %380
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %14, align 1
  %383 = and i32 %377, 255
  %384 = tail call i32 @llvm.ctpop.i32(i32 %383)
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  %387 = xor i8 %386, 1
  store i8 %387, i8* %21, align 1
  %388 = xor i32 %377, %376
  %389 = lshr i32 %388, 4
  %390 = trunc i32 %389 to i8
  %391 = and i8 %390, 1
  store i8 %391, i8* %27, align 1
  %392 = zext i1 %380 to i8
  store i8 %392, i8* %30, align 1
  %393 = lshr i32 %377, 31
  %394 = trunc i32 %393 to i8
  store i8 %394, i8* %33, align 1
  %395 = lshr i32 %376, 31
  %396 = xor i32 %393, %395
  %397 = add nuw nsw i32 %396, %393
  %398 = icmp eq i32 %397, 2
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %39, align 1
  %400 = add i64 %366, 21
  store i64 %400, i64* %3, align 8
  store i32 %377, i32* %375, align 4
  %401 = load i64, i64* %3, align 8
  %402 = add i64 %401, 20
  store i64 %402, i64* %3, align 8
  br label %block_.L_48a0aa

block_.L_48a09b:                                  ; preds = %block_.L_48a016
  %403 = add i64 %280, 4
  store i64 %403, i64* %3, align 8
  %404 = load i32, i32* %259, align 4
  %405 = sext i32 %404 to i64
  store i64 %405, i64* %RAX.i739, align 8
  %406 = shl nsw i64 %405, 2
  %407 = add i64 %255, -1632
  %408 = add i64 %407, %406
  %409 = add i64 %280, 15
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %408 to i32*
  store i32 -1, i32* %410, align 4
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_48a0aa

block_.L_48a0aa:                                  ; preds = %block_.L_48a09b, %block_48a03d
  %411 = phi i64 [ %.pre81, %block_.L_48a09b ], [ %402, %block_48a03d ]
  %412 = add i64 %411, 5
  store i64 %412, i64* %3, align 8
  %.pre82 = load i64, i64* %RBP.i, align 8
  br label %block_.L_48a0af

block_.L_48a0af:                                  ; preds = %block_.L_48a0aa, %block_489fb2
  %413 = phi i64 [ %71, %block_489fb2 ], [ %.pre82, %block_.L_48a0aa ]
  %storemerge = phi i64 [ %127, %block_489fb2 ], [ %412, %block_.L_48a0aa ]
  %414 = add i64 %413, -32
  %415 = add i64 %storemerge, 3
  store i64 %415, i64* %3, align 8
  %416 = inttoptr i64 %414 to i32*
  %417 = load i32, i32* %416, align 4
  %418 = add i32 %417, 1
  %419 = zext i32 %418 to i64
  store i64 %419, i64* %RAX.i739, align 8
  %420 = icmp eq i32 %417, -1
  %421 = icmp eq i32 %418, 0
  %422 = or i1 %420, %421
  %423 = zext i1 %422 to i8
  store i8 %423, i8* %14, align 1
  %424 = and i32 %418, 255
  %425 = tail call i32 @llvm.ctpop.i32(i32 %424)
  %426 = trunc i32 %425 to i8
  %427 = and i8 %426, 1
  %428 = xor i8 %427, 1
  store i8 %428, i8* %21, align 1
  %429 = xor i32 %418, %417
  %430 = lshr i32 %429, 4
  %431 = trunc i32 %430 to i8
  %432 = and i8 %431, 1
  store i8 %432, i8* %27, align 1
  %433 = zext i1 %421 to i8
  store i8 %433, i8* %30, align 1
  %434 = lshr i32 %418, 31
  %435 = trunc i32 %434 to i8
  store i8 %435, i8* %33, align 1
  %436 = lshr i32 %417, 31
  %437 = xor i32 %434, %436
  %438 = add nuw nsw i32 %437, %434
  %439 = icmp eq i32 %438, 2
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %39, align 1
  %441 = add i64 %storemerge, 9
  store i64 %441, i64* %3, align 8
  store i32 %418, i32* %416, align 4
  %442 = load i64, i64* %3, align 8
  %443 = add i64 %442, -296
  store i64 %443, i64* %3, align 8
  br label %block_.L_489f90

block_.L_48a0bd:                                  ; preds = %block_.L_489f90
  %444 = add i64 %71, -3240
  %445 = add i64 %100, 10
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %444 to i32*
  store i32 0, i32* %446, align 4
  %447 = load i64, i64* %RBP.i, align 8
  %448 = add i64 %447, -3236
  %449 = load i64, i64* %3, align 8
  %450 = add i64 %449, 10
  store i64 %450, i64* %3, align 8
  %451 = inttoptr i64 %448 to i32*
  store i32 1, i32* %451, align 4
  %AL.i602 = bitcast %union.anon* %69 to i8*
  %CL.i603 = bitcast %union.anon* %57 to i8*
  %RDI.i394 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %.pre61 = load i64, i64* %3, align 8
  %.pre62 = load i64, i64* %RBP.i, align 8
  br label %block_.L_48a0d1

block_.L_48a0d1:                                  ; preds = %block_.L_48a3a1, %block_.L_48a0bd
  %453 = phi i64 [ %.pre62, %block_.L_48a0bd ], [ %595, %block_.L_48a3a1 ]
  %454 = phi i64 [ %.pre61, %block_.L_48a0bd ], [ %1396, %block_.L_48a3a1 ]
  store i64 0, i64* %RAX.i739, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %CL.i603, align 1
  %455 = add i64 %453, -3236
  %456 = add i64 %454, 11
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %455 to i32*
  %458 = load i32, i32* %457, align 4
  store i8 0, i8* %14, align 1
  %459 = and i32 %458, 255
  %460 = tail call i32 @llvm.ctpop.i32(i32 %459)
  %461 = trunc i32 %460 to i8
  %462 = and i8 %461, 1
  %463 = xor i8 %462, 1
  store i8 %463, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %464 = icmp eq i32 %458, 0
  %465 = zext i1 %464 to i8
  store i8 %465, i8* %30, align 1
  %466 = lshr i32 %458, 31
  %467 = trunc i32 %466 to i8
  store i8 %467, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %468 = add i64 %453, -3265
  %469 = add i64 %454, 17
  store i64 %469, i64* %3, align 8
  %470 = inttoptr i64 %468 to i8*
  store i8 0, i8* %470, align 1
  %471 = load i64, i64* %3, align 8
  %472 = load i8, i8* %30, align 1
  %473 = icmp ne i8 %472, 0
  %.v136 = select i1 %473, i64 24, i64 6
  %474 = add i64 %471, %.v136
  store i64 %474, i64* %3, align 8
  %cmpBr_48a0e2 = icmp eq i8 %472, 1
  br i1 %cmpBr_48a0e2, label %block_.L_48a0fa, label %block_48a0e8

block_48a0e8:                                     ; preds = %block_.L_48a0d1
  %475 = load i64, i64* %RBP.i, align 8
  %476 = add i64 %475, -3240
  %477 = add i64 %474, 6
  store i64 %477, i64* %3, align 8
  %478 = inttoptr i64 %476 to i32*
  %479 = load i32, i32* %478, align 4
  %480 = zext i32 %479 to i64
  store i64 %480, i64* %RAX.i739, align 8
  %481 = add i64 %475, -28
  %482 = add i64 %474, 9
  store i64 %482, i64* %3, align 8
  %483 = inttoptr i64 %481 to i32*
  %484 = load i32, i32* %483, align 4
  %485 = sub i32 %479, %484
  %486 = icmp ult i32 %479, %484
  %487 = zext i1 %486 to i8
  store i8 %487, i8* %14, align 1
  %488 = and i32 %485, 255
  %489 = tail call i32 @llvm.ctpop.i32(i32 %488)
  %490 = trunc i32 %489 to i8
  %491 = and i8 %490, 1
  %492 = xor i8 %491, 1
  store i8 %492, i8* %21, align 1
  %493 = xor i32 %484, %479
  %494 = xor i32 %493, %485
  %495 = lshr i32 %494, 4
  %496 = trunc i32 %495 to i8
  %497 = and i8 %496, 1
  store i8 %497, i8* %27, align 1
  %498 = icmp eq i32 %485, 0
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %30, align 1
  %500 = lshr i32 %485, 31
  %501 = trunc i32 %500 to i8
  store i8 %501, i8* %33, align 1
  %502 = lshr i32 %479, 31
  %503 = lshr i32 %484, 31
  %504 = xor i32 %503, %502
  %505 = xor i32 %500, %502
  %506 = add nuw nsw i32 %505, %504
  %507 = icmp eq i32 %506, 2
  %508 = zext i1 %507 to i8
  store i8 %508, i8* %39, align 1
  %509 = icmp ne i8 %501, 0
  %510 = xor i1 %509, %507
  %511 = or i1 %498, %510
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %CL.i603, align 1
  %513 = add i64 %475, -3265
  %514 = add i64 %474, 18
  store i64 %514, i64* %3, align 8
  %515 = inttoptr i64 %513 to i8*
  store i8 %512, i8* %515, align 1
  %.pre63 = load i64, i64* %3, align 8
  br label %block_.L_48a0fa

block_.L_48a0fa:                                  ; preds = %block_48a0e8, %block_.L_48a0d1
  %516 = phi i64 [ %.pre63, %block_48a0e8 ], [ %474, %block_.L_48a0d1 ]
  %517 = load i64, i64* %RBP.i, align 8
  %518 = add i64 %517, -3265
  %519 = add i64 %516, 6
  store i64 %519, i64* %3, align 8
  %520 = inttoptr i64 %518 to i8*
  %521 = load i8, i8* %520, align 1
  store i8 %521, i8* %AL.i602, align 1
  %522 = and i8 %521, 1
  store i8 0, i8* %14, align 1
  %523 = zext i8 %522 to i32
  %524 = tail call i32 @llvm.ctpop.i32(i32 %523)
  %525 = trunc i32 %524 to i8
  %526 = xor i8 %525, 1
  store i8 %526, i8* %21, align 1
  %527 = xor i8 %522, 1
  store i8 %527, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %528 = icmp eq i8 %527, 0
  %.v = select i1 %528, i64 19, i64 14
  %529 = add i64 %516, %.v
  store i64 %529, i64* %3, align 8
  br i1 %528, label %block_.L_48a10d, label %block_48a108

block_48a108:                                     ; preds = %block_.L_48a0fa
  %530 = add i64 %517, -4
  %531 = add i64 %529, 674
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %530 to i32*
  %533 = load i32, i32* %532, align 4
  %534 = add i32 %533, -3
  %535 = icmp ult i32 %533, 3
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %14, align 1
  %537 = and i32 %534, 255
  %538 = tail call i32 @llvm.ctpop.i32(i32 %537)
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  %541 = xor i8 %540, 1
  store i8 %541, i8* %21, align 1
  %542 = xor i32 %534, %533
  %543 = lshr i32 %542, 4
  %544 = trunc i32 %543 to i8
  %545 = and i8 %544, 1
  store i8 %545, i8* %27, align 1
  %546 = icmp eq i32 %534, 0
  %547 = zext i1 %546 to i8
  store i8 %547, i8* %30, align 1
  %548 = lshr i32 %534, 31
  %549 = trunc i32 %548 to i8
  store i8 %549, i8* %33, align 1
  %550 = lshr i32 %533, 31
  %551 = xor i32 %548, %550
  %552 = add nuw nsw i32 %551, %550
  %553 = icmp eq i32 %552, 2
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %39, align 1
  %.v86 = select i1 %546, i64 680, i64 1106
  %555 = add i64 %529, %.v86
  store i64 %555, i64* %3, align 8
  br i1 %546, label %block_48a3b0, label %block_.L_48a55a

block_.L_48a10d:                                  ; preds = %block_.L_48a0fa
  %556 = add i64 %517, -3236
  %557 = add i64 %529, 10
  store i64 %557, i64* %3, align 8
  %558 = inttoptr i64 %556 to i32*
  store i32 0, i32* %558, align 4
  %559 = load i64, i64* %RBP.i, align 8
  %560 = add i64 %559, -3240
  %561 = load i64, i64* %3, align 8
  %562 = add i64 %561, 6
  store i64 %562, i64* %3, align 8
  %563 = inttoptr i64 %560 to i32*
  %564 = load i32, i32* %563, align 4
  %565 = add i32 %564, 1
  %566 = zext i32 %565 to i64
  store i64 %566, i64* %RAX.i739, align 8
  %567 = icmp eq i32 %564, -1
  %568 = icmp eq i32 %565, 0
  %569 = or i1 %567, %568
  %570 = zext i1 %569 to i8
  store i8 %570, i8* %14, align 1
  %571 = and i32 %565, 255
  %572 = tail call i32 @llvm.ctpop.i32(i32 %571)
  %573 = trunc i32 %572 to i8
  %574 = and i8 %573, 1
  %575 = xor i8 %574, 1
  store i8 %575, i8* %21, align 1
  %576 = xor i32 %565, %564
  %577 = lshr i32 %576, 4
  %578 = trunc i32 %577 to i8
  %579 = and i8 %578, 1
  store i8 %579, i8* %27, align 1
  %580 = zext i1 %568 to i8
  store i8 %580, i8* %30, align 1
  %581 = lshr i32 %565, 31
  %582 = trunc i32 %581 to i8
  store i8 %582, i8* %33, align 1
  %583 = lshr i32 %564, 31
  %584 = xor i32 %581, %583
  %585 = add nuw nsw i32 %584, %581
  %586 = icmp eq i32 %585, 2
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %39, align 1
  %588 = add i64 %561, 15
  store i64 %588, i64* %3, align 8
  store i32 %565, i32* %563, align 4
  %589 = load i64, i64* %RBP.i, align 8
  %590 = add i64 %589, -32
  %591 = load i64, i64* %3, align 8
  %592 = add i64 %591, 7
  store i64 %592, i64* %3, align 8
  %593 = inttoptr i64 %590 to i32*
  store i32 21, i32* %593, align 4
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_48a12d

block_.L_48a12d:                                  ; preds = %block_.L_48a393, %block_.L_48a10d
  %594 = phi i64 [ %.pre72, %block_.L_48a10d ], [ %1395, %block_.L_48a393 ]
  %595 = load i64, i64* %RBP.i, align 8
  %596 = add i64 %595, -32
  %597 = add i64 %594, 7
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to i32*
  %599 = load i32, i32* %598, align 4
  %600 = add i32 %599, -400
  %601 = icmp ult i32 %599, 400
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %14, align 1
  %603 = and i32 %600, 255
  %604 = tail call i32 @llvm.ctpop.i32(i32 %603)
  %605 = trunc i32 %604 to i8
  %606 = and i8 %605, 1
  %607 = xor i8 %606, 1
  store i8 %607, i8* %21, align 1
  %608 = xor i32 %599, 16
  %609 = xor i32 %608, %600
  %610 = lshr i32 %609, 4
  %611 = trunc i32 %610 to i8
  %612 = and i8 %611, 1
  store i8 %612, i8* %27, align 1
  %613 = icmp eq i32 %600, 0
  %614 = zext i1 %613 to i8
  store i8 %614, i8* %30, align 1
  %615 = lshr i32 %600, 31
  %616 = trunc i32 %615 to i8
  store i8 %616, i8* %33, align 1
  %617 = lshr i32 %599, 31
  %618 = xor i32 %615, %617
  %619 = add nuw nsw i32 %618, %617
  %620 = icmp eq i32 %619, 2
  %621 = zext i1 %620 to i8
  store i8 %621, i8* %39, align 1
  %622 = icmp ne i8 %616, 0
  %623 = xor i1 %622, %620
  %.v99 = select i1 %623, i64 13, i64 628
  %624 = add i64 %594, %.v99
  store i64 %624, i64* %3, align 8
  br i1 %623, label %block_48a13a, label %block_.L_48a3a1

block_48a13a:                                     ; preds = %block_.L_48a12d
  %625 = add i64 %624, 4
  store i64 %625, i64* %3, align 8
  %626 = load i32, i32* %598, align 4
  %627 = sext i32 %626 to i64
  store i64 %627, i64* %RAX.i739, align 8
  %628 = add nsw i64 %627, 12099168
  %629 = add i64 %624, 12
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %628 to i8*
  %631 = load i8, i8* %630, align 1
  %632 = zext i8 %631 to i64
  store i64 %632, i64* %RCX.i737, align 8
  %633 = zext i8 %631 to i32
  %634 = add nsw i32 %633, -3
  %635 = icmp ult i8 %631, 3
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %14, align 1
  %637 = and i32 %634, 255
  %638 = tail call i32 @llvm.ctpop.i32(i32 %637)
  %639 = trunc i32 %638 to i8
  %640 = and i8 %639, 1
  %641 = xor i8 %640, 1
  store i8 %641, i8* %21, align 1
  %642 = xor i32 %634, %633
  %643 = lshr i32 %642, 4
  %644 = trunc i32 %643 to i8
  %645 = and i8 %644, 1
  store i8 %645, i8* %27, align 1
  %646 = icmp eq i32 %634, 0
  %647 = zext i1 %646 to i8
  store i8 %647, i8* %30, align 1
  %648 = lshr i32 %634, 31
  %649 = trunc i32 %648 to i8
  store i8 %649, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v100 = select i1 %646, i64 39, i64 21
  %650 = add i64 %624, %.v100
  store i64 %650, i64* %3, align 8
  br i1 %646, label %block_.L_48a161, label %block_48a14f

block_48a14f:                                     ; preds = %block_48a13a
  %651 = add i64 %650, 4
  store i64 %651, i64* %3, align 8
  %652 = load i32, i32* %598, align 4
  %653 = sext i32 %652 to i64
  store i64 %653, i64* %RAX.i739, align 8
  %654 = shl nsw i64 %653, 2
  %655 = add i64 %595, -1632
  %656 = add i64 %655, %654
  %657 = add i64 %650, 12
  store i64 %657, i64* %3, align 8
  %658 = inttoptr i64 %656 to i32*
  %659 = load i32, i32* %658, align 4
  %660 = add i32 %659, 1
  %661 = icmp ne i32 %659, -1
  %662 = zext i1 %661 to i8
  store i8 %662, i8* %14, align 1
  %663 = and i32 %660, 255
  %664 = tail call i32 @llvm.ctpop.i32(i32 %663)
  %665 = trunc i32 %664 to i8
  %666 = and i8 %665, 1
  %667 = xor i8 %666, 1
  store i8 %667, i8* %21, align 1
  %668 = xor i32 %659, 16
  %669 = xor i32 %668, %660
  %670 = lshr i32 %669, 4
  %671 = trunc i32 %670 to i8
  %672 = and i8 %671, 1
  store i8 %672, i8* %27, align 1
  %673 = icmp eq i32 %660, 0
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %30, align 1
  %675 = lshr i32 %660, 31
  %676 = trunc i32 %675 to i8
  store i8 %676, i8* %33, align 1
  %677 = lshr i32 %659, 31
  %678 = xor i32 %677, 1
  %679 = xor i32 %675, %677
  %680 = add nuw nsw i32 %679, %678
  %681 = icmp eq i32 %680, 2
  %682 = zext i1 %681 to i8
  store i8 %682, i8* %39, align 1
  %.v101 = select i1 %673, i64 23, i64 18
  %683 = add i64 %650, %.v101
  store i64 %683, i64* %3, align 8
  br i1 %673, label %block_.L_48a166, label %block_.L_48a161

block_.L_48a161:                                  ; preds = %block_48a14f, %block_48a13a
  %684 = phi i64 [ %683, %block_48a14f ], [ %650, %block_48a13a ]
  %685 = add i64 %684, 562
  br label %block_.L_48a393

block_.L_48a166:                                  ; preds = %block_48a14f
  %686 = add i64 %595, -3252
  %687 = add i64 %683, 10
  store i64 %687, i64* %3, align 8
  %688 = inttoptr i64 %686 to i32*
  store i32 0, i32* %688, align 4
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_48a170

block_.L_48a170:                                  ; preds = %block_.L_48a375, %block_.L_48a166
  %689 = phi i64 [ %.pre73, %block_.L_48a166 ], [ %1363, %block_.L_48a375 ]
  %690 = load i64, i64* %RBP.i, align 8
  %691 = add i64 %690, -3252
  %692 = add i64 %689, 7
  store i64 %692, i64* %3, align 8
  %693 = inttoptr i64 %691 to i32*
  %694 = load i32, i32* %693, align 4
  %695 = add i32 %694, -4
  %696 = icmp ult i32 %694, 4
  %697 = zext i1 %696 to i8
  store i8 %697, i8* %14, align 1
  %698 = and i32 %695, 255
  %699 = tail call i32 @llvm.ctpop.i32(i32 %698)
  %700 = trunc i32 %699 to i8
  %701 = and i8 %700, 1
  %702 = xor i8 %701, 1
  store i8 %702, i8* %21, align 1
  %703 = xor i32 %695, %694
  %704 = lshr i32 %703, 4
  %705 = trunc i32 %704 to i8
  %706 = and i8 %705, 1
  store i8 %706, i8* %27, align 1
  %707 = icmp eq i32 %695, 0
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %30, align 1
  %709 = lshr i32 %695, 31
  %710 = trunc i32 %709 to i8
  store i8 %710, i8* %33, align 1
  %711 = lshr i32 %694, 31
  %712 = xor i32 %709, %711
  %713 = add nuw nsw i32 %712, %711
  %714 = icmp eq i32 %713, 2
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %39, align 1
  %716 = icmp ne i8 %710, 0
  %717 = xor i1 %716, %714
  %.v102 = select i1 %717, i64 13, i64 542
  %718 = add i64 %689, %.v102
  store i64 %718, i64* %3, align 8
  br i1 %717, label %block_48a17d, label %block_.L_48a38e

block_48a17d:                                     ; preds = %block_.L_48a170
  %719 = add i64 %690, -32
  %720 = add i64 %718, 3
  store i64 %720, i64* %3, align 8
  %721 = inttoptr i64 %719 to i32*
  %722 = load i32, i32* %721, align 4
  %723 = zext i32 %722 to i64
  store i64 %723, i64* %RAX.i739, align 8
  %724 = add i64 %718, 10
  store i64 %724, i64* %3, align 8
  %725 = load i32, i32* %693, align 4
  %726 = sext i32 %725 to i64
  store i64 %726, i64* %RCX.i737, align 8
  %727 = shl nsw i64 %726, 2
  %728 = add nsw i64 %727, 8053168
  %729 = add i64 %718, 17
  store i64 %729, i64* %3, align 8
  %730 = inttoptr i64 %728 to i32*
  %731 = load i32, i32* %730, align 4
  %732 = add i32 %731, %722
  %733 = zext i32 %732 to i64
  store i64 %733, i64* %RAX.i739, align 8
  %734 = icmp ult i32 %732, %722
  %735 = icmp ult i32 %732, %731
  %736 = or i1 %734, %735
  %737 = zext i1 %736 to i8
  store i8 %737, i8* %14, align 1
  %738 = and i32 %732, 255
  %739 = tail call i32 @llvm.ctpop.i32(i32 %738)
  %740 = trunc i32 %739 to i8
  %741 = and i8 %740, 1
  %742 = xor i8 %741, 1
  store i8 %742, i8* %21, align 1
  %743 = xor i32 %731, %722
  %744 = xor i32 %743, %732
  %745 = lshr i32 %744, 4
  %746 = trunc i32 %745 to i8
  %747 = and i8 %746, 1
  store i8 %747, i8* %27, align 1
  %748 = icmp eq i32 %732, 0
  %749 = zext i1 %748 to i8
  store i8 %749, i8* %30, align 1
  %750 = lshr i32 %732, 31
  %751 = trunc i32 %750 to i8
  store i8 %751, i8* %33, align 1
  %752 = lshr i32 %722, 31
  %753 = lshr i32 %731, 31
  %754 = xor i32 %750, %752
  %755 = xor i32 %750, %753
  %756 = add nuw nsw i32 %754, %755
  %757 = icmp eq i32 %756, 2
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %39, align 1
  %759 = add i64 %690, -3256
  %760 = add i64 %718, 23
  store i64 %760, i64* %3, align 8
  %761 = inttoptr i64 %759 to i32*
  store i32 %732, i32* %761, align 4
  %762 = load i64, i64* %RBP.i, align 8
  %763 = add i64 %762, -3256
  %764 = load i64, i64* %3, align 8
  %765 = add i64 %764, 7
  store i64 %765, i64* %3, align 8
  %766 = inttoptr i64 %763 to i32*
  %767 = load i32, i32* %766, align 4
  %768 = sext i32 %767 to i64
  store i64 %768, i64* %RCX.i737, align 8
  %769 = add nsw i64 %768, 12099168
  %770 = add i64 %764, 15
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %769 to i8*
  %772 = load i8, i8* %771, align 1
  %773 = zext i8 %772 to i64
  store i64 %773, i64* %RAX.i739, align 8
  %774 = zext i8 %772 to i32
  %775 = add nsw i32 %774, -3
  %776 = icmp ult i8 %772, 3
  %777 = zext i1 %776 to i8
  store i8 %777, i8* %14, align 1
  %778 = and i32 %775, 255
  %779 = tail call i32 @llvm.ctpop.i32(i32 %778)
  %780 = trunc i32 %779 to i8
  %781 = and i8 %780, 1
  %782 = xor i8 %781, 1
  store i8 %782, i8* %21, align 1
  %783 = xor i32 %775, %774
  %784 = lshr i32 %783, 4
  %785 = trunc i32 %784 to i8
  %786 = and i8 %785, 1
  store i8 %786, i8* %27, align 1
  %787 = icmp eq i32 %775, 0
  %788 = zext i1 %787 to i8
  store i8 %788, i8* %30, align 1
  %789 = lshr i32 %775, 31
  %790 = trunc i32 %789 to i8
  store i8 %790, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v103 = select i1 %787, i64 481, i64 24
  %791 = add i64 %764, %.v103
  store i64 %791, i64* %3, align 8
  br i1 %787, label %block_.L_48a375, label %block_48a1ac

block_48a1ac:                                     ; preds = %block_48a17d
  %792 = add i64 %791, 7
  store i64 %792, i64* %3, align 8
  %793 = load i32, i32* %766, align 4
  %794 = sext i32 %793 to i64
  store i64 %794, i64* %RAX.i739, align 8
  %795 = shl nsw i64 %794, 2
  %796 = add i64 %762, -1632
  %797 = add i64 %796, %795
  %798 = add i64 %791, 14
  store i64 %798, i64* %3, align 8
  %799 = inttoptr i64 %797 to i32*
  %800 = load i32, i32* %799, align 4
  %801 = zext i32 %800 to i64
  store i64 %801, i64* %RCX.i737, align 8
  %802 = add i64 %762, -3240
  %803 = add i64 %791, 20
  store i64 %803, i64* %3, align 8
  %804 = inttoptr i64 %802 to i32*
  %805 = load i32, i32* %804, align 4
  %806 = add i32 %805, -1
  %807 = zext i32 %806 to i64
  store i64 %807, i64* %RDX.i750, align 8
  %808 = lshr i32 %806, 31
  %809 = sub i32 %800, %806
  %810 = icmp ult i32 %800, %806
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %14, align 1
  %812 = and i32 %809, 255
  %813 = tail call i32 @llvm.ctpop.i32(i32 %812)
  %814 = trunc i32 %813 to i8
  %815 = and i8 %814, 1
  %816 = xor i8 %815, 1
  store i8 %816, i8* %21, align 1
  %817 = xor i32 %806, %800
  %818 = xor i32 %817, %809
  %819 = lshr i32 %818, 4
  %820 = trunc i32 %819 to i8
  %821 = and i8 %820, 1
  store i8 %821, i8* %27, align 1
  %822 = icmp eq i32 %809, 0
  %823 = zext i1 %822 to i8
  store i8 %823, i8* %30, align 1
  %824 = lshr i32 %809, 31
  %825 = trunc i32 %824 to i8
  store i8 %825, i8* %33, align 1
  %826 = lshr i32 %800, 31
  %827 = xor i32 %808, %826
  %828 = xor i32 %824, %826
  %829 = add nuw nsw i32 %828, %827
  %830 = icmp eq i32 %829, 2
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %39, align 1
  %.v104 = select i1 %822, i64 31, i64 457
  %832 = add i64 %791, %.v104
  store i64 %832, i64* %3, align 8
  br i1 %822, label %block_48a1cb, label %block_.L_48a375

block_48a1cb:                                     ; preds = %block_48a1ac
  %833 = add i64 %762, -3236
  %834 = add i64 %832, 10
  store i64 %834, i64* %3, align 8
  %835 = inttoptr i64 %833 to i32*
  store i32 1, i32* %835, align 4
  %836 = load i64, i64* %RBP.i, align 8
  %837 = add i64 %836, -3240
  %838 = load i64, i64* %3, align 8
  %839 = add i64 %838, 6
  store i64 %839, i64* %3, align 8
  %840 = inttoptr i64 %837 to i32*
  %841 = load i32, i32* %840, align 4
  %842 = zext i32 %841 to i64
  store i64 %842, i64* %RAX.i739, align 8
  %843 = add i64 %836, -32
  %844 = add i64 %838, 10
  store i64 %844, i64* %3, align 8
  %845 = inttoptr i64 %843 to i32*
  %846 = load i32, i32* %845, align 4
  %847 = sext i32 %846 to i64
  store i64 %847, i64* %RCX.i737, align 8
  %848 = shl nsw i64 %847, 2
  %849 = add i64 %836, -1632
  %850 = add i64 %849, %848
  %851 = add i64 %838, 17
  store i64 %851, i64* %3, align 8
  %852 = inttoptr i64 %850 to i32*
  store i32 %841, i32* %852, align 4
  %853 = load i64, i64* %RBP.i, align 8
  %854 = add i64 %853, -3244
  %855 = load i64, i64* %3, align 8
  %856 = add i64 %855, 10
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %854 to i32*
  store i32 0, i32* %857, align 4
  %.pre74 = load i64, i64* %3, align 8
  br label %block_.L_48a1f0

block_.L_48a1f0:                                  ; preds = %block_.L_48a357, %block_48a1cb
  %858 = phi i64 [ %.pre74, %block_48a1cb ], [ %1330, %block_.L_48a357 ]
  %859 = load i64, i64* %RBP.i, align 8
  %860 = add i64 %859, -3244
  %861 = add i64 %858, 6
  store i64 %861, i64* %3, align 8
  %862 = inttoptr i64 %860 to i32*
  %863 = load i32, i32* %862, align 4
  %864 = zext i32 %863 to i64
  store i64 %864, i64* %RAX.i739, align 8
  %865 = add i64 %859, -3256
  %866 = add i64 %858, 13
  store i64 %866, i64* %3, align 8
  %867 = inttoptr i64 %865 to i32*
  %868 = load i32, i32* %867, align 4
  %869 = sext i32 %868 to i64
  store i64 %869, i64* %RCX.i737, align 8
  %870 = shl nsw i64 %869, 2
  %871 = add nsw i64 %870, -3232
  %872 = add i64 %871, %859
  %873 = add i64 %858, 20
  store i64 %873, i64* %3, align 8
  %874 = inttoptr i64 %872 to i32*
  %875 = load i32, i32* %874, align 4
  %876 = sub i32 %863, %875
  %877 = icmp ult i32 %863, %875
  %878 = zext i1 %877 to i8
  store i8 %878, i8* %14, align 1
  %879 = and i32 %876, 255
  %880 = tail call i32 @llvm.ctpop.i32(i32 %879)
  %881 = trunc i32 %880 to i8
  %882 = and i8 %881, 1
  %883 = xor i8 %882, 1
  store i8 %883, i8* %21, align 1
  %884 = xor i32 %875, %863
  %885 = xor i32 %884, %876
  %886 = lshr i32 %885, 4
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  store i8 %888, i8* %27, align 1
  %889 = icmp eq i32 %876, 0
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %30, align 1
  %891 = lshr i32 %876, 31
  %892 = trunc i32 %891 to i8
  store i8 %892, i8* %33, align 1
  %893 = lshr i32 %863, 31
  %894 = lshr i32 %875, 31
  %895 = xor i32 %894, %893
  %896 = xor i32 %891, %893
  %897 = add nuw nsw i32 %896, %895
  %898 = icmp eq i32 %897, 2
  %899 = zext i1 %898 to i8
  store i8 %899, i8* %39, align 1
  %900 = icmp ne i8 %892, 0
  %901 = xor i1 %900, %898
  %.v105 = select i1 %901, i64 26, i64 384
  %902 = add i64 %858, %.v105
  store i64 %902, i64* %3, align 8
  br i1 %901, label %block_48a20a, label %block_.L_48a370

block_48a20a:                                     ; preds = %block_.L_48a1f0
  %903 = add i64 %859, -3260
  %904 = add i64 %902, 10
  store i64 %904, i64* %3, align 8
  %905 = inttoptr i64 %903 to i32*
  store i32 0, i32* %905, align 4
  %906 = load i64, i64* %RBP.i, align 8
  %907 = add i64 %906, -3248
  %908 = load i64, i64* %3, align 8
  %909 = add i64 %908, 10
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %907 to i32*
  store i32 0, i32* %910, align 4
  %.pre75 = load i64, i64* %3, align 8
  br label %block_.L_48a21e

block_.L_48a21e:                                  ; preds = %block_.L_48a28a, %block_48a20a
  %911 = phi i64 [ %1099, %block_.L_48a28a ], [ %.pre75, %block_48a20a ]
  %912 = load i64, i64* %RBP.i, align 8
  %913 = add i64 %912, -3248
  %914 = add i64 %911, 6
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %913 to i32*
  %916 = load i32, i32* %915, align 4
  %917 = zext i32 %916 to i64
  store i64 %917, i64* %RAX.i739, align 8
  %918 = add i64 %912, -32
  %919 = add i64 %911, 10
  store i64 %919, i64* %3, align 8
  %920 = inttoptr i64 %918 to i32*
  %921 = load i32, i32* %920, align 4
  %922 = sext i32 %921 to i64
  store i64 %922, i64* %RCX.i737, align 8
  %923 = shl nsw i64 %922, 2
  %924 = add nsw i64 %923, -3232
  %925 = add i64 %924, %912
  %926 = add i64 %911, 17
  store i64 %926, i64* %3, align 8
  %927 = inttoptr i64 %925 to i32*
  %928 = load i32, i32* %927, align 4
  %929 = sub i32 %916, %928
  %930 = icmp ult i32 %916, %928
  %931 = zext i1 %930 to i8
  store i8 %931, i8* %14, align 1
  %932 = and i32 %929, 255
  %933 = tail call i32 @llvm.ctpop.i32(i32 %932)
  %934 = trunc i32 %933 to i8
  %935 = and i8 %934, 1
  %936 = xor i8 %935, 1
  store i8 %936, i8* %21, align 1
  %937 = xor i32 %928, %916
  %938 = xor i32 %937, %929
  %939 = lshr i32 %938, 4
  %940 = trunc i32 %939 to i8
  %941 = and i8 %940, 1
  store i8 %941, i8* %27, align 1
  %942 = icmp eq i32 %929, 0
  %943 = zext i1 %942 to i8
  store i8 %943, i8* %30, align 1
  %944 = lshr i32 %929, 31
  %945 = trunc i32 %944 to i8
  store i8 %945, i8* %33, align 1
  %946 = lshr i32 %916, 31
  %947 = lshr i32 %928, 31
  %948 = xor i32 %947, %946
  %949 = xor i32 %944, %946
  %950 = add nuw nsw i32 %949, %948
  %951 = icmp eq i32 %950, 2
  %952 = zext i1 %951 to i8
  store i8 %952, i8* %39, align 1
  %953 = icmp ne i8 %945, 0
  %954 = xor i1 %953, %951
  %.v84 = select i1 %954, i64 23, i64 133
  %955 = add i64 %911, %.v84
  store i64 %955, i64* %3, align 8
  br i1 %954, label %block_48a235, label %block_.L_48a2a3.loopexit

block_48a235:                                     ; preds = %block_.L_48a21e
  store i64 ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64), i64* %RAX.i739, align 8
  %956 = add i64 %955, 14
  store i64 %956, i64* %3, align 8
  %957 = load i32, i32* %920, align 4
  %958 = sext i32 %957 to i64
  %959 = mul nsw i64 %958, 144
  store i64 %959, i64* %RCX.i737, align 8
  %960 = lshr i64 %959, 63
  %961 = add i64 %959, ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64)
  store i64 %961, i64* %RDX.i750, align 8
  %962 = icmp ult i64 %961, ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64)
  %963 = icmp ult i64 %961, %959
  %964 = or i1 %962, %963
  %965 = zext i1 %964 to i8
  store i8 %965, i8* %14, align 1
  %966 = trunc i64 %961 to i32
  %967 = and i32 %966, 248
  %968 = tail call i32 @llvm.ctpop.i32(i32 %967)
  %969 = trunc i32 %968 to i8
  %970 = and i8 %969, 1
  %971 = xor i8 %970, 1
  store i8 %971, i8* %21, align 1
  %972 = xor i64 %959, ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64)
  %973 = xor i64 %972, %961
  %974 = lshr i64 %973, 4
  %975 = trunc i64 %974 to i8
  %976 = and i8 %975, 1
  store i8 %976, i8* %27, align 1
  %977 = icmp eq i64 %961, 0
  %978 = zext i1 %977 to i8
  store i8 %978, i8* %30, align 1
  %979 = lshr i64 %961, 63
  %980 = trunc i64 %979 to i8
  store i8 %980, i8* %33, align 1
  %981 = xor i64 %979, lshr (i64 ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64), i64 63)
  %982 = xor i64 %979, %960
  %983 = add nuw nsw i64 %981, %982
  %984 = icmp eq i64 %983, 2
  %985 = zext i1 %984 to i8
  store i8 %985, i8* %39, align 1
  %986 = add i64 %955, 34
  store i64 %986, i64* %3, align 8
  %987 = load i32, i32* %915, align 4
  %988 = sext i32 %987 to i64
  store i64 %988, i64* %RCX.i737, align 8
  %989 = shl nsw i64 %988, 2
  %990 = add i64 %989, %961
  %991 = add i64 %955, 37
  store i64 %991, i64* %3, align 8
  %992 = inttoptr i64 %990 to i32*
  %993 = load i32, i32* %992, align 4
  %994 = zext i32 %993 to i64
  store i64 %994, i64* %RSI.i753, align 8
  %995 = add i64 %912, -3256
  %996 = add i64 %955, 44
  store i64 %996, i64* %3, align 8
  %997 = inttoptr i64 %995 to i32*
  %998 = load i32, i32* %997, align 4
  %999 = sext i32 %998 to i64
  %1000 = mul nsw i64 %999, 144
  store i64 %1000, i64* %RCX.i737, align 8
  %1001 = lshr i64 %1000, 63
  %1002 = load i64, i64* %RAX.i739, align 8
  %1003 = add i64 %1000, %1002
  store i64 %1003, i64* %RAX.i739, align 8
  %1004 = icmp ult i64 %1003, %1002
  %1005 = icmp ult i64 %1003, %1000
  %1006 = or i1 %1004, %1005
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %14, align 1
  %1008 = trunc i64 %1003 to i32
  %1009 = and i32 %1008, 255
  %1010 = tail call i32 @llvm.ctpop.i32(i32 %1009)
  %1011 = trunc i32 %1010 to i8
  %1012 = and i8 %1011, 1
  %1013 = xor i8 %1012, 1
  store i8 %1013, i8* %21, align 1
  %1014 = xor i64 %1000, %1002
  %1015 = xor i64 %1014, %1003
  %1016 = lshr i64 %1015, 4
  %1017 = trunc i64 %1016 to i8
  %1018 = and i8 %1017, 1
  store i8 %1018, i8* %27, align 1
  %1019 = icmp eq i64 %1003, 0
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %30, align 1
  %1021 = lshr i64 %1003, 63
  %1022 = trunc i64 %1021 to i8
  store i8 %1022, i8* %33, align 1
  %1023 = lshr i64 %1002, 63
  %1024 = xor i64 %1021, %1023
  %1025 = xor i64 %1021, %1001
  %1026 = add nuw nsw i64 %1024, %1025
  %1027 = icmp eq i64 %1026, 2
  %1028 = zext i1 %1027 to i8
  store i8 %1028, i8* %39, align 1
  %1029 = load i64, i64* %RBP.i, align 8
  %1030 = add i64 %1029, -3244
  %1031 = add i64 %955, 61
  store i64 %1031, i64* %3, align 8
  %1032 = inttoptr i64 %1030 to i32*
  %1033 = load i32, i32* %1032, align 4
  %1034 = sext i32 %1033 to i64
  store i64 %1034, i64* %RCX.i737, align 8
  %1035 = shl nsw i64 %1034, 2
  %1036 = add i64 %1003, %1035
  %1037 = add i64 %955, 64
  store i64 %1037, i64* %3, align 8
  %1038 = inttoptr i64 %1036 to i32*
  %1039 = load i32, i32* %1038, align 4
  %1040 = sub i32 %993, %1039
  %1041 = icmp ult i32 %993, %1039
  %1042 = zext i1 %1041 to i8
  store i8 %1042, i8* %14, align 1
  %1043 = and i32 %1040, 255
  %1044 = tail call i32 @llvm.ctpop.i32(i32 %1043)
  %1045 = trunc i32 %1044 to i8
  %1046 = and i8 %1045, 1
  %1047 = xor i8 %1046, 1
  store i8 %1047, i8* %21, align 1
  %1048 = xor i32 %1039, %993
  %1049 = xor i32 %1048, %1040
  %1050 = lshr i32 %1049, 4
  %1051 = trunc i32 %1050 to i8
  %1052 = and i8 %1051, 1
  store i8 %1052, i8* %27, align 1
  %1053 = icmp eq i32 %1040, 0
  %1054 = zext i1 %1053 to i8
  store i8 %1054, i8* %30, align 1
  %1055 = lshr i32 %1040, 31
  %1056 = trunc i32 %1055 to i8
  store i8 %1056, i8* %33, align 1
  %1057 = lshr i32 %993, 31
  %1058 = lshr i32 %1039, 31
  %1059 = xor i32 %1058, %1057
  %1060 = xor i32 %1055, %1057
  %1061 = add nuw nsw i32 %1060, %1059
  %1062 = icmp eq i32 %1061, 2
  %1063 = zext i1 %1062 to i8
  store i8 %1063, i8* %39, align 1
  %.v83 = select i1 %1053, i64 70, i64 85
  %1064 = add i64 %955, %.v83
  store i64 %1064, i64* %3, align 8
  br i1 %1053, label %block_48a27b, label %block_.L_48a28a

block_48a27b:                                     ; preds = %block_48a235
  %1065 = add i64 %1029, -3260
  %1066 = add i64 %1064, 10
  store i64 %1066, i64* %3, align 8
  %1067 = inttoptr i64 %1065 to i32*
  store i32 1, i32* %1067, align 4
  %1068 = load i64, i64* %3, align 8
  %1069 = add i64 %1068, 30
  store i64 %1069, i64* %3, align 8
  %.pre76 = load i64, i64* %RBP.i, align 8
  br label %block_.L_48a2a3

block_.L_48a28a:                                  ; preds = %block_48a235
  %1070 = add i64 %1029, -3248
  %1071 = add i64 %1064, 11
  store i64 %1071, i64* %3, align 8
  %1072 = inttoptr i64 %1070 to i32*
  %1073 = load i32, i32* %1072, align 4
  %1074 = add i32 %1073, 1
  %1075 = zext i32 %1074 to i64
  store i64 %1075, i64* %RAX.i739, align 8
  %1076 = icmp eq i32 %1073, -1
  %1077 = icmp eq i32 %1074, 0
  %1078 = or i1 %1076, %1077
  %1079 = zext i1 %1078 to i8
  store i8 %1079, i8* %14, align 1
  %1080 = and i32 %1074, 255
  %1081 = tail call i32 @llvm.ctpop.i32(i32 %1080)
  %1082 = trunc i32 %1081 to i8
  %1083 = and i8 %1082, 1
  %1084 = xor i8 %1083, 1
  store i8 %1084, i8* %21, align 1
  %1085 = xor i32 %1074, %1073
  %1086 = lshr i32 %1085, 4
  %1087 = trunc i32 %1086 to i8
  %1088 = and i8 %1087, 1
  store i8 %1088, i8* %27, align 1
  %1089 = zext i1 %1077 to i8
  store i8 %1089, i8* %30, align 1
  %1090 = lshr i32 %1074, 31
  %1091 = trunc i32 %1090 to i8
  store i8 %1091, i8* %33, align 1
  %1092 = lshr i32 %1073, 31
  %1093 = xor i32 %1090, %1092
  %1094 = add nuw nsw i32 %1093, %1090
  %1095 = icmp eq i32 %1094, 2
  %1096 = zext i1 %1095 to i8
  store i8 %1096, i8* %39, align 1
  %1097 = add i64 %1064, 20
  store i64 %1097, i64* %3, align 8
  store i32 %1074, i32* %1072, align 4
  %1098 = load i64, i64* %3, align 8
  %1099 = add i64 %1098, -128
  store i64 %1099, i64* %3, align 8
  br label %block_.L_48a21e

block_.L_48a2a3.loopexit:                         ; preds = %block_.L_48a21e
  br label %block_.L_48a2a3

block_.L_48a2a3:                                  ; preds = %block_.L_48a2a3.loopexit, %block_48a27b
  %1100 = phi i64 [ %1069, %block_48a27b ], [ %955, %block_.L_48a2a3.loopexit ]
  %1101 = phi i64 [ %.pre76, %block_48a27b ], [ %912, %block_.L_48a2a3.loopexit ]
  %1102 = add i64 %1101, -3260
  %1103 = add i64 %1100, 7
  store i64 %1103, i64* %3, align 8
  %1104 = inttoptr i64 %1102 to i32*
  %1105 = load i32, i32* %1104, align 4
  store i8 0, i8* %14, align 1
  %1106 = and i32 %1105, 255
  %1107 = tail call i32 @llvm.ctpop.i32(i32 %1106)
  %1108 = trunc i32 %1107 to i8
  %1109 = and i8 %1108, 1
  %1110 = xor i8 %1109, 1
  store i8 %1110, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1111 = icmp eq i32 %1105, 0
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %30, align 1
  %1113 = lshr i32 %1105, 31
  %1114 = trunc i32 %1113 to i8
  store i8 %1114, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v106 = select i1 %1111, i64 13, i64 180
  %1115 = add i64 %1100, %.v106
  store i64 %1115, i64* %3, align 8
  br i1 %1111, label %block_48a2b0, label %block_.L_48a357

block_48a2b0:                                     ; preds = %block_.L_48a2a3
  %1116 = add i64 %1101, -32
  %1117 = add i64 %1115, 4
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i32*
  %1119 = load i32, i32* %1118, align 4
  %1120 = sext i32 %1119 to i64
  store i64 %1120, i64* %RAX.i739, align 8
  %1121 = shl nsw i64 %1120, 2
  %1122 = add i64 %1101, -3232
  %1123 = add i64 %1122, %1121
  %1124 = add i64 %1115, 11
  store i64 %1124, i64* %3, align 8
  %1125 = inttoptr i64 %1123 to i32*
  %1126 = load i32, i32* %1125, align 4
  %1127 = zext i32 %1126 to i64
  store i64 %1127, i64* %RCX.i737, align 8
  %1128 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %1129 = add i32 %1128, -1
  %1130 = shl i32 %1129, 1
  %1131 = zext i32 %1130 to i64
  store i64 %1131, i64* %RDX.i750, align 8
  %1132 = sub i32 %1126, %1130
  %1133 = icmp ult i32 %1126, %1130
  %1134 = zext i1 %1133 to i8
  store i8 %1134, i8* %14, align 1
  %1135 = and i32 %1132, 255
  %1136 = tail call i32 @llvm.ctpop.i32(i32 %1135)
  %1137 = trunc i32 %1136 to i8
  %1138 = and i8 %1137, 1
  %1139 = xor i8 %1138, 1
  store i8 %1139, i8* %21, align 1
  %1140 = xor i32 %1130, %1126
  %1141 = xor i32 %1140, %1132
  %1142 = lshr i32 %1141, 4
  %1143 = trunc i32 %1142 to i8
  %1144 = and i8 %1143, 1
  store i8 %1144, i8* %27, align 1
  %1145 = icmp eq i32 %1132, 0
  %1146 = zext i1 %1145 to i8
  store i8 %1146, i8* %30, align 1
  %1147 = lshr i32 %1132, 31
  %1148 = trunc i32 %1147 to i8
  store i8 %1148, i8* %33, align 1
  %1149 = lshr i32 %1126, 31
  %1150 = lshr i32 %1129, 30
  %1151 = and i32 %1150, 1
  %1152 = xor i32 %1151, %1149
  %1153 = xor i32 %1147, %1149
  %1154 = add nuw nsw i32 %1153, %1152
  %1155 = icmp eq i32 %1154, 2
  %1156 = zext i1 %1155 to i8
  store i8 %1156, i8* %39, align 1
  %1157 = icmp ne i8 %1148, 0
  %1158 = xor i1 %1157, %1155
  %.v107 = select i1 %1158, i64 31, i64 36
  %1159 = add i64 %1115, %.v107
  store i64 %1159, i64* %3, align 8
  br i1 %1158, label %block_48a2d0, label %block_.L_48a2d5

block_48a2d0:                                     ; preds = %block_48a2b0
  %1160 = add i64 %1159, 45
  store i64 %1160, i64* %3, align 8
  br label %block_.L_48a2fd

block_.L_48a2d5:                                  ; preds = %block_48a2b0
  store i64 ptrtoint (%G__0x582e3b_type* @G__0x582e3b to i64), i64* %RDI.i394, align 8
  store i64 636, i64* %RSI.i753, align 8
  store i64 ptrtoint (%G__0x5832cb_type* @G__0x5832cb to i64), i64* %RDX.i750, align 8
  store i64 4294967295, i64* %RAX.i739, align 8
  store i64 4294967295, i64* %RCX.i737, align 8
  store i64 4294967295, i64* %452, align 8
  %1161 = add i64 %1159, -229957
  %1162 = add i64 %1159, 40
  %1163 = load i64, i64* %6, align 8
  %1164 = add i64 %1163, -8
  %1165 = inttoptr i64 %1164 to i64*
  store i64 %1162, i64* %1165, align 8
  store i64 %1164, i64* %6, align 8
  store i64 %1161, i64* %3, align 8
  %call2_48a2f8 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %1161, %struct.Memory* %2)
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_48a2fd

block_.L_48a2fd:                                  ; preds = %block_.L_48a2d5, %block_48a2d0
  %1166 = phi i64 [ %.pre77, %block_.L_48a2d5 ], [ %1160, %block_48a2d0 ]
  store i64 ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64), i64* %RAX.i739, align 8
  %1167 = load i64, i64* %RBP.i, align 8
  %1168 = add i64 %1167, -3256
  %1169 = add i64 %1166, 17
  store i64 %1169, i64* %3, align 8
  %1170 = inttoptr i64 %1168 to i32*
  %1171 = load i32, i32* %1170, align 4
  %1172 = sext i32 %1171 to i64
  %1173 = mul nsw i64 %1172, 144
  store i64 %1173, i64* %RCX.i737, align 8
  %1174 = lshr i64 %1173, 63
  %1175 = add i64 %1173, ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64)
  store i64 %1175, i64* %RDX.i750, align 8
  %1176 = icmp ult i64 %1175, ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64)
  %1177 = icmp ult i64 %1175, %1173
  %1178 = or i1 %1176, %1177
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %14, align 1
  %1180 = trunc i64 %1175 to i32
  %1181 = and i32 %1180, 248
  %1182 = tail call i32 @llvm.ctpop.i32(i32 %1181)
  %1183 = trunc i32 %1182 to i8
  %1184 = and i8 %1183, 1
  %1185 = xor i8 %1184, 1
  store i8 %1185, i8* %21, align 1
  %1186 = xor i64 %1173, ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64)
  %1187 = xor i64 %1186, %1175
  %1188 = lshr i64 %1187, 4
  %1189 = trunc i64 %1188 to i8
  %1190 = and i8 %1189, 1
  store i8 %1190, i8* %27, align 1
  %1191 = icmp eq i64 %1175, 0
  %1192 = zext i1 %1191 to i8
  store i8 %1192, i8* %30, align 1
  %1193 = lshr i64 %1175, 63
  %1194 = trunc i64 %1193 to i8
  store i8 %1194, i8* %33, align 1
  %1195 = xor i64 %1193, lshr (i64 ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64), i64 63)
  %1196 = xor i64 %1193, %1174
  %1197 = add nuw nsw i64 %1195, %1196
  %1198 = icmp eq i64 %1197, 2
  %1199 = zext i1 %1198 to i8
  store i8 %1199, i8* %39, align 1
  %1200 = add i64 %1167, -3244
  %1201 = add i64 %1166, 37
  store i64 %1201, i64* %3, align 8
  %1202 = inttoptr i64 %1200 to i32*
  %1203 = load i32, i32* %1202, align 4
  %1204 = sext i32 %1203 to i64
  store i64 %1204, i64* %RCX.i737, align 8
  %1205 = shl nsw i64 %1204, 2
  %1206 = add i64 %1205, %1175
  %1207 = add i64 %1166, 40
  store i64 %1207, i64* %3, align 8
  %1208 = inttoptr i64 %1206 to i32*
  %1209 = load i32, i32* %1208, align 4
  %1210 = zext i32 %1209 to i64
  store i64 %1210, i64* %RSI.i753, align 8
  %1211 = add i64 %1167, -32
  %1212 = add i64 %1166, 44
  store i64 %1212, i64* %3, align 8
  %1213 = inttoptr i64 %1211 to i32*
  %1214 = load i32, i32* %1213, align 4
  %1215 = sext i32 %1214 to i64
  %1216 = mul nsw i64 %1215, 144
  store i64 %1216, i64* %RCX.i737, align 8
  %1217 = lshr i64 %1216, 63
  %1218 = load i64, i64* %RAX.i739, align 8
  %1219 = add i64 %1216, %1218
  store i64 %1219, i64* %RAX.i739, align 8
  %1220 = icmp ult i64 %1219, %1218
  %1221 = icmp ult i64 %1219, %1216
  %1222 = or i1 %1220, %1221
  %1223 = zext i1 %1222 to i8
  store i8 %1223, i8* %14, align 1
  %1224 = trunc i64 %1219 to i32
  %1225 = and i32 %1224, 255
  %1226 = tail call i32 @llvm.ctpop.i32(i32 %1225)
  %1227 = trunc i32 %1226 to i8
  %1228 = and i8 %1227, 1
  %1229 = xor i8 %1228, 1
  store i8 %1229, i8* %21, align 1
  %1230 = xor i64 %1216, %1218
  %1231 = xor i64 %1230, %1219
  %1232 = lshr i64 %1231, 4
  %1233 = trunc i64 %1232 to i8
  %1234 = and i8 %1233, 1
  store i8 %1234, i8* %27, align 1
  %1235 = icmp eq i64 %1219, 0
  %1236 = zext i1 %1235 to i8
  store i8 %1236, i8* %30, align 1
  %1237 = lshr i64 %1219, 63
  %1238 = trunc i64 %1237 to i8
  store i8 %1238, i8* %33, align 1
  %1239 = lshr i64 %1218, 63
  %1240 = xor i64 %1237, %1239
  %1241 = xor i64 %1237, %1217
  %1242 = add nuw nsw i64 %1240, %1241
  %1243 = icmp eq i64 %1242, 2
  %1244 = zext i1 %1243 to i8
  store i8 %1244, i8* %39, align 1
  %1245 = load i64, i64* %RBP.i, align 8
  %1246 = add i64 %1245, -32
  %1247 = add i64 %1166, 58
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1246 to i32*
  %1249 = load i32, i32* %1248, align 4
  %1250 = sext i32 %1249 to i64
  store i64 %1250, i64* %RCX.i737, align 8
  %1251 = shl nsw i64 %1250, 2
  %1252 = add i64 %1245, -3232
  %1253 = add i64 %1252, %1251
  %1254 = add i64 %1166, 66
  store i64 %1254, i64* %3, align 8
  %1255 = inttoptr i64 %1253 to i32*
  %1256 = load i32, i32* %1255, align 4
  %1257 = sext i32 %1256 to i64
  store i64 %1257, i64* %RCX.i737, align 8
  %1258 = shl nsw i64 %1257, 2
  %1259 = add i64 %1258, %1219
  %1260 = add i64 %1166, 69
  store i64 %1260, i64* %3, align 8
  %1261 = inttoptr i64 %1259 to i32*
  store i32 %1209, i32* %1261, align 4
  %1262 = load i64, i64* %RBP.i, align 8
  %1263 = add i64 %1262, -32
  %1264 = load i64, i64* %3, align 8
  %1265 = add i64 %1264, 4
  store i64 %1265, i64* %3, align 8
  %1266 = inttoptr i64 %1263 to i32*
  %1267 = load i32, i32* %1266, align 4
  %1268 = sext i32 %1267 to i64
  store i64 %1268, i64* %RAX.i739, align 8
  %1269 = shl nsw i64 %1268, 2
  %1270 = add i64 %1262, -3232
  %1271 = add i64 %1270, %1269
  %1272 = add i64 %1264, 11
  store i64 %1272, i64* %3, align 8
  %1273 = inttoptr i64 %1271 to i32*
  %1274 = load i32, i32* %1273, align 4
  %1275 = add i32 %1274, 1
  %1276 = zext i32 %1275 to i64
  store i64 %1276, i64* %RSI.i753, align 8
  %1277 = icmp eq i32 %1274, -1
  %1278 = icmp eq i32 %1275, 0
  %1279 = or i1 %1277, %1278
  %1280 = zext i1 %1279 to i8
  store i8 %1280, i8* %14, align 1
  %1281 = and i32 %1275, 255
  %1282 = tail call i32 @llvm.ctpop.i32(i32 %1281)
  %1283 = trunc i32 %1282 to i8
  %1284 = and i8 %1283, 1
  %1285 = xor i8 %1284, 1
  store i8 %1285, i8* %21, align 1
  %1286 = xor i32 %1275, %1274
  %1287 = lshr i32 %1286, 4
  %1288 = trunc i32 %1287 to i8
  %1289 = and i8 %1288, 1
  store i8 %1289, i8* %27, align 1
  %1290 = zext i1 %1278 to i8
  store i8 %1290, i8* %30, align 1
  %1291 = lshr i32 %1275, 31
  %1292 = trunc i32 %1291 to i8
  store i8 %1292, i8* %33, align 1
  %1293 = lshr i32 %1274, 31
  %1294 = xor i32 %1291, %1293
  %1295 = add nuw nsw i32 %1294, %1291
  %1296 = icmp eq i32 %1295, 2
  %1297 = zext i1 %1296 to i8
  store i8 %1297, i8* %39, align 1
  %1298 = add i64 %1264, 21
  store i64 %1298, i64* %3, align 8
  store i32 %1275, i32* %1273, align 4
  %.pre78 = load i64, i64* %3, align 8
  %.pre79 = load i64, i64* %RBP.i, align 8
  br label %block_.L_48a357

block_.L_48a357:                                  ; preds = %block_.L_48a2a3, %block_.L_48a2fd
  %1299 = phi i64 [ %.pre79, %block_.L_48a2fd ], [ %1101, %block_.L_48a2a3 ]
  %1300 = phi i64 [ %.pre78, %block_.L_48a2fd ], [ %1115, %block_.L_48a2a3 ]
  %1301 = add i64 %1299, -3244
  %1302 = add i64 %1300, 11
  store i64 %1302, i64* %3, align 8
  %1303 = inttoptr i64 %1301 to i32*
  %1304 = load i32, i32* %1303, align 4
  %1305 = add i32 %1304, 1
  %1306 = zext i32 %1305 to i64
  store i64 %1306, i64* %RAX.i739, align 8
  %1307 = icmp eq i32 %1304, -1
  %1308 = icmp eq i32 %1305, 0
  %1309 = or i1 %1307, %1308
  %1310 = zext i1 %1309 to i8
  store i8 %1310, i8* %14, align 1
  %1311 = and i32 %1305, 255
  %1312 = tail call i32 @llvm.ctpop.i32(i32 %1311)
  %1313 = trunc i32 %1312 to i8
  %1314 = and i8 %1313, 1
  %1315 = xor i8 %1314, 1
  store i8 %1315, i8* %21, align 1
  %1316 = xor i32 %1305, %1304
  %1317 = lshr i32 %1316, 4
  %1318 = trunc i32 %1317 to i8
  %1319 = and i8 %1318, 1
  store i8 %1319, i8* %27, align 1
  %1320 = zext i1 %1308 to i8
  store i8 %1320, i8* %30, align 1
  %1321 = lshr i32 %1305, 31
  %1322 = trunc i32 %1321 to i8
  store i8 %1322, i8* %33, align 1
  %1323 = lshr i32 %1304, 31
  %1324 = xor i32 %1321, %1323
  %1325 = add nuw nsw i32 %1324, %1321
  %1326 = icmp eq i32 %1325, 2
  %1327 = zext i1 %1326 to i8
  store i8 %1327, i8* %39, align 1
  %1328 = add i64 %1300, 20
  store i64 %1328, i64* %3, align 8
  store i32 %1305, i32* %1303, align 4
  %1329 = load i64, i64* %3, align 8
  %1330 = add i64 %1329, -379
  store i64 %1330, i64* %3, align 8
  br label %block_.L_48a1f0

block_.L_48a370:                                  ; preds = %block_.L_48a1f0
  %1331 = add i64 %902, 5
  store i64 %1331, i64* %3, align 8
  br label %block_.L_48a375

block_.L_48a375:                                  ; preds = %block_48a1ac, %block_.L_48a370, %block_48a17d
  %1332 = phi i64 [ %762, %block_48a17d ], [ %762, %block_48a1ac ], [ %859, %block_.L_48a370 ]
  %1333 = phi i64 [ %791, %block_48a17d ], [ %832, %block_48a1ac ], [ %1331, %block_.L_48a370 ]
  %1334 = add i64 %1332, -3252
  %1335 = add i64 %1333, 11
  store i64 %1335, i64* %3, align 8
  %1336 = inttoptr i64 %1334 to i32*
  %1337 = load i32, i32* %1336, align 4
  %1338 = add i32 %1337, 1
  %1339 = zext i32 %1338 to i64
  store i64 %1339, i64* %RAX.i739, align 8
  %1340 = icmp eq i32 %1337, -1
  %1341 = icmp eq i32 %1338, 0
  %1342 = or i1 %1340, %1341
  %1343 = zext i1 %1342 to i8
  store i8 %1343, i8* %14, align 1
  %1344 = and i32 %1338, 255
  %1345 = tail call i32 @llvm.ctpop.i32(i32 %1344)
  %1346 = trunc i32 %1345 to i8
  %1347 = and i8 %1346, 1
  %1348 = xor i8 %1347, 1
  store i8 %1348, i8* %21, align 1
  %1349 = xor i32 %1338, %1337
  %1350 = lshr i32 %1349, 4
  %1351 = trunc i32 %1350 to i8
  %1352 = and i8 %1351, 1
  store i8 %1352, i8* %27, align 1
  %1353 = zext i1 %1341 to i8
  store i8 %1353, i8* %30, align 1
  %1354 = lshr i32 %1338, 31
  %1355 = trunc i32 %1354 to i8
  store i8 %1355, i8* %33, align 1
  %1356 = lshr i32 %1337, 31
  %1357 = xor i32 %1354, %1356
  %1358 = add nuw nsw i32 %1357, %1354
  %1359 = icmp eq i32 %1358, 2
  %1360 = zext i1 %1359 to i8
  store i8 %1360, i8* %39, align 1
  %1361 = add i64 %1333, 20
  store i64 %1361, i64* %3, align 8
  store i32 %1338, i32* %1336, align 4
  %1362 = load i64, i64* %3, align 8
  %1363 = add i64 %1362, -537
  store i64 %1363, i64* %3, align 8
  br label %block_.L_48a170

block_.L_48a38e:                                  ; preds = %block_.L_48a170
  %1364 = add i64 %718, 5
  store i64 %1364, i64* %3, align 8
  br label %block_.L_48a393

block_.L_48a393:                                  ; preds = %block_.L_48a38e, %block_.L_48a161
  %1365 = phi i64 [ %595, %block_.L_48a161 ], [ %690, %block_.L_48a38e ]
  %storemerge33 = phi i64 [ %685, %block_.L_48a161 ], [ %1364, %block_.L_48a38e ]
  %1366 = add i64 %1365, -32
  %1367 = add i64 %storemerge33, 3
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1366 to i32*
  %1369 = load i32, i32* %1368, align 4
  %1370 = add i32 %1369, 1
  %1371 = zext i32 %1370 to i64
  store i64 %1371, i64* %RAX.i739, align 8
  %1372 = icmp eq i32 %1369, -1
  %1373 = icmp eq i32 %1370, 0
  %1374 = or i1 %1372, %1373
  %1375 = zext i1 %1374 to i8
  store i8 %1375, i8* %14, align 1
  %1376 = and i32 %1370, 255
  %1377 = tail call i32 @llvm.ctpop.i32(i32 %1376)
  %1378 = trunc i32 %1377 to i8
  %1379 = and i8 %1378, 1
  %1380 = xor i8 %1379, 1
  store i8 %1380, i8* %21, align 1
  %1381 = xor i32 %1370, %1369
  %1382 = lshr i32 %1381, 4
  %1383 = trunc i32 %1382 to i8
  %1384 = and i8 %1383, 1
  store i8 %1384, i8* %27, align 1
  %1385 = zext i1 %1373 to i8
  store i8 %1385, i8* %30, align 1
  %1386 = lshr i32 %1370, 31
  %1387 = trunc i32 %1386 to i8
  store i8 %1387, i8* %33, align 1
  %1388 = lshr i32 %1369, 31
  %1389 = xor i32 %1386, %1388
  %1390 = add nuw nsw i32 %1389, %1386
  %1391 = icmp eq i32 %1390, 2
  %1392 = zext i1 %1391 to i8
  store i8 %1392, i8* %39, align 1
  %1393 = add i64 %storemerge33, 9
  store i64 %1393, i64* %3, align 8
  store i32 %1370, i32* %1368, align 4
  %1394 = load i64, i64* %3, align 8
  %1395 = add i64 %1394, -623
  store i64 %1395, i64* %3, align 8
  br label %block_.L_48a12d

block_.L_48a3a1:                                  ; preds = %block_.L_48a12d
  %1396 = add i64 %624, -720
  store i64 %1396, i64* %3, align 8
  br label %block_.L_48a0d1

block_48a3b0:                                     ; preds = %block_48a108
  %1397 = add i64 %517, -32
  %1398 = add i64 %555, 7
  store i64 %1398, i64* %3, align 8
  %1399 = inttoptr i64 %1397 to i32*
  store i32 21, i32* %1399, align 4
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %1401 = bitcast [32 x %union.VectorReg]* %1400 to i8*
  %1402 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1400, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %1404 = bitcast i64* %1403 to double*
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %1406 = bitcast %union.VectorReg* %1405 to double*
  %1407 = bitcast [32 x %union.VectorReg]* %1400 to double*
  %1408 = bitcast [32 x %union.VectorReg]* %1400 to float*
  %1409 = getelementptr inbounds i8, i8* %1401, i64 4
  %1410 = bitcast i8* %1409 to i32*
  %1411 = bitcast i64* %1403 to i32*
  %1412 = getelementptr inbounds i8, i8* %1401, i64 12
  %1413 = bitcast i8* %1412 to i32*
  %1414 = bitcast [32 x %union.VectorReg]* %1400 to <2 x float>*
  %.pre64 = load i64, i64* %3, align 8
  br label %block_.L_48a3b7

block_.L_48a3b7:                                  ; preds = %block_.L_48a4da, %block_48a3b0
  %1415 = phi i64 [ %1755, %block_.L_48a4da ], [ %.pre64, %block_48a3b0 ]
  %1416 = load i64, i64* %RBP.i, align 8
  %1417 = add i64 %1416, -32
  %1418 = add i64 %1415, 7
  store i64 %1418, i64* %3, align 8
  %1419 = inttoptr i64 %1417 to i32*
  %1420 = load i32, i32* %1419, align 4
  %1421 = add i32 %1420, -400
  %1422 = icmp ult i32 %1420, 400
  %1423 = zext i1 %1422 to i8
  store i8 %1423, i8* %14, align 1
  %1424 = and i32 %1421, 255
  %1425 = tail call i32 @llvm.ctpop.i32(i32 %1424)
  %1426 = trunc i32 %1425 to i8
  %1427 = and i8 %1426, 1
  %1428 = xor i8 %1427, 1
  store i8 %1428, i8* %21, align 1
  %1429 = xor i32 %1420, 16
  %1430 = xor i32 %1429, %1421
  %1431 = lshr i32 %1430, 4
  %1432 = trunc i32 %1431 to i8
  %1433 = and i8 %1432, 1
  store i8 %1433, i8* %27, align 1
  %1434 = icmp eq i32 %1421, 0
  %1435 = zext i1 %1434 to i8
  store i8 %1435, i8* %30, align 1
  %1436 = lshr i32 %1421, 31
  %1437 = trunc i32 %1436 to i8
  store i8 %1437, i8* %33, align 1
  %1438 = lshr i32 %1420, 31
  %1439 = xor i32 %1436, %1438
  %1440 = add nuw nsw i32 %1439, %1438
  %1441 = icmp eq i32 %1440, 2
  %1442 = zext i1 %1441 to i8
  store i8 %1442, i8* %39, align 1
  %1443 = icmp ne i8 %1437, 0
  %1444 = xor i1 %1443, %1441
  %.v91 = select i1 %1444, i64 13, i64 305
  %1445 = add i64 %1415, %.v91
  store i64 %1445, i64* %3, align 8
  br i1 %1444, label %block_48a3c4, label %block_.L_48a4e8

block_48a3c4:                                     ; preds = %block_.L_48a3b7
  %1446 = add i64 %1445, 4
  store i64 %1446, i64* %3, align 8
  %1447 = load i32, i32* %1419, align 4
  %1448 = sext i32 %1447 to i64
  store i64 %1448, i64* %RAX.i739, align 8
  %1449 = add nsw i64 %1448, 12099168
  %1450 = add i64 %1445, 12
  store i64 %1450, i64* %3, align 8
  %1451 = inttoptr i64 %1449 to i8*
  %1452 = load i8, i8* %1451, align 1
  %1453 = zext i8 %1452 to i64
  store i64 %1453, i64* %RCX.i737, align 8
  %1454 = zext i8 %1452 to i32
  %1455 = add nsw i32 %1454, -3
  %1456 = icmp ult i8 %1452, 3
  %1457 = zext i1 %1456 to i8
  store i8 %1457, i8* %14, align 1
  %1458 = and i32 %1455, 255
  %1459 = tail call i32 @llvm.ctpop.i32(i32 %1458)
  %1460 = trunc i32 %1459 to i8
  %1461 = and i8 %1460, 1
  %1462 = xor i8 %1461, 1
  store i8 %1462, i8* %21, align 1
  %1463 = xor i32 %1455, %1454
  %1464 = lshr i32 %1463, 4
  %1465 = trunc i32 %1464 to i8
  %1466 = and i8 %1465, 1
  store i8 %1466, i8* %27, align 1
  %1467 = icmp eq i32 %1455, 0
  %1468 = zext i1 %1467 to i8
  store i8 %1468, i8* %30, align 1
  %1469 = lshr i32 %1455, 31
  %1470 = trunc i32 %1469 to i8
  store i8 %1470, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v96 = select i1 %1467, i64 21, i64 26
  %1471 = add i64 %1445, %.v96
  store i64 %1471, i64* %3, align 8
  br i1 %1467, label %block_48a3d9, label %block_.L_48a3de

block_48a3d9:                                     ; preds = %block_48a3c4
  %1472 = add i64 %1471, 257
  br label %block_.L_48a4da

block_.L_48a3de:                                  ; preds = %block_48a3c4
  %1473 = add i64 %1416, -3244
  %1474 = add i64 %1471, 10
  store i64 %1474, i64* %3, align 8
  %1475 = inttoptr i64 %1473 to i32*
  store i32 0, i32* %1475, align 4
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_48a3e8

block_.L_48a3e8:                                  ; preds = %block_.L_48a4bc, %block_.L_48a3de
  %1476 = phi i64 [ %1723, %block_.L_48a4bc ], [ %.pre67, %block_.L_48a3de ]
  %1477 = load i64, i64* %RBP.i, align 8
  %1478 = add i64 %1477, -3244
  %1479 = add i64 %1476, 6
  store i64 %1479, i64* %3, align 8
  %1480 = inttoptr i64 %1478 to i32*
  %1481 = load i32, i32* %1480, align 4
  %1482 = zext i32 %1481 to i64
  store i64 %1482, i64* %RAX.i739, align 8
  %1483 = add i64 %1477, -32
  %1484 = add i64 %1476, 10
  store i64 %1484, i64* %3, align 8
  %1485 = inttoptr i64 %1483 to i32*
  %1486 = load i32, i32* %1485, align 4
  %1487 = sext i32 %1486 to i64
  store i64 %1487, i64* %RCX.i737, align 8
  %1488 = shl nsw i64 %1487, 2
  %1489 = add nsw i64 %1488, -3232
  %1490 = add i64 %1489, %1477
  %1491 = add i64 %1476, 17
  store i64 %1491, i64* %3, align 8
  %1492 = inttoptr i64 %1490 to i32*
  %1493 = load i32, i32* %1492, align 4
  %1494 = sub i32 %1481, %1493
  %1495 = icmp ult i32 %1481, %1493
  %1496 = zext i1 %1495 to i8
  store i8 %1496, i8* %14, align 1
  %1497 = and i32 %1494, 255
  %1498 = tail call i32 @llvm.ctpop.i32(i32 %1497)
  %1499 = trunc i32 %1498 to i8
  %1500 = and i8 %1499, 1
  %1501 = xor i8 %1500, 1
  store i8 %1501, i8* %21, align 1
  %1502 = xor i32 %1493, %1481
  %1503 = xor i32 %1502, %1494
  %1504 = lshr i32 %1503, 4
  %1505 = trunc i32 %1504 to i8
  %1506 = and i8 %1505, 1
  store i8 %1506, i8* %27, align 1
  %1507 = icmp eq i32 %1494, 0
  %1508 = zext i1 %1507 to i8
  store i8 %1508, i8* %30, align 1
  %1509 = lshr i32 %1494, 31
  %1510 = trunc i32 %1509 to i8
  store i8 %1510, i8* %33, align 1
  %1511 = lshr i32 %1481, 31
  %1512 = lshr i32 %1493, 31
  %1513 = xor i32 %1512, %1511
  %1514 = xor i32 %1509, %1511
  %1515 = add nuw nsw i32 %1514, %1513
  %1516 = icmp eq i32 %1515, 2
  %1517 = zext i1 %1516 to i8
  store i8 %1517, i8* %39, align 1
  %1518 = icmp ne i8 %1510, 0
  %1519 = xor i1 %1518, %1516
  %.v97 = select i1 %1519, i64 23, i64 237
  %1520 = add i64 %1476, %.v97
  store i64 %1520, i64* %3, align 8
  br i1 %1519, label %block_48a3ff, label %block_.L_48a4d5

block_48a3ff:                                     ; preds = %block_.L_48a3e8
  store i64 ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64), i64* %RAX.i739, align 8
  %1521 = add i64 %1520, 14
  store i64 %1521, i64* %3, align 8
  %1522 = load i32, i32* %1485, align 4
  %1523 = sext i32 %1522 to i64
  %1524 = mul nsw i64 %1523, 144
  store i64 %1524, i64* %RCX.i737, align 8
  %1525 = lshr i64 %1524, 63
  %1526 = add i64 %1524, ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64)
  store i64 %1526, i64* %RAX.i739, align 8
  %1527 = icmp ult i64 %1526, ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64)
  %1528 = icmp ult i64 %1526, %1524
  %1529 = or i1 %1527, %1528
  %1530 = zext i1 %1529 to i8
  store i8 %1530, i8* %14, align 1
  %1531 = trunc i64 %1526 to i32
  %1532 = and i32 %1531, 248
  %1533 = tail call i32 @llvm.ctpop.i32(i32 %1532)
  %1534 = trunc i32 %1533 to i8
  %1535 = and i8 %1534, 1
  %1536 = xor i8 %1535, 1
  store i8 %1536, i8* %21, align 1
  %1537 = xor i64 %1524, ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64)
  %1538 = xor i64 %1537, %1526
  %1539 = lshr i64 %1538, 4
  %1540 = trunc i64 %1539 to i8
  %1541 = and i8 %1540, 1
  store i8 %1541, i8* %27, align 1
  %1542 = icmp eq i64 %1526, 0
  %1543 = zext i1 %1542 to i8
  store i8 %1543, i8* %30, align 1
  %1544 = lshr i64 %1526, 63
  %1545 = trunc i64 %1544 to i8
  store i8 %1545, i8* %33, align 1
  %1546 = xor i64 %1544, lshr (i64 ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64), i64 63)
  %1547 = xor i64 %1544, %1525
  %1548 = add nuw nsw i64 %1546, %1547
  %1549 = icmp eq i64 %1548, 2
  %1550 = zext i1 %1549 to i8
  store i8 %1550, i8* %39, align 1
  %1551 = add i64 %1520, 31
  store i64 %1551, i64* %3, align 8
  %1552 = load i32, i32* %1480, align 4
  %1553 = sext i32 %1552 to i64
  store i64 %1553, i64* %RCX.i737, align 8
  %1554 = shl nsw i64 %1553, 2
  %1555 = add i64 %1554, %1526
  %1556 = add i64 %1520, 34
  store i64 %1556, i64* %3, align 8
  %1557 = inttoptr i64 %1555 to i32*
  %1558 = load i32, i32* %1557, align 4
  %1559 = zext i32 %1558 to i64
  store i64 %1559, i64* %RDX.i750, align 8
  %1560 = add i64 %1477, -3264
  %1561 = add i64 %1520, 40
  store i64 %1561, i64* %3, align 8
  %1562 = inttoptr i64 %1560 to i32*
  store i32 %1558, i32* %1562, align 4
  %1563 = load i64, i64* %RBP.i, align 8
  %1564 = add i64 %1563, -32
  %1565 = load i64, i64* %3, align 8
  %1566 = add i64 %1565, 4
  store i64 %1566, i64* %3, align 8
  %1567 = inttoptr i64 %1564 to i32*
  %1568 = load i32, i32* %1567, align 4
  %1569 = sext i32 %1568 to i64
  store i64 %1569, i64* %RAX.i739, align 8
  %1570 = add nsw i64 %1569, 12099168
  %1571 = add i64 %1565, 12
  store i64 %1571, i64* %3, align 8
  %1572 = inttoptr i64 %1570 to i8*
  %1573 = load i8, i8* %1572, align 1
  %1574 = zext i8 %1573 to i64
  store i64 %1574, i64* %RDX.i750, align 8
  %1575 = zext i8 %1573 to i32
  store i8 0, i8* %14, align 1
  %1576 = tail call i32 @llvm.ctpop.i32(i32 %1575)
  %1577 = trunc i32 %1576 to i8
  %1578 = and i8 %1577, 1
  %1579 = xor i8 %1578, 1
  store i8 %1579, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1580 = icmp eq i8 %1573, 0
  %1581 = zext i1 %1580 to i8
  store i8 %1581, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v98 = select i1 %1580, i64 21, i64 96
  %1582 = add i64 %1565, %.v98
  store i64 %1582, i64* %3, align 8
  br i1 %1580, label %block_48a43c, label %block_.L_48a487

block_48a43c:                                     ; preds = %block_48a3ff
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i739, align 8
  %1583 = add i64 %1582, add (i64 ptrtoint (%G_0x58b3a__rip__type* @G_0x58b3a__rip_ to i64), i64 10)
  %1584 = add i64 %1582, 18
  store i64 %1584, i64* %3, align 8
  %1585 = inttoptr i64 %1583 to i64*
  %1586 = load i64, i64* %1585, align 8
  store i64 %1586, i64* %1402, align 1
  store double 0.000000e+00, double* %1404, align 1
  %1587 = add i64 %1582, 22
  store i64 %1587, i64* %3, align 8
  %1588 = load i32, i32* %1567, align 4
  %1589 = sext i32 %1588 to i64
  store i64 %1589, i64* %RCX.i737, align 8
  %1590 = shl nsw i64 %1589, 2
  %1591 = add i64 %1563, -3232
  %1592 = add i64 %1591, %1590
  %1593 = add i64 %1582, 31
  store i64 %1593, i64* %3, align 8
  %1594 = inttoptr i64 %1592 to i32*
  %1595 = load i32, i32* %1594, align 4
  %1596 = sitofp i32 %1595 to double
  store double %1596, double* %1406, align 1
  %1597 = bitcast i64 %1586 to double
  %1598 = fdiv double %1597, %1596
  store double %1598, double* %1407, align 1
  store i64 0, i64* %1403, align 1
  %1599 = add i64 %1563, -3264
  %1600 = add i64 %1582, 42
  store i64 %1600, i64* %3, align 8
  %1601 = inttoptr i64 %1599 to i32*
  %1602 = load i32, i32* %1601, align 4
  %1603 = sext i32 %1602 to i64
  %1604 = mul nsw i64 %1603, 380
  store i64 %1604, i64* %RCX.i737, align 8
  %1605 = lshr i64 %1604, 63
  %1606 = add i64 %1604, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %1606, i64* %RAX.i739, align 8
  %1607 = icmp ult i64 %1606, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1608 = icmp ult i64 %1606, %1604
  %1609 = or i1 %1607, %1608
  %1610 = zext i1 %1609 to i8
  store i8 %1610, i8* %14, align 1
  %1611 = trunc i64 %1606 to i32
  %1612 = and i32 %1611, 252
  %1613 = tail call i32 @llvm.ctpop.i32(i32 %1612)
  %1614 = trunc i32 %1613 to i8
  %1615 = and i8 %1614, 1
  %1616 = xor i8 %1615, 1
  store i8 %1616, i8* %21, align 1
  %1617 = xor i64 %1604, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1618 = xor i64 %1617, %1606
  %1619 = lshr i64 %1618, 4
  %1620 = trunc i64 %1619 to i8
  %1621 = and i8 %1620, 1
  store i8 %1621, i8* %27, align 1
  %1622 = icmp eq i64 %1606, 0
  %1623 = zext i1 %1622 to i8
  store i8 %1623, i8* %30, align 1
  %1624 = lshr i64 %1606, 63
  %1625 = trunc i64 %1624 to i8
  store i8 %1625, i8* %33, align 1
  %1626 = xor i64 %1624, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %1627 = xor i64 %1624, %1605
  %1628 = add nuw nsw i64 %1626, %1627
  %1629 = icmp eq i64 %1628, 2
  %1630 = zext i1 %1629 to i8
  store i8 %1630, i8* %39, align 1
  %1631 = add i64 %1604, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 8)
  %1632 = add i64 %1582, 57
  store i64 %1632, i64* %3, align 8
  %1633 = inttoptr i64 %1631 to float*
  %1634 = load float, float* %1633, align 4
  %1635 = fpext float %1634 to double
  %1636 = fadd double %1635, %1598
  store double %1636, double* %1406, align 1
  %.cast = bitcast double %1598 to <2 x i32>
  %1637 = fptrunc double %1636 to float
  store float %1637, float* %1408, align 1
  %1638 = extractelement <2 x i32> %.cast, i32 1
  store i32 %1638, i32* %1410, align 1
  store i32 0, i32* %1411, align 1
  store i32 0, i32* %1413, align 1
  %1639 = add i64 %1582, 70
  store i64 %1639, i64* %3, align 8
  %1640 = load <2 x float>, <2 x float>* %1414, align 1
  %1641 = extractelement <2 x float> %1640, i32 0
  store float %1641, float* %1633, align 4
  %1642 = load i64, i64* %3, align 8
  %1643 = add i64 %1642, 58
  store i64 %1643, i64* %3, align 8
  br label %block_.L_48a4bc

block_.L_48a487:                                  ; preds = %block_48a3ff
  %1644 = add i64 %1582, ptrtoint (%G_0x58ad1__rip__type* @G_0x58ad1__rip_ to i64)
  %1645 = add i64 %1582, 8
  store i64 %1645, i64* %3, align 8
  %1646 = inttoptr i64 %1644 to i64*
  %1647 = load i64, i64* %1646, align 8
  store i64 %1647, i64* %1402, align 1
  store double 0.000000e+00, double* %1404, align 1
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i739, align 8
  %1648 = add i64 %1563, -3264
  %1649 = add i64 %1582, 25
  store i64 %1649, i64* %3, align 8
  %1650 = inttoptr i64 %1648 to i32*
  %1651 = load i32, i32* %1650, align 4
  %1652 = sext i32 %1651 to i64
  %1653 = mul nsw i64 %1652, 380
  store i64 %1653, i64* %RCX.i737, align 8
  %1654 = lshr i64 %1653, 63
  %1655 = add i64 %1653, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %1655, i64* %RAX.i739, align 8
  %1656 = icmp ult i64 %1655, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1657 = icmp ult i64 %1655, %1653
  %1658 = or i1 %1656, %1657
  %1659 = zext i1 %1658 to i8
  store i8 %1659, i8* %14, align 1
  %1660 = trunc i64 %1655 to i32
  %1661 = and i32 %1660, 252
  %1662 = tail call i32 @llvm.ctpop.i32(i32 %1661)
  %1663 = trunc i32 %1662 to i8
  %1664 = and i8 %1663, 1
  %1665 = xor i8 %1664, 1
  store i8 %1665, i8* %21, align 1
  %1666 = xor i64 %1653, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1667 = xor i64 %1666, %1655
  %1668 = lshr i64 %1667, 4
  %1669 = trunc i64 %1668 to i8
  %1670 = and i8 %1669, 1
  store i8 %1670, i8* %27, align 1
  %1671 = icmp eq i64 %1655, 0
  %1672 = zext i1 %1671 to i8
  store i8 %1672, i8* %30, align 1
  %1673 = lshr i64 %1655, 63
  %1674 = trunc i64 %1673 to i8
  store i8 %1674, i8* %33, align 1
  %1675 = xor i64 %1673, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %1676 = xor i64 %1673, %1654
  %1677 = add nuw nsw i64 %1675, %1676
  %1678 = icmp eq i64 %1677, 2
  %1679 = zext i1 %1678 to i8
  store i8 %1679, i8* %39, align 1
  %1680 = add i64 %1653, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 8)
  %1681 = add i64 %1582, 40
  store i64 %1681, i64* %3, align 8
  %1682 = inttoptr i64 %1680 to float*
  %1683 = load float, float* %1682, align 4
  %1684 = fpext float %1683 to double
  %1685 = bitcast i64 %1647 to double
  %1686 = fadd double %1684, %1685
  store double %1686, double* %1406, align 1
  %.cast48 = bitcast i64 %1647 to <2 x i32>
  %1687 = fptrunc double %1686 to float
  store float %1687, float* %1408, align 1
  %1688 = extractelement <2 x i32> %.cast48, i32 1
  store i32 %1688, i32* %1410, align 1
  store i32 0, i32* %1411, align 1
  store i32 0, i32* %1413, align 1
  %1689 = add i64 %1582, 53
  store i64 %1689, i64* %3, align 8
  %1690 = load <2 x float>, <2 x float>* %1414, align 1
  %1691 = extractelement <2 x float> %1690, i32 0
  store float %1691, float* %1682, align 4
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_48a4bc

block_.L_48a4bc:                                  ; preds = %block_.L_48a487, %block_48a43c
  %1692 = phi i64 [ %.pre68, %block_.L_48a487 ], [ %1643, %block_48a43c ]
  %1693 = load i64, i64* %RBP.i, align 8
  %1694 = add i64 %1693, -3244
  %1695 = add i64 %1692, 11
  store i64 %1695, i64* %3, align 8
  %1696 = inttoptr i64 %1694 to i32*
  %1697 = load i32, i32* %1696, align 4
  %1698 = add i32 %1697, 1
  %1699 = zext i32 %1698 to i64
  store i64 %1699, i64* %RAX.i739, align 8
  %1700 = icmp eq i32 %1697, -1
  %1701 = icmp eq i32 %1698, 0
  %1702 = or i1 %1700, %1701
  %1703 = zext i1 %1702 to i8
  store i8 %1703, i8* %14, align 1
  %1704 = and i32 %1698, 255
  %1705 = tail call i32 @llvm.ctpop.i32(i32 %1704)
  %1706 = trunc i32 %1705 to i8
  %1707 = and i8 %1706, 1
  %1708 = xor i8 %1707, 1
  store i8 %1708, i8* %21, align 1
  %1709 = xor i32 %1698, %1697
  %1710 = lshr i32 %1709, 4
  %1711 = trunc i32 %1710 to i8
  %1712 = and i8 %1711, 1
  store i8 %1712, i8* %27, align 1
  %1713 = zext i1 %1701 to i8
  store i8 %1713, i8* %30, align 1
  %1714 = lshr i32 %1698, 31
  %1715 = trunc i32 %1714 to i8
  store i8 %1715, i8* %33, align 1
  %1716 = lshr i32 %1697, 31
  %1717 = xor i32 %1714, %1716
  %1718 = add nuw nsw i32 %1717, %1714
  %1719 = icmp eq i32 %1718, 2
  %1720 = zext i1 %1719 to i8
  store i8 %1720, i8* %39, align 1
  %1721 = add i64 %1692, 20
  store i64 %1721, i64* %3, align 8
  store i32 %1698, i32* %1696, align 4
  %1722 = load i64, i64* %3, align 8
  %1723 = add i64 %1722, -232
  store i64 %1723, i64* %3, align 8
  br label %block_.L_48a3e8

block_.L_48a4d5:                                  ; preds = %block_.L_48a3e8
  %1724 = add i64 %1520, 5
  store i64 %1724, i64* %3, align 8
  br label %block_.L_48a4da

block_.L_48a4da:                                  ; preds = %block_.L_48a4d5, %block_48a3d9
  %1725 = phi i64 [ %1416, %block_48a3d9 ], [ %1477, %block_.L_48a4d5 ]
  %storemerge30 = phi i64 [ %1472, %block_48a3d9 ], [ %1724, %block_.L_48a4d5 ]
  %1726 = add i64 %1725, -32
  %1727 = add i64 %storemerge30, 3
  store i64 %1727, i64* %3, align 8
  %1728 = inttoptr i64 %1726 to i32*
  %1729 = load i32, i32* %1728, align 4
  %1730 = add i32 %1729, 1
  %1731 = zext i32 %1730 to i64
  store i64 %1731, i64* %RAX.i739, align 8
  %1732 = icmp eq i32 %1729, -1
  %1733 = icmp eq i32 %1730, 0
  %1734 = or i1 %1732, %1733
  %1735 = zext i1 %1734 to i8
  store i8 %1735, i8* %14, align 1
  %1736 = and i32 %1730, 255
  %1737 = tail call i32 @llvm.ctpop.i32(i32 %1736)
  %1738 = trunc i32 %1737 to i8
  %1739 = and i8 %1738, 1
  %1740 = xor i8 %1739, 1
  store i8 %1740, i8* %21, align 1
  %1741 = xor i32 %1730, %1729
  %1742 = lshr i32 %1741, 4
  %1743 = trunc i32 %1742 to i8
  %1744 = and i8 %1743, 1
  store i8 %1744, i8* %27, align 1
  %1745 = zext i1 %1733 to i8
  store i8 %1745, i8* %30, align 1
  %1746 = lshr i32 %1730, 31
  %1747 = trunc i32 %1746 to i8
  store i8 %1747, i8* %33, align 1
  %1748 = lshr i32 %1729, 31
  %1749 = xor i32 %1746, %1748
  %1750 = add nuw nsw i32 %1749, %1746
  %1751 = icmp eq i32 %1750, 2
  %1752 = zext i1 %1751 to i8
  store i8 %1752, i8* %39, align 1
  %1753 = add i64 %storemerge30, 9
  store i64 %1753, i64* %3, align 8
  store i32 %1730, i32* %1728, align 4
  %1754 = load i64, i64* %3, align 8
  %1755 = add i64 %1754, -300
  store i64 %1755, i64* %3, align 8
  br label %block_.L_48a3b7

block_.L_48a4e8:                                  ; preds = %block_.L_48a3b7
  %1756 = add i64 %1445, 7
  store i64 %1756, i64* %3, align 8
  store i32 21, i32* %1419, align 4
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_48a4ef

block_.L_48a4ef:                                  ; preds = %block_.L_48a542, %block_.L_48a4e8
  %1757 = phi i64 [ %.pre65, %block_.L_48a4e8 ], [ %1906, %block_.L_48a542 ]
  %1758 = load i64, i64* %RBP.i, align 8
  %1759 = add i64 %1758, -32
  %1760 = add i64 %1757, 7
  store i64 %1760, i64* %3, align 8
  %1761 = inttoptr i64 %1759 to i32*
  %1762 = load i32, i32* %1761, align 4
  %1763 = add i32 %1762, -400
  %1764 = icmp ult i32 %1762, 400
  %1765 = zext i1 %1764 to i8
  store i8 %1765, i8* %14, align 1
  %1766 = and i32 %1763, 255
  %1767 = tail call i32 @llvm.ctpop.i32(i32 %1766)
  %1768 = trunc i32 %1767 to i8
  %1769 = and i8 %1768, 1
  %1770 = xor i8 %1769, 1
  store i8 %1770, i8* %21, align 1
  %1771 = xor i32 %1762, 16
  %1772 = xor i32 %1771, %1763
  %1773 = lshr i32 %1772, 4
  %1774 = trunc i32 %1773 to i8
  %1775 = and i8 %1774, 1
  store i8 %1775, i8* %27, align 1
  %1776 = icmp eq i32 %1763, 0
  %1777 = zext i1 %1776 to i8
  store i8 %1777, i8* %30, align 1
  %1778 = lshr i32 %1763, 31
  %1779 = trunc i32 %1778 to i8
  store i8 %1779, i8* %33, align 1
  %1780 = lshr i32 %1762, 31
  %1781 = xor i32 %1778, %1780
  %1782 = add nuw nsw i32 %1781, %1780
  %1783 = icmp eq i32 %1782, 2
  %1784 = zext i1 %1783 to i8
  store i8 %1784, i8* %39, align 1
  %1785 = icmp ne i8 %1779, 0
  %1786 = xor i1 %1785, %1783
  %.v92 = select i1 %1786, i64 13, i64 102
  %1787 = add i64 %1757, %.v92
  store i64 %1787, i64* %3, align 8
  br i1 %1786, label %block_48a4fc, label %block_.L_48a555

block_48a4fc:                                     ; preds = %block_.L_48a4ef
  %1788 = add i64 %1787, 4
  store i64 %1788, i64* %3, align 8
  %1789 = load i32, i32* %1761, align 4
  %1790 = sext i32 %1789 to i64
  store i64 %1790, i64* %RAX.i739, align 8
  %1791 = add nsw i64 %1790, 12099168
  %1792 = add i64 %1787, 12
  store i64 %1792, i64* %3, align 8
  %1793 = inttoptr i64 %1791 to i8*
  %1794 = load i8, i8* %1793, align 1
  %1795 = zext i8 %1794 to i64
  store i64 %1795, i64* %RCX.i737, align 8
  %1796 = zext i8 %1794 to i32
  %1797 = add nsw i32 %1796, -1
  %1798 = icmp eq i8 %1794, 0
  %1799 = zext i1 %1798 to i8
  store i8 %1799, i8* %14, align 1
  %1800 = and i32 %1797, 255
  %1801 = tail call i32 @llvm.ctpop.i32(i32 %1800)
  %1802 = trunc i32 %1801 to i8
  %1803 = and i8 %1802, 1
  %1804 = xor i8 %1803, 1
  store i8 %1804, i8* %21, align 1
  %1805 = xor i32 %1797, %1796
  %1806 = lshr i32 %1805, 4
  %1807 = trunc i32 %1806 to i8
  %1808 = and i8 %1807, 1
  store i8 %1808, i8* %27, align 1
  %1809 = icmp eq i32 %1797, 0
  %1810 = zext i1 %1809 to i8
  store i8 %1810, i8* %30, align 1
  %1811 = lshr i32 %1797, 31
  %1812 = trunc i32 %1811 to i8
  store i8 %1812, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v93 = select i1 %1809, i64 42, i64 21
  %1813 = add i64 %1787, %.v93
  store i64 %1813, i64* %3, align 8
  br i1 %1809, label %block_.L_48a526, label %block_48a511

block_48a511:                                     ; preds = %block_48a4fc
  %1814 = add i64 %1813, 4
  store i64 %1814, i64* %3, align 8
  %1815 = load i32, i32* %1761, align 4
  %1816 = sext i32 %1815 to i64
  store i64 %1816, i64* %RAX.i739, align 8
  %1817 = add nsw i64 %1816, 12099168
  %1818 = add i64 %1813, 12
  store i64 %1818, i64* %3, align 8
  %1819 = inttoptr i64 %1817 to i8*
  %1820 = load i8, i8* %1819, align 1
  %1821 = zext i8 %1820 to i64
  store i64 %1821, i64* %RCX.i737, align 8
  %1822 = zext i8 %1820 to i32
  %1823 = add nsw i32 %1822, -2
  %1824 = icmp ult i8 %1820, 2
  %1825 = zext i1 %1824 to i8
  store i8 %1825, i8* %14, align 1
  %1826 = and i32 %1823, 255
  %1827 = tail call i32 @llvm.ctpop.i32(i32 %1826)
  %1828 = trunc i32 %1827 to i8
  %1829 = and i8 %1828, 1
  %1830 = xor i8 %1829, 1
  store i8 %1830, i8* %21, align 1
  %1831 = xor i32 %1823, %1822
  %1832 = lshr i32 %1831, 4
  %1833 = trunc i32 %1832 to i8
  %1834 = and i8 %1833, 1
  store i8 %1834, i8* %27, align 1
  %1835 = icmp eq i32 %1823, 0
  %1836 = zext i1 %1835 to i8
  store i8 %1836, i8* %30, align 1
  %1837 = lshr i32 %1823, 31
  %1838 = trunc i32 %1837 to i8
  store i8 %1838, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v94 = select i1 %1835, i64 21, i64 49
  %1839 = add i64 %1813, %.v94
  store i64 %1839, i64* %3, align 8
  br i1 %1835, label %block_.L_48a526, label %block_.L_48a542

block_.L_48a526:                                  ; preds = %block_48a511, %block_48a4fc
  %1840 = phi i64 [ %1839, %block_48a511 ], [ %1813, %block_48a4fc ]
  %1841 = add i64 %1840, 3
  store i64 %1841, i64* %3, align 8
  %1842 = load i32, i32* %1761, align 4
  %1843 = zext i32 %1842 to i64
  store i64 %1843, i64* %RDI.i394, align 8
  %1844 = add i64 %1840, 6
  store i64 %1844, i64* %3, align 8
  %1845 = load i32, i32* %1761, align 4
  %1846 = zext i32 %1845 to i64
  store i64 %1846, i64* %RSI.i753, align 8
  %1847 = add i64 %1840, -9270
  %1848 = add i64 %1840, 11
  %1849 = load i64, i64* %6, align 8
  %1850 = add i64 %1849, -8
  %1851 = inttoptr i64 %1850 to i64*
  store i64 %1848, i64* %1851, align 8
  store i64 %1850, i64* %6, align 8
  store i64 %1847, i64* %3, align 8
  %call2_48a52c = tail call %struct.Memory* @sub_4880f0.is_worm_origin(%struct.State* nonnull %0, i64 %1847, %struct.Memory* %2)
  %1852 = load i32, i32* %EAX.i718, align 4
  %1853 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1854 = and i32 %1852, 255
  %1855 = tail call i32 @llvm.ctpop.i32(i32 %1854)
  %1856 = trunc i32 %1855 to i8
  %1857 = and i8 %1856, 1
  %1858 = xor i8 %1857, 1
  store i8 %1858, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1859 = icmp eq i32 %1852, 0
  %1860 = zext i1 %1859 to i8
  store i8 %1860, i8* %30, align 1
  %1861 = lshr i32 %1852, 31
  %1862 = trunc i32 %1861 to i8
  store i8 %1862, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v95 = select i1 %1859, i64 17, i64 9
  %1863 = add i64 %1853, %.v95
  store i64 %1863, i64* %3, align 8
  br i1 %1859, label %block_.L_48a542, label %block_48a53a

block_48a53a:                                     ; preds = %block_.L_48a526
  %1864 = load i64, i64* %RBP.i, align 8
  %1865 = add i64 %1864, -32
  %1866 = add i64 %1863, 3
  store i64 %1866, i64* %3, align 8
  %1867 = inttoptr i64 %1865 to i32*
  %1868 = load i32, i32* %1867, align 4
  %1869 = zext i32 %1868 to i64
  store i64 %1869, i64* %RDI.i394, align 8
  %1870 = add i64 %1863, -8378
  %1871 = add i64 %1863, 8
  %1872 = load i64, i64* %6, align 8
  %1873 = add i64 %1872, -8
  %1874 = inttoptr i64 %1873 to i64*
  store i64 %1871, i64* %1874, align 8
  store i64 %1873, i64* %6, align 8
  store i64 %1870, i64* %3, align 8
  %call2_48a53d = tail call %struct.Memory* @sub_488480.propagate_worm(%struct.State* nonnull %0, i64 %1870, %struct.Memory* %2)
  %.pre66 = load i64, i64* %3, align 8
  br label %block_.L_48a542

block_.L_48a542:                                  ; preds = %block_48a511, %block_48a53a, %block_.L_48a526
  %1875 = phi i64 [ %.pre66, %block_48a53a ], [ %1863, %block_.L_48a526 ], [ %1839, %block_48a511 ]
  %1876 = load i64, i64* %RBP.i, align 8
  %1877 = add i64 %1876, -32
  %1878 = add i64 %1875, 8
  store i64 %1878, i64* %3, align 8
  %1879 = inttoptr i64 %1877 to i32*
  %1880 = load i32, i32* %1879, align 4
  %1881 = add i32 %1880, 1
  %1882 = zext i32 %1881 to i64
  store i64 %1882, i64* %RAX.i739, align 8
  %1883 = icmp eq i32 %1880, -1
  %1884 = icmp eq i32 %1881, 0
  %1885 = or i1 %1883, %1884
  %1886 = zext i1 %1885 to i8
  store i8 %1886, i8* %14, align 1
  %1887 = and i32 %1881, 255
  %1888 = tail call i32 @llvm.ctpop.i32(i32 %1887)
  %1889 = trunc i32 %1888 to i8
  %1890 = and i8 %1889, 1
  %1891 = xor i8 %1890, 1
  store i8 %1891, i8* %21, align 1
  %1892 = xor i32 %1881, %1880
  %1893 = lshr i32 %1892, 4
  %1894 = trunc i32 %1893 to i8
  %1895 = and i8 %1894, 1
  store i8 %1895, i8* %27, align 1
  %1896 = zext i1 %1884 to i8
  store i8 %1896, i8* %30, align 1
  %1897 = lshr i32 %1881, 31
  %1898 = trunc i32 %1897 to i8
  store i8 %1898, i8* %33, align 1
  %1899 = lshr i32 %1880, 31
  %1900 = xor i32 %1897, %1899
  %1901 = add nuw nsw i32 %1900, %1897
  %1902 = icmp eq i32 %1901, 2
  %1903 = zext i1 %1902 to i8
  store i8 %1903, i8* %39, align 1
  %1904 = add i64 %1875, 14
  store i64 %1904, i64* %3, align 8
  store i32 %1881, i32* %1879, align 4
  %1905 = load i64, i64* %3, align 8
  %1906 = add i64 %1905, -97
  store i64 %1906, i64* %3, align 8
  br label %block_.L_48a4ef

block_.L_48a555:                                  ; preds = %block_.L_48a4ef
  %1907 = add i64 %1787, 5
  store i64 %1907, i64* %3, align 8
  br label %block_.L_48a55a

block_.L_48a55a:                                  ; preds = %block_48a108, %block_.L_48a555
  %1908 = phi i64 [ %555, %block_48a108 ], [ %1907, %block_.L_48a555 ]
  %1909 = phi i64 [ %517, %block_48a108 ], [ %1758, %block_.L_48a555 ]
  %1910 = add i64 %1909, -32
  %1911 = add i64 %1908, 7
  store i64 %1911, i64* %3, align 8
  %1912 = inttoptr i64 %1910 to i32*
  store i32 21, i32* %1912, align 4
  %.pre69 = load i64, i64* %3, align 8
  br label %block_.L_48a561

block_.L_48a561:                                  ; preds = %block_.L_48a639, %block_.L_48a55a
  %1913 = phi i64 [ %2239, %block_.L_48a639 ], [ %.pre69, %block_.L_48a55a ]
  %1914 = load i64, i64* %RBP.i, align 8
  %1915 = add i64 %1914, -32
  %1916 = add i64 %1913, 7
  store i64 %1916, i64* %3, align 8
  %1917 = inttoptr i64 %1915 to i32*
  %1918 = load i32, i32* %1917, align 4
  %1919 = add i32 %1918, -400
  %1920 = icmp ult i32 %1918, 400
  %1921 = zext i1 %1920 to i8
  store i8 %1921, i8* %14, align 1
  %1922 = and i32 %1919, 255
  %1923 = tail call i32 @llvm.ctpop.i32(i32 %1922)
  %1924 = trunc i32 %1923 to i8
  %1925 = and i8 %1924, 1
  %1926 = xor i8 %1925, 1
  store i8 %1926, i8* %21, align 1
  %1927 = xor i32 %1918, 16
  %1928 = xor i32 %1927, %1919
  %1929 = lshr i32 %1928, 4
  %1930 = trunc i32 %1929 to i8
  %1931 = and i8 %1930, 1
  store i8 %1931, i8* %27, align 1
  %1932 = icmp eq i32 %1919, 0
  %1933 = zext i1 %1932 to i8
  store i8 %1933, i8* %30, align 1
  %1934 = lshr i32 %1919, 31
  %1935 = trunc i32 %1934 to i8
  store i8 %1935, i8* %33, align 1
  %1936 = lshr i32 %1918, 31
  %1937 = xor i32 %1934, %1936
  %1938 = add nuw nsw i32 %1937, %1936
  %1939 = icmp eq i32 %1938, 2
  %1940 = zext i1 %1939 to i8
  store i8 %1940, i8* %39, align 1
  %1941 = icmp ne i8 %1935, 0
  %1942 = xor i1 %1941, %1939
  %.v87 = select i1 %1942, i64 13, i64 230
  %1943 = add i64 %1913, %.v87
  store i64 %1943, i64* %3, align 8
  br i1 %1942, label %block_48a56e, label %block_.L_48a647

block_48a56e:                                     ; preds = %block_.L_48a561
  %1944 = add i64 %1943, 4
  store i64 %1944, i64* %3, align 8
  %1945 = load i32, i32* %1917, align 4
  %1946 = sext i32 %1945 to i64
  store i64 %1946, i64* %RAX.i739, align 8
  %1947 = add nsw i64 %1946, 12099168
  %1948 = add i64 %1943, 12
  store i64 %1948, i64* %3, align 8
  %1949 = inttoptr i64 %1947 to i8*
  %1950 = load i8, i8* %1949, align 1
  %1951 = zext i8 %1950 to i64
  store i64 %1951, i64* %RCX.i737, align 8
  %1952 = zext i8 %1950 to i32
  %1953 = add nsw i32 %1952, -3
  %1954 = icmp ult i8 %1950, 3
  %1955 = zext i1 %1954 to i8
  store i8 %1955, i8* %14, align 1
  %1956 = and i32 %1953, 255
  %1957 = tail call i32 @llvm.ctpop.i32(i32 %1956)
  %1958 = trunc i32 %1957 to i8
  %1959 = and i8 %1958, 1
  %1960 = xor i8 %1959, 1
  store i8 %1960, i8* %21, align 1
  %1961 = xor i32 %1953, %1952
  %1962 = lshr i32 %1961, 4
  %1963 = trunc i32 %1962 to i8
  %1964 = and i8 %1963, 1
  store i8 %1964, i8* %27, align 1
  %1965 = icmp eq i32 %1953, 0
  %1966 = zext i1 %1965 to i8
  store i8 %1966, i8* %30, align 1
  %1967 = lshr i32 %1953, 31
  %1968 = trunc i32 %1967 to i8
  store i8 %1968, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v88 = select i1 %1965, i64 21, i64 26
  %1969 = add i64 %1943, %.v88
  store i64 %1969, i64* %3, align 8
  br i1 %1965, label %block_48a583, label %block_.L_48a588

block_48a583:                                     ; preds = %block_48a56e
  %1970 = add i64 %1969, 182
  br label %block_.L_48a639

block_.L_48a588:                                  ; preds = %block_48a56e
  %1971 = add i64 %1969, 4
  store i64 %1971, i64* %3, align 8
  %1972 = load i32, i32* %1917, align 4
  %1973 = sext i32 %1972 to i64
  store i64 %1973, i64* %RAX.i739, align 8
  %1974 = shl nsw i64 %1973, 2
  %1975 = add i64 %1914, -3232
  %1976 = add i64 %1975, %1974
  %1977 = add i64 %1969, 12
  store i64 %1977, i64* %3, align 8
  %1978 = inttoptr i64 %1976 to i32*
  %1979 = load i32, i32* %1978, align 4
  %1980 = add i32 %1979, -4
  %1981 = icmp ult i32 %1979, 4
  %1982 = zext i1 %1981 to i8
  store i8 %1982, i8* %14, align 1
  %1983 = and i32 %1980, 255
  %1984 = tail call i32 @llvm.ctpop.i32(i32 %1983)
  %1985 = trunc i32 %1984 to i8
  %1986 = and i8 %1985, 1
  %1987 = xor i8 %1986, 1
  store i8 %1987, i8* %21, align 1
  %1988 = xor i32 %1980, %1979
  %1989 = lshr i32 %1988, 4
  %1990 = trunc i32 %1989 to i8
  %1991 = and i8 %1990, 1
  store i8 %1991, i8* %27, align 1
  %1992 = icmp eq i32 %1980, 0
  %1993 = zext i1 %1992 to i8
  store i8 %1993, i8* %30, align 1
  %1994 = lshr i32 %1980, 31
  %1995 = trunc i32 %1994 to i8
  store i8 %1995, i8* %33, align 1
  %1996 = lshr i32 %1979, 31
  %1997 = xor i32 %1994, %1996
  %1998 = add nuw nsw i32 %1997, %1996
  %1999 = icmp eq i32 %1998, 2
  %2000 = zext i1 %1999 to i8
  store i8 %2000, i8* %39, align 1
  %2001 = icmp ne i8 %1995, 0
  %2002 = xor i1 %2001, %1999
  %2003 = or i1 %1992, %2002
  %.v89 = select i1 %2003, i64 38, i64 18
  %2004 = add i64 %1969, %.v89
  store i64 %2004, i64* %3, align 8
  br i1 %2003, label %block_.L_48a5ae, label %block_48a59a

block_48a59a:                                     ; preds = %block_.L_48a588
  %2005 = add i64 %1914, -24
  %2006 = add i64 %2004, 4
  store i64 %2006, i64* %3, align 8
  %2007 = inttoptr i64 %2005 to i64*
  %2008 = load i64, i64* %2007, align 8
  store i64 %2008, i64* %RAX.i739, align 8
  %2009 = add i64 %2004, 8
  store i64 %2009, i64* %3, align 8
  %2010 = load i32, i32* %1917, align 4
  %2011 = sext i32 %2010 to i64
  store i64 %2011, i64* %RCX.i737, align 8
  %2012 = shl nsw i64 %2011, 2
  %2013 = add i64 %2012, %2008
  %2014 = add i64 %2004, 15
  store i64 %2014, i64* %3, align 8
  %2015 = inttoptr i64 %2013 to i32*
  store i32 0, i32* %2015, align 4
  %2016 = load i64, i64* %3, align 8
  %2017 = add i64 %2016, 27
  store i64 %2017, i64* %3, align 8
  br label %block_.L_48a5c4

block_.L_48a5ae:                                  ; preds = %block_.L_48a588
  %2018 = add i64 %2004, 4
  store i64 %2018, i64* %3, align 8
  %2019 = load i32, i32* %1917, align 4
  %2020 = sext i32 %2019 to i64
  store i64 %2020, i64* %RAX.i739, align 8
  %2021 = shl nsw i64 %2020, 2
  %2022 = add i64 %1975, %2021
  %2023 = add i64 %2004, 11
  store i64 %2023, i64* %3, align 8
  %2024 = inttoptr i64 %2022 to i32*
  %2025 = load i32, i32* %2024, align 4
  %2026 = zext i32 %2025 to i64
  store i64 %2026, i64* %RCX.i737, align 8
  %2027 = add i64 %1914, -24
  %2028 = add i64 %2004, 15
  store i64 %2028, i64* %3, align 8
  %2029 = inttoptr i64 %2027 to i64*
  %2030 = load i64, i64* %2029, align 8
  store i64 %2030, i64* %RAX.i739, align 8
  %2031 = add i64 %2004, 19
  store i64 %2031, i64* %3, align 8
  %2032 = load i32, i32* %1917, align 4
  %2033 = sext i32 %2032 to i64
  store i64 %2033, i64* %RDX.i750, align 8
  %2034 = shl nsw i64 %2033, 2
  %2035 = add i64 %2034, %2030
  %2036 = add i64 %2004, 22
  store i64 %2036, i64* %3, align 8
  %2037 = inttoptr i64 %2035 to i32*
  store i32 %2025, i32* %2037, align 4
  %.pre70 = load i64, i64* %3, align 8
  br label %block_.L_48a5c4

block_.L_48a5c4:                                  ; preds = %block_.L_48a5ae, %block_48a59a
  %2038 = phi i64 [ %.pre70, %block_.L_48a5ae ], [ %2017, %block_48a59a ]
  %2039 = load i64, i64* %RBP.i, align 8
  %2040 = add i64 %2039, -3244
  %2041 = add i64 %2038, 10
  store i64 %2041, i64* %3, align 8
  %2042 = inttoptr i64 %2040 to i32*
  store i32 0, i32* %2042, align 4
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_48a5ce

block_.L_48a5ce:                                  ; preds = %block_48a5e5, %block_.L_48a5c4
  %2043 = phi i64 [ %2207, %block_48a5e5 ], [ %.pre71, %block_.L_48a5c4 ]
  %2044 = load i64, i64* %RBP.i, align 8
  %2045 = add i64 %2044, -3244
  %2046 = add i64 %2043, 6
  store i64 %2046, i64* %3, align 8
  %2047 = inttoptr i64 %2045 to i32*
  %2048 = load i32, i32* %2047, align 4
  %2049 = zext i32 %2048 to i64
  store i64 %2049, i64* %RAX.i739, align 8
  %2050 = add i64 %2044, -24
  %2051 = add i64 %2043, 10
  store i64 %2051, i64* %3, align 8
  %2052 = inttoptr i64 %2050 to i64*
  %2053 = load i64, i64* %2052, align 8
  store i64 %2053, i64* %RCX.i737, align 8
  %2054 = add i64 %2044, -32
  %2055 = add i64 %2043, 14
  store i64 %2055, i64* %3, align 8
  %2056 = inttoptr i64 %2054 to i32*
  %2057 = load i32, i32* %2056, align 4
  %2058 = sext i32 %2057 to i64
  store i64 %2058, i64* %RDX.i750, align 8
  %2059 = shl nsw i64 %2058, 2
  %2060 = add i64 %2053, %2059
  %2061 = add i64 %2043, 17
  store i64 %2061, i64* %3, align 8
  %2062 = inttoptr i64 %2060 to i32*
  %2063 = load i32, i32* %2062, align 4
  %2064 = sub i32 %2048, %2063
  %2065 = icmp ult i32 %2048, %2063
  %2066 = zext i1 %2065 to i8
  store i8 %2066, i8* %14, align 1
  %2067 = and i32 %2064, 255
  %2068 = tail call i32 @llvm.ctpop.i32(i32 %2067)
  %2069 = trunc i32 %2068 to i8
  %2070 = and i8 %2069, 1
  %2071 = xor i8 %2070, 1
  store i8 %2071, i8* %21, align 1
  %2072 = xor i32 %2063, %2048
  %2073 = xor i32 %2072, %2064
  %2074 = lshr i32 %2073, 4
  %2075 = trunc i32 %2074 to i8
  %2076 = and i8 %2075, 1
  store i8 %2076, i8* %27, align 1
  %2077 = icmp eq i32 %2064, 0
  %2078 = zext i1 %2077 to i8
  store i8 %2078, i8* %30, align 1
  %2079 = lshr i32 %2064, 31
  %2080 = trunc i32 %2079 to i8
  store i8 %2080, i8* %33, align 1
  %2081 = lshr i32 %2048, 31
  %2082 = lshr i32 %2063, 31
  %2083 = xor i32 %2082, %2081
  %2084 = xor i32 %2079, %2081
  %2085 = add nuw nsw i32 %2084, %2083
  %2086 = icmp eq i32 %2085, 2
  %2087 = zext i1 %2086 to i8
  store i8 %2087, i8* %39, align 1
  %2088 = icmp ne i8 %2080, 0
  %2089 = xor i1 %2088, %2086
  %.v90 = select i1 %2089, i64 23, i64 102
  %2090 = add i64 %2043, %.v90
  store i64 %2090, i64* %3, align 8
  br i1 %2089, label %block_48a5e5, label %block_.L_48a634

block_48a5e5:                                     ; preds = %block_.L_48a5ce
  store i64 ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64), i64* %RAX.i739, align 8
  %2091 = add i64 %2090, 14
  store i64 %2091, i64* %3, align 8
  %2092 = load i32, i32* %2056, align 4
  %2093 = sext i32 %2092 to i64
  %2094 = mul nsw i64 %2093, 144
  store i64 %2094, i64* %RCX.i737, align 8
  %2095 = lshr i64 %2094, 63
  %2096 = add i64 %2094, ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64)
  store i64 %2096, i64* %RAX.i739, align 8
  %2097 = icmp ult i64 %2096, ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64)
  %2098 = icmp ult i64 %2096, %2094
  %2099 = or i1 %2097, %2098
  %2100 = zext i1 %2099 to i8
  store i8 %2100, i8* %14, align 1
  %2101 = trunc i64 %2096 to i32
  %2102 = and i32 %2101, 248
  %2103 = tail call i32 @llvm.ctpop.i32(i32 %2102)
  %2104 = trunc i32 %2103 to i8
  %2105 = and i8 %2104, 1
  %2106 = xor i8 %2105, 1
  store i8 %2106, i8* %21, align 1
  %2107 = xor i64 %2094, ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64)
  %2108 = xor i64 %2107, %2096
  %2109 = lshr i64 %2108, 4
  %2110 = trunc i64 %2109 to i8
  %2111 = and i8 %2110, 1
  store i8 %2111, i8* %27, align 1
  %2112 = icmp eq i64 %2096, 0
  %2113 = zext i1 %2112 to i8
  store i8 %2113, i8* %30, align 1
  %2114 = lshr i64 %2096, 63
  %2115 = trunc i64 %2114 to i8
  store i8 %2115, i8* %33, align 1
  %2116 = xor i64 %2114, lshr (i64 ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64), i64 63)
  %2117 = xor i64 %2114, %2095
  %2118 = add nuw nsw i64 %2116, %2117
  %2119 = icmp eq i64 %2118, 2
  %2120 = zext i1 %2119 to i8
  store i8 %2120, i8* %39, align 1
  %2121 = add i64 %2090, 31
  store i64 %2121, i64* %3, align 8
  %2122 = load i32, i32* %2047, align 4
  %2123 = sext i32 %2122 to i64
  store i64 %2123, i64* %RCX.i737, align 8
  %2124 = shl nsw i64 %2123, 2
  %2125 = add i64 %2124, %2096
  %2126 = add i64 %2090, 34
  store i64 %2126, i64* %3, align 8
  %2127 = inttoptr i64 %2125 to i32*
  %2128 = load i32, i32* %2127, align 4
  %2129 = zext i32 %2128 to i64
  store i64 %2129, i64* %RDX.i750, align 8
  %2130 = add i64 %2044, -16
  %2131 = add i64 %2090, 38
  store i64 %2131, i64* %3, align 8
  %2132 = inttoptr i64 %2130 to i64*
  %2133 = load i64, i64* %2132, align 8
  store i64 %2133, i64* %RAX.i739, align 8
  %2134 = add i64 %2090, 42
  store i64 %2134, i64* %3, align 8
  %2135 = load i32, i32* %2056, align 4
  %2136 = sext i32 %2135 to i64
  %2137 = shl nsw i64 %2136, 4
  store i64 %2137, i64* %RCX.i737, align 8
  %2138 = add i64 %2137, %2133
  store i64 %2138, i64* %RAX.i739, align 8
  %2139 = icmp ult i64 %2138, %2133
  %2140 = icmp ult i64 %2138, %2137
  %2141 = or i1 %2139, %2140
  %2142 = zext i1 %2141 to i8
  store i8 %2142, i8* %14, align 1
  %2143 = trunc i64 %2138 to i32
  %2144 = and i32 %2143, 255
  %2145 = tail call i32 @llvm.ctpop.i32(i32 %2144)
  %2146 = trunc i32 %2145 to i8
  %2147 = and i8 %2146, 1
  %2148 = xor i8 %2147, 1
  store i8 %2148, i8* %21, align 1
  %2149 = xor i64 %2137, %2133
  %2150 = xor i64 %2149, %2138
  %2151 = lshr i64 %2150, 4
  %2152 = trunc i64 %2151 to i8
  %2153 = and i8 %2152, 1
  store i8 %2153, i8* %27, align 1
  %2154 = icmp eq i64 %2138, 0
  %2155 = zext i1 %2154 to i8
  store i8 %2155, i8* %30, align 1
  %2156 = lshr i64 %2138, 63
  %2157 = trunc i64 %2156 to i8
  store i8 %2157, i8* %33, align 1
  %2158 = lshr i64 %2133, 63
  %2159 = lshr i64 %2136, 59
  %2160 = and i64 %2159, 1
  %2161 = xor i64 %2156, %2158
  %2162 = xor i64 %2156, %2160
  %2163 = add nuw nsw i64 %2161, %2162
  %2164 = icmp eq i64 %2163, 2
  %2165 = zext i1 %2164 to i8
  store i8 %2165, i8* %39, align 1
  %2166 = load i64, i64* %RBP.i, align 8
  %2167 = add i64 %2166, -3244
  %2168 = add i64 %2090, 56
  store i64 %2168, i64* %3, align 8
  %2169 = inttoptr i64 %2167 to i32*
  %2170 = load i32, i32* %2169, align 4
  %2171 = sext i32 %2170 to i64
  store i64 %2171, i64* %RCX.i737, align 8
  %2172 = shl nsw i64 %2171, 2
  %2173 = add i64 %2172, %2138
  %2174 = add i64 %2090, 59
  store i64 %2174, i64* %3, align 8
  %2175 = inttoptr i64 %2173 to i32*
  store i32 %2128, i32* %2175, align 4
  %2176 = load i64, i64* %RBP.i, align 8
  %2177 = add i64 %2176, -3244
  %2178 = load i64, i64* %3, align 8
  %2179 = add i64 %2178, 6
  store i64 %2179, i64* %3, align 8
  %2180 = inttoptr i64 %2177 to i32*
  %2181 = load i32, i32* %2180, align 4
  %2182 = add i32 %2181, 1
  %2183 = zext i32 %2182 to i64
  store i64 %2183, i64* %RAX.i739, align 8
  %2184 = icmp eq i32 %2181, -1
  %2185 = icmp eq i32 %2182, 0
  %2186 = or i1 %2184, %2185
  %2187 = zext i1 %2186 to i8
  store i8 %2187, i8* %14, align 1
  %2188 = and i32 %2182, 255
  %2189 = tail call i32 @llvm.ctpop.i32(i32 %2188)
  %2190 = trunc i32 %2189 to i8
  %2191 = and i8 %2190, 1
  %2192 = xor i8 %2191, 1
  store i8 %2192, i8* %21, align 1
  %2193 = xor i32 %2182, %2181
  %2194 = lshr i32 %2193, 4
  %2195 = trunc i32 %2194 to i8
  %2196 = and i8 %2195, 1
  store i8 %2196, i8* %27, align 1
  %2197 = zext i1 %2185 to i8
  store i8 %2197, i8* %30, align 1
  %2198 = lshr i32 %2182, 31
  %2199 = trunc i32 %2198 to i8
  store i8 %2199, i8* %33, align 1
  %2200 = lshr i32 %2181, 31
  %2201 = xor i32 %2198, %2200
  %2202 = add nuw nsw i32 %2201, %2198
  %2203 = icmp eq i32 %2202, 2
  %2204 = zext i1 %2203 to i8
  store i8 %2204, i8* %39, align 1
  %2205 = add i64 %2178, 15
  store i64 %2205, i64* %3, align 8
  store i32 %2182, i32* %2180, align 4
  %2206 = load i64, i64* %3, align 8
  %2207 = add i64 %2206, -97
  store i64 %2207, i64* %3, align 8
  br label %block_.L_48a5ce

block_.L_48a634:                                  ; preds = %block_.L_48a5ce
  %2208 = add i64 %2090, 5
  store i64 %2208, i64* %3, align 8
  br label %block_.L_48a639

block_.L_48a639:                                  ; preds = %block_.L_48a634, %block_48a583
  %2209 = phi i64 [ %1914, %block_48a583 ], [ %2044, %block_.L_48a634 ]
  %storemerge31 = phi i64 [ %1970, %block_48a583 ], [ %2208, %block_.L_48a634 ]
  %2210 = add i64 %2209, -32
  %2211 = add i64 %storemerge31, 3
  store i64 %2211, i64* %3, align 8
  %2212 = inttoptr i64 %2210 to i32*
  %2213 = load i32, i32* %2212, align 4
  %2214 = add i32 %2213, 1
  %2215 = zext i32 %2214 to i64
  store i64 %2215, i64* %RAX.i739, align 8
  %2216 = icmp eq i32 %2213, -1
  %2217 = icmp eq i32 %2214, 0
  %2218 = or i1 %2216, %2217
  %2219 = zext i1 %2218 to i8
  store i8 %2219, i8* %14, align 1
  %2220 = and i32 %2214, 255
  %2221 = tail call i32 @llvm.ctpop.i32(i32 %2220)
  %2222 = trunc i32 %2221 to i8
  %2223 = and i8 %2222, 1
  %2224 = xor i8 %2223, 1
  store i8 %2224, i8* %21, align 1
  %2225 = xor i32 %2214, %2213
  %2226 = lshr i32 %2225, 4
  %2227 = trunc i32 %2226 to i8
  %2228 = and i8 %2227, 1
  store i8 %2228, i8* %27, align 1
  %2229 = zext i1 %2217 to i8
  store i8 %2229, i8* %30, align 1
  %2230 = lshr i32 %2214, 31
  %2231 = trunc i32 %2230 to i8
  store i8 %2231, i8* %33, align 1
  %2232 = lshr i32 %2213, 31
  %2233 = xor i32 %2230, %2232
  %2234 = add nuw nsw i32 %2233, %2230
  %2235 = icmp eq i32 %2234, 2
  %2236 = zext i1 %2235 to i8
  store i8 %2236, i8* %39, align 1
  %2237 = add i64 %storemerge31, 9
  store i64 %2237, i64* %3, align 8
  store i32 %2214, i32* %2212, align 4
  %2238 = load i64, i64* %3, align 8
  %2239 = add i64 %2238, -225
  store i64 %2239, i64* %3, align 8
  br label %block_.L_48a561

block_.L_48a647:                                  ; preds = %block_.L_48a561
  %2240 = load i64, i64* %6, align 8
  %2241 = add i64 %2240, 3280
  store i64 %2241, i64* %6, align 8
  %2242 = icmp ugt i64 %2240, -3281
  %2243 = zext i1 %2242 to i8
  store i8 %2243, i8* %14, align 1
  %2244 = trunc i64 %2241 to i32
  %2245 = and i32 %2244, 255
  %2246 = tail call i32 @llvm.ctpop.i32(i32 %2245)
  %2247 = trunc i32 %2246 to i8
  %2248 = and i8 %2247, 1
  %2249 = xor i8 %2248, 1
  store i8 %2249, i8* %21, align 1
  %2250 = xor i64 %2240, 16
  %2251 = xor i64 %2250, %2241
  %2252 = lshr i64 %2251, 4
  %2253 = trunc i64 %2252 to i8
  %2254 = and i8 %2253, 1
  store i8 %2254, i8* %27, align 1
  %2255 = icmp eq i64 %2241, 0
  %2256 = zext i1 %2255 to i8
  store i8 %2256, i8* %30, align 1
  %2257 = lshr i64 %2241, 63
  %2258 = trunc i64 %2257 to i8
  store i8 %2258, i8* %33, align 1
  %2259 = lshr i64 %2240, 63
  %2260 = xor i64 %2257, %2259
  %2261 = add nuw nsw i64 %2260, %2257
  %2262 = icmp eq i64 %2261, 2
  %2263 = zext i1 %2262 to i8
  store i8 %2263, i8* %39, align 1
  %2264 = add i64 %1943, 8
  store i64 %2264, i64* %3, align 8
  %2265 = add i64 %2240, 3288
  %2266 = inttoptr i64 %2241 to i64*
  %2267 = load i64, i64* %2266, align 8
  store i64 %2267, i64* %RBP.i, align 8
  store i64 %2265, i64* %6, align 8
  %2268 = add i64 %1943, 9
  store i64 %2268, i64* %3, align 8
  %2269 = inttoptr i64 %2265 to i64*
  %2270 = load i64, i64* %2269, align 8
  store i64 %2270, i64* %3, align 8
  %2271 = add i64 %2240, 3296
  store i64 %2271, i64* %6, align 8
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
define %struct.Memory* @routine_subq__0xcd0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -3280
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 3280
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
define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl__0x15__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_jge_.L_48a0bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_jne_.L_489fb7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48a0af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xcac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3244
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xcac__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3244
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
define %struct.Memory* @routine_movl_0x7ae438___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_jge_.L_48a016(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xae4620___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xae4620_type* @G__0xae4620 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_imulq__0x90___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 144
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0xcac__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3244
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0xcac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3244
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_489fc1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xca0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -3232
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl_MINUS0x4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %13, align 1
  %14 = and i32 %11, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = icmp eq i32 %11, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %11, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
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
define %struct.Memory* @routine_je_.L_48a09b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xb0eff0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl__0x0__MINUS0x660__rbp__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1632
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 380
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
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
define %struct.Memory* @routine_movl_0xc__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__esi____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xca0__rbp__rax_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -3232
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0xca0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -3232
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ESI, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a0aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x660__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1632
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 -1, i32* %10, align 4
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
define %struct.Memory* @routine_jmpq_.L_489f90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xca8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0xca4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3236
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0xca4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3236
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
define %struct.Memory* @routine_movb__cl__MINUS0xcc1__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3265
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_48a0fa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xca8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3240
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
define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
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
define %struct.Memory* @routine_setle__cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = xor i1 %11, %14
  %16 = or i1 %8, %15
  %17 = zext i1 %16 to i8
  store i8 %17, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0xcc1__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3265
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_testb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
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
define %struct.Memory* @routine_jne_.L_48a10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48a3a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xca4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3236
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xca8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3240
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_48a3a1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_48a161(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x660__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1632
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, 1
  %13 = icmp ne i32 %11, -1
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %11, 16
  %23 = xor i32 %22, %12
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %12, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %12, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %11, 31
  %35 = xor i32 %34, 1
  %36 = xor i32 %31, %34
  %37 = add nuw nsw i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_48a166(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48a393(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xcb4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3252
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0xcb4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3252
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jge_.L_48a38e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0xcb4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3252
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_movl__eax__MINUS0xcb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3256
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xcb8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
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
define %struct.Memory* @routine_je_.L_48a375(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0xcb8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x660__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1632
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xca8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3240
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jne_.L_48a375(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x660__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1632
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0xca0__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -3232
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %4, %13
  %15 = icmp ult i32 %4, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, %4
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %4, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_48a370(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0xcbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3260
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0xcb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xcb0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3248
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
define %struct.Memory* @routine_jge_.L_48a2a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rcx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0xcb0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rdx__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_jne_.L_48a28a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0xcbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3260
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a2a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a28f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xcb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3248
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a21e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0xcbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3260
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
define %struct.Memory* @routine_jne_.L_48a357(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0xca0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -3232
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7ae438___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
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
define %struct.Memory* @routine_jge_.L_48a2d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48a2fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x582e3b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x582e3b_type* @G__0x582e3b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x27c___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 636, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5832cb___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5832cb_type* @G__0x5832cb to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4294967295, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xca0__rbp__rcx_4____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -3232
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_jmpq_.L_48a35c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a1f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a375(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a37a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xcb4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3252
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
define %struct.Memory* @routine_movl__eax__MINUS0xcb4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3252
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a170(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a12d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a0d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_jne_.L_48a55a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_48a4e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_48a3de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48a4da(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_48a4d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__edx__MINUS0xcc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -3264
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_48a487(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x58b3a__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x58b3a__rip__type* @G_0x58b3a__rip_ to i64)
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
define %struct.Memory* @routine_cvtsi2sdl_MINUS0xca0__rbp__rcx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -3232
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = sitofp i32 %12 to double
  %14 = bitcast %union.VectorReg* %3 to double*
  store double %13, double* %14, align 1
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
define %struct.Memory* @routine_movslq_MINUS0xcc0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -3264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 380
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
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
define %struct.Memory* @routine_cvtss2sd_0x8__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to double*
  %14 = load double, double* %13, align 1
  %15 = fptrunc double %14 to float
  %16 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %15, float* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 1
  %18 = getelementptr inbounds i8, i8* %5, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %12, i32 0
  %21 = bitcast i64* %10 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %12, i32 1
  %23 = getelementptr inbounds i8, i8* %5, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a4bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x58ad1__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x58ad1__rip__type* @G_0x58ad1__rip_ to i64)
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
define %struct.Memory* @routine_jmpq_.L_48a4c1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a3e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a3b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_48a555(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_48a526(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_48a542(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_callq_.is_worm_origin(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_48a542(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.propagate_worm(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48a547(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a4ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a55a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_48a647(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_48a588(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48a639(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0xca0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -3232
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, -4
  %13 = icmp ult i32 %11, 4
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %12, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %12, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %12, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = xor i32 %30, %33
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_48a5ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_48a5c4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl___rcx__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_jge_.L_48a634(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_jmpq_.L_48a5ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_48a561(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xcd0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 3280
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -3281
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
