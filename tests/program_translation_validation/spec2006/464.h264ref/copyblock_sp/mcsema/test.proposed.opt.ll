; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
%G__0x4b2750_type = type <{ [8 x i8] }>
%G__0x4b28d0_type = type <{ [8 x i8] }>
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
@G_0x70fcf0 = local_unnamed_addr global %G_0x70fcf0_type zeroinitializer
@G__0x4b2750 = global %G__0x4b2750_type zeroinitializer
@G__0x4b28d0 = global %G__0x4b28d0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @abs(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_475150.sign(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @copyblock_sp(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -232
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 224
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i1385 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 2, i64* %RAX.i1385, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1402 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 1, i64* %RCX.i1402, align 8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i1446 = getelementptr inbounds %union.anon, %union.anon* %41, i64 0, i32 0
  store i64 6, i64* %RDX.i1446, align 8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i1443 = bitcast %union.anon* %42 to i32*
  %43 = add i64 %7, -12
  %44 = load i32, i32* %EDI.i1443, align 4
  %45 = add i64 %10, 28
  store i64 %45, i64* %3, align 8
  %46 = inttoptr i64 %43 to i32*
  store i32 %44, i32* %46, align 4
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i1440 = bitcast %union.anon* %47 to i32*
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -8
  %50 = load i32, i32* %ESI.i1440, align 4
  %51 = load i64, i64* %3, align 8
  %52 = add i64 %51, 3
  store i64 %52, i64* %3, align 8
  %53 = inttoptr i64 %49 to i32*
  store i32 %50, i32* %53, align 4
  %R8.i1438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %54 = load i64, i64* %3, align 8
  %55 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %55, i64* %R8.i1438, align 8
  %56 = add i64 %55, 14168
  %57 = add i64 %54, 15
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %56 to i64*
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %R8.i1438, align 8
  %R9.i1434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  store i64 %55, i64* %R9.i1434, align 8
  %60 = add i64 %55, 12
  %61 = add i64 %54, 27
  store i64 %61, i64* %3, align 8
  %62 = inttoptr i64 %60 to i32*
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = mul nsw i64 %64, 632
  store i64 %65, i64* %R9.i1434, align 8
  %66 = lshr i64 %65, 63
  %67 = add i64 %65, %59
  store i64 %67, i64* %R8.i1438, align 8
  %68 = icmp ult i64 %67, %59
  %69 = icmp ult i64 %67, %65
  %70 = or i1 %68, %69
  %71 = zext i1 %70 to i8
  store i8 %71, i8* %14, align 1
  %72 = trunc i64 %67 to i32
  %73 = and i32 %72, 255
  %74 = tail call i32 @llvm.ctpop.i32(i32 %73)
  %75 = trunc i32 %74 to i8
  %76 = and i8 %75, 1
  %77 = xor i8 %76, 1
  store i8 %77, i8* %21, align 1
  %78 = xor i64 %65, %59
  %79 = xor i64 %78, %67
  %80 = lshr i64 %79, 4
  %81 = trunc i64 %80 to i8
  %82 = and i8 %81, 1
  store i8 %82, i8* %26, align 1
  %83 = icmp eq i64 %67, 0
  %84 = zext i1 %83 to i8
  store i8 %84, i8* %29, align 1
  %85 = lshr i64 %67, 63
  %86 = trunc i64 %85 to i8
  store i8 %86, i8* %32, align 1
  %87 = lshr i64 %59, 63
  %88 = xor i64 %85, %87
  %89 = xor i64 %85, %66
  %90 = add nuw nsw i64 %88, %89
  %91 = icmp eq i64 %90, 2
  %92 = zext i1 %91 to i8
  store i8 %92, i8* %38, align 1
  %93 = load i64, i64* %RBP.i, align 8
  %94 = add i64 %93, -72
  %95 = add i64 %54, 41
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %94 to i64*
  store i64 %67, i64* %96, align 8
  %97 = load i64, i64* %RBP.i, align 8
  %98 = add i64 %97, -72
  %99 = load i64, i64* %3, align 8
  %100 = add i64 %99, 4
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %98 to i64*
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %R8.i1438, align 8
  %RSI.i1419 = getelementptr inbounds %union.anon, %union.anon* %47, i64 0, i32 0
  %103 = add i64 %102, 16
  %104 = add i64 %99, 8
  store i64 %104, i64* %3, align 8
  %105 = inttoptr i64 %103 to i32*
  %106 = load i32, i32* %105, align 4
  %107 = zext i32 %106 to i64
  store i64 %107, i64* %RSI.i1419, align 8
  store i8 0, i8* %14, align 1
  %108 = and i32 %106, 255
  %109 = tail call i32 @llvm.ctpop.i32(i32 %108)
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  store i8 %112, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %113 = icmp eq i32 %106, 0
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %29, align 1
  %115 = lshr i32 %106, 31
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %EAX.i1414 = bitcast %union.anon* %39 to i32*
  %117 = add i64 %97, -164
  %118 = load i32, i32* %EAX.i1414, align 4
  %119 = add i64 %99, 17
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %117 to i32*
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %ESI.i1440, align 4
  %122 = zext i32 %121 to i64
  %123 = load i64, i64* %3, align 8
  store i64 %122, i64* %RAX.i1385, align 8
  %EDX.i1408 = bitcast %union.anon* %41 to i32*
  %124 = load i64, i64* %RBP.i, align 8
  %125 = add i64 %124, -168
  %126 = load i32, i32* %EDX.i1408, align 4
  %127 = add i64 %123, 8
  store i64 %127, i64* %3, align 8
  %128 = inttoptr i64 %125 to i32*
  store i32 %126, i32* %128, align 4
  %129 = load i64, i64* %3, align 8
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %131 = load i32, i32* %EAX.i1414, align 8
  %132 = sext i32 %131 to i64
  %133 = lshr i64 %132, 32
  store i64 %133, i64* %130, align 8
  %134 = load i64, i64* %RBP.i, align 8
  %135 = add i64 %134, -168
  %136 = add i64 %129, 7
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %135 to i32*
  %138 = load i32, i32* %137, align 4
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %RSI.i1419, align 8
  %140 = add i64 %129, 9
  store i64 %140, i64* %3, align 8
  %141 = zext i32 %131 to i64
  %142 = sext i32 %138 to i64
  %143 = shl nuw i64 %133, 32
  %144 = or i64 %143, %141
  %145 = sdiv i64 %144, %142
  %146 = shl i64 %145, 32
  %147 = ashr exact i64 %146, 32
  %148 = icmp eq i64 %145, %147
  br i1 %148, label %151, label %149

; <label>:149:                                    ; preds = %entry
  %150 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %140, %struct.Memory* %2)
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre79 = load i32, i32* %EAX.i1414, align 4
  %.pre80 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit1400

; <label>:151:                                    ; preds = %entry
  %152 = srem i64 %144, %142
  %153 = and i64 %145, 4294967295
  store i64 %153, i64* %RAX.i1385, align 8
  %154 = and i64 %152, 4294967295
  store i64 %154, i64* %RDX.i1446, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %155 = trunc i64 %145 to i32
  br label %routine_idivl__esi.exit1400

routine_idivl__esi.exit1400:                      ; preds = %151, %149
  %156 = phi i64 [ %.pre80, %149 ], [ %140, %151 ]
  %157 = phi i32 [ %.pre79, %149 ], [ %155, %151 ]
  %158 = phi i64 [ %.pre, %149 ], [ %134, %151 ]
  %159 = phi %struct.Memory* [ %150, %149 ], [ %2, %151 ]
  %160 = add i64 %158, -148
  %161 = add i64 %156, 6
  store i64 %161, i64* %3, align 8
  %162 = inttoptr i64 %160 to i32*
  store i32 %157, i32* %162, align 4
  %163 = load i64, i64* %RBP.i, align 8
  %164 = add i64 %163, -72
  %165 = load i64, i64* %3, align 8
  %166 = add i64 %165, 4
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %164 to i64*
  %168 = load i64, i64* %167, align 8
  store i64 %168, i64* %R8.i1438, align 8
  %169 = add i64 %168, 16
  %170 = add i64 %165, 8
  store i64 %170, i64* %3, align 8
  %171 = inttoptr i64 %169 to i32*
  %172 = load i32, i32* %171, align 4
  %173 = zext i32 %172 to i64
  store i64 %173, i64* %RAX.i1385, align 8
  store i8 0, i8* %14, align 1
  %174 = and i32 %172, 255
  %175 = tail call i32 @llvm.ctpop.i32(i32 %174)
  %176 = trunc i32 %175 to i8
  %177 = and i8 %176, 1
  %178 = xor i8 %177, 1
  store i8 %178, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %179 = icmp eq i32 %172, 0
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %29, align 1
  %181 = lshr i32 %172, 31
  %182 = trunc i32 %181 to i8
  store i8 %182, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %183 = sext i32 %172 to i64
  %184 = lshr i64 %183, 32
  store i64 %184, i64* %130, align 8
  %185 = load i32, i32* %ESI.i1440, align 4
  %186 = add i64 %165, 14
  store i64 %186, i64* %3, align 8
  %187 = sext i32 %185 to i64
  %188 = shl nuw i64 %184, 32
  %189 = or i64 %188, %173
  %190 = sdiv i64 %189, %187
  %191 = shl i64 %190, 32
  %192 = ashr exact i64 %191, 32
  %193 = icmp eq i64 %190, %192
  br i1 %193, label %196, label %194

; <label>:194:                                    ; preds = %routine_idivl__esi.exit1400
  %195 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %186, %struct.Memory* %159)
  %.pre81 = load i64, i64* %RBP.i, align 8
  %.pre82 = load i32, i32* %EDX.i1408, align 4
  %.pre83 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit

; <label>:196:                                    ; preds = %routine_idivl__esi.exit1400
  %197 = srem i64 %189, %187
  %198 = and i64 %190, 4294967295
  store i64 %198, i64* %RAX.i1385, align 8
  %199 = and i64 %197, 4294967295
  store i64 %199, i64* %RDX.i1446, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %200 = trunc i64 %197 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %196, %194
  %201 = phi i64 [ %.pre83, %194 ], [ %186, %196 ]
  %202 = phi i32 [ %.pre82, %194 ], [ %200, %196 ]
  %203 = phi i64 [ %.pre81, %194 ], [ %163, %196 ]
  %204 = phi %struct.Memory* [ %195, %194 ], [ %159, %196 ]
  %205 = add i64 %203, -152
  %206 = add i64 %201, 6
  store i64 %206, i64* %3, align 8
  %207 = inttoptr i64 %205 to i32*
  store i32 %202, i32* %207, align 4
  %208 = load i64, i64* %RBP.i, align 8
  %209 = add i64 %208, -148
  %210 = load i64, i64* %3, align 8
  %211 = add i64 %210, 6
  store i64 %211, i64* %3, align 8
  %212 = inttoptr i64 %209 to i32*
  %213 = load i32, i32* %212, align 4
  %214 = add i32 %213, 15
  %215 = zext i32 %214 to i64
  store i64 %215, i64* %RDX.i1446, align 8
  %216 = icmp ugt i32 %213, -16
  %217 = zext i1 %216 to i8
  store i8 %217, i8* %14, align 1
  %218 = and i32 %214, 255
  %219 = tail call i32 @llvm.ctpop.i32(i32 %218)
  %220 = trunc i32 %219 to i8
  %221 = and i8 %220, 1
  %222 = xor i8 %221, 1
  store i8 %222, i8* %21, align 1
  %223 = xor i32 %214, %213
  %224 = lshr i32 %223, 4
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  store i8 %226, i8* %26, align 1
  %227 = icmp eq i32 %214, 0
  %228 = zext i1 %227 to i8
  store i8 %228, i8* %29, align 1
  %229 = lshr i32 %214, 31
  %230 = trunc i32 %229 to i8
  store i8 %230, i8* %32, align 1
  %231 = lshr i32 %213, 31
  %232 = xor i32 %229, %231
  %233 = add nuw nsw i32 %232, %229
  %234 = icmp eq i32 %233, 2
  %235 = zext i1 %234 to i8
  store i8 %235, i8* %38, align 1
  %236 = add i64 %208, -156
  %237 = add i64 %210, 15
  store i64 %237, i64* %3, align 8
  %238 = inttoptr i64 %236 to i32*
  store i32 %214, i32* %238, align 4
  %239 = load i64, i64* %RBP.i, align 8
  %240 = add i64 %239, -156
  %241 = load i64, i64* %3, align 8
  %242 = add i64 %241, 6
  store i64 %242, i64* %3, align 8
  %243 = inttoptr i64 %240 to i32*
  %244 = load i32, i32* %243, align 4
  %245 = zext i32 %244 to i64
  store i64 %245, i64* %RDX.i1446, align 8
  %ECX.i1366 = bitcast %union.anon* %40 to i32*
  %246 = add i64 %239, -172
  %247 = load i32, i32* %ECX.i1366, align 4
  %248 = add i64 %241, 12
  store i64 %248, i64* %3, align 8
  %249 = inttoptr i64 %246 to i32*
  store i32 %247, i32* %249, align 4
  %250 = load i32, i32* %EDX.i1408, align 4
  %251 = zext i32 %250 to i64
  %252 = load i64, i64* %3, align 8
  store i64 %251, i64* %RCX.i1402, align 8
  %253 = load i64, i64* %RBP.i, align 8
  %254 = add i64 %253, -172
  %255 = add i64 %252, 8
  store i64 %255, i64* %3, align 8
  %256 = inttoptr i64 %254 to i32*
  %257 = load i32, i32* %256, align 4
  %258 = zext i32 %257 to i64
  store i64 %258, i64* %RDX.i1446, align 8
  %259 = add i64 %252, 10
  store i64 %259, i64* %3, align 8
  %260 = trunc i32 %250 to i5
  switch i5 %260, label %266 [
    i5 0, label %routine_shll__cl___edx.exit
    i5 1, label %261
  ]

; <label>:261:                                    ; preds = %routine_idivl__esi.exit
  %262 = shl i32 %257, 1
  %263 = icmp slt i32 %257, 0
  %264 = icmp slt i32 %262, 0
  %265 = xor i1 %263, %264
  br label %275

; <label>:266:                                    ; preds = %routine_idivl__esi.exit
  %267 = and i32 %250, 31
  %268 = zext i32 %267 to i64
  %269 = add nuw nsw i64 %268, 4294967295
  %270 = and i64 %269, 4294967295
  %271 = shl i64 %258, %270
  %272 = trunc i64 %271 to i32
  %273 = icmp slt i32 %272, 0
  %274 = shl i32 %272, 1
  br label %275

; <label>:275:                                    ; preds = %266, %261
  %276 = phi i1 [ %263, %261 ], [ %273, %266 ]
  %277 = phi i1 [ %265, %261 ], [ false, %266 ]
  %278 = phi i32 [ %262, %261 ], [ %274, %266 ]
  %279 = zext i32 %278 to i64
  store i64 %279, i64* %RDX.i1446, align 8
  %280 = zext i1 %276 to i8
  store i8 %280, i8* %14, align 1
  %281 = and i32 %278, 254
  %282 = tail call i32 @llvm.ctpop.i32(i32 %281)
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  %285 = xor i8 %284, 1
  store i8 %285, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %286 = icmp eq i32 %278, 0
  %287 = zext i1 %286 to i8
  store i8 %287, i8* %29, align 1
  %288 = lshr i32 %278, 31
  %289 = trunc i32 %288 to i8
  store i8 %289, i8* %32, align 1
  %290 = zext i1 %277 to i8
  store i8 %290, i8* %38, align 1
  br label %routine_shll__cl___edx.exit

routine_shll__cl___edx.exit:                      ; preds = %275, %routine_idivl__esi.exit
  %291 = phi i32 [ %278, %275 ], [ %257, %routine_idivl__esi.exit ]
  %292 = zext i32 %291 to i64
  store i64 %292, i64* %RAX.i1385, align 8
  %293 = sext i32 %291 to i64
  %294 = lshr i64 %293, 32
  store i64 %294, i64* %130, align 8
  %RDI.i1350 = getelementptr inbounds %union.anon, %union.anon* %42, i64 0, i32 0
  %295 = add i64 %253, -164
  %296 = add i64 %252, 19
  store i64 %296, i64* %3, align 8
  %297 = inttoptr i64 %295 to i32*
  %298 = load i32, i32* %297, align 4
  %299 = zext i32 %298 to i64
  store i64 %299, i64* %RDI.i1350, align 8
  %300 = add i64 %252, 21
  store i64 %300, i64* %3, align 8
  %301 = sext i32 %298 to i64
  %302 = shl nuw i64 %294, 32
  %303 = or i64 %302, %292
  %304 = sdiv i64 %303, %301
  %305 = shl i64 %304, 32
  %306 = ashr exact i64 %305, 32
  %307 = icmp eq i64 %304, %306
  br i1 %307, label %310, label %308

; <label>:308:                                    ; preds = %routine_shll__cl___edx.exit
  %309 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %300, %struct.Memory* %204)
  %.pre84 = load i64, i64* %RBP.i, align 8
  %.pre85 = load i32, i32* %EAX.i1414, align 4
  %.pre86 = load i64, i64* %3, align 8
  br label %routine_idivl__edi.exit

; <label>:310:                                    ; preds = %routine_shll__cl___edx.exit
  %311 = srem i64 %303, %301
  %312 = and i64 %304, 4294967295
  store i64 %312, i64* %RAX.i1385, align 8
  %313 = and i64 %311, 4294967295
  store i64 %313, i64* %RDX.i1446, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %314 = trunc i64 %304 to i32
  br label %routine_idivl__edi.exit

routine_idivl__edi.exit:                          ; preds = %310, %308
  %315 = phi i64 [ %.pre86, %308 ], [ %300, %310 ]
  %316 = phi i32 [ %.pre85, %308 ], [ %314, %310 ]
  %317 = phi i64 [ %.pre84, %308 ], [ %253, %310 ]
  %318 = phi %struct.Memory* [ %309, %308 ], [ %204, %310 ]
  %319 = add i64 %317, -160
  %320 = add i64 %315, 6
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to i32*
  store i32 %316, i32* %321, align 4
  %322 = load i64, i64* %RBP.i, align 8
  %323 = add i64 %322, -16
  %324 = load i64, i64* %3, align 8
  %325 = add i64 %324, 7
  store i64 %325, i64* %3, align 8
  %326 = inttoptr i64 %323 to i32*
  store i32 0, i32* %326, align 4
  %.pre87 = load i64, i64* %3, align 8
  br label %block_.L_40f602

block_.L_40f602:                                  ; preds = %block_.L_40f670, %routine_idivl__edi.exit
  %327 = phi i64 [ %605, %block_.L_40f670 ], [ %.pre87, %routine_idivl__edi.exit ]
  %328 = load i64, i64* %RBP.i, align 8
  %329 = add i64 %328, -16
  %330 = add i64 %327, 4
  store i64 %330, i64* %3, align 8
  %331 = inttoptr i64 %329 to i32*
  %332 = load i32, i32* %331, align 4
  %333 = add i32 %332, -4
  %334 = icmp ult i32 %332, 4
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %14, align 1
  %336 = and i32 %333, 255
  %337 = tail call i32 @llvm.ctpop.i32(i32 %336)
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = xor i8 %339, 1
  store i8 %340, i8* %21, align 1
  %341 = xor i32 %333, %332
  %342 = lshr i32 %341, 4
  %343 = trunc i32 %342 to i8
  %344 = and i8 %343, 1
  store i8 %344, i8* %26, align 1
  %345 = icmp eq i32 %333, 0
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %29, align 1
  %347 = lshr i32 %333, 31
  %348 = trunc i32 %347 to i8
  store i8 %348, i8* %32, align 1
  %349 = lshr i32 %332, 31
  %350 = xor i32 %347, %349
  %351 = add nuw nsw i32 %350, %349
  %352 = icmp eq i32 %351, 2
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %38, align 1
  %354 = icmp ne i8 %348, 0
  %355 = xor i1 %354, %352
  %.v117 = select i1 %355, i64 10, i64 129
  %356 = add i64 %327, %.v117
  store i64 %356, i64* %3, align 8
  br i1 %355, label %block_40f60c, label %block_.L_40f683

block_40f60c:                                     ; preds = %block_.L_40f602
  %357 = add i64 %328, -12
  %358 = add i64 %356, 7
  store i64 %358, i64* %3, align 8
  %359 = inttoptr i64 %357 to i32*
  store i32 0, i32* %359, align 4
  %.pre108 = load i64, i64* %3, align 8
  br label %block_.L_40f613

block_.L_40f613:                                  ; preds = %block_40f61d, %block_40f60c
  %360 = phi i64 [ %575, %block_40f61d ], [ %.pre108, %block_40f60c ]
  %361 = load i64, i64* %RBP.i, align 8
  %362 = add i64 %361, -12
  %363 = add i64 %360, 4
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to i32*
  %365 = load i32, i32* %364, align 4
  %366 = add i32 %365, -4
  %367 = icmp ult i32 %365, 4
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %14, align 1
  %369 = and i32 %366, 255
  %370 = tail call i32 @llvm.ctpop.i32(i32 %369)
  %371 = trunc i32 %370 to i8
  %372 = and i8 %371, 1
  %373 = xor i8 %372, 1
  store i8 %373, i8* %21, align 1
  %374 = xor i32 %366, %365
  %375 = lshr i32 %374, 4
  %376 = trunc i32 %375 to i8
  %377 = and i8 %376, 1
  store i8 %377, i8* %26, align 1
  %378 = icmp eq i32 %366, 0
  %379 = zext i1 %378 to i8
  store i8 %379, i8* %29, align 1
  %380 = lshr i32 %366, 31
  %381 = trunc i32 %380 to i8
  store i8 %381, i8* %32, align 1
  %382 = lshr i32 %365, 31
  %383 = xor i32 %380, %382
  %384 = add nuw nsw i32 %383, %382
  %385 = icmp eq i32 %384, 2
  %386 = zext i1 %385 to i8
  store i8 %386, i8* %38, align 1
  %387 = icmp ne i8 %381, 0
  %388 = xor i1 %387, %385
  %.v116 = select i1 %388, i64 10, i64 93
  %389 = add i64 %360, %.v116
  store i64 %389, i64* %3, align 8
  br i1 %388, label %block_40f61d, label %block_.L_40f670

block_40f61d:                                     ; preds = %block_.L_40f613
  %390 = add i64 %361, -144
  store i64 %390, i64* %RAX.i1385, align 8
  %391 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %392 = add i64 %391, 12600
  store i64 %392, i64* %RCX.i1402, align 8
  %393 = icmp ugt i64 %391, -12601
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %14, align 1
  %395 = trunc i64 %392 to i32
  %396 = and i32 %395, 255
  %397 = tail call i32 @llvm.ctpop.i32(i32 %396)
  %398 = trunc i32 %397 to i8
  %399 = and i8 %398, 1
  %400 = xor i8 %399, 1
  store i8 %400, i8* %21, align 1
  %401 = xor i64 %391, 16
  %402 = xor i64 %401, %392
  %403 = lshr i64 %402, 4
  %404 = trunc i64 %403 to i8
  %405 = and i8 %404, 1
  store i8 %405, i8* %26, align 1
  %406 = icmp eq i64 %392, 0
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %29, align 1
  %408 = lshr i64 %392, 63
  %409 = trunc i64 %408 to i8
  store i8 %409, i8* %32, align 1
  %410 = lshr i64 %391, 63
  %411 = xor i64 %408, %410
  %412 = add nuw nsw i64 %411, %408
  %413 = icmp eq i64 %412, 2
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %38, align 1
  %415 = add i64 %389, 25
  store i64 %415, i64* %3, align 8
  %416 = load i32, i32* %364, align 4
  %417 = zext i32 %416 to i64
  store i64 %417, i64* %RDX.i1446, align 8
  %418 = add i64 %361, -4
  %419 = add i64 %389, 28
  store i64 %419, i64* %3, align 8
  %420 = inttoptr i64 %418 to i32*
  %421 = load i32, i32* %420, align 4
  %422 = add i32 %421, %416
  %423 = zext i32 %422 to i64
  store i64 %423, i64* %RDX.i1446, align 8
  %424 = sext i32 %422 to i64
  %425 = shl nsw i64 %424, 5
  store i64 %425, i64* %RSI.i1419, align 8
  %426 = load i64, i64* %RCX.i1402, align 8
  %427 = add i64 %425, %426
  store i64 %427, i64* %RCX.i1402, align 8
  %428 = icmp ult i64 %427, %426
  %429 = icmp ult i64 %427, %425
  %430 = or i1 %428, %429
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %14, align 1
  %432 = trunc i64 %427 to i32
  %433 = and i32 %432, 255
  %434 = tail call i32 @llvm.ctpop.i32(i32 %433)
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = xor i8 %436, 1
  store i8 %437, i8* %21, align 1
  %438 = xor i64 %426, %427
  %439 = lshr i64 %438, 4
  %440 = trunc i64 %439 to i8
  %441 = and i8 %440, 1
  store i8 %441, i8* %26, align 1
  %442 = icmp eq i64 %427, 0
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %29, align 1
  %444 = lshr i64 %427, 63
  %445 = trunc i64 %444 to i8
  store i8 %445, i8* %32, align 1
  %446 = lshr i64 %426, 63
  %447 = lshr i64 %424, 58
  %448 = and i64 %447, 1
  %449 = xor i64 %444, %446
  %450 = xor i64 %444, %448
  %451 = add nuw nsw i64 %449, %450
  %452 = icmp eq i64 %451, 2
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %38, align 1
  %454 = load i64, i64* %RBP.i, align 8
  %455 = add i64 %454, -16
  %456 = add i64 %389, 41
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %455 to i32*
  %458 = load i32, i32* %457, align 4
  %459 = zext i32 %458 to i64
  store i64 %459, i64* %RDX.i1446, align 8
  %460 = add i64 %454, -8
  %461 = add i64 %389, 44
  store i64 %461, i64* %3, align 8
  %462 = inttoptr i64 %460 to i32*
  %463 = load i32, i32* %462, align 4
  %464 = add i32 %463, %458
  %465 = zext i32 %464 to i64
  store i64 %465, i64* %RDX.i1446, align 8
  %466 = icmp ult i32 %464, %458
  %467 = icmp ult i32 %464, %463
  %468 = or i1 %466, %467
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %14, align 1
  %470 = and i32 %464, 255
  %471 = tail call i32 @llvm.ctpop.i32(i32 %470)
  %472 = trunc i32 %471 to i8
  %473 = and i8 %472, 1
  %474 = xor i8 %473, 1
  store i8 %474, i8* %21, align 1
  %475 = xor i32 %463, %458
  %476 = xor i32 %475, %464
  %477 = lshr i32 %476, 4
  %478 = trunc i32 %477 to i8
  %479 = and i8 %478, 1
  store i8 %479, i8* %26, align 1
  %480 = icmp eq i32 %464, 0
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %29, align 1
  %482 = lshr i32 %464, 31
  %483 = trunc i32 %482 to i8
  store i8 %483, i8* %32, align 1
  %484 = lshr i32 %458, 31
  %485 = lshr i32 %463, 31
  %486 = xor i32 %482, %484
  %487 = xor i32 %482, %485
  %488 = add nuw nsw i32 %486, %487
  %489 = icmp eq i32 %488, 2
  %490 = zext i1 %489 to i8
  store i8 %490, i8* %38, align 1
  %491 = sext i32 %464 to i64
  store i64 %491, i64* %RSI.i1419, align 8
  %492 = shl nsw i64 %491, 1
  %493 = add i64 %427, %492
  %494 = add i64 %389, 51
  store i64 %494, i64* %3, align 8
  %495 = inttoptr i64 %493 to i16*
  %496 = load i16, i16* %495, align 2
  %497 = zext i16 %496 to i64
  store i64 %497, i64* %RDX.i1446, align 8
  %498 = add i64 %454, -12
  %499 = add i64 %389, 55
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %498 to i32*
  %501 = load i32, i32* %500, align 4
  %502 = sext i32 %501 to i64
  %503 = shl nsw i64 %502, 4
  store i64 %503, i64* %RCX.i1402, align 8
  %504 = load i64, i64* %RAX.i1385, align 8
  %505 = add i64 %503, %504
  store i64 %505, i64* %RAX.i1385, align 8
  %506 = icmp ult i64 %505, %504
  %507 = icmp ult i64 %505, %503
  %508 = or i1 %506, %507
  %509 = zext i1 %508 to i8
  store i8 %509, i8* %14, align 1
  %510 = trunc i64 %505 to i32
  %511 = and i32 %510, 255
  %512 = tail call i32 @llvm.ctpop.i32(i32 %511)
  %513 = trunc i32 %512 to i8
  %514 = and i8 %513, 1
  %515 = xor i8 %514, 1
  store i8 %515, i8* %21, align 1
  %516 = xor i64 %503, %504
  %517 = xor i64 %516, %505
  %518 = lshr i64 %517, 4
  %519 = trunc i64 %518 to i8
  %520 = and i8 %519, 1
  store i8 %520, i8* %26, align 1
  %521 = icmp eq i64 %505, 0
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %29, align 1
  %523 = lshr i64 %505, 63
  %524 = trunc i64 %523 to i8
  store i8 %524, i8* %32, align 1
  %525 = lshr i64 %504, 63
  %526 = lshr i64 %502, 59
  %527 = and i64 %526, 1
  %528 = xor i64 %523, %525
  %529 = xor i64 %523, %527
  %530 = add nuw nsw i64 %528, %529
  %531 = icmp eq i64 %530, 2
  %532 = zext i1 %531 to i8
  store i8 %532, i8* %38, align 1
  %533 = load i64, i64* %RBP.i, align 8
  %534 = add i64 %533, -16
  %535 = add i64 %389, 66
  store i64 %535, i64* %3, align 8
  %536 = inttoptr i64 %534 to i32*
  %537 = load i32, i32* %536, align 4
  %538 = sext i32 %537 to i64
  store i64 %538, i64* %RCX.i1402, align 8
  %539 = shl nsw i64 %538, 2
  %540 = add i64 %539, %505
  %541 = zext i16 %496 to i32
  %542 = add i64 %389, 69
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %540 to i32*
  store i32 %541, i32* %543, align 4
  %544 = load i64, i64* %RBP.i, align 8
  %545 = add i64 %544, -12
  %546 = load i64, i64* %3, align 8
  %547 = add i64 %546, 3
  store i64 %547, i64* %3, align 8
  %548 = inttoptr i64 %545 to i32*
  %549 = load i32, i32* %548, align 4
  %550 = add i32 %549, 1
  %551 = zext i32 %550 to i64
  store i64 %551, i64* %RAX.i1385, align 8
  %552 = icmp eq i32 %549, -1
  %553 = icmp eq i32 %550, 0
  %554 = or i1 %552, %553
  %555 = zext i1 %554 to i8
  store i8 %555, i8* %14, align 1
  %556 = and i32 %550, 255
  %557 = tail call i32 @llvm.ctpop.i32(i32 %556)
  %558 = trunc i32 %557 to i8
  %559 = and i8 %558, 1
  %560 = xor i8 %559, 1
  store i8 %560, i8* %21, align 1
  %561 = xor i32 %550, %549
  %562 = lshr i32 %561, 4
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  store i8 %564, i8* %26, align 1
  %565 = zext i1 %553 to i8
  store i8 %565, i8* %29, align 1
  %566 = lshr i32 %550, 31
  %567 = trunc i32 %566 to i8
  store i8 %567, i8* %32, align 1
  %568 = lshr i32 %549, 31
  %569 = xor i32 %566, %568
  %570 = add nuw nsw i32 %569, %566
  %571 = icmp eq i32 %570, 2
  %572 = zext i1 %571 to i8
  store i8 %572, i8* %38, align 1
  %573 = add i64 %546, 9
  store i64 %573, i64* %3, align 8
  store i32 %550, i32* %548, align 4
  %574 = load i64, i64* %3, align 8
  %575 = add i64 %574, -88
  store i64 %575, i64* %3, align 8
  br label %block_.L_40f613

block_.L_40f670:                                  ; preds = %block_.L_40f613
  %576 = add i64 %361, -16
  %577 = add i64 %389, 8
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %576 to i32*
  %579 = load i32, i32* %578, align 4
  %580 = add i32 %579, 1
  %581 = zext i32 %580 to i64
  store i64 %581, i64* %RAX.i1385, align 8
  %582 = icmp eq i32 %579, -1
  %583 = icmp eq i32 %580, 0
  %584 = or i1 %582, %583
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %14, align 1
  %586 = and i32 %580, 255
  %587 = tail call i32 @llvm.ctpop.i32(i32 %586)
  %588 = trunc i32 %587 to i8
  %589 = and i8 %588, 1
  %590 = xor i8 %589, 1
  store i8 %590, i8* %21, align 1
  %591 = xor i32 %580, %579
  %592 = lshr i32 %591, 4
  %593 = trunc i32 %592 to i8
  %594 = and i8 %593, 1
  store i8 %594, i8* %26, align 1
  %595 = zext i1 %583 to i8
  store i8 %595, i8* %29, align 1
  %596 = lshr i32 %580, 31
  %597 = trunc i32 %596 to i8
  store i8 %597, i8* %32, align 1
  %598 = lshr i32 %579, 31
  %599 = xor i32 %596, %598
  %600 = add nuw nsw i32 %599, %596
  %601 = icmp eq i32 %600, 2
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %38, align 1
  %603 = add i64 %389, 14
  store i64 %603, i64* %3, align 8
  store i32 %580, i32* %578, align 4
  %604 = load i64, i64* %3, align 8
  %605 = add i64 %604, -124
  store i64 %605, i64* %3, align 8
  br label %block_.L_40f602

block_.L_40f683:                                  ; preds = %block_.L_40f602
  %606 = add i64 %356, 7
  store i64 %606, i64* %3, align 8
  store i32 0, i32* %331, align 4
  %.pre88 = load i64, i64* %3, align 8
  br label %block_.L_40f68a

block_.L_40f68a:                                  ; preds = %block_.L_40f726, %block_.L_40f683
  %607 = phi i64 [ %1222, %block_.L_40f726 ], [ %.pre88, %block_.L_40f683 ]
  %608 = load i64, i64* %RBP.i, align 8
  %609 = add i64 %608, -16
  %610 = add i64 %607, 4
  store i64 %610, i64* %3, align 8
  %611 = inttoptr i64 %609 to i32*
  %612 = load i32, i32* %611, align 4
  %613 = add i32 %612, -4
  %614 = icmp ult i32 %612, 4
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %14, align 1
  %616 = and i32 %613, 255
  %617 = tail call i32 @llvm.ctpop.i32(i32 %616)
  %618 = trunc i32 %617 to i8
  %619 = and i8 %618, 1
  %620 = xor i8 %619, 1
  store i8 %620, i8* %21, align 1
  %621 = xor i32 %613, %612
  %622 = lshr i32 %621, 4
  %623 = trunc i32 %622 to i8
  %624 = and i8 %623, 1
  store i8 %624, i8* %26, align 1
  %625 = icmp eq i32 %613, 0
  %626 = zext i1 %625 to i8
  store i8 %626, i8* %29, align 1
  %627 = lshr i32 %613, 31
  %628 = trunc i32 %627 to i8
  store i8 %628, i8* %32, align 1
  %629 = lshr i32 %612, 31
  %630 = xor i32 %627, %629
  %631 = add nuw nsw i32 %630, %629
  %632 = icmp eq i32 %631, 2
  %633 = zext i1 %632 to i8
  store i8 %633, i8* %38, align 1
  %634 = icmp ne i8 %628, 0
  %635 = xor i1 %634, %632
  %.v = select i1 %635, i64 10, i64 237
  %636 = add i64 %607, %.v
  %637 = add i64 %608, -12
  %638 = add i64 %636, 7
  store i64 %638, i64* %3, align 8
  %639 = inttoptr i64 %637 to i32*
  store i32 0, i32* %639, align 4
  %.pre107 = load i64, i64* %3, align 8
  br i1 %635, label %block_.L_40f69b.preheader, label %block_.L_40f77e.preheader

block_.L_40f69b.preheader:                        ; preds = %block_.L_40f68a
  br label %block_.L_40f69b

block_.L_40f77e.preheader:                        ; preds = %block_.L_40f68a
  br label %block_.L_40f77e

block_.L_40f69b:                                  ; preds = %block_.L_40f69b.preheader, %block_40f6a5
  %640 = phi i64 [ %984, %block_40f6a5 ], [ %.pre107, %block_.L_40f69b.preheader ]
  %641 = load i64, i64* %RBP.i, align 8
  %642 = add i64 %641, -12
  %643 = add i64 %640, 4
  store i64 %643, i64* %3, align 8
  %644 = inttoptr i64 %642 to i32*
  %645 = load i32, i32* %644, align 4
  %646 = add i32 %645, -2
  %647 = icmp ult i32 %645, 2
  %648 = zext i1 %647 to i8
  store i8 %648, i8* %14, align 1
  %649 = and i32 %646, 255
  %650 = tail call i32 @llvm.ctpop.i32(i32 %649)
  %651 = trunc i32 %650 to i8
  %652 = and i8 %651, 1
  %653 = xor i8 %652, 1
  store i8 %653, i8* %21, align 1
  %654 = xor i32 %646, %645
  %655 = lshr i32 %654, 4
  %656 = trunc i32 %655 to i8
  %657 = and i8 %656, 1
  store i8 %657, i8* %26, align 1
  %658 = icmp eq i32 %646, 0
  %659 = zext i1 %658 to i8
  store i8 %659, i8* %29, align 1
  %660 = lshr i32 %646, 31
  %661 = trunc i32 %660 to i8
  store i8 %661, i8* %32, align 1
  %662 = lshr i32 %645, 31
  %663 = xor i32 %660, %662
  %664 = add nuw nsw i32 %663, %662
  %665 = icmp eq i32 %664, 2
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %38, align 1
  %667 = icmp ne i8 %661, 0
  %668 = xor i1 %667, %665
  %.v127 = select i1 %668, i64 10, i64 139
  %669 = add i64 %640, %.v127
  store i64 %669, i64* %3, align 8
  br i1 %668, label %block_40f6a5, label %block_.L_40f726

block_40f6a5:                                     ; preds = %block_.L_40f69b
  %670 = add i64 %641, -144
  store i64 %670, i64* %RAX.i1385, align 8
  store i64 3, i64* %RCX.i1402, align 8
  %671 = add i64 %669, 15
  store i64 %671, i64* %3, align 8
  %672 = load i32, i32* %644, align 4
  %673 = sub i32 3, %672
  %674 = zext i32 %673 to i64
  store i64 %674, i64* %RCX.i1402, align 8
  %675 = icmp ugt i32 %672, 3
  %676 = zext i1 %675 to i8
  store i8 %676, i8* %14, align 1
  %677 = and i32 %673, 255
  %678 = tail call i32 @llvm.ctpop.i32(i32 %677)
  %679 = trunc i32 %678 to i8
  %680 = and i8 %679, 1
  %681 = xor i8 %680, 1
  store i8 %681, i8* %21, align 1
  %682 = xor i32 %673, %672
  %683 = lshr i32 %682, 4
  %684 = trunc i32 %683 to i8
  %685 = and i8 %684, 1
  store i8 %685, i8* %26, align 1
  %686 = icmp eq i32 %673, 0
  %687 = zext i1 %686 to i8
  store i8 %687, i8* %29, align 1
  %688 = lshr i32 %673, 31
  %689 = trunc i32 %688 to i8
  store i8 %689, i8* %32, align 1
  %690 = lshr i32 %672, 31
  %691 = add nuw nsw i32 %688, %690
  %692 = icmp eq i32 %691, 2
  %693 = zext i1 %692 to i8
  store i8 %693, i8* %38, align 1
  %694 = add i64 %641, -20
  %695 = add i64 %669, 18
  store i64 %695, i64* %3, align 8
  %696 = inttoptr i64 %694 to i32*
  store i32 %673, i32* %696, align 4
  %697 = load i64, i64* %RBP.i, align 8
  %698 = add i64 %697, -12
  %699 = load i64, i64* %3, align 8
  %700 = add i64 %699, 4
  store i64 %700, i64* %3, align 8
  %701 = inttoptr i64 %698 to i32*
  %702 = load i32, i32* %701, align 4
  %703 = sext i32 %702 to i64
  %704 = shl nsw i64 %703, 4
  store i64 %704, i64* %RDX.i1446, align 8
  %705 = load i64, i64* %RAX.i1385, align 8
  %706 = add i64 %704, %705
  store i64 %706, i64* %RSI.i1419, align 8
  %707 = icmp ult i64 %706, %705
  %708 = icmp ult i64 %706, %704
  %709 = or i1 %707, %708
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %14, align 1
  %711 = trunc i64 %706 to i32
  %712 = and i32 %711, 255
  %713 = tail call i32 @llvm.ctpop.i32(i32 %712)
  %714 = trunc i32 %713 to i8
  %715 = and i8 %714, 1
  %716 = xor i8 %715, 1
  store i8 %716, i8* %21, align 1
  %717 = xor i64 %704, %705
  %718 = xor i64 %717, %706
  %719 = lshr i64 %718, 4
  %720 = trunc i64 %719 to i8
  %721 = and i8 %720, 1
  store i8 %721, i8* %26, align 1
  %722 = icmp eq i64 %706, 0
  %723 = zext i1 %722 to i8
  store i8 %723, i8* %29, align 1
  %724 = lshr i64 %706, 63
  %725 = trunc i64 %724 to i8
  store i8 %725, i8* %32, align 1
  %726 = lshr i64 %705, 63
  %727 = lshr i64 %703, 59
  %728 = and i64 %727, 1
  %729 = xor i64 %724, %726
  %730 = xor i64 %724, %728
  %731 = add nuw nsw i64 %729, %730
  %732 = icmp eq i64 %731, 2
  %733 = zext i1 %732 to i8
  store i8 %733, i8* %38, align 1
  %734 = add i64 %697, -16
  %735 = add i64 %699, 18
  store i64 %735, i64* %3, align 8
  %736 = inttoptr i64 %734 to i32*
  %737 = load i32, i32* %736, align 4
  %738 = sext i32 %737 to i64
  store i64 %738, i64* %RDX.i1446, align 8
  %739 = shl nsw i64 %738, 2
  %740 = add i64 %739, %706
  %741 = add i64 %699, 21
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %740 to i32*
  %743 = load i32, i32* %742, align 4
  %744 = zext i32 %743 to i64
  store i64 %744, i64* %RCX.i1402, align 8
  %745 = add i64 %697, -20
  %746 = add i64 %699, 25
  store i64 %746, i64* %3, align 8
  %747 = inttoptr i64 %745 to i32*
  %748 = load i32, i32* %747, align 4
  %749 = sext i32 %748 to i64
  %750 = shl nsw i64 %749, 4
  store i64 %750, i64* %RDX.i1446, align 8
  %751 = add i64 %750, %705
  store i64 %751, i64* %RSI.i1419, align 8
  %752 = icmp ult i64 %751, %705
  %753 = icmp ult i64 %751, %750
  %754 = or i1 %752, %753
  %755 = zext i1 %754 to i8
  store i8 %755, i8* %14, align 1
  %756 = trunc i64 %751 to i32
  %757 = and i32 %756, 255
  %758 = tail call i32 @llvm.ctpop.i32(i32 %757)
  %759 = trunc i32 %758 to i8
  %760 = and i8 %759, 1
  %761 = xor i8 %760, 1
  store i8 %761, i8* %21, align 1
  %762 = xor i64 %750, %705
  %763 = xor i64 %762, %751
  %764 = lshr i64 %763, 4
  %765 = trunc i64 %764 to i8
  %766 = and i8 %765, 1
  store i8 %766, i8* %26, align 1
  %767 = icmp eq i64 %751, 0
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %29, align 1
  %769 = lshr i64 %751, 63
  %770 = trunc i64 %769 to i8
  store i8 %770, i8* %32, align 1
  %771 = lshr i64 %749, 59
  %772 = and i64 %771, 1
  %773 = xor i64 %769, %726
  %774 = xor i64 %769, %772
  %775 = add nuw nsw i64 %773, %774
  %776 = icmp eq i64 %775, 2
  %777 = zext i1 %776 to i8
  store i8 %777, i8* %38, align 1
  %778 = load i64, i64* %RBP.i, align 8
  %779 = add i64 %778, -16
  %780 = add i64 %699, 39
  store i64 %780, i64* %3, align 8
  %781 = inttoptr i64 %779 to i32*
  %782 = load i32, i32* %781, align 4
  %783 = sext i32 %782 to i64
  store i64 %783, i64* %RDX.i1446, align 8
  %784 = shl nsw i64 %783, 2
  %785 = add i64 %751, %784
  %786 = add i64 %699, 42
  store i64 %786, i64* %3, align 8
  %787 = inttoptr i64 %785 to i32*
  %788 = load i32, i32* %787, align 4
  %789 = add i32 %788, %743
  %790 = zext i32 %789 to i64
  store i64 %790, i64* %RCX.i1402, align 8
  %791 = icmp ult i32 %789, %743
  %792 = icmp ult i32 %789, %788
  %793 = or i1 %791, %792
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %14, align 1
  %795 = and i32 %789, 255
  %796 = tail call i32 @llvm.ctpop.i32(i32 %795)
  %797 = trunc i32 %796 to i8
  %798 = and i8 %797, 1
  %799 = xor i8 %798, 1
  store i8 %799, i8* %21, align 1
  %800 = xor i32 %788, %743
  %801 = xor i32 %800, %789
  %802 = lshr i32 %801, 4
  %803 = trunc i32 %802 to i8
  %804 = and i8 %803, 1
  store i8 %804, i8* %26, align 1
  %805 = icmp eq i32 %789, 0
  %806 = zext i1 %805 to i8
  store i8 %806, i8* %29, align 1
  %807 = lshr i32 %789, 31
  %808 = trunc i32 %807 to i8
  store i8 %808, i8* %32, align 1
  %809 = lshr i32 %743, 31
  %810 = lshr i32 %788, 31
  %811 = xor i32 %807, %809
  %812 = xor i32 %807, %810
  %813 = add nuw nsw i32 %811, %812
  %814 = icmp eq i32 %813, 2
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %38, align 1
  %816 = add i64 %778, -12
  %817 = add i64 %699, 46
  store i64 %817, i64* %3, align 8
  %818 = inttoptr i64 %816 to i32*
  %819 = load i32, i32* %818, align 4
  %820 = sext i32 %819 to i64
  store i64 %820, i64* %RDX.i1446, align 8
  %821 = shl nsw i64 %820, 2
  %822 = add i64 %778, -48
  %823 = add i64 %822, %821
  %824 = add i64 %699, 50
  store i64 %824, i64* %3, align 8
  %825 = inttoptr i64 %823 to i32*
  store i32 %789, i32* %825, align 4
  %826 = load i64, i64* %RBP.i, align 8
  %827 = add i64 %826, -12
  %828 = load i64, i64* %3, align 8
  %829 = add i64 %828, 4
  store i64 %829, i64* %3, align 8
  %830 = inttoptr i64 %827 to i32*
  %831 = load i32, i32* %830, align 4
  %832 = sext i32 %831 to i64
  %833 = shl nsw i64 %832, 4
  store i64 %833, i64* %RDX.i1446, align 8
  %834 = load i64, i64* %RAX.i1385, align 8
  %835 = add i64 %833, %834
  store i64 %835, i64* %RSI.i1419, align 8
  %836 = icmp ult i64 %835, %834
  %837 = icmp ult i64 %835, %833
  %838 = or i1 %836, %837
  %839 = zext i1 %838 to i8
  store i8 %839, i8* %14, align 1
  %840 = trunc i64 %835 to i32
  %841 = and i32 %840, 255
  %842 = tail call i32 @llvm.ctpop.i32(i32 %841)
  %843 = trunc i32 %842 to i8
  %844 = and i8 %843, 1
  %845 = xor i8 %844, 1
  store i8 %845, i8* %21, align 1
  %846 = xor i64 %833, %834
  %847 = xor i64 %846, %835
  %848 = lshr i64 %847, 4
  %849 = trunc i64 %848 to i8
  %850 = and i8 %849, 1
  store i8 %850, i8* %26, align 1
  %851 = icmp eq i64 %835, 0
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %29, align 1
  %853 = lshr i64 %835, 63
  %854 = trunc i64 %853 to i8
  store i8 %854, i8* %32, align 1
  %855 = lshr i64 %834, 63
  %856 = lshr i64 %832, 59
  %857 = and i64 %856, 1
  %858 = xor i64 %853, %855
  %859 = xor i64 %853, %857
  %860 = add nuw nsw i64 %858, %859
  %861 = icmp eq i64 %860, 2
  %862 = zext i1 %861 to i8
  store i8 %862, i8* %38, align 1
  %863 = add i64 %826, -16
  %864 = add i64 %828, 18
  store i64 %864, i64* %3, align 8
  %865 = inttoptr i64 %863 to i32*
  %866 = load i32, i32* %865, align 4
  %867 = sext i32 %866 to i64
  store i64 %867, i64* %RDX.i1446, align 8
  %868 = shl nsw i64 %867, 2
  %869 = add i64 %868, %835
  %870 = add i64 %828, 21
  store i64 %870, i64* %3, align 8
  %871 = inttoptr i64 %869 to i32*
  %872 = load i32, i32* %871, align 4
  %873 = zext i32 %872 to i64
  store i64 %873, i64* %RCX.i1402, align 8
  %874 = add i64 %826, -20
  %875 = add i64 %828, 25
  store i64 %875, i64* %3, align 8
  %876 = inttoptr i64 %874 to i32*
  %877 = load i32, i32* %876, align 4
  %878 = sext i32 %877 to i64
  %879 = shl nsw i64 %878, 4
  store i64 %879, i64* %RDX.i1446, align 8
  %880 = add i64 %879, %834
  store i64 %880, i64* %RAX.i1385, align 8
  %881 = icmp ult i64 %880, %834
  %882 = icmp ult i64 %880, %879
  %883 = or i1 %881, %882
  %884 = zext i1 %883 to i8
  store i8 %884, i8* %14, align 1
  %885 = trunc i64 %880 to i32
  %886 = and i32 %885, 255
  %887 = tail call i32 @llvm.ctpop.i32(i32 %886)
  %888 = trunc i32 %887 to i8
  %889 = and i8 %888, 1
  %890 = xor i8 %889, 1
  store i8 %890, i8* %21, align 1
  %891 = xor i64 %879, %834
  %892 = xor i64 %891, %880
  %893 = lshr i64 %892, 4
  %894 = trunc i64 %893 to i8
  %895 = and i8 %894, 1
  store i8 %895, i8* %26, align 1
  %896 = icmp eq i64 %880, 0
  %897 = zext i1 %896 to i8
  store i8 %897, i8* %29, align 1
  %898 = lshr i64 %880, 63
  %899 = trunc i64 %898 to i8
  store i8 %899, i8* %32, align 1
  %900 = lshr i64 %878, 59
  %901 = and i64 %900, 1
  %902 = xor i64 %898, %855
  %903 = xor i64 %898, %901
  %904 = add nuw nsw i64 %902, %903
  %905 = icmp eq i64 %904, 2
  %906 = zext i1 %905 to i8
  store i8 %906, i8* %38, align 1
  %907 = load i64, i64* %RBP.i, align 8
  %908 = add i64 %907, -16
  %909 = add i64 %828, 36
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %908 to i32*
  %911 = load i32, i32* %910, align 4
  %912 = sext i32 %911 to i64
  store i64 %912, i64* %RDX.i1446, align 8
  %913 = shl nsw i64 %912, 2
  %914 = add i64 %880, %913
  %915 = add i64 %828, 39
  store i64 %915, i64* %3, align 8
  %916 = inttoptr i64 %914 to i32*
  %917 = load i32, i32* %916, align 4
  %918 = sub i32 %872, %917
  %919 = zext i32 %918 to i64
  store i64 %919, i64* %RCX.i1402, align 8
  %920 = icmp ult i32 %872, %917
  %921 = zext i1 %920 to i8
  store i8 %921, i8* %14, align 1
  %922 = and i32 %918, 255
  %923 = tail call i32 @llvm.ctpop.i32(i32 %922)
  %924 = trunc i32 %923 to i8
  %925 = and i8 %924, 1
  %926 = xor i8 %925, 1
  store i8 %926, i8* %21, align 1
  %927 = xor i32 %917, %872
  %928 = xor i32 %927, %918
  %929 = lshr i32 %928, 4
  %930 = trunc i32 %929 to i8
  %931 = and i8 %930, 1
  store i8 %931, i8* %26, align 1
  %932 = icmp eq i32 %918, 0
  %933 = zext i1 %932 to i8
  store i8 %933, i8* %29, align 1
  %934 = lshr i32 %918, 31
  %935 = trunc i32 %934 to i8
  store i8 %935, i8* %32, align 1
  %936 = lshr i32 %872, 31
  %937 = lshr i32 %917, 31
  %938 = xor i32 %937, %936
  %939 = xor i32 %934, %936
  %940 = add nuw nsw i32 %939, %938
  %941 = icmp eq i32 %940, 2
  %942 = zext i1 %941 to i8
  store i8 %942, i8* %38, align 1
  %943 = add i64 %907, -20
  %944 = add i64 %828, 43
  store i64 %944, i64* %3, align 8
  %945 = inttoptr i64 %943 to i32*
  %946 = load i32, i32* %945, align 4
  %947 = sext i32 %946 to i64
  store i64 %947, i64* %RAX.i1385, align 8
  %948 = shl nsw i64 %947, 2
  %949 = add i64 %907, -48
  %950 = add i64 %949, %948
  %951 = add i64 %828, 47
  store i64 %951, i64* %3, align 8
  %952 = inttoptr i64 %950 to i32*
  store i32 %918, i32* %952, align 4
  %953 = load i64, i64* %RBP.i, align 8
  %954 = add i64 %953, -12
  %955 = load i64, i64* %3, align 8
  %956 = add i64 %955, 3
  store i64 %956, i64* %3, align 8
  %957 = inttoptr i64 %954 to i32*
  %958 = load i32, i32* %957, align 4
  %959 = add i32 %958, 1
  %960 = zext i32 %959 to i64
  store i64 %960, i64* %RAX.i1385, align 8
  %961 = icmp eq i32 %958, -1
  %962 = icmp eq i32 %959, 0
  %963 = or i1 %961, %962
  %964 = zext i1 %963 to i8
  store i8 %964, i8* %14, align 1
  %965 = and i32 %959, 255
  %966 = tail call i32 @llvm.ctpop.i32(i32 %965)
  %967 = trunc i32 %966 to i8
  %968 = and i8 %967, 1
  %969 = xor i8 %968, 1
  store i8 %969, i8* %21, align 1
  %970 = xor i32 %959, %958
  %971 = lshr i32 %970, 4
  %972 = trunc i32 %971 to i8
  %973 = and i8 %972, 1
  store i8 %973, i8* %26, align 1
  %974 = zext i1 %962 to i8
  store i8 %974, i8* %29, align 1
  %975 = lshr i32 %959, 31
  %976 = trunc i32 %975 to i8
  store i8 %976, i8* %32, align 1
  %977 = lshr i32 %958, 31
  %978 = xor i32 %975, %977
  %979 = add nuw nsw i32 %978, %975
  %980 = icmp eq i32 %979, 2
  %981 = zext i1 %980 to i8
  store i8 %981, i8* %38, align 1
  %982 = add i64 %955, 9
  store i64 %982, i64* %3, align 8
  store i32 %959, i32* %957, align 4
  %983 = load i64, i64* %3, align 8
  %984 = add i64 %983, -134
  store i64 %984, i64* %3, align 8
  br label %block_.L_40f69b

block_.L_40f726:                                  ; preds = %block_.L_40f69b
  %985 = add i64 %641, -48
  %986 = add i64 %669, 3
  store i64 %986, i64* %3, align 8
  %987 = inttoptr i64 %985 to i32*
  %988 = load i32, i32* %987, align 4
  %989 = zext i32 %988 to i64
  store i64 %989, i64* %RAX.i1385, align 8
  %990 = add i64 %641, -44
  %991 = add i64 %669, 6
  store i64 %991, i64* %3, align 8
  %992 = inttoptr i64 %990 to i32*
  %993 = load i32, i32* %992, align 4
  %994 = add i32 %993, %988
  %995 = zext i32 %994 to i64
  store i64 %995, i64* %RAX.i1385, align 8
  %996 = icmp ult i32 %994, %988
  %997 = icmp ult i32 %994, %993
  %998 = or i1 %996, %997
  %999 = zext i1 %998 to i8
  store i8 %999, i8* %14, align 1
  %1000 = and i32 %994, 255
  %1001 = tail call i32 @llvm.ctpop.i32(i32 %1000)
  %1002 = trunc i32 %1001 to i8
  %1003 = and i8 %1002, 1
  %1004 = xor i8 %1003, 1
  store i8 %1004, i8* %21, align 1
  %1005 = xor i32 %993, %988
  %1006 = xor i32 %1005, %994
  %1007 = lshr i32 %1006, 4
  %1008 = trunc i32 %1007 to i8
  %1009 = and i8 %1008, 1
  store i8 %1009, i8* %26, align 1
  %1010 = icmp eq i32 %994, 0
  %1011 = zext i1 %1010 to i8
  store i8 %1011, i8* %29, align 1
  %1012 = lshr i32 %994, 31
  %1013 = trunc i32 %1012 to i8
  store i8 %1013, i8* %32, align 1
  %1014 = lshr i32 %988, 31
  %1015 = lshr i32 %993, 31
  %1016 = xor i32 %1012, %1014
  %1017 = xor i32 %1012, %1015
  %1018 = add nuw nsw i32 %1016, %1017
  %1019 = icmp eq i32 %1018, 2
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %38, align 1
  %1021 = add i64 %641, -16
  %1022 = add i64 %669, 10
  store i64 %1022, i64* %3, align 8
  %1023 = inttoptr i64 %1021 to i32*
  %1024 = load i32, i32* %1023, align 4
  %1025 = sext i32 %1024 to i64
  store i64 %1025, i64* %RCX.i1402, align 8
  %1026 = shl nsw i64 %1025, 2
  %1027 = add i64 %641, -144
  %1028 = add i64 %1027, %1026
  %1029 = add i64 %669, 17
  store i64 %1029, i64* %3, align 8
  %1030 = inttoptr i64 %1028 to i32*
  store i32 %994, i32* %1030, align 4
  %1031 = load i64, i64* %RBP.i, align 8
  %1032 = add i64 %1031, -48
  %1033 = load i64, i64* %3, align 8
  %1034 = add i64 %1033, 3
  store i64 %1034, i64* %3, align 8
  %1035 = inttoptr i64 %1032 to i32*
  %1036 = load i32, i32* %1035, align 4
  %1037 = zext i32 %1036 to i64
  store i64 %1037, i64* %RAX.i1385, align 8
  %1038 = add i64 %1031, -44
  %1039 = add i64 %1033, 6
  store i64 %1039, i64* %3, align 8
  %1040 = inttoptr i64 %1038 to i32*
  %1041 = load i32, i32* %1040, align 4
  %1042 = sub i32 %1036, %1041
  %1043 = zext i32 %1042 to i64
  store i64 %1043, i64* %RAX.i1385, align 8
  %1044 = icmp ult i32 %1036, %1041
  %1045 = zext i1 %1044 to i8
  store i8 %1045, i8* %14, align 1
  %1046 = and i32 %1042, 255
  %1047 = tail call i32 @llvm.ctpop.i32(i32 %1046)
  %1048 = trunc i32 %1047 to i8
  %1049 = and i8 %1048, 1
  %1050 = xor i8 %1049, 1
  store i8 %1050, i8* %21, align 1
  %1051 = xor i32 %1041, %1036
  %1052 = xor i32 %1051, %1042
  %1053 = lshr i32 %1052, 4
  %1054 = trunc i32 %1053 to i8
  %1055 = and i8 %1054, 1
  store i8 %1055, i8* %26, align 1
  %1056 = icmp eq i32 %1042, 0
  %1057 = zext i1 %1056 to i8
  store i8 %1057, i8* %29, align 1
  %1058 = lshr i32 %1042, 31
  %1059 = trunc i32 %1058 to i8
  store i8 %1059, i8* %32, align 1
  %1060 = lshr i32 %1036, 31
  %1061 = lshr i32 %1041, 31
  %1062 = xor i32 %1061, %1060
  %1063 = xor i32 %1058, %1060
  %1064 = add nuw nsw i32 %1063, %1062
  %1065 = icmp eq i32 %1064, 2
  %1066 = zext i1 %1065 to i8
  store i8 %1066, i8* %38, align 1
  %1067 = add i64 %1031, -16
  %1068 = add i64 %1033, 10
  store i64 %1068, i64* %3, align 8
  %1069 = inttoptr i64 %1067 to i32*
  %1070 = load i32, i32* %1069, align 4
  %1071 = sext i32 %1070 to i64
  store i64 %1071, i64* %RCX.i1402, align 8
  %1072 = shl nsw i64 %1071, 2
  %1073 = add i64 %1031, -112
  %1074 = add i64 %1073, %1072
  %1075 = add i64 %1033, 14
  store i64 %1075, i64* %3, align 8
  %1076 = inttoptr i64 %1074 to i32*
  store i32 %1042, i32* %1076, align 4
  %1077 = load i64, i64* %RBP.i, align 8
  %1078 = add i64 %1077, -36
  %1079 = load i64, i64* %3, align 8
  %1080 = add i64 %1079, 3
  store i64 %1080, i64* %3, align 8
  %1081 = inttoptr i64 %1078 to i32*
  %1082 = load i32, i32* %1081, align 4
  %1083 = shl i32 %1082, 1
  %1084 = icmp slt i32 %1082, 0
  %1085 = icmp slt i32 %1083, 0
  %1086 = xor i1 %1084, %1085
  %1087 = zext i32 %1083 to i64
  store i64 %1087, i64* %RAX.i1385, align 8
  %.lobit27 = lshr i32 %1082, 31
  %1088 = trunc i32 %.lobit27 to i8
  store i8 %1088, i8* %14, align 1
  %1089 = and i32 %1083, 254
  %1090 = tail call i32 @llvm.ctpop.i32(i32 %1089)
  %1091 = trunc i32 %1090 to i8
  %1092 = and i8 %1091, 1
  %1093 = xor i8 %1092, 1
  store i8 %1093, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1094 = icmp eq i32 %1083, 0
  %1095 = zext i1 %1094 to i8
  store i8 %1095, i8* %29, align 1
  %1096 = lshr i32 %1082, 30
  %1097 = trunc i32 %1096 to i8
  %1098 = and i8 %1097, 1
  store i8 %1098, i8* %32, align 1
  %1099 = zext i1 %1086 to i8
  store i8 %1099, i8* %38, align 1
  %1100 = add i64 %1077, -40
  %1101 = add i64 %1079, 8
  store i64 %1101, i64* %3, align 8
  %1102 = inttoptr i64 %1100 to i32*
  %1103 = load i32, i32* %1102, align 4
  %1104 = add i32 %1103, %1083
  %1105 = zext i32 %1104 to i64
  store i64 %1105, i64* %RAX.i1385, align 8
  %1106 = icmp ult i32 %1104, %1083
  %1107 = icmp ult i32 %1104, %1103
  %1108 = or i1 %1106, %1107
  %1109 = zext i1 %1108 to i8
  store i8 %1109, i8* %14, align 1
  %1110 = and i32 %1104, 255
  %1111 = tail call i32 @llvm.ctpop.i32(i32 %1110)
  %1112 = trunc i32 %1111 to i8
  %1113 = and i8 %1112, 1
  %1114 = xor i8 %1113, 1
  store i8 %1114, i8* %21, align 1
  %1115 = xor i32 %1103, %1083
  %1116 = xor i32 %1115, %1104
  %1117 = lshr i32 %1116, 4
  %1118 = trunc i32 %1117 to i8
  %1119 = and i8 %1118, 1
  store i8 %1119, i8* %26, align 1
  %1120 = icmp eq i32 %1104, 0
  %1121 = zext i1 %1120 to i8
  store i8 %1121, i8* %29, align 1
  %1122 = lshr i32 %1104, 31
  %1123 = trunc i32 %1122 to i8
  store i8 %1123, i8* %32, align 1
  %1124 = lshr i32 %1082, 30
  %1125 = and i32 %1124, 1
  %1126 = lshr i32 %1103, 31
  %1127 = xor i32 %1122, %1125
  %1128 = xor i32 %1122, %1126
  %1129 = add nuw nsw i32 %1127, %1128
  %1130 = icmp eq i32 %1129, 2
  %1131 = zext i1 %1130 to i8
  store i8 %1131, i8* %38, align 1
  %1132 = add i64 %1077, -16
  %1133 = add i64 %1079, 12
  store i64 %1133, i64* %3, align 8
  %1134 = inttoptr i64 %1132 to i32*
  %1135 = load i32, i32* %1134, align 4
  %1136 = sext i32 %1135 to i64
  store i64 %1136, i64* %RCX.i1402, align 8
  %1137 = shl nsw i64 %1136, 2
  %1138 = add i64 %1077, -128
  %1139 = add i64 %1138, %1137
  %1140 = add i64 %1079, 16
  store i64 %1140, i64* %3, align 8
  %1141 = inttoptr i64 %1139 to i32*
  store i32 %1104, i32* %1141, align 4
  %1142 = load i64, i64* %RBP.i, align 8
  %1143 = add i64 %1142, -36
  %1144 = load i64, i64* %3, align 8
  %1145 = add i64 %1144, 3
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1143 to i32*
  %1147 = load i32, i32* %1146, align 4
  %1148 = zext i32 %1147 to i64
  store i64 %1148, i64* %RAX.i1385, align 8
  %1149 = add i64 %1142, -40
  %1150 = add i64 %1144, 6
  store i64 %1150, i64* %3, align 8
  %1151 = inttoptr i64 %1149 to i32*
  %1152 = load i32, i32* %1151, align 4
  %1153 = shl i32 %1152, 1
  %1154 = zext i32 %1153 to i64
  store i64 %1154, i64* %RDX.i1446, align 8
  %1155 = sub i32 %1147, %1153
  %1156 = zext i32 %1155 to i64
  store i64 %1156, i64* %RAX.i1385, align 8
  %1157 = icmp ult i32 %1147, %1153
  %1158 = zext i1 %1157 to i8
  store i8 %1158, i8* %14, align 1
  %1159 = and i32 %1155, 255
  %1160 = tail call i32 @llvm.ctpop.i32(i32 %1159)
  %1161 = trunc i32 %1160 to i8
  %1162 = and i8 %1161, 1
  %1163 = xor i8 %1162, 1
  store i8 %1163, i8* %21, align 1
  %1164 = xor i32 %1153, %1147
  %1165 = xor i32 %1164, %1155
  %1166 = lshr i32 %1165, 4
  %1167 = trunc i32 %1166 to i8
  %1168 = and i8 %1167, 1
  store i8 %1168, i8* %26, align 1
  %1169 = icmp eq i32 %1155, 0
  %1170 = zext i1 %1169 to i8
  store i8 %1170, i8* %29, align 1
  %1171 = lshr i32 %1155, 31
  %1172 = trunc i32 %1171 to i8
  store i8 %1172, i8* %32, align 1
  %1173 = lshr i32 %1147, 31
  %1174 = lshr i32 %1152, 30
  %1175 = and i32 %1174, 1
  %1176 = xor i32 %1175, %1173
  %1177 = xor i32 %1171, %1173
  %1178 = add nuw nsw i32 %1177, %1176
  %1179 = icmp eq i32 %1178, 2
  %1180 = zext i1 %1179 to i8
  store i8 %1180, i8* %38, align 1
  %1181 = add i64 %1142, -16
  %1182 = add i64 %1144, 14
  store i64 %1182, i64* %3, align 8
  %1183 = inttoptr i64 %1181 to i32*
  %1184 = load i32, i32* %1183, align 4
  %1185 = sext i32 %1184 to i64
  store i64 %1185, i64* %RCX.i1402, align 8
  %1186 = shl nsw i64 %1185, 2
  %1187 = add i64 %1142, -96
  %1188 = add i64 %1187, %1186
  %1189 = add i64 %1144, 18
  store i64 %1189, i64* %3, align 8
  %1190 = inttoptr i64 %1188 to i32*
  store i32 %1155, i32* %1190, align 4
  %1191 = load i64, i64* %RBP.i, align 8
  %1192 = add i64 %1191, -16
  %1193 = load i64, i64* %3, align 8
  %1194 = add i64 %1193, 3
  store i64 %1194, i64* %3, align 8
  %1195 = inttoptr i64 %1192 to i32*
  %1196 = load i32, i32* %1195, align 4
  %1197 = add i32 %1196, 1
  %1198 = zext i32 %1197 to i64
  store i64 %1198, i64* %RAX.i1385, align 8
  %1199 = icmp eq i32 %1196, -1
  %1200 = icmp eq i32 %1197, 0
  %1201 = or i1 %1199, %1200
  %1202 = zext i1 %1201 to i8
  store i8 %1202, i8* %14, align 1
  %1203 = and i32 %1197, 255
  %1204 = tail call i32 @llvm.ctpop.i32(i32 %1203)
  %1205 = trunc i32 %1204 to i8
  %1206 = and i8 %1205, 1
  %1207 = xor i8 %1206, 1
  store i8 %1207, i8* %21, align 1
  %1208 = xor i32 %1197, %1196
  %1209 = lshr i32 %1208, 4
  %1210 = trunc i32 %1209 to i8
  %1211 = and i8 %1210, 1
  store i8 %1211, i8* %26, align 1
  %1212 = zext i1 %1200 to i8
  store i8 %1212, i8* %29, align 1
  %1213 = lshr i32 %1197, 31
  %1214 = trunc i32 %1213 to i8
  store i8 %1214, i8* %32, align 1
  %1215 = lshr i32 %1196, 31
  %1216 = xor i32 %1213, %1215
  %1217 = add nuw nsw i32 %1216, %1213
  %1218 = icmp eq i32 %1217, 2
  %1219 = zext i1 %1218 to i8
  store i8 %1219, i8* %38, align 1
  %1220 = add i64 %1193, 9
  store i64 %1220, i64* %3, align 8
  store i32 %1197, i32* %1195, align 4
  %1221 = load i64, i64* %3, align 8
  %1222 = add i64 %1221, -232
  store i64 %1222, i64* %3, align 8
  br label %block_.L_40f68a

block_.L_40f77e:                                  ; preds = %block_.L_40f77e.preheader, %block_.L_40f81a
  %1223 = phi i64 [ %1946, %block_.L_40f81a ], [ %.pre107, %block_.L_40f77e.preheader ]
  %1224 = load i64, i64* %RBP.i, align 8
  %1225 = add i64 %1224, -12
  %1226 = add i64 %1223, 4
  store i64 %1226, i64* %3, align 8
  %1227 = inttoptr i64 %1225 to i32*
  %1228 = load i32, i32* %1227, align 4
  %1229 = add i32 %1228, -4
  %1230 = icmp ult i32 %1228, 4
  %1231 = zext i1 %1230 to i8
  store i8 %1231, i8* %14, align 1
  %1232 = and i32 %1229, 255
  %1233 = tail call i32 @llvm.ctpop.i32(i32 %1232)
  %1234 = trunc i32 %1233 to i8
  %1235 = and i8 %1234, 1
  %1236 = xor i8 %1235, 1
  store i8 %1236, i8* %21, align 1
  %1237 = xor i32 %1229, %1228
  %1238 = lshr i32 %1237, 4
  %1239 = trunc i32 %1238 to i8
  %1240 = and i8 %1239, 1
  store i8 %1240, i8* %26, align 1
  %1241 = icmp eq i32 %1229, 0
  %1242 = zext i1 %1241 to i8
  store i8 %1242, i8* %29, align 1
  %1243 = lshr i32 %1229, 31
  %1244 = trunc i32 %1243 to i8
  store i8 %1244, i8* %32, align 1
  %1245 = lshr i32 %1228, 31
  %1246 = xor i32 %1243, %1245
  %1247 = add nuw nsw i32 %1246, %1245
  %1248 = icmp eq i32 %1247, 2
  %1249 = zext i1 %1248 to i8
  store i8 %1249, i8* %38, align 1
  %1250 = icmp ne i8 %1244, 0
  %1251 = xor i1 %1250, %1248
  %.v109 = select i1 %1251, i64 10, i64 273
  %1252 = add i64 %1223, %.v109
  %1253 = add i64 %1224, -16
  %1254 = add i64 %1252, 7
  store i64 %1254, i64* %3, align 8
  %1255 = inttoptr i64 %1253 to i32*
  store i32 0, i32* %1255, align 4
  %.pre106 = load i64, i64* %3, align 8
  br i1 %1251, label %block_.L_40f78f.preheader, label %block_.L_40f896.preheader

block_.L_40f78f.preheader:                        ; preds = %block_.L_40f77e
  br label %block_.L_40f78f

block_.L_40f896.preheader:                        ; preds = %block_.L_40f77e
  br label %block_.L_40f896

block_.L_40f78f:                                  ; preds = %block_.L_40f78f.preheader, %block_40f799
  %1256 = phi i64 [ %1595, %block_40f799 ], [ %.pre106, %block_.L_40f78f.preheader ]
  %1257 = load i64, i64* %RBP.i, align 8
  %1258 = add i64 %1257, -16
  %1259 = add i64 %1256, 4
  store i64 %1259, i64* %3, align 8
  %1260 = inttoptr i64 %1258 to i32*
  %1261 = load i32, i32* %1260, align 4
  %1262 = add i32 %1261, -2
  %1263 = icmp ult i32 %1261, 2
  %1264 = zext i1 %1263 to i8
  store i8 %1264, i8* %14, align 1
  %1265 = and i32 %1262, 255
  %1266 = tail call i32 @llvm.ctpop.i32(i32 %1265)
  %1267 = trunc i32 %1266 to i8
  %1268 = and i8 %1267, 1
  %1269 = xor i8 %1268, 1
  store i8 %1269, i8* %21, align 1
  %1270 = xor i32 %1262, %1261
  %1271 = lshr i32 %1270, 4
  %1272 = trunc i32 %1271 to i8
  %1273 = and i8 %1272, 1
  store i8 %1273, i8* %26, align 1
  %1274 = icmp eq i32 %1262, 0
  %1275 = zext i1 %1274 to i8
  store i8 %1275, i8* %29, align 1
  %1276 = lshr i32 %1262, 31
  %1277 = trunc i32 %1276 to i8
  store i8 %1277, i8* %32, align 1
  %1278 = lshr i32 %1261, 31
  %1279 = xor i32 %1276, %1278
  %1280 = add nuw nsw i32 %1279, %1278
  %1281 = icmp eq i32 %1280, 2
  %1282 = zext i1 %1281 to i8
  store i8 %1282, i8* %38, align 1
  %1283 = icmp ne i8 %1277, 0
  %1284 = xor i1 %1283, %1281
  %.v115 = select i1 %1284, i64 10, i64 139
  %1285 = add i64 %1256, %.v115
  %1286 = add i64 %1257, -144
  %1287 = add i64 %1285, 7
  store i64 %1287, i64* %3, align 8
  store i64 %1286, i64* %RAX.i1385, align 8
  br i1 %1284, label %block_40f799, label %block_.L_40f81a

block_40f799:                                     ; preds = %block_.L_40f78f
  store i64 3, i64* %RCX.i1402, align 8
  %1288 = add i64 %1285, 15
  store i64 %1288, i64* %3, align 8
  %1289 = load i32, i32* %1260, align 4
  %1290 = sub i32 3, %1289
  %1291 = zext i32 %1290 to i64
  store i64 %1291, i64* %RCX.i1402, align 8
  %1292 = icmp ugt i32 %1289, 3
  %1293 = zext i1 %1292 to i8
  store i8 %1293, i8* %14, align 1
  %1294 = and i32 %1290, 255
  %1295 = tail call i32 @llvm.ctpop.i32(i32 %1294)
  %1296 = trunc i32 %1295 to i8
  %1297 = and i8 %1296, 1
  %1298 = xor i8 %1297, 1
  store i8 %1298, i8* %21, align 1
  %1299 = xor i32 %1290, %1289
  %1300 = lshr i32 %1299, 4
  %1301 = trunc i32 %1300 to i8
  %1302 = and i8 %1301, 1
  store i8 %1302, i8* %26, align 1
  %1303 = icmp eq i32 %1290, 0
  %1304 = zext i1 %1303 to i8
  store i8 %1304, i8* %29, align 1
  %1305 = lshr i32 %1290, 31
  %1306 = trunc i32 %1305 to i8
  store i8 %1306, i8* %32, align 1
  %1307 = lshr i32 %1289, 31
  %1308 = add nuw nsw i32 %1305, %1307
  %1309 = icmp eq i32 %1308, 2
  %1310 = zext i1 %1309 to i8
  store i8 %1310, i8* %38, align 1
  %1311 = add i64 %1257, -24
  %1312 = add i64 %1285, 18
  store i64 %1312, i64* %3, align 8
  %1313 = inttoptr i64 %1311 to i32*
  store i32 %1290, i32* %1313, align 4
  %1314 = load i64, i64* %RBP.i, align 8
  %1315 = add i64 %1314, -12
  %1316 = load i64, i64* %3, align 8
  %1317 = add i64 %1316, 4
  store i64 %1317, i64* %3, align 8
  %1318 = inttoptr i64 %1315 to i32*
  %1319 = load i32, i32* %1318, align 4
  %1320 = sext i32 %1319 to i64
  %1321 = shl nsw i64 %1320, 4
  store i64 %1321, i64* %RDX.i1446, align 8
  %1322 = load i64, i64* %RAX.i1385, align 8
  %1323 = add i64 %1321, %1322
  store i64 %1323, i64* %RSI.i1419, align 8
  %1324 = icmp ult i64 %1323, %1322
  %1325 = icmp ult i64 %1323, %1321
  %1326 = or i1 %1324, %1325
  %1327 = zext i1 %1326 to i8
  store i8 %1327, i8* %14, align 1
  %1328 = trunc i64 %1323 to i32
  %1329 = and i32 %1328, 255
  %1330 = tail call i32 @llvm.ctpop.i32(i32 %1329)
  %1331 = trunc i32 %1330 to i8
  %1332 = and i8 %1331, 1
  %1333 = xor i8 %1332, 1
  store i8 %1333, i8* %21, align 1
  %1334 = xor i64 %1321, %1322
  %1335 = xor i64 %1334, %1323
  %1336 = lshr i64 %1335, 4
  %1337 = trunc i64 %1336 to i8
  %1338 = and i8 %1337, 1
  store i8 %1338, i8* %26, align 1
  %1339 = icmp eq i64 %1323, 0
  %1340 = zext i1 %1339 to i8
  store i8 %1340, i8* %29, align 1
  %1341 = lshr i64 %1323, 63
  %1342 = trunc i64 %1341 to i8
  store i8 %1342, i8* %32, align 1
  %1343 = lshr i64 %1322, 63
  %1344 = lshr i64 %1320, 59
  %1345 = and i64 %1344, 1
  %1346 = xor i64 %1341, %1343
  %1347 = xor i64 %1341, %1345
  %1348 = add nuw nsw i64 %1346, %1347
  %1349 = icmp eq i64 %1348, 2
  %1350 = zext i1 %1349 to i8
  store i8 %1350, i8* %38, align 1
  %1351 = add i64 %1314, -16
  %1352 = add i64 %1316, 18
  store i64 %1352, i64* %3, align 8
  %1353 = inttoptr i64 %1351 to i32*
  %1354 = load i32, i32* %1353, align 4
  %1355 = sext i32 %1354 to i64
  store i64 %1355, i64* %RDX.i1446, align 8
  %1356 = shl nsw i64 %1355, 2
  %1357 = add i64 %1356, %1323
  %1358 = add i64 %1316, 21
  store i64 %1358, i64* %3, align 8
  %1359 = inttoptr i64 %1357 to i32*
  %1360 = load i32, i32* %1359, align 4
  %1361 = zext i32 %1360 to i64
  store i64 %1361, i64* %RCX.i1402, align 8
  %1362 = add i64 %1316, 25
  store i64 %1362, i64* %3, align 8
  %1363 = load i32, i32* %1318, align 4
  %1364 = sext i32 %1363 to i64
  %1365 = shl nsw i64 %1364, 4
  store i64 %1365, i64* %RDX.i1446, align 8
  %1366 = add i64 %1365, %1322
  store i64 %1366, i64* %RSI.i1419, align 8
  %1367 = icmp ult i64 %1366, %1322
  %1368 = icmp ult i64 %1366, %1365
  %1369 = or i1 %1367, %1368
  %1370 = zext i1 %1369 to i8
  store i8 %1370, i8* %14, align 1
  %1371 = trunc i64 %1366 to i32
  %1372 = and i32 %1371, 255
  %1373 = tail call i32 @llvm.ctpop.i32(i32 %1372)
  %1374 = trunc i32 %1373 to i8
  %1375 = and i8 %1374, 1
  %1376 = xor i8 %1375, 1
  store i8 %1376, i8* %21, align 1
  %1377 = xor i64 %1365, %1322
  %1378 = xor i64 %1377, %1366
  %1379 = lshr i64 %1378, 4
  %1380 = trunc i64 %1379 to i8
  %1381 = and i8 %1380, 1
  store i8 %1381, i8* %26, align 1
  %1382 = icmp eq i64 %1366, 0
  %1383 = zext i1 %1382 to i8
  store i8 %1383, i8* %29, align 1
  %1384 = lshr i64 %1366, 63
  %1385 = trunc i64 %1384 to i8
  store i8 %1385, i8* %32, align 1
  %1386 = lshr i64 %1364, 59
  %1387 = and i64 %1386, 1
  %1388 = xor i64 %1384, %1343
  %1389 = xor i64 %1384, %1387
  %1390 = add nuw nsw i64 %1388, %1389
  %1391 = icmp eq i64 %1390, 2
  %1392 = zext i1 %1391 to i8
  store i8 %1392, i8* %38, align 1
  %1393 = load i64, i64* %RBP.i, align 8
  %1394 = add i64 %1393, -24
  %1395 = add i64 %1316, 39
  store i64 %1395, i64* %3, align 8
  %1396 = inttoptr i64 %1394 to i32*
  %1397 = load i32, i32* %1396, align 4
  %1398 = sext i32 %1397 to i64
  store i64 %1398, i64* %RDX.i1446, align 8
  %1399 = shl nsw i64 %1398, 2
  %1400 = add i64 %1366, %1399
  %1401 = add i64 %1316, 42
  store i64 %1401, i64* %3, align 8
  %1402 = inttoptr i64 %1400 to i32*
  %1403 = load i32, i32* %1402, align 4
  %1404 = add i32 %1403, %1360
  %1405 = zext i32 %1404 to i64
  store i64 %1405, i64* %RCX.i1402, align 8
  %1406 = icmp ult i32 %1404, %1360
  %1407 = icmp ult i32 %1404, %1403
  %1408 = or i1 %1406, %1407
  %1409 = zext i1 %1408 to i8
  store i8 %1409, i8* %14, align 1
  %1410 = and i32 %1404, 255
  %1411 = tail call i32 @llvm.ctpop.i32(i32 %1410)
  %1412 = trunc i32 %1411 to i8
  %1413 = and i8 %1412, 1
  %1414 = xor i8 %1413, 1
  store i8 %1414, i8* %21, align 1
  %1415 = xor i32 %1403, %1360
  %1416 = xor i32 %1415, %1404
  %1417 = lshr i32 %1416, 4
  %1418 = trunc i32 %1417 to i8
  %1419 = and i8 %1418, 1
  store i8 %1419, i8* %26, align 1
  %1420 = icmp eq i32 %1404, 0
  %1421 = zext i1 %1420 to i8
  store i8 %1421, i8* %29, align 1
  %1422 = lshr i32 %1404, 31
  %1423 = trunc i32 %1422 to i8
  store i8 %1423, i8* %32, align 1
  %1424 = lshr i32 %1360, 31
  %1425 = lshr i32 %1403, 31
  %1426 = xor i32 %1422, %1424
  %1427 = xor i32 %1422, %1425
  %1428 = add nuw nsw i32 %1426, %1427
  %1429 = icmp eq i32 %1428, 2
  %1430 = zext i1 %1429 to i8
  store i8 %1430, i8* %38, align 1
  %1431 = add i64 %1393, -16
  %1432 = add i64 %1316, 46
  store i64 %1432, i64* %3, align 8
  %1433 = inttoptr i64 %1431 to i32*
  %1434 = load i32, i32* %1433, align 4
  %1435 = sext i32 %1434 to i64
  store i64 %1435, i64* %RDX.i1446, align 8
  %1436 = shl nsw i64 %1435, 2
  %1437 = add i64 %1393, -48
  %1438 = add i64 %1437, %1436
  %1439 = add i64 %1316, 50
  store i64 %1439, i64* %3, align 8
  %1440 = inttoptr i64 %1438 to i32*
  store i32 %1404, i32* %1440, align 4
  %1441 = load i64, i64* %RBP.i, align 8
  %1442 = add i64 %1441, -12
  %1443 = load i64, i64* %3, align 8
  %1444 = add i64 %1443, 4
  store i64 %1444, i64* %3, align 8
  %1445 = inttoptr i64 %1442 to i32*
  %1446 = load i32, i32* %1445, align 4
  %1447 = sext i32 %1446 to i64
  %1448 = shl nsw i64 %1447, 4
  store i64 %1448, i64* %RDX.i1446, align 8
  %1449 = load i64, i64* %RAX.i1385, align 8
  %1450 = add i64 %1448, %1449
  store i64 %1450, i64* %RSI.i1419, align 8
  %1451 = icmp ult i64 %1450, %1449
  %1452 = icmp ult i64 %1450, %1448
  %1453 = or i1 %1451, %1452
  %1454 = zext i1 %1453 to i8
  store i8 %1454, i8* %14, align 1
  %1455 = trunc i64 %1450 to i32
  %1456 = and i32 %1455, 255
  %1457 = tail call i32 @llvm.ctpop.i32(i32 %1456)
  %1458 = trunc i32 %1457 to i8
  %1459 = and i8 %1458, 1
  %1460 = xor i8 %1459, 1
  store i8 %1460, i8* %21, align 1
  %1461 = xor i64 %1448, %1449
  %1462 = xor i64 %1461, %1450
  %1463 = lshr i64 %1462, 4
  %1464 = trunc i64 %1463 to i8
  %1465 = and i8 %1464, 1
  store i8 %1465, i8* %26, align 1
  %1466 = icmp eq i64 %1450, 0
  %1467 = zext i1 %1466 to i8
  store i8 %1467, i8* %29, align 1
  %1468 = lshr i64 %1450, 63
  %1469 = trunc i64 %1468 to i8
  store i8 %1469, i8* %32, align 1
  %1470 = lshr i64 %1449, 63
  %1471 = lshr i64 %1447, 59
  %1472 = and i64 %1471, 1
  %1473 = xor i64 %1468, %1470
  %1474 = xor i64 %1468, %1472
  %1475 = add nuw nsw i64 %1473, %1474
  %1476 = icmp eq i64 %1475, 2
  %1477 = zext i1 %1476 to i8
  store i8 %1477, i8* %38, align 1
  %1478 = add i64 %1441, -16
  %1479 = add i64 %1443, 18
  store i64 %1479, i64* %3, align 8
  %1480 = inttoptr i64 %1478 to i32*
  %1481 = load i32, i32* %1480, align 4
  %1482 = sext i32 %1481 to i64
  store i64 %1482, i64* %RDX.i1446, align 8
  %1483 = shl nsw i64 %1482, 2
  %1484 = add i64 %1483, %1450
  %1485 = add i64 %1443, 21
  store i64 %1485, i64* %3, align 8
  %1486 = inttoptr i64 %1484 to i32*
  %1487 = load i32, i32* %1486, align 4
  %1488 = zext i32 %1487 to i64
  store i64 %1488, i64* %RCX.i1402, align 8
  %1489 = add i64 %1443, 25
  store i64 %1489, i64* %3, align 8
  %1490 = load i32, i32* %1445, align 4
  %1491 = sext i32 %1490 to i64
  %1492 = shl nsw i64 %1491, 4
  store i64 %1492, i64* %RDX.i1446, align 8
  %1493 = add i64 %1492, %1449
  store i64 %1493, i64* %RAX.i1385, align 8
  %1494 = icmp ult i64 %1493, %1449
  %1495 = icmp ult i64 %1493, %1492
  %1496 = or i1 %1494, %1495
  %1497 = zext i1 %1496 to i8
  store i8 %1497, i8* %14, align 1
  %1498 = trunc i64 %1493 to i32
  %1499 = and i32 %1498, 255
  %1500 = tail call i32 @llvm.ctpop.i32(i32 %1499)
  %1501 = trunc i32 %1500 to i8
  %1502 = and i8 %1501, 1
  %1503 = xor i8 %1502, 1
  store i8 %1503, i8* %21, align 1
  %1504 = xor i64 %1492, %1449
  %1505 = xor i64 %1504, %1493
  %1506 = lshr i64 %1505, 4
  %1507 = trunc i64 %1506 to i8
  %1508 = and i8 %1507, 1
  store i8 %1508, i8* %26, align 1
  %1509 = icmp eq i64 %1493, 0
  %1510 = zext i1 %1509 to i8
  store i8 %1510, i8* %29, align 1
  %1511 = lshr i64 %1493, 63
  %1512 = trunc i64 %1511 to i8
  store i8 %1512, i8* %32, align 1
  %1513 = lshr i64 %1491, 59
  %1514 = and i64 %1513, 1
  %1515 = xor i64 %1511, %1470
  %1516 = xor i64 %1511, %1514
  %1517 = add nuw nsw i64 %1515, %1516
  %1518 = icmp eq i64 %1517, 2
  %1519 = zext i1 %1518 to i8
  store i8 %1519, i8* %38, align 1
  %1520 = load i64, i64* %RBP.i, align 8
  %1521 = add i64 %1520, -24
  %1522 = add i64 %1443, 36
  store i64 %1522, i64* %3, align 8
  %1523 = inttoptr i64 %1521 to i32*
  %1524 = load i32, i32* %1523, align 4
  %1525 = sext i32 %1524 to i64
  store i64 %1525, i64* %RDX.i1446, align 8
  %1526 = shl nsw i64 %1525, 2
  %1527 = add i64 %1493, %1526
  %1528 = add i64 %1443, 39
  store i64 %1528, i64* %3, align 8
  %1529 = inttoptr i64 %1527 to i32*
  %1530 = load i32, i32* %1529, align 4
  %1531 = sub i32 %1487, %1530
  %1532 = zext i32 %1531 to i64
  store i64 %1532, i64* %RCX.i1402, align 8
  %1533 = icmp ult i32 %1487, %1530
  %1534 = zext i1 %1533 to i8
  store i8 %1534, i8* %14, align 1
  %1535 = and i32 %1531, 255
  %1536 = tail call i32 @llvm.ctpop.i32(i32 %1535)
  %1537 = trunc i32 %1536 to i8
  %1538 = and i8 %1537, 1
  %1539 = xor i8 %1538, 1
  store i8 %1539, i8* %21, align 1
  %1540 = xor i32 %1530, %1487
  %1541 = xor i32 %1540, %1531
  %1542 = lshr i32 %1541, 4
  %1543 = trunc i32 %1542 to i8
  %1544 = and i8 %1543, 1
  store i8 %1544, i8* %26, align 1
  %1545 = icmp eq i32 %1531, 0
  %1546 = zext i1 %1545 to i8
  store i8 %1546, i8* %29, align 1
  %1547 = lshr i32 %1531, 31
  %1548 = trunc i32 %1547 to i8
  store i8 %1548, i8* %32, align 1
  %1549 = lshr i32 %1487, 31
  %1550 = lshr i32 %1530, 31
  %1551 = xor i32 %1550, %1549
  %1552 = xor i32 %1547, %1549
  %1553 = add nuw nsw i32 %1552, %1551
  %1554 = icmp eq i32 %1553, 2
  %1555 = zext i1 %1554 to i8
  store i8 %1555, i8* %38, align 1
  %1556 = add i64 %1443, 43
  store i64 %1556, i64* %3, align 8
  %1557 = load i32, i32* %1523, align 4
  %1558 = sext i32 %1557 to i64
  store i64 %1558, i64* %RAX.i1385, align 8
  %1559 = shl nsw i64 %1558, 2
  %1560 = add i64 %1520, -48
  %1561 = add i64 %1560, %1559
  %1562 = add i64 %1443, 47
  store i64 %1562, i64* %3, align 8
  %1563 = inttoptr i64 %1561 to i32*
  store i32 %1531, i32* %1563, align 4
  %1564 = load i64, i64* %RBP.i, align 8
  %1565 = add i64 %1564, -16
  %1566 = load i64, i64* %3, align 8
  %1567 = add i64 %1566, 3
  store i64 %1567, i64* %3, align 8
  %1568 = inttoptr i64 %1565 to i32*
  %1569 = load i32, i32* %1568, align 4
  %1570 = add i32 %1569, 1
  %1571 = zext i32 %1570 to i64
  store i64 %1571, i64* %RAX.i1385, align 8
  %1572 = icmp eq i32 %1569, -1
  %1573 = icmp eq i32 %1570, 0
  %1574 = or i1 %1572, %1573
  %1575 = zext i1 %1574 to i8
  store i8 %1575, i8* %14, align 1
  %1576 = and i32 %1570, 255
  %1577 = tail call i32 @llvm.ctpop.i32(i32 %1576)
  %1578 = trunc i32 %1577 to i8
  %1579 = and i8 %1578, 1
  %1580 = xor i8 %1579, 1
  store i8 %1580, i8* %21, align 1
  %1581 = xor i32 %1570, %1569
  %1582 = lshr i32 %1581, 4
  %1583 = trunc i32 %1582 to i8
  %1584 = and i8 %1583, 1
  store i8 %1584, i8* %26, align 1
  %1585 = zext i1 %1573 to i8
  store i8 %1585, i8* %29, align 1
  %1586 = lshr i32 %1570, 31
  %1587 = trunc i32 %1586 to i8
  store i8 %1587, i8* %32, align 1
  %1588 = lshr i32 %1569, 31
  %1589 = xor i32 %1586, %1588
  %1590 = add nuw nsw i32 %1589, %1586
  %1591 = icmp eq i32 %1590, 2
  %1592 = zext i1 %1591 to i8
  store i8 %1592, i8* %38, align 1
  %1593 = add i64 %1566, 9
  store i64 %1593, i64* %3, align 8
  store i32 %1570, i32* %1568, align 4
  %1594 = load i64, i64* %3, align 8
  %1595 = add i64 %1594, -134
  store i64 %1595, i64* %3, align 8
  br label %block_.L_40f78f

block_.L_40f81a:                                  ; preds = %block_.L_40f78f
  %1596 = add i64 %1257, -48
  %1597 = add i64 %1285, 10
  store i64 %1597, i64* %3, align 8
  %1598 = inttoptr i64 %1596 to i32*
  %1599 = load i32, i32* %1598, align 4
  %1600 = zext i32 %1599 to i64
  store i64 %1600, i64* %RCX.i1402, align 8
  %1601 = add i64 %1257, -44
  %1602 = add i64 %1285, 13
  store i64 %1602, i64* %3, align 8
  %1603 = inttoptr i64 %1601 to i32*
  %1604 = load i32, i32* %1603, align 4
  %1605 = add i32 %1604, %1599
  %1606 = zext i32 %1605 to i64
  store i64 %1606, i64* %RCX.i1402, align 8
  %1607 = icmp ult i32 %1605, %1599
  %1608 = icmp ult i32 %1605, %1604
  %1609 = or i1 %1607, %1608
  %1610 = zext i1 %1609 to i8
  store i8 %1610, i8* %14, align 1
  %1611 = and i32 %1605, 255
  %1612 = tail call i32 @llvm.ctpop.i32(i32 %1611)
  %1613 = trunc i32 %1612 to i8
  %1614 = and i8 %1613, 1
  %1615 = xor i8 %1614, 1
  store i8 %1615, i8* %21, align 1
  %1616 = xor i32 %1604, %1599
  %1617 = xor i32 %1616, %1605
  %1618 = lshr i32 %1617, 4
  %1619 = trunc i32 %1618 to i8
  %1620 = and i8 %1619, 1
  store i8 %1620, i8* %26, align 1
  %1621 = icmp eq i32 %1605, 0
  %1622 = zext i1 %1621 to i8
  store i8 %1622, i8* %29, align 1
  %1623 = lshr i32 %1605, 31
  %1624 = trunc i32 %1623 to i8
  store i8 %1624, i8* %32, align 1
  %1625 = lshr i32 %1599, 31
  %1626 = lshr i32 %1604, 31
  %1627 = xor i32 %1623, %1625
  %1628 = xor i32 %1623, %1626
  %1629 = add nuw nsw i32 %1627, %1628
  %1630 = icmp eq i32 %1629, 2
  %1631 = zext i1 %1630 to i8
  store i8 %1631, i8* %38, align 1
  %1632 = add i64 %1257, -12
  %1633 = add i64 %1285, 17
  store i64 %1633, i64* %3, align 8
  %1634 = inttoptr i64 %1632 to i32*
  %1635 = load i32, i32* %1634, align 4
  %1636 = sext i32 %1635 to i64
  %1637 = shl nsw i64 %1636, 4
  store i64 %1637, i64* %RDX.i1446, align 8
  %1638 = add i64 %1637, %1286
  store i64 %1638, i64* %RSI.i1419, align 8
  %1639 = icmp ult i64 %1638, %1286
  %1640 = icmp ult i64 %1638, %1637
  %1641 = or i1 %1639, %1640
  %1642 = zext i1 %1641 to i8
  store i8 %1642, i8* %14, align 1
  %1643 = trunc i64 %1638 to i32
  %1644 = and i32 %1643, 255
  %1645 = tail call i32 @llvm.ctpop.i32(i32 %1644)
  %1646 = trunc i32 %1645 to i8
  %1647 = and i8 %1646, 1
  %1648 = xor i8 %1647, 1
  store i8 %1648, i8* %21, align 1
  %1649 = xor i64 %1637, %1286
  %1650 = xor i64 %1649, %1638
  %1651 = lshr i64 %1650, 4
  %1652 = trunc i64 %1651 to i8
  %1653 = and i8 %1652, 1
  store i8 %1653, i8* %26, align 1
  %1654 = icmp eq i64 %1638, 0
  %1655 = zext i1 %1654 to i8
  store i8 %1655, i8* %29, align 1
  %1656 = lshr i64 %1638, 63
  %1657 = trunc i64 %1656 to i8
  store i8 %1657, i8* %32, align 1
  %1658 = lshr i64 %1286, 63
  %1659 = lshr i64 %1636, 59
  %1660 = and i64 %1659, 1
  %1661 = xor i64 %1656, %1658
  %1662 = xor i64 %1656, %1660
  %1663 = add nuw nsw i64 %1661, %1662
  %1664 = icmp eq i64 %1663, 2
  %1665 = zext i1 %1664 to i8
  store i8 %1665, i8* %38, align 1
  %1666 = inttoptr i64 %1638 to i32*
  %1667 = load i32, i32* %ECX.i1366, align 4
  %1668 = add i64 %1285, 29
  store i64 %1668, i64* %3, align 8
  store i32 %1667, i32* %1666, align 4
  %1669 = load i64, i64* %RBP.i, align 8
  %1670 = add i64 %1669, -48
  %1671 = load i64, i64* %3, align 8
  %1672 = add i64 %1671, 3
  store i64 %1672, i64* %3, align 8
  %1673 = inttoptr i64 %1670 to i32*
  %1674 = load i32, i32* %1673, align 4
  %1675 = zext i32 %1674 to i64
  store i64 %1675, i64* %RCX.i1402, align 8
  %1676 = add i64 %1669, -44
  %1677 = add i64 %1671, 6
  store i64 %1677, i64* %3, align 8
  %1678 = inttoptr i64 %1676 to i32*
  %1679 = load i32, i32* %1678, align 4
  %1680 = sub i32 %1674, %1679
  %1681 = zext i32 %1680 to i64
  store i64 %1681, i64* %RCX.i1402, align 8
  %1682 = icmp ult i32 %1674, %1679
  %1683 = zext i1 %1682 to i8
  store i8 %1683, i8* %14, align 1
  %1684 = and i32 %1680, 255
  %1685 = tail call i32 @llvm.ctpop.i32(i32 %1684)
  %1686 = trunc i32 %1685 to i8
  %1687 = and i8 %1686, 1
  %1688 = xor i8 %1687, 1
  store i8 %1688, i8* %21, align 1
  %1689 = xor i32 %1679, %1674
  %1690 = xor i32 %1689, %1680
  %1691 = lshr i32 %1690, 4
  %1692 = trunc i32 %1691 to i8
  %1693 = and i8 %1692, 1
  store i8 %1693, i8* %26, align 1
  %1694 = icmp eq i32 %1680, 0
  %1695 = zext i1 %1694 to i8
  store i8 %1695, i8* %29, align 1
  %1696 = lshr i32 %1680, 31
  %1697 = trunc i32 %1696 to i8
  store i8 %1697, i8* %32, align 1
  %1698 = lshr i32 %1674, 31
  %1699 = lshr i32 %1679, 31
  %1700 = xor i32 %1699, %1698
  %1701 = xor i32 %1696, %1698
  %1702 = add nuw nsw i32 %1701, %1700
  %1703 = icmp eq i32 %1702, 2
  %1704 = zext i1 %1703 to i8
  store i8 %1704, i8* %38, align 1
  %1705 = add i64 %1669, -12
  %1706 = add i64 %1671, 10
  store i64 %1706, i64* %3, align 8
  %1707 = inttoptr i64 %1705 to i32*
  %1708 = load i32, i32* %1707, align 4
  %1709 = sext i32 %1708 to i64
  %1710 = shl nsw i64 %1709, 4
  store i64 %1710, i64* %RDX.i1446, align 8
  %1711 = load i64, i64* %RAX.i1385, align 8
  %1712 = add i64 %1710, %1711
  store i64 %1712, i64* %RSI.i1419, align 8
  %1713 = icmp ult i64 %1712, %1711
  %1714 = icmp ult i64 %1712, %1710
  %1715 = or i1 %1713, %1714
  %1716 = zext i1 %1715 to i8
  store i8 %1716, i8* %14, align 1
  %1717 = trunc i64 %1712 to i32
  %1718 = and i32 %1717, 255
  %1719 = tail call i32 @llvm.ctpop.i32(i32 %1718)
  %1720 = trunc i32 %1719 to i8
  %1721 = and i8 %1720, 1
  %1722 = xor i8 %1721, 1
  store i8 %1722, i8* %21, align 1
  %1723 = xor i64 %1710, %1711
  %1724 = xor i64 %1723, %1712
  %1725 = lshr i64 %1724, 4
  %1726 = trunc i64 %1725 to i8
  %1727 = and i8 %1726, 1
  store i8 %1727, i8* %26, align 1
  %1728 = icmp eq i64 %1712, 0
  %1729 = zext i1 %1728 to i8
  store i8 %1729, i8* %29, align 1
  %1730 = lshr i64 %1712, 63
  %1731 = trunc i64 %1730 to i8
  store i8 %1731, i8* %32, align 1
  %1732 = lshr i64 %1711, 63
  %1733 = lshr i64 %1709, 59
  %1734 = and i64 %1733, 1
  %1735 = xor i64 %1730, %1732
  %1736 = xor i64 %1730, %1734
  %1737 = add nuw nsw i64 %1735, %1736
  %1738 = icmp eq i64 %1737, 2
  %1739 = zext i1 %1738 to i8
  store i8 %1739, i8* %38, align 1
  %1740 = add i64 %1712, 8
  %1741 = load i32, i32* %ECX.i1366, align 4
  %1742 = add i64 %1671, 23
  store i64 %1742, i64* %3, align 8
  %1743 = inttoptr i64 %1740 to i32*
  store i32 %1741, i32* %1743, align 4
  %1744 = load i64, i64* %RBP.i, align 8
  %1745 = add i64 %1744, -36
  %1746 = load i64, i64* %3, align 8
  %1747 = add i64 %1746, 3
  store i64 %1747, i64* %3, align 8
  %1748 = inttoptr i64 %1745 to i32*
  %1749 = load i32, i32* %1748, align 4
  %1750 = shl i32 %1749, 1
  %1751 = icmp slt i32 %1749, 0
  %1752 = icmp slt i32 %1750, 0
  %1753 = xor i1 %1751, %1752
  %1754 = zext i32 %1750 to i64
  store i64 %1754, i64* %RCX.i1402, align 8
  %.lobit35 = lshr i32 %1749, 31
  %1755 = trunc i32 %.lobit35 to i8
  store i8 %1755, i8* %14, align 1
  %1756 = and i32 %1750, 254
  %1757 = tail call i32 @llvm.ctpop.i32(i32 %1756)
  %1758 = trunc i32 %1757 to i8
  %1759 = and i8 %1758, 1
  %1760 = xor i8 %1759, 1
  store i8 %1760, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1761 = icmp eq i32 %1750, 0
  %1762 = zext i1 %1761 to i8
  store i8 %1762, i8* %29, align 1
  %1763 = lshr i32 %1749, 30
  %1764 = trunc i32 %1763 to i8
  %1765 = and i8 %1764, 1
  store i8 %1765, i8* %32, align 1
  %1766 = zext i1 %1753 to i8
  store i8 %1766, i8* %38, align 1
  %1767 = add i64 %1744, -40
  %1768 = add i64 %1746, 8
  store i64 %1768, i64* %3, align 8
  %1769 = inttoptr i64 %1767 to i32*
  %1770 = load i32, i32* %1769, align 4
  %1771 = add i32 %1770, %1750
  %1772 = zext i32 %1771 to i64
  store i64 %1772, i64* %RCX.i1402, align 8
  %1773 = icmp ult i32 %1771, %1750
  %1774 = icmp ult i32 %1771, %1770
  %1775 = or i1 %1773, %1774
  %1776 = zext i1 %1775 to i8
  store i8 %1776, i8* %14, align 1
  %1777 = and i32 %1771, 255
  %1778 = tail call i32 @llvm.ctpop.i32(i32 %1777)
  %1779 = trunc i32 %1778 to i8
  %1780 = and i8 %1779, 1
  %1781 = xor i8 %1780, 1
  store i8 %1781, i8* %21, align 1
  %1782 = xor i32 %1770, %1750
  %1783 = xor i32 %1782, %1771
  %1784 = lshr i32 %1783, 4
  %1785 = trunc i32 %1784 to i8
  %1786 = and i8 %1785, 1
  store i8 %1786, i8* %26, align 1
  %1787 = icmp eq i32 %1771, 0
  %1788 = zext i1 %1787 to i8
  store i8 %1788, i8* %29, align 1
  %1789 = lshr i32 %1771, 31
  %1790 = trunc i32 %1789 to i8
  store i8 %1790, i8* %32, align 1
  %1791 = lshr i32 %1749, 30
  %1792 = and i32 %1791, 1
  %1793 = lshr i32 %1770, 31
  %1794 = xor i32 %1789, %1792
  %1795 = xor i32 %1789, %1793
  %1796 = add nuw nsw i32 %1794, %1795
  %1797 = icmp eq i32 %1796, 2
  %1798 = zext i1 %1797 to i8
  store i8 %1798, i8* %38, align 1
  %1799 = add i64 %1744, -12
  %1800 = add i64 %1746, 12
  store i64 %1800, i64* %3, align 8
  %1801 = inttoptr i64 %1799 to i32*
  %1802 = load i32, i32* %1801, align 4
  %1803 = sext i32 %1802 to i64
  %1804 = shl nsw i64 %1803, 4
  store i64 %1804, i64* %RDX.i1446, align 8
  %1805 = load i64, i64* %RAX.i1385, align 8
  %1806 = add i64 %1804, %1805
  store i64 %1806, i64* %RSI.i1419, align 8
  %1807 = icmp ult i64 %1806, %1805
  %1808 = icmp ult i64 %1806, %1804
  %1809 = or i1 %1807, %1808
  %1810 = zext i1 %1809 to i8
  store i8 %1810, i8* %14, align 1
  %1811 = trunc i64 %1806 to i32
  %1812 = and i32 %1811, 255
  %1813 = tail call i32 @llvm.ctpop.i32(i32 %1812)
  %1814 = trunc i32 %1813 to i8
  %1815 = and i8 %1814, 1
  %1816 = xor i8 %1815, 1
  store i8 %1816, i8* %21, align 1
  %1817 = xor i64 %1804, %1805
  %1818 = xor i64 %1817, %1806
  %1819 = lshr i64 %1818, 4
  %1820 = trunc i64 %1819 to i8
  %1821 = and i8 %1820, 1
  store i8 %1821, i8* %26, align 1
  %1822 = icmp eq i64 %1806, 0
  %1823 = zext i1 %1822 to i8
  store i8 %1823, i8* %29, align 1
  %1824 = lshr i64 %1806, 63
  %1825 = trunc i64 %1824 to i8
  store i8 %1825, i8* %32, align 1
  %1826 = lshr i64 %1805, 63
  %1827 = lshr i64 %1803, 59
  %1828 = and i64 %1827, 1
  %1829 = xor i64 %1824, %1826
  %1830 = xor i64 %1824, %1828
  %1831 = add nuw nsw i64 %1829, %1830
  %1832 = icmp eq i64 %1831, 2
  %1833 = zext i1 %1832 to i8
  store i8 %1833, i8* %38, align 1
  %1834 = add i64 %1806, 4
  %1835 = load i32, i32* %ECX.i1366, align 4
  %1836 = add i64 %1746, 25
  store i64 %1836, i64* %3, align 8
  %1837 = inttoptr i64 %1834 to i32*
  store i32 %1835, i32* %1837, align 4
  %1838 = load i64, i64* %RBP.i, align 8
  %1839 = add i64 %1838, -36
  %1840 = load i64, i64* %3, align 8
  %1841 = add i64 %1840, 3
  store i64 %1841, i64* %3, align 8
  %1842 = inttoptr i64 %1839 to i32*
  %1843 = load i32, i32* %1842, align 4
  %1844 = zext i32 %1843 to i64
  store i64 %1844, i64* %RCX.i1402, align 8
  %1845 = add i64 %1838, -40
  %1846 = add i64 %1840, 6
  store i64 %1846, i64* %3, align 8
  %1847 = inttoptr i64 %1845 to i32*
  %1848 = load i32, i32* %1847, align 4
  %1849 = shl i32 %1848, 1
  %1850 = zext i32 %1849 to i64
  store i64 %1850, i64* %RDI.i1350, align 8
  %1851 = sub i32 %1843, %1849
  %1852 = zext i32 %1851 to i64
  store i64 %1852, i64* %RCX.i1402, align 8
  %1853 = icmp ult i32 %1843, %1849
  %1854 = zext i1 %1853 to i8
  store i8 %1854, i8* %14, align 1
  %1855 = and i32 %1851, 255
  %1856 = tail call i32 @llvm.ctpop.i32(i32 %1855)
  %1857 = trunc i32 %1856 to i8
  %1858 = and i8 %1857, 1
  %1859 = xor i8 %1858, 1
  store i8 %1859, i8* %21, align 1
  %1860 = xor i32 %1849, %1843
  %1861 = xor i32 %1860, %1851
  %1862 = lshr i32 %1861, 4
  %1863 = trunc i32 %1862 to i8
  %1864 = and i8 %1863, 1
  store i8 %1864, i8* %26, align 1
  %1865 = icmp eq i32 %1851, 0
  %1866 = zext i1 %1865 to i8
  store i8 %1866, i8* %29, align 1
  %1867 = lshr i32 %1851, 31
  %1868 = trunc i32 %1867 to i8
  store i8 %1868, i8* %32, align 1
  %1869 = lshr i32 %1843, 31
  %1870 = lshr i32 %1848, 30
  %1871 = and i32 %1870, 1
  %1872 = xor i32 %1871, %1869
  %1873 = xor i32 %1867, %1869
  %1874 = add nuw nsw i32 %1873, %1872
  %1875 = icmp eq i32 %1874, 2
  %1876 = zext i1 %1875 to i8
  store i8 %1876, i8* %38, align 1
  %1877 = add i64 %1838, -12
  %1878 = add i64 %1840, 14
  store i64 %1878, i64* %3, align 8
  %1879 = inttoptr i64 %1877 to i32*
  %1880 = load i32, i32* %1879, align 4
  %1881 = sext i32 %1880 to i64
  %1882 = shl nsw i64 %1881, 4
  store i64 %1882, i64* %RDX.i1446, align 8
  %1883 = load i64, i64* %RAX.i1385, align 8
  %1884 = add i64 %1882, %1883
  store i64 %1884, i64* %RAX.i1385, align 8
  %1885 = icmp ult i64 %1884, %1883
  %1886 = icmp ult i64 %1884, %1882
  %1887 = or i1 %1885, %1886
  %1888 = zext i1 %1887 to i8
  store i8 %1888, i8* %14, align 1
  %1889 = trunc i64 %1884 to i32
  %1890 = and i32 %1889, 255
  %1891 = tail call i32 @llvm.ctpop.i32(i32 %1890)
  %1892 = trunc i32 %1891 to i8
  %1893 = and i8 %1892, 1
  %1894 = xor i8 %1893, 1
  store i8 %1894, i8* %21, align 1
  %1895 = xor i64 %1882, %1883
  %1896 = xor i64 %1895, %1884
  %1897 = lshr i64 %1896, 4
  %1898 = trunc i64 %1897 to i8
  %1899 = and i8 %1898, 1
  store i8 %1899, i8* %26, align 1
  %1900 = icmp eq i64 %1884, 0
  %1901 = zext i1 %1900 to i8
  store i8 %1901, i8* %29, align 1
  %1902 = lshr i64 %1884, 63
  %1903 = trunc i64 %1902 to i8
  store i8 %1903, i8* %32, align 1
  %1904 = lshr i64 %1883, 63
  %1905 = lshr i64 %1881, 59
  %1906 = and i64 %1905, 1
  %1907 = xor i64 %1902, %1904
  %1908 = xor i64 %1902, %1906
  %1909 = add nuw nsw i64 %1907, %1908
  %1910 = icmp eq i64 %1909, 2
  %1911 = zext i1 %1910 to i8
  store i8 %1911, i8* %38, align 1
  %1912 = add i64 %1884, 12
  %1913 = add i64 %1840, 24
  store i64 %1913, i64* %3, align 8
  %1914 = inttoptr i64 %1912 to i32*
  store i32 %1851, i32* %1914, align 4
  %1915 = load i64, i64* %RBP.i, align 8
  %1916 = add i64 %1915, -12
  %1917 = load i64, i64* %3, align 8
  %1918 = add i64 %1917, 3
  store i64 %1918, i64* %3, align 8
  %1919 = inttoptr i64 %1916 to i32*
  %1920 = load i32, i32* %1919, align 4
  %1921 = add i32 %1920, 1
  %1922 = zext i32 %1921 to i64
  store i64 %1922, i64* %RAX.i1385, align 8
  %1923 = icmp eq i32 %1920, -1
  %1924 = icmp eq i32 %1921, 0
  %1925 = or i1 %1923, %1924
  %1926 = zext i1 %1925 to i8
  store i8 %1926, i8* %14, align 1
  %1927 = and i32 %1921, 255
  %1928 = tail call i32 @llvm.ctpop.i32(i32 %1927)
  %1929 = trunc i32 %1928 to i8
  %1930 = and i8 %1929, 1
  %1931 = xor i8 %1930, 1
  store i8 %1931, i8* %21, align 1
  %1932 = xor i32 %1921, %1920
  %1933 = lshr i32 %1932, 4
  %1934 = trunc i32 %1933 to i8
  %1935 = and i8 %1934, 1
  store i8 %1935, i8* %26, align 1
  %1936 = zext i1 %1924 to i8
  store i8 %1936, i8* %29, align 1
  %1937 = lshr i32 %1921, 31
  %1938 = trunc i32 %1937 to i8
  store i8 %1938, i8* %32, align 1
  %1939 = lshr i32 %1920, 31
  %1940 = xor i32 %1937, %1939
  %1941 = add nuw nsw i32 %1940, %1937
  %1942 = icmp eq i32 %1941, 2
  %1943 = zext i1 %1942 to i8
  store i8 %1943, i8* %38, align 1
  %1944 = add i64 %1917, 9
  store i64 %1944, i64* %3, align 8
  store i32 %1921, i32* %1919, align 4
  %1945 = load i64, i64* %3, align 8
  %1946 = add i64 %1945, -268
  store i64 %1946, i64* %3, align 8
  br label %block_.L_40f77e

block_.L_40f896:                                  ; preds = %block_.L_40f896.preheader, %block_.L_40f99c
  %1947 = phi i64 [ %2561, %block_.L_40f99c ], [ %.pre106, %block_.L_40f896.preheader ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.7, %block_.L_40f99c ], [ %318, %block_.L_40f896.preheader ]
  %1948 = load i64, i64* %RBP.i, align 8
  %1949 = add i64 %1948, -16
  %1950 = add i64 %1947, 4
  store i64 %1950, i64* %3, align 8
  %1951 = inttoptr i64 %1949 to i32*
  %1952 = load i32, i32* %1951, align 4
  %1953 = add i32 %1952, -4
  %1954 = icmp ult i32 %1952, 4
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
  store i8 %1964, i8* %26, align 1
  %1965 = icmp eq i32 %1953, 0
  %1966 = zext i1 %1965 to i8
  store i8 %1966, i8* %29, align 1
  %1967 = lshr i32 %1953, 31
  %1968 = trunc i32 %1967 to i8
  store i8 %1968, i8* %32, align 1
  %1969 = lshr i32 %1952, 31
  %1970 = xor i32 %1967, %1969
  %1971 = add nuw nsw i32 %1970, %1969
  %1972 = icmp eq i32 %1971, 2
  %1973 = zext i1 %1972 to i8
  store i8 %1973, i8* %38, align 1
  %1974 = icmp ne i8 %1968, 0
  %1975 = xor i1 %1974, %1972
  %.v118 = select i1 %1975, i64 10, i64 281
  %1976 = add i64 %1947, %.v118
  store i64 %1976, i64* %3, align 8
  br i1 %1975, label %block_40f8a0, label %block_.L_40f9af

block_40f8a0:                                     ; preds = %block_.L_40f896
  %1977 = add i64 %1948, -12
  %1978 = add i64 %1976, 7
  store i64 %1978, i64* %3, align 8
  %1979 = inttoptr i64 %1977 to i32*
  store i32 0, i32* %1979, align 4
  %.pre105 = load i64, i64* %3, align 8
  br label %block_.L_40f8a7

block_.L_40f8a7:                                  ; preds = %routine_shll__cl___eax.exit, %block_40f8a0
  %1980 = phi i64 [ %.pre105, %block_40f8a0 ], [ %2531, %routine_shll__cl___eax.exit ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.6, %block_40f8a0 ], [ %call2_40f933, %routine_shll__cl___eax.exit ]
  %1981 = load i64, i64* %RBP.i, align 8
  %1982 = add i64 %1981, -12
  %1983 = add i64 %1980, 4
  store i64 %1983, i64* %3, align 8
  %1984 = inttoptr i64 %1982 to i32*
  %1985 = load i32, i32* %1984, align 4
  %1986 = add i32 %1985, -4
  %1987 = icmp ult i32 %1985, 4
  %1988 = zext i1 %1987 to i8
  store i8 %1988, i8* %14, align 1
  %1989 = and i32 %1986, 255
  %1990 = tail call i32 @llvm.ctpop.i32(i32 %1989)
  %1991 = trunc i32 %1990 to i8
  %1992 = and i8 %1991, 1
  %1993 = xor i8 %1992, 1
  store i8 %1993, i8* %21, align 1
  %1994 = xor i32 %1986, %1985
  %1995 = lshr i32 %1994, 4
  %1996 = trunc i32 %1995 to i8
  %1997 = and i8 %1996, 1
  store i8 %1997, i8* %26, align 1
  %1998 = icmp eq i32 %1986, 0
  %1999 = zext i1 %1998 to i8
  store i8 %1999, i8* %29, align 1
  %2000 = lshr i32 %1986, 31
  %2001 = trunc i32 %2000 to i8
  store i8 %2001, i8* %32, align 1
  %2002 = lshr i32 %1985, 31
  %2003 = xor i32 %2000, %2002
  %2004 = add nuw nsw i32 %2003, %2002
  %2005 = icmp eq i32 %2004, 2
  %2006 = zext i1 %2005 to i8
  store i8 %2006, i8* %38, align 1
  %2007 = icmp ne i8 %2001, 0
  %2008 = xor i1 %2007, %2005
  %.v114 = select i1 %2008, i64 10, i64 245
  %2009 = add i64 %1980, %.v114
  store i64 %2009, i64* %3, align 8
  br i1 %2008, label %block_40f8b1, label %block_.L_40f99c

block_40f8b1:                                     ; preds = %block_.L_40f8a7
  %2010 = add i64 %1981, -144
  store i64 %2010, i64* %RAX.i1385, align 8
  %2011 = add i64 %2009, 11
  store i64 %2011, i64* %3, align 8
  %2012 = load i32, i32* %1984, align 4
  %2013 = sext i32 %2012 to i64
  %2014 = shl nsw i64 %2013, 4
  store i64 %2014, i64* %RCX.i1402, align 8
  %2015 = add i64 %2014, %2010
  store i64 %2015, i64* %RAX.i1385, align 8
  %2016 = icmp ult i64 %2015, %2010
  %2017 = icmp ult i64 %2015, %2014
  %2018 = or i1 %2016, %2017
  %2019 = zext i1 %2018 to i8
  store i8 %2019, i8* %14, align 1
  %2020 = trunc i64 %2015 to i32
  %2021 = and i32 %2020, 255
  %2022 = tail call i32 @llvm.ctpop.i32(i32 %2021)
  %2023 = trunc i32 %2022 to i8
  %2024 = and i8 %2023, 1
  %2025 = xor i8 %2024, 1
  store i8 %2025, i8* %21, align 1
  %2026 = xor i64 %2014, %2010
  %2027 = xor i64 %2026, %2015
  %2028 = lshr i64 %2027, 4
  %2029 = trunc i64 %2028 to i8
  %2030 = and i8 %2029, 1
  store i8 %2030, i8* %26, align 1
  %2031 = icmp eq i64 %2015, 0
  %2032 = zext i1 %2031 to i8
  store i8 %2032, i8* %29, align 1
  %2033 = lshr i64 %2015, 63
  %2034 = trunc i64 %2033 to i8
  store i8 %2034, i8* %32, align 1
  %2035 = lshr i64 %2010, 63
  %2036 = lshr i64 %2013, 59
  %2037 = and i64 %2036, 1
  %2038 = xor i64 %2033, %2035
  %2039 = xor i64 %2033, %2037
  %2040 = add nuw nsw i64 %2038, %2039
  %2041 = icmp eq i64 %2040, 2
  %2042 = zext i1 %2041 to i8
  store i8 %2042, i8* %38, align 1
  %2043 = add i64 %1981, -16
  %2044 = add i64 %2009, 22
  store i64 %2044, i64* %3, align 8
  %2045 = inttoptr i64 %2043 to i32*
  %2046 = load i32, i32* %2045, align 4
  %2047 = sext i32 %2046 to i64
  store i64 %2047, i64* %RCX.i1402, align 8
  %2048 = shl nsw i64 %2047, 2
  %2049 = add i64 %2048, %2015
  %2050 = add i64 %2009, 25
  store i64 %2050, i64* %3, align 8
  %2051 = inttoptr i64 %2049 to i32*
  %2052 = load i32, i32* %2051, align 4
  %2053 = zext i32 %2052 to i64
  store i64 %2053, i64* %RDI.i1350, align 8
  %2054 = add i64 %2009, -59569
  %2055 = add i64 %2009, 30
  %2056 = load i64, i64* %6, align 8
  %2057 = add i64 %2056, -8
  %2058 = inttoptr i64 %2057 to i64*
  store i64 %2055, i64* %2058, align 8
  store i64 %2057, i64* %6, align 8
  store i64 %2054, i64* %3, align 8
  %2059 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @abs to i64), %struct.Memory* %MEMORY.7)
  %2060 = load i64, i64* %RBP.i, align 8
  %2061 = add i64 %2060, -144
  %2062 = load i64, i64* %3, align 8
  store i64 %2061, i64* %RCX.i1402, align 8
  store i64 ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64), i64* %RDX.i1446, align 8
  %2063 = add i64 %2060, -152
  %2064 = add i64 %2062, 24
  store i64 %2064, i64* %3, align 8
  %2065 = inttoptr i64 %2063 to i32*
  %2066 = load i32, i32* %2065, align 4
  %2067 = sext i32 %2066 to i64
  %2068 = shl nsw i64 %2067, 6
  store i64 %2068, i64* %RSI.i1419, align 8
  %2069 = add i64 %2068, ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64)
  store i64 %2069, i64* %RDX.i1446, align 8
  %2070 = icmp ult i64 %2069, ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64)
  %2071 = icmp ult i64 %2069, %2068
  %2072 = or i1 %2070, %2071
  %2073 = zext i1 %2072 to i8
  store i8 %2073, i8* %14, align 1
  %2074 = trunc i64 %2069 to i32
  %2075 = and i32 %2074, 248
  %2076 = tail call i32 @llvm.ctpop.i32(i32 %2075)
  %2077 = trunc i32 %2076 to i8
  %2078 = and i8 %2077, 1
  %2079 = xor i8 %2078, 1
  store i8 %2079, i8* %21, align 1
  %2080 = xor i64 %2069, ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64)
  %2081 = lshr i64 %2080, 4
  %2082 = trunc i64 %2081 to i8
  %2083 = and i8 %2082, 1
  store i8 %2083, i8* %26, align 1
  %2084 = icmp eq i64 %2069, 0
  %2085 = zext i1 %2084 to i8
  store i8 %2085, i8* %29, align 1
  %2086 = lshr i64 %2069, 63
  %2087 = trunc i64 %2086 to i8
  store i8 %2087, i8* %32, align 1
  %2088 = lshr i64 %2067, 57
  %2089 = and i64 %2088, 1
  %2090 = xor i64 %2086, lshr (i64 ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64), i64 63)
  %2091 = xor i64 %2086, %2089
  %2092 = add nuw nsw i64 %2090, %2091
  %2093 = icmp eq i64 %2092, 2
  %2094 = zext i1 %2093 to i8
  store i8 %2094, i8* %38, align 1
  %2095 = add i64 %2060, -12
  %2096 = add i64 %2062, 35
  store i64 %2096, i64* %3, align 8
  %2097 = inttoptr i64 %2095 to i32*
  %2098 = load i32, i32* %2097, align 4
  %2099 = sext i32 %2098 to i64
  %2100 = shl nsw i64 %2099, 4
  store i64 %2100, i64* %RSI.i1419, align 8
  %2101 = add i64 %2100, %2069
  store i64 %2101, i64* %RDX.i1446, align 8
  %2102 = icmp ult i64 %2101, %2069
  %2103 = icmp ult i64 %2101, %2100
  %2104 = or i1 %2102, %2103
  %2105 = zext i1 %2104 to i8
  store i8 %2105, i8* %14, align 1
  %2106 = trunc i64 %2101 to i32
  %2107 = and i32 %2106, 248
  %2108 = tail call i32 @llvm.ctpop.i32(i32 %2107)
  %2109 = trunc i32 %2108 to i8
  %2110 = and i8 %2109, 1
  %2111 = xor i8 %2110, 1
  store i8 %2111, i8* %21, align 1
  %2112 = xor i64 %2100, %2069
  %2113 = xor i64 %2112, %2101
  %2114 = lshr i64 %2113, 4
  %2115 = trunc i64 %2114 to i8
  %2116 = and i8 %2115, 1
  store i8 %2116, i8* %26, align 1
  %2117 = icmp eq i64 %2101, 0
  %2118 = zext i1 %2117 to i8
  store i8 %2118, i8* %29, align 1
  %2119 = lshr i64 %2101, 63
  %2120 = trunc i64 %2119 to i8
  store i8 %2120, i8* %32, align 1
  %2121 = lshr i64 %2099, 59
  %2122 = and i64 %2121, 1
  %2123 = xor i64 %2119, %2086
  %2124 = xor i64 %2119, %2122
  %2125 = add nuw nsw i64 %2123, %2124
  %2126 = icmp eq i64 %2125, 2
  %2127 = zext i1 %2126 to i8
  store i8 %2127, i8* %38, align 1
  %2128 = load i64, i64* %RBP.i, align 8
  %2129 = add i64 %2128, -16
  %2130 = add i64 %2062, 46
  store i64 %2130, i64* %3, align 8
  %2131 = inttoptr i64 %2129 to i32*
  %2132 = load i32, i32* %2131, align 4
  %2133 = sext i32 %2132 to i64
  store i64 %2133, i64* %RSI.i1419, align 8
  %2134 = load i64, i64* %RAX.i1385, align 8
  %2135 = shl nsw i64 %2133, 2
  %2136 = add i64 %2101, %2135
  %2137 = add i64 %2062, 50
  store i64 %2137, i64* %3, align 8
  %2138 = inttoptr i64 %2136 to i32*
  %2139 = load i32, i32* %2138, align 4
  %2140 = shl i64 %2134, 32
  %2141 = ashr exact i64 %2140, 32
  %2142 = sext i32 %2139 to i64
  %2143 = mul nsw i64 %2142, %2141
  %2144 = trunc i64 %2143 to i32
  %2145 = and i64 %2143, 4294967295
  store i64 %2145, i64* %RAX.i1385, align 8
  %2146 = shl i64 %2143, 32
  %2147 = ashr exact i64 %2146, 32
  %2148 = icmp ne i64 %2147, %2143
  %2149 = zext i1 %2148 to i8
  store i8 %2149, i8* %14, align 1
  %2150 = and i32 %2144, 255
  %2151 = tail call i32 @llvm.ctpop.i32(i32 %2150)
  %2152 = trunc i32 %2151 to i8
  %2153 = and i8 %2152, 1
  %2154 = xor i8 %2153, 1
  store i8 %2154, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %2155 = lshr i32 %2144, 31
  %2156 = trunc i32 %2155 to i8
  store i8 %2156, i8* %32, align 1
  store i8 %2149, i8* %38, align 1
  %2157 = add i64 %2128, -160
  %2158 = add i64 %2062, 56
  store i64 %2158, i64* %3, align 8
  %2159 = trunc i64 %2143 to i32
  %2160 = inttoptr i64 %2157 to i32*
  %2161 = load i32, i32* %2160, align 4
  %2162 = add i32 %2161, %2159
  %2163 = zext i32 %2162 to i64
  store i64 %2163, i64* %RAX.i1385, align 8
  %2164 = icmp ult i32 %2162, %2159
  %2165 = icmp ult i32 %2162, %2161
  %2166 = or i1 %2164, %2165
  %2167 = zext i1 %2166 to i8
  store i8 %2167, i8* %14, align 1
  %2168 = and i32 %2162, 255
  %2169 = tail call i32 @llvm.ctpop.i32(i32 %2168)
  %2170 = trunc i32 %2169 to i8
  %2171 = and i8 %2170, 1
  %2172 = xor i8 %2171, 1
  store i8 %2172, i8* %21, align 1
  %2173 = xor i32 %2161, %2159
  %2174 = xor i32 %2173, %2162
  %2175 = lshr i32 %2174, 4
  %2176 = trunc i32 %2175 to i8
  %2177 = and i8 %2176, 1
  store i8 %2177, i8* %26, align 1
  %2178 = icmp eq i32 %2162, 0
  %2179 = zext i1 %2178 to i8
  store i8 %2179, i8* %29, align 1
  %2180 = lshr i32 %2162, 31
  %2181 = trunc i32 %2180 to i8
  store i8 %2181, i8* %32, align 1
  %2182 = lshr i32 %2159, 31
  %2183 = lshr i32 %2161, 31
  %2184 = xor i32 %2180, %2182
  %2185 = xor i32 %2180, %2183
  %2186 = add nuw nsw i32 %2184, %2185
  %2187 = icmp eq i32 %2186, 2
  %2188 = zext i1 %2187 to i8
  store i8 %2188, i8* %38, align 1
  %2189 = add i64 %2128, -156
  %2190 = add i64 %2062, 62
  store i64 %2190, i64* %3, align 8
  %2191 = inttoptr i64 %2189 to i32*
  %2192 = load i32, i32* %2191, align 4
  %2193 = zext i32 %2192 to i64
  store i64 %2193, i64* %RDI.i1350, align 8
  %2194 = add i64 %2128, -184
  %2195 = load i64, i64* %RCX.i1402, align 8
  %2196 = add i64 %2062, 69
  store i64 %2196, i64* %3, align 8
  %2197 = inttoptr i64 %2194 to i64*
  store i64 %2195, i64* %2197, align 8
  %2198 = load i32, i32* %EDI.i1443, align 4
  %2199 = zext i32 %2198 to i64
  %2200 = load i64, i64* %3, align 8
  store i64 %2199, i64* %RCX.i1402, align 8
  %2201 = load i64, i64* %RAX.i1385, align 8
  %2202 = add i64 %2200, 4
  store i64 %2202, i64* %3, align 8
  %2203 = trunc i32 %2198 to i5
  switch i5 %2203, label %2207 [
    i5 0, label %routine_sarl__cl___eax.exit
    i5 1, label %2204
  ]

; <label>:2204:                                   ; preds = %block_40f8b1
  %2205 = shl i64 %2201, 32
  %2206 = ashr i64 %2205, 33
  br label %2215

; <label>:2207:                                   ; preds = %block_40f8b1
  %2208 = and i32 %2198, 31
  %2209 = zext i32 %2208 to i64
  %2210 = add nsw i64 %2209, -1
  %2211 = shl i64 %2201, 32
  %2212 = ashr exact i64 %2211, 32
  %2213 = ashr i64 %2212, %2210
  %2214 = lshr i64 %2213, 1
  br label %2215

; <label>:2215:                                   ; preds = %2207, %2204
  %2216 = phi i64 [ %2214, %2207 ], [ %2206, %2204 ]
  %2217 = phi i64 [ %2213, %2207 ], [ %2201, %2204 ]
  %2218 = trunc i64 %2217 to i8
  %2219 = and i8 %2218, 1
  %2220 = trunc i64 %2216 to i32
  %2221 = and i64 %2216, 4294967295
  store i64 %2221, i64* %RAX.i1385, align 8
  store i8 %2219, i8* %14, align 1
  %2222 = and i32 %2220, 255
  %2223 = tail call i32 @llvm.ctpop.i32(i32 %2222)
  %2224 = trunc i32 %2223 to i8
  %2225 = and i8 %2224, 1
  %2226 = xor i8 %2225, 1
  store i8 %2226, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2227 = icmp eq i32 %2220, 0
  %2228 = zext i1 %2227 to i8
  store i8 %2228, i8* %29, align 1
  %2229 = lshr i32 %2220, 31
  %2230 = trunc i32 %2229 to i8
  store i8 %2230, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_sarl__cl___eax.exit

routine_sarl__cl___eax.exit:                      ; preds = %2215, %block_40f8b1
  %.in = phi i64 [ %2216, %2215 ], [ %2201, %block_40f8b1 ]
  %2231 = load i64, i64* %RBP.i, align 8
  %2232 = add i64 %2231, -12
  %2233 = add i64 %2200, 8
  store i64 %2233, i64* %3, align 8
  %2234 = inttoptr i64 %2232 to i32*
  %2235 = load i32, i32* %2234, align 4
  %2236 = sext i32 %2235 to i64
  %2237 = shl nsw i64 %2236, 4
  store i64 %2237, i64* %RDX.i1446, align 8
  %.lobit42 = lshr i32 %2235, 31
  %2238 = trunc i32 %.lobit42 to i8
  store i8 %2238, i8* %14, align 1
  %2239 = trunc i64 %2237 to i32
  %2240 = and i32 %2239, 240
  %2241 = tail call i32 @llvm.ctpop.i32(i32 %2240)
  %2242 = trunc i32 %2241 to i8
  %2243 = and i8 %2242, 1
  %2244 = xor i8 %2243, 1
  store i8 %2244, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2245 = icmp eq i32 %2235, 0
  %2246 = zext i1 %2245 to i8
  store i8 %2246, i8* %29, align 1
  %2247 = lshr i64 %2236, 59
  %2248 = trunc i64 %2247 to i8
  %2249 = and i8 %2248, 1
  store i8 %2249, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2250 = add i64 %2231, -184
  %2251 = add i64 %2200, 19
  store i64 %2251, i64* %3, align 8
  %2252 = inttoptr i64 %2250 to i64*
  %2253 = load i64, i64* %2252, align 8
  %2254 = add i64 %2237, %2253
  store i64 %2254, i64* %RSI.i1419, align 8
  %2255 = icmp ult i64 %2254, %2253
  %2256 = icmp ult i64 %2254, %2237
  %2257 = or i1 %2255, %2256
  %2258 = zext i1 %2257 to i8
  store i8 %2258, i8* %14, align 1
  %2259 = trunc i64 %2254 to i32
  %2260 = and i32 %2259, 255
  %2261 = tail call i32 @llvm.ctpop.i32(i32 %2260)
  %2262 = trunc i32 %2261 to i8
  %2263 = and i8 %2262, 1
  %2264 = xor i8 %2263, 1
  store i8 %2264, i8* %21, align 1
  %2265 = xor i64 %2237, %2253
  %2266 = xor i64 %2265, %2254
  %2267 = lshr i64 %2266, 4
  %2268 = trunc i64 %2267 to i8
  %2269 = and i8 %2268, 1
  store i8 %2269, i8* %26, align 1
  %2270 = icmp eq i64 %2254, 0
  %2271 = zext i1 %2270 to i8
  store i8 %2271, i8* %29, align 1
  %2272 = lshr i64 %2254, 63
  %2273 = trunc i64 %2272 to i8
  store i8 %2273, i8* %32, align 1
  %2274 = lshr i64 %2253, 63
  %2275 = lshr i64 %2236, 59
  %2276 = and i64 %2275, 1
  %2277 = xor i64 %2272, %2274
  %2278 = xor i64 %2272, %2276
  %2279 = add nuw nsw i64 %2277, %2278
  %2280 = icmp eq i64 %2279, 2
  %2281 = zext i1 %2280 to i8
  store i8 %2281, i8* %38, align 1
  %2282 = add i64 %2231, -16
  %2283 = add i64 %2200, 26
  store i64 %2283, i64* %3, align 8
  %2284 = inttoptr i64 %2282 to i32*
  %2285 = load i32, i32* %2284, align 4
  %2286 = sext i32 %2285 to i64
  store i64 %2286, i64* %RDX.i1446, align 8
  %2287 = shl nsw i64 %2286, 2
  %2288 = add i64 %2287, %2254
  %2289 = add i64 %2200, 29
  store i64 %2289, i64* %3, align 8
  %2290 = inttoptr i64 %2288 to i32*
  %2291 = load i32, i32* %2290, align 4
  %2292 = zext i32 %2291 to i64
  store i64 %2292, i64* %RSI.i1419, align 8
  %2293 = and i64 %.in, 4294967295
  store i64 %2293, i64* %RDI.i1350, align 8
  %2294 = add i64 %2200, 415804
  %2295 = add i64 %2200, 36
  %2296 = load i64, i64* %6, align 8
  %2297 = add i64 %2296, -8
  %2298 = inttoptr i64 %2297 to i64*
  store i64 %2295, i64* %2298, align 8
  store i64 %2297, i64* %6, align 8
  store i64 %2294, i64* %3, align 8
  %call2_40f933 = tail call %struct.Memory* @sub_475150.sign(%struct.State* nonnull %0, i64 %2294, %struct.Memory* %2059)
  %2299 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x4b28d0_type* @G__0x4b28d0 to i64), i64* %RDX.i1446, align 8
  %2300 = load i64, i64* %RBP.i, align 8
  %2301 = add i64 %2300, -152
  %2302 = add i64 %2299, 17
  store i64 %2302, i64* %3, align 8
  %2303 = inttoptr i64 %2301 to i32*
  %2304 = load i32, i32* %2303, align 4
  %2305 = sext i32 %2304 to i64
  %2306 = shl nsw i64 %2305, 6
  store i64 %2306, i64* %R8.i1438, align 8
  %2307 = add i64 %2306, ptrtoint (%G__0x4b28d0_type* @G__0x4b28d0 to i64)
  store i64 %2307, i64* %RDX.i1446, align 8
  %2308 = icmp ult i64 %2307, ptrtoint (%G__0x4b28d0_type* @G__0x4b28d0 to i64)
  %2309 = icmp ult i64 %2307, %2306
  %2310 = or i1 %2308, %2309
  %2311 = zext i1 %2310 to i8
  store i8 %2311, i8* %14, align 1
  %2312 = trunc i64 %2307 to i32
  %2313 = and i32 %2312, 248
  %2314 = tail call i32 @llvm.ctpop.i32(i32 %2313)
  %2315 = trunc i32 %2314 to i8
  %2316 = and i8 %2315, 1
  %2317 = xor i8 %2316, 1
  store i8 %2317, i8* %21, align 1
  %2318 = xor i64 %2307, ptrtoint (%G__0x4b28d0_type* @G__0x4b28d0 to i64)
  %2319 = lshr i64 %2318, 4
  %2320 = trunc i64 %2319 to i8
  %2321 = and i8 %2320, 1
  store i8 %2321, i8* %26, align 1
  %2322 = icmp eq i64 %2307, 0
  %2323 = zext i1 %2322 to i8
  store i8 %2323, i8* %29, align 1
  %2324 = lshr i64 %2307, 63
  %2325 = trunc i64 %2324 to i8
  store i8 %2325, i8* %32, align 1
  %2326 = lshr i64 %2305, 57
  %2327 = and i64 %2326, 1
  %2328 = xor i64 %2324, lshr (i64 ptrtoint (%G__0x4b28d0_type* @G__0x4b28d0 to i64), i64 63)
  %2329 = xor i64 %2324, %2327
  %2330 = add nuw nsw i64 %2328, %2329
  %2331 = icmp eq i64 %2330, 2
  %2332 = zext i1 %2331 to i8
  store i8 %2332, i8* %38, align 1
  %2333 = add i64 %2300, -12
  %2334 = add i64 %2299, 28
  store i64 %2334, i64* %3, align 8
  %2335 = inttoptr i64 %2333 to i32*
  %2336 = load i32, i32* %2335, align 4
  %2337 = sext i32 %2336 to i64
  %2338 = shl nsw i64 %2337, 4
  store i64 %2338, i64* %R8.i1438, align 8
  %2339 = add i64 %2338, %2307
  store i64 %2339, i64* %RDX.i1446, align 8
  %2340 = icmp ult i64 %2339, %2307
  %2341 = icmp ult i64 %2339, %2338
  %2342 = or i1 %2340, %2341
  %2343 = zext i1 %2342 to i8
  store i8 %2343, i8* %14, align 1
  %2344 = trunc i64 %2339 to i32
  %2345 = and i32 %2344, 248
  %2346 = tail call i32 @llvm.ctpop.i32(i32 %2345)
  %2347 = trunc i32 %2346 to i8
  %2348 = and i8 %2347, 1
  %2349 = xor i8 %2348, 1
  store i8 %2349, i8* %21, align 1
  %2350 = xor i64 %2338, %2307
  %2351 = xor i64 %2350, %2339
  %2352 = lshr i64 %2351, 4
  %2353 = trunc i64 %2352 to i8
  %2354 = and i8 %2353, 1
  store i8 %2354, i8* %26, align 1
  %2355 = icmp eq i64 %2339, 0
  %2356 = zext i1 %2355 to i8
  store i8 %2356, i8* %29, align 1
  %2357 = lshr i64 %2339, 63
  %2358 = trunc i64 %2357 to i8
  store i8 %2358, i8* %32, align 1
  %2359 = lshr i64 %2337, 59
  %2360 = and i64 %2359, 1
  %2361 = xor i64 %2357, %2324
  %2362 = xor i64 %2357, %2360
  %2363 = add nuw nsw i64 %2361, %2362
  %2364 = icmp eq i64 %2363, 2
  %2365 = zext i1 %2364 to i8
  store i8 %2365, i8* %38, align 1
  %2366 = load i64, i64* %RBP.i, align 8
  %2367 = add i64 %2366, -16
  %2368 = add i64 %2299, 39
  store i64 %2368, i64* %3, align 8
  %2369 = inttoptr i64 %2367 to i32*
  %2370 = load i32, i32* %2369, align 4
  %2371 = sext i32 %2370 to i64
  store i64 %2371, i64* %R8.i1438, align 8
  %2372 = load i64, i64* %RAX.i1385, align 8
  %2373 = shl nsw i64 %2371, 2
  %2374 = add i64 %2339, %2373
  %2375 = add i64 %2299, 44
  store i64 %2375, i64* %3, align 8
  %2376 = inttoptr i64 %2374 to i32*
  %2377 = load i32, i32* %2376, align 4
  %2378 = shl i64 %2372, 32
  %2379 = ashr exact i64 %2378, 32
  %2380 = sext i32 %2377 to i64
  %2381 = mul nsw i64 %2380, %2379
  %2382 = trunc i64 %2381 to i32
  %2383 = and i64 %2381, 4294967295
  store i64 %2383, i64* %RAX.i1385, align 8
  %2384 = shl i64 %2381, 32
  %2385 = ashr exact i64 %2384, 32
  %2386 = icmp ne i64 %2385, %2381
  %2387 = zext i1 %2386 to i8
  store i8 %2387, i8* %14, align 1
  %2388 = and i32 %2382, 255
  %2389 = tail call i32 @llvm.ctpop.i32(i32 %2388)
  %2390 = trunc i32 %2389 to i8
  %2391 = and i8 %2390, 1
  %2392 = xor i8 %2391, 1
  store i8 %2392, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %2393 = lshr i32 %2382, 31
  %2394 = trunc i32 %2393 to i8
  store i8 %2394, i8* %32, align 1
  store i8 %2387, i8* %38, align 1
  %2395 = add i64 %2366, -148
  %2396 = add i64 %2299, 50
  store i64 %2396, i64* %3, align 8
  %2397 = inttoptr i64 %2395 to i32*
  %2398 = load i32, i32* %2397, align 4
  %2399 = zext i32 %2398 to i64
  store i64 %2399, i64* %RCX.i1402, align 8
  %2400 = add i64 %2299, 52
  store i64 %2400, i64* %3, align 8
  %2401 = trunc i32 %2398 to i5
  switch i5 %2401, label %2408 [
    i5 0, label %routine_shll__cl___eax.exit
    i5 1, label %2402
  ]

; <label>:2402:                                   ; preds = %routine_sarl__cl___eax.exit
  %2403 = trunc i64 %2381 to i32
  %2404 = shl i32 %2403, 1
  %2405 = icmp slt i32 %2403, 0
  %2406 = icmp slt i32 %2404, 0
  %2407 = xor i1 %2405, %2406
  br label %2417

; <label>:2408:                                   ; preds = %routine_sarl__cl___eax.exit
  %2409 = and i32 %2398, 31
  %2410 = zext i32 %2409 to i64
  %2411 = add nuw nsw i64 %2410, 4294967295
  %2412 = and i64 %2411, 4294967295
  %2413 = shl i64 %2383, %2412
  %2414 = trunc i64 %2413 to i32
  %2415 = icmp slt i32 %2414, 0
  %2416 = shl i32 %2414, 1
  br label %2417

; <label>:2417:                                   ; preds = %2408, %2402
  %2418 = phi i1 [ %2405, %2402 ], [ %2415, %2408 ]
  %2419 = phi i1 [ %2407, %2402 ], [ false, %2408 ]
  %2420 = phi i32 [ %2404, %2402 ], [ %2416, %2408 ]
  %2421 = zext i32 %2420 to i64
  store i64 %2421, i64* %RAX.i1385, align 8
  %2422 = zext i1 %2418 to i8
  store i8 %2422, i8* %14, align 1
  %2423 = and i32 %2420, 254
  %2424 = tail call i32 @llvm.ctpop.i32(i32 %2423)
  %2425 = trunc i32 %2424 to i8
  %2426 = and i8 %2425, 1
  %2427 = xor i8 %2426, 1
  store i8 %2427, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2428 = icmp eq i32 %2420, 0
  %2429 = zext i1 %2428 to i8
  store i8 %2429, i8* %29, align 1
  %2430 = lshr i32 %2420, 31
  %2431 = trunc i32 %2430 to i8
  store i8 %2431, i8* %32, align 1
  %2432 = zext i1 %2419 to i8
  store i8 %2432, i8* %38, align 1
  br label %routine_shll__cl___eax.exit

routine_shll__cl___eax.exit:                      ; preds = %2417, %routine_sarl__cl___eax.exit
  %2433 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2434 = add i64 %2433, 13112
  store i64 %2434, i64* %RDX.i1446, align 8
  %2435 = icmp ugt i64 %2433, -13113
  %2436 = zext i1 %2435 to i8
  store i8 %2436, i8* %14, align 1
  %2437 = trunc i64 %2434 to i32
  %2438 = and i32 %2437, 255
  %2439 = tail call i32 @llvm.ctpop.i32(i32 %2438)
  %2440 = trunc i32 %2439 to i8
  %2441 = and i8 %2440, 1
  %2442 = xor i8 %2441, 1
  store i8 %2442, i8* %21, align 1
  %2443 = xor i64 %2433, 16
  %2444 = xor i64 %2443, %2434
  %2445 = lshr i64 %2444, 4
  %2446 = trunc i64 %2445 to i8
  %2447 = and i8 %2446, 1
  store i8 %2447, i8* %26, align 1
  %2448 = icmp eq i64 %2434, 0
  %2449 = zext i1 %2448 to i8
  store i8 %2449, i8* %29, align 1
  %2450 = lshr i64 %2434, 63
  %2451 = trunc i64 %2450 to i8
  store i8 %2451, i8* %32, align 1
  %2452 = lshr i64 %2433, 63
  %2453 = xor i64 %2450, %2452
  %2454 = add nuw nsw i64 %2453, %2450
  %2455 = icmp eq i64 %2454, 2
  %2456 = zext i1 %2455 to i8
  store i8 %2456, i8* %38, align 1
  %2457 = add i64 %2366, -12
  %2458 = add i64 %2299, 71
  store i64 %2458, i64* %3, align 8
  %2459 = inttoptr i64 %2457 to i32*
  %2460 = load i32, i32* %2459, align 4
  %2461 = sext i32 %2460 to i64
  %2462 = shl nsw i64 %2461, 6
  store i64 %2462, i64* %R8.i1438, align 8
  %2463 = add i64 %2462, %2434
  store i64 %2463, i64* %RDX.i1446, align 8
  %2464 = icmp ult i64 %2463, %2434
  %2465 = icmp ult i64 %2463, %2462
  %2466 = or i1 %2464, %2465
  %2467 = zext i1 %2466 to i8
  store i8 %2467, i8* %14, align 1
  %2468 = trunc i64 %2463 to i32
  %2469 = and i32 %2468, 255
  %2470 = tail call i32 @llvm.ctpop.i32(i32 %2469)
  %2471 = trunc i32 %2470 to i8
  %2472 = and i8 %2471, 1
  %2473 = xor i8 %2472, 1
  store i8 %2473, i8* %21, align 1
  %2474 = xor i64 %2434, %2463
  %2475 = lshr i64 %2474, 4
  %2476 = trunc i64 %2475 to i8
  %2477 = and i8 %2476, 1
  store i8 %2477, i8* %26, align 1
  %2478 = icmp eq i64 %2463, 0
  %2479 = zext i1 %2478 to i8
  store i8 %2479, i8* %29, align 1
  %2480 = lshr i64 %2463, 63
  %2481 = trunc i64 %2480 to i8
  store i8 %2481, i8* %32, align 1
  %2482 = lshr i64 %2461, 57
  %2483 = and i64 %2482, 1
  %2484 = xor i64 %2480, %2450
  %2485 = xor i64 %2480, %2483
  %2486 = add nuw nsw i64 %2484, %2485
  %2487 = icmp eq i64 %2486, 2
  %2488 = zext i1 %2487 to i8
  store i8 %2488, i8* %38, align 1
  %2489 = load i64, i64* %RBP.i, align 8
  %2490 = add i64 %2489, -16
  %2491 = add i64 %2299, 82
  store i64 %2491, i64* %3, align 8
  %2492 = inttoptr i64 %2490 to i32*
  %2493 = load i32, i32* %2492, align 4
  %2494 = sext i32 %2493 to i64
  store i64 %2494, i64* %R8.i1438, align 8
  %2495 = shl nsw i64 %2494, 2
  %2496 = add i64 %2495, %2463
  %2497 = load i32, i32* %EAX.i1414, align 4
  %2498 = add i64 %2299, 86
  store i64 %2498, i64* %3, align 8
  %2499 = inttoptr i64 %2496 to i32*
  store i32 %2497, i32* %2499, align 4
  %2500 = load i64, i64* %RBP.i, align 8
  %2501 = add i64 %2500, -12
  %2502 = load i64, i64* %3, align 8
  %2503 = add i64 %2502, 3
  store i64 %2503, i64* %3, align 8
  %2504 = inttoptr i64 %2501 to i32*
  %2505 = load i32, i32* %2504, align 4
  %2506 = add i32 %2505, 1
  %2507 = zext i32 %2506 to i64
  store i64 %2507, i64* %RAX.i1385, align 8
  %2508 = icmp eq i32 %2505, -1
  %2509 = icmp eq i32 %2506, 0
  %2510 = or i1 %2508, %2509
  %2511 = zext i1 %2510 to i8
  store i8 %2511, i8* %14, align 1
  %2512 = and i32 %2506, 255
  %2513 = tail call i32 @llvm.ctpop.i32(i32 %2512)
  %2514 = trunc i32 %2513 to i8
  %2515 = and i8 %2514, 1
  %2516 = xor i8 %2515, 1
  store i8 %2516, i8* %21, align 1
  %2517 = xor i32 %2506, %2505
  %2518 = lshr i32 %2517, 4
  %2519 = trunc i32 %2518 to i8
  %2520 = and i8 %2519, 1
  store i8 %2520, i8* %26, align 1
  %2521 = zext i1 %2509 to i8
  store i8 %2521, i8* %29, align 1
  %2522 = lshr i32 %2506, 31
  %2523 = trunc i32 %2522 to i8
  store i8 %2523, i8* %32, align 1
  %2524 = lshr i32 %2505, 31
  %2525 = xor i32 %2522, %2524
  %2526 = add nuw nsw i32 %2525, %2522
  %2527 = icmp eq i32 %2526, 2
  %2528 = zext i1 %2527 to i8
  store i8 %2528, i8* %38, align 1
  %2529 = add i64 %2502, 9
  store i64 %2529, i64* %3, align 8
  store i32 %2506, i32* %2504, align 4
  %2530 = load i64, i64* %3, align 8
  %2531 = add i64 %2530, -240
  store i64 %2531, i64* %3, align 8
  br label %block_.L_40f8a7

block_.L_40f99c:                                  ; preds = %block_.L_40f8a7
  %2532 = add i64 %1981, -16
  %2533 = add i64 %2009, 8
  store i64 %2533, i64* %3, align 8
  %2534 = inttoptr i64 %2532 to i32*
  %2535 = load i32, i32* %2534, align 4
  %2536 = add i32 %2535, 1
  %2537 = zext i32 %2536 to i64
  store i64 %2537, i64* %RAX.i1385, align 8
  %2538 = icmp eq i32 %2535, -1
  %2539 = icmp eq i32 %2536, 0
  %2540 = or i1 %2538, %2539
  %2541 = zext i1 %2540 to i8
  store i8 %2541, i8* %14, align 1
  %2542 = and i32 %2536, 255
  %2543 = tail call i32 @llvm.ctpop.i32(i32 %2542)
  %2544 = trunc i32 %2543 to i8
  %2545 = and i8 %2544, 1
  %2546 = xor i8 %2545, 1
  store i8 %2546, i8* %21, align 1
  %2547 = xor i32 %2536, %2535
  %2548 = lshr i32 %2547, 4
  %2549 = trunc i32 %2548 to i8
  %2550 = and i8 %2549, 1
  store i8 %2550, i8* %26, align 1
  %2551 = zext i1 %2539 to i8
  store i8 %2551, i8* %29, align 1
  %2552 = lshr i32 %2536, 31
  %2553 = trunc i32 %2552 to i8
  store i8 %2553, i8* %32, align 1
  %2554 = lshr i32 %2535, 31
  %2555 = xor i32 %2552, %2554
  %2556 = add nuw nsw i32 %2555, %2552
  %2557 = icmp eq i32 %2556, 2
  %2558 = zext i1 %2557 to i8
  store i8 %2558, i8* %38, align 1
  %2559 = add i64 %2009, 14
  store i64 %2559, i64* %3, align 8
  store i32 %2536, i32* %2534, align 4
  %2560 = load i64, i64* %3, align 8
  %2561 = add i64 %2560, -276
  store i64 %2561, i64* %3, align 8
  br label %block_.L_40f896

block_.L_40f9af:                                  ; preds = %block_.L_40f896
  %2562 = add i64 %1976, 7
  store i64 %2562, i64* %3, align 8
  store i32 0, i32* %1951, align 4
  %.pre91 = load i64, i64* %3, align 8
  br label %block_.L_40f9b6

block_.L_40f9b6:                                  ; preds = %block_.L_40fabf, %block_.L_40f9af
  %2563 = phi i64 [ %3230, %block_.L_40fabf ], [ %.pre91, %block_.L_40f9af ]
  %2564 = load i64, i64* %RBP.i, align 8
  %2565 = add i64 %2564, -16
  %2566 = add i64 %2563, 4
  store i64 %2566, i64* %3, align 8
  %2567 = inttoptr i64 %2565 to i32*
  %2568 = load i32, i32* %2567, align 4
  %2569 = add i32 %2568, -4
  %2570 = icmp ult i32 %2568, 4
  %2571 = zext i1 %2570 to i8
  store i8 %2571, i8* %14, align 1
  %2572 = and i32 %2569, 255
  %2573 = tail call i32 @llvm.ctpop.i32(i32 %2572)
  %2574 = trunc i32 %2573 to i8
  %2575 = and i8 %2574, 1
  %2576 = xor i8 %2575, 1
  store i8 %2576, i8* %21, align 1
  %2577 = xor i32 %2569, %2568
  %2578 = lshr i32 %2577, 4
  %2579 = trunc i32 %2578 to i8
  %2580 = and i8 %2579, 1
  store i8 %2580, i8* %26, align 1
  %2581 = icmp eq i32 %2569, 0
  %2582 = zext i1 %2581 to i8
  store i8 %2582, i8* %29, align 1
  %2583 = lshr i32 %2569, 31
  %2584 = trunc i32 %2583 to i8
  store i8 %2584, i8* %32, align 1
  %2585 = lshr i32 %2568, 31
  %2586 = xor i32 %2583, %2585
  %2587 = add nuw nsw i32 %2586, %2585
  %2588 = icmp eq i32 %2587, 2
  %2589 = zext i1 %2588 to i8
  store i8 %2589, i8* %38, align 1
  %2590 = icmp ne i8 %2584, 0
  %2591 = xor i1 %2590, %2588
  %.v110 = select i1 %2591, i64 10, i64 284
  %2592 = add i64 %2563, %.v110
  %2593 = add i64 %2564, -12
  %2594 = add i64 %2592, 7
  store i64 %2594, i64* %3, align 8
  %2595 = inttoptr i64 %2593 to i32*
  store i32 0, i32* %2595, align 4
  %.pre103 = load i64, i64* %3, align 8
  br i1 %2591, label %block_.L_40f9c7.preheader, label %block_.L_40fad9.preheader

block_.L_40f9c7.preheader:                        ; preds = %block_.L_40f9b6
  br label %block_.L_40f9c7

block_.L_40fad9.preheader:                        ; preds = %block_.L_40f9b6
  br label %block_.L_40fad9

block_.L_40f9c7:                                  ; preds = %block_.L_40f9c7.preheader, %block_40f9d1
  %2596 = phi i64 [ %2733, %block_40f9d1 ], [ %.pre103, %block_.L_40f9c7.preheader ]
  %2597 = load i64, i64* %RBP.i, align 8
  %2598 = add i64 %2597, -12
  %2599 = add i64 %2596, 4
  store i64 %2599, i64* %3, align 8
  %2600 = inttoptr i64 %2598 to i32*
  %2601 = load i32, i32* %2600, align 4
  %2602 = add i32 %2601, -4
  %2603 = icmp ult i32 %2601, 4
  %2604 = zext i1 %2603 to i8
  store i8 %2604, i8* %14, align 1
  %2605 = and i32 %2602, 255
  %2606 = tail call i32 @llvm.ctpop.i32(i32 %2605)
  %2607 = trunc i32 %2606 to i8
  %2608 = and i8 %2607, 1
  %2609 = xor i8 %2608, 1
  store i8 %2609, i8* %21, align 1
  %2610 = xor i32 %2602, %2601
  %2611 = lshr i32 %2610, 4
  %2612 = trunc i32 %2611 to i8
  %2613 = and i8 %2612, 1
  store i8 %2613, i8* %26, align 1
  %2614 = icmp eq i32 %2602, 0
  %2615 = zext i1 %2614 to i8
  store i8 %2615, i8* %29, align 1
  %2616 = lshr i32 %2602, 31
  %2617 = trunc i32 %2616 to i8
  store i8 %2617, i8* %32, align 1
  %2618 = lshr i32 %2601, 31
  %2619 = xor i32 %2616, %2618
  %2620 = add nuw nsw i32 %2619, %2618
  %2621 = icmp eq i32 %2620, 2
  %2622 = zext i1 %2621 to i8
  store i8 %2622, i8* %38, align 1
  %2623 = icmp ne i8 %2617, 0
  %2624 = xor i1 %2623, %2621
  %.v125 = select i1 %2624, i64 10, i64 64
  %2625 = add i64 %2596, %.v125
  store i64 %2625, i64* %3, align 8
  br i1 %2624, label %block_40f9d1, label %block_.L_40fa07

block_40f9d1:                                     ; preds = %block_.L_40f9c7
  %2626 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2627 = add i64 %2626, 13112
  store i64 %2627, i64* %RAX.i1385, align 8
  %2628 = icmp ugt i64 %2626, -13113
  %2629 = zext i1 %2628 to i8
  store i8 %2629, i8* %14, align 1
  %2630 = trunc i64 %2627 to i32
  %2631 = and i32 %2630, 255
  %2632 = tail call i32 @llvm.ctpop.i32(i32 %2631)
  %2633 = trunc i32 %2632 to i8
  %2634 = and i8 %2633, 1
  %2635 = xor i8 %2634, 1
  store i8 %2635, i8* %21, align 1
  %2636 = xor i64 %2626, 16
  %2637 = xor i64 %2636, %2627
  %2638 = lshr i64 %2637, 4
  %2639 = trunc i64 %2638 to i8
  %2640 = and i8 %2639, 1
  store i8 %2640, i8* %26, align 1
  %2641 = icmp eq i64 %2627, 0
  %2642 = zext i1 %2641 to i8
  store i8 %2642, i8* %29, align 1
  %2643 = lshr i64 %2627, 63
  %2644 = trunc i64 %2643 to i8
  store i8 %2644, i8* %32, align 1
  %2645 = lshr i64 %2626, 63
  %2646 = xor i64 %2643, %2645
  %2647 = add nuw nsw i64 %2646, %2643
  %2648 = icmp eq i64 %2647, 2
  %2649 = zext i1 %2648 to i8
  store i8 %2649, i8* %38, align 1
  %2650 = add i64 %2625, 18
  store i64 %2650, i64* %3, align 8
  %2651 = load i32, i32* %2600, align 4
  %2652 = sext i32 %2651 to i64
  %2653 = shl nsw i64 %2652, 6
  store i64 %2653, i64* %RCX.i1402, align 8
  %2654 = add i64 %2653, %2627
  store i64 %2654, i64* %RAX.i1385, align 8
  %2655 = icmp ult i64 %2654, %2627
  %2656 = icmp ult i64 %2654, %2653
  %2657 = or i1 %2655, %2656
  %2658 = zext i1 %2657 to i8
  store i8 %2658, i8* %14, align 1
  %2659 = trunc i64 %2654 to i32
  %2660 = and i32 %2659, 255
  %2661 = tail call i32 @llvm.ctpop.i32(i32 %2660)
  %2662 = trunc i32 %2661 to i8
  %2663 = and i8 %2662, 1
  %2664 = xor i8 %2663, 1
  store i8 %2664, i8* %21, align 1
  %2665 = xor i64 %2627, %2654
  %2666 = lshr i64 %2665, 4
  %2667 = trunc i64 %2666 to i8
  %2668 = and i8 %2667, 1
  store i8 %2668, i8* %26, align 1
  %2669 = icmp eq i64 %2654, 0
  %2670 = zext i1 %2669 to i8
  store i8 %2670, i8* %29, align 1
  %2671 = lshr i64 %2654, 63
  %2672 = trunc i64 %2671 to i8
  store i8 %2672, i8* %32, align 1
  %2673 = lshr i64 %2652, 57
  %2674 = and i64 %2673, 1
  %2675 = xor i64 %2671, %2643
  %2676 = xor i64 %2671, %2674
  %2677 = add nuw nsw i64 %2675, %2676
  %2678 = icmp eq i64 %2677, 2
  %2679 = zext i1 %2678 to i8
  store i8 %2679, i8* %38, align 1
  %2680 = add i64 %2597, -16
  %2681 = add i64 %2625, 29
  store i64 %2681, i64* %3, align 8
  %2682 = inttoptr i64 %2680 to i32*
  %2683 = load i32, i32* %2682, align 4
  %2684 = sext i32 %2683 to i64
  store i64 %2684, i64* %RCX.i1402, align 8
  %2685 = shl nsw i64 %2684, 2
  %2686 = add i64 %2685, %2654
  %2687 = add i64 %2625, 32
  store i64 %2687, i64* %3, align 8
  %2688 = inttoptr i64 %2686 to i32*
  %2689 = load i32, i32* %2688, align 4
  %2690 = zext i32 %2689 to i64
  store i64 %2690, i64* %RDX.i1446, align 8
  %2691 = load i64, i64* %RBP.i, align 8
  %2692 = add i64 %2691, -12
  %2693 = add i64 %2625, 36
  store i64 %2693, i64* %3, align 8
  %2694 = inttoptr i64 %2692 to i32*
  %2695 = load i32, i32* %2694, align 4
  %2696 = sext i32 %2695 to i64
  store i64 %2696, i64* %RAX.i1385, align 8
  %2697 = shl nsw i64 %2696, 2
  %2698 = add i64 %2691, -48
  %2699 = add i64 %2698, %2697
  %2700 = add i64 %2625, 40
  store i64 %2700, i64* %3, align 8
  %2701 = inttoptr i64 %2699 to i32*
  store i32 %2689, i32* %2701, align 4
  %2702 = load i64, i64* %RBP.i, align 8
  %2703 = add i64 %2702, -12
  %2704 = load i64, i64* %3, align 8
  %2705 = add i64 %2704, 3
  store i64 %2705, i64* %3, align 8
  %2706 = inttoptr i64 %2703 to i32*
  %2707 = load i32, i32* %2706, align 4
  %2708 = add i32 %2707, 1
  %2709 = zext i32 %2708 to i64
  store i64 %2709, i64* %RAX.i1385, align 8
  %2710 = icmp eq i32 %2707, -1
  %2711 = icmp eq i32 %2708, 0
  %2712 = or i1 %2710, %2711
  %2713 = zext i1 %2712 to i8
  store i8 %2713, i8* %14, align 1
  %2714 = and i32 %2708, 255
  %2715 = tail call i32 @llvm.ctpop.i32(i32 %2714)
  %2716 = trunc i32 %2715 to i8
  %2717 = and i8 %2716, 1
  %2718 = xor i8 %2717, 1
  store i8 %2718, i8* %21, align 1
  %2719 = xor i32 %2708, %2707
  %2720 = lshr i32 %2719, 4
  %2721 = trunc i32 %2720 to i8
  %2722 = and i8 %2721, 1
  store i8 %2722, i8* %26, align 1
  %2723 = zext i1 %2711 to i8
  store i8 %2723, i8* %29, align 1
  %2724 = lshr i32 %2708, 31
  %2725 = trunc i32 %2724 to i8
  store i8 %2725, i8* %32, align 1
  %2726 = lshr i32 %2707, 31
  %2727 = xor i32 %2724, %2726
  %2728 = add nuw nsw i32 %2727, %2724
  %2729 = icmp eq i32 %2728, 2
  %2730 = zext i1 %2729 to i8
  store i8 %2730, i8* %38, align 1
  %2731 = add i64 %2704, 9
  store i64 %2731, i64* %3, align 8
  store i32 %2708, i32* %2706, align 4
  %2732 = load i64, i64* %3, align 8
  %2733 = add i64 %2732, -59
  store i64 %2733, i64* %3, align 8
  br label %block_.L_40f9c7

block_.L_40fa07:                                  ; preds = %block_.L_40f9c7
  %2734 = add i64 %2597, -48
  %2735 = add i64 %2625, 3
  store i64 %2735, i64* %3, align 8
  %2736 = inttoptr i64 %2734 to i32*
  %2737 = load i32, i32* %2736, align 4
  %2738 = zext i32 %2737 to i64
  store i64 %2738, i64* %RAX.i1385, align 8
  %2739 = add i64 %2597, -40
  %2740 = add i64 %2625, 6
  store i64 %2740, i64* %3, align 8
  %2741 = inttoptr i64 %2739 to i32*
  %2742 = load i32, i32* %2741, align 4
  %2743 = add i32 %2742, %2737
  %2744 = zext i32 %2743 to i64
  store i64 %2744, i64* %RAX.i1385, align 8
  %2745 = icmp ult i32 %2743, %2737
  %2746 = icmp ult i32 %2743, %2742
  %2747 = or i1 %2745, %2746
  %2748 = zext i1 %2747 to i8
  store i8 %2748, i8* %14, align 1
  %2749 = and i32 %2743, 255
  %2750 = tail call i32 @llvm.ctpop.i32(i32 %2749)
  %2751 = trunc i32 %2750 to i8
  %2752 = and i8 %2751, 1
  %2753 = xor i8 %2752, 1
  store i8 %2753, i8* %21, align 1
  %2754 = xor i32 %2742, %2737
  %2755 = xor i32 %2754, %2743
  %2756 = lshr i32 %2755, 4
  %2757 = trunc i32 %2756 to i8
  %2758 = and i8 %2757, 1
  store i8 %2758, i8* %26, align 1
  %2759 = icmp eq i32 %2743, 0
  %2760 = zext i1 %2759 to i8
  store i8 %2760, i8* %29, align 1
  %2761 = lshr i32 %2743, 31
  %2762 = trunc i32 %2761 to i8
  store i8 %2762, i8* %32, align 1
  %2763 = lshr i32 %2737, 31
  %2764 = lshr i32 %2742, 31
  %2765 = xor i32 %2761, %2763
  %2766 = xor i32 %2761, %2764
  %2767 = add nuw nsw i32 %2765, %2766
  %2768 = icmp eq i32 %2767, 2
  %2769 = zext i1 %2768 to i8
  store i8 %2769, i8* %38, align 1
  %2770 = add i64 %2597, -64
  %2771 = add i64 %2625, 9
  store i64 %2771, i64* %3, align 8
  %2772 = inttoptr i64 %2770 to i32*
  store i32 %2743, i32* %2772, align 4
  %2773 = load i64, i64* %RBP.i, align 8
  %2774 = add i64 %2773, -48
  %2775 = load i64, i64* %3, align 8
  %2776 = add i64 %2775, 3
  store i64 %2776, i64* %3, align 8
  %2777 = inttoptr i64 %2774 to i32*
  %2778 = load i32, i32* %2777, align 4
  %2779 = zext i32 %2778 to i64
  store i64 %2779, i64* %RAX.i1385, align 8
  %2780 = add i64 %2773, -40
  %2781 = add i64 %2775, 6
  store i64 %2781, i64* %3, align 8
  %2782 = inttoptr i64 %2780 to i32*
  %2783 = load i32, i32* %2782, align 4
  %2784 = sub i32 %2778, %2783
  %2785 = zext i32 %2784 to i64
  store i64 %2785, i64* %RAX.i1385, align 8
  %2786 = icmp ult i32 %2778, %2783
  %2787 = zext i1 %2786 to i8
  store i8 %2787, i8* %14, align 1
  %2788 = and i32 %2784, 255
  %2789 = tail call i32 @llvm.ctpop.i32(i32 %2788)
  %2790 = trunc i32 %2789 to i8
  %2791 = and i8 %2790, 1
  %2792 = xor i8 %2791, 1
  store i8 %2792, i8* %21, align 1
  %2793 = xor i32 %2783, %2778
  %2794 = xor i32 %2793, %2784
  %2795 = lshr i32 %2794, 4
  %2796 = trunc i32 %2795 to i8
  %2797 = and i8 %2796, 1
  store i8 %2797, i8* %26, align 1
  %2798 = icmp eq i32 %2784, 0
  %2799 = zext i1 %2798 to i8
  store i8 %2799, i8* %29, align 1
  %2800 = lshr i32 %2784, 31
  %2801 = trunc i32 %2800 to i8
  store i8 %2801, i8* %32, align 1
  %2802 = lshr i32 %2778, 31
  %2803 = lshr i32 %2783, 31
  %2804 = xor i32 %2803, %2802
  %2805 = xor i32 %2800, %2802
  %2806 = add nuw nsw i32 %2805, %2804
  %2807 = icmp eq i32 %2806, 2
  %2808 = zext i1 %2807 to i8
  store i8 %2808, i8* %38, align 1
  %2809 = add i64 %2773, -60
  %2810 = add i64 %2775, 9
  store i64 %2810, i64* %3, align 8
  %2811 = inttoptr i64 %2809 to i32*
  store i32 %2784, i32* %2811, align 4
  %2812 = load i64, i64* %RBP.i, align 8
  %2813 = add i64 %2812, -44
  %2814 = load i64, i64* %3, align 8
  %2815 = add i64 %2814, 3
  store i64 %2815, i64* %3, align 8
  %2816 = inttoptr i64 %2813 to i32*
  %2817 = load i32, i32* %2816, align 4
  %2818 = zext i32 %2817 to i64
  %2819 = shl nuw i64 %2818, 32
  %2820 = ashr i64 %2819, 33
  %2821 = trunc i32 %2817 to i8
  %2822 = and i8 %2821, 1
  %2823 = trunc i64 %2820 to i32
  %2824 = and i64 %2820, 4294967295
  store i64 %2824, i64* %RAX.i1385, align 8
  store i8 %2822, i8* %14, align 1
  %2825 = and i32 %2823, 255
  %2826 = tail call i32 @llvm.ctpop.i32(i32 %2825)
  %2827 = trunc i32 %2826 to i8
  %2828 = and i8 %2827, 1
  %2829 = xor i8 %2828, 1
  store i8 %2829, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2830 = icmp eq i32 %2823, 0
  %2831 = zext i1 %2830 to i8
  store i8 %2831, i8* %29, align 1
  %2832 = lshr i64 %2820, 31
  %2833 = trunc i64 %2832 to i8
  %2834 = and i8 %2833, 1
  store i8 %2834, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2835 = add i64 %2812, -36
  %2836 = add i64 %2814, 8
  store i64 %2836, i64* %3, align 8
  %2837 = trunc i64 %2820 to i32
  %2838 = inttoptr i64 %2835 to i32*
  %2839 = load i32, i32* %2838, align 4
  %2840 = sub i32 %2837, %2839
  %2841 = zext i32 %2840 to i64
  store i64 %2841, i64* %RAX.i1385, align 8
  %2842 = icmp ult i32 %2837, %2839
  %2843 = zext i1 %2842 to i8
  store i8 %2843, i8* %14, align 1
  %2844 = and i32 %2840, 255
  %2845 = tail call i32 @llvm.ctpop.i32(i32 %2844)
  %2846 = trunc i32 %2845 to i8
  %2847 = and i8 %2846, 1
  %2848 = xor i8 %2847, 1
  store i8 %2848, i8* %21, align 1
  %2849 = xor i32 %2839, %2837
  %2850 = xor i32 %2849, %2840
  %2851 = lshr i32 %2850, 4
  %2852 = trunc i32 %2851 to i8
  %2853 = and i8 %2852, 1
  store i8 %2853, i8* %26, align 1
  %2854 = icmp eq i32 %2840, 0
  %2855 = zext i1 %2854 to i8
  store i8 %2855, i8* %29, align 1
  %2856 = lshr i32 %2840, 31
  %2857 = trunc i32 %2856 to i8
  store i8 %2857, i8* %32, align 1
  %2858 = lshr i64 %2820, 31
  %2859 = trunc i64 %2858 to i32
  %2860 = and i32 %2859, 1
  %2861 = lshr i32 %2839, 31
  %2862 = xor i32 %2861, %2860
  %2863 = xor i32 %2856, %2860
  %2864 = add nuw nsw i32 %2863, %2862
  %2865 = icmp eq i32 %2864, 2
  %2866 = zext i1 %2865 to i8
  store i8 %2866, i8* %38, align 1
  %2867 = add i64 %2812, -56
  %2868 = add i64 %2814, 11
  store i64 %2868, i64* %3, align 8
  %2869 = inttoptr i64 %2867 to i32*
  store i32 %2840, i32* %2869, align 4
  %2870 = load i64, i64* %RBP.i, align 8
  %2871 = add i64 %2870, -44
  %2872 = load i64, i64* %3, align 8
  %2873 = add i64 %2872, 3
  store i64 %2873, i64* %3, align 8
  %2874 = inttoptr i64 %2871 to i32*
  %2875 = load i32, i32* %2874, align 4
  %2876 = zext i32 %2875 to i64
  store i64 %2876, i64* %RAX.i1385, align 8
  %2877 = add i64 %2870, -36
  %2878 = add i64 %2872, 6
  store i64 %2878, i64* %3, align 8
  %2879 = inttoptr i64 %2877 to i32*
  %2880 = load i32, i32* %2879, align 4
  %2881 = zext i32 %2880 to i64
  %2882 = shl nuw i64 %2881, 32
  %2883 = ashr i64 %2882, 33
  %2884 = and i64 %2883, 4294967295
  store i64 %2884, i64* %RCX.i1402, align 8
  %2885 = trunc i64 %2883 to i32
  %2886 = add i32 %2885, %2875
  %2887 = zext i32 %2886 to i64
  store i64 %2887, i64* %RAX.i1385, align 8
  %2888 = icmp ult i32 %2886, %2875
  %2889 = icmp ult i32 %2886, %2885
  %2890 = or i1 %2888, %2889
  %2891 = zext i1 %2890 to i8
  store i8 %2891, i8* %14, align 1
  %2892 = and i32 %2886, 255
  %2893 = tail call i32 @llvm.ctpop.i32(i32 %2892)
  %2894 = trunc i32 %2893 to i8
  %2895 = and i8 %2894, 1
  %2896 = xor i8 %2895, 1
  store i8 %2896, i8* %21, align 1
  %2897 = xor i64 %2883, %2876
  %2898 = trunc i64 %2897 to i32
  %2899 = xor i32 %2898, %2886
  %2900 = lshr i32 %2899, 4
  %2901 = trunc i32 %2900 to i8
  %2902 = and i8 %2901, 1
  store i8 %2902, i8* %26, align 1
  %2903 = icmp eq i32 %2886, 0
  %2904 = zext i1 %2903 to i8
  store i8 %2904, i8* %29, align 1
  %2905 = lshr i32 %2886, 31
  %2906 = trunc i32 %2905 to i8
  store i8 %2906, i8* %32, align 1
  %2907 = lshr i32 %2875, 31
  %2908 = lshr i64 %2883, 31
  %2909 = trunc i64 %2908 to i32
  %2910 = and i32 %2909, 1
  %2911 = xor i32 %2905, %2907
  %2912 = xor i32 %2905, %2910
  %2913 = add nuw nsw i32 %2911, %2912
  %2914 = icmp eq i32 %2913, 2
  %2915 = zext i1 %2914 to i8
  store i8 %2915, i8* %38, align 1
  %2916 = add i64 %2870, -52
  %2917 = add i64 %2872, 13
  store i64 %2917, i64* %3, align 8
  %2918 = inttoptr i64 %2916 to i32*
  store i32 %2886, i32* %2918, align 4
  %2919 = load i64, i64* %RBP.i, align 8
  %2920 = add i64 %2919, -12
  %2921 = load i64, i64* %3, align 8
  %2922 = add i64 %2921, 7
  store i64 %2922, i64* %3, align 8
  %2923 = inttoptr i64 %2920 to i32*
  store i32 0, i32* %2923, align 4
  %.pre104 = load i64, i64* %3, align 8
  br label %block_.L_40fa3a

block_.L_40fa3a:                                  ; preds = %block_40fa44, %block_.L_40fa07
  %2924 = phi i64 [ %3200, %block_40fa44 ], [ %.pre104, %block_.L_40fa07 ]
  %2925 = load i64, i64* %RBP.i, align 8
  %2926 = add i64 %2925, -12
  %2927 = add i64 %2924, 4
  store i64 %2927, i64* %3, align 8
  %2928 = inttoptr i64 %2926 to i32*
  %2929 = load i32, i32* %2928, align 4
  %2930 = add i32 %2929, -2
  %2931 = icmp ult i32 %2929, 2
  %2932 = zext i1 %2931 to i8
  store i8 %2932, i8* %14, align 1
  %2933 = and i32 %2930, 255
  %2934 = tail call i32 @llvm.ctpop.i32(i32 %2933)
  %2935 = trunc i32 %2934 to i8
  %2936 = and i8 %2935, 1
  %2937 = xor i8 %2936, 1
  store i8 %2937, i8* %21, align 1
  %2938 = xor i32 %2930, %2929
  %2939 = lshr i32 %2938, 4
  %2940 = trunc i32 %2939 to i8
  %2941 = and i8 %2940, 1
  store i8 %2941, i8* %26, align 1
  %2942 = icmp eq i32 %2930, 0
  %2943 = zext i1 %2942 to i8
  store i8 %2943, i8* %29, align 1
  %2944 = lshr i32 %2930, 31
  %2945 = trunc i32 %2944 to i8
  store i8 %2945, i8* %32, align 1
  %2946 = lshr i32 %2929, 31
  %2947 = xor i32 %2944, %2946
  %2948 = add nuw nsw i32 %2947, %2946
  %2949 = icmp eq i32 %2948, 2
  %2950 = zext i1 %2949 to i8
  store i8 %2950, i8* %38, align 1
  %2951 = icmp ne i8 %2945, 0
  %2952 = xor i1 %2951, %2949
  %.v126 = select i1 %2952, i64 10, i64 133
  %2953 = add i64 %2924, %.v126
  %2954 = add i64 %2953, 5
  store i64 %2954, i64* %3, align 8
  br i1 %2952, label %block_40fa44, label %block_.L_40fabf

block_40fa44:                                     ; preds = %block_.L_40fa3a
  store i64 3, i64* %RAX.i1385, align 8
  %2955 = add i64 %2953, 8
  store i64 %2955, i64* %3, align 8
  %2956 = load i32, i32* %2928, align 4
  %2957 = sub i32 3, %2956
  %2958 = zext i32 %2957 to i64
  store i64 %2958, i64* %RAX.i1385, align 8
  %2959 = icmp ugt i32 %2956, 3
  %2960 = zext i1 %2959 to i8
  store i8 %2960, i8* %14, align 1
  %2961 = and i32 %2957, 255
  %2962 = tail call i32 @llvm.ctpop.i32(i32 %2961)
  %2963 = trunc i32 %2962 to i8
  %2964 = and i8 %2963, 1
  %2965 = xor i8 %2964, 1
  store i8 %2965, i8* %21, align 1
  %2966 = xor i32 %2957, %2956
  %2967 = lshr i32 %2966, 4
  %2968 = trunc i32 %2967 to i8
  %2969 = and i8 %2968, 1
  store i8 %2969, i8* %26, align 1
  %2970 = icmp eq i32 %2957, 0
  %2971 = zext i1 %2970 to i8
  store i8 %2971, i8* %29, align 1
  %2972 = lshr i32 %2957, 31
  %2973 = trunc i32 %2972 to i8
  store i8 %2973, i8* %32, align 1
  %2974 = lshr i32 %2956, 31
  %2975 = add nuw nsw i32 %2972, %2974
  %2976 = icmp eq i32 %2975, 2
  %2977 = zext i1 %2976 to i8
  store i8 %2977, i8* %38, align 1
  %2978 = add i64 %2925, -20
  %2979 = add i64 %2953, 11
  store i64 %2979, i64* %3, align 8
  %2980 = inttoptr i64 %2978 to i32*
  store i32 %2957, i32* %2980, align 4
  %2981 = load i64, i64* %RBP.i, align 8
  %2982 = add i64 %2981, -12
  %2983 = load i64, i64* %3, align 8
  %2984 = add i64 %2983, 4
  store i64 %2984, i64* %3, align 8
  %2985 = inttoptr i64 %2982 to i32*
  %2986 = load i32, i32* %2985, align 4
  %2987 = sext i32 %2986 to i64
  store i64 %2987, i64* %RCX.i1402, align 8
  %2988 = shl nsw i64 %2987, 2
  %2989 = add i64 %2981, -64
  %2990 = add i64 %2989, %2988
  %2991 = add i64 %2983, 8
  store i64 %2991, i64* %3, align 8
  %2992 = inttoptr i64 %2990 to i32*
  %2993 = load i32, i32* %2992, align 4
  %2994 = zext i32 %2993 to i64
  store i64 %2994, i64* %RAX.i1385, align 8
  %2995 = add i64 %2981, -20
  %2996 = add i64 %2983, 12
  store i64 %2996, i64* %3, align 8
  %2997 = inttoptr i64 %2995 to i32*
  %2998 = load i32, i32* %2997, align 4
  %2999 = sext i32 %2998 to i64
  store i64 %2999, i64* %RCX.i1402, align 8
  %3000 = shl nsw i64 %2999, 2
  %3001 = add nsw i64 %3000, -64
  %3002 = add i64 %3001, %2981
  %3003 = add i64 %2983, 16
  store i64 %3003, i64* %3, align 8
  %3004 = inttoptr i64 %3002 to i32*
  %3005 = load i32, i32* %3004, align 4
  %3006 = add i32 %3005, %2993
  %3007 = zext i32 %3006 to i64
  store i64 %3007, i64* %RAX.i1385, align 8
  %3008 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %3009 = add i64 %3008, 13112
  store i64 %3009, i64* %RCX.i1402, align 8
  %3010 = icmp ugt i64 %3008, -13113
  %3011 = zext i1 %3010 to i8
  store i8 %3011, i8* %14, align 1
  %3012 = trunc i64 %3009 to i32
  %3013 = and i32 %3012, 255
  %3014 = tail call i32 @llvm.ctpop.i32(i32 %3013)
  %3015 = trunc i32 %3014 to i8
  %3016 = and i8 %3015, 1
  %3017 = xor i8 %3016, 1
  store i8 %3017, i8* %21, align 1
  %3018 = xor i64 %3008, 16
  %3019 = xor i64 %3018, %3009
  %3020 = lshr i64 %3019, 4
  %3021 = trunc i64 %3020 to i8
  %3022 = and i8 %3021, 1
  store i8 %3022, i8* %26, align 1
  %3023 = icmp eq i64 %3009, 0
  %3024 = zext i1 %3023 to i8
  store i8 %3024, i8* %29, align 1
  %3025 = lshr i64 %3009, 63
  %3026 = trunc i64 %3025 to i8
  store i8 %3026, i8* %32, align 1
  %3027 = lshr i64 %3008, 63
  %3028 = xor i64 %3025, %3027
  %3029 = add nuw nsw i64 %3028, %3025
  %3030 = icmp eq i64 %3029, 2
  %3031 = zext i1 %3030 to i8
  store i8 %3031, i8* %38, align 1
  %3032 = load i64, i64* %RBP.i, align 8
  %3033 = add i64 %3032, -12
  %3034 = add i64 %2983, 35
  store i64 %3034, i64* %3, align 8
  %3035 = inttoptr i64 %3033 to i32*
  %3036 = load i32, i32* %3035, align 4
  %3037 = sext i32 %3036 to i64
  %3038 = shl nsw i64 %3037, 6
  store i64 %3038, i64* %RDX.i1446, align 8
  %3039 = add i64 %3038, %3009
  store i64 %3039, i64* %RCX.i1402, align 8
  %3040 = icmp ult i64 %3039, %3009
  %3041 = icmp ult i64 %3039, %3038
  %3042 = or i1 %3040, %3041
  %3043 = zext i1 %3042 to i8
  store i8 %3043, i8* %14, align 1
  %3044 = trunc i64 %3039 to i32
  %3045 = and i32 %3044, 255
  %3046 = tail call i32 @llvm.ctpop.i32(i32 %3045)
  %3047 = trunc i32 %3046 to i8
  %3048 = and i8 %3047, 1
  %3049 = xor i8 %3048, 1
  store i8 %3049, i8* %21, align 1
  %3050 = xor i64 %3009, %3039
  %3051 = lshr i64 %3050, 4
  %3052 = trunc i64 %3051 to i8
  %3053 = and i8 %3052, 1
  store i8 %3053, i8* %26, align 1
  %3054 = icmp eq i64 %3039, 0
  %3055 = zext i1 %3054 to i8
  store i8 %3055, i8* %29, align 1
  %3056 = lshr i64 %3039, 63
  %3057 = trunc i64 %3056 to i8
  store i8 %3057, i8* %32, align 1
  %3058 = lshr i64 %3037, 57
  %3059 = and i64 %3058, 1
  %3060 = xor i64 %3056, %3025
  %3061 = xor i64 %3056, %3059
  %3062 = add nuw nsw i64 %3060, %3061
  %3063 = icmp eq i64 %3062, 2
  %3064 = zext i1 %3063 to i8
  store i8 %3064, i8* %38, align 1
  %3065 = add i64 %3032, -16
  %3066 = add i64 %2983, 46
  store i64 %3066, i64* %3, align 8
  %3067 = inttoptr i64 %3065 to i32*
  %3068 = load i32, i32* %3067, align 4
  %3069 = sext i32 %3068 to i64
  store i64 %3069, i64* %RDX.i1446, align 8
  %3070 = shl nsw i64 %3069, 2
  %3071 = add i64 %3070, %3039
  %3072 = load i32, i32* %EAX.i1414, align 4
  %3073 = add i64 %2983, 49
  store i64 %3073, i64* %3, align 8
  %3074 = inttoptr i64 %3071 to i32*
  store i32 %3072, i32* %3074, align 4
  %3075 = load i64, i64* %RBP.i, align 8
  %3076 = add i64 %3075, -12
  %3077 = load i64, i64* %3, align 8
  %3078 = add i64 %3077, 4
  store i64 %3078, i64* %3, align 8
  %3079 = inttoptr i64 %3076 to i32*
  %3080 = load i32, i32* %3079, align 4
  %3081 = sext i32 %3080 to i64
  store i64 %3081, i64* %RCX.i1402, align 8
  %3082 = shl nsw i64 %3081, 2
  %3083 = add i64 %3075, -64
  %3084 = add i64 %3083, %3082
  %3085 = add i64 %3077, 8
  store i64 %3085, i64* %3, align 8
  %3086 = inttoptr i64 %3084 to i32*
  %3087 = load i32, i32* %3086, align 4
  %3088 = zext i32 %3087 to i64
  store i64 %3088, i64* %RAX.i1385, align 8
  %3089 = add i64 %3075, -20
  %3090 = add i64 %3077, 12
  store i64 %3090, i64* %3, align 8
  %3091 = inttoptr i64 %3089 to i32*
  %3092 = load i32, i32* %3091, align 4
  %3093 = sext i32 %3092 to i64
  store i64 %3093, i64* %RCX.i1402, align 8
  %3094 = shl nsw i64 %3093, 2
  %3095 = add nsw i64 %3094, -64
  %3096 = add i64 %3095, %3075
  %3097 = add i64 %3077, 16
  store i64 %3097, i64* %3, align 8
  %3098 = inttoptr i64 %3096 to i32*
  %3099 = load i32, i32* %3098, align 4
  %3100 = sub i32 %3087, %3099
  %3101 = zext i32 %3100 to i64
  store i64 %3101, i64* %RAX.i1385, align 8
  %3102 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %3103 = add i64 %3102, 13112
  store i64 %3103, i64* %RCX.i1402, align 8
  %3104 = icmp ugt i64 %3102, -13113
  %3105 = zext i1 %3104 to i8
  store i8 %3105, i8* %14, align 1
  %3106 = trunc i64 %3103 to i32
  %3107 = and i32 %3106, 255
  %3108 = tail call i32 @llvm.ctpop.i32(i32 %3107)
  %3109 = trunc i32 %3108 to i8
  %3110 = and i8 %3109, 1
  %3111 = xor i8 %3110, 1
  store i8 %3111, i8* %21, align 1
  %3112 = xor i64 %3102, 16
  %3113 = xor i64 %3112, %3103
  %3114 = lshr i64 %3113, 4
  %3115 = trunc i64 %3114 to i8
  %3116 = and i8 %3115, 1
  store i8 %3116, i8* %26, align 1
  %3117 = icmp eq i64 %3103, 0
  %3118 = zext i1 %3117 to i8
  store i8 %3118, i8* %29, align 1
  %3119 = lshr i64 %3103, 63
  %3120 = trunc i64 %3119 to i8
  store i8 %3120, i8* %32, align 1
  %3121 = lshr i64 %3102, 63
  %3122 = xor i64 %3119, %3121
  %3123 = add nuw nsw i64 %3122, %3119
  %3124 = icmp eq i64 %3123, 2
  %3125 = zext i1 %3124 to i8
  store i8 %3125, i8* %38, align 1
  %3126 = load i64, i64* %RBP.i, align 8
  %3127 = add i64 %3126, -20
  %3128 = add i64 %3077, 35
  store i64 %3128, i64* %3, align 8
  %3129 = inttoptr i64 %3127 to i32*
  %3130 = load i32, i32* %3129, align 4
  %3131 = sext i32 %3130 to i64
  %3132 = shl nsw i64 %3131, 6
  store i64 %3132, i64* %RDX.i1446, align 8
  %3133 = add i64 %3132, %3103
  store i64 %3133, i64* %RCX.i1402, align 8
  %3134 = icmp ult i64 %3133, %3103
  %3135 = icmp ult i64 %3133, %3132
  %3136 = or i1 %3134, %3135
  %3137 = zext i1 %3136 to i8
  store i8 %3137, i8* %14, align 1
  %3138 = trunc i64 %3133 to i32
  %3139 = and i32 %3138, 255
  %3140 = tail call i32 @llvm.ctpop.i32(i32 %3139)
  %3141 = trunc i32 %3140 to i8
  %3142 = and i8 %3141, 1
  %3143 = xor i8 %3142, 1
  store i8 %3143, i8* %21, align 1
  %3144 = xor i64 %3103, %3133
  %3145 = lshr i64 %3144, 4
  %3146 = trunc i64 %3145 to i8
  %3147 = and i8 %3146, 1
  store i8 %3147, i8* %26, align 1
  %3148 = icmp eq i64 %3133, 0
  %3149 = zext i1 %3148 to i8
  store i8 %3149, i8* %29, align 1
  %3150 = lshr i64 %3133, 63
  %3151 = trunc i64 %3150 to i8
  store i8 %3151, i8* %32, align 1
  %3152 = lshr i64 %3131, 57
  %3153 = and i64 %3152, 1
  %3154 = xor i64 %3150, %3119
  %3155 = xor i64 %3150, %3153
  %3156 = add nuw nsw i64 %3154, %3155
  %3157 = icmp eq i64 %3156, 2
  %3158 = zext i1 %3157 to i8
  store i8 %3158, i8* %38, align 1
  %3159 = add i64 %3126, -16
  %3160 = add i64 %3077, 46
  store i64 %3160, i64* %3, align 8
  %3161 = inttoptr i64 %3159 to i32*
  %3162 = load i32, i32* %3161, align 4
  %3163 = sext i32 %3162 to i64
  store i64 %3163, i64* %RDX.i1446, align 8
  %3164 = shl nsw i64 %3163, 2
  %3165 = add i64 %3164, %3133
  %3166 = load i32, i32* %EAX.i1414, align 4
  %3167 = add i64 %3077, 49
  store i64 %3167, i64* %3, align 8
  %3168 = inttoptr i64 %3165 to i32*
  store i32 %3166, i32* %3168, align 4
  %3169 = load i64, i64* %RBP.i, align 8
  %3170 = add i64 %3169, -12
  %3171 = load i64, i64* %3, align 8
  %3172 = add i64 %3171, 3
  store i64 %3172, i64* %3, align 8
  %3173 = inttoptr i64 %3170 to i32*
  %3174 = load i32, i32* %3173, align 4
  %3175 = add i32 %3174, 1
  %3176 = zext i32 %3175 to i64
  store i64 %3176, i64* %RAX.i1385, align 8
  %3177 = icmp eq i32 %3174, -1
  %3178 = icmp eq i32 %3175, 0
  %3179 = or i1 %3177, %3178
  %3180 = zext i1 %3179 to i8
  store i8 %3180, i8* %14, align 1
  %3181 = and i32 %3175, 255
  %3182 = tail call i32 @llvm.ctpop.i32(i32 %3181)
  %3183 = trunc i32 %3182 to i8
  %3184 = and i8 %3183, 1
  %3185 = xor i8 %3184, 1
  store i8 %3185, i8* %21, align 1
  %3186 = xor i32 %3175, %3174
  %3187 = lshr i32 %3186, 4
  %3188 = trunc i32 %3187 to i8
  %3189 = and i8 %3188, 1
  store i8 %3189, i8* %26, align 1
  %3190 = zext i1 %3178 to i8
  store i8 %3190, i8* %29, align 1
  %3191 = lshr i32 %3175, 31
  %3192 = trunc i32 %3191 to i8
  store i8 %3192, i8* %32, align 1
  %3193 = lshr i32 %3174, 31
  %3194 = xor i32 %3191, %3193
  %3195 = add nuw nsw i32 %3194, %3191
  %3196 = icmp eq i32 %3195, 2
  %3197 = zext i1 %3196 to i8
  store i8 %3197, i8* %38, align 1
  %3198 = add i64 %3171, 9
  store i64 %3198, i64* %3, align 8
  store i32 %3175, i32* %3173, align 4
  %3199 = load i64, i64* %3, align 8
  %3200 = add i64 %3199, -128
  store i64 %3200, i64* %3, align 8
  br label %block_.L_40fa3a

block_.L_40fabf:                                  ; preds = %block_.L_40fa3a
  %3201 = add i64 %2925, -16
  %3202 = add i64 %2953, 8
  store i64 %3202, i64* %3, align 8
  %3203 = inttoptr i64 %3201 to i32*
  %3204 = load i32, i32* %3203, align 4
  %3205 = add i32 %3204, 1
  %3206 = zext i32 %3205 to i64
  store i64 %3206, i64* %RAX.i1385, align 8
  %3207 = icmp eq i32 %3204, -1
  %3208 = icmp eq i32 %3205, 0
  %3209 = or i1 %3207, %3208
  %3210 = zext i1 %3209 to i8
  store i8 %3210, i8* %14, align 1
  %3211 = and i32 %3205, 255
  %3212 = tail call i32 @llvm.ctpop.i32(i32 %3211)
  %3213 = trunc i32 %3212 to i8
  %3214 = and i8 %3213, 1
  %3215 = xor i8 %3214, 1
  store i8 %3215, i8* %21, align 1
  %3216 = xor i32 %3205, %3204
  %3217 = lshr i32 %3216, 4
  %3218 = trunc i32 %3217 to i8
  %3219 = and i8 %3218, 1
  store i8 %3219, i8* %26, align 1
  %3220 = zext i1 %3208 to i8
  store i8 %3220, i8* %29, align 1
  %3221 = lshr i32 %3205, 31
  %3222 = trunc i32 %3221 to i8
  store i8 %3222, i8* %32, align 1
  %3223 = lshr i32 %3204, 31
  %3224 = xor i32 %3221, %3223
  %3225 = add nuw nsw i32 %3224, %3221
  %3226 = icmp eq i32 %3225, 2
  %3227 = zext i1 %3226 to i8
  store i8 %3227, i8* %38, align 1
  %3228 = add i64 %2953, 14
  store i64 %3228, i64* %3, align 8
  store i32 %3205, i32* %3203, align 4
  %3229 = load i64, i64* %3, align 8
  %3230 = add i64 %3229, -279
  store i64 %3230, i64* %3, align 8
  br label %block_.L_40f9b6

block_.L_40fad9:                                  ; preds = %block_.L_40fad9.preheader, %block_.L_40fd8c
  %3231 = phi i64 [ %4483, %block_.L_40fd8c ], [ %.pre103, %block_.L_40fad9.preheader ]
  %3232 = load i64, i64* %RBP.i, align 8
  %3233 = add i64 %3232, -12
  %3234 = add i64 %3231, 4
  store i64 %3234, i64* %3, align 8
  %3235 = inttoptr i64 %3233 to i32*
  %3236 = load i32, i32* %3235, align 4
  %3237 = add i32 %3236, -4
  %3238 = icmp ult i32 %3236, 4
  %3239 = zext i1 %3238 to i8
  store i8 %3239, i8* %14, align 1
  %3240 = and i32 %3237, 255
  %3241 = tail call i32 @llvm.ctpop.i32(i32 %3240)
  %3242 = trunc i32 %3241 to i8
  %3243 = and i8 %3242, 1
  %3244 = xor i8 %3243, 1
  store i8 %3244, i8* %21, align 1
  %3245 = xor i32 %3237, %3236
  %3246 = lshr i32 %3245, 4
  %3247 = trunc i32 %3246 to i8
  %3248 = and i8 %3247, 1
  store i8 %3248, i8* %26, align 1
  %3249 = icmp eq i32 %3237, 0
  %3250 = zext i1 %3249 to i8
  store i8 %3250, i8* %29, align 1
  %3251 = lshr i32 %3237, 31
  %3252 = trunc i32 %3251 to i8
  store i8 %3252, i8* %32, align 1
  %3253 = lshr i32 %3236, 31
  %3254 = xor i32 %3251, %3253
  %3255 = add nuw nsw i32 %3254, %3253
  %3256 = icmp eq i32 %3255, 2
  %3257 = zext i1 %3256 to i8
  store i8 %3257, i8* %38, align 1
  %3258 = icmp ne i8 %3252, 0
  %3259 = xor i1 %3258, %3256
  %.v111 = select i1 %3259, i64 10, i64 710
  %3260 = add i64 %3231, %.v111
  %3261 = add i64 %3232, -16
  %3262 = add i64 %3260, 7
  store i64 %3262, i64* %3, align 8
  %3263 = inttoptr i64 %3261 to i32*
  store i32 0, i32* %3263, align 4
  br i1 %3259, label %block_.L_40faea.preheader, label %block_.L_40fda6.preheader

block_.L_40faea.preheader:                        ; preds = %block_.L_40fad9
  %.pre95 = load i64, i64* %3, align 8
  br label %block_.L_40faea

block_.L_40fda6.preheader:                        ; preds = %block_.L_40fad9
  %SI.i58 = bitcast %union.anon* %47 to i16*
  %.pre93 = load i64, i64* %3, align 8
  br label %block_.L_40fda6

block_.L_40faea:                                  ; preds = %block_.L_40faea.preheader, %block_40faf4
  %3264 = phi i64 [ %.pre95, %block_.L_40faea.preheader ], [ %3401, %block_40faf4 ]
  %3265 = load i64, i64* %RBP.i, align 8
  %3266 = add i64 %3265, -16
  %3267 = add i64 %3264, 4
  store i64 %3267, i64* %3, align 8
  %3268 = inttoptr i64 %3266 to i32*
  %3269 = load i32, i32* %3268, align 4
  %3270 = add i32 %3269, -4
  %3271 = icmp ult i32 %3269, 4
  %3272 = zext i1 %3271 to i8
  store i8 %3272, i8* %14, align 1
  %3273 = and i32 %3270, 255
  %3274 = tail call i32 @llvm.ctpop.i32(i32 %3273)
  %3275 = trunc i32 %3274 to i8
  %3276 = and i8 %3275, 1
  %3277 = xor i8 %3276, 1
  store i8 %3277, i8* %21, align 1
  %3278 = xor i32 %3270, %3269
  %3279 = lshr i32 %3278, 4
  %3280 = trunc i32 %3279 to i8
  %3281 = and i8 %3280, 1
  store i8 %3281, i8* %26, align 1
  %3282 = icmp eq i32 %3270, 0
  %3283 = zext i1 %3282 to i8
  store i8 %3283, i8* %29, align 1
  %3284 = lshr i32 %3270, 31
  %3285 = trunc i32 %3284 to i8
  store i8 %3285, i8* %32, align 1
  %3286 = lshr i32 %3269, 31
  %3287 = xor i32 %3284, %3286
  %3288 = add nuw nsw i32 %3287, %3286
  %3289 = icmp eq i32 %3288, 2
  %3290 = zext i1 %3289 to i8
  store i8 %3290, i8* %38, align 1
  %3291 = icmp ne i8 %3285, 0
  %3292 = xor i1 %3291, %3289
  %.v120 = select i1 %3292, i64 10, i64 64
  %3293 = add i64 %3264, %.v120
  store i64 %3293, i64* %3, align 8
  br i1 %3292, label %block_40faf4, label %block_.L_40fb2a

block_40faf4:                                     ; preds = %block_.L_40faea
  %3294 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %3295 = add i64 %3294, 13112
  store i64 %3295, i64* %RAX.i1385, align 8
  %3296 = icmp ugt i64 %3294, -13113
  %3297 = zext i1 %3296 to i8
  store i8 %3297, i8* %14, align 1
  %3298 = trunc i64 %3295 to i32
  %3299 = and i32 %3298, 255
  %3300 = tail call i32 @llvm.ctpop.i32(i32 %3299)
  %3301 = trunc i32 %3300 to i8
  %3302 = and i8 %3301, 1
  %3303 = xor i8 %3302, 1
  store i8 %3303, i8* %21, align 1
  %3304 = xor i64 %3294, 16
  %3305 = xor i64 %3304, %3295
  %3306 = lshr i64 %3305, 4
  %3307 = trunc i64 %3306 to i8
  %3308 = and i8 %3307, 1
  store i8 %3308, i8* %26, align 1
  %3309 = icmp eq i64 %3295, 0
  %3310 = zext i1 %3309 to i8
  store i8 %3310, i8* %29, align 1
  %3311 = lshr i64 %3295, 63
  %3312 = trunc i64 %3311 to i8
  store i8 %3312, i8* %32, align 1
  %3313 = lshr i64 %3294, 63
  %3314 = xor i64 %3311, %3313
  %3315 = add nuw nsw i64 %3314, %3311
  %3316 = icmp eq i64 %3315, 2
  %3317 = zext i1 %3316 to i8
  store i8 %3317, i8* %38, align 1
  %3318 = add i64 %3265, -12
  %3319 = add i64 %3293, 18
  store i64 %3319, i64* %3, align 8
  %3320 = inttoptr i64 %3318 to i32*
  %3321 = load i32, i32* %3320, align 4
  %3322 = sext i32 %3321 to i64
  %3323 = shl nsw i64 %3322, 6
  store i64 %3323, i64* %RCX.i1402, align 8
  %3324 = add i64 %3323, %3295
  store i64 %3324, i64* %RAX.i1385, align 8
  %3325 = icmp ult i64 %3324, %3295
  %3326 = icmp ult i64 %3324, %3323
  %3327 = or i1 %3325, %3326
  %3328 = zext i1 %3327 to i8
  store i8 %3328, i8* %14, align 1
  %3329 = trunc i64 %3324 to i32
  %3330 = and i32 %3329, 255
  %3331 = tail call i32 @llvm.ctpop.i32(i32 %3330)
  %3332 = trunc i32 %3331 to i8
  %3333 = and i8 %3332, 1
  %3334 = xor i8 %3333, 1
  store i8 %3334, i8* %21, align 1
  %3335 = xor i64 %3295, %3324
  %3336 = lshr i64 %3335, 4
  %3337 = trunc i64 %3336 to i8
  %3338 = and i8 %3337, 1
  store i8 %3338, i8* %26, align 1
  %3339 = icmp eq i64 %3324, 0
  %3340 = zext i1 %3339 to i8
  store i8 %3340, i8* %29, align 1
  %3341 = lshr i64 %3324, 63
  %3342 = trunc i64 %3341 to i8
  store i8 %3342, i8* %32, align 1
  %3343 = lshr i64 %3322, 57
  %3344 = and i64 %3343, 1
  %3345 = xor i64 %3341, %3311
  %3346 = xor i64 %3341, %3344
  %3347 = add nuw nsw i64 %3345, %3346
  %3348 = icmp eq i64 %3347, 2
  %3349 = zext i1 %3348 to i8
  store i8 %3349, i8* %38, align 1
  %3350 = load i64, i64* %RBP.i, align 8
  %3351 = add i64 %3350, -16
  %3352 = add i64 %3293, 29
  store i64 %3352, i64* %3, align 8
  %3353 = inttoptr i64 %3351 to i32*
  %3354 = load i32, i32* %3353, align 4
  %3355 = sext i32 %3354 to i64
  store i64 %3355, i64* %RCX.i1402, align 8
  %3356 = shl nsw i64 %3355, 2
  %3357 = add i64 %3356, %3324
  %3358 = add i64 %3293, 32
  store i64 %3358, i64* %3, align 8
  %3359 = inttoptr i64 %3357 to i32*
  %3360 = load i32, i32* %3359, align 4
  %3361 = zext i32 %3360 to i64
  store i64 %3361, i64* %RDX.i1446, align 8
  %3362 = add i64 %3293, 36
  store i64 %3362, i64* %3, align 8
  %3363 = load i32, i32* %3353, align 4
  %3364 = sext i32 %3363 to i64
  store i64 %3364, i64* %RAX.i1385, align 8
  %3365 = shl nsw i64 %3364, 2
  %3366 = add i64 %3350, -48
  %3367 = add i64 %3366, %3365
  %3368 = add i64 %3293, 40
  store i64 %3368, i64* %3, align 8
  %3369 = inttoptr i64 %3367 to i32*
  store i32 %3360, i32* %3369, align 4
  %3370 = load i64, i64* %RBP.i, align 8
  %3371 = add i64 %3370, -16
  %3372 = load i64, i64* %3, align 8
  %3373 = add i64 %3372, 3
  store i64 %3373, i64* %3, align 8
  %3374 = inttoptr i64 %3371 to i32*
  %3375 = load i32, i32* %3374, align 4
  %3376 = add i32 %3375, 1
  %3377 = zext i32 %3376 to i64
  store i64 %3377, i64* %RAX.i1385, align 8
  %3378 = icmp eq i32 %3375, -1
  %3379 = icmp eq i32 %3376, 0
  %3380 = or i1 %3378, %3379
  %3381 = zext i1 %3380 to i8
  store i8 %3381, i8* %14, align 1
  %3382 = and i32 %3376, 255
  %3383 = tail call i32 @llvm.ctpop.i32(i32 %3382)
  %3384 = trunc i32 %3383 to i8
  %3385 = and i8 %3384, 1
  %3386 = xor i8 %3385, 1
  store i8 %3386, i8* %21, align 1
  %3387 = xor i32 %3376, %3375
  %3388 = lshr i32 %3387, 4
  %3389 = trunc i32 %3388 to i8
  %3390 = and i8 %3389, 1
  store i8 %3390, i8* %26, align 1
  %3391 = zext i1 %3379 to i8
  store i8 %3391, i8* %29, align 1
  %3392 = lshr i32 %3376, 31
  %3393 = trunc i32 %3392 to i8
  store i8 %3393, i8* %32, align 1
  %3394 = lshr i32 %3375, 31
  %3395 = xor i32 %3392, %3394
  %3396 = add nuw nsw i32 %3395, %3392
  %3397 = icmp eq i32 %3396, 2
  %3398 = zext i1 %3397 to i8
  store i8 %3398, i8* %38, align 1
  %3399 = add i64 %3372, 9
  store i64 %3399, i64* %3, align 8
  store i32 %3376, i32* %3374, align 4
  %3400 = load i64, i64* %3, align 8
  %3401 = add i64 %3400, -59
  store i64 %3401, i64* %3, align 8
  br label %block_.L_40faea

block_.L_40fb2a:                                  ; preds = %block_.L_40faea
  %3402 = add i64 %3265, -48
  %3403 = add i64 %3293, 3
  store i64 %3403, i64* %3, align 8
  %3404 = inttoptr i64 %3402 to i32*
  %3405 = load i32, i32* %3404, align 4
  %3406 = zext i32 %3405 to i64
  store i64 %3406, i64* %RAX.i1385, align 8
  %3407 = add i64 %3265, -40
  %3408 = add i64 %3293, 6
  store i64 %3408, i64* %3, align 8
  %3409 = inttoptr i64 %3407 to i32*
  %3410 = load i32, i32* %3409, align 4
  %3411 = add i32 %3410, %3405
  %3412 = zext i32 %3411 to i64
  store i64 %3412, i64* %RAX.i1385, align 8
  %3413 = icmp ult i32 %3411, %3405
  %3414 = icmp ult i32 %3411, %3410
  %3415 = or i1 %3413, %3414
  %3416 = zext i1 %3415 to i8
  store i8 %3416, i8* %14, align 1
  %3417 = and i32 %3411, 255
  %3418 = tail call i32 @llvm.ctpop.i32(i32 %3417)
  %3419 = trunc i32 %3418 to i8
  %3420 = and i8 %3419, 1
  %3421 = xor i8 %3420, 1
  store i8 %3421, i8* %21, align 1
  %3422 = xor i32 %3410, %3405
  %3423 = xor i32 %3422, %3411
  %3424 = lshr i32 %3423, 4
  %3425 = trunc i32 %3424 to i8
  %3426 = and i8 %3425, 1
  store i8 %3426, i8* %26, align 1
  %3427 = icmp eq i32 %3411, 0
  %3428 = zext i1 %3427 to i8
  store i8 %3428, i8* %29, align 1
  %3429 = lshr i32 %3411, 31
  %3430 = trunc i32 %3429 to i8
  store i8 %3430, i8* %32, align 1
  %3431 = lshr i32 %3405, 31
  %3432 = lshr i32 %3410, 31
  %3433 = xor i32 %3429, %3431
  %3434 = xor i32 %3429, %3432
  %3435 = add nuw nsw i32 %3433, %3434
  %3436 = icmp eq i32 %3435, 2
  %3437 = zext i1 %3436 to i8
  store i8 %3437, i8* %38, align 1
  %3438 = add i64 %3265, -64
  %3439 = add i64 %3293, 9
  store i64 %3439, i64* %3, align 8
  %3440 = inttoptr i64 %3438 to i32*
  store i32 %3411, i32* %3440, align 4
  %3441 = load i64, i64* %RBP.i, align 8
  %3442 = add i64 %3441, -48
  %3443 = load i64, i64* %3, align 8
  %3444 = add i64 %3443, 3
  store i64 %3444, i64* %3, align 8
  %3445 = inttoptr i64 %3442 to i32*
  %3446 = load i32, i32* %3445, align 4
  %3447 = zext i32 %3446 to i64
  store i64 %3447, i64* %RAX.i1385, align 8
  %3448 = add i64 %3441, -40
  %3449 = add i64 %3443, 6
  store i64 %3449, i64* %3, align 8
  %3450 = inttoptr i64 %3448 to i32*
  %3451 = load i32, i32* %3450, align 4
  %3452 = sub i32 %3446, %3451
  %3453 = zext i32 %3452 to i64
  store i64 %3453, i64* %RAX.i1385, align 8
  %3454 = icmp ult i32 %3446, %3451
  %3455 = zext i1 %3454 to i8
  store i8 %3455, i8* %14, align 1
  %3456 = and i32 %3452, 255
  %3457 = tail call i32 @llvm.ctpop.i32(i32 %3456)
  %3458 = trunc i32 %3457 to i8
  %3459 = and i8 %3458, 1
  %3460 = xor i8 %3459, 1
  store i8 %3460, i8* %21, align 1
  %3461 = xor i32 %3451, %3446
  %3462 = xor i32 %3461, %3452
  %3463 = lshr i32 %3462, 4
  %3464 = trunc i32 %3463 to i8
  %3465 = and i8 %3464, 1
  store i8 %3465, i8* %26, align 1
  %3466 = icmp eq i32 %3452, 0
  %3467 = zext i1 %3466 to i8
  store i8 %3467, i8* %29, align 1
  %3468 = lshr i32 %3452, 31
  %3469 = trunc i32 %3468 to i8
  store i8 %3469, i8* %32, align 1
  %3470 = lshr i32 %3446, 31
  %3471 = lshr i32 %3451, 31
  %3472 = xor i32 %3471, %3470
  %3473 = xor i32 %3468, %3470
  %3474 = add nuw nsw i32 %3473, %3472
  %3475 = icmp eq i32 %3474, 2
  %3476 = zext i1 %3475 to i8
  store i8 %3476, i8* %38, align 1
  %3477 = add i64 %3441, -60
  %3478 = add i64 %3443, 9
  store i64 %3478, i64* %3, align 8
  %3479 = inttoptr i64 %3477 to i32*
  store i32 %3452, i32* %3479, align 4
  %3480 = load i64, i64* %RBP.i, align 8
  %3481 = add i64 %3480, -44
  %3482 = load i64, i64* %3, align 8
  %3483 = add i64 %3482, 3
  store i64 %3483, i64* %3, align 8
  %3484 = inttoptr i64 %3481 to i32*
  %3485 = load i32, i32* %3484, align 4
  %3486 = zext i32 %3485 to i64
  %3487 = shl nuw i64 %3486, 32
  %3488 = ashr i64 %3487, 33
  %3489 = trunc i32 %3485 to i8
  %3490 = and i8 %3489, 1
  %3491 = trunc i64 %3488 to i32
  %3492 = and i64 %3488, 4294967295
  store i64 %3492, i64* %RAX.i1385, align 8
  store i8 %3490, i8* %14, align 1
  %3493 = and i32 %3491, 255
  %3494 = tail call i32 @llvm.ctpop.i32(i32 %3493)
  %3495 = trunc i32 %3494 to i8
  %3496 = and i8 %3495, 1
  %3497 = xor i8 %3496, 1
  store i8 %3497, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3498 = icmp eq i32 %3491, 0
  %3499 = zext i1 %3498 to i8
  store i8 %3499, i8* %29, align 1
  %3500 = lshr i64 %3488, 31
  %3501 = trunc i64 %3500 to i8
  %3502 = and i8 %3501, 1
  store i8 %3502, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3503 = add i64 %3480, -36
  %3504 = add i64 %3482, 8
  store i64 %3504, i64* %3, align 8
  %3505 = trunc i64 %3488 to i32
  %3506 = inttoptr i64 %3503 to i32*
  %3507 = load i32, i32* %3506, align 4
  %3508 = sub i32 %3505, %3507
  %3509 = zext i32 %3508 to i64
  store i64 %3509, i64* %RAX.i1385, align 8
  %3510 = icmp ult i32 %3505, %3507
  %3511 = zext i1 %3510 to i8
  store i8 %3511, i8* %14, align 1
  %3512 = and i32 %3508, 255
  %3513 = tail call i32 @llvm.ctpop.i32(i32 %3512)
  %3514 = trunc i32 %3513 to i8
  %3515 = and i8 %3514, 1
  %3516 = xor i8 %3515, 1
  store i8 %3516, i8* %21, align 1
  %3517 = xor i32 %3507, %3505
  %3518 = xor i32 %3517, %3508
  %3519 = lshr i32 %3518, 4
  %3520 = trunc i32 %3519 to i8
  %3521 = and i8 %3520, 1
  store i8 %3521, i8* %26, align 1
  %3522 = icmp eq i32 %3508, 0
  %3523 = zext i1 %3522 to i8
  store i8 %3523, i8* %29, align 1
  %3524 = lshr i32 %3508, 31
  %3525 = trunc i32 %3524 to i8
  store i8 %3525, i8* %32, align 1
  %3526 = lshr i64 %3488, 31
  %3527 = trunc i64 %3526 to i32
  %3528 = and i32 %3527, 1
  %3529 = lshr i32 %3507, 31
  %3530 = xor i32 %3529, %3528
  %3531 = xor i32 %3524, %3528
  %3532 = add nuw nsw i32 %3531, %3530
  %3533 = icmp eq i32 %3532, 2
  %3534 = zext i1 %3533 to i8
  store i8 %3534, i8* %38, align 1
  %3535 = add i64 %3480, -56
  %3536 = add i64 %3482, 11
  store i64 %3536, i64* %3, align 8
  %3537 = inttoptr i64 %3535 to i32*
  store i32 %3508, i32* %3537, align 4
  %3538 = load i64, i64* %RBP.i, align 8
  %3539 = add i64 %3538, -44
  %3540 = load i64, i64* %3, align 8
  %3541 = add i64 %3540, 3
  store i64 %3541, i64* %3, align 8
  %3542 = inttoptr i64 %3539 to i32*
  %3543 = load i32, i32* %3542, align 4
  %3544 = zext i32 %3543 to i64
  store i64 %3544, i64* %RAX.i1385, align 8
  %3545 = add i64 %3538, -36
  %3546 = add i64 %3540, 6
  store i64 %3546, i64* %3, align 8
  %3547 = inttoptr i64 %3545 to i32*
  %3548 = load i32, i32* %3547, align 4
  %3549 = zext i32 %3548 to i64
  %3550 = shl nuw i64 %3549, 32
  %3551 = ashr i64 %3550, 33
  %3552 = and i64 %3551, 4294967295
  store i64 %3552, i64* %RCX.i1402, align 8
  %3553 = trunc i64 %3551 to i32
  %3554 = add i32 %3553, %3543
  %3555 = zext i32 %3554 to i64
  store i64 %3555, i64* %RAX.i1385, align 8
  %3556 = icmp ult i32 %3554, %3543
  %3557 = icmp ult i32 %3554, %3553
  %3558 = or i1 %3556, %3557
  %3559 = zext i1 %3558 to i8
  store i8 %3559, i8* %14, align 1
  %3560 = and i32 %3554, 255
  %3561 = tail call i32 @llvm.ctpop.i32(i32 %3560)
  %3562 = trunc i32 %3561 to i8
  %3563 = and i8 %3562, 1
  %3564 = xor i8 %3563, 1
  store i8 %3564, i8* %21, align 1
  %3565 = xor i64 %3551, %3544
  %3566 = trunc i64 %3565 to i32
  %3567 = xor i32 %3566, %3554
  %3568 = lshr i32 %3567, 4
  %3569 = trunc i32 %3568 to i8
  %3570 = and i8 %3569, 1
  store i8 %3570, i8* %26, align 1
  %3571 = icmp eq i32 %3554, 0
  %3572 = zext i1 %3571 to i8
  store i8 %3572, i8* %29, align 1
  %3573 = lshr i32 %3554, 31
  %3574 = trunc i32 %3573 to i8
  store i8 %3574, i8* %32, align 1
  %3575 = lshr i32 %3543, 31
  %3576 = lshr i64 %3551, 31
  %3577 = trunc i64 %3576 to i32
  %3578 = and i32 %3577, 1
  %3579 = xor i32 %3573, %3575
  %3580 = xor i32 %3573, %3578
  %3581 = add nuw nsw i32 %3579, %3580
  %3582 = icmp eq i32 %3581, 2
  %3583 = zext i1 %3582 to i8
  store i8 %3583, i8* %38, align 1
  %3584 = add i64 %3538, -52
  %3585 = add i64 %3540, 13
  store i64 %3585, i64* %3, align 8
  %3586 = inttoptr i64 %3584 to i32*
  store i32 %3554, i32* %3586, align 4
  %3587 = load i64, i64* %RBP.i, align 8
  %3588 = add i64 %3587, -16
  %3589 = load i64, i64* %3, align 8
  %3590 = add i64 %3589, 7
  store i64 %3590, i64* %3, align 8
  %3591 = inttoptr i64 %3588 to i32*
  store i32 0, i32* %3591, align 4
  %.pre96 = load i64, i64* %3, align 8
  br label %block_.L_40fb5d

block_.L_40fb5d:                                  ; preds = %block_.L_40fd57, %block_.L_40fb2a
  %3592 = phi i64 [ %4453, %block_.L_40fd57 ], [ %.pre96, %block_.L_40fb2a ]
  %3593 = load i64, i64* %RBP.i, align 8
  %3594 = add i64 %3593, -16
  %3595 = add i64 %3592, 4
  store i64 %3595, i64* %3, align 8
  %3596 = inttoptr i64 %3594 to i32*
  %3597 = load i32, i32* %3596, align 4
  %3598 = add i32 %3597, -2
  %3599 = icmp ult i32 %3597, 2
  %3600 = zext i1 %3599 to i8
  store i8 %3600, i8* %14, align 1
  %3601 = and i32 %3598, 255
  %3602 = tail call i32 @llvm.ctpop.i32(i32 %3601)
  %3603 = trunc i32 %3602 to i8
  %3604 = and i8 %3603, 1
  %3605 = xor i8 %3604, 1
  store i8 %3605, i8* %21, align 1
  %3606 = xor i32 %3598, %3597
  %3607 = lshr i32 %3606, 4
  %3608 = trunc i32 %3607 to i8
  %3609 = and i8 %3608, 1
  store i8 %3609, i8* %26, align 1
  %3610 = icmp eq i32 %3598, 0
  %3611 = zext i1 %3610 to i8
  store i8 %3611, i8* %29, align 1
  %3612 = lshr i32 %3598, 31
  %3613 = trunc i32 %3612 to i8
  store i8 %3613, i8* %32, align 1
  %3614 = lshr i32 %3597, 31
  %3615 = xor i32 %3612, %3614
  %3616 = add nuw nsw i32 %3615, %3614
  %3617 = icmp eq i32 %3616, 2
  %3618 = zext i1 %3617 to i8
  store i8 %3618, i8* %38, align 1
  %3619 = icmp ne i8 %3613, 0
  %3620 = xor i1 %3619, %3617
  %.v113 = select i1 %3620, i64 10, i64 559
  %3621 = add i64 %3592, %.v113
  store i64 %3621, i64* %3, align 8
  br i1 %3620, label %block_40fb67, label %block_.L_40fd8c

block_40fb67:                                     ; preds = %block_.L_40fb5d
  store i64 0, i64* %RAX.i1385, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 3, i64* %RCX.i1402, align 8
  %3622 = add i64 %3621, 10
  store i64 %3622, i64* %3, align 8
  %3623 = load i32, i32* %3596, align 4
  %3624 = sub i32 3, %3623
  %3625 = zext i32 %3624 to i64
  store i64 %3625, i64* %RCX.i1402, align 8
  %3626 = icmp ugt i32 %3623, 3
  %3627 = zext i1 %3626 to i8
  store i8 %3627, i8* %14, align 1
  %3628 = and i32 %3624, 255
  %3629 = tail call i32 @llvm.ctpop.i32(i32 %3628)
  %3630 = trunc i32 %3629 to i8
  %3631 = and i8 %3630, 1
  %3632 = xor i8 %3631, 1
  store i8 %3632, i8* %21, align 1
  %3633 = xor i32 %3624, %3623
  %3634 = lshr i32 %3633, 4
  %3635 = trunc i32 %3634 to i8
  %3636 = and i8 %3635, 1
  store i8 %3636, i8* %26, align 1
  %3637 = icmp eq i32 %3624, 0
  %3638 = zext i1 %3637 to i8
  store i8 %3638, i8* %29, align 1
  %3639 = lshr i32 %3624, 31
  %3640 = trunc i32 %3639 to i8
  store i8 %3640, i8* %32, align 1
  %3641 = lshr i32 %3623, 31
  %3642 = add nuw nsw i32 %3639, %3641
  %3643 = icmp eq i32 %3642, 2
  %3644 = zext i1 %3643 to i8
  store i8 %3644, i8* %38, align 1
  %3645 = add i64 %3593, -24
  %3646 = add i64 %3621, 13
  store i64 %3646, i64* %3, align 8
  %3647 = inttoptr i64 %3645 to i32*
  store i32 %3624, i32* %3647, align 4
  %3648 = load i64, i64* %3, align 8
  %3649 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3649, i64* %RDX.i1446, align 8
  %3650 = add i64 %3649, 72684
  %3651 = add i64 %3648, 14
  store i64 %3651, i64* %3, align 8
  %3652 = inttoptr i64 %3650 to i32*
  %3653 = load i32, i32* %3652, align 4
  %3654 = zext i32 %3653 to i64
  store i64 %3654, i64* %RCX.i1402, align 8
  %3655 = load i64, i64* %RBP.i, align 8
  %3656 = add i64 %3655, -16
  %3657 = add i64 %3648, 18
  store i64 %3657, i64* %3, align 8
  %3658 = inttoptr i64 %3656 to i32*
  %3659 = load i32, i32* %3658, align 4
  %3660 = sext i32 %3659 to i64
  store i64 %3660, i64* %RDX.i1446, align 8
  %3661 = shl nsw i64 %3660, 2
  %3662 = add i64 %3655, -64
  %3663 = add i64 %3662, %3661
  %3664 = add i64 %3648, 22
  store i64 %3664, i64* %3, align 8
  %3665 = inttoptr i64 %3663 to i32*
  %3666 = load i32, i32* %3665, align 4
  %3667 = zext i32 %3666 to i64
  store i64 %3667, i64* %RSI.i1419, align 8
  %3668 = add i64 %3655, -24
  %3669 = add i64 %3648, 26
  store i64 %3669, i64* %3, align 8
  %3670 = inttoptr i64 %3668 to i32*
  %3671 = load i32, i32* %3670, align 4
  %3672 = sext i32 %3671 to i64
  store i64 %3672, i64* %RDX.i1446, align 8
  %3673 = shl nsw i64 %3672, 2
  %3674 = add nsw i64 %3673, -64
  %3675 = add i64 %3674, %3655
  %3676 = add i64 %3648, 30
  store i64 %3676, i64* %3, align 8
  %3677 = inttoptr i64 %3675 to i32*
  %3678 = load i32, i32* %3677, align 4
  %3679 = add i32 %3678, %3666
  %3680 = add i32 %3679, 32
  %3681 = zext i32 %3680 to i64
  %3682 = shl nuw i64 %3681, 32
  %3683 = ashr i64 %3682, 37
  %3684 = lshr i64 %3683, 1
  %3685 = and i64 %3684, 4294967295
  store i64 %3685, i64* %RSI.i1419, align 8
  %3686 = load i32, i32* %EAX.i1414, align 4
  %3687 = trunc i64 %3684 to i32
  %3688 = sub i32 %3686, %3687
  %3689 = icmp ult i32 %3686, %3687
  %3690 = zext i1 %3689 to i8
  store i8 %3690, i8* %14, align 1
  %3691 = and i32 %3688, 255
  %3692 = tail call i32 @llvm.ctpop.i32(i32 %3691)
  %3693 = trunc i32 %3692 to i8
  %3694 = and i8 %3693, 1
  %3695 = xor i8 %3694, 1
  store i8 %3695, i8* %21, align 1
  %3696 = xor i32 %3687, %3686
  %3697 = xor i32 %3696, %3688
  %3698 = lshr i32 %3697, 4
  %3699 = trunc i32 %3698 to i8
  %3700 = and i8 %3699, 1
  store i8 %3700, i8* %26, align 1
  %3701 = icmp eq i32 %3688, 0
  %3702 = zext i1 %3701 to i8
  store i8 %3702, i8* %29, align 1
  %3703 = lshr i32 %3688, 31
  %3704 = trunc i32 %3703 to i8
  store i8 %3704, i8* %32, align 1
  %3705 = lshr i32 %3686, 31
  %3706 = lshr i64 %3683, 32
  %3707 = trunc i64 %3706 to i32
  %3708 = and i32 %3707, 1
  %3709 = xor i32 %3708, %3705
  %3710 = xor i32 %3703, %3705
  %3711 = add nuw nsw i32 %3710, %3709
  %3712 = icmp eq i32 %3711, 2
  %3713 = zext i1 %3712 to i8
  store i8 %3713, i8* %38, align 1
  %3714 = load i64, i64* %RBP.i, align 8
  %3715 = add i64 %3714, -188
  %3716 = load i32, i32* %ECX.i1366, align 4
  %3717 = add i64 %3648, 44
  store i64 %3717, i64* %3, align 8
  %3718 = inttoptr i64 %3715 to i32*
  store i32 %3716, i32* %3718, align 4
  %3719 = load i64, i64* %3, align 8
  %3720 = load i8, i8* %29, align 1
  %3721 = icmp ne i8 %3720, 0
  %3722 = load i8, i8* %32, align 1
  %3723 = icmp ne i8 %3722, 0
  %3724 = load i8, i8* %38, align 1
  %3725 = icmp ne i8 %3724, 0
  %3726 = xor i1 %3723, %3725
  %3727 = or i1 %3721, %3726
  %.v151 = select i1 %3727, i64 19, i64 6
  %3728 = add i64 %3719, %.v151
  store i64 %3728, i64* %3, align 8
  br i1 %3727, label %block_.L_40fbb3, label %block_40fba6

block_40fba6:                                     ; preds = %block_40fb67
  store i64 0, i64* %RAX.i1385, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %3729 = load i64, i64* %RBP.i, align 8
  %3730 = add i64 %3729, -192
  %3731 = add i64 %3728, 8
  store i64 %3731, i64* %3, align 8
  %3732 = inttoptr i64 %3730 to i32*
  store i32 0, i32* %3732, align 4
  %3733 = load i64, i64* %3, align 8
  %3734 = add i64 %3733, 33
  store i64 %3734, i64* %3, align 8
  br label %block_.L_40fbcf

block_.L_40fbb3:                                  ; preds = %block_40fb67
  %3735 = load i64, i64* %RBP.i, align 8
  %3736 = add i64 %3735, -16
  %3737 = add i64 %3728, 4
  store i64 %3737, i64* %3, align 8
  %3738 = inttoptr i64 %3736 to i32*
  %3739 = load i32, i32* %3738, align 4
  %3740 = sext i32 %3739 to i64
  store i64 %3740, i64* %RAX.i1385, align 8
  %3741 = shl nsw i64 %3740, 2
  %3742 = add i64 %3735, -64
  %3743 = add i64 %3742, %3741
  %3744 = add i64 %3728, 8
  store i64 %3744, i64* %3, align 8
  %3745 = inttoptr i64 %3743 to i32*
  %3746 = load i32, i32* %3745, align 4
  %3747 = zext i32 %3746 to i64
  store i64 %3747, i64* %RCX.i1402, align 8
  %3748 = add i64 %3735, -24
  %3749 = add i64 %3728, 12
  store i64 %3749, i64* %3, align 8
  %3750 = inttoptr i64 %3748 to i32*
  %3751 = load i32, i32* %3750, align 4
  %3752 = sext i32 %3751 to i64
  store i64 %3752, i64* %RAX.i1385, align 8
  %3753 = shl nsw i64 %3752, 2
  %3754 = add nsw i64 %3753, -64
  %3755 = add i64 %3754, %3735
  %3756 = add i64 %3728, 16
  store i64 %3756, i64* %3, align 8
  %3757 = inttoptr i64 %3755 to i32*
  %3758 = load i32, i32* %3757, align 4
  %3759 = add i32 %3758, %3746
  %3760 = add i32 %3759, 32
  %3761 = zext i32 %3760 to i64
  %3762 = shl nuw i64 %3761, 32
  %3763 = ashr i64 %3762, 37
  %3764 = lshr i64 %3763, 1
  %3765 = trunc i64 %3763 to i8
  %3766 = and i8 %3765, 1
  %3767 = trunc i64 %3764 to i32
  %3768 = and i64 %3764, 4294967295
  store i64 %3768, i64* %RCX.i1402, align 8
  store i8 %3766, i8* %14, align 1
  %3769 = and i32 %3767, 255
  %3770 = tail call i32 @llvm.ctpop.i32(i32 %3769)
  %3771 = trunc i32 %3770 to i8
  %3772 = and i8 %3771, 1
  %3773 = xor i8 %3772, 1
  store i8 %3773, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3774 = icmp eq i32 %3767, 0
  %3775 = zext i1 %3774 to i8
  store i8 %3775, i8* %29, align 1
  %3776 = lshr i64 %3763, 32
  %3777 = trunc i64 %3776 to i8
  %3778 = and i8 %3777, 1
  store i8 %3778, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3779 = load i64, i64* %RBP.i, align 8
  %3780 = add i64 %3779, -192
  %3781 = trunc i64 %3764 to i32
  %3782 = add i64 %3728, 28
  store i64 %3782, i64* %3, align 8
  %3783 = inttoptr i64 %3780 to i32*
  store i32 %3781, i32* %3783, align 4
  %.pre97 = load i64, i64* %3, align 8
  br label %block_.L_40fbcf

block_.L_40fbcf:                                  ; preds = %block_.L_40fbb3, %block_40fba6
  %3784 = phi i64 [ %.pre97, %block_.L_40fbb3 ], [ %3734, %block_40fba6 ]
  %3785 = load i64, i64* %RBP.i, align 8
  %3786 = add i64 %3785, -192
  %3787 = add i64 %3784, 6
  store i64 %3787, i64* %3, align 8
  %3788 = inttoptr i64 %3786 to i32*
  %3789 = load i32, i32* %3788, align 4
  %3790 = zext i32 %3789 to i64
  store i64 %3790, i64* %RAX.i1385, align 8
  %3791 = add i64 %3785, -188
  %3792 = add i64 %3784, 12
  store i64 %3792, i64* %3, align 8
  %3793 = inttoptr i64 %3791 to i32*
  %3794 = load i32, i32* %3793, align 4
  %3795 = zext i32 %3794 to i64
  store i64 %3795, i64* %RCX.i1402, align 8
  %3796 = sub i32 %3794, %3789
  %3797 = icmp ult i32 %3794, %3789
  %3798 = zext i1 %3797 to i8
  store i8 %3798, i8* %14, align 1
  %3799 = and i32 %3796, 255
  %3800 = tail call i32 @llvm.ctpop.i32(i32 %3799)
  %3801 = trunc i32 %3800 to i8
  %3802 = and i8 %3801, 1
  %3803 = xor i8 %3802, 1
  store i8 %3803, i8* %21, align 1
  %3804 = xor i32 %3789, %3794
  %3805 = xor i32 %3804, %3796
  %3806 = lshr i32 %3805, 4
  %3807 = trunc i32 %3806 to i8
  %3808 = and i8 %3807, 1
  store i8 %3808, i8* %26, align 1
  %3809 = icmp eq i32 %3796, 0
  %3810 = zext i1 %3809 to i8
  store i8 %3810, i8* %29, align 1
  %3811 = lshr i32 %3796, 31
  %3812 = trunc i32 %3811 to i8
  store i8 %3812, i8* %32, align 1
  %3813 = lshr i32 %3794, 31
  %3814 = lshr i32 %3789, 31
  %3815 = xor i32 %3814, %3813
  %3816 = xor i32 %3811, %3813
  %3817 = add nuw nsw i32 %3816, %3815
  %3818 = icmp eq i32 %3817, 2
  %3819 = zext i1 %3818 to i8
  store i8 %3819, i8* %38, align 1
  %3820 = icmp ne i8 %3812, 0
  %3821 = xor i1 %3820, %3818
  %.v121 = select i1 %3821, i64 20, i64 45
  %3822 = add i64 %3784, %.v121
  store i64 %3822, i64* %3, align 8
  br i1 %3821, label %block_40fbe3, label %block_.L_40fbfc

block_40fbe3:                                     ; preds = %block_.L_40fbcf
  %3823 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3823, i64* %RAX.i1385, align 8
  %3824 = add i64 %3823, 72684
  %3825 = add i64 %3822, 14
  store i64 %3825, i64* %3, align 8
  %3826 = inttoptr i64 %3824 to i32*
  %3827 = load i32, i32* %3826, align 4
  %3828 = zext i32 %3827 to i64
  store i64 %3828, i64* %RCX.i1402, align 8
  %3829 = add i64 %3785, -196
  %3830 = add i64 %3822, 20
  store i64 %3830, i64* %3, align 8
  %3831 = inttoptr i64 %3829 to i32*
  store i32 %3827, i32* %3831, align 4
  %3832 = load i64, i64* %3, align 8
  %3833 = add i64 %3832, 90
  store i64 %3833, i64* %3, align 8
  br label %block_.L_40fc51

block_.L_40fbfc:                                  ; preds = %block_.L_40fbcf
  store i64 0, i64* %RAX.i1385, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %3834 = add i64 %3785, -16
  %3835 = add i64 %3822, 6
  store i64 %3835, i64* %3, align 8
  %3836 = inttoptr i64 %3834 to i32*
  %3837 = load i32, i32* %3836, align 4
  %3838 = sext i32 %3837 to i64
  store i64 %3838, i64* %RCX.i1402, align 8
  %3839 = shl nsw i64 %3838, 2
  %3840 = add i64 %3785, -64
  %3841 = add i64 %3840, %3839
  %3842 = add i64 %3822, 10
  store i64 %3842, i64* %3, align 8
  %3843 = inttoptr i64 %3841 to i32*
  %3844 = load i32, i32* %3843, align 4
  %3845 = zext i32 %3844 to i64
  store i64 %3845, i64* %RDX.i1446, align 8
  %3846 = add i64 %3785, -24
  %3847 = add i64 %3822, 14
  store i64 %3847, i64* %3, align 8
  %3848 = inttoptr i64 %3846 to i32*
  %3849 = load i32, i32* %3848, align 4
  %3850 = sext i32 %3849 to i64
  store i64 %3850, i64* %RCX.i1402, align 8
  %3851 = shl nsw i64 %3850, 2
  %3852 = add nsw i64 %3851, -64
  %3853 = add i64 %3852, %3785
  %3854 = add i64 %3822, 18
  store i64 %3854, i64* %3, align 8
  %3855 = inttoptr i64 %3853 to i32*
  %3856 = load i32, i32* %3855, align 4
  %3857 = add i32 %3856, %3844
  %3858 = add i32 %3857, 32
  %3859 = zext i32 %3858 to i64
  %3860 = shl nuw i64 %3859, 32
  %3861 = ashr i64 %3860, 37
  %3862 = lshr i64 %3861, 1
  %3863 = and i64 %3862, 4294967295
  store i64 %3863, i64* %RDX.i1446, align 8
  %3864 = load i32, i32* %EAX.i1414, align 4
  %3865 = trunc i64 %3862 to i32
  %3866 = sub i32 %3864, %3865
  %3867 = icmp ult i32 %3864, %3865
  %3868 = zext i1 %3867 to i8
  store i8 %3868, i8* %14, align 1
  %3869 = and i32 %3866, 255
  %3870 = tail call i32 @llvm.ctpop.i32(i32 %3869)
  %3871 = trunc i32 %3870 to i8
  %3872 = and i8 %3871, 1
  %3873 = xor i8 %3872, 1
  store i8 %3873, i8* %21, align 1
  %3874 = xor i32 %3865, %3864
  %3875 = xor i32 %3874, %3866
  %3876 = lshr i32 %3875, 4
  %3877 = trunc i32 %3876 to i8
  %3878 = and i8 %3877, 1
  store i8 %3878, i8* %26, align 1
  %3879 = icmp eq i32 %3866, 0
  %3880 = zext i1 %3879 to i8
  store i8 %3880, i8* %29, align 1
  %3881 = lshr i32 %3866, 31
  %3882 = trunc i32 %3881 to i8
  store i8 %3882, i8* %32, align 1
  %3883 = lshr i32 %3864, 31
  %3884 = lshr i64 %3861, 32
  %3885 = trunc i64 %3884 to i32
  %3886 = and i32 %3885, 1
  %3887 = xor i32 %3886, %3883
  %3888 = xor i32 %3881, %3883
  %3889 = add nuw nsw i32 %3888, %3887
  %3890 = icmp eq i32 %3889, 2
  %3891 = zext i1 %3890 to i8
  store i8 %3891, i8* %38, align 1
  %3892 = icmp ne i8 %3882, 0
  %3893 = xor i1 %3892, %3890
  %3894 = or i1 %3879, %3893
  %.v122 = select i1 %3894, i64 45, i64 32
  %3895 = add i64 %3822, %.v122
  store i64 %3895, i64* %3, align 8
  br i1 %3894, label %block_.L_40fc29, label %block_40fc1c

block_40fc1c:                                     ; preds = %block_.L_40fbfc
  store i64 0, i64* %RAX.i1385, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %3896 = load i64, i64* %RBP.i, align 8
  %3897 = add i64 %3896, -200
  %3898 = add i64 %3895, 8
  store i64 %3898, i64* %3, align 8
  %3899 = inttoptr i64 %3897 to i32*
  store i32 0, i32* %3899, align 4
  %3900 = load i64, i64* %3, align 8
  %3901 = add i64 %3900, 33
  store i64 %3901, i64* %3, align 8
  br label %block_.L_40fc45

block_.L_40fc29:                                  ; preds = %block_.L_40fbfc
  %3902 = load i64, i64* %RBP.i, align 8
  %3903 = add i64 %3902, -16
  %3904 = add i64 %3895, 4
  store i64 %3904, i64* %3, align 8
  %3905 = inttoptr i64 %3903 to i32*
  %3906 = load i32, i32* %3905, align 4
  %3907 = sext i32 %3906 to i64
  store i64 %3907, i64* %RAX.i1385, align 8
  %3908 = shl nsw i64 %3907, 2
  %3909 = add i64 %3902, -64
  %3910 = add i64 %3909, %3908
  %3911 = add i64 %3895, 8
  store i64 %3911, i64* %3, align 8
  %3912 = inttoptr i64 %3910 to i32*
  %3913 = load i32, i32* %3912, align 4
  %3914 = zext i32 %3913 to i64
  store i64 %3914, i64* %RCX.i1402, align 8
  %3915 = add i64 %3902, -24
  %3916 = add i64 %3895, 12
  store i64 %3916, i64* %3, align 8
  %3917 = inttoptr i64 %3915 to i32*
  %3918 = load i32, i32* %3917, align 4
  %3919 = sext i32 %3918 to i64
  store i64 %3919, i64* %RAX.i1385, align 8
  %3920 = shl nsw i64 %3919, 2
  %3921 = add nsw i64 %3920, -64
  %3922 = add i64 %3921, %3902
  %3923 = add i64 %3895, 16
  store i64 %3923, i64* %3, align 8
  %3924 = inttoptr i64 %3922 to i32*
  %3925 = load i32, i32* %3924, align 4
  %3926 = add i32 %3925, %3913
  %3927 = add i32 %3926, 32
  %3928 = zext i32 %3927 to i64
  %3929 = shl nuw i64 %3928, 32
  %3930 = ashr i64 %3929, 37
  %3931 = lshr i64 %3930, 1
  %3932 = trunc i64 %3930 to i8
  %3933 = and i8 %3932, 1
  %3934 = trunc i64 %3931 to i32
  %3935 = and i64 %3931, 4294967295
  store i64 %3935, i64* %RCX.i1402, align 8
  store i8 %3933, i8* %14, align 1
  %3936 = and i32 %3934, 255
  %3937 = tail call i32 @llvm.ctpop.i32(i32 %3936)
  %3938 = trunc i32 %3937 to i8
  %3939 = and i8 %3938, 1
  %3940 = xor i8 %3939, 1
  store i8 %3940, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3941 = icmp eq i32 %3934, 0
  %3942 = zext i1 %3941 to i8
  store i8 %3942, i8* %29, align 1
  %3943 = lshr i64 %3930, 32
  %3944 = trunc i64 %3943 to i8
  %3945 = and i8 %3944, 1
  store i8 %3945, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %3946 = load i64, i64* %RBP.i, align 8
  %3947 = add i64 %3946, -200
  %3948 = trunc i64 %3931 to i32
  %3949 = add i64 %3895, 28
  store i64 %3949, i64* %3, align 8
  %3950 = inttoptr i64 %3947 to i32*
  store i32 %3948, i32* %3950, align 4
  %.pre98 = load i64, i64* %3, align 8
  br label %block_.L_40fc45

block_.L_40fc45:                                  ; preds = %block_.L_40fc29, %block_40fc1c
  %3951 = phi i64 [ %.pre98, %block_.L_40fc29 ], [ %3901, %block_40fc1c ]
  %3952 = load i64, i64* %RBP.i, align 8
  %3953 = add i64 %3952, -200
  %3954 = add i64 %3951, 6
  store i64 %3954, i64* %3, align 8
  %3955 = inttoptr i64 %3953 to i32*
  %3956 = load i32, i32* %3955, align 4
  %3957 = zext i32 %3956 to i64
  store i64 %3957, i64* %RAX.i1385, align 8
  %3958 = add i64 %3952, -196
  %3959 = add i64 %3951, 12
  store i64 %3959, i64* %3, align 8
  %3960 = inttoptr i64 %3958 to i32*
  store i32 %3956, i32* %3960, align 4
  %.pre99 = load i64, i64* %3, align 8
  br label %block_.L_40fc51

block_.L_40fc51:                                  ; preds = %block_.L_40fc45, %block_40fbe3
  %3961 = phi i64 [ %.pre99, %block_.L_40fc45 ], [ %3833, %block_40fbe3 ]
  %3962 = load i64, i64* %RBP.i, align 8
  %3963 = add i64 %3962, -196
  %3964 = add i64 %3961, 6
  store i64 %3964, i64* %3, align 8
  %3965 = inttoptr i64 %3963 to i32*
  %3966 = load i32, i32* %3965, align 4
  %3967 = zext i32 %3966 to i64
  store i64 %3967, i64* %RAX.i1385, align 8
  store i64 0, i64* %RCX.i1402, align 8
  %3968 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %3969 = add i64 %3968, 13112
  store i64 %3969, i64* %RDX.i1446, align 8
  %3970 = icmp ugt i64 %3968, -13113
  %3971 = zext i1 %3970 to i8
  store i8 %3971, i8* %14, align 1
  %3972 = trunc i64 %3969 to i32
  %3973 = and i32 %3972, 255
  %3974 = tail call i32 @llvm.ctpop.i32(i32 %3973)
  %3975 = trunc i32 %3974 to i8
  %3976 = and i8 %3975, 1
  %3977 = xor i8 %3976, 1
  store i8 %3977, i8* %21, align 1
  %3978 = xor i64 %3968, 16
  %3979 = xor i64 %3978, %3969
  %3980 = lshr i64 %3979, 4
  %3981 = trunc i64 %3980 to i8
  %3982 = and i8 %3981, 1
  store i8 %3982, i8* %26, align 1
  %3983 = icmp eq i64 %3969, 0
  %3984 = zext i1 %3983 to i8
  store i8 %3984, i8* %29, align 1
  %3985 = lshr i64 %3969, 63
  %3986 = trunc i64 %3985 to i8
  store i8 %3986, i8* %32, align 1
  %3987 = lshr i64 %3968, 63
  %3988 = xor i64 %3985, %3987
  %3989 = add nuw nsw i64 %3988, %3985
  %3990 = icmp eq i64 %3989, 2
  %3991 = zext i1 %3990 to i8
  store i8 %3991, i8* %38, align 1
  %3992 = add i64 %3962, -12
  %3993 = add i64 %3961, 27
  store i64 %3993, i64* %3, align 8
  %3994 = inttoptr i64 %3992 to i32*
  %3995 = load i32, i32* %3994, align 4
  %3996 = sext i32 %3995 to i64
  %3997 = shl nsw i64 %3996, 6
  store i64 %3997, i64* %RSI.i1419, align 8
  %3998 = add i64 %3997, %3969
  store i64 %3998, i64* %RDX.i1446, align 8
  %3999 = icmp ult i64 %3998, %3969
  %4000 = icmp ult i64 %3998, %3997
  %4001 = or i1 %3999, %4000
  %4002 = zext i1 %4001 to i8
  store i8 %4002, i8* %14, align 1
  %4003 = trunc i64 %3998 to i32
  %4004 = and i32 %4003, 255
  %4005 = tail call i32 @llvm.ctpop.i32(i32 %4004)
  %4006 = trunc i32 %4005 to i8
  %4007 = and i8 %4006, 1
  %4008 = xor i8 %4007, 1
  store i8 %4008, i8* %21, align 1
  %4009 = xor i64 %3969, %3998
  %4010 = lshr i64 %4009, 4
  %4011 = trunc i64 %4010 to i8
  %4012 = and i8 %4011, 1
  store i8 %4012, i8* %26, align 1
  %4013 = icmp eq i64 %3998, 0
  %4014 = zext i1 %4013 to i8
  store i8 %4014, i8* %29, align 1
  %4015 = lshr i64 %3998, 63
  %4016 = trunc i64 %4015 to i8
  store i8 %4016, i8* %32, align 1
  %4017 = lshr i64 %3996, 57
  %4018 = and i64 %4017, 1
  %4019 = xor i64 %4015, %3985
  %4020 = xor i64 %4015, %4018
  %4021 = add nuw nsw i64 %4019, %4020
  %4022 = icmp eq i64 %4021, 2
  %4023 = zext i1 %4022 to i8
  store i8 %4023, i8* %38, align 1
  %4024 = load i64, i64* %RBP.i, align 8
  %4025 = add i64 %4024, -16
  %4026 = add i64 %3961, 38
  store i64 %4026, i64* %3, align 8
  %4027 = inttoptr i64 %4025 to i32*
  %4028 = load i32, i32* %4027, align 4
  %4029 = sext i32 %4028 to i64
  store i64 %4029, i64* %RSI.i1419, align 8
  %4030 = shl nsw i64 %4029, 2
  %4031 = add i64 %4030, %3998
  %4032 = load i32, i32* %EAX.i1414, align 4
  %4033 = add i64 %3961, 41
  store i64 %4033, i64* %3, align 8
  %4034 = inttoptr i64 %4031 to i32*
  store i32 %4032, i32* %4034, align 4
  %4035 = load i64, i64* %3, align 8
  %4036 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4036, i64* %RDX.i1446, align 8
  %4037 = add i64 %4036, 72684
  %4038 = add i64 %4035, 14
  store i64 %4038, i64* %3, align 8
  %4039 = inttoptr i64 %4037 to i32*
  %4040 = load i32, i32* %4039, align 4
  %4041 = zext i32 %4040 to i64
  store i64 %4041, i64* %RAX.i1385, align 8
  %4042 = load i64, i64* %RBP.i, align 8
  %4043 = add i64 %4042, -16
  %4044 = add i64 %4035, 18
  store i64 %4044, i64* %3, align 8
  %4045 = inttoptr i64 %4043 to i32*
  %4046 = load i32, i32* %4045, align 4
  %4047 = sext i32 %4046 to i64
  store i64 %4047, i64* %RDX.i1446, align 8
  %4048 = shl nsw i64 %4047, 2
  %4049 = add i64 %4042, -64
  %4050 = add i64 %4049, %4048
  %4051 = add i64 %4035, 22
  store i64 %4051, i64* %3, align 8
  %4052 = inttoptr i64 %4050 to i32*
  %4053 = load i32, i32* %4052, align 4
  %4054 = zext i32 %4053 to i64
  store i64 %4054, i64* %RDI.i1350, align 8
  %4055 = add i64 %4042, -24
  %4056 = add i64 %4035, 26
  store i64 %4056, i64* %3, align 8
  %4057 = inttoptr i64 %4055 to i32*
  %4058 = load i32, i32* %4057, align 4
  %4059 = sext i32 %4058 to i64
  store i64 %4059, i64* %RDX.i1446, align 8
  %4060 = shl nsw i64 %4059, 2
  %4061 = add nsw i64 %4060, -64
  %4062 = add i64 %4061, %4042
  %4063 = add i64 %4035, 30
  store i64 %4063, i64* %3, align 8
  %4064 = inttoptr i64 %4062 to i32*
  %4065 = load i32, i32* %4064, align 4
  %4066 = sub i32 %4053, %4065
  %4067 = add i32 %4066, 32
  %4068 = zext i32 %4067 to i64
  %4069 = shl nuw i64 %4068, 32
  %4070 = ashr i64 %4069, 37
  %4071 = lshr i64 %4070, 1
  %4072 = and i64 %4071, 4294967295
  store i64 %4072, i64* %RDI.i1350, align 8
  %4073 = load i32, i32* %ECX.i1366, align 4
  %4074 = trunc i64 %4071 to i32
  %4075 = sub i32 %4073, %4074
  %4076 = icmp ult i32 %4073, %4074
  %4077 = zext i1 %4076 to i8
  store i8 %4077, i8* %14, align 1
  %4078 = and i32 %4075, 255
  %4079 = tail call i32 @llvm.ctpop.i32(i32 %4078)
  %4080 = trunc i32 %4079 to i8
  %4081 = and i8 %4080, 1
  %4082 = xor i8 %4081, 1
  store i8 %4082, i8* %21, align 1
  %4083 = xor i32 %4074, %4073
  %4084 = xor i32 %4083, %4075
  %4085 = lshr i32 %4084, 4
  %4086 = trunc i32 %4085 to i8
  %4087 = and i8 %4086, 1
  store i8 %4087, i8* %26, align 1
  %4088 = icmp eq i32 %4075, 0
  %4089 = zext i1 %4088 to i8
  store i8 %4089, i8* %29, align 1
  %4090 = lshr i32 %4075, 31
  %4091 = trunc i32 %4090 to i8
  store i8 %4091, i8* %32, align 1
  %4092 = lshr i32 %4073, 31
  %4093 = lshr i64 %4070, 32
  %4094 = trunc i64 %4093 to i32
  %4095 = and i32 %4094, 1
  %4096 = xor i32 %4095, %4092
  %4097 = xor i32 %4090, %4092
  %4098 = add nuw nsw i32 %4097, %4096
  %4099 = icmp eq i32 %4098, 2
  %4100 = zext i1 %4099 to i8
  store i8 %4100, i8* %38, align 1
  %4101 = load i64, i64* %RBP.i, align 8
  %4102 = add i64 %4101, -204
  %4103 = load i32, i32* %EAX.i1414, align 4
  %4104 = add i64 %4035, 44
  store i64 %4104, i64* %3, align 8
  %4105 = inttoptr i64 %4102 to i32*
  store i32 %4103, i32* %4105, align 4
  %4106 = load i64, i64* %3, align 8
  %4107 = load i8, i8* %29, align 1
  %4108 = icmp ne i8 %4107, 0
  %4109 = load i8, i8* %32, align 1
  %4110 = icmp ne i8 %4109, 0
  %4111 = load i8, i8* %38, align 1
  %4112 = icmp ne i8 %4111, 0
  %4113 = xor i1 %4110, %4112
  %4114 = or i1 %4108, %4113
  %.v152 = select i1 %4114, i64 19, i64 6
  %4115 = add i64 %4106, %.v152
  store i64 %4115, i64* %3, align 8
  br i1 %4114, label %block_.L_40fcb9, label %block_40fcac

block_40fcac:                                     ; preds = %block_.L_40fc51
  store i64 0, i64* %RAX.i1385, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %4116 = load i64, i64* %RBP.i, align 8
  %4117 = add i64 %4116, -208
  %4118 = add i64 %4115, 8
  store i64 %4118, i64* %3, align 8
  %4119 = inttoptr i64 %4117 to i32*
  store i32 0, i32* %4119, align 4
  %4120 = load i64, i64* %3, align 8
  %4121 = add i64 %4120, 33
  store i64 %4121, i64* %3, align 8
  br label %block_.L_40fcd5

block_.L_40fcb9:                                  ; preds = %block_.L_40fc51
  %4122 = load i64, i64* %RBP.i, align 8
  %4123 = add i64 %4122, -16
  %4124 = add i64 %4115, 4
  store i64 %4124, i64* %3, align 8
  %4125 = inttoptr i64 %4123 to i32*
  %4126 = load i32, i32* %4125, align 4
  %4127 = sext i32 %4126 to i64
  store i64 %4127, i64* %RAX.i1385, align 8
  %4128 = shl nsw i64 %4127, 2
  %4129 = add i64 %4122, -64
  %4130 = add i64 %4129, %4128
  %4131 = add i64 %4115, 8
  store i64 %4131, i64* %3, align 8
  %4132 = inttoptr i64 %4130 to i32*
  %4133 = load i32, i32* %4132, align 4
  %4134 = zext i32 %4133 to i64
  store i64 %4134, i64* %RCX.i1402, align 8
  %4135 = add i64 %4122, -24
  %4136 = add i64 %4115, 12
  store i64 %4136, i64* %3, align 8
  %4137 = inttoptr i64 %4135 to i32*
  %4138 = load i32, i32* %4137, align 4
  %4139 = sext i32 %4138 to i64
  store i64 %4139, i64* %RAX.i1385, align 8
  %4140 = shl nsw i64 %4139, 2
  %4141 = add nsw i64 %4140, -64
  %4142 = add i64 %4141, %4122
  %4143 = add i64 %4115, 16
  store i64 %4143, i64* %3, align 8
  %4144 = inttoptr i64 %4142 to i32*
  %4145 = load i32, i32* %4144, align 4
  %4146 = sub i32 %4133, %4145
  %4147 = add i32 %4146, 32
  %4148 = zext i32 %4147 to i64
  %4149 = shl nuw i64 %4148, 32
  %4150 = ashr i64 %4149, 37
  %4151 = lshr i64 %4150, 1
  %4152 = trunc i64 %4150 to i8
  %4153 = and i8 %4152, 1
  %4154 = trunc i64 %4151 to i32
  %4155 = and i64 %4151, 4294967295
  store i64 %4155, i64* %RCX.i1402, align 8
  store i8 %4153, i8* %14, align 1
  %4156 = and i32 %4154, 255
  %4157 = tail call i32 @llvm.ctpop.i32(i32 %4156)
  %4158 = trunc i32 %4157 to i8
  %4159 = and i8 %4158, 1
  %4160 = xor i8 %4159, 1
  store i8 %4160, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4161 = icmp eq i32 %4154, 0
  %4162 = zext i1 %4161 to i8
  store i8 %4162, i8* %29, align 1
  %4163 = lshr i64 %4150, 32
  %4164 = trunc i64 %4163 to i8
  %4165 = and i8 %4164, 1
  store i8 %4165, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %4166 = load i64, i64* %RBP.i, align 8
  %4167 = add i64 %4166, -208
  %4168 = trunc i64 %4151 to i32
  %4169 = add i64 %4115, 28
  store i64 %4169, i64* %3, align 8
  %4170 = inttoptr i64 %4167 to i32*
  store i32 %4168, i32* %4170, align 4
  %.pre100 = load i64, i64* %3, align 8
  br label %block_.L_40fcd5

block_.L_40fcd5:                                  ; preds = %block_.L_40fcb9, %block_40fcac
  %4171 = phi i64 [ %.pre100, %block_.L_40fcb9 ], [ %4121, %block_40fcac ]
  %4172 = load i64, i64* %RBP.i, align 8
  %4173 = add i64 %4172, -208
  %4174 = add i64 %4171, 6
  store i64 %4174, i64* %3, align 8
  %4175 = inttoptr i64 %4173 to i32*
  %4176 = load i32, i32* %4175, align 4
  %4177 = zext i32 %4176 to i64
  store i64 %4177, i64* %RAX.i1385, align 8
  %4178 = add i64 %4172, -204
  %4179 = add i64 %4171, 12
  store i64 %4179, i64* %3, align 8
  %4180 = inttoptr i64 %4178 to i32*
  %4181 = load i32, i32* %4180, align 4
  %4182 = zext i32 %4181 to i64
  store i64 %4182, i64* %RCX.i1402, align 8
  %4183 = sub i32 %4181, %4176
  %4184 = icmp ult i32 %4181, %4176
  %4185 = zext i1 %4184 to i8
  store i8 %4185, i8* %14, align 1
  %4186 = and i32 %4183, 255
  %4187 = tail call i32 @llvm.ctpop.i32(i32 %4186)
  %4188 = trunc i32 %4187 to i8
  %4189 = and i8 %4188, 1
  %4190 = xor i8 %4189, 1
  store i8 %4190, i8* %21, align 1
  %4191 = xor i32 %4176, %4181
  %4192 = xor i32 %4191, %4183
  %4193 = lshr i32 %4192, 4
  %4194 = trunc i32 %4193 to i8
  %4195 = and i8 %4194, 1
  store i8 %4195, i8* %26, align 1
  %4196 = icmp eq i32 %4183, 0
  %4197 = zext i1 %4196 to i8
  store i8 %4197, i8* %29, align 1
  %4198 = lshr i32 %4183, 31
  %4199 = trunc i32 %4198 to i8
  store i8 %4199, i8* %32, align 1
  %4200 = lshr i32 %4181, 31
  %4201 = lshr i32 %4176, 31
  %4202 = xor i32 %4201, %4200
  %4203 = xor i32 %4198, %4200
  %4204 = add nuw nsw i32 %4203, %4202
  %4205 = icmp eq i32 %4204, 2
  %4206 = zext i1 %4205 to i8
  store i8 %4206, i8* %38, align 1
  %4207 = icmp ne i8 %4199, 0
  %4208 = xor i1 %4207, %4205
  %.v123 = select i1 %4208, i64 20, i64 45
  %4209 = add i64 %4171, %.v123
  store i64 %4209, i64* %3, align 8
  br i1 %4208, label %block_40fce9, label %block_.L_40fd02

block_40fce9:                                     ; preds = %block_.L_40fcd5
  %4210 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4210, i64* %RAX.i1385, align 8
  %4211 = add i64 %4210, 72684
  %4212 = add i64 %4209, 14
  store i64 %4212, i64* %3, align 8
  %4213 = inttoptr i64 %4211 to i32*
  %4214 = load i32, i32* %4213, align 4
  %4215 = zext i32 %4214 to i64
  store i64 %4215, i64* %RCX.i1402, align 8
  %4216 = add i64 %4172, -212
  %4217 = add i64 %4209, 20
  store i64 %4217, i64* %3, align 8
  %4218 = inttoptr i64 %4216 to i32*
  store i32 %4214, i32* %4218, align 4
  %4219 = load i64, i64* %3, align 8
  %4220 = add i64 %4219, 90
  store i64 %4220, i64* %3, align 8
  br label %block_.L_40fd57

block_.L_40fd02:                                  ; preds = %block_.L_40fcd5
  store i64 0, i64* %RAX.i1385, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %4221 = add i64 %4172, -16
  %4222 = add i64 %4209, 6
  store i64 %4222, i64* %3, align 8
  %4223 = inttoptr i64 %4221 to i32*
  %4224 = load i32, i32* %4223, align 4
  %4225 = sext i32 %4224 to i64
  store i64 %4225, i64* %RCX.i1402, align 8
  %4226 = shl nsw i64 %4225, 2
  %4227 = add i64 %4172, -64
  %4228 = add i64 %4227, %4226
  %4229 = add i64 %4209, 10
  store i64 %4229, i64* %3, align 8
  %4230 = inttoptr i64 %4228 to i32*
  %4231 = load i32, i32* %4230, align 4
  %4232 = zext i32 %4231 to i64
  store i64 %4232, i64* %RDX.i1446, align 8
  %4233 = add i64 %4172, -24
  %4234 = add i64 %4209, 14
  store i64 %4234, i64* %3, align 8
  %4235 = inttoptr i64 %4233 to i32*
  %4236 = load i32, i32* %4235, align 4
  %4237 = sext i32 %4236 to i64
  store i64 %4237, i64* %RCX.i1402, align 8
  %4238 = shl nsw i64 %4237, 2
  %4239 = add nsw i64 %4238, -64
  %4240 = add i64 %4239, %4172
  %4241 = add i64 %4209, 18
  store i64 %4241, i64* %3, align 8
  %4242 = inttoptr i64 %4240 to i32*
  %4243 = load i32, i32* %4242, align 4
  %4244 = sub i32 %4231, %4243
  %4245 = add i32 %4244, 32
  %4246 = zext i32 %4245 to i64
  %4247 = shl nuw i64 %4246, 32
  %4248 = ashr i64 %4247, 37
  %4249 = lshr i64 %4248, 1
  %4250 = and i64 %4249, 4294967295
  store i64 %4250, i64* %RDX.i1446, align 8
  %4251 = load i32, i32* %EAX.i1414, align 4
  %4252 = trunc i64 %4249 to i32
  %4253 = sub i32 %4251, %4252
  %4254 = icmp ult i32 %4251, %4252
  %4255 = zext i1 %4254 to i8
  store i8 %4255, i8* %14, align 1
  %4256 = and i32 %4253, 255
  %4257 = tail call i32 @llvm.ctpop.i32(i32 %4256)
  %4258 = trunc i32 %4257 to i8
  %4259 = and i8 %4258, 1
  %4260 = xor i8 %4259, 1
  store i8 %4260, i8* %21, align 1
  %4261 = xor i32 %4252, %4251
  %4262 = xor i32 %4261, %4253
  %4263 = lshr i32 %4262, 4
  %4264 = trunc i32 %4263 to i8
  %4265 = and i8 %4264, 1
  store i8 %4265, i8* %26, align 1
  %4266 = icmp eq i32 %4253, 0
  %4267 = zext i1 %4266 to i8
  store i8 %4267, i8* %29, align 1
  %4268 = lshr i32 %4253, 31
  %4269 = trunc i32 %4268 to i8
  store i8 %4269, i8* %32, align 1
  %4270 = lshr i32 %4251, 31
  %4271 = lshr i64 %4248, 32
  %4272 = trunc i64 %4271 to i32
  %4273 = and i32 %4272, 1
  %4274 = xor i32 %4273, %4270
  %4275 = xor i32 %4268, %4270
  %4276 = add nuw nsw i32 %4275, %4274
  %4277 = icmp eq i32 %4276, 2
  %4278 = zext i1 %4277 to i8
  store i8 %4278, i8* %38, align 1
  %4279 = icmp ne i8 %4269, 0
  %4280 = xor i1 %4279, %4277
  %4281 = or i1 %4266, %4280
  %.v124 = select i1 %4281, i64 45, i64 32
  %4282 = add i64 %4209, %.v124
  store i64 %4282, i64* %3, align 8
  br i1 %4281, label %block_.L_40fd2f, label %block_40fd22

block_40fd22:                                     ; preds = %block_.L_40fd02
  store i64 0, i64* %RAX.i1385, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %4283 = load i64, i64* %RBP.i, align 8
  %4284 = add i64 %4283, -216
  %4285 = add i64 %4282, 8
  store i64 %4285, i64* %3, align 8
  %4286 = inttoptr i64 %4284 to i32*
  store i32 0, i32* %4286, align 4
  %4287 = load i64, i64* %3, align 8
  %4288 = add i64 %4287, 33
  store i64 %4288, i64* %3, align 8
  br label %block_.L_40fd4b

block_.L_40fd2f:                                  ; preds = %block_.L_40fd02
  %4289 = load i64, i64* %RBP.i, align 8
  %4290 = add i64 %4289, -16
  %4291 = add i64 %4282, 4
  store i64 %4291, i64* %3, align 8
  %4292 = inttoptr i64 %4290 to i32*
  %4293 = load i32, i32* %4292, align 4
  %4294 = sext i32 %4293 to i64
  store i64 %4294, i64* %RAX.i1385, align 8
  %4295 = shl nsw i64 %4294, 2
  %4296 = add i64 %4289, -64
  %4297 = add i64 %4296, %4295
  %4298 = add i64 %4282, 8
  store i64 %4298, i64* %3, align 8
  %4299 = inttoptr i64 %4297 to i32*
  %4300 = load i32, i32* %4299, align 4
  %4301 = zext i32 %4300 to i64
  store i64 %4301, i64* %RCX.i1402, align 8
  %4302 = add i64 %4289, -24
  %4303 = add i64 %4282, 12
  store i64 %4303, i64* %3, align 8
  %4304 = inttoptr i64 %4302 to i32*
  %4305 = load i32, i32* %4304, align 4
  %4306 = sext i32 %4305 to i64
  store i64 %4306, i64* %RAX.i1385, align 8
  %4307 = shl nsw i64 %4306, 2
  %4308 = add nsw i64 %4307, -64
  %4309 = add i64 %4308, %4289
  %4310 = add i64 %4282, 16
  store i64 %4310, i64* %3, align 8
  %4311 = inttoptr i64 %4309 to i32*
  %4312 = load i32, i32* %4311, align 4
  %4313 = sub i32 %4300, %4312
  %4314 = add i32 %4313, 32
  %4315 = zext i32 %4314 to i64
  %4316 = shl nuw i64 %4315, 32
  %4317 = ashr i64 %4316, 37
  %4318 = lshr i64 %4317, 1
  %4319 = trunc i64 %4317 to i8
  %4320 = and i8 %4319, 1
  %4321 = trunc i64 %4318 to i32
  %4322 = and i64 %4318, 4294967295
  store i64 %4322, i64* %RCX.i1402, align 8
  store i8 %4320, i8* %14, align 1
  %4323 = and i32 %4321, 255
  %4324 = tail call i32 @llvm.ctpop.i32(i32 %4323)
  %4325 = trunc i32 %4324 to i8
  %4326 = and i8 %4325, 1
  %4327 = xor i8 %4326, 1
  store i8 %4327, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %4328 = icmp eq i32 %4321, 0
  %4329 = zext i1 %4328 to i8
  store i8 %4329, i8* %29, align 1
  %4330 = lshr i64 %4317, 32
  %4331 = trunc i64 %4330 to i8
  %4332 = and i8 %4331, 1
  store i8 %4332, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %4333 = load i64, i64* %RBP.i, align 8
  %4334 = add i64 %4333, -216
  %4335 = trunc i64 %4318 to i32
  %4336 = add i64 %4282, 28
  store i64 %4336, i64* %3, align 8
  %4337 = inttoptr i64 %4334 to i32*
  store i32 %4335, i32* %4337, align 4
  %.pre101 = load i64, i64* %3, align 8
  br label %block_.L_40fd4b

block_.L_40fd4b:                                  ; preds = %block_.L_40fd2f, %block_40fd22
  %4338 = phi i64 [ %.pre101, %block_.L_40fd2f ], [ %4288, %block_40fd22 ]
  %4339 = load i64, i64* %RBP.i, align 8
  %4340 = add i64 %4339, -216
  %4341 = add i64 %4338, 6
  store i64 %4341, i64* %3, align 8
  %4342 = inttoptr i64 %4340 to i32*
  %4343 = load i32, i32* %4342, align 4
  %4344 = zext i32 %4343 to i64
  store i64 %4344, i64* %RAX.i1385, align 8
  %4345 = add i64 %4339, -212
  %4346 = add i64 %4338, 12
  store i64 %4346, i64* %3, align 8
  %4347 = inttoptr i64 %4345 to i32*
  store i32 %4343, i32* %4347, align 4
  %.pre102 = load i64, i64* %3, align 8
  br label %block_.L_40fd57

block_.L_40fd57:                                  ; preds = %block_.L_40fd4b, %block_40fce9
  %4348 = phi i64 [ %.pre102, %block_.L_40fd4b ], [ %4220, %block_40fce9 ]
  %4349 = load i64, i64* %RBP.i, align 8
  %4350 = add i64 %4349, -212
  %4351 = add i64 %4348, 6
  store i64 %4351, i64* %3, align 8
  %4352 = inttoptr i64 %4350 to i32*
  %4353 = load i32, i32* %4352, align 4
  %4354 = zext i32 %4353 to i64
  store i64 %4354, i64* %RAX.i1385, align 8
  %4355 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %4356 = add i64 %4355, 13112
  store i64 %4356, i64* %RCX.i1402, align 8
  %4357 = icmp ugt i64 %4355, -13113
  %4358 = zext i1 %4357 to i8
  store i8 %4358, i8* %14, align 1
  %4359 = trunc i64 %4356 to i32
  %4360 = and i32 %4359, 255
  %4361 = tail call i32 @llvm.ctpop.i32(i32 %4360)
  %4362 = trunc i32 %4361 to i8
  %4363 = and i8 %4362, 1
  %4364 = xor i8 %4363, 1
  store i8 %4364, i8* %21, align 1
  %4365 = xor i64 %4355, 16
  %4366 = xor i64 %4365, %4356
  %4367 = lshr i64 %4366, 4
  %4368 = trunc i64 %4367 to i8
  %4369 = and i8 %4368, 1
  store i8 %4369, i8* %26, align 1
  %4370 = icmp eq i64 %4356, 0
  %4371 = zext i1 %4370 to i8
  store i8 %4371, i8* %29, align 1
  %4372 = lshr i64 %4356, 63
  %4373 = trunc i64 %4372 to i8
  store i8 %4373, i8* %32, align 1
  %4374 = lshr i64 %4355, 63
  %4375 = xor i64 %4372, %4374
  %4376 = add nuw nsw i64 %4375, %4372
  %4377 = icmp eq i64 %4376, 2
  %4378 = zext i1 %4377 to i8
  store i8 %4378, i8* %38, align 1
  %4379 = add i64 %4349, -12
  %4380 = add i64 %4348, 25
  store i64 %4380, i64* %3, align 8
  %4381 = inttoptr i64 %4379 to i32*
  %4382 = load i32, i32* %4381, align 4
  %4383 = sext i32 %4382 to i64
  %4384 = shl nsw i64 %4383, 6
  store i64 %4384, i64* %RDX.i1446, align 8
  %4385 = add i64 %4384, %4356
  store i64 %4385, i64* %RCX.i1402, align 8
  %4386 = icmp ult i64 %4385, %4356
  %4387 = icmp ult i64 %4385, %4384
  %4388 = or i1 %4386, %4387
  %4389 = zext i1 %4388 to i8
  store i8 %4389, i8* %14, align 1
  %4390 = trunc i64 %4385 to i32
  %4391 = and i32 %4390, 255
  %4392 = tail call i32 @llvm.ctpop.i32(i32 %4391)
  %4393 = trunc i32 %4392 to i8
  %4394 = and i8 %4393, 1
  %4395 = xor i8 %4394, 1
  store i8 %4395, i8* %21, align 1
  %4396 = xor i64 %4356, %4385
  %4397 = lshr i64 %4396, 4
  %4398 = trunc i64 %4397 to i8
  %4399 = and i8 %4398, 1
  store i8 %4399, i8* %26, align 1
  %4400 = icmp eq i64 %4385, 0
  %4401 = zext i1 %4400 to i8
  store i8 %4401, i8* %29, align 1
  %4402 = lshr i64 %4385, 63
  %4403 = trunc i64 %4402 to i8
  store i8 %4403, i8* %32, align 1
  %4404 = lshr i64 %4383, 57
  %4405 = and i64 %4404, 1
  %4406 = xor i64 %4402, %4372
  %4407 = xor i64 %4402, %4405
  %4408 = add nuw nsw i64 %4406, %4407
  %4409 = icmp eq i64 %4408, 2
  %4410 = zext i1 %4409 to i8
  store i8 %4410, i8* %38, align 1
  %4411 = load i64, i64* %RBP.i, align 8
  %4412 = add i64 %4411, -24
  %4413 = add i64 %4348, 36
  store i64 %4413, i64* %3, align 8
  %4414 = inttoptr i64 %4412 to i32*
  %4415 = load i32, i32* %4414, align 4
  %4416 = sext i32 %4415 to i64
  store i64 %4416, i64* %RDX.i1446, align 8
  %4417 = shl nsw i64 %4416, 2
  %4418 = add i64 %4417, %4385
  %4419 = load i32, i32* %EAX.i1414, align 4
  %4420 = add i64 %4348, 39
  store i64 %4420, i64* %3, align 8
  %4421 = inttoptr i64 %4418 to i32*
  store i32 %4419, i32* %4421, align 4
  %4422 = load i64, i64* %RBP.i, align 8
  %4423 = add i64 %4422, -16
  %4424 = load i64, i64* %3, align 8
  %4425 = add i64 %4424, 3
  store i64 %4425, i64* %3, align 8
  %4426 = inttoptr i64 %4423 to i32*
  %4427 = load i32, i32* %4426, align 4
  %4428 = add i32 %4427, 1
  %4429 = zext i32 %4428 to i64
  store i64 %4429, i64* %RAX.i1385, align 8
  %4430 = icmp eq i32 %4427, -1
  %4431 = icmp eq i32 %4428, 0
  %4432 = or i1 %4430, %4431
  %4433 = zext i1 %4432 to i8
  store i8 %4433, i8* %14, align 1
  %4434 = and i32 %4428, 255
  %4435 = tail call i32 @llvm.ctpop.i32(i32 %4434)
  %4436 = trunc i32 %4435 to i8
  %4437 = and i8 %4436, 1
  %4438 = xor i8 %4437, 1
  store i8 %4438, i8* %21, align 1
  %4439 = xor i32 %4428, %4427
  %4440 = lshr i32 %4439, 4
  %4441 = trunc i32 %4440 to i8
  %4442 = and i8 %4441, 1
  store i8 %4442, i8* %26, align 1
  %4443 = zext i1 %4431 to i8
  store i8 %4443, i8* %29, align 1
  %4444 = lshr i32 %4428, 31
  %4445 = trunc i32 %4444 to i8
  store i8 %4445, i8* %32, align 1
  %4446 = lshr i32 %4427, 31
  %4447 = xor i32 %4444, %4446
  %4448 = add nuw nsw i32 %4447, %4444
  %4449 = icmp eq i32 %4448, 2
  %4450 = zext i1 %4449 to i8
  store i8 %4450, i8* %38, align 1
  %4451 = add i64 %4424, 9
  store i64 %4451, i64* %3, align 8
  store i32 %4428, i32* %4426, align 4
  %4452 = load i64, i64* %3, align 8
  %4453 = add i64 %4452, -554
  store i64 %4453, i64* %3, align 8
  br label %block_.L_40fb5d

block_.L_40fd8c:                                  ; preds = %block_.L_40fb5d
  %4454 = add i64 %3593, -12
  %4455 = add i64 %3621, 8
  store i64 %4455, i64* %3, align 8
  %4456 = inttoptr i64 %4454 to i32*
  %4457 = load i32, i32* %4456, align 4
  %4458 = add i32 %4457, 1
  %4459 = zext i32 %4458 to i64
  store i64 %4459, i64* %RAX.i1385, align 8
  %4460 = icmp eq i32 %4457, -1
  %4461 = icmp eq i32 %4458, 0
  %4462 = or i1 %4460, %4461
  %4463 = zext i1 %4462 to i8
  store i8 %4463, i8* %14, align 1
  %4464 = and i32 %4458, 255
  %4465 = tail call i32 @llvm.ctpop.i32(i32 %4464)
  %4466 = trunc i32 %4465 to i8
  %4467 = and i8 %4466, 1
  %4468 = xor i8 %4467, 1
  store i8 %4468, i8* %21, align 1
  %4469 = xor i32 %4458, %4457
  %4470 = lshr i32 %4469, 4
  %4471 = trunc i32 %4470 to i8
  %4472 = and i8 %4471, 1
  store i8 %4472, i8* %26, align 1
  %4473 = zext i1 %4461 to i8
  store i8 %4473, i8* %29, align 1
  %4474 = lshr i32 %4458, 31
  %4475 = trunc i32 %4474 to i8
  store i8 %4475, i8* %32, align 1
  %4476 = lshr i32 %4457, 31
  %4477 = xor i32 %4474, %4476
  %4478 = add nuw nsw i32 %4477, %4474
  %4479 = icmp eq i32 %4478, 2
  %4480 = zext i1 %4479 to i8
  store i8 %4480, i8* %38, align 1
  %4481 = add i64 %3621, 14
  store i64 %4481, i64* %3, align 8
  store i32 %4458, i32* %4456, align 4
  %4482 = load i64, i64* %3, align 8
  %4483 = add i64 %4482, -705
  store i64 %4483, i64* %3, align 8
  br label %block_.L_40fad9

block_.L_40fda6:                                  ; preds = %block_.L_40fda6.preheader, %block_.L_40fe37
  %4484 = phi i64 [ %.pre93, %block_.L_40fda6.preheader ], [ %4827, %block_.L_40fe37 ]
  %4485 = load i64, i64* %RBP.i, align 8
  %4486 = add i64 %4485, -16
  %4487 = add i64 %4484, 4
  store i64 %4487, i64* %3, align 8
  %4488 = inttoptr i64 %4486 to i32*
  %4489 = load i32, i32* %4488, align 4
  %4490 = add i32 %4489, -4
  %4491 = icmp ult i32 %4489, 4
  %4492 = zext i1 %4491 to i8
  store i8 %4492, i8* %14, align 1
  %4493 = and i32 %4490, 255
  %4494 = tail call i32 @llvm.ctpop.i32(i32 %4493)
  %4495 = trunc i32 %4494 to i8
  %4496 = and i8 %4495, 1
  %4497 = xor i8 %4496, 1
  store i8 %4497, i8* %21, align 1
  %4498 = xor i32 %4490, %4489
  %4499 = lshr i32 %4498, 4
  %4500 = trunc i32 %4499 to i8
  %4501 = and i8 %4500, 1
  store i8 %4501, i8* %26, align 1
  %4502 = icmp eq i32 %4490, 0
  %4503 = zext i1 %4502 to i8
  store i8 %4503, i8* %29, align 1
  %4504 = lshr i32 %4490, 31
  %4505 = trunc i32 %4504 to i8
  store i8 %4505, i8* %32, align 1
  %4506 = lshr i32 %4489, 31
  %4507 = xor i32 %4504, %4506
  %4508 = add nuw nsw i32 %4507, %4506
  %4509 = icmp eq i32 %4508, 2
  %4510 = zext i1 %4509 to i8
  store i8 %4510, i8* %38, align 1
  %4511 = icmp ne i8 %4505, 0
  %4512 = xor i1 %4511, %4509
  %.v119 = select i1 %4512, i64 10, i64 164
  %4513 = add i64 %4484, %.v119
  store i64 %4513, i64* %3, align 8
  br i1 %4512, label %block_40fdb0, label %block_.L_40fe4a

block_40fdb0:                                     ; preds = %block_.L_40fda6
  %4514 = add i64 %4485, -12
  %4515 = add i64 %4513, 7
  store i64 %4515, i64* %3, align 8
  %4516 = inttoptr i64 %4514 to i32*
  store i32 0, i32* %4516, align 4
  %.pre94 = load i64, i64* %3, align 8
  br label %block_.L_40fdb7

block_.L_40fdb7:                                  ; preds = %block_40fdc1, %block_40fdb0
  %4517 = phi i64 [ %4797, %block_40fdc1 ], [ %.pre94, %block_40fdb0 ]
  %4518 = load i64, i64* %RBP.i, align 8
  %4519 = add i64 %4518, -12
  %4520 = add i64 %4517, 4
  store i64 %4520, i64* %3, align 8
  %4521 = inttoptr i64 %4519 to i32*
  %4522 = load i32, i32* %4521, align 4
  %4523 = add i32 %4522, -4
  %4524 = icmp ult i32 %4522, 4
  %4525 = zext i1 %4524 to i8
  store i8 %4525, i8* %14, align 1
  %4526 = and i32 %4523, 255
  %4527 = tail call i32 @llvm.ctpop.i32(i32 %4526)
  %4528 = trunc i32 %4527 to i8
  %4529 = and i8 %4528, 1
  %4530 = xor i8 %4529, 1
  store i8 %4530, i8* %21, align 1
  %4531 = xor i32 %4523, %4522
  %4532 = lshr i32 %4531, 4
  %4533 = trunc i32 %4532 to i8
  %4534 = and i8 %4533, 1
  store i8 %4534, i8* %26, align 1
  %4535 = icmp eq i32 %4523, 0
  %4536 = zext i1 %4535 to i8
  store i8 %4536, i8* %29, align 1
  %4537 = lshr i32 %4523, 31
  %4538 = trunc i32 %4537 to i8
  store i8 %4538, i8* %32, align 1
  %4539 = lshr i32 %4522, 31
  %4540 = xor i32 %4537, %4539
  %4541 = add nuw nsw i32 %4540, %4539
  %4542 = icmp eq i32 %4541, 2
  %4543 = zext i1 %4542 to i8
  store i8 %4543, i8* %38, align 1
  %4544 = icmp ne i8 %4538, 0
  %4545 = xor i1 %4544, %4542
  %.v112 = select i1 %4545, i64 10, i64 128
  %4546 = add i64 %4517, %.v112
  store i64 %4546, i64* %3, align 8
  br i1 %4545, label %block_40fdc1, label %block_.L_40fe37

block_40fdc1:                                     ; preds = %block_.L_40fdb7
  %4547 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %4548 = add i64 %4547, 13112
  store i64 %4548, i64* %RAX.i1385, align 8
  %4549 = icmp ugt i64 %4547, -13113
  %4550 = zext i1 %4549 to i8
  store i8 %4550, i8* %14, align 1
  %4551 = trunc i64 %4548 to i32
  %4552 = and i32 %4551, 255
  %4553 = tail call i32 @llvm.ctpop.i32(i32 %4552)
  %4554 = trunc i32 %4553 to i8
  %4555 = and i8 %4554, 1
  %4556 = xor i8 %4555, 1
  store i8 %4556, i8* %21, align 1
  %4557 = xor i64 %4547, 16
  %4558 = xor i64 %4557, %4548
  %4559 = lshr i64 %4558, 4
  %4560 = trunc i64 %4559 to i8
  %4561 = and i8 %4560, 1
  store i8 %4561, i8* %26, align 1
  %4562 = icmp eq i64 %4548, 0
  %4563 = zext i1 %4562 to i8
  store i8 %4563, i8* %29, align 1
  %4564 = lshr i64 %4548, 63
  %4565 = trunc i64 %4564 to i8
  store i8 %4565, i8* %32, align 1
  %4566 = lshr i64 %4547, 63
  %4567 = xor i64 %4564, %4566
  %4568 = add nuw nsw i64 %4567, %4564
  %4569 = icmp eq i64 %4568, 2
  %4570 = zext i1 %4569 to i8
  store i8 %4570, i8* %38, align 1
  %4571 = add i64 %4546, 18
  store i64 %4571, i64* %3, align 8
  %4572 = load i32, i32* %4521, align 4
  %4573 = sext i32 %4572 to i64
  %4574 = shl nsw i64 %4573, 6
  store i64 %4574, i64* %RCX.i1402, align 8
  %4575 = add i64 %4574, %4548
  store i64 %4575, i64* %RAX.i1385, align 8
  %4576 = icmp ult i64 %4575, %4548
  %4577 = icmp ult i64 %4575, %4574
  %4578 = or i1 %4576, %4577
  %4579 = zext i1 %4578 to i8
  store i8 %4579, i8* %14, align 1
  %4580 = trunc i64 %4575 to i32
  %4581 = and i32 %4580, 255
  %4582 = tail call i32 @llvm.ctpop.i32(i32 %4581)
  %4583 = trunc i32 %4582 to i8
  %4584 = and i8 %4583, 1
  %4585 = xor i8 %4584, 1
  store i8 %4585, i8* %21, align 1
  %4586 = xor i64 %4548, %4575
  %4587 = lshr i64 %4586, 4
  %4588 = trunc i64 %4587 to i8
  %4589 = and i8 %4588, 1
  store i8 %4589, i8* %26, align 1
  %4590 = icmp eq i64 %4575, 0
  %4591 = zext i1 %4590 to i8
  store i8 %4591, i8* %29, align 1
  %4592 = lshr i64 %4575, 63
  %4593 = trunc i64 %4592 to i8
  store i8 %4593, i8* %32, align 1
  %4594 = lshr i64 %4573, 57
  %4595 = and i64 %4594, 1
  %4596 = xor i64 %4592, %4564
  %4597 = xor i64 %4592, %4595
  %4598 = add nuw nsw i64 %4596, %4597
  %4599 = icmp eq i64 %4598, 2
  %4600 = zext i1 %4599 to i8
  store i8 %4600, i8* %38, align 1
  %4601 = add i64 %4518, -16
  %4602 = add i64 %4546, 29
  store i64 %4602, i64* %3, align 8
  %4603 = inttoptr i64 %4601 to i32*
  %4604 = load i32, i32* %4603, align 4
  %4605 = sext i32 %4604 to i64
  store i64 %4605, i64* %RCX.i1402, align 8
  %4606 = shl nsw i64 %4605, 2
  %4607 = add i64 %4606, %4575
  %4608 = add i64 %4546, 32
  store i64 %4608, i64* %3, align 8
  %4609 = inttoptr i64 %4607 to i32*
  %4610 = load i32, i32* %4609, align 4
  %4611 = zext i32 %4610 to i64
  store i64 %4611, i64* %RDX.i1446, align 8
  %4612 = trunc i32 %4610 to i16
  store i16 %4612, i16* %SI.i58, align 2
  %4613 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*), align 8
  store i64 %4613, i64* %RAX.i1385, align 8
  %4614 = add i64 %4613, 6424
  %4615 = add i64 %4546, 50
  store i64 %4615, i64* %3, align 8
  %4616 = inttoptr i64 %4614 to i64*
  %4617 = load i64, i64* %4616, align 8
  store i64 %4617, i64* %RAX.i1385, align 8
  %4618 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4618, i64* %RCX.i1402, align 8
  %4619 = add i64 %4618, 156
  %4620 = add i64 %4546, 64
  store i64 %4620, i64* %3, align 8
  %4621 = inttoptr i64 %4619 to i32*
  %4622 = load i32, i32* %4621, align 4
  %4623 = zext i32 %4622 to i64
  store i64 %4623, i64* %RDX.i1446, align 8
  %4624 = load i64, i64* %RBP.i, align 8
  %4625 = add i64 %4624, -8
  %4626 = add i64 %4546, 67
  store i64 %4626, i64* %3, align 8
  %4627 = inttoptr i64 %4625 to i32*
  %4628 = load i32, i32* %4627, align 4
  %4629 = add i32 %4628, %4622
  %4630 = zext i32 %4629 to i64
  store i64 %4630, i64* %RDX.i1446, align 8
  %4631 = icmp ult i32 %4629, %4622
  %4632 = icmp ult i32 %4629, %4628
  %4633 = or i1 %4631, %4632
  %4634 = zext i1 %4633 to i8
  store i8 %4634, i8* %14, align 1
  %4635 = and i32 %4629, 255
  %4636 = tail call i32 @llvm.ctpop.i32(i32 %4635)
  %4637 = trunc i32 %4636 to i8
  %4638 = and i8 %4637, 1
  %4639 = xor i8 %4638, 1
  store i8 %4639, i8* %21, align 1
  %4640 = xor i32 %4628, %4622
  %4641 = xor i32 %4640, %4629
  %4642 = lshr i32 %4641, 4
  %4643 = trunc i32 %4642 to i8
  %4644 = and i8 %4643, 1
  store i8 %4644, i8* %26, align 1
  %4645 = icmp eq i32 %4629, 0
  %4646 = zext i1 %4645 to i8
  store i8 %4646, i8* %29, align 1
  %4647 = lshr i32 %4629, 31
  %4648 = trunc i32 %4647 to i8
  store i8 %4648, i8* %32, align 1
  %4649 = lshr i32 %4622, 31
  %4650 = lshr i32 %4628, 31
  %4651 = xor i32 %4647, %4649
  %4652 = xor i32 %4647, %4650
  %4653 = add nuw nsw i32 %4651, %4652
  %4654 = icmp eq i32 %4653, 2
  %4655 = zext i1 %4654 to i8
  store i8 %4655, i8* %38, align 1
  %4656 = add i64 %4624, -16
  %4657 = add i64 %4546, 70
  store i64 %4657, i64* %3, align 8
  %4658 = inttoptr i64 %4656 to i32*
  %4659 = load i32, i32* %4658, align 4
  %4660 = add i32 %4659, %4629
  %4661 = zext i32 %4660 to i64
  store i64 %4661, i64* %RDX.i1446, align 8
  %4662 = icmp ult i32 %4660, %4629
  %4663 = icmp ult i32 %4660, %4659
  %4664 = or i1 %4662, %4663
  %4665 = zext i1 %4664 to i8
  store i8 %4665, i8* %14, align 1
  %4666 = and i32 %4660, 255
  %4667 = tail call i32 @llvm.ctpop.i32(i32 %4666)
  %4668 = trunc i32 %4667 to i8
  %4669 = and i8 %4668, 1
  %4670 = xor i8 %4669, 1
  store i8 %4670, i8* %21, align 1
  %4671 = xor i32 %4659, %4629
  %4672 = xor i32 %4671, %4660
  %4673 = lshr i32 %4672, 4
  %4674 = trunc i32 %4673 to i8
  %4675 = and i8 %4674, 1
  store i8 %4675, i8* %26, align 1
  %4676 = icmp eq i32 %4660, 0
  %4677 = zext i1 %4676 to i8
  store i8 %4677, i8* %29, align 1
  %4678 = lshr i32 %4660, 31
  %4679 = trunc i32 %4678 to i8
  store i8 %4679, i8* %32, align 1
  %4680 = lshr i32 %4659, 31
  %4681 = xor i32 %4678, %4647
  %4682 = xor i32 %4678, %4680
  %4683 = add nuw nsw i32 %4681, %4682
  %4684 = icmp eq i32 %4683, 2
  %4685 = zext i1 %4684 to i8
  store i8 %4685, i8* %38, align 1
  %4686 = sext i32 %4660 to i64
  store i64 %4686, i64* %RCX.i1402, align 8
  %4687 = shl nsw i64 %4686, 3
  %4688 = add i64 %4617, %4687
  %4689 = add i64 %4546, 77
  store i64 %4689, i64* %3, align 8
  %4690 = inttoptr i64 %4688 to i64*
  %4691 = load i64, i64* %4690, align 8
  store i64 %4691, i64* %RAX.i1385, align 8
  %4692 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %4692, i64* %RCX.i1402, align 8
  %4693 = add i64 %4692, 152
  %4694 = add i64 %4546, 91
  store i64 %4694, i64* %3, align 8
  %4695 = inttoptr i64 %4693 to i32*
  %4696 = load i32, i32* %4695, align 4
  %4697 = zext i32 %4696 to i64
  store i64 %4697, i64* %RDX.i1446, align 8
  %4698 = load i64, i64* %RBP.i, align 8
  %4699 = add i64 %4698, -4
  %4700 = add i64 %4546, 94
  store i64 %4700, i64* %3, align 8
  %4701 = inttoptr i64 %4699 to i32*
  %4702 = load i32, i32* %4701, align 4
  %4703 = add i32 %4702, %4696
  %4704 = zext i32 %4703 to i64
  store i64 %4704, i64* %RDX.i1446, align 8
  %4705 = icmp ult i32 %4703, %4696
  %4706 = icmp ult i32 %4703, %4702
  %4707 = or i1 %4705, %4706
  %4708 = zext i1 %4707 to i8
  store i8 %4708, i8* %14, align 1
  %4709 = and i32 %4703, 255
  %4710 = tail call i32 @llvm.ctpop.i32(i32 %4709)
  %4711 = trunc i32 %4710 to i8
  %4712 = and i8 %4711, 1
  %4713 = xor i8 %4712, 1
  store i8 %4713, i8* %21, align 1
  %4714 = xor i32 %4702, %4696
  %4715 = xor i32 %4714, %4703
  %4716 = lshr i32 %4715, 4
  %4717 = trunc i32 %4716 to i8
  %4718 = and i8 %4717, 1
  store i8 %4718, i8* %26, align 1
  %4719 = icmp eq i32 %4703, 0
  %4720 = zext i1 %4719 to i8
  store i8 %4720, i8* %29, align 1
  %4721 = lshr i32 %4703, 31
  %4722 = trunc i32 %4721 to i8
  store i8 %4722, i8* %32, align 1
  %4723 = lshr i32 %4696, 31
  %4724 = lshr i32 %4702, 31
  %4725 = xor i32 %4721, %4723
  %4726 = xor i32 %4721, %4724
  %4727 = add nuw nsw i32 %4725, %4726
  %4728 = icmp eq i32 %4727, 2
  %4729 = zext i1 %4728 to i8
  store i8 %4729, i8* %38, align 1
  %4730 = add i64 %4698, -12
  %4731 = add i64 %4546, 97
  store i64 %4731, i64* %3, align 8
  %4732 = inttoptr i64 %4730 to i32*
  %4733 = load i32, i32* %4732, align 4
  %4734 = add i32 %4733, %4703
  %4735 = zext i32 %4734 to i64
  store i64 %4735, i64* %RDX.i1446, align 8
  %4736 = icmp ult i32 %4734, %4703
  %4737 = icmp ult i32 %4734, %4733
  %4738 = or i1 %4736, %4737
  %4739 = zext i1 %4738 to i8
  store i8 %4739, i8* %14, align 1
  %4740 = and i32 %4734, 255
  %4741 = tail call i32 @llvm.ctpop.i32(i32 %4740)
  %4742 = trunc i32 %4741 to i8
  %4743 = and i8 %4742, 1
  %4744 = xor i8 %4743, 1
  store i8 %4744, i8* %21, align 1
  %4745 = xor i32 %4733, %4703
  %4746 = xor i32 %4745, %4734
  %4747 = lshr i32 %4746, 4
  %4748 = trunc i32 %4747 to i8
  %4749 = and i8 %4748, 1
  store i8 %4749, i8* %26, align 1
  %4750 = icmp eq i32 %4734, 0
  %4751 = zext i1 %4750 to i8
  store i8 %4751, i8* %29, align 1
  %4752 = lshr i32 %4734, 31
  %4753 = trunc i32 %4752 to i8
  store i8 %4753, i8* %32, align 1
  %4754 = lshr i32 %4733, 31
  %4755 = xor i32 %4752, %4721
  %4756 = xor i32 %4752, %4754
  %4757 = add nuw nsw i32 %4755, %4756
  %4758 = icmp eq i32 %4757, 2
  %4759 = zext i1 %4758 to i8
  store i8 %4759, i8* %38, align 1
  %4760 = sext i32 %4734 to i64
  store i64 %4760, i64* %RCX.i1402, align 8
  %4761 = shl nsw i64 %4760, 1
  %4762 = add i64 %4691, %4761
  %4763 = load i16, i16* %SI.i58, align 2
  %4764 = add i64 %4546, 104
  store i64 %4764, i64* %3, align 8
  %4765 = inttoptr i64 %4762 to i16*
  store i16 %4763, i16* %4765, align 2
  %4766 = load i64, i64* %RBP.i, align 8
  %4767 = add i64 %4766, -12
  %4768 = load i64, i64* %3, align 8
  %4769 = add i64 %4768, 3
  store i64 %4769, i64* %3, align 8
  %4770 = inttoptr i64 %4767 to i32*
  %4771 = load i32, i32* %4770, align 4
  %4772 = add i32 %4771, 1
  %4773 = zext i32 %4772 to i64
  store i64 %4773, i64* %RAX.i1385, align 8
  %4774 = icmp eq i32 %4771, -1
  %4775 = icmp eq i32 %4772, 0
  %4776 = or i1 %4774, %4775
  %4777 = zext i1 %4776 to i8
  store i8 %4777, i8* %14, align 1
  %4778 = and i32 %4772, 255
  %4779 = tail call i32 @llvm.ctpop.i32(i32 %4778)
  %4780 = trunc i32 %4779 to i8
  %4781 = and i8 %4780, 1
  %4782 = xor i8 %4781, 1
  store i8 %4782, i8* %21, align 1
  %4783 = xor i32 %4772, %4771
  %4784 = lshr i32 %4783, 4
  %4785 = trunc i32 %4784 to i8
  %4786 = and i8 %4785, 1
  store i8 %4786, i8* %26, align 1
  %4787 = zext i1 %4775 to i8
  store i8 %4787, i8* %29, align 1
  %4788 = lshr i32 %4772, 31
  %4789 = trunc i32 %4788 to i8
  store i8 %4789, i8* %32, align 1
  %4790 = lshr i32 %4771, 31
  %4791 = xor i32 %4788, %4790
  %4792 = add nuw nsw i32 %4791, %4788
  %4793 = icmp eq i32 %4792, 2
  %4794 = zext i1 %4793 to i8
  store i8 %4794, i8* %38, align 1
  %4795 = add i64 %4768, 9
  store i64 %4795, i64* %3, align 8
  store i32 %4772, i32* %4770, align 4
  %4796 = load i64, i64* %3, align 8
  %4797 = add i64 %4796, -123
  store i64 %4797, i64* %3, align 8
  br label %block_.L_40fdb7

block_.L_40fe37:                                  ; preds = %block_.L_40fdb7
  %4798 = add i64 %4518, -16
  %4799 = add i64 %4546, 8
  store i64 %4799, i64* %3, align 8
  %4800 = inttoptr i64 %4798 to i32*
  %4801 = load i32, i32* %4800, align 4
  %4802 = add i32 %4801, 1
  %4803 = zext i32 %4802 to i64
  store i64 %4803, i64* %RAX.i1385, align 8
  %4804 = icmp eq i32 %4801, -1
  %4805 = icmp eq i32 %4802, 0
  %4806 = or i1 %4804, %4805
  %4807 = zext i1 %4806 to i8
  store i8 %4807, i8* %14, align 1
  %4808 = and i32 %4802, 255
  %4809 = tail call i32 @llvm.ctpop.i32(i32 %4808)
  %4810 = trunc i32 %4809 to i8
  %4811 = and i8 %4810, 1
  %4812 = xor i8 %4811, 1
  store i8 %4812, i8* %21, align 1
  %4813 = xor i32 %4802, %4801
  %4814 = lshr i32 %4813, 4
  %4815 = trunc i32 %4814 to i8
  %4816 = and i8 %4815, 1
  store i8 %4816, i8* %26, align 1
  %4817 = zext i1 %4805 to i8
  store i8 %4817, i8* %29, align 1
  %4818 = lshr i32 %4802, 31
  %4819 = trunc i32 %4818 to i8
  store i8 %4819, i8* %32, align 1
  %4820 = lshr i32 %4801, 31
  %4821 = xor i32 %4818, %4820
  %4822 = add nuw nsw i32 %4821, %4818
  %4823 = icmp eq i32 %4822, 2
  %4824 = zext i1 %4823 to i8
  store i8 %4824, i8* %38, align 1
  %4825 = add i64 %4546, 14
  store i64 %4825, i64* %3, align 8
  store i32 %4802, i32* %4800, align 4
  %4826 = load i64, i64* %3, align 8
  %4827 = add i64 %4826, -159
  store i64 %4827, i64* %3, align 8
  br label %block_.L_40fda6

block_.L_40fe4a:                                  ; preds = %block_.L_40fda6
  %4828 = load i64, i64* %6, align 8
  %4829 = add i64 %4828, 224
  store i64 %4829, i64* %6, align 8
  %4830 = icmp ugt i64 %4828, -225
  %4831 = zext i1 %4830 to i8
  store i8 %4831, i8* %14, align 1
  %4832 = trunc i64 %4829 to i32
  %4833 = and i32 %4832, 255
  %4834 = tail call i32 @llvm.ctpop.i32(i32 %4833)
  %4835 = trunc i32 %4834 to i8
  %4836 = and i8 %4835, 1
  %4837 = xor i8 %4836, 1
  store i8 %4837, i8* %21, align 1
  %4838 = xor i64 %4829, %4828
  %4839 = lshr i64 %4838, 4
  %4840 = trunc i64 %4839 to i8
  %4841 = and i8 %4840, 1
  store i8 %4841, i8* %26, align 1
  %4842 = icmp eq i64 %4829, 0
  %4843 = zext i1 %4842 to i8
  store i8 %4843, i8* %29, align 1
  %4844 = lshr i64 %4829, 63
  %4845 = trunc i64 %4844 to i8
  store i8 %4845, i8* %32, align 1
  %4846 = lshr i64 %4828, 63
  %4847 = xor i64 %4844, %4846
  %4848 = add nuw nsw i64 %4847, %4844
  %4849 = icmp eq i64 %4848, 2
  %4850 = zext i1 %4849 to i8
  store i8 %4850, i8* %38, align 1
  %4851 = add i64 %4513, 8
  store i64 %4851, i64* %3, align 8
  %4852 = add i64 %4828, 232
  %4853 = inttoptr i64 %4829 to i64*
  %4854 = load i64, i64* %4853, align 8
  store i64 %4854, i64* %RBP.i, align 8
  store i64 %4852, i64* %6, align 8
  %4855 = add i64 %4513, 9
  store i64 %4855, i64* %3, align 8
  %4856 = inttoptr i64 %4852 to i64*
  %4857 = load i64, i64* %4856, align 8
  store i64 %4857, i64* %3, align 8
  %4858 = add i64 %4828, 240
  store i64 %4858, i64* %6, align 8
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
define %struct.Memory* @routine_subq__0xe0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -224
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 224
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
define %struct.Memory* @routine_movl__0x6___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq_0x3758__r8____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 14168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb900___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0xc__r9____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x278___r9___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 632
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %R9, align 8
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
define %struct.Memory* @routine_movq__r8__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x48__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__r8____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
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
define %struct.Memory* @routine_movl__edx__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0xa8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__r8____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_movl__edx__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x94__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
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
define %struct.Memory* @routine_movl__edx__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -156
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x9c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -156
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
define %struct.Memory* @routine_movl__ecx__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -172
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
define %struct.Memory* @routine_movl_MINUS0xac__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
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
define %struct.Memory* @routine_movl_MINUS0xa4__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -164
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_40f683(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_40f670(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x90__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
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
define %struct.Memory* @routine_movl_MINUS0x10__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_addl_MINUS0x8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f613(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f675(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_40f602(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40f777(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_40f726(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_shlq__0x4___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__rax___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movl___rsi__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl___rsi__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -48
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl___rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %13 = sub i32 %10, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %10, %12
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %13, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %12, %10
  %25 = xor i32 %24, %13
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %13, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %10, 31
  %37 = lshr i32 %12, 31
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -48
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f69b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_addl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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
define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -144
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
define %struct.Memory* @routine_subl_MINUS0x2c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
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
define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -112
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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
define %struct.Memory* @routine_movl__eax__MINUS0x80__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -128
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -96
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f68a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40f88f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_40f81a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl_MINUS0x10__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_jmpq_.L_40f78f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x2c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
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
define %struct.Memory* @routine_movl__ecx____rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = bitcast i64* %RSI to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x2c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
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
define %struct.Memory* @routine_movl__ecx__0x8__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_addl_MINUS0x28__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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
define %struct.Memory* @routine_movl__ecx__0x4__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x28__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_shll__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RDI, align 8
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
define %struct.Memory* @routine_subl__edi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i32, i32* %EDI, align 4
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
define %struct.Memory* @routine_movl__ecx__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 12
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f77e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40f9af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_40f99c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl___rax__rcx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
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
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.abs_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x90__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4b2750___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b2750_type* @G__0x4b2750 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x98__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_shlq__0x4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_imull___rdx__rsi_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = shl i64 %3, 32
  %13 = ashr exact i64 %12, 32
  %14 = sext i32 %11 to i64
  %15 = mul nsw i64 %14, %13
  %16 = trunc i64 %15 to i32
  %17 = and i64 %15, 4294967295
  store i64 %17, i64* %RAX, align 8
  %18 = shl i64 %15, 32
  %19 = ashr exact i64 %18, 32
  %20 = icmp ne i64 %19, %15
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = and i32 %16, 255
  %24 = tail call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %30, align 1
  %31 = lshr i32 %16, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %21, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0xa0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movl_MINUS0x9c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -156
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
define %struct.Memory* @routine_movq__rcx__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__cl___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  switch i5 %8, label %12 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = shl i64 %4, 32
  %11 = ashr i64 %10, 33
  br label %20

; <label>:12:                                     ; preds = %block_400488
  %13 = and i8 %5, 31
  %14 = zext i8 %13 to i64
  %15 = add nsw i64 %14, -1
  %16 = shl i64 %4, 32
  %17 = ashr exact i64 %16, 32
  %18 = ashr i64 %17, %15
  %19 = lshr i64 %18, 1
  br label %20

; <label>:20:                                     ; preds = %12, %9
  %21 = phi i64 [ %19, %12 ], [ %11, %9 ]
  %22 = phi i64 [ %18, %12 ], [ %4, %9 ]
  %23 = trunc i64 %22 to i8
  %24 = and i8 %23, 1
  %25 = trunc i64 %21 to i32
  %26 = and i64 %21, 4294967295
  store i64 %26, i64* %RAX, align 8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %29 = and i32 %25, 255
  %30 = tail call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  store i8 %33, i8* %28, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %36 = icmp eq i32 %25, 0
  %37 = zext i1 %36 to i8
  store i8 %37, i8* %35, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %39 = lshr i32 %25, 31
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %38, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %41, align 1
  br label %_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SARI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %20, %block_400488
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rsi__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__eax___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sign(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4b28d0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4b28d0_type* @G__0x4b28d0 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x98__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
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
define %struct.Memory* @routine_addq__r8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %R8, align 8
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
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x4___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 4
  store i64 %6, i64* %R8, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull___rdx__r8_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %R8, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = shl i64 %3, 32
  %13 = ashr exact i64 %12, 32
  %14 = sext i32 %11 to i64
  %15 = mul nsw i64 %14, %13
  %16 = trunc i64 %15 to i32
  %17 = and i64 %15, 4294967295
  store i64 %17, i64* %RAX, align 8
  %18 = shl i64 %15, 32
  %19 = ashr exact i64 %18, 32
  %20 = icmp ne i64 %19, %15
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = and i32 %16, 255
  %24 = tail call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %30, align 1
  %31 = lshr i32 %16, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %21, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x94__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x3338___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 13112
  store i64 %6, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__eax____rdx__r8_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %R8, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f8a7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f9a1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f896(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40fad2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_40fa07(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movl__edx__MINUS0x30__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -48
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f9c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x28__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
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
define %struct.Memory* @routine_sarl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = trunc i64 %3 to i8
  %9 = and i8 %8, 1
  %10 = trunc i64 %7 to i32
  %11 = and i64 %7, 4294967295
  store i64 %11, i64* %RAX, align 8
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
define %struct.Memory* @routine_subl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
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

; Function Attrs: nounwind
define %struct.Memory* @routine_sarl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 33
  %8 = trunc i64 %3 to i8
  %9 = and i8 %8, 1
  %10 = trunc i64 %7 to i32
  %11 = and i64 %7, 4294967295
  store i64 %11, i64* %RCX, align 8
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
define %struct.Memory* @routine_addl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jge_.L_40fabf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -64
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
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
define %struct.Memory* @routine_addl_MINUS0x40__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -64
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
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
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
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
define %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x40__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -64
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
  %16 = icmp ult i32 %11, %13
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
  %25 = xor i32 %13, %11
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
  %37 = lshr i32 %11, 31
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
define %struct.Memory* @routine_jmpq_.L_40fa3a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40fac4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f9b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40fd9f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_40fb2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_jmpq_.L_40faea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40fd8c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x11bec__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 72684
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -64
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x40__rbp__rdx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -64
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RSI, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
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
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x20___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 32
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  %9 = icmp ugt i32 %6, -33
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
define %struct.Memory* @routine_sarl__0x6___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 37
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 1
  %11 = trunc i64 %8 to i32
  %12 = and i64 %8, 4294967295
  store i64 %12, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__esi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %EAX, align 4
  %6 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_movl__ecx__MINUS0xbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40fbb3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -192
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40fbcf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -64
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x40__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -64
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
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
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x20___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 32
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -33
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
define %struct.Memory* @routine_sarl__0x6___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 37
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
define %struct.Memory* @routine_movl__ecx__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -192
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
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
define %struct.Memory* @routine_movl_MINUS0xbc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -188
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
define %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jge_.L_40fbfc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x11bec__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72684
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
define %struct.Memory* @routine_movl__ecx__MINUS0xc4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -196
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40fc51(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -64
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_addl_MINUS0x40__rbp__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -64
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = add i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  %16 = icmp ult i32 %14, %11
  %17 = icmp ult i32 %14, %13
  %18 = or i1 %16, %17
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
  %27 = xor i32 %13, %11
  %28 = xor i32 %27, %14
  %29 = lshr i32 %28, 4
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %31, i8* %32, align 1
  %33 = icmp eq i32 %14, 0
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %14, 31
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %11, 31
  %40 = lshr i32 %13, 31
  %41 = xor i32 %36, %39
  %42 = xor i32 %36, %40
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp eq i32 %43, 2
  %45 = zext i1 %44 to i8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %45, i8* %46, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x20___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 32
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ugt i32 %6, -33
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
define %struct.Memory* @routine_sarl__0x6___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 37
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 1
  %11 = trunc i64 %8 to i32
  %12 = and i64 %8, 4294967295
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_jle_.L_40fc29(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -200
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40fc45(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -200
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -200
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
define %struct.Memory* @routine_movl__eax__MINUS0xc4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -196
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -196
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
define %struct.Memory* @routine_movl__eax____rdx__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EAX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11bec__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 72684
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp__rdx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -64
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x40__rbp__rdx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -64
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RDI, align 8
  %16 = icmp ult i32 %11, %13
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
  %25 = xor i32 %13, %11
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
  %37 = lshr i32 %11, 31
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x20___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 32
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
  %9 = icmp ugt i32 %6, -33
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
define %struct.Memory* @routine_sarl__0x6___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 32
  %7 = ashr i64 %6, 37
  %8 = lshr i64 %7, 1
  %9 = trunc i64 %7 to i8
  %10 = and i8 %9, 1
  %11 = trunc i64 %8 to i32
  %12 = and i64 %8, 4294967295
  store i64 %12, i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__edi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ECX, align 4
  %6 = load i32, i32* %EDI, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -204
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40fcb9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -208
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40fcd5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x40__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -64
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %11, %13
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
  %25 = xor i32 %13, %11
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
  %37 = lshr i32 %11, 31
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
define %struct.Memory* @routine_movl__ecx__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -208
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
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
define %struct.Memory* @routine_movl_MINUS0xcc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -204
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
define %struct.Memory* @routine_jge_.L_40fd02(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0xd4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -212
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40fd57(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x40__rbp__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -64
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  %16 = icmp ult i32 %11, %13
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
  %25 = xor i32 %13, %11
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
  %37 = lshr i32 %11, 31
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
define %struct.Memory* @routine_jle_.L_40fd2f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -216
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40fd4b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -216
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
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
define %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -212
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -212
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
define %struct.Memory* @routine_jmpq_.L_40fb5d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40fd91(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40fad9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40fe4a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_40fe37(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movw__dx___si(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DX = bitcast %union.anon* %3 to i16*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %4 to i16*
  %5 = load i16, i16* %DX, align 2
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i16 %5, i16* %SI, align 2
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
define %struct.Memory* @routine_movl_0x9c__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 156
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
define %struct.Memory* @routine_movl_0x98__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 152
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
define %struct.Memory* @routine_movw__si____rax__rcx_2_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SI = bitcast %union.anon* %3 to i16*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 1
  %7 = add i64 %6, %4
  %8 = load i16, i16* %SI, align 2
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i16*
  store i16 %8, i16* %11, align 2
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40fdb7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40fe3c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40fda6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xe0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 224
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -225
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
