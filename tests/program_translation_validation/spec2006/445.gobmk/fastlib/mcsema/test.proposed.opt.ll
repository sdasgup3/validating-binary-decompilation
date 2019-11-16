; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x57a16e_type = type <{ [8 x i8] }>
%G__0x57a4be_type = type <{ [8 x i8] }>
%G__0x57a4f4_type = type <{ [8 x i8] }>
%G__0xa7f430_type = type <{ [8 x i8] }>
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
@G__0x57a16e = global %G__0x57a16e_type zeroinitializer
@G__0x57a4be = global %G__0x57a4be_type zeroinitializer
@G__0x57a4f4 = global %G__0x57a4f4_type zeroinitializer
@G__0xa7f430 = global %G__0xa7f430_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_410ed0.count_common_libs(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @fastlib(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -104
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 96
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
  %EDI.i = bitcast %union.anon* %39 to i32*
  %40 = add i64 %7, -16
  %41 = load i32, i32* %EDI.i, align 4
  %42 = add i64 %10, 10
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i32*
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i2672 = bitcast %union.anon* %44 to i32*
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -12
  %47 = load i32, i32* %ESI.i2672, align 4
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i2715 = bitcast %union.anon* %51 to i32*
  %52 = load i64, i64* %RBP.i, align 8
  %53 = add i64 %52, -16
  %54 = load i32, i32* %EDX.i2715, align 4
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, 3
  store i64 %56, i64* %3, align 8
  %57 = inttoptr i64 %53 to i32*
  store i32 %54, i32* %57, align 4
  %58 = load i64, i64* %RBP.i, align 8
  %59 = add i64 %58, -20
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 7
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %59 to i32*
  store i32 -1, i32* %62, align 4
  %63 = load i64, i64* %RBP.i, align 8
  %64 = add i64 %63, -24
  %65 = load i64, i64* %3, align 8
  %66 = add i64 %65, 7
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %64 to i32*
  store i32 -1, i32* %67, align 4
  %68 = load i64, i64* %RBP.i, align 8
  %69 = add i64 %68, -28
  %70 = load i64, i64* %3, align 8
  %71 = add i64 %70, 7
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %69 to i32*
  store i32 0, i32* %72, align 4
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i2706 = getelementptr inbounds %union.anon, %union.anon* %73, i64 0, i32 0
  %74 = load i64, i64* %RBP.i, align 8
  %75 = add i64 %74, -8
  %76 = load i64, i64* %3, align 8
  %77 = add i64 %76, 4
  store i64 %77, i64* %3, align 8
  %78 = inttoptr i64 %75 to i32*
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %RAX.i2706, align 8
  %RDX.i2704 = getelementptr inbounds %union.anon, %union.anon* %51, i64 0, i32 0
  %81 = add nsw i64 %80, 12099168
  %82 = add i64 %76, 12
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %81 to i8*
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i64
  store i64 %85, i64* %RDX.i2704, align 8
  %86 = zext i8 %84 to i32
  store i8 0, i8* %14, align 1
  %87 = tail call i32 @llvm.ctpop.i32(i32 %86)
  %88 = trunc i32 %87 to i8
  %89 = and i8 %88, 1
  %90 = xor i8 %89, 1
  store i8 %90, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %91 = icmp eq i8 %84, 0
  %92 = zext i1 %91 to i8
  store i8 %92, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v207 = select i1 %91, i64 21, i64 26
  %93 = add i64 %76, %.v207
  store i64 %93, i64* %3, align 8
  br i1 %91, label %block_40fcbb, label %block_.L_40fcc0

block_40fcbb:                                     ; preds = %entry
  %94 = add i64 %93, 94
  store i64 %94, i64* %3, align 8
  br label %block_.L_40fd19

block_.L_40fcc0:                                  ; preds = %entry
  %RDI.i2697 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i2697, align 8
  %RSI.i2695 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  store i64 1435, i64* %RSI.i2695, align 8
  store i64 ptrtoint (%G__0x57a4be_type* @G__0x57a4be to i64), i64* %RDX.i2704, align 8
  store i64 20, i64* %RAX.i2706, align 8
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i2688 = getelementptr inbounds %union.anon, %union.anon* %95, i64 0, i32 0
  %96 = add i64 %93, 33
  store i64 %96, i64* %3, align 8
  %97 = load i32, i32* %78, align 4
  %98 = zext i32 %97 to i64
  store i64 %98, i64* %RCX.i2688, align 8
  %EAX.i2685 = bitcast %union.anon* %73 to i32*
  %99 = add i64 %74, -44
  %100 = add i64 %93, 36
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %99 to i32*
  store i32 20, i32* %101, align 4
  %ECX.i2682 = bitcast %union.anon* %95 to i32*
  %102 = load i32, i32* %ECX.i2682, align 4
  %103 = zext i32 %102 to i64
  %104 = load i64, i64* %3, align 8
  store i64 %103, i64* %RAX.i2706, align 8
  %105 = load i64, i64* %RBP.i, align 8
  %106 = add i64 %105, -56
  %107 = load i64, i64* %RDX.i2704, align 8
  %108 = add i64 %104, 6
  store i64 %108, i64* %3, align 8
  %109 = inttoptr i64 %106 to i64*
  store i64 %107, i64* %109, align 8
  %110 = load i64, i64* %3, align 8
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %112 = load i32, i32* %EAX.i2685, align 8
  %113 = sext i32 %112 to i64
  %114 = lshr i64 %113, 32
  store i64 %114, i64* %111, align 8
  %115 = load i64, i64* %RBP.i, align 8
  %116 = add i64 %115, -44
  %117 = add i64 %110, 4
  store i64 %117, i64* %3, align 8
  %118 = inttoptr i64 %116 to i32*
  %119 = load i32, i32* %118, align 4
  %120 = zext i32 %119 to i64
  store i64 %120, i64* %RCX.i2688, align 8
  %121 = add i64 %110, 6
  store i64 %121, i64* %3, align 8
  %122 = zext i32 %112 to i64
  %123 = sext i32 %119 to i64
  %124 = shl nuw i64 %114, 32
  %125 = or i64 %124, %122
  %126 = sdiv i64 %125, %123
  %127 = shl i64 %126, 32
  %128 = ashr exact i64 %127, 32
  %129 = icmp eq i64 %126, %128
  br i1 %129, label %132, label %130

; <label>:130:                                    ; preds = %block_.L_40fcc0
  %131 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %121, %struct.Memory* %2)
  %.pre = load i64, i64* %RAX.i2706, align 8
  %.pre162 = load i64, i64* %3, align 8
  %.pre163 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit2670

; <label>:132:                                    ; preds = %block_.L_40fcc0
  %133 = srem i64 %125, %123
  %134 = and i64 %126, 4294967295
  store i64 %134, i64* %RAX.i2706, align 8
  %135 = and i64 %133, 4294967295
  store i64 %135, i64* %RDX.i2704, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit2670

routine_idivl__ecx.exit2670:                      ; preds = %132, %130
  %136 = phi i64 [ %.pre163, %130 ], [ %115, %132 ]
  %137 = phi i64 [ %.pre162, %130 ], [ %121, %132 ]
  %138 = phi i64 [ %.pre, %130 ], [ %134, %132 ]
  %139 = phi %struct.Memory* [ %131, %130 ], [ %2, %132 ]
  %140 = trunc i64 %138 to i32
  %141 = add i32 %140, -1
  %142 = zext i32 %141 to i64
  store i64 %142, i64* %RAX.i2706, align 8
  %143 = icmp eq i32 %140, 0
  %144 = zext i1 %143 to i8
  store i8 %144, i8* %14, align 1
  %145 = and i32 %141, 255
  %146 = tail call i32 @llvm.ctpop.i32(i32 %145)
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  %149 = xor i8 %148, 1
  store i8 %149, i8* %21, align 1
  %150 = xor i32 %141, %140
  %151 = lshr i32 %150, 4
  %152 = trunc i32 %151 to i8
  %153 = and i8 %152, 1
  store i8 %153, i8* %26, align 1
  %154 = icmp eq i32 %141, 0
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %29, align 1
  %156 = lshr i32 %141, 31
  %157 = trunc i32 %156 to i8
  store i8 %157, i8* %32, align 1
  %158 = lshr i32 %140, 31
  %159 = xor i32 %156, %158
  %160 = add nuw nsw i32 %159, %158
  %161 = icmp eq i32 %160, 2
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %38, align 1
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i2664 = bitcast %union.anon* %163 to i32*
  %164 = getelementptr inbounds %union.anon, %union.anon* %163, i64 0, i32 0
  %165 = add i64 %136, -8
  %166 = add i64 %137, 7
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %165 to i32*
  %168 = load i32, i32* %167, align 4
  %169 = zext i32 %168 to i64
  store i64 %169, i64* %164, align 8
  %170 = add i64 %136, -60
  %171 = add i64 %137, 10
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %170 to i32*
  store i32 %141, i32* %172, align 4
  %173 = load i32, i32* %R8D.i2664, align 4
  %174 = zext i32 %173 to i64
  %175 = load i64, i64* %3, align 8
  store i64 %174, i64* %RAX.i2706, align 8
  %176 = sext i32 %173 to i64
  %177 = lshr i64 %176, 32
  store i64 %177, i64* %111, align 8
  %178 = load i32, i32* %ECX.i2682, align 4
  %179 = add i64 %175, 6
  store i64 %179, i64* %3, align 8
  %180 = sext i32 %178 to i64
  %181 = shl nuw i64 %177, 32
  %182 = or i64 %181, %174
  %183 = sdiv i64 %182, %180
  %184 = shl i64 %183, 32
  %185 = ashr exact i64 %184, 32
  %186 = icmp eq i64 %183, %185
  br i1 %186, label %189, label %187

; <label>:187:                                    ; preds = %routine_idivl__ecx.exit2670
  %188 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %179, %struct.Memory* %139)
  %.pre164 = load i64, i64* %RDX.i2704, align 8
  %.pre165 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit2653

; <label>:189:                                    ; preds = %routine_idivl__ecx.exit2670
  %190 = srem i64 %182, %180
  %191 = and i64 %183, 4294967295
  store i64 %191, i64* %RAX.i2706, align 8
  %192 = and i64 %190, 4294967295
  store i64 %192, i64* %RDX.i2704, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit2653

routine_idivl__ecx.exit2653:                      ; preds = %189, %187
  %193 = phi i64 [ %.pre165, %187 ], [ %179, %189 ]
  %194 = phi i64 [ %.pre164, %187 ], [ %192, %189 ]
  %195 = phi %struct.Memory* [ %188, %187 ], [ %139, %189 ]
  %196 = trunc i64 %194 to i32
  %197 = add i32 %196, -1
  %198 = zext i32 %197 to i64
  store i64 %198, i64* %RDX.i2704, align 8
  %199 = icmp eq i32 %196, 0
  %200 = zext i1 %199 to i8
  store i8 %200, i8* %14, align 1
  %201 = and i32 %197, 255
  %202 = tail call i32 @llvm.ctpop.i32(i32 %201)
  %203 = trunc i32 %202 to i8
  %204 = and i8 %203, 1
  %205 = xor i8 %204, 1
  store i8 %205, i8* %21, align 1
  %206 = xor i32 %197, %196
  %207 = lshr i32 %206, 4
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  store i8 %209, i8* %26, align 1
  %210 = icmp eq i32 %197, 0
  %211 = zext i1 %210 to i8
  store i8 %211, i8* %29, align 1
  %212 = lshr i32 %197, 31
  %213 = trunc i32 %212 to i8
  store i8 %213, i8* %32, align 1
  %214 = lshr i32 %196, 31
  %215 = xor i32 %212, %214
  %216 = add nuw nsw i32 %215, %214
  %217 = icmp eq i32 %216, 2
  %218 = zext i1 %217 to i8
  store i8 %218, i8* %38, align 1
  %R9.i2648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %219 = load i64, i64* %RBP.i, align 8
  %220 = add i64 %219, -56
  %221 = add i64 %193, 7
  store i64 %221, i64* %3, align 8
  %222 = inttoptr i64 %220 to i64*
  %223 = load i64, i64* %222, align 8
  store i64 %223, i64* %R9.i2648, align 8
  %224 = add i64 %219, -64
  %225 = add i64 %193, 10
  store i64 %225, i64* %3, align 8
  %226 = inttoptr i64 %224 to i32*
  store i32 %197, i32* %226, align 4
  %227 = load i64, i64* %R9.i2648, align 8
  %228 = load i64, i64* %3, align 8
  store i64 %227, i64* %RDX.i2704, align 8
  %229 = load i64, i64* %RBP.i, align 8
  %230 = add i64 %229, -60
  %231 = add i64 %228, 6
  store i64 %231, i64* %3, align 8
  %232 = inttoptr i64 %230 to i32*
  %233 = load i32, i32* %232, align 4
  %234 = zext i32 %233 to i64
  store i64 %234, i64* %RCX.i2688, align 8
  %235 = add i64 %229, -64
  %236 = add i64 %228, 10
  store i64 %236, i64* %3, align 8
  %237 = inttoptr i64 %235 to i32*
  %238 = load i32, i32* %237, align 4
  %239 = zext i32 %238 to i64
  store i64 %239, i64* %164, align 8
  %240 = add i64 %228, 271238
  %241 = add i64 %228, 15
  %242 = load i64, i64* %6, align 8
  %243 = add i64 %242, -8
  %244 = inttoptr i64 %243 to i64*
  store i64 %241, i64* %244, align 8
  store i64 %243, i64* %6, align 8
  store i64 %240, i64* %3, align 8
  %call2_40fd14 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %240, %struct.Memory* %195)
  %.pre166 = load i64, i64* %RBP.i, align 8
  %.pre167 = load i64, i64* %3, align 8
  br label %block_.L_40fd19

block_.L_40fd19:                                  ; preds = %routine_idivl__ecx.exit2653, %block_40fcbb
  %245 = phi i64 [ %.pre167, %routine_idivl__ecx.exit2653 ], [ %94, %block_40fcbb ]
  %246 = phi i64 [ %.pre166, %routine_idivl__ecx.exit2653 ], [ %74, %block_40fcbb ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_40fd14, %routine_idivl__ecx.exit2653 ], [ %2, %block_40fcbb ]
  %247 = add i64 %246, -12
  %248 = add i64 %245, 4
  store i64 %248, i64* %3, align 8
  %249 = inttoptr i64 %247 to i32*
  %250 = load i32, i32* %249, align 4
  %251 = add i32 %250, -1
  %252 = icmp eq i32 %250, 0
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %14, align 1
  %254 = and i32 %251, 255
  %255 = tail call i32 @llvm.ctpop.i32(i32 %254)
  %256 = trunc i32 %255 to i8
  %257 = and i8 %256, 1
  %258 = xor i8 %257, 1
  store i8 %258, i8* %21, align 1
  %259 = xor i32 %251, %250
  %260 = lshr i32 %259, 4
  %261 = trunc i32 %260 to i8
  %262 = and i8 %261, 1
  store i8 %262, i8* %26, align 1
  %263 = icmp eq i32 %251, 0
  %264 = zext i1 %263 to i8
  store i8 %264, i8* %29, align 1
  %265 = lshr i32 %251, 31
  %266 = trunc i32 %265 to i8
  store i8 %266, i8* %32, align 1
  %267 = lshr i32 %250, 31
  %268 = xor i32 %265, %267
  %269 = add nuw nsw i32 %268, %267
  %270 = icmp eq i32 %269, 2
  %271 = zext i1 %270 to i8
  store i8 %271, i8* %38, align 1
  %.v208 = select i1 %263, i64 20, i64 10
  %272 = add i64 %245, %.v208
  store i64 %272, i64* %3, align 8
  br i1 %263, label %block_.L_40fd2d, label %block_40fd23

block_40fd23:                                     ; preds = %block_.L_40fd19
  %273 = add i64 %272, 4
  store i64 %273, i64* %3, align 8
  %274 = load i32, i32* %249, align 4
  %275 = add i32 %274, -2
  %276 = icmp ult i32 %274, 2
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %14, align 1
  %278 = and i32 %275, 255
  %279 = tail call i32 @llvm.ctpop.i32(i32 %278)
  %280 = trunc i32 %279 to i8
  %281 = and i8 %280, 1
  %282 = xor i8 %281, 1
  store i8 %282, i8* %21, align 1
  %283 = xor i32 %275, %274
  %284 = lshr i32 %283, 4
  %285 = trunc i32 %284 to i8
  %286 = and i8 %285, 1
  store i8 %286, i8* %26, align 1
  %287 = icmp eq i32 %275, 0
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %29, align 1
  %289 = lshr i32 %275, 31
  %290 = trunc i32 %289 to i8
  store i8 %290, i8* %32, align 1
  %291 = lshr i32 %274, 31
  %292 = xor i32 %289, %291
  %293 = add nuw nsw i32 %292, %291
  %294 = icmp eq i32 %293, 2
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %38, align 1
  %.v209 = select i1 %287, i64 10, i64 15
  %296 = add i64 %272, %.v209
  store i64 %296, i64* %3, align 8
  br i1 %287, label %block_.L_40fd2d, label %block_.L_40fd32

block_.L_40fd2d:                                  ; preds = %block_40fd23, %block_.L_40fd19
  %297 = phi i64 [ %296, %block_40fd23 ], [ %272, %block_.L_40fd19 ]
  %298 = add i64 %297, 94
  store i64 %298, i64* %3, align 8
  %.pre200 = bitcast %union.anon* %73 to i32*
  br label %block_.L_40fd8b

block_.L_40fd32:                                  ; preds = %block_40fd23
  %RDI.i2625 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI.i2625, align 8
  %RSI.i2623 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  store i64 1436, i64* %RSI.i2623, align 8
  store i64 ptrtoint (%G__0x57a4f4_type* @G__0x57a4f4 to i64), i64* %RDX.i2704, align 8
  store i64 20, i64* %RAX.i2706, align 8
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i2616 = getelementptr inbounds %union.anon, %union.anon* %299, i64 0, i32 0
  %300 = add i64 %246, -8
  %301 = add i64 %296, 33
  store i64 %301, i64* %3, align 8
  %302 = inttoptr i64 %300 to i32*
  %303 = load i32, i32* %302, align 4
  %304 = zext i32 %303 to i64
  store i64 %304, i64* %RCX.i2616, align 8
  %EAX.i2613 = bitcast %union.anon* %73 to i32*
  %305 = add i64 %246, -68
  %306 = add i64 %296, 36
  store i64 %306, i64* %3, align 8
  %307 = inttoptr i64 %305 to i32*
  store i32 20, i32* %307, align 4
  %ECX.i2610 = bitcast %union.anon* %299 to i32*
  %308 = load i32, i32* %ECX.i2610, align 4
  %309 = zext i32 %308 to i64
  %310 = load i64, i64* %3, align 8
  store i64 %309, i64* %RAX.i2706, align 8
  %311 = load i64, i64* %RBP.i, align 8
  %312 = add i64 %311, -80
  %313 = load i64, i64* %RDX.i2704, align 8
  %314 = add i64 %310, 6
  store i64 %314, i64* %3, align 8
  %315 = inttoptr i64 %312 to i64*
  store i64 %313, i64* %315, align 8
  %316 = load i64, i64* %3, align 8
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %318 = load i32, i32* %EAX.i2613, align 8
  %319 = sext i32 %318 to i64
  %320 = lshr i64 %319, 32
  store i64 %320, i64* %317, align 8
  %321 = load i64, i64* %RBP.i, align 8
  %322 = add i64 %321, -68
  %323 = add i64 %316, 4
  store i64 %323, i64* %3, align 8
  %324 = inttoptr i64 %322 to i32*
  %325 = load i32, i32* %324, align 4
  %326 = zext i32 %325 to i64
  store i64 %326, i64* %RCX.i2616, align 8
  %327 = add i64 %316, 6
  store i64 %327, i64* %3, align 8
  %328 = zext i32 %318 to i64
  %329 = sext i32 %325 to i64
  %330 = shl nuw i64 %320, 32
  %331 = or i64 %330, %328
  %332 = sdiv i64 %331, %329
  %333 = shl i64 %332, 32
  %334 = ashr exact i64 %333, 32
  %335 = icmp eq i64 %332, %334
  br i1 %335, label %338, label %336

; <label>:336:                                    ; preds = %block_.L_40fd32
  %337 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %327, %struct.Memory* %MEMORY.0)
  %.pre168 = load i64, i64* %RAX.i2706, align 8
  %.pre169 = load i64, i64* %3, align 8
  %.pre170 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit2599

; <label>:338:                                    ; preds = %block_.L_40fd32
  %339 = srem i64 %331, %329
  %340 = and i64 %332, 4294967295
  store i64 %340, i64* %RAX.i2706, align 8
  %341 = and i64 %339, 4294967295
  store i64 %341, i64* %RDX.i2704, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit2599

routine_idivl__ecx.exit2599:                      ; preds = %338, %336
  %342 = phi i64 [ %.pre170, %336 ], [ %321, %338 ]
  %343 = phi i64 [ %.pre169, %336 ], [ %327, %338 ]
  %344 = phi i64 [ %.pre168, %336 ], [ %340, %338 ]
  %345 = phi %struct.Memory* [ %337, %336 ], [ %MEMORY.0, %338 ]
  %346 = trunc i64 %344 to i32
  %347 = add i32 %346, -1
  %348 = zext i32 %347 to i64
  store i64 %348, i64* %RAX.i2706, align 8
  %349 = icmp eq i32 %346, 0
  %350 = zext i1 %349 to i8
  store i8 %350, i8* %14, align 1
  %351 = and i32 %347, 255
  %352 = tail call i32 @llvm.ctpop.i32(i32 %351)
  %353 = trunc i32 %352 to i8
  %354 = and i8 %353, 1
  %355 = xor i8 %354, 1
  store i8 %355, i8* %21, align 1
  %356 = xor i32 %347, %346
  %357 = lshr i32 %356, 4
  %358 = trunc i32 %357 to i8
  %359 = and i8 %358, 1
  store i8 %359, i8* %26, align 1
  %360 = icmp eq i32 %347, 0
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %29, align 1
  %362 = lshr i32 %347, 31
  %363 = trunc i32 %362 to i8
  store i8 %363, i8* %32, align 1
  %364 = lshr i32 %346, 31
  %365 = xor i32 %362, %364
  %366 = add nuw nsw i32 %365, %364
  %367 = icmp eq i32 %366, 2
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %38, align 1
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i2593 = bitcast %union.anon* %369 to i32*
  %370 = getelementptr inbounds %union.anon, %union.anon* %369, i64 0, i32 0
  %371 = add i64 %342, -8
  %372 = add i64 %343, 7
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %371 to i32*
  %374 = load i32, i32* %373, align 4
  %375 = zext i32 %374 to i64
  store i64 %375, i64* %370, align 8
  %376 = add i64 %342, -84
  %377 = add i64 %343, 10
  store i64 %377, i64* %3, align 8
  %378 = inttoptr i64 %376 to i32*
  store i32 %347, i32* %378, align 4
  %379 = load i32, i32* %R8D.i2593, align 4
  %380 = zext i32 %379 to i64
  %381 = load i64, i64* %3, align 8
  store i64 %380, i64* %RAX.i2706, align 8
  %382 = sext i32 %379 to i64
  %383 = lshr i64 %382, 32
  store i64 %383, i64* %317, align 8
  %384 = load i32, i32* %ECX.i2610, align 4
  %385 = add i64 %381, 6
  store i64 %385, i64* %3, align 8
  %386 = sext i32 %384 to i64
  %387 = shl nuw i64 %383, 32
  %388 = or i64 %387, %380
  %389 = sdiv i64 %388, %386
  %390 = shl i64 %389, 32
  %391 = ashr exact i64 %390, 32
  %392 = icmp eq i64 %389, %391
  br i1 %392, label %395, label %393

; <label>:393:                                    ; preds = %routine_idivl__ecx.exit2599
  %394 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %385, %struct.Memory* %345)
  %.pre171 = load i64, i64* %RDX.i2704, align 8
  %.pre172 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:395:                                    ; preds = %routine_idivl__ecx.exit2599
  %396 = srem i64 %388, %386
  %397 = and i64 %389, 4294967295
  store i64 %397, i64* %RAX.i2706, align 8
  %398 = and i64 %396, 4294967295
  store i64 %398, i64* %RDX.i2704, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %395, %393
  %399 = phi i64 [ %.pre172, %393 ], [ %385, %395 ]
  %400 = phi i64 [ %.pre171, %393 ], [ %398, %395 ]
  %401 = phi %struct.Memory* [ %394, %393 ], [ %345, %395 ]
  %402 = trunc i64 %400 to i32
  %403 = add i32 %402, -1
  %404 = zext i32 %403 to i64
  store i64 %404, i64* %RDX.i2704, align 8
  %405 = icmp eq i32 %402, 0
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %14, align 1
  %407 = and i32 %403, 255
  %408 = tail call i32 @llvm.ctpop.i32(i32 %407)
  %409 = trunc i32 %408 to i8
  %410 = and i8 %409, 1
  %411 = xor i8 %410, 1
  store i8 %411, i8* %21, align 1
  %412 = xor i32 %403, %402
  %413 = lshr i32 %412, 4
  %414 = trunc i32 %413 to i8
  %415 = and i8 %414, 1
  store i8 %415, i8* %26, align 1
  %416 = icmp eq i32 %403, 0
  %417 = zext i1 %416 to i8
  store i8 %417, i8* %29, align 1
  %418 = lshr i32 %403, 31
  %419 = trunc i32 %418 to i8
  store i8 %419, i8* %32, align 1
  %420 = lshr i32 %402, 31
  %421 = xor i32 %418, %420
  %422 = add nuw nsw i32 %421, %420
  %423 = icmp eq i32 %422, 2
  %424 = zext i1 %423 to i8
  store i8 %424, i8* %38, align 1
  %R9.i2578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %425 = load i64, i64* %RBP.i, align 8
  %426 = add i64 %425, -80
  %427 = add i64 %399, 7
  store i64 %427, i64* %3, align 8
  %428 = inttoptr i64 %426 to i64*
  %429 = load i64, i64* %428, align 8
  store i64 %429, i64* %R9.i2578, align 8
  %430 = add i64 %425, -88
  %431 = add i64 %399, 10
  store i64 %431, i64* %3, align 8
  %432 = inttoptr i64 %430 to i32*
  store i32 %403, i32* %432, align 4
  %433 = load i64, i64* %R9.i2578, align 8
  %434 = load i64, i64* %3, align 8
  store i64 %433, i64* %RDX.i2704, align 8
  %435 = load i64, i64* %RBP.i, align 8
  %436 = add i64 %435, -84
  %437 = add i64 %434, 6
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %436 to i32*
  %439 = load i32, i32* %438, align 4
  %440 = zext i32 %439 to i64
  store i64 %440, i64* %RCX.i2616, align 8
  %441 = add i64 %435, -88
  %442 = add i64 %434, 10
  store i64 %442, i64* %3, align 8
  %443 = inttoptr i64 %441 to i32*
  %444 = load i32, i32* %443, align 4
  %445 = zext i32 %444 to i64
  store i64 %445, i64* %370, align 8
  %446 = add i64 %434, 271124
  %447 = add i64 %434, 15
  %448 = load i64, i64* %6, align 8
  %449 = add i64 %448, -8
  %450 = inttoptr i64 %449 to i64*
  store i64 %447, i64* %450, align 8
  store i64 %449, i64* %6, align 8
  store i64 %446, i64* %3, align 8
  %call2_40fd86 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %446, %struct.Memory* %401)
  %.pre173 = load i64, i64* %RBP.i, align 8
  %.pre174 = load i64, i64* %3, align 8
  br label %block_.L_40fd8b

block_.L_40fd8b:                                  ; preds = %routine_idivl__ecx.exit, %block_.L_40fd2d
  %EAX.i2557.pre-phi = phi i32* [ %EAX.i2613, %routine_idivl__ecx.exit ], [ %.pre200, %block_.L_40fd2d ]
  %451 = phi i64 [ %.pre174, %routine_idivl__ecx.exit ], [ %298, %block_.L_40fd2d ]
  %452 = phi i64 [ %.pre173, %routine_idivl__ecx.exit ], [ %246, %block_.L_40fd2d ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_40fd86, %routine_idivl__ecx.exit ], [ %MEMORY.0, %block_.L_40fd2d ]
  %453 = add i64 %452, -8
  %454 = add i64 %451, 3
  store i64 %454, i64* %3, align 8
  %455 = inttoptr i64 %453 to i32*
  %456 = load i32, i32* %455, align 4
  %457 = add i32 %456, 20
  %458 = zext i32 %457 to i64
  store i64 %458, i64* %RAX.i2706, align 8
  %459 = icmp ugt i32 %456, -21
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %14, align 1
  %461 = and i32 %457, 255
  %462 = tail call i32 @llvm.ctpop.i32(i32 %461)
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 1
  %465 = xor i8 %464, 1
  store i8 %465, i8* %21, align 1
  %466 = xor i32 %456, 16
  %467 = xor i32 %466, %457
  %468 = lshr i32 %467, 4
  %469 = trunc i32 %468 to i8
  %470 = and i8 %469, 1
  store i8 %470, i8* %26, align 1
  %471 = icmp eq i32 %457, 0
  %472 = zext i1 %471 to i8
  store i8 %472, i8* %29, align 1
  %473 = lshr i32 %457, 31
  %474 = trunc i32 %473 to i8
  store i8 %474, i8* %32, align 1
  %475 = lshr i32 %456, 31
  %476 = xor i32 %473, %475
  %477 = add nuw nsw i32 %476, %473
  %478 = icmp eq i32 %477, 2
  %479 = zext i1 %478 to i8
  store i8 %479, i8* %38, align 1
  %RCX.i2558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %480 = sext i32 %457 to i64
  store i64 %480, i64* %RCX.i2558, align 8
  %481 = add nsw i64 %480, 12099168
  %482 = add i64 %451, 17
  store i64 %482, i64* %3, align 8
  %483 = inttoptr i64 %481 to i8*
  %484 = load i8, i8* %483, align 1
  %485 = zext i8 %484 to i64
  store i64 %485, i64* %RAX.i2706, align 8
  %486 = zext i8 %484 to i32
  %487 = add i64 %452, -12
  %488 = add i64 %451, 20
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %487 to i32*
  %490 = load i32, i32* %489, align 4
  %491 = sub i32 %486, %490
  %492 = icmp ult i32 %486, %490
  %493 = zext i1 %492 to i8
  store i8 %493, i8* %14, align 1
  %494 = and i32 %491, 255
  %495 = tail call i32 @llvm.ctpop.i32(i32 %494)
  %496 = trunc i32 %495 to i8
  %497 = and i8 %496, 1
  %498 = xor i8 %497, 1
  store i8 %498, i8* %21, align 1
  %499 = xor i32 %490, %486
  %500 = xor i32 %499, %491
  %501 = lshr i32 %500, 4
  %502 = trunc i32 %501 to i8
  %503 = and i8 %502, 1
  store i8 %503, i8* %26, align 1
  %504 = icmp eq i32 %491, 0
  %505 = zext i1 %504 to i8
  store i8 %505, i8* %29, align 1
  %506 = lshr i32 %491, 31
  %507 = trunc i32 %506 to i8
  store i8 %507, i8* %32, align 1
  %508 = lshr i32 %490, 31
  %509 = add nuw nsw i32 %506, %508
  %510 = icmp eq i32 %509, 2
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %38, align 1
  %.v204 = select i1 %504, i64 26, i64 420
  %512 = add i64 %451, %.v204
  %513 = add i64 %512, 3
  store i64 %513, i64* %3, align 8
  %514 = load i32, i32* %455, align 4
  %515 = zext i32 %514 to i64
  store i64 %515, i64* %RAX.i2706, align 8
  %516 = add i64 %512, 6
  store i64 %516, i64* %3, align 8
  br i1 %504, label %block_40fda5, label %block_.L_40ff2f

block_40fda5:                                     ; preds = %block_.L_40fd8b
  %517 = add i32 %514, 20
  %518 = zext i32 %517 to i64
  store i64 %518, i64* %RAX.i2706, align 8
  %519 = icmp ugt i32 %514, -21
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %14, align 1
  %521 = and i32 %517, 255
  %522 = tail call i32 @llvm.ctpop.i32(i32 %521)
  %523 = trunc i32 %522 to i8
  %524 = and i8 %523, 1
  %525 = xor i8 %524, 1
  store i8 %525, i8* %21, align 1
  %526 = xor i32 %514, 16
  %527 = xor i32 %526, %517
  %528 = lshr i32 %527, 4
  %529 = trunc i32 %528 to i8
  %530 = and i8 %529, 1
  store i8 %530, i8* %26, align 1
  %531 = icmp eq i32 %517, 0
  %532 = zext i1 %531 to i8
  store i8 %532, i8* %29, align 1
  %533 = lshr i32 %517, 31
  %534 = trunc i32 %533 to i8
  store i8 %534, i8* %32, align 1
  %535 = lshr i32 %514, 31
  %536 = xor i32 %533, %535
  %537 = add nuw nsw i32 %536, %533
  %538 = icmp eq i32 %537, 2
  %539 = zext i1 %538 to i8
  store i8 %539, i8* %38, align 1
  %540 = sext i32 %517 to i64
  store i64 %540, i64* %RCX.i2558, align 8
  %541 = shl nsw i64 %540, 2
  %542 = add nsw i64 %541, 11187184
  %543 = add i64 %512, 16
  store i64 %543, i64* %3, align 8
  %544 = inttoptr i64 %542 to i32*
  %545 = load i32, i32* %544, align 4
  %546 = zext i32 %545 to i64
  store i64 %546, i64* %RAX.i2706, align 8
  %547 = load i64, i64* %RBP.i, align 8
  %548 = add i64 %547, -20
  %549 = add i64 %512, 19
  store i64 %549, i64* %3, align 8
  %550 = inttoptr i64 %548 to i32*
  store i32 %545, i32* %550, align 4
  %551 = load i64, i64* %RBP.i, align 8
  %552 = add i64 %551, -8
  %553 = load i64, i64* %3, align 8
  %554 = add i64 %553, 3
  store i64 %554, i64* %3, align 8
  %555 = inttoptr i64 %552 to i32*
  %556 = load i32, i32* %555, align 4
  %557 = add i32 %556, -1
  %558 = zext i32 %557 to i64
  store i64 %558, i64* %RAX.i2706, align 8
  %559 = icmp eq i32 %556, 0
  %560 = zext i1 %559 to i8
  store i8 %560, i8* %14, align 1
  %561 = and i32 %557, 255
  %562 = tail call i32 @llvm.ctpop.i32(i32 %561)
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  %565 = xor i8 %564, 1
  store i8 %565, i8* %21, align 1
  %566 = xor i32 %557, %556
  %567 = lshr i32 %566, 4
  %568 = trunc i32 %567 to i8
  %569 = and i8 %568, 1
  store i8 %569, i8* %26, align 1
  %570 = icmp eq i32 %557, 0
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %29, align 1
  %572 = lshr i32 %557, 31
  %573 = trunc i32 %572 to i8
  store i8 %573, i8* %32, align 1
  %574 = lshr i32 %556, 31
  %575 = xor i32 %572, %574
  %576 = add nuw nsw i32 %575, %574
  %577 = icmp eq i32 %576, 2
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %38, align 1
  %579 = sext i32 %557 to i64
  store i64 %579, i64* %RCX.i2558, align 8
  %580 = add nsw i64 %579, 12099168
  %581 = add i64 %553, 17
  store i64 %581, i64* %3, align 8
  %582 = inttoptr i64 %580 to i8*
  %583 = load i8, i8* %582, align 1
  %584 = zext i8 %583 to i64
  store i64 %584, i64* %RAX.i2706, align 8
  %585 = zext i8 %583 to i32
  %586 = add i64 %551, -12
  %587 = add i64 %553, 20
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %586 to i32*
  %589 = load i32, i32* %588, align 4
  %590 = sub i32 %585, %589
  %591 = icmp ult i32 %585, %589
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %14, align 1
  %593 = and i32 %590, 255
  %594 = tail call i32 @llvm.ctpop.i32(i32 %593)
  %595 = trunc i32 %594 to i8
  %596 = and i8 %595, 1
  %597 = xor i8 %596, 1
  store i8 %597, i8* %21, align 1
  %598 = xor i32 %589, %585
  %599 = xor i32 %598, %590
  %600 = lshr i32 %599, 4
  %601 = trunc i32 %600 to i8
  %602 = and i8 %601, 1
  store i8 %602, i8* %26, align 1
  %603 = icmp eq i32 %590, 0
  %604 = zext i1 %603 to i8
  store i8 %604, i8* %29, align 1
  %605 = lshr i32 %590, 31
  %606 = trunc i32 %605 to i8
  store i8 %606, i8* %32, align 1
  %607 = lshr i32 %589, 31
  %608 = add nuw nsw i32 %605, %607
  %609 = icmp eq i32 %608, 2
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %38, align 1
  %.v327 = select i1 %603, i64 26, i64 163
  %611 = add i64 %553, %.v327
  store i64 %611, i64* %3, align 8
  br i1 %603, label %block_40fdd2, label %block_.L_40fe5b

block_40fdd2:                                     ; preds = %block_40fda5
  %612 = add i64 %611, 3
  store i64 %612, i64* %3, align 8
  %613 = load i32, i32* %555, align 4
  %614 = add i32 %613, -1
  %615 = zext i32 %614 to i64
  store i64 %615, i64* %RAX.i2706, align 8
  %616 = icmp eq i32 %613, 0
  %617 = zext i1 %616 to i8
  store i8 %617, i8* %14, align 1
  %618 = and i32 %614, 255
  %619 = tail call i32 @llvm.ctpop.i32(i32 %618)
  %620 = trunc i32 %619 to i8
  %621 = and i8 %620, 1
  %622 = xor i8 %621, 1
  store i8 %622, i8* %21, align 1
  %623 = xor i32 %614, %613
  %624 = lshr i32 %623, 4
  %625 = trunc i32 %624 to i8
  %626 = and i8 %625, 1
  store i8 %626, i8* %26, align 1
  %627 = icmp eq i32 %614, 0
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %29, align 1
  %629 = lshr i32 %614, 31
  %630 = trunc i32 %629 to i8
  store i8 %630, i8* %32, align 1
  %631 = lshr i32 %613, 31
  %632 = xor i32 %629, %631
  %633 = add nuw nsw i32 %632, %631
  %634 = icmp eq i32 %633, 2
  %635 = zext i1 %634 to i8
  store i8 %635, i8* %38, align 1
  %636 = sext i32 %614 to i64
  store i64 %636, i64* %RCX.i2558, align 8
  %637 = shl nsw i64 %636, 2
  %638 = add nsw i64 %637, 11187184
  %639 = add i64 %611, 16
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %638 to i32*
  %641 = load i32, i32* %640, align 4
  %642 = zext i32 %641 to i64
  store i64 %642, i64* %RAX.i2706, align 8
  %643 = add i64 %551, -20
  %644 = add i64 %611, 19
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %643 to i32*
  %646 = load i32, i32* %645, align 4
  %647 = sub i32 %641, %646
  %648 = icmp ult i32 %641, %646
  %649 = zext i1 %648 to i8
  store i8 %649, i8* %14, align 1
  %650 = and i32 %647, 255
  %651 = tail call i32 @llvm.ctpop.i32(i32 %650)
  %652 = trunc i32 %651 to i8
  %653 = and i8 %652, 1
  %654 = xor i8 %653, 1
  store i8 %654, i8* %21, align 1
  %655 = xor i32 %646, %641
  %656 = xor i32 %655, %647
  %657 = lshr i32 %656, 4
  %658 = trunc i32 %657 to i8
  %659 = and i8 %658, 1
  store i8 %659, i8* %26, align 1
  %660 = icmp eq i32 %647, 0
  %661 = zext i1 %660 to i8
  store i8 %661, i8* %29, align 1
  %662 = lshr i32 %647, 31
  %663 = trunc i32 %662 to i8
  store i8 %663, i8* %32, align 1
  %664 = lshr i32 %641, 31
  %665 = lshr i32 %646, 31
  %666 = xor i32 %665, %664
  %667 = xor i32 %662, %664
  %668 = add nuw nsw i32 %667, %666
  %669 = icmp eq i32 %668, 2
  %670 = zext i1 %669 to i8
  store i8 %670, i8* %38, align 1
  %.v333 = select i1 %660, i64 137, i64 25
  %671 = add i64 %611, %.v333
  store i64 %671, i64* %3, align 8
  br i1 %660, label %block_.L_40fe5b, label %block_40fdeb

block_40fdeb:                                     ; preds = %block_40fdd2
  %672 = add i64 %671, 3
  store i64 %672, i64* %3, align 8
  %673 = load i32, i32* %555, align 4
  %674 = add i32 %673, -1
  %675 = zext i32 %674 to i64
  store i64 %675, i64* %RAX.i2706, align 8
  %676 = icmp eq i32 %673, 0
  %677 = zext i1 %676 to i8
  store i8 %677, i8* %14, align 1
  %678 = and i32 %674, 255
  %679 = tail call i32 @llvm.ctpop.i32(i32 %678)
  %680 = trunc i32 %679 to i8
  %681 = and i8 %680, 1
  %682 = xor i8 %681, 1
  store i8 %682, i8* %21, align 1
  %683 = xor i32 %674, %673
  %684 = lshr i32 %683, 4
  %685 = trunc i32 %684 to i8
  %686 = and i8 %685, 1
  store i8 %686, i8* %26, align 1
  %687 = icmp eq i32 %674, 0
  %688 = zext i1 %687 to i8
  store i8 %688, i8* %29, align 1
  %689 = lshr i32 %674, 31
  %690 = trunc i32 %689 to i8
  store i8 %690, i8* %32, align 1
  %691 = lshr i32 %673, 31
  %692 = xor i32 %689, %691
  %693 = add nuw nsw i32 %692, %691
  %694 = icmp eq i32 %693, 2
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %38, align 1
  %696 = sext i32 %674 to i64
  store i64 %696, i64* %RCX.i2558, align 8
  %697 = shl nsw i64 %696, 2
  %698 = add nsw i64 %697, 11187184
  %699 = add i64 %671, 16
  store i64 %699, i64* %3, align 8
  %700 = inttoptr i64 %698 to i32*
  %701 = load i32, i32* %700, align 4
  %702 = zext i32 %701 to i64
  store i64 %702, i64* %RAX.i2706, align 8
  %703 = add i64 %551, -24
  %704 = add i64 %671, 19
  store i64 %704, i64* %3, align 8
  %705 = inttoptr i64 %703 to i32*
  store i32 %701, i32* %705, align 4
  %706 = load i64, i64* %RBP.i, align 8
  %707 = add i64 %706, -8
  %708 = load i64, i64* %3, align 8
  %709 = add i64 %708, 3
  store i64 %709, i64* %3, align 8
  %710 = inttoptr i64 %707 to i32*
  %711 = load i32, i32* %710, align 4
  %712 = add i32 %711, -20
  %713 = zext i32 %712 to i64
  store i64 %713, i64* %RAX.i2706, align 8
  %714 = icmp ult i32 %711, 20
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %14, align 1
  %716 = and i32 %712, 255
  %717 = tail call i32 @llvm.ctpop.i32(i32 %716)
  %718 = trunc i32 %717 to i8
  %719 = and i8 %718, 1
  %720 = xor i8 %719, 1
  store i8 %720, i8* %21, align 1
  %721 = xor i32 %711, 16
  %722 = xor i32 %721, %712
  %723 = lshr i32 %722, 4
  %724 = trunc i32 %723 to i8
  %725 = and i8 %724, 1
  store i8 %725, i8* %26, align 1
  %726 = icmp eq i32 %712, 0
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %29, align 1
  %728 = lshr i32 %712, 31
  %729 = trunc i32 %728 to i8
  store i8 %729, i8* %32, align 1
  %730 = lshr i32 %711, 31
  %731 = xor i32 %728, %730
  %732 = add nuw nsw i32 %731, %730
  %733 = icmp eq i32 %732, 2
  %734 = zext i1 %733 to i8
  store i8 %734, i8* %38, align 1
  %735 = sext i32 %712 to i64
  store i64 %735, i64* %RCX.i2558, align 8
  %736 = add nsw i64 %735, 12099168
  %737 = add i64 %708, 17
  store i64 %737, i64* %3, align 8
  %738 = inttoptr i64 %736 to i8*
  %739 = load i8, i8* %738, align 1
  %740 = zext i8 %739 to i64
  store i64 %740, i64* %RAX.i2706, align 8
  %741 = zext i8 %739 to i32
  %742 = add i64 %706, -12
  %743 = add i64 %708, 20
  store i64 %743, i64* %3, align 8
  %744 = inttoptr i64 %742 to i32*
  %745 = load i32, i32* %744, align 4
  %746 = sub i32 %741, %745
  %747 = icmp ult i32 %741, %745
  %748 = zext i1 %747 to i8
  store i8 %748, i8* %14, align 1
  %749 = and i32 %746, 255
  %750 = tail call i32 @llvm.ctpop.i32(i32 %749)
  %751 = trunc i32 %750 to i8
  %752 = and i8 %751, 1
  %753 = xor i8 %752, 1
  store i8 %753, i8* %21, align 1
  %754 = xor i32 %745, %741
  %755 = xor i32 %754, %746
  %756 = lshr i32 %755, 4
  %757 = trunc i32 %756 to i8
  %758 = and i8 %757, 1
  store i8 %758, i8* %26, align 1
  %759 = icmp eq i32 %746, 0
  %760 = zext i1 %759 to i8
  store i8 %760, i8* %29, align 1
  %761 = lshr i32 %746, 31
  %762 = trunc i32 %761 to i8
  store i8 %762, i8* %32, align 1
  %763 = lshr i32 %745, 31
  %764 = add nuw nsw i32 %761, %763
  %765 = icmp eq i32 %764, 2
  %766 = zext i1 %765 to i8
  store i8 %766, i8* %38, align 1
  %.v334 = select i1 %759, i64 26, i64 88
  %767 = add i64 %708, %.v334
  store i64 %767, i64* %3, align 8
  br i1 %759, label %block_40fe18, label %block_.L_40fe56

block_40fe18:                                     ; preds = %block_40fdeb
  %768 = add i64 %767, 3
  store i64 %768, i64* %3, align 8
  %769 = load i32, i32* %710, align 4
  %770 = add i32 %769, -20
  %771 = zext i32 %770 to i64
  store i64 %771, i64* %RAX.i2706, align 8
  %772 = icmp ult i32 %769, 20
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %14, align 1
  %774 = and i32 %770, 255
  %775 = tail call i32 @llvm.ctpop.i32(i32 %774)
  %776 = trunc i32 %775 to i8
  %777 = and i8 %776, 1
  %778 = xor i8 %777, 1
  store i8 %778, i8* %21, align 1
  %779 = xor i32 %769, 16
  %780 = xor i32 %779, %770
  %781 = lshr i32 %780, 4
  %782 = trunc i32 %781 to i8
  %783 = and i8 %782, 1
  store i8 %783, i8* %26, align 1
  %784 = icmp eq i32 %770, 0
  %785 = zext i1 %784 to i8
  store i8 %785, i8* %29, align 1
  %786 = lshr i32 %770, 31
  %787 = trunc i32 %786 to i8
  store i8 %787, i8* %32, align 1
  %788 = lshr i32 %769, 31
  %789 = xor i32 %786, %788
  %790 = add nuw nsw i32 %789, %788
  %791 = icmp eq i32 %790, 2
  %792 = zext i1 %791 to i8
  store i8 %792, i8* %38, align 1
  %793 = sext i32 %770 to i64
  store i64 %793, i64* %RCX.i2558, align 8
  %794 = shl nsw i64 %793, 2
  %795 = add nsw i64 %794, 11187184
  %796 = add i64 %767, 16
  store i64 %796, i64* %3, align 8
  %797 = inttoptr i64 %795 to i32*
  %798 = load i32, i32* %797, align 4
  %799 = zext i32 %798 to i64
  store i64 %799, i64* %RAX.i2706, align 8
  %800 = add i64 %706, -20
  %801 = add i64 %767, 19
  store i64 %801, i64* %3, align 8
  %802 = inttoptr i64 %800 to i32*
  %803 = load i32, i32* %802, align 4
  %804 = sub i32 %798, %803
  %805 = icmp ult i32 %798, %803
  %806 = zext i1 %805 to i8
  store i8 %806, i8* %14, align 1
  %807 = and i32 %804, 255
  %808 = tail call i32 @llvm.ctpop.i32(i32 %807)
  %809 = trunc i32 %808 to i8
  %810 = and i8 %809, 1
  %811 = xor i8 %810, 1
  store i8 %811, i8* %21, align 1
  %812 = xor i32 %803, %798
  %813 = xor i32 %812, %804
  %814 = lshr i32 %813, 4
  %815 = trunc i32 %814 to i8
  %816 = and i8 %815, 1
  store i8 %816, i8* %26, align 1
  %817 = icmp eq i32 %804, 0
  %818 = zext i1 %817 to i8
  store i8 %818, i8* %29, align 1
  %819 = lshr i32 %804, 31
  %820 = trunc i32 %819 to i8
  store i8 %820, i8* %32, align 1
  %821 = lshr i32 %798, 31
  %822 = lshr i32 %803, 31
  %823 = xor i32 %822, %821
  %824 = xor i32 %819, %821
  %825 = add nuw nsw i32 %824, %823
  %826 = icmp eq i32 %825, 2
  %827 = zext i1 %826 to i8
  store i8 %827, i8* %38, align 1
  %.v335 = select i1 %817, i64 62, i64 25
  %828 = add i64 %767, %.v335
  store i64 %828, i64* %3, align 8
  br i1 %817, label %block_.L_40fe56, label %block_40fe31

block_40fe31:                                     ; preds = %block_40fe18
  %829 = add i64 %828, 3
  store i64 %829, i64* %3, align 8
  %830 = load i32, i32* %710, align 4
  %831 = add i32 %830, -20
  %832 = zext i32 %831 to i64
  store i64 %832, i64* %RAX.i2706, align 8
  %833 = icmp ult i32 %830, 20
  %834 = zext i1 %833 to i8
  store i8 %834, i8* %14, align 1
  %835 = and i32 %831, 255
  %836 = tail call i32 @llvm.ctpop.i32(i32 %835)
  %837 = trunc i32 %836 to i8
  %838 = and i8 %837, 1
  %839 = xor i8 %838, 1
  store i8 %839, i8* %21, align 1
  %840 = xor i32 %830, 16
  %841 = xor i32 %840, %831
  %842 = lshr i32 %841, 4
  %843 = trunc i32 %842 to i8
  %844 = and i8 %843, 1
  store i8 %844, i8* %26, align 1
  %845 = icmp eq i32 %831, 0
  %846 = zext i1 %845 to i8
  store i8 %846, i8* %29, align 1
  %847 = lshr i32 %831, 31
  %848 = trunc i32 %847 to i8
  store i8 %848, i8* %32, align 1
  %849 = lshr i32 %830, 31
  %850 = xor i32 %847, %849
  %851 = add nuw nsw i32 %850, %849
  %852 = icmp eq i32 %851, 2
  %853 = zext i1 %852 to i8
  store i8 %853, i8* %38, align 1
  %854 = sext i32 %831 to i64
  store i64 %854, i64* %RCX.i2558, align 8
  %855 = shl nsw i64 %854, 2
  %856 = add nsw i64 %855, 11187184
  %857 = add i64 %828, 16
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %856 to i32*
  %859 = load i32, i32* %858, align 4
  %860 = zext i32 %859 to i64
  store i64 %860, i64* %RAX.i2706, align 8
  %861 = add i64 %706, -24
  %862 = add i64 %828, 19
  store i64 %862, i64* %3, align 8
  %863 = inttoptr i64 %861 to i32*
  %864 = load i32, i32* %863, align 4
  %865 = sub i32 %859, %864
  %866 = icmp ult i32 %859, %864
  %867 = zext i1 %866 to i8
  store i8 %867, i8* %14, align 1
  %868 = and i32 %865, 255
  %869 = tail call i32 @llvm.ctpop.i32(i32 %868)
  %870 = trunc i32 %869 to i8
  %871 = and i8 %870, 1
  %872 = xor i8 %871, 1
  store i8 %872, i8* %21, align 1
  %873 = xor i32 %864, %859
  %874 = xor i32 %873, %865
  %875 = lshr i32 %874, 4
  %876 = trunc i32 %875 to i8
  %877 = and i8 %876, 1
  store i8 %877, i8* %26, align 1
  %878 = icmp eq i32 %865, 0
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %29, align 1
  %880 = lshr i32 %865, 31
  %881 = trunc i32 %880 to i8
  store i8 %881, i8* %32, align 1
  %882 = lshr i32 %859, 31
  %883 = lshr i32 %864, 31
  %884 = xor i32 %883, %882
  %885 = xor i32 %880, %882
  %886 = add nuw nsw i32 %885, %884
  %887 = icmp eq i32 %886, 2
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %38, align 1
  %.v336 = select i1 %878, i64 37, i64 25
  %889 = add i64 %828, %.v336
  store i64 %889, i64* %3, align 8
  br i1 %878, label %block_.L_40fe56, label %block_40fe4a

block_40fe4a:                                     ; preds = %block_40fe31
  %890 = add i64 %706, -4
  %891 = add i64 %889, 7
  store i64 %891, i64* %3, align 8
  %892 = inttoptr i64 %890 to i32*
  store i32 -1, i32* %892, align 4
  %893 = load i64, i64* %3, align 8
  %894 = add i64 %893, 4213
  store i64 %894, i64* %3, align 8
  br label %block_.L_410ec6

block_.L_40fe56:                                  ; preds = %block_40fdeb, %block_40fe31, %block_40fe18
  %895 = phi i64 [ %889, %block_40fe31 ], [ %828, %block_40fe18 ], [ %767, %block_40fdeb ]
  %896 = add i64 %895, 80
  br label %block_.L_40fea6

block_.L_40fe5b:                                  ; preds = %block_40fda5, %block_40fdd2
  %897 = phi i64 [ %671, %block_40fdd2 ], [ %611, %block_40fda5 ]
  %898 = add i64 %897, 3
  store i64 %898, i64* %3, align 8
  %899 = load i32, i32* %555, align 4
  %900 = add i32 %899, -20
  %901 = zext i32 %900 to i64
  store i64 %901, i64* %RAX.i2706, align 8
  %902 = icmp ult i32 %899, 20
  %903 = zext i1 %902 to i8
  store i8 %903, i8* %14, align 1
  %904 = and i32 %900, 255
  %905 = tail call i32 @llvm.ctpop.i32(i32 %904)
  %906 = trunc i32 %905 to i8
  %907 = and i8 %906, 1
  %908 = xor i8 %907, 1
  store i8 %908, i8* %21, align 1
  %909 = xor i32 %899, 16
  %910 = xor i32 %909, %900
  %911 = lshr i32 %910, 4
  %912 = trunc i32 %911 to i8
  %913 = and i8 %912, 1
  store i8 %913, i8* %26, align 1
  %914 = icmp eq i32 %900, 0
  %915 = zext i1 %914 to i8
  store i8 %915, i8* %29, align 1
  %916 = lshr i32 %900, 31
  %917 = trunc i32 %916 to i8
  store i8 %917, i8* %32, align 1
  %918 = lshr i32 %899, 31
  %919 = xor i32 %916, %918
  %920 = add nuw nsw i32 %919, %918
  %921 = icmp eq i32 %920, 2
  %922 = zext i1 %921 to i8
  store i8 %922, i8* %38, align 1
  %923 = sext i32 %900 to i64
  store i64 %923, i64* %RCX.i2558, align 8
  %924 = add nsw i64 %923, 12099168
  %925 = add i64 %897, 17
  store i64 %925, i64* %3, align 8
  %926 = inttoptr i64 %924 to i8*
  %927 = load i8, i8* %926, align 1
  %928 = zext i8 %927 to i64
  store i64 %928, i64* %RAX.i2706, align 8
  %929 = zext i8 %927 to i32
  %930 = add i64 %897, 20
  store i64 %930, i64* %3, align 8
  %931 = load i32, i32* %588, align 4
  %932 = sub i32 %929, %931
  %933 = icmp ult i32 %929, %931
  %934 = zext i1 %933 to i8
  store i8 %934, i8* %14, align 1
  %935 = and i32 %932, 255
  %936 = tail call i32 @llvm.ctpop.i32(i32 %935)
  %937 = trunc i32 %936 to i8
  %938 = and i8 %937, 1
  %939 = xor i8 %938, 1
  store i8 %939, i8* %21, align 1
  %940 = xor i32 %931, %929
  %941 = xor i32 %940, %932
  %942 = lshr i32 %941, 4
  %943 = trunc i32 %942 to i8
  %944 = and i8 %943, 1
  store i8 %944, i8* %26, align 1
  %945 = icmp eq i32 %932, 0
  %946 = zext i1 %945 to i8
  store i8 %946, i8* %29, align 1
  %947 = lshr i32 %932, 31
  %948 = trunc i32 %947 to i8
  store i8 %948, i8* %32, align 1
  %949 = lshr i32 %931, 31
  %950 = add nuw nsw i32 %947, %949
  %951 = icmp eq i32 %950, 2
  %952 = zext i1 %951 to i8
  store i8 %952, i8* %38, align 1
  %.v328 = select i1 %945, i64 26, i64 70
  %953 = add i64 %897, %.v328
  store i64 %953, i64* %3, align 8
  br i1 %945, label %block_40fe75, label %block_.L_40fea1

block_40fe75:                                     ; preds = %block_.L_40fe5b
  %954 = add i64 %953, 3
  store i64 %954, i64* %3, align 8
  %955 = load i32, i32* %555, align 4
  %956 = add i32 %955, -20
  %957 = zext i32 %956 to i64
  store i64 %957, i64* %RAX.i2706, align 8
  %958 = icmp ult i32 %955, 20
  %959 = zext i1 %958 to i8
  store i8 %959, i8* %14, align 1
  %960 = and i32 %956, 255
  %961 = tail call i32 @llvm.ctpop.i32(i32 %960)
  %962 = trunc i32 %961 to i8
  %963 = and i8 %962, 1
  %964 = xor i8 %963, 1
  store i8 %964, i8* %21, align 1
  %965 = xor i32 %955, 16
  %966 = xor i32 %965, %956
  %967 = lshr i32 %966, 4
  %968 = trunc i32 %967 to i8
  %969 = and i8 %968, 1
  store i8 %969, i8* %26, align 1
  %970 = icmp eq i32 %956, 0
  %971 = zext i1 %970 to i8
  store i8 %971, i8* %29, align 1
  %972 = lshr i32 %956, 31
  %973 = trunc i32 %972 to i8
  store i8 %973, i8* %32, align 1
  %974 = lshr i32 %955, 31
  %975 = xor i32 %972, %974
  %976 = add nuw nsw i32 %975, %974
  %977 = icmp eq i32 %976, 2
  %978 = zext i1 %977 to i8
  store i8 %978, i8* %38, align 1
  %979 = sext i32 %956 to i64
  store i64 %979, i64* %RCX.i2558, align 8
  %980 = shl nsw i64 %979, 2
  %981 = add nsw i64 %980, 11187184
  %982 = add i64 %953, 16
  store i64 %982, i64* %3, align 8
  %983 = inttoptr i64 %981 to i32*
  %984 = load i32, i32* %983, align 4
  %985 = zext i32 %984 to i64
  store i64 %985, i64* %RAX.i2706, align 8
  %986 = add i64 %551, -20
  %987 = add i64 %953, 19
  store i64 %987, i64* %3, align 8
  %988 = inttoptr i64 %986 to i32*
  %989 = load i32, i32* %988, align 4
  %990 = sub i32 %984, %989
  %991 = icmp ult i32 %984, %989
  %992 = zext i1 %991 to i8
  store i8 %992, i8* %14, align 1
  %993 = and i32 %990, 255
  %994 = tail call i32 @llvm.ctpop.i32(i32 %993)
  %995 = trunc i32 %994 to i8
  %996 = and i8 %995, 1
  %997 = xor i8 %996, 1
  store i8 %997, i8* %21, align 1
  %998 = xor i32 %989, %984
  %999 = xor i32 %998, %990
  %1000 = lshr i32 %999, 4
  %1001 = trunc i32 %1000 to i8
  %1002 = and i8 %1001, 1
  store i8 %1002, i8* %26, align 1
  %1003 = icmp eq i32 %990, 0
  %1004 = zext i1 %1003 to i8
  store i8 %1004, i8* %29, align 1
  %1005 = lshr i32 %990, 31
  %1006 = trunc i32 %1005 to i8
  store i8 %1006, i8* %32, align 1
  %1007 = lshr i32 %984, 31
  %1008 = lshr i32 %989, 31
  %1009 = xor i32 %1008, %1007
  %1010 = xor i32 %1005, %1007
  %1011 = add nuw nsw i32 %1010, %1009
  %1012 = icmp eq i32 %1011, 2
  %1013 = zext i1 %1012 to i8
  store i8 %1013, i8* %38, align 1
  %.v332 = select i1 %1003, i64 44, i64 25
  %1014 = add i64 %953, %.v332
  store i64 %1014, i64* %3, align 8
  br i1 %1003, label %block_.L_40fea1, label %block_40fe8e

block_40fe8e:                                     ; preds = %block_40fe75
  %1015 = add i64 %1014, 3
  store i64 %1015, i64* %3, align 8
  %1016 = load i32, i32* %555, align 4
  %1017 = add i32 %1016, -20
  %1018 = zext i32 %1017 to i64
  store i64 %1018, i64* %RAX.i2706, align 8
  %1019 = icmp ult i32 %1016, 20
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %14, align 1
  %1021 = and i32 %1017, 255
  %1022 = tail call i32 @llvm.ctpop.i32(i32 %1021)
  %1023 = trunc i32 %1022 to i8
  %1024 = and i8 %1023, 1
  %1025 = xor i8 %1024, 1
  store i8 %1025, i8* %21, align 1
  %1026 = xor i32 %1016, 16
  %1027 = xor i32 %1026, %1017
  %1028 = lshr i32 %1027, 4
  %1029 = trunc i32 %1028 to i8
  %1030 = and i8 %1029, 1
  store i8 %1030, i8* %26, align 1
  %1031 = icmp eq i32 %1017, 0
  %1032 = zext i1 %1031 to i8
  store i8 %1032, i8* %29, align 1
  %1033 = lshr i32 %1017, 31
  %1034 = trunc i32 %1033 to i8
  store i8 %1034, i8* %32, align 1
  %1035 = lshr i32 %1016, 31
  %1036 = xor i32 %1033, %1035
  %1037 = add nuw nsw i32 %1036, %1035
  %1038 = icmp eq i32 %1037, 2
  %1039 = zext i1 %1038 to i8
  store i8 %1039, i8* %38, align 1
  %1040 = sext i32 %1017 to i64
  store i64 %1040, i64* %RCX.i2558, align 8
  %1041 = shl nsw i64 %1040, 2
  %1042 = add nsw i64 %1041, 11187184
  %1043 = add i64 %1014, 16
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1042 to i32*
  %1045 = load i32, i32* %1044, align 4
  %1046 = zext i32 %1045 to i64
  store i64 %1046, i64* %RAX.i2706, align 8
  %1047 = add i64 %551, -24
  %1048 = add i64 %1014, 19
  store i64 %1048, i64* %3, align 8
  %1049 = inttoptr i64 %1047 to i32*
  store i32 %1045, i32* %1049, align 4
  %.pre175 = load i64, i64* %3, align 8
  %.pre176.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_40fea1

block_.L_40fea1:                                  ; preds = %block_.L_40fe5b, %block_40fe8e, %block_40fe75
  %.pre176 = phi i64 [ %.pre176.pre, %block_40fe8e ], [ %551, %block_40fe75 ], [ %551, %block_.L_40fe5b ]
  %1050 = phi i64 [ %.pre175, %block_40fe8e ], [ %1014, %block_40fe75 ], [ %953, %block_.L_40fe5b ]
  %1051 = add i64 %1050, 5
  store i64 %1051, i64* %3, align 8
  br label %block_.L_40fea6

block_.L_40fea6:                                  ; preds = %block_.L_40fea1, %block_.L_40fe56
  %1052 = phi i64 [ %706, %block_.L_40fe56 ], [ %.pre176, %block_.L_40fea1 ]
  %storemerge = phi i64 [ %896, %block_.L_40fe56 ], [ %1051, %block_.L_40fea1 ]
  %1053 = add i64 %1052, -8
  %1054 = add i64 %storemerge, 3
  store i64 %1054, i64* %3, align 8
  %1055 = inttoptr i64 %1053 to i32*
  %1056 = load i32, i32* %1055, align 4
  %1057 = add i32 %1056, 1
  %1058 = zext i32 %1057 to i64
  store i64 %1058, i64* %RAX.i2706, align 8
  %1059 = icmp eq i32 %1056, -1
  %1060 = icmp eq i32 %1057, 0
  %1061 = or i1 %1059, %1060
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %14, align 1
  %1063 = and i32 %1057, 255
  %1064 = tail call i32 @llvm.ctpop.i32(i32 %1063)
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  %1067 = xor i8 %1066, 1
  store i8 %1067, i8* %21, align 1
  %1068 = xor i32 %1057, %1056
  %1069 = lshr i32 %1068, 4
  %1070 = trunc i32 %1069 to i8
  %1071 = and i8 %1070, 1
  store i8 %1071, i8* %26, align 1
  %1072 = zext i1 %1060 to i8
  store i8 %1072, i8* %29, align 1
  %1073 = lshr i32 %1057, 31
  %1074 = trunc i32 %1073 to i8
  store i8 %1074, i8* %32, align 1
  %1075 = lshr i32 %1056, 31
  %1076 = xor i32 %1073, %1075
  %1077 = add nuw nsw i32 %1076, %1073
  %1078 = icmp eq i32 %1077, 2
  %1079 = zext i1 %1078 to i8
  store i8 %1079, i8* %38, align 1
  %1080 = sext i32 %1057 to i64
  store i64 %1080, i64* %RCX.i2558, align 8
  %1081 = add nsw i64 %1080, 12099168
  %1082 = add i64 %storemerge, 17
  store i64 %1082, i64* %3, align 8
  %1083 = inttoptr i64 %1081 to i8*
  %1084 = load i8, i8* %1083, align 1
  %1085 = zext i8 %1084 to i64
  store i64 %1085, i64* %RAX.i2706, align 8
  %1086 = zext i8 %1084 to i32
  %1087 = add i64 %1052, -12
  %1088 = add i64 %storemerge, 20
  store i64 %1088, i64* %3, align 8
  %1089 = inttoptr i64 %1087 to i32*
  %1090 = load i32, i32* %1089, align 4
  %1091 = sub i32 %1086, %1090
  %1092 = icmp ult i32 %1086, %1090
  %1093 = zext i1 %1092 to i8
  store i8 %1093, i8* %14, align 1
  %1094 = and i32 %1091, 255
  %1095 = tail call i32 @llvm.ctpop.i32(i32 %1094)
  %1096 = trunc i32 %1095 to i8
  %1097 = and i8 %1096, 1
  %1098 = xor i8 %1097, 1
  store i8 %1098, i8* %21, align 1
  %1099 = xor i32 %1090, %1086
  %1100 = xor i32 %1099, %1091
  %1101 = lshr i32 %1100, 4
  %1102 = trunc i32 %1101 to i8
  %1103 = and i8 %1102, 1
  store i8 %1103, i8* %26, align 1
  %1104 = icmp eq i32 %1091, 0
  %1105 = zext i1 %1104 to i8
  store i8 %1105, i8* %29, align 1
  %1106 = lshr i32 %1091, 31
  %1107 = trunc i32 %1106 to i8
  store i8 %1107, i8* %32, align 1
  %1108 = lshr i32 %1090, 31
  %1109 = add nuw nsw i32 %1106, %1108
  %1110 = icmp eq i32 %1109, 2
  %1111 = zext i1 %1110 to i8
  store i8 %1111, i8* %38, align 1
  %.v329 = select i1 %1104, i64 26, i64 132
  %1112 = add i64 %storemerge, %.v329
  store i64 %1112, i64* %3, align 8
  br i1 %1104, label %block_40fec0, label %block_.L_40ff2a

block_40fec0:                                     ; preds = %block_.L_40fea6
  %1113 = add i64 %1112, 3
  store i64 %1113, i64* %3, align 8
  %1114 = load i32, i32* %1055, align 4
  %1115 = add i32 %1114, 1
  %1116 = zext i32 %1115 to i64
  store i64 %1116, i64* %RAX.i2706, align 8
  %1117 = icmp eq i32 %1114, -1
  %1118 = icmp eq i32 %1115, 0
  %1119 = or i1 %1117, %1118
  %1120 = zext i1 %1119 to i8
  store i8 %1120, i8* %14, align 1
  %1121 = and i32 %1115, 255
  %1122 = tail call i32 @llvm.ctpop.i32(i32 %1121)
  %1123 = trunc i32 %1122 to i8
  %1124 = and i8 %1123, 1
  %1125 = xor i8 %1124, 1
  store i8 %1125, i8* %21, align 1
  %1126 = xor i32 %1115, %1114
  %1127 = lshr i32 %1126, 4
  %1128 = trunc i32 %1127 to i8
  %1129 = and i8 %1128, 1
  store i8 %1129, i8* %26, align 1
  %1130 = zext i1 %1118 to i8
  store i8 %1130, i8* %29, align 1
  %1131 = lshr i32 %1115, 31
  %1132 = trunc i32 %1131 to i8
  store i8 %1132, i8* %32, align 1
  %1133 = lshr i32 %1114, 31
  %1134 = xor i32 %1131, %1133
  %1135 = add nuw nsw i32 %1134, %1131
  %1136 = icmp eq i32 %1135, 2
  %1137 = zext i1 %1136 to i8
  store i8 %1137, i8* %38, align 1
  %1138 = sext i32 %1115 to i64
  store i64 %1138, i64* %RCX.i2558, align 8
  %1139 = shl nsw i64 %1138, 2
  %1140 = add nsw i64 %1139, 11187184
  %1141 = add i64 %1112, 16
  store i64 %1141, i64* %3, align 8
  %1142 = inttoptr i64 %1140 to i32*
  %1143 = load i32, i32* %1142, align 4
  %1144 = zext i32 %1143 to i64
  store i64 %1144, i64* %RAX.i2706, align 8
  %1145 = add i64 %1052, -20
  %1146 = add i64 %1112, 19
  store i64 %1146, i64* %3, align 8
  %1147 = inttoptr i64 %1145 to i32*
  %1148 = load i32, i32* %1147, align 4
  %1149 = sub i32 %1143, %1148
  %1150 = icmp ult i32 %1143, %1148
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %14, align 1
  %1152 = and i32 %1149, 255
  %1153 = tail call i32 @llvm.ctpop.i32(i32 %1152)
  %1154 = trunc i32 %1153 to i8
  %1155 = and i8 %1154, 1
  %1156 = xor i8 %1155, 1
  store i8 %1156, i8* %21, align 1
  %1157 = xor i32 %1148, %1143
  %1158 = xor i32 %1157, %1149
  %1159 = lshr i32 %1158, 4
  %1160 = trunc i32 %1159 to i8
  %1161 = and i8 %1160, 1
  store i8 %1161, i8* %26, align 1
  %1162 = icmp eq i32 %1149, 0
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %29, align 1
  %1164 = lshr i32 %1149, 31
  %1165 = trunc i32 %1164 to i8
  store i8 %1165, i8* %32, align 1
  %1166 = lshr i32 %1143, 31
  %1167 = lshr i32 %1148, 31
  %1168 = xor i32 %1167, %1166
  %1169 = xor i32 %1164, %1166
  %1170 = add nuw nsw i32 %1169, %1168
  %1171 = icmp eq i32 %1170, 2
  %1172 = zext i1 %1171 to i8
  store i8 %1172, i8* %38, align 1
  %.v330 = select i1 %1162, i64 106, i64 25
  %1173 = add i64 %1112, %.v330
  store i64 %1173, i64* %3, align 8
  br i1 %1162, label %block_.L_40ff2a, label %block_40fed9

block_40fed9:                                     ; preds = %block_40fec0
  %1174 = add i64 %1052, -24
  %1175 = add i64 %1173, 4
  store i64 %1175, i64* %3, align 8
  %1176 = inttoptr i64 %1174 to i32*
  %1177 = load i32, i32* %1176, align 4
  store i8 0, i8* %14, align 1
  %1178 = and i32 %1177, 255
  %1179 = tail call i32 @llvm.ctpop.i32(i32 %1178)
  %1180 = trunc i32 %1179 to i8
  %1181 = and i8 %1180, 1
  %1182 = xor i8 %1181, 1
  store i8 %1182, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1183 = icmp eq i32 %1177, 0
  %1184 = zext i1 %1183 to i8
  store i8 %1184, i8* %29, align 1
  %1185 = lshr i32 %1177, 31
  %1186 = trunc i32 %1185 to i8
  store i8 %1186, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1187 = icmp ne i8 %1186, 0
  %.v = select i1 %1187, i64 6, i64 30
  %1188 = add i64 %1175, %.v
  %1189 = add i64 %1188, 3
  store i64 %1189, i64* %3, align 8
  %1190 = load i32, i32* %1055, align 4
  %1191 = add i32 %1190, 1
  %1192 = zext i32 %1191 to i64
  store i64 %1192, i64* %RAX.i2706, align 8
  %1193 = icmp eq i32 %1190, -1
  %1194 = icmp eq i32 %1191, 0
  %1195 = or i1 %1193, %1194
  %1196 = zext i1 %1195 to i8
  store i8 %1196, i8* %14, align 1
  %1197 = and i32 %1191, 255
  %1198 = tail call i32 @llvm.ctpop.i32(i32 %1197)
  %1199 = trunc i32 %1198 to i8
  %1200 = and i8 %1199, 1
  %1201 = xor i8 %1200, 1
  store i8 %1201, i8* %21, align 1
  %1202 = xor i32 %1191, %1190
  %1203 = lshr i32 %1202, 4
  %1204 = trunc i32 %1203 to i8
  %1205 = and i8 %1204, 1
  store i8 %1205, i8* %26, align 1
  %1206 = zext i1 %1194 to i8
  store i8 %1206, i8* %29, align 1
  %1207 = lshr i32 %1191, 31
  %1208 = trunc i32 %1207 to i8
  store i8 %1208, i8* %32, align 1
  %1209 = lshr i32 %1190, 31
  %1210 = xor i32 %1207, %1209
  %1211 = add nuw nsw i32 %1210, %1207
  %1212 = icmp eq i32 %1211, 2
  %1213 = zext i1 %1212 to i8
  store i8 %1213, i8* %38, align 1
  %1214 = sext i32 %1191 to i64
  store i64 %1214, i64* %RCX.i2558, align 8
  %1215 = shl nsw i64 %1214, 2
  %1216 = add nsw i64 %1215, 11187184
  %1217 = add i64 %1188, 16
  store i64 %1217, i64* %3, align 8
  %1218 = inttoptr i64 %1216 to i32*
  %1219 = load i32, i32* %1218, align 4
  %1220 = zext i32 %1219 to i64
  store i64 %1220, i64* %RAX.i2706, align 8
  %1221 = add i64 %1188, 19
  store i64 %1221, i64* %3, align 8
  br i1 %1187, label %block_40fee3, label %block_.L_40fefb

block_40fee3:                                     ; preds = %block_40fed9
  store i32 %1219, i32* %1176, align 4
  %1222 = load i64, i64* %3, align 8
  %1223 = add i64 %1222, 47
  br label %block_.L_40ff25

block_.L_40fefb:                                  ; preds = %block_40fed9
  %1224 = load i32, i32* %1176, align 4
  %1225 = sub i32 %1219, %1224
  %1226 = icmp ult i32 %1219, %1224
  %1227 = zext i1 %1226 to i8
  store i8 %1227, i8* %14, align 1
  %1228 = and i32 %1225, 255
  %1229 = tail call i32 @llvm.ctpop.i32(i32 %1228)
  %1230 = trunc i32 %1229 to i8
  %1231 = and i8 %1230, 1
  %1232 = xor i8 %1231, 1
  store i8 %1232, i8* %21, align 1
  %1233 = xor i32 %1224, %1219
  %1234 = xor i32 %1233, %1225
  %1235 = lshr i32 %1234, 4
  %1236 = trunc i32 %1235 to i8
  %1237 = and i8 %1236, 1
  store i8 %1237, i8* %26, align 1
  %1238 = icmp eq i32 %1225, 0
  %1239 = zext i1 %1238 to i8
  store i8 %1239, i8* %29, align 1
  %1240 = lshr i32 %1225, 31
  %1241 = trunc i32 %1240 to i8
  store i8 %1241, i8* %32, align 1
  %1242 = lshr i32 %1219, 31
  %1243 = lshr i32 %1224, 31
  %1244 = xor i32 %1243, %1242
  %1245 = xor i32 %1240, %1242
  %1246 = add nuw nsw i32 %1245, %1244
  %1247 = icmp eq i32 %1246, 2
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %38, align 1
  %.v331 = select i1 %1238, i64 37, i64 25
  %1249 = add i64 %1188, %.v331
  store i64 %1249, i64* %3, align 8
  br i1 %1238, label %block_.L_40ff20, label %block_40ff14

block_40ff14:                                     ; preds = %block_.L_40fefb
  %1250 = add i64 %1052, -4
  %1251 = add i64 %1249, 7
  store i64 %1251, i64* %3, align 8
  %1252 = inttoptr i64 %1250 to i32*
  store i32 -1, i32* %1252, align 4
  %1253 = load i64, i64* %3, align 8
  %1254 = add i64 %1253, 4011
  store i64 %1254, i64* %3, align 8
  br label %block_.L_410ec6

block_.L_40ff20:                                  ; preds = %block_.L_40fefb
  %1255 = add i64 %1249, 5
  store i64 %1255, i64* %3, align 8
  br label %block_.L_40ff25

block_.L_40ff25:                                  ; preds = %block_.L_40ff20, %block_40fee3
  %storemerge141 = phi i64 [ %1223, %block_40fee3 ], [ %1255, %block_.L_40ff20 ]
  %1256 = add i64 %storemerge141, 5
  store i64 %1256, i64* %3, align 8
  br label %block_.L_40ff2a

block_.L_40ff2a:                                  ; preds = %block_.L_40fea6, %block_.L_40ff25, %block_40fec0
  %1257 = phi i64 [ %1256, %block_.L_40ff25 ], [ %1173, %block_40fec0 ], [ %1112, %block_.L_40fea6 ]
  %1258 = add i64 %1257, 473
  br label %block_.L_410103

block_.L_40ff2f:                                  ; preds = %block_.L_40fd8b
  %1259 = add i32 %514, -1
  %1260 = zext i32 %1259 to i64
  store i64 %1260, i64* %RAX.i2706, align 8
  %1261 = icmp eq i32 %514, 0
  %1262 = zext i1 %1261 to i8
  store i8 %1262, i8* %14, align 1
  %1263 = and i32 %1259, 255
  %1264 = tail call i32 @llvm.ctpop.i32(i32 %1263)
  %1265 = trunc i32 %1264 to i8
  %1266 = and i8 %1265, 1
  %1267 = xor i8 %1266, 1
  store i8 %1267, i8* %21, align 1
  %1268 = xor i32 %1259, %514
  %1269 = lshr i32 %1268, 4
  %1270 = trunc i32 %1269 to i8
  %1271 = and i8 %1270, 1
  store i8 %1271, i8* %26, align 1
  %1272 = icmp eq i32 %1259, 0
  %1273 = zext i1 %1272 to i8
  store i8 %1273, i8* %29, align 1
  %1274 = lshr i32 %1259, 31
  %1275 = trunc i32 %1274 to i8
  store i8 %1275, i8* %32, align 1
  %1276 = lshr i32 %514, 31
  %1277 = xor i32 %1274, %1276
  %1278 = add nuw nsw i32 %1277, %1276
  %1279 = icmp eq i32 %1278, 2
  %1280 = zext i1 %1279 to i8
  store i8 %1280, i8* %38, align 1
  %1281 = sext i32 %1259 to i64
  store i64 %1281, i64* %RCX.i2558, align 8
  %1282 = add nsw i64 %1281, 12099168
  %1283 = add i64 %512, 17
  store i64 %1283, i64* %3, align 8
  %1284 = inttoptr i64 %1282 to i8*
  %1285 = load i8, i8* %1284, align 1
  %1286 = zext i8 %1285 to i64
  store i64 %1286, i64* %RAX.i2706, align 8
  %1287 = zext i8 %1285 to i32
  %1288 = load i64, i64* %RBP.i, align 8
  %1289 = add i64 %1288, -12
  %1290 = add i64 %512, 20
  store i64 %1290, i64* %3, align 8
  %1291 = inttoptr i64 %1289 to i32*
  %1292 = load i32, i32* %1291, align 4
  %1293 = sub i32 %1287, %1292
  %1294 = icmp ult i32 %1287, %1292
  %1295 = zext i1 %1294 to i8
  store i8 %1295, i8* %14, align 1
  %1296 = and i32 %1293, 255
  %1297 = tail call i32 @llvm.ctpop.i32(i32 %1296)
  %1298 = trunc i32 %1297 to i8
  %1299 = and i8 %1298, 1
  %1300 = xor i8 %1299, 1
  store i8 %1300, i8* %21, align 1
  %1301 = xor i32 %1292, %1287
  %1302 = xor i32 %1301, %1293
  %1303 = lshr i32 %1302, 4
  %1304 = trunc i32 %1303 to i8
  %1305 = and i8 %1304, 1
  store i8 %1305, i8* %26, align 1
  %1306 = icmp eq i32 %1293, 0
  %1307 = zext i1 %1306 to i8
  store i8 %1307, i8* %29, align 1
  %1308 = lshr i32 %1293, 31
  %1309 = trunc i32 %1308 to i8
  store i8 %1309, i8* %32, align 1
  %1310 = lshr i32 %1292, 31
  %1311 = add nuw nsw i32 %1308, %1310
  %1312 = icmp eq i32 %1311, 2
  %1313 = zext i1 %1312 to i8
  store i8 %1313, i8* %38, align 1
  %.v205 = select i1 %1306, i64 26, i64 288
  %1314 = add i64 %512, %.v205
  %1315 = add i64 %1288, -8
  %1316 = add i64 %1314, 3
  store i64 %1316, i64* %3, align 8
  %1317 = inttoptr i64 %1315 to i32*
  %1318 = load i32, i32* %1317, align 4
  %1319 = zext i32 %1318 to i64
  store i64 %1319, i64* %RAX.i2706, align 8
  %1320 = add i64 %1314, 6
  store i64 %1320, i64* %3, align 8
  br i1 %1306, label %block_40ff49, label %block_.L_41004f

block_40ff49:                                     ; preds = %block_.L_40ff2f
  %1321 = add i32 %1318, -1
  %1322 = zext i32 %1321 to i64
  store i64 %1322, i64* %RAX.i2706, align 8
  %1323 = icmp eq i32 %1318, 0
  %1324 = zext i1 %1323 to i8
  store i8 %1324, i8* %14, align 1
  %1325 = and i32 %1321, 255
  %1326 = tail call i32 @llvm.ctpop.i32(i32 %1325)
  %1327 = trunc i32 %1326 to i8
  %1328 = and i8 %1327, 1
  %1329 = xor i8 %1328, 1
  store i8 %1329, i8* %21, align 1
  %1330 = xor i32 %1321, %1318
  %1331 = lshr i32 %1330, 4
  %1332 = trunc i32 %1331 to i8
  %1333 = and i8 %1332, 1
  store i8 %1333, i8* %26, align 1
  %1334 = icmp eq i32 %1321, 0
  %1335 = zext i1 %1334 to i8
  store i8 %1335, i8* %29, align 1
  %1336 = lshr i32 %1321, 31
  %1337 = trunc i32 %1336 to i8
  store i8 %1337, i8* %32, align 1
  %1338 = lshr i32 %1318, 31
  %1339 = xor i32 %1336, %1338
  %1340 = add nuw nsw i32 %1339, %1338
  %1341 = icmp eq i32 %1340, 2
  %1342 = zext i1 %1341 to i8
  store i8 %1342, i8* %38, align 1
  %1343 = sext i32 %1321 to i64
  store i64 %1343, i64* %RCX.i2558, align 8
  %1344 = shl nsw i64 %1343, 2
  %1345 = add nsw i64 %1344, 11187184
  %1346 = add i64 %1314, 16
  store i64 %1346, i64* %3, align 8
  %1347 = inttoptr i64 %1345 to i32*
  %1348 = load i32, i32* %1347, align 4
  %1349 = zext i32 %1348 to i64
  store i64 %1349, i64* %RAX.i2706, align 8
  %1350 = add i64 %1288, -20
  %1351 = add i64 %1314, 19
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1350 to i32*
  store i32 %1348, i32* %1352, align 4
  %1353 = load i64, i64* %RBP.i, align 8
  %1354 = add i64 %1353, -8
  %1355 = load i64, i64* %3, align 8
  %1356 = add i64 %1355, 3
  store i64 %1356, i64* %3, align 8
  %1357 = inttoptr i64 %1354 to i32*
  %1358 = load i32, i32* %1357, align 4
  %1359 = add i32 %1358, -20
  %1360 = zext i32 %1359 to i64
  store i64 %1360, i64* %RAX.i2706, align 8
  %1361 = icmp ult i32 %1358, 20
  %1362 = zext i1 %1361 to i8
  store i8 %1362, i8* %14, align 1
  %1363 = and i32 %1359, 255
  %1364 = tail call i32 @llvm.ctpop.i32(i32 %1363)
  %1365 = trunc i32 %1364 to i8
  %1366 = and i8 %1365, 1
  %1367 = xor i8 %1366, 1
  store i8 %1367, i8* %21, align 1
  %1368 = xor i32 %1358, 16
  %1369 = xor i32 %1368, %1359
  %1370 = lshr i32 %1369, 4
  %1371 = trunc i32 %1370 to i8
  %1372 = and i8 %1371, 1
  store i8 %1372, i8* %26, align 1
  %1373 = icmp eq i32 %1359, 0
  %1374 = zext i1 %1373 to i8
  store i8 %1374, i8* %29, align 1
  %1375 = lshr i32 %1359, 31
  %1376 = trunc i32 %1375 to i8
  store i8 %1376, i8* %32, align 1
  %1377 = lshr i32 %1358, 31
  %1378 = xor i32 %1375, %1377
  %1379 = add nuw nsw i32 %1378, %1377
  %1380 = icmp eq i32 %1379, 2
  %1381 = zext i1 %1380 to i8
  store i8 %1381, i8* %38, align 1
  %1382 = sext i32 %1359 to i64
  store i64 %1382, i64* %RCX.i2558, align 8
  %1383 = add nsw i64 %1382, 12099168
  %1384 = add i64 %1355, 17
  store i64 %1384, i64* %3, align 8
  %1385 = inttoptr i64 %1383 to i8*
  %1386 = load i8, i8* %1385, align 1
  %1387 = zext i8 %1386 to i64
  store i64 %1387, i64* %RAX.i2706, align 8
  %1388 = zext i8 %1386 to i32
  %1389 = add i64 %1353, -12
  %1390 = add i64 %1355, 20
  store i64 %1390, i64* %3, align 8
  %1391 = inttoptr i64 %1389 to i32*
  %1392 = load i32, i32* %1391, align 4
  %1393 = sub i32 %1388, %1392
  %1394 = icmp ult i32 %1388, %1392
  %1395 = zext i1 %1394 to i8
  store i8 %1395, i8* %14, align 1
  %1396 = and i32 %1393, 255
  %1397 = tail call i32 @llvm.ctpop.i32(i32 %1396)
  %1398 = trunc i32 %1397 to i8
  %1399 = and i8 %1398, 1
  %1400 = xor i8 %1399, 1
  store i8 %1400, i8* %21, align 1
  %1401 = xor i32 %1392, %1388
  %1402 = xor i32 %1401, %1393
  %1403 = lshr i32 %1402, 4
  %1404 = trunc i32 %1403 to i8
  %1405 = and i8 %1404, 1
  store i8 %1405, i8* %26, align 1
  %1406 = icmp eq i32 %1393, 0
  %1407 = zext i1 %1406 to i8
  store i8 %1407, i8* %29, align 1
  %1408 = lshr i32 %1393, 31
  %1409 = trunc i32 %1408 to i8
  store i8 %1409, i8* %32, align 1
  %1410 = lshr i32 %1392, 31
  %1411 = add nuw nsw i32 %1408, %1410
  %1412 = icmp eq i32 %1411, 2
  %1413 = zext i1 %1412 to i8
  store i8 %1413, i8* %38, align 1
  %.v320 = select i1 %1406, i64 26, i64 163
  %1414 = add i64 %1355, %.v320
  store i64 %1414, i64* %3, align 8
  br i1 %1406, label %block_40ff76, label %block_.L_40ffff

block_40ff76:                                     ; preds = %block_40ff49
  %1415 = add i64 %1414, 3
  store i64 %1415, i64* %3, align 8
  %1416 = load i32, i32* %1357, align 4
  %1417 = add i32 %1416, -20
  %1418 = zext i32 %1417 to i64
  store i64 %1418, i64* %RAX.i2706, align 8
  %1419 = icmp ult i32 %1416, 20
  %1420 = zext i1 %1419 to i8
  store i8 %1420, i8* %14, align 1
  %1421 = and i32 %1417, 255
  %1422 = tail call i32 @llvm.ctpop.i32(i32 %1421)
  %1423 = trunc i32 %1422 to i8
  %1424 = and i8 %1423, 1
  %1425 = xor i8 %1424, 1
  store i8 %1425, i8* %21, align 1
  %1426 = xor i32 %1416, 16
  %1427 = xor i32 %1426, %1417
  %1428 = lshr i32 %1427, 4
  %1429 = trunc i32 %1428 to i8
  %1430 = and i8 %1429, 1
  store i8 %1430, i8* %26, align 1
  %1431 = icmp eq i32 %1417, 0
  %1432 = zext i1 %1431 to i8
  store i8 %1432, i8* %29, align 1
  %1433 = lshr i32 %1417, 31
  %1434 = trunc i32 %1433 to i8
  store i8 %1434, i8* %32, align 1
  %1435 = lshr i32 %1416, 31
  %1436 = xor i32 %1433, %1435
  %1437 = add nuw nsw i32 %1436, %1435
  %1438 = icmp eq i32 %1437, 2
  %1439 = zext i1 %1438 to i8
  store i8 %1439, i8* %38, align 1
  %1440 = sext i32 %1417 to i64
  store i64 %1440, i64* %RCX.i2558, align 8
  %1441 = shl nsw i64 %1440, 2
  %1442 = add nsw i64 %1441, 11187184
  %1443 = add i64 %1414, 16
  store i64 %1443, i64* %3, align 8
  %1444 = inttoptr i64 %1442 to i32*
  %1445 = load i32, i32* %1444, align 4
  %1446 = zext i32 %1445 to i64
  store i64 %1446, i64* %RAX.i2706, align 8
  %1447 = add i64 %1353, -20
  %1448 = add i64 %1414, 19
  store i64 %1448, i64* %3, align 8
  %1449 = inttoptr i64 %1447 to i32*
  %1450 = load i32, i32* %1449, align 4
  %1451 = sub i32 %1445, %1450
  %1452 = icmp ult i32 %1445, %1450
  %1453 = zext i1 %1452 to i8
  store i8 %1453, i8* %14, align 1
  %1454 = and i32 %1451, 255
  %1455 = tail call i32 @llvm.ctpop.i32(i32 %1454)
  %1456 = trunc i32 %1455 to i8
  %1457 = and i8 %1456, 1
  %1458 = xor i8 %1457, 1
  store i8 %1458, i8* %21, align 1
  %1459 = xor i32 %1450, %1445
  %1460 = xor i32 %1459, %1451
  %1461 = lshr i32 %1460, 4
  %1462 = trunc i32 %1461 to i8
  %1463 = and i8 %1462, 1
  store i8 %1463, i8* %26, align 1
  %1464 = icmp eq i32 %1451, 0
  %1465 = zext i1 %1464 to i8
  store i8 %1465, i8* %29, align 1
  %1466 = lshr i32 %1451, 31
  %1467 = trunc i32 %1466 to i8
  store i8 %1467, i8* %32, align 1
  %1468 = lshr i32 %1445, 31
  %1469 = lshr i32 %1450, 31
  %1470 = xor i32 %1469, %1468
  %1471 = xor i32 %1466, %1468
  %1472 = add nuw nsw i32 %1471, %1470
  %1473 = icmp eq i32 %1472, 2
  %1474 = zext i1 %1473 to i8
  store i8 %1474, i8* %38, align 1
  %.v323 = select i1 %1464, i64 137, i64 25
  %1475 = add i64 %1414, %.v323
  store i64 %1475, i64* %3, align 8
  br i1 %1464, label %block_.L_40ffff, label %block_40ff8f

block_40ff8f:                                     ; preds = %block_40ff76
  %1476 = add i64 %1475, 3
  store i64 %1476, i64* %3, align 8
  %1477 = load i32, i32* %1357, align 4
  %1478 = add i32 %1477, -20
  %1479 = zext i32 %1478 to i64
  store i64 %1479, i64* %RAX.i2706, align 8
  %1480 = icmp ult i32 %1477, 20
  %1481 = zext i1 %1480 to i8
  store i8 %1481, i8* %14, align 1
  %1482 = and i32 %1478, 255
  %1483 = tail call i32 @llvm.ctpop.i32(i32 %1482)
  %1484 = trunc i32 %1483 to i8
  %1485 = and i8 %1484, 1
  %1486 = xor i8 %1485, 1
  store i8 %1486, i8* %21, align 1
  %1487 = xor i32 %1477, 16
  %1488 = xor i32 %1487, %1478
  %1489 = lshr i32 %1488, 4
  %1490 = trunc i32 %1489 to i8
  %1491 = and i8 %1490, 1
  store i8 %1491, i8* %26, align 1
  %1492 = icmp eq i32 %1478, 0
  %1493 = zext i1 %1492 to i8
  store i8 %1493, i8* %29, align 1
  %1494 = lshr i32 %1478, 31
  %1495 = trunc i32 %1494 to i8
  store i8 %1495, i8* %32, align 1
  %1496 = lshr i32 %1477, 31
  %1497 = xor i32 %1494, %1496
  %1498 = add nuw nsw i32 %1497, %1496
  %1499 = icmp eq i32 %1498, 2
  %1500 = zext i1 %1499 to i8
  store i8 %1500, i8* %38, align 1
  %1501 = sext i32 %1478 to i64
  store i64 %1501, i64* %RCX.i2558, align 8
  %1502 = shl nsw i64 %1501, 2
  %1503 = add nsw i64 %1502, 11187184
  %1504 = add i64 %1475, 16
  store i64 %1504, i64* %3, align 8
  %1505 = inttoptr i64 %1503 to i32*
  %1506 = load i32, i32* %1505, align 4
  %1507 = zext i32 %1506 to i64
  store i64 %1507, i64* %RAX.i2706, align 8
  %1508 = add i64 %1353, -24
  %1509 = add i64 %1475, 19
  store i64 %1509, i64* %3, align 8
  %1510 = inttoptr i64 %1508 to i32*
  store i32 %1506, i32* %1510, align 4
  %1511 = load i64, i64* %RBP.i, align 8
  %1512 = add i64 %1511, -8
  %1513 = load i64, i64* %3, align 8
  %1514 = add i64 %1513, 3
  store i64 %1514, i64* %3, align 8
  %1515 = inttoptr i64 %1512 to i32*
  %1516 = load i32, i32* %1515, align 4
  %1517 = add i32 %1516, 1
  %1518 = zext i32 %1517 to i64
  store i64 %1518, i64* %RAX.i2706, align 8
  %1519 = icmp eq i32 %1516, -1
  %1520 = icmp eq i32 %1517, 0
  %1521 = or i1 %1519, %1520
  %1522 = zext i1 %1521 to i8
  store i8 %1522, i8* %14, align 1
  %1523 = and i32 %1517, 255
  %1524 = tail call i32 @llvm.ctpop.i32(i32 %1523)
  %1525 = trunc i32 %1524 to i8
  %1526 = and i8 %1525, 1
  %1527 = xor i8 %1526, 1
  store i8 %1527, i8* %21, align 1
  %1528 = xor i32 %1517, %1516
  %1529 = lshr i32 %1528, 4
  %1530 = trunc i32 %1529 to i8
  %1531 = and i8 %1530, 1
  store i8 %1531, i8* %26, align 1
  %1532 = zext i1 %1520 to i8
  store i8 %1532, i8* %29, align 1
  %1533 = lshr i32 %1517, 31
  %1534 = trunc i32 %1533 to i8
  store i8 %1534, i8* %32, align 1
  %1535 = lshr i32 %1516, 31
  %1536 = xor i32 %1533, %1535
  %1537 = add nuw nsw i32 %1536, %1533
  %1538 = icmp eq i32 %1537, 2
  %1539 = zext i1 %1538 to i8
  store i8 %1539, i8* %38, align 1
  %1540 = sext i32 %1517 to i64
  store i64 %1540, i64* %RCX.i2558, align 8
  %1541 = add nsw i64 %1540, 12099168
  %1542 = add i64 %1513, 17
  store i64 %1542, i64* %3, align 8
  %1543 = inttoptr i64 %1541 to i8*
  %1544 = load i8, i8* %1543, align 1
  %1545 = zext i8 %1544 to i64
  store i64 %1545, i64* %RAX.i2706, align 8
  %1546 = zext i8 %1544 to i32
  %1547 = add i64 %1511, -12
  %1548 = add i64 %1513, 20
  store i64 %1548, i64* %3, align 8
  %1549 = inttoptr i64 %1547 to i32*
  %1550 = load i32, i32* %1549, align 4
  %1551 = sub i32 %1546, %1550
  %1552 = icmp ult i32 %1546, %1550
  %1553 = zext i1 %1552 to i8
  store i8 %1553, i8* %14, align 1
  %1554 = and i32 %1551, 255
  %1555 = tail call i32 @llvm.ctpop.i32(i32 %1554)
  %1556 = trunc i32 %1555 to i8
  %1557 = and i8 %1556, 1
  %1558 = xor i8 %1557, 1
  store i8 %1558, i8* %21, align 1
  %1559 = xor i32 %1550, %1546
  %1560 = xor i32 %1559, %1551
  %1561 = lshr i32 %1560, 4
  %1562 = trunc i32 %1561 to i8
  %1563 = and i8 %1562, 1
  store i8 %1563, i8* %26, align 1
  %1564 = icmp eq i32 %1551, 0
  %1565 = zext i1 %1564 to i8
  store i8 %1565, i8* %29, align 1
  %1566 = lshr i32 %1551, 31
  %1567 = trunc i32 %1566 to i8
  store i8 %1567, i8* %32, align 1
  %1568 = lshr i32 %1550, 31
  %1569 = add nuw nsw i32 %1566, %1568
  %1570 = icmp eq i32 %1569, 2
  %1571 = zext i1 %1570 to i8
  store i8 %1571, i8* %38, align 1
  %.v324 = select i1 %1564, i64 26, i64 88
  %1572 = add i64 %1513, %.v324
  store i64 %1572, i64* %3, align 8
  br i1 %1564, label %block_40ffbc, label %block_.L_40fffa

block_40ffbc:                                     ; preds = %block_40ff8f
  %1573 = add i64 %1572, 3
  store i64 %1573, i64* %3, align 8
  %1574 = load i32, i32* %1515, align 4
  %1575 = add i32 %1574, 1
  %1576 = zext i32 %1575 to i64
  store i64 %1576, i64* %RAX.i2706, align 8
  %1577 = icmp eq i32 %1574, -1
  %1578 = icmp eq i32 %1575, 0
  %1579 = or i1 %1577, %1578
  %1580 = zext i1 %1579 to i8
  store i8 %1580, i8* %14, align 1
  %1581 = and i32 %1575, 255
  %1582 = tail call i32 @llvm.ctpop.i32(i32 %1581)
  %1583 = trunc i32 %1582 to i8
  %1584 = and i8 %1583, 1
  %1585 = xor i8 %1584, 1
  store i8 %1585, i8* %21, align 1
  %1586 = xor i32 %1575, %1574
  %1587 = lshr i32 %1586, 4
  %1588 = trunc i32 %1587 to i8
  %1589 = and i8 %1588, 1
  store i8 %1589, i8* %26, align 1
  %1590 = zext i1 %1578 to i8
  store i8 %1590, i8* %29, align 1
  %1591 = lshr i32 %1575, 31
  %1592 = trunc i32 %1591 to i8
  store i8 %1592, i8* %32, align 1
  %1593 = lshr i32 %1574, 31
  %1594 = xor i32 %1591, %1593
  %1595 = add nuw nsw i32 %1594, %1591
  %1596 = icmp eq i32 %1595, 2
  %1597 = zext i1 %1596 to i8
  store i8 %1597, i8* %38, align 1
  %1598 = sext i32 %1575 to i64
  store i64 %1598, i64* %RCX.i2558, align 8
  %1599 = shl nsw i64 %1598, 2
  %1600 = add nsw i64 %1599, 11187184
  %1601 = add i64 %1572, 16
  store i64 %1601, i64* %3, align 8
  %1602 = inttoptr i64 %1600 to i32*
  %1603 = load i32, i32* %1602, align 4
  %1604 = zext i32 %1603 to i64
  store i64 %1604, i64* %RAX.i2706, align 8
  %1605 = add i64 %1511, -20
  %1606 = add i64 %1572, 19
  store i64 %1606, i64* %3, align 8
  %1607 = inttoptr i64 %1605 to i32*
  %1608 = load i32, i32* %1607, align 4
  %1609 = sub i32 %1603, %1608
  %1610 = icmp ult i32 %1603, %1608
  %1611 = zext i1 %1610 to i8
  store i8 %1611, i8* %14, align 1
  %1612 = and i32 %1609, 255
  %1613 = tail call i32 @llvm.ctpop.i32(i32 %1612)
  %1614 = trunc i32 %1613 to i8
  %1615 = and i8 %1614, 1
  %1616 = xor i8 %1615, 1
  store i8 %1616, i8* %21, align 1
  %1617 = xor i32 %1608, %1603
  %1618 = xor i32 %1617, %1609
  %1619 = lshr i32 %1618, 4
  %1620 = trunc i32 %1619 to i8
  %1621 = and i8 %1620, 1
  store i8 %1621, i8* %26, align 1
  %1622 = icmp eq i32 %1609, 0
  %1623 = zext i1 %1622 to i8
  store i8 %1623, i8* %29, align 1
  %1624 = lshr i32 %1609, 31
  %1625 = trunc i32 %1624 to i8
  store i8 %1625, i8* %32, align 1
  %1626 = lshr i32 %1603, 31
  %1627 = lshr i32 %1608, 31
  %1628 = xor i32 %1627, %1626
  %1629 = xor i32 %1624, %1626
  %1630 = add nuw nsw i32 %1629, %1628
  %1631 = icmp eq i32 %1630, 2
  %1632 = zext i1 %1631 to i8
  store i8 %1632, i8* %38, align 1
  %.v325 = select i1 %1622, i64 62, i64 25
  %1633 = add i64 %1572, %.v325
  store i64 %1633, i64* %3, align 8
  br i1 %1622, label %block_.L_40fffa, label %block_40ffd5

block_40ffd5:                                     ; preds = %block_40ffbc
  %1634 = add i64 %1633, 3
  store i64 %1634, i64* %3, align 8
  %1635 = load i32, i32* %1515, align 4
  %1636 = add i32 %1635, 1
  %1637 = zext i32 %1636 to i64
  store i64 %1637, i64* %RAX.i2706, align 8
  %1638 = icmp eq i32 %1635, -1
  %1639 = icmp eq i32 %1636, 0
  %1640 = or i1 %1638, %1639
  %1641 = zext i1 %1640 to i8
  store i8 %1641, i8* %14, align 1
  %1642 = and i32 %1636, 255
  %1643 = tail call i32 @llvm.ctpop.i32(i32 %1642)
  %1644 = trunc i32 %1643 to i8
  %1645 = and i8 %1644, 1
  %1646 = xor i8 %1645, 1
  store i8 %1646, i8* %21, align 1
  %1647 = xor i32 %1636, %1635
  %1648 = lshr i32 %1647, 4
  %1649 = trunc i32 %1648 to i8
  %1650 = and i8 %1649, 1
  store i8 %1650, i8* %26, align 1
  %1651 = zext i1 %1639 to i8
  store i8 %1651, i8* %29, align 1
  %1652 = lshr i32 %1636, 31
  %1653 = trunc i32 %1652 to i8
  store i8 %1653, i8* %32, align 1
  %1654 = lshr i32 %1635, 31
  %1655 = xor i32 %1652, %1654
  %1656 = add nuw nsw i32 %1655, %1652
  %1657 = icmp eq i32 %1656, 2
  %1658 = zext i1 %1657 to i8
  store i8 %1658, i8* %38, align 1
  %1659 = sext i32 %1636 to i64
  store i64 %1659, i64* %RCX.i2558, align 8
  %1660 = shl nsw i64 %1659, 2
  %1661 = add nsw i64 %1660, 11187184
  %1662 = add i64 %1633, 16
  store i64 %1662, i64* %3, align 8
  %1663 = inttoptr i64 %1661 to i32*
  %1664 = load i32, i32* %1663, align 4
  %1665 = zext i32 %1664 to i64
  store i64 %1665, i64* %RAX.i2706, align 8
  %1666 = add i64 %1511, -24
  %1667 = add i64 %1633, 19
  store i64 %1667, i64* %3, align 8
  %1668 = inttoptr i64 %1666 to i32*
  %1669 = load i32, i32* %1668, align 4
  %1670 = sub i32 %1664, %1669
  %1671 = icmp ult i32 %1664, %1669
  %1672 = zext i1 %1671 to i8
  store i8 %1672, i8* %14, align 1
  %1673 = and i32 %1670, 255
  %1674 = tail call i32 @llvm.ctpop.i32(i32 %1673)
  %1675 = trunc i32 %1674 to i8
  %1676 = and i8 %1675, 1
  %1677 = xor i8 %1676, 1
  store i8 %1677, i8* %21, align 1
  %1678 = xor i32 %1669, %1664
  %1679 = xor i32 %1678, %1670
  %1680 = lshr i32 %1679, 4
  %1681 = trunc i32 %1680 to i8
  %1682 = and i8 %1681, 1
  store i8 %1682, i8* %26, align 1
  %1683 = icmp eq i32 %1670, 0
  %1684 = zext i1 %1683 to i8
  store i8 %1684, i8* %29, align 1
  %1685 = lshr i32 %1670, 31
  %1686 = trunc i32 %1685 to i8
  store i8 %1686, i8* %32, align 1
  %1687 = lshr i32 %1664, 31
  %1688 = lshr i32 %1669, 31
  %1689 = xor i32 %1688, %1687
  %1690 = xor i32 %1685, %1687
  %1691 = add nuw nsw i32 %1690, %1689
  %1692 = icmp eq i32 %1691, 2
  %1693 = zext i1 %1692 to i8
  store i8 %1693, i8* %38, align 1
  %.v326 = select i1 %1683, i64 37, i64 25
  %1694 = add i64 %1633, %.v326
  store i64 %1694, i64* %3, align 8
  br i1 %1683, label %block_.L_40fffa, label %block_40ffee

block_40ffee:                                     ; preds = %block_40ffd5
  %1695 = add i64 %1511, -4
  %1696 = add i64 %1694, 7
  store i64 %1696, i64* %3, align 8
  %1697 = inttoptr i64 %1695 to i32*
  store i32 -1, i32* %1697, align 4
  %1698 = load i64, i64* %3, align 8
  %1699 = add i64 %1698, 3793
  store i64 %1699, i64* %3, align 8
  br label %block_.L_410ec6

block_.L_40fffa:                                  ; preds = %block_40ff8f, %block_40ffd5, %block_40ffbc
  %1700 = phi i64 [ %1694, %block_40ffd5 ], [ %1633, %block_40ffbc ], [ %1572, %block_40ff8f ]
  %1701 = add i64 %1700, 80
  br label %block_.L_41004a

block_.L_40ffff:                                  ; preds = %block_40ff49, %block_40ff76
  %1702 = phi i64 [ %1475, %block_40ff76 ], [ %1414, %block_40ff49 ]
  %1703 = add i64 %1702, 3
  store i64 %1703, i64* %3, align 8
  %1704 = load i32, i32* %1357, align 4
  %1705 = add i32 %1704, 1
  %1706 = zext i32 %1705 to i64
  store i64 %1706, i64* %RAX.i2706, align 8
  %1707 = icmp eq i32 %1704, -1
  %1708 = icmp eq i32 %1705, 0
  %1709 = or i1 %1707, %1708
  %1710 = zext i1 %1709 to i8
  store i8 %1710, i8* %14, align 1
  %1711 = and i32 %1705, 255
  %1712 = tail call i32 @llvm.ctpop.i32(i32 %1711)
  %1713 = trunc i32 %1712 to i8
  %1714 = and i8 %1713, 1
  %1715 = xor i8 %1714, 1
  store i8 %1715, i8* %21, align 1
  %1716 = xor i32 %1705, %1704
  %1717 = lshr i32 %1716, 4
  %1718 = trunc i32 %1717 to i8
  %1719 = and i8 %1718, 1
  store i8 %1719, i8* %26, align 1
  %1720 = zext i1 %1708 to i8
  store i8 %1720, i8* %29, align 1
  %1721 = lshr i32 %1705, 31
  %1722 = trunc i32 %1721 to i8
  store i8 %1722, i8* %32, align 1
  %1723 = lshr i32 %1704, 31
  %1724 = xor i32 %1721, %1723
  %1725 = add nuw nsw i32 %1724, %1721
  %1726 = icmp eq i32 %1725, 2
  %1727 = zext i1 %1726 to i8
  store i8 %1727, i8* %38, align 1
  %1728 = sext i32 %1705 to i64
  store i64 %1728, i64* %RCX.i2558, align 8
  %1729 = add nsw i64 %1728, 12099168
  %1730 = add i64 %1702, 17
  store i64 %1730, i64* %3, align 8
  %1731 = inttoptr i64 %1729 to i8*
  %1732 = load i8, i8* %1731, align 1
  %1733 = zext i8 %1732 to i64
  store i64 %1733, i64* %RAX.i2706, align 8
  %1734 = zext i8 %1732 to i32
  %1735 = add i64 %1702, 20
  store i64 %1735, i64* %3, align 8
  %1736 = load i32, i32* %1391, align 4
  %1737 = sub i32 %1734, %1736
  %1738 = icmp ult i32 %1734, %1736
  %1739 = zext i1 %1738 to i8
  store i8 %1739, i8* %14, align 1
  %1740 = and i32 %1737, 255
  %1741 = tail call i32 @llvm.ctpop.i32(i32 %1740)
  %1742 = trunc i32 %1741 to i8
  %1743 = and i8 %1742, 1
  %1744 = xor i8 %1743, 1
  store i8 %1744, i8* %21, align 1
  %1745 = xor i32 %1736, %1734
  %1746 = xor i32 %1745, %1737
  %1747 = lshr i32 %1746, 4
  %1748 = trunc i32 %1747 to i8
  %1749 = and i8 %1748, 1
  store i8 %1749, i8* %26, align 1
  %1750 = icmp eq i32 %1737, 0
  %1751 = zext i1 %1750 to i8
  store i8 %1751, i8* %29, align 1
  %1752 = lshr i32 %1737, 31
  %1753 = trunc i32 %1752 to i8
  store i8 %1753, i8* %32, align 1
  %1754 = lshr i32 %1736, 31
  %1755 = add nuw nsw i32 %1752, %1754
  %1756 = icmp eq i32 %1755, 2
  %1757 = zext i1 %1756 to i8
  store i8 %1757, i8* %38, align 1
  %.v321 = select i1 %1750, i64 26, i64 70
  %1758 = add i64 %1702, %.v321
  store i64 %1758, i64* %3, align 8
  br i1 %1750, label %block_410019, label %block_.L_410045

block_410019:                                     ; preds = %block_.L_40ffff
  %1759 = add i64 %1758, 3
  store i64 %1759, i64* %3, align 8
  %1760 = load i32, i32* %1357, align 4
  %1761 = add i32 %1760, 1
  %1762 = zext i32 %1761 to i64
  store i64 %1762, i64* %RAX.i2706, align 8
  %1763 = icmp eq i32 %1760, -1
  %1764 = icmp eq i32 %1761, 0
  %1765 = or i1 %1763, %1764
  %1766 = zext i1 %1765 to i8
  store i8 %1766, i8* %14, align 1
  %1767 = and i32 %1761, 255
  %1768 = tail call i32 @llvm.ctpop.i32(i32 %1767)
  %1769 = trunc i32 %1768 to i8
  %1770 = and i8 %1769, 1
  %1771 = xor i8 %1770, 1
  store i8 %1771, i8* %21, align 1
  %1772 = xor i32 %1761, %1760
  %1773 = lshr i32 %1772, 4
  %1774 = trunc i32 %1773 to i8
  %1775 = and i8 %1774, 1
  store i8 %1775, i8* %26, align 1
  %1776 = zext i1 %1764 to i8
  store i8 %1776, i8* %29, align 1
  %1777 = lshr i32 %1761, 31
  %1778 = trunc i32 %1777 to i8
  store i8 %1778, i8* %32, align 1
  %1779 = lshr i32 %1760, 31
  %1780 = xor i32 %1777, %1779
  %1781 = add nuw nsw i32 %1780, %1777
  %1782 = icmp eq i32 %1781, 2
  %1783 = zext i1 %1782 to i8
  store i8 %1783, i8* %38, align 1
  %1784 = sext i32 %1761 to i64
  store i64 %1784, i64* %RCX.i2558, align 8
  %1785 = shl nsw i64 %1784, 2
  %1786 = add nsw i64 %1785, 11187184
  %1787 = add i64 %1758, 16
  store i64 %1787, i64* %3, align 8
  %1788 = inttoptr i64 %1786 to i32*
  %1789 = load i32, i32* %1788, align 4
  %1790 = zext i32 %1789 to i64
  store i64 %1790, i64* %RAX.i2706, align 8
  %1791 = add i64 %1353, -20
  %1792 = add i64 %1758, 19
  store i64 %1792, i64* %3, align 8
  %1793 = inttoptr i64 %1791 to i32*
  %1794 = load i32, i32* %1793, align 4
  %1795 = sub i32 %1789, %1794
  %1796 = icmp ult i32 %1789, %1794
  %1797 = zext i1 %1796 to i8
  store i8 %1797, i8* %14, align 1
  %1798 = and i32 %1795, 255
  %1799 = tail call i32 @llvm.ctpop.i32(i32 %1798)
  %1800 = trunc i32 %1799 to i8
  %1801 = and i8 %1800, 1
  %1802 = xor i8 %1801, 1
  store i8 %1802, i8* %21, align 1
  %1803 = xor i32 %1794, %1789
  %1804 = xor i32 %1803, %1795
  %1805 = lshr i32 %1804, 4
  %1806 = trunc i32 %1805 to i8
  %1807 = and i8 %1806, 1
  store i8 %1807, i8* %26, align 1
  %1808 = icmp eq i32 %1795, 0
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %29, align 1
  %1810 = lshr i32 %1795, 31
  %1811 = trunc i32 %1810 to i8
  store i8 %1811, i8* %32, align 1
  %1812 = lshr i32 %1789, 31
  %1813 = lshr i32 %1794, 31
  %1814 = xor i32 %1813, %1812
  %1815 = xor i32 %1810, %1812
  %1816 = add nuw nsw i32 %1815, %1814
  %1817 = icmp eq i32 %1816, 2
  %1818 = zext i1 %1817 to i8
  store i8 %1818, i8* %38, align 1
  %.v322 = select i1 %1808, i64 44, i64 25
  %1819 = add i64 %1758, %.v322
  store i64 %1819, i64* %3, align 8
  br i1 %1808, label %block_.L_410045, label %block_410032

block_410032:                                     ; preds = %block_410019
  %1820 = add i64 %1819, 3
  store i64 %1820, i64* %3, align 8
  %1821 = load i32, i32* %1357, align 4
  %1822 = add i32 %1821, 1
  %1823 = zext i32 %1822 to i64
  store i64 %1823, i64* %RAX.i2706, align 8
  %1824 = icmp eq i32 %1821, -1
  %1825 = icmp eq i32 %1822, 0
  %1826 = or i1 %1824, %1825
  %1827 = zext i1 %1826 to i8
  store i8 %1827, i8* %14, align 1
  %1828 = and i32 %1822, 255
  %1829 = tail call i32 @llvm.ctpop.i32(i32 %1828)
  %1830 = trunc i32 %1829 to i8
  %1831 = and i8 %1830, 1
  %1832 = xor i8 %1831, 1
  store i8 %1832, i8* %21, align 1
  %1833 = xor i32 %1822, %1821
  %1834 = lshr i32 %1833, 4
  %1835 = trunc i32 %1834 to i8
  %1836 = and i8 %1835, 1
  store i8 %1836, i8* %26, align 1
  %1837 = zext i1 %1825 to i8
  store i8 %1837, i8* %29, align 1
  %1838 = lshr i32 %1822, 31
  %1839 = trunc i32 %1838 to i8
  store i8 %1839, i8* %32, align 1
  %1840 = lshr i32 %1821, 31
  %1841 = xor i32 %1838, %1840
  %1842 = add nuw nsw i32 %1841, %1838
  %1843 = icmp eq i32 %1842, 2
  %1844 = zext i1 %1843 to i8
  store i8 %1844, i8* %38, align 1
  %1845 = sext i32 %1822 to i64
  store i64 %1845, i64* %RCX.i2558, align 8
  %1846 = shl nsw i64 %1845, 2
  %1847 = add nsw i64 %1846, 11187184
  %1848 = add i64 %1819, 16
  store i64 %1848, i64* %3, align 8
  %1849 = inttoptr i64 %1847 to i32*
  %1850 = load i32, i32* %1849, align 4
  %1851 = zext i32 %1850 to i64
  store i64 %1851, i64* %RAX.i2706, align 8
  %1852 = add i64 %1353, -24
  %1853 = add i64 %1819, 19
  store i64 %1853, i64* %3, align 8
  %1854 = inttoptr i64 %1852 to i32*
  store i32 %1850, i32* %1854, align 4
  %.pre177 = load i64, i64* %3, align 8
  br label %block_.L_410045

block_.L_410045:                                  ; preds = %block_.L_40ffff, %block_410032, %block_410019
  %1855 = phi i64 [ %.pre177, %block_410032 ], [ %1819, %block_410019 ], [ %1758, %block_.L_40ffff ]
  %1856 = add i64 %1855, 5
  store i64 %1856, i64* %3, align 8
  br label %block_.L_41004a

block_.L_41004a:                                  ; preds = %block_.L_410045, %block_.L_40fffa
  %storemerge146 = phi i64 [ %1701, %block_.L_40fffa ], [ %1856, %block_.L_410045 ]
  %1857 = add i64 %storemerge146, 180
  br label %block_.L_4100fe

block_.L_41004f:                                  ; preds = %block_.L_40ff2f
  %1858 = add i32 %1318, -20
  %1859 = zext i32 %1858 to i64
  store i64 %1859, i64* %RAX.i2706, align 8
  %1860 = icmp ult i32 %1318, 20
  %1861 = zext i1 %1860 to i8
  store i8 %1861, i8* %14, align 1
  %1862 = and i32 %1858, 255
  %1863 = tail call i32 @llvm.ctpop.i32(i32 %1862)
  %1864 = trunc i32 %1863 to i8
  %1865 = and i8 %1864, 1
  %1866 = xor i8 %1865, 1
  store i8 %1866, i8* %21, align 1
  %1867 = xor i32 %1318, 16
  %1868 = xor i32 %1867, %1858
  %1869 = lshr i32 %1868, 4
  %1870 = trunc i32 %1869 to i8
  %1871 = and i8 %1870, 1
  store i8 %1871, i8* %26, align 1
  %1872 = icmp eq i32 %1858, 0
  %1873 = zext i1 %1872 to i8
  store i8 %1873, i8* %29, align 1
  %1874 = lshr i32 %1858, 31
  %1875 = trunc i32 %1874 to i8
  store i8 %1875, i8* %32, align 1
  %1876 = lshr i32 %1318, 31
  %1877 = xor i32 %1874, %1876
  %1878 = add nuw nsw i32 %1877, %1876
  %1879 = icmp eq i32 %1878, 2
  %1880 = zext i1 %1879 to i8
  store i8 %1880, i8* %38, align 1
  %1881 = sext i32 %1858 to i64
  store i64 %1881, i64* %RCX.i2558, align 8
  %1882 = add nsw i64 %1881, 12099168
  %1883 = add i64 %1314, 17
  store i64 %1883, i64* %3, align 8
  %1884 = inttoptr i64 %1882 to i8*
  %1885 = load i8, i8* %1884, align 1
  %1886 = zext i8 %1885 to i64
  store i64 %1886, i64* %RAX.i2706, align 8
  %1887 = zext i8 %1885 to i32
  %1888 = add i64 %1314, 20
  store i64 %1888, i64* %3, align 8
  %1889 = load i32, i32* %1291, align 4
  %1890 = sub i32 %1887, %1889
  %1891 = icmp ult i32 %1887, %1889
  %1892 = zext i1 %1891 to i8
  store i8 %1892, i8* %14, align 1
  %1893 = and i32 %1890, 255
  %1894 = tail call i32 @llvm.ctpop.i32(i32 %1893)
  %1895 = trunc i32 %1894 to i8
  %1896 = and i8 %1895, 1
  %1897 = xor i8 %1896, 1
  store i8 %1897, i8* %21, align 1
  %1898 = xor i32 %1889, %1887
  %1899 = xor i32 %1898, %1890
  %1900 = lshr i32 %1899, 4
  %1901 = trunc i32 %1900 to i8
  %1902 = and i8 %1901, 1
  store i8 %1902, i8* %26, align 1
  %1903 = icmp eq i32 %1890, 0
  %1904 = zext i1 %1903 to i8
  store i8 %1904, i8* %29, align 1
  %1905 = lshr i32 %1890, 31
  %1906 = trunc i32 %1905 to i8
  store i8 %1906, i8* %32, align 1
  %1907 = lshr i32 %1889, 31
  %1908 = add nuw nsw i32 %1905, %1907
  %1909 = icmp eq i32 %1908, 2
  %1910 = zext i1 %1909 to i8
  store i8 %1910, i8* %38, align 1
  %.v206 = select i1 %1903, i64 26, i64 120
  %1911 = add i64 %1314, %.v206
  %1912 = add i64 %1911, 3
  store i64 %1912, i64* %3, align 8
  %1913 = load i32, i32* %1317, align 4
  %1914 = zext i32 %1913 to i64
  store i64 %1914, i64* %RAX.i2706, align 8
  %1915 = add i64 %1911, 6
  store i64 %1915, i64* %3, align 8
  br i1 %1903, label %block_410069, label %block_.L_4100c7

block_410069:                                     ; preds = %block_.L_41004f
  %1916 = add i32 %1913, -20
  %1917 = zext i32 %1916 to i64
  store i64 %1917, i64* %RAX.i2706, align 8
  %1918 = icmp ult i32 %1913, 20
  %1919 = zext i1 %1918 to i8
  store i8 %1919, i8* %14, align 1
  %1920 = and i32 %1916, 255
  %1921 = tail call i32 @llvm.ctpop.i32(i32 %1920)
  %1922 = trunc i32 %1921 to i8
  %1923 = and i8 %1922, 1
  %1924 = xor i8 %1923, 1
  store i8 %1924, i8* %21, align 1
  %1925 = xor i32 %1913, 16
  %1926 = xor i32 %1925, %1916
  %1927 = lshr i32 %1926, 4
  %1928 = trunc i32 %1927 to i8
  %1929 = and i8 %1928, 1
  store i8 %1929, i8* %26, align 1
  %1930 = icmp eq i32 %1916, 0
  %1931 = zext i1 %1930 to i8
  store i8 %1931, i8* %29, align 1
  %1932 = lshr i32 %1916, 31
  %1933 = trunc i32 %1932 to i8
  store i8 %1933, i8* %32, align 1
  %1934 = lshr i32 %1913, 31
  %1935 = xor i32 %1932, %1934
  %1936 = add nuw nsw i32 %1935, %1934
  %1937 = icmp eq i32 %1936, 2
  %1938 = zext i1 %1937 to i8
  store i8 %1938, i8* %38, align 1
  %1939 = sext i32 %1916 to i64
  store i64 %1939, i64* %RCX.i2558, align 8
  %1940 = shl nsw i64 %1939, 2
  %1941 = add nsw i64 %1940, 11187184
  %1942 = add i64 %1911, 16
  store i64 %1942, i64* %3, align 8
  %1943 = inttoptr i64 %1941 to i32*
  %1944 = load i32, i32* %1943, align 4
  %1945 = zext i32 %1944 to i64
  store i64 %1945, i64* %RAX.i2706, align 8
  %1946 = add i64 %1288, -20
  %1947 = add i64 %1911, 19
  store i64 %1947, i64* %3, align 8
  %1948 = inttoptr i64 %1946 to i32*
  store i32 %1944, i32* %1948, align 4
  %1949 = load i64, i64* %RBP.i, align 8
  %1950 = add i64 %1949, -8
  %1951 = load i64, i64* %3, align 8
  %1952 = add i64 %1951, 3
  store i64 %1952, i64* %3, align 8
  %1953 = inttoptr i64 %1950 to i32*
  %1954 = load i32, i32* %1953, align 4
  %1955 = add i32 %1954, 1
  %1956 = zext i32 %1955 to i64
  store i64 %1956, i64* %RAX.i2706, align 8
  %1957 = icmp eq i32 %1954, -1
  %1958 = icmp eq i32 %1955, 0
  %1959 = or i1 %1957, %1958
  %1960 = zext i1 %1959 to i8
  store i8 %1960, i8* %14, align 1
  %1961 = and i32 %1955, 255
  %1962 = tail call i32 @llvm.ctpop.i32(i32 %1961)
  %1963 = trunc i32 %1962 to i8
  %1964 = and i8 %1963, 1
  %1965 = xor i8 %1964, 1
  store i8 %1965, i8* %21, align 1
  %1966 = xor i32 %1955, %1954
  %1967 = lshr i32 %1966, 4
  %1968 = trunc i32 %1967 to i8
  %1969 = and i8 %1968, 1
  store i8 %1969, i8* %26, align 1
  %1970 = zext i1 %1958 to i8
  store i8 %1970, i8* %29, align 1
  %1971 = lshr i32 %1955, 31
  %1972 = trunc i32 %1971 to i8
  store i8 %1972, i8* %32, align 1
  %1973 = lshr i32 %1954, 31
  %1974 = xor i32 %1971, %1973
  %1975 = add nuw nsw i32 %1974, %1971
  %1976 = icmp eq i32 %1975, 2
  %1977 = zext i1 %1976 to i8
  store i8 %1977, i8* %38, align 1
  %1978 = sext i32 %1955 to i64
  store i64 %1978, i64* %RCX.i2558, align 8
  %1979 = add nsw i64 %1978, 12099168
  %1980 = add i64 %1951, 17
  store i64 %1980, i64* %3, align 8
  %1981 = inttoptr i64 %1979 to i8*
  %1982 = load i8, i8* %1981, align 1
  %1983 = zext i8 %1982 to i64
  store i64 %1983, i64* %RAX.i2706, align 8
  %1984 = zext i8 %1982 to i32
  %1985 = add i64 %1949, -12
  %1986 = add i64 %1951, 20
  store i64 %1986, i64* %3, align 8
  %1987 = inttoptr i64 %1985 to i32*
  %1988 = load i32, i32* %1987, align 4
  %1989 = sub i32 %1984, %1988
  %1990 = icmp ult i32 %1984, %1988
  %1991 = zext i1 %1990 to i8
  store i8 %1991, i8* %14, align 1
  %1992 = and i32 %1989, 255
  %1993 = tail call i32 @llvm.ctpop.i32(i32 %1992)
  %1994 = trunc i32 %1993 to i8
  %1995 = and i8 %1994, 1
  %1996 = xor i8 %1995, 1
  store i8 %1996, i8* %21, align 1
  %1997 = xor i32 %1988, %1984
  %1998 = xor i32 %1997, %1989
  %1999 = lshr i32 %1998, 4
  %2000 = trunc i32 %1999 to i8
  %2001 = and i8 %2000, 1
  store i8 %2001, i8* %26, align 1
  %2002 = icmp eq i32 %1989, 0
  %2003 = zext i1 %2002 to i8
  store i8 %2003, i8* %29, align 1
  %2004 = lshr i32 %1989, 31
  %2005 = trunc i32 %2004 to i8
  store i8 %2005, i8* %32, align 1
  %2006 = lshr i32 %1988, 31
  %2007 = add nuw nsw i32 %2004, %2006
  %2008 = icmp eq i32 %2007, 2
  %2009 = zext i1 %2008 to i8
  store i8 %2009, i8* %38, align 1
  %.v318 = select i1 %2002, i64 26, i64 70
  %2010 = add i64 %1951, %.v318
  store i64 %2010, i64* %3, align 8
  br i1 %2002, label %block_410096, label %block_.L_4100c2

block_410096:                                     ; preds = %block_410069
  %2011 = add i64 %2010, 3
  store i64 %2011, i64* %3, align 8
  %2012 = load i32, i32* %1953, align 4
  %2013 = add i32 %2012, 1
  %2014 = zext i32 %2013 to i64
  store i64 %2014, i64* %RAX.i2706, align 8
  %2015 = icmp eq i32 %2012, -1
  %2016 = icmp eq i32 %2013, 0
  %2017 = or i1 %2015, %2016
  %2018 = zext i1 %2017 to i8
  store i8 %2018, i8* %14, align 1
  %2019 = and i32 %2013, 255
  %2020 = tail call i32 @llvm.ctpop.i32(i32 %2019)
  %2021 = trunc i32 %2020 to i8
  %2022 = and i8 %2021, 1
  %2023 = xor i8 %2022, 1
  store i8 %2023, i8* %21, align 1
  %2024 = xor i32 %2013, %2012
  %2025 = lshr i32 %2024, 4
  %2026 = trunc i32 %2025 to i8
  %2027 = and i8 %2026, 1
  store i8 %2027, i8* %26, align 1
  %2028 = zext i1 %2016 to i8
  store i8 %2028, i8* %29, align 1
  %2029 = lshr i32 %2013, 31
  %2030 = trunc i32 %2029 to i8
  store i8 %2030, i8* %32, align 1
  %2031 = lshr i32 %2012, 31
  %2032 = xor i32 %2029, %2031
  %2033 = add nuw nsw i32 %2032, %2029
  %2034 = icmp eq i32 %2033, 2
  %2035 = zext i1 %2034 to i8
  store i8 %2035, i8* %38, align 1
  %2036 = sext i32 %2013 to i64
  store i64 %2036, i64* %RCX.i2558, align 8
  %2037 = shl nsw i64 %2036, 2
  %2038 = add nsw i64 %2037, 11187184
  %2039 = add i64 %2010, 16
  store i64 %2039, i64* %3, align 8
  %2040 = inttoptr i64 %2038 to i32*
  %2041 = load i32, i32* %2040, align 4
  %2042 = zext i32 %2041 to i64
  store i64 %2042, i64* %RAX.i2706, align 8
  %2043 = add i64 %1949, -20
  %2044 = add i64 %2010, 19
  store i64 %2044, i64* %3, align 8
  %2045 = inttoptr i64 %2043 to i32*
  %2046 = load i32, i32* %2045, align 4
  %2047 = sub i32 %2041, %2046
  %2048 = icmp ult i32 %2041, %2046
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %14, align 1
  %2050 = and i32 %2047, 255
  %2051 = tail call i32 @llvm.ctpop.i32(i32 %2050)
  %2052 = trunc i32 %2051 to i8
  %2053 = and i8 %2052, 1
  %2054 = xor i8 %2053, 1
  store i8 %2054, i8* %21, align 1
  %2055 = xor i32 %2046, %2041
  %2056 = xor i32 %2055, %2047
  %2057 = lshr i32 %2056, 4
  %2058 = trunc i32 %2057 to i8
  %2059 = and i8 %2058, 1
  store i8 %2059, i8* %26, align 1
  %2060 = icmp eq i32 %2047, 0
  %2061 = zext i1 %2060 to i8
  store i8 %2061, i8* %29, align 1
  %2062 = lshr i32 %2047, 31
  %2063 = trunc i32 %2062 to i8
  store i8 %2063, i8* %32, align 1
  %2064 = lshr i32 %2041, 31
  %2065 = lshr i32 %2046, 31
  %2066 = xor i32 %2065, %2064
  %2067 = xor i32 %2062, %2064
  %2068 = add nuw nsw i32 %2067, %2066
  %2069 = icmp eq i32 %2068, 2
  %2070 = zext i1 %2069 to i8
  store i8 %2070, i8* %38, align 1
  %.v319 = select i1 %2060, i64 44, i64 25
  %2071 = add i64 %2010, %.v319
  store i64 %2071, i64* %3, align 8
  br i1 %2060, label %block_.L_4100c2, label %block_4100af

block_4100af:                                     ; preds = %block_410096
  %2072 = add i64 %2071, 3
  store i64 %2072, i64* %3, align 8
  %2073 = load i32, i32* %1953, align 4
  %2074 = add i32 %2073, 1
  %2075 = zext i32 %2074 to i64
  store i64 %2075, i64* %RAX.i2706, align 8
  %2076 = icmp eq i32 %2073, -1
  %2077 = icmp eq i32 %2074, 0
  %2078 = or i1 %2076, %2077
  %2079 = zext i1 %2078 to i8
  store i8 %2079, i8* %14, align 1
  %2080 = and i32 %2074, 255
  %2081 = tail call i32 @llvm.ctpop.i32(i32 %2080)
  %2082 = trunc i32 %2081 to i8
  %2083 = and i8 %2082, 1
  %2084 = xor i8 %2083, 1
  store i8 %2084, i8* %21, align 1
  %2085 = xor i32 %2074, %2073
  %2086 = lshr i32 %2085, 4
  %2087 = trunc i32 %2086 to i8
  %2088 = and i8 %2087, 1
  store i8 %2088, i8* %26, align 1
  %2089 = zext i1 %2077 to i8
  store i8 %2089, i8* %29, align 1
  %2090 = lshr i32 %2074, 31
  %2091 = trunc i32 %2090 to i8
  store i8 %2091, i8* %32, align 1
  %2092 = lshr i32 %2073, 31
  %2093 = xor i32 %2090, %2092
  %2094 = add nuw nsw i32 %2093, %2090
  %2095 = icmp eq i32 %2094, 2
  %2096 = zext i1 %2095 to i8
  store i8 %2096, i8* %38, align 1
  %2097 = sext i32 %2074 to i64
  store i64 %2097, i64* %RCX.i2558, align 8
  %2098 = shl nsw i64 %2097, 2
  %2099 = add nsw i64 %2098, 11187184
  %2100 = add i64 %2071, 16
  store i64 %2100, i64* %3, align 8
  %2101 = inttoptr i64 %2099 to i32*
  %2102 = load i32, i32* %2101, align 4
  %2103 = zext i32 %2102 to i64
  store i64 %2103, i64* %RAX.i2706, align 8
  %2104 = add i64 %1949, -24
  %2105 = add i64 %2071, 19
  store i64 %2105, i64* %3, align 8
  %2106 = inttoptr i64 %2104 to i32*
  store i32 %2102, i32* %2106, align 4
  %.pre178 = load i64, i64* %3, align 8
  br label %block_.L_4100c2

block_.L_4100c2:                                  ; preds = %block_410069, %block_4100af, %block_410096
  %2107 = phi i64 [ %.pre178, %block_4100af ], [ %2071, %block_410096 ], [ %2010, %block_410069 ]
  %2108 = add i64 %2107, 55
  br label %block_.L_4100f9

block_.L_4100c7:                                  ; preds = %block_.L_41004f
  %2109 = add i32 %1913, 1
  %2110 = zext i32 %2109 to i64
  store i64 %2110, i64* %RAX.i2706, align 8
  %2111 = icmp eq i32 %1913, -1
  %2112 = icmp eq i32 %2109, 0
  %2113 = or i1 %2111, %2112
  %2114 = zext i1 %2113 to i8
  store i8 %2114, i8* %14, align 1
  %2115 = and i32 %2109, 255
  %2116 = tail call i32 @llvm.ctpop.i32(i32 %2115)
  %2117 = trunc i32 %2116 to i8
  %2118 = and i8 %2117, 1
  %2119 = xor i8 %2118, 1
  store i8 %2119, i8* %21, align 1
  %2120 = xor i32 %2109, %1913
  %2121 = lshr i32 %2120, 4
  %2122 = trunc i32 %2121 to i8
  %2123 = and i8 %2122, 1
  store i8 %2123, i8* %26, align 1
  %2124 = zext i1 %2112 to i8
  store i8 %2124, i8* %29, align 1
  %2125 = lshr i32 %2109, 31
  %2126 = trunc i32 %2125 to i8
  store i8 %2126, i8* %32, align 1
  %2127 = lshr i32 %1913, 31
  %2128 = xor i32 %2125, %2127
  %2129 = add nuw nsw i32 %2128, %2125
  %2130 = icmp eq i32 %2129, 2
  %2131 = zext i1 %2130 to i8
  store i8 %2131, i8* %38, align 1
  %2132 = sext i32 %2109 to i64
  store i64 %2132, i64* %RCX.i2558, align 8
  %2133 = add nsw i64 %2132, 12099168
  %2134 = add i64 %1911, 17
  store i64 %2134, i64* %3, align 8
  %2135 = inttoptr i64 %2133 to i8*
  %2136 = load i8, i8* %2135, align 1
  %2137 = zext i8 %2136 to i64
  store i64 %2137, i64* %RAX.i2706, align 8
  %2138 = zext i8 %2136 to i32
  %2139 = add i64 %1911, 20
  store i64 %2139, i64* %3, align 8
  %2140 = load i32, i32* %1291, align 4
  %2141 = sub i32 %2138, %2140
  %2142 = icmp ult i32 %2138, %2140
  %2143 = zext i1 %2142 to i8
  store i8 %2143, i8* %14, align 1
  %2144 = and i32 %2141, 255
  %2145 = tail call i32 @llvm.ctpop.i32(i32 %2144)
  %2146 = trunc i32 %2145 to i8
  %2147 = and i8 %2146, 1
  %2148 = xor i8 %2147, 1
  store i8 %2148, i8* %21, align 1
  %2149 = xor i32 %2140, %2138
  %2150 = xor i32 %2149, %2141
  %2151 = lshr i32 %2150, 4
  %2152 = trunc i32 %2151 to i8
  %2153 = and i8 %2152, 1
  store i8 %2153, i8* %26, align 1
  %2154 = icmp eq i32 %2141, 0
  %2155 = zext i1 %2154 to i8
  store i8 %2155, i8* %29, align 1
  %2156 = lshr i32 %2141, 31
  %2157 = trunc i32 %2156 to i8
  store i8 %2157, i8* %32, align 1
  %2158 = lshr i32 %2140, 31
  %2159 = add nuw nsw i32 %2156, %2158
  %2160 = icmp eq i32 %2159, 2
  %2161 = zext i1 %2160 to i8
  store i8 %2161, i8* %38, align 1
  %.v210 = select i1 %2154, i64 26, i64 45
  %2162 = add i64 %1911, %.v210
  store i64 %2162, i64* %3, align 8
  br i1 %2154, label %block_4100e1, label %block_.L_4100f4

block_4100e1:                                     ; preds = %block_.L_4100c7
  %2163 = add i64 %2162, 3
  store i64 %2163, i64* %3, align 8
  %2164 = load i32, i32* %1317, align 4
  %2165 = add i32 %2164, 1
  %2166 = zext i32 %2165 to i64
  store i64 %2166, i64* %RAX.i2706, align 8
  %2167 = icmp eq i32 %2164, -1
  %2168 = icmp eq i32 %2165, 0
  %2169 = or i1 %2167, %2168
  %2170 = zext i1 %2169 to i8
  store i8 %2170, i8* %14, align 1
  %2171 = and i32 %2165, 255
  %2172 = tail call i32 @llvm.ctpop.i32(i32 %2171)
  %2173 = trunc i32 %2172 to i8
  %2174 = and i8 %2173, 1
  %2175 = xor i8 %2174, 1
  store i8 %2175, i8* %21, align 1
  %2176 = xor i32 %2165, %2164
  %2177 = lshr i32 %2176, 4
  %2178 = trunc i32 %2177 to i8
  %2179 = and i8 %2178, 1
  store i8 %2179, i8* %26, align 1
  %2180 = zext i1 %2168 to i8
  store i8 %2180, i8* %29, align 1
  %2181 = lshr i32 %2165, 31
  %2182 = trunc i32 %2181 to i8
  store i8 %2182, i8* %32, align 1
  %2183 = lshr i32 %2164, 31
  %2184 = xor i32 %2181, %2183
  %2185 = add nuw nsw i32 %2184, %2181
  %2186 = icmp eq i32 %2185, 2
  %2187 = zext i1 %2186 to i8
  store i8 %2187, i8* %38, align 1
  %2188 = sext i32 %2165 to i64
  store i64 %2188, i64* %RCX.i2558, align 8
  %2189 = shl nsw i64 %2188, 2
  %2190 = add nsw i64 %2189, 11187184
  %2191 = add i64 %2162, 16
  store i64 %2191, i64* %3, align 8
  %2192 = inttoptr i64 %2190 to i32*
  %2193 = load i32, i32* %2192, align 4
  %2194 = zext i32 %2193 to i64
  store i64 %2194, i64* %RAX.i2706, align 8
  %2195 = add i64 %1288, -20
  %2196 = add i64 %2162, 19
  store i64 %2196, i64* %3, align 8
  %2197 = inttoptr i64 %2195 to i32*
  store i32 %2193, i32* %2197, align 4
  %.pre179 = load i64, i64* %3, align 8
  br label %block_.L_4100f4

block_.L_4100f4:                                  ; preds = %block_.L_4100c7, %block_4100e1
  %2198 = phi i64 [ %.pre179, %block_4100e1 ], [ %2162, %block_.L_4100c7 ]
  %2199 = add i64 %2198, 5
  store i64 %2199, i64* %3, align 8
  br label %block_.L_4100f9

block_.L_4100f9:                                  ; preds = %block_.L_4100f4, %block_.L_4100c2
  %storemerge148 = phi i64 [ %2108, %block_.L_4100c2 ], [ %2199, %block_.L_4100f4 ]
  %2200 = add i64 %storemerge148, 5
  store i64 %2200, i64* %3, align 8
  br label %block_.L_4100fe

block_.L_4100fe:                                  ; preds = %block_.L_4100f9, %block_.L_41004a
  %storemerge147 = phi i64 [ %1857, %block_.L_41004a ], [ %2200, %block_.L_4100f9 ]
  %2201 = add i64 %storemerge147, 5
  store i64 %2201, i64* %3, align 8
  br label %block_.L_410103

block_.L_410103:                                  ; preds = %block_.L_4100fe, %block_.L_40ff2a
  %storemerge142 = phi i64 [ %1258, %block_.L_40ff2a ], [ %2201, %block_.L_4100fe ]
  %2202 = load i64, i64* %RBP.i, align 8
  %2203 = add i64 %2202, -16
  %2204 = add i64 %storemerge142, 4
  store i64 %2204, i64* %3, align 8
  %2205 = inttoptr i64 %2203 to i32*
  %2206 = load i32, i32* %2205, align 4
  store i8 0, i8* %14, align 1
  %2207 = and i32 %2206, 255
  %2208 = tail call i32 @llvm.ctpop.i32(i32 %2207)
  %2209 = trunc i32 %2208 to i8
  %2210 = and i8 %2209, 1
  %2211 = xor i8 %2210, 1
  store i8 %2211, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2212 = icmp eq i32 %2206, 0
  %2213 = zext i1 %2212 to i8
  store i8 %2213, i8* %29, align 1
  %2214 = lshr i32 %2206, 31
  %2215 = trunc i32 %2214 to i8
  store i8 %2215, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v211 = select i1 %2212, i64 2671, i64 10
  %2216 = add i64 %storemerge142, %.v211
  store i64 %2216, i64* %3, align 8
  br i1 %2212, label %block_.L_410b72, label %block_41010d

block_41010d:                                     ; preds = %block_.L_410103
  %2217 = add i64 %2202, -20
  %2218 = add i64 %2216, 4
  store i64 %2218, i64* %3, align 8
  %2219 = inttoptr i64 %2217 to i32*
  %2220 = load i32, i32* %2219, align 4
  store i8 0, i8* %14, align 1
  %2221 = and i32 %2220, 255
  %2222 = tail call i32 @llvm.ctpop.i32(i32 %2221)
  %2223 = trunc i32 %2222 to i8
  %2224 = and i8 %2223, 1
  %2225 = xor i8 %2224, 1
  store i8 %2225, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2226 = icmp eq i32 %2220, 0
  %2227 = zext i1 %2226 to i8
  store i8 %2227, i8* %29, align 1
  %2228 = lshr i32 %2220, 31
  %2229 = trunc i32 %2228 to i8
  store i8 %2229, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2230 = icmp ne i8 %2229, 0
  %.v149 = select i1 %2230, i64 6, i64 151
  %2231 = add i64 %2218, %.v149
  store i64 %2231, i64* %3, align 8
  br i1 %2230, label %block_410117, label %block_.L_4101a8

block_410117:                                     ; preds = %block_41010d
  %2232 = add i64 %2202, -8
  %2233 = add i64 %2231, 3
  store i64 %2233, i64* %3, align 8
  %2234 = inttoptr i64 %2232 to i32*
  %2235 = load i32, i32* %2234, align 4
  %2236 = add i32 %2235, 20
  %2237 = zext i32 %2236 to i64
  store i64 %2237, i64* %RAX.i2706, align 8
  %2238 = icmp ugt i32 %2235, -21
  %2239 = zext i1 %2238 to i8
  store i8 %2239, i8* %14, align 1
  %2240 = and i32 %2236, 255
  %2241 = tail call i32 @llvm.ctpop.i32(i32 %2240)
  %2242 = trunc i32 %2241 to i8
  %2243 = and i8 %2242, 1
  %2244 = xor i8 %2243, 1
  store i8 %2244, i8* %21, align 1
  %2245 = xor i32 %2235, 16
  %2246 = xor i32 %2245, %2236
  %2247 = lshr i32 %2246, 4
  %2248 = trunc i32 %2247 to i8
  %2249 = and i8 %2248, 1
  store i8 %2249, i8* %26, align 1
  %2250 = icmp eq i32 %2236, 0
  %2251 = zext i1 %2250 to i8
  store i8 %2251, i8* %29, align 1
  %2252 = lshr i32 %2236, 31
  %2253 = trunc i32 %2252 to i8
  store i8 %2253, i8* %32, align 1
  %2254 = lshr i32 %2235, 31
  %2255 = xor i32 %2252, %2254
  %2256 = add nuw nsw i32 %2255, %2252
  %2257 = icmp eq i32 %2256, 2
  %2258 = zext i1 %2257 to i8
  store i8 %2258, i8* %38, align 1
  %2259 = sext i32 %2236 to i64
  store i64 %2259, i64* %RCX.i2558, align 8
  %2260 = add nsw i64 %2259, 12099168
  %2261 = add i64 %2231, 17
  store i64 %2261, i64* %3, align 8
  %2262 = inttoptr i64 %2260 to i8*
  %2263 = load i8, i8* %2262, align 1
  %2264 = zext i8 %2263 to i64
  store i64 %2264, i64* %RAX.i2706, align 8
  %2265 = zext i8 %2263 to i32
  store i8 0, i8* %14, align 1
  %2266 = tail call i32 @llvm.ctpop.i32(i32 %2265)
  %2267 = trunc i32 %2266 to i8
  %2268 = and i8 %2267, 1
  %2269 = xor i8 %2268, 1
  store i8 %2269, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2270 = icmp eq i8 %2263, 0
  %2271 = zext i1 %2270 to i8
  store i8 %2271, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v292 = select i1 %2270, i64 26, i64 35
  %2272 = add i64 %2231, %.v292
  store i64 %2272, i64* %3, align 8
  br i1 %2270, label %block_410131, label %block_.L_41013a

block_410131:                                     ; preds = %block_410117
  %2273 = add i64 %2202, -28
  %2274 = add i64 %2272, 3
  store i64 %2274, i64* %3, align 8
  %2275 = inttoptr i64 %2273 to i32*
  %2276 = load i32, i32* %2275, align 4
  %2277 = add i32 %2276, 1
  %2278 = zext i32 %2277 to i64
  store i64 %2278, i64* %RAX.i2706, align 8
  %2279 = icmp eq i32 %2276, -1
  %2280 = icmp eq i32 %2277, 0
  %2281 = or i1 %2279, %2280
  %2282 = zext i1 %2281 to i8
  store i8 %2282, i8* %14, align 1
  %2283 = and i32 %2277, 255
  %2284 = tail call i32 @llvm.ctpop.i32(i32 %2283)
  %2285 = trunc i32 %2284 to i8
  %2286 = and i8 %2285, 1
  %2287 = xor i8 %2286, 1
  store i8 %2287, i8* %21, align 1
  %2288 = xor i32 %2277, %2276
  %2289 = lshr i32 %2288, 4
  %2290 = trunc i32 %2289 to i8
  %2291 = and i8 %2290, 1
  store i8 %2291, i8* %26, align 1
  %2292 = zext i1 %2280 to i8
  store i8 %2292, i8* %29, align 1
  %2293 = lshr i32 %2277, 31
  %2294 = trunc i32 %2293 to i8
  store i8 %2294, i8* %32, align 1
  %2295 = lshr i32 %2276, 31
  %2296 = xor i32 %2293, %2295
  %2297 = add nuw nsw i32 %2296, %2293
  %2298 = icmp eq i32 %2297, 2
  %2299 = zext i1 %2298 to i8
  store i8 %2299, i8* %38, align 1
  %2300 = add i64 %2272, 9
  store i64 %2300, i64* %3, align 8
  store i32 %2277, i32* %2275, align 4
  %.pre189 = load i64, i64* %RBP.i, align 8
  %.pre190 = load i64, i64* %3, align 8
  br label %block_.L_41013a

block_.L_41013a:                                  ; preds = %block_410117, %block_410131
  %2301 = phi i64 [ %.pre190, %block_410131 ], [ %2272, %block_410117 ]
  %2302 = phi i64 [ %.pre189, %block_410131 ], [ %2202, %block_410117 ]
  %2303 = add i64 %2302, -8
  %2304 = add i64 %2301, 3
  store i64 %2304, i64* %3, align 8
  %2305 = inttoptr i64 %2303 to i32*
  %2306 = load i32, i32* %2305, align 4
  %2307 = add i32 %2306, -1
  %2308 = zext i32 %2307 to i64
  store i64 %2308, i64* %RAX.i2706, align 8
  %2309 = icmp eq i32 %2306, 0
  %2310 = zext i1 %2309 to i8
  store i8 %2310, i8* %14, align 1
  %2311 = and i32 %2307, 255
  %2312 = tail call i32 @llvm.ctpop.i32(i32 %2311)
  %2313 = trunc i32 %2312 to i8
  %2314 = and i8 %2313, 1
  %2315 = xor i8 %2314, 1
  store i8 %2315, i8* %21, align 1
  %2316 = xor i32 %2307, %2306
  %2317 = lshr i32 %2316, 4
  %2318 = trunc i32 %2317 to i8
  %2319 = and i8 %2318, 1
  store i8 %2319, i8* %26, align 1
  %2320 = icmp eq i32 %2307, 0
  %2321 = zext i1 %2320 to i8
  store i8 %2321, i8* %29, align 1
  %2322 = lshr i32 %2307, 31
  %2323 = trunc i32 %2322 to i8
  store i8 %2323, i8* %32, align 1
  %2324 = lshr i32 %2306, 31
  %2325 = xor i32 %2322, %2324
  %2326 = add nuw nsw i32 %2325, %2324
  %2327 = icmp eq i32 %2326, 2
  %2328 = zext i1 %2327 to i8
  store i8 %2328, i8* %38, align 1
  %2329 = sext i32 %2307 to i64
  store i64 %2329, i64* %RCX.i2558, align 8
  %2330 = add nsw i64 %2329, 12099168
  %2331 = add i64 %2301, 17
  store i64 %2331, i64* %3, align 8
  %2332 = inttoptr i64 %2330 to i8*
  %2333 = load i8, i8* %2332, align 1
  %2334 = zext i8 %2333 to i64
  store i64 %2334, i64* %RAX.i2706, align 8
  %2335 = zext i8 %2333 to i32
  store i8 0, i8* %14, align 1
  %2336 = tail call i32 @llvm.ctpop.i32(i32 %2335)
  %2337 = trunc i32 %2336 to i8
  %2338 = and i8 %2337, 1
  %2339 = xor i8 %2338, 1
  store i8 %2339, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2340 = icmp eq i8 %2333, 0
  %2341 = zext i1 %2340 to i8
  store i8 %2341, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v293 = select i1 %2340, i64 26, i64 35
  %2342 = add i64 %2301, %.v293
  store i64 %2342, i64* %3, align 8
  br i1 %2340, label %block_410154, label %block_.L_41015d

block_410154:                                     ; preds = %block_.L_41013a
  %2343 = add i64 %2302, -28
  %2344 = add i64 %2342, 3
  store i64 %2344, i64* %3, align 8
  %2345 = inttoptr i64 %2343 to i32*
  %2346 = load i32, i32* %2345, align 4
  %2347 = add i32 %2346, 1
  %2348 = zext i32 %2347 to i64
  store i64 %2348, i64* %RAX.i2706, align 8
  %2349 = icmp eq i32 %2346, -1
  %2350 = icmp eq i32 %2347, 0
  %2351 = or i1 %2349, %2350
  %2352 = zext i1 %2351 to i8
  store i8 %2352, i8* %14, align 1
  %2353 = and i32 %2347, 255
  %2354 = tail call i32 @llvm.ctpop.i32(i32 %2353)
  %2355 = trunc i32 %2354 to i8
  %2356 = and i8 %2355, 1
  %2357 = xor i8 %2356, 1
  store i8 %2357, i8* %21, align 1
  %2358 = xor i32 %2347, %2346
  %2359 = lshr i32 %2358, 4
  %2360 = trunc i32 %2359 to i8
  %2361 = and i8 %2360, 1
  store i8 %2361, i8* %26, align 1
  %2362 = zext i1 %2350 to i8
  store i8 %2362, i8* %29, align 1
  %2363 = lshr i32 %2347, 31
  %2364 = trunc i32 %2363 to i8
  store i8 %2364, i8* %32, align 1
  %2365 = lshr i32 %2346, 31
  %2366 = xor i32 %2363, %2365
  %2367 = add nuw nsw i32 %2366, %2363
  %2368 = icmp eq i32 %2367, 2
  %2369 = zext i1 %2368 to i8
  store i8 %2369, i8* %38, align 1
  %2370 = add i64 %2342, 9
  store i64 %2370, i64* %3, align 8
  store i32 %2347, i32* %2345, align 4
  %.pre191 = load i64, i64* %RBP.i, align 8
  %.pre192 = load i64, i64* %3, align 8
  br label %block_.L_41015d

block_.L_41015d:                                  ; preds = %block_.L_41013a, %block_410154
  %2371 = phi i64 [ %.pre192, %block_410154 ], [ %2342, %block_.L_41013a ]
  %2372 = phi i64 [ %.pre191, %block_410154 ], [ %2302, %block_.L_41013a ]
  %2373 = add i64 %2372, -8
  %2374 = add i64 %2371, 3
  store i64 %2374, i64* %3, align 8
  %2375 = inttoptr i64 %2373 to i32*
  %2376 = load i32, i32* %2375, align 4
  %2377 = add i32 %2376, -20
  %2378 = zext i32 %2377 to i64
  store i64 %2378, i64* %RAX.i2706, align 8
  %2379 = icmp ult i32 %2376, 20
  %2380 = zext i1 %2379 to i8
  store i8 %2380, i8* %14, align 1
  %2381 = and i32 %2377, 255
  %2382 = tail call i32 @llvm.ctpop.i32(i32 %2381)
  %2383 = trunc i32 %2382 to i8
  %2384 = and i8 %2383, 1
  %2385 = xor i8 %2384, 1
  store i8 %2385, i8* %21, align 1
  %2386 = xor i32 %2376, 16
  %2387 = xor i32 %2386, %2377
  %2388 = lshr i32 %2387, 4
  %2389 = trunc i32 %2388 to i8
  %2390 = and i8 %2389, 1
  store i8 %2390, i8* %26, align 1
  %2391 = icmp eq i32 %2377, 0
  %2392 = zext i1 %2391 to i8
  store i8 %2392, i8* %29, align 1
  %2393 = lshr i32 %2377, 31
  %2394 = trunc i32 %2393 to i8
  store i8 %2394, i8* %32, align 1
  %2395 = lshr i32 %2376, 31
  %2396 = xor i32 %2393, %2395
  %2397 = add nuw nsw i32 %2396, %2395
  %2398 = icmp eq i32 %2397, 2
  %2399 = zext i1 %2398 to i8
  store i8 %2399, i8* %38, align 1
  %2400 = sext i32 %2377 to i64
  store i64 %2400, i64* %RCX.i2558, align 8
  %2401 = add nsw i64 %2400, 12099168
  %2402 = add i64 %2371, 17
  store i64 %2402, i64* %3, align 8
  %2403 = inttoptr i64 %2401 to i8*
  %2404 = load i8, i8* %2403, align 1
  %2405 = zext i8 %2404 to i64
  store i64 %2405, i64* %RAX.i2706, align 8
  %2406 = zext i8 %2404 to i32
  store i8 0, i8* %14, align 1
  %2407 = tail call i32 @llvm.ctpop.i32(i32 %2406)
  %2408 = trunc i32 %2407 to i8
  %2409 = and i8 %2408, 1
  %2410 = xor i8 %2409, 1
  store i8 %2410, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2411 = icmp eq i8 %2404, 0
  %2412 = zext i1 %2411 to i8
  store i8 %2412, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v294 = select i1 %2411, i64 26, i64 35
  %2413 = add i64 %2371, %.v294
  store i64 %2413, i64* %3, align 8
  br i1 %2411, label %block_410177, label %block_.L_410180

block_410177:                                     ; preds = %block_.L_41015d
  %2414 = add i64 %2372, -28
  %2415 = add i64 %2413, 3
  store i64 %2415, i64* %3, align 8
  %2416 = inttoptr i64 %2414 to i32*
  %2417 = load i32, i32* %2416, align 4
  %2418 = add i32 %2417, 1
  %2419 = zext i32 %2418 to i64
  store i64 %2419, i64* %RAX.i2706, align 8
  %2420 = icmp eq i32 %2417, -1
  %2421 = icmp eq i32 %2418, 0
  %2422 = or i1 %2420, %2421
  %2423 = zext i1 %2422 to i8
  store i8 %2423, i8* %14, align 1
  %2424 = and i32 %2418, 255
  %2425 = tail call i32 @llvm.ctpop.i32(i32 %2424)
  %2426 = trunc i32 %2425 to i8
  %2427 = and i8 %2426, 1
  %2428 = xor i8 %2427, 1
  store i8 %2428, i8* %21, align 1
  %2429 = xor i32 %2418, %2417
  %2430 = lshr i32 %2429, 4
  %2431 = trunc i32 %2430 to i8
  %2432 = and i8 %2431, 1
  store i8 %2432, i8* %26, align 1
  %2433 = zext i1 %2421 to i8
  store i8 %2433, i8* %29, align 1
  %2434 = lshr i32 %2418, 31
  %2435 = trunc i32 %2434 to i8
  store i8 %2435, i8* %32, align 1
  %2436 = lshr i32 %2417, 31
  %2437 = xor i32 %2434, %2436
  %2438 = add nuw nsw i32 %2437, %2434
  %2439 = icmp eq i32 %2438, 2
  %2440 = zext i1 %2439 to i8
  store i8 %2440, i8* %38, align 1
  %2441 = add i64 %2413, 9
  store i64 %2441, i64* %3, align 8
  store i32 %2418, i32* %2416, align 4
  %.pre193 = load i64, i64* %RBP.i, align 8
  %.pre194 = load i64, i64* %3, align 8
  br label %block_.L_410180

block_.L_410180:                                  ; preds = %block_.L_41015d, %block_410177
  %2442 = phi i64 [ %.pre194, %block_410177 ], [ %2413, %block_.L_41015d ]
  %2443 = phi i64 [ %.pre193, %block_410177 ], [ %2372, %block_.L_41015d ]
  %2444 = add i64 %2443, -8
  %2445 = add i64 %2442, 3
  store i64 %2445, i64* %3, align 8
  %2446 = inttoptr i64 %2444 to i32*
  %2447 = load i32, i32* %2446, align 4
  %2448 = add i32 %2447, 1
  %2449 = zext i32 %2448 to i64
  store i64 %2449, i64* %RAX.i2706, align 8
  %2450 = icmp eq i32 %2447, -1
  %2451 = icmp eq i32 %2448, 0
  %2452 = or i1 %2450, %2451
  %2453 = zext i1 %2452 to i8
  store i8 %2453, i8* %14, align 1
  %2454 = and i32 %2448, 255
  %2455 = tail call i32 @llvm.ctpop.i32(i32 %2454)
  %2456 = trunc i32 %2455 to i8
  %2457 = and i8 %2456, 1
  %2458 = xor i8 %2457, 1
  store i8 %2458, i8* %21, align 1
  %2459 = xor i32 %2448, %2447
  %2460 = lshr i32 %2459, 4
  %2461 = trunc i32 %2460 to i8
  %2462 = and i8 %2461, 1
  store i8 %2462, i8* %26, align 1
  %2463 = zext i1 %2451 to i8
  store i8 %2463, i8* %29, align 1
  %2464 = lshr i32 %2448, 31
  %2465 = trunc i32 %2464 to i8
  store i8 %2465, i8* %32, align 1
  %2466 = lshr i32 %2447, 31
  %2467 = xor i32 %2464, %2466
  %2468 = add nuw nsw i32 %2467, %2464
  %2469 = icmp eq i32 %2468, 2
  %2470 = zext i1 %2469 to i8
  store i8 %2470, i8* %38, align 1
  %2471 = sext i32 %2448 to i64
  store i64 %2471, i64* %RCX.i2558, align 8
  %2472 = add nsw i64 %2471, 12099168
  %2473 = add i64 %2442, 17
  store i64 %2473, i64* %3, align 8
  %2474 = inttoptr i64 %2472 to i8*
  %2475 = load i8, i8* %2474, align 1
  %2476 = zext i8 %2475 to i64
  store i64 %2476, i64* %RAX.i2706, align 8
  %2477 = zext i8 %2475 to i32
  store i8 0, i8* %14, align 1
  %2478 = tail call i32 @llvm.ctpop.i32(i32 %2477)
  %2479 = trunc i32 %2478 to i8
  %2480 = and i8 %2479, 1
  %2481 = xor i8 %2480, 1
  store i8 %2481, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2482 = icmp eq i8 %2475, 0
  %2483 = zext i1 %2482 to i8
  store i8 %2483, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v295 = select i1 %2482, i64 26, i64 35
  %2484 = add i64 %2442, %.v295
  store i64 %2484, i64* %3, align 8
  br i1 %2482, label %block_41019a, label %block_.L_4101a3

block_41019a:                                     ; preds = %block_.L_410180
  %2485 = add i64 %2443, -28
  %2486 = add i64 %2484, 3
  store i64 %2486, i64* %3, align 8
  %2487 = inttoptr i64 %2485 to i32*
  %2488 = load i32, i32* %2487, align 4
  %2489 = add i32 %2488, 1
  %2490 = zext i32 %2489 to i64
  store i64 %2490, i64* %RAX.i2706, align 8
  %2491 = icmp eq i32 %2488, -1
  %2492 = icmp eq i32 %2489, 0
  %2493 = or i1 %2491, %2492
  %2494 = zext i1 %2493 to i8
  store i8 %2494, i8* %14, align 1
  %2495 = and i32 %2489, 255
  %2496 = tail call i32 @llvm.ctpop.i32(i32 %2495)
  %2497 = trunc i32 %2496 to i8
  %2498 = and i8 %2497, 1
  %2499 = xor i8 %2498, 1
  store i8 %2499, i8* %21, align 1
  %2500 = xor i32 %2489, %2488
  %2501 = lshr i32 %2500, 4
  %2502 = trunc i32 %2501 to i8
  %2503 = and i8 %2502, 1
  store i8 %2503, i8* %26, align 1
  %2504 = zext i1 %2492 to i8
  store i8 %2504, i8* %29, align 1
  %2505 = lshr i32 %2489, 31
  %2506 = trunc i32 %2505 to i8
  store i8 %2506, i8* %32, align 1
  %2507 = lshr i32 %2488, 31
  %2508 = xor i32 %2505, %2507
  %2509 = add nuw nsw i32 %2508, %2505
  %2510 = icmp eq i32 %2509, 2
  %2511 = zext i1 %2510 to i8
  store i8 %2511, i8* %38, align 1
  %2512 = add i64 %2484, 9
  store i64 %2512, i64* %3, align 8
  store i32 %2489, i32* %2487, align 4
  %.pre195 = load i64, i64* %3, align 8
  br label %block_.L_4101a3

block_.L_4101a3:                                  ; preds = %block_.L_410180, %block_41019a
  %2513 = phi i64 [ %.pre195, %block_41019a ], [ %2484, %block_.L_410180 ]
  %2514 = add i64 %2513, 2506
  br label %block_.L_410b6d

block_.L_4101a8:                                  ; preds = %block_41010d
  %2515 = add i64 %2202, -24
  %2516 = add i64 %2231, 4
  store i64 %2516, i64* %3, align 8
  %2517 = inttoptr i64 %2515 to i32*
  %2518 = load i32, i32* %2517, align 4
  store i8 0, i8* %14, align 1
  %2519 = and i32 %2518, 255
  %2520 = tail call i32 @llvm.ctpop.i32(i32 %2519)
  %2521 = trunc i32 %2520 to i8
  %2522 = and i8 %2521, 1
  %2523 = xor i8 %2522, 1
  store i8 %2523, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2524 = icmp eq i32 %2518, 0
  %2525 = zext i1 %2524 to i8
  store i8 %2525, i8* %29, align 1
  %2526 = lshr i32 %2518, 31
  %2527 = trunc i32 %2526 to i8
  store i8 %2527, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2528 = icmp ne i8 %2527, 0
  %.v150 = select i1 %2528, i64 6, i64 871
  %2529 = add i64 %2516, %.v150
  %2530 = add i64 %2202, -8
  %2531 = add i64 %2529, 3
  store i64 %2531, i64* %3, align 8
  %2532 = inttoptr i64 %2530 to i32*
  %2533 = load i32, i32* %2532, align 4
  %2534 = add i32 %2533, 20
  %2535 = zext i32 %2534 to i64
  store i64 %2535, i64* %RAX.i2706, align 8
  %2536 = icmp ugt i32 %2533, -21
  %2537 = zext i1 %2536 to i8
  store i8 %2537, i8* %14, align 1
  %2538 = and i32 %2534, 255
  %2539 = tail call i32 @llvm.ctpop.i32(i32 %2538)
  %2540 = trunc i32 %2539 to i8
  %2541 = and i8 %2540, 1
  %2542 = xor i8 %2541, 1
  store i8 %2542, i8* %21, align 1
  %2543 = xor i32 %2533, 16
  %2544 = xor i32 %2543, %2534
  %2545 = lshr i32 %2544, 4
  %2546 = trunc i32 %2545 to i8
  %2547 = and i8 %2546, 1
  store i8 %2547, i8* %26, align 1
  %2548 = icmp eq i32 %2534, 0
  %2549 = zext i1 %2548 to i8
  store i8 %2549, i8* %29, align 1
  %2550 = lshr i32 %2534, 31
  %2551 = trunc i32 %2550 to i8
  store i8 %2551, i8* %32, align 1
  %2552 = lshr i32 %2533, 31
  %2553 = xor i32 %2550, %2552
  %2554 = add nuw nsw i32 %2553, %2550
  %2555 = icmp eq i32 %2554, 2
  %2556 = zext i1 %2555 to i8
  store i8 %2556, i8* %38, align 1
  %2557 = sext i32 %2534 to i64
  store i64 %2557, i64* %RCX.i2558, align 8
  %2558 = add nsw i64 %2557, 12099168
  %2559 = add i64 %2529, 17
  store i64 %2559, i64* %3, align 8
  %2560 = inttoptr i64 %2558 to i8*
  %2561 = load i8, i8* %2560, align 1
  %2562 = zext i8 %2561 to i64
  store i64 %2562, i64* %RAX.i2706, align 8
  %2563 = zext i8 %2561 to i32
  %2564 = add i64 %2529, 20
  store i64 %2564, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2565 = tail call i32 @llvm.ctpop.i32(i32 %2563)
  %2566 = trunc i32 %2565 to i8
  %2567 = and i8 %2566, 1
  %2568 = xor i8 %2567, 1
  store i8 %2568, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2569 = icmp eq i8 %2561, 0
  %2570 = zext i1 %2569 to i8
  store i8 %2570, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br i1 %2528, label %block_4101b2, label %block_.L_410513

block_4101b2:                                     ; preds = %block_.L_4101a8
  %.v264 = select i1 %2569, i64 26, i64 206
  %2571 = add i64 %2529, %.v264
  store i64 %2571, i64* %3, align 8
  br i1 %2569, label %block_4101cc, label %block_.L_410280

block_4101cc:                                     ; preds = %block_4101b2
  %2572 = add i64 %2571, 3
  store i64 %2572, i64* %3, align 8
  %2573 = load i32, i32* %2532, align 4
  %2574 = add i32 %2573, 20
  %2575 = lshr i32 %2574, 31
  %2576 = add i32 %2573, 40
  %2577 = zext i32 %2576 to i64
  store i64 %2577, i64* %RAX.i2706, align 8
  %2578 = icmp ugt i32 %2574, -21
  %2579 = zext i1 %2578 to i8
  store i8 %2579, i8* %14, align 1
  %2580 = and i32 %2576, 255
  %2581 = tail call i32 @llvm.ctpop.i32(i32 %2580)
  %2582 = trunc i32 %2581 to i8
  %2583 = and i8 %2582, 1
  %2584 = xor i8 %2583, 1
  store i8 %2584, i8* %21, align 1
  %2585 = xor i32 %2574, 16
  %2586 = xor i32 %2585, %2576
  %2587 = lshr i32 %2586, 4
  %2588 = trunc i32 %2587 to i8
  %2589 = and i8 %2588, 1
  store i8 %2589, i8* %26, align 1
  %2590 = icmp eq i32 %2576, 0
  %2591 = zext i1 %2590 to i8
  store i8 %2591, i8* %29, align 1
  %2592 = lshr i32 %2576, 31
  %2593 = trunc i32 %2592 to i8
  store i8 %2593, i8* %32, align 1
  %2594 = xor i32 %2592, %2575
  %2595 = add nuw nsw i32 %2594, %2592
  %2596 = icmp eq i32 %2595, 2
  %2597 = zext i1 %2596 to i8
  store i8 %2597, i8* %38, align 1
  %2598 = sext i32 %2576 to i64
  store i64 %2598, i64* %RCX.i2558, align 8
  %2599 = add nsw i64 %2598, 12099168
  %2600 = add i64 %2571, 20
  store i64 %2600, i64* %3, align 8
  %2601 = inttoptr i64 %2599 to i8*
  %2602 = load i8, i8* %2601, align 1
  %2603 = zext i8 %2602 to i64
  store i64 %2603, i64* %RAX.i2706, align 8
  %2604 = zext i8 %2602 to i32
  %2605 = add i64 %2202, -12
  %2606 = add i64 %2571, 23
  store i64 %2606, i64* %3, align 8
  %2607 = inttoptr i64 %2605 to i32*
  %2608 = load i32, i32* %2607, align 4
  %2609 = sub i32 %2604, %2608
  %2610 = icmp ult i32 %2604, %2608
  %2611 = zext i1 %2610 to i8
  store i8 %2611, i8* %14, align 1
  %2612 = and i32 %2609, 255
  %2613 = tail call i32 @llvm.ctpop.i32(i32 %2612)
  %2614 = trunc i32 %2613 to i8
  %2615 = and i8 %2614, 1
  %2616 = xor i8 %2615, 1
  store i8 %2616, i8* %21, align 1
  %2617 = xor i32 %2608, %2604
  %2618 = xor i32 %2617, %2609
  %2619 = lshr i32 %2618, 4
  %2620 = trunc i32 %2619 to i8
  %2621 = and i8 %2620, 1
  store i8 %2621, i8* %26, align 1
  %2622 = icmp eq i32 %2609, 0
  %2623 = zext i1 %2622 to i8
  store i8 %2623, i8* %29, align 1
  %2624 = lshr i32 %2609, 31
  %2625 = trunc i32 %2624 to i8
  store i8 %2625, i8* %32, align 1
  %2626 = lshr i32 %2608, 31
  %2627 = add nuw nsw i32 %2624, %2626
  %2628 = icmp eq i32 %2627, 2
  %2629 = zext i1 %2628 to i8
  store i8 %2629, i8* %38, align 1
  %.v286 = select i1 %2622, i64 29, i64 57
  %2630 = add i64 %2571, %.v286
  store i64 %2630, i64* %3, align 8
  br i1 %2622, label %block_4101e9, label %block_.L_410205

block_4101e9:                                     ; preds = %block_4101cc
  %2631 = load i64, i64* %RBP.i, align 8
  %2632 = add i64 %2631, -8
  %2633 = add i64 %2630, 3
  store i64 %2633, i64* %3, align 8
  %2634 = inttoptr i64 %2632 to i32*
  %2635 = load i32, i32* %2634, align 4
  %2636 = add i32 %2635, 20
  %2637 = lshr i32 %2636, 31
  %2638 = add i32 %2635, 40
  %2639 = zext i32 %2638 to i64
  store i64 %2639, i64* %RAX.i2706, align 8
  %2640 = icmp ugt i32 %2636, -21
  %2641 = zext i1 %2640 to i8
  store i8 %2641, i8* %14, align 1
  %2642 = and i32 %2638, 255
  %2643 = tail call i32 @llvm.ctpop.i32(i32 %2642)
  %2644 = trunc i32 %2643 to i8
  %2645 = and i8 %2644, 1
  %2646 = xor i8 %2645, 1
  store i8 %2646, i8* %21, align 1
  %2647 = xor i32 %2636, 16
  %2648 = xor i32 %2647, %2638
  %2649 = lshr i32 %2648, 4
  %2650 = trunc i32 %2649 to i8
  %2651 = and i8 %2650, 1
  store i8 %2651, i8* %26, align 1
  %2652 = icmp eq i32 %2638, 0
  %2653 = zext i1 %2652 to i8
  store i8 %2653, i8* %29, align 1
  %2654 = lshr i32 %2638, 31
  %2655 = trunc i32 %2654 to i8
  store i8 %2655, i8* %32, align 1
  %2656 = xor i32 %2654, %2637
  %2657 = add nuw nsw i32 %2656, %2654
  %2658 = icmp eq i32 %2657, 2
  %2659 = zext i1 %2658 to i8
  store i8 %2659, i8* %38, align 1
  %2660 = sext i32 %2638 to i64
  store i64 %2660, i64* %RCX.i2558, align 8
  %2661 = shl nsw i64 %2660, 2
  %2662 = add nsw i64 %2661, 11187184
  %2663 = add i64 %2630, 19
  store i64 %2663, i64* %3, align 8
  %2664 = inttoptr i64 %2662 to i32*
  %2665 = load i32, i32* %2664, align 4
  %2666 = zext i32 %2665 to i64
  store i64 %2666, i64* %RAX.i2706, align 8
  %2667 = add i64 %2631, -20
  %2668 = add i64 %2630, 22
  store i64 %2668, i64* %3, align 8
  %2669 = inttoptr i64 %2667 to i32*
  %2670 = load i32, i32* %2669, align 4
  %2671 = sub i32 %2665, %2670
  %2672 = icmp ult i32 %2665, %2670
  %2673 = zext i1 %2672 to i8
  store i8 %2673, i8* %14, align 1
  %2674 = and i32 %2671, 255
  %2675 = tail call i32 @llvm.ctpop.i32(i32 %2674)
  %2676 = trunc i32 %2675 to i8
  %2677 = and i8 %2676, 1
  %2678 = xor i8 %2677, 1
  store i8 %2678, i8* %21, align 1
  %2679 = xor i32 %2670, %2665
  %2680 = xor i32 %2679, %2671
  %2681 = lshr i32 %2680, 4
  %2682 = trunc i32 %2681 to i8
  %2683 = and i8 %2682, 1
  store i8 %2683, i8* %26, align 1
  %2684 = icmp eq i32 %2671, 0
  %2685 = zext i1 %2684 to i8
  store i8 %2685, i8* %29, align 1
  %2686 = lshr i32 %2671, 31
  %2687 = trunc i32 %2686 to i8
  store i8 %2687, i8* %32, align 1
  %2688 = lshr i32 %2665, 31
  %2689 = lshr i32 %2670, 31
  %2690 = xor i32 %2689, %2688
  %2691 = xor i32 %2686, %2688
  %2692 = add nuw nsw i32 %2691, %2690
  %2693 = icmp eq i32 %2692, 2
  %2694 = zext i1 %2693 to i8
  store i8 %2694, i8* %38, align 1
  %.v291 = select i1 %2684, i64 151, i64 28
  %2695 = add i64 %2630, %.v291
  store i64 %2695, i64* %3, align 8
  br i1 %2684, label %block_.L_410280, label %block_.L_410205

block_.L_410205:                                  ; preds = %block_4101cc, %block_4101e9
  %2696 = phi i64 [ %2695, %block_4101e9 ], [ %2630, %block_4101cc ]
  %2697 = load i64, i64* %RBP.i, align 8
  %2698 = add i64 %2697, -8
  %2699 = add i64 %2696, 3
  store i64 %2699, i64* %3, align 8
  %2700 = inttoptr i64 %2698 to i32*
  %2701 = load i32, i32* %2700, align 4
  %2702 = add i32 %2701, 20
  %2703 = icmp eq i32 %2702, 0
  %2704 = zext i1 %2703 to i8
  %2705 = lshr i32 %2702, 31
  %2706 = add i32 %2701, 19
  %2707 = zext i32 %2706 to i64
  store i64 %2707, i64* %RAX.i2706, align 8
  store i8 %2704, i8* %14, align 1
  %2708 = and i32 %2706, 255
  %2709 = tail call i32 @llvm.ctpop.i32(i32 %2708)
  %2710 = trunc i32 %2709 to i8
  %2711 = and i8 %2710, 1
  %2712 = xor i8 %2711, 1
  store i8 %2712, i8* %21, align 1
  %2713 = xor i32 %2706, %2702
  %2714 = lshr i32 %2713, 4
  %2715 = trunc i32 %2714 to i8
  %2716 = and i8 %2715, 1
  store i8 %2716, i8* %26, align 1
  %2717 = icmp eq i32 %2706, 0
  %2718 = zext i1 %2717 to i8
  store i8 %2718, i8* %29, align 1
  %2719 = lshr i32 %2706, 31
  %2720 = trunc i32 %2719 to i8
  store i8 %2720, i8* %32, align 1
  %2721 = xor i32 %2719, %2705
  %2722 = add nuw nsw i32 %2721, %2705
  %2723 = icmp eq i32 %2722, 2
  %2724 = zext i1 %2723 to i8
  store i8 %2724, i8* %38, align 1
  %2725 = sext i32 %2706 to i64
  store i64 %2725, i64* %RCX.i2558, align 8
  %2726 = add nsw i64 %2725, 12099168
  %2727 = add i64 %2696, 20
  store i64 %2727, i64* %3, align 8
  %2728 = inttoptr i64 %2726 to i8*
  %2729 = load i8, i8* %2728, align 1
  %2730 = zext i8 %2729 to i64
  store i64 %2730, i64* %RAX.i2706, align 8
  %2731 = zext i8 %2729 to i32
  %2732 = add i64 %2697, -12
  %2733 = add i64 %2696, 23
  store i64 %2733, i64* %3, align 8
  %2734 = inttoptr i64 %2732 to i32*
  %2735 = load i32, i32* %2734, align 4
  %2736 = sub i32 %2731, %2735
  %2737 = icmp ult i32 %2731, %2735
  %2738 = zext i1 %2737 to i8
  store i8 %2738, i8* %14, align 1
  %2739 = and i32 %2736, 255
  %2740 = tail call i32 @llvm.ctpop.i32(i32 %2739)
  %2741 = trunc i32 %2740 to i8
  %2742 = and i8 %2741, 1
  %2743 = xor i8 %2742, 1
  store i8 %2743, i8* %21, align 1
  %2744 = xor i32 %2735, %2731
  %2745 = xor i32 %2744, %2736
  %2746 = lshr i32 %2745, 4
  %2747 = trunc i32 %2746 to i8
  %2748 = and i8 %2747, 1
  store i8 %2748, i8* %26, align 1
  %2749 = icmp eq i32 %2736, 0
  %2750 = zext i1 %2749 to i8
  store i8 %2750, i8* %29, align 1
  %2751 = lshr i32 %2736, 31
  %2752 = trunc i32 %2751 to i8
  store i8 %2752, i8* %32, align 1
  %2753 = lshr i32 %2735, 31
  %2754 = add nuw nsw i32 %2751, %2753
  %2755 = icmp eq i32 %2754, 2
  %2756 = zext i1 %2755 to i8
  store i8 %2756, i8* %38, align 1
  %.v287 = select i1 %2749, i64 29, i64 57
  %2757 = add i64 %2696, %.v287
  store i64 %2757, i64* %3, align 8
  br i1 %2749, label %block_410222, label %block_.L_41023e

block_410222:                                     ; preds = %block_.L_410205
  %2758 = load i64, i64* %RBP.i, align 8
  %2759 = add i64 %2758, -8
  %2760 = add i64 %2757, 3
  store i64 %2760, i64* %3, align 8
  %2761 = inttoptr i64 %2759 to i32*
  %2762 = load i32, i32* %2761, align 4
  %2763 = add i32 %2762, 20
  %2764 = icmp eq i32 %2763, 0
  %2765 = zext i1 %2764 to i8
  %2766 = lshr i32 %2763, 31
  %2767 = add i32 %2762, 19
  %2768 = zext i32 %2767 to i64
  store i64 %2768, i64* %RAX.i2706, align 8
  store i8 %2765, i8* %14, align 1
  %2769 = and i32 %2767, 255
  %2770 = tail call i32 @llvm.ctpop.i32(i32 %2769)
  %2771 = trunc i32 %2770 to i8
  %2772 = and i8 %2771, 1
  %2773 = xor i8 %2772, 1
  store i8 %2773, i8* %21, align 1
  %2774 = xor i32 %2767, %2763
  %2775 = lshr i32 %2774, 4
  %2776 = trunc i32 %2775 to i8
  %2777 = and i8 %2776, 1
  store i8 %2777, i8* %26, align 1
  %2778 = icmp eq i32 %2767, 0
  %2779 = zext i1 %2778 to i8
  store i8 %2779, i8* %29, align 1
  %2780 = lshr i32 %2767, 31
  %2781 = trunc i32 %2780 to i8
  store i8 %2781, i8* %32, align 1
  %2782 = xor i32 %2780, %2766
  %2783 = add nuw nsw i32 %2782, %2766
  %2784 = icmp eq i32 %2783, 2
  %2785 = zext i1 %2784 to i8
  store i8 %2785, i8* %38, align 1
  %2786 = sext i32 %2767 to i64
  store i64 %2786, i64* %RCX.i2558, align 8
  %2787 = shl nsw i64 %2786, 2
  %2788 = add nsw i64 %2787, 11187184
  %2789 = add i64 %2757, 19
  store i64 %2789, i64* %3, align 8
  %2790 = inttoptr i64 %2788 to i32*
  %2791 = load i32, i32* %2790, align 4
  %2792 = zext i32 %2791 to i64
  store i64 %2792, i64* %RAX.i2706, align 8
  %2793 = add i64 %2758, -20
  %2794 = add i64 %2757, 22
  store i64 %2794, i64* %3, align 8
  %2795 = inttoptr i64 %2793 to i32*
  %2796 = load i32, i32* %2795, align 4
  %2797 = sub i32 %2791, %2796
  %2798 = icmp ult i32 %2791, %2796
  %2799 = zext i1 %2798 to i8
  store i8 %2799, i8* %14, align 1
  %2800 = and i32 %2797, 255
  %2801 = tail call i32 @llvm.ctpop.i32(i32 %2800)
  %2802 = trunc i32 %2801 to i8
  %2803 = and i8 %2802, 1
  %2804 = xor i8 %2803, 1
  store i8 %2804, i8* %21, align 1
  %2805 = xor i32 %2796, %2791
  %2806 = xor i32 %2805, %2797
  %2807 = lshr i32 %2806, 4
  %2808 = trunc i32 %2807 to i8
  %2809 = and i8 %2808, 1
  store i8 %2809, i8* %26, align 1
  %2810 = icmp eq i32 %2797, 0
  %2811 = zext i1 %2810 to i8
  store i8 %2811, i8* %29, align 1
  %2812 = lshr i32 %2797, 31
  %2813 = trunc i32 %2812 to i8
  store i8 %2813, i8* %32, align 1
  %2814 = lshr i32 %2791, 31
  %2815 = lshr i32 %2796, 31
  %2816 = xor i32 %2815, %2814
  %2817 = xor i32 %2812, %2814
  %2818 = add nuw nsw i32 %2817, %2816
  %2819 = icmp eq i32 %2818, 2
  %2820 = zext i1 %2819 to i8
  store i8 %2820, i8* %38, align 1
  %.v290 = select i1 %2810, i64 94, i64 28
  %2821 = add i64 %2757, %.v290
  store i64 %2821, i64* %3, align 8
  br i1 %2810, label %block_.L_410280, label %block_.L_41023e

block_.L_41023e:                                  ; preds = %block_.L_410205, %block_410222
  %2822 = phi i64 [ %2821, %block_410222 ], [ %2757, %block_.L_410205 ]
  %2823 = load i64, i64* %RBP.i, align 8
  %2824 = add i64 %2823, -8
  %2825 = add i64 %2822, 3
  store i64 %2825, i64* %3, align 8
  %2826 = inttoptr i64 %2824 to i32*
  %2827 = load i32, i32* %2826, align 4
  %2828 = add i32 %2827, 20
  %2829 = lshr i32 %2828, 31
  %2830 = add i32 %2827, 21
  %2831 = zext i32 %2830 to i64
  store i64 %2831, i64* %RAX.i2706, align 8
  %2832 = icmp eq i32 %2828, -1
  %2833 = icmp eq i32 %2830, 0
  %2834 = or i1 %2832, %2833
  %2835 = zext i1 %2834 to i8
  store i8 %2835, i8* %14, align 1
  %2836 = and i32 %2830, 255
  %2837 = tail call i32 @llvm.ctpop.i32(i32 %2836)
  %2838 = trunc i32 %2837 to i8
  %2839 = and i8 %2838, 1
  %2840 = xor i8 %2839, 1
  store i8 %2840, i8* %21, align 1
  %2841 = xor i32 %2830, %2828
  %2842 = lshr i32 %2841, 4
  %2843 = trunc i32 %2842 to i8
  %2844 = and i8 %2843, 1
  store i8 %2844, i8* %26, align 1
  %2845 = zext i1 %2833 to i8
  store i8 %2845, i8* %29, align 1
  %2846 = lshr i32 %2830, 31
  %2847 = trunc i32 %2846 to i8
  store i8 %2847, i8* %32, align 1
  %2848 = xor i32 %2846, %2829
  %2849 = add nuw nsw i32 %2848, %2846
  %2850 = icmp eq i32 %2849, 2
  %2851 = zext i1 %2850 to i8
  store i8 %2851, i8* %38, align 1
  %2852 = sext i32 %2830 to i64
  store i64 %2852, i64* %RCX.i2558, align 8
  %2853 = add nsw i64 %2852, 12099168
  %2854 = add i64 %2822, 20
  store i64 %2854, i64* %3, align 8
  %2855 = inttoptr i64 %2853 to i8*
  %2856 = load i8, i8* %2855, align 1
  %2857 = zext i8 %2856 to i64
  store i64 %2857, i64* %RAX.i2706, align 8
  %2858 = zext i8 %2856 to i32
  %2859 = add i64 %2823, -12
  %2860 = add i64 %2822, 23
  store i64 %2860, i64* %3, align 8
  %2861 = inttoptr i64 %2859 to i32*
  %2862 = load i32, i32* %2861, align 4
  %2863 = sub i32 %2858, %2862
  %2864 = icmp ult i32 %2858, %2862
  %2865 = zext i1 %2864 to i8
  store i8 %2865, i8* %14, align 1
  %2866 = and i32 %2863, 255
  %2867 = tail call i32 @llvm.ctpop.i32(i32 %2866)
  %2868 = trunc i32 %2867 to i8
  %2869 = and i8 %2868, 1
  %2870 = xor i8 %2869, 1
  store i8 %2870, i8* %21, align 1
  %2871 = xor i32 %2862, %2858
  %2872 = xor i32 %2871, %2863
  %2873 = lshr i32 %2872, 4
  %2874 = trunc i32 %2873 to i8
  %2875 = and i8 %2874, 1
  store i8 %2875, i8* %26, align 1
  %2876 = icmp eq i32 %2863, 0
  %2877 = zext i1 %2876 to i8
  store i8 %2877, i8* %29, align 1
  %2878 = lshr i32 %2863, 31
  %2879 = trunc i32 %2878 to i8
  store i8 %2879, i8* %32, align 1
  %2880 = lshr i32 %2862, 31
  %2881 = add nuw nsw i32 %2878, %2880
  %2882 = icmp eq i32 %2881, 2
  %2883 = zext i1 %2882 to i8
  store i8 %2883, i8* %38, align 1
  %.v288 = select i1 %2876, i64 29, i64 57
  %2884 = add i64 %2822, %.v288
  store i64 %2884, i64* %3, align 8
  br i1 %2876, label %block_41025b, label %block_.L_410277

block_41025b:                                     ; preds = %block_.L_41023e
  %2885 = load i64, i64* %RBP.i, align 8
  %2886 = add i64 %2885, -8
  %2887 = add i64 %2884, 3
  store i64 %2887, i64* %3, align 8
  %2888 = inttoptr i64 %2886 to i32*
  %2889 = load i32, i32* %2888, align 4
  %2890 = add i32 %2889, 20
  %2891 = lshr i32 %2890, 31
  %2892 = add i32 %2889, 21
  %2893 = zext i32 %2892 to i64
  store i64 %2893, i64* %RAX.i2706, align 8
  %2894 = icmp eq i32 %2890, -1
  %2895 = icmp eq i32 %2892, 0
  %2896 = or i1 %2894, %2895
  %2897 = zext i1 %2896 to i8
  store i8 %2897, i8* %14, align 1
  %2898 = and i32 %2892, 255
  %2899 = tail call i32 @llvm.ctpop.i32(i32 %2898)
  %2900 = trunc i32 %2899 to i8
  %2901 = and i8 %2900, 1
  %2902 = xor i8 %2901, 1
  store i8 %2902, i8* %21, align 1
  %2903 = xor i32 %2892, %2890
  %2904 = lshr i32 %2903, 4
  %2905 = trunc i32 %2904 to i8
  %2906 = and i8 %2905, 1
  store i8 %2906, i8* %26, align 1
  %2907 = zext i1 %2895 to i8
  store i8 %2907, i8* %29, align 1
  %2908 = lshr i32 %2892, 31
  %2909 = trunc i32 %2908 to i8
  store i8 %2909, i8* %32, align 1
  %2910 = xor i32 %2908, %2891
  %2911 = add nuw nsw i32 %2910, %2908
  %2912 = icmp eq i32 %2911, 2
  %2913 = zext i1 %2912 to i8
  store i8 %2913, i8* %38, align 1
  %2914 = sext i32 %2892 to i64
  store i64 %2914, i64* %RCX.i2558, align 8
  %2915 = shl nsw i64 %2914, 2
  %2916 = add nsw i64 %2915, 11187184
  %2917 = add i64 %2884, 19
  store i64 %2917, i64* %3, align 8
  %2918 = inttoptr i64 %2916 to i32*
  %2919 = load i32, i32* %2918, align 4
  %2920 = zext i32 %2919 to i64
  store i64 %2920, i64* %RAX.i2706, align 8
  %2921 = add i64 %2885, -20
  %2922 = add i64 %2884, 22
  store i64 %2922, i64* %3, align 8
  %2923 = inttoptr i64 %2921 to i32*
  %2924 = load i32, i32* %2923, align 4
  %2925 = sub i32 %2919, %2924
  %2926 = icmp ult i32 %2919, %2924
  %2927 = zext i1 %2926 to i8
  store i8 %2927, i8* %14, align 1
  %2928 = and i32 %2925, 255
  %2929 = tail call i32 @llvm.ctpop.i32(i32 %2928)
  %2930 = trunc i32 %2929 to i8
  %2931 = and i8 %2930, 1
  %2932 = xor i8 %2931, 1
  store i8 %2932, i8* %21, align 1
  %2933 = xor i32 %2924, %2919
  %2934 = xor i32 %2933, %2925
  %2935 = lshr i32 %2934, 4
  %2936 = trunc i32 %2935 to i8
  %2937 = and i8 %2936, 1
  store i8 %2937, i8* %26, align 1
  %2938 = icmp eq i32 %2925, 0
  %2939 = zext i1 %2938 to i8
  store i8 %2939, i8* %29, align 1
  %2940 = lshr i32 %2925, 31
  %2941 = trunc i32 %2940 to i8
  store i8 %2941, i8* %32, align 1
  %2942 = lshr i32 %2919, 31
  %2943 = lshr i32 %2924, 31
  %2944 = xor i32 %2943, %2942
  %2945 = xor i32 %2940, %2942
  %2946 = add nuw nsw i32 %2945, %2944
  %2947 = icmp eq i32 %2946, 2
  %2948 = zext i1 %2947 to i8
  store i8 %2948, i8* %38, align 1
  %.v289 = select i1 %2938, i64 37, i64 28
  %2949 = add i64 %2884, %.v289
  store i64 %2949, i64* %3, align 8
  br i1 %2938, label %block_.L_410280, label %block_.L_410277

block_.L_410277:                                  ; preds = %block_.L_41023e, %block_41025b
  %2950 = phi i64 [ %2949, %block_41025b ], [ %2884, %block_.L_41023e ]
  %2951 = load i64, i64* %RBP.i, align 8
  %2952 = add i64 %2951, -28
  %2953 = add i64 %2950, 3
  store i64 %2953, i64* %3, align 8
  %2954 = inttoptr i64 %2952 to i32*
  %2955 = load i32, i32* %2954, align 4
  %2956 = add i32 %2955, 1
  %2957 = zext i32 %2956 to i64
  store i64 %2957, i64* %RAX.i2706, align 8
  %2958 = icmp eq i32 %2955, -1
  %2959 = icmp eq i32 %2956, 0
  %2960 = or i1 %2958, %2959
  %2961 = zext i1 %2960 to i8
  store i8 %2961, i8* %14, align 1
  %2962 = and i32 %2956, 255
  %2963 = tail call i32 @llvm.ctpop.i32(i32 %2962)
  %2964 = trunc i32 %2963 to i8
  %2965 = and i8 %2964, 1
  %2966 = xor i8 %2965, 1
  store i8 %2966, i8* %21, align 1
  %2967 = xor i32 %2956, %2955
  %2968 = lshr i32 %2967, 4
  %2969 = trunc i32 %2968 to i8
  %2970 = and i8 %2969, 1
  store i8 %2970, i8* %26, align 1
  %2971 = zext i1 %2959 to i8
  store i8 %2971, i8* %29, align 1
  %2972 = lshr i32 %2956, 31
  %2973 = trunc i32 %2972 to i8
  store i8 %2973, i8* %32, align 1
  %2974 = lshr i32 %2955, 31
  %2975 = xor i32 %2972, %2974
  %2976 = add nuw nsw i32 %2975, %2972
  %2977 = icmp eq i32 %2976, 2
  %2978 = zext i1 %2977 to i8
  store i8 %2978, i8* %38, align 1
  %2979 = add i64 %2950, 9
  store i64 %2979, i64* %3, align 8
  store i32 %2956, i32* %2954, align 4
  %.pre184 = load i64, i64* %3, align 8
  br label %block_.L_410280

block_.L_410280:                                  ; preds = %block_4101b2, %block_.L_410277, %block_41025b, %block_410222, %block_4101e9
  %2980 = phi i64 [ %.pre184, %block_.L_410277 ], [ %2949, %block_41025b ], [ %2821, %block_410222 ], [ %2695, %block_4101e9 ], [ %2571, %block_4101b2 ]
  %2981 = load i64, i64* %RBP.i, align 8
  %2982 = add i64 %2981, -8
  %2983 = add i64 %2980, 3
  store i64 %2983, i64* %3, align 8
  %2984 = inttoptr i64 %2982 to i32*
  %2985 = load i32, i32* %2984, align 4
  %2986 = add i32 %2985, -1
  %2987 = zext i32 %2986 to i64
  store i64 %2987, i64* %RAX.i2706, align 8
  %2988 = icmp eq i32 %2985, 0
  %2989 = zext i1 %2988 to i8
  store i8 %2989, i8* %14, align 1
  %2990 = and i32 %2986, 255
  %2991 = tail call i32 @llvm.ctpop.i32(i32 %2990)
  %2992 = trunc i32 %2991 to i8
  %2993 = and i8 %2992, 1
  %2994 = xor i8 %2993, 1
  store i8 %2994, i8* %21, align 1
  %2995 = xor i32 %2986, %2985
  %2996 = lshr i32 %2995, 4
  %2997 = trunc i32 %2996 to i8
  %2998 = and i8 %2997, 1
  store i8 %2998, i8* %26, align 1
  %2999 = icmp eq i32 %2986, 0
  %3000 = zext i1 %2999 to i8
  store i8 %3000, i8* %29, align 1
  %3001 = lshr i32 %2986, 31
  %3002 = trunc i32 %3001 to i8
  store i8 %3002, i8* %32, align 1
  %3003 = lshr i32 %2985, 31
  %3004 = xor i32 %3001, %3003
  %3005 = add nuw nsw i32 %3004, %3003
  %3006 = icmp eq i32 %3005, 2
  %3007 = zext i1 %3006 to i8
  store i8 %3007, i8* %38, align 1
  %3008 = sext i32 %2986 to i64
  store i64 %3008, i64* %RCX.i2558, align 8
  %3009 = add nsw i64 %3008, 12099168
  %3010 = add i64 %2980, 17
  store i64 %3010, i64* %3, align 8
  %3011 = inttoptr i64 %3009 to i8*
  %3012 = load i8, i8* %3011, align 1
  %3013 = zext i8 %3012 to i64
  store i64 %3013, i64* %RAX.i2706, align 8
  %3014 = zext i8 %3012 to i32
  store i8 0, i8* %14, align 1
  %3015 = tail call i32 @llvm.ctpop.i32(i32 %3014)
  %3016 = trunc i32 %3015 to i8
  %3017 = and i8 %3016, 1
  %3018 = xor i8 %3017, 1
  store i8 %3018, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3019 = icmp eq i8 %3012, 0
  %3020 = zext i1 %3019 to i8
  store i8 %3020, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v265 = select i1 %3019, i64 26, i64 206
  %3021 = add i64 %2980, %.v265
  store i64 %3021, i64* %3, align 8
  br i1 %3019, label %block_41029a, label %block_.L_41034e

block_41029a:                                     ; preds = %block_.L_410280
  %3022 = add i64 %3021, 3
  store i64 %3022, i64* %3, align 8
  %3023 = load i32, i32* %2984, align 4
  %3024 = add i32 %3023, -1
  %3025 = icmp eq i32 %3024, 0
  %3026 = zext i1 %3025 to i8
  %3027 = lshr i32 %3024, 31
  %3028 = add i32 %3023, -2
  %3029 = zext i32 %3028 to i64
  store i64 %3029, i64* %RAX.i2706, align 8
  store i8 %3026, i8* %14, align 1
  %3030 = and i32 %3028, 255
  %3031 = tail call i32 @llvm.ctpop.i32(i32 %3030)
  %3032 = trunc i32 %3031 to i8
  %3033 = and i8 %3032, 1
  %3034 = xor i8 %3033, 1
  store i8 %3034, i8* %21, align 1
  %3035 = xor i32 %3028, %3024
  %3036 = lshr i32 %3035, 4
  %3037 = trunc i32 %3036 to i8
  %3038 = and i8 %3037, 1
  store i8 %3038, i8* %26, align 1
  %3039 = icmp eq i32 %3028, 0
  %3040 = zext i1 %3039 to i8
  store i8 %3040, i8* %29, align 1
  %3041 = lshr i32 %3028, 31
  %3042 = trunc i32 %3041 to i8
  store i8 %3042, i8* %32, align 1
  %3043 = xor i32 %3041, %3027
  %3044 = add nuw nsw i32 %3043, %3027
  %3045 = icmp eq i32 %3044, 2
  %3046 = zext i1 %3045 to i8
  store i8 %3046, i8* %38, align 1
  %3047 = sext i32 %3028 to i64
  store i64 %3047, i64* %RCX.i2558, align 8
  %3048 = add nsw i64 %3047, 12099168
  %3049 = add i64 %3021, 20
  store i64 %3049, i64* %3, align 8
  %3050 = inttoptr i64 %3048 to i8*
  %3051 = load i8, i8* %3050, align 1
  %3052 = zext i8 %3051 to i64
  store i64 %3052, i64* %RAX.i2706, align 8
  %3053 = zext i8 %3051 to i32
  %3054 = add i64 %2981, -12
  %3055 = add i64 %3021, 23
  store i64 %3055, i64* %3, align 8
  %3056 = inttoptr i64 %3054 to i32*
  %3057 = load i32, i32* %3056, align 4
  %3058 = sub i32 %3053, %3057
  %3059 = icmp ult i32 %3053, %3057
  %3060 = zext i1 %3059 to i8
  store i8 %3060, i8* %14, align 1
  %3061 = and i32 %3058, 255
  %3062 = tail call i32 @llvm.ctpop.i32(i32 %3061)
  %3063 = trunc i32 %3062 to i8
  %3064 = and i8 %3063, 1
  %3065 = xor i8 %3064, 1
  store i8 %3065, i8* %21, align 1
  %3066 = xor i32 %3057, %3053
  %3067 = xor i32 %3066, %3058
  %3068 = lshr i32 %3067, 4
  %3069 = trunc i32 %3068 to i8
  %3070 = and i8 %3069, 1
  store i8 %3070, i8* %26, align 1
  %3071 = icmp eq i32 %3058, 0
  %3072 = zext i1 %3071 to i8
  store i8 %3072, i8* %29, align 1
  %3073 = lshr i32 %3058, 31
  %3074 = trunc i32 %3073 to i8
  store i8 %3074, i8* %32, align 1
  %3075 = lshr i32 %3057, 31
  %3076 = add nuw nsw i32 %3073, %3075
  %3077 = icmp eq i32 %3076, 2
  %3078 = zext i1 %3077 to i8
  store i8 %3078, i8* %38, align 1
  %.v280 = select i1 %3071, i64 29, i64 57
  %3079 = add i64 %3021, %.v280
  store i64 %3079, i64* %3, align 8
  br i1 %3071, label %block_4102b7, label %block_.L_4102d3

block_4102b7:                                     ; preds = %block_41029a
  %3080 = load i64, i64* %RBP.i, align 8
  %3081 = add i64 %3080, -8
  %3082 = add i64 %3079, 3
  store i64 %3082, i64* %3, align 8
  %3083 = inttoptr i64 %3081 to i32*
  %3084 = load i32, i32* %3083, align 4
  %3085 = add i32 %3084, -1
  %3086 = icmp eq i32 %3085, 0
  %3087 = zext i1 %3086 to i8
  %3088 = lshr i32 %3085, 31
  %3089 = add i32 %3084, -2
  %3090 = zext i32 %3089 to i64
  store i64 %3090, i64* %RAX.i2706, align 8
  store i8 %3087, i8* %14, align 1
  %3091 = and i32 %3089, 255
  %3092 = tail call i32 @llvm.ctpop.i32(i32 %3091)
  %3093 = trunc i32 %3092 to i8
  %3094 = and i8 %3093, 1
  %3095 = xor i8 %3094, 1
  store i8 %3095, i8* %21, align 1
  %3096 = xor i32 %3089, %3085
  %3097 = lshr i32 %3096, 4
  %3098 = trunc i32 %3097 to i8
  %3099 = and i8 %3098, 1
  store i8 %3099, i8* %26, align 1
  %3100 = icmp eq i32 %3089, 0
  %3101 = zext i1 %3100 to i8
  store i8 %3101, i8* %29, align 1
  %3102 = lshr i32 %3089, 31
  %3103 = trunc i32 %3102 to i8
  store i8 %3103, i8* %32, align 1
  %3104 = xor i32 %3102, %3088
  %3105 = add nuw nsw i32 %3104, %3088
  %3106 = icmp eq i32 %3105, 2
  %3107 = zext i1 %3106 to i8
  store i8 %3107, i8* %38, align 1
  %3108 = sext i32 %3089 to i64
  store i64 %3108, i64* %RCX.i2558, align 8
  %3109 = shl nsw i64 %3108, 2
  %3110 = add nsw i64 %3109, 11187184
  %3111 = add i64 %3079, 19
  store i64 %3111, i64* %3, align 8
  %3112 = inttoptr i64 %3110 to i32*
  %3113 = load i32, i32* %3112, align 4
  %3114 = zext i32 %3113 to i64
  store i64 %3114, i64* %RAX.i2706, align 8
  %3115 = add i64 %3080, -20
  %3116 = add i64 %3079, 22
  store i64 %3116, i64* %3, align 8
  %3117 = inttoptr i64 %3115 to i32*
  %3118 = load i32, i32* %3117, align 4
  %3119 = sub i32 %3113, %3118
  %3120 = icmp ult i32 %3113, %3118
  %3121 = zext i1 %3120 to i8
  store i8 %3121, i8* %14, align 1
  %3122 = and i32 %3119, 255
  %3123 = tail call i32 @llvm.ctpop.i32(i32 %3122)
  %3124 = trunc i32 %3123 to i8
  %3125 = and i8 %3124, 1
  %3126 = xor i8 %3125, 1
  store i8 %3126, i8* %21, align 1
  %3127 = xor i32 %3118, %3113
  %3128 = xor i32 %3127, %3119
  %3129 = lshr i32 %3128, 4
  %3130 = trunc i32 %3129 to i8
  %3131 = and i8 %3130, 1
  store i8 %3131, i8* %26, align 1
  %3132 = icmp eq i32 %3119, 0
  %3133 = zext i1 %3132 to i8
  store i8 %3133, i8* %29, align 1
  %3134 = lshr i32 %3119, 31
  %3135 = trunc i32 %3134 to i8
  store i8 %3135, i8* %32, align 1
  %3136 = lshr i32 %3113, 31
  %3137 = lshr i32 %3118, 31
  %3138 = xor i32 %3137, %3136
  %3139 = xor i32 %3134, %3136
  %3140 = add nuw nsw i32 %3139, %3138
  %3141 = icmp eq i32 %3140, 2
  %3142 = zext i1 %3141 to i8
  store i8 %3142, i8* %38, align 1
  %.v285 = select i1 %3132, i64 151, i64 28
  %3143 = add i64 %3079, %.v285
  store i64 %3143, i64* %3, align 8
  br i1 %3132, label %block_.L_41034e, label %block_.L_4102d3

block_.L_4102d3:                                  ; preds = %block_41029a, %block_4102b7
  %3144 = phi i64 [ %3143, %block_4102b7 ], [ %3079, %block_41029a ]
  %3145 = load i64, i64* %RBP.i, align 8
  %3146 = add i64 %3145, -8
  %3147 = add i64 %3144, 3
  store i64 %3147, i64* %3, align 8
  %3148 = inttoptr i64 %3146 to i32*
  %3149 = load i32, i32* %3148, align 4
  %3150 = add i32 %3149, -1
  %3151 = lshr i32 %3150, 31
  %3152 = add i32 %3149, -21
  %3153 = zext i32 %3152 to i64
  store i64 %3153, i64* %RAX.i2706, align 8
  %3154 = icmp ult i32 %3150, 20
  %3155 = zext i1 %3154 to i8
  store i8 %3155, i8* %14, align 1
  %3156 = and i32 %3152, 255
  %3157 = tail call i32 @llvm.ctpop.i32(i32 %3156)
  %3158 = trunc i32 %3157 to i8
  %3159 = and i8 %3158, 1
  %3160 = xor i8 %3159, 1
  store i8 %3160, i8* %21, align 1
  %3161 = xor i32 %3150, 16
  %3162 = xor i32 %3161, %3152
  %3163 = lshr i32 %3162, 4
  %3164 = trunc i32 %3163 to i8
  %3165 = and i8 %3164, 1
  store i8 %3165, i8* %26, align 1
  %3166 = icmp eq i32 %3152, 0
  %3167 = zext i1 %3166 to i8
  store i8 %3167, i8* %29, align 1
  %3168 = lshr i32 %3152, 31
  %3169 = trunc i32 %3168 to i8
  store i8 %3169, i8* %32, align 1
  %3170 = xor i32 %3168, %3151
  %3171 = add nuw nsw i32 %3170, %3151
  %3172 = icmp eq i32 %3171, 2
  %3173 = zext i1 %3172 to i8
  store i8 %3173, i8* %38, align 1
  %3174 = sext i32 %3152 to i64
  store i64 %3174, i64* %RCX.i2558, align 8
  %3175 = add nsw i64 %3174, 12099168
  %3176 = add i64 %3144, 20
  store i64 %3176, i64* %3, align 8
  %3177 = inttoptr i64 %3175 to i8*
  %3178 = load i8, i8* %3177, align 1
  %3179 = zext i8 %3178 to i64
  store i64 %3179, i64* %RAX.i2706, align 8
  %3180 = zext i8 %3178 to i32
  %3181 = add i64 %3145, -12
  %3182 = add i64 %3144, 23
  store i64 %3182, i64* %3, align 8
  %3183 = inttoptr i64 %3181 to i32*
  %3184 = load i32, i32* %3183, align 4
  %3185 = sub i32 %3180, %3184
  %3186 = icmp ult i32 %3180, %3184
  %3187 = zext i1 %3186 to i8
  store i8 %3187, i8* %14, align 1
  %3188 = and i32 %3185, 255
  %3189 = tail call i32 @llvm.ctpop.i32(i32 %3188)
  %3190 = trunc i32 %3189 to i8
  %3191 = and i8 %3190, 1
  %3192 = xor i8 %3191, 1
  store i8 %3192, i8* %21, align 1
  %3193 = xor i32 %3184, %3180
  %3194 = xor i32 %3193, %3185
  %3195 = lshr i32 %3194, 4
  %3196 = trunc i32 %3195 to i8
  %3197 = and i8 %3196, 1
  store i8 %3197, i8* %26, align 1
  %3198 = icmp eq i32 %3185, 0
  %3199 = zext i1 %3198 to i8
  store i8 %3199, i8* %29, align 1
  %3200 = lshr i32 %3185, 31
  %3201 = trunc i32 %3200 to i8
  store i8 %3201, i8* %32, align 1
  %3202 = lshr i32 %3184, 31
  %3203 = add nuw nsw i32 %3200, %3202
  %3204 = icmp eq i32 %3203, 2
  %3205 = zext i1 %3204 to i8
  store i8 %3205, i8* %38, align 1
  %.v281 = select i1 %3198, i64 29, i64 57
  %3206 = add i64 %3144, %.v281
  store i64 %3206, i64* %3, align 8
  br i1 %3198, label %block_4102f0, label %block_.L_41030c

block_4102f0:                                     ; preds = %block_.L_4102d3
  %3207 = load i64, i64* %RBP.i, align 8
  %3208 = add i64 %3207, -8
  %3209 = add i64 %3206, 3
  store i64 %3209, i64* %3, align 8
  %3210 = inttoptr i64 %3208 to i32*
  %3211 = load i32, i32* %3210, align 4
  %3212 = add i32 %3211, -1
  %3213 = lshr i32 %3212, 31
  %3214 = add i32 %3211, -21
  %3215 = zext i32 %3214 to i64
  store i64 %3215, i64* %RAX.i2706, align 8
  %3216 = icmp ult i32 %3212, 20
  %3217 = zext i1 %3216 to i8
  store i8 %3217, i8* %14, align 1
  %3218 = and i32 %3214, 255
  %3219 = tail call i32 @llvm.ctpop.i32(i32 %3218)
  %3220 = trunc i32 %3219 to i8
  %3221 = and i8 %3220, 1
  %3222 = xor i8 %3221, 1
  store i8 %3222, i8* %21, align 1
  %3223 = xor i32 %3212, 16
  %3224 = xor i32 %3223, %3214
  %3225 = lshr i32 %3224, 4
  %3226 = trunc i32 %3225 to i8
  %3227 = and i8 %3226, 1
  store i8 %3227, i8* %26, align 1
  %3228 = icmp eq i32 %3214, 0
  %3229 = zext i1 %3228 to i8
  store i8 %3229, i8* %29, align 1
  %3230 = lshr i32 %3214, 31
  %3231 = trunc i32 %3230 to i8
  store i8 %3231, i8* %32, align 1
  %3232 = xor i32 %3230, %3213
  %3233 = add nuw nsw i32 %3232, %3213
  %3234 = icmp eq i32 %3233, 2
  %3235 = zext i1 %3234 to i8
  store i8 %3235, i8* %38, align 1
  %3236 = sext i32 %3214 to i64
  store i64 %3236, i64* %RCX.i2558, align 8
  %3237 = shl nsw i64 %3236, 2
  %3238 = add nsw i64 %3237, 11187184
  %3239 = add i64 %3206, 19
  store i64 %3239, i64* %3, align 8
  %3240 = inttoptr i64 %3238 to i32*
  %3241 = load i32, i32* %3240, align 4
  %3242 = zext i32 %3241 to i64
  store i64 %3242, i64* %RAX.i2706, align 8
  %3243 = add i64 %3207, -20
  %3244 = add i64 %3206, 22
  store i64 %3244, i64* %3, align 8
  %3245 = inttoptr i64 %3243 to i32*
  %3246 = load i32, i32* %3245, align 4
  %3247 = sub i32 %3241, %3246
  %3248 = icmp ult i32 %3241, %3246
  %3249 = zext i1 %3248 to i8
  store i8 %3249, i8* %14, align 1
  %3250 = and i32 %3247, 255
  %3251 = tail call i32 @llvm.ctpop.i32(i32 %3250)
  %3252 = trunc i32 %3251 to i8
  %3253 = and i8 %3252, 1
  %3254 = xor i8 %3253, 1
  store i8 %3254, i8* %21, align 1
  %3255 = xor i32 %3246, %3241
  %3256 = xor i32 %3255, %3247
  %3257 = lshr i32 %3256, 4
  %3258 = trunc i32 %3257 to i8
  %3259 = and i8 %3258, 1
  store i8 %3259, i8* %26, align 1
  %3260 = icmp eq i32 %3247, 0
  %3261 = zext i1 %3260 to i8
  store i8 %3261, i8* %29, align 1
  %3262 = lshr i32 %3247, 31
  %3263 = trunc i32 %3262 to i8
  store i8 %3263, i8* %32, align 1
  %3264 = lshr i32 %3241, 31
  %3265 = lshr i32 %3246, 31
  %3266 = xor i32 %3265, %3264
  %3267 = xor i32 %3262, %3264
  %3268 = add nuw nsw i32 %3267, %3266
  %3269 = icmp eq i32 %3268, 2
  %3270 = zext i1 %3269 to i8
  store i8 %3270, i8* %38, align 1
  %.v284 = select i1 %3260, i64 94, i64 28
  %3271 = add i64 %3206, %.v284
  store i64 %3271, i64* %3, align 8
  br i1 %3260, label %block_.L_41034e, label %block_.L_41030c

block_.L_41030c:                                  ; preds = %block_.L_4102d3, %block_4102f0
  %3272 = phi i64 [ %3271, %block_4102f0 ], [ %3206, %block_.L_4102d3 ]
  %3273 = load i64, i64* %RBP.i, align 8
  %3274 = add i64 %3273, -8
  %3275 = add i64 %3272, 3
  store i64 %3275, i64* %3, align 8
  %3276 = inttoptr i64 %3274 to i32*
  %3277 = load i32, i32* %3276, align 4
  %3278 = add i32 %3277, -1
  %3279 = lshr i32 %3278, 31
  %3280 = add i32 %3277, 19
  %3281 = zext i32 %3280 to i64
  store i64 %3281, i64* %RAX.i2706, align 8
  %3282 = icmp ugt i32 %3278, -21
  %3283 = zext i1 %3282 to i8
  store i8 %3283, i8* %14, align 1
  %3284 = and i32 %3280, 255
  %3285 = tail call i32 @llvm.ctpop.i32(i32 %3284)
  %3286 = trunc i32 %3285 to i8
  %3287 = and i8 %3286, 1
  %3288 = xor i8 %3287, 1
  store i8 %3288, i8* %21, align 1
  %3289 = xor i32 %3278, 16
  %3290 = xor i32 %3289, %3280
  %3291 = lshr i32 %3290, 4
  %3292 = trunc i32 %3291 to i8
  %3293 = and i8 %3292, 1
  store i8 %3293, i8* %26, align 1
  %3294 = icmp eq i32 %3280, 0
  %3295 = zext i1 %3294 to i8
  store i8 %3295, i8* %29, align 1
  %3296 = lshr i32 %3280, 31
  %3297 = trunc i32 %3296 to i8
  store i8 %3297, i8* %32, align 1
  %3298 = xor i32 %3296, %3279
  %3299 = add nuw nsw i32 %3298, %3296
  %3300 = icmp eq i32 %3299, 2
  %3301 = zext i1 %3300 to i8
  store i8 %3301, i8* %38, align 1
  %3302 = sext i32 %3280 to i64
  store i64 %3302, i64* %RCX.i2558, align 8
  %3303 = add nsw i64 %3302, 12099168
  %3304 = add i64 %3272, 20
  store i64 %3304, i64* %3, align 8
  %3305 = inttoptr i64 %3303 to i8*
  %3306 = load i8, i8* %3305, align 1
  %3307 = zext i8 %3306 to i64
  store i64 %3307, i64* %RAX.i2706, align 8
  %3308 = zext i8 %3306 to i32
  %3309 = add i64 %3273, -12
  %3310 = add i64 %3272, 23
  store i64 %3310, i64* %3, align 8
  %3311 = inttoptr i64 %3309 to i32*
  %3312 = load i32, i32* %3311, align 4
  %3313 = sub i32 %3308, %3312
  %3314 = icmp ult i32 %3308, %3312
  %3315 = zext i1 %3314 to i8
  store i8 %3315, i8* %14, align 1
  %3316 = and i32 %3313, 255
  %3317 = tail call i32 @llvm.ctpop.i32(i32 %3316)
  %3318 = trunc i32 %3317 to i8
  %3319 = and i8 %3318, 1
  %3320 = xor i8 %3319, 1
  store i8 %3320, i8* %21, align 1
  %3321 = xor i32 %3312, %3308
  %3322 = xor i32 %3321, %3313
  %3323 = lshr i32 %3322, 4
  %3324 = trunc i32 %3323 to i8
  %3325 = and i8 %3324, 1
  store i8 %3325, i8* %26, align 1
  %3326 = icmp eq i32 %3313, 0
  %3327 = zext i1 %3326 to i8
  store i8 %3327, i8* %29, align 1
  %3328 = lshr i32 %3313, 31
  %3329 = trunc i32 %3328 to i8
  store i8 %3329, i8* %32, align 1
  %3330 = lshr i32 %3312, 31
  %3331 = add nuw nsw i32 %3328, %3330
  %3332 = icmp eq i32 %3331, 2
  %3333 = zext i1 %3332 to i8
  store i8 %3333, i8* %38, align 1
  %.v282 = select i1 %3326, i64 29, i64 57
  %3334 = add i64 %3272, %.v282
  store i64 %3334, i64* %3, align 8
  br i1 %3326, label %block_410329, label %block_.L_410345

block_410329:                                     ; preds = %block_.L_41030c
  %3335 = load i64, i64* %RBP.i, align 8
  %3336 = add i64 %3335, -8
  %3337 = add i64 %3334, 3
  store i64 %3337, i64* %3, align 8
  %3338 = inttoptr i64 %3336 to i32*
  %3339 = load i32, i32* %3338, align 4
  %3340 = add i32 %3339, -1
  %3341 = lshr i32 %3340, 31
  %3342 = add i32 %3339, 19
  %3343 = zext i32 %3342 to i64
  store i64 %3343, i64* %RAX.i2706, align 8
  %3344 = icmp ugt i32 %3340, -21
  %3345 = zext i1 %3344 to i8
  store i8 %3345, i8* %14, align 1
  %3346 = and i32 %3342, 255
  %3347 = tail call i32 @llvm.ctpop.i32(i32 %3346)
  %3348 = trunc i32 %3347 to i8
  %3349 = and i8 %3348, 1
  %3350 = xor i8 %3349, 1
  store i8 %3350, i8* %21, align 1
  %3351 = xor i32 %3340, 16
  %3352 = xor i32 %3351, %3342
  %3353 = lshr i32 %3352, 4
  %3354 = trunc i32 %3353 to i8
  %3355 = and i8 %3354, 1
  store i8 %3355, i8* %26, align 1
  %3356 = icmp eq i32 %3342, 0
  %3357 = zext i1 %3356 to i8
  store i8 %3357, i8* %29, align 1
  %3358 = lshr i32 %3342, 31
  %3359 = trunc i32 %3358 to i8
  store i8 %3359, i8* %32, align 1
  %3360 = xor i32 %3358, %3341
  %3361 = add nuw nsw i32 %3360, %3358
  %3362 = icmp eq i32 %3361, 2
  %3363 = zext i1 %3362 to i8
  store i8 %3363, i8* %38, align 1
  %3364 = sext i32 %3342 to i64
  store i64 %3364, i64* %RCX.i2558, align 8
  %3365 = shl nsw i64 %3364, 2
  %3366 = add nsw i64 %3365, 11187184
  %3367 = add i64 %3334, 19
  store i64 %3367, i64* %3, align 8
  %3368 = inttoptr i64 %3366 to i32*
  %3369 = load i32, i32* %3368, align 4
  %3370 = zext i32 %3369 to i64
  store i64 %3370, i64* %RAX.i2706, align 8
  %3371 = add i64 %3335, -20
  %3372 = add i64 %3334, 22
  store i64 %3372, i64* %3, align 8
  %3373 = inttoptr i64 %3371 to i32*
  %3374 = load i32, i32* %3373, align 4
  %3375 = sub i32 %3369, %3374
  %3376 = icmp ult i32 %3369, %3374
  %3377 = zext i1 %3376 to i8
  store i8 %3377, i8* %14, align 1
  %3378 = and i32 %3375, 255
  %3379 = tail call i32 @llvm.ctpop.i32(i32 %3378)
  %3380 = trunc i32 %3379 to i8
  %3381 = and i8 %3380, 1
  %3382 = xor i8 %3381, 1
  store i8 %3382, i8* %21, align 1
  %3383 = xor i32 %3374, %3369
  %3384 = xor i32 %3383, %3375
  %3385 = lshr i32 %3384, 4
  %3386 = trunc i32 %3385 to i8
  %3387 = and i8 %3386, 1
  store i8 %3387, i8* %26, align 1
  %3388 = icmp eq i32 %3375, 0
  %3389 = zext i1 %3388 to i8
  store i8 %3389, i8* %29, align 1
  %3390 = lshr i32 %3375, 31
  %3391 = trunc i32 %3390 to i8
  store i8 %3391, i8* %32, align 1
  %3392 = lshr i32 %3369, 31
  %3393 = lshr i32 %3374, 31
  %3394 = xor i32 %3393, %3392
  %3395 = xor i32 %3390, %3392
  %3396 = add nuw nsw i32 %3395, %3394
  %3397 = icmp eq i32 %3396, 2
  %3398 = zext i1 %3397 to i8
  store i8 %3398, i8* %38, align 1
  %.v283 = select i1 %3388, i64 37, i64 28
  %3399 = add i64 %3334, %.v283
  store i64 %3399, i64* %3, align 8
  br i1 %3388, label %block_.L_41034e, label %block_.L_410345

block_.L_410345:                                  ; preds = %block_.L_41030c, %block_410329
  %3400 = phi i64 [ %3399, %block_410329 ], [ %3334, %block_.L_41030c ]
  %3401 = load i64, i64* %RBP.i, align 8
  %3402 = add i64 %3401, -28
  %3403 = add i64 %3400, 3
  store i64 %3403, i64* %3, align 8
  %3404 = inttoptr i64 %3402 to i32*
  %3405 = load i32, i32* %3404, align 4
  %3406 = add i32 %3405, 1
  %3407 = zext i32 %3406 to i64
  store i64 %3407, i64* %RAX.i2706, align 8
  %3408 = icmp eq i32 %3405, -1
  %3409 = icmp eq i32 %3406, 0
  %3410 = or i1 %3408, %3409
  %3411 = zext i1 %3410 to i8
  store i8 %3411, i8* %14, align 1
  %3412 = and i32 %3406, 255
  %3413 = tail call i32 @llvm.ctpop.i32(i32 %3412)
  %3414 = trunc i32 %3413 to i8
  %3415 = and i8 %3414, 1
  %3416 = xor i8 %3415, 1
  store i8 %3416, i8* %21, align 1
  %3417 = xor i32 %3406, %3405
  %3418 = lshr i32 %3417, 4
  %3419 = trunc i32 %3418 to i8
  %3420 = and i8 %3419, 1
  store i8 %3420, i8* %26, align 1
  %3421 = zext i1 %3409 to i8
  store i8 %3421, i8* %29, align 1
  %3422 = lshr i32 %3406, 31
  %3423 = trunc i32 %3422 to i8
  store i8 %3423, i8* %32, align 1
  %3424 = lshr i32 %3405, 31
  %3425 = xor i32 %3422, %3424
  %3426 = add nuw nsw i32 %3425, %3422
  %3427 = icmp eq i32 %3426, 2
  %3428 = zext i1 %3427 to i8
  store i8 %3428, i8* %38, align 1
  %3429 = add i64 %3400, 9
  store i64 %3429, i64* %3, align 8
  store i32 %3406, i32* %3404, align 4
  %.pre185 = load i64, i64* %3, align 8
  br label %block_.L_41034e

block_.L_41034e:                                  ; preds = %block_.L_410280, %block_.L_410345, %block_410329, %block_4102f0, %block_4102b7
  %3430 = phi i64 [ %.pre185, %block_.L_410345 ], [ %3399, %block_410329 ], [ %3271, %block_4102f0 ], [ %3143, %block_4102b7 ], [ %3021, %block_.L_410280 ]
  %3431 = load i64, i64* %RBP.i, align 8
  %3432 = add i64 %3431, -8
  %3433 = add i64 %3430, 3
  store i64 %3433, i64* %3, align 8
  %3434 = inttoptr i64 %3432 to i32*
  %3435 = load i32, i32* %3434, align 4
  %3436 = add i32 %3435, -20
  %3437 = zext i32 %3436 to i64
  store i64 %3437, i64* %RAX.i2706, align 8
  %3438 = icmp ult i32 %3435, 20
  %3439 = zext i1 %3438 to i8
  store i8 %3439, i8* %14, align 1
  %3440 = and i32 %3436, 255
  %3441 = tail call i32 @llvm.ctpop.i32(i32 %3440)
  %3442 = trunc i32 %3441 to i8
  %3443 = and i8 %3442, 1
  %3444 = xor i8 %3443, 1
  store i8 %3444, i8* %21, align 1
  %3445 = xor i32 %3435, 16
  %3446 = xor i32 %3445, %3436
  %3447 = lshr i32 %3446, 4
  %3448 = trunc i32 %3447 to i8
  %3449 = and i8 %3448, 1
  store i8 %3449, i8* %26, align 1
  %3450 = icmp eq i32 %3436, 0
  %3451 = zext i1 %3450 to i8
  store i8 %3451, i8* %29, align 1
  %3452 = lshr i32 %3436, 31
  %3453 = trunc i32 %3452 to i8
  store i8 %3453, i8* %32, align 1
  %3454 = lshr i32 %3435, 31
  %3455 = xor i32 %3452, %3454
  %3456 = add nuw nsw i32 %3455, %3454
  %3457 = icmp eq i32 %3456, 2
  %3458 = zext i1 %3457 to i8
  store i8 %3458, i8* %38, align 1
  %3459 = sext i32 %3436 to i64
  store i64 %3459, i64* %RCX.i2558, align 8
  %3460 = add nsw i64 %3459, 12099168
  %3461 = add i64 %3430, 17
  store i64 %3461, i64* %3, align 8
  %3462 = inttoptr i64 %3460 to i8*
  %3463 = load i8, i8* %3462, align 1
  %3464 = zext i8 %3463 to i64
  store i64 %3464, i64* %RAX.i2706, align 8
  %3465 = zext i8 %3463 to i32
  store i8 0, i8* %14, align 1
  %3466 = tail call i32 @llvm.ctpop.i32(i32 %3465)
  %3467 = trunc i32 %3466 to i8
  %3468 = and i8 %3467, 1
  %3469 = xor i8 %3468, 1
  store i8 %3469, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3470 = icmp eq i8 %3463, 0
  %3471 = zext i1 %3470 to i8
  store i8 %3471, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v266 = select i1 %3470, i64 26, i64 206
  %3472 = add i64 %3430, %.v266
  store i64 %3472, i64* %3, align 8
  br i1 %3470, label %block_410368, label %block_.L_41041c

block_410368:                                     ; preds = %block_.L_41034e
  %3473 = add i64 %3472, 3
  store i64 %3473, i64* %3, align 8
  %3474 = load i32, i32* %3434, align 4
  %3475 = add i32 %3474, -20
  %3476 = lshr i32 %3475, 31
  %3477 = add i32 %3474, -40
  %3478 = zext i32 %3477 to i64
  store i64 %3478, i64* %RAX.i2706, align 8
  %3479 = icmp ult i32 %3475, 20
  %3480 = zext i1 %3479 to i8
  store i8 %3480, i8* %14, align 1
  %3481 = and i32 %3477, 255
  %3482 = tail call i32 @llvm.ctpop.i32(i32 %3481)
  %3483 = trunc i32 %3482 to i8
  %3484 = and i8 %3483, 1
  %3485 = xor i8 %3484, 1
  store i8 %3485, i8* %21, align 1
  %3486 = xor i32 %3475, 16
  %3487 = xor i32 %3486, %3477
  %3488 = lshr i32 %3487, 4
  %3489 = trunc i32 %3488 to i8
  %3490 = and i8 %3489, 1
  store i8 %3490, i8* %26, align 1
  %3491 = icmp eq i32 %3477, 0
  %3492 = zext i1 %3491 to i8
  store i8 %3492, i8* %29, align 1
  %3493 = lshr i32 %3477, 31
  %3494 = trunc i32 %3493 to i8
  store i8 %3494, i8* %32, align 1
  %3495 = xor i32 %3493, %3476
  %3496 = add nuw nsw i32 %3495, %3476
  %3497 = icmp eq i32 %3496, 2
  %3498 = zext i1 %3497 to i8
  store i8 %3498, i8* %38, align 1
  %3499 = sext i32 %3477 to i64
  store i64 %3499, i64* %RCX.i2558, align 8
  %3500 = add nsw i64 %3499, 12099168
  %3501 = add i64 %3472, 20
  store i64 %3501, i64* %3, align 8
  %3502 = inttoptr i64 %3500 to i8*
  %3503 = load i8, i8* %3502, align 1
  %3504 = zext i8 %3503 to i64
  store i64 %3504, i64* %RAX.i2706, align 8
  %3505 = zext i8 %3503 to i32
  %3506 = add i64 %3431, -12
  %3507 = add i64 %3472, 23
  store i64 %3507, i64* %3, align 8
  %3508 = inttoptr i64 %3506 to i32*
  %3509 = load i32, i32* %3508, align 4
  %3510 = sub i32 %3505, %3509
  %3511 = icmp ult i32 %3505, %3509
  %3512 = zext i1 %3511 to i8
  store i8 %3512, i8* %14, align 1
  %3513 = and i32 %3510, 255
  %3514 = tail call i32 @llvm.ctpop.i32(i32 %3513)
  %3515 = trunc i32 %3514 to i8
  %3516 = and i8 %3515, 1
  %3517 = xor i8 %3516, 1
  store i8 %3517, i8* %21, align 1
  %3518 = xor i32 %3509, %3505
  %3519 = xor i32 %3518, %3510
  %3520 = lshr i32 %3519, 4
  %3521 = trunc i32 %3520 to i8
  %3522 = and i8 %3521, 1
  store i8 %3522, i8* %26, align 1
  %3523 = icmp eq i32 %3510, 0
  %3524 = zext i1 %3523 to i8
  store i8 %3524, i8* %29, align 1
  %3525 = lshr i32 %3510, 31
  %3526 = trunc i32 %3525 to i8
  store i8 %3526, i8* %32, align 1
  %3527 = lshr i32 %3509, 31
  %3528 = add nuw nsw i32 %3525, %3527
  %3529 = icmp eq i32 %3528, 2
  %3530 = zext i1 %3529 to i8
  store i8 %3530, i8* %38, align 1
  %.v274 = select i1 %3523, i64 29, i64 57
  %3531 = add i64 %3472, %.v274
  store i64 %3531, i64* %3, align 8
  br i1 %3523, label %block_410385, label %block_.L_4103a1

block_410385:                                     ; preds = %block_410368
  %3532 = load i64, i64* %RBP.i, align 8
  %3533 = add i64 %3532, -8
  %3534 = add i64 %3531, 3
  store i64 %3534, i64* %3, align 8
  %3535 = inttoptr i64 %3533 to i32*
  %3536 = load i32, i32* %3535, align 4
  %3537 = add i32 %3536, -20
  %3538 = lshr i32 %3537, 31
  %3539 = add i32 %3536, -40
  %3540 = zext i32 %3539 to i64
  store i64 %3540, i64* %RAX.i2706, align 8
  %3541 = icmp ult i32 %3537, 20
  %3542 = zext i1 %3541 to i8
  store i8 %3542, i8* %14, align 1
  %3543 = and i32 %3539, 255
  %3544 = tail call i32 @llvm.ctpop.i32(i32 %3543)
  %3545 = trunc i32 %3544 to i8
  %3546 = and i8 %3545, 1
  %3547 = xor i8 %3546, 1
  store i8 %3547, i8* %21, align 1
  %3548 = xor i32 %3537, 16
  %3549 = xor i32 %3548, %3539
  %3550 = lshr i32 %3549, 4
  %3551 = trunc i32 %3550 to i8
  %3552 = and i8 %3551, 1
  store i8 %3552, i8* %26, align 1
  %3553 = icmp eq i32 %3539, 0
  %3554 = zext i1 %3553 to i8
  store i8 %3554, i8* %29, align 1
  %3555 = lshr i32 %3539, 31
  %3556 = trunc i32 %3555 to i8
  store i8 %3556, i8* %32, align 1
  %3557 = xor i32 %3555, %3538
  %3558 = add nuw nsw i32 %3557, %3538
  %3559 = icmp eq i32 %3558, 2
  %3560 = zext i1 %3559 to i8
  store i8 %3560, i8* %38, align 1
  %3561 = sext i32 %3539 to i64
  store i64 %3561, i64* %RCX.i2558, align 8
  %3562 = shl nsw i64 %3561, 2
  %3563 = add nsw i64 %3562, 11187184
  %3564 = add i64 %3531, 19
  store i64 %3564, i64* %3, align 8
  %3565 = inttoptr i64 %3563 to i32*
  %3566 = load i32, i32* %3565, align 4
  %3567 = zext i32 %3566 to i64
  store i64 %3567, i64* %RAX.i2706, align 8
  %3568 = add i64 %3532, -20
  %3569 = add i64 %3531, 22
  store i64 %3569, i64* %3, align 8
  %3570 = inttoptr i64 %3568 to i32*
  %3571 = load i32, i32* %3570, align 4
  %3572 = sub i32 %3566, %3571
  %3573 = icmp ult i32 %3566, %3571
  %3574 = zext i1 %3573 to i8
  store i8 %3574, i8* %14, align 1
  %3575 = and i32 %3572, 255
  %3576 = tail call i32 @llvm.ctpop.i32(i32 %3575)
  %3577 = trunc i32 %3576 to i8
  %3578 = and i8 %3577, 1
  %3579 = xor i8 %3578, 1
  store i8 %3579, i8* %21, align 1
  %3580 = xor i32 %3571, %3566
  %3581 = xor i32 %3580, %3572
  %3582 = lshr i32 %3581, 4
  %3583 = trunc i32 %3582 to i8
  %3584 = and i8 %3583, 1
  store i8 %3584, i8* %26, align 1
  %3585 = icmp eq i32 %3572, 0
  %3586 = zext i1 %3585 to i8
  store i8 %3586, i8* %29, align 1
  %3587 = lshr i32 %3572, 31
  %3588 = trunc i32 %3587 to i8
  store i8 %3588, i8* %32, align 1
  %3589 = lshr i32 %3566, 31
  %3590 = lshr i32 %3571, 31
  %3591 = xor i32 %3590, %3589
  %3592 = xor i32 %3587, %3589
  %3593 = add nuw nsw i32 %3592, %3591
  %3594 = icmp eq i32 %3593, 2
  %3595 = zext i1 %3594 to i8
  store i8 %3595, i8* %38, align 1
  %.v279 = select i1 %3585, i64 151, i64 28
  %3596 = add i64 %3531, %.v279
  store i64 %3596, i64* %3, align 8
  br i1 %3585, label %block_.L_41041c, label %block_.L_4103a1

block_.L_4103a1:                                  ; preds = %block_410368, %block_410385
  %3597 = phi i64 [ %3596, %block_410385 ], [ %3531, %block_410368 ]
  %3598 = load i64, i64* %RBP.i, align 8
  %3599 = add i64 %3598, -8
  %3600 = add i64 %3597, 3
  store i64 %3600, i64* %3, align 8
  %3601 = inttoptr i64 %3599 to i32*
  %3602 = load i32, i32* %3601, align 4
  %3603 = add i32 %3602, -20
  %3604 = lshr i32 %3603, 31
  %3605 = add i32 %3602, -19
  %3606 = zext i32 %3605 to i64
  store i64 %3606, i64* %RAX.i2706, align 8
  %3607 = icmp eq i32 %3603, -1
  %3608 = icmp eq i32 %3605, 0
  %3609 = or i1 %3607, %3608
  %3610 = zext i1 %3609 to i8
  store i8 %3610, i8* %14, align 1
  %3611 = and i32 %3605, 255
  %3612 = tail call i32 @llvm.ctpop.i32(i32 %3611)
  %3613 = trunc i32 %3612 to i8
  %3614 = and i8 %3613, 1
  %3615 = xor i8 %3614, 1
  store i8 %3615, i8* %21, align 1
  %3616 = xor i32 %3605, %3603
  %3617 = lshr i32 %3616, 4
  %3618 = trunc i32 %3617 to i8
  %3619 = and i8 %3618, 1
  store i8 %3619, i8* %26, align 1
  %3620 = zext i1 %3608 to i8
  store i8 %3620, i8* %29, align 1
  %3621 = lshr i32 %3605, 31
  %3622 = trunc i32 %3621 to i8
  store i8 %3622, i8* %32, align 1
  %3623 = xor i32 %3621, %3604
  %3624 = add nuw nsw i32 %3623, %3621
  %3625 = icmp eq i32 %3624, 2
  %3626 = zext i1 %3625 to i8
  store i8 %3626, i8* %38, align 1
  %3627 = sext i32 %3605 to i64
  store i64 %3627, i64* %RCX.i2558, align 8
  %3628 = add nsw i64 %3627, 12099168
  %3629 = add i64 %3597, 20
  store i64 %3629, i64* %3, align 8
  %3630 = inttoptr i64 %3628 to i8*
  %3631 = load i8, i8* %3630, align 1
  %3632 = zext i8 %3631 to i64
  store i64 %3632, i64* %RAX.i2706, align 8
  %3633 = zext i8 %3631 to i32
  %3634 = add i64 %3598, -12
  %3635 = add i64 %3597, 23
  store i64 %3635, i64* %3, align 8
  %3636 = inttoptr i64 %3634 to i32*
  %3637 = load i32, i32* %3636, align 4
  %3638 = sub i32 %3633, %3637
  %3639 = icmp ult i32 %3633, %3637
  %3640 = zext i1 %3639 to i8
  store i8 %3640, i8* %14, align 1
  %3641 = and i32 %3638, 255
  %3642 = tail call i32 @llvm.ctpop.i32(i32 %3641)
  %3643 = trunc i32 %3642 to i8
  %3644 = and i8 %3643, 1
  %3645 = xor i8 %3644, 1
  store i8 %3645, i8* %21, align 1
  %3646 = xor i32 %3637, %3633
  %3647 = xor i32 %3646, %3638
  %3648 = lshr i32 %3647, 4
  %3649 = trunc i32 %3648 to i8
  %3650 = and i8 %3649, 1
  store i8 %3650, i8* %26, align 1
  %3651 = icmp eq i32 %3638, 0
  %3652 = zext i1 %3651 to i8
  store i8 %3652, i8* %29, align 1
  %3653 = lshr i32 %3638, 31
  %3654 = trunc i32 %3653 to i8
  store i8 %3654, i8* %32, align 1
  %3655 = lshr i32 %3637, 31
  %3656 = add nuw nsw i32 %3653, %3655
  %3657 = icmp eq i32 %3656, 2
  %3658 = zext i1 %3657 to i8
  store i8 %3658, i8* %38, align 1
  %.v275 = select i1 %3651, i64 29, i64 57
  %3659 = add i64 %3597, %.v275
  store i64 %3659, i64* %3, align 8
  br i1 %3651, label %block_4103be, label %block_.L_4103da

block_4103be:                                     ; preds = %block_.L_4103a1
  %3660 = load i64, i64* %RBP.i, align 8
  %3661 = add i64 %3660, -8
  %3662 = add i64 %3659, 3
  store i64 %3662, i64* %3, align 8
  %3663 = inttoptr i64 %3661 to i32*
  %3664 = load i32, i32* %3663, align 4
  %3665 = add i32 %3664, -20
  %3666 = lshr i32 %3665, 31
  %3667 = add i32 %3664, -19
  %3668 = zext i32 %3667 to i64
  store i64 %3668, i64* %RAX.i2706, align 8
  %3669 = icmp eq i32 %3665, -1
  %3670 = icmp eq i32 %3667, 0
  %3671 = or i1 %3669, %3670
  %3672 = zext i1 %3671 to i8
  store i8 %3672, i8* %14, align 1
  %3673 = and i32 %3667, 255
  %3674 = tail call i32 @llvm.ctpop.i32(i32 %3673)
  %3675 = trunc i32 %3674 to i8
  %3676 = and i8 %3675, 1
  %3677 = xor i8 %3676, 1
  store i8 %3677, i8* %21, align 1
  %3678 = xor i32 %3667, %3665
  %3679 = lshr i32 %3678, 4
  %3680 = trunc i32 %3679 to i8
  %3681 = and i8 %3680, 1
  store i8 %3681, i8* %26, align 1
  %3682 = zext i1 %3670 to i8
  store i8 %3682, i8* %29, align 1
  %3683 = lshr i32 %3667, 31
  %3684 = trunc i32 %3683 to i8
  store i8 %3684, i8* %32, align 1
  %3685 = xor i32 %3683, %3666
  %3686 = add nuw nsw i32 %3685, %3683
  %3687 = icmp eq i32 %3686, 2
  %3688 = zext i1 %3687 to i8
  store i8 %3688, i8* %38, align 1
  %3689 = sext i32 %3667 to i64
  store i64 %3689, i64* %RCX.i2558, align 8
  %3690 = shl nsw i64 %3689, 2
  %3691 = add nsw i64 %3690, 11187184
  %3692 = add i64 %3659, 19
  store i64 %3692, i64* %3, align 8
  %3693 = inttoptr i64 %3691 to i32*
  %3694 = load i32, i32* %3693, align 4
  %3695 = zext i32 %3694 to i64
  store i64 %3695, i64* %RAX.i2706, align 8
  %3696 = add i64 %3660, -20
  %3697 = add i64 %3659, 22
  store i64 %3697, i64* %3, align 8
  %3698 = inttoptr i64 %3696 to i32*
  %3699 = load i32, i32* %3698, align 4
  %3700 = sub i32 %3694, %3699
  %3701 = icmp ult i32 %3694, %3699
  %3702 = zext i1 %3701 to i8
  store i8 %3702, i8* %14, align 1
  %3703 = and i32 %3700, 255
  %3704 = tail call i32 @llvm.ctpop.i32(i32 %3703)
  %3705 = trunc i32 %3704 to i8
  %3706 = and i8 %3705, 1
  %3707 = xor i8 %3706, 1
  store i8 %3707, i8* %21, align 1
  %3708 = xor i32 %3699, %3694
  %3709 = xor i32 %3708, %3700
  %3710 = lshr i32 %3709, 4
  %3711 = trunc i32 %3710 to i8
  %3712 = and i8 %3711, 1
  store i8 %3712, i8* %26, align 1
  %3713 = icmp eq i32 %3700, 0
  %3714 = zext i1 %3713 to i8
  store i8 %3714, i8* %29, align 1
  %3715 = lshr i32 %3700, 31
  %3716 = trunc i32 %3715 to i8
  store i8 %3716, i8* %32, align 1
  %3717 = lshr i32 %3694, 31
  %3718 = lshr i32 %3699, 31
  %3719 = xor i32 %3718, %3717
  %3720 = xor i32 %3715, %3717
  %3721 = add nuw nsw i32 %3720, %3719
  %3722 = icmp eq i32 %3721, 2
  %3723 = zext i1 %3722 to i8
  store i8 %3723, i8* %38, align 1
  %.v278 = select i1 %3713, i64 94, i64 28
  %3724 = add i64 %3659, %.v278
  store i64 %3724, i64* %3, align 8
  br i1 %3713, label %block_.L_41041c, label %block_.L_4103da

block_.L_4103da:                                  ; preds = %block_.L_4103a1, %block_4103be
  %3725 = phi i64 [ %3724, %block_4103be ], [ %3659, %block_.L_4103a1 ]
  %3726 = load i64, i64* %RBP.i, align 8
  %3727 = add i64 %3726, -8
  %3728 = add i64 %3725, 3
  store i64 %3728, i64* %3, align 8
  %3729 = inttoptr i64 %3727 to i32*
  %3730 = load i32, i32* %3729, align 4
  %3731 = add i32 %3730, -20
  %3732 = icmp eq i32 %3731, 0
  %3733 = zext i1 %3732 to i8
  %3734 = lshr i32 %3731, 31
  %3735 = add i32 %3730, -21
  %3736 = zext i32 %3735 to i64
  store i64 %3736, i64* %RAX.i2706, align 8
  store i8 %3733, i8* %14, align 1
  %3737 = and i32 %3735, 255
  %3738 = tail call i32 @llvm.ctpop.i32(i32 %3737)
  %3739 = trunc i32 %3738 to i8
  %3740 = and i8 %3739, 1
  %3741 = xor i8 %3740, 1
  store i8 %3741, i8* %21, align 1
  %3742 = xor i32 %3735, %3731
  %3743 = lshr i32 %3742, 4
  %3744 = trunc i32 %3743 to i8
  %3745 = and i8 %3744, 1
  store i8 %3745, i8* %26, align 1
  %3746 = icmp eq i32 %3735, 0
  %3747 = zext i1 %3746 to i8
  store i8 %3747, i8* %29, align 1
  %3748 = lshr i32 %3735, 31
  %3749 = trunc i32 %3748 to i8
  store i8 %3749, i8* %32, align 1
  %3750 = xor i32 %3748, %3734
  %3751 = add nuw nsw i32 %3750, %3734
  %3752 = icmp eq i32 %3751, 2
  %3753 = zext i1 %3752 to i8
  store i8 %3753, i8* %38, align 1
  %3754 = sext i32 %3735 to i64
  store i64 %3754, i64* %RCX.i2558, align 8
  %3755 = add nsw i64 %3754, 12099168
  %3756 = add i64 %3725, 20
  store i64 %3756, i64* %3, align 8
  %3757 = inttoptr i64 %3755 to i8*
  %3758 = load i8, i8* %3757, align 1
  %3759 = zext i8 %3758 to i64
  store i64 %3759, i64* %RAX.i2706, align 8
  %3760 = zext i8 %3758 to i32
  %3761 = add i64 %3726, -12
  %3762 = add i64 %3725, 23
  store i64 %3762, i64* %3, align 8
  %3763 = inttoptr i64 %3761 to i32*
  %3764 = load i32, i32* %3763, align 4
  %3765 = sub i32 %3760, %3764
  %3766 = icmp ult i32 %3760, %3764
  %3767 = zext i1 %3766 to i8
  store i8 %3767, i8* %14, align 1
  %3768 = and i32 %3765, 255
  %3769 = tail call i32 @llvm.ctpop.i32(i32 %3768)
  %3770 = trunc i32 %3769 to i8
  %3771 = and i8 %3770, 1
  %3772 = xor i8 %3771, 1
  store i8 %3772, i8* %21, align 1
  %3773 = xor i32 %3764, %3760
  %3774 = xor i32 %3773, %3765
  %3775 = lshr i32 %3774, 4
  %3776 = trunc i32 %3775 to i8
  %3777 = and i8 %3776, 1
  store i8 %3777, i8* %26, align 1
  %3778 = icmp eq i32 %3765, 0
  %3779 = zext i1 %3778 to i8
  store i8 %3779, i8* %29, align 1
  %3780 = lshr i32 %3765, 31
  %3781 = trunc i32 %3780 to i8
  store i8 %3781, i8* %32, align 1
  %3782 = lshr i32 %3764, 31
  %3783 = add nuw nsw i32 %3780, %3782
  %3784 = icmp eq i32 %3783, 2
  %3785 = zext i1 %3784 to i8
  store i8 %3785, i8* %38, align 1
  %.v276 = select i1 %3778, i64 29, i64 57
  %3786 = add i64 %3725, %.v276
  store i64 %3786, i64* %3, align 8
  br i1 %3778, label %block_4103f7, label %block_.L_410413

block_4103f7:                                     ; preds = %block_.L_4103da
  %3787 = load i64, i64* %RBP.i, align 8
  %3788 = add i64 %3787, -8
  %3789 = add i64 %3786, 3
  store i64 %3789, i64* %3, align 8
  %3790 = inttoptr i64 %3788 to i32*
  %3791 = load i32, i32* %3790, align 4
  %3792 = add i32 %3791, -20
  %3793 = icmp eq i32 %3792, 0
  %3794 = zext i1 %3793 to i8
  %3795 = lshr i32 %3792, 31
  %3796 = add i32 %3791, -21
  %3797 = zext i32 %3796 to i64
  store i64 %3797, i64* %RAX.i2706, align 8
  store i8 %3794, i8* %14, align 1
  %3798 = and i32 %3796, 255
  %3799 = tail call i32 @llvm.ctpop.i32(i32 %3798)
  %3800 = trunc i32 %3799 to i8
  %3801 = and i8 %3800, 1
  %3802 = xor i8 %3801, 1
  store i8 %3802, i8* %21, align 1
  %3803 = xor i32 %3796, %3792
  %3804 = lshr i32 %3803, 4
  %3805 = trunc i32 %3804 to i8
  %3806 = and i8 %3805, 1
  store i8 %3806, i8* %26, align 1
  %3807 = icmp eq i32 %3796, 0
  %3808 = zext i1 %3807 to i8
  store i8 %3808, i8* %29, align 1
  %3809 = lshr i32 %3796, 31
  %3810 = trunc i32 %3809 to i8
  store i8 %3810, i8* %32, align 1
  %3811 = xor i32 %3809, %3795
  %3812 = add nuw nsw i32 %3811, %3795
  %3813 = icmp eq i32 %3812, 2
  %3814 = zext i1 %3813 to i8
  store i8 %3814, i8* %38, align 1
  %3815 = sext i32 %3796 to i64
  store i64 %3815, i64* %RCX.i2558, align 8
  %3816 = shl nsw i64 %3815, 2
  %3817 = add nsw i64 %3816, 11187184
  %3818 = add i64 %3786, 19
  store i64 %3818, i64* %3, align 8
  %3819 = inttoptr i64 %3817 to i32*
  %3820 = load i32, i32* %3819, align 4
  %3821 = zext i32 %3820 to i64
  store i64 %3821, i64* %RAX.i2706, align 8
  %3822 = add i64 %3787, -20
  %3823 = add i64 %3786, 22
  store i64 %3823, i64* %3, align 8
  %3824 = inttoptr i64 %3822 to i32*
  %3825 = load i32, i32* %3824, align 4
  %3826 = sub i32 %3820, %3825
  %3827 = icmp ult i32 %3820, %3825
  %3828 = zext i1 %3827 to i8
  store i8 %3828, i8* %14, align 1
  %3829 = and i32 %3826, 255
  %3830 = tail call i32 @llvm.ctpop.i32(i32 %3829)
  %3831 = trunc i32 %3830 to i8
  %3832 = and i8 %3831, 1
  %3833 = xor i8 %3832, 1
  store i8 %3833, i8* %21, align 1
  %3834 = xor i32 %3825, %3820
  %3835 = xor i32 %3834, %3826
  %3836 = lshr i32 %3835, 4
  %3837 = trunc i32 %3836 to i8
  %3838 = and i8 %3837, 1
  store i8 %3838, i8* %26, align 1
  %3839 = icmp eq i32 %3826, 0
  %3840 = zext i1 %3839 to i8
  store i8 %3840, i8* %29, align 1
  %3841 = lshr i32 %3826, 31
  %3842 = trunc i32 %3841 to i8
  store i8 %3842, i8* %32, align 1
  %3843 = lshr i32 %3820, 31
  %3844 = lshr i32 %3825, 31
  %3845 = xor i32 %3844, %3843
  %3846 = xor i32 %3841, %3843
  %3847 = add nuw nsw i32 %3846, %3845
  %3848 = icmp eq i32 %3847, 2
  %3849 = zext i1 %3848 to i8
  store i8 %3849, i8* %38, align 1
  %.v277 = select i1 %3839, i64 37, i64 28
  %3850 = add i64 %3786, %.v277
  store i64 %3850, i64* %3, align 8
  br i1 %3839, label %block_.L_41041c, label %block_.L_410413

block_.L_410413:                                  ; preds = %block_.L_4103da, %block_4103f7
  %3851 = phi i64 [ %3850, %block_4103f7 ], [ %3786, %block_.L_4103da ]
  %3852 = load i64, i64* %RBP.i, align 8
  %3853 = add i64 %3852, -28
  %3854 = add i64 %3851, 3
  store i64 %3854, i64* %3, align 8
  %3855 = inttoptr i64 %3853 to i32*
  %3856 = load i32, i32* %3855, align 4
  %3857 = add i32 %3856, 1
  %3858 = zext i32 %3857 to i64
  store i64 %3858, i64* %RAX.i2706, align 8
  %3859 = icmp eq i32 %3856, -1
  %3860 = icmp eq i32 %3857, 0
  %3861 = or i1 %3859, %3860
  %3862 = zext i1 %3861 to i8
  store i8 %3862, i8* %14, align 1
  %3863 = and i32 %3857, 255
  %3864 = tail call i32 @llvm.ctpop.i32(i32 %3863)
  %3865 = trunc i32 %3864 to i8
  %3866 = and i8 %3865, 1
  %3867 = xor i8 %3866, 1
  store i8 %3867, i8* %21, align 1
  %3868 = xor i32 %3857, %3856
  %3869 = lshr i32 %3868, 4
  %3870 = trunc i32 %3869 to i8
  %3871 = and i8 %3870, 1
  store i8 %3871, i8* %26, align 1
  %3872 = zext i1 %3860 to i8
  store i8 %3872, i8* %29, align 1
  %3873 = lshr i32 %3857, 31
  %3874 = trunc i32 %3873 to i8
  store i8 %3874, i8* %32, align 1
  %3875 = lshr i32 %3856, 31
  %3876 = xor i32 %3873, %3875
  %3877 = add nuw nsw i32 %3876, %3873
  %3878 = icmp eq i32 %3877, 2
  %3879 = zext i1 %3878 to i8
  store i8 %3879, i8* %38, align 1
  %3880 = add i64 %3851, 9
  store i64 %3880, i64* %3, align 8
  store i32 %3857, i32* %3855, align 4
  %.pre186 = load i64, i64* %3, align 8
  br label %block_.L_41041c

block_.L_41041c:                                  ; preds = %block_.L_41034e, %block_.L_410413, %block_4103f7, %block_4103be, %block_410385
  %3881 = phi i64 [ %.pre186, %block_.L_410413 ], [ %3850, %block_4103f7 ], [ %3724, %block_4103be ], [ %3596, %block_410385 ], [ %3472, %block_.L_41034e ]
  %3882 = load i64, i64* %RBP.i, align 8
  %3883 = add i64 %3882, -8
  %3884 = add i64 %3881, 3
  store i64 %3884, i64* %3, align 8
  %3885 = inttoptr i64 %3883 to i32*
  %3886 = load i32, i32* %3885, align 4
  %3887 = add i32 %3886, 1
  %3888 = zext i32 %3887 to i64
  store i64 %3888, i64* %RAX.i2706, align 8
  %3889 = icmp eq i32 %3886, -1
  %3890 = icmp eq i32 %3887, 0
  %3891 = or i1 %3889, %3890
  %3892 = zext i1 %3891 to i8
  store i8 %3892, i8* %14, align 1
  %3893 = and i32 %3887, 255
  %3894 = tail call i32 @llvm.ctpop.i32(i32 %3893)
  %3895 = trunc i32 %3894 to i8
  %3896 = and i8 %3895, 1
  %3897 = xor i8 %3896, 1
  store i8 %3897, i8* %21, align 1
  %3898 = xor i32 %3887, %3886
  %3899 = lshr i32 %3898, 4
  %3900 = trunc i32 %3899 to i8
  %3901 = and i8 %3900, 1
  store i8 %3901, i8* %26, align 1
  %3902 = zext i1 %3890 to i8
  store i8 %3902, i8* %29, align 1
  %3903 = lshr i32 %3887, 31
  %3904 = trunc i32 %3903 to i8
  store i8 %3904, i8* %32, align 1
  %3905 = lshr i32 %3886, 31
  %3906 = xor i32 %3903, %3905
  %3907 = add nuw nsw i32 %3906, %3903
  %3908 = icmp eq i32 %3907, 2
  %3909 = zext i1 %3908 to i8
  store i8 %3909, i8* %38, align 1
  %3910 = sext i32 %3887 to i64
  store i64 %3910, i64* %RCX.i2558, align 8
  %3911 = add nsw i64 %3910, 12099168
  %3912 = add i64 %3881, 17
  store i64 %3912, i64* %3, align 8
  %3913 = inttoptr i64 %3911 to i8*
  %3914 = load i8, i8* %3913, align 1
  %3915 = zext i8 %3914 to i64
  store i64 %3915, i64* %RAX.i2706, align 8
  %3916 = zext i8 %3914 to i32
  store i8 0, i8* %14, align 1
  %3917 = tail call i32 @llvm.ctpop.i32(i32 %3916)
  %3918 = trunc i32 %3917 to i8
  %3919 = and i8 %3918, 1
  %3920 = xor i8 %3919, 1
  store i8 %3920, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3921 = icmp eq i8 %3914, 0
  %3922 = zext i1 %3921 to i8
  store i8 %3922, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v267 = select i1 %3921, i64 26, i64 206
  %3923 = add i64 %3881, %.v267
  store i64 %3923, i64* %3, align 8
  br i1 %3921, label %block_410436, label %block_.L_4104ea

block_410436:                                     ; preds = %block_.L_41041c
  %3924 = add i64 %3923, 3
  store i64 %3924, i64* %3, align 8
  %3925 = load i32, i32* %3885, align 4
  %3926 = add i32 %3925, 1
  %3927 = lshr i32 %3926, 31
  %3928 = add i32 %3925, 2
  %3929 = zext i32 %3928 to i64
  store i64 %3929, i64* %RAX.i2706, align 8
  %3930 = icmp eq i32 %3926, -1
  %3931 = icmp eq i32 %3928, 0
  %3932 = or i1 %3930, %3931
  %3933 = zext i1 %3932 to i8
  store i8 %3933, i8* %14, align 1
  %3934 = and i32 %3928, 255
  %3935 = tail call i32 @llvm.ctpop.i32(i32 %3934)
  %3936 = trunc i32 %3935 to i8
  %3937 = and i8 %3936, 1
  %3938 = xor i8 %3937, 1
  store i8 %3938, i8* %21, align 1
  %3939 = xor i32 %3928, %3926
  %3940 = lshr i32 %3939, 4
  %3941 = trunc i32 %3940 to i8
  %3942 = and i8 %3941, 1
  store i8 %3942, i8* %26, align 1
  %3943 = zext i1 %3931 to i8
  store i8 %3943, i8* %29, align 1
  %3944 = lshr i32 %3928, 31
  %3945 = trunc i32 %3944 to i8
  store i8 %3945, i8* %32, align 1
  %3946 = xor i32 %3944, %3927
  %3947 = add nuw nsw i32 %3946, %3944
  %3948 = icmp eq i32 %3947, 2
  %3949 = zext i1 %3948 to i8
  store i8 %3949, i8* %38, align 1
  %3950 = sext i32 %3928 to i64
  store i64 %3950, i64* %RCX.i2558, align 8
  %3951 = add nsw i64 %3950, 12099168
  %3952 = add i64 %3923, 20
  store i64 %3952, i64* %3, align 8
  %3953 = inttoptr i64 %3951 to i8*
  %3954 = load i8, i8* %3953, align 1
  %3955 = zext i8 %3954 to i64
  store i64 %3955, i64* %RAX.i2706, align 8
  %3956 = zext i8 %3954 to i32
  %3957 = add i64 %3882, -12
  %3958 = add i64 %3923, 23
  store i64 %3958, i64* %3, align 8
  %3959 = inttoptr i64 %3957 to i32*
  %3960 = load i32, i32* %3959, align 4
  %3961 = sub i32 %3956, %3960
  %3962 = icmp ult i32 %3956, %3960
  %3963 = zext i1 %3962 to i8
  store i8 %3963, i8* %14, align 1
  %3964 = and i32 %3961, 255
  %3965 = tail call i32 @llvm.ctpop.i32(i32 %3964)
  %3966 = trunc i32 %3965 to i8
  %3967 = and i8 %3966, 1
  %3968 = xor i8 %3967, 1
  store i8 %3968, i8* %21, align 1
  %3969 = xor i32 %3960, %3956
  %3970 = xor i32 %3969, %3961
  %3971 = lshr i32 %3970, 4
  %3972 = trunc i32 %3971 to i8
  %3973 = and i8 %3972, 1
  store i8 %3973, i8* %26, align 1
  %3974 = icmp eq i32 %3961, 0
  %3975 = zext i1 %3974 to i8
  store i8 %3975, i8* %29, align 1
  %3976 = lshr i32 %3961, 31
  %3977 = trunc i32 %3976 to i8
  store i8 %3977, i8* %32, align 1
  %3978 = lshr i32 %3960, 31
  %3979 = add nuw nsw i32 %3976, %3978
  %3980 = icmp eq i32 %3979, 2
  %3981 = zext i1 %3980 to i8
  store i8 %3981, i8* %38, align 1
  %.v268 = select i1 %3974, i64 29, i64 57
  %3982 = add i64 %3923, %.v268
  store i64 %3982, i64* %3, align 8
  br i1 %3974, label %block_410453, label %block_.L_41046f

block_410453:                                     ; preds = %block_410436
  %3983 = load i64, i64* %RBP.i, align 8
  %3984 = add i64 %3983, -8
  %3985 = add i64 %3982, 3
  store i64 %3985, i64* %3, align 8
  %3986 = inttoptr i64 %3984 to i32*
  %3987 = load i32, i32* %3986, align 4
  %3988 = add i32 %3987, 1
  %3989 = lshr i32 %3988, 31
  %3990 = add i32 %3987, 2
  %3991 = zext i32 %3990 to i64
  store i64 %3991, i64* %RAX.i2706, align 8
  %3992 = icmp eq i32 %3988, -1
  %3993 = icmp eq i32 %3990, 0
  %3994 = or i1 %3992, %3993
  %3995 = zext i1 %3994 to i8
  store i8 %3995, i8* %14, align 1
  %3996 = and i32 %3990, 255
  %3997 = tail call i32 @llvm.ctpop.i32(i32 %3996)
  %3998 = trunc i32 %3997 to i8
  %3999 = and i8 %3998, 1
  %4000 = xor i8 %3999, 1
  store i8 %4000, i8* %21, align 1
  %4001 = xor i32 %3990, %3988
  %4002 = lshr i32 %4001, 4
  %4003 = trunc i32 %4002 to i8
  %4004 = and i8 %4003, 1
  store i8 %4004, i8* %26, align 1
  %4005 = zext i1 %3993 to i8
  store i8 %4005, i8* %29, align 1
  %4006 = lshr i32 %3990, 31
  %4007 = trunc i32 %4006 to i8
  store i8 %4007, i8* %32, align 1
  %4008 = xor i32 %4006, %3989
  %4009 = add nuw nsw i32 %4008, %4006
  %4010 = icmp eq i32 %4009, 2
  %4011 = zext i1 %4010 to i8
  store i8 %4011, i8* %38, align 1
  %4012 = sext i32 %3990 to i64
  store i64 %4012, i64* %RCX.i2558, align 8
  %4013 = shl nsw i64 %4012, 2
  %4014 = add nsw i64 %4013, 11187184
  %4015 = add i64 %3982, 19
  store i64 %4015, i64* %3, align 8
  %4016 = inttoptr i64 %4014 to i32*
  %4017 = load i32, i32* %4016, align 4
  %4018 = zext i32 %4017 to i64
  store i64 %4018, i64* %RAX.i2706, align 8
  %4019 = add i64 %3983, -20
  %4020 = add i64 %3982, 22
  store i64 %4020, i64* %3, align 8
  %4021 = inttoptr i64 %4019 to i32*
  %4022 = load i32, i32* %4021, align 4
  %4023 = sub i32 %4017, %4022
  %4024 = icmp ult i32 %4017, %4022
  %4025 = zext i1 %4024 to i8
  store i8 %4025, i8* %14, align 1
  %4026 = and i32 %4023, 255
  %4027 = tail call i32 @llvm.ctpop.i32(i32 %4026)
  %4028 = trunc i32 %4027 to i8
  %4029 = and i8 %4028, 1
  %4030 = xor i8 %4029, 1
  store i8 %4030, i8* %21, align 1
  %4031 = xor i32 %4022, %4017
  %4032 = xor i32 %4031, %4023
  %4033 = lshr i32 %4032, 4
  %4034 = trunc i32 %4033 to i8
  %4035 = and i8 %4034, 1
  store i8 %4035, i8* %26, align 1
  %4036 = icmp eq i32 %4023, 0
  %4037 = zext i1 %4036 to i8
  store i8 %4037, i8* %29, align 1
  %4038 = lshr i32 %4023, 31
  %4039 = trunc i32 %4038 to i8
  store i8 %4039, i8* %32, align 1
  %4040 = lshr i32 %4017, 31
  %4041 = lshr i32 %4022, 31
  %4042 = xor i32 %4041, %4040
  %4043 = xor i32 %4038, %4040
  %4044 = add nuw nsw i32 %4043, %4042
  %4045 = icmp eq i32 %4044, 2
  %4046 = zext i1 %4045 to i8
  store i8 %4046, i8* %38, align 1
  %.v273 = select i1 %4036, i64 151, i64 28
  %4047 = add i64 %3982, %.v273
  store i64 %4047, i64* %3, align 8
  br i1 %4036, label %block_.L_4104ea, label %block_.L_41046f

block_.L_41046f:                                  ; preds = %block_410436, %block_410453
  %4048 = phi i64 [ %4047, %block_410453 ], [ %3982, %block_410436 ]
  %4049 = load i64, i64* %RBP.i, align 8
  %4050 = add i64 %4049, -8
  %4051 = add i64 %4048, 3
  store i64 %4051, i64* %3, align 8
  %4052 = inttoptr i64 %4050 to i32*
  %4053 = load i32, i32* %4052, align 4
  %4054 = add i32 %4053, 1
  %4055 = lshr i32 %4054, 31
  %4056 = add i32 %4053, 21
  %4057 = zext i32 %4056 to i64
  store i64 %4057, i64* %RAX.i2706, align 8
  %4058 = icmp ugt i32 %4054, -21
  %4059 = zext i1 %4058 to i8
  store i8 %4059, i8* %14, align 1
  %4060 = and i32 %4056, 255
  %4061 = tail call i32 @llvm.ctpop.i32(i32 %4060)
  %4062 = trunc i32 %4061 to i8
  %4063 = and i8 %4062, 1
  %4064 = xor i8 %4063, 1
  store i8 %4064, i8* %21, align 1
  %4065 = xor i32 %4054, 16
  %4066 = xor i32 %4065, %4056
  %4067 = lshr i32 %4066, 4
  %4068 = trunc i32 %4067 to i8
  %4069 = and i8 %4068, 1
  store i8 %4069, i8* %26, align 1
  %4070 = icmp eq i32 %4056, 0
  %4071 = zext i1 %4070 to i8
  store i8 %4071, i8* %29, align 1
  %4072 = lshr i32 %4056, 31
  %4073 = trunc i32 %4072 to i8
  store i8 %4073, i8* %32, align 1
  %4074 = xor i32 %4072, %4055
  %4075 = add nuw nsw i32 %4074, %4072
  %4076 = icmp eq i32 %4075, 2
  %4077 = zext i1 %4076 to i8
  store i8 %4077, i8* %38, align 1
  %4078 = sext i32 %4056 to i64
  store i64 %4078, i64* %RCX.i2558, align 8
  %4079 = add nsw i64 %4078, 12099168
  %4080 = add i64 %4048, 20
  store i64 %4080, i64* %3, align 8
  %4081 = inttoptr i64 %4079 to i8*
  %4082 = load i8, i8* %4081, align 1
  %4083 = zext i8 %4082 to i64
  store i64 %4083, i64* %RAX.i2706, align 8
  %4084 = zext i8 %4082 to i32
  %4085 = add i64 %4049, -12
  %4086 = add i64 %4048, 23
  store i64 %4086, i64* %3, align 8
  %4087 = inttoptr i64 %4085 to i32*
  %4088 = load i32, i32* %4087, align 4
  %4089 = sub i32 %4084, %4088
  %4090 = icmp ult i32 %4084, %4088
  %4091 = zext i1 %4090 to i8
  store i8 %4091, i8* %14, align 1
  %4092 = and i32 %4089, 255
  %4093 = tail call i32 @llvm.ctpop.i32(i32 %4092)
  %4094 = trunc i32 %4093 to i8
  %4095 = and i8 %4094, 1
  %4096 = xor i8 %4095, 1
  store i8 %4096, i8* %21, align 1
  %4097 = xor i32 %4088, %4084
  %4098 = xor i32 %4097, %4089
  %4099 = lshr i32 %4098, 4
  %4100 = trunc i32 %4099 to i8
  %4101 = and i8 %4100, 1
  store i8 %4101, i8* %26, align 1
  %4102 = icmp eq i32 %4089, 0
  %4103 = zext i1 %4102 to i8
  store i8 %4103, i8* %29, align 1
  %4104 = lshr i32 %4089, 31
  %4105 = trunc i32 %4104 to i8
  store i8 %4105, i8* %32, align 1
  %4106 = lshr i32 %4088, 31
  %4107 = add nuw nsw i32 %4104, %4106
  %4108 = icmp eq i32 %4107, 2
  %4109 = zext i1 %4108 to i8
  store i8 %4109, i8* %38, align 1
  %.v269 = select i1 %4102, i64 29, i64 57
  %4110 = add i64 %4048, %.v269
  store i64 %4110, i64* %3, align 8
  br i1 %4102, label %block_41048c, label %block_.L_4104a8

block_41048c:                                     ; preds = %block_.L_41046f
  %4111 = load i64, i64* %RBP.i, align 8
  %4112 = add i64 %4111, -8
  %4113 = add i64 %4110, 3
  store i64 %4113, i64* %3, align 8
  %4114 = inttoptr i64 %4112 to i32*
  %4115 = load i32, i32* %4114, align 4
  %4116 = add i32 %4115, 1
  %4117 = lshr i32 %4116, 31
  %4118 = add i32 %4115, 21
  %4119 = zext i32 %4118 to i64
  store i64 %4119, i64* %RAX.i2706, align 8
  %4120 = icmp ugt i32 %4116, -21
  %4121 = zext i1 %4120 to i8
  store i8 %4121, i8* %14, align 1
  %4122 = and i32 %4118, 255
  %4123 = tail call i32 @llvm.ctpop.i32(i32 %4122)
  %4124 = trunc i32 %4123 to i8
  %4125 = and i8 %4124, 1
  %4126 = xor i8 %4125, 1
  store i8 %4126, i8* %21, align 1
  %4127 = xor i32 %4116, 16
  %4128 = xor i32 %4127, %4118
  %4129 = lshr i32 %4128, 4
  %4130 = trunc i32 %4129 to i8
  %4131 = and i8 %4130, 1
  store i8 %4131, i8* %26, align 1
  %4132 = icmp eq i32 %4118, 0
  %4133 = zext i1 %4132 to i8
  store i8 %4133, i8* %29, align 1
  %4134 = lshr i32 %4118, 31
  %4135 = trunc i32 %4134 to i8
  store i8 %4135, i8* %32, align 1
  %4136 = xor i32 %4134, %4117
  %4137 = add nuw nsw i32 %4136, %4134
  %4138 = icmp eq i32 %4137, 2
  %4139 = zext i1 %4138 to i8
  store i8 %4139, i8* %38, align 1
  %4140 = sext i32 %4118 to i64
  store i64 %4140, i64* %RCX.i2558, align 8
  %4141 = shl nsw i64 %4140, 2
  %4142 = add nsw i64 %4141, 11187184
  %4143 = add i64 %4110, 19
  store i64 %4143, i64* %3, align 8
  %4144 = inttoptr i64 %4142 to i32*
  %4145 = load i32, i32* %4144, align 4
  %4146 = zext i32 %4145 to i64
  store i64 %4146, i64* %RAX.i2706, align 8
  %4147 = add i64 %4111, -20
  %4148 = add i64 %4110, 22
  store i64 %4148, i64* %3, align 8
  %4149 = inttoptr i64 %4147 to i32*
  %4150 = load i32, i32* %4149, align 4
  %4151 = sub i32 %4145, %4150
  %4152 = icmp ult i32 %4145, %4150
  %4153 = zext i1 %4152 to i8
  store i8 %4153, i8* %14, align 1
  %4154 = and i32 %4151, 255
  %4155 = tail call i32 @llvm.ctpop.i32(i32 %4154)
  %4156 = trunc i32 %4155 to i8
  %4157 = and i8 %4156, 1
  %4158 = xor i8 %4157, 1
  store i8 %4158, i8* %21, align 1
  %4159 = xor i32 %4150, %4145
  %4160 = xor i32 %4159, %4151
  %4161 = lshr i32 %4160, 4
  %4162 = trunc i32 %4161 to i8
  %4163 = and i8 %4162, 1
  store i8 %4163, i8* %26, align 1
  %4164 = icmp eq i32 %4151, 0
  %4165 = zext i1 %4164 to i8
  store i8 %4165, i8* %29, align 1
  %4166 = lshr i32 %4151, 31
  %4167 = trunc i32 %4166 to i8
  store i8 %4167, i8* %32, align 1
  %4168 = lshr i32 %4145, 31
  %4169 = lshr i32 %4150, 31
  %4170 = xor i32 %4169, %4168
  %4171 = xor i32 %4166, %4168
  %4172 = add nuw nsw i32 %4171, %4170
  %4173 = icmp eq i32 %4172, 2
  %4174 = zext i1 %4173 to i8
  store i8 %4174, i8* %38, align 1
  %.v272 = select i1 %4164, i64 94, i64 28
  %4175 = add i64 %4110, %.v272
  store i64 %4175, i64* %3, align 8
  br i1 %4164, label %block_.L_4104ea, label %block_.L_4104a8

block_.L_4104a8:                                  ; preds = %block_.L_41046f, %block_41048c
  %4176 = phi i64 [ %4175, %block_41048c ], [ %4110, %block_.L_41046f ]
  %4177 = load i64, i64* %RBP.i, align 8
  %4178 = add i64 %4177, -8
  %4179 = add i64 %4176, 3
  store i64 %4179, i64* %3, align 8
  %4180 = inttoptr i64 %4178 to i32*
  %4181 = load i32, i32* %4180, align 4
  %4182 = add i32 %4181, 1
  %4183 = lshr i32 %4182, 31
  %4184 = add i32 %4181, -19
  %4185 = zext i32 %4184 to i64
  store i64 %4185, i64* %RAX.i2706, align 8
  %4186 = icmp ult i32 %4182, 20
  %4187 = zext i1 %4186 to i8
  store i8 %4187, i8* %14, align 1
  %4188 = and i32 %4184, 255
  %4189 = tail call i32 @llvm.ctpop.i32(i32 %4188)
  %4190 = trunc i32 %4189 to i8
  %4191 = and i8 %4190, 1
  %4192 = xor i8 %4191, 1
  store i8 %4192, i8* %21, align 1
  %4193 = xor i32 %4182, 16
  %4194 = xor i32 %4193, %4184
  %4195 = lshr i32 %4194, 4
  %4196 = trunc i32 %4195 to i8
  %4197 = and i8 %4196, 1
  store i8 %4197, i8* %26, align 1
  %4198 = icmp eq i32 %4184, 0
  %4199 = zext i1 %4198 to i8
  store i8 %4199, i8* %29, align 1
  %4200 = lshr i32 %4184, 31
  %4201 = trunc i32 %4200 to i8
  store i8 %4201, i8* %32, align 1
  %4202 = xor i32 %4200, %4183
  %4203 = add nuw nsw i32 %4202, %4183
  %4204 = icmp eq i32 %4203, 2
  %4205 = zext i1 %4204 to i8
  store i8 %4205, i8* %38, align 1
  %4206 = sext i32 %4184 to i64
  store i64 %4206, i64* %RCX.i2558, align 8
  %4207 = add nsw i64 %4206, 12099168
  %4208 = add i64 %4176, 20
  store i64 %4208, i64* %3, align 8
  %4209 = inttoptr i64 %4207 to i8*
  %4210 = load i8, i8* %4209, align 1
  %4211 = zext i8 %4210 to i64
  store i64 %4211, i64* %RAX.i2706, align 8
  %4212 = zext i8 %4210 to i32
  %4213 = add i64 %4177, -12
  %4214 = add i64 %4176, 23
  store i64 %4214, i64* %3, align 8
  %4215 = inttoptr i64 %4213 to i32*
  %4216 = load i32, i32* %4215, align 4
  %4217 = sub i32 %4212, %4216
  %4218 = icmp ult i32 %4212, %4216
  %4219 = zext i1 %4218 to i8
  store i8 %4219, i8* %14, align 1
  %4220 = and i32 %4217, 255
  %4221 = tail call i32 @llvm.ctpop.i32(i32 %4220)
  %4222 = trunc i32 %4221 to i8
  %4223 = and i8 %4222, 1
  %4224 = xor i8 %4223, 1
  store i8 %4224, i8* %21, align 1
  %4225 = xor i32 %4216, %4212
  %4226 = xor i32 %4225, %4217
  %4227 = lshr i32 %4226, 4
  %4228 = trunc i32 %4227 to i8
  %4229 = and i8 %4228, 1
  store i8 %4229, i8* %26, align 1
  %4230 = icmp eq i32 %4217, 0
  %4231 = zext i1 %4230 to i8
  store i8 %4231, i8* %29, align 1
  %4232 = lshr i32 %4217, 31
  %4233 = trunc i32 %4232 to i8
  store i8 %4233, i8* %32, align 1
  %4234 = lshr i32 %4216, 31
  %4235 = add nuw nsw i32 %4232, %4234
  %4236 = icmp eq i32 %4235, 2
  %4237 = zext i1 %4236 to i8
  store i8 %4237, i8* %38, align 1
  %.v270 = select i1 %4230, i64 29, i64 57
  %4238 = add i64 %4176, %.v270
  store i64 %4238, i64* %3, align 8
  br i1 %4230, label %block_4104c5, label %block_.L_4104e1

block_4104c5:                                     ; preds = %block_.L_4104a8
  %4239 = load i64, i64* %RBP.i, align 8
  %4240 = add i64 %4239, -8
  %4241 = add i64 %4238, 3
  store i64 %4241, i64* %3, align 8
  %4242 = inttoptr i64 %4240 to i32*
  %4243 = load i32, i32* %4242, align 4
  %4244 = add i32 %4243, 1
  %4245 = lshr i32 %4244, 31
  %4246 = add i32 %4243, -19
  %4247 = zext i32 %4246 to i64
  store i64 %4247, i64* %RAX.i2706, align 8
  %4248 = icmp ult i32 %4244, 20
  %4249 = zext i1 %4248 to i8
  store i8 %4249, i8* %14, align 1
  %4250 = and i32 %4246, 255
  %4251 = tail call i32 @llvm.ctpop.i32(i32 %4250)
  %4252 = trunc i32 %4251 to i8
  %4253 = and i8 %4252, 1
  %4254 = xor i8 %4253, 1
  store i8 %4254, i8* %21, align 1
  %4255 = xor i32 %4244, 16
  %4256 = xor i32 %4255, %4246
  %4257 = lshr i32 %4256, 4
  %4258 = trunc i32 %4257 to i8
  %4259 = and i8 %4258, 1
  store i8 %4259, i8* %26, align 1
  %4260 = icmp eq i32 %4246, 0
  %4261 = zext i1 %4260 to i8
  store i8 %4261, i8* %29, align 1
  %4262 = lshr i32 %4246, 31
  %4263 = trunc i32 %4262 to i8
  store i8 %4263, i8* %32, align 1
  %4264 = xor i32 %4262, %4245
  %4265 = add nuw nsw i32 %4264, %4245
  %4266 = icmp eq i32 %4265, 2
  %4267 = zext i1 %4266 to i8
  store i8 %4267, i8* %38, align 1
  %4268 = sext i32 %4246 to i64
  store i64 %4268, i64* %RCX.i2558, align 8
  %4269 = shl nsw i64 %4268, 2
  %4270 = add nsw i64 %4269, 11187184
  %4271 = add i64 %4238, 19
  store i64 %4271, i64* %3, align 8
  %4272 = inttoptr i64 %4270 to i32*
  %4273 = load i32, i32* %4272, align 4
  %4274 = zext i32 %4273 to i64
  store i64 %4274, i64* %RAX.i2706, align 8
  %4275 = add i64 %4239, -20
  %4276 = add i64 %4238, 22
  store i64 %4276, i64* %3, align 8
  %4277 = inttoptr i64 %4275 to i32*
  %4278 = load i32, i32* %4277, align 4
  %4279 = sub i32 %4273, %4278
  %4280 = icmp ult i32 %4273, %4278
  %4281 = zext i1 %4280 to i8
  store i8 %4281, i8* %14, align 1
  %4282 = and i32 %4279, 255
  %4283 = tail call i32 @llvm.ctpop.i32(i32 %4282)
  %4284 = trunc i32 %4283 to i8
  %4285 = and i8 %4284, 1
  %4286 = xor i8 %4285, 1
  store i8 %4286, i8* %21, align 1
  %4287 = xor i32 %4278, %4273
  %4288 = xor i32 %4287, %4279
  %4289 = lshr i32 %4288, 4
  %4290 = trunc i32 %4289 to i8
  %4291 = and i8 %4290, 1
  store i8 %4291, i8* %26, align 1
  %4292 = icmp eq i32 %4279, 0
  %4293 = zext i1 %4292 to i8
  store i8 %4293, i8* %29, align 1
  %4294 = lshr i32 %4279, 31
  %4295 = trunc i32 %4294 to i8
  store i8 %4295, i8* %32, align 1
  %4296 = lshr i32 %4273, 31
  %4297 = lshr i32 %4278, 31
  %4298 = xor i32 %4297, %4296
  %4299 = xor i32 %4294, %4296
  %4300 = add nuw nsw i32 %4299, %4298
  %4301 = icmp eq i32 %4300, 2
  %4302 = zext i1 %4301 to i8
  store i8 %4302, i8* %38, align 1
  %.v271 = select i1 %4292, i64 37, i64 28
  %4303 = add i64 %4238, %.v271
  store i64 %4303, i64* %3, align 8
  br i1 %4292, label %block_.L_4104ea, label %block_.L_4104e1

block_.L_4104e1:                                  ; preds = %block_.L_4104a8, %block_4104c5
  %4304 = phi i64 [ %4303, %block_4104c5 ], [ %4238, %block_.L_4104a8 ]
  %4305 = load i64, i64* %RBP.i, align 8
  %4306 = add i64 %4305, -28
  %4307 = add i64 %4304, 3
  store i64 %4307, i64* %3, align 8
  %4308 = inttoptr i64 %4306 to i32*
  %4309 = load i32, i32* %4308, align 4
  %4310 = add i32 %4309, 1
  %4311 = zext i32 %4310 to i64
  store i64 %4311, i64* %RAX.i2706, align 8
  %4312 = icmp eq i32 %4309, -1
  %4313 = icmp eq i32 %4310, 0
  %4314 = or i1 %4312, %4313
  %4315 = zext i1 %4314 to i8
  store i8 %4315, i8* %14, align 1
  %4316 = and i32 %4310, 255
  %4317 = tail call i32 @llvm.ctpop.i32(i32 %4316)
  %4318 = trunc i32 %4317 to i8
  %4319 = and i8 %4318, 1
  %4320 = xor i8 %4319, 1
  store i8 %4320, i8* %21, align 1
  %4321 = xor i32 %4310, %4309
  %4322 = lshr i32 %4321, 4
  %4323 = trunc i32 %4322 to i8
  %4324 = and i8 %4323, 1
  store i8 %4324, i8* %26, align 1
  %4325 = zext i1 %4313 to i8
  store i8 %4325, i8* %29, align 1
  %4326 = lshr i32 %4310, 31
  %4327 = trunc i32 %4326 to i8
  store i8 %4327, i8* %32, align 1
  %4328 = lshr i32 %4309, 31
  %4329 = xor i32 %4326, %4328
  %4330 = add nuw nsw i32 %4329, %4326
  %4331 = icmp eq i32 %4330, 2
  %4332 = zext i1 %4331 to i8
  store i8 %4332, i8* %38, align 1
  %4333 = add i64 %4304, 9
  store i64 %4333, i64* %3, align 8
  store i32 %4310, i32* %4308, align 4
  %.pre187 = load i64, i64* %3, align 8
  br label %block_.L_4104ea

block_.L_4104ea:                                  ; preds = %block_.L_41041c, %block_.L_4104e1, %block_4104c5, %block_41048c, %block_410453
  %4334 = phi i64 [ %.pre187, %block_.L_4104e1 ], [ %4303, %block_4104c5 ], [ %4175, %block_41048c ], [ %4047, %block_410453 ], [ %3923, %block_.L_41041c ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2706, align 8
  %4335 = load i64, i64* %RBP.i, align 8
  %4336 = add i64 %4335, -20
  %4337 = add i64 %4334, 14
  store i64 %4337, i64* %3, align 8
  %4338 = inttoptr i64 %4336 to i32*
  %4339 = load i32, i32* %4338, align 4
  %4340 = sext i32 %4339 to i64
  %4341 = mul nsw i64 %4340, 744
  store i64 %4341, i64* %RCX.i2558, align 8
  %4342 = lshr i64 %4341, 63
  %4343 = add i64 %4341, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %4343, i64* %RAX.i2706, align 8
  %4344 = icmp ult i64 %4343, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4345 = icmp ult i64 %4343, %4341
  %4346 = or i1 %4344, %4345
  %4347 = zext i1 %4346 to i8
  store i8 %4347, i8* %14, align 1
  %4348 = trunc i64 %4343 to i32
  %4349 = and i32 %4348, 248
  %4350 = tail call i32 @llvm.ctpop.i32(i32 %4349)
  %4351 = trunc i32 %4350 to i8
  %4352 = and i8 %4351, 1
  %4353 = xor i8 %4352, 1
  store i8 %4353, i8* %21, align 1
  %4354 = xor i64 %4341, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %4355 = xor i64 %4354, %4343
  %4356 = lshr i64 %4355, 4
  %4357 = trunc i64 %4356 to i8
  %4358 = and i8 %4357, 1
  store i8 %4358, i8* %26, align 1
  %4359 = icmp eq i64 %4343, 0
  %4360 = zext i1 %4359 to i8
  store i8 %4360, i8* %29, align 1
  %4361 = lshr i64 %4343, 63
  %4362 = trunc i64 %4361 to i8
  store i8 %4362, i8* %32, align 1
  %4363 = xor i64 %4361, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %4364 = xor i64 %4361, %4342
  %4365 = add nuw nsw i64 %4363, %4364
  %4366 = icmp eq i64 %4365, 2
  %4367 = zext i1 %4366 to i8
  store i8 %4367, i8* %38, align 1
  %4368 = add i64 %4341, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %4369 = add i64 %4334, 27
  store i64 %4369, i64* %3, align 8
  %4370 = inttoptr i64 %4368 to i32*
  %4371 = load i32, i32* %4370, align 4
  %4372 = add i32 %4371, -1
  %4373 = zext i32 %4372 to i64
  store i64 %4373, i64* %RDX.i2704, align 8
  %4374 = icmp eq i32 %4371, 0
  %4375 = zext i1 %4374 to i8
  store i8 %4375, i8* %14, align 1
  %4376 = and i32 %4372, 255
  %4377 = tail call i32 @llvm.ctpop.i32(i32 %4376)
  %4378 = trunc i32 %4377 to i8
  %4379 = and i8 %4378, 1
  %4380 = xor i8 %4379, 1
  store i8 %4380, i8* %21, align 1
  %4381 = xor i32 %4372, %4371
  %4382 = lshr i32 %4381, 4
  %4383 = trunc i32 %4382 to i8
  %4384 = and i8 %4383, 1
  store i8 %4384, i8* %26, align 1
  %4385 = icmp eq i32 %4372, 0
  %4386 = zext i1 %4385 to i8
  store i8 %4386, i8* %29, align 1
  %4387 = lshr i32 %4372, 31
  %4388 = trunc i32 %4387 to i8
  store i8 %4388, i8* %32, align 1
  %4389 = lshr i32 %4371, 31
  %4390 = xor i32 %4387, %4389
  %4391 = add nuw nsw i32 %4390, %4389
  %4392 = icmp eq i32 %4391, 2
  %4393 = zext i1 %4392 to i8
  store i8 %4393, i8* %38, align 1
  %4394 = load i64, i64* %RBP.i, align 8
  %4395 = add i64 %4394, -28
  %4396 = add i64 %4334, 33
  store i64 %4396, i64* %3, align 8
  %4397 = inttoptr i64 %4395 to i32*
  %4398 = load i32, i32* %4397, align 4
  %4399 = add i32 %4398, %4372
  %4400 = zext i32 %4399 to i64
  store i64 %4400, i64* %RDX.i2704, align 8
  %4401 = icmp ult i32 %4399, %4372
  %4402 = icmp ult i32 %4399, %4398
  %4403 = or i1 %4401, %4402
  %4404 = zext i1 %4403 to i8
  store i8 %4404, i8* %14, align 1
  %4405 = and i32 %4399, 255
  %4406 = tail call i32 @llvm.ctpop.i32(i32 %4405)
  %4407 = trunc i32 %4406 to i8
  %4408 = and i8 %4407, 1
  %4409 = xor i8 %4408, 1
  store i8 %4409, i8* %21, align 1
  %4410 = xor i32 %4398, %4372
  %4411 = xor i32 %4410, %4399
  %4412 = lshr i32 %4411, 4
  %4413 = trunc i32 %4412 to i8
  %4414 = and i8 %4413, 1
  store i8 %4414, i8* %26, align 1
  %4415 = icmp eq i32 %4399, 0
  %4416 = zext i1 %4415 to i8
  store i8 %4416, i8* %29, align 1
  %4417 = lshr i32 %4399, 31
  %4418 = trunc i32 %4417 to i8
  store i8 %4418, i8* %32, align 1
  %4419 = lshr i32 %4398, 31
  %4420 = xor i32 %4417, %4387
  %4421 = xor i32 %4417, %4419
  %4422 = add nuw nsw i32 %4420, %4421
  %4423 = icmp eq i32 %4422, 2
  %4424 = zext i1 %4423 to i8
  store i8 %4424, i8* %38, align 1
  %4425 = add i64 %4334, 36
  store i64 %4425, i64* %3, align 8
  store i32 %4399, i32* %4397, align 4
  %4426 = load i64, i64* %3, align 8
  %4427 = add i64 %4426, 1626
  store i64 %4427, i64* %3, align 8
  br label %block_.L_410b68

block_.L_410513:                                  ; preds = %block_.L_4101a8
  %.v212 = select i1 %2569, i64 26, i64 377
  %4428 = add i64 %2529, %.v212
  store i64 %4428, i64* %3, align 8
  br i1 %2569, label %block_41052d, label %block_.L_41068c

block_41052d:                                     ; preds = %block_.L_410513
  %4429 = add i64 %4428, 3
  store i64 %4429, i64* %3, align 8
  %4430 = load i32, i32* %2532, align 4
  %4431 = add i32 %4430, 20
  %4432 = lshr i32 %4431, 31
  %4433 = add i32 %4430, 40
  %4434 = zext i32 %4433 to i64
  store i64 %4434, i64* %RAX.i2706, align 8
  %4435 = icmp ugt i32 %4431, -21
  %4436 = zext i1 %4435 to i8
  store i8 %4436, i8* %14, align 1
  %4437 = and i32 %4433, 255
  %4438 = tail call i32 @llvm.ctpop.i32(i32 %4437)
  %4439 = trunc i32 %4438 to i8
  %4440 = and i8 %4439, 1
  %4441 = xor i8 %4440, 1
  store i8 %4441, i8* %21, align 1
  %4442 = xor i32 %4431, 16
  %4443 = xor i32 %4442, %4433
  %4444 = lshr i32 %4443, 4
  %4445 = trunc i32 %4444 to i8
  %4446 = and i8 %4445, 1
  store i8 %4446, i8* %26, align 1
  %4447 = icmp eq i32 %4433, 0
  %4448 = zext i1 %4447 to i8
  store i8 %4448, i8* %29, align 1
  %4449 = lshr i32 %4433, 31
  %4450 = trunc i32 %4449 to i8
  store i8 %4450, i8* %32, align 1
  %4451 = xor i32 %4449, %4432
  %4452 = add nuw nsw i32 %4451, %4449
  %4453 = icmp eq i32 %4452, 2
  %4454 = zext i1 %4453 to i8
  store i8 %4454, i8* %38, align 1
  %4455 = sext i32 %4433 to i64
  store i64 %4455, i64* %RCX.i2558, align 8
  %4456 = add nsw i64 %4455, 12099168
  %4457 = add i64 %4428, 20
  store i64 %4457, i64* %3, align 8
  %4458 = inttoptr i64 %4456 to i8*
  %4459 = load i8, i8* %4458, align 1
  %4460 = zext i8 %4459 to i64
  store i64 %4460, i64* %RAX.i2706, align 8
  %4461 = zext i8 %4459 to i32
  %4462 = add i64 %2202, -12
  %4463 = add i64 %4428, 23
  store i64 %4463, i64* %3, align 8
  %4464 = inttoptr i64 %4462 to i32*
  %4465 = load i32, i32* %4464, align 4
  %4466 = sub i32 %4461, %4465
  %4467 = icmp ult i32 %4461, %4465
  %4468 = zext i1 %4467 to i8
  store i8 %4468, i8* %14, align 1
  %4469 = and i32 %4466, 255
  %4470 = tail call i32 @llvm.ctpop.i32(i32 %4469)
  %4471 = trunc i32 %4470 to i8
  %4472 = and i8 %4471, 1
  %4473 = xor i8 %4472, 1
  store i8 %4473, i8* %21, align 1
  %4474 = xor i32 %4465, %4461
  %4475 = xor i32 %4474, %4466
  %4476 = lshr i32 %4475, 4
  %4477 = trunc i32 %4476 to i8
  %4478 = and i8 %4477, 1
  store i8 %4478, i8* %26, align 1
  %4479 = icmp eq i32 %4466, 0
  %4480 = zext i1 %4479 to i8
  store i8 %4480, i8* %29, align 1
  %4481 = lshr i32 %4466, 31
  %4482 = trunc i32 %4481 to i8
  store i8 %4482, i8* %32, align 1
  %4483 = lshr i32 %4465, 31
  %4484 = add nuw nsw i32 %4481, %4483
  %4485 = icmp eq i32 %4484, 2
  %4486 = zext i1 %4485 to i8
  store i8 %4486, i8* %38, align 1
  %.v252 = select i1 %4479, i64 29, i64 57
  %4487 = add i64 %4428, %.v252
  store i64 %4487, i64* %3, align 8
  br i1 %4479, label %block_41054a, label %block_.L_410566

block_41054a:                                     ; preds = %block_41052d
  %4488 = load i64, i64* %RBP.i, align 8
  %4489 = add i64 %4488, -8
  %4490 = add i64 %4487, 3
  store i64 %4490, i64* %3, align 8
  %4491 = inttoptr i64 %4489 to i32*
  %4492 = load i32, i32* %4491, align 4
  %4493 = add i32 %4492, 20
  %4494 = lshr i32 %4493, 31
  %4495 = add i32 %4492, 40
  %4496 = zext i32 %4495 to i64
  store i64 %4496, i64* %RAX.i2706, align 8
  %4497 = icmp ugt i32 %4493, -21
  %4498 = zext i1 %4497 to i8
  store i8 %4498, i8* %14, align 1
  %4499 = and i32 %4495, 255
  %4500 = tail call i32 @llvm.ctpop.i32(i32 %4499)
  %4501 = trunc i32 %4500 to i8
  %4502 = and i8 %4501, 1
  %4503 = xor i8 %4502, 1
  store i8 %4503, i8* %21, align 1
  %4504 = xor i32 %4493, 16
  %4505 = xor i32 %4504, %4495
  %4506 = lshr i32 %4505, 4
  %4507 = trunc i32 %4506 to i8
  %4508 = and i8 %4507, 1
  store i8 %4508, i8* %26, align 1
  %4509 = icmp eq i32 %4495, 0
  %4510 = zext i1 %4509 to i8
  store i8 %4510, i8* %29, align 1
  %4511 = lshr i32 %4495, 31
  %4512 = trunc i32 %4511 to i8
  store i8 %4512, i8* %32, align 1
  %4513 = xor i32 %4511, %4494
  %4514 = add nuw nsw i32 %4513, %4511
  %4515 = icmp eq i32 %4514, 2
  %4516 = zext i1 %4515 to i8
  store i8 %4516, i8* %38, align 1
  %4517 = sext i32 %4495 to i64
  store i64 %4517, i64* %RCX.i2558, align 8
  %4518 = shl nsw i64 %4517, 2
  %4519 = add nsw i64 %4518, 11187184
  %4520 = add i64 %4487, 19
  store i64 %4520, i64* %3, align 8
  %4521 = inttoptr i64 %4519 to i32*
  %4522 = load i32, i32* %4521, align 4
  %4523 = zext i32 %4522 to i64
  store i64 %4523, i64* %RAX.i2706, align 8
  %4524 = add i64 %4488, -20
  %4525 = add i64 %4487, 22
  store i64 %4525, i64* %3, align 8
  %4526 = inttoptr i64 %4524 to i32*
  %4527 = load i32, i32* %4526, align 4
  %4528 = sub i32 %4522, %4527
  %4529 = icmp ult i32 %4522, %4527
  %4530 = zext i1 %4529 to i8
  store i8 %4530, i8* %14, align 1
  %4531 = and i32 %4528, 255
  %4532 = tail call i32 @llvm.ctpop.i32(i32 %4531)
  %4533 = trunc i32 %4532 to i8
  %4534 = and i8 %4533, 1
  %4535 = xor i8 %4534, 1
  store i8 %4535, i8* %21, align 1
  %4536 = xor i32 %4527, %4522
  %4537 = xor i32 %4536, %4528
  %4538 = lshr i32 %4537, 4
  %4539 = trunc i32 %4538 to i8
  %4540 = and i8 %4539, 1
  store i8 %4540, i8* %26, align 1
  %4541 = icmp eq i32 %4528, 0
  %4542 = zext i1 %4541 to i8
  store i8 %4542, i8* %29, align 1
  %4543 = lshr i32 %4528, 31
  %4544 = trunc i32 %4543 to i8
  store i8 %4544, i8* %32, align 1
  %4545 = lshr i32 %4522, 31
  %4546 = lshr i32 %4527, 31
  %4547 = xor i32 %4546, %4545
  %4548 = xor i32 %4543, %4545
  %4549 = add nuw nsw i32 %4548, %4547
  %4550 = icmp eq i32 %4549, 2
  %4551 = zext i1 %4550 to i8
  store i8 %4551, i8* %38, align 1
  %.v263 = select i1 %4541, i64 322, i64 28
  %4552 = add i64 %4487, %.v263
  store i64 %4552, i64* %3, align 8
  br i1 %4541, label %block_.L_41068c, label %block_.L_410566

block_.L_410566:                                  ; preds = %block_41052d, %block_41054a
  %4553 = phi i64 [ %4552, %block_41054a ], [ %4487, %block_41052d ]
  %4554 = load i64, i64* %RBP.i, align 8
  %4555 = add i64 %4554, -8
  %4556 = add i64 %4553, 3
  store i64 %4556, i64* %3, align 8
  %4557 = inttoptr i64 %4555 to i32*
  %4558 = load i32, i32* %4557, align 4
  %4559 = add i32 %4558, 20
  %4560 = icmp eq i32 %4559, 0
  %4561 = zext i1 %4560 to i8
  %4562 = lshr i32 %4559, 31
  %4563 = add i32 %4558, 19
  %4564 = zext i32 %4563 to i64
  store i64 %4564, i64* %RAX.i2706, align 8
  store i8 %4561, i8* %14, align 1
  %4565 = and i32 %4563, 255
  %4566 = tail call i32 @llvm.ctpop.i32(i32 %4565)
  %4567 = trunc i32 %4566 to i8
  %4568 = and i8 %4567, 1
  %4569 = xor i8 %4568, 1
  store i8 %4569, i8* %21, align 1
  %4570 = xor i32 %4563, %4559
  %4571 = lshr i32 %4570, 4
  %4572 = trunc i32 %4571 to i8
  %4573 = and i8 %4572, 1
  store i8 %4573, i8* %26, align 1
  %4574 = icmp eq i32 %4563, 0
  %4575 = zext i1 %4574 to i8
  store i8 %4575, i8* %29, align 1
  %4576 = lshr i32 %4563, 31
  %4577 = trunc i32 %4576 to i8
  store i8 %4577, i8* %32, align 1
  %4578 = xor i32 %4576, %4562
  %4579 = add nuw nsw i32 %4578, %4562
  %4580 = icmp eq i32 %4579, 2
  %4581 = zext i1 %4580 to i8
  store i8 %4581, i8* %38, align 1
  %4582 = sext i32 %4563 to i64
  store i64 %4582, i64* %RCX.i2558, align 8
  %4583 = add nsw i64 %4582, 12099168
  %4584 = add i64 %4553, 20
  store i64 %4584, i64* %3, align 8
  %4585 = inttoptr i64 %4583 to i8*
  %4586 = load i8, i8* %4585, align 1
  %4587 = zext i8 %4586 to i64
  store i64 %4587, i64* %RAX.i2706, align 8
  %4588 = zext i8 %4586 to i32
  %4589 = add i64 %4554, -12
  %4590 = add i64 %4553, 23
  store i64 %4590, i64* %3, align 8
  %4591 = inttoptr i64 %4589 to i32*
  %4592 = load i32, i32* %4591, align 4
  %4593 = sub i32 %4588, %4592
  %4594 = icmp ult i32 %4588, %4592
  %4595 = zext i1 %4594 to i8
  store i8 %4595, i8* %14, align 1
  %4596 = and i32 %4593, 255
  %4597 = tail call i32 @llvm.ctpop.i32(i32 %4596)
  %4598 = trunc i32 %4597 to i8
  %4599 = and i8 %4598, 1
  %4600 = xor i8 %4599, 1
  store i8 %4600, i8* %21, align 1
  %4601 = xor i32 %4592, %4588
  %4602 = xor i32 %4601, %4593
  %4603 = lshr i32 %4602, 4
  %4604 = trunc i32 %4603 to i8
  %4605 = and i8 %4604, 1
  store i8 %4605, i8* %26, align 1
  %4606 = icmp eq i32 %4593, 0
  %4607 = zext i1 %4606 to i8
  store i8 %4607, i8* %29, align 1
  %4608 = lshr i32 %4593, 31
  %4609 = trunc i32 %4608 to i8
  store i8 %4609, i8* %32, align 1
  %4610 = lshr i32 %4592, 31
  %4611 = add nuw nsw i32 %4608, %4610
  %4612 = icmp eq i32 %4611, 2
  %4613 = zext i1 %4612 to i8
  store i8 %4613, i8* %38, align 1
  %.v253 = select i1 %4606, i64 29, i64 57
  %4614 = add i64 %4553, %.v253
  store i64 %4614, i64* %3, align 8
  br i1 %4606, label %block_410583, label %block_.L_41059f

block_410583:                                     ; preds = %block_.L_410566
  %4615 = load i64, i64* %RBP.i, align 8
  %4616 = add i64 %4615, -8
  %4617 = add i64 %4614, 3
  store i64 %4617, i64* %3, align 8
  %4618 = inttoptr i64 %4616 to i32*
  %4619 = load i32, i32* %4618, align 4
  %4620 = add i32 %4619, 20
  %4621 = icmp eq i32 %4620, 0
  %4622 = zext i1 %4621 to i8
  %4623 = lshr i32 %4620, 31
  %4624 = add i32 %4619, 19
  %4625 = zext i32 %4624 to i64
  store i64 %4625, i64* %RAX.i2706, align 8
  store i8 %4622, i8* %14, align 1
  %4626 = and i32 %4624, 255
  %4627 = tail call i32 @llvm.ctpop.i32(i32 %4626)
  %4628 = trunc i32 %4627 to i8
  %4629 = and i8 %4628, 1
  %4630 = xor i8 %4629, 1
  store i8 %4630, i8* %21, align 1
  %4631 = xor i32 %4624, %4620
  %4632 = lshr i32 %4631, 4
  %4633 = trunc i32 %4632 to i8
  %4634 = and i8 %4633, 1
  store i8 %4634, i8* %26, align 1
  %4635 = icmp eq i32 %4624, 0
  %4636 = zext i1 %4635 to i8
  store i8 %4636, i8* %29, align 1
  %4637 = lshr i32 %4624, 31
  %4638 = trunc i32 %4637 to i8
  store i8 %4638, i8* %32, align 1
  %4639 = xor i32 %4637, %4623
  %4640 = add nuw nsw i32 %4639, %4623
  %4641 = icmp eq i32 %4640, 2
  %4642 = zext i1 %4641 to i8
  store i8 %4642, i8* %38, align 1
  %4643 = sext i32 %4624 to i64
  store i64 %4643, i64* %RCX.i2558, align 8
  %4644 = shl nsw i64 %4643, 2
  %4645 = add nsw i64 %4644, 11187184
  %4646 = add i64 %4614, 19
  store i64 %4646, i64* %3, align 8
  %4647 = inttoptr i64 %4645 to i32*
  %4648 = load i32, i32* %4647, align 4
  %4649 = zext i32 %4648 to i64
  store i64 %4649, i64* %RAX.i2706, align 8
  %4650 = add i64 %4615, -20
  %4651 = add i64 %4614, 22
  store i64 %4651, i64* %3, align 8
  %4652 = inttoptr i64 %4650 to i32*
  %4653 = load i32, i32* %4652, align 4
  %4654 = sub i32 %4648, %4653
  %4655 = icmp ult i32 %4648, %4653
  %4656 = zext i1 %4655 to i8
  store i8 %4656, i8* %14, align 1
  %4657 = and i32 %4654, 255
  %4658 = tail call i32 @llvm.ctpop.i32(i32 %4657)
  %4659 = trunc i32 %4658 to i8
  %4660 = and i8 %4659, 1
  %4661 = xor i8 %4660, 1
  store i8 %4661, i8* %21, align 1
  %4662 = xor i32 %4653, %4648
  %4663 = xor i32 %4662, %4654
  %4664 = lshr i32 %4663, 4
  %4665 = trunc i32 %4664 to i8
  %4666 = and i8 %4665, 1
  store i8 %4666, i8* %26, align 1
  %4667 = icmp eq i32 %4654, 0
  %4668 = zext i1 %4667 to i8
  store i8 %4668, i8* %29, align 1
  %4669 = lshr i32 %4654, 31
  %4670 = trunc i32 %4669 to i8
  store i8 %4670, i8* %32, align 1
  %4671 = lshr i32 %4648, 31
  %4672 = lshr i32 %4653, 31
  %4673 = xor i32 %4672, %4671
  %4674 = xor i32 %4669, %4671
  %4675 = add nuw nsw i32 %4674, %4673
  %4676 = icmp eq i32 %4675, 2
  %4677 = zext i1 %4676 to i8
  store i8 %4677, i8* %38, align 1
  %.v262 = select i1 %4667, i64 265, i64 28
  %4678 = add i64 %4614, %.v262
  store i64 %4678, i64* %3, align 8
  br i1 %4667, label %block_.L_41068c, label %block_.L_41059f

block_.L_41059f:                                  ; preds = %block_.L_410566, %block_410583
  %4679 = phi i64 [ %4678, %block_410583 ], [ %4614, %block_.L_410566 ]
  %4680 = load i64, i64* %RBP.i, align 8
  %4681 = add i64 %4680, -8
  %4682 = add i64 %4679, 3
  store i64 %4682, i64* %3, align 8
  %4683 = inttoptr i64 %4681 to i32*
  %4684 = load i32, i32* %4683, align 4
  %4685 = add i32 %4684, 20
  %4686 = lshr i32 %4685, 31
  %4687 = add i32 %4684, 21
  %4688 = zext i32 %4687 to i64
  store i64 %4688, i64* %RAX.i2706, align 8
  %4689 = icmp eq i32 %4685, -1
  %4690 = icmp eq i32 %4687, 0
  %4691 = or i1 %4689, %4690
  %4692 = zext i1 %4691 to i8
  store i8 %4692, i8* %14, align 1
  %4693 = and i32 %4687, 255
  %4694 = tail call i32 @llvm.ctpop.i32(i32 %4693)
  %4695 = trunc i32 %4694 to i8
  %4696 = and i8 %4695, 1
  %4697 = xor i8 %4696, 1
  store i8 %4697, i8* %21, align 1
  %4698 = xor i32 %4687, %4685
  %4699 = lshr i32 %4698, 4
  %4700 = trunc i32 %4699 to i8
  %4701 = and i8 %4700, 1
  store i8 %4701, i8* %26, align 1
  %4702 = zext i1 %4690 to i8
  store i8 %4702, i8* %29, align 1
  %4703 = lshr i32 %4687, 31
  %4704 = trunc i32 %4703 to i8
  store i8 %4704, i8* %32, align 1
  %4705 = xor i32 %4703, %4686
  %4706 = add nuw nsw i32 %4705, %4703
  %4707 = icmp eq i32 %4706, 2
  %4708 = zext i1 %4707 to i8
  store i8 %4708, i8* %38, align 1
  %4709 = sext i32 %4687 to i64
  store i64 %4709, i64* %RCX.i2558, align 8
  %4710 = add nsw i64 %4709, 12099168
  %4711 = add i64 %4679, 20
  store i64 %4711, i64* %3, align 8
  %4712 = inttoptr i64 %4710 to i8*
  %4713 = load i8, i8* %4712, align 1
  %4714 = zext i8 %4713 to i64
  store i64 %4714, i64* %RAX.i2706, align 8
  %4715 = zext i8 %4713 to i32
  %4716 = add i64 %4680, -12
  %4717 = add i64 %4679, 23
  store i64 %4717, i64* %3, align 8
  %4718 = inttoptr i64 %4716 to i32*
  %4719 = load i32, i32* %4718, align 4
  %4720 = sub i32 %4715, %4719
  %4721 = icmp ult i32 %4715, %4719
  %4722 = zext i1 %4721 to i8
  store i8 %4722, i8* %14, align 1
  %4723 = and i32 %4720, 255
  %4724 = tail call i32 @llvm.ctpop.i32(i32 %4723)
  %4725 = trunc i32 %4724 to i8
  %4726 = and i8 %4725, 1
  %4727 = xor i8 %4726, 1
  store i8 %4727, i8* %21, align 1
  %4728 = xor i32 %4719, %4715
  %4729 = xor i32 %4728, %4720
  %4730 = lshr i32 %4729, 4
  %4731 = trunc i32 %4730 to i8
  %4732 = and i8 %4731, 1
  store i8 %4732, i8* %26, align 1
  %4733 = icmp eq i32 %4720, 0
  %4734 = zext i1 %4733 to i8
  store i8 %4734, i8* %29, align 1
  %4735 = lshr i32 %4720, 31
  %4736 = trunc i32 %4735 to i8
  store i8 %4736, i8* %32, align 1
  %4737 = lshr i32 %4719, 31
  %4738 = add nuw nsw i32 %4735, %4737
  %4739 = icmp eq i32 %4738, 2
  %4740 = zext i1 %4739 to i8
  store i8 %4740, i8* %38, align 1
  %.v254 = select i1 %4733, i64 29, i64 57
  %4741 = add i64 %4679, %.v254
  store i64 %4741, i64* %3, align 8
  br i1 %4733, label %block_4105bc, label %block_.L_4105d8

block_4105bc:                                     ; preds = %block_.L_41059f
  %4742 = load i64, i64* %RBP.i, align 8
  %4743 = add i64 %4742, -8
  %4744 = add i64 %4741, 3
  store i64 %4744, i64* %3, align 8
  %4745 = inttoptr i64 %4743 to i32*
  %4746 = load i32, i32* %4745, align 4
  %4747 = add i32 %4746, 20
  %4748 = lshr i32 %4747, 31
  %4749 = add i32 %4746, 21
  %4750 = zext i32 %4749 to i64
  store i64 %4750, i64* %RAX.i2706, align 8
  %4751 = icmp eq i32 %4747, -1
  %4752 = icmp eq i32 %4749, 0
  %4753 = or i1 %4751, %4752
  %4754 = zext i1 %4753 to i8
  store i8 %4754, i8* %14, align 1
  %4755 = and i32 %4749, 255
  %4756 = tail call i32 @llvm.ctpop.i32(i32 %4755)
  %4757 = trunc i32 %4756 to i8
  %4758 = and i8 %4757, 1
  %4759 = xor i8 %4758, 1
  store i8 %4759, i8* %21, align 1
  %4760 = xor i32 %4749, %4747
  %4761 = lshr i32 %4760, 4
  %4762 = trunc i32 %4761 to i8
  %4763 = and i8 %4762, 1
  store i8 %4763, i8* %26, align 1
  %4764 = zext i1 %4752 to i8
  store i8 %4764, i8* %29, align 1
  %4765 = lshr i32 %4749, 31
  %4766 = trunc i32 %4765 to i8
  store i8 %4766, i8* %32, align 1
  %4767 = xor i32 %4765, %4748
  %4768 = add nuw nsw i32 %4767, %4765
  %4769 = icmp eq i32 %4768, 2
  %4770 = zext i1 %4769 to i8
  store i8 %4770, i8* %38, align 1
  %4771 = sext i32 %4749 to i64
  store i64 %4771, i64* %RCX.i2558, align 8
  %4772 = shl nsw i64 %4771, 2
  %4773 = add nsw i64 %4772, 11187184
  %4774 = add i64 %4741, 19
  store i64 %4774, i64* %3, align 8
  %4775 = inttoptr i64 %4773 to i32*
  %4776 = load i32, i32* %4775, align 4
  %4777 = zext i32 %4776 to i64
  store i64 %4777, i64* %RAX.i2706, align 8
  %4778 = add i64 %4742, -20
  %4779 = add i64 %4741, 22
  store i64 %4779, i64* %3, align 8
  %4780 = inttoptr i64 %4778 to i32*
  %4781 = load i32, i32* %4780, align 4
  %4782 = sub i32 %4776, %4781
  %4783 = icmp ult i32 %4776, %4781
  %4784 = zext i1 %4783 to i8
  store i8 %4784, i8* %14, align 1
  %4785 = and i32 %4782, 255
  %4786 = tail call i32 @llvm.ctpop.i32(i32 %4785)
  %4787 = trunc i32 %4786 to i8
  %4788 = and i8 %4787, 1
  %4789 = xor i8 %4788, 1
  store i8 %4789, i8* %21, align 1
  %4790 = xor i32 %4781, %4776
  %4791 = xor i32 %4790, %4782
  %4792 = lshr i32 %4791, 4
  %4793 = trunc i32 %4792 to i8
  %4794 = and i8 %4793, 1
  store i8 %4794, i8* %26, align 1
  %4795 = icmp eq i32 %4782, 0
  %4796 = zext i1 %4795 to i8
  store i8 %4796, i8* %29, align 1
  %4797 = lshr i32 %4782, 31
  %4798 = trunc i32 %4797 to i8
  store i8 %4798, i8* %32, align 1
  %4799 = lshr i32 %4776, 31
  %4800 = lshr i32 %4781, 31
  %4801 = xor i32 %4800, %4799
  %4802 = xor i32 %4797, %4799
  %4803 = add nuw nsw i32 %4802, %4801
  %4804 = icmp eq i32 %4803, 2
  %4805 = zext i1 %4804 to i8
  store i8 %4805, i8* %38, align 1
  %.v261 = select i1 %4795, i64 208, i64 28
  %4806 = add i64 %4741, %.v261
  store i64 %4806, i64* %3, align 8
  br i1 %4795, label %block_.L_41068c, label %block_.L_4105d8

block_.L_4105d8:                                  ; preds = %block_.L_41059f, %block_4105bc
  %4807 = phi i64 [ %4806, %block_4105bc ], [ %4741, %block_.L_41059f ]
  %4808 = load i64, i64* %RBP.i, align 8
  %4809 = add i64 %4808, -8
  %4810 = add i64 %4807, 3
  store i64 %4810, i64* %3, align 8
  %4811 = inttoptr i64 %4809 to i32*
  %4812 = load i32, i32* %4811, align 4
  %4813 = add i32 %4812, 20
  %4814 = lshr i32 %4813, 31
  %4815 = add i32 %4812, 40
  %4816 = zext i32 %4815 to i64
  store i64 %4816, i64* %RAX.i2706, align 8
  %4817 = icmp ugt i32 %4813, -21
  %4818 = zext i1 %4817 to i8
  store i8 %4818, i8* %14, align 1
  %4819 = and i32 %4815, 255
  %4820 = tail call i32 @llvm.ctpop.i32(i32 %4819)
  %4821 = trunc i32 %4820 to i8
  %4822 = and i8 %4821, 1
  %4823 = xor i8 %4822, 1
  store i8 %4823, i8* %21, align 1
  %4824 = xor i32 %4813, 16
  %4825 = xor i32 %4824, %4815
  %4826 = lshr i32 %4825, 4
  %4827 = trunc i32 %4826 to i8
  %4828 = and i8 %4827, 1
  store i8 %4828, i8* %26, align 1
  %4829 = icmp eq i32 %4815, 0
  %4830 = zext i1 %4829 to i8
  store i8 %4830, i8* %29, align 1
  %4831 = lshr i32 %4815, 31
  %4832 = trunc i32 %4831 to i8
  store i8 %4832, i8* %32, align 1
  %4833 = xor i32 %4831, %4814
  %4834 = add nuw nsw i32 %4833, %4831
  %4835 = icmp eq i32 %4834, 2
  %4836 = zext i1 %4835 to i8
  store i8 %4836, i8* %38, align 1
  %4837 = sext i32 %4815 to i64
  store i64 %4837, i64* %RCX.i2558, align 8
  %4838 = add nsw i64 %4837, 12099168
  %4839 = add i64 %4807, 20
  store i64 %4839, i64* %3, align 8
  %4840 = inttoptr i64 %4838 to i8*
  %4841 = load i8, i8* %4840, align 1
  %4842 = zext i8 %4841 to i64
  store i64 %4842, i64* %RAX.i2706, align 8
  %4843 = zext i8 %4841 to i32
  %4844 = add i64 %4808, -12
  %4845 = add i64 %4807, 23
  store i64 %4845, i64* %3, align 8
  %4846 = inttoptr i64 %4844 to i32*
  %4847 = load i32, i32* %4846, align 4
  %4848 = sub i32 %4843, %4847
  %4849 = icmp ult i32 %4843, %4847
  %4850 = zext i1 %4849 to i8
  store i8 %4850, i8* %14, align 1
  %4851 = and i32 %4848, 255
  %4852 = tail call i32 @llvm.ctpop.i32(i32 %4851)
  %4853 = trunc i32 %4852 to i8
  %4854 = and i8 %4853, 1
  %4855 = xor i8 %4854, 1
  store i8 %4855, i8* %21, align 1
  %4856 = xor i32 %4847, %4843
  %4857 = xor i32 %4856, %4848
  %4858 = lshr i32 %4857, 4
  %4859 = trunc i32 %4858 to i8
  %4860 = and i8 %4859, 1
  store i8 %4860, i8* %26, align 1
  %4861 = icmp eq i32 %4848, 0
  %4862 = zext i1 %4861 to i8
  store i8 %4862, i8* %29, align 1
  %4863 = lshr i32 %4848, 31
  %4864 = trunc i32 %4863 to i8
  store i8 %4864, i8* %32, align 1
  %4865 = lshr i32 %4847, 31
  %4866 = add nuw nsw i32 %4863, %4865
  %4867 = icmp eq i32 %4866, 2
  %4868 = zext i1 %4867 to i8
  store i8 %4868, i8* %38, align 1
  %.v255 = select i1 %4861, i64 29, i64 57
  %4869 = add i64 %4807, %.v255
  store i64 %4869, i64* %3, align 8
  br i1 %4861, label %block_4105f5, label %block_.L_410611

block_4105f5:                                     ; preds = %block_.L_4105d8
  %4870 = load i64, i64* %RBP.i, align 8
  %4871 = add i64 %4870, -8
  %4872 = add i64 %4869, 3
  store i64 %4872, i64* %3, align 8
  %4873 = inttoptr i64 %4871 to i32*
  %4874 = load i32, i32* %4873, align 4
  %4875 = add i32 %4874, 20
  %4876 = lshr i32 %4875, 31
  %4877 = add i32 %4874, 40
  %4878 = zext i32 %4877 to i64
  store i64 %4878, i64* %RAX.i2706, align 8
  %4879 = icmp ugt i32 %4875, -21
  %4880 = zext i1 %4879 to i8
  store i8 %4880, i8* %14, align 1
  %4881 = and i32 %4877, 255
  %4882 = tail call i32 @llvm.ctpop.i32(i32 %4881)
  %4883 = trunc i32 %4882 to i8
  %4884 = and i8 %4883, 1
  %4885 = xor i8 %4884, 1
  store i8 %4885, i8* %21, align 1
  %4886 = xor i32 %4875, 16
  %4887 = xor i32 %4886, %4877
  %4888 = lshr i32 %4887, 4
  %4889 = trunc i32 %4888 to i8
  %4890 = and i8 %4889, 1
  store i8 %4890, i8* %26, align 1
  %4891 = icmp eq i32 %4877, 0
  %4892 = zext i1 %4891 to i8
  store i8 %4892, i8* %29, align 1
  %4893 = lshr i32 %4877, 31
  %4894 = trunc i32 %4893 to i8
  store i8 %4894, i8* %32, align 1
  %4895 = xor i32 %4893, %4876
  %4896 = add nuw nsw i32 %4895, %4893
  %4897 = icmp eq i32 %4896, 2
  %4898 = zext i1 %4897 to i8
  store i8 %4898, i8* %38, align 1
  %4899 = sext i32 %4877 to i64
  store i64 %4899, i64* %RCX.i2558, align 8
  %4900 = shl nsw i64 %4899, 2
  %4901 = add nsw i64 %4900, 11187184
  %4902 = add i64 %4869, 19
  store i64 %4902, i64* %3, align 8
  %4903 = inttoptr i64 %4901 to i32*
  %4904 = load i32, i32* %4903, align 4
  %4905 = zext i32 %4904 to i64
  store i64 %4905, i64* %RAX.i2706, align 8
  %4906 = add i64 %4870, -24
  %4907 = add i64 %4869, 22
  store i64 %4907, i64* %3, align 8
  %4908 = inttoptr i64 %4906 to i32*
  %4909 = load i32, i32* %4908, align 4
  %4910 = sub i32 %4904, %4909
  %4911 = icmp ult i32 %4904, %4909
  %4912 = zext i1 %4911 to i8
  store i8 %4912, i8* %14, align 1
  %4913 = and i32 %4910, 255
  %4914 = tail call i32 @llvm.ctpop.i32(i32 %4913)
  %4915 = trunc i32 %4914 to i8
  %4916 = and i8 %4915, 1
  %4917 = xor i8 %4916, 1
  store i8 %4917, i8* %21, align 1
  %4918 = xor i32 %4909, %4904
  %4919 = xor i32 %4918, %4910
  %4920 = lshr i32 %4919, 4
  %4921 = trunc i32 %4920 to i8
  %4922 = and i8 %4921, 1
  store i8 %4922, i8* %26, align 1
  %4923 = icmp eq i32 %4910, 0
  %4924 = zext i1 %4923 to i8
  store i8 %4924, i8* %29, align 1
  %4925 = lshr i32 %4910, 31
  %4926 = trunc i32 %4925 to i8
  store i8 %4926, i8* %32, align 1
  %4927 = lshr i32 %4904, 31
  %4928 = lshr i32 %4909, 31
  %4929 = xor i32 %4928, %4927
  %4930 = xor i32 %4925, %4927
  %4931 = add nuw nsw i32 %4930, %4929
  %4932 = icmp eq i32 %4931, 2
  %4933 = zext i1 %4932 to i8
  store i8 %4933, i8* %38, align 1
  %.v260 = select i1 %4923, i64 151, i64 28
  %4934 = add i64 %4869, %.v260
  store i64 %4934, i64* %3, align 8
  br i1 %4923, label %block_.L_41068c, label %block_.L_410611

block_.L_410611:                                  ; preds = %block_.L_4105d8, %block_4105f5
  %4935 = phi i64 [ %4934, %block_4105f5 ], [ %4869, %block_.L_4105d8 ]
  %4936 = load i64, i64* %RBP.i, align 8
  %4937 = add i64 %4936, -8
  %4938 = add i64 %4935, 3
  store i64 %4938, i64* %3, align 8
  %4939 = inttoptr i64 %4937 to i32*
  %4940 = load i32, i32* %4939, align 4
  %4941 = add i32 %4940, 20
  %4942 = icmp eq i32 %4941, 0
  %4943 = zext i1 %4942 to i8
  %4944 = lshr i32 %4941, 31
  %4945 = add i32 %4940, 19
  %4946 = zext i32 %4945 to i64
  store i64 %4946, i64* %RAX.i2706, align 8
  store i8 %4943, i8* %14, align 1
  %4947 = and i32 %4945, 255
  %4948 = tail call i32 @llvm.ctpop.i32(i32 %4947)
  %4949 = trunc i32 %4948 to i8
  %4950 = and i8 %4949, 1
  %4951 = xor i8 %4950, 1
  store i8 %4951, i8* %21, align 1
  %4952 = xor i32 %4945, %4941
  %4953 = lshr i32 %4952, 4
  %4954 = trunc i32 %4953 to i8
  %4955 = and i8 %4954, 1
  store i8 %4955, i8* %26, align 1
  %4956 = icmp eq i32 %4945, 0
  %4957 = zext i1 %4956 to i8
  store i8 %4957, i8* %29, align 1
  %4958 = lshr i32 %4945, 31
  %4959 = trunc i32 %4958 to i8
  store i8 %4959, i8* %32, align 1
  %4960 = xor i32 %4958, %4944
  %4961 = add nuw nsw i32 %4960, %4944
  %4962 = icmp eq i32 %4961, 2
  %4963 = zext i1 %4962 to i8
  store i8 %4963, i8* %38, align 1
  %4964 = sext i32 %4945 to i64
  store i64 %4964, i64* %RCX.i2558, align 8
  %4965 = add nsw i64 %4964, 12099168
  %4966 = add i64 %4935, 20
  store i64 %4966, i64* %3, align 8
  %4967 = inttoptr i64 %4965 to i8*
  %4968 = load i8, i8* %4967, align 1
  %4969 = zext i8 %4968 to i64
  store i64 %4969, i64* %RAX.i2706, align 8
  %4970 = zext i8 %4968 to i32
  %4971 = add i64 %4936, -12
  %4972 = add i64 %4935, 23
  store i64 %4972, i64* %3, align 8
  %4973 = inttoptr i64 %4971 to i32*
  %4974 = load i32, i32* %4973, align 4
  %4975 = sub i32 %4970, %4974
  %4976 = icmp ult i32 %4970, %4974
  %4977 = zext i1 %4976 to i8
  store i8 %4977, i8* %14, align 1
  %4978 = and i32 %4975, 255
  %4979 = tail call i32 @llvm.ctpop.i32(i32 %4978)
  %4980 = trunc i32 %4979 to i8
  %4981 = and i8 %4980, 1
  %4982 = xor i8 %4981, 1
  store i8 %4982, i8* %21, align 1
  %4983 = xor i32 %4974, %4970
  %4984 = xor i32 %4983, %4975
  %4985 = lshr i32 %4984, 4
  %4986 = trunc i32 %4985 to i8
  %4987 = and i8 %4986, 1
  store i8 %4987, i8* %26, align 1
  %4988 = icmp eq i32 %4975, 0
  %4989 = zext i1 %4988 to i8
  store i8 %4989, i8* %29, align 1
  %4990 = lshr i32 %4975, 31
  %4991 = trunc i32 %4990 to i8
  store i8 %4991, i8* %32, align 1
  %4992 = lshr i32 %4974, 31
  %4993 = add nuw nsw i32 %4990, %4992
  %4994 = icmp eq i32 %4993, 2
  %4995 = zext i1 %4994 to i8
  store i8 %4995, i8* %38, align 1
  %.v256 = select i1 %4988, i64 29, i64 57
  %4996 = add i64 %4935, %.v256
  store i64 %4996, i64* %3, align 8
  br i1 %4988, label %block_41062e, label %block_.L_41064a

block_41062e:                                     ; preds = %block_.L_410611
  %4997 = load i64, i64* %RBP.i, align 8
  %4998 = add i64 %4997, -8
  %4999 = add i64 %4996, 3
  store i64 %4999, i64* %3, align 8
  %5000 = inttoptr i64 %4998 to i32*
  %5001 = load i32, i32* %5000, align 4
  %5002 = add i32 %5001, 20
  %5003 = icmp eq i32 %5002, 0
  %5004 = zext i1 %5003 to i8
  %5005 = lshr i32 %5002, 31
  %5006 = add i32 %5001, 19
  %5007 = zext i32 %5006 to i64
  store i64 %5007, i64* %RAX.i2706, align 8
  store i8 %5004, i8* %14, align 1
  %5008 = and i32 %5006, 255
  %5009 = tail call i32 @llvm.ctpop.i32(i32 %5008)
  %5010 = trunc i32 %5009 to i8
  %5011 = and i8 %5010, 1
  %5012 = xor i8 %5011, 1
  store i8 %5012, i8* %21, align 1
  %5013 = xor i32 %5006, %5002
  %5014 = lshr i32 %5013, 4
  %5015 = trunc i32 %5014 to i8
  %5016 = and i8 %5015, 1
  store i8 %5016, i8* %26, align 1
  %5017 = icmp eq i32 %5006, 0
  %5018 = zext i1 %5017 to i8
  store i8 %5018, i8* %29, align 1
  %5019 = lshr i32 %5006, 31
  %5020 = trunc i32 %5019 to i8
  store i8 %5020, i8* %32, align 1
  %5021 = xor i32 %5019, %5005
  %5022 = add nuw nsw i32 %5021, %5005
  %5023 = icmp eq i32 %5022, 2
  %5024 = zext i1 %5023 to i8
  store i8 %5024, i8* %38, align 1
  %5025 = sext i32 %5006 to i64
  store i64 %5025, i64* %RCX.i2558, align 8
  %5026 = shl nsw i64 %5025, 2
  %5027 = add nsw i64 %5026, 11187184
  %5028 = add i64 %4996, 19
  store i64 %5028, i64* %3, align 8
  %5029 = inttoptr i64 %5027 to i32*
  %5030 = load i32, i32* %5029, align 4
  %5031 = zext i32 %5030 to i64
  store i64 %5031, i64* %RAX.i2706, align 8
  %5032 = add i64 %4997, -24
  %5033 = add i64 %4996, 22
  store i64 %5033, i64* %3, align 8
  %5034 = inttoptr i64 %5032 to i32*
  %5035 = load i32, i32* %5034, align 4
  %5036 = sub i32 %5030, %5035
  %5037 = icmp ult i32 %5030, %5035
  %5038 = zext i1 %5037 to i8
  store i8 %5038, i8* %14, align 1
  %5039 = and i32 %5036, 255
  %5040 = tail call i32 @llvm.ctpop.i32(i32 %5039)
  %5041 = trunc i32 %5040 to i8
  %5042 = and i8 %5041, 1
  %5043 = xor i8 %5042, 1
  store i8 %5043, i8* %21, align 1
  %5044 = xor i32 %5035, %5030
  %5045 = xor i32 %5044, %5036
  %5046 = lshr i32 %5045, 4
  %5047 = trunc i32 %5046 to i8
  %5048 = and i8 %5047, 1
  store i8 %5048, i8* %26, align 1
  %5049 = icmp eq i32 %5036, 0
  %5050 = zext i1 %5049 to i8
  store i8 %5050, i8* %29, align 1
  %5051 = lshr i32 %5036, 31
  %5052 = trunc i32 %5051 to i8
  store i8 %5052, i8* %32, align 1
  %5053 = lshr i32 %5030, 31
  %5054 = lshr i32 %5035, 31
  %5055 = xor i32 %5054, %5053
  %5056 = xor i32 %5051, %5053
  %5057 = add nuw nsw i32 %5056, %5055
  %5058 = icmp eq i32 %5057, 2
  %5059 = zext i1 %5058 to i8
  store i8 %5059, i8* %38, align 1
  %.v259 = select i1 %5049, i64 94, i64 28
  %5060 = add i64 %4996, %.v259
  store i64 %5060, i64* %3, align 8
  br i1 %5049, label %block_.L_41068c, label %block_.L_41064a

block_.L_41064a:                                  ; preds = %block_.L_410611, %block_41062e
  %5061 = phi i64 [ %5060, %block_41062e ], [ %4996, %block_.L_410611 ]
  %5062 = load i64, i64* %RBP.i, align 8
  %5063 = add i64 %5062, -8
  %5064 = add i64 %5061, 3
  store i64 %5064, i64* %3, align 8
  %5065 = inttoptr i64 %5063 to i32*
  %5066 = load i32, i32* %5065, align 4
  %5067 = add i32 %5066, 20
  %5068 = lshr i32 %5067, 31
  %5069 = add i32 %5066, 21
  %5070 = zext i32 %5069 to i64
  store i64 %5070, i64* %RAX.i2706, align 8
  %5071 = icmp eq i32 %5067, -1
  %5072 = icmp eq i32 %5069, 0
  %5073 = or i1 %5071, %5072
  %5074 = zext i1 %5073 to i8
  store i8 %5074, i8* %14, align 1
  %5075 = and i32 %5069, 255
  %5076 = tail call i32 @llvm.ctpop.i32(i32 %5075)
  %5077 = trunc i32 %5076 to i8
  %5078 = and i8 %5077, 1
  %5079 = xor i8 %5078, 1
  store i8 %5079, i8* %21, align 1
  %5080 = xor i32 %5069, %5067
  %5081 = lshr i32 %5080, 4
  %5082 = trunc i32 %5081 to i8
  %5083 = and i8 %5082, 1
  store i8 %5083, i8* %26, align 1
  %5084 = zext i1 %5072 to i8
  store i8 %5084, i8* %29, align 1
  %5085 = lshr i32 %5069, 31
  %5086 = trunc i32 %5085 to i8
  store i8 %5086, i8* %32, align 1
  %5087 = xor i32 %5085, %5068
  %5088 = add nuw nsw i32 %5087, %5085
  %5089 = icmp eq i32 %5088, 2
  %5090 = zext i1 %5089 to i8
  store i8 %5090, i8* %38, align 1
  %5091 = sext i32 %5069 to i64
  store i64 %5091, i64* %RCX.i2558, align 8
  %5092 = add nsw i64 %5091, 12099168
  %5093 = add i64 %5061, 20
  store i64 %5093, i64* %3, align 8
  %5094 = inttoptr i64 %5092 to i8*
  %5095 = load i8, i8* %5094, align 1
  %5096 = zext i8 %5095 to i64
  store i64 %5096, i64* %RAX.i2706, align 8
  %5097 = zext i8 %5095 to i32
  %5098 = add i64 %5062, -12
  %5099 = add i64 %5061, 23
  store i64 %5099, i64* %3, align 8
  %5100 = inttoptr i64 %5098 to i32*
  %5101 = load i32, i32* %5100, align 4
  %5102 = sub i32 %5097, %5101
  %5103 = icmp ult i32 %5097, %5101
  %5104 = zext i1 %5103 to i8
  store i8 %5104, i8* %14, align 1
  %5105 = and i32 %5102, 255
  %5106 = tail call i32 @llvm.ctpop.i32(i32 %5105)
  %5107 = trunc i32 %5106 to i8
  %5108 = and i8 %5107, 1
  %5109 = xor i8 %5108, 1
  store i8 %5109, i8* %21, align 1
  %5110 = xor i32 %5101, %5097
  %5111 = xor i32 %5110, %5102
  %5112 = lshr i32 %5111, 4
  %5113 = trunc i32 %5112 to i8
  %5114 = and i8 %5113, 1
  store i8 %5114, i8* %26, align 1
  %5115 = icmp eq i32 %5102, 0
  %5116 = zext i1 %5115 to i8
  store i8 %5116, i8* %29, align 1
  %5117 = lshr i32 %5102, 31
  %5118 = trunc i32 %5117 to i8
  store i8 %5118, i8* %32, align 1
  %5119 = lshr i32 %5101, 31
  %5120 = add nuw nsw i32 %5117, %5119
  %5121 = icmp eq i32 %5120, 2
  %5122 = zext i1 %5121 to i8
  store i8 %5122, i8* %38, align 1
  %.v257 = select i1 %5115, i64 29, i64 57
  %5123 = add i64 %5061, %.v257
  store i64 %5123, i64* %3, align 8
  br i1 %5115, label %block_410667, label %block_.L_410683

block_410667:                                     ; preds = %block_.L_41064a
  %5124 = load i64, i64* %RBP.i, align 8
  %5125 = add i64 %5124, -8
  %5126 = add i64 %5123, 3
  store i64 %5126, i64* %3, align 8
  %5127 = inttoptr i64 %5125 to i32*
  %5128 = load i32, i32* %5127, align 4
  %5129 = add i32 %5128, 20
  %5130 = lshr i32 %5129, 31
  %5131 = add i32 %5128, 21
  %5132 = zext i32 %5131 to i64
  store i64 %5132, i64* %RAX.i2706, align 8
  %5133 = icmp eq i32 %5129, -1
  %5134 = icmp eq i32 %5131, 0
  %5135 = or i1 %5133, %5134
  %5136 = zext i1 %5135 to i8
  store i8 %5136, i8* %14, align 1
  %5137 = and i32 %5131, 255
  %5138 = tail call i32 @llvm.ctpop.i32(i32 %5137)
  %5139 = trunc i32 %5138 to i8
  %5140 = and i8 %5139, 1
  %5141 = xor i8 %5140, 1
  store i8 %5141, i8* %21, align 1
  %5142 = xor i32 %5131, %5129
  %5143 = lshr i32 %5142, 4
  %5144 = trunc i32 %5143 to i8
  %5145 = and i8 %5144, 1
  store i8 %5145, i8* %26, align 1
  %5146 = zext i1 %5134 to i8
  store i8 %5146, i8* %29, align 1
  %5147 = lshr i32 %5131, 31
  %5148 = trunc i32 %5147 to i8
  store i8 %5148, i8* %32, align 1
  %5149 = xor i32 %5147, %5130
  %5150 = add nuw nsw i32 %5149, %5147
  %5151 = icmp eq i32 %5150, 2
  %5152 = zext i1 %5151 to i8
  store i8 %5152, i8* %38, align 1
  %5153 = sext i32 %5131 to i64
  store i64 %5153, i64* %RCX.i2558, align 8
  %5154 = shl nsw i64 %5153, 2
  %5155 = add nsw i64 %5154, 11187184
  %5156 = add i64 %5123, 19
  store i64 %5156, i64* %3, align 8
  %5157 = inttoptr i64 %5155 to i32*
  %5158 = load i32, i32* %5157, align 4
  %5159 = zext i32 %5158 to i64
  store i64 %5159, i64* %RAX.i2706, align 8
  %5160 = add i64 %5124, -24
  %5161 = add i64 %5123, 22
  store i64 %5161, i64* %3, align 8
  %5162 = inttoptr i64 %5160 to i32*
  %5163 = load i32, i32* %5162, align 4
  %5164 = sub i32 %5158, %5163
  %5165 = icmp ult i32 %5158, %5163
  %5166 = zext i1 %5165 to i8
  store i8 %5166, i8* %14, align 1
  %5167 = and i32 %5164, 255
  %5168 = tail call i32 @llvm.ctpop.i32(i32 %5167)
  %5169 = trunc i32 %5168 to i8
  %5170 = and i8 %5169, 1
  %5171 = xor i8 %5170, 1
  store i8 %5171, i8* %21, align 1
  %5172 = xor i32 %5163, %5158
  %5173 = xor i32 %5172, %5164
  %5174 = lshr i32 %5173, 4
  %5175 = trunc i32 %5174 to i8
  %5176 = and i8 %5175, 1
  store i8 %5176, i8* %26, align 1
  %5177 = icmp eq i32 %5164, 0
  %5178 = zext i1 %5177 to i8
  store i8 %5178, i8* %29, align 1
  %5179 = lshr i32 %5164, 31
  %5180 = trunc i32 %5179 to i8
  store i8 %5180, i8* %32, align 1
  %5181 = lshr i32 %5158, 31
  %5182 = lshr i32 %5163, 31
  %5183 = xor i32 %5182, %5181
  %5184 = xor i32 %5179, %5181
  %5185 = add nuw nsw i32 %5184, %5183
  %5186 = icmp eq i32 %5185, 2
  %5187 = zext i1 %5186 to i8
  store i8 %5187, i8* %38, align 1
  %.v258 = select i1 %5177, i64 37, i64 28
  %5188 = add i64 %5123, %.v258
  store i64 %5188, i64* %3, align 8
  br i1 %5177, label %block_.L_41068c, label %block_.L_410683

block_.L_410683:                                  ; preds = %block_.L_41064a, %block_410667
  %5189 = phi i64 [ %5188, %block_410667 ], [ %5123, %block_.L_41064a ]
  %5190 = load i64, i64* %RBP.i, align 8
  %5191 = add i64 %5190, -28
  %5192 = add i64 %5189, 3
  store i64 %5192, i64* %3, align 8
  %5193 = inttoptr i64 %5191 to i32*
  %5194 = load i32, i32* %5193, align 4
  %5195 = add i32 %5194, 1
  %5196 = zext i32 %5195 to i64
  store i64 %5196, i64* %RAX.i2706, align 8
  %5197 = icmp eq i32 %5194, -1
  %5198 = icmp eq i32 %5195, 0
  %5199 = or i1 %5197, %5198
  %5200 = zext i1 %5199 to i8
  store i8 %5200, i8* %14, align 1
  %5201 = and i32 %5195, 255
  %5202 = tail call i32 @llvm.ctpop.i32(i32 %5201)
  %5203 = trunc i32 %5202 to i8
  %5204 = and i8 %5203, 1
  %5205 = xor i8 %5204, 1
  store i8 %5205, i8* %21, align 1
  %5206 = xor i32 %5195, %5194
  %5207 = lshr i32 %5206, 4
  %5208 = trunc i32 %5207 to i8
  %5209 = and i8 %5208, 1
  store i8 %5209, i8* %26, align 1
  %5210 = zext i1 %5198 to i8
  store i8 %5210, i8* %29, align 1
  %5211 = lshr i32 %5195, 31
  %5212 = trunc i32 %5211 to i8
  store i8 %5212, i8* %32, align 1
  %5213 = lshr i32 %5194, 31
  %5214 = xor i32 %5211, %5213
  %5215 = add nuw nsw i32 %5214, %5211
  %5216 = icmp eq i32 %5215, 2
  %5217 = zext i1 %5216 to i8
  store i8 %5217, i8* %38, align 1
  %5218 = add i64 %5189, 9
  store i64 %5218, i64* %3, align 8
  store i32 %5195, i32* %5193, align 4
  %.pre180 = load i64, i64* %3, align 8
  br label %block_.L_41068c

block_.L_41068c:                                  ; preds = %block_.L_410513, %block_.L_410683, %block_410667, %block_41062e, %block_4105f5, %block_4105bc, %block_410583, %block_41054a
  %5219 = phi i64 [ %.pre180, %block_.L_410683 ], [ %5188, %block_410667 ], [ %5060, %block_41062e ], [ %4934, %block_4105f5 ], [ %4806, %block_4105bc ], [ %4678, %block_410583 ], [ %4552, %block_41054a ], [ %4428, %block_.L_410513 ]
  %5220 = load i64, i64* %RBP.i, align 8
  %5221 = add i64 %5220, -8
  %5222 = add i64 %5219, 3
  store i64 %5222, i64* %3, align 8
  %5223 = inttoptr i64 %5221 to i32*
  %5224 = load i32, i32* %5223, align 4
  %5225 = add i32 %5224, -1
  %5226 = zext i32 %5225 to i64
  store i64 %5226, i64* %RAX.i2706, align 8
  %5227 = icmp eq i32 %5224, 0
  %5228 = zext i1 %5227 to i8
  store i8 %5228, i8* %14, align 1
  %5229 = and i32 %5225, 255
  %5230 = tail call i32 @llvm.ctpop.i32(i32 %5229)
  %5231 = trunc i32 %5230 to i8
  %5232 = and i8 %5231, 1
  %5233 = xor i8 %5232, 1
  store i8 %5233, i8* %21, align 1
  %5234 = xor i32 %5225, %5224
  %5235 = lshr i32 %5234, 4
  %5236 = trunc i32 %5235 to i8
  %5237 = and i8 %5236, 1
  store i8 %5237, i8* %26, align 1
  %5238 = icmp eq i32 %5225, 0
  %5239 = zext i1 %5238 to i8
  store i8 %5239, i8* %29, align 1
  %5240 = lshr i32 %5225, 31
  %5241 = trunc i32 %5240 to i8
  store i8 %5241, i8* %32, align 1
  %5242 = lshr i32 %5224, 31
  %5243 = xor i32 %5240, %5242
  %5244 = add nuw nsw i32 %5243, %5242
  %5245 = icmp eq i32 %5244, 2
  %5246 = zext i1 %5245 to i8
  store i8 %5246, i8* %38, align 1
  %5247 = sext i32 %5225 to i64
  store i64 %5247, i64* %RCX.i2558, align 8
  %5248 = add nsw i64 %5247, 12099168
  %5249 = add i64 %5219, 17
  store i64 %5249, i64* %3, align 8
  %5250 = inttoptr i64 %5248 to i8*
  %5251 = load i8, i8* %5250, align 1
  %5252 = zext i8 %5251 to i64
  store i64 %5252, i64* %RAX.i2706, align 8
  %5253 = zext i8 %5251 to i32
  store i8 0, i8* %14, align 1
  %5254 = tail call i32 @llvm.ctpop.i32(i32 %5253)
  %5255 = trunc i32 %5254 to i8
  %5256 = and i8 %5255, 1
  %5257 = xor i8 %5256, 1
  store i8 %5257, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5258 = icmp eq i8 %5251, 0
  %5259 = zext i1 %5258 to i8
  store i8 %5259, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v213 = select i1 %5258, i64 26, i64 377
  %5260 = add i64 %5219, %.v213
  store i64 %5260, i64* %3, align 8
  br i1 %5258, label %block_4106a6, label %block_.L_410805

block_4106a6:                                     ; preds = %block_.L_41068c
  %5261 = add i64 %5260, 3
  store i64 %5261, i64* %3, align 8
  %5262 = load i32, i32* %5223, align 4
  %5263 = add i32 %5262, -1
  %5264 = icmp eq i32 %5263, 0
  %5265 = zext i1 %5264 to i8
  %5266 = lshr i32 %5263, 31
  %5267 = add i32 %5262, -2
  %5268 = zext i32 %5267 to i64
  store i64 %5268, i64* %RAX.i2706, align 8
  store i8 %5265, i8* %14, align 1
  %5269 = and i32 %5267, 255
  %5270 = tail call i32 @llvm.ctpop.i32(i32 %5269)
  %5271 = trunc i32 %5270 to i8
  %5272 = and i8 %5271, 1
  %5273 = xor i8 %5272, 1
  store i8 %5273, i8* %21, align 1
  %5274 = xor i32 %5267, %5263
  %5275 = lshr i32 %5274, 4
  %5276 = trunc i32 %5275 to i8
  %5277 = and i8 %5276, 1
  store i8 %5277, i8* %26, align 1
  %5278 = icmp eq i32 %5267, 0
  %5279 = zext i1 %5278 to i8
  store i8 %5279, i8* %29, align 1
  %5280 = lshr i32 %5267, 31
  %5281 = trunc i32 %5280 to i8
  store i8 %5281, i8* %32, align 1
  %5282 = xor i32 %5280, %5266
  %5283 = add nuw nsw i32 %5282, %5266
  %5284 = icmp eq i32 %5283, 2
  %5285 = zext i1 %5284 to i8
  store i8 %5285, i8* %38, align 1
  %5286 = sext i32 %5267 to i64
  store i64 %5286, i64* %RCX.i2558, align 8
  %5287 = add nsw i64 %5286, 12099168
  %5288 = add i64 %5260, 20
  store i64 %5288, i64* %3, align 8
  %5289 = inttoptr i64 %5287 to i8*
  %5290 = load i8, i8* %5289, align 1
  %5291 = zext i8 %5290 to i64
  store i64 %5291, i64* %RAX.i2706, align 8
  %5292 = zext i8 %5290 to i32
  %5293 = add i64 %5220, -12
  %5294 = add i64 %5260, 23
  store i64 %5294, i64* %3, align 8
  %5295 = inttoptr i64 %5293 to i32*
  %5296 = load i32, i32* %5295, align 4
  %5297 = sub i32 %5292, %5296
  %5298 = icmp ult i32 %5292, %5296
  %5299 = zext i1 %5298 to i8
  store i8 %5299, i8* %14, align 1
  %5300 = and i32 %5297, 255
  %5301 = tail call i32 @llvm.ctpop.i32(i32 %5300)
  %5302 = trunc i32 %5301 to i8
  %5303 = and i8 %5302, 1
  %5304 = xor i8 %5303, 1
  store i8 %5304, i8* %21, align 1
  %5305 = xor i32 %5296, %5292
  %5306 = xor i32 %5305, %5297
  %5307 = lshr i32 %5306, 4
  %5308 = trunc i32 %5307 to i8
  %5309 = and i8 %5308, 1
  store i8 %5309, i8* %26, align 1
  %5310 = icmp eq i32 %5297, 0
  %5311 = zext i1 %5310 to i8
  store i8 %5311, i8* %29, align 1
  %5312 = lshr i32 %5297, 31
  %5313 = trunc i32 %5312 to i8
  store i8 %5313, i8* %32, align 1
  %5314 = lshr i32 %5296, 31
  %5315 = add nuw nsw i32 %5312, %5314
  %5316 = icmp eq i32 %5315, 2
  %5317 = zext i1 %5316 to i8
  store i8 %5317, i8* %38, align 1
  %.v240 = select i1 %5310, i64 29, i64 57
  %5318 = add i64 %5260, %.v240
  store i64 %5318, i64* %3, align 8
  br i1 %5310, label %block_4106c3, label %block_.L_4106df

block_4106c3:                                     ; preds = %block_4106a6
  %5319 = load i64, i64* %RBP.i, align 8
  %5320 = add i64 %5319, -8
  %5321 = add i64 %5318, 3
  store i64 %5321, i64* %3, align 8
  %5322 = inttoptr i64 %5320 to i32*
  %5323 = load i32, i32* %5322, align 4
  %5324 = add i32 %5323, -1
  %5325 = icmp eq i32 %5324, 0
  %5326 = zext i1 %5325 to i8
  %5327 = lshr i32 %5324, 31
  %5328 = add i32 %5323, -2
  %5329 = zext i32 %5328 to i64
  store i64 %5329, i64* %RAX.i2706, align 8
  store i8 %5326, i8* %14, align 1
  %5330 = and i32 %5328, 255
  %5331 = tail call i32 @llvm.ctpop.i32(i32 %5330)
  %5332 = trunc i32 %5331 to i8
  %5333 = and i8 %5332, 1
  %5334 = xor i8 %5333, 1
  store i8 %5334, i8* %21, align 1
  %5335 = xor i32 %5328, %5324
  %5336 = lshr i32 %5335, 4
  %5337 = trunc i32 %5336 to i8
  %5338 = and i8 %5337, 1
  store i8 %5338, i8* %26, align 1
  %5339 = icmp eq i32 %5328, 0
  %5340 = zext i1 %5339 to i8
  store i8 %5340, i8* %29, align 1
  %5341 = lshr i32 %5328, 31
  %5342 = trunc i32 %5341 to i8
  store i8 %5342, i8* %32, align 1
  %5343 = xor i32 %5341, %5327
  %5344 = add nuw nsw i32 %5343, %5327
  %5345 = icmp eq i32 %5344, 2
  %5346 = zext i1 %5345 to i8
  store i8 %5346, i8* %38, align 1
  %5347 = sext i32 %5328 to i64
  store i64 %5347, i64* %RCX.i2558, align 8
  %5348 = shl nsw i64 %5347, 2
  %5349 = add nsw i64 %5348, 11187184
  %5350 = add i64 %5318, 19
  store i64 %5350, i64* %3, align 8
  %5351 = inttoptr i64 %5349 to i32*
  %5352 = load i32, i32* %5351, align 4
  %5353 = zext i32 %5352 to i64
  store i64 %5353, i64* %RAX.i2706, align 8
  %5354 = add i64 %5319, -20
  %5355 = add i64 %5318, 22
  store i64 %5355, i64* %3, align 8
  %5356 = inttoptr i64 %5354 to i32*
  %5357 = load i32, i32* %5356, align 4
  %5358 = sub i32 %5352, %5357
  %5359 = icmp ult i32 %5352, %5357
  %5360 = zext i1 %5359 to i8
  store i8 %5360, i8* %14, align 1
  %5361 = and i32 %5358, 255
  %5362 = tail call i32 @llvm.ctpop.i32(i32 %5361)
  %5363 = trunc i32 %5362 to i8
  %5364 = and i8 %5363, 1
  %5365 = xor i8 %5364, 1
  store i8 %5365, i8* %21, align 1
  %5366 = xor i32 %5357, %5352
  %5367 = xor i32 %5366, %5358
  %5368 = lshr i32 %5367, 4
  %5369 = trunc i32 %5368 to i8
  %5370 = and i8 %5369, 1
  store i8 %5370, i8* %26, align 1
  %5371 = icmp eq i32 %5358, 0
  %5372 = zext i1 %5371 to i8
  store i8 %5372, i8* %29, align 1
  %5373 = lshr i32 %5358, 31
  %5374 = trunc i32 %5373 to i8
  store i8 %5374, i8* %32, align 1
  %5375 = lshr i32 %5352, 31
  %5376 = lshr i32 %5357, 31
  %5377 = xor i32 %5376, %5375
  %5378 = xor i32 %5373, %5375
  %5379 = add nuw nsw i32 %5378, %5377
  %5380 = icmp eq i32 %5379, 2
  %5381 = zext i1 %5380 to i8
  store i8 %5381, i8* %38, align 1
  %.v251 = select i1 %5371, i64 322, i64 28
  %5382 = add i64 %5318, %.v251
  store i64 %5382, i64* %3, align 8
  br i1 %5371, label %block_.L_410805, label %block_.L_4106df

block_.L_4106df:                                  ; preds = %block_4106a6, %block_4106c3
  %5383 = phi i64 [ %5382, %block_4106c3 ], [ %5318, %block_4106a6 ]
  %5384 = load i64, i64* %RBP.i, align 8
  %5385 = add i64 %5384, -8
  %5386 = add i64 %5383, 3
  store i64 %5386, i64* %3, align 8
  %5387 = inttoptr i64 %5385 to i32*
  %5388 = load i32, i32* %5387, align 4
  %5389 = add i32 %5388, -1
  %5390 = lshr i32 %5389, 31
  %5391 = add i32 %5388, -21
  %5392 = zext i32 %5391 to i64
  store i64 %5392, i64* %RAX.i2706, align 8
  %5393 = icmp ult i32 %5389, 20
  %5394 = zext i1 %5393 to i8
  store i8 %5394, i8* %14, align 1
  %5395 = and i32 %5391, 255
  %5396 = tail call i32 @llvm.ctpop.i32(i32 %5395)
  %5397 = trunc i32 %5396 to i8
  %5398 = and i8 %5397, 1
  %5399 = xor i8 %5398, 1
  store i8 %5399, i8* %21, align 1
  %5400 = xor i32 %5389, 16
  %5401 = xor i32 %5400, %5391
  %5402 = lshr i32 %5401, 4
  %5403 = trunc i32 %5402 to i8
  %5404 = and i8 %5403, 1
  store i8 %5404, i8* %26, align 1
  %5405 = icmp eq i32 %5391, 0
  %5406 = zext i1 %5405 to i8
  store i8 %5406, i8* %29, align 1
  %5407 = lshr i32 %5391, 31
  %5408 = trunc i32 %5407 to i8
  store i8 %5408, i8* %32, align 1
  %5409 = xor i32 %5407, %5390
  %5410 = add nuw nsw i32 %5409, %5390
  %5411 = icmp eq i32 %5410, 2
  %5412 = zext i1 %5411 to i8
  store i8 %5412, i8* %38, align 1
  %5413 = sext i32 %5391 to i64
  store i64 %5413, i64* %RCX.i2558, align 8
  %5414 = add nsw i64 %5413, 12099168
  %5415 = add i64 %5383, 20
  store i64 %5415, i64* %3, align 8
  %5416 = inttoptr i64 %5414 to i8*
  %5417 = load i8, i8* %5416, align 1
  %5418 = zext i8 %5417 to i64
  store i64 %5418, i64* %RAX.i2706, align 8
  %5419 = zext i8 %5417 to i32
  %5420 = add i64 %5384, -12
  %5421 = add i64 %5383, 23
  store i64 %5421, i64* %3, align 8
  %5422 = inttoptr i64 %5420 to i32*
  %5423 = load i32, i32* %5422, align 4
  %5424 = sub i32 %5419, %5423
  %5425 = icmp ult i32 %5419, %5423
  %5426 = zext i1 %5425 to i8
  store i8 %5426, i8* %14, align 1
  %5427 = and i32 %5424, 255
  %5428 = tail call i32 @llvm.ctpop.i32(i32 %5427)
  %5429 = trunc i32 %5428 to i8
  %5430 = and i8 %5429, 1
  %5431 = xor i8 %5430, 1
  store i8 %5431, i8* %21, align 1
  %5432 = xor i32 %5423, %5419
  %5433 = xor i32 %5432, %5424
  %5434 = lshr i32 %5433, 4
  %5435 = trunc i32 %5434 to i8
  %5436 = and i8 %5435, 1
  store i8 %5436, i8* %26, align 1
  %5437 = icmp eq i32 %5424, 0
  %5438 = zext i1 %5437 to i8
  store i8 %5438, i8* %29, align 1
  %5439 = lshr i32 %5424, 31
  %5440 = trunc i32 %5439 to i8
  store i8 %5440, i8* %32, align 1
  %5441 = lshr i32 %5423, 31
  %5442 = add nuw nsw i32 %5439, %5441
  %5443 = icmp eq i32 %5442, 2
  %5444 = zext i1 %5443 to i8
  store i8 %5444, i8* %38, align 1
  %.v241 = select i1 %5437, i64 29, i64 57
  %5445 = add i64 %5383, %.v241
  store i64 %5445, i64* %3, align 8
  br i1 %5437, label %block_4106fc, label %block_.L_410718

block_4106fc:                                     ; preds = %block_.L_4106df
  %5446 = load i64, i64* %RBP.i, align 8
  %5447 = add i64 %5446, -8
  %5448 = add i64 %5445, 3
  store i64 %5448, i64* %3, align 8
  %5449 = inttoptr i64 %5447 to i32*
  %5450 = load i32, i32* %5449, align 4
  %5451 = add i32 %5450, -1
  %5452 = lshr i32 %5451, 31
  %5453 = add i32 %5450, -21
  %5454 = zext i32 %5453 to i64
  store i64 %5454, i64* %RAX.i2706, align 8
  %5455 = icmp ult i32 %5451, 20
  %5456 = zext i1 %5455 to i8
  store i8 %5456, i8* %14, align 1
  %5457 = and i32 %5453, 255
  %5458 = tail call i32 @llvm.ctpop.i32(i32 %5457)
  %5459 = trunc i32 %5458 to i8
  %5460 = and i8 %5459, 1
  %5461 = xor i8 %5460, 1
  store i8 %5461, i8* %21, align 1
  %5462 = xor i32 %5451, 16
  %5463 = xor i32 %5462, %5453
  %5464 = lshr i32 %5463, 4
  %5465 = trunc i32 %5464 to i8
  %5466 = and i8 %5465, 1
  store i8 %5466, i8* %26, align 1
  %5467 = icmp eq i32 %5453, 0
  %5468 = zext i1 %5467 to i8
  store i8 %5468, i8* %29, align 1
  %5469 = lshr i32 %5453, 31
  %5470 = trunc i32 %5469 to i8
  store i8 %5470, i8* %32, align 1
  %5471 = xor i32 %5469, %5452
  %5472 = add nuw nsw i32 %5471, %5452
  %5473 = icmp eq i32 %5472, 2
  %5474 = zext i1 %5473 to i8
  store i8 %5474, i8* %38, align 1
  %5475 = sext i32 %5453 to i64
  store i64 %5475, i64* %RCX.i2558, align 8
  %5476 = shl nsw i64 %5475, 2
  %5477 = add nsw i64 %5476, 11187184
  %5478 = add i64 %5445, 19
  store i64 %5478, i64* %3, align 8
  %5479 = inttoptr i64 %5477 to i32*
  %5480 = load i32, i32* %5479, align 4
  %5481 = zext i32 %5480 to i64
  store i64 %5481, i64* %RAX.i2706, align 8
  %5482 = add i64 %5446, -20
  %5483 = add i64 %5445, 22
  store i64 %5483, i64* %3, align 8
  %5484 = inttoptr i64 %5482 to i32*
  %5485 = load i32, i32* %5484, align 4
  %5486 = sub i32 %5480, %5485
  %5487 = icmp ult i32 %5480, %5485
  %5488 = zext i1 %5487 to i8
  store i8 %5488, i8* %14, align 1
  %5489 = and i32 %5486, 255
  %5490 = tail call i32 @llvm.ctpop.i32(i32 %5489)
  %5491 = trunc i32 %5490 to i8
  %5492 = and i8 %5491, 1
  %5493 = xor i8 %5492, 1
  store i8 %5493, i8* %21, align 1
  %5494 = xor i32 %5485, %5480
  %5495 = xor i32 %5494, %5486
  %5496 = lshr i32 %5495, 4
  %5497 = trunc i32 %5496 to i8
  %5498 = and i8 %5497, 1
  store i8 %5498, i8* %26, align 1
  %5499 = icmp eq i32 %5486, 0
  %5500 = zext i1 %5499 to i8
  store i8 %5500, i8* %29, align 1
  %5501 = lshr i32 %5486, 31
  %5502 = trunc i32 %5501 to i8
  store i8 %5502, i8* %32, align 1
  %5503 = lshr i32 %5480, 31
  %5504 = lshr i32 %5485, 31
  %5505 = xor i32 %5504, %5503
  %5506 = xor i32 %5501, %5503
  %5507 = add nuw nsw i32 %5506, %5505
  %5508 = icmp eq i32 %5507, 2
  %5509 = zext i1 %5508 to i8
  store i8 %5509, i8* %38, align 1
  %.v250 = select i1 %5499, i64 265, i64 28
  %5510 = add i64 %5445, %.v250
  store i64 %5510, i64* %3, align 8
  br i1 %5499, label %block_.L_410805, label %block_.L_410718

block_.L_410718:                                  ; preds = %block_.L_4106df, %block_4106fc
  %5511 = phi i64 [ %5510, %block_4106fc ], [ %5445, %block_.L_4106df ]
  %5512 = load i64, i64* %RBP.i, align 8
  %5513 = add i64 %5512, -8
  %5514 = add i64 %5511, 3
  store i64 %5514, i64* %3, align 8
  %5515 = inttoptr i64 %5513 to i32*
  %5516 = load i32, i32* %5515, align 4
  %5517 = add i32 %5516, -1
  %5518 = lshr i32 %5517, 31
  %5519 = add i32 %5516, 19
  %5520 = zext i32 %5519 to i64
  store i64 %5520, i64* %RAX.i2706, align 8
  %5521 = icmp ugt i32 %5517, -21
  %5522 = zext i1 %5521 to i8
  store i8 %5522, i8* %14, align 1
  %5523 = and i32 %5519, 255
  %5524 = tail call i32 @llvm.ctpop.i32(i32 %5523)
  %5525 = trunc i32 %5524 to i8
  %5526 = and i8 %5525, 1
  %5527 = xor i8 %5526, 1
  store i8 %5527, i8* %21, align 1
  %5528 = xor i32 %5517, 16
  %5529 = xor i32 %5528, %5519
  %5530 = lshr i32 %5529, 4
  %5531 = trunc i32 %5530 to i8
  %5532 = and i8 %5531, 1
  store i8 %5532, i8* %26, align 1
  %5533 = icmp eq i32 %5519, 0
  %5534 = zext i1 %5533 to i8
  store i8 %5534, i8* %29, align 1
  %5535 = lshr i32 %5519, 31
  %5536 = trunc i32 %5535 to i8
  store i8 %5536, i8* %32, align 1
  %5537 = xor i32 %5535, %5518
  %5538 = add nuw nsw i32 %5537, %5535
  %5539 = icmp eq i32 %5538, 2
  %5540 = zext i1 %5539 to i8
  store i8 %5540, i8* %38, align 1
  %5541 = sext i32 %5519 to i64
  store i64 %5541, i64* %RCX.i2558, align 8
  %5542 = add nsw i64 %5541, 12099168
  %5543 = add i64 %5511, 20
  store i64 %5543, i64* %3, align 8
  %5544 = inttoptr i64 %5542 to i8*
  %5545 = load i8, i8* %5544, align 1
  %5546 = zext i8 %5545 to i64
  store i64 %5546, i64* %RAX.i2706, align 8
  %5547 = zext i8 %5545 to i32
  %5548 = add i64 %5512, -12
  %5549 = add i64 %5511, 23
  store i64 %5549, i64* %3, align 8
  %5550 = inttoptr i64 %5548 to i32*
  %5551 = load i32, i32* %5550, align 4
  %5552 = sub i32 %5547, %5551
  %5553 = icmp ult i32 %5547, %5551
  %5554 = zext i1 %5553 to i8
  store i8 %5554, i8* %14, align 1
  %5555 = and i32 %5552, 255
  %5556 = tail call i32 @llvm.ctpop.i32(i32 %5555)
  %5557 = trunc i32 %5556 to i8
  %5558 = and i8 %5557, 1
  %5559 = xor i8 %5558, 1
  store i8 %5559, i8* %21, align 1
  %5560 = xor i32 %5551, %5547
  %5561 = xor i32 %5560, %5552
  %5562 = lshr i32 %5561, 4
  %5563 = trunc i32 %5562 to i8
  %5564 = and i8 %5563, 1
  store i8 %5564, i8* %26, align 1
  %5565 = icmp eq i32 %5552, 0
  %5566 = zext i1 %5565 to i8
  store i8 %5566, i8* %29, align 1
  %5567 = lshr i32 %5552, 31
  %5568 = trunc i32 %5567 to i8
  store i8 %5568, i8* %32, align 1
  %5569 = lshr i32 %5551, 31
  %5570 = add nuw nsw i32 %5567, %5569
  %5571 = icmp eq i32 %5570, 2
  %5572 = zext i1 %5571 to i8
  store i8 %5572, i8* %38, align 1
  %.v242 = select i1 %5565, i64 29, i64 57
  %5573 = add i64 %5511, %.v242
  store i64 %5573, i64* %3, align 8
  br i1 %5565, label %block_410735, label %block_.L_410751

block_410735:                                     ; preds = %block_.L_410718
  %5574 = load i64, i64* %RBP.i, align 8
  %5575 = add i64 %5574, -8
  %5576 = add i64 %5573, 3
  store i64 %5576, i64* %3, align 8
  %5577 = inttoptr i64 %5575 to i32*
  %5578 = load i32, i32* %5577, align 4
  %5579 = add i32 %5578, -1
  %5580 = lshr i32 %5579, 31
  %5581 = add i32 %5578, 19
  %5582 = zext i32 %5581 to i64
  store i64 %5582, i64* %RAX.i2706, align 8
  %5583 = icmp ugt i32 %5579, -21
  %5584 = zext i1 %5583 to i8
  store i8 %5584, i8* %14, align 1
  %5585 = and i32 %5581, 255
  %5586 = tail call i32 @llvm.ctpop.i32(i32 %5585)
  %5587 = trunc i32 %5586 to i8
  %5588 = and i8 %5587, 1
  %5589 = xor i8 %5588, 1
  store i8 %5589, i8* %21, align 1
  %5590 = xor i32 %5579, 16
  %5591 = xor i32 %5590, %5581
  %5592 = lshr i32 %5591, 4
  %5593 = trunc i32 %5592 to i8
  %5594 = and i8 %5593, 1
  store i8 %5594, i8* %26, align 1
  %5595 = icmp eq i32 %5581, 0
  %5596 = zext i1 %5595 to i8
  store i8 %5596, i8* %29, align 1
  %5597 = lshr i32 %5581, 31
  %5598 = trunc i32 %5597 to i8
  store i8 %5598, i8* %32, align 1
  %5599 = xor i32 %5597, %5580
  %5600 = add nuw nsw i32 %5599, %5597
  %5601 = icmp eq i32 %5600, 2
  %5602 = zext i1 %5601 to i8
  store i8 %5602, i8* %38, align 1
  %5603 = sext i32 %5581 to i64
  store i64 %5603, i64* %RCX.i2558, align 8
  %5604 = shl nsw i64 %5603, 2
  %5605 = add nsw i64 %5604, 11187184
  %5606 = add i64 %5573, 19
  store i64 %5606, i64* %3, align 8
  %5607 = inttoptr i64 %5605 to i32*
  %5608 = load i32, i32* %5607, align 4
  %5609 = zext i32 %5608 to i64
  store i64 %5609, i64* %RAX.i2706, align 8
  %5610 = add i64 %5574, -20
  %5611 = add i64 %5573, 22
  store i64 %5611, i64* %3, align 8
  %5612 = inttoptr i64 %5610 to i32*
  %5613 = load i32, i32* %5612, align 4
  %5614 = sub i32 %5608, %5613
  %5615 = icmp ult i32 %5608, %5613
  %5616 = zext i1 %5615 to i8
  store i8 %5616, i8* %14, align 1
  %5617 = and i32 %5614, 255
  %5618 = tail call i32 @llvm.ctpop.i32(i32 %5617)
  %5619 = trunc i32 %5618 to i8
  %5620 = and i8 %5619, 1
  %5621 = xor i8 %5620, 1
  store i8 %5621, i8* %21, align 1
  %5622 = xor i32 %5613, %5608
  %5623 = xor i32 %5622, %5614
  %5624 = lshr i32 %5623, 4
  %5625 = trunc i32 %5624 to i8
  %5626 = and i8 %5625, 1
  store i8 %5626, i8* %26, align 1
  %5627 = icmp eq i32 %5614, 0
  %5628 = zext i1 %5627 to i8
  store i8 %5628, i8* %29, align 1
  %5629 = lshr i32 %5614, 31
  %5630 = trunc i32 %5629 to i8
  store i8 %5630, i8* %32, align 1
  %5631 = lshr i32 %5608, 31
  %5632 = lshr i32 %5613, 31
  %5633 = xor i32 %5632, %5631
  %5634 = xor i32 %5629, %5631
  %5635 = add nuw nsw i32 %5634, %5633
  %5636 = icmp eq i32 %5635, 2
  %5637 = zext i1 %5636 to i8
  store i8 %5637, i8* %38, align 1
  %.v249 = select i1 %5627, i64 208, i64 28
  %5638 = add i64 %5573, %.v249
  store i64 %5638, i64* %3, align 8
  br i1 %5627, label %block_.L_410805, label %block_.L_410751

block_.L_410751:                                  ; preds = %block_.L_410718, %block_410735
  %5639 = phi i64 [ %5638, %block_410735 ], [ %5573, %block_.L_410718 ]
  %5640 = load i64, i64* %RBP.i, align 8
  %5641 = add i64 %5640, -8
  %5642 = add i64 %5639, 3
  store i64 %5642, i64* %3, align 8
  %5643 = inttoptr i64 %5641 to i32*
  %5644 = load i32, i32* %5643, align 4
  %5645 = add i32 %5644, -1
  %5646 = icmp eq i32 %5645, 0
  %5647 = zext i1 %5646 to i8
  %5648 = lshr i32 %5645, 31
  %5649 = add i32 %5644, -2
  %5650 = zext i32 %5649 to i64
  store i64 %5650, i64* %RAX.i2706, align 8
  store i8 %5647, i8* %14, align 1
  %5651 = and i32 %5649, 255
  %5652 = tail call i32 @llvm.ctpop.i32(i32 %5651)
  %5653 = trunc i32 %5652 to i8
  %5654 = and i8 %5653, 1
  %5655 = xor i8 %5654, 1
  store i8 %5655, i8* %21, align 1
  %5656 = xor i32 %5649, %5645
  %5657 = lshr i32 %5656, 4
  %5658 = trunc i32 %5657 to i8
  %5659 = and i8 %5658, 1
  store i8 %5659, i8* %26, align 1
  %5660 = icmp eq i32 %5649, 0
  %5661 = zext i1 %5660 to i8
  store i8 %5661, i8* %29, align 1
  %5662 = lshr i32 %5649, 31
  %5663 = trunc i32 %5662 to i8
  store i8 %5663, i8* %32, align 1
  %5664 = xor i32 %5662, %5648
  %5665 = add nuw nsw i32 %5664, %5648
  %5666 = icmp eq i32 %5665, 2
  %5667 = zext i1 %5666 to i8
  store i8 %5667, i8* %38, align 1
  %5668 = sext i32 %5649 to i64
  store i64 %5668, i64* %RCX.i2558, align 8
  %5669 = add nsw i64 %5668, 12099168
  %5670 = add i64 %5639, 20
  store i64 %5670, i64* %3, align 8
  %5671 = inttoptr i64 %5669 to i8*
  %5672 = load i8, i8* %5671, align 1
  %5673 = zext i8 %5672 to i64
  store i64 %5673, i64* %RAX.i2706, align 8
  %5674 = zext i8 %5672 to i32
  %5675 = add i64 %5640, -12
  %5676 = add i64 %5639, 23
  store i64 %5676, i64* %3, align 8
  %5677 = inttoptr i64 %5675 to i32*
  %5678 = load i32, i32* %5677, align 4
  %5679 = sub i32 %5674, %5678
  %5680 = icmp ult i32 %5674, %5678
  %5681 = zext i1 %5680 to i8
  store i8 %5681, i8* %14, align 1
  %5682 = and i32 %5679, 255
  %5683 = tail call i32 @llvm.ctpop.i32(i32 %5682)
  %5684 = trunc i32 %5683 to i8
  %5685 = and i8 %5684, 1
  %5686 = xor i8 %5685, 1
  store i8 %5686, i8* %21, align 1
  %5687 = xor i32 %5678, %5674
  %5688 = xor i32 %5687, %5679
  %5689 = lshr i32 %5688, 4
  %5690 = trunc i32 %5689 to i8
  %5691 = and i8 %5690, 1
  store i8 %5691, i8* %26, align 1
  %5692 = icmp eq i32 %5679, 0
  %5693 = zext i1 %5692 to i8
  store i8 %5693, i8* %29, align 1
  %5694 = lshr i32 %5679, 31
  %5695 = trunc i32 %5694 to i8
  store i8 %5695, i8* %32, align 1
  %5696 = lshr i32 %5678, 31
  %5697 = add nuw nsw i32 %5694, %5696
  %5698 = icmp eq i32 %5697, 2
  %5699 = zext i1 %5698 to i8
  store i8 %5699, i8* %38, align 1
  %.v243 = select i1 %5692, i64 29, i64 57
  %5700 = add i64 %5639, %.v243
  store i64 %5700, i64* %3, align 8
  br i1 %5692, label %block_41076e, label %block_.L_41078a

block_41076e:                                     ; preds = %block_.L_410751
  %5701 = load i64, i64* %RBP.i, align 8
  %5702 = add i64 %5701, -8
  %5703 = add i64 %5700, 3
  store i64 %5703, i64* %3, align 8
  %5704 = inttoptr i64 %5702 to i32*
  %5705 = load i32, i32* %5704, align 4
  %5706 = add i32 %5705, -1
  %5707 = icmp eq i32 %5706, 0
  %5708 = zext i1 %5707 to i8
  %5709 = lshr i32 %5706, 31
  %5710 = add i32 %5705, -2
  %5711 = zext i32 %5710 to i64
  store i64 %5711, i64* %RAX.i2706, align 8
  store i8 %5708, i8* %14, align 1
  %5712 = and i32 %5710, 255
  %5713 = tail call i32 @llvm.ctpop.i32(i32 %5712)
  %5714 = trunc i32 %5713 to i8
  %5715 = and i8 %5714, 1
  %5716 = xor i8 %5715, 1
  store i8 %5716, i8* %21, align 1
  %5717 = xor i32 %5710, %5706
  %5718 = lshr i32 %5717, 4
  %5719 = trunc i32 %5718 to i8
  %5720 = and i8 %5719, 1
  store i8 %5720, i8* %26, align 1
  %5721 = icmp eq i32 %5710, 0
  %5722 = zext i1 %5721 to i8
  store i8 %5722, i8* %29, align 1
  %5723 = lshr i32 %5710, 31
  %5724 = trunc i32 %5723 to i8
  store i8 %5724, i8* %32, align 1
  %5725 = xor i32 %5723, %5709
  %5726 = add nuw nsw i32 %5725, %5709
  %5727 = icmp eq i32 %5726, 2
  %5728 = zext i1 %5727 to i8
  store i8 %5728, i8* %38, align 1
  %5729 = sext i32 %5710 to i64
  store i64 %5729, i64* %RCX.i2558, align 8
  %5730 = shl nsw i64 %5729, 2
  %5731 = add nsw i64 %5730, 11187184
  %5732 = add i64 %5700, 19
  store i64 %5732, i64* %3, align 8
  %5733 = inttoptr i64 %5731 to i32*
  %5734 = load i32, i32* %5733, align 4
  %5735 = zext i32 %5734 to i64
  store i64 %5735, i64* %RAX.i2706, align 8
  %5736 = add i64 %5701, -24
  %5737 = add i64 %5700, 22
  store i64 %5737, i64* %3, align 8
  %5738 = inttoptr i64 %5736 to i32*
  %5739 = load i32, i32* %5738, align 4
  %5740 = sub i32 %5734, %5739
  %5741 = icmp ult i32 %5734, %5739
  %5742 = zext i1 %5741 to i8
  store i8 %5742, i8* %14, align 1
  %5743 = and i32 %5740, 255
  %5744 = tail call i32 @llvm.ctpop.i32(i32 %5743)
  %5745 = trunc i32 %5744 to i8
  %5746 = and i8 %5745, 1
  %5747 = xor i8 %5746, 1
  store i8 %5747, i8* %21, align 1
  %5748 = xor i32 %5739, %5734
  %5749 = xor i32 %5748, %5740
  %5750 = lshr i32 %5749, 4
  %5751 = trunc i32 %5750 to i8
  %5752 = and i8 %5751, 1
  store i8 %5752, i8* %26, align 1
  %5753 = icmp eq i32 %5740, 0
  %5754 = zext i1 %5753 to i8
  store i8 %5754, i8* %29, align 1
  %5755 = lshr i32 %5740, 31
  %5756 = trunc i32 %5755 to i8
  store i8 %5756, i8* %32, align 1
  %5757 = lshr i32 %5734, 31
  %5758 = lshr i32 %5739, 31
  %5759 = xor i32 %5758, %5757
  %5760 = xor i32 %5755, %5757
  %5761 = add nuw nsw i32 %5760, %5759
  %5762 = icmp eq i32 %5761, 2
  %5763 = zext i1 %5762 to i8
  store i8 %5763, i8* %38, align 1
  %.v248 = select i1 %5753, i64 151, i64 28
  %5764 = add i64 %5700, %.v248
  store i64 %5764, i64* %3, align 8
  br i1 %5753, label %block_.L_410805, label %block_.L_41078a

block_.L_41078a:                                  ; preds = %block_.L_410751, %block_41076e
  %5765 = phi i64 [ %5764, %block_41076e ], [ %5700, %block_.L_410751 ]
  %5766 = load i64, i64* %RBP.i, align 8
  %5767 = add i64 %5766, -8
  %5768 = add i64 %5765, 3
  store i64 %5768, i64* %3, align 8
  %5769 = inttoptr i64 %5767 to i32*
  %5770 = load i32, i32* %5769, align 4
  %5771 = add i32 %5770, -1
  %5772 = lshr i32 %5771, 31
  %5773 = add i32 %5770, -21
  %5774 = zext i32 %5773 to i64
  store i64 %5774, i64* %RAX.i2706, align 8
  %5775 = icmp ult i32 %5771, 20
  %5776 = zext i1 %5775 to i8
  store i8 %5776, i8* %14, align 1
  %5777 = and i32 %5773, 255
  %5778 = tail call i32 @llvm.ctpop.i32(i32 %5777)
  %5779 = trunc i32 %5778 to i8
  %5780 = and i8 %5779, 1
  %5781 = xor i8 %5780, 1
  store i8 %5781, i8* %21, align 1
  %5782 = xor i32 %5771, 16
  %5783 = xor i32 %5782, %5773
  %5784 = lshr i32 %5783, 4
  %5785 = trunc i32 %5784 to i8
  %5786 = and i8 %5785, 1
  store i8 %5786, i8* %26, align 1
  %5787 = icmp eq i32 %5773, 0
  %5788 = zext i1 %5787 to i8
  store i8 %5788, i8* %29, align 1
  %5789 = lshr i32 %5773, 31
  %5790 = trunc i32 %5789 to i8
  store i8 %5790, i8* %32, align 1
  %5791 = xor i32 %5789, %5772
  %5792 = add nuw nsw i32 %5791, %5772
  %5793 = icmp eq i32 %5792, 2
  %5794 = zext i1 %5793 to i8
  store i8 %5794, i8* %38, align 1
  %5795 = sext i32 %5773 to i64
  store i64 %5795, i64* %RCX.i2558, align 8
  %5796 = add nsw i64 %5795, 12099168
  %5797 = add i64 %5765, 20
  store i64 %5797, i64* %3, align 8
  %5798 = inttoptr i64 %5796 to i8*
  %5799 = load i8, i8* %5798, align 1
  %5800 = zext i8 %5799 to i64
  store i64 %5800, i64* %RAX.i2706, align 8
  %5801 = zext i8 %5799 to i32
  %5802 = add i64 %5766, -12
  %5803 = add i64 %5765, 23
  store i64 %5803, i64* %3, align 8
  %5804 = inttoptr i64 %5802 to i32*
  %5805 = load i32, i32* %5804, align 4
  %5806 = sub i32 %5801, %5805
  %5807 = icmp ult i32 %5801, %5805
  %5808 = zext i1 %5807 to i8
  store i8 %5808, i8* %14, align 1
  %5809 = and i32 %5806, 255
  %5810 = tail call i32 @llvm.ctpop.i32(i32 %5809)
  %5811 = trunc i32 %5810 to i8
  %5812 = and i8 %5811, 1
  %5813 = xor i8 %5812, 1
  store i8 %5813, i8* %21, align 1
  %5814 = xor i32 %5805, %5801
  %5815 = xor i32 %5814, %5806
  %5816 = lshr i32 %5815, 4
  %5817 = trunc i32 %5816 to i8
  %5818 = and i8 %5817, 1
  store i8 %5818, i8* %26, align 1
  %5819 = icmp eq i32 %5806, 0
  %5820 = zext i1 %5819 to i8
  store i8 %5820, i8* %29, align 1
  %5821 = lshr i32 %5806, 31
  %5822 = trunc i32 %5821 to i8
  store i8 %5822, i8* %32, align 1
  %5823 = lshr i32 %5805, 31
  %5824 = add nuw nsw i32 %5821, %5823
  %5825 = icmp eq i32 %5824, 2
  %5826 = zext i1 %5825 to i8
  store i8 %5826, i8* %38, align 1
  %.v244 = select i1 %5819, i64 29, i64 57
  %5827 = add i64 %5765, %.v244
  store i64 %5827, i64* %3, align 8
  br i1 %5819, label %block_4107a7, label %block_.L_4107c3

block_4107a7:                                     ; preds = %block_.L_41078a
  %5828 = load i64, i64* %RBP.i, align 8
  %5829 = add i64 %5828, -8
  %5830 = add i64 %5827, 3
  store i64 %5830, i64* %3, align 8
  %5831 = inttoptr i64 %5829 to i32*
  %5832 = load i32, i32* %5831, align 4
  %5833 = add i32 %5832, -1
  %5834 = lshr i32 %5833, 31
  %5835 = add i32 %5832, -21
  %5836 = zext i32 %5835 to i64
  store i64 %5836, i64* %RAX.i2706, align 8
  %5837 = icmp ult i32 %5833, 20
  %5838 = zext i1 %5837 to i8
  store i8 %5838, i8* %14, align 1
  %5839 = and i32 %5835, 255
  %5840 = tail call i32 @llvm.ctpop.i32(i32 %5839)
  %5841 = trunc i32 %5840 to i8
  %5842 = and i8 %5841, 1
  %5843 = xor i8 %5842, 1
  store i8 %5843, i8* %21, align 1
  %5844 = xor i32 %5833, 16
  %5845 = xor i32 %5844, %5835
  %5846 = lshr i32 %5845, 4
  %5847 = trunc i32 %5846 to i8
  %5848 = and i8 %5847, 1
  store i8 %5848, i8* %26, align 1
  %5849 = icmp eq i32 %5835, 0
  %5850 = zext i1 %5849 to i8
  store i8 %5850, i8* %29, align 1
  %5851 = lshr i32 %5835, 31
  %5852 = trunc i32 %5851 to i8
  store i8 %5852, i8* %32, align 1
  %5853 = xor i32 %5851, %5834
  %5854 = add nuw nsw i32 %5853, %5834
  %5855 = icmp eq i32 %5854, 2
  %5856 = zext i1 %5855 to i8
  store i8 %5856, i8* %38, align 1
  %5857 = sext i32 %5835 to i64
  store i64 %5857, i64* %RCX.i2558, align 8
  %5858 = shl nsw i64 %5857, 2
  %5859 = add nsw i64 %5858, 11187184
  %5860 = add i64 %5827, 19
  store i64 %5860, i64* %3, align 8
  %5861 = inttoptr i64 %5859 to i32*
  %5862 = load i32, i32* %5861, align 4
  %5863 = zext i32 %5862 to i64
  store i64 %5863, i64* %RAX.i2706, align 8
  %5864 = add i64 %5828, -24
  %5865 = add i64 %5827, 22
  store i64 %5865, i64* %3, align 8
  %5866 = inttoptr i64 %5864 to i32*
  %5867 = load i32, i32* %5866, align 4
  %5868 = sub i32 %5862, %5867
  %5869 = icmp ult i32 %5862, %5867
  %5870 = zext i1 %5869 to i8
  store i8 %5870, i8* %14, align 1
  %5871 = and i32 %5868, 255
  %5872 = tail call i32 @llvm.ctpop.i32(i32 %5871)
  %5873 = trunc i32 %5872 to i8
  %5874 = and i8 %5873, 1
  %5875 = xor i8 %5874, 1
  store i8 %5875, i8* %21, align 1
  %5876 = xor i32 %5867, %5862
  %5877 = xor i32 %5876, %5868
  %5878 = lshr i32 %5877, 4
  %5879 = trunc i32 %5878 to i8
  %5880 = and i8 %5879, 1
  store i8 %5880, i8* %26, align 1
  %5881 = icmp eq i32 %5868, 0
  %5882 = zext i1 %5881 to i8
  store i8 %5882, i8* %29, align 1
  %5883 = lshr i32 %5868, 31
  %5884 = trunc i32 %5883 to i8
  store i8 %5884, i8* %32, align 1
  %5885 = lshr i32 %5862, 31
  %5886 = lshr i32 %5867, 31
  %5887 = xor i32 %5886, %5885
  %5888 = xor i32 %5883, %5885
  %5889 = add nuw nsw i32 %5888, %5887
  %5890 = icmp eq i32 %5889, 2
  %5891 = zext i1 %5890 to i8
  store i8 %5891, i8* %38, align 1
  %.v247 = select i1 %5881, i64 94, i64 28
  %5892 = add i64 %5827, %.v247
  store i64 %5892, i64* %3, align 8
  br i1 %5881, label %block_.L_410805, label %block_.L_4107c3

block_.L_4107c3:                                  ; preds = %block_.L_41078a, %block_4107a7
  %5893 = phi i64 [ %5892, %block_4107a7 ], [ %5827, %block_.L_41078a ]
  %5894 = load i64, i64* %RBP.i, align 8
  %5895 = add i64 %5894, -8
  %5896 = add i64 %5893, 3
  store i64 %5896, i64* %3, align 8
  %5897 = inttoptr i64 %5895 to i32*
  %5898 = load i32, i32* %5897, align 4
  %5899 = add i32 %5898, -1
  %5900 = lshr i32 %5899, 31
  %5901 = add i32 %5898, 19
  %5902 = zext i32 %5901 to i64
  store i64 %5902, i64* %RAX.i2706, align 8
  %5903 = icmp ugt i32 %5899, -21
  %5904 = zext i1 %5903 to i8
  store i8 %5904, i8* %14, align 1
  %5905 = and i32 %5901, 255
  %5906 = tail call i32 @llvm.ctpop.i32(i32 %5905)
  %5907 = trunc i32 %5906 to i8
  %5908 = and i8 %5907, 1
  %5909 = xor i8 %5908, 1
  store i8 %5909, i8* %21, align 1
  %5910 = xor i32 %5899, 16
  %5911 = xor i32 %5910, %5901
  %5912 = lshr i32 %5911, 4
  %5913 = trunc i32 %5912 to i8
  %5914 = and i8 %5913, 1
  store i8 %5914, i8* %26, align 1
  %5915 = icmp eq i32 %5901, 0
  %5916 = zext i1 %5915 to i8
  store i8 %5916, i8* %29, align 1
  %5917 = lshr i32 %5901, 31
  %5918 = trunc i32 %5917 to i8
  store i8 %5918, i8* %32, align 1
  %5919 = xor i32 %5917, %5900
  %5920 = add nuw nsw i32 %5919, %5917
  %5921 = icmp eq i32 %5920, 2
  %5922 = zext i1 %5921 to i8
  store i8 %5922, i8* %38, align 1
  %5923 = sext i32 %5901 to i64
  store i64 %5923, i64* %RCX.i2558, align 8
  %5924 = add nsw i64 %5923, 12099168
  %5925 = add i64 %5893, 20
  store i64 %5925, i64* %3, align 8
  %5926 = inttoptr i64 %5924 to i8*
  %5927 = load i8, i8* %5926, align 1
  %5928 = zext i8 %5927 to i64
  store i64 %5928, i64* %RAX.i2706, align 8
  %5929 = zext i8 %5927 to i32
  %5930 = add i64 %5894, -12
  %5931 = add i64 %5893, 23
  store i64 %5931, i64* %3, align 8
  %5932 = inttoptr i64 %5930 to i32*
  %5933 = load i32, i32* %5932, align 4
  %5934 = sub i32 %5929, %5933
  %5935 = icmp ult i32 %5929, %5933
  %5936 = zext i1 %5935 to i8
  store i8 %5936, i8* %14, align 1
  %5937 = and i32 %5934, 255
  %5938 = tail call i32 @llvm.ctpop.i32(i32 %5937)
  %5939 = trunc i32 %5938 to i8
  %5940 = and i8 %5939, 1
  %5941 = xor i8 %5940, 1
  store i8 %5941, i8* %21, align 1
  %5942 = xor i32 %5933, %5929
  %5943 = xor i32 %5942, %5934
  %5944 = lshr i32 %5943, 4
  %5945 = trunc i32 %5944 to i8
  %5946 = and i8 %5945, 1
  store i8 %5946, i8* %26, align 1
  %5947 = icmp eq i32 %5934, 0
  %5948 = zext i1 %5947 to i8
  store i8 %5948, i8* %29, align 1
  %5949 = lshr i32 %5934, 31
  %5950 = trunc i32 %5949 to i8
  store i8 %5950, i8* %32, align 1
  %5951 = lshr i32 %5933, 31
  %5952 = add nuw nsw i32 %5949, %5951
  %5953 = icmp eq i32 %5952, 2
  %5954 = zext i1 %5953 to i8
  store i8 %5954, i8* %38, align 1
  %.v245 = select i1 %5947, i64 29, i64 57
  %5955 = add i64 %5893, %.v245
  store i64 %5955, i64* %3, align 8
  br i1 %5947, label %block_4107e0, label %block_.L_4107fc

block_4107e0:                                     ; preds = %block_.L_4107c3
  %5956 = load i64, i64* %RBP.i, align 8
  %5957 = add i64 %5956, -8
  %5958 = add i64 %5955, 3
  store i64 %5958, i64* %3, align 8
  %5959 = inttoptr i64 %5957 to i32*
  %5960 = load i32, i32* %5959, align 4
  %5961 = add i32 %5960, -1
  %5962 = lshr i32 %5961, 31
  %5963 = add i32 %5960, 19
  %5964 = zext i32 %5963 to i64
  store i64 %5964, i64* %RAX.i2706, align 8
  %5965 = icmp ugt i32 %5961, -21
  %5966 = zext i1 %5965 to i8
  store i8 %5966, i8* %14, align 1
  %5967 = and i32 %5963, 255
  %5968 = tail call i32 @llvm.ctpop.i32(i32 %5967)
  %5969 = trunc i32 %5968 to i8
  %5970 = and i8 %5969, 1
  %5971 = xor i8 %5970, 1
  store i8 %5971, i8* %21, align 1
  %5972 = xor i32 %5961, 16
  %5973 = xor i32 %5972, %5963
  %5974 = lshr i32 %5973, 4
  %5975 = trunc i32 %5974 to i8
  %5976 = and i8 %5975, 1
  store i8 %5976, i8* %26, align 1
  %5977 = icmp eq i32 %5963, 0
  %5978 = zext i1 %5977 to i8
  store i8 %5978, i8* %29, align 1
  %5979 = lshr i32 %5963, 31
  %5980 = trunc i32 %5979 to i8
  store i8 %5980, i8* %32, align 1
  %5981 = xor i32 %5979, %5962
  %5982 = add nuw nsw i32 %5981, %5979
  %5983 = icmp eq i32 %5982, 2
  %5984 = zext i1 %5983 to i8
  store i8 %5984, i8* %38, align 1
  %5985 = sext i32 %5963 to i64
  store i64 %5985, i64* %RCX.i2558, align 8
  %5986 = shl nsw i64 %5985, 2
  %5987 = add nsw i64 %5986, 11187184
  %5988 = add i64 %5955, 19
  store i64 %5988, i64* %3, align 8
  %5989 = inttoptr i64 %5987 to i32*
  %5990 = load i32, i32* %5989, align 4
  %5991 = zext i32 %5990 to i64
  store i64 %5991, i64* %RAX.i2706, align 8
  %5992 = add i64 %5956, -24
  %5993 = add i64 %5955, 22
  store i64 %5993, i64* %3, align 8
  %5994 = inttoptr i64 %5992 to i32*
  %5995 = load i32, i32* %5994, align 4
  %5996 = sub i32 %5990, %5995
  %5997 = icmp ult i32 %5990, %5995
  %5998 = zext i1 %5997 to i8
  store i8 %5998, i8* %14, align 1
  %5999 = and i32 %5996, 255
  %6000 = tail call i32 @llvm.ctpop.i32(i32 %5999)
  %6001 = trunc i32 %6000 to i8
  %6002 = and i8 %6001, 1
  %6003 = xor i8 %6002, 1
  store i8 %6003, i8* %21, align 1
  %6004 = xor i32 %5995, %5990
  %6005 = xor i32 %6004, %5996
  %6006 = lshr i32 %6005, 4
  %6007 = trunc i32 %6006 to i8
  %6008 = and i8 %6007, 1
  store i8 %6008, i8* %26, align 1
  %6009 = icmp eq i32 %5996, 0
  %6010 = zext i1 %6009 to i8
  store i8 %6010, i8* %29, align 1
  %6011 = lshr i32 %5996, 31
  %6012 = trunc i32 %6011 to i8
  store i8 %6012, i8* %32, align 1
  %6013 = lshr i32 %5990, 31
  %6014 = lshr i32 %5995, 31
  %6015 = xor i32 %6014, %6013
  %6016 = xor i32 %6011, %6013
  %6017 = add nuw nsw i32 %6016, %6015
  %6018 = icmp eq i32 %6017, 2
  %6019 = zext i1 %6018 to i8
  store i8 %6019, i8* %38, align 1
  %.v246 = select i1 %6009, i64 37, i64 28
  %6020 = add i64 %5955, %.v246
  store i64 %6020, i64* %3, align 8
  br i1 %6009, label %block_.L_410805, label %block_.L_4107fc

block_.L_4107fc:                                  ; preds = %block_.L_4107c3, %block_4107e0
  %6021 = phi i64 [ %6020, %block_4107e0 ], [ %5955, %block_.L_4107c3 ]
  %6022 = load i64, i64* %RBP.i, align 8
  %6023 = add i64 %6022, -28
  %6024 = add i64 %6021, 3
  store i64 %6024, i64* %3, align 8
  %6025 = inttoptr i64 %6023 to i32*
  %6026 = load i32, i32* %6025, align 4
  %6027 = add i32 %6026, 1
  %6028 = zext i32 %6027 to i64
  store i64 %6028, i64* %RAX.i2706, align 8
  %6029 = icmp eq i32 %6026, -1
  %6030 = icmp eq i32 %6027, 0
  %6031 = or i1 %6029, %6030
  %6032 = zext i1 %6031 to i8
  store i8 %6032, i8* %14, align 1
  %6033 = and i32 %6027, 255
  %6034 = tail call i32 @llvm.ctpop.i32(i32 %6033)
  %6035 = trunc i32 %6034 to i8
  %6036 = and i8 %6035, 1
  %6037 = xor i8 %6036, 1
  store i8 %6037, i8* %21, align 1
  %6038 = xor i32 %6027, %6026
  %6039 = lshr i32 %6038, 4
  %6040 = trunc i32 %6039 to i8
  %6041 = and i8 %6040, 1
  store i8 %6041, i8* %26, align 1
  %6042 = zext i1 %6030 to i8
  store i8 %6042, i8* %29, align 1
  %6043 = lshr i32 %6027, 31
  %6044 = trunc i32 %6043 to i8
  store i8 %6044, i8* %32, align 1
  %6045 = lshr i32 %6026, 31
  %6046 = xor i32 %6043, %6045
  %6047 = add nuw nsw i32 %6046, %6043
  %6048 = icmp eq i32 %6047, 2
  %6049 = zext i1 %6048 to i8
  store i8 %6049, i8* %38, align 1
  %6050 = add i64 %6021, 9
  store i64 %6050, i64* %3, align 8
  store i32 %6027, i32* %6025, align 4
  %.pre181 = load i64, i64* %3, align 8
  br label %block_.L_410805

block_.L_410805:                                  ; preds = %block_.L_41068c, %block_.L_4107fc, %block_4107e0, %block_4107a7, %block_41076e, %block_410735, %block_4106fc, %block_4106c3
  %6051 = phi i64 [ %.pre181, %block_.L_4107fc ], [ %6020, %block_4107e0 ], [ %5892, %block_4107a7 ], [ %5764, %block_41076e ], [ %5638, %block_410735 ], [ %5510, %block_4106fc ], [ %5382, %block_4106c3 ], [ %5260, %block_.L_41068c ]
  %6052 = load i64, i64* %RBP.i, align 8
  %6053 = add i64 %6052, -8
  %6054 = add i64 %6051, 3
  store i64 %6054, i64* %3, align 8
  %6055 = inttoptr i64 %6053 to i32*
  %6056 = load i32, i32* %6055, align 4
  %6057 = add i32 %6056, -20
  %6058 = zext i32 %6057 to i64
  store i64 %6058, i64* %RAX.i2706, align 8
  %6059 = icmp ult i32 %6056, 20
  %6060 = zext i1 %6059 to i8
  store i8 %6060, i8* %14, align 1
  %6061 = and i32 %6057, 255
  %6062 = tail call i32 @llvm.ctpop.i32(i32 %6061)
  %6063 = trunc i32 %6062 to i8
  %6064 = and i8 %6063, 1
  %6065 = xor i8 %6064, 1
  store i8 %6065, i8* %21, align 1
  %6066 = xor i32 %6056, 16
  %6067 = xor i32 %6066, %6057
  %6068 = lshr i32 %6067, 4
  %6069 = trunc i32 %6068 to i8
  %6070 = and i8 %6069, 1
  store i8 %6070, i8* %26, align 1
  %6071 = icmp eq i32 %6057, 0
  %6072 = zext i1 %6071 to i8
  store i8 %6072, i8* %29, align 1
  %6073 = lshr i32 %6057, 31
  %6074 = trunc i32 %6073 to i8
  store i8 %6074, i8* %32, align 1
  %6075 = lshr i32 %6056, 31
  %6076 = xor i32 %6073, %6075
  %6077 = add nuw nsw i32 %6076, %6075
  %6078 = icmp eq i32 %6077, 2
  %6079 = zext i1 %6078 to i8
  store i8 %6079, i8* %38, align 1
  %6080 = sext i32 %6057 to i64
  store i64 %6080, i64* %RCX.i2558, align 8
  %6081 = add nsw i64 %6080, 12099168
  %6082 = add i64 %6051, 17
  store i64 %6082, i64* %3, align 8
  %6083 = inttoptr i64 %6081 to i8*
  %6084 = load i8, i8* %6083, align 1
  %6085 = zext i8 %6084 to i64
  store i64 %6085, i64* %RAX.i2706, align 8
  %6086 = zext i8 %6084 to i32
  store i8 0, i8* %14, align 1
  %6087 = tail call i32 @llvm.ctpop.i32(i32 %6086)
  %6088 = trunc i32 %6087 to i8
  %6089 = and i8 %6088, 1
  %6090 = xor i8 %6089, 1
  store i8 %6090, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %6091 = icmp eq i8 %6084, 0
  %6092 = zext i1 %6091 to i8
  store i8 %6092, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v214 = select i1 %6091, i64 26, i64 377
  %6093 = add i64 %6051, %.v214
  store i64 %6093, i64* %3, align 8
  br i1 %6091, label %block_41081f, label %block_.L_41097e

block_41081f:                                     ; preds = %block_.L_410805
  %6094 = add i64 %6093, 3
  store i64 %6094, i64* %3, align 8
  %6095 = load i32, i32* %6055, align 4
  %6096 = add i32 %6095, -20
  %6097 = lshr i32 %6096, 31
  %6098 = add i32 %6095, -40
  %6099 = zext i32 %6098 to i64
  store i64 %6099, i64* %RAX.i2706, align 8
  %6100 = icmp ult i32 %6096, 20
  %6101 = zext i1 %6100 to i8
  store i8 %6101, i8* %14, align 1
  %6102 = and i32 %6098, 255
  %6103 = tail call i32 @llvm.ctpop.i32(i32 %6102)
  %6104 = trunc i32 %6103 to i8
  %6105 = and i8 %6104, 1
  %6106 = xor i8 %6105, 1
  store i8 %6106, i8* %21, align 1
  %6107 = xor i32 %6096, 16
  %6108 = xor i32 %6107, %6098
  %6109 = lshr i32 %6108, 4
  %6110 = trunc i32 %6109 to i8
  %6111 = and i8 %6110, 1
  store i8 %6111, i8* %26, align 1
  %6112 = icmp eq i32 %6098, 0
  %6113 = zext i1 %6112 to i8
  store i8 %6113, i8* %29, align 1
  %6114 = lshr i32 %6098, 31
  %6115 = trunc i32 %6114 to i8
  store i8 %6115, i8* %32, align 1
  %6116 = xor i32 %6114, %6097
  %6117 = add nuw nsw i32 %6116, %6097
  %6118 = icmp eq i32 %6117, 2
  %6119 = zext i1 %6118 to i8
  store i8 %6119, i8* %38, align 1
  %6120 = sext i32 %6098 to i64
  store i64 %6120, i64* %RCX.i2558, align 8
  %6121 = add nsw i64 %6120, 12099168
  %6122 = add i64 %6093, 20
  store i64 %6122, i64* %3, align 8
  %6123 = inttoptr i64 %6121 to i8*
  %6124 = load i8, i8* %6123, align 1
  %6125 = zext i8 %6124 to i64
  store i64 %6125, i64* %RAX.i2706, align 8
  %6126 = zext i8 %6124 to i32
  %6127 = add i64 %6052, -12
  %6128 = add i64 %6093, 23
  store i64 %6128, i64* %3, align 8
  %6129 = inttoptr i64 %6127 to i32*
  %6130 = load i32, i32* %6129, align 4
  %6131 = sub i32 %6126, %6130
  %6132 = icmp ult i32 %6126, %6130
  %6133 = zext i1 %6132 to i8
  store i8 %6133, i8* %14, align 1
  %6134 = and i32 %6131, 255
  %6135 = tail call i32 @llvm.ctpop.i32(i32 %6134)
  %6136 = trunc i32 %6135 to i8
  %6137 = and i8 %6136, 1
  %6138 = xor i8 %6137, 1
  store i8 %6138, i8* %21, align 1
  %6139 = xor i32 %6130, %6126
  %6140 = xor i32 %6139, %6131
  %6141 = lshr i32 %6140, 4
  %6142 = trunc i32 %6141 to i8
  %6143 = and i8 %6142, 1
  store i8 %6143, i8* %26, align 1
  %6144 = icmp eq i32 %6131, 0
  %6145 = zext i1 %6144 to i8
  store i8 %6145, i8* %29, align 1
  %6146 = lshr i32 %6131, 31
  %6147 = trunc i32 %6146 to i8
  store i8 %6147, i8* %32, align 1
  %6148 = lshr i32 %6130, 31
  %6149 = add nuw nsw i32 %6146, %6148
  %6150 = icmp eq i32 %6149, 2
  %6151 = zext i1 %6150 to i8
  store i8 %6151, i8* %38, align 1
  %.v228 = select i1 %6144, i64 29, i64 57
  %6152 = add i64 %6093, %.v228
  store i64 %6152, i64* %3, align 8
  br i1 %6144, label %block_41083c, label %block_.L_410858

block_41083c:                                     ; preds = %block_41081f
  %6153 = load i64, i64* %RBP.i, align 8
  %6154 = add i64 %6153, -8
  %6155 = add i64 %6152, 3
  store i64 %6155, i64* %3, align 8
  %6156 = inttoptr i64 %6154 to i32*
  %6157 = load i32, i32* %6156, align 4
  %6158 = add i32 %6157, -20
  %6159 = lshr i32 %6158, 31
  %6160 = add i32 %6157, -40
  %6161 = zext i32 %6160 to i64
  store i64 %6161, i64* %RAX.i2706, align 8
  %6162 = icmp ult i32 %6158, 20
  %6163 = zext i1 %6162 to i8
  store i8 %6163, i8* %14, align 1
  %6164 = and i32 %6160, 255
  %6165 = tail call i32 @llvm.ctpop.i32(i32 %6164)
  %6166 = trunc i32 %6165 to i8
  %6167 = and i8 %6166, 1
  %6168 = xor i8 %6167, 1
  store i8 %6168, i8* %21, align 1
  %6169 = xor i32 %6158, 16
  %6170 = xor i32 %6169, %6160
  %6171 = lshr i32 %6170, 4
  %6172 = trunc i32 %6171 to i8
  %6173 = and i8 %6172, 1
  store i8 %6173, i8* %26, align 1
  %6174 = icmp eq i32 %6160, 0
  %6175 = zext i1 %6174 to i8
  store i8 %6175, i8* %29, align 1
  %6176 = lshr i32 %6160, 31
  %6177 = trunc i32 %6176 to i8
  store i8 %6177, i8* %32, align 1
  %6178 = xor i32 %6176, %6159
  %6179 = add nuw nsw i32 %6178, %6159
  %6180 = icmp eq i32 %6179, 2
  %6181 = zext i1 %6180 to i8
  store i8 %6181, i8* %38, align 1
  %6182 = sext i32 %6160 to i64
  store i64 %6182, i64* %RCX.i2558, align 8
  %6183 = shl nsw i64 %6182, 2
  %6184 = add nsw i64 %6183, 11187184
  %6185 = add i64 %6152, 19
  store i64 %6185, i64* %3, align 8
  %6186 = inttoptr i64 %6184 to i32*
  %6187 = load i32, i32* %6186, align 4
  %6188 = zext i32 %6187 to i64
  store i64 %6188, i64* %RAX.i2706, align 8
  %6189 = add i64 %6153, -20
  %6190 = add i64 %6152, 22
  store i64 %6190, i64* %3, align 8
  %6191 = inttoptr i64 %6189 to i32*
  %6192 = load i32, i32* %6191, align 4
  %6193 = sub i32 %6187, %6192
  %6194 = icmp ult i32 %6187, %6192
  %6195 = zext i1 %6194 to i8
  store i8 %6195, i8* %14, align 1
  %6196 = and i32 %6193, 255
  %6197 = tail call i32 @llvm.ctpop.i32(i32 %6196)
  %6198 = trunc i32 %6197 to i8
  %6199 = and i8 %6198, 1
  %6200 = xor i8 %6199, 1
  store i8 %6200, i8* %21, align 1
  %6201 = xor i32 %6192, %6187
  %6202 = xor i32 %6201, %6193
  %6203 = lshr i32 %6202, 4
  %6204 = trunc i32 %6203 to i8
  %6205 = and i8 %6204, 1
  store i8 %6205, i8* %26, align 1
  %6206 = icmp eq i32 %6193, 0
  %6207 = zext i1 %6206 to i8
  store i8 %6207, i8* %29, align 1
  %6208 = lshr i32 %6193, 31
  %6209 = trunc i32 %6208 to i8
  store i8 %6209, i8* %32, align 1
  %6210 = lshr i32 %6187, 31
  %6211 = lshr i32 %6192, 31
  %6212 = xor i32 %6211, %6210
  %6213 = xor i32 %6208, %6210
  %6214 = add nuw nsw i32 %6213, %6212
  %6215 = icmp eq i32 %6214, 2
  %6216 = zext i1 %6215 to i8
  store i8 %6216, i8* %38, align 1
  %.v239 = select i1 %6206, i64 322, i64 28
  %6217 = add i64 %6152, %.v239
  store i64 %6217, i64* %3, align 8
  br i1 %6206, label %block_.L_41097e, label %block_.L_410858

block_.L_410858:                                  ; preds = %block_41081f, %block_41083c
  %6218 = phi i64 [ %6217, %block_41083c ], [ %6152, %block_41081f ]
  %6219 = load i64, i64* %RBP.i, align 8
  %6220 = add i64 %6219, -8
  %6221 = add i64 %6218, 3
  store i64 %6221, i64* %3, align 8
  %6222 = inttoptr i64 %6220 to i32*
  %6223 = load i32, i32* %6222, align 4
  %6224 = add i32 %6223, -20
  %6225 = lshr i32 %6224, 31
  %6226 = add i32 %6223, -19
  %6227 = zext i32 %6226 to i64
  store i64 %6227, i64* %RAX.i2706, align 8
  %6228 = icmp eq i32 %6224, -1
  %6229 = icmp eq i32 %6226, 0
  %6230 = or i1 %6228, %6229
  %6231 = zext i1 %6230 to i8
  store i8 %6231, i8* %14, align 1
  %6232 = and i32 %6226, 255
  %6233 = tail call i32 @llvm.ctpop.i32(i32 %6232)
  %6234 = trunc i32 %6233 to i8
  %6235 = and i8 %6234, 1
  %6236 = xor i8 %6235, 1
  store i8 %6236, i8* %21, align 1
  %6237 = xor i32 %6226, %6224
  %6238 = lshr i32 %6237, 4
  %6239 = trunc i32 %6238 to i8
  %6240 = and i8 %6239, 1
  store i8 %6240, i8* %26, align 1
  %6241 = zext i1 %6229 to i8
  store i8 %6241, i8* %29, align 1
  %6242 = lshr i32 %6226, 31
  %6243 = trunc i32 %6242 to i8
  store i8 %6243, i8* %32, align 1
  %6244 = xor i32 %6242, %6225
  %6245 = add nuw nsw i32 %6244, %6242
  %6246 = icmp eq i32 %6245, 2
  %6247 = zext i1 %6246 to i8
  store i8 %6247, i8* %38, align 1
  %6248 = sext i32 %6226 to i64
  store i64 %6248, i64* %RCX.i2558, align 8
  %6249 = add nsw i64 %6248, 12099168
  %6250 = add i64 %6218, 20
  store i64 %6250, i64* %3, align 8
  %6251 = inttoptr i64 %6249 to i8*
  %6252 = load i8, i8* %6251, align 1
  %6253 = zext i8 %6252 to i64
  store i64 %6253, i64* %RAX.i2706, align 8
  %6254 = zext i8 %6252 to i32
  %6255 = add i64 %6219, -12
  %6256 = add i64 %6218, 23
  store i64 %6256, i64* %3, align 8
  %6257 = inttoptr i64 %6255 to i32*
  %6258 = load i32, i32* %6257, align 4
  %6259 = sub i32 %6254, %6258
  %6260 = icmp ult i32 %6254, %6258
  %6261 = zext i1 %6260 to i8
  store i8 %6261, i8* %14, align 1
  %6262 = and i32 %6259, 255
  %6263 = tail call i32 @llvm.ctpop.i32(i32 %6262)
  %6264 = trunc i32 %6263 to i8
  %6265 = and i8 %6264, 1
  %6266 = xor i8 %6265, 1
  store i8 %6266, i8* %21, align 1
  %6267 = xor i32 %6258, %6254
  %6268 = xor i32 %6267, %6259
  %6269 = lshr i32 %6268, 4
  %6270 = trunc i32 %6269 to i8
  %6271 = and i8 %6270, 1
  store i8 %6271, i8* %26, align 1
  %6272 = icmp eq i32 %6259, 0
  %6273 = zext i1 %6272 to i8
  store i8 %6273, i8* %29, align 1
  %6274 = lshr i32 %6259, 31
  %6275 = trunc i32 %6274 to i8
  store i8 %6275, i8* %32, align 1
  %6276 = lshr i32 %6258, 31
  %6277 = add nuw nsw i32 %6274, %6276
  %6278 = icmp eq i32 %6277, 2
  %6279 = zext i1 %6278 to i8
  store i8 %6279, i8* %38, align 1
  %.v229 = select i1 %6272, i64 29, i64 57
  %6280 = add i64 %6218, %.v229
  store i64 %6280, i64* %3, align 8
  br i1 %6272, label %block_410875, label %block_.L_410891

block_410875:                                     ; preds = %block_.L_410858
  %6281 = load i64, i64* %RBP.i, align 8
  %6282 = add i64 %6281, -8
  %6283 = add i64 %6280, 3
  store i64 %6283, i64* %3, align 8
  %6284 = inttoptr i64 %6282 to i32*
  %6285 = load i32, i32* %6284, align 4
  %6286 = add i32 %6285, -20
  %6287 = lshr i32 %6286, 31
  %6288 = add i32 %6285, -19
  %6289 = zext i32 %6288 to i64
  store i64 %6289, i64* %RAX.i2706, align 8
  %6290 = icmp eq i32 %6286, -1
  %6291 = icmp eq i32 %6288, 0
  %6292 = or i1 %6290, %6291
  %6293 = zext i1 %6292 to i8
  store i8 %6293, i8* %14, align 1
  %6294 = and i32 %6288, 255
  %6295 = tail call i32 @llvm.ctpop.i32(i32 %6294)
  %6296 = trunc i32 %6295 to i8
  %6297 = and i8 %6296, 1
  %6298 = xor i8 %6297, 1
  store i8 %6298, i8* %21, align 1
  %6299 = xor i32 %6288, %6286
  %6300 = lshr i32 %6299, 4
  %6301 = trunc i32 %6300 to i8
  %6302 = and i8 %6301, 1
  store i8 %6302, i8* %26, align 1
  %6303 = zext i1 %6291 to i8
  store i8 %6303, i8* %29, align 1
  %6304 = lshr i32 %6288, 31
  %6305 = trunc i32 %6304 to i8
  store i8 %6305, i8* %32, align 1
  %6306 = xor i32 %6304, %6287
  %6307 = add nuw nsw i32 %6306, %6304
  %6308 = icmp eq i32 %6307, 2
  %6309 = zext i1 %6308 to i8
  store i8 %6309, i8* %38, align 1
  %6310 = sext i32 %6288 to i64
  store i64 %6310, i64* %RCX.i2558, align 8
  %6311 = shl nsw i64 %6310, 2
  %6312 = add nsw i64 %6311, 11187184
  %6313 = add i64 %6280, 19
  store i64 %6313, i64* %3, align 8
  %6314 = inttoptr i64 %6312 to i32*
  %6315 = load i32, i32* %6314, align 4
  %6316 = zext i32 %6315 to i64
  store i64 %6316, i64* %RAX.i2706, align 8
  %6317 = add i64 %6281, -20
  %6318 = add i64 %6280, 22
  store i64 %6318, i64* %3, align 8
  %6319 = inttoptr i64 %6317 to i32*
  %6320 = load i32, i32* %6319, align 4
  %6321 = sub i32 %6315, %6320
  %6322 = icmp ult i32 %6315, %6320
  %6323 = zext i1 %6322 to i8
  store i8 %6323, i8* %14, align 1
  %6324 = and i32 %6321, 255
  %6325 = tail call i32 @llvm.ctpop.i32(i32 %6324)
  %6326 = trunc i32 %6325 to i8
  %6327 = and i8 %6326, 1
  %6328 = xor i8 %6327, 1
  store i8 %6328, i8* %21, align 1
  %6329 = xor i32 %6320, %6315
  %6330 = xor i32 %6329, %6321
  %6331 = lshr i32 %6330, 4
  %6332 = trunc i32 %6331 to i8
  %6333 = and i8 %6332, 1
  store i8 %6333, i8* %26, align 1
  %6334 = icmp eq i32 %6321, 0
  %6335 = zext i1 %6334 to i8
  store i8 %6335, i8* %29, align 1
  %6336 = lshr i32 %6321, 31
  %6337 = trunc i32 %6336 to i8
  store i8 %6337, i8* %32, align 1
  %6338 = lshr i32 %6315, 31
  %6339 = lshr i32 %6320, 31
  %6340 = xor i32 %6339, %6338
  %6341 = xor i32 %6336, %6338
  %6342 = add nuw nsw i32 %6341, %6340
  %6343 = icmp eq i32 %6342, 2
  %6344 = zext i1 %6343 to i8
  store i8 %6344, i8* %38, align 1
  %.v238 = select i1 %6334, i64 265, i64 28
  %6345 = add i64 %6280, %.v238
  store i64 %6345, i64* %3, align 8
  br i1 %6334, label %block_.L_41097e, label %block_.L_410891

block_.L_410891:                                  ; preds = %block_.L_410858, %block_410875
  %6346 = phi i64 [ %6345, %block_410875 ], [ %6280, %block_.L_410858 ]
  %6347 = load i64, i64* %RBP.i, align 8
  %6348 = add i64 %6347, -8
  %6349 = add i64 %6346, 3
  store i64 %6349, i64* %3, align 8
  %6350 = inttoptr i64 %6348 to i32*
  %6351 = load i32, i32* %6350, align 4
  %6352 = add i32 %6351, -20
  %6353 = icmp eq i32 %6352, 0
  %6354 = zext i1 %6353 to i8
  %6355 = lshr i32 %6352, 31
  %6356 = add i32 %6351, -21
  %6357 = zext i32 %6356 to i64
  store i64 %6357, i64* %RAX.i2706, align 8
  store i8 %6354, i8* %14, align 1
  %6358 = and i32 %6356, 255
  %6359 = tail call i32 @llvm.ctpop.i32(i32 %6358)
  %6360 = trunc i32 %6359 to i8
  %6361 = and i8 %6360, 1
  %6362 = xor i8 %6361, 1
  store i8 %6362, i8* %21, align 1
  %6363 = xor i32 %6356, %6352
  %6364 = lshr i32 %6363, 4
  %6365 = trunc i32 %6364 to i8
  %6366 = and i8 %6365, 1
  store i8 %6366, i8* %26, align 1
  %6367 = icmp eq i32 %6356, 0
  %6368 = zext i1 %6367 to i8
  store i8 %6368, i8* %29, align 1
  %6369 = lshr i32 %6356, 31
  %6370 = trunc i32 %6369 to i8
  store i8 %6370, i8* %32, align 1
  %6371 = xor i32 %6369, %6355
  %6372 = add nuw nsw i32 %6371, %6355
  %6373 = icmp eq i32 %6372, 2
  %6374 = zext i1 %6373 to i8
  store i8 %6374, i8* %38, align 1
  %6375 = sext i32 %6356 to i64
  store i64 %6375, i64* %RCX.i2558, align 8
  %6376 = add nsw i64 %6375, 12099168
  %6377 = add i64 %6346, 20
  store i64 %6377, i64* %3, align 8
  %6378 = inttoptr i64 %6376 to i8*
  %6379 = load i8, i8* %6378, align 1
  %6380 = zext i8 %6379 to i64
  store i64 %6380, i64* %RAX.i2706, align 8
  %6381 = zext i8 %6379 to i32
  %6382 = add i64 %6347, -12
  %6383 = add i64 %6346, 23
  store i64 %6383, i64* %3, align 8
  %6384 = inttoptr i64 %6382 to i32*
  %6385 = load i32, i32* %6384, align 4
  %6386 = sub i32 %6381, %6385
  %6387 = icmp ult i32 %6381, %6385
  %6388 = zext i1 %6387 to i8
  store i8 %6388, i8* %14, align 1
  %6389 = and i32 %6386, 255
  %6390 = tail call i32 @llvm.ctpop.i32(i32 %6389)
  %6391 = trunc i32 %6390 to i8
  %6392 = and i8 %6391, 1
  %6393 = xor i8 %6392, 1
  store i8 %6393, i8* %21, align 1
  %6394 = xor i32 %6385, %6381
  %6395 = xor i32 %6394, %6386
  %6396 = lshr i32 %6395, 4
  %6397 = trunc i32 %6396 to i8
  %6398 = and i8 %6397, 1
  store i8 %6398, i8* %26, align 1
  %6399 = icmp eq i32 %6386, 0
  %6400 = zext i1 %6399 to i8
  store i8 %6400, i8* %29, align 1
  %6401 = lshr i32 %6386, 31
  %6402 = trunc i32 %6401 to i8
  store i8 %6402, i8* %32, align 1
  %6403 = lshr i32 %6385, 31
  %6404 = add nuw nsw i32 %6401, %6403
  %6405 = icmp eq i32 %6404, 2
  %6406 = zext i1 %6405 to i8
  store i8 %6406, i8* %38, align 1
  %.v230 = select i1 %6399, i64 29, i64 57
  %6407 = add i64 %6346, %.v230
  store i64 %6407, i64* %3, align 8
  br i1 %6399, label %block_4108ae, label %block_.L_4108ca

block_4108ae:                                     ; preds = %block_.L_410891
  %6408 = load i64, i64* %RBP.i, align 8
  %6409 = add i64 %6408, -8
  %6410 = add i64 %6407, 3
  store i64 %6410, i64* %3, align 8
  %6411 = inttoptr i64 %6409 to i32*
  %6412 = load i32, i32* %6411, align 4
  %6413 = add i32 %6412, -20
  %6414 = icmp eq i32 %6413, 0
  %6415 = zext i1 %6414 to i8
  %6416 = lshr i32 %6413, 31
  %6417 = add i32 %6412, -21
  %6418 = zext i32 %6417 to i64
  store i64 %6418, i64* %RAX.i2706, align 8
  store i8 %6415, i8* %14, align 1
  %6419 = and i32 %6417, 255
  %6420 = tail call i32 @llvm.ctpop.i32(i32 %6419)
  %6421 = trunc i32 %6420 to i8
  %6422 = and i8 %6421, 1
  %6423 = xor i8 %6422, 1
  store i8 %6423, i8* %21, align 1
  %6424 = xor i32 %6417, %6413
  %6425 = lshr i32 %6424, 4
  %6426 = trunc i32 %6425 to i8
  %6427 = and i8 %6426, 1
  store i8 %6427, i8* %26, align 1
  %6428 = icmp eq i32 %6417, 0
  %6429 = zext i1 %6428 to i8
  store i8 %6429, i8* %29, align 1
  %6430 = lshr i32 %6417, 31
  %6431 = trunc i32 %6430 to i8
  store i8 %6431, i8* %32, align 1
  %6432 = xor i32 %6430, %6416
  %6433 = add nuw nsw i32 %6432, %6416
  %6434 = icmp eq i32 %6433, 2
  %6435 = zext i1 %6434 to i8
  store i8 %6435, i8* %38, align 1
  %6436 = sext i32 %6417 to i64
  store i64 %6436, i64* %RCX.i2558, align 8
  %6437 = shl nsw i64 %6436, 2
  %6438 = add nsw i64 %6437, 11187184
  %6439 = add i64 %6407, 19
  store i64 %6439, i64* %3, align 8
  %6440 = inttoptr i64 %6438 to i32*
  %6441 = load i32, i32* %6440, align 4
  %6442 = zext i32 %6441 to i64
  store i64 %6442, i64* %RAX.i2706, align 8
  %6443 = add i64 %6408, -20
  %6444 = add i64 %6407, 22
  store i64 %6444, i64* %3, align 8
  %6445 = inttoptr i64 %6443 to i32*
  %6446 = load i32, i32* %6445, align 4
  %6447 = sub i32 %6441, %6446
  %6448 = icmp ult i32 %6441, %6446
  %6449 = zext i1 %6448 to i8
  store i8 %6449, i8* %14, align 1
  %6450 = and i32 %6447, 255
  %6451 = tail call i32 @llvm.ctpop.i32(i32 %6450)
  %6452 = trunc i32 %6451 to i8
  %6453 = and i8 %6452, 1
  %6454 = xor i8 %6453, 1
  store i8 %6454, i8* %21, align 1
  %6455 = xor i32 %6446, %6441
  %6456 = xor i32 %6455, %6447
  %6457 = lshr i32 %6456, 4
  %6458 = trunc i32 %6457 to i8
  %6459 = and i8 %6458, 1
  store i8 %6459, i8* %26, align 1
  %6460 = icmp eq i32 %6447, 0
  %6461 = zext i1 %6460 to i8
  store i8 %6461, i8* %29, align 1
  %6462 = lshr i32 %6447, 31
  %6463 = trunc i32 %6462 to i8
  store i8 %6463, i8* %32, align 1
  %6464 = lshr i32 %6441, 31
  %6465 = lshr i32 %6446, 31
  %6466 = xor i32 %6465, %6464
  %6467 = xor i32 %6462, %6464
  %6468 = add nuw nsw i32 %6467, %6466
  %6469 = icmp eq i32 %6468, 2
  %6470 = zext i1 %6469 to i8
  store i8 %6470, i8* %38, align 1
  %.v237 = select i1 %6460, i64 208, i64 28
  %6471 = add i64 %6407, %.v237
  store i64 %6471, i64* %3, align 8
  br i1 %6460, label %block_.L_41097e, label %block_.L_4108ca

block_.L_4108ca:                                  ; preds = %block_.L_410891, %block_4108ae
  %6472 = phi i64 [ %6471, %block_4108ae ], [ %6407, %block_.L_410891 ]
  %6473 = load i64, i64* %RBP.i, align 8
  %6474 = add i64 %6473, -8
  %6475 = add i64 %6472, 3
  store i64 %6475, i64* %3, align 8
  %6476 = inttoptr i64 %6474 to i32*
  %6477 = load i32, i32* %6476, align 4
  %6478 = add i32 %6477, -20
  %6479 = lshr i32 %6478, 31
  %6480 = add i32 %6477, -40
  %6481 = zext i32 %6480 to i64
  store i64 %6481, i64* %RAX.i2706, align 8
  %6482 = icmp ult i32 %6478, 20
  %6483 = zext i1 %6482 to i8
  store i8 %6483, i8* %14, align 1
  %6484 = and i32 %6480, 255
  %6485 = tail call i32 @llvm.ctpop.i32(i32 %6484)
  %6486 = trunc i32 %6485 to i8
  %6487 = and i8 %6486, 1
  %6488 = xor i8 %6487, 1
  store i8 %6488, i8* %21, align 1
  %6489 = xor i32 %6478, 16
  %6490 = xor i32 %6489, %6480
  %6491 = lshr i32 %6490, 4
  %6492 = trunc i32 %6491 to i8
  %6493 = and i8 %6492, 1
  store i8 %6493, i8* %26, align 1
  %6494 = icmp eq i32 %6480, 0
  %6495 = zext i1 %6494 to i8
  store i8 %6495, i8* %29, align 1
  %6496 = lshr i32 %6480, 31
  %6497 = trunc i32 %6496 to i8
  store i8 %6497, i8* %32, align 1
  %6498 = xor i32 %6496, %6479
  %6499 = add nuw nsw i32 %6498, %6479
  %6500 = icmp eq i32 %6499, 2
  %6501 = zext i1 %6500 to i8
  store i8 %6501, i8* %38, align 1
  %6502 = sext i32 %6480 to i64
  store i64 %6502, i64* %RCX.i2558, align 8
  %6503 = add nsw i64 %6502, 12099168
  %6504 = add i64 %6472, 20
  store i64 %6504, i64* %3, align 8
  %6505 = inttoptr i64 %6503 to i8*
  %6506 = load i8, i8* %6505, align 1
  %6507 = zext i8 %6506 to i64
  store i64 %6507, i64* %RAX.i2706, align 8
  %6508 = zext i8 %6506 to i32
  %6509 = add i64 %6473, -12
  %6510 = add i64 %6472, 23
  store i64 %6510, i64* %3, align 8
  %6511 = inttoptr i64 %6509 to i32*
  %6512 = load i32, i32* %6511, align 4
  %6513 = sub i32 %6508, %6512
  %6514 = icmp ult i32 %6508, %6512
  %6515 = zext i1 %6514 to i8
  store i8 %6515, i8* %14, align 1
  %6516 = and i32 %6513, 255
  %6517 = tail call i32 @llvm.ctpop.i32(i32 %6516)
  %6518 = trunc i32 %6517 to i8
  %6519 = and i8 %6518, 1
  %6520 = xor i8 %6519, 1
  store i8 %6520, i8* %21, align 1
  %6521 = xor i32 %6512, %6508
  %6522 = xor i32 %6521, %6513
  %6523 = lshr i32 %6522, 4
  %6524 = trunc i32 %6523 to i8
  %6525 = and i8 %6524, 1
  store i8 %6525, i8* %26, align 1
  %6526 = icmp eq i32 %6513, 0
  %6527 = zext i1 %6526 to i8
  store i8 %6527, i8* %29, align 1
  %6528 = lshr i32 %6513, 31
  %6529 = trunc i32 %6528 to i8
  store i8 %6529, i8* %32, align 1
  %6530 = lshr i32 %6512, 31
  %6531 = add nuw nsw i32 %6528, %6530
  %6532 = icmp eq i32 %6531, 2
  %6533 = zext i1 %6532 to i8
  store i8 %6533, i8* %38, align 1
  %.v231 = select i1 %6526, i64 29, i64 57
  %6534 = add i64 %6472, %.v231
  store i64 %6534, i64* %3, align 8
  br i1 %6526, label %block_4108e7, label %block_.L_410903

block_4108e7:                                     ; preds = %block_.L_4108ca
  %6535 = load i64, i64* %RBP.i, align 8
  %6536 = add i64 %6535, -8
  %6537 = add i64 %6534, 3
  store i64 %6537, i64* %3, align 8
  %6538 = inttoptr i64 %6536 to i32*
  %6539 = load i32, i32* %6538, align 4
  %6540 = add i32 %6539, -20
  %6541 = lshr i32 %6540, 31
  %6542 = add i32 %6539, -40
  %6543 = zext i32 %6542 to i64
  store i64 %6543, i64* %RAX.i2706, align 8
  %6544 = icmp ult i32 %6540, 20
  %6545 = zext i1 %6544 to i8
  store i8 %6545, i8* %14, align 1
  %6546 = and i32 %6542, 255
  %6547 = tail call i32 @llvm.ctpop.i32(i32 %6546)
  %6548 = trunc i32 %6547 to i8
  %6549 = and i8 %6548, 1
  %6550 = xor i8 %6549, 1
  store i8 %6550, i8* %21, align 1
  %6551 = xor i32 %6540, 16
  %6552 = xor i32 %6551, %6542
  %6553 = lshr i32 %6552, 4
  %6554 = trunc i32 %6553 to i8
  %6555 = and i8 %6554, 1
  store i8 %6555, i8* %26, align 1
  %6556 = icmp eq i32 %6542, 0
  %6557 = zext i1 %6556 to i8
  store i8 %6557, i8* %29, align 1
  %6558 = lshr i32 %6542, 31
  %6559 = trunc i32 %6558 to i8
  store i8 %6559, i8* %32, align 1
  %6560 = xor i32 %6558, %6541
  %6561 = add nuw nsw i32 %6560, %6541
  %6562 = icmp eq i32 %6561, 2
  %6563 = zext i1 %6562 to i8
  store i8 %6563, i8* %38, align 1
  %6564 = sext i32 %6542 to i64
  store i64 %6564, i64* %RCX.i2558, align 8
  %6565 = shl nsw i64 %6564, 2
  %6566 = add nsw i64 %6565, 11187184
  %6567 = add i64 %6534, 19
  store i64 %6567, i64* %3, align 8
  %6568 = inttoptr i64 %6566 to i32*
  %6569 = load i32, i32* %6568, align 4
  %6570 = zext i32 %6569 to i64
  store i64 %6570, i64* %RAX.i2706, align 8
  %6571 = add i64 %6535, -24
  %6572 = add i64 %6534, 22
  store i64 %6572, i64* %3, align 8
  %6573 = inttoptr i64 %6571 to i32*
  %6574 = load i32, i32* %6573, align 4
  %6575 = sub i32 %6569, %6574
  %6576 = icmp ult i32 %6569, %6574
  %6577 = zext i1 %6576 to i8
  store i8 %6577, i8* %14, align 1
  %6578 = and i32 %6575, 255
  %6579 = tail call i32 @llvm.ctpop.i32(i32 %6578)
  %6580 = trunc i32 %6579 to i8
  %6581 = and i8 %6580, 1
  %6582 = xor i8 %6581, 1
  store i8 %6582, i8* %21, align 1
  %6583 = xor i32 %6574, %6569
  %6584 = xor i32 %6583, %6575
  %6585 = lshr i32 %6584, 4
  %6586 = trunc i32 %6585 to i8
  %6587 = and i8 %6586, 1
  store i8 %6587, i8* %26, align 1
  %6588 = icmp eq i32 %6575, 0
  %6589 = zext i1 %6588 to i8
  store i8 %6589, i8* %29, align 1
  %6590 = lshr i32 %6575, 31
  %6591 = trunc i32 %6590 to i8
  store i8 %6591, i8* %32, align 1
  %6592 = lshr i32 %6569, 31
  %6593 = lshr i32 %6574, 31
  %6594 = xor i32 %6593, %6592
  %6595 = xor i32 %6590, %6592
  %6596 = add nuw nsw i32 %6595, %6594
  %6597 = icmp eq i32 %6596, 2
  %6598 = zext i1 %6597 to i8
  store i8 %6598, i8* %38, align 1
  %.v236 = select i1 %6588, i64 151, i64 28
  %6599 = add i64 %6534, %.v236
  store i64 %6599, i64* %3, align 8
  br i1 %6588, label %block_.L_41097e, label %block_.L_410903

block_.L_410903:                                  ; preds = %block_.L_4108ca, %block_4108e7
  %6600 = phi i64 [ %6599, %block_4108e7 ], [ %6534, %block_.L_4108ca ]
  %6601 = load i64, i64* %RBP.i, align 8
  %6602 = add i64 %6601, -8
  %6603 = add i64 %6600, 3
  store i64 %6603, i64* %3, align 8
  %6604 = inttoptr i64 %6602 to i32*
  %6605 = load i32, i32* %6604, align 4
  %6606 = add i32 %6605, -20
  %6607 = lshr i32 %6606, 31
  %6608 = add i32 %6605, -19
  %6609 = zext i32 %6608 to i64
  store i64 %6609, i64* %RAX.i2706, align 8
  %6610 = icmp eq i32 %6606, -1
  %6611 = icmp eq i32 %6608, 0
  %6612 = or i1 %6610, %6611
  %6613 = zext i1 %6612 to i8
  store i8 %6613, i8* %14, align 1
  %6614 = and i32 %6608, 255
  %6615 = tail call i32 @llvm.ctpop.i32(i32 %6614)
  %6616 = trunc i32 %6615 to i8
  %6617 = and i8 %6616, 1
  %6618 = xor i8 %6617, 1
  store i8 %6618, i8* %21, align 1
  %6619 = xor i32 %6608, %6606
  %6620 = lshr i32 %6619, 4
  %6621 = trunc i32 %6620 to i8
  %6622 = and i8 %6621, 1
  store i8 %6622, i8* %26, align 1
  %6623 = zext i1 %6611 to i8
  store i8 %6623, i8* %29, align 1
  %6624 = lshr i32 %6608, 31
  %6625 = trunc i32 %6624 to i8
  store i8 %6625, i8* %32, align 1
  %6626 = xor i32 %6624, %6607
  %6627 = add nuw nsw i32 %6626, %6624
  %6628 = icmp eq i32 %6627, 2
  %6629 = zext i1 %6628 to i8
  store i8 %6629, i8* %38, align 1
  %6630 = sext i32 %6608 to i64
  store i64 %6630, i64* %RCX.i2558, align 8
  %6631 = add nsw i64 %6630, 12099168
  %6632 = add i64 %6600, 20
  store i64 %6632, i64* %3, align 8
  %6633 = inttoptr i64 %6631 to i8*
  %6634 = load i8, i8* %6633, align 1
  %6635 = zext i8 %6634 to i64
  store i64 %6635, i64* %RAX.i2706, align 8
  %6636 = zext i8 %6634 to i32
  %6637 = add i64 %6601, -12
  %6638 = add i64 %6600, 23
  store i64 %6638, i64* %3, align 8
  %6639 = inttoptr i64 %6637 to i32*
  %6640 = load i32, i32* %6639, align 4
  %6641 = sub i32 %6636, %6640
  %6642 = icmp ult i32 %6636, %6640
  %6643 = zext i1 %6642 to i8
  store i8 %6643, i8* %14, align 1
  %6644 = and i32 %6641, 255
  %6645 = tail call i32 @llvm.ctpop.i32(i32 %6644)
  %6646 = trunc i32 %6645 to i8
  %6647 = and i8 %6646, 1
  %6648 = xor i8 %6647, 1
  store i8 %6648, i8* %21, align 1
  %6649 = xor i32 %6640, %6636
  %6650 = xor i32 %6649, %6641
  %6651 = lshr i32 %6650, 4
  %6652 = trunc i32 %6651 to i8
  %6653 = and i8 %6652, 1
  store i8 %6653, i8* %26, align 1
  %6654 = icmp eq i32 %6641, 0
  %6655 = zext i1 %6654 to i8
  store i8 %6655, i8* %29, align 1
  %6656 = lshr i32 %6641, 31
  %6657 = trunc i32 %6656 to i8
  store i8 %6657, i8* %32, align 1
  %6658 = lshr i32 %6640, 31
  %6659 = add nuw nsw i32 %6656, %6658
  %6660 = icmp eq i32 %6659, 2
  %6661 = zext i1 %6660 to i8
  store i8 %6661, i8* %38, align 1
  %.v232 = select i1 %6654, i64 29, i64 57
  %6662 = add i64 %6600, %.v232
  store i64 %6662, i64* %3, align 8
  br i1 %6654, label %block_410920, label %block_.L_41093c

block_410920:                                     ; preds = %block_.L_410903
  %6663 = load i64, i64* %RBP.i, align 8
  %6664 = add i64 %6663, -8
  %6665 = add i64 %6662, 3
  store i64 %6665, i64* %3, align 8
  %6666 = inttoptr i64 %6664 to i32*
  %6667 = load i32, i32* %6666, align 4
  %6668 = add i32 %6667, -20
  %6669 = lshr i32 %6668, 31
  %6670 = add i32 %6667, -19
  %6671 = zext i32 %6670 to i64
  store i64 %6671, i64* %RAX.i2706, align 8
  %6672 = icmp eq i32 %6668, -1
  %6673 = icmp eq i32 %6670, 0
  %6674 = or i1 %6672, %6673
  %6675 = zext i1 %6674 to i8
  store i8 %6675, i8* %14, align 1
  %6676 = and i32 %6670, 255
  %6677 = tail call i32 @llvm.ctpop.i32(i32 %6676)
  %6678 = trunc i32 %6677 to i8
  %6679 = and i8 %6678, 1
  %6680 = xor i8 %6679, 1
  store i8 %6680, i8* %21, align 1
  %6681 = xor i32 %6670, %6668
  %6682 = lshr i32 %6681, 4
  %6683 = trunc i32 %6682 to i8
  %6684 = and i8 %6683, 1
  store i8 %6684, i8* %26, align 1
  %6685 = zext i1 %6673 to i8
  store i8 %6685, i8* %29, align 1
  %6686 = lshr i32 %6670, 31
  %6687 = trunc i32 %6686 to i8
  store i8 %6687, i8* %32, align 1
  %6688 = xor i32 %6686, %6669
  %6689 = add nuw nsw i32 %6688, %6686
  %6690 = icmp eq i32 %6689, 2
  %6691 = zext i1 %6690 to i8
  store i8 %6691, i8* %38, align 1
  %6692 = sext i32 %6670 to i64
  store i64 %6692, i64* %RCX.i2558, align 8
  %6693 = shl nsw i64 %6692, 2
  %6694 = add nsw i64 %6693, 11187184
  %6695 = add i64 %6662, 19
  store i64 %6695, i64* %3, align 8
  %6696 = inttoptr i64 %6694 to i32*
  %6697 = load i32, i32* %6696, align 4
  %6698 = zext i32 %6697 to i64
  store i64 %6698, i64* %RAX.i2706, align 8
  %6699 = add i64 %6663, -24
  %6700 = add i64 %6662, 22
  store i64 %6700, i64* %3, align 8
  %6701 = inttoptr i64 %6699 to i32*
  %6702 = load i32, i32* %6701, align 4
  %6703 = sub i32 %6697, %6702
  %6704 = icmp ult i32 %6697, %6702
  %6705 = zext i1 %6704 to i8
  store i8 %6705, i8* %14, align 1
  %6706 = and i32 %6703, 255
  %6707 = tail call i32 @llvm.ctpop.i32(i32 %6706)
  %6708 = trunc i32 %6707 to i8
  %6709 = and i8 %6708, 1
  %6710 = xor i8 %6709, 1
  store i8 %6710, i8* %21, align 1
  %6711 = xor i32 %6702, %6697
  %6712 = xor i32 %6711, %6703
  %6713 = lshr i32 %6712, 4
  %6714 = trunc i32 %6713 to i8
  %6715 = and i8 %6714, 1
  store i8 %6715, i8* %26, align 1
  %6716 = icmp eq i32 %6703, 0
  %6717 = zext i1 %6716 to i8
  store i8 %6717, i8* %29, align 1
  %6718 = lshr i32 %6703, 31
  %6719 = trunc i32 %6718 to i8
  store i8 %6719, i8* %32, align 1
  %6720 = lshr i32 %6697, 31
  %6721 = lshr i32 %6702, 31
  %6722 = xor i32 %6721, %6720
  %6723 = xor i32 %6718, %6720
  %6724 = add nuw nsw i32 %6723, %6722
  %6725 = icmp eq i32 %6724, 2
  %6726 = zext i1 %6725 to i8
  store i8 %6726, i8* %38, align 1
  %.v235 = select i1 %6716, i64 94, i64 28
  %6727 = add i64 %6662, %.v235
  store i64 %6727, i64* %3, align 8
  br i1 %6716, label %block_.L_41097e, label %block_.L_41093c

block_.L_41093c:                                  ; preds = %block_.L_410903, %block_410920
  %6728 = phi i64 [ %6727, %block_410920 ], [ %6662, %block_.L_410903 ]
  %6729 = load i64, i64* %RBP.i, align 8
  %6730 = add i64 %6729, -8
  %6731 = add i64 %6728, 3
  store i64 %6731, i64* %3, align 8
  %6732 = inttoptr i64 %6730 to i32*
  %6733 = load i32, i32* %6732, align 4
  %6734 = add i32 %6733, -20
  %6735 = icmp eq i32 %6734, 0
  %6736 = zext i1 %6735 to i8
  %6737 = lshr i32 %6734, 31
  %6738 = add i32 %6733, -21
  %6739 = zext i32 %6738 to i64
  store i64 %6739, i64* %RAX.i2706, align 8
  store i8 %6736, i8* %14, align 1
  %6740 = and i32 %6738, 255
  %6741 = tail call i32 @llvm.ctpop.i32(i32 %6740)
  %6742 = trunc i32 %6741 to i8
  %6743 = and i8 %6742, 1
  %6744 = xor i8 %6743, 1
  store i8 %6744, i8* %21, align 1
  %6745 = xor i32 %6738, %6734
  %6746 = lshr i32 %6745, 4
  %6747 = trunc i32 %6746 to i8
  %6748 = and i8 %6747, 1
  store i8 %6748, i8* %26, align 1
  %6749 = icmp eq i32 %6738, 0
  %6750 = zext i1 %6749 to i8
  store i8 %6750, i8* %29, align 1
  %6751 = lshr i32 %6738, 31
  %6752 = trunc i32 %6751 to i8
  store i8 %6752, i8* %32, align 1
  %6753 = xor i32 %6751, %6737
  %6754 = add nuw nsw i32 %6753, %6737
  %6755 = icmp eq i32 %6754, 2
  %6756 = zext i1 %6755 to i8
  store i8 %6756, i8* %38, align 1
  %6757 = sext i32 %6738 to i64
  store i64 %6757, i64* %RCX.i2558, align 8
  %6758 = add nsw i64 %6757, 12099168
  %6759 = add i64 %6728, 20
  store i64 %6759, i64* %3, align 8
  %6760 = inttoptr i64 %6758 to i8*
  %6761 = load i8, i8* %6760, align 1
  %6762 = zext i8 %6761 to i64
  store i64 %6762, i64* %RAX.i2706, align 8
  %6763 = zext i8 %6761 to i32
  %6764 = add i64 %6729, -12
  %6765 = add i64 %6728, 23
  store i64 %6765, i64* %3, align 8
  %6766 = inttoptr i64 %6764 to i32*
  %6767 = load i32, i32* %6766, align 4
  %6768 = sub i32 %6763, %6767
  %6769 = icmp ult i32 %6763, %6767
  %6770 = zext i1 %6769 to i8
  store i8 %6770, i8* %14, align 1
  %6771 = and i32 %6768, 255
  %6772 = tail call i32 @llvm.ctpop.i32(i32 %6771)
  %6773 = trunc i32 %6772 to i8
  %6774 = and i8 %6773, 1
  %6775 = xor i8 %6774, 1
  store i8 %6775, i8* %21, align 1
  %6776 = xor i32 %6767, %6763
  %6777 = xor i32 %6776, %6768
  %6778 = lshr i32 %6777, 4
  %6779 = trunc i32 %6778 to i8
  %6780 = and i8 %6779, 1
  store i8 %6780, i8* %26, align 1
  %6781 = icmp eq i32 %6768, 0
  %6782 = zext i1 %6781 to i8
  store i8 %6782, i8* %29, align 1
  %6783 = lshr i32 %6768, 31
  %6784 = trunc i32 %6783 to i8
  store i8 %6784, i8* %32, align 1
  %6785 = lshr i32 %6767, 31
  %6786 = add nuw nsw i32 %6783, %6785
  %6787 = icmp eq i32 %6786, 2
  %6788 = zext i1 %6787 to i8
  store i8 %6788, i8* %38, align 1
  %.v233 = select i1 %6781, i64 29, i64 57
  %6789 = add i64 %6728, %.v233
  store i64 %6789, i64* %3, align 8
  br i1 %6781, label %block_410959, label %block_.L_410975

block_410959:                                     ; preds = %block_.L_41093c
  %6790 = load i64, i64* %RBP.i, align 8
  %6791 = add i64 %6790, -8
  %6792 = add i64 %6789, 3
  store i64 %6792, i64* %3, align 8
  %6793 = inttoptr i64 %6791 to i32*
  %6794 = load i32, i32* %6793, align 4
  %6795 = add i32 %6794, -20
  %6796 = icmp eq i32 %6795, 0
  %6797 = zext i1 %6796 to i8
  %6798 = lshr i32 %6795, 31
  %6799 = add i32 %6794, -21
  %6800 = zext i32 %6799 to i64
  store i64 %6800, i64* %RAX.i2706, align 8
  store i8 %6797, i8* %14, align 1
  %6801 = and i32 %6799, 255
  %6802 = tail call i32 @llvm.ctpop.i32(i32 %6801)
  %6803 = trunc i32 %6802 to i8
  %6804 = and i8 %6803, 1
  %6805 = xor i8 %6804, 1
  store i8 %6805, i8* %21, align 1
  %6806 = xor i32 %6799, %6795
  %6807 = lshr i32 %6806, 4
  %6808 = trunc i32 %6807 to i8
  %6809 = and i8 %6808, 1
  store i8 %6809, i8* %26, align 1
  %6810 = icmp eq i32 %6799, 0
  %6811 = zext i1 %6810 to i8
  store i8 %6811, i8* %29, align 1
  %6812 = lshr i32 %6799, 31
  %6813 = trunc i32 %6812 to i8
  store i8 %6813, i8* %32, align 1
  %6814 = xor i32 %6812, %6798
  %6815 = add nuw nsw i32 %6814, %6798
  %6816 = icmp eq i32 %6815, 2
  %6817 = zext i1 %6816 to i8
  store i8 %6817, i8* %38, align 1
  %6818 = sext i32 %6799 to i64
  store i64 %6818, i64* %RCX.i2558, align 8
  %6819 = shl nsw i64 %6818, 2
  %6820 = add nsw i64 %6819, 11187184
  %6821 = add i64 %6789, 19
  store i64 %6821, i64* %3, align 8
  %6822 = inttoptr i64 %6820 to i32*
  %6823 = load i32, i32* %6822, align 4
  %6824 = zext i32 %6823 to i64
  store i64 %6824, i64* %RAX.i2706, align 8
  %6825 = add i64 %6790, -24
  %6826 = add i64 %6789, 22
  store i64 %6826, i64* %3, align 8
  %6827 = inttoptr i64 %6825 to i32*
  %6828 = load i32, i32* %6827, align 4
  %6829 = sub i32 %6823, %6828
  %6830 = icmp ult i32 %6823, %6828
  %6831 = zext i1 %6830 to i8
  store i8 %6831, i8* %14, align 1
  %6832 = and i32 %6829, 255
  %6833 = tail call i32 @llvm.ctpop.i32(i32 %6832)
  %6834 = trunc i32 %6833 to i8
  %6835 = and i8 %6834, 1
  %6836 = xor i8 %6835, 1
  store i8 %6836, i8* %21, align 1
  %6837 = xor i32 %6828, %6823
  %6838 = xor i32 %6837, %6829
  %6839 = lshr i32 %6838, 4
  %6840 = trunc i32 %6839 to i8
  %6841 = and i8 %6840, 1
  store i8 %6841, i8* %26, align 1
  %6842 = icmp eq i32 %6829, 0
  %6843 = zext i1 %6842 to i8
  store i8 %6843, i8* %29, align 1
  %6844 = lshr i32 %6829, 31
  %6845 = trunc i32 %6844 to i8
  store i8 %6845, i8* %32, align 1
  %6846 = lshr i32 %6823, 31
  %6847 = lshr i32 %6828, 31
  %6848 = xor i32 %6847, %6846
  %6849 = xor i32 %6844, %6846
  %6850 = add nuw nsw i32 %6849, %6848
  %6851 = icmp eq i32 %6850, 2
  %6852 = zext i1 %6851 to i8
  store i8 %6852, i8* %38, align 1
  %.v234 = select i1 %6842, i64 37, i64 28
  %6853 = add i64 %6789, %.v234
  store i64 %6853, i64* %3, align 8
  br i1 %6842, label %block_.L_41097e, label %block_.L_410975

block_.L_410975:                                  ; preds = %block_.L_41093c, %block_410959
  %6854 = phi i64 [ %6853, %block_410959 ], [ %6789, %block_.L_41093c ]
  %6855 = load i64, i64* %RBP.i, align 8
  %6856 = add i64 %6855, -28
  %6857 = add i64 %6854, 3
  store i64 %6857, i64* %3, align 8
  %6858 = inttoptr i64 %6856 to i32*
  %6859 = load i32, i32* %6858, align 4
  %6860 = add i32 %6859, 1
  %6861 = zext i32 %6860 to i64
  store i64 %6861, i64* %RAX.i2706, align 8
  %6862 = icmp eq i32 %6859, -1
  %6863 = icmp eq i32 %6860, 0
  %6864 = or i1 %6862, %6863
  %6865 = zext i1 %6864 to i8
  store i8 %6865, i8* %14, align 1
  %6866 = and i32 %6860, 255
  %6867 = tail call i32 @llvm.ctpop.i32(i32 %6866)
  %6868 = trunc i32 %6867 to i8
  %6869 = and i8 %6868, 1
  %6870 = xor i8 %6869, 1
  store i8 %6870, i8* %21, align 1
  %6871 = xor i32 %6860, %6859
  %6872 = lshr i32 %6871, 4
  %6873 = trunc i32 %6872 to i8
  %6874 = and i8 %6873, 1
  store i8 %6874, i8* %26, align 1
  %6875 = zext i1 %6863 to i8
  store i8 %6875, i8* %29, align 1
  %6876 = lshr i32 %6860, 31
  %6877 = trunc i32 %6876 to i8
  store i8 %6877, i8* %32, align 1
  %6878 = lshr i32 %6859, 31
  %6879 = xor i32 %6876, %6878
  %6880 = add nuw nsw i32 %6879, %6876
  %6881 = icmp eq i32 %6880, 2
  %6882 = zext i1 %6881 to i8
  store i8 %6882, i8* %38, align 1
  %6883 = add i64 %6854, 9
  store i64 %6883, i64* %3, align 8
  store i32 %6860, i32* %6858, align 4
  %.pre182 = load i64, i64* %3, align 8
  br label %block_.L_41097e

block_.L_41097e:                                  ; preds = %block_.L_410805, %block_.L_410975, %block_410959, %block_410920, %block_4108e7, %block_4108ae, %block_410875, %block_41083c
  %6884 = phi i64 [ %.pre182, %block_.L_410975 ], [ %6853, %block_410959 ], [ %6727, %block_410920 ], [ %6599, %block_4108e7 ], [ %6471, %block_4108ae ], [ %6345, %block_410875 ], [ %6217, %block_41083c ], [ %6093, %block_.L_410805 ]
  %6885 = load i64, i64* %RBP.i, align 8
  %6886 = add i64 %6885, -8
  %6887 = add i64 %6884, 3
  store i64 %6887, i64* %3, align 8
  %6888 = inttoptr i64 %6886 to i32*
  %6889 = load i32, i32* %6888, align 4
  %6890 = add i32 %6889, 1
  %6891 = zext i32 %6890 to i64
  store i64 %6891, i64* %RAX.i2706, align 8
  %6892 = icmp eq i32 %6889, -1
  %6893 = icmp eq i32 %6890, 0
  %6894 = or i1 %6892, %6893
  %6895 = zext i1 %6894 to i8
  store i8 %6895, i8* %14, align 1
  %6896 = and i32 %6890, 255
  %6897 = tail call i32 @llvm.ctpop.i32(i32 %6896)
  %6898 = trunc i32 %6897 to i8
  %6899 = and i8 %6898, 1
  %6900 = xor i8 %6899, 1
  store i8 %6900, i8* %21, align 1
  %6901 = xor i32 %6890, %6889
  %6902 = lshr i32 %6901, 4
  %6903 = trunc i32 %6902 to i8
  %6904 = and i8 %6903, 1
  store i8 %6904, i8* %26, align 1
  %6905 = zext i1 %6893 to i8
  store i8 %6905, i8* %29, align 1
  %6906 = lshr i32 %6890, 31
  %6907 = trunc i32 %6906 to i8
  store i8 %6907, i8* %32, align 1
  %6908 = lshr i32 %6889, 31
  %6909 = xor i32 %6906, %6908
  %6910 = add nuw nsw i32 %6909, %6906
  %6911 = icmp eq i32 %6910, 2
  %6912 = zext i1 %6911 to i8
  store i8 %6912, i8* %38, align 1
  %6913 = sext i32 %6890 to i64
  store i64 %6913, i64* %RCX.i2558, align 8
  %6914 = add nsw i64 %6913, 12099168
  %6915 = add i64 %6884, 17
  store i64 %6915, i64* %3, align 8
  %6916 = inttoptr i64 %6914 to i8*
  %6917 = load i8, i8* %6916, align 1
  %6918 = zext i8 %6917 to i64
  store i64 %6918, i64* %RAX.i2706, align 8
  %6919 = zext i8 %6917 to i32
  store i8 0, i8* %14, align 1
  %6920 = tail call i32 @llvm.ctpop.i32(i32 %6919)
  %6921 = trunc i32 %6920 to i8
  %6922 = and i8 %6921, 1
  %6923 = xor i8 %6922, 1
  store i8 %6923, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %6924 = icmp eq i8 %6917, 0
  %6925 = zext i1 %6924 to i8
  store i8 %6925, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v215 = select i1 %6924, i64 26, i64 377
  %6926 = add i64 %6884, %.v215
  store i64 %6926, i64* %3, align 8
  br i1 %6924, label %block_410998, label %block_.L_410af7

block_410998:                                     ; preds = %block_.L_41097e
  %6927 = add i64 %6926, 3
  store i64 %6927, i64* %3, align 8
  %6928 = load i32, i32* %6888, align 4
  %6929 = add i32 %6928, 1
  %6930 = lshr i32 %6929, 31
  %6931 = add i32 %6928, 2
  %6932 = zext i32 %6931 to i64
  store i64 %6932, i64* %RAX.i2706, align 8
  %6933 = icmp eq i32 %6929, -1
  %6934 = icmp eq i32 %6931, 0
  %6935 = or i1 %6933, %6934
  %6936 = zext i1 %6935 to i8
  store i8 %6936, i8* %14, align 1
  %6937 = and i32 %6931, 255
  %6938 = tail call i32 @llvm.ctpop.i32(i32 %6937)
  %6939 = trunc i32 %6938 to i8
  %6940 = and i8 %6939, 1
  %6941 = xor i8 %6940, 1
  store i8 %6941, i8* %21, align 1
  %6942 = xor i32 %6931, %6929
  %6943 = lshr i32 %6942, 4
  %6944 = trunc i32 %6943 to i8
  %6945 = and i8 %6944, 1
  store i8 %6945, i8* %26, align 1
  %6946 = zext i1 %6934 to i8
  store i8 %6946, i8* %29, align 1
  %6947 = lshr i32 %6931, 31
  %6948 = trunc i32 %6947 to i8
  store i8 %6948, i8* %32, align 1
  %6949 = xor i32 %6947, %6930
  %6950 = add nuw nsw i32 %6949, %6947
  %6951 = icmp eq i32 %6950, 2
  %6952 = zext i1 %6951 to i8
  store i8 %6952, i8* %38, align 1
  %6953 = sext i32 %6931 to i64
  store i64 %6953, i64* %RCX.i2558, align 8
  %6954 = add nsw i64 %6953, 12099168
  %6955 = add i64 %6926, 20
  store i64 %6955, i64* %3, align 8
  %6956 = inttoptr i64 %6954 to i8*
  %6957 = load i8, i8* %6956, align 1
  %6958 = zext i8 %6957 to i64
  store i64 %6958, i64* %RAX.i2706, align 8
  %6959 = zext i8 %6957 to i32
  %6960 = add i64 %6885, -12
  %6961 = add i64 %6926, 23
  store i64 %6961, i64* %3, align 8
  %6962 = inttoptr i64 %6960 to i32*
  %6963 = load i32, i32* %6962, align 4
  %6964 = sub i32 %6959, %6963
  %6965 = icmp ult i32 %6959, %6963
  %6966 = zext i1 %6965 to i8
  store i8 %6966, i8* %14, align 1
  %6967 = and i32 %6964, 255
  %6968 = tail call i32 @llvm.ctpop.i32(i32 %6967)
  %6969 = trunc i32 %6968 to i8
  %6970 = and i8 %6969, 1
  %6971 = xor i8 %6970, 1
  store i8 %6971, i8* %21, align 1
  %6972 = xor i32 %6963, %6959
  %6973 = xor i32 %6972, %6964
  %6974 = lshr i32 %6973, 4
  %6975 = trunc i32 %6974 to i8
  %6976 = and i8 %6975, 1
  store i8 %6976, i8* %26, align 1
  %6977 = icmp eq i32 %6964, 0
  %6978 = zext i1 %6977 to i8
  store i8 %6978, i8* %29, align 1
  %6979 = lshr i32 %6964, 31
  %6980 = trunc i32 %6979 to i8
  store i8 %6980, i8* %32, align 1
  %6981 = lshr i32 %6963, 31
  %6982 = add nuw nsw i32 %6979, %6981
  %6983 = icmp eq i32 %6982, 2
  %6984 = zext i1 %6983 to i8
  store i8 %6984, i8* %38, align 1
  %.v216 = select i1 %6977, i64 29, i64 57
  %6985 = add i64 %6926, %.v216
  store i64 %6985, i64* %3, align 8
  br i1 %6977, label %block_4109b5, label %block_.L_4109d1

block_4109b5:                                     ; preds = %block_410998
  %6986 = load i64, i64* %RBP.i, align 8
  %6987 = add i64 %6986, -8
  %6988 = add i64 %6985, 3
  store i64 %6988, i64* %3, align 8
  %6989 = inttoptr i64 %6987 to i32*
  %6990 = load i32, i32* %6989, align 4
  %6991 = add i32 %6990, 1
  %6992 = lshr i32 %6991, 31
  %6993 = add i32 %6990, 2
  %6994 = zext i32 %6993 to i64
  store i64 %6994, i64* %RAX.i2706, align 8
  %6995 = icmp eq i32 %6991, -1
  %6996 = icmp eq i32 %6993, 0
  %6997 = or i1 %6995, %6996
  %6998 = zext i1 %6997 to i8
  store i8 %6998, i8* %14, align 1
  %6999 = and i32 %6993, 255
  %7000 = tail call i32 @llvm.ctpop.i32(i32 %6999)
  %7001 = trunc i32 %7000 to i8
  %7002 = and i8 %7001, 1
  %7003 = xor i8 %7002, 1
  store i8 %7003, i8* %21, align 1
  %7004 = xor i32 %6993, %6991
  %7005 = lshr i32 %7004, 4
  %7006 = trunc i32 %7005 to i8
  %7007 = and i8 %7006, 1
  store i8 %7007, i8* %26, align 1
  %7008 = zext i1 %6996 to i8
  store i8 %7008, i8* %29, align 1
  %7009 = lshr i32 %6993, 31
  %7010 = trunc i32 %7009 to i8
  store i8 %7010, i8* %32, align 1
  %7011 = xor i32 %7009, %6992
  %7012 = add nuw nsw i32 %7011, %7009
  %7013 = icmp eq i32 %7012, 2
  %7014 = zext i1 %7013 to i8
  store i8 %7014, i8* %38, align 1
  %7015 = sext i32 %6993 to i64
  store i64 %7015, i64* %RCX.i2558, align 8
  %7016 = shl nsw i64 %7015, 2
  %7017 = add nsw i64 %7016, 11187184
  %7018 = add i64 %6985, 19
  store i64 %7018, i64* %3, align 8
  %7019 = inttoptr i64 %7017 to i32*
  %7020 = load i32, i32* %7019, align 4
  %7021 = zext i32 %7020 to i64
  store i64 %7021, i64* %RAX.i2706, align 8
  %7022 = add i64 %6986, -20
  %7023 = add i64 %6985, 22
  store i64 %7023, i64* %3, align 8
  %7024 = inttoptr i64 %7022 to i32*
  %7025 = load i32, i32* %7024, align 4
  %7026 = sub i32 %7020, %7025
  %7027 = icmp ult i32 %7020, %7025
  %7028 = zext i1 %7027 to i8
  store i8 %7028, i8* %14, align 1
  %7029 = and i32 %7026, 255
  %7030 = tail call i32 @llvm.ctpop.i32(i32 %7029)
  %7031 = trunc i32 %7030 to i8
  %7032 = and i8 %7031, 1
  %7033 = xor i8 %7032, 1
  store i8 %7033, i8* %21, align 1
  %7034 = xor i32 %7025, %7020
  %7035 = xor i32 %7034, %7026
  %7036 = lshr i32 %7035, 4
  %7037 = trunc i32 %7036 to i8
  %7038 = and i8 %7037, 1
  store i8 %7038, i8* %26, align 1
  %7039 = icmp eq i32 %7026, 0
  %7040 = zext i1 %7039 to i8
  store i8 %7040, i8* %29, align 1
  %7041 = lshr i32 %7026, 31
  %7042 = trunc i32 %7041 to i8
  store i8 %7042, i8* %32, align 1
  %7043 = lshr i32 %7020, 31
  %7044 = lshr i32 %7025, 31
  %7045 = xor i32 %7044, %7043
  %7046 = xor i32 %7041, %7043
  %7047 = add nuw nsw i32 %7046, %7045
  %7048 = icmp eq i32 %7047, 2
  %7049 = zext i1 %7048 to i8
  store i8 %7049, i8* %38, align 1
  %.v227 = select i1 %7039, i64 322, i64 28
  %7050 = add i64 %6985, %.v227
  store i64 %7050, i64* %3, align 8
  br i1 %7039, label %block_.L_410af7, label %block_.L_4109d1

block_.L_4109d1:                                  ; preds = %block_410998, %block_4109b5
  %7051 = phi i64 [ %7050, %block_4109b5 ], [ %6985, %block_410998 ]
  %7052 = load i64, i64* %RBP.i, align 8
  %7053 = add i64 %7052, -8
  %7054 = add i64 %7051, 3
  store i64 %7054, i64* %3, align 8
  %7055 = inttoptr i64 %7053 to i32*
  %7056 = load i32, i32* %7055, align 4
  %7057 = add i32 %7056, 1
  %7058 = lshr i32 %7057, 31
  %7059 = add i32 %7056, 21
  %7060 = zext i32 %7059 to i64
  store i64 %7060, i64* %RAX.i2706, align 8
  %7061 = icmp ugt i32 %7057, -21
  %7062 = zext i1 %7061 to i8
  store i8 %7062, i8* %14, align 1
  %7063 = and i32 %7059, 255
  %7064 = tail call i32 @llvm.ctpop.i32(i32 %7063)
  %7065 = trunc i32 %7064 to i8
  %7066 = and i8 %7065, 1
  %7067 = xor i8 %7066, 1
  store i8 %7067, i8* %21, align 1
  %7068 = xor i32 %7057, 16
  %7069 = xor i32 %7068, %7059
  %7070 = lshr i32 %7069, 4
  %7071 = trunc i32 %7070 to i8
  %7072 = and i8 %7071, 1
  store i8 %7072, i8* %26, align 1
  %7073 = icmp eq i32 %7059, 0
  %7074 = zext i1 %7073 to i8
  store i8 %7074, i8* %29, align 1
  %7075 = lshr i32 %7059, 31
  %7076 = trunc i32 %7075 to i8
  store i8 %7076, i8* %32, align 1
  %7077 = xor i32 %7075, %7058
  %7078 = add nuw nsw i32 %7077, %7075
  %7079 = icmp eq i32 %7078, 2
  %7080 = zext i1 %7079 to i8
  store i8 %7080, i8* %38, align 1
  %7081 = sext i32 %7059 to i64
  store i64 %7081, i64* %RCX.i2558, align 8
  %7082 = add nsw i64 %7081, 12099168
  %7083 = add i64 %7051, 20
  store i64 %7083, i64* %3, align 8
  %7084 = inttoptr i64 %7082 to i8*
  %7085 = load i8, i8* %7084, align 1
  %7086 = zext i8 %7085 to i64
  store i64 %7086, i64* %RAX.i2706, align 8
  %7087 = zext i8 %7085 to i32
  %7088 = add i64 %7052, -12
  %7089 = add i64 %7051, 23
  store i64 %7089, i64* %3, align 8
  %7090 = inttoptr i64 %7088 to i32*
  %7091 = load i32, i32* %7090, align 4
  %7092 = sub i32 %7087, %7091
  %7093 = icmp ult i32 %7087, %7091
  %7094 = zext i1 %7093 to i8
  store i8 %7094, i8* %14, align 1
  %7095 = and i32 %7092, 255
  %7096 = tail call i32 @llvm.ctpop.i32(i32 %7095)
  %7097 = trunc i32 %7096 to i8
  %7098 = and i8 %7097, 1
  %7099 = xor i8 %7098, 1
  store i8 %7099, i8* %21, align 1
  %7100 = xor i32 %7091, %7087
  %7101 = xor i32 %7100, %7092
  %7102 = lshr i32 %7101, 4
  %7103 = trunc i32 %7102 to i8
  %7104 = and i8 %7103, 1
  store i8 %7104, i8* %26, align 1
  %7105 = icmp eq i32 %7092, 0
  %7106 = zext i1 %7105 to i8
  store i8 %7106, i8* %29, align 1
  %7107 = lshr i32 %7092, 31
  %7108 = trunc i32 %7107 to i8
  store i8 %7108, i8* %32, align 1
  %7109 = lshr i32 %7091, 31
  %7110 = add nuw nsw i32 %7107, %7109
  %7111 = icmp eq i32 %7110, 2
  %7112 = zext i1 %7111 to i8
  store i8 %7112, i8* %38, align 1
  %.v217 = select i1 %7105, i64 29, i64 57
  %7113 = add i64 %7051, %.v217
  store i64 %7113, i64* %3, align 8
  br i1 %7105, label %block_4109ee, label %block_.L_410a0a

block_4109ee:                                     ; preds = %block_.L_4109d1
  %7114 = load i64, i64* %RBP.i, align 8
  %7115 = add i64 %7114, -8
  %7116 = add i64 %7113, 3
  store i64 %7116, i64* %3, align 8
  %7117 = inttoptr i64 %7115 to i32*
  %7118 = load i32, i32* %7117, align 4
  %7119 = add i32 %7118, 1
  %7120 = lshr i32 %7119, 31
  %7121 = add i32 %7118, 21
  %7122 = zext i32 %7121 to i64
  store i64 %7122, i64* %RAX.i2706, align 8
  %7123 = icmp ugt i32 %7119, -21
  %7124 = zext i1 %7123 to i8
  store i8 %7124, i8* %14, align 1
  %7125 = and i32 %7121, 255
  %7126 = tail call i32 @llvm.ctpop.i32(i32 %7125)
  %7127 = trunc i32 %7126 to i8
  %7128 = and i8 %7127, 1
  %7129 = xor i8 %7128, 1
  store i8 %7129, i8* %21, align 1
  %7130 = xor i32 %7119, 16
  %7131 = xor i32 %7130, %7121
  %7132 = lshr i32 %7131, 4
  %7133 = trunc i32 %7132 to i8
  %7134 = and i8 %7133, 1
  store i8 %7134, i8* %26, align 1
  %7135 = icmp eq i32 %7121, 0
  %7136 = zext i1 %7135 to i8
  store i8 %7136, i8* %29, align 1
  %7137 = lshr i32 %7121, 31
  %7138 = trunc i32 %7137 to i8
  store i8 %7138, i8* %32, align 1
  %7139 = xor i32 %7137, %7120
  %7140 = add nuw nsw i32 %7139, %7137
  %7141 = icmp eq i32 %7140, 2
  %7142 = zext i1 %7141 to i8
  store i8 %7142, i8* %38, align 1
  %7143 = sext i32 %7121 to i64
  store i64 %7143, i64* %RCX.i2558, align 8
  %7144 = shl nsw i64 %7143, 2
  %7145 = add nsw i64 %7144, 11187184
  %7146 = add i64 %7113, 19
  store i64 %7146, i64* %3, align 8
  %7147 = inttoptr i64 %7145 to i32*
  %7148 = load i32, i32* %7147, align 4
  %7149 = zext i32 %7148 to i64
  store i64 %7149, i64* %RAX.i2706, align 8
  %7150 = add i64 %7114, -20
  %7151 = add i64 %7113, 22
  store i64 %7151, i64* %3, align 8
  %7152 = inttoptr i64 %7150 to i32*
  %7153 = load i32, i32* %7152, align 4
  %7154 = sub i32 %7148, %7153
  %7155 = icmp ult i32 %7148, %7153
  %7156 = zext i1 %7155 to i8
  store i8 %7156, i8* %14, align 1
  %7157 = and i32 %7154, 255
  %7158 = tail call i32 @llvm.ctpop.i32(i32 %7157)
  %7159 = trunc i32 %7158 to i8
  %7160 = and i8 %7159, 1
  %7161 = xor i8 %7160, 1
  store i8 %7161, i8* %21, align 1
  %7162 = xor i32 %7153, %7148
  %7163 = xor i32 %7162, %7154
  %7164 = lshr i32 %7163, 4
  %7165 = trunc i32 %7164 to i8
  %7166 = and i8 %7165, 1
  store i8 %7166, i8* %26, align 1
  %7167 = icmp eq i32 %7154, 0
  %7168 = zext i1 %7167 to i8
  store i8 %7168, i8* %29, align 1
  %7169 = lshr i32 %7154, 31
  %7170 = trunc i32 %7169 to i8
  store i8 %7170, i8* %32, align 1
  %7171 = lshr i32 %7148, 31
  %7172 = lshr i32 %7153, 31
  %7173 = xor i32 %7172, %7171
  %7174 = xor i32 %7169, %7171
  %7175 = add nuw nsw i32 %7174, %7173
  %7176 = icmp eq i32 %7175, 2
  %7177 = zext i1 %7176 to i8
  store i8 %7177, i8* %38, align 1
  %.v226 = select i1 %7167, i64 265, i64 28
  %7178 = add i64 %7113, %.v226
  store i64 %7178, i64* %3, align 8
  br i1 %7167, label %block_.L_410af7, label %block_.L_410a0a

block_.L_410a0a:                                  ; preds = %block_.L_4109d1, %block_4109ee
  %7179 = phi i64 [ %7178, %block_4109ee ], [ %7113, %block_.L_4109d1 ]
  %7180 = load i64, i64* %RBP.i, align 8
  %7181 = add i64 %7180, -8
  %7182 = add i64 %7179, 3
  store i64 %7182, i64* %3, align 8
  %7183 = inttoptr i64 %7181 to i32*
  %7184 = load i32, i32* %7183, align 4
  %7185 = add i32 %7184, 1
  %7186 = lshr i32 %7185, 31
  %7187 = add i32 %7184, -19
  %7188 = zext i32 %7187 to i64
  store i64 %7188, i64* %RAX.i2706, align 8
  %7189 = icmp ult i32 %7185, 20
  %7190 = zext i1 %7189 to i8
  store i8 %7190, i8* %14, align 1
  %7191 = and i32 %7187, 255
  %7192 = tail call i32 @llvm.ctpop.i32(i32 %7191)
  %7193 = trunc i32 %7192 to i8
  %7194 = and i8 %7193, 1
  %7195 = xor i8 %7194, 1
  store i8 %7195, i8* %21, align 1
  %7196 = xor i32 %7185, 16
  %7197 = xor i32 %7196, %7187
  %7198 = lshr i32 %7197, 4
  %7199 = trunc i32 %7198 to i8
  %7200 = and i8 %7199, 1
  store i8 %7200, i8* %26, align 1
  %7201 = icmp eq i32 %7187, 0
  %7202 = zext i1 %7201 to i8
  store i8 %7202, i8* %29, align 1
  %7203 = lshr i32 %7187, 31
  %7204 = trunc i32 %7203 to i8
  store i8 %7204, i8* %32, align 1
  %7205 = xor i32 %7203, %7186
  %7206 = add nuw nsw i32 %7205, %7186
  %7207 = icmp eq i32 %7206, 2
  %7208 = zext i1 %7207 to i8
  store i8 %7208, i8* %38, align 1
  %7209 = sext i32 %7187 to i64
  store i64 %7209, i64* %RCX.i2558, align 8
  %7210 = add nsw i64 %7209, 12099168
  %7211 = add i64 %7179, 20
  store i64 %7211, i64* %3, align 8
  %7212 = inttoptr i64 %7210 to i8*
  %7213 = load i8, i8* %7212, align 1
  %7214 = zext i8 %7213 to i64
  store i64 %7214, i64* %RAX.i2706, align 8
  %7215 = zext i8 %7213 to i32
  %7216 = add i64 %7180, -12
  %7217 = add i64 %7179, 23
  store i64 %7217, i64* %3, align 8
  %7218 = inttoptr i64 %7216 to i32*
  %7219 = load i32, i32* %7218, align 4
  %7220 = sub i32 %7215, %7219
  %7221 = icmp ult i32 %7215, %7219
  %7222 = zext i1 %7221 to i8
  store i8 %7222, i8* %14, align 1
  %7223 = and i32 %7220, 255
  %7224 = tail call i32 @llvm.ctpop.i32(i32 %7223)
  %7225 = trunc i32 %7224 to i8
  %7226 = and i8 %7225, 1
  %7227 = xor i8 %7226, 1
  store i8 %7227, i8* %21, align 1
  %7228 = xor i32 %7219, %7215
  %7229 = xor i32 %7228, %7220
  %7230 = lshr i32 %7229, 4
  %7231 = trunc i32 %7230 to i8
  %7232 = and i8 %7231, 1
  store i8 %7232, i8* %26, align 1
  %7233 = icmp eq i32 %7220, 0
  %7234 = zext i1 %7233 to i8
  store i8 %7234, i8* %29, align 1
  %7235 = lshr i32 %7220, 31
  %7236 = trunc i32 %7235 to i8
  store i8 %7236, i8* %32, align 1
  %7237 = lshr i32 %7219, 31
  %7238 = add nuw nsw i32 %7235, %7237
  %7239 = icmp eq i32 %7238, 2
  %7240 = zext i1 %7239 to i8
  store i8 %7240, i8* %38, align 1
  %.v218 = select i1 %7233, i64 29, i64 57
  %7241 = add i64 %7179, %.v218
  store i64 %7241, i64* %3, align 8
  br i1 %7233, label %block_410a27, label %block_.L_410a43

block_410a27:                                     ; preds = %block_.L_410a0a
  %7242 = load i64, i64* %RBP.i, align 8
  %7243 = add i64 %7242, -8
  %7244 = add i64 %7241, 3
  store i64 %7244, i64* %3, align 8
  %7245 = inttoptr i64 %7243 to i32*
  %7246 = load i32, i32* %7245, align 4
  %7247 = add i32 %7246, 1
  %7248 = lshr i32 %7247, 31
  %7249 = add i32 %7246, -19
  %7250 = zext i32 %7249 to i64
  store i64 %7250, i64* %RAX.i2706, align 8
  %7251 = icmp ult i32 %7247, 20
  %7252 = zext i1 %7251 to i8
  store i8 %7252, i8* %14, align 1
  %7253 = and i32 %7249, 255
  %7254 = tail call i32 @llvm.ctpop.i32(i32 %7253)
  %7255 = trunc i32 %7254 to i8
  %7256 = and i8 %7255, 1
  %7257 = xor i8 %7256, 1
  store i8 %7257, i8* %21, align 1
  %7258 = xor i32 %7247, 16
  %7259 = xor i32 %7258, %7249
  %7260 = lshr i32 %7259, 4
  %7261 = trunc i32 %7260 to i8
  %7262 = and i8 %7261, 1
  store i8 %7262, i8* %26, align 1
  %7263 = icmp eq i32 %7249, 0
  %7264 = zext i1 %7263 to i8
  store i8 %7264, i8* %29, align 1
  %7265 = lshr i32 %7249, 31
  %7266 = trunc i32 %7265 to i8
  store i8 %7266, i8* %32, align 1
  %7267 = xor i32 %7265, %7248
  %7268 = add nuw nsw i32 %7267, %7248
  %7269 = icmp eq i32 %7268, 2
  %7270 = zext i1 %7269 to i8
  store i8 %7270, i8* %38, align 1
  %7271 = sext i32 %7249 to i64
  store i64 %7271, i64* %RCX.i2558, align 8
  %7272 = shl nsw i64 %7271, 2
  %7273 = add nsw i64 %7272, 11187184
  %7274 = add i64 %7241, 19
  store i64 %7274, i64* %3, align 8
  %7275 = inttoptr i64 %7273 to i32*
  %7276 = load i32, i32* %7275, align 4
  %7277 = zext i32 %7276 to i64
  store i64 %7277, i64* %RAX.i2706, align 8
  %7278 = add i64 %7242, -20
  %7279 = add i64 %7241, 22
  store i64 %7279, i64* %3, align 8
  %7280 = inttoptr i64 %7278 to i32*
  %7281 = load i32, i32* %7280, align 4
  %7282 = sub i32 %7276, %7281
  %7283 = icmp ult i32 %7276, %7281
  %7284 = zext i1 %7283 to i8
  store i8 %7284, i8* %14, align 1
  %7285 = and i32 %7282, 255
  %7286 = tail call i32 @llvm.ctpop.i32(i32 %7285)
  %7287 = trunc i32 %7286 to i8
  %7288 = and i8 %7287, 1
  %7289 = xor i8 %7288, 1
  store i8 %7289, i8* %21, align 1
  %7290 = xor i32 %7281, %7276
  %7291 = xor i32 %7290, %7282
  %7292 = lshr i32 %7291, 4
  %7293 = trunc i32 %7292 to i8
  %7294 = and i8 %7293, 1
  store i8 %7294, i8* %26, align 1
  %7295 = icmp eq i32 %7282, 0
  %7296 = zext i1 %7295 to i8
  store i8 %7296, i8* %29, align 1
  %7297 = lshr i32 %7282, 31
  %7298 = trunc i32 %7297 to i8
  store i8 %7298, i8* %32, align 1
  %7299 = lshr i32 %7276, 31
  %7300 = lshr i32 %7281, 31
  %7301 = xor i32 %7300, %7299
  %7302 = xor i32 %7297, %7299
  %7303 = add nuw nsw i32 %7302, %7301
  %7304 = icmp eq i32 %7303, 2
  %7305 = zext i1 %7304 to i8
  store i8 %7305, i8* %38, align 1
  %.v225 = select i1 %7295, i64 208, i64 28
  %7306 = add i64 %7241, %.v225
  store i64 %7306, i64* %3, align 8
  br i1 %7295, label %block_.L_410af7, label %block_.L_410a43

block_.L_410a43:                                  ; preds = %block_.L_410a0a, %block_410a27
  %7307 = phi i64 [ %7306, %block_410a27 ], [ %7241, %block_.L_410a0a ]
  %7308 = load i64, i64* %RBP.i, align 8
  %7309 = add i64 %7308, -8
  %7310 = add i64 %7307, 3
  store i64 %7310, i64* %3, align 8
  %7311 = inttoptr i64 %7309 to i32*
  %7312 = load i32, i32* %7311, align 4
  %7313 = add i32 %7312, 1
  %7314 = lshr i32 %7313, 31
  %7315 = add i32 %7312, 2
  %7316 = zext i32 %7315 to i64
  store i64 %7316, i64* %RAX.i2706, align 8
  %7317 = icmp eq i32 %7313, -1
  %7318 = icmp eq i32 %7315, 0
  %7319 = or i1 %7317, %7318
  %7320 = zext i1 %7319 to i8
  store i8 %7320, i8* %14, align 1
  %7321 = and i32 %7315, 255
  %7322 = tail call i32 @llvm.ctpop.i32(i32 %7321)
  %7323 = trunc i32 %7322 to i8
  %7324 = and i8 %7323, 1
  %7325 = xor i8 %7324, 1
  store i8 %7325, i8* %21, align 1
  %7326 = xor i32 %7315, %7313
  %7327 = lshr i32 %7326, 4
  %7328 = trunc i32 %7327 to i8
  %7329 = and i8 %7328, 1
  store i8 %7329, i8* %26, align 1
  %7330 = zext i1 %7318 to i8
  store i8 %7330, i8* %29, align 1
  %7331 = lshr i32 %7315, 31
  %7332 = trunc i32 %7331 to i8
  store i8 %7332, i8* %32, align 1
  %7333 = xor i32 %7331, %7314
  %7334 = add nuw nsw i32 %7333, %7331
  %7335 = icmp eq i32 %7334, 2
  %7336 = zext i1 %7335 to i8
  store i8 %7336, i8* %38, align 1
  %7337 = sext i32 %7315 to i64
  store i64 %7337, i64* %RCX.i2558, align 8
  %7338 = add nsw i64 %7337, 12099168
  %7339 = add i64 %7307, 20
  store i64 %7339, i64* %3, align 8
  %7340 = inttoptr i64 %7338 to i8*
  %7341 = load i8, i8* %7340, align 1
  %7342 = zext i8 %7341 to i64
  store i64 %7342, i64* %RAX.i2706, align 8
  %7343 = zext i8 %7341 to i32
  %7344 = add i64 %7308, -12
  %7345 = add i64 %7307, 23
  store i64 %7345, i64* %3, align 8
  %7346 = inttoptr i64 %7344 to i32*
  %7347 = load i32, i32* %7346, align 4
  %7348 = sub i32 %7343, %7347
  %7349 = icmp ult i32 %7343, %7347
  %7350 = zext i1 %7349 to i8
  store i8 %7350, i8* %14, align 1
  %7351 = and i32 %7348, 255
  %7352 = tail call i32 @llvm.ctpop.i32(i32 %7351)
  %7353 = trunc i32 %7352 to i8
  %7354 = and i8 %7353, 1
  %7355 = xor i8 %7354, 1
  store i8 %7355, i8* %21, align 1
  %7356 = xor i32 %7347, %7343
  %7357 = xor i32 %7356, %7348
  %7358 = lshr i32 %7357, 4
  %7359 = trunc i32 %7358 to i8
  %7360 = and i8 %7359, 1
  store i8 %7360, i8* %26, align 1
  %7361 = icmp eq i32 %7348, 0
  %7362 = zext i1 %7361 to i8
  store i8 %7362, i8* %29, align 1
  %7363 = lshr i32 %7348, 31
  %7364 = trunc i32 %7363 to i8
  store i8 %7364, i8* %32, align 1
  %7365 = lshr i32 %7347, 31
  %7366 = add nuw nsw i32 %7363, %7365
  %7367 = icmp eq i32 %7366, 2
  %7368 = zext i1 %7367 to i8
  store i8 %7368, i8* %38, align 1
  %.v219 = select i1 %7361, i64 29, i64 57
  %7369 = add i64 %7307, %.v219
  store i64 %7369, i64* %3, align 8
  br i1 %7361, label %block_410a60, label %block_.L_410a7c

block_410a60:                                     ; preds = %block_.L_410a43
  %7370 = load i64, i64* %RBP.i, align 8
  %7371 = add i64 %7370, -8
  %7372 = add i64 %7369, 3
  store i64 %7372, i64* %3, align 8
  %7373 = inttoptr i64 %7371 to i32*
  %7374 = load i32, i32* %7373, align 4
  %7375 = add i32 %7374, 1
  %7376 = lshr i32 %7375, 31
  %7377 = add i32 %7374, 2
  %7378 = zext i32 %7377 to i64
  store i64 %7378, i64* %RAX.i2706, align 8
  %7379 = icmp eq i32 %7375, -1
  %7380 = icmp eq i32 %7377, 0
  %7381 = or i1 %7379, %7380
  %7382 = zext i1 %7381 to i8
  store i8 %7382, i8* %14, align 1
  %7383 = and i32 %7377, 255
  %7384 = tail call i32 @llvm.ctpop.i32(i32 %7383)
  %7385 = trunc i32 %7384 to i8
  %7386 = and i8 %7385, 1
  %7387 = xor i8 %7386, 1
  store i8 %7387, i8* %21, align 1
  %7388 = xor i32 %7377, %7375
  %7389 = lshr i32 %7388, 4
  %7390 = trunc i32 %7389 to i8
  %7391 = and i8 %7390, 1
  store i8 %7391, i8* %26, align 1
  %7392 = zext i1 %7380 to i8
  store i8 %7392, i8* %29, align 1
  %7393 = lshr i32 %7377, 31
  %7394 = trunc i32 %7393 to i8
  store i8 %7394, i8* %32, align 1
  %7395 = xor i32 %7393, %7376
  %7396 = add nuw nsw i32 %7395, %7393
  %7397 = icmp eq i32 %7396, 2
  %7398 = zext i1 %7397 to i8
  store i8 %7398, i8* %38, align 1
  %7399 = sext i32 %7377 to i64
  store i64 %7399, i64* %RCX.i2558, align 8
  %7400 = shl nsw i64 %7399, 2
  %7401 = add nsw i64 %7400, 11187184
  %7402 = add i64 %7369, 19
  store i64 %7402, i64* %3, align 8
  %7403 = inttoptr i64 %7401 to i32*
  %7404 = load i32, i32* %7403, align 4
  %7405 = zext i32 %7404 to i64
  store i64 %7405, i64* %RAX.i2706, align 8
  %7406 = add i64 %7370, -24
  %7407 = add i64 %7369, 22
  store i64 %7407, i64* %3, align 8
  %7408 = inttoptr i64 %7406 to i32*
  %7409 = load i32, i32* %7408, align 4
  %7410 = sub i32 %7404, %7409
  %7411 = icmp ult i32 %7404, %7409
  %7412 = zext i1 %7411 to i8
  store i8 %7412, i8* %14, align 1
  %7413 = and i32 %7410, 255
  %7414 = tail call i32 @llvm.ctpop.i32(i32 %7413)
  %7415 = trunc i32 %7414 to i8
  %7416 = and i8 %7415, 1
  %7417 = xor i8 %7416, 1
  store i8 %7417, i8* %21, align 1
  %7418 = xor i32 %7409, %7404
  %7419 = xor i32 %7418, %7410
  %7420 = lshr i32 %7419, 4
  %7421 = trunc i32 %7420 to i8
  %7422 = and i8 %7421, 1
  store i8 %7422, i8* %26, align 1
  %7423 = icmp eq i32 %7410, 0
  %7424 = zext i1 %7423 to i8
  store i8 %7424, i8* %29, align 1
  %7425 = lshr i32 %7410, 31
  %7426 = trunc i32 %7425 to i8
  store i8 %7426, i8* %32, align 1
  %7427 = lshr i32 %7404, 31
  %7428 = lshr i32 %7409, 31
  %7429 = xor i32 %7428, %7427
  %7430 = xor i32 %7425, %7427
  %7431 = add nuw nsw i32 %7430, %7429
  %7432 = icmp eq i32 %7431, 2
  %7433 = zext i1 %7432 to i8
  store i8 %7433, i8* %38, align 1
  %.v224 = select i1 %7423, i64 151, i64 28
  %7434 = add i64 %7369, %.v224
  store i64 %7434, i64* %3, align 8
  br i1 %7423, label %block_.L_410af7, label %block_.L_410a7c

block_.L_410a7c:                                  ; preds = %block_.L_410a43, %block_410a60
  %7435 = phi i64 [ %7434, %block_410a60 ], [ %7369, %block_.L_410a43 ]
  %7436 = load i64, i64* %RBP.i, align 8
  %7437 = add i64 %7436, -8
  %7438 = add i64 %7435, 3
  store i64 %7438, i64* %3, align 8
  %7439 = inttoptr i64 %7437 to i32*
  %7440 = load i32, i32* %7439, align 4
  %7441 = add i32 %7440, 1
  %7442 = lshr i32 %7441, 31
  %7443 = add i32 %7440, 21
  %7444 = zext i32 %7443 to i64
  store i64 %7444, i64* %RAX.i2706, align 8
  %7445 = icmp ugt i32 %7441, -21
  %7446 = zext i1 %7445 to i8
  store i8 %7446, i8* %14, align 1
  %7447 = and i32 %7443, 255
  %7448 = tail call i32 @llvm.ctpop.i32(i32 %7447)
  %7449 = trunc i32 %7448 to i8
  %7450 = and i8 %7449, 1
  %7451 = xor i8 %7450, 1
  store i8 %7451, i8* %21, align 1
  %7452 = xor i32 %7441, 16
  %7453 = xor i32 %7452, %7443
  %7454 = lshr i32 %7453, 4
  %7455 = trunc i32 %7454 to i8
  %7456 = and i8 %7455, 1
  store i8 %7456, i8* %26, align 1
  %7457 = icmp eq i32 %7443, 0
  %7458 = zext i1 %7457 to i8
  store i8 %7458, i8* %29, align 1
  %7459 = lshr i32 %7443, 31
  %7460 = trunc i32 %7459 to i8
  store i8 %7460, i8* %32, align 1
  %7461 = xor i32 %7459, %7442
  %7462 = add nuw nsw i32 %7461, %7459
  %7463 = icmp eq i32 %7462, 2
  %7464 = zext i1 %7463 to i8
  store i8 %7464, i8* %38, align 1
  %7465 = sext i32 %7443 to i64
  store i64 %7465, i64* %RCX.i2558, align 8
  %7466 = add nsw i64 %7465, 12099168
  %7467 = add i64 %7435, 20
  store i64 %7467, i64* %3, align 8
  %7468 = inttoptr i64 %7466 to i8*
  %7469 = load i8, i8* %7468, align 1
  %7470 = zext i8 %7469 to i64
  store i64 %7470, i64* %RAX.i2706, align 8
  %7471 = zext i8 %7469 to i32
  %7472 = add i64 %7436, -12
  %7473 = add i64 %7435, 23
  store i64 %7473, i64* %3, align 8
  %7474 = inttoptr i64 %7472 to i32*
  %7475 = load i32, i32* %7474, align 4
  %7476 = sub i32 %7471, %7475
  %7477 = icmp ult i32 %7471, %7475
  %7478 = zext i1 %7477 to i8
  store i8 %7478, i8* %14, align 1
  %7479 = and i32 %7476, 255
  %7480 = tail call i32 @llvm.ctpop.i32(i32 %7479)
  %7481 = trunc i32 %7480 to i8
  %7482 = and i8 %7481, 1
  %7483 = xor i8 %7482, 1
  store i8 %7483, i8* %21, align 1
  %7484 = xor i32 %7475, %7471
  %7485 = xor i32 %7484, %7476
  %7486 = lshr i32 %7485, 4
  %7487 = trunc i32 %7486 to i8
  %7488 = and i8 %7487, 1
  store i8 %7488, i8* %26, align 1
  %7489 = icmp eq i32 %7476, 0
  %7490 = zext i1 %7489 to i8
  store i8 %7490, i8* %29, align 1
  %7491 = lshr i32 %7476, 31
  %7492 = trunc i32 %7491 to i8
  store i8 %7492, i8* %32, align 1
  %7493 = lshr i32 %7475, 31
  %7494 = add nuw nsw i32 %7491, %7493
  %7495 = icmp eq i32 %7494, 2
  %7496 = zext i1 %7495 to i8
  store i8 %7496, i8* %38, align 1
  %.v220 = select i1 %7489, i64 29, i64 57
  %7497 = add i64 %7435, %.v220
  store i64 %7497, i64* %3, align 8
  br i1 %7489, label %block_410a99, label %block_.L_410ab5

block_410a99:                                     ; preds = %block_.L_410a7c
  %7498 = load i64, i64* %RBP.i, align 8
  %7499 = add i64 %7498, -8
  %7500 = add i64 %7497, 3
  store i64 %7500, i64* %3, align 8
  %7501 = inttoptr i64 %7499 to i32*
  %7502 = load i32, i32* %7501, align 4
  %7503 = add i32 %7502, 1
  %7504 = lshr i32 %7503, 31
  %7505 = add i32 %7502, 21
  %7506 = zext i32 %7505 to i64
  store i64 %7506, i64* %RAX.i2706, align 8
  %7507 = icmp ugt i32 %7503, -21
  %7508 = zext i1 %7507 to i8
  store i8 %7508, i8* %14, align 1
  %7509 = and i32 %7505, 255
  %7510 = tail call i32 @llvm.ctpop.i32(i32 %7509)
  %7511 = trunc i32 %7510 to i8
  %7512 = and i8 %7511, 1
  %7513 = xor i8 %7512, 1
  store i8 %7513, i8* %21, align 1
  %7514 = xor i32 %7503, 16
  %7515 = xor i32 %7514, %7505
  %7516 = lshr i32 %7515, 4
  %7517 = trunc i32 %7516 to i8
  %7518 = and i8 %7517, 1
  store i8 %7518, i8* %26, align 1
  %7519 = icmp eq i32 %7505, 0
  %7520 = zext i1 %7519 to i8
  store i8 %7520, i8* %29, align 1
  %7521 = lshr i32 %7505, 31
  %7522 = trunc i32 %7521 to i8
  store i8 %7522, i8* %32, align 1
  %7523 = xor i32 %7521, %7504
  %7524 = add nuw nsw i32 %7523, %7521
  %7525 = icmp eq i32 %7524, 2
  %7526 = zext i1 %7525 to i8
  store i8 %7526, i8* %38, align 1
  %7527 = sext i32 %7505 to i64
  store i64 %7527, i64* %RCX.i2558, align 8
  %7528 = shl nsw i64 %7527, 2
  %7529 = add nsw i64 %7528, 11187184
  %7530 = add i64 %7497, 19
  store i64 %7530, i64* %3, align 8
  %7531 = inttoptr i64 %7529 to i32*
  %7532 = load i32, i32* %7531, align 4
  %7533 = zext i32 %7532 to i64
  store i64 %7533, i64* %RAX.i2706, align 8
  %7534 = add i64 %7498, -24
  %7535 = add i64 %7497, 22
  store i64 %7535, i64* %3, align 8
  %7536 = inttoptr i64 %7534 to i32*
  %7537 = load i32, i32* %7536, align 4
  %7538 = sub i32 %7532, %7537
  %7539 = icmp ult i32 %7532, %7537
  %7540 = zext i1 %7539 to i8
  store i8 %7540, i8* %14, align 1
  %7541 = and i32 %7538, 255
  %7542 = tail call i32 @llvm.ctpop.i32(i32 %7541)
  %7543 = trunc i32 %7542 to i8
  %7544 = and i8 %7543, 1
  %7545 = xor i8 %7544, 1
  store i8 %7545, i8* %21, align 1
  %7546 = xor i32 %7537, %7532
  %7547 = xor i32 %7546, %7538
  %7548 = lshr i32 %7547, 4
  %7549 = trunc i32 %7548 to i8
  %7550 = and i8 %7549, 1
  store i8 %7550, i8* %26, align 1
  %7551 = icmp eq i32 %7538, 0
  %7552 = zext i1 %7551 to i8
  store i8 %7552, i8* %29, align 1
  %7553 = lshr i32 %7538, 31
  %7554 = trunc i32 %7553 to i8
  store i8 %7554, i8* %32, align 1
  %7555 = lshr i32 %7532, 31
  %7556 = lshr i32 %7537, 31
  %7557 = xor i32 %7556, %7555
  %7558 = xor i32 %7553, %7555
  %7559 = add nuw nsw i32 %7558, %7557
  %7560 = icmp eq i32 %7559, 2
  %7561 = zext i1 %7560 to i8
  store i8 %7561, i8* %38, align 1
  %.v223 = select i1 %7551, i64 94, i64 28
  %7562 = add i64 %7497, %.v223
  store i64 %7562, i64* %3, align 8
  br i1 %7551, label %block_.L_410af7, label %block_.L_410ab5

block_.L_410ab5:                                  ; preds = %block_.L_410a7c, %block_410a99
  %7563 = phi i64 [ %7562, %block_410a99 ], [ %7497, %block_.L_410a7c ]
  %7564 = load i64, i64* %RBP.i, align 8
  %7565 = add i64 %7564, -8
  %7566 = add i64 %7563, 3
  store i64 %7566, i64* %3, align 8
  %7567 = inttoptr i64 %7565 to i32*
  %7568 = load i32, i32* %7567, align 4
  %7569 = add i32 %7568, 1
  %7570 = lshr i32 %7569, 31
  %7571 = add i32 %7568, -19
  %7572 = zext i32 %7571 to i64
  store i64 %7572, i64* %RAX.i2706, align 8
  %7573 = icmp ult i32 %7569, 20
  %7574 = zext i1 %7573 to i8
  store i8 %7574, i8* %14, align 1
  %7575 = and i32 %7571, 255
  %7576 = tail call i32 @llvm.ctpop.i32(i32 %7575)
  %7577 = trunc i32 %7576 to i8
  %7578 = and i8 %7577, 1
  %7579 = xor i8 %7578, 1
  store i8 %7579, i8* %21, align 1
  %7580 = xor i32 %7569, 16
  %7581 = xor i32 %7580, %7571
  %7582 = lshr i32 %7581, 4
  %7583 = trunc i32 %7582 to i8
  %7584 = and i8 %7583, 1
  store i8 %7584, i8* %26, align 1
  %7585 = icmp eq i32 %7571, 0
  %7586 = zext i1 %7585 to i8
  store i8 %7586, i8* %29, align 1
  %7587 = lshr i32 %7571, 31
  %7588 = trunc i32 %7587 to i8
  store i8 %7588, i8* %32, align 1
  %7589 = xor i32 %7587, %7570
  %7590 = add nuw nsw i32 %7589, %7570
  %7591 = icmp eq i32 %7590, 2
  %7592 = zext i1 %7591 to i8
  store i8 %7592, i8* %38, align 1
  %7593 = sext i32 %7571 to i64
  store i64 %7593, i64* %RCX.i2558, align 8
  %7594 = add nsw i64 %7593, 12099168
  %7595 = add i64 %7563, 20
  store i64 %7595, i64* %3, align 8
  %7596 = inttoptr i64 %7594 to i8*
  %7597 = load i8, i8* %7596, align 1
  %7598 = zext i8 %7597 to i64
  store i64 %7598, i64* %RAX.i2706, align 8
  %7599 = zext i8 %7597 to i32
  %7600 = add i64 %7564, -12
  %7601 = add i64 %7563, 23
  store i64 %7601, i64* %3, align 8
  %7602 = inttoptr i64 %7600 to i32*
  %7603 = load i32, i32* %7602, align 4
  %7604 = sub i32 %7599, %7603
  %7605 = icmp ult i32 %7599, %7603
  %7606 = zext i1 %7605 to i8
  store i8 %7606, i8* %14, align 1
  %7607 = and i32 %7604, 255
  %7608 = tail call i32 @llvm.ctpop.i32(i32 %7607)
  %7609 = trunc i32 %7608 to i8
  %7610 = and i8 %7609, 1
  %7611 = xor i8 %7610, 1
  store i8 %7611, i8* %21, align 1
  %7612 = xor i32 %7603, %7599
  %7613 = xor i32 %7612, %7604
  %7614 = lshr i32 %7613, 4
  %7615 = trunc i32 %7614 to i8
  %7616 = and i8 %7615, 1
  store i8 %7616, i8* %26, align 1
  %7617 = icmp eq i32 %7604, 0
  %7618 = zext i1 %7617 to i8
  store i8 %7618, i8* %29, align 1
  %7619 = lshr i32 %7604, 31
  %7620 = trunc i32 %7619 to i8
  store i8 %7620, i8* %32, align 1
  %7621 = lshr i32 %7603, 31
  %7622 = add nuw nsw i32 %7619, %7621
  %7623 = icmp eq i32 %7622, 2
  %7624 = zext i1 %7623 to i8
  store i8 %7624, i8* %38, align 1
  %.v221 = select i1 %7617, i64 29, i64 57
  %7625 = add i64 %7563, %.v221
  store i64 %7625, i64* %3, align 8
  br i1 %7617, label %block_410ad2, label %block_.L_410aee

block_410ad2:                                     ; preds = %block_.L_410ab5
  %7626 = load i64, i64* %RBP.i, align 8
  %7627 = add i64 %7626, -8
  %7628 = add i64 %7625, 3
  store i64 %7628, i64* %3, align 8
  %7629 = inttoptr i64 %7627 to i32*
  %7630 = load i32, i32* %7629, align 4
  %7631 = add i32 %7630, 1
  %7632 = lshr i32 %7631, 31
  %7633 = add i32 %7630, -19
  %7634 = zext i32 %7633 to i64
  store i64 %7634, i64* %RAX.i2706, align 8
  %7635 = icmp ult i32 %7631, 20
  %7636 = zext i1 %7635 to i8
  store i8 %7636, i8* %14, align 1
  %7637 = and i32 %7633, 255
  %7638 = tail call i32 @llvm.ctpop.i32(i32 %7637)
  %7639 = trunc i32 %7638 to i8
  %7640 = and i8 %7639, 1
  %7641 = xor i8 %7640, 1
  store i8 %7641, i8* %21, align 1
  %7642 = xor i32 %7631, 16
  %7643 = xor i32 %7642, %7633
  %7644 = lshr i32 %7643, 4
  %7645 = trunc i32 %7644 to i8
  %7646 = and i8 %7645, 1
  store i8 %7646, i8* %26, align 1
  %7647 = icmp eq i32 %7633, 0
  %7648 = zext i1 %7647 to i8
  store i8 %7648, i8* %29, align 1
  %7649 = lshr i32 %7633, 31
  %7650 = trunc i32 %7649 to i8
  store i8 %7650, i8* %32, align 1
  %7651 = xor i32 %7649, %7632
  %7652 = add nuw nsw i32 %7651, %7632
  %7653 = icmp eq i32 %7652, 2
  %7654 = zext i1 %7653 to i8
  store i8 %7654, i8* %38, align 1
  %7655 = sext i32 %7633 to i64
  store i64 %7655, i64* %RCX.i2558, align 8
  %7656 = shl nsw i64 %7655, 2
  %7657 = add nsw i64 %7656, 11187184
  %7658 = add i64 %7625, 19
  store i64 %7658, i64* %3, align 8
  %7659 = inttoptr i64 %7657 to i32*
  %7660 = load i32, i32* %7659, align 4
  %7661 = zext i32 %7660 to i64
  store i64 %7661, i64* %RAX.i2706, align 8
  %7662 = add i64 %7626, -24
  %7663 = add i64 %7625, 22
  store i64 %7663, i64* %3, align 8
  %7664 = inttoptr i64 %7662 to i32*
  %7665 = load i32, i32* %7664, align 4
  %7666 = sub i32 %7660, %7665
  %7667 = icmp ult i32 %7660, %7665
  %7668 = zext i1 %7667 to i8
  store i8 %7668, i8* %14, align 1
  %7669 = and i32 %7666, 255
  %7670 = tail call i32 @llvm.ctpop.i32(i32 %7669)
  %7671 = trunc i32 %7670 to i8
  %7672 = and i8 %7671, 1
  %7673 = xor i8 %7672, 1
  store i8 %7673, i8* %21, align 1
  %7674 = xor i32 %7665, %7660
  %7675 = xor i32 %7674, %7666
  %7676 = lshr i32 %7675, 4
  %7677 = trunc i32 %7676 to i8
  %7678 = and i8 %7677, 1
  store i8 %7678, i8* %26, align 1
  %7679 = icmp eq i32 %7666, 0
  %7680 = zext i1 %7679 to i8
  store i8 %7680, i8* %29, align 1
  %7681 = lshr i32 %7666, 31
  %7682 = trunc i32 %7681 to i8
  store i8 %7682, i8* %32, align 1
  %7683 = lshr i32 %7660, 31
  %7684 = lshr i32 %7665, 31
  %7685 = xor i32 %7684, %7683
  %7686 = xor i32 %7681, %7683
  %7687 = add nuw nsw i32 %7686, %7685
  %7688 = icmp eq i32 %7687, 2
  %7689 = zext i1 %7688 to i8
  store i8 %7689, i8* %38, align 1
  %.v222 = select i1 %7679, i64 37, i64 28
  %7690 = add i64 %7625, %.v222
  store i64 %7690, i64* %3, align 8
  br i1 %7679, label %block_.L_410af7, label %block_.L_410aee

block_.L_410aee:                                  ; preds = %block_.L_410ab5, %block_410ad2
  %7691 = phi i64 [ %7690, %block_410ad2 ], [ %7625, %block_.L_410ab5 ]
  %7692 = load i64, i64* %RBP.i, align 8
  %7693 = add i64 %7692, -28
  %7694 = add i64 %7691, 3
  store i64 %7694, i64* %3, align 8
  %7695 = inttoptr i64 %7693 to i32*
  %7696 = load i32, i32* %7695, align 4
  %7697 = add i32 %7696, 1
  %7698 = zext i32 %7697 to i64
  store i64 %7698, i64* %RAX.i2706, align 8
  %7699 = icmp eq i32 %7696, -1
  %7700 = icmp eq i32 %7697, 0
  %7701 = or i1 %7699, %7700
  %7702 = zext i1 %7701 to i8
  store i8 %7702, i8* %14, align 1
  %7703 = and i32 %7697, 255
  %7704 = tail call i32 @llvm.ctpop.i32(i32 %7703)
  %7705 = trunc i32 %7704 to i8
  %7706 = and i8 %7705, 1
  %7707 = xor i8 %7706, 1
  store i8 %7707, i8* %21, align 1
  %7708 = xor i32 %7697, %7696
  %7709 = lshr i32 %7708, 4
  %7710 = trunc i32 %7709 to i8
  %7711 = and i8 %7710, 1
  store i8 %7711, i8* %26, align 1
  %7712 = zext i1 %7700 to i8
  store i8 %7712, i8* %29, align 1
  %7713 = lshr i32 %7697, 31
  %7714 = trunc i32 %7713 to i8
  store i8 %7714, i8* %32, align 1
  %7715 = lshr i32 %7696, 31
  %7716 = xor i32 %7713, %7715
  %7717 = add nuw nsw i32 %7716, %7713
  %7718 = icmp eq i32 %7717, 2
  %7719 = zext i1 %7718 to i8
  store i8 %7719, i8* %38, align 1
  %7720 = add i64 %7691, 9
  store i64 %7720, i64* %3, align 8
  store i32 %7697, i32* %7695, align 4
  %.pre183 = load i64, i64* %3, align 8
  br label %block_.L_410af7

block_.L_410af7:                                  ; preds = %block_.L_41097e, %block_.L_410aee, %block_410ad2, %block_410a99, %block_410a60, %block_410a27, %block_4109ee, %block_4109b5
  %7721 = phi i64 [ %.pre183, %block_.L_410aee ], [ %7690, %block_410ad2 ], [ %7562, %block_410a99 ], [ %7434, %block_410a60 ], [ %7306, %block_410a27 ], [ %7178, %block_4109ee ], [ %7050, %block_4109b5 ], [ %6926, %block_.L_41097e ]
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2706, align 8
  %7722 = load i64, i64* %RBP.i, align 8
  %7723 = add i64 %7722, -20
  %7724 = add i64 %7721, 14
  store i64 %7724, i64* %3, align 8
  %7725 = inttoptr i64 %7723 to i32*
  %7726 = load i32, i32* %7725, align 4
  %7727 = sext i32 %7726 to i64
  %7728 = mul nsw i64 %7727, 744
  store i64 %7728, i64* %RCX.i2558, align 8
  %7729 = lshr i64 %7728, 63
  %7730 = add i64 %7728, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %7730, i64* %RDX.i2704, align 8
  %7731 = icmp ult i64 %7730, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %7732 = icmp ult i64 %7730, %7728
  %7733 = or i1 %7731, %7732
  %7734 = zext i1 %7733 to i8
  store i8 %7734, i8* %14, align 1
  %7735 = trunc i64 %7730 to i32
  %7736 = and i32 %7735, 248
  %7737 = tail call i32 @llvm.ctpop.i32(i32 %7736)
  %7738 = trunc i32 %7737 to i8
  %7739 = and i8 %7738, 1
  %7740 = xor i8 %7739, 1
  store i8 %7740, i8* %21, align 1
  %7741 = xor i64 %7728, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %7742 = xor i64 %7741, %7730
  %7743 = lshr i64 %7742, 4
  %7744 = trunc i64 %7743 to i8
  %7745 = and i8 %7744, 1
  store i8 %7745, i8* %26, align 1
  %7746 = icmp eq i64 %7730, 0
  %7747 = zext i1 %7746 to i8
  store i8 %7747, i8* %29, align 1
  %7748 = lshr i64 %7730, 63
  %7749 = trunc i64 %7748 to i8
  store i8 %7749, i8* %32, align 1
  %7750 = xor i64 %7748, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %7751 = xor i64 %7748, %7729
  %7752 = add nuw nsw i64 %7750, %7751
  %7753 = icmp eq i64 %7752, 2
  %7754 = zext i1 %7753 to i8
  store i8 %7754, i8* %38, align 1
  %RSI.i520 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %7755 = add i64 %7728, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %7756 = add i64 %7721, 30
  store i64 %7756, i64* %3, align 8
  %7757 = inttoptr i64 %7755 to i32*
  %7758 = load i32, i32* %7757, align 4
  %7759 = zext i32 %7758 to i64
  store i64 %7759, i64* %RSI.i520, align 8
  %7760 = add i64 %7722, -24
  %7761 = add i64 %7721, 34
  store i64 %7761, i64* %3, align 8
  %7762 = inttoptr i64 %7760 to i32*
  %7763 = load i32, i32* %7762, align 4
  %7764 = sext i32 %7763 to i64
  %7765 = mul nsw i64 %7764, 744
  store i64 %7765, i64* %RCX.i2558, align 8
  %7766 = lshr i64 %7765, 63
  %7767 = load i64, i64* %RAX.i2706, align 8
  %7768 = add i64 %7765, %7767
  store i64 %7768, i64* %RDX.i2704, align 8
  %7769 = icmp ult i64 %7768, %7767
  %7770 = icmp ult i64 %7768, %7765
  %7771 = or i1 %7769, %7770
  %7772 = zext i1 %7771 to i8
  store i8 %7772, i8* %14, align 1
  %7773 = trunc i64 %7768 to i32
  %7774 = and i32 %7773, 255
  %7775 = tail call i32 @llvm.ctpop.i32(i32 %7774)
  %7776 = trunc i32 %7775 to i8
  %7777 = and i8 %7776, 1
  %7778 = xor i8 %7777, 1
  store i8 %7778, i8* %21, align 1
  %7779 = xor i64 %7765, %7767
  %7780 = xor i64 %7779, %7768
  %7781 = lshr i64 %7780, 4
  %7782 = trunc i64 %7781 to i8
  %7783 = and i8 %7782, 1
  store i8 %7783, i8* %26, align 1
  %7784 = icmp eq i64 %7768, 0
  %7785 = zext i1 %7784 to i8
  store i8 %7785, i8* %29, align 1
  %7786 = lshr i64 %7768, 63
  %7787 = trunc i64 %7786 to i8
  store i8 %7787, i8* %32, align 1
  %7788 = lshr i64 %7767, 63
  %7789 = xor i64 %7786, %7788
  %7790 = xor i64 %7786, %7766
  %7791 = add nuw nsw i64 %7789, %7790
  %7792 = icmp eq i64 %7791, 2
  %7793 = zext i1 %7792 to i8
  store i8 %7793, i8* %38, align 1
  %7794 = add i64 %7768, 12
  %7795 = add i64 %7721, 50
  store i64 %7795, i64* %3, align 8
  %7796 = inttoptr i64 %7794 to i32*
  %7797 = load i32, i32* %7796, align 4
  %7798 = add i32 %7797, %7758
  %7799 = zext i32 %7798 to i64
  store i64 %7799, i64* %RSI.i520, align 8
  %7800 = icmp ult i32 %7798, %7758
  %7801 = icmp ult i32 %7798, %7797
  %7802 = or i1 %7800, %7801
  %7803 = zext i1 %7802 to i8
  store i8 %7803, i8* %14, align 1
  %7804 = and i32 %7798, 255
  %7805 = tail call i32 @llvm.ctpop.i32(i32 %7804)
  %7806 = trunc i32 %7805 to i8
  %7807 = and i8 %7806, 1
  %7808 = xor i8 %7807, 1
  store i8 %7808, i8* %21, align 1
  %7809 = xor i32 %7797, %7758
  %7810 = xor i32 %7809, %7798
  %7811 = lshr i32 %7810, 4
  %7812 = trunc i32 %7811 to i8
  %7813 = and i8 %7812, 1
  store i8 %7813, i8* %26, align 1
  %7814 = icmp eq i32 %7798, 0
  %7815 = zext i1 %7814 to i8
  store i8 %7815, i8* %29, align 1
  %7816 = lshr i32 %7798, 31
  %7817 = trunc i32 %7816 to i8
  store i8 %7817, i8* %32, align 1
  %7818 = lshr i32 %7758, 31
  %7819 = lshr i32 %7797, 31
  %7820 = xor i32 %7816, %7818
  %7821 = xor i32 %7816, %7819
  %7822 = add nuw nsw i32 %7820, %7821
  %7823 = icmp eq i32 %7822, 2
  %7824 = zext i1 %7823 to i8
  store i8 %7824, i8* %38, align 1
  %7825 = load i64, i64* %RBP.i, align 8
  %7826 = add i64 %7825, -20
  %7827 = add i64 %7721, 54
  store i64 %7827, i64* %3, align 8
  %7828 = inttoptr i64 %7826 to i32*
  %7829 = load i32, i32* %7828, align 4
  %7830 = sext i32 %7829 to i64
  %7831 = mul nsw i64 %7830, 744
  store i64 %7831, i64* %RCX.i2558, align 8
  %7832 = lshr i64 %7831, 63
  %7833 = load i64, i64* %RAX.i2706, align 8
  %7834 = add i64 %7831, %7833
  store i64 %7834, i64* %RDX.i2704, align 8
  %7835 = icmp ult i64 %7834, %7833
  %7836 = icmp ult i64 %7834, %7831
  %7837 = or i1 %7835, %7836
  %7838 = zext i1 %7837 to i8
  store i8 %7838, i8* %14, align 1
  %7839 = trunc i64 %7834 to i32
  %7840 = and i32 %7839, 255
  %7841 = tail call i32 @llvm.ctpop.i32(i32 %7840)
  %7842 = trunc i32 %7841 to i8
  %7843 = and i8 %7842, 1
  %7844 = xor i8 %7843, 1
  store i8 %7844, i8* %21, align 1
  %7845 = xor i64 %7831, %7833
  %7846 = xor i64 %7845, %7834
  %7847 = lshr i64 %7846, 4
  %7848 = trunc i64 %7847 to i8
  %7849 = and i8 %7848, 1
  store i8 %7849, i8* %26, align 1
  %7850 = icmp eq i64 %7834, 0
  %7851 = zext i1 %7850 to i8
  store i8 %7851, i8* %29, align 1
  %7852 = lshr i64 %7834, 63
  %7853 = trunc i64 %7852 to i8
  store i8 %7853, i8* %32, align 1
  %7854 = lshr i64 %7833, 63
  %7855 = xor i64 %7852, %7854
  %7856 = xor i64 %7852, %7832
  %7857 = add nuw nsw i64 %7855, %7856
  %7858 = icmp eq i64 %7857, 2
  %7859 = zext i1 %7858 to i8
  store i8 %7859, i8* %38, align 1
  %RDI.i492 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %7860 = add i64 %7834, 8
  %7861 = add i64 %7721, 70
  store i64 %7861, i64* %3, align 8
  %7862 = inttoptr i64 %7860 to i32*
  %7863 = load i32, i32* %7862, align 4
  %7864 = zext i32 %7863 to i64
  store i64 %7864, i64* %RDI.i492, align 8
  %7865 = add i64 %7825, -24
  %7866 = add i64 %7721, 74
  store i64 %7866, i64* %3, align 8
  %7867 = inttoptr i64 %7865 to i32*
  %7868 = load i32, i32* %7867, align 4
  %7869 = sext i32 %7868 to i64
  %7870 = mul nsw i64 %7869, 744
  store i64 %7870, i64* %RCX.i2558, align 8
  %7871 = lshr i64 %7870, 63
  %7872 = add i64 %7870, %7833
  store i64 %7872, i64* %RAX.i2706, align 8
  %7873 = icmp ult i64 %7872, %7833
  %7874 = icmp ult i64 %7872, %7870
  %7875 = or i1 %7873, %7874
  %7876 = zext i1 %7875 to i8
  store i8 %7876, i8* %14, align 1
  %7877 = trunc i64 %7872 to i32
  %7878 = and i32 %7877, 255
  %7879 = tail call i32 @llvm.ctpop.i32(i32 %7878)
  %7880 = trunc i32 %7879 to i8
  %7881 = and i8 %7880, 1
  %7882 = xor i8 %7881, 1
  store i8 %7882, i8* %21, align 1
  %7883 = xor i64 %7870, %7833
  %7884 = xor i64 %7883, %7872
  %7885 = lshr i64 %7884, 4
  %7886 = trunc i64 %7885 to i8
  %7887 = and i8 %7886, 1
  store i8 %7887, i8* %26, align 1
  %7888 = icmp eq i64 %7872, 0
  %7889 = zext i1 %7888 to i8
  store i8 %7889, i8* %29, align 1
  %7890 = lshr i64 %7872, 63
  %7891 = trunc i64 %7890 to i8
  store i8 %7891, i8* %32, align 1
  %7892 = xor i64 %7890, %7854
  %7893 = xor i64 %7890, %7871
  %7894 = add nuw nsw i64 %7892, %7893
  %7895 = icmp eq i64 %7894, 2
  %7896 = zext i1 %7895 to i8
  store i8 %7896, i8* %38, align 1
  %7897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i480 = bitcast %union.anon* %7897 to i32*
  %7898 = getelementptr inbounds %union.anon, %union.anon* %7897, i64 0, i32 0
  %7899 = add i64 %7872, 8
  %7900 = add i64 %7721, 88
  store i64 %7900, i64* %3, align 8
  %7901 = inttoptr i64 %7899 to i32*
  %7902 = load i32, i32* %7901, align 4
  %7903 = zext i32 %7902 to i64
  store i64 %7903, i64* %7898, align 8
  %7904 = load i64, i64* %RBP.i, align 8
  %7905 = add i64 %7904, -92
  %7906 = load i32, i32* %ESI.i2672, align 4
  %7907 = add i64 %7721, 91
  store i64 %7907, i64* %3, align 8
  %7908 = inttoptr i64 %7905 to i32*
  store i32 %7906, i32* %7908, align 4
  %7909 = load i32, i32* %R8D.i480, align 4
  %7910 = zext i32 %7909 to i64
  %7911 = load i64, i64* %3, align 8
  store i64 %7910, i64* %RSI.i520, align 8
  %7912 = add i64 %7911, 894
  %7913 = add i64 %7911, 8
  %7914 = load i64, i64* %6, align 8
  %7915 = add i64 %7914, -8
  %7916 = inttoptr i64 %7915 to i64*
  store i64 %7913, i64* %7916, align 8
  store i64 %7915, i64* %6, align 8
  store i64 %7912, i64* %3, align 8
  %call2_410b55 = tail call %struct.Memory* @sub_410ed0.count_common_libs(%struct.State* nonnull %0, i64 %7912, %struct.Memory* %MEMORY.2)
  %7917 = load i64, i64* %RBP.i, align 8
  %7918 = add i64 %7917, -92
  %7919 = load i64, i64* %3, align 8
  %7920 = add i64 %7919, 3
  store i64 %7920, i64* %3, align 8
  %7921 = inttoptr i64 %7918 to i32*
  %7922 = load i32, i32* %7921, align 4
  %7923 = load i32, i32* %EAX.i2557.pre-phi, align 4
  %7924 = sub i32 %7922, %7923
  %7925 = icmp eq i32 %7924, 0
  %7926 = zext i1 %7925 to i8
  %7927 = lshr i32 %7924, 31
  %7928 = add i32 %7924, -1
  %7929 = zext i32 %7928 to i64
  store i64 %7929, i64* %RSI.i520, align 8
  store i8 %7926, i8* %14, align 1
  %7930 = and i32 %7928, 255
  %7931 = tail call i32 @llvm.ctpop.i32(i32 %7930)
  %7932 = trunc i32 %7931 to i8
  %7933 = and i8 %7932, 1
  %7934 = xor i8 %7933, 1
  store i8 %7934, i8* %21, align 1
  %7935 = xor i32 %7928, %7924
  %7936 = lshr i32 %7935, 4
  %7937 = trunc i32 %7936 to i8
  %7938 = and i8 %7937, 1
  store i8 %7938, i8* %26, align 1
  %7939 = icmp eq i32 %7928, 0
  %7940 = zext i1 %7939 to i8
  store i8 %7940, i8* %29, align 1
  %7941 = lshr i32 %7928, 31
  %7942 = trunc i32 %7941 to i8
  store i8 %7942, i8* %32, align 1
  %7943 = xor i32 %7941, %7927
  %7944 = add nuw nsw i32 %7943, %7927
  %7945 = icmp eq i32 %7944, 2
  %7946 = zext i1 %7945 to i8
  store i8 %7946, i8* %38, align 1
  %7947 = add i64 %7917, -28
  %7948 = add i64 %7919, 11
  store i64 %7948, i64* %3, align 8
  %7949 = inttoptr i64 %7947 to i32*
  %7950 = load i32, i32* %7949, align 4
  %7951 = add i32 %7950, %7928
  %7952 = zext i32 %7951 to i64
  store i64 %7952, i64* %RSI.i520, align 8
  %7953 = icmp ult i32 %7951, %7928
  %7954 = icmp ult i32 %7951, %7950
  %7955 = or i1 %7953, %7954
  %7956 = zext i1 %7955 to i8
  store i8 %7956, i8* %14, align 1
  %7957 = and i32 %7951, 255
  %7958 = tail call i32 @llvm.ctpop.i32(i32 %7957)
  %7959 = trunc i32 %7958 to i8
  %7960 = and i8 %7959, 1
  %7961 = xor i8 %7960, 1
  store i8 %7961, i8* %21, align 1
  %7962 = xor i32 %7950, %7928
  %7963 = xor i32 %7962, %7951
  %7964 = lshr i32 %7963, 4
  %7965 = trunc i32 %7964 to i8
  %7966 = and i8 %7965, 1
  store i8 %7966, i8* %26, align 1
  %7967 = icmp eq i32 %7951, 0
  %7968 = zext i1 %7967 to i8
  store i8 %7968, i8* %29, align 1
  %7969 = lshr i32 %7951, 31
  %7970 = trunc i32 %7969 to i8
  store i8 %7970, i8* %32, align 1
  %7971 = lshr i32 %7950, 31
  %7972 = xor i32 %7969, %7941
  %7973 = xor i32 %7969, %7971
  %7974 = add nuw nsw i32 %7972, %7973
  %7975 = icmp eq i32 %7974, 2
  %7976 = zext i1 %7975 to i8
  store i8 %7976, i8* %38, align 1
  %7977 = load i64, i64* %RBP.i, align 8
  %7978 = add i64 %7977, -28
  %7979 = add i64 %7919, 14
  store i64 %7979, i64* %3, align 8
  %7980 = inttoptr i64 %7978 to i32*
  store i32 %7951, i32* %7980, align 4
  %.pre188 = load i64, i64* %3, align 8
  br label %block_.L_410b68

block_.L_410b68:                                  ; preds = %block_.L_410af7, %block_.L_4104ea
  %7981 = phi i64 [ %.pre188, %block_.L_410af7 ], [ %4427, %block_.L_4104ea ]
  %MEMORY.66 = phi %struct.Memory* [ %call2_410b55, %block_.L_410af7 ], [ %MEMORY.2, %block_.L_4104ea ]
  %7982 = add i64 %7981, 5
  store i64 %7982, i64* %3, align 8
  br label %block_.L_410b6d

block_.L_410b6d:                                  ; preds = %block_.L_410b68, %block_.L_4101a3
  %storemerge143 = phi i64 [ %2514, %block_.L_4101a3 ], [ %7982, %block_.L_410b68 ]
  %MEMORY.67 = phi %struct.Memory* [ %MEMORY.2, %block_.L_4101a3 ], [ %MEMORY.66, %block_.L_410b68 ]
  %7983 = add i64 %storemerge143, 851
  br label %block_.L_410ec0

block_.L_410b72:                                  ; preds = %block_.L_410103
  %7984 = add i64 %2202, -32
  %7985 = add i64 %2216, 7
  store i64 %7985, i64* %3, align 8
  %7986 = inttoptr i64 %7984 to i32*
  store i32 0, i32* %7986, align 4
  %.pre196 = load i64, i64* %3, align 8
  br label %block_.L_410b79

block_.L_410b79:                                  ; preds = %block_.L_410e11, %block_.L_410b72
  %7987 = phi i64 [ %9349, %block_.L_410e11 ], [ %.pre196, %block_.L_410b72 ]
  %7988 = load i64, i64* %RBP.i, align 8
  %7989 = add i64 %7988, -32
  %7990 = add i64 %7987, 4
  store i64 %7990, i64* %3, align 8
  %7991 = inttoptr i64 %7989 to i32*
  %7992 = load i32, i32* %7991, align 4
  %7993 = add i32 %7992, -4
  %7994 = icmp ult i32 %7992, 4
  %7995 = zext i1 %7994 to i8
  store i8 %7995, i8* %14, align 1
  %7996 = and i32 %7993, 255
  %7997 = tail call i32 @llvm.ctpop.i32(i32 %7996)
  %7998 = trunc i32 %7997 to i8
  %7999 = and i8 %7998, 1
  %8000 = xor i8 %7999, 1
  store i8 %8000, i8* %21, align 1
  %8001 = xor i32 %7993, %7992
  %8002 = lshr i32 %8001, 4
  %8003 = trunc i32 %8002 to i8
  %8004 = and i8 %8003, 1
  store i8 %8004, i8* %26, align 1
  %8005 = icmp eq i32 %7993, 0
  %8006 = zext i1 %8005 to i8
  store i8 %8006, i8* %29, align 1
  %8007 = lshr i32 %7993, 31
  %8008 = trunc i32 %8007 to i8
  store i8 %8008, i8* %32, align 1
  %8009 = lshr i32 %7992, 31
  %8010 = xor i32 %8007, %8009
  %8011 = add nuw nsw i32 %8010, %8009
  %8012 = icmp eq i32 %8011, 2
  %8013 = zext i1 %8012 to i8
  store i8 %8013, i8* %38, align 1
  %8014 = icmp ne i8 %8008, 0
  %8015 = xor i1 %8014, %8012
  %.v296 = select i1 %8015, i64 10, i64 683
  %8016 = add i64 %7987, %.v296
  store i64 %8016, i64* %3, align 8
  br i1 %8015, label %block_410b83, label %block_.L_410e24

block_410b83:                                     ; preds = %block_.L_410b79
  %8017 = add i64 %7988, -8
  %8018 = add i64 %8016, 3
  store i64 %8018, i64* %3, align 8
  %8019 = inttoptr i64 %8017 to i32*
  %8020 = load i32, i32* %8019, align 4
  %8021 = zext i32 %8020 to i64
  store i64 %8021, i64* %RAX.i2706, align 8
  %8022 = add i64 %8016, 7
  store i64 %8022, i64* %3, align 8
  %8023 = load i32, i32* %7991, align 4
  %8024 = sext i32 %8023 to i64
  store i64 %8024, i64* %RCX.i2558, align 8
  %8025 = shl nsw i64 %8024, 2
  %8026 = add nsw i64 %8025, 8053168
  %8027 = add i64 %8016, 14
  store i64 %8027, i64* %3, align 8
  %8028 = inttoptr i64 %8026 to i32*
  %8029 = load i32, i32* %8028, align 4
  %8030 = add i32 %8029, %8020
  %8031 = zext i32 %8030 to i64
  store i64 %8031, i64* %RAX.i2706, align 8
  %8032 = icmp ult i32 %8030, %8020
  %8033 = icmp ult i32 %8030, %8029
  %8034 = or i1 %8032, %8033
  %8035 = zext i1 %8034 to i8
  store i8 %8035, i8* %14, align 1
  %8036 = and i32 %8030, 255
  %8037 = tail call i32 @llvm.ctpop.i32(i32 %8036)
  %8038 = trunc i32 %8037 to i8
  %8039 = and i8 %8038, 1
  %8040 = xor i8 %8039, 1
  store i8 %8040, i8* %21, align 1
  %8041 = xor i32 %8029, %8020
  %8042 = xor i32 %8041, %8030
  %8043 = lshr i32 %8042, 4
  %8044 = trunc i32 %8043 to i8
  %8045 = and i8 %8044, 1
  store i8 %8045, i8* %26, align 1
  %8046 = icmp eq i32 %8030, 0
  %8047 = zext i1 %8046 to i8
  store i8 %8047, i8* %29, align 1
  %8048 = lshr i32 %8030, 31
  %8049 = trunc i32 %8048 to i8
  store i8 %8049, i8* %32, align 1
  %8050 = lshr i32 %8020, 31
  %8051 = lshr i32 %8029, 31
  %8052 = xor i32 %8048, %8050
  %8053 = xor i32 %8048, %8051
  %8054 = add nuw nsw i32 %8052, %8053
  %8055 = icmp eq i32 %8054, 2
  %8056 = zext i1 %8055 to i8
  store i8 %8056, i8* %38, align 1
  %8057 = add i64 %7988, -36
  %8058 = add i64 %8016, 17
  store i64 %8058, i64* %3, align 8
  %8059 = inttoptr i64 %8057 to i32*
  store i32 %8030, i32* %8059, align 4
  %8060 = load i64, i64* %RBP.i, align 8
  %8061 = add i64 %8060, -36
  %8062 = load i64, i64* %3, align 8
  %8063 = add i64 %8062, 4
  store i64 %8063, i64* %3, align 8
  %8064 = inttoptr i64 %8061 to i32*
  %8065 = load i32, i32* %8064, align 4
  %8066 = sext i32 %8065 to i64
  store i64 %8066, i64* %RCX.i2558, align 8
  %8067 = add nsw i64 %8066, 12099168
  %8068 = add i64 %8062, 12
  store i64 %8068, i64* %3, align 8
  %8069 = inttoptr i64 %8067 to i8*
  %8070 = load i8, i8* %8069, align 1
  %8071 = zext i8 %8070 to i64
  store i64 %8071, i64* %RAX.i2706, align 8
  %8072 = zext i8 %8070 to i32
  store i8 0, i8* %14, align 1
  %8073 = tail call i32 @llvm.ctpop.i32(i32 %8072)
  %8074 = trunc i32 %8073 to i8
  %8075 = and i8 %8074, 1
  %8076 = xor i8 %8075, 1
  store i8 %8076, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %8077 = icmp eq i8 %8070, 0
  %8078 = zext i1 %8077 to i8
  store i8 %8078, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v297 = select i1 %8077, i64 21, i64 463
  %8079 = add i64 %8062, %.v297
  store i64 %8079, i64* %3, align 8
  br i1 %8077, label %block_410ba9, label %block_410b83.block_.L_410d63_crit_edge

block_410b83.block_.L_410d63_crit_edge:           ; preds = %block_410b83
  %.pre201 = add i64 %8060, -12
  %.pre202 = inttoptr i64 %.pre201 to i32*
  br label %block_.L_410d63

block_410ba9:                                     ; preds = %block_410b83
  %8080 = add i64 %8060, -20
  %8081 = add i64 %8079, 4
  store i64 %8081, i64* %3, align 8
  %8082 = inttoptr i64 %8080 to i32*
  %8083 = load i32, i32* %8082, align 4
  store i8 0, i8* %14, align 1
  %8084 = and i32 %8083, 255
  %8085 = tail call i32 @llvm.ctpop.i32(i32 %8084)
  %8086 = trunc i32 %8085 to i8
  %8087 = and i8 %8086, 1
  %8088 = xor i8 %8087, 1
  store i8 %8088, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %8089 = icmp eq i32 %8083, 0
  %8090 = zext i1 %8089 to i8
  store i8 %8090, i8* %29, align 1
  %8091 = lshr i32 %8083, 31
  %8092 = trunc i32 %8091 to i8
  store i8 %8092, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %8093 = icmp ne i8 %8092, 0
  %.v153 = select i1 %8093, i64 210, i64 6
  %8094 = add i64 %8081, %.v153
  store i64 %8094, i64* %3, align 8
  br i1 %8093, label %block_.L_410c7f, label %block_410bb3

block_410bb3:                                     ; preds = %block_410ba9
  %8095 = add i64 %8094, 3
  store i64 %8095, i64* %3, align 8
  %8096 = load i32, i32* %8064, align 4
  %8097 = add i32 %8096, 20
  %8098 = zext i32 %8097 to i64
  store i64 %8098, i64* %RAX.i2706, align 8
  %8099 = icmp ugt i32 %8096, -21
  %8100 = zext i1 %8099 to i8
  store i8 %8100, i8* %14, align 1
  %8101 = and i32 %8097, 255
  %8102 = tail call i32 @llvm.ctpop.i32(i32 %8101)
  %8103 = trunc i32 %8102 to i8
  %8104 = and i8 %8103, 1
  %8105 = xor i8 %8104, 1
  store i8 %8105, i8* %21, align 1
  %8106 = xor i32 %8096, 16
  %8107 = xor i32 %8106, %8097
  %8108 = lshr i32 %8107, 4
  %8109 = trunc i32 %8108 to i8
  %8110 = and i8 %8109, 1
  store i8 %8110, i8* %26, align 1
  %8111 = icmp eq i32 %8097, 0
  %8112 = zext i1 %8111 to i8
  store i8 %8112, i8* %29, align 1
  %8113 = lshr i32 %8097, 31
  %8114 = trunc i32 %8113 to i8
  store i8 %8114, i8* %32, align 1
  %8115 = lshr i32 %8096, 31
  %8116 = xor i32 %8113, %8115
  %8117 = add nuw nsw i32 %8116, %8113
  %8118 = icmp eq i32 %8117, 2
  %8119 = zext i1 %8118 to i8
  store i8 %8119, i8* %38, align 1
  %8120 = sext i32 %8097 to i64
  store i64 %8120, i64* %RCX.i2558, align 8
  %8121 = add nsw i64 %8120, 12099168
  %8122 = add i64 %8094, 17
  store i64 %8122, i64* %3, align 8
  %8123 = inttoptr i64 %8121 to i8*
  %8124 = load i8, i8* %8123, align 1
  %8125 = zext i8 %8124 to i64
  store i64 %8125, i64* %RAX.i2706, align 8
  %8126 = zext i8 %8124 to i32
  %8127 = add i64 %8060, -12
  %8128 = add i64 %8094, 20
  store i64 %8128, i64* %3, align 8
  %8129 = inttoptr i64 %8127 to i32*
  %8130 = load i32, i32* %8129, align 4
  %8131 = sub i32 %8126, %8130
  %8132 = icmp ult i32 %8126, %8130
  %8133 = zext i1 %8132 to i8
  store i8 %8133, i8* %14, align 1
  %8134 = and i32 %8131, 255
  %8135 = tail call i32 @llvm.ctpop.i32(i32 %8134)
  %8136 = trunc i32 %8135 to i8
  %8137 = and i8 %8136, 1
  %8138 = xor i8 %8137, 1
  store i8 %8138, i8* %21, align 1
  %8139 = xor i32 %8130, %8126
  %8140 = xor i32 %8139, %8131
  %8141 = lshr i32 %8140, 4
  %8142 = trunc i32 %8141 to i8
  %8143 = and i8 %8142, 1
  store i8 %8143, i8* %26, align 1
  %8144 = icmp eq i32 %8131, 0
  %8145 = zext i1 %8144 to i8
  store i8 %8145, i8* %29, align 1
  %8146 = lshr i32 %8131, 31
  %8147 = trunc i32 %8146 to i8
  store i8 %8147, i8* %32, align 1
  %8148 = lshr i32 %8130, 31
  %8149 = add nuw nsw i32 %8146, %8148
  %8150 = icmp eq i32 %8149, 2
  %8151 = zext i1 %8150 to i8
  store i8 %8151, i8* %38, align 1
  %.v302 = select i1 %8144, i64 26, i64 51
  %8152 = add i64 %8094, %.v302
  store i64 %8152, i64* %3, align 8
  br i1 %8144, label %block_410bcd, label %block_.L_410be6

block_410bcd:                                     ; preds = %block_410bb3
  %8153 = add i64 %8152, 3
  store i64 %8153, i64* %3, align 8
  %8154 = load i32, i32* %8064, align 4
  %8155 = add i32 %8154, 20
  %8156 = zext i32 %8155 to i64
  store i64 %8156, i64* %RAX.i2706, align 8
  %8157 = icmp ugt i32 %8154, -21
  %8158 = zext i1 %8157 to i8
  store i8 %8158, i8* %14, align 1
  %8159 = and i32 %8155, 255
  %8160 = tail call i32 @llvm.ctpop.i32(i32 %8159)
  %8161 = trunc i32 %8160 to i8
  %8162 = and i8 %8161, 1
  %8163 = xor i8 %8162, 1
  store i8 %8163, i8* %21, align 1
  %8164 = xor i32 %8154, 16
  %8165 = xor i32 %8164, %8155
  %8166 = lshr i32 %8165, 4
  %8167 = trunc i32 %8166 to i8
  %8168 = and i8 %8167, 1
  store i8 %8168, i8* %26, align 1
  %8169 = icmp eq i32 %8155, 0
  %8170 = zext i1 %8169 to i8
  store i8 %8170, i8* %29, align 1
  %8171 = lshr i32 %8155, 31
  %8172 = trunc i32 %8171 to i8
  store i8 %8172, i8* %32, align 1
  %8173 = lshr i32 %8154, 31
  %8174 = xor i32 %8171, %8173
  %8175 = add nuw nsw i32 %8174, %8171
  %8176 = icmp eq i32 %8175, 2
  %8177 = zext i1 %8176 to i8
  store i8 %8177, i8* %38, align 1
  %8178 = sext i32 %8155 to i64
  store i64 %8178, i64* %RCX.i2558, align 8
  %8179 = shl nsw i64 %8178, 2
  %8180 = add nsw i64 %8179, 11187184
  %8181 = add i64 %8152, 16
  store i64 %8181, i64* %3, align 8
  %8182 = inttoptr i64 %8180 to i32*
  %8183 = load i32, i32* %8182, align 4
  %8184 = zext i32 %8183 to i64
  store i64 %8184, i64* %RAX.i2706, align 8
  %8185 = add i64 %8152, 19
  store i64 %8185, i64* %3, align 8
  %8186 = load i32, i32* %8082, align 4
  %8187 = sub i32 %8183, %8186
  %8188 = icmp ult i32 %8183, %8186
  %8189 = zext i1 %8188 to i8
  store i8 %8189, i8* %14, align 1
  %8190 = and i32 %8187, 255
  %8191 = tail call i32 @llvm.ctpop.i32(i32 %8190)
  %8192 = trunc i32 %8191 to i8
  %8193 = and i8 %8192, 1
  %8194 = xor i8 %8193, 1
  store i8 %8194, i8* %21, align 1
  %8195 = xor i32 %8186, %8183
  %8196 = xor i32 %8195, %8187
  %8197 = lshr i32 %8196, 4
  %8198 = trunc i32 %8197 to i8
  %8199 = and i8 %8198, 1
  store i8 %8199, i8* %26, align 1
  %8200 = icmp eq i32 %8187, 0
  %8201 = zext i1 %8200 to i8
  store i8 %8201, i8* %29, align 1
  %8202 = lshr i32 %8187, 31
  %8203 = trunc i32 %8202 to i8
  store i8 %8203, i8* %32, align 1
  %8204 = lshr i32 %8183, 31
  %8205 = lshr i32 %8186, 31
  %8206 = xor i32 %8205, %8204
  %8207 = xor i32 %8202, %8204
  %8208 = add nuw nsw i32 %8207, %8206
  %8209 = icmp eq i32 %8208, 2
  %8210 = zext i1 %8209 to i8
  store i8 %8210, i8* %38, align 1
  %.v317 = select i1 %8200, i64 406, i64 25
  %8211 = add i64 %8152, %.v317
  store i64 %8211, i64* %3, align 8
  br i1 %8200, label %block_.L_410d63, label %block_.L_410be6

block_.L_410be6:                                  ; preds = %block_410bb3, %block_410bcd
  %8212 = phi i64 [ %8211, %block_410bcd ], [ %8152, %block_410bb3 ]
  %8213 = add i64 %8212, 3
  store i64 %8213, i64* %3, align 8
  %8214 = load i32, i32* %8064, align 4
  %8215 = add i32 %8214, -1
  %8216 = zext i32 %8215 to i64
  store i64 %8216, i64* %RAX.i2706, align 8
  %8217 = icmp eq i32 %8214, 0
  %8218 = zext i1 %8217 to i8
  store i8 %8218, i8* %14, align 1
  %8219 = and i32 %8215, 255
  %8220 = tail call i32 @llvm.ctpop.i32(i32 %8219)
  %8221 = trunc i32 %8220 to i8
  %8222 = and i8 %8221, 1
  %8223 = xor i8 %8222, 1
  store i8 %8223, i8* %21, align 1
  %8224 = xor i32 %8215, %8214
  %8225 = lshr i32 %8224, 4
  %8226 = trunc i32 %8225 to i8
  %8227 = and i8 %8226, 1
  store i8 %8227, i8* %26, align 1
  %8228 = icmp eq i32 %8215, 0
  %8229 = zext i1 %8228 to i8
  store i8 %8229, i8* %29, align 1
  %8230 = lshr i32 %8215, 31
  %8231 = trunc i32 %8230 to i8
  store i8 %8231, i8* %32, align 1
  %8232 = lshr i32 %8214, 31
  %8233 = xor i32 %8230, %8232
  %8234 = add nuw nsw i32 %8233, %8232
  %8235 = icmp eq i32 %8234, 2
  %8236 = zext i1 %8235 to i8
  store i8 %8236, i8* %38, align 1
  %8237 = sext i32 %8215 to i64
  store i64 %8237, i64* %RCX.i2558, align 8
  %8238 = add nsw i64 %8237, 12099168
  %8239 = add i64 %8212, 17
  store i64 %8239, i64* %3, align 8
  %8240 = inttoptr i64 %8238 to i8*
  %8241 = load i8, i8* %8240, align 1
  %8242 = zext i8 %8241 to i64
  store i64 %8242, i64* %RAX.i2706, align 8
  %8243 = zext i8 %8241 to i32
  %8244 = add i64 %8212, 20
  store i64 %8244, i64* %3, align 8
  %8245 = load i32, i32* %8129, align 4
  %8246 = sub i32 %8243, %8245
  %8247 = icmp ult i32 %8243, %8245
  %8248 = zext i1 %8247 to i8
  store i8 %8248, i8* %14, align 1
  %8249 = and i32 %8246, 255
  %8250 = tail call i32 @llvm.ctpop.i32(i32 %8249)
  %8251 = trunc i32 %8250 to i8
  %8252 = and i8 %8251, 1
  %8253 = xor i8 %8252, 1
  store i8 %8253, i8* %21, align 1
  %8254 = xor i32 %8245, %8243
  %8255 = xor i32 %8254, %8246
  %8256 = lshr i32 %8255, 4
  %8257 = trunc i32 %8256 to i8
  %8258 = and i8 %8257, 1
  store i8 %8258, i8* %26, align 1
  %8259 = icmp eq i32 %8246, 0
  %8260 = zext i1 %8259 to i8
  store i8 %8260, i8* %29, align 1
  %8261 = lshr i32 %8246, 31
  %8262 = trunc i32 %8261 to i8
  store i8 %8262, i8* %32, align 1
  %8263 = lshr i32 %8245, 31
  %8264 = add nuw nsw i32 %8261, %8263
  %8265 = icmp eq i32 %8264, 2
  %8266 = zext i1 %8265 to i8
  store i8 %8266, i8* %38, align 1
  %.v303 = select i1 %8259, i64 26, i64 51
  %8267 = add i64 %8212, %.v303
  store i64 %8267, i64* %3, align 8
  br i1 %8259, label %block_410c00, label %block_.L_410c19

block_410c00:                                     ; preds = %block_.L_410be6
  %8268 = add i64 %8267, 3
  store i64 %8268, i64* %3, align 8
  %8269 = load i32, i32* %8064, align 4
  %8270 = add i32 %8269, -1
  %8271 = zext i32 %8270 to i64
  store i64 %8271, i64* %RAX.i2706, align 8
  %8272 = icmp eq i32 %8269, 0
  %8273 = zext i1 %8272 to i8
  store i8 %8273, i8* %14, align 1
  %8274 = and i32 %8270, 255
  %8275 = tail call i32 @llvm.ctpop.i32(i32 %8274)
  %8276 = trunc i32 %8275 to i8
  %8277 = and i8 %8276, 1
  %8278 = xor i8 %8277, 1
  store i8 %8278, i8* %21, align 1
  %8279 = xor i32 %8270, %8269
  %8280 = lshr i32 %8279, 4
  %8281 = trunc i32 %8280 to i8
  %8282 = and i8 %8281, 1
  store i8 %8282, i8* %26, align 1
  %8283 = icmp eq i32 %8270, 0
  %8284 = zext i1 %8283 to i8
  store i8 %8284, i8* %29, align 1
  %8285 = lshr i32 %8270, 31
  %8286 = trunc i32 %8285 to i8
  store i8 %8286, i8* %32, align 1
  %8287 = lshr i32 %8269, 31
  %8288 = xor i32 %8285, %8287
  %8289 = add nuw nsw i32 %8288, %8287
  %8290 = icmp eq i32 %8289, 2
  %8291 = zext i1 %8290 to i8
  store i8 %8291, i8* %38, align 1
  %8292 = sext i32 %8270 to i64
  store i64 %8292, i64* %RCX.i2558, align 8
  %8293 = shl nsw i64 %8292, 2
  %8294 = add nsw i64 %8293, 11187184
  %8295 = add i64 %8267, 16
  store i64 %8295, i64* %3, align 8
  %8296 = inttoptr i64 %8294 to i32*
  %8297 = load i32, i32* %8296, align 4
  %8298 = zext i32 %8297 to i64
  store i64 %8298, i64* %RAX.i2706, align 8
  %8299 = add i64 %8267, 19
  store i64 %8299, i64* %3, align 8
  %8300 = load i32, i32* %8082, align 4
  %8301 = sub i32 %8297, %8300
  %8302 = icmp ult i32 %8297, %8300
  %8303 = zext i1 %8302 to i8
  store i8 %8303, i8* %14, align 1
  %8304 = and i32 %8301, 255
  %8305 = tail call i32 @llvm.ctpop.i32(i32 %8304)
  %8306 = trunc i32 %8305 to i8
  %8307 = and i8 %8306, 1
  %8308 = xor i8 %8307, 1
  store i8 %8308, i8* %21, align 1
  %8309 = xor i32 %8300, %8297
  %8310 = xor i32 %8309, %8301
  %8311 = lshr i32 %8310, 4
  %8312 = trunc i32 %8311 to i8
  %8313 = and i8 %8312, 1
  store i8 %8313, i8* %26, align 1
  %8314 = icmp eq i32 %8301, 0
  %8315 = zext i1 %8314 to i8
  store i8 %8315, i8* %29, align 1
  %8316 = lshr i32 %8301, 31
  %8317 = trunc i32 %8316 to i8
  store i8 %8317, i8* %32, align 1
  %8318 = lshr i32 %8297, 31
  %8319 = lshr i32 %8300, 31
  %8320 = xor i32 %8319, %8318
  %8321 = xor i32 %8316, %8318
  %8322 = add nuw nsw i32 %8321, %8320
  %8323 = icmp eq i32 %8322, 2
  %8324 = zext i1 %8323 to i8
  store i8 %8324, i8* %38, align 1
  %.v316 = select i1 %8314, i64 355, i64 25
  %8325 = add i64 %8267, %.v316
  store i64 %8325, i64* %3, align 8
  br i1 %8314, label %block_.L_410d63, label %block_.L_410c19

block_.L_410c19:                                  ; preds = %block_.L_410be6, %block_410c00
  %8326 = phi i64 [ %8325, %block_410c00 ], [ %8267, %block_.L_410be6 ]
  %8327 = add i64 %8326, 3
  store i64 %8327, i64* %3, align 8
  %8328 = load i32, i32* %8064, align 4
  %8329 = add i32 %8328, -20
  %8330 = zext i32 %8329 to i64
  store i64 %8330, i64* %RAX.i2706, align 8
  %8331 = icmp ult i32 %8328, 20
  %8332 = zext i1 %8331 to i8
  store i8 %8332, i8* %14, align 1
  %8333 = and i32 %8329, 255
  %8334 = tail call i32 @llvm.ctpop.i32(i32 %8333)
  %8335 = trunc i32 %8334 to i8
  %8336 = and i8 %8335, 1
  %8337 = xor i8 %8336, 1
  store i8 %8337, i8* %21, align 1
  %8338 = xor i32 %8328, 16
  %8339 = xor i32 %8338, %8329
  %8340 = lshr i32 %8339, 4
  %8341 = trunc i32 %8340 to i8
  %8342 = and i8 %8341, 1
  store i8 %8342, i8* %26, align 1
  %8343 = icmp eq i32 %8329, 0
  %8344 = zext i1 %8343 to i8
  store i8 %8344, i8* %29, align 1
  %8345 = lshr i32 %8329, 31
  %8346 = trunc i32 %8345 to i8
  store i8 %8346, i8* %32, align 1
  %8347 = lshr i32 %8328, 31
  %8348 = xor i32 %8345, %8347
  %8349 = add nuw nsw i32 %8348, %8347
  %8350 = icmp eq i32 %8349, 2
  %8351 = zext i1 %8350 to i8
  store i8 %8351, i8* %38, align 1
  %8352 = sext i32 %8329 to i64
  store i64 %8352, i64* %RCX.i2558, align 8
  %8353 = add nsw i64 %8352, 12099168
  %8354 = add i64 %8326, 17
  store i64 %8354, i64* %3, align 8
  %8355 = inttoptr i64 %8353 to i8*
  %8356 = load i8, i8* %8355, align 1
  %8357 = zext i8 %8356 to i64
  store i64 %8357, i64* %RAX.i2706, align 8
  %8358 = zext i8 %8356 to i32
  %8359 = add i64 %8326, 20
  store i64 %8359, i64* %3, align 8
  %8360 = load i32, i32* %8129, align 4
  %8361 = sub i32 %8358, %8360
  %8362 = icmp ult i32 %8358, %8360
  %8363 = zext i1 %8362 to i8
  store i8 %8363, i8* %14, align 1
  %8364 = and i32 %8361, 255
  %8365 = tail call i32 @llvm.ctpop.i32(i32 %8364)
  %8366 = trunc i32 %8365 to i8
  %8367 = and i8 %8366, 1
  %8368 = xor i8 %8367, 1
  store i8 %8368, i8* %21, align 1
  %8369 = xor i32 %8360, %8358
  %8370 = xor i32 %8369, %8361
  %8371 = lshr i32 %8370, 4
  %8372 = trunc i32 %8371 to i8
  %8373 = and i8 %8372, 1
  store i8 %8373, i8* %26, align 1
  %8374 = icmp eq i32 %8361, 0
  %8375 = zext i1 %8374 to i8
  store i8 %8375, i8* %29, align 1
  %8376 = lshr i32 %8361, 31
  %8377 = trunc i32 %8376 to i8
  store i8 %8377, i8* %32, align 1
  %8378 = lshr i32 %8360, 31
  %8379 = add nuw nsw i32 %8376, %8378
  %8380 = icmp eq i32 %8379, 2
  %8381 = zext i1 %8380 to i8
  store i8 %8381, i8* %38, align 1
  %.v304 = select i1 %8374, i64 26, i64 51
  %8382 = add i64 %8326, %.v304
  store i64 %8382, i64* %3, align 8
  br i1 %8374, label %block_410c33, label %block_.L_410c4c

block_410c33:                                     ; preds = %block_.L_410c19
  %8383 = add i64 %8382, 3
  store i64 %8383, i64* %3, align 8
  %8384 = load i32, i32* %8064, align 4
  %8385 = add i32 %8384, -20
  %8386 = zext i32 %8385 to i64
  store i64 %8386, i64* %RAX.i2706, align 8
  %8387 = icmp ult i32 %8384, 20
  %8388 = zext i1 %8387 to i8
  store i8 %8388, i8* %14, align 1
  %8389 = and i32 %8385, 255
  %8390 = tail call i32 @llvm.ctpop.i32(i32 %8389)
  %8391 = trunc i32 %8390 to i8
  %8392 = and i8 %8391, 1
  %8393 = xor i8 %8392, 1
  store i8 %8393, i8* %21, align 1
  %8394 = xor i32 %8384, 16
  %8395 = xor i32 %8394, %8385
  %8396 = lshr i32 %8395, 4
  %8397 = trunc i32 %8396 to i8
  %8398 = and i8 %8397, 1
  store i8 %8398, i8* %26, align 1
  %8399 = icmp eq i32 %8385, 0
  %8400 = zext i1 %8399 to i8
  store i8 %8400, i8* %29, align 1
  %8401 = lshr i32 %8385, 31
  %8402 = trunc i32 %8401 to i8
  store i8 %8402, i8* %32, align 1
  %8403 = lshr i32 %8384, 31
  %8404 = xor i32 %8401, %8403
  %8405 = add nuw nsw i32 %8404, %8403
  %8406 = icmp eq i32 %8405, 2
  %8407 = zext i1 %8406 to i8
  store i8 %8407, i8* %38, align 1
  %8408 = sext i32 %8385 to i64
  store i64 %8408, i64* %RCX.i2558, align 8
  %8409 = shl nsw i64 %8408, 2
  %8410 = add nsw i64 %8409, 11187184
  %8411 = add i64 %8382, 16
  store i64 %8411, i64* %3, align 8
  %8412 = inttoptr i64 %8410 to i32*
  %8413 = load i32, i32* %8412, align 4
  %8414 = zext i32 %8413 to i64
  store i64 %8414, i64* %RAX.i2706, align 8
  %8415 = add i64 %8382, 19
  store i64 %8415, i64* %3, align 8
  %8416 = load i32, i32* %8082, align 4
  %8417 = sub i32 %8413, %8416
  %8418 = icmp ult i32 %8413, %8416
  %8419 = zext i1 %8418 to i8
  store i8 %8419, i8* %14, align 1
  %8420 = and i32 %8417, 255
  %8421 = tail call i32 @llvm.ctpop.i32(i32 %8420)
  %8422 = trunc i32 %8421 to i8
  %8423 = and i8 %8422, 1
  %8424 = xor i8 %8423, 1
  store i8 %8424, i8* %21, align 1
  %8425 = xor i32 %8416, %8413
  %8426 = xor i32 %8425, %8417
  %8427 = lshr i32 %8426, 4
  %8428 = trunc i32 %8427 to i8
  %8429 = and i8 %8428, 1
  store i8 %8429, i8* %26, align 1
  %8430 = icmp eq i32 %8417, 0
  %8431 = zext i1 %8430 to i8
  store i8 %8431, i8* %29, align 1
  %8432 = lshr i32 %8417, 31
  %8433 = trunc i32 %8432 to i8
  store i8 %8433, i8* %32, align 1
  %8434 = lshr i32 %8413, 31
  %8435 = lshr i32 %8416, 31
  %8436 = xor i32 %8435, %8434
  %8437 = xor i32 %8432, %8434
  %8438 = add nuw nsw i32 %8437, %8436
  %8439 = icmp eq i32 %8438, 2
  %8440 = zext i1 %8439 to i8
  store i8 %8440, i8* %38, align 1
  %.v315 = select i1 %8430, i64 304, i64 25
  %8441 = add i64 %8382, %.v315
  store i64 %8441, i64* %3, align 8
  br i1 %8430, label %block_.L_410d63, label %block_.L_410c4c

block_.L_410c4c:                                  ; preds = %block_.L_410c19, %block_410c33
  %8442 = phi i64 [ %8441, %block_410c33 ], [ %8382, %block_.L_410c19 ]
  %8443 = add i64 %8442, 3
  store i64 %8443, i64* %3, align 8
  %8444 = load i32, i32* %8064, align 4
  %8445 = add i32 %8444, 1
  %8446 = zext i32 %8445 to i64
  store i64 %8446, i64* %RAX.i2706, align 8
  %8447 = icmp eq i32 %8444, -1
  %8448 = icmp eq i32 %8445, 0
  %8449 = or i1 %8447, %8448
  %8450 = zext i1 %8449 to i8
  store i8 %8450, i8* %14, align 1
  %8451 = and i32 %8445, 255
  %8452 = tail call i32 @llvm.ctpop.i32(i32 %8451)
  %8453 = trunc i32 %8452 to i8
  %8454 = and i8 %8453, 1
  %8455 = xor i8 %8454, 1
  store i8 %8455, i8* %21, align 1
  %8456 = xor i32 %8445, %8444
  %8457 = lshr i32 %8456, 4
  %8458 = trunc i32 %8457 to i8
  %8459 = and i8 %8458, 1
  store i8 %8459, i8* %26, align 1
  %8460 = zext i1 %8448 to i8
  store i8 %8460, i8* %29, align 1
  %8461 = lshr i32 %8445, 31
  %8462 = trunc i32 %8461 to i8
  store i8 %8462, i8* %32, align 1
  %8463 = lshr i32 %8444, 31
  %8464 = xor i32 %8461, %8463
  %8465 = add nuw nsw i32 %8464, %8461
  %8466 = icmp eq i32 %8465, 2
  %8467 = zext i1 %8466 to i8
  store i8 %8467, i8* %38, align 1
  %8468 = sext i32 %8445 to i64
  store i64 %8468, i64* %RCX.i2558, align 8
  %8469 = add nsw i64 %8468, 12099168
  %8470 = add i64 %8442, 17
  store i64 %8470, i64* %3, align 8
  %8471 = inttoptr i64 %8469 to i8*
  %8472 = load i8, i8* %8471, align 1
  %8473 = zext i8 %8472 to i64
  store i64 %8473, i64* %RAX.i2706, align 8
  %8474 = zext i8 %8472 to i32
  %8475 = add i64 %8442, 20
  store i64 %8475, i64* %3, align 8
  %8476 = load i32, i32* %8129, align 4
  %8477 = sub i32 %8474, %8476
  %8478 = icmp ult i32 %8474, %8476
  %8479 = zext i1 %8478 to i8
  store i8 %8479, i8* %14, align 1
  %8480 = and i32 %8477, 255
  %8481 = tail call i32 @llvm.ctpop.i32(i32 %8480)
  %8482 = trunc i32 %8481 to i8
  %8483 = and i8 %8482, 1
  %8484 = xor i8 %8483, 1
  store i8 %8484, i8* %21, align 1
  %8485 = xor i32 %8476, %8474
  %8486 = xor i32 %8485, %8477
  %8487 = lshr i32 %8486, 4
  %8488 = trunc i32 %8487 to i8
  %8489 = and i8 %8488, 1
  store i8 %8489, i8* %26, align 1
  %8490 = icmp eq i32 %8477, 0
  %8491 = zext i1 %8490 to i8
  store i8 %8491, i8* %29, align 1
  %8492 = lshr i32 %8477, 31
  %8493 = trunc i32 %8492 to i8
  store i8 %8493, i8* %32, align 1
  %8494 = lshr i32 %8476, 31
  %8495 = add nuw nsw i32 %8492, %8494
  %8496 = icmp eq i32 %8495, 2
  %8497 = zext i1 %8496 to i8
  store i8 %8497, i8* %38, align 1
  %.v305 = select i1 %8490, i64 26, i64 51
  %8498 = add i64 %8442, %.v305
  store i64 %8498, i64* %3, align 8
  br i1 %8490, label %block_410c66, label %block_.L_410c7f

block_410c66:                                     ; preds = %block_.L_410c4c
  %8499 = add i64 %8498, 3
  store i64 %8499, i64* %3, align 8
  %8500 = load i32, i32* %8064, align 4
  %8501 = add i32 %8500, 1
  %8502 = zext i32 %8501 to i64
  store i64 %8502, i64* %RAX.i2706, align 8
  %8503 = icmp eq i32 %8500, -1
  %8504 = icmp eq i32 %8501, 0
  %8505 = or i1 %8503, %8504
  %8506 = zext i1 %8505 to i8
  store i8 %8506, i8* %14, align 1
  %8507 = and i32 %8501, 255
  %8508 = tail call i32 @llvm.ctpop.i32(i32 %8507)
  %8509 = trunc i32 %8508 to i8
  %8510 = and i8 %8509, 1
  %8511 = xor i8 %8510, 1
  store i8 %8511, i8* %21, align 1
  %8512 = xor i32 %8501, %8500
  %8513 = lshr i32 %8512, 4
  %8514 = trunc i32 %8513 to i8
  %8515 = and i8 %8514, 1
  store i8 %8515, i8* %26, align 1
  %8516 = zext i1 %8504 to i8
  store i8 %8516, i8* %29, align 1
  %8517 = lshr i32 %8501, 31
  %8518 = trunc i32 %8517 to i8
  store i8 %8518, i8* %32, align 1
  %8519 = lshr i32 %8500, 31
  %8520 = xor i32 %8517, %8519
  %8521 = add nuw nsw i32 %8520, %8517
  %8522 = icmp eq i32 %8521, 2
  %8523 = zext i1 %8522 to i8
  store i8 %8523, i8* %38, align 1
  %8524 = sext i32 %8501 to i64
  store i64 %8524, i64* %RCX.i2558, align 8
  %8525 = shl nsw i64 %8524, 2
  %8526 = add nsw i64 %8525, 11187184
  %8527 = add i64 %8498, 16
  store i64 %8527, i64* %3, align 8
  %8528 = inttoptr i64 %8526 to i32*
  %8529 = load i32, i32* %8528, align 4
  %8530 = zext i32 %8529 to i64
  store i64 %8530, i64* %RAX.i2706, align 8
  %8531 = add i64 %8498, 19
  store i64 %8531, i64* %3, align 8
  %8532 = load i32, i32* %8082, align 4
  %8533 = sub i32 %8529, %8532
  %8534 = icmp ult i32 %8529, %8532
  %8535 = zext i1 %8534 to i8
  store i8 %8535, i8* %14, align 1
  %8536 = and i32 %8533, 255
  %8537 = tail call i32 @llvm.ctpop.i32(i32 %8536)
  %8538 = trunc i32 %8537 to i8
  %8539 = and i8 %8538, 1
  %8540 = xor i8 %8539, 1
  store i8 %8540, i8* %21, align 1
  %8541 = xor i32 %8532, %8529
  %8542 = xor i32 %8541, %8533
  %8543 = lshr i32 %8542, 4
  %8544 = trunc i32 %8543 to i8
  %8545 = and i8 %8544, 1
  store i8 %8545, i8* %26, align 1
  %8546 = icmp eq i32 %8533, 0
  %8547 = zext i1 %8546 to i8
  store i8 %8547, i8* %29, align 1
  %8548 = lshr i32 %8533, 31
  %8549 = trunc i32 %8548 to i8
  store i8 %8549, i8* %32, align 1
  %8550 = lshr i32 %8529, 31
  %8551 = lshr i32 %8532, 31
  %8552 = xor i32 %8551, %8550
  %8553 = xor i32 %8548, %8550
  %8554 = add nuw nsw i32 %8553, %8552
  %8555 = icmp eq i32 %8554, 2
  %8556 = zext i1 %8555 to i8
  store i8 %8556, i8* %38, align 1
  %.v314 = select i1 %8546, i64 253, i64 25
  %8557 = add i64 %8498, %.v314
  store i64 %8557, i64* %3, align 8
  br i1 %8546, label %block_.L_410d63, label %block_.L_410c7f

block_.L_410c7f:                                  ; preds = %block_.L_410c4c, %block_410c66, %block_410ba9
  %8558 = phi i64 [ %8557, %block_410c66 ], [ %8498, %block_.L_410c4c ], [ %8094, %block_410ba9 ]
  %8559 = add i64 %8060, -24
  %8560 = add i64 %8558, 4
  store i64 %8560, i64* %3, align 8
  %8561 = inttoptr i64 %8559 to i32*
  %8562 = load i32, i32* %8561, align 4
  store i8 0, i8* %14, align 1
  %8563 = and i32 %8562, 255
  %8564 = tail call i32 @llvm.ctpop.i32(i32 %8563)
  %8565 = trunc i32 %8564 to i8
  %8566 = and i8 %8565, 1
  %8567 = xor i8 %8566, 1
  store i8 %8567, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %8568 = icmp eq i32 %8562, 0
  %8569 = zext i1 %8568 to i8
  store i8 %8569, i8* %29, align 1
  %8570 = lshr i32 %8562, 31
  %8571 = trunc i32 %8570 to i8
  store i8 %8571, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %8572 = icmp ne i8 %8571, 0
  %.v154 = select i1 %8572, i64 210, i64 6
  %8573 = add i64 %8560, %.v154
  store i64 %8573, i64* %3, align 8
  br i1 %8572, label %block_.L_410d55, label %block_410c89

block_410c89:                                     ; preds = %block_.L_410c7f
  %8574 = add i64 %8573, 3
  store i64 %8574, i64* %3, align 8
  %8575 = load i32, i32* %8064, align 4
  %8576 = add i32 %8575, 20
  %8577 = zext i32 %8576 to i64
  store i64 %8577, i64* %RAX.i2706, align 8
  %8578 = icmp ugt i32 %8575, -21
  %8579 = zext i1 %8578 to i8
  store i8 %8579, i8* %14, align 1
  %8580 = and i32 %8576, 255
  %8581 = tail call i32 @llvm.ctpop.i32(i32 %8580)
  %8582 = trunc i32 %8581 to i8
  %8583 = and i8 %8582, 1
  %8584 = xor i8 %8583, 1
  store i8 %8584, i8* %21, align 1
  %8585 = xor i32 %8575, 16
  %8586 = xor i32 %8585, %8576
  %8587 = lshr i32 %8586, 4
  %8588 = trunc i32 %8587 to i8
  %8589 = and i8 %8588, 1
  store i8 %8589, i8* %26, align 1
  %8590 = icmp eq i32 %8576, 0
  %8591 = zext i1 %8590 to i8
  store i8 %8591, i8* %29, align 1
  %8592 = lshr i32 %8576, 31
  %8593 = trunc i32 %8592 to i8
  store i8 %8593, i8* %32, align 1
  %8594 = lshr i32 %8575, 31
  %8595 = xor i32 %8592, %8594
  %8596 = add nuw nsw i32 %8595, %8592
  %8597 = icmp eq i32 %8596, 2
  %8598 = zext i1 %8597 to i8
  store i8 %8598, i8* %38, align 1
  %8599 = sext i32 %8576 to i64
  store i64 %8599, i64* %RCX.i2558, align 8
  %8600 = add nsw i64 %8599, 12099168
  %8601 = add i64 %8573, 17
  store i64 %8601, i64* %3, align 8
  %8602 = inttoptr i64 %8600 to i8*
  %8603 = load i8, i8* %8602, align 1
  %8604 = zext i8 %8603 to i64
  store i64 %8604, i64* %RAX.i2706, align 8
  %8605 = zext i8 %8603 to i32
  %8606 = add i64 %8060, -12
  %8607 = add i64 %8573, 20
  store i64 %8607, i64* %3, align 8
  %8608 = inttoptr i64 %8606 to i32*
  %8609 = load i32, i32* %8608, align 4
  %8610 = sub i32 %8605, %8609
  %8611 = icmp ult i32 %8605, %8609
  %8612 = zext i1 %8611 to i8
  store i8 %8612, i8* %14, align 1
  %8613 = and i32 %8610, 255
  %8614 = tail call i32 @llvm.ctpop.i32(i32 %8613)
  %8615 = trunc i32 %8614 to i8
  %8616 = and i8 %8615, 1
  %8617 = xor i8 %8616, 1
  store i8 %8617, i8* %21, align 1
  %8618 = xor i32 %8609, %8605
  %8619 = xor i32 %8618, %8610
  %8620 = lshr i32 %8619, 4
  %8621 = trunc i32 %8620 to i8
  %8622 = and i8 %8621, 1
  store i8 %8622, i8* %26, align 1
  %8623 = icmp eq i32 %8610, 0
  %8624 = zext i1 %8623 to i8
  store i8 %8624, i8* %29, align 1
  %8625 = lshr i32 %8610, 31
  %8626 = trunc i32 %8625 to i8
  store i8 %8626, i8* %32, align 1
  %8627 = lshr i32 %8609, 31
  %8628 = add nuw nsw i32 %8625, %8627
  %8629 = icmp eq i32 %8628, 2
  %8630 = zext i1 %8629 to i8
  store i8 %8630, i8* %38, align 1
  %.v306 = select i1 %8623, i64 26, i64 51
  %8631 = add i64 %8573, %.v306
  store i64 %8631, i64* %3, align 8
  br i1 %8623, label %block_410ca3, label %block_.L_410cbc

block_410ca3:                                     ; preds = %block_410c89
  %8632 = add i64 %8631, 3
  store i64 %8632, i64* %3, align 8
  %8633 = load i32, i32* %8064, align 4
  %8634 = add i32 %8633, 20
  %8635 = zext i32 %8634 to i64
  store i64 %8635, i64* %RAX.i2706, align 8
  %8636 = icmp ugt i32 %8633, -21
  %8637 = zext i1 %8636 to i8
  store i8 %8637, i8* %14, align 1
  %8638 = and i32 %8634, 255
  %8639 = tail call i32 @llvm.ctpop.i32(i32 %8638)
  %8640 = trunc i32 %8639 to i8
  %8641 = and i8 %8640, 1
  %8642 = xor i8 %8641, 1
  store i8 %8642, i8* %21, align 1
  %8643 = xor i32 %8633, 16
  %8644 = xor i32 %8643, %8634
  %8645 = lshr i32 %8644, 4
  %8646 = trunc i32 %8645 to i8
  %8647 = and i8 %8646, 1
  store i8 %8647, i8* %26, align 1
  %8648 = icmp eq i32 %8634, 0
  %8649 = zext i1 %8648 to i8
  store i8 %8649, i8* %29, align 1
  %8650 = lshr i32 %8634, 31
  %8651 = trunc i32 %8650 to i8
  store i8 %8651, i8* %32, align 1
  %8652 = lshr i32 %8633, 31
  %8653 = xor i32 %8650, %8652
  %8654 = add nuw nsw i32 %8653, %8650
  %8655 = icmp eq i32 %8654, 2
  %8656 = zext i1 %8655 to i8
  store i8 %8656, i8* %38, align 1
  %8657 = sext i32 %8634 to i64
  store i64 %8657, i64* %RCX.i2558, align 8
  %8658 = shl nsw i64 %8657, 2
  %8659 = add nsw i64 %8658, 11187184
  %8660 = add i64 %8631, 16
  store i64 %8660, i64* %3, align 8
  %8661 = inttoptr i64 %8659 to i32*
  %8662 = load i32, i32* %8661, align 4
  %8663 = zext i32 %8662 to i64
  store i64 %8663, i64* %RAX.i2706, align 8
  %8664 = add i64 %8631, 19
  store i64 %8664, i64* %3, align 8
  %8665 = load i32, i32* %8561, align 4
  %8666 = sub i32 %8662, %8665
  %8667 = icmp ult i32 %8662, %8665
  %8668 = zext i1 %8667 to i8
  store i8 %8668, i8* %14, align 1
  %8669 = and i32 %8666, 255
  %8670 = tail call i32 @llvm.ctpop.i32(i32 %8669)
  %8671 = trunc i32 %8670 to i8
  %8672 = and i8 %8671, 1
  %8673 = xor i8 %8672, 1
  store i8 %8673, i8* %21, align 1
  %8674 = xor i32 %8665, %8662
  %8675 = xor i32 %8674, %8666
  %8676 = lshr i32 %8675, 4
  %8677 = trunc i32 %8676 to i8
  %8678 = and i8 %8677, 1
  store i8 %8678, i8* %26, align 1
  %8679 = icmp eq i32 %8666, 0
  %8680 = zext i1 %8679 to i8
  store i8 %8680, i8* %29, align 1
  %8681 = lshr i32 %8666, 31
  %8682 = trunc i32 %8681 to i8
  store i8 %8682, i8* %32, align 1
  %8683 = lshr i32 %8662, 31
  %8684 = lshr i32 %8665, 31
  %8685 = xor i32 %8684, %8683
  %8686 = xor i32 %8681, %8683
  %8687 = add nuw nsw i32 %8686, %8685
  %8688 = icmp eq i32 %8687, 2
  %8689 = zext i1 %8688 to i8
  store i8 %8689, i8* %38, align 1
  %.v313 = select i1 %8679, i64 192, i64 25
  %8690 = add i64 %8631, %.v313
  store i64 %8690, i64* %3, align 8
  br i1 %8679, label %block_.L_410d63, label %block_.L_410cbc

block_.L_410cbc:                                  ; preds = %block_410c89, %block_410ca3
  %8691 = phi i64 [ %8690, %block_410ca3 ], [ %8631, %block_410c89 ]
  %8692 = add i64 %8691, 3
  store i64 %8692, i64* %3, align 8
  %8693 = load i32, i32* %8064, align 4
  %8694 = add i32 %8693, -1
  %8695 = zext i32 %8694 to i64
  store i64 %8695, i64* %RAX.i2706, align 8
  %8696 = icmp eq i32 %8693, 0
  %8697 = zext i1 %8696 to i8
  store i8 %8697, i8* %14, align 1
  %8698 = and i32 %8694, 255
  %8699 = tail call i32 @llvm.ctpop.i32(i32 %8698)
  %8700 = trunc i32 %8699 to i8
  %8701 = and i8 %8700, 1
  %8702 = xor i8 %8701, 1
  store i8 %8702, i8* %21, align 1
  %8703 = xor i32 %8694, %8693
  %8704 = lshr i32 %8703, 4
  %8705 = trunc i32 %8704 to i8
  %8706 = and i8 %8705, 1
  store i8 %8706, i8* %26, align 1
  %8707 = icmp eq i32 %8694, 0
  %8708 = zext i1 %8707 to i8
  store i8 %8708, i8* %29, align 1
  %8709 = lshr i32 %8694, 31
  %8710 = trunc i32 %8709 to i8
  store i8 %8710, i8* %32, align 1
  %8711 = lshr i32 %8693, 31
  %8712 = xor i32 %8709, %8711
  %8713 = add nuw nsw i32 %8712, %8711
  %8714 = icmp eq i32 %8713, 2
  %8715 = zext i1 %8714 to i8
  store i8 %8715, i8* %38, align 1
  %8716 = sext i32 %8694 to i64
  store i64 %8716, i64* %RCX.i2558, align 8
  %8717 = add nsw i64 %8716, 12099168
  %8718 = add i64 %8691, 17
  store i64 %8718, i64* %3, align 8
  %8719 = inttoptr i64 %8717 to i8*
  %8720 = load i8, i8* %8719, align 1
  %8721 = zext i8 %8720 to i64
  store i64 %8721, i64* %RAX.i2706, align 8
  %8722 = zext i8 %8720 to i32
  %8723 = add i64 %8691, 20
  store i64 %8723, i64* %3, align 8
  %8724 = load i32, i32* %8608, align 4
  %8725 = sub i32 %8722, %8724
  %8726 = icmp ult i32 %8722, %8724
  %8727 = zext i1 %8726 to i8
  store i8 %8727, i8* %14, align 1
  %8728 = and i32 %8725, 255
  %8729 = tail call i32 @llvm.ctpop.i32(i32 %8728)
  %8730 = trunc i32 %8729 to i8
  %8731 = and i8 %8730, 1
  %8732 = xor i8 %8731, 1
  store i8 %8732, i8* %21, align 1
  %8733 = xor i32 %8724, %8722
  %8734 = xor i32 %8733, %8725
  %8735 = lshr i32 %8734, 4
  %8736 = trunc i32 %8735 to i8
  %8737 = and i8 %8736, 1
  store i8 %8737, i8* %26, align 1
  %8738 = icmp eq i32 %8725, 0
  %8739 = zext i1 %8738 to i8
  store i8 %8739, i8* %29, align 1
  %8740 = lshr i32 %8725, 31
  %8741 = trunc i32 %8740 to i8
  store i8 %8741, i8* %32, align 1
  %8742 = lshr i32 %8724, 31
  %8743 = add nuw nsw i32 %8740, %8742
  %8744 = icmp eq i32 %8743, 2
  %8745 = zext i1 %8744 to i8
  store i8 %8745, i8* %38, align 1
  %.v307 = select i1 %8738, i64 26, i64 51
  %8746 = add i64 %8691, %.v307
  store i64 %8746, i64* %3, align 8
  br i1 %8738, label %block_410cd6, label %block_.L_410cef

block_410cd6:                                     ; preds = %block_.L_410cbc
  %8747 = add i64 %8746, 3
  store i64 %8747, i64* %3, align 8
  %8748 = load i32, i32* %8064, align 4
  %8749 = add i32 %8748, -1
  %8750 = zext i32 %8749 to i64
  store i64 %8750, i64* %RAX.i2706, align 8
  %8751 = icmp eq i32 %8748, 0
  %8752 = zext i1 %8751 to i8
  store i8 %8752, i8* %14, align 1
  %8753 = and i32 %8749, 255
  %8754 = tail call i32 @llvm.ctpop.i32(i32 %8753)
  %8755 = trunc i32 %8754 to i8
  %8756 = and i8 %8755, 1
  %8757 = xor i8 %8756, 1
  store i8 %8757, i8* %21, align 1
  %8758 = xor i32 %8749, %8748
  %8759 = lshr i32 %8758, 4
  %8760 = trunc i32 %8759 to i8
  %8761 = and i8 %8760, 1
  store i8 %8761, i8* %26, align 1
  %8762 = icmp eq i32 %8749, 0
  %8763 = zext i1 %8762 to i8
  store i8 %8763, i8* %29, align 1
  %8764 = lshr i32 %8749, 31
  %8765 = trunc i32 %8764 to i8
  store i8 %8765, i8* %32, align 1
  %8766 = lshr i32 %8748, 31
  %8767 = xor i32 %8764, %8766
  %8768 = add nuw nsw i32 %8767, %8766
  %8769 = icmp eq i32 %8768, 2
  %8770 = zext i1 %8769 to i8
  store i8 %8770, i8* %38, align 1
  %8771 = sext i32 %8749 to i64
  store i64 %8771, i64* %RCX.i2558, align 8
  %8772 = shl nsw i64 %8771, 2
  %8773 = add nsw i64 %8772, 11187184
  %8774 = add i64 %8746, 16
  store i64 %8774, i64* %3, align 8
  %8775 = inttoptr i64 %8773 to i32*
  %8776 = load i32, i32* %8775, align 4
  %8777 = zext i32 %8776 to i64
  store i64 %8777, i64* %RAX.i2706, align 8
  %8778 = add i64 %8746, 19
  store i64 %8778, i64* %3, align 8
  %8779 = load i32, i32* %8561, align 4
  %8780 = sub i32 %8776, %8779
  %8781 = icmp ult i32 %8776, %8779
  %8782 = zext i1 %8781 to i8
  store i8 %8782, i8* %14, align 1
  %8783 = and i32 %8780, 255
  %8784 = tail call i32 @llvm.ctpop.i32(i32 %8783)
  %8785 = trunc i32 %8784 to i8
  %8786 = and i8 %8785, 1
  %8787 = xor i8 %8786, 1
  store i8 %8787, i8* %21, align 1
  %8788 = xor i32 %8779, %8776
  %8789 = xor i32 %8788, %8780
  %8790 = lshr i32 %8789, 4
  %8791 = trunc i32 %8790 to i8
  %8792 = and i8 %8791, 1
  store i8 %8792, i8* %26, align 1
  %8793 = icmp eq i32 %8780, 0
  %8794 = zext i1 %8793 to i8
  store i8 %8794, i8* %29, align 1
  %8795 = lshr i32 %8780, 31
  %8796 = trunc i32 %8795 to i8
  store i8 %8796, i8* %32, align 1
  %8797 = lshr i32 %8776, 31
  %8798 = lshr i32 %8779, 31
  %8799 = xor i32 %8798, %8797
  %8800 = xor i32 %8795, %8797
  %8801 = add nuw nsw i32 %8800, %8799
  %8802 = icmp eq i32 %8801, 2
  %8803 = zext i1 %8802 to i8
  store i8 %8803, i8* %38, align 1
  %.v312 = select i1 %8793, i64 141, i64 25
  %8804 = add i64 %8746, %.v312
  store i64 %8804, i64* %3, align 8
  br i1 %8793, label %block_.L_410d63, label %block_.L_410cef

block_.L_410cef:                                  ; preds = %block_.L_410cbc, %block_410cd6
  %8805 = phi i64 [ %8804, %block_410cd6 ], [ %8746, %block_.L_410cbc ]
  %8806 = add i64 %8805, 3
  store i64 %8806, i64* %3, align 8
  %8807 = load i32, i32* %8064, align 4
  %8808 = add i32 %8807, -20
  %8809 = zext i32 %8808 to i64
  store i64 %8809, i64* %RAX.i2706, align 8
  %8810 = icmp ult i32 %8807, 20
  %8811 = zext i1 %8810 to i8
  store i8 %8811, i8* %14, align 1
  %8812 = and i32 %8808, 255
  %8813 = tail call i32 @llvm.ctpop.i32(i32 %8812)
  %8814 = trunc i32 %8813 to i8
  %8815 = and i8 %8814, 1
  %8816 = xor i8 %8815, 1
  store i8 %8816, i8* %21, align 1
  %8817 = xor i32 %8807, 16
  %8818 = xor i32 %8817, %8808
  %8819 = lshr i32 %8818, 4
  %8820 = trunc i32 %8819 to i8
  %8821 = and i8 %8820, 1
  store i8 %8821, i8* %26, align 1
  %8822 = icmp eq i32 %8808, 0
  %8823 = zext i1 %8822 to i8
  store i8 %8823, i8* %29, align 1
  %8824 = lshr i32 %8808, 31
  %8825 = trunc i32 %8824 to i8
  store i8 %8825, i8* %32, align 1
  %8826 = lshr i32 %8807, 31
  %8827 = xor i32 %8824, %8826
  %8828 = add nuw nsw i32 %8827, %8826
  %8829 = icmp eq i32 %8828, 2
  %8830 = zext i1 %8829 to i8
  store i8 %8830, i8* %38, align 1
  %8831 = sext i32 %8808 to i64
  store i64 %8831, i64* %RCX.i2558, align 8
  %8832 = add nsw i64 %8831, 12099168
  %8833 = add i64 %8805, 17
  store i64 %8833, i64* %3, align 8
  %8834 = inttoptr i64 %8832 to i8*
  %8835 = load i8, i8* %8834, align 1
  %8836 = zext i8 %8835 to i64
  store i64 %8836, i64* %RAX.i2706, align 8
  %8837 = zext i8 %8835 to i32
  %8838 = add i64 %8805, 20
  store i64 %8838, i64* %3, align 8
  %8839 = load i32, i32* %8608, align 4
  %8840 = sub i32 %8837, %8839
  %8841 = icmp ult i32 %8837, %8839
  %8842 = zext i1 %8841 to i8
  store i8 %8842, i8* %14, align 1
  %8843 = and i32 %8840, 255
  %8844 = tail call i32 @llvm.ctpop.i32(i32 %8843)
  %8845 = trunc i32 %8844 to i8
  %8846 = and i8 %8845, 1
  %8847 = xor i8 %8846, 1
  store i8 %8847, i8* %21, align 1
  %8848 = xor i32 %8839, %8837
  %8849 = xor i32 %8848, %8840
  %8850 = lshr i32 %8849, 4
  %8851 = trunc i32 %8850 to i8
  %8852 = and i8 %8851, 1
  store i8 %8852, i8* %26, align 1
  %8853 = icmp eq i32 %8840, 0
  %8854 = zext i1 %8853 to i8
  store i8 %8854, i8* %29, align 1
  %8855 = lshr i32 %8840, 31
  %8856 = trunc i32 %8855 to i8
  store i8 %8856, i8* %32, align 1
  %8857 = lshr i32 %8839, 31
  %8858 = add nuw nsw i32 %8855, %8857
  %8859 = icmp eq i32 %8858, 2
  %8860 = zext i1 %8859 to i8
  store i8 %8860, i8* %38, align 1
  %.v308 = select i1 %8853, i64 26, i64 51
  %8861 = add i64 %8805, %.v308
  store i64 %8861, i64* %3, align 8
  br i1 %8853, label %block_410d09, label %block_.L_410d22

block_410d09:                                     ; preds = %block_.L_410cef
  %8862 = add i64 %8861, 3
  store i64 %8862, i64* %3, align 8
  %8863 = load i32, i32* %8064, align 4
  %8864 = add i32 %8863, -20
  %8865 = zext i32 %8864 to i64
  store i64 %8865, i64* %RAX.i2706, align 8
  %8866 = icmp ult i32 %8863, 20
  %8867 = zext i1 %8866 to i8
  store i8 %8867, i8* %14, align 1
  %8868 = and i32 %8864, 255
  %8869 = tail call i32 @llvm.ctpop.i32(i32 %8868)
  %8870 = trunc i32 %8869 to i8
  %8871 = and i8 %8870, 1
  %8872 = xor i8 %8871, 1
  store i8 %8872, i8* %21, align 1
  %8873 = xor i32 %8863, 16
  %8874 = xor i32 %8873, %8864
  %8875 = lshr i32 %8874, 4
  %8876 = trunc i32 %8875 to i8
  %8877 = and i8 %8876, 1
  store i8 %8877, i8* %26, align 1
  %8878 = icmp eq i32 %8864, 0
  %8879 = zext i1 %8878 to i8
  store i8 %8879, i8* %29, align 1
  %8880 = lshr i32 %8864, 31
  %8881 = trunc i32 %8880 to i8
  store i8 %8881, i8* %32, align 1
  %8882 = lshr i32 %8863, 31
  %8883 = xor i32 %8880, %8882
  %8884 = add nuw nsw i32 %8883, %8882
  %8885 = icmp eq i32 %8884, 2
  %8886 = zext i1 %8885 to i8
  store i8 %8886, i8* %38, align 1
  %8887 = sext i32 %8864 to i64
  store i64 %8887, i64* %RCX.i2558, align 8
  %8888 = shl nsw i64 %8887, 2
  %8889 = add nsw i64 %8888, 11187184
  %8890 = add i64 %8861, 16
  store i64 %8890, i64* %3, align 8
  %8891 = inttoptr i64 %8889 to i32*
  %8892 = load i32, i32* %8891, align 4
  %8893 = zext i32 %8892 to i64
  store i64 %8893, i64* %RAX.i2706, align 8
  %8894 = add i64 %8861, 19
  store i64 %8894, i64* %3, align 8
  %8895 = load i32, i32* %8561, align 4
  %8896 = sub i32 %8892, %8895
  %8897 = icmp ult i32 %8892, %8895
  %8898 = zext i1 %8897 to i8
  store i8 %8898, i8* %14, align 1
  %8899 = and i32 %8896, 255
  %8900 = tail call i32 @llvm.ctpop.i32(i32 %8899)
  %8901 = trunc i32 %8900 to i8
  %8902 = and i8 %8901, 1
  %8903 = xor i8 %8902, 1
  store i8 %8903, i8* %21, align 1
  %8904 = xor i32 %8895, %8892
  %8905 = xor i32 %8904, %8896
  %8906 = lshr i32 %8905, 4
  %8907 = trunc i32 %8906 to i8
  %8908 = and i8 %8907, 1
  store i8 %8908, i8* %26, align 1
  %8909 = icmp eq i32 %8896, 0
  %8910 = zext i1 %8909 to i8
  store i8 %8910, i8* %29, align 1
  %8911 = lshr i32 %8896, 31
  %8912 = trunc i32 %8911 to i8
  store i8 %8912, i8* %32, align 1
  %8913 = lshr i32 %8892, 31
  %8914 = lshr i32 %8895, 31
  %8915 = xor i32 %8914, %8913
  %8916 = xor i32 %8911, %8913
  %8917 = add nuw nsw i32 %8916, %8915
  %8918 = icmp eq i32 %8917, 2
  %8919 = zext i1 %8918 to i8
  store i8 %8919, i8* %38, align 1
  %.v311 = select i1 %8909, i64 90, i64 25
  %8920 = add i64 %8861, %.v311
  store i64 %8920, i64* %3, align 8
  br i1 %8909, label %block_.L_410d63, label %block_.L_410d22

block_.L_410d22:                                  ; preds = %block_.L_410cef, %block_410d09
  %8921 = phi i64 [ %8920, %block_410d09 ], [ %8861, %block_.L_410cef ]
  %8922 = add i64 %8921, 3
  store i64 %8922, i64* %3, align 8
  %8923 = load i32, i32* %8064, align 4
  %8924 = add i32 %8923, 1
  %8925 = zext i32 %8924 to i64
  store i64 %8925, i64* %RAX.i2706, align 8
  %8926 = icmp eq i32 %8923, -1
  %8927 = icmp eq i32 %8924, 0
  %8928 = or i1 %8926, %8927
  %8929 = zext i1 %8928 to i8
  store i8 %8929, i8* %14, align 1
  %8930 = and i32 %8924, 255
  %8931 = tail call i32 @llvm.ctpop.i32(i32 %8930)
  %8932 = trunc i32 %8931 to i8
  %8933 = and i8 %8932, 1
  %8934 = xor i8 %8933, 1
  store i8 %8934, i8* %21, align 1
  %8935 = xor i32 %8924, %8923
  %8936 = lshr i32 %8935, 4
  %8937 = trunc i32 %8936 to i8
  %8938 = and i8 %8937, 1
  store i8 %8938, i8* %26, align 1
  %8939 = zext i1 %8927 to i8
  store i8 %8939, i8* %29, align 1
  %8940 = lshr i32 %8924, 31
  %8941 = trunc i32 %8940 to i8
  store i8 %8941, i8* %32, align 1
  %8942 = lshr i32 %8923, 31
  %8943 = xor i32 %8940, %8942
  %8944 = add nuw nsw i32 %8943, %8940
  %8945 = icmp eq i32 %8944, 2
  %8946 = zext i1 %8945 to i8
  store i8 %8946, i8* %38, align 1
  %8947 = sext i32 %8924 to i64
  store i64 %8947, i64* %RCX.i2558, align 8
  %8948 = add nsw i64 %8947, 12099168
  %8949 = add i64 %8921, 17
  store i64 %8949, i64* %3, align 8
  %8950 = inttoptr i64 %8948 to i8*
  %8951 = load i8, i8* %8950, align 1
  %8952 = zext i8 %8951 to i64
  store i64 %8952, i64* %RAX.i2706, align 8
  %8953 = zext i8 %8951 to i32
  %8954 = add i64 %8921, 20
  store i64 %8954, i64* %3, align 8
  %8955 = load i32, i32* %8608, align 4
  %8956 = sub i32 %8953, %8955
  %8957 = icmp ult i32 %8953, %8955
  %8958 = zext i1 %8957 to i8
  store i8 %8958, i8* %14, align 1
  %8959 = and i32 %8956, 255
  %8960 = tail call i32 @llvm.ctpop.i32(i32 %8959)
  %8961 = trunc i32 %8960 to i8
  %8962 = and i8 %8961, 1
  %8963 = xor i8 %8962, 1
  store i8 %8963, i8* %21, align 1
  %8964 = xor i32 %8955, %8953
  %8965 = xor i32 %8964, %8956
  %8966 = lshr i32 %8965, 4
  %8967 = trunc i32 %8966 to i8
  %8968 = and i8 %8967, 1
  store i8 %8968, i8* %26, align 1
  %8969 = icmp eq i32 %8956, 0
  %8970 = zext i1 %8969 to i8
  store i8 %8970, i8* %29, align 1
  %8971 = lshr i32 %8956, 31
  %8972 = trunc i32 %8971 to i8
  store i8 %8972, i8* %32, align 1
  %8973 = lshr i32 %8955, 31
  %8974 = add nuw nsw i32 %8971, %8973
  %8975 = icmp eq i32 %8974, 2
  %8976 = zext i1 %8975 to i8
  store i8 %8976, i8* %38, align 1
  %.v309 = select i1 %8969, i64 26, i64 51
  %8977 = add i64 %8921, %.v309
  store i64 %8977, i64* %3, align 8
  br i1 %8969, label %block_410d3c, label %block_.L_410d55

block_410d3c:                                     ; preds = %block_.L_410d22
  %8978 = add i64 %8977, 3
  store i64 %8978, i64* %3, align 8
  %8979 = load i32, i32* %8064, align 4
  %8980 = add i32 %8979, 1
  %8981 = zext i32 %8980 to i64
  store i64 %8981, i64* %RAX.i2706, align 8
  %8982 = icmp eq i32 %8979, -1
  %8983 = icmp eq i32 %8980, 0
  %8984 = or i1 %8982, %8983
  %8985 = zext i1 %8984 to i8
  store i8 %8985, i8* %14, align 1
  %8986 = and i32 %8980, 255
  %8987 = tail call i32 @llvm.ctpop.i32(i32 %8986)
  %8988 = trunc i32 %8987 to i8
  %8989 = and i8 %8988, 1
  %8990 = xor i8 %8989, 1
  store i8 %8990, i8* %21, align 1
  %8991 = xor i32 %8980, %8979
  %8992 = lshr i32 %8991, 4
  %8993 = trunc i32 %8992 to i8
  %8994 = and i8 %8993, 1
  store i8 %8994, i8* %26, align 1
  %8995 = zext i1 %8983 to i8
  store i8 %8995, i8* %29, align 1
  %8996 = lshr i32 %8980, 31
  %8997 = trunc i32 %8996 to i8
  store i8 %8997, i8* %32, align 1
  %8998 = lshr i32 %8979, 31
  %8999 = xor i32 %8996, %8998
  %9000 = add nuw nsw i32 %8999, %8996
  %9001 = icmp eq i32 %9000, 2
  %9002 = zext i1 %9001 to i8
  store i8 %9002, i8* %38, align 1
  %9003 = sext i32 %8980 to i64
  store i64 %9003, i64* %RCX.i2558, align 8
  %9004 = shl nsw i64 %9003, 2
  %9005 = add nsw i64 %9004, 11187184
  %9006 = add i64 %8977, 16
  store i64 %9006, i64* %3, align 8
  %9007 = inttoptr i64 %9005 to i32*
  %9008 = load i32, i32* %9007, align 4
  %9009 = zext i32 %9008 to i64
  store i64 %9009, i64* %RAX.i2706, align 8
  %9010 = add i64 %8977, 19
  store i64 %9010, i64* %3, align 8
  %9011 = load i32, i32* %8561, align 4
  %9012 = sub i32 %9008, %9011
  %9013 = icmp ult i32 %9008, %9011
  %9014 = zext i1 %9013 to i8
  store i8 %9014, i8* %14, align 1
  %9015 = and i32 %9012, 255
  %9016 = tail call i32 @llvm.ctpop.i32(i32 %9015)
  %9017 = trunc i32 %9016 to i8
  %9018 = and i8 %9017, 1
  %9019 = xor i8 %9018, 1
  store i8 %9019, i8* %21, align 1
  %9020 = xor i32 %9011, %9008
  %9021 = xor i32 %9020, %9012
  %9022 = lshr i32 %9021, 4
  %9023 = trunc i32 %9022 to i8
  %9024 = and i8 %9023, 1
  store i8 %9024, i8* %26, align 1
  %9025 = icmp eq i32 %9012, 0
  %9026 = zext i1 %9025 to i8
  store i8 %9026, i8* %29, align 1
  %9027 = lshr i32 %9012, 31
  %9028 = trunc i32 %9027 to i8
  store i8 %9028, i8* %32, align 1
  %9029 = lshr i32 %9008, 31
  %9030 = lshr i32 %9011, 31
  %9031 = xor i32 %9030, %9029
  %9032 = xor i32 %9027, %9029
  %9033 = add nuw nsw i32 %9032, %9031
  %9034 = icmp eq i32 %9033, 2
  %9035 = zext i1 %9034 to i8
  store i8 %9035, i8* %38, align 1
  %.v310 = select i1 %9025, i64 39, i64 25
  %9036 = add i64 %8977, %.v310
  store i64 %9036, i64* %3, align 8
  br i1 %9025, label %block_.L_410d63, label %block_.L_410d55

block_.L_410d55:                                  ; preds = %block_.L_410d22, %block_410d3c, %block_.L_410c7f
  %9037 = phi i64 [ %9036, %block_410d3c ], [ %8977, %block_.L_410d22 ], [ %8573, %block_.L_410c7f ]
  %9038 = add i64 %8060, -28
  %9039 = add i64 %9037, 3
  store i64 %9039, i64* %3, align 8
  %9040 = inttoptr i64 %9038 to i32*
  %9041 = load i32, i32* %9040, align 4
  %9042 = add i32 %9041, 1
  %9043 = zext i32 %9042 to i64
  store i64 %9043, i64* %RAX.i2706, align 8
  %9044 = icmp eq i32 %9041, -1
  %9045 = icmp eq i32 %9042, 0
  %9046 = or i1 %9044, %9045
  %9047 = zext i1 %9046 to i8
  store i8 %9047, i8* %14, align 1
  %9048 = and i32 %9042, 255
  %9049 = tail call i32 @llvm.ctpop.i32(i32 %9048)
  %9050 = trunc i32 %9049 to i8
  %9051 = and i8 %9050, 1
  %9052 = xor i8 %9051, 1
  store i8 %9052, i8* %21, align 1
  %9053 = xor i32 %9042, %9041
  %9054 = lshr i32 %9053, 4
  %9055 = trunc i32 %9054 to i8
  %9056 = and i8 %9055, 1
  store i8 %9056, i8* %26, align 1
  %9057 = zext i1 %9045 to i8
  store i8 %9057, i8* %29, align 1
  %9058 = lshr i32 %9042, 31
  %9059 = trunc i32 %9058 to i8
  store i8 %9059, i8* %32, align 1
  %9060 = lshr i32 %9041, 31
  %9061 = xor i32 %9058, %9060
  %9062 = add nuw nsw i32 %9061, %9058
  %9063 = icmp eq i32 %9062, 2
  %9064 = zext i1 %9063 to i8
  store i8 %9064, i8* %38, align 1
  %9065 = add i64 %9037, 9
  store i64 %9065, i64* %3, align 8
  store i32 %9042, i32* %9040, align 4
  %9066 = load i64, i64* %3, align 8
  %9067 = add i64 %9066, 179
  br label %block_.L_410e11

block_.L_410d63:                                  ; preds = %block_410b83.block_.L_410d63_crit_edge, %block_410d3c, %block_410d09, %block_410cd6, %block_410ca3, %block_410c66, %block_410c33, %block_410c00, %block_410bcd
  %.pre-phi203 = phi i32* [ %.pre202, %block_410b83.block_.L_410d63_crit_edge ], [ %8608, %block_410d3c ], [ %8608, %block_410d09 ], [ %8608, %block_410cd6 ], [ %8608, %block_410ca3 ], [ %8129, %block_410c66 ], [ %8129, %block_410c33 ], [ %8129, %block_410c00 ], [ %8129, %block_410bcd ]
  %9068 = phi i64 [ %8079, %block_410b83.block_.L_410d63_crit_edge ], [ %9036, %block_410d3c ], [ %8920, %block_410d09 ], [ %8804, %block_410cd6 ], [ %8690, %block_410ca3 ], [ %8557, %block_410c66 ], [ %8441, %block_410c33 ], [ %8325, %block_410c00 ], [ %8211, %block_410bcd ]
  store i64 3, i64* %RAX.i2706, align 8
  %9069 = add i64 %9068, 9
  store i64 %9069, i64* %3, align 8
  %9070 = load i32, i32* %8064, align 4
  %9071 = sext i32 %9070 to i64
  store i64 %9071, i64* %RCX.i2558, align 8
  %9072 = add nsw i64 %9071, 12099168
  %9073 = add i64 %9068, 17
  store i64 %9073, i64* %3, align 8
  %9074 = inttoptr i64 %9072 to i8*
  %9075 = load i8, i8* %9074, align 1
  %9076 = zext i8 %9075 to i64
  store i64 %9076, i64* %RDX.i2704, align 8
  %9077 = add i64 %9068, 20
  store i64 %9077, i64* %3, align 8
  %9078 = load i32, i32* %.pre-phi203, align 4
  %9079 = sub i32 3, %9078
  %9080 = zext i32 %9079 to i64
  store i64 %9080, i64* %RAX.i2706, align 8
  %9081 = lshr i32 %9079, 31
  %9082 = zext i8 %9075 to i32
  %9083 = sub i32 %9082, %9079
  %9084 = icmp ult i32 %9082, %9079
  %9085 = zext i1 %9084 to i8
  store i8 %9085, i8* %14, align 1
  %9086 = and i32 %9083, 255
  %9087 = tail call i32 @llvm.ctpop.i32(i32 %9086)
  %9088 = trunc i32 %9087 to i8
  %9089 = and i8 %9088, 1
  %9090 = xor i8 %9089, 1
  store i8 %9090, i8* %21, align 1
  %9091 = xor i32 %9079, %9082
  %9092 = xor i32 %9091, %9083
  %9093 = lshr i32 %9092, 4
  %9094 = trunc i32 %9093 to i8
  %9095 = and i8 %9094, 1
  store i8 %9095, i8* %26, align 1
  %9096 = icmp eq i32 %9083, 0
  %9097 = zext i1 %9096 to i8
  store i8 %9097, i8* %29, align 1
  %9098 = lshr i32 %9083, 31
  %9099 = trunc i32 %9098 to i8
  store i8 %9099, i8* %32, align 1
  %9100 = add nuw nsw i32 %9098, %9081
  %9101 = icmp eq i32 %9100, 2
  %9102 = zext i1 %9101 to i8
  store i8 %9102, i8* %38, align 1
  %.v298 = select i1 %9096, i64 28, i64 169
  %9103 = add i64 %9068, %.v298
  store i64 %9103, i64* %3, align 8
  br i1 %9096, label %block_410d7f, label %block_.L_410e0c

block_410d7f:                                     ; preds = %block_.L_410d63
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2706, align 8
  %9104 = add i64 %9103, 14
  store i64 %9104, i64* %3, align 8
  %9105 = load i32, i32* %8064, align 4
  %9106 = sext i32 %9105 to i64
  store i64 %9106, i64* %RCX.i2558, align 8
  %9107 = shl nsw i64 %9106, 2
  %9108 = add nsw i64 %9107, 11187184
  %9109 = add i64 %9103, 22
  store i64 %9109, i64* %3, align 8
  %9110 = inttoptr i64 %9108 to i32*
  %9111 = load i32, i32* %9110, align 4
  %9112 = sext i32 %9111 to i64
  %9113 = mul nsw i64 %9112, 744
  store i64 %9113, i64* %RCX.i2558, align 8
  %9114 = lshr i64 %9113, 63
  %9115 = add i64 %9113, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %9115, i64* %RAX.i2706, align 8
  %9116 = icmp ult i64 %9115, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %9117 = icmp ult i64 %9115, %9113
  %9118 = or i1 %9116, %9117
  %9119 = zext i1 %9118 to i8
  store i8 %9119, i8* %14, align 1
  %9120 = trunc i64 %9115 to i32
  %9121 = and i32 %9120, 248
  %9122 = tail call i32 @llvm.ctpop.i32(i32 %9121)
  %9123 = trunc i32 %9122 to i8
  %9124 = and i8 %9123, 1
  %9125 = xor i8 %9124, 1
  store i8 %9125, i8* %21, align 1
  %9126 = xor i64 %9113, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %9127 = xor i64 %9126, %9115
  %9128 = lshr i64 %9127, 4
  %9129 = trunc i64 %9128 to i8
  %9130 = and i8 %9129, 1
  store i8 %9130, i8* %26, align 1
  %9131 = icmp eq i64 %9115, 0
  %9132 = zext i1 %9131 to i8
  store i8 %9132, i8* %29, align 1
  %9133 = lshr i64 %9115, 63
  %9134 = trunc i64 %9133 to i8
  store i8 %9134, i8* %32, align 1
  %9135 = xor i64 %9133, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %9136 = xor i64 %9133, %9114
  %9137 = add nuw nsw i64 %9135, %9136
  %9138 = icmp eq i64 %9137, 2
  %9139 = zext i1 %9138 to i8
  store i8 %9139, i8* %38, align 1
  %9140 = add i64 %9113, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %9141 = add i64 %9103, 36
  store i64 %9141, i64* %3, align 8
  %9142 = inttoptr i64 %9140 to i32*
  %9143 = load i32, i32* %9142, align 4
  %9144 = add i32 %9143, -1
  %9145 = icmp eq i32 %9143, 0
  %9146 = zext i1 %9145 to i8
  store i8 %9146, i8* %14, align 1
  %9147 = and i32 %9144, 255
  %9148 = tail call i32 @llvm.ctpop.i32(i32 %9147)
  %9149 = trunc i32 %9148 to i8
  %9150 = and i8 %9149, 1
  %9151 = xor i8 %9150, 1
  store i8 %9151, i8* %21, align 1
  %9152 = xor i32 %9144, %9143
  %9153 = lshr i32 %9152, 4
  %9154 = trunc i32 %9153 to i8
  %9155 = and i8 %9154, 1
  store i8 %9155, i8* %26, align 1
  %9156 = icmp eq i32 %9144, 0
  %9157 = zext i1 %9156 to i8
  store i8 %9157, i8* %29, align 1
  %9158 = lshr i32 %9144, 31
  %9159 = trunc i32 %9158 to i8
  store i8 %9159, i8* %32, align 1
  %9160 = lshr i32 %9143, 31
  %9161 = xor i32 %9158, %9160
  %9162 = add nuw nsw i32 %9161, %9160
  %9163 = icmp eq i32 %9162, 2
  %9164 = zext i1 %9163 to i8
  store i8 %9164, i8* %38, align 1
  %.v299 = select i1 %9156, i64 42, i64 141
  %9165 = add i64 %9103, %.v299
  store i64 %9165, i64* %3, align 8
  br i1 %9156, label %block_410da9, label %block_.L_410e0c

block_410da9:                                     ; preds = %block_410d7f
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2706, align 8
  %9166 = load i64, i64* %RBP.i, align 8
  %9167 = add i64 %9166, -36
  %9168 = add i64 %9165, 14
  store i64 %9168, i64* %3, align 8
  %9169 = inttoptr i64 %9167 to i32*
  %9170 = load i32, i32* %9169, align 4
  %9171 = sext i32 %9170 to i64
  store i64 %9171, i64* %RCX.i2558, align 8
  %9172 = shl nsw i64 %9171, 2
  %9173 = add nsw i64 %9172, 11187184
  %9174 = add i64 %9165, 22
  store i64 %9174, i64* %3, align 8
  %9175 = inttoptr i64 %9173 to i32*
  %9176 = load i32, i32* %9175, align 4
  %9177 = sext i32 %9176 to i64
  %9178 = mul nsw i64 %9177, 744
  store i64 %9178, i64* %RCX.i2558, align 8
  %9179 = lshr i64 %9178, 63
  %9180 = add i64 %9178, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %9180, i64* %RAX.i2706, align 8
  %9181 = icmp ult i64 %9180, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %9182 = icmp ult i64 %9180, %9178
  %9183 = or i1 %9181, %9182
  %9184 = zext i1 %9183 to i8
  store i8 %9184, i8* %14, align 1
  %9185 = trunc i64 %9180 to i32
  %9186 = and i32 %9185, 248
  %9187 = tail call i32 @llvm.ctpop.i32(i32 %9186)
  %9188 = trunc i32 %9187 to i8
  %9189 = and i8 %9188, 1
  %9190 = xor i8 %9189, 1
  store i8 %9190, i8* %21, align 1
  %9191 = xor i64 %9178, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %9192 = xor i64 %9191, %9180
  %9193 = lshr i64 %9192, 4
  %9194 = trunc i64 %9193 to i8
  %9195 = and i8 %9194, 1
  store i8 %9195, i8* %26, align 1
  %9196 = icmp eq i64 %9180, 0
  %9197 = zext i1 %9196 to i8
  store i8 %9197, i8* %29, align 1
  %9198 = lshr i64 %9180, 63
  %9199 = trunc i64 %9198 to i8
  store i8 %9199, i8* %32, align 1
  %9200 = xor i64 %9198, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %9201 = xor i64 %9198, %9179
  %9202 = add nuw nsw i64 %9200, %9201
  %9203 = icmp eq i64 %9202, 2
  %9204 = zext i1 %9203 to i8
  store i8 %9204, i8* %38, align 1
  %9205 = add i64 %9178, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 4)
  %9206 = add i64 %9165, 35
  store i64 %9206, i64* %3, align 8
  %9207 = inttoptr i64 %9205 to i32*
  %9208 = load i32, i32* %9207, align 4
  %9209 = zext i32 %9208 to i64
  store i64 %9209, i64* %RDX.i2704, align 8
  %9210 = add i64 %9166, -40
  %9211 = add i64 %9165, 38
  store i64 %9211, i64* %3, align 8
  %9212 = inttoptr i64 %9210 to i32*
  store i32 %9208, i32* %9212, align 4
  %9213 = load i64, i64* %RBP.i, align 8
  %9214 = add i64 %9213, -40
  %9215 = load i64, i64* %3, align 8
  %9216 = add i64 %9215, 4
  store i64 %9216, i64* %3, align 8
  %9217 = inttoptr i64 %9214 to i32*
  %9218 = load i32, i32* %9217, align 4
  %9219 = add i32 %9218, -1
  %9220 = icmp eq i32 %9218, 0
  %9221 = zext i1 %9220 to i8
  store i8 %9221, i8* %14, align 1
  %9222 = and i32 %9219, 255
  %9223 = tail call i32 @llvm.ctpop.i32(i32 %9222)
  %9224 = trunc i32 %9223 to i8
  %9225 = and i8 %9224, 1
  %9226 = xor i8 %9225, 1
  store i8 %9226, i8* %21, align 1
  %9227 = xor i32 %9219, %9218
  %9228 = lshr i32 %9227, 4
  %9229 = trunc i32 %9228 to i8
  %9230 = and i8 %9229, 1
  store i8 %9230, i8* %26, align 1
  %9231 = icmp eq i32 %9219, 0
  %9232 = zext i1 %9231 to i8
  store i8 %9232, i8* %29, align 1
  %9233 = lshr i32 %9219, 31
  %9234 = trunc i32 %9233 to i8
  store i8 %9234, i8* %32, align 1
  %9235 = lshr i32 %9218, 31
  %9236 = xor i32 %9233, %9235
  %9237 = add nuw nsw i32 %9236, %9235
  %9238 = icmp eq i32 %9237, 2
  %9239 = zext i1 %9238 to i8
  store i8 %9239, i8* %38, align 1
  %.v300 = select i1 %9231, i64 30, i64 10
  %9240 = add i64 %9215, %.v300
  store i64 %9240, i64* %3, align 8
  br i1 %9231, label %block_.L_410ded, label %block_410dd9

block_410dd9:                                     ; preds = %block_410da9
  %9241 = add i64 %9240, 4
  store i64 %9241, i64* %3, align 8
  %9242 = load i32, i32* %9217, align 4
  %9243 = add i32 %9242, -2
  %9244 = icmp ult i32 %9242, 2
  %9245 = zext i1 %9244 to i8
  store i8 %9245, i8* %14, align 1
  %9246 = and i32 %9243, 255
  %9247 = tail call i32 @llvm.ctpop.i32(i32 %9246)
  %9248 = trunc i32 %9247 to i8
  %9249 = and i8 %9248, 1
  %9250 = xor i8 %9249, 1
  store i8 %9250, i8* %21, align 1
  %9251 = xor i32 %9243, %9242
  %9252 = lshr i32 %9251, 4
  %9253 = trunc i32 %9252 to i8
  %9254 = and i8 %9253, 1
  store i8 %9254, i8* %26, align 1
  %9255 = icmp eq i32 %9243, 0
  %9256 = zext i1 %9255 to i8
  store i8 %9256, i8* %29, align 1
  %9257 = lshr i32 %9243, 31
  %9258 = trunc i32 %9257 to i8
  store i8 %9258, i8* %32, align 1
  %9259 = lshr i32 %9242, 31
  %9260 = xor i32 %9257, %9259
  %9261 = add nuw nsw i32 %9260, %9259
  %9262 = icmp eq i32 %9261, 2
  %9263 = zext i1 %9262 to i8
  store i8 %9263, i8* %38, align 1
  %.v301 = select i1 %9255, i64 10, i64 34
  %9264 = add i64 %9240, %.v301
  store i64 %9264, i64* %3, align 8
  br i1 %9255, label %block_410de3, label %block_.L_410dfb

block_410de3:                                     ; preds = %block_410dd9
  %9265 = add i64 %9213, -20
  %9266 = add i64 %9264, 4
  store i64 %9266, i64* %3, align 8
  %9267 = inttoptr i64 %9265 to i32*
  %9268 = load i32, i32* %9267, align 4
  store i8 0, i8* %14, align 1
  %9269 = and i32 %9268, 255
  %9270 = tail call i32 @llvm.ctpop.i32(i32 %9269)
  %9271 = trunc i32 %9270 to i8
  %9272 = and i8 %9271, 1
  %9273 = xor i8 %9272, 1
  store i8 %9273, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %9274 = icmp eq i32 %9268, 0
  %9275 = zext i1 %9274 to i8
  store i8 %9275, i8* %29, align 1
  %9276 = lshr i32 %9268, 31
  %9277 = trunc i32 %9276 to i8
  store i8 %9277, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %9278 = icmp ne i8 %9277, 0
  %.v155 = select i1 %9278, i64 6, i64 20
  %9279 = add i64 %9266, %.v155
  store i64 %9279, i64* %3, align 8
  br i1 %9278, label %block_.L_410ded, label %block_.L_410dfb

block_.L_410ded:                                  ; preds = %block_410de3, %block_410da9
  %9280 = phi i64 [ %9279, %block_410de3 ], [ %9240, %block_410da9 ]
  %9281 = add i64 %9213, -28
  %9282 = add i64 %9280, 3
  store i64 %9282, i64* %3, align 8
  %9283 = inttoptr i64 %9281 to i32*
  %9284 = load i32, i32* %9283, align 4
  %9285 = add i32 %9284, 1
  %9286 = zext i32 %9285 to i64
  store i64 %9286, i64* %RAX.i2706, align 8
  %9287 = icmp eq i32 %9284, -1
  %9288 = icmp eq i32 %9285, 0
  %9289 = or i1 %9287, %9288
  %9290 = zext i1 %9289 to i8
  store i8 %9290, i8* %14, align 1
  %9291 = and i32 %9285, 255
  %9292 = tail call i32 @llvm.ctpop.i32(i32 %9291)
  %9293 = trunc i32 %9292 to i8
  %9294 = and i8 %9293, 1
  %9295 = xor i8 %9294, 1
  store i8 %9295, i8* %21, align 1
  %9296 = xor i32 %9285, %9284
  %9297 = lshr i32 %9296, 4
  %9298 = trunc i32 %9297 to i8
  %9299 = and i8 %9298, 1
  store i8 %9299, i8* %26, align 1
  %9300 = zext i1 %9288 to i8
  store i8 %9300, i8* %29, align 1
  %9301 = lshr i32 %9285, 31
  %9302 = trunc i32 %9301 to i8
  store i8 %9302, i8* %32, align 1
  %9303 = lshr i32 %9284, 31
  %9304 = xor i32 %9301, %9303
  %9305 = add nuw nsw i32 %9304, %9301
  %9306 = icmp eq i32 %9305, 2
  %9307 = zext i1 %9306 to i8
  store i8 %9307, i8* %38, align 1
  %9308 = add i64 %9280, 9
  store i64 %9308, i64* %3, align 8
  store i32 %9285, i32* %9283, align 4
  %9309 = load i64, i64* %3, align 8
  %9310 = add i64 %9309, 22
  store i64 %9310, i64* %3, align 8
  br label %block_.L_410e0c

block_.L_410dfb:                                  ; preds = %block_410dd9, %block_410de3
  %9311 = phi i64 [ %9279, %block_410de3 ], [ %9264, %block_410dd9 ]
  %9312 = add i64 %9213, -4
  %9313 = add i64 %9311, 7
  store i64 %9313, i64* %3, align 8
  %9314 = inttoptr i64 %9312 to i32*
  store i32 -1, i32* %9314, align 4
  %9315 = load i64, i64* %3, align 8
  %9316 = add i64 %9315, 196
  store i64 %9316, i64* %3, align 8
  br label %block_.L_410ec6

block_.L_410e0c:                                  ; preds = %block_410d7f, %block_.L_410d63, %block_.L_410ded
  %9317 = phi i64 [ %9310, %block_.L_410ded ], [ %9165, %block_410d7f ], [ %9103, %block_.L_410d63 ]
  %9318 = add i64 %9317, 5
  store i64 %9318, i64* %3, align 8
  br label %block_.L_410e11

block_.L_410e11:                                  ; preds = %block_.L_410e0c, %block_.L_410d55
  %storemerge145 = phi i64 [ %9067, %block_.L_410d55 ], [ %9318, %block_.L_410e0c ]
  %9319 = load i64, i64* %RBP.i, align 8
  %9320 = add i64 %9319, -32
  %9321 = add i64 %storemerge145, 8
  store i64 %9321, i64* %3, align 8
  %9322 = inttoptr i64 %9320 to i32*
  %9323 = load i32, i32* %9322, align 4
  %9324 = add i32 %9323, 1
  %9325 = zext i32 %9324 to i64
  store i64 %9325, i64* %RAX.i2706, align 8
  %9326 = icmp eq i32 %9323, -1
  %9327 = icmp eq i32 %9324, 0
  %9328 = or i1 %9326, %9327
  %9329 = zext i1 %9328 to i8
  store i8 %9329, i8* %14, align 1
  %9330 = and i32 %9324, 255
  %9331 = tail call i32 @llvm.ctpop.i32(i32 %9330)
  %9332 = trunc i32 %9331 to i8
  %9333 = and i8 %9332, 1
  %9334 = xor i8 %9333, 1
  store i8 %9334, i8* %21, align 1
  %9335 = xor i32 %9324, %9323
  %9336 = lshr i32 %9335, 4
  %9337 = trunc i32 %9336 to i8
  %9338 = and i8 %9337, 1
  store i8 %9338, i8* %26, align 1
  %9339 = zext i1 %9327 to i8
  store i8 %9339, i8* %29, align 1
  %9340 = lshr i32 %9324, 31
  %9341 = trunc i32 %9340 to i8
  store i8 %9341, i8* %32, align 1
  %9342 = lshr i32 %9323, 31
  %9343 = xor i32 %9340, %9342
  %9344 = add nuw nsw i32 %9343, %9340
  %9345 = icmp eq i32 %9344, 2
  %9346 = zext i1 %9345 to i8
  store i8 %9346, i8* %38, align 1
  %9347 = add i64 %storemerge145, 14
  store i64 %9347, i64* %3, align 8
  store i32 %9324, i32* %9322, align 4
  %9348 = load i64, i64* %3, align 8
  %9349 = add i64 %9348, -678
  store i64 %9349, i64* %3, align 8
  br label %block_.L_410b79

block_.L_410e24:                                  ; preds = %block_.L_410b79
  %9350 = add i64 %7988, -20
  %9351 = add i64 %8016, 4
  store i64 %9351, i64* %3, align 8
  %9352 = inttoptr i64 %9350 to i32*
  %9353 = load i32, i32* %9352, align 4
  store i8 0, i8* %14, align 1
  %9354 = and i32 %9353, 255
  %9355 = tail call i32 @llvm.ctpop.i32(i32 %9354)
  %9356 = trunc i32 %9355 to i8
  %9357 = and i8 %9356, 1
  %9358 = xor i8 %9357, 1
  store i8 %9358, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %9359 = icmp eq i32 %9353, 0
  %9360 = zext i1 %9359 to i8
  store i8 %9360, i8* %29, align 1
  %9361 = lshr i32 %9353, 31
  %9362 = trunc i32 %9361 to i8
  store i8 %9362, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %9363 = icmp ne i8 %9362, 0
  %.v151 = select i1 %9363, i64 147, i64 6
  %9364 = add i64 %9351, %.v151
  store i64 %9364, i64* %3, align 8
  br i1 %9363, label %block_.L_410ebb, label %block_410e2e

block_410e2e:                                     ; preds = %block_.L_410e24
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2706, align 8
  %9365 = add i64 %9364, 14
  store i64 %9365, i64* %3, align 8
  %9366 = load i32, i32* %9352, align 4
  %9367 = sext i32 %9366 to i64
  %9368 = mul nsw i64 %9367, 744
  store i64 %9368, i64* %RCX.i2558, align 8
  %9369 = lshr i64 %9368, 63
  %9370 = add i64 %9368, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %9370, i64* %RAX.i2706, align 8
  %9371 = icmp ult i64 %9370, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %9372 = icmp ult i64 %9370, %9368
  %9373 = or i1 %9371, %9372
  %9374 = zext i1 %9373 to i8
  store i8 %9374, i8* %14, align 1
  %9375 = trunc i64 %9370 to i32
  %9376 = and i32 %9375, 248
  %9377 = tail call i32 @llvm.ctpop.i32(i32 %9376)
  %9378 = trunc i32 %9377 to i8
  %9379 = and i8 %9378, 1
  %9380 = xor i8 %9379, 1
  store i8 %9380, i8* %21, align 1
  %9381 = xor i64 %9368, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %9382 = xor i64 %9381, %9370
  %9383 = lshr i64 %9382, 4
  %9384 = trunc i64 %9383 to i8
  %9385 = and i8 %9384, 1
  store i8 %9385, i8* %26, align 1
  %9386 = icmp eq i64 %9370, 0
  %9387 = zext i1 %9386 to i8
  store i8 %9387, i8* %29, align 1
  %9388 = lshr i64 %9370, 63
  %9389 = trunc i64 %9388 to i8
  store i8 %9389, i8* %32, align 1
  %9390 = xor i64 %9388, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %9391 = xor i64 %9388, %9369
  %9392 = add nuw nsw i64 %9390, %9391
  %9393 = icmp eq i64 %9392, 2
  %9394 = zext i1 %9393 to i8
  store i8 %9394, i8* %38, align 1
  %9395 = add i64 %9368, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %9396 = add i64 %9364, 27
  store i64 %9396, i64* %3, align 8
  %9397 = inttoptr i64 %9395 to i32*
  %9398 = load i32, i32* %9397, align 4
  %9399 = add i32 %9398, -1
  %9400 = zext i32 %9399 to i64
  store i64 %9400, i64* %RDX.i2704, align 8
  %9401 = icmp eq i32 %9398, 0
  %9402 = zext i1 %9401 to i8
  store i8 %9402, i8* %14, align 1
  %9403 = and i32 %9399, 255
  %9404 = tail call i32 @llvm.ctpop.i32(i32 %9403)
  %9405 = trunc i32 %9404 to i8
  %9406 = and i8 %9405, 1
  %9407 = xor i8 %9406, 1
  store i8 %9407, i8* %21, align 1
  %9408 = xor i32 %9399, %9398
  %9409 = lshr i32 %9408, 4
  %9410 = trunc i32 %9409 to i8
  %9411 = and i8 %9410, 1
  store i8 %9411, i8* %26, align 1
  %9412 = icmp eq i32 %9399, 0
  %9413 = zext i1 %9412 to i8
  store i8 %9413, i8* %29, align 1
  %9414 = lshr i32 %9399, 31
  %9415 = trunc i32 %9414 to i8
  store i8 %9415, i8* %32, align 1
  %9416 = lshr i32 %9398, 31
  %9417 = xor i32 %9414, %9416
  %9418 = add nuw nsw i32 %9417, %9416
  %9419 = icmp eq i32 %9418, 2
  %9420 = zext i1 %9419 to i8
  store i8 %9420, i8* %38, align 1
  %9421 = load i64, i64* %RBP.i, align 8
  %9422 = add i64 %9421, -28
  %9423 = add i64 %9364, 33
  store i64 %9423, i64* %3, align 8
  %9424 = inttoptr i64 %9422 to i32*
  %9425 = load i32, i32* %9424, align 4
  %9426 = add i32 %9425, %9399
  %9427 = zext i32 %9426 to i64
  store i64 %9427, i64* %RDX.i2704, align 8
  %9428 = icmp ult i32 %9426, %9399
  %9429 = icmp ult i32 %9426, %9425
  %9430 = or i1 %9428, %9429
  %9431 = zext i1 %9430 to i8
  store i8 %9431, i8* %14, align 1
  %9432 = and i32 %9426, 255
  %9433 = tail call i32 @llvm.ctpop.i32(i32 %9432)
  %9434 = trunc i32 %9433 to i8
  %9435 = and i8 %9434, 1
  %9436 = xor i8 %9435, 1
  store i8 %9436, i8* %21, align 1
  %9437 = xor i32 %9425, %9399
  %9438 = xor i32 %9437, %9426
  %9439 = lshr i32 %9438, 4
  %9440 = trunc i32 %9439 to i8
  %9441 = and i8 %9440, 1
  store i8 %9441, i8* %26, align 1
  %9442 = icmp eq i32 %9426, 0
  %9443 = zext i1 %9442 to i8
  store i8 %9443, i8* %29, align 1
  %9444 = lshr i32 %9426, 31
  %9445 = trunc i32 %9444 to i8
  store i8 %9445, i8* %32, align 1
  %9446 = lshr i32 %9425, 31
  %9447 = xor i32 %9444, %9414
  %9448 = xor i32 %9444, %9446
  %9449 = add nuw nsw i32 %9447, %9448
  %9450 = icmp eq i32 %9449, 2
  %9451 = zext i1 %9450 to i8
  store i8 %9451, i8* %38, align 1
  %9452 = add i64 %9364, 36
  store i64 %9452, i64* %3, align 8
  store i32 %9426, i32* %9424, align 4
  %9453 = load i64, i64* %RBP.i, align 8
  %9454 = add i64 %9453, -24
  %9455 = load i64, i64* %3, align 8
  %9456 = add i64 %9455, 4
  store i64 %9456, i64* %3, align 8
  %9457 = inttoptr i64 %9454 to i32*
  %9458 = load i32, i32* %9457, align 4
  store i8 0, i8* %14, align 1
  %9459 = and i32 %9458, 255
  %9460 = tail call i32 @llvm.ctpop.i32(i32 %9459)
  %9461 = trunc i32 %9460 to i8
  %9462 = and i8 %9461, 1
  %9463 = xor i8 %9462, 1
  store i8 %9463, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %9464 = icmp eq i32 %9458, 0
  %9465 = zext i1 %9464 to i8
  store i8 %9465, i8* %29, align 1
  %9466 = lshr i32 %9458, 31
  %9467 = trunc i32 %9466 to i8
  store i8 %9467, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %9468 = icmp ne i8 %9467, 0
  %.v152 = select i1 %9468, i64 96, i64 6
  %9469 = add i64 %9456, %.v152
  store i64 %9469, i64* %3, align 8
  br i1 %9468, label %block_.L_410eb6, label %block_410e5c

block_410e5c:                                     ; preds = %block_410e2e
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX.i2706, align 8
  %9470 = add i64 %9469, 14
  store i64 %9470, i64* %3, align 8
  %9471 = load i32, i32* %9457, align 4
  %9472 = sext i32 %9471 to i64
  %9473 = mul nsw i64 %9472, 744
  store i64 %9473, i64* %RCX.i2558, align 8
  %9474 = lshr i64 %9473, 63
  %9475 = add i64 %9473, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  store i64 %9475, i64* %RDX.i2704, align 8
  %9476 = icmp ult i64 %9475, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %9477 = icmp ult i64 %9475, %9473
  %9478 = or i1 %9476, %9477
  %9479 = zext i1 %9478 to i8
  store i8 %9479, i8* %14, align 1
  %9480 = trunc i64 %9475 to i32
  %9481 = and i32 %9480, 248
  %9482 = tail call i32 @llvm.ctpop.i32(i32 %9481)
  %9483 = trunc i32 %9482 to i8
  %9484 = and i8 %9483, 1
  %9485 = xor i8 %9484, 1
  store i8 %9485, i8* %21, align 1
  %9486 = xor i64 %9473, ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64)
  %9487 = xor i64 %9486, %9475
  %9488 = lshr i64 %9487, 4
  %9489 = trunc i64 %9488 to i8
  %9490 = and i8 %9489, 1
  store i8 %9490, i8* %26, align 1
  %9491 = icmp eq i64 %9475, 0
  %9492 = zext i1 %9491 to i8
  store i8 %9492, i8* %29, align 1
  %9493 = lshr i64 %9475, 63
  %9494 = trunc i64 %9493 to i8
  store i8 %9494, i8* %32, align 1
  %9495 = xor i64 %9493, lshr (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 63)
  %9496 = xor i64 %9493, %9474
  %9497 = add nuw nsw i64 %9495, %9496
  %9498 = icmp eq i64 %9497, 2
  %9499 = zext i1 %9498 to i8
  store i8 %9499, i8* %38, align 1
  %RSI.i54 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %9500 = add i64 %9473, add (i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64 12)
  %9501 = add i64 %9469, 30
  store i64 %9501, i64* %3, align 8
  %9502 = inttoptr i64 %9500 to i32*
  %9503 = load i32, i32* %9502, align 4
  %9504 = zext i32 %9503 to i64
  store i64 %9504, i64* %RSI.i54, align 8
  %9505 = add i64 %9453, -20
  %9506 = add i64 %9469, 34
  store i64 %9506, i64* %3, align 8
  %9507 = inttoptr i64 %9505 to i32*
  %9508 = load i32, i32* %9507, align 4
  %9509 = sext i32 %9508 to i64
  %9510 = mul nsw i64 %9509, 744
  store i64 %9510, i64* %RCX.i2558, align 8
  %9511 = lshr i64 %9510, 63
  %9512 = load i64, i64* %RAX.i2706, align 8
  %9513 = add i64 %9510, %9512
  store i64 %9513, i64* %RDX.i2704, align 8
  %9514 = icmp ult i64 %9513, %9512
  %9515 = icmp ult i64 %9513, %9510
  %9516 = or i1 %9514, %9515
  %9517 = zext i1 %9516 to i8
  store i8 %9517, i8* %14, align 1
  %9518 = trunc i64 %9513 to i32
  %9519 = and i32 %9518, 255
  %9520 = tail call i32 @llvm.ctpop.i32(i32 %9519)
  %9521 = trunc i32 %9520 to i8
  %9522 = and i8 %9521, 1
  %9523 = xor i8 %9522, 1
  store i8 %9523, i8* %21, align 1
  %9524 = xor i64 %9510, %9512
  %9525 = xor i64 %9524, %9513
  %9526 = lshr i64 %9525, 4
  %9527 = trunc i64 %9526 to i8
  %9528 = and i8 %9527, 1
  store i8 %9528, i8* %26, align 1
  %9529 = icmp eq i64 %9513, 0
  %9530 = zext i1 %9529 to i8
  store i8 %9530, i8* %29, align 1
  %9531 = lshr i64 %9513, 63
  %9532 = trunc i64 %9531 to i8
  store i8 %9532, i8* %32, align 1
  %9533 = lshr i64 %9512, 63
  %9534 = xor i64 %9531, %9533
  %9535 = xor i64 %9531, %9511
  %9536 = add nuw nsw i64 %9534, %9535
  %9537 = icmp eq i64 %9536, 2
  %9538 = zext i1 %9537 to i8
  store i8 %9538, i8* %38, align 1
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %9539 = add i64 %9513, 8
  %9540 = add i64 %9469, 50
  store i64 %9540, i64* %3, align 8
  %9541 = inttoptr i64 %9539 to i32*
  %9542 = load i32, i32* %9541, align 4
  %9543 = zext i32 %9542 to i64
  store i64 %9543, i64* %RDI.i, align 8
  %9544 = load i64, i64* %RBP.i, align 8
  %9545 = add i64 %9544, -24
  %9546 = add i64 %9469, 54
  store i64 %9546, i64* %3, align 8
  %9547 = inttoptr i64 %9545 to i32*
  %9548 = load i32, i32* %9547, align 4
  %9549 = sext i32 %9548 to i64
  %9550 = mul nsw i64 %9549, 744
  store i64 %9550, i64* %RCX.i2558, align 8
  %9551 = lshr i64 %9550, 63
  %9552 = add i64 %9550, %9512
  store i64 %9552, i64* %RAX.i2706, align 8
  %9553 = icmp ult i64 %9552, %9512
  %9554 = icmp ult i64 %9552, %9550
  %9555 = or i1 %9553, %9554
  %9556 = zext i1 %9555 to i8
  store i8 %9556, i8* %14, align 1
  %9557 = trunc i64 %9552 to i32
  %9558 = and i32 %9557, 255
  %9559 = tail call i32 @llvm.ctpop.i32(i32 %9558)
  %9560 = trunc i32 %9559 to i8
  %9561 = and i8 %9560, 1
  %9562 = xor i8 %9561, 1
  store i8 %9562, i8* %21, align 1
  %9563 = xor i64 %9550, %9512
  %9564 = xor i64 %9563, %9552
  %9565 = lshr i64 %9564, 4
  %9566 = trunc i64 %9565 to i8
  %9567 = and i8 %9566, 1
  store i8 %9567, i8* %26, align 1
  %9568 = icmp eq i64 %9552, 0
  %9569 = zext i1 %9568 to i8
  store i8 %9569, i8* %29, align 1
  %9570 = lshr i64 %9552, 63
  %9571 = trunc i64 %9570 to i8
  store i8 %9571, i8* %32, align 1
  %9572 = xor i64 %9570, %9533
  %9573 = xor i64 %9570, %9551
  %9574 = add nuw nsw i64 %9572, %9573
  %9575 = icmp eq i64 %9574, 2
  %9576 = zext i1 %9575 to i8
  store i8 %9576, i8* %38, align 1
  %9577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i31 = bitcast %union.anon* %9577 to i32*
  %9578 = getelementptr inbounds %union.anon, %union.anon* %9577, i64 0, i32 0
  %9579 = add i64 %9552, 8
  %9580 = add i64 %9469, 68
  store i64 %9580, i64* %3, align 8
  %9581 = inttoptr i64 %9579 to i32*
  %9582 = load i32, i32* %9581, align 4
  %9583 = zext i32 %9582 to i64
  store i64 %9583, i64* %9578, align 8
  %9584 = add i64 %9544, -96
  %9585 = load i32, i32* %ESI.i2672, align 4
  %9586 = add i64 %9469, 71
  store i64 %9586, i64* %3, align 8
  %9587 = inttoptr i64 %9584 to i32*
  store i32 %9585, i32* %9587, align 4
  %9588 = load i32, i32* %R8D.i31, align 4
  %9589 = zext i32 %9588 to i64
  %9590 = load i64, i64* %3, align 8
  store i64 %9589, i64* %RSI.i54, align 8
  %9591 = add i64 %9590, 45
  %9592 = add i64 %9590, 8
  %9593 = load i64, i64* %6, align 8
  %9594 = add i64 %9593, -8
  %9595 = inttoptr i64 %9594 to i64*
  store i64 %9592, i64* %9595, align 8
  store i64 %9594, i64* %6, align 8
  store i64 %9591, i64* %3, align 8
  %call2_410ea6 = tail call %struct.Memory* @sub_410ed0.count_common_libs(%struct.State* nonnull %0, i64 %9591, %struct.Memory* %MEMORY.2)
  %9596 = load i64, i64* %RBP.i, align 8
  %9597 = add i64 %9596, -96
  %9598 = load i64, i64* %3, align 8
  %9599 = add i64 %9598, 3
  store i64 %9599, i64* %3, align 8
  %9600 = inttoptr i64 %9597 to i32*
  %9601 = load i32, i32* %9600, align 4
  %9602 = load i32, i32* %EAX.i2557.pre-phi, align 4
  %9603 = sub i32 %9601, %9602
  %9604 = zext i32 %9603 to i64
  store i64 %9604, i64* %RSI.i54, align 8
  %9605 = icmp ult i32 %9601, %9602
  %9606 = zext i1 %9605 to i8
  store i8 %9606, i8* %14, align 1
  %9607 = and i32 %9603, 255
  %9608 = tail call i32 @llvm.ctpop.i32(i32 %9607)
  %9609 = trunc i32 %9608 to i8
  %9610 = and i8 %9609, 1
  %9611 = xor i8 %9610, 1
  store i8 %9611, i8* %21, align 1
  %9612 = xor i32 %9602, %9601
  %9613 = xor i32 %9612, %9603
  %9614 = lshr i32 %9613, 4
  %9615 = trunc i32 %9614 to i8
  %9616 = and i8 %9615, 1
  store i8 %9616, i8* %26, align 1
  %9617 = icmp eq i32 %9603, 0
  %9618 = zext i1 %9617 to i8
  store i8 %9618, i8* %29, align 1
  %9619 = lshr i32 %9603, 31
  %9620 = trunc i32 %9619 to i8
  store i8 %9620, i8* %32, align 1
  %9621 = lshr i32 %9601, 31
  %9622 = lshr i32 %9602, 31
  %9623 = xor i32 %9622, %9621
  %9624 = xor i32 %9619, %9621
  %9625 = add nuw nsw i32 %9624, %9623
  %9626 = icmp eq i32 %9625, 2
  %9627 = zext i1 %9626 to i8
  store i8 %9627, i8* %38, align 1
  %9628 = add i64 %9596, -28
  %9629 = add i64 %9598, 8
  store i64 %9629, i64* %3, align 8
  %9630 = inttoptr i64 %9628 to i32*
  %9631 = load i32, i32* %9630, align 4
  %9632 = add i32 %9631, %9603
  %9633 = zext i32 %9632 to i64
  store i64 %9633, i64* %RSI.i54, align 8
  %9634 = icmp ult i32 %9632, %9603
  %9635 = icmp ult i32 %9632, %9631
  %9636 = or i1 %9634, %9635
  %9637 = zext i1 %9636 to i8
  store i8 %9637, i8* %14, align 1
  %9638 = and i32 %9632, 255
  %9639 = tail call i32 @llvm.ctpop.i32(i32 %9638)
  %9640 = trunc i32 %9639 to i8
  %9641 = and i8 %9640, 1
  %9642 = xor i8 %9641, 1
  store i8 %9642, i8* %21, align 1
  %9643 = xor i32 %9631, %9603
  %9644 = xor i32 %9643, %9632
  %9645 = lshr i32 %9644, 4
  %9646 = trunc i32 %9645 to i8
  %9647 = and i8 %9646, 1
  store i8 %9647, i8* %26, align 1
  %9648 = icmp eq i32 %9632, 0
  %9649 = zext i1 %9648 to i8
  store i8 %9649, i8* %29, align 1
  %9650 = lshr i32 %9632, 31
  %9651 = trunc i32 %9650 to i8
  store i8 %9651, i8* %32, align 1
  %9652 = lshr i32 %9631, 31
  %9653 = xor i32 %9650, %9619
  %9654 = xor i32 %9650, %9652
  %9655 = add nuw nsw i32 %9653, %9654
  %9656 = icmp eq i32 %9655, 2
  %9657 = zext i1 %9656 to i8
  store i8 %9657, i8* %38, align 1
  %9658 = add i64 %9598, 11
  store i64 %9658, i64* %3, align 8
  store i32 %9632, i32* %9630, align 4
  %.pre197 = load i64, i64* %3, align 8
  br label %block_.L_410eb6

block_.L_410eb6:                                  ; preds = %block_410e5c, %block_410e2e
  %9659 = phi i64 [ %9469, %block_410e2e ], [ %.pre197, %block_410e5c ]
  %MEMORY.82 = phi %struct.Memory* [ %MEMORY.2, %block_410e2e ], [ %call2_410ea6, %block_410e5c ]
  %9660 = add i64 %9659, 5
  store i64 %9660, i64* %3, align 8
  br label %block_.L_410ebb

block_.L_410ebb:                                  ; preds = %block_.L_410eb6, %block_.L_410e24
  %9661 = phi i64 [ %9364, %block_.L_410e24 ], [ %9660, %block_.L_410eb6 ]
  %MEMORY.83 = phi %struct.Memory* [ %MEMORY.2, %block_.L_410e24 ], [ %MEMORY.82, %block_.L_410eb6 ]
  %9662 = add i64 %9661, 5
  store i64 %9662, i64* %3, align 8
  br label %block_.L_410ec0

block_.L_410ec0:                                  ; preds = %block_.L_410ebb, %block_.L_410b6d
  %storemerge144 = phi i64 [ %7983, %block_.L_410b6d ], [ %9662, %block_.L_410ebb ]
  %MEMORY.84 = phi %struct.Memory* [ %MEMORY.67, %block_.L_410b6d ], [ %MEMORY.83, %block_.L_410ebb ]
  %9663 = load i64, i64* %RBP.i, align 8
  %9664 = add i64 %9663, -28
  %9665 = add i64 %storemerge144, 3
  store i64 %9665, i64* %3, align 8
  %9666 = inttoptr i64 %9664 to i32*
  %9667 = load i32, i32* %9666, align 4
  %9668 = zext i32 %9667 to i64
  store i64 %9668, i64* %RAX.i2706, align 8
  %9669 = add i64 %9663, -4
  %9670 = add i64 %storemerge144, 6
  store i64 %9670, i64* %3, align 8
  %9671 = inttoptr i64 %9669 to i32*
  store i32 %9667, i32* %9671, align 4
  %.pre198 = load i64, i64* %3, align 8
  br label %block_.L_410ec6

block_.L_410ec6:                                  ; preds = %block_.L_410ec0, %block_.L_410dfb, %block_40ffee, %block_40ff14, %block_40fe4a
  %9672 = phi i64 [ %.pre198, %block_.L_410ec0 ], [ %9316, %block_.L_410dfb ], [ %1699, %block_40ffee ], [ %1254, %block_40ff14 ], [ %894, %block_40fe4a ]
  %MEMORY.85 = phi %struct.Memory* [ %MEMORY.84, %block_.L_410ec0 ], [ %MEMORY.2, %block_.L_410dfb ], [ %MEMORY.2, %block_40ffee ], [ %MEMORY.2, %block_40ff14 ], [ %MEMORY.2, %block_40fe4a ]
  %9673 = load i64, i64* %RBP.i, align 8
  %9674 = add i64 %9673, -4
  %9675 = add i64 %9672, 3
  store i64 %9675, i64* %3, align 8
  %9676 = inttoptr i64 %9674 to i32*
  %9677 = load i32, i32* %9676, align 4
  %9678 = zext i32 %9677 to i64
  store i64 %9678, i64* %RAX.i2706, align 8
  %9679 = load i64, i64* %6, align 8
  %9680 = add i64 %9679, 96
  store i64 %9680, i64* %6, align 8
  %9681 = icmp ugt i64 %9679, -97
  %9682 = zext i1 %9681 to i8
  store i8 %9682, i8* %14, align 1
  %9683 = trunc i64 %9680 to i32
  %9684 = and i32 %9683, 255
  %9685 = tail call i32 @llvm.ctpop.i32(i32 %9684)
  %9686 = trunc i32 %9685 to i8
  %9687 = and i8 %9686, 1
  %9688 = xor i8 %9687, 1
  store i8 %9688, i8* %21, align 1
  %9689 = xor i64 %9680, %9679
  %9690 = lshr i64 %9689, 4
  %9691 = trunc i64 %9690 to i8
  %9692 = and i8 %9691, 1
  store i8 %9692, i8* %26, align 1
  %9693 = icmp eq i64 %9680, 0
  %9694 = zext i1 %9693 to i8
  store i8 %9694, i8* %29, align 1
  %9695 = lshr i64 %9680, 63
  %9696 = trunc i64 %9695 to i8
  store i8 %9696, i8* %32, align 1
  %9697 = lshr i64 %9679, 63
  %9698 = xor i64 %9695, %9697
  %9699 = add nuw nsw i64 %9698, %9695
  %9700 = icmp eq i64 %9699, 2
  %9701 = zext i1 %9700 to i8
  store i8 %9701, i8* %38, align 1
  %9702 = add i64 %9672, 8
  store i64 %9702, i64* %3, align 8
  %9703 = add i64 %9679, 104
  %9704 = inttoptr i64 %9680 to i64*
  %9705 = load i64, i64* %9704, align 8
  store i64 %9705, i64* %RBP.i, align 8
  store i64 %9703, i64* %6, align 8
  %9706 = add i64 %9672, 9
  store i64 %9706, i64* %3, align 8
  %9707 = inttoptr i64 %9703 to i64*
  %9708 = load i64, i64* %9707, align 8
  store i64 %9708, i64* %3, align 8
  %9709 = add i64 %9679, 112
  store i64 %9709, i64* %6, align 8
  ret %struct.Memory* %MEMORY.85
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
define %struct.Memory* @routine_subq__0x60___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -96
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 96
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
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_jne_.L_40fcc0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40fd19(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a16e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a16e_type* @G__0x57a16e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x59b___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1435, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a4be___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a4be_type* @G__0x57a4be to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x38__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
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
define %struct.Memory* @routine_je_.L_40fd2d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40fd32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40fd8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x59c___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1436, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rdx__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq_MINUS0x50__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
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
define %struct.Memory* @routine_movl_MINUS0x58__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
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
define %struct.Memory* @routine_addl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -21
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
define %struct.Memory* @routine_jne_.L_40ff2f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xaab3f0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11187184
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_40fe5b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20
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
define %struct.Memory* @routine_je_.L_40fe5b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 20
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40fe56(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40fe56(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
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
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_410ec6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40fea6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40fea1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40fea1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40ff2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40ff2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_jge_.L_40fefb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40ff25(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_40ff20(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40ff2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_410103(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41004f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40ffff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40ffff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_40fffa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40fffa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41004a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_410045(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_410045(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4100fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4100c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4100c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4100c2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4100f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4100f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_410b72(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_4101a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41013a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_jne_.L_41015d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410180(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4101a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_410b6d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_410513(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410280(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410205(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_410280(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41023e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410277(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41034e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4102d3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41034e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41030c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410345(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41041c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4103a1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41041c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4103da(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410413(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4104ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41046f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4104ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4104a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4104e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xa7f430___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xa7f430_type* @G__0xa7f430 to i64), i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x2e8___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 744
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x1c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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
define %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_410b68(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41068c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410566(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41068c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41059f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4105d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410611(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41064a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410683(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410805(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4106df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_410805(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410718(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410751(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41078a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4107c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4107fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41097e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410858(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41097e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410891(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4108ca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410903(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_41093c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410975(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410af7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4109d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_410af7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410a0a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410a43(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410a7c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410ab5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410aee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_addl_0xc__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 12
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
define %struct.Memory* @routine_movl_0x8__rdx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
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
define %struct.Memory* @routine_movl_0x8__rax____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
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
define %struct.Memory* @routine_movl__r8d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.count_common_libs(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_addl_MINUS0x1c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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
define %struct.Memory* @routine_movl__esi__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_410ec0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_jge_.L_410e24(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410d63(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_410c7f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410be6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_410d63(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410c19(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410c4c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410c7f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_410d55(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410cbc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410cef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410d22(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_410d55(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_410e11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EDX, align 4
  %6 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jne_.L_410e0c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_0xaab3f0___rcx_4____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 11187184
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_410ded(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_410dfb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_410dfb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_410e07(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_410e0c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_410e16(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_410b79(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_410ebb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_410eb6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__esi__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x60__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_jmpq_.L_410ebb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_addq__0x60___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 96
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -97
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
