; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x1a9__rip__type = type <{ [8 x i8] }>
%G_0x293__rip__type = type <{ [8 x i8] }>
%G_0x39f__rip__type = type <{ [8 x i8] }>
%G_0x602074_type = type <{ [4 x i8] }>
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
@G_0x1a9__rip_ = global %G_0x1a9__rip__type zeroinitializer
@G_0x293__rip_ = global %G_0x293__rip__type zeroinitializer
@G_0x39f__rip_ = global %G_0x39f__rip__type zeroinitializer
@G_0x602074 = local_unnamed_addr global %G_0x602074_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @lrand48()

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @simulate(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -136
  store i64 %11, i64* %6, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i116 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  store i64 31, i64* %RAX.i116, align 8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %19 to i32*
  %20 = add i64 %7, -12
  %21 = load i32, i32* %EDI.i, align 4
  %22 = add i64 %10, 18
  store i64 %22, i64* %3, align 8
  %23 = inttoptr i64 %20 to i32*
  store i32 %21, i32* %23, align 4
  %RSI.i242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %24 = load i64, i64* %RBP.i, align 8
  %25 = add i64 %24, -16
  %26 = load i64, i64* %RSI.i242, align 8
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 4
  store i64 %28, i64* %3, align 8
  %29 = inttoptr i64 %25 to i64*
  store i64 %26, i64* %29, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %31 = load i64, i64* %RBP.i, align 8
  %32 = add i64 %31, -24
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 5
  store i64 %34, i64* %3, align 8
  %35 = bitcast [32 x %union.VectorReg]* %30 to double*
  %36 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %30, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %37 = load i64, i64* %36, align 1
  %38 = inttoptr i64 %32 to i64*
  store i64 %37, i64* %38, align 8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i277 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %40 = load i64, i64* %RBP.i, align 8
  %41 = add i64 %40, -32
  %42 = load i64, i64* %RDX.i277, align 8
  %43 = load i64, i64* %3, align 8
  %44 = add i64 %43, 4
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %41 to i64*
  store i64 %42, i64* %45, align 8
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -44
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 7
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %47 to i32*
  store i32 0, i32* %50, align 4
  %RDI.i = getelementptr inbounds %union.anon, %union.anon* %19, i64 0, i32 0
  %51 = load i64, i64* %3, align 8
  %52 = load i32, i32* bitcast (%G_0x602074_type* @G_0x602074 to i32*), align 8
  %53 = add i32 %52, -1
  %54 = zext i32 %53 to i64
  store i64 %54, i64* %RDI.i, align 8
  %55 = icmp eq i32 %52, 0
  %56 = zext i1 %55 to i8
  store i8 %56, i8* %12, align 1
  %57 = and i32 %53, 255
  %58 = tail call i32 @llvm.ctpop.i32(i32 %57)
  %59 = trunc i32 %58 to i8
  %60 = and i8 %59, 1
  %61 = xor i8 %60, 1
  store i8 %61, i8* %13, align 1
  %62 = xor i32 %53, %52
  %63 = lshr i32 %62, 4
  %64 = trunc i32 %63 to i8
  %65 = and i8 %64, 1
  store i8 %65, i8* %14, align 1
  %66 = icmp eq i32 %53, 0
  %67 = zext i1 %66 to i8
  store i8 %67, i8* %15, align 1
  %68 = lshr i32 %53, 31
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %16, align 1
  %70 = lshr i32 %52, 31
  %71 = xor i32 %68, %70
  %72 = add nuw nsw i32 %71, %70
  %73 = icmp eq i32 %72, 2
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %17, align 1
  %EAX.i461 = bitcast %union.anon* %18 to i32*
  %75 = load i64, i64* %RBP.i, align 8
  %76 = add i64 %75, -92
  %77 = load i32, i32* %EAX.i461, align 4
  %78 = add i64 %51, 13
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %76 to i32*
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %EDI.i, align 4
  %81 = zext i32 %80 to i64
  %82 = load i64, i64* %3, align 8
  store i64 %81, i64* %RAX.i116, align 8
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %84 = sext i32 %80 to i64
  %85 = lshr i64 %84, 32
  store i64 %85, i64* %83, align 8
  %86 = load i64, i64* %RBP.i, align 8
  %87 = add i64 %86, -92
  %88 = add i64 %82, 6
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %87 to i32*
  %90 = load i32, i32* %89, align 4
  %91 = zext i32 %90 to i64
  store i64 %91, i64* %RDI.i, align 8
  %92 = add i64 %82, 8
  store i64 %92, i64* %3, align 8
  %93 = bitcast %union.anon* %39 to i32*
  %94 = sext i32 %90 to i64
  %95 = shl nuw i64 %85, 32
  %96 = or i64 %95, %81
  %97 = sdiv i64 %96, %94
  %98 = shl i64 %97, 32
  %99 = ashr exact i64 %98, 32
  %100 = icmp eq i64 %97, %99
  br i1 %100, label %103, label %101

; <label>:101:                                    ; preds = %entry
  %102 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %92, %struct.Memory* %2)
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre24 = load i32, i32* %EAX.i461, align 4
  %.pre25 = load i64, i64* %3, align 8
  br label %routine_idivl__edi.exit583

; <label>:103:                                    ; preds = %entry
  %104 = srem i64 %96, %94
  %105 = and i64 %97, 4294967295
  store i64 %105, i64* %RAX.i116, align 8
  %106 = and i64 %104, 4294967295
  store i64 %106, i64* %RDX.i277, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %107 = trunc i64 %97 to i32
  br label %routine_idivl__edi.exit583

routine_idivl__edi.exit583:                       ; preds = %103, %101
  %108 = phi i64 [ %.pre25, %101 ], [ %92, %103 ]
  %109 = phi i32 [ %.pre24, %101 ], [ %107, %103 ]
  %110 = phi i64 [ %.pre, %101 ], [ %86, %103 ]
  %111 = phi %struct.Memory* [ %102, %101 ], [ %2, %103 ]
  %112 = add i64 %110, -60
  %113 = add i64 %108, 3
  store i64 %113, i64* %3, align 8
  %114 = inttoptr i64 %112 to i32*
  store i32 %109, i32* %114, align 4
  %115 = load i64, i64* %3, align 8
  %116 = load i32, i32* bitcast (%G_0x602074_type* @G_0x602074 to i32*), align 8
  %117 = add i32 %116, -1
  %118 = zext i32 %117 to i64
  store i64 %118, i64* %RAX.i116, align 8
  %119 = icmp eq i32 %116, 0
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %12, align 1
  %121 = and i32 %117, 255
  %122 = tail call i32 @llvm.ctpop.i32(i32 %121)
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = xor i8 %124, 1
  store i8 %125, i8* %13, align 1
  %126 = xor i32 %117, %116
  %127 = lshr i32 %126, 4
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  store i8 %129, i8* %14, align 1
  %130 = icmp eq i32 %117, 0
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %15, align 1
  %132 = lshr i32 %117, 31
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %16, align 1
  %134 = lshr i32 %116, 31
  %135 = xor i32 %132, %134
  %136 = add nuw nsw i32 %135, %134
  %137 = icmp eq i32 %136, 2
  %138 = zext i1 %137 to i8
  store i8 %138, i8* %17, align 1
  %139 = sext i32 %117 to i64
  %140 = lshr i64 %139, 32
  store i64 %140, i64* %83, align 8
  %141 = load i32, i32* %EDI.i, align 4
  %142 = add i64 %115, 13
  store i64 %142, i64* %3, align 8
  %143 = sext i32 %141 to i64
  %144 = shl nuw i64 %140, 32
  %145 = or i64 %144, %118
  %146 = sdiv i64 %145, %143
  %147 = shl i64 %146, 32
  %148 = ashr exact i64 %147, 32
  %149 = icmp eq i64 %146, %148
  br i1 %149, label %152, label %150

; <label>:150:                                    ; preds = %routine_idivl__edi.exit583
  %151 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %142, %struct.Memory* %111)
  %.pre26 = load i32, i32* %93, align 4
  %.pre27 = load i64, i64* %3, align 8
  br label %routine_idivl__edi.exit

; <label>:152:                                    ; preds = %routine_idivl__edi.exit583
  %153 = srem i64 %145, %143
  %154 = and i64 %146, 4294967295
  store i64 %154, i64* %RAX.i116, align 8
  %155 = and i64 %153, 4294967295
  store i64 %155, i64* %RDX.i277, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %156 = trunc i64 %153 to i32
  br label %routine_idivl__edi.exit

routine_idivl__edi.exit:                          ; preds = %152, %150
  %157 = phi i64 [ %.pre27, %150 ], [ %142, %152 ]
  %158 = phi i32 [ %.pre26, %150 ], [ %156, %152 ]
  %159 = phi %struct.Memory* [ %151, %150 ], [ %111, %152 ]
  %160 = load i64, i64* %RBP.i, align 8
  %161 = add i64 %160, -56
  %162 = add i64 %157, 3
  store i64 %162, i64* %3, align 8
  %163 = inttoptr i64 %161 to i32*
  store i32 %158, i32* %163, align 4
  %164 = load i64, i64* %RBP.i, align 8
  %165 = add i64 %164, -16
  %166 = load i64, i64* %3, align 8
  %167 = add i64 %166, 4
  store i64 %167, i64* %3, align 8
  %168 = inttoptr i64 %165 to i64*
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %RSI.i242, align 8
  %170 = add i64 %164, -40
  %171 = add i64 %166, 8
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %170 to i64*
  store i64 %169, i64* %172, align 8
  %173 = load i64, i64* %RBP.i, align 8
  %174 = add i64 %173, -64
  %175 = load i64, i64* %3, align 8
  %176 = add i64 %175, 7
  store i64 %176, i64* %3, align 8
  %177 = inttoptr i64 %174 to i32*
  store i32 0, i32* %177, align 4
  %RCX.i523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %179 = bitcast i64* %178 to double*
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %182 = bitcast %union.VectorReg* %181 to double*
  %.pre28 = load i64, i64* %3, align 8
  br label %block_.L_400c8e

block_.L_400c8e:                                  ; preds = %block_.L_400f5d, %routine_idivl__edi.exit
  %183 = phi i64 [ %.pre28, %routine_idivl__edi.exit ], [ %1579, %block_.L_400f5d ]
  %MEMORY.0 = phi %struct.Memory* [ %159, %routine_idivl__edi.exit ], [ %1488, %block_.L_400f5d ]
  %184 = load i64, i64* %RBP.i, align 8
  %185 = add i64 %184, -64
  %186 = add i64 %183, 3
  store i64 %186, i64* %3, align 8
  %187 = inttoptr i64 %185 to i32*
  %188 = load i32, i32* %187, align 4
  %189 = zext i32 %188 to i64
  store i64 %189, i64* %RAX.i116, align 8
  %190 = add i64 %184, -4
  %191 = add i64 %183, 6
  store i64 %191, i64* %3, align 8
  %192 = inttoptr i64 %190 to i32*
  %193 = load i32, i32* %192, align 4
  %194 = sub i32 %188, %193
  %195 = icmp ult i32 %188, %193
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %12, align 1
  %197 = and i32 %194, 255
  %198 = tail call i32 @llvm.ctpop.i32(i32 %197)
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  %201 = xor i8 %200, 1
  store i8 %201, i8* %13, align 1
  %202 = xor i32 %193, %188
  %203 = xor i32 %202, %194
  %204 = lshr i32 %203, 4
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  store i8 %206, i8* %14, align 1
  %207 = icmp eq i32 %194, 0
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %15, align 1
  %209 = lshr i32 %194, 31
  %210 = trunc i32 %209 to i8
  store i8 %210, i8* %16, align 1
  %211 = lshr i32 %188, 31
  %212 = lshr i32 %193, 31
  %213 = xor i32 %212, %211
  %214 = xor i32 %209, %211
  %215 = add nuw nsw i32 %214, %213
  %216 = icmp eq i32 %215, 2
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %17, align 1
  %218 = icmp ne i8 %210, 0
  %219 = xor i1 %218, %216
  %.v54 = select i1 %219, i64 12, i64 762
  %220 = add i64 %183, %.v54
  store i64 %220, i64* %3, align 8
  br i1 %219, label %block_400c9a, label %block_.L_400f88

block_400c9a:                                     ; preds = %block_.L_400c8e
  %221 = add i64 %184, -48
  %222 = add i64 %220, 7
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %221 to i32*
  store i32 0, i32* %223, align 4
  %224 = load i64, i64* %RBP.i, align 8
  %225 = add i64 %224, -52
  %226 = load i64, i64* %3, align 8
  %227 = add i64 %226, 7
  store i64 %227, i64* %3, align 8
  %228 = inttoptr i64 %225 to i32*
  store i32 0, i32* %228, align 4
  %229 = load i64, i64* %RBP.i, align 8
  %230 = add i64 %229, -68
  %231 = load i64, i64* %3, align 8
  %232 = add i64 %231, 7
  store i64 %232, i64* %3, align 8
  %233 = inttoptr i64 %230 to i32*
  store i32 0, i32* %233, align 4
  %.pre32 = load i64, i64* %3, align 8
  br label %block_.L_400caf

block_.L_400caf:                                  ; preds = %block_.L_400db2, %block_400c9a
  %234 = phi i64 [ %.pre32, %block_400c9a ], [ %756, %block_.L_400db2 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_400c9a ], [ %MEMORY.2, %block_.L_400db2 ]
  %235 = load i64, i64* %RBP.i, align 8
  %236 = add i64 %235, -68
  %237 = add i64 %234, 3
  store i64 %237, i64* %3, align 8
  %238 = inttoptr i64 %236 to i32*
  %239 = load i32, i32* %238, align 4
  %240 = zext i32 %239 to i64
  store i64 %240, i64* %RAX.i116, align 8
  %241 = add i64 %235, -60
  %242 = add i64 %234, 6
  store i64 %242, i64* %3, align 8
  %243 = inttoptr i64 %241 to i32*
  %244 = load i32, i32* %243, align 4
  %245 = sub i32 %239, %244
  %246 = icmp ult i32 %239, %244
  %247 = zext i1 %246 to i8
  store i8 %247, i8* %12, align 1
  %248 = and i32 %245, 255
  %249 = tail call i32 @llvm.ctpop.i32(i32 %248)
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  %252 = xor i8 %251, 1
  store i8 %252, i8* %13, align 1
  %253 = xor i32 %244, %239
  %254 = xor i32 %253, %245
  %255 = lshr i32 %254, 4
  %256 = trunc i32 %255 to i8
  %257 = and i8 %256, 1
  store i8 %257, i8* %14, align 1
  %258 = icmp eq i32 %245, 0
  %259 = zext i1 %258 to i8
  store i8 %259, i8* %15, align 1
  %260 = lshr i32 %245, 31
  %261 = trunc i32 %260 to i8
  store i8 %261, i8* %16, align 1
  %262 = lshr i32 %239, 31
  %263 = lshr i32 %244, 31
  %264 = xor i32 %263, %262
  %265 = xor i32 %260, %262
  %266 = add nuw nsw i32 %265, %264
  %267 = icmp eq i32 %266, 2
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %17, align 1
  %269 = icmp ne i8 %261, 0
  %270 = xor i1 %269, %267
  %.v57 = select i1 %270, i64 12, i64 278
  %271 = add i64 %234, %.v57
  store i64 %271, i64* %3, align 8
  br i1 %270, label %block_400cbb, label %block_.L_400dc5

block_400cbb:                                     ; preds = %block_.L_400caf
  %272 = add i64 %271, -1563
  %273 = add i64 %271, 5
  %274 = load i64, i64* %6, align 8
  %275 = add i64 %274, -8
  %276 = inttoptr i64 %275 to i64*
  store i64 %273, i64* %276, align 8
  store i64 %275, i64* %6, align 8
  store i64 %272, i64* %3, align 8
  %277 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 ()* @lrand48 to i64), %struct.Memory* %MEMORY.1)
  %278 = load i64, i64* %RBP.i, align 8
  %279 = add i64 %278, -80
  %280 = load i64, i64* %RAX.i116, align 8
  %281 = load i64, i64* %3, align 8
  %282 = add i64 %281, 4
  store i64 %282, i64* %3, align 8
  %283 = inttoptr i64 %279 to i64*
  store i64 %280, i64* %283, align 8
  %284 = load i64, i64* %RBP.i, align 8
  %285 = add i64 %284, -72
  %286 = load i64, i64* %3, align 8
  %287 = add i64 %286, 7
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %285 to i32*
  store i32 0, i32* %288, align 4
  %.pre47 = load i64, i64* %3, align 8
  br label %block_.L_400ccb

block_.L_400ccb:                                  ; preds = %block_.L_400d6f, %block_400cbb
  %289 = phi i64 [ %.pre47, %block_400cbb ], [ %726, %block_.L_400d6f ]
  %MEMORY.2 = phi %struct.Memory* [ %277, %block_400cbb ], [ %607, %block_.L_400d6f ]
  %290 = load i64, i64* %RBP.i, align 8
  %291 = add i64 %290, -72
  %292 = add i64 %289, 4
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %291 to i32*
  %294 = load i32, i32* %293, align 4
  %295 = add i32 %294, -31
  %296 = icmp ult i32 %294, 31
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %12, align 1
  %298 = and i32 %295, 255
  %299 = tail call i32 @llvm.ctpop.i32(i32 %298)
  %300 = trunc i32 %299 to i8
  %301 = and i8 %300, 1
  %302 = xor i8 %301, 1
  store i8 %302, i8* %13, align 1
  %303 = xor i32 %294, 16
  %304 = xor i32 %303, %295
  %305 = lshr i32 %304, 4
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  store i8 %307, i8* %14, align 1
  %308 = icmp eq i32 %295, 0
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %15, align 1
  %310 = lshr i32 %295, 31
  %311 = trunc i32 %310 to i8
  store i8 %311, i8* %16, align 1
  %312 = lshr i32 %294, 31
  %313 = xor i32 %310, %312
  %314 = add nuw nsw i32 %313, %312
  %315 = icmp eq i32 %314, 2
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %17, align 1
  %317 = icmp ne i8 %311, 0
  %318 = xor i1 %317, %315
  %.v = select i1 %318, i64 10, i64 231
  %319 = add i64 %289, %.v
  store i64 %319, i64* %3, align 8
  br i1 %318, label %block_400cd5, label %block_.L_400db2

block_400cd5:                                     ; preds = %block_.L_400ccb
  %320 = add i64 %290, -32
  %321 = add i64 %319, 4
  store i64 %321, i64* %3, align 8
  %322 = inttoptr i64 %320 to i64*
  %323 = load i64, i64* %322, align 8
  store i64 %323, i64* %RAX.i116, align 8
  %324 = add i64 %290, -68
  %325 = add i64 %319, 8
  store i64 %325, i64* %3, align 8
  %326 = inttoptr i64 %324 to i32*
  %327 = load i32, i32* %326, align 4
  %328 = sext i32 %327 to i64
  %329 = mul nsw i64 %328, 31
  %330 = trunc i64 %329 to i32
  %331 = and i64 %329, 4294967295
  store i64 %331, i64* %RCX.i523, align 8
  %332 = mul i64 %328, 133143986176
  %333 = ashr exact i64 %332, 32
  %334 = icmp ne i64 %333, %329
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %12, align 1
  %336 = and i32 %330, 255
  %337 = tail call i32 @llvm.ctpop.i32(i32 %336)
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = xor i8 %339, 1
  store i8 %340, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %341 = lshr i32 %330, 31
  %342 = trunc i32 %341 to i8
  store i8 %342, i8* %16, align 1
  store i8 %335, i8* %17, align 1
  %343 = add i64 %319, 11
  store i64 %343, i64* %3, align 8
  %344 = trunc i64 %329 to i32
  %345 = load i32, i32* %293, align 4
  %346 = add i32 %345, %344
  %347 = zext i32 %346 to i64
  store i64 %347, i64* %RCX.i523, align 8
  %348 = icmp ult i32 %346, %344
  %349 = icmp ult i32 %346, %345
  %350 = or i1 %348, %349
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %12, align 1
  %352 = and i32 %346, 255
  %353 = tail call i32 @llvm.ctpop.i32(i32 %352)
  %354 = trunc i32 %353 to i8
  %355 = and i8 %354, 1
  %356 = xor i8 %355, 1
  store i8 %356, i8* %13, align 1
  %357 = xor i32 %345, %344
  %358 = xor i32 %357, %346
  %359 = lshr i32 %358, 4
  %360 = trunc i32 %359 to i8
  %361 = and i8 %360, 1
  store i8 %361, i8* %14, align 1
  %362 = icmp eq i32 %346, 0
  %363 = zext i1 %362 to i8
  store i8 %363, i8* %15, align 1
  %364 = lshr i32 %346, 31
  %365 = trunc i32 %364 to i8
  store i8 %365, i8* %16, align 1
  %366 = lshr i32 %344, 31
  %367 = lshr i32 %345, 31
  %368 = xor i32 %364, %366
  %369 = xor i32 %364, %367
  %370 = add nuw nsw i32 %368, %369
  %371 = icmp eq i32 %370, 2
  %372 = zext i1 %371 to i8
  store i8 %372, i8* %17, align 1
  %373 = sext i32 %346 to i64
  store i64 %373, i64* %RDX.i277, align 8
  %374 = add i64 %323, %373
  %375 = add i64 %319, 18
  store i64 %375, i64* %3, align 8
  %376 = inttoptr i64 %374 to i8*
  %377 = load i8, i8* %376, align 1
  %378 = sext i8 %377 to i64
  %379 = and i64 %378, 4294967295
  store i64 %379, i64* %RCX.i523, align 8
  %380 = sext i8 %377 to i32
  %381 = add nsw i32 %380, -49
  %382 = icmp ult i8 %377, 49
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %12, align 1
  %384 = and i32 %381, 255
  %385 = tail call i32 @llvm.ctpop.i32(i32 %384)
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 1
  %388 = xor i8 %387, 1
  store i8 %388, i8* %13, align 1
  %389 = xor i32 %380, 16
  %390 = xor i32 %389, %381
  %391 = lshr i32 %390, 4
  %392 = trunc i32 %391 to i8
  %393 = and i8 %392, 1
  store i8 %393, i8* %14, align 1
  %394 = icmp eq i32 %381, 0
  %395 = zext i1 %394 to i8
  store i8 %395, i8* %15, align 1
  %396 = lshr i32 %381, 31
  %397 = trunc i32 %396 to i8
  store i8 %397, i8* %16, align 1
  %398 = lshr i32 %380, 31
  %399 = xor i32 %396, %398
  %400 = add nuw nsw i32 %399, %398
  %401 = icmp eq i32 %400, 2
  %402 = zext i1 %401 to i8
  store i8 %402, i8* %17, align 1
  %.v61 = select i1 %394, i64 27, i64 52
  %403 = add i64 %319, %.v61
  store i64 %403, i64* %3, align 8
  br i1 %394, label %block_400cf0, label %block_.L_400d09

block_400cf0:                                     ; preds = %block_400cd5
  %404 = load i64, i64* %RBP.i, align 8
  %405 = add i64 %404, -40
  %406 = add i64 %403, 4
  store i64 %406, i64* %3, align 8
  %407 = inttoptr i64 %405 to i64*
  %408 = load i64, i64* %407, align 8
  store i64 %408, i64* %RAX.i116, align 8
  %409 = add i64 %403, 6
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %408 to i32*
  %411 = load i32, i32* %410, align 4
  %412 = zext i32 %411 to i64
  store i64 %412, i64* %RCX.i523, align 8
  %413 = add i64 %404, -48
  %414 = add i64 %403, 9
  store i64 %414, i64* %3, align 8
  %415 = inttoptr i64 %413 to i32*
  %416 = load i32, i32* %415, align 4
  %417 = add i32 %416, %411
  %418 = zext i32 %417 to i64
  store i64 %418, i64* %RCX.i523, align 8
  %419 = icmp ult i32 %417, %411
  %420 = icmp ult i32 %417, %416
  %421 = or i1 %419, %420
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %12, align 1
  %423 = and i32 %417, 255
  %424 = tail call i32 @llvm.ctpop.i32(i32 %423)
  %425 = trunc i32 %424 to i8
  %426 = and i8 %425, 1
  %427 = xor i8 %426, 1
  store i8 %427, i8* %13, align 1
  %428 = xor i32 %416, %411
  %429 = xor i32 %428, %417
  %430 = lshr i32 %429, 4
  %431 = trunc i32 %430 to i8
  %432 = and i8 %431, 1
  store i8 %432, i8* %14, align 1
  %433 = icmp eq i32 %417, 0
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %15, align 1
  %435 = lshr i32 %417, 31
  %436 = trunc i32 %435 to i8
  store i8 %436, i8* %16, align 1
  %437 = lshr i32 %411, 31
  %438 = lshr i32 %416, 31
  %439 = xor i32 %435, %437
  %440 = xor i32 %435, %438
  %441 = add nuw nsw i32 %439, %440
  %442 = icmp eq i32 %441, 2
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %17, align 1
  %444 = add i64 %403, 12
  store i64 %444, i64* %3, align 8
  store i32 %417, i32* %415, align 4
  %445 = load i64, i64* %RBP.i, align 8
  %446 = add i64 %445, -40
  %447 = load i64, i64* %3, align 8
  %448 = add i64 %447, 4
  store i64 %448, i64* %3, align 8
  %449 = inttoptr i64 %446 to i64*
  %450 = load i64, i64* %449, align 8
  store i64 %450, i64* %RAX.i116, align 8
  %451 = add i64 %450, 4
  %452 = add i64 %447, 7
  store i64 %452, i64* %3, align 8
  %453 = inttoptr i64 %451 to i32*
  %454 = load i32, i32* %453, align 4
  %455 = zext i32 %454 to i64
  store i64 %455, i64* %RCX.i523, align 8
  %456 = add i64 %445, -52
  %457 = add i64 %447, 10
  store i64 %457, i64* %3, align 8
  %458 = inttoptr i64 %456 to i32*
  %459 = load i32, i32* %458, align 4
  %460 = add i32 %459, %454
  %461 = zext i32 %460 to i64
  store i64 %461, i64* %RCX.i523, align 8
  %462 = icmp ult i32 %460, %454
  %463 = icmp ult i32 %460, %459
  %464 = or i1 %462, %463
  %465 = zext i1 %464 to i8
  store i8 %465, i8* %12, align 1
  %466 = and i32 %460, 255
  %467 = tail call i32 @llvm.ctpop.i32(i32 %466)
  %468 = trunc i32 %467 to i8
  %469 = and i8 %468, 1
  %470 = xor i8 %469, 1
  store i8 %470, i8* %13, align 1
  %471 = xor i32 %459, %454
  %472 = xor i32 %471, %460
  %473 = lshr i32 %472, 4
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  store i8 %475, i8* %14, align 1
  %476 = icmp eq i32 %460, 0
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %15, align 1
  %478 = lshr i32 %460, 31
  %479 = trunc i32 %478 to i8
  store i8 %479, i8* %16, align 1
  %480 = lshr i32 %454, 31
  %481 = lshr i32 %459, 31
  %482 = xor i32 %478, %480
  %483 = xor i32 %478, %481
  %484 = add nuw nsw i32 %482, %483
  %485 = icmp eq i32 %484, 2
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %17, align 1
  %487 = add i64 %447, 13
  store i64 %487, i64* %3, align 8
  store i32 %460, i32* %458, align 4
  %.pre48 = load i64, i64* %3, align 8
  br label %block_.L_400d09

block_.L_400d09:                                  ; preds = %block_400cd5, %block_400cf0
  %488 = phi i64 [ %.pre48, %block_400cf0 ], [ %403, %block_400cd5 ]
  %489 = load i64, i64* %RBP.i, align 8
  %490 = add i64 %489, -40
  %491 = add i64 %488, 4
  store i64 %491, i64* %3, align 8
  %492 = inttoptr i64 %490 to i64*
  %493 = load i64, i64* %492, align 8
  store i64 %493, i64* %RAX.i116, align 8
  %494 = add i64 %493, 8
  %495 = add i64 %488, 8
  store i64 %495, i64* %3, align 8
  %496 = inttoptr i64 %494 to i64*
  %497 = load i64, i64* %496, align 8
  store i64 %497, i64* %RAX.i116, align 8
  %498 = add i64 %488, 11
  store i64 %498, i64* %3, align 8
  %499 = inttoptr i64 %497 to i32*
  %500 = load i32, i32* %499, align 4
  %501 = sext i32 %500 to i64
  store i64 %501, i64* %RAX.i116, align 8
  %502 = add i64 %489, -80
  %503 = add i64 %488, 15
  store i64 %503, i64* %3, align 8
  %504 = inttoptr i64 %502 to i64*
  %505 = load i64, i64* %504, align 8
  %506 = add i64 %505, %501
  %507 = and i64 %506, 1
  store i64 %507, i64* %RAX.i116, align 8
  store i8 0, i8* %12, align 1
  %508 = trunc i64 %507 to i32
  %509 = tail call i32 @llvm.ctpop.i32(i32 %508)
  %510 = trunc i32 %509 to i8
  %511 = xor i8 %510, 1
  store i8 %511, i8* %13, align 1
  %512 = trunc i64 %507 to i8
  %513 = xor i8 %512, 1
  store i8 %513, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 %507, i64* %RCX.i523, align 8
  %514 = add i64 %488, 25
  store i64 %514, i64* %3, align 8
  %515 = load i64, i64* %492, align 8
  store i64 %515, i64* %RAX.i116, align 8
  %516 = add i64 %488, 27
  store i64 %516, i64* %3, align 8
  %517 = inttoptr i64 %515 to i32*
  store i32 %508, i32* %517, align 4
  %518 = load i64, i64* %3, align 8
  %519 = add i64 %518, -1668
  %520 = add i64 %518, 5
  %521 = load i64, i64* %6, align 8
  %522 = add i64 %521, -8
  %523 = inttoptr i64 %522 to i64*
  store i64 %520, i64* %523, align 8
  store i64 %522, i64* %6, align 8
  store i64 %519, i64* %3, align 8
  %524 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 ()* @lrand48 to i64), %struct.Memory* %MEMORY.2)
  %525 = load i64, i64* %3, align 8
  %526 = add i64 %525, ptrtoint (%G_0x39f__rip__type* @G_0x39f__rip_ to i64)
  %527 = add i64 %525, 8
  store i64 %527, i64* %3, align 8
  %528 = inttoptr i64 %526 to i64*
  %529 = load i64, i64* %528, align 8
  store i64 %529, i64* %36, align 1
  store double 0.000000e+00, double* %179, align 1
  store i64 1000, i64* %RCX.i523, align 8
  %530 = load i64, i64* %RBP.i, align 8
  %531 = add i64 %530, -104
  %532 = add i64 %525, 19
  store i64 %532, i64* %3, align 8
  %533 = inttoptr i64 %531 to i64*
  store i64 1000, i64* %533, align 8
  %534 = load i64, i64* %3, align 8
  %535 = load i64, i64* %180, align 8
  %536 = ashr i64 %535, 63
  store i64 %536, i64* %83, align 8
  %537 = load i64, i64* %RBP.i, align 8
  %538 = add i64 %537, -104
  %539 = add i64 %534, 6
  store i64 %539, i64* %3, align 8
  %540 = inttoptr i64 %538 to i64*
  %541 = load i64, i64* %540, align 8
  store i64 %541, i64* %RSI.i242, align 8
  %542 = add i64 %534, 9
  store i64 %542, i64* %3, align 8
  %543 = sext i64 %541 to i128
  %544 = and i128 %543, -18446744073709551616
  %545 = zext i64 %536 to i128
  %546 = shl nuw i128 %545, 64
  %547 = zext i64 %535 to i128
  %548 = or i128 %546, %547
  %549 = zext i64 %541 to i128
  %550 = or i128 %544, %549
  %551 = sdiv i128 %548, %550
  %552 = trunc i128 %551 to i64
  %553 = and i128 %551, 18446744073709551615
  %554 = sext i64 %552 to i128
  %555 = and i128 %554, -18446744073709551616
  %556 = or i128 %555, %553
  %557 = icmp eq i128 %551, %556
  br i1 %557, label %560, label %558

; <label>:558:                                    ; preds = %block_.L_400d09
  %559 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %542, %struct.Memory* %524)
  %.pre49 = load i64, i64* %RDX.i277, align 8
  %.pre50 = load i64, i64* %3, align 8
  %.pre51 = load i64, i64* %RBP.i, align 8
  br label %routine_idivq__rsi.exit443

; <label>:560:                                    ; preds = %block_.L_400d09
  %561 = srem i128 %548, %550
  %562 = trunc i128 %561 to i64
  store i64 %552, i64* %180, align 8
  store i64 %562, i64* %83, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivq__rsi.exit443

routine_idivq__rsi.exit443:                       ; preds = %560, %558
  %563 = phi i64 [ %.pre51, %558 ], [ %537, %560 ]
  %564 = phi i64 [ %.pre50, %558 ], [ %542, %560 ]
  %565 = phi i64 [ %.pre49, %558 ], [ %562, %560 ]
  %566 = phi %struct.Memory* [ %559, %558 ], [ %524, %560 ]
  %567 = sitofp i64 %565 to double
  %568 = load double, double* %35, align 1
  %569 = fdiv double %567, %568
  store double %569, double* %182, align 1
  %570 = add i64 %563, -88
  %571 = add i64 %564, 14
  store i64 %571, i64* %3, align 8
  %572 = inttoptr i64 %570 to double*
  store double %569, double* %572, align 8
  %573 = load i64, i64* %RBP.i, align 8
  %574 = add i64 %573, -24
  %575 = load i64, i64* %3, align 8
  %576 = add i64 %575, 5
  store i64 %576, i64* %3, align 8
  %577 = inttoptr i64 %574 to i64*
  %578 = load i64, i64* %577, align 8
  store i64 %578, i64* %36, align 1
  store double 0.000000e+00, double* %179, align 1
  %579 = add i64 %573, -88
  %580 = add i64 %575, 10
  store i64 %580, i64* %3, align 8
  %581 = bitcast i64 %578 to double
  %582 = inttoptr i64 %579 to double*
  %583 = load double, double* %582, align 8
  %584 = fcmp uno double %581, %583
  br i1 %584, label %585, label %595

; <label>:585:                                    ; preds = %routine_idivq__rsi.exit443
  %586 = fadd double %581, %583
  %587 = bitcast double %586 to i64
  %588 = and i64 %587, 9221120237041090560
  %589 = icmp eq i64 %588, 9218868437227405312
  %590 = and i64 %587, 2251799813685247
  %591 = icmp ne i64 %590, 0
  %592 = and i1 %589, %591
  br i1 %592, label %593, label %601

; <label>:593:                                    ; preds = %585
  %594 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %580, %struct.Memory* %566)
  %.pre52 = load i64, i64* %3, align 8
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit427

; <label>:595:                                    ; preds = %routine_idivq__rsi.exit443
  %596 = fcmp ogt double %581, %583
  br i1 %596, label %601, label %597

; <label>:597:                                    ; preds = %595
  %598 = fcmp olt double %581, %583
  br i1 %598, label %601, label %599

; <label>:599:                                    ; preds = %597
  %600 = fcmp oeq double %581, %583
  br i1 %600, label %601, label %605

; <label>:601:                                    ; preds = %599, %597, %595, %585
  %602 = phi i8 [ 0, %595 ], [ 0, %597 ], [ 1, %599 ], [ 1, %585 ]
  %603 = phi i8 [ 0, %595 ], [ 0, %597 ], [ 0, %599 ], [ 1, %585 ]
  %604 = phi i8 [ 0, %595 ], [ 1, %597 ], [ 0, %599 ], [ 1, %585 ]
  store i8 %602, i8* %15, align 1
  store i8 %603, i8* %13, align 1
  store i8 %604, i8* %12, align 1
  br label %605

; <label>:605:                                    ; preds = %601, %599
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit427

routine_ucomisd_MINUS0x58__rbp____xmm0.exit427:   ; preds = %605, %593
  %606 = phi i64 [ %.pre52, %593 ], [ %580, %605 ]
  %607 = phi %struct.Memory* [ %594, %593 ], [ %566, %605 ]
  %608 = add i64 %606, 18
  %609 = add i64 %606, 6
  %610 = load i8, i8* %12, align 1
  %611 = load i8, i8* %15, align 1
  %612 = or i8 %611, %610
  %613 = icmp ne i8 %612, 0
  %614 = select i1 %613, i64 %608, i64 %609
  store i64 %614, i64* %3, align 8
  br i1 %613, label %block_.L_400d6f, label %block_400d63

block_400d63:                                     ; preds = %routine_ucomisd_MINUS0x58__rbp____xmm0.exit427
  %615 = load i64, i64* %RBP.i, align 8
  %616 = add i64 %615, -80
  %617 = add i64 %614, 4
  store i64 %617, i64* %3, align 8
  %618 = inttoptr i64 %616 to i64*
  %619 = load i64, i64* %618, align 8
  %620 = xor i64 %619, 1
  store i64 %620, i64* %RAX.i116, align 8
  store i8 0, i8* %12, align 1
  %621 = trunc i64 %620 to i32
  %622 = and i32 %621, 255
  %623 = tail call i32 @llvm.ctpop.i32(i32 %622)
  %624 = trunc i32 %623 to i8
  %625 = and i8 %624, 1
  %626 = xor i8 %625, 1
  store i8 %626, i8* %13, align 1
  %627 = icmp eq i64 %620, 0
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %15, align 1
  %629 = lshr i64 %619, 63
  %630 = trunc i64 %629 to i8
  store i8 %630, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %631 = add i64 %614, 12
  store i64 %631, i64* %3, align 8
  store i64 %620, i64* %618, align 8
  %.pre53 = load i64, i64* %3, align 8
  br label %block_.L_400d6f

block_.L_400d6f:                                  ; preds = %block_400d63, %routine_ucomisd_MINUS0x58__rbp____xmm0.exit427
  %632 = phi i64 [ %.pre53, %block_400d63 ], [ %608, %routine_ucomisd_MINUS0x58__rbp____xmm0.exit427 ]
  %633 = load i64, i64* %RBP.i, align 8
  %634 = add i64 %633, -40
  %635 = add i64 %632, 4
  store i64 %635, i64* %3, align 8
  %636 = inttoptr i64 %634 to i64*
  %637 = load i64, i64* %636, align 8
  store i64 %637, i64* %RAX.i116, align 8
  %638 = add i64 %637, 8
  %639 = add i64 %632, 8
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %638 to i64*
  %641 = load i64, i64* %640, align 8
  store i64 %641, i64* %RAX.i116, align 8
  %642 = add i64 %641, 4
  %643 = add i64 %632, 12
  store i64 %643, i64* %3, align 8
  %644 = inttoptr i64 %642 to i32*
  %645 = load i32, i32* %644, align 4
  %646 = sext i32 %645 to i64
  store i64 %646, i64* %RAX.i116, align 8
  %647 = add i64 %633, -80
  %648 = add i64 %632, 16
  store i64 %648, i64* %3, align 8
  %649 = inttoptr i64 %647 to i64*
  %650 = load i64, i64* %649, align 8
  %651 = add i64 %650, %646
  %652 = and i64 %651, 1
  store i64 %652, i64* %RAX.i116, align 8
  store i8 0, i8* %12, align 1
  %653 = trunc i64 %652 to i32
  %654 = tail call i32 @llvm.ctpop.i32(i32 %653)
  %655 = trunc i32 %654 to i8
  %656 = xor i8 %655, 1
  store i8 %656, i8* %13, align 1
  %657 = trunc i64 %652 to i8
  %658 = xor i8 %657, 1
  store i8 %658, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 %652, i64* %RCX.i523, align 8
  %659 = add i64 %632, 26
  store i64 %659, i64* %3, align 8
  %660 = load i64, i64* %636, align 8
  store i64 %660, i64* %RAX.i116, align 8
  %661 = add i64 %660, 4
  %662 = add i64 %632, 29
  store i64 %662, i64* %3, align 8
  %663 = inttoptr i64 %661 to i32*
  store i32 %653, i32* %663, align 4
  %664 = load i64, i64* %RBP.i, align 8
  %665 = add i64 %664, -40
  %666 = load i64, i64* %3, align 8
  %667 = add i64 %666, 4
  store i64 %667, i64* %3, align 8
  %668 = inttoptr i64 %665 to i64*
  %669 = load i64, i64* %668, align 8
  store i64 %669, i64* %RAX.i116, align 8
  %670 = add i64 %669, 8
  %671 = add i64 %666, 8
  store i64 %671, i64* %3, align 8
  %672 = inttoptr i64 %670 to i64*
  %673 = load i64, i64* %672, align 8
  store i64 %673, i64* %RAX.i116, align 8
  %674 = add i64 %666, 12
  store i64 %674, i64* %3, align 8
  store i64 %673, i64* %668, align 8
  %675 = load i64, i64* %RBP.i, align 8
  %676 = add i64 %675, -80
  %677 = load i64, i64* %3, align 8
  %678 = add i64 %677, 4
  store i64 %678, i64* %3, align 8
  %679 = inttoptr i64 %676 to i64*
  %680 = load i64, i64* %679, align 8
  %681 = trunc i64 %680 to i8
  %682 = and i8 %681, 1
  %683 = ashr i64 %680, 1
  store i64 %683, i64* %RAX.i116, align 8
  store i8 %682, i8* %12, align 1
  %684 = trunc i64 %683 to i32
  %685 = and i32 %684, 255
  %686 = tail call i32 @llvm.ctpop.i32(i32 %685)
  %687 = trunc i32 %686 to i8
  %688 = and i8 %687, 1
  %689 = xor i8 %688, 1
  store i8 %689, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %690 = icmp eq i64 %683, 0
  %691 = zext i1 %690 to i8
  store i8 %691, i8* %15, align 1
  %692 = lshr i64 %683, 63
  %693 = trunc i64 %692 to i8
  store i8 %693, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %694 = add i64 %677, 11
  store i64 %694, i64* %3, align 8
  store i64 %683, i64* %679, align 8
  %695 = load i64, i64* %RBP.i, align 8
  %696 = add i64 %695, -72
  %697 = load i64, i64* %3, align 8
  %698 = add i64 %697, 3
  store i64 %698, i64* %3, align 8
  %699 = inttoptr i64 %696 to i32*
  %700 = load i32, i32* %699, align 4
  %701 = add i32 %700, 1
  %702 = zext i32 %701 to i64
  store i64 %702, i64* %RAX.i116, align 8
  %703 = icmp eq i32 %700, -1
  %704 = icmp eq i32 %701, 0
  %705 = or i1 %703, %704
  %706 = zext i1 %705 to i8
  store i8 %706, i8* %12, align 1
  %707 = and i32 %701, 255
  %708 = tail call i32 @llvm.ctpop.i32(i32 %707)
  %709 = trunc i32 %708 to i8
  %710 = and i8 %709, 1
  %711 = xor i8 %710, 1
  store i8 %711, i8* %13, align 1
  %712 = xor i32 %701, %700
  %713 = lshr i32 %712, 4
  %714 = trunc i32 %713 to i8
  %715 = and i8 %714, 1
  store i8 %715, i8* %14, align 1
  %716 = zext i1 %704 to i8
  store i8 %716, i8* %15, align 1
  %717 = lshr i32 %701, 31
  %718 = trunc i32 %717 to i8
  store i8 %718, i8* %16, align 1
  %719 = lshr i32 %700, 31
  %720 = xor i32 %717, %719
  %721 = add nuw nsw i32 %720, %717
  %722 = icmp eq i32 %721, 2
  %723 = zext i1 %722 to i8
  store i8 %723, i8* %17, align 1
  %724 = add i64 %697, 9
  store i64 %724, i64* %3, align 8
  store i32 %701, i32* %699, align 4
  %725 = load i64, i64* %3, align 8
  %726 = add i64 %725, -226
  store i64 %726, i64* %3, align 8
  br label %block_.L_400ccb

block_.L_400db2:                                  ; preds = %block_.L_400ccb
  %727 = add i64 %290, -68
  %728 = add i64 %319, 8
  store i64 %728, i64* %3, align 8
  %729 = inttoptr i64 %727 to i32*
  %730 = load i32, i32* %729, align 4
  %731 = add i32 %730, 1
  %732 = zext i32 %731 to i64
  store i64 %732, i64* %RAX.i116, align 8
  %733 = icmp eq i32 %730, -1
  %734 = icmp eq i32 %731, 0
  %735 = or i1 %733, %734
  %736 = zext i1 %735 to i8
  store i8 %736, i8* %12, align 1
  %737 = and i32 %731, 255
  %738 = tail call i32 @llvm.ctpop.i32(i32 %737)
  %739 = trunc i32 %738 to i8
  %740 = and i8 %739, 1
  %741 = xor i8 %740, 1
  store i8 %741, i8* %13, align 1
  %742 = xor i32 %731, %730
  %743 = lshr i32 %742, 4
  %744 = trunc i32 %743 to i8
  %745 = and i8 %744, 1
  store i8 %745, i8* %14, align 1
  %746 = zext i1 %734 to i8
  store i8 %746, i8* %15, align 1
  %747 = lshr i32 %731, 31
  %748 = trunc i32 %747 to i8
  store i8 %748, i8* %16, align 1
  %749 = lshr i32 %730, 31
  %750 = xor i32 %747, %749
  %751 = add nuw nsw i32 %750, %747
  %752 = icmp eq i32 %751, 2
  %753 = zext i1 %752 to i8
  store i8 %753, i8* %17, align 1
  %754 = add i64 %319, 14
  store i64 %754, i64* %3, align 8
  store i32 %731, i32* %729, align 4
  %755 = load i64, i64* %3, align 8
  %756 = add i64 %755, -273
  store i64 %756, i64* %3, align 8
  br label %block_.L_400caf

block_.L_400dc5:                                  ; preds = %block_.L_400caf
  %757 = add i64 %271, -1829
  %758 = add i64 %271, 5
  %759 = load i64, i64* %6, align 8
  %760 = add i64 %759, -8
  %761 = inttoptr i64 %760 to i64*
  store i64 %758, i64* %761, align 8
  store i64 %760, i64* %6, align 8
  store i64 %757, i64* %3, align 8
  %762 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 ()* @lrand48 to i64), %struct.Memory* %MEMORY.1)
  %763 = load i64, i64* %RBP.i, align 8
  %764 = add i64 %763, -80
  %765 = load i64, i64* %RAX.i116, align 8
  %766 = load i64, i64* %3, align 8
  %767 = add i64 %766, 4
  store i64 %767, i64* %3, align 8
  %768 = inttoptr i64 %764 to i64*
  store i64 %765, i64* %768, align 8
  %769 = load i64, i64* %RBP.i, align 8
  %770 = add i64 %769, -72
  %771 = load i64, i64* %3, align 8
  %772 = add i64 %771, 7
  store i64 %772, i64* %3, align 8
  %773 = inttoptr i64 %770 to i32*
  store i32 0, i32* %773, align 4
  %.pre33 = load i64, i64* %3, align 8
  br label %block_.L_400dd5

block_.L_400dd5:                                  ; preds = %block_.L_400e7b, %block_.L_400dc5
  %774 = phi i64 [ %.pre33, %block_.L_400dc5 ], [ %1218, %block_.L_400e7b ]
  %MEMORY.5 = phi %struct.Memory* [ %762, %block_.L_400dc5 ], [ %1099, %block_.L_400e7b ]
  %775 = load i64, i64* %RBP.i, align 8
  %776 = add i64 %775, -72
  %777 = add i64 %774, 3
  store i64 %777, i64* %3, align 8
  %778 = inttoptr i64 %776 to i32*
  %779 = load i32, i32* %778, align 4
  %780 = zext i32 %779 to i64
  store i64 %780, i64* %RAX.i116, align 8
  %781 = add i64 %775, -56
  %782 = add i64 %774, 6
  store i64 %782, i64* %3, align 8
  %783 = inttoptr i64 %781 to i32*
  %784 = load i32, i32* %783, align 4
  %785 = sub i32 %779, %784
  %786 = icmp ult i32 %779, %784
  %787 = zext i1 %786 to i8
  store i8 %787, i8* %12, align 1
  %788 = and i32 %785, 255
  %789 = tail call i32 @llvm.ctpop.i32(i32 %788)
  %790 = trunc i32 %789 to i8
  %791 = and i8 %790, 1
  %792 = xor i8 %791, 1
  store i8 %792, i8* %13, align 1
  %793 = xor i32 %784, %779
  %794 = xor i32 %793, %785
  %795 = lshr i32 %794, 4
  %796 = trunc i32 %795 to i8
  %797 = and i8 %796, 1
  store i8 %797, i8* %14, align 1
  %798 = icmp eq i32 %785, 0
  %799 = zext i1 %798 to i8
  store i8 %799, i8* %15, align 1
  %800 = lshr i32 %785, 31
  %801 = trunc i32 %800 to i8
  store i8 %801, i8* %16, align 1
  %802 = lshr i32 %779, 31
  %803 = lshr i32 %784, 31
  %804 = xor i32 %803, %802
  %805 = xor i32 %800, %802
  %806 = add nuw nsw i32 %805, %804
  %807 = icmp eq i32 %806, 2
  %808 = zext i1 %807 to i8
  store i8 %808, i8* %17, align 1
  %809 = icmp ne i8 %801, 0
  %810 = xor i1 %809, %807
  %.v58 = select i1 %810, i64 12, i64 233
  %811 = add i64 %774, %.v58
  store i64 %811, i64* %3, align 8
  br i1 %810, label %block_400de1, label %block_.L_400ebe

block_400de1:                                     ; preds = %block_.L_400dd5
  %812 = add i64 %775, -32
  %813 = add i64 %811, 4
  store i64 %813, i64* %3, align 8
  %814 = inttoptr i64 %812 to i64*
  %815 = load i64, i64* %814, align 8
  store i64 %815, i64* %RAX.i116, align 8
  %816 = add i64 %775, -60
  %817 = add i64 %811, 8
  store i64 %817, i64* %3, align 8
  %818 = inttoptr i64 %816 to i32*
  %819 = load i32, i32* %818, align 4
  %820 = sext i32 %819 to i64
  %821 = mul nsw i64 %820, 31
  %822 = trunc i64 %821 to i32
  %823 = and i64 %821, 4294967295
  store i64 %823, i64* %RCX.i523, align 8
  %824 = mul i64 %820, 133143986176
  %825 = ashr exact i64 %824, 32
  %826 = icmp ne i64 %825, %821
  %827 = zext i1 %826 to i8
  store i8 %827, i8* %12, align 1
  %828 = and i32 %822, 255
  %829 = tail call i32 @llvm.ctpop.i32(i32 %828)
  %830 = trunc i32 %829 to i8
  %831 = and i8 %830, 1
  %832 = xor i8 %831, 1
  store i8 %832, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  %833 = lshr i32 %822, 31
  %834 = trunc i32 %833 to i8
  store i8 %834, i8* %16, align 1
  store i8 %827, i8* %17, align 1
  %835 = add i64 %811, 11
  store i64 %835, i64* %3, align 8
  %836 = trunc i64 %821 to i32
  %837 = load i32, i32* %778, align 4
  %838 = add i32 %837, %836
  %839 = zext i32 %838 to i64
  store i64 %839, i64* %RCX.i523, align 8
  %840 = icmp ult i32 %838, %836
  %841 = icmp ult i32 %838, %837
  %842 = or i1 %840, %841
  %843 = zext i1 %842 to i8
  store i8 %843, i8* %12, align 1
  %844 = and i32 %838, 255
  %845 = tail call i32 @llvm.ctpop.i32(i32 %844)
  %846 = trunc i32 %845 to i8
  %847 = and i8 %846, 1
  %848 = xor i8 %847, 1
  store i8 %848, i8* %13, align 1
  %849 = xor i32 %837, %836
  %850 = xor i32 %849, %838
  %851 = lshr i32 %850, 4
  %852 = trunc i32 %851 to i8
  %853 = and i8 %852, 1
  store i8 %853, i8* %14, align 1
  %854 = icmp eq i32 %838, 0
  %855 = zext i1 %854 to i8
  store i8 %855, i8* %15, align 1
  %856 = lshr i32 %838, 31
  %857 = trunc i32 %856 to i8
  store i8 %857, i8* %16, align 1
  %858 = lshr i32 %836, 31
  %859 = lshr i32 %837, 31
  %860 = xor i32 %856, %858
  %861 = xor i32 %856, %859
  %862 = add nuw nsw i32 %860, %861
  %863 = icmp eq i32 %862, 2
  %864 = zext i1 %863 to i8
  store i8 %864, i8* %17, align 1
  %865 = sext i32 %838 to i64
  store i64 %865, i64* %RDX.i277, align 8
  %866 = add i64 %815, %865
  %867 = add i64 %811, 18
  store i64 %867, i64* %3, align 8
  %868 = inttoptr i64 %866 to i8*
  %869 = load i8, i8* %868, align 1
  %870 = sext i8 %869 to i64
  %871 = and i64 %870, 4294967295
  store i64 %871, i64* %RCX.i523, align 8
  %872 = sext i8 %869 to i32
  %873 = add nsw i32 %872, -49
  %874 = icmp ult i8 %869, 49
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %12, align 1
  %876 = and i32 %873, 255
  %877 = tail call i32 @llvm.ctpop.i32(i32 %876)
  %878 = trunc i32 %877 to i8
  %879 = and i8 %878, 1
  %880 = xor i8 %879, 1
  store i8 %880, i8* %13, align 1
  %881 = xor i32 %872, 16
  %882 = xor i32 %881, %873
  %883 = lshr i32 %882, 4
  %884 = trunc i32 %883 to i8
  %885 = and i8 %884, 1
  store i8 %885, i8* %14, align 1
  %886 = icmp eq i32 %873, 0
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %15, align 1
  %888 = lshr i32 %873, 31
  %889 = trunc i32 %888 to i8
  store i8 %889, i8* %16, align 1
  %890 = lshr i32 %872, 31
  %891 = xor i32 %888, %890
  %892 = add nuw nsw i32 %891, %890
  %893 = icmp eq i32 %892, 2
  %894 = zext i1 %893 to i8
  store i8 %894, i8* %17, align 1
  %.v60 = select i1 %886, i64 27, i64 52
  %895 = add i64 %811, %.v60
  store i64 %895, i64* %3, align 8
  br i1 %886, label %block_400dfc, label %block_.L_400e15

block_400dfc:                                     ; preds = %block_400de1
  %896 = load i64, i64* %RBP.i, align 8
  %897 = add i64 %896, -40
  %898 = add i64 %895, 4
  store i64 %898, i64* %3, align 8
  %899 = inttoptr i64 %897 to i64*
  %900 = load i64, i64* %899, align 8
  store i64 %900, i64* %RAX.i116, align 8
  %901 = add i64 %895, 6
  store i64 %901, i64* %3, align 8
  %902 = inttoptr i64 %900 to i32*
  %903 = load i32, i32* %902, align 4
  %904 = zext i32 %903 to i64
  store i64 %904, i64* %RCX.i523, align 8
  %905 = add i64 %896, -48
  %906 = add i64 %895, 9
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %905 to i32*
  %908 = load i32, i32* %907, align 4
  %909 = add i32 %908, %903
  %910 = zext i32 %909 to i64
  store i64 %910, i64* %RCX.i523, align 8
  %911 = icmp ult i32 %909, %903
  %912 = icmp ult i32 %909, %908
  %913 = or i1 %911, %912
  %914 = zext i1 %913 to i8
  store i8 %914, i8* %12, align 1
  %915 = and i32 %909, 255
  %916 = tail call i32 @llvm.ctpop.i32(i32 %915)
  %917 = trunc i32 %916 to i8
  %918 = and i8 %917, 1
  %919 = xor i8 %918, 1
  store i8 %919, i8* %13, align 1
  %920 = xor i32 %908, %903
  %921 = xor i32 %920, %909
  %922 = lshr i32 %921, 4
  %923 = trunc i32 %922 to i8
  %924 = and i8 %923, 1
  store i8 %924, i8* %14, align 1
  %925 = icmp eq i32 %909, 0
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %15, align 1
  %927 = lshr i32 %909, 31
  %928 = trunc i32 %927 to i8
  store i8 %928, i8* %16, align 1
  %929 = lshr i32 %903, 31
  %930 = lshr i32 %908, 31
  %931 = xor i32 %927, %929
  %932 = xor i32 %927, %930
  %933 = add nuw nsw i32 %931, %932
  %934 = icmp eq i32 %933, 2
  %935 = zext i1 %934 to i8
  store i8 %935, i8* %17, align 1
  %936 = add i64 %895, 12
  store i64 %936, i64* %3, align 8
  store i32 %909, i32* %907, align 4
  %937 = load i64, i64* %RBP.i, align 8
  %938 = add i64 %937, -40
  %939 = load i64, i64* %3, align 8
  %940 = add i64 %939, 4
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %938 to i64*
  %942 = load i64, i64* %941, align 8
  store i64 %942, i64* %RAX.i116, align 8
  %943 = add i64 %942, 4
  %944 = add i64 %939, 7
  store i64 %944, i64* %3, align 8
  %945 = inttoptr i64 %943 to i32*
  %946 = load i32, i32* %945, align 4
  %947 = zext i32 %946 to i64
  store i64 %947, i64* %RCX.i523, align 8
  %948 = add i64 %937, -52
  %949 = add i64 %939, 10
  store i64 %949, i64* %3, align 8
  %950 = inttoptr i64 %948 to i32*
  %951 = load i32, i32* %950, align 4
  %952 = add i32 %951, %946
  %953 = zext i32 %952 to i64
  store i64 %953, i64* %RCX.i523, align 8
  %954 = icmp ult i32 %952, %946
  %955 = icmp ult i32 %952, %951
  %956 = or i1 %954, %955
  %957 = zext i1 %956 to i8
  store i8 %957, i8* %12, align 1
  %958 = and i32 %952, 255
  %959 = tail call i32 @llvm.ctpop.i32(i32 %958)
  %960 = trunc i32 %959 to i8
  %961 = and i8 %960, 1
  %962 = xor i8 %961, 1
  store i8 %962, i8* %13, align 1
  %963 = xor i32 %951, %946
  %964 = xor i32 %963, %952
  %965 = lshr i32 %964, 4
  %966 = trunc i32 %965 to i8
  %967 = and i8 %966, 1
  store i8 %967, i8* %14, align 1
  %968 = icmp eq i32 %952, 0
  %969 = zext i1 %968 to i8
  store i8 %969, i8* %15, align 1
  %970 = lshr i32 %952, 31
  %971 = trunc i32 %970 to i8
  store i8 %971, i8* %16, align 1
  %972 = lshr i32 %946, 31
  %973 = lshr i32 %951, 31
  %974 = xor i32 %970, %972
  %975 = xor i32 %970, %973
  %976 = add nuw nsw i32 %974, %975
  %977 = icmp eq i32 %976, 2
  %978 = zext i1 %977 to i8
  store i8 %978, i8* %17, align 1
  %979 = add i64 %939, 13
  store i64 %979, i64* %3, align 8
  store i32 %952, i32* %950, align 4
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_400e15

block_.L_400e15:                                  ; preds = %block_400de1, %block_400dfc
  %980 = phi i64 [ %.pre41, %block_400dfc ], [ %895, %block_400de1 ]
  %981 = load i64, i64* %RBP.i, align 8
  %982 = add i64 %981, -40
  %983 = add i64 %980, 4
  store i64 %983, i64* %3, align 8
  %984 = inttoptr i64 %982 to i64*
  %985 = load i64, i64* %984, align 8
  store i64 %985, i64* %RAX.i116, align 8
  %986 = add i64 %985, 8
  %987 = add i64 %980, 8
  store i64 %987, i64* %3, align 8
  %988 = inttoptr i64 %986 to i64*
  %989 = load i64, i64* %988, align 8
  store i64 %989, i64* %RAX.i116, align 8
  %990 = add i64 %980, 11
  store i64 %990, i64* %3, align 8
  %991 = inttoptr i64 %989 to i32*
  %992 = load i32, i32* %991, align 4
  %993 = sext i32 %992 to i64
  store i64 %993, i64* %RAX.i116, align 8
  %994 = add i64 %981, -80
  %995 = add i64 %980, 15
  store i64 %995, i64* %3, align 8
  %996 = inttoptr i64 %994 to i64*
  %997 = load i64, i64* %996, align 8
  %998 = add i64 %997, %993
  %999 = and i64 %998, 1
  store i64 %999, i64* %RAX.i116, align 8
  store i8 0, i8* %12, align 1
  %1000 = trunc i64 %999 to i32
  %1001 = tail call i32 @llvm.ctpop.i32(i32 %1000)
  %1002 = trunc i32 %1001 to i8
  %1003 = xor i8 %1002, 1
  store i8 %1003, i8* %13, align 1
  %1004 = trunc i64 %999 to i8
  %1005 = xor i8 %1004, 1
  store i8 %1005, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 %999, i64* %RCX.i523, align 8
  %1006 = add i64 %980, 25
  store i64 %1006, i64* %3, align 8
  %1007 = load i64, i64* %984, align 8
  store i64 %1007, i64* %RAX.i116, align 8
  %1008 = add i64 %980, 27
  store i64 %1008, i64* %3, align 8
  %1009 = inttoptr i64 %1007 to i32*
  store i32 %1000, i32* %1009, align 4
  %1010 = load i64, i64* %3, align 8
  %1011 = add i64 %1010, -1936
  %1012 = add i64 %1010, 5
  %1013 = load i64, i64* %6, align 8
  %1014 = add i64 %1013, -8
  %1015 = inttoptr i64 %1014 to i64*
  store i64 %1012, i64* %1015, align 8
  store i64 %1014, i64* %6, align 8
  store i64 %1011, i64* %3, align 8
  %1016 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 ()* @lrand48 to i64), %struct.Memory* %MEMORY.5)
  %1017 = load i64, i64* %3, align 8
  %1018 = add i64 %1017, ptrtoint (%G_0x293__rip__type* @G_0x293__rip_ to i64)
  %1019 = add i64 %1017, 8
  store i64 %1019, i64* %3, align 8
  %1020 = inttoptr i64 %1018 to i64*
  %1021 = load i64, i64* %1020, align 8
  store i64 %1021, i64* %36, align 1
  store double 0.000000e+00, double* %179, align 1
  store i64 1000, i64* %RCX.i523, align 8
  %1022 = load i64, i64* %RBP.i, align 8
  %1023 = add i64 %1022, -112
  %1024 = add i64 %1017, 19
  store i64 %1024, i64* %3, align 8
  %1025 = inttoptr i64 %1023 to i64*
  store i64 1000, i64* %1025, align 8
  %1026 = load i64, i64* %3, align 8
  %1027 = load i64, i64* %180, align 8
  %1028 = ashr i64 %1027, 63
  store i64 %1028, i64* %83, align 8
  %1029 = load i64, i64* %RBP.i, align 8
  %1030 = add i64 %1029, -112
  %1031 = add i64 %1026, 6
  store i64 %1031, i64* %3, align 8
  %1032 = inttoptr i64 %1030 to i64*
  %1033 = load i64, i64* %1032, align 8
  store i64 %1033, i64* %RSI.i242, align 8
  %1034 = add i64 %1026, 9
  store i64 %1034, i64* %3, align 8
  %1035 = sext i64 %1033 to i128
  %1036 = and i128 %1035, -18446744073709551616
  %1037 = zext i64 %1028 to i128
  %1038 = shl nuw i128 %1037, 64
  %1039 = zext i64 %1027 to i128
  %1040 = or i128 %1038, %1039
  %1041 = zext i64 %1033 to i128
  %1042 = or i128 %1036, %1041
  %1043 = sdiv i128 %1040, %1042
  %1044 = trunc i128 %1043 to i64
  %1045 = and i128 %1043, 18446744073709551615
  %1046 = sext i64 %1044 to i128
  %1047 = and i128 %1046, -18446744073709551616
  %1048 = or i128 %1047, %1045
  %1049 = icmp eq i128 %1043, %1048
  br i1 %1049, label %1052, label %1050

; <label>:1050:                                   ; preds = %block_.L_400e15
  %1051 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1034, %struct.Memory* %1016)
  %.pre42 = load i64, i64* %RDX.i277, align 8
  %.pre43 = load i64, i64* %3, align 8
  %.pre44 = load i64, i64* %RBP.i, align 8
  br label %routine_idivq__rsi.exit258

; <label>:1052:                                   ; preds = %block_.L_400e15
  %1053 = srem i128 %1040, %1042
  %1054 = trunc i128 %1053 to i64
  store i64 %1044, i64* %180, align 8
  store i64 %1054, i64* %83, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivq__rsi.exit258

routine_idivq__rsi.exit258:                       ; preds = %1052, %1050
  %1055 = phi i64 [ %.pre44, %1050 ], [ %1029, %1052 ]
  %1056 = phi i64 [ %.pre43, %1050 ], [ %1034, %1052 ]
  %1057 = phi i64 [ %.pre42, %1050 ], [ %1054, %1052 ]
  %1058 = phi %struct.Memory* [ %1051, %1050 ], [ %1016, %1052 ]
  %1059 = sitofp i64 %1057 to double
  %1060 = load double, double* %35, align 1
  %1061 = fdiv double %1059, %1060
  store double %1061, double* %182, align 1
  %1062 = add i64 %1055, -88
  %1063 = add i64 %1056, 14
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1062 to double*
  store double %1061, double* %1064, align 8
  %1065 = load i64, i64* %RBP.i, align 8
  %1066 = add i64 %1065, -24
  %1067 = load i64, i64* %3, align 8
  %1068 = add i64 %1067, 5
  store i64 %1068, i64* %3, align 8
  %1069 = inttoptr i64 %1066 to i64*
  %1070 = load i64, i64* %1069, align 8
  store i64 %1070, i64* %36, align 1
  store double 0.000000e+00, double* %179, align 1
  %1071 = add i64 %1065, -88
  %1072 = add i64 %1067, 10
  store i64 %1072, i64* %3, align 8
  %1073 = bitcast i64 %1070 to double
  %1074 = inttoptr i64 %1071 to double*
  %1075 = load double, double* %1074, align 8
  %1076 = fcmp uno double %1073, %1075
  br i1 %1076, label %1077, label %1087

; <label>:1077:                                   ; preds = %routine_idivq__rsi.exit258
  %1078 = fadd double %1073, %1075
  %1079 = bitcast double %1078 to i64
  %1080 = and i64 %1079, 9221120237041090560
  %1081 = icmp eq i64 %1080, 9218868437227405312
  %1082 = and i64 %1079, 2251799813685247
  %1083 = icmp ne i64 %1082, 0
  %1084 = and i1 %1081, %1083
  br i1 %1084, label %1085, label %1093

; <label>:1085:                                   ; preds = %1077
  %1086 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1072, %struct.Memory* %1058)
  %.pre45 = load i64, i64* %3, align 8
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit240

; <label>:1087:                                   ; preds = %routine_idivq__rsi.exit258
  %1088 = fcmp ogt double %1073, %1075
  br i1 %1088, label %1093, label %1089

; <label>:1089:                                   ; preds = %1087
  %1090 = fcmp olt double %1073, %1075
  br i1 %1090, label %1093, label %1091

; <label>:1091:                                   ; preds = %1089
  %1092 = fcmp oeq double %1073, %1075
  br i1 %1092, label %1093, label %1097

; <label>:1093:                                   ; preds = %1091, %1089, %1087, %1077
  %1094 = phi i8 [ 0, %1087 ], [ 0, %1089 ], [ 1, %1091 ], [ 1, %1077 ]
  %1095 = phi i8 [ 0, %1087 ], [ 0, %1089 ], [ 0, %1091 ], [ 1, %1077 ]
  %1096 = phi i8 [ 0, %1087 ], [ 1, %1089 ], [ 0, %1091 ], [ 1, %1077 ]
  store i8 %1094, i8* %15, align 1
  store i8 %1095, i8* %13, align 1
  store i8 %1096, i8* %12, align 1
  br label %1097

; <label>:1097:                                   ; preds = %1093, %1091
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit240

routine_ucomisd_MINUS0x58__rbp____xmm0.exit240:   ; preds = %1097, %1085
  %1098 = phi i64 [ %.pre45, %1085 ], [ %1072, %1097 ]
  %1099 = phi %struct.Memory* [ %1086, %1085 ], [ %1058, %1097 ]
  %1100 = add i64 %1098, 18
  %1101 = add i64 %1098, 6
  %1102 = load i8, i8* %12, align 1
  %1103 = load i8, i8* %15, align 1
  %1104 = or i8 %1103, %1102
  %1105 = icmp ne i8 %1104, 0
  %1106 = select i1 %1105, i64 %1100, i64 %1101
  store i64 %1106, i64* %3, align 8
  br i1 %1105, label %block_.L_400e7b, label %block_400e6f

block_400e6f:                                     ; preds = %routine_ucomisd_MINUS0x58__rbp____xmm0.exit240
  %1107 = load i64, i64* %RBP.i, align 8
  %1108 = add i64 %1107, -80
  %1109 = add i64 %1106, 4
  store i64 %1109, i64* %3, align 8
  %1110 = inttoptr i64 %1108 to i64*
  %1111 = load i64, i64* %1110, align 8
  %1112 = xor i64 %1111, 1
  store i64 %1112, i64* %RAX.i116, align 8
  store i8 0, i8* %12, align 1
  %1113 = trunc i64 %1112 to i32
  %1114 = and i32 %1113, 255
  %1115 = tail call i32 @llvm.ctpop.i32(i32 %1114)
  %1116 = trunc i32 %1115 to i8
  %1117 = and i8 %1116, 1
  %1118 = xor i8 %1117, 1
  store i8 %1118, i8* %13, align 1
  %1119 = icmp eq i64 %1112, 0
  %1120 = zext i1 %1119 to i8
  store i8 %1120, i8* %15, align 1
  %1121 = lshr i64 %1111, 63
  %1122 = trunc i64 %1121 to i8
  store i8 %1122, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1123 = add i64 %1106, 12
  store i64 %1123, i64* %3, align 8
  store i64 %1112, i64* %1110, align 8
  %.pre46 = load i64, i64* %3, align 8
  br label %block_.L_400e7b

block_.L_400e7b:                                  ; preds = %block_400e6f, %routine_ucomisd_MINUS0x58__rbp____xmm0.exit240
  %1124 = phi i64 [ %.pre46, %block_400e6f ], [ %1100, %routine_ucomisd_MINUS0x58__rbp____xmm0.exit240 ]
  %1125 = load i64, i64* %RBP.i, align 8
  %1126 = add i64 %1125, -40
  %1127 = add i64 %1124, 4
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1126 to i64*
  %1129 = load i64, i64* %1128, align 8
  store i64 %1129, i64* %RAX.i116, align 8
  %1130 = add i64 %1129, 8
  %1131 = add i64 %1124, 8
  store i64 %1131, i64* %3, align 8
  %1132 = inttoptr i64 %1130 to i64*
  %1133 = load i64, i64* %1132, align 8
  store i64 %1133, i64* %RAX.i116, align 8
  %1134 = add i64 %1133, 4
  %1135 = add i64 %1124, 12
  store i64 %1135, i64* %3, align 8
  %1136 = inttoptr i64 %1134 to i32*
  %1137 = load i32, i32* %1136, align 4
  %1138 = sext i32 %1137 to i64
  store i64 %1138, i64* %RAX.i116, align 8
  %1139 = add i64 %1125, -80
  %1140 = add i64 %1124, 16
  store i64 %1140, i64* %3, align 8
  %1141 = inttoptr i64 %1139 to i64*
  %1142 = load i64, i64* %1141, align 8
  %1143 = add i64 %1142, %1138
  %1144 = and i64 %1143, 1
  store i64 %1144, i64* %RAX.i116, align 8
  store i8 0, i8* %12, align 1
  %1145 = trunc i64 %1144 to i32
  %1146 = tail call i32 @llvm.ctpop.i32(i32 %1145)
  %1147 = trunc i32 %1146 to i8
  %1148 = xor i8 %1147, 1
  store i8 %1148, i8* %13, align 1
  %1149 = trunc i64 %1144 to i8
  %1150 = xor i8 %1149, 1
  store i8 %1150, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 %1144, i64* %RCX.i523, align 8
  %1151 = add i64 %1124, 26
  store i64 %1151, i64* %3, align 8
  %1152 = load i64, i64* %1128, align 8
  store i64 %1152, i64* %RAX.i116, align 8
  %1153 = add i64 %1152, 4
  %1154 = add i64 %1124, 29
  store i64 %1154, i64* %3, align 8
  %1155 = inttoptr i64 %1153 to i32*
  store i32 %1145, i32* %1155, align 4
  %1156 = load i64, i64* %RBP.i, align 8
  %1157 = add i64 %1156, -40
  %1158 = load i64, i64* %3, align 8
  %1159 = add i64 %1158, 4
  store i64 %1159, i64* %3, align 8
  %1160 = inttoptr i64 %1157 to i64*
  %1161 = load i64, i64* %1160, align 8
  store i64 %1161, i64* %RAX.i116, align 8
  %1162 = add i64 %1161, 8
  %1163 = add i64 %1158, 8
  store i64 %1163, i64* %3, align 8
  %1164 = inttoptr i64 %1162 to i64*
  %1165 = load i64, i64* %1164, align 8
  store i64 %1165, i64* %RAX.i116, align 8
  %1166 = add i64 %1158, 12
  store i64 %1166, i64* %3, align 8
  store i64 %1165, i64* %1160, align 8
  %1167 = load i64, i64* %RBP.i, align 8
  %1168 = add i64 %1167, -80
  %1169 = load i64, i64* %3, align 8
  %1170 = add i64 %1169, 4
  store i64 %1170, i64* %3, align 8
  %1171 = inttoptr i64 %1168 to i64*
  %1172 = load i64, i64* %1171, align 8
  %1173 = trunc i64 %1172 to i8
  %1174 = and i8 %1173, 1
  %1175 = ashr i64 %1172, 1
  store i64 %1175, i64* %RAX.i116, align 8
  store i8 %1174, i8* %12, align 1
  %1176 = trunc i64 %1175 to i32
  %1177 = and i32 %1176, 255
  %1178 = tail call i32 @llvm.ctpop.i32(i32 %1177)
  %1179 = trunc i32 %1178 to i8
  %1180 = and i8 %1179, 1
  %1181 = xor i8 %1180, 1
  store i8 %1181, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1182 = icmp eq i64 %1175, 0
  %1183 = zext i1 %1182 to i8
  store i8 %1183, i8* %15, align 1
  %1184 = lshr i64 %1175, 63
  %1185 = trunc i64 %1184 to i8
  store i8 %1185, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1186 = add i64 %1169, 11
  store i64 %1186, i64* %3, align 8
  store i64 %1175, i64* %1171, align 8
  %1187 = load i64, i64* %RBP.i, align 8
  %1188 = add i64 %1187, -72
  %1189 = load i64, i64* %3, align 8
  %1190 = add i64 %1189, 3
  store i64 %1190, i64* %3, align 8
  %1191 = inttoptr i64 %1188 to i32*
  %1192 = load i32, i32* %1191, align 4
  %1193 = add i32 %1192, 1
  %1194 = zext i32 %1193 to i64
  store i64 %1194, i64* %RAX.i116, align 8
  %1195 = icmp eq i32 %1192, -1
  %1196 = icmp eq i32 %1193, 0
  %1197 = or i1 %1195, %1196
  %1198 = zext i1 %1197 to i8
  store i8 %1198, i8* %12, align 1
  %1199 = and i32 %1193, 255
  %1200 = tail call i32 @llvm.ctpop.i32(i32 %1199)
  %1201 = trunc i32 %1200 to i8
  %1202 = and i8 %1201, 1
  %1203 = xor i8 %1202, 1
  store i8 %1203, i8* %13, align 1
  %1204 = xor i32 %1193, %1192
  %1205 = lshr i32 %1204, 4
  %1206 = trunc i32 %1205 to i8
  %1207 = and i8 %1206, 1
  store i8 %1207, i8* %14, align 1
  %1208 = zext i1 %1196 to i8
  store i8 %1208, i8* %15, align 1
  %1209 = lshr i32 %1193, 31
  %1210 = trunc i32 %1209 to i8
  store i8 %1210, i8* %16, align 1
  %1211 = lshr i32 %1192, 31
  %1212 = xor i32 %1209, %1211
  %1213 = add nuw nsw i32 %1212, %1209
  %1214 = icmp eq i32 %1213, 2
  %1215 = zext i1 %1214 to i8
  store i8 %1215, i8* %17, align 1
  %1216 = add i64 %1189, 9
  store i64 %1216, i64* %3, align 8
  store i32 %1193, i32* %1191, align 4
  %1217 = load i64, i64* %3, align 8
  %1218 = add i64 %1217, -228
  store i64 %1218, i64* %3, align 8
  br label %block_.L_400dd5

block_.L_400ebe:                                  ; preds = %block_.L_400dd5
  %1219 = add i64 %811, -2078
  %1220 = add i64 %811, 5
  %1221 = load i64, i64* %6, align 8
  %1222 = add i64 %1221, -8
  %1223 = inttoptr i64 %1222 to i64*
  store i64 %1220, i64* %1223, align 8
  store i64 %1222, i64* %6, align 8
  store i64 %1219, i64* %3, align 8
  %1224 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 ()* @lrand48 to i64), %struct.Memory* %MEMORY.5)
  %1225 = load i64, i64* %RBP.i, align 8
  %1226 = add i64 %1225, -80
  %1227 = load i64, i64* %RAX.i116, align 8
  %1228 = load i64, i64* %3, align 8
  %1229 = add i64 %1228, 4
  store i64 %1229, i64* %3, align 8
  %1230 = inttoptr i64 %1226 to i64*
  store i64 %1227, i64* %1230, align 8
  %1231 = load i64, i64* %RBP.i, align 8
  %1232 = add i64 %1231, -32
  %1233 = load i64, i64* %3, align 8
  %1234 = add i64 %1233, 4
  store i64 %1234, i64* %3, align 8
  %1235 = inttoptr i64 %1232 to i64*
  %1236 = load i64, i64* %1235, align 8
  store i64 %1236, i64* %RAX.i116, align 8
  %1237 = load i32, i32* bitcast (%G_0x602074_type* @G_0x602074 to i32*), align 8
  %1238 = add i32 %1237, -1
  %1239 = zext i32 %1238 to i64
  store i64 %1239, i64* %RCX.i523, align 8
  %1240 = icmp eq i32 %1237, 0
  %1241 = zext i1 %1240 to i8
  store i8 %1241, i8* %12, align 1
  %1242 = and i32 %1238, 255
  %1243 = tail call i32 @llvm.ctpop.i32(i32 %1242)
  %1244 = trunc i32 %1243 to i8
  %1245 = and i8 %1244, 1
  %1246 = xor i8 %1245, 1
  store i8 %1246, i8* %13, align 1
  %1247 = xor i32 %1238, %1237
  %1248 = lshr i32 %1247, 4
  %1249 = trunc i32 %1248 to i8
  %1250 = and i8 %1249, 1
  store i8 %1250, i8* %14, align 1
  %1251 = icmp eq i32 %1238, 0
  %1252 = zext i1 %1251 to i8
  store i8 %1252, i8* %15, align 1
  %1253 = lshr i32 %1238, 31
  %1254 = trunc i32 %1253 to i8
  store i8 %1254, i8* %16, align 1
  %1255 = lshr i32 %1237, 31
  %1256 = xor i32 %1253, %1255
  %1257 = add nuw nsw i32 %1256, %1255
  %1258 = icmp eq i32 %1257, 2
  %1259 = zext i1 %1258 to i8
  store i8 %1259, i8* %17, align 1
  %1260 = sext i32 %1238 to i64
  store i64 %1260, i64* %RDX.i277, align 8
  %1261 = add i64 %1236, %1260
  %1262 = add i64 %1233, 21
  store i64 %1262, i64* %3, align 8
  %1263 = inttoptr i64 %1261 to i8*
  %1264 = load i8, i8* %1263, align 1
  %1265 = sext i8 %1264 to i64
  %1266 = and i64 %1265, 4294967295
  store i64 %1266, i64* %RCX.i523, align 8
  %1267 = sext i8 %1264 to i32
  %1268 = add nsw i32 %1267, -49
  %1269 = icmp ult i8 %1264, 49
  %1270 = zext i1 %1269 to i8
  store i8 %1270, i8* %12, align 1
  %1271 = and i32 %1268, 255
  %1272 = tail call i32 @llvm.ctpop.i32(i32 %1271)
  %1273 = trunc i32 %1272 to i8
  %1274 = and i8 %1273, 1
  %1275 = xor i8 %1274, 1
  store i8 %1275, i8* %13, align 1
  %1276 = xor i32 %1267, 16
  %1277 = xor i32 %1276, %1268
  %1278 = lshr i32 %1277, 4
  %1279 = trunc i32 %1278 to i8
  %1280 = and i8 %1279, 1
  store i8 %1280, i8* %14, align 1
  %1281 = icmp eq i32 %1268, 0
  %1282 = zext i1 %1281 to i8
  store i8 %1282, i8* %15, align 1
  %1283 = lshr i32 %1268, 31
  %1284 = trunc i32 %1283 to i8
  store i8 %1284, i8* %16, align 1
  %1285 = lshr i32 %1267, 31
  %1286 = xor i32 %1283, %1285
  %1287 = add nuw nsw i32 %1286, %1285
  %1288 = icmp eq i32 %1287, 2
  %1289 = zext i1 %1288 to i8
  store i8 %1289, i8* %17, align 1
  %.v59 = select i1 %1281, i64 30, i64 55
  %1290 = add i64 %1233, %.v59
  store i64 %1290, i64* %3, align 8
  br i1 %1281, label %block_400ee5, label %block_.L_400efe

block_400ee5:                                     ; preds = %block_.L_400ebe
  %1291 = add i64 %1231, -40
  %1292 = add i64 %1290, 4
  store i64 %1292, i64* %3, align 8
  %1293 = inttoptr i64 %1291 to i64*
  %1294 = load i64, i64* %1293, align 8
  store i64 %1294, i64* %RAX.i116, align 8
  %1295 = add i64 %1290, 6
  store i64 %1295, i64* %3, align 8
  %1296 = inttoptr i64 %1294 to i32*
  %1297 = load i32, i32* %1296, align 4
  %1298 = zext i32 %1297 to i64
  store i64 %1298, i64* %RCX.i523, align 8
  %1299 = add i64 %1231, -48
  %1300 = add i64 %1290, 9
  store i64 %1300, i64* %3, align 8
  %1301 = inttoptr i64 %1299 to i32*
  %1302 = load i32, i32* %1301, align 4
  %1303 = add i32 %1302, %1297
  %1304 = zext i32 %1303 to i64
  store i64 %1304, i64* %RCX.i523, align 8
  %1305 = icmp ult i32 %1303, %1297
  %1306 = icmp ult i32 %1303, %1302
  %1307 = or i1 %1305, %1306
  %1308 = zext i1 %1307 to i8
  store i8 %1308, i8* %12, align 1
  %1309 = and i32 %1303, 255
  %1310 = tail call i32 @llvm.ctpop.i32(i32 %1309)
  %1311 = trunc i32 %1310 to i8
  %1312 = and i8 %1311, 1
  %1313 = xor i8 %1312, 1
  store i8 %1313, i8* %13, align 1
  %1314 = xor i32 %1302, %1297
  %1315 = xor i32 %1314, %1303
  %1316 = lshr i32 %1315, 4
  %1317 = trunc i32 %1316 to i8
  %1318 = and i8 %1317, 1
  store i8 %1318, i8* %14, align 1
  %1319 = icmp eq i32 %1303, 0
  %1320 = zext i1 %1319 to i8
  store i8 %1320, i8* %15, align 1
  %1321 = lshr i32 %1303, 31
  %1322 = trunc i32 %1321 to i8
  store i8 %1322, i8* %16, align 1
  %1323 = lshr i32 %1297, 31
  %1324 = lshr i32 %1302, 31
  %1325 = xor i32 %1321, %1323
  %1326 = xor i32 %1321, %1324
  %1327 = add nuw nsw i32 %1325, %1326
  %1328 = icmp eq i32 %1327, 2
  %1329 = zext i1 %1328 to i8
  store i8 %1329, i8* %17, align 1
  %1330 = add i64 %1290, 12
  store i64 %1330, i64* %3, align 8
  store i32 %1303, i32* %1301, align 4
  %1331 = load i64, i64* %RBP.i, align 8
  %1332 = add i64 %1331, -40
  %1333 = load i64, i64* %3, align 8
  %1334 = add i64 %1333, 4
  store i64 %1334, i64* %3, align 8
  %1335 = inttoptr i64 %1332 to i64*
  %1336 = load i64, i64* %1335, align 8
  store i64 %1336, i64* %RAX.i116, align 8
  %1337 = add i64 %1336, 4
  %1338 = add i64 %1333, 7
  store i64 %1338, i64* %3, align 8
  %1339 = inttoptr i64 %1337 to i32*
  %1340 = load i32, i32* %1339, align 4
  %1341 = zext i32 %1340 to i64
  store i64 %1341, i64* %RCX.i523, align 8
  %1342 = add i64 %1331, -52
  %1343 = add i64 %1333, 10
  store i64 %1343, i64* %3, align 8
  %1344 = inttoptr i64 %1342 to i32*
  %1345 = load i32, i32* %1344, align 4
  %1346 = add i32 %1345, %1340
  %1347 = zext i32 %1346 to i64
  store i64 %1347, i64* %RCX.i523, align 8
  %1348 = icmp ult i32 %1346, %1340
  %1349 = icmp ult i32 %1346, %1345
  %1350 = or i1 %1348, %1349
  %1351 = zext i1 %1350 to i8
  store i8 %1351, i8* %12, align 1
  %1352 = and i32 %1346, 255
  %1353 = tail call i32 @llvm.ctpop.i32(i32 %1352)
  %1354 = trunc i32 %1353 to i8
  %1355 = and i8 %1354, 1
  %1356 = xor i8 %1355, 1
  store i8 %1356, i8* %13, align 1
  %1357 = xor i32 %1345, %1340
  %1358 = xor i32 %1357, %1346
  %1359 = lshr i32 %1358, 4
  %1360 = trunc i32 %1359 to i8
  %1361 = and i8 %1360, 1
  store i8 %1361, i8* %14, align 1
  %1362 = icmp eq i32 %1346, 0
  %1363 = zext i1 %1362 to i8
  store i8 %1363, i8* %15, align 1
  %1364 = lshr i32 %1346, 31
  %1365 = trunc i32 %1364 to i8
  store i8 %1365, i8* %16, align 1
  %1366 = lshr i32 %1340, 31
  %1367 = lshr i32 %1345, 31
  %1368 = xor i32 %1364, %1366
  %1369 = xor i32 %1364, %1367
  %1370 = add nuw nsw i32 %1368, %1369
  %1371 = icmp eq i32 %1370, 2
  %1372 = zext i1 %1371 to i8
  store i8 %1372, i8* %17, align 1
  %1373 = add i64 %1333, 13
  store i64 %1373, i64* %3, align 8
  store i32 %1346, i32* %1344, align 4
  %.pre34 = load i64, i64* %RBP.i, align 8
  %.pre35 = load i64, i64* %3, align 8
  br label %block_.L_400efe

block_.L_400efe:                                  ; preds = %block_.L_400ebe, %block_400ee5
  %1374 = phi i64 [ %.pre35, %block_400ee5 ], [ %1290, %block_.L_400ebe ]
  %1375 = phi i64 [ %.pre34, %block_400ee5 ], [ %1231, %block_.L_400ebe ]
  %1376 = add i64 %1375, -48
  %1377 = add i64 %1374, 4
  store i64 %1377, i64* %3, align 8
  %1378 = inttoptr i64 %1376 to i32*
  %1379 = load i32, i32* %1378, align 4
  %1380 = sext i32 %1379 to i64
  store i64 %1380, i64* %RAX.i116, align 8
  %1381 = add i64 %1375, -80
  %1382 = add i64 %1374, 8
  store i64 %1382, i64* %3, align 8
  %1383 = inttoptr i64 %1381 to i64*
  %1384 = load i64, i64* %1383, align 8
  %1385 = add i64 %1384, %1380
  %1386 = and i64 %1385, 1
  store i64 %1386, i64* %RAX.i116, align 8
  store i8 0, i8* %12, align 1
  %1387 = trunc i64 %1386 to i32
  %1388 = tail call i32 @llvm.ctpop.i32(i32 %1387)
  %1389 = trunc i32 %1388 to i8
  %1390 = xor i8 %1389, 1
  store i8 %1390, i8* %13, align 1
  %1391 = trunc i64 %1386 to i8
  %1392 = xor i8 %1391, 1
  store i8 %1392, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 %1386, i64* %RCX.i523, align 8
  %1393 = add i64 %1375, -40
  %1394 = add i64 %1374, 18
  store i64 %1394, i64* %3, align 8
  %1395 = inttoptr i64 %1393 to i64*
  %1396 = load i64, i64* %1395, align 8
  store i64 %1396, i64* %RAX.i116, align 8
  %1397 = add i64 %1374, 20
  store i64 %1397, i64* %3, align 8
  %1398 = inttoptr i64 %1396 to i32*
  store i32 %1387, i32* %1398, align 4
  %1399 = load i64, i64* %3, align 8
  %1400 = add i64 %1399, -2162
  %1401 = add i64 %1399, 5
  %1402 = load i64, i64* %6, align 8
  %1403 = add i64 %1402, -8
  %1404 = inttoptr i64 %1403 to i64*
  store i64 %1401, i64* %1404, align 8
  store i64 %1403, i64* %6, align 8
  store i64 %1400, i64* %3, align 8
  %1405 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 ()* @lrand48 to i64), %struct.Memory* %1224)
  %1406 = load i64, i64* %3, align 8
  %1407 = add i64 %1406, ptrtoint (%G_0x1a9__rip__type* @G_0x1a9__rip_ to i64)
  %1408 = add i64 %1406, 8
  store i64 %1408, i64* %3, align 8
  %1409 = inttoptr i64 %1407 to i64*
  %1410 = load i64, i64* %1409, align 8
  store i64 %1410, i64* %36, align 1
  store double 0.000000e+00, double* %179, align 1
  store i64 10000, i64* %RCX.i523, align 8
  %1411 = load i64, i64* %RBP.i, align 8
  %1412 = add i64 %1411, -120
  %1413 = add i64 %1406, 19
  store i64 %1413, i64* %3, align 8
  %1414 = inttoptr i64 %1412 to i64*
  store i64 10000, i64* %1414, align 8
  %1415 = load i64, i64* %3, align 8
  %1416 = load i64, i64* %180, align 8
  %1417 = ashr i64 %1416, 63
  store i64 %1417, i64* %83, align 8
  %1418 = load i64, i64* %RBP.i, align 8
  %1419 = add i64 %1418, -120
  %1420 = add i64 %1415, 6
  store i64 %1420, i64* %3, align 8
  %1421 = inttoptr i64 %1419 to i64*
  %1422 = load i64, i64* %1421, align 8
  store i64 %1422, i64* %RSI.i242, align 8
  %1423 = add i64 %1415, 9
  store i64 %1423, i64* %3, align 8
  %1424 = sext i64 %1422 to i128
  %1425 = and i128 %1424, -18446744073709551616
  %1426 = zext i64 %1417 to i128
  %1427 = shl nuw i128 %1426, 64
  %1428 = zext i64 %1416 to i128
  %1429 = or i128 %1427, %1428
  %1430 = zext i64 %1422 to i128
  %1431 = or i128 %1425, %1430
  %1432 = sdiv i128 %1429, %1431
  %1433 = trunc i128 %1432 to i64
  %1434 = and i128 %1432, 18446744073709551615
  %1435 = sext i64 %1433 to i128
  %1436 = and i128 %1435, -18446744073709551616
  %1437 = or i128 %1436, %1434
  %1438 = icmp eq i128 %1432, %1437
  br i1 %1438, label %1441, label %1439

; <label>:1439:                                   ; preds = %block_.L_400efe
  %1440 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1423, %struct.Memory* %1405)
  %.pre36 = load i64, i64* %RDX.i277, align 8
  %.pre37 = load i64, i64* %3, align 8
  %.pre38 = load i64, i64* %RBP.i, align 8
  br label %routine_idivq__rsi.exit

; <label>:1441:                                   ; preds = %block_.L_400efe
  %1442 = srem i128 %1429, %1431
  %1443 = trunc i128 %1442 to i64
  store i64 %1433, i64* %180, align 8
  store i64 %1443, i64* %83, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  br label %routine_idivq__rsi.exit

routine_idivq__rsi.exit:                          ; preds = %1441, %1439
  %1444 = phi i64 [ %.pre38, %1439 ], [ %1418, %1441 ]
  %1445 = phi i64 [ %.pre37, %1439 ], [ %1423, %1441 ]
  %1446 = phi i64 [ %.pre36, %1439 ], [ %1443, %1441 ]
  %1447 = phi %struct.Memory* [ %1440, %1439 ], [ %1405, %1441 ]
  %1448 = sitofp i64 %1446 to double
  %1449 = load double, double* %35, align 1
  %1450 = fdiv double %1448, %1449
  store double %1450, double* %182, align 1
  %1451 = add i64 %1444, -88
  %1452 = add i64 %1445, 14
  store i64 %1452, i64* %3, align 8
  %1453 = inttoptr i64 %1451 to double*
  store double %1450, double* %1453, align 8
  %1454 = load i64, i64* %RBP.i, align 8
  %1455 = add i64 %1454, -24
  %1456 = load i64, i64* %3, align 8
  %1457 = add i64 %1456, 5
  store i64 %1457, i64* %3, align 8
  %1458 = inttoptr i64 %1455 to i64*
  %1459 = load i64, i64* %1458, align 8
  store i64 %1459, i64* %36, align 1
  store double 0.000000e+00, double* %179, align 1
  %1460 = add i64 %1454, -88
  %1461 = add i64 %1456, 10
  store i64 %1461, i64* %3, align 8
  %1462 = bitcast i64 %1459 to double
  %1463 = inttoptr i64 %1460 to double*
  %1464 = load double, double* %1463, align 8
  %1465 = fcmp uno double %1462, %1464
  br i1 %1465, label %1466, label %1476

; <label>:1466:                                   ; preds = %routine_idivq__rsi.exit
  %1467 = fadd double %1462, %1464
  %1468 = bitcast double %1467 to i64
  %1469 = and i64 %1468, 9221120237041090560
  %1470 = icmp eq i64 %1469, 9218868437227405312
  %1471 = and i64 %1468, 2251799813685247
  %1472 = icmp ne i64 %1471, 0
  %1473 = and i1 %1470, %1472
  br i1 %1473, label %1474, label %1482

; <label>:1474:                                   ; preds = %1466
  %1475 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1461, %struct.Memory* %1447)
  %.pre39 = load i64, i64* %3, align 8
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit

; <label>:1476:                                   ; preds = %routine_idivq__rsi.exit
  %1477 = fcmp ogt double %1462, %1464
  br i1 %1477, label %1482, label %1478

; <label>:1478:                                   ; preds = %1476
  %1479 = fcmp olt double %1462, %1464
  br i1 %1479, label %1482, label %1480

; <label>:1480:                                   ; preds = %1478
  %1481 = fcmp oeq double %1462, %1464
  br i1 %1481, label %1482, label %1486

; <label>:1482:                                   ; preds = %1480, %1478, %1476, %1466
  %1483 = phi i8 [ 0, %1476 ], [ 0, %1478 ], [ 1, %1480 ], [ 1, %1466 ]
  %1484 = phi i8 [ 0, %1476 ], [ 0, %1478 ], [ 0, %1480 ], [ 1, %1466 ]
  %1485 = phi i8 [ 0, %1476 ], [ 1, %1478 ], [ 0, %1480 ], [ 1, %1466 ]
  store i8 %1483, i8* %15, align 1
  store i8 %1484, i8* %13, align 1
  store i8 %1485, i8* %12, align 1
  br label %1486

; <label>:1486:                                   ; preds = %1482, %1480
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd_MINUS0x58__rbp____xmm0.exit

routine_ucomisd_MINUS0x58__rbp____xmm0.exit:      ; preds = %1486, %1474
  %1487 = phi i64 [ %.pre39, %1474 ], [ %1461, %1486 ]
  %1488 = phi %struct.Memory* [ %1475, %1474 ], [ %1447, %1486 ]
  %1489 = add i64 %1487, 18
  %1490 = add i64 %1487, 6
  %1491 = load i8, i8* %12, align 1
  %1492 = load i8, i8* %15, align 1
  %1493 = or i8 %1492, %1491
  %1494 = icmp ne i8 %1493, 0
  %1495 = select i1 %1494, i64 %1489, i64 %1490
  store i64 %1495, i64* %3, align 8
  br i1 %1494, label %block_.L_400f5d, label %block_400f51

block_400f51:                                     ; preds = %routine_ucomisd_MINUS0x58__rbp____xmm0.exit
  %1496 = load i64, i64* %RBP.i, align 8
  %1497 = add i64 %1496, -80
  %1498 = add i64 %1495, 4
  store i64 %1498, i64* %3, align 8
  %1499 = inttoptr i64 %1497 to i64*
  %1500 = load i64, i64* %1499, align 8
  %1501 = xor i64 %1500, 1
  store i64 %1501, i64* %RAX.i116, align 8
  store i8 0, i8* %12, align 1
  %1502 = trunc i64 %1501 to i32
  %1503 = and i32 %1502, 255
  %1504 = tail call i32 @llvm.ctpop.i32(i32 %1503)
  %1505 = trunc i32 %1504 to i8
  %1506 = and i8 %1505, 1
  %1507 = xor i8 %1506, 1
  store i8 %1507, i8* %13, align 1
  %1508 = icmp eq i64 %1501, 0
  %1509 = zext i1 %1508 to i8
  store i8 %1509, i8* %15, align 1
  %1510 = lshr i64 %1500, 63
  %1511 = trunc i64 %1510 to i8
  store i8 %1511, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1512 = add i64 %1495, 12
  store i64 %1512, i64* %3, align 8
  store i64 %1501, i64* %1499, align 8
  %.pre40 = load i64, i64* %3, align 8
  br label %block_.L_400f5d

block_.L_400f5d:                                  ; preds = %block_400f51, %routine_ucomisd_MINUS0x58__rbp____xmm0.exit
  %1513 = phi i64 [ %.pre40, %block_400f51 ], [ %1489, %routine_ucomisd_MINUS0x58__rbp____xmm0.exit ]
  %1514 = load i64, i64* %RBP.i, align 8
  %1515 = add i64 %1514, -52
  %1516 = add i64 %1513, 4
  store i64 %1516, i64* %3, align 8
  %1517 = inttoptr i64 %1515 to i32*
  %1518 = load i32, i32* %1517, align 4
  %1519 = sext i32 %1518 to i64
  store i64 %1519, i64* %RAX.i116, align 8
  %1520 = add i64 %1514, -80
  %1521 = add i64 %1513, 8
  store i64 %1521, i64* %3, align 8
  %1522 = inttoptr i64 %1520 to i64*
  %1523 = load i64, i64* %1522, align 8
  %1524 = add i64 %1523, %1519
  %1525 = and i64 %1524, 1
  store i64 %1525, i64* %RAX.i116, align 8
  store i8 0, i8* %12, align 1
  %1526 = trunc i64 %1525 to i32
  %1527 = tail call i32 @llvm.ctpop.i32(i32 %1526)
  %1528 = trunc i32 %1527 to i8
  %1529 = xor i8 %1528, 1
  store i8 %1529, i8* %13, align 1
  %1530 = trunc i64 %1525 to i8
  %1531 = xor i8 %1530, 1
  store i8 %1531, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 %1525, i64* %RCX.i523, align 8
  %1532 = add i64 %1514, -40
  %1533 = add i64 %1513, 18
  store i64 %1533, i64* %3, align 8
  %1534 = inttoptr i64 %1532 to i64*
  %1535 = load i64, i64* %1534, align 8
  store i64 %1535, i64* %RAX.i116, align 8
  %1536 = add i64 %1535, 4
  %1537 = add i64 %1513, 21
  store i64 %1537, i64* %3, align 8
  %1538 = inttoptr i64 %1536 to i32*
  store i32 %1526, i32* %1538, align 4
  %1539 = load i64, i64* %RBP.i, align 8
  %1540 = add i64 %1539, -16
  %1541 = load i64, i64* %3, align 8
  %1542 = add i64 %1541, 4
  store i64 %1542, i64* %3, align 8
  %1543 = inttoptr i64 %1540 to i64*
  %1544 = load i64, i64* %1543, align 8
  store i64 %1544, i64* %RAX.i116, align 8
  %1545 = add i64 %1539, -40
  %1546 = add i64 %1541, 8
  store i64 %1546, i64* %3, align 8
  %1547 = inttoptr i64 %1545 to i64*
  store i64 %1544, i64* %1547, align 8
  %1548 = load i64, i64* %RBP.i, align 8
  %1549 = add i64 %1548, -64
  %1550 = load i64, i64* %3, align 8
  %1551 = add i64 %1550, 3
  store i64 %1551, i64* %3, align 8
  %1552 = inttoptr i64 %1549 to i32*
  %1553 = load i32, i32* %1552, align 4
  %1554 = add i32 %1553, 1
  %1555 = zext i32 %1554 to i64
  store i64 %1555, i64* %RAX.i116, align 8
  %1556 = icmp eq i32 %1553, -1
  %1557 = icmp eq i32 %1554, 0
  %1558 = or i1 %1556, %1557
  %1559 = zext i1 %1558 to i8
  store i8 %1559, i8* %12, align 1
  %1560 = and i32 %1554, 255
  %1561 = tail call i32 @llvm.ctpop.i32(i32 %1560)
  %1562 = trunc i32 %1561 to i8
  %1563 = and i8 %1562, 1
  %1564 = xor i8 %1563, 1
  store i8 %1564, i8* %13, align 1
  %1565 = xor i32 %1554, %1553
  %1566 = lshr i32 %1565, 4
  %1567 = trunc i32 %1566 to i8
  %1568 = and i8 %1567, 1
  store i8 %1568, i8* %14, align 1
  %1569 = zext i1 %1557 to i8
  store i8 %1569, i8* %15, align 1
  %1570 = lshr i32 %1554, 31
  %1571 = trunc i32 %1570 to i8
  store i8 %1571, i8* %16, align 1
  %1572 = lshr i32 %1553, 31
  %1573 = xor i32 %1570, %1572
  %1574 = add nuw nsw i32 %1573, %1570
  %1575 = icmp eq i32 %1574, 2
  %1576 = zext i1 %1575 to i8
  store i8 %1576, i8* %17, align 1
  %1577 = add i64 %1550, 9
  store i64 %1577, i64* %3, align 8
  store i32 %1554, i32* %1552, align 4
  %1578 = load i64, i64* %3, align 8
  %1579 = add i64 %1578, -757
  store i64 %1579, i64* %3, align 8
  br label %block_.L_400c8e

block_.L_400f88:                                  ; preds = %block_.L_400c8e
  %1580 = add i64 %184, -68
  %1581 = add i64 %220, 7
  store i64 %1581, i64* %3, align 8
  %1582 = inttoptr i64 %1580 to i32*
  store i32 0, i32* %1582, align 4
  %.pre29 = load i64, i64* %3, align 8
  br label %block_.L_400f8f

block_.L_400f8f:                                  ; preds = %block_.L_400fb9, %block_.L_400f88
  %1583 = phi i64 [ %1702, %block_.L_400fb9 ], [ %.pre29, %block_.L_400f88 ]
  %1584 = load i64, i64* %RBP.i, align 8
  %1585 = add i64 %1584, -68
  %1586 = add i64 %1583, 3
  store i64 %1586, i64* %3, align 8
  %1587 = inttoptr i64 %1585 to i32*
  %1588 = load i32, i32* %1587, align 4
  %1589 = zext i32 %1588 to i64
  store i64 %1589, i64* %RAX.i116, align 8
  %1590 = load i32, i32* bitcast (%G_0x602074_type* @G_0x602074 to i32*), align 8
  %1591 = sub i32 %1588, %1590
  %1592 = icmp ult i32 %1588, %1590
  %1593 = zext i1 %1592 to i8
  store i8 %1593, i8* %12, align 1
  %1594 = and i32 %1591, 255
  %1595 = tail call i32 @llvm.ctpop.i32(i32 %1594)
  %1596 = trunc i32 %1595 to i8
  %1597 = and i8 %1596, 1
  %1598 = xor i8 %1597, 1
  store i8 %1598, i8* %13, align 1
  %1599 = xor i32 %1590, %1588
  %1600 = xor i32 %1599, %1591
  %1601 = lshr i32 %1600, 4
  %1602 = trunc i32 %1601 to i8
  %1603 = and i8 %1602, 1
  store i8 %1603, i8* %14, align 1
  %1604 = icmp eq i32 %1591, 0
  %1605 = zext i1 %1604 to i8
  store i8 %1605, i8* %15, align 1
  %1606 = lshr i32 %1591, 31
  %1607 = trunc i32 %1606 to i8
  store i8 %1607, i8* %16, align 1
  %1608 = lshr i32 %1588, 31
  %1609 = lshr i32 %1590, 31
  %1610 = xor i32 %1609, %1608
  %1611 = xor i32 %1606, %1608
  %1612 = add nuw nsw i32 %1611, %1610
  %1613 = icmp eq i32 %1612, 2
  %1614 = zext i1 %1613 to i8
  store i8 %1614, i8* %17, align 1
  %1615 = icmp ne i8 %1607, 0
  %1616 = xor i1 %1615, %1613
  %.v55 = select i1 %1616, i64 16, i64 68
  %1617 = add i64 %1583, %.v55
  store i64 %1617, i64* %3, align 8
  br i1 %1616, label %block_400f9f, label %block_.L_400fd3

block_400f9f:                                     ; preds = %block_.L_400f8f
  %1618 = add i64 %1584, -40
  %1619 = add i64 %1617, 4
  store i64 %1619, i64* %3, align 8
  %1620 = inttoptr i64 %1618 to i64*
  %1621 = load i64, i64* %1620, align 8
  store i64 %1621, i64* %RAX.i116, align 8
  %1622 = add i64 %1617, 6
  store i64 %1622, i64* %3, align 8
  %1623 = inttoptr i64 %1621 to i32*
  %1624 = load i32, i32* %1623, align 4
  %1625 = zext i32 %1624 to i64
  store i64 %1625, i64* %RCX.i523, align 8
  %1626 = add i64 %1617, 10
  store i64 %1626, i64* %3, align 8
  %1627 = load i64, i64* %1620, align 8
  store i64 %1627, i64* %RAX.i116, align 8
  %1628 = add i64 %1627, 4
  %1629 = add i64 %1617, 13
  store i64 %1629, i64* %3, align 8
  %1630 = inttoptr i64 %1628 to i32*
  %1631 = load i32, i32* %1630, align 4
  %1632 = sub i32 %1624, %1631
  %1633 = icmp ult i32 %1624, %1631
  %1634 = zext i1 %1633 to i8
  store i8 %1634, i8* %12, align 1
  %1635 = and i32 %1632, 255
  %1636 = tail call i32 @llvm.ctpop.i32(i32 %1635)
  %1637 = trunc i32 %1636 to i8
  %1638 = and i8 %1637, 1
  %1639 = xor i8 %1638, 1
  store i8 %1639, i8* %13, align 1
  %1640 = xor i32 %1631, %1624
  %1641 = xor i32 %1640, %1632
  %1642 = lshr i32 %1641, 4
  %1643 = trunc i32 %1642 to i8
  %1644 = and i8 %1643, 1
  store i8 %1644, i8* %14, align 1
  %1645 = icmp eq i32 %1632, 0
  %1646 = zext i1 %1645 to i8
  store i8 %1646, i8* %15, align 1
  %1647 = lshr i32 %1632, 31
  %1648 = trunc i32 %1647 to i8
  store i8 %1648, i8* %16, align 1
  %1649 = lshr i32 %1624, 31
  %1650 = lshr i32 %1631, 31
  %1651 = xor i32 %1650, %1649
  %1652 = xor i32 %1647, %1649
  %1653 = add nuw nsw i32 %1652, %1651
  %1654 = icmp eq i32 %1653, 2
  %1655 = zext i1 %1654 to i8
  store i8 %1655, i8* %17, align 1
  %.v56 = select i1 %1645, i64 26, i64 19
  %1656 = add i64 %1617, %.v56
  store i64 %1656, i64* %3, align 8
  br i1 %1645, label %block_.L_400fb9, label %block_400fb2

block_400fb2:                                     ; preds = %block_400f9f
  %1657 = add i64 %1584, -44
  %1658 = add i64 %1656, 7
  store i64 %1658, i64* %3, align 8
  %1659 = inttoptr i64 %1657 to i32*
  store i32 1, i32* %1659, align 4
  %.pre30 = load i64, i64* %RBP.i, align 8
  %.pre31 = load i64, i64* %3, align 8
  br label %block_.L_400fb9

block_.L_400fb9:                                  ; preds = %block_400fb2, %block_400f9f
  %1660 = phi i64 [ %.pre31, %block_400fb2 ], [ %1656, %block_400f9f ]
  %1661 = phi i64 [ %.pre30, %block_400fb2 ], [ %1584, %block_400f9f ]
  %1662 = add i64 %1661, -40
  %1663 = add i64 %1660, 4
  store i64 %1663, i64* %3, align 8
  %1664 = inttoptr i64 %1662 to i64*
  %1665 = load i64, i64* %1664, align 8
  store i64 %1665, i64* %RAX.i116, align 8
  %1666 = add i64 %1665, 8
  %1667 = add i64 %1660, 8
  store i64 %1667, i64* %3, align 8
  %1668 = inttoptr i64 %1666 to i64*
  %1669 = load i64, i64* %1668, align 8
  store i64 %1669, i64* %RAX.i116, align 8
  %1670 = add i64 %1660, 12
  store i64 %1670, i64* %3, align 8
  store i64 %1669, i64* %1664, align 8
  %1671 = load i64, i64* %RBP.i, align 8
  %1672 = add i64 %1671, -68
  %1673 = load i64, i64* %3, align 8
  %1674 = add i64 %1673, 3
  store i64 %1674, i64* %3, align 8
  %1675 = inttoptr i64 %1672 to i32*
  %1676 = load i32, i32* %1675, align 4
  %1677 = add i32 %1676, 1
  %1678 = zext i32 %1677 to i64
  store i64 %1678, i64* %RAX.i116, align 8
  %1679 = icmp eq i32 %1676, -1
  %1680 = icmp eq i32 %1677, 0
  %1681 = or i1 %1679, %1680
  %1682 = zext i1 %1681 to i8
  store i8 %1682, i8* %12, align 1
  %1683 = and i32 %1677, 255
  %1684 = tail call i32 @llvm.ctpop.i32(i32 %1683)
  %1685 = trunc i32 %1684 to i8
  %1686 = and i8 %1685, 1
  %1687 = xor i8 %1686, 1
  store i8 %1687, i8* %13, align 1
  %1688 = xor i32 %1677, %1676
  %1689 = lshr i32 %1688, 4
  %1690 = trunc i32 %1689 to i8
  %1691 = and i8 %1690, 1
  store i8 %1691, i8* %14, align 1
  %1692 = zext i1 %1680 to i8
  store i8 %1692, i8* %15, align 1
  %1693 = lshr i32 %1677, 31
  %1694 = trunc i32 %1693 to i8
  store i8 %1694, i8* %16, align 1
  %1695 = lshr i32 %1676, 31
  %1696 = xor i32 %1693, %1695
  %1697 = add nuw nsw i32 %1696, %1693
  %1698 = icmp eq i32 %1697, 2
  %1699 = zext i1 %1698 to i8
  store i8 %1699, i8* %17, align 1
  %1700 = add i64 %1673, 9
  store i64 %1700, i64* %3, align 8
  store i32 %1677, i32* %1675, align 4
  %1701 = load i64, i64* %3, align 8
  %1702 = add i64 %1701, -63
  store i64 %1702, i64* %3, align 8
  br label %block_.L_400f8f

block_.L_400fd3:                                  ; preds = %block_.L_400f8f
  %1703 = add i64 %1584, -44
  %1704 = add i64 %1617, 3
  store i64 %1704, i64* %3, align 8
  %1705 = inttoptr i64 %1703 to i32*
  %1706 = load i32, i32* %1705, align 4
  %1707 = zext i32 %1706 to i64
  store i64 %1707, i64* %RAX.i116, align 8
  %1708 = load i64, i64* %6, align 8
  %1709 = add i64 %1708, 128
  store i64 %1709, i64* %6, align 8
  %1710 = icmp ugt i64 %1708, -129
  %1711 = zext i1 %1710 to i8
  store i8 %1711, i8* %12, align 1
  %1712 = trunc i64 %1709 to i32
  %1713 = and i32 %1712, 255
  %1714 = tail call i32 @llvm.ctpop.i32(i32 %1713)
  %1715 = trunc i32 %1714 to i8
  %1716 = and i8 %1715, 1
  %1717 = xor i8 %1716, 1
  store i8 %1717, i8* %13, align 1
  %1718 = xor i64 %1709, %1708
  %1719 = lshr i64 %1718, 4
  %1720 = trunc i64 %1719 to i8
  %1721 = and i8 %1720, 1
  store i8 %1721, i8* %14, align 1
  %1722 = icmp eq i64 %1709, 0
  %1723 = zext i1 %1722 to i8
  store i8 %1723, i8* %15, align 1
  %1724 = lshr i64 %1709, 63
  %1725 = trunc i64 %1724 to i8
  store i8 %1725, i8* %16, align 1
  %1726 = lshr i64 %1708, 63
  %1727 = xor i64 %1724, %1726
  %1728 = add nuw nsw i64 %1727, %1724
  %1729 = icmp eq i64 %1728, 2
  %1730 = zext i1 %1729 to i8
  store i8 %1730, i8* %17, align 1
  %1731 = add i64 %1617, 11
  store i64 %1731, i64* %3, align 8
  %1732 = add i64 %1708, 136
  %1733 = inttoptr i64 %1709 to i64*
  %1734 = load i64, i64* %1733, align 8
  store i64 %1734, i64* %RBP.i, align 8
  store i64 %1732, i64* %6, align 8
  %1735 = add i64 %1617, 12
  store i64 %1735, i64* %3, align 8
  %1736 = inttoptr i64 %1732 to i64*
  %1737 = load i64, i64* %1736, align 8
  store i64 %1737, i64* %3, align 8
  %1738 = add i64 %1708, 144
  store i64 %1738, i64* %6, align 8
  ret %struct.Memory* %MEMORY.0
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_subq__0x80___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -128
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 128
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x1f___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 31, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_0x602074___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x602074_type* @G_0x602074 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_subl__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline
define %struct.Memory* @routine_idivl__edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDI, align 4
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_0x602074___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x602074_type* @G_0x602074 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_400f88(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl_MINUS0x3c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -60
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_400dc5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_callq_.lrand48_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl__0x1f__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -31
  %10 = icmp ult i32 %8, 31
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_400db2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_imull__0x1f__MINUS0x44__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i64 %9, 31
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RCX, align 8
  %13 = mul i64 %9, 133143986176
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
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
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl__0x31___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -49
  %8 = icmp ult i32 %4, 49
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jne_.L_400d09(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addl_MINUS0x34__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq___rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addq_MINUS0x50__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %9, %3
  store i64 %10, i64* %RAX, align 8
  %11 = icmp ult i64 %10, %3
  %12 = icmp ult i64 %10, %9
  %13 = or i1 %11, %12
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i64 %10 to i32
  %17 = and i32 %16, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 %9, %3
  %24 = xor i64 %23, %10
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i64 %10, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i64 %10, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i64 %3, 63
  %36 = lshr i64 %9, 63
  %37 = xor i64 %32, %35
  %38 = xor i64 %32, %36
  %39 = add nuw nsw i64 %37, %38
  %40 = icmp eq i64 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_andq__0x1___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 1
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = trunc i64 %6 to i32
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = trunc i64 %6 to i8
  %14 = xor i8 %13, 1
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__ecx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd_0x39f__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x39f__rip__type* @G_0x39f__rip_ to i64)
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x3e8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1000, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__ecx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_idivq__rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = sext i64 %3 to i128
  %11 = and i128 %10, -18446744073709551616
  %12 = zext i64 %9 to i128
  %13 = shl nuw i128 %12, 64
  %14 = zext i64 %7 to i128
  %15 = or i128 %13, %14
  %16 = zext i64 %3 to i128
  %17 = or i128 %11, %16
  %18 = sdiv i128 %15, %17
  %19 = trunc i128 %18 to i64
  %20 = and i128 %18, 18446744073709551615
  %21 = sext i64 %19 to i128
  %22 = and i128 %21, -18446744073709551616
  %23 = or i128 %22, %20
  %24 = icmp eq i128 %18, %23
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %block_400488
  %26 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

; <label>:27:                                     ; preds = %block_400488
  %28 = srem i128 %15, %17
  %29 = trunc i128 %28 to i64
  store i64 %19, i64* %6, align 8
  store i64 %29, i64* %8, align 8
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
  br label %_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVrdxraxI2RnImEEEP6MemoryS4_R5StateT_.exit: ; preds = %27, %25
  %36 = phi %struct.Memory* [ %26, %25 ], [ %2, %27 ]
  ret %struct.Memory* %36
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdq__rdx___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = sitofp i64 %4 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_ucomisd_MINUS0x58__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fcmp uno double %9, %11
  br i1 %12, label %13, label %23

; <label>:13:                                     ; preds = %block_400488
  %14 = fadd double %9, %11
  %15 = bitcast double %14 to i64
  %16 = and i64 %15, 9221120237041090560
  %17 = icmp eq i64 %16, 9218868437227405312
  %18 = and i64 %15, 2251799813685247
  %19 = icmp ne i64 %18, 0
  %20 = and i1 %17, %19
  br i1 %20, label %21, label %29

; <label>:21:                                     ; preds = %13
  %22 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:23:                                     ; preds = %block_400488
  %24 = fcmp ogt double %9, %11
  br i1 %24, label %29, label %25

; <label>:25:                                     ; preds = %23
  %26 = fcmp olt double %9, %11
  br i1 %26, label %29, label %27

; <label>:27:                                     ; preds = %25
  %28 = fcmp oeq double %9, %11
  br i1 %28, label %29, label %36

; <label>:29:                                     ; preds = %27, %25, %23, %13
  %30 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 1, %27 ], [ 1, %13 ]
  %31 = phi i8 [ 0, %23 ], [ 0, %25 ], [ 0, %27 ], [ 1, %13 ]
  %32 = phi i8 [ 0, %23 ], [ 1, %25 ], [ 0, %27 ], [ 1, %13 ]
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %32, i8* %35, align 1
  br label %36

; <label>:36:                                     ; preds = %29, %27
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %39, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tE3MVnI7vec64_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %36, %21
  %40 = phi %struct.Memory* [ %22, %21 ], [ %2, %36 ]
  ret %struct.Memory* %40
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jbe_.L_400d6f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_xorq__0x1___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = xor i64 %3, 1
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = trunc i64 %6 to i32
  %9 = and i32 %8, 255
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp eq i64 %6, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %3, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_sarq__0x1___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i8
  %7 = and i8 %6, 1
  %8 = ashr i64 %3, 1
  store i64 %8, i64* %RAX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %11 = trunc i64 %8 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  store i8 %16, i8* %10, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %19 = icmp eq i64 %8, 0
  %20 = zext i1 %19 to i8
  store i8 %20, i8* %18, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %22 = lshr i64 %8, 63
  %23 = trunc i64 %22 to i8
  store i8 %23, i8* %21, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400ccb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400db7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400caf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -56
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_400ebe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_imull__0x1f__MINUS0x3c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i64 %9, 31
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RCX, align 8
  %13 = mul i64 %9, 133143986176
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
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
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %25, align 1
  %26 = lshr i32 %11, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %16, i8* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jne_.L_400e15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd_0x293__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x293__rip__type* @G_0x293__rip_ to i64)
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jbe_.L_400e7b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400dd5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl_0x602074___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x602074_type* @G_0x602074 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jne_.L_400efe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd_0x1a9__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x1a9__rip__type* @G_0x1a9__rip_ to i64)
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x2710___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 10000, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x78__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jbe_.L_400f5d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400c8e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl_0x602074___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x602074_type* @G_0x602074 to i32*), align 8
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_400fd3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_cmpl_0x4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 4
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_je_.L_400fb9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400f8f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_addq__0x80___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 128
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -129
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
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
attributes #2 = { alwaysinline norecurse nounwind }
attributes #3 = { alwaysinline nounwind }
