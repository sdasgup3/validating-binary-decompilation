; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G__0x4ac700_type = type <{ [8 x i8] }>
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
@G__0x4ac700 = global %G__0x4ac700_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_4ad1f0.writeSyntaxElement2Buf_UVLC(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @CompressSpareMBMap(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -184
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 176
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
  %RAX.i323 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 2, i64* %RAX.i323, align 8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i503 = getelementptr inbounds %union.anon, %union.anon* %41, i64 0, i32 0
  store i64 16, i64* %RCX.i503, align 8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i680 = getelementptr inbounds %union.anon, %union.anon* %42, i64 0, i32 0
  store i64 ptrtoint (%G__0x4ac700_type* @G__0x4ac700 to i64), i64* %RDX.i680, align 8
  %RDI.i711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %43 = add i64 %7, -16
  %44 = load i64, i64* %RDI.i711, align 8
  %45 = add i64 %10, 34
  store i64 %45, i64* %3, align 8
  %46 = inttoptr i64 %43 to i64*
  store i64 %44, i64* %46, align 8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i762 = getelementptr inbounds %union.anon, %union.anon* %47, i64 0, i32 0
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -16
  %50 = load i64, i64* %RSI.i762, align 8
  %51 = load i64, i64* %3, align 8
  %52 = add i64 %51, 4
  store i64 %52, i64* %3, align 8
  %53 = inttoptr i64 %49 to i64*
  store i64 %50, i64* %53, align 8
  %54 = load i64, i64* %3, align 8
  %55 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %55, i64* %RSI.i762, align 8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i784 = bitcast %union.anon* %56 to i32*
  %57 = getelementptr inbounds %union.anon, %union.anon* %56, i64 0, i32 0
  %58 = add i64 %55, 60
  %59 = add i64 %54, 12
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %58 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = zext i32 %61 to i64
  store i64 %62, i64* %57, align 8
  %EAX.i796 = bitcast %union.anon* %40 to i32*
  %63 = load i64, i64* %RBP.i, align 8
  %64 = add i64 %63, -136
  %65 = load i32, i32* %EAX.i796, align 4
  %66 = add i64 %54, 18
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %64 to i32*
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %R8D.i784, align 4
  %69 = zext i32 %68 to i64
  %70 = load i64, i64* %3, align 8
  store i64 %69, i64* %RAX.i323, align 8
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -144
  %73 = load i64, i64* %RDX.i680, align 8
  %74 = add i64 %70, 10
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %72 to i64*
  store i64 %73, i64* %75, align 8
  %76 = load i64, i64* %3, align 8
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %78 = load i32, i32* %EAX.i796, align 8
  %79 = sext i32 %78 to i64
  %80 = lshr i64 %79, 32
  store i64 %80, i64* %77, align 8
  %ECX.i854 = bitcast %union.anon* %41 to i32*
  %81 = load i32, i32* %ECX.i854, align 4
  %82 = add i64 %76, 3
  store i64 %82, i64* %3, align 8
  %83 = zext i32 %78 to i64
  %84 = sext i32 %81 to i64
  %85 = shl nuw i64 %80, 32
  %86 = or i64 %85, %83
  %87 = sdiv i64 %86, %84
  %88 = shl i64 %87, 32
  %89 = ashr exact i64 %88, 32
  %90 = icmp eq i64 %87, %89
  br i1 %90, label %93, label %91

; <label>:91:                                     ; preds = %entry
  %92 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %82, %struct.Memory* %2)
  %.pre = load i64, i64* %3, align 8
  %.pre55 = load i32, i32* %EAX.i796, align 4
  br label %routine_idivl__ecx.exit855

; <label>:93:                                     ; preds = %entry
  %94 = srem i64 %86, %84
  %95 = and i64 %87, 4294967295
  store i64 %95, i64* %RAX.i323, align 8
  %96 = and i64 %94, 4294967295
  store i64 %96, i64* %RDX.i680, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %97 = trunc i64 %87 to i32
  br label %routine_idivl__ecx.exit855

routine_idivl__ecx.exit855:                       ; preds = %93, %91
  %98 = phi i32 [ %.pre55, %91 ], [ %97, %93 ]
  %99 = phi i64 [ %.pre, %91 ], [ %82, %93 ]
  %100 = phi %struct.Memory* [ %92, %91 ], [ %2, %93 ]
  %101 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %101, i64* %RSI.i762, align 8
  %102 = add i64 %101, 52
  %103 = add i64 %99, 12
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %102 to i32*
  %105 = load i32, i32* %104, align 4
  %106 = zext i32 %105 to i64
  store i64 %106, i64* %57, align 8
  %107 = load i64, i64* %RBP.i, align 8
  %108 = add i64 %107, -148
  %109 = add i64 %99, 18
  store i64 %109, i64* %3, align 8
  %110 = inttoptr i64 %108 to i32*
  store i32 %98, i32* %110, align 4
  %111 = load i32, i32* %R8D.i784, align 4
  %112 = zext i32 %111 to i64
  %113 = load i64, i64* %3, align 8
  store i64 %112, i64* %RAX.i323, align 8
  %114 = sext i32 %111 to i64
  %115 = lshr i64 %114, 32
  store i64 %115, i64* %77, align 8
  %116 = load i32, i32* %ECX.i854, align 4
  %117 = add i64 %113, 6
  store i64 %117, i64* %3, align 8
  %118 = sext i32 %116 to i64
  %119 = shl nuw i64 %115, 32
  %120 = or i64 %119, %112
  %121 = sdiv i64 %120, %118
  %122 = shl i64 %121, 32
  %123 = ashr exact i64 %122, 32
  %124 = icmp eq i64 %121, %123
  br i1 %124, label %127, label %125

; <label>:125:                                    ; preds = %routine_idivl__ecx.exit855
  %126 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %117, %struct.Memory* %100)
  %.pre56 = load i64, i64* %3, align 8
  %.pre57 = load i32, i32* %EAX.i796, align 4
  br label %routine_idivl__ecx.exit837

; <label>:127:                                    ; preds = %routine_idivl__ecx.exit855
  %128 = srem i64 %120, %118
  %129 = and i64 %121, 4294967295
  store i64 %129, i64* %RAX.i323, align 8
  %130 = and i64 %128, 4294967295
  store i64 %130, i64* %RDX.i680, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %131 = trunc i64 %121 to i32
  br label %routine_idivl__ecx.exit837

routine_idivl__ecx.exit837:                       ; preds = %127, %125
  %132 = phi i32 [ %.pre57, %125 ], [ %131, %127 ]
  %133 = phi i64 [ %.pre56, %125 ], [ %117, %127 ]
  %134 = phi %struct.Memory* [ %126, %125 ], [ %100, %127 ]
  %135 = load i64, i64* %RBP.i, align 8
  %136 = add i64 %135, -148
  %137 = add i64 %133, 7
  store i64 %137, i64* %3, align 8
  %138 = inttoptr i64 %136 to i32*
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = sext i32 %132 to i64
  %142 = mul nsw i64 %141, %140
  %143 = trunc i64 %142 to i32
  %144 = and i64 %142, 4294967295
  store i64 %144, i64* %57, align 8
  %145 = shl i64 %142, 32
  %146 = ashr exact i64 %145, 32
  %147 = icmp ne i64 %146, %142
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %14, align 1
  %149 = and i32 %143, 255
  %150 = tail call i32 @llvm.ctpop.i32(i32 %149)
  %151 = trunc i32 %150 to i8
  %152 = and i8 %151, 1
  %153 = xor i8 %152, 1
  store i8 %153, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  %154 = lshr i32 %143, 31
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %33, align 1
  store i8 %148, i8* %39, align 1
  %156 = add i64 %135, -124
  %157 = trunc i64 %142 to i32
  %158 = add i64 %133, 15
  store i64 %158, i64* %3, align 8
  %159 = inttoptr i64 %156 to i32*
  store i32 %157, i32* %159, align 4
  %160 = load i64, i64* %RBP.i, align 8
  %161 = add i64 %160, -128
  %162 = load i64, i64* %3, align 8
  %163 = add i64 %162, 7
  store i64 %163, i64* %3, align 8
  %164 = inttoptr i64 %161 to i32*
  store i32 0, i32* %164, align 4
  %165 = load i64, i64* %RBP.i, align 8
  %166 = add i64 %165, -88
  %167 = load i64, i64* %3, align 8
  %168 = add i64 %167, 7
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %166 to i32*
  store i32 0, i32* %169, align 4
  %170 = load i64, i64* %RBP.i, align 8
  %171 = add i64 %170, -144
  %172 = load i64, i64* %3, align 8
  %173 = add i64 %172, 7
  store i64 %173, i64* %3, align 8
  %174 = inttoptr i64 %171 to i64*
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %RSI.i762, align 8
  %176 = add i64 %170, -56
  %177 = add i64 %172, 11
  store i64 %177, i64* %3, align 8
  %178 = inttoptr i64 %176 to i64*
  store i64 %175, i64* %178, align 8
  %179 = load i64, i64* %RBP.i, align 8
  %180 = add i64 %179, -28
  %181 = load i64, i64* %3, align 8
  %182 = add i64 %181, 7
  store i64 %182, i64* %3, align 8
  %183 = inttoptr i64 %180 to i32*
  store i32 0, i32* %183, align 4
  %184 = load i64, i64* %RBP.i, align 8
  %185 = add i64 %184, -32
  %186 = load i64, i64* %3, align 8
  %187 = add i64 %186, 7
  store i64 %187, i64* %3, align 8
  %188 = inttoptr i64 %185 to i32*
  store i32 0, i32* %188, align 4
  %189 = load i64, i64* %RBP.i, align 8
  %190 = add i64 %189, -36
  %191 = load i64, i64* %3, align 8
  %192 = add i64 %191, 7
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %190 to i32*
  store i32 1, i32* %193, align 4
  %194 = load i64, i64* %RBP.i, align 8
  %195 = add i64 %194, -32
  %196 = load i64, i64* %3, align 8
  %197 = add i64 %196, 3
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %195 to i32*
  %199 = load i32, i32* %198, align 4
  %200 = zext i32 %199 to i64
  store i64 %200, i64* %RAX.i323, align 8
  %201 = add i64 %194, -40
  %202 = add i64 %196, 6
  store i64 %202, i64* %3, align 8
  %203 = inttoptr i64 %201 to i32*
  store i32 %199, i32* %203, align 4
  %204 = load i64, i64* %3, align 8
  %205 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %205, i64* %RDI.i711, align 8
  %206 = add i64 %205, 52
  %207 = add i64 %204, 11
  store i64 %207, i64* %3, align 8
  %208 = inttoptr i64 %206 to i32*
  %209 = load i32, i32* %208, align 4
  %210 = zext i32 %209 to i64
  store i64 %210, i64* %RAX.i323, align 8
  %211 = sext i32 %209 to i64
  %212 = lshr i64 %211, 32
  store i64 %212, i64* %77, align 8
  %213 = load i32, i32* %ECX.i854, align 4
  %214 = add i64 %204, 14
  store i64 %214, i64* %3, align 8
  %215 = sext i32 %213 to i64
  %216 = shl nuw i64 %212, 32
  %217 = or i64 %216, %210
  %218 = sdiv i64 %217, %215
  %219 = shl i64 %218, 32
  %220 = ashr exact i64 %219, 32
  %221 = icmp eq i64 %218, %220
  br i1 %221, label %224, label %222

; <label>:222:                                    ; preds = %routine_idivl__ecx.exit837
  %223 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %214, %struct.Memory* %134)
  %.pre58 = load i64, i64* %RAX.i323, align 8
  %.pre59 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit794

; <label>:224:                                    ; preds = %routine_idivl__ecx.exit837
  %225 = srem i64 %217, %215
  %226 = and i64 %218, 4294967295
  store i64 %226, i64* %RAX.i323, align 8
  %227 = and i64 %225, 4294967295
  store i64 %227, i64* %RDX.i680, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit794

routine_idivl__ecx.exit794:                       ; preds = %224, %222
  %228 = phi i64 [ %.pre59, %222 ], [ %214, %224 ]
  %229 = phi i64 [ %.pre58, %222 ], [ %226, %224 ]
  %230 = phi %struct.Memory* [ %223, %222 ], [ %134, %224 ]
  %231 = trunc i64 %229 to i32
  %232 = add i32 %231, -1
  %233 = zext i32 %232 to i64
  store i64 %233, i64* %RAX.i323, align 8
  %234 = icmp eq i32 %231, 0
  %235 = zext i1 %234 to i8
  store i8 %235, i8* %14, align 1
  %236 = and i32 %232, 255
  %237 = tail call i32 @llvm.ctpop.i32(i32 %236)
  %238 = trunc i32 %237 to i8
  %239 = and i8 %238, 1
  %240 = xor i8 %239, 1
  store i8 %240, i8* %21, align 1
  %241 = xor i32 %232, %231
  %242 = lshr i32 %241, 4
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  store i8 %244, i8* %27, align 1
  %245 = icmp eq i32 %232, 0
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %30, align 1
  %247 = lshr i32 %232, 31
  %248 = trunc i32 %247 to i8
  store i8 %248, i8* %33, align 1
  %249 = lshr i32 %231, 31
  %250 = xor i32 %247, %249
  %251 = add nuw nsw i32 %250, %249
  %252 = icmp eq i32 %251, 2
  %253 = zext i1 %252 to i8
  store i8 %253, i8* %39, align 1
  %254 = sext i32 %232 to i64
  %255 = lshr i64 %254, 32
  store i64 %255, i64* %77, align 8
  %256 = load i64, i64* %RBP.i, align 8
  %257 = add i64 %256, -136
  %258 = add i64 %228, 11
  store i64 %258, i64* %3, align 8
  %259 = inttoptr i64 %257 to i32*
  %260 = load i32, i32* %259, align 4
  %261 = zext i32 %260 to i64
  store i64 %261, i64* %57, align 8
  %262 = add i64 %228, 14
  store i64 %262, i64* %3, align 8
  %263 = sext i32 %260 to i64
  %264 = shl nuw i64 %255, 32
  %265 = or i64 %264, %233
  %266 = sdiv i64 %265, %263
  %267 = shl i64 %266, 32
  %268 = ashr exact i64 %267, 32
  %269 = icmp eq i64 %266, %268
  br i1 %269, label %272, label %270

; <label>:270:                                    ; preds = %routine_idivl__ecx.exit794
  %271 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %262, %struct.Memory* %230)
  %.pre60 = load i64, i64* %RBP.i, align 8
  %.pre61 = load i32, i32* %EAX.i796, align 4
  %.pre62 = load i64, i64* %3, align 8
  br label %routine_idivl__r8d.exit782

; <label>:272:                                    ; preds = %routine_idivl__ecx.exit794
  %273 = srem i64 %265, %263
  %274 = and i64 %266, 4294967295
  store i64 %274, i64* %RAX.i323, align 8
  %275 = and i64 %273, 4294967295
  store i64 %275, i64* %RDX.i680, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %276 = trunc i64 %266 to i32
  br label %routine_idivl__r8d.exit782

routine_idivl__r8d.exit782:                       ; preds = %272, %270
  %277 = phi i64 [ %.pre62, %270 ], [ %262, %272 ]
  %278 = phi i32 [ %.pre61, %270 ], [ %276, %272 ]
  %279 = phi i64 [ %.pre60, %270 ], [ %256, %272 ]
  %280 = phi %struct.Memory* [ %271, %270 ], [ %230, %272 ]
  %281 = add i64 %279, -92
  %282 = add i64 %277, 3
  store i64 %282, i64* %3, align 8
  %283 = inttoptr i64 %281 to i32*
  store i32 %278, i32* %283, align 4
  %284 = load i64, i64* %3, align 8
  %285 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %285, i64* %RDI.i711, align 8
  %286 = add i64 %285, 60
  %287 = add i64 %284, 11
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %286 to i32*
  %289 = load i32, i32* %288, align 4
  %290 = zext i32 %289 to i64
  store i64 %290, i64* %RAX.i323, align 8
  %291 = sext i32 %289 to i64
  %292 = lshr i64 %291, 32
  store i64 %292, i64* %77, align 8
  %293 = load i32, i32* %ECX.i854, align 4
  %294 = add i64 %284, 14
  store i64 %294, i64* %3, align 8
  %295 = sext i32 %293 to i64
  %296 = shl nuw i64 %292, 32
  %297 = or i64 %296, %290
  %298 = sdiv i64 %297, %295
  %299 = shl i64 %298, 32
  %300 = ashr exact i64 %299, 32
  %301 = icmp eq i64 %298, %300
  br i1 %301, label %304, label %302

; <label>:302:                                    ; preds = %routine_idivl__r8d.exit782
  %303 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %294, %struct.Memory* %280)
  %.pre63 = load i64, i64* %RAX.i323, align 8
  %.pre64 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:304:                                    ; preds = %routine_idivl__r8d.exit782
  %305 = srem i64 %297, %295
  %306 = and i64 %298, 4294967295
  store i64 %306, i64* %RAX.i323, align 8
  %307 = and i64 %305, 4294967295
  store i64 %307, i64* %RDX.i680, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %304, %302
  %308 = phi i64 [ %.pre64, %302 ], [ %294, %304 ]
  %309 = phi i64 [ %.pre63, %302 ], [ %306, %304 ]
  %310 = phi %struct.Memory* [ %303, %302 ], [ %280, %304 ]
  %311 = trunc i64 %309 to i32
  %312 = add i32 %311, -1
  %313 = zext i32 %312 to i64
  store i64 %313, i64* %RAX.i323, align 8
  %314 = icmp eq i32 %311, 0
  %315 = zext i1 %314 to i8
  store i8 %315, i8* %14, align 1
  %316 = and i32 %312, 255
  %317 = tail call i32 @llvm.ctpop.i32(i32 %316)
  %318 = trunc i32 %317 to i8
  %319 = and i8 %318, 1
  %320 = xor i8 %319, 1
  store i8 %320, i8* %21, align 1
  %321 = xor i32 %312, %311
  %322 = lshr i32 %321, 4
  %323 = trunc i32 %322 to i8
  %324 = and i8 %323, 1
  store i8 %324, i8* %27, align 1
  %325 = icmp eq i32 %312, 0
  %326 = zext i1 %325 to i8
  store i8 %326, i8* %30, align 1
  %327 = lshr i32 %312, 31
  %328 = trunc i32 %327 to i8
  store i8 %328, i8* %33, align 1
  %329 = lshr i32 %311, 31
  %330 = xor i32 %327, %329
  %331 = add nuw nsw i32 %330, %329
  %332 = icmp eq i32 %331, 2
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %39, align 1
  %334 = sext i32 %312 to i64
  %335 = lshr i64 %334, 32
  store i64 %335, i64* %77, align 8
  %336 = load i32, i32* %R8D.i784, align 4
  %337 = add i64 %308, 7
  store i64 %337, i64* %3, align 8
  %338 = sext i32 %336 to i64
  %339 = shl nuw i64 %335, 32
  %340 = or i64 %339, %313
  %341 = sdiv i64 %340, %338
  %342 = shl i64 %341, 32
  %343 = ashr exact i64 %342, 32
  %344 = icmp eq i64 %341, %343
  br i1 %344, label %347, label %345

; <label>:345:                                    ; preds = %routine_idivl__ecx.exit
  %346 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %337, %struct.Memory* %310)
  %.pre65 = load i32, i32* %EAX.i796, align 4
  %.pre66 = load i64, i64* %3, align 8
  br label %routine_idivl__r8d.exit

; <label>:347:                                    ; preds = %routine_idivl__ecx.exit
  %348 = srem i64 %340, %338
  %349 = and i64 %341, 4294967295
  store i64 %349, i64* %RAX.i323, align 8
  %350 = and i64 %348, 4294967295
  store i64 %350, i64* %RDX.i680, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %351 = trunc i64 %341 to i32
  br label %routine_idivl__r8d.exit

routine_idivl__r8d.exit:                          ; preds = %347, %345
  %352 = phi i64 [ %.pre66, %345 ], [ %337, %347 ]
  %353 = phi i32 [ %.pre65, %345 ], [ %351, %347 ]
  %354 = phi %struct.Memory* [ %346, %345 ], [ %310, %347 ]
  %355 = load i64, i64* %RBP.i, align 8
  %356 = add i64 %355, -96
  %357 = add i64 %352, 3
  store i64 %357, i64* %3, align 8
  %358 = inttoptr i64 %356 to i32*
  store i32 %353, i32* %358, align 4
  %359 = load i64, i64* %RBP.i, align 8
  %360 = add i64 %359, -92
  %361 = load i64, i64* %3, align 8
  %362 = add i64 %361, 3
  store i64 %362, i64* %3, align 8
  %363 = inttoptr i64 %360 to i32*
  %364 = load i32, i32* %363, align 4
  %365 = zext i32 %364 to i64
  store i64 %365, i64* %RAX.i323, align 8
  %366 = add i64 %359, -104
  %367 = add i64 %361, 6
  store i64 %367, i64* %3, align 8
  %368 = inttoptr i64 %366 to i32*
  store i32 %364, i32* %368, align 4
  %369 = load i64, i64* %RBP.i, align 8
  %370 = add i64 %369, -100
  %371 = load i32, i32* %EAX.i796, align 4
  %372 = load i64, i64* %3, align 8
  %373 = add i64 %372, 3
  store i64 %373, i64* %3, align 8
  %374 = inttoptr i64 %370 to i32*
  store i32 %371, i32* %374, align 4
  %375 = load i64, i64* %RBP.i, align 8
  %376 = add i64 %375, -96
  %377 = load i64, i64* %3, align 8
  %378 = add i64 %377, 3
  store i64 %378, i64* %3, align 8
  %379 = inttoptr i64 %376 to i32*
  %380 = load i32, i32* %379, align 4
  %381 = zext i32 %380 to i64
  store i64 %381, i64* %RAX.i323, align 8
  %382 = add i64 %375, -108
  %383 = add i64 %377, 6
  store i64 %383, i64* %3, align 8
  %384 = inttoptr i64 %382 to i32*
  store i32 %380, i32* %384, align 4
  %385 = load i64, i64* %RBP.i, align 8
  %386 = add i64 %385, -112
  %387 = load i32, i32* %EAX.i796, align 4
  %388 = load i64, i64* %3, align 8
  %389 = add i64 %388, 3
  store i64 %389, i64* %3, align 8
  %390 = inttoptr i64 %386 to i32*
  store i32 %387, i32* %390, align 4
  %391 = load i64, i64* %RBP.i, align 8
  %392 = add i64 %391, -116
  %393 = load i64, i64* %3, align 8
  %394 = add i64 %393, 7
  store i64 %394, i64* %3, align 8
  %395 = inttoptr i64 %392 to i32*
  store i32 0, i32* %395, align 4
  %396 = load i64, i64* %RBP.i, align 8
  %397 = add i64 %396, -120
  %398 = load i64, i64* %3, align 8
  %399 = add i64 %398, 7
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %397 to i32*
  store i32 1, i32* %400, align 4
  %401 = load i64, i64* %RBP.i, align 8
  %402 = add i64 %401, -20
  %403 = load i64, i64* %3, align 8
  %404 = add i64 %403, 7
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %402 to i32*
  store i32 0, i32* %405, align 4
  %ESI.i718 = bitcast %union.anon* %47 to i32*
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_4a020f

block_.L_4a020f:                                  ; preds = %block_.L_4a0585, %routine_idivl__r8d.exit
  %406 = phi i64 [ %.pre67, %routine_idivl__r8d.exit ], [ %2050, %block_.L_4a0585 ]
  %MEMORY.0 = phi %struct.Memory* [ %354, %routine_idivl__r8d.exit ], [ %527, %block_.L_4a0585 ]
  store i64 16, i64* %RAX.i323, align 8
  %407 = load i64, i64* %RBP.i, align 8
  %408 = add i64 %407, -20
  %409 = add i64 %406, 8
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %408 to i32*
  %411 = load i32, i32* %410, align 4
  %412 = zext i32 %411 to i64
  store i64 %412, i64* %RCX.i503, align 8
  %413 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %413, i64* %RDX.i680, align 8
  %414 = add i64 %413, 60
  %415 = add i64 %406, 19
  store i64 %415, i64* %3, align 8
  %416 = inttoptr i64 %414 to i32*
  %417 = load i32, i32* %416, align 4
  %418 = zext i32 %417 to i64
  store i64 %418, i64* %RSI.i762, align 8
  %419 = add i64 %407, -152
  %420 = add i64 %406, 25
  store i64 %420, i64* %3, align 8
  %421 = inttoptr i64 %419 to i32*
  store i32 16, i32* %421, align 4
  %422 = load i32, i32* %ESI.i718, align 4
  %423 = zext i32 %422 to i64
  %424 = load i64, i64* %3, align 8
  store i64 %423, i64* %RAX.i323, align 8
  %425 = sext i32 %422 to i64
  %426 = lshr i64 %425, 32
  store i64 %426, i64* %77, align 8
  %427 = load i64, i64* %RBP.i, align 8
  %428 = add i64 %427, -152
  %429 = add i64 %424, 9
  store i64 %429, i64* %3, align 8
  %430 = inttoptr i64 %428 to i32*
  %431 = load i32, i32* %430, align 4
  %432 = zext i32 %431 to i64
  store i64 %432, i64* %RSI.i762, align 8
  %433 = add i64 %424, 11
  store i64 %433, i64* %3, align 8
  %434 = sext i32 %431 to i64
  %435 = shl nuw i64 %426, 32
  %436 = or i64 %435, %423
  %437 = sdiv i64 %436, %434
  %438 = shl i64 %437, 32
  %439 = ashr exact i64 %438, 32
  %440 = icmp eq i64 %437, %439
  br i1 %440, label %443, label %441

; <label>:441:                                    ; preds = %block_.L_4a020f
  %442 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %433, %struct.Memory* %MEMORY.0)
  %.pre68 = load i32, i32* %EAX.i796, align 4
  %.pre69 = load i64, i64* %3, align 8
  %.pre70 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit709

; <label>:443:                                    ; preds = %block_.L_4a020f
  %444 = srem i64 %436, %434
  %445 = and i64 %437, 4294967295
  store i64 %445, i64* %RAX.i323, align 8
  %446 = and i64 %444, 4294967295
  store i64 %446, i64* %RDX.i680, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %447 = trunc i64 %437 to i32
  br label %routine_idivl__esi.exit709

routine_idivl__esi.exit709:                       ; preds = %443, %441
  %448 = phi i64 [ %.pre70, %441 ], [ %427, %443 ]
  %449 = phi i64 [ %.pre69, %441 ], [ %433, %443 ]
  %450 = phi i32 [ %.pre68, %441 ], [ %447, %443 ]
  %451 = phi %struct.Memory* [ %442, %441 ], [ %MEMORY.0, %443 ]
  %452 = load i32, i32* %ECX.i854, align 4
  %453 = sub i32 %452, %450
  %454 = icmp ult i32 %452, %450
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %14, align 1
  %456 = and i32 %453, 255
  %457 = tail call i32 @llvm.ctpop.i32(i32 %456)
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  %460 = xor i8 %459, 1
  store i8 %460, i8* %21, align 1
  %461 = xor i32 %450, %452
  %462 = xor i32 %461, %453
  %463 = lshr i32 %462, 4
  %464 = trunc i32 %463 to i8
  %465 = and i8 %464, 1
  store i8 %465, i8* %27, align 1
  %466 = icmp eq i32 %453, 0
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %30, align 1
  %468 = lshr i32 %453, 31
  %469 = trunc i32 %468 to i8
  store i8 %469, i8* %33, align 1
  %470 = lshr i32 %452, 31
  %471 = lshr i32 %450, 31
  %472 = xor i32 %471, %470
  %473 = xor i32 %468, %470
  %474 = add nuw nsw i32 %473, %472
  %475 = icmp eq i32 %474, 2
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %39, align 1
  %477 = icmp ne i8 %469, 0
  %478 = xor i1 %477, %475
  %.v = select i1 %478, i64 8, i64 869
  %479 = add i64 %449, %.v
  store i64 %479, i64* %3, align 8
  br i1 %478, label %block_4a023b, label %block_.L_4a0598

block_4a023b:                                     ; preds = %routine_idivl__esi.exit709
  %480 = add i64 %448, -24
  %481 = add i64 %479, 7
  store i64 %481, i64* %3, align 8
  %482 = inttoptr i64 %480 to i32*
  store i32 0, i32* %482, align 4
  %.pre84 = load i64, i64* %3, align 8
  br label %block_.L_4a0242

block_.L_4a0242:                                  ; preds = %block_.L_4a0572, %block_4a023b
  %483 = phi i64 [ %.pre84, %block_4a023b ], [ %2020, %block_.L_4a0572 ]
  %MEMORY.1 = phi %struct.Memory* [ %451, %block_4a023b ], [ %MEMORY.21, %block_.L_4a0572 ]
  store i64 16, i64* %RAX.i323, align 8
  %484 = load i64, i64* %RBP.i, align 8
  %485 = add i64 %484, -24
  %486 = add i64 %483, 8
  store i64 %486, i64* %3, align 8
  %487 = inttoptr i64 %485 to i32*
  %488 = load i32, i32* %487, align 4
  %489 = zext i32 %488 to i64
  store i64 %489, i64* %RCX.i503, align 8
  %490 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %490, i64* %RDX.i680, align 8
  %491 = add i64 %490, 52
  %492 = add i64 %483, 19
  store i64 %492, i64* %3, align 8
  %493 = inttoptr i64 %491 to i32*
  %494 = load i32, i32* %493, align 4
  %495 = zext i32 %494 to i64
  store i64 %495, i64* %RSI.i762, align 8
  %496 = add i64 %484, -156
  %497 = add i64 %483, 25
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %496 to i32*
  store i32 16, i32* %498, align 4
  %499 = load i32, i32* %ESI.i718, align 4
  %500 = zext i32 %499 to i64
  %501 = load i64, i64* %3, align 8
  store i64 %500, i64* %RAX.i323, align 8
  %502 = sext i32 %499 to i64
  %503 = lshr i64 %502, 32
  store i64 %503, i64* %77, align 8
  %504 = load i64, i64* %RBP.i, align 8
  %505 = add i64 %504, -156
  %506 = add i64 %501, 9
  store i64 %506, i64* %3, align 8
  %507 = inttoptr i64 %505 to i32*
  %508 = load i32, i32* %507, align 4
  %509 = zext i32 %508 to i64
  store i64 %509, i64* %RSI.i762, align 8
  %510 = add i64 %501, 11
  store i64 %510, i64* %3, align 8
  %511 = sext i32 %508 to i64
  %512 = shl nuw i64 %503, 32
  %513 = or i64 %512, %500
  %514 = sdiv i64 %513, %511
  %515 = shl i64 %514, 32
  %516 = ashr exact i64 %515, 32
  %517 = icmp eq i64 %514, %516
  br i1 %517, label %520, label %518

; <label>:518:                                    ; preds = %block_.L_4a0242
  %519 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %510, %struct.Memory* %MEMORY.1)
  %.pre85 = load i32, i32* %EAX.i796, align 4
  %.pre86 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit678

; <label>:520:                                    ; preds = %block_.L_4a0242
  %521 = srem i64 %513, %511
  %522 = and i64 %514, 4294967295
  store i64 %522, i64* %RAX.i323, align 8
  %523 = and i64 %521, 4294967295
  store i64 %523, i64* %RDX.i680, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %524 = trunc i64 %514 to i32
  br label %routine_idivl__esi.exit678

routine_idivl__esi.exit678:                       ; preds = %520, %518
  %525 = phi i64 [ %.pre86, %518 ], [ %510, %520 ]
  %526 = phi i32 [ %.pre85, %518 ], [ %524, %520 ]
  %527 = phi %struct.Memory* [ %519, %518 ], [ %MEMORY.1, %520 ]
  %528 = load i32, i32* %ECX.i854, align 4
  %529 = sub i32 %528, %526
  %530 = icmp ult i32 %528, %526
  %531 = zext i1 %530 to i8
  store i8 %531, i8* %14, align 1
  %532 = and i32 %529, 255
  %533 = tail call i32 @llvm.ctpop.i32(i32 %532)
  %534 = trunc i32 %533 to i8
  %535 = and i8 %534, 1
  %536 = xor i8 %535, 1
  store i8 %536, i8* %21, align 1
  %537 = xor i32 %526, %528
  %538 = xor i32 %537, %529
  %539 = lshr i32 %538, 4
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  store i8 %541, i8* %27, align 1
  %542 = icmp eq i32 %529, 0
  %543 = zext i1 %542 to i8
  store i8 %543, i8* %30, align 1
  %544 = lshr i32 %529, 31
  %545 = trunc i32 %544 to i8
  store i8 %545, i8* %33, align 1
  %546 = lshr i32 %528, 31
  %547 = lshr i32 %526, 31
  %548 = xor i32 %547, %546
  %549 = xor i32 %544, %546
  %550 = add nuw nsw i32 %549, %548
  %551 = icmp eq i32 %550, 2
  %552 = zext i1 %551 to i8
  store i8 %552, i8* %39, align 1
  %553 = icmp ne i8 %545, 0
  %554 = xor i1 %553, %551
  %.v104 = select i1 %554, i64 8, i64 799
  %555 = add i64 %525, %.v104
  store i64 %555, i64* %3, align 8
  %556 = load i64, i64* %RBP.i, align 8
  br i1 %554, label %block_4a026e, label %block_.L_4a0585

block_4a026e:                                     ; preds = %routine_idivl__esi.exit678
  %557 = add i64 %556, -8
  %558 = add i64 %555, 4
  store i64 %558, i64* %3, align 8
  %559 = inttoptr i64 %557 to i64*
  %560 = load i64, i64* %559, align 8
  store i64 %560, i64* %RAX.i323, align 8
  %561 = add i64 %556, -96
  %562 = add i64 %555, 8
  store i64 %562, i64* %3, align 8
  %563 = inttoptr i64 %561 to i32*
  %564 = load i32, i32* %563, align 4
  %565 = sext i32 %564 to i64
  store i64 %565, i64* %RCX.i503, align 8
  %566 = shl nsw i64 %565, 3
  %567 = add i64 %566, %560
  %568 = add i64 %555, 12
  store i64 %568, i64* %3, align 8
  %569 = inttoptr i64 %567 to i64*
  %570 = load i64, i64* %569, align 8
  store i64 %570, i64* %RAX.i323, align 8
  %571 = add i64 %556, -92
  %572 = add i64 %555, 16
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %571 to i32*
  %574 = load i32, i32* %573, align 4
  %575 = sext i32 %574 to i64
  store i64 %575, i64* %RCX.i503, align 8
  %576 = add i64 %570, %575
  %577 = add i64 %555, 20
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %576 to i8*
  %579 = load i8, i8* %578, align 1
  %580 = zext i8 %579 to i64
  store i64 %580, i64* %RDX.i680, align 8
  %581 = zext i8 %579 to i32
  %582 = add i64 %556, -40
  %583 = add i64 %555, 23
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %582 to i32*
  %585 = load i32, i32* %584, align 4
  %586 = sub i32 %581, %585
  %587 = icmp ult i32 %581, %585
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %14, align 1
  %589 = and i32 %586, 255
  %590 = tail call i32 @llvm.ctpop.i32(i32 %589)
  %591 = trunc i32 %590 to i8
  %592 = and i8 %591, 1
  %593 = xor i8 %592, 1
  store i8 %593, i8* %21, align 1
  %594 = xor i32 %585, %581
  %595 = xor i32 %594, %586
  %596 = lshr i32 %595, 4
  %597 = trunc i32 %596 to i8
  %598 = and i8 %597, 1
  store i8 %598, i8* %27, align 1
  %599 = icmp eq i32 %586, 0
  %600 = zext i1 %599 to i8
  store i8 %600, i8* %30, align 1
  %601 = lshr i32 %586, 31
  %602 = trunc i32 %601 to i8
  store i8 %602, i8* %33, align 1
  %603 = lshr i32 %585, 31
  %604 = add nuw nsw i32 %601, %603
  %605 = icmp eq i32 %604, 2
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %39, align 1
  %.v105 = select i1 %599, i64 29, i64 43
  %607 = add i64 %555, %.v105
  store i64 %607, i64* %3, align 8
  br i1 %599, label %block_4a028b, label %block_.L_4a0299

block_4a028b:                                     ; preds = %block_4a026e
  %608 = add i64 %556, -28
  %609 = add i64 %607, 3
  store i64 %609, i64* %3, align 8
  %610 = inttoptr i64 %608 to i32*
  %611 = load i32, i32* %610, align 4
  %612 = add i32 %611, 1
  %613 = zext i32 %612 to i64
  store i64 %613, i64* %RAX.i323, align 8
  %614 = icmp eq i32 %611, -1
  %615 = icmp eq i32 %612, 0
  %616 = or i1 %614, %615
  %617 = zext i1 %616 to i8
  store i8 %617, i8* %14, align 1
  %618 = and i32 %612, 255
  %619 = tail call i32 @llvm.ctpop.i32(i32 %618)
  %620 = trunc i32 %619 to i8
  %621 = and i8 %620, 1
  %622 = xor i8 %621, 1
  store i8 %622, i8* %21, align 1
  %623 = xor i32 %612, %611
  %624 = lshr i32 %623, 4
  %625 = trunc i32 %624 to i8
  %626 = and i8 %625, 1
  store i8 %626, i8* %27, align 1
  %627 = zext i1 %615 to i8
  store i8 %627, i8* %30, align 1
  %628 = lshr i32 %612, 31
  %629 = trunc i32 %628 to i8
  store i8 %629, i8* %33, align 1
  %630 = lshr i32 %611, 31
  %631 = xor i32 %628, %630
  %632 = add nuw nsw i32 %631, %628
  %633 = icmp eq i32 %632, 2
  %634 = zext i1 %633 to i8
  store i8 %634, i8* %39, align 1
  %635 = add i64 %607, 9
  store i64 %635, i64* %3, align 8
  store i32 %612, i32* %610, align 4
  %636 = load i64, i64* %3, align 8
  %637 = add i64 %636, 37
  store i64 %637, i64* %3, align 8
  br label %block_.L_4a02b9

block_.L_4a0299:                                  ; preds = %block_4a026e
  %638 = add i64 %556, -88
  store i64 %638, i64* %RDI.i711, align 8
  %639 = add i64 %556, -28
  %640 = add i64 %607, 7
  store i64 %640, i64* %3, align 8
  %641 = inttoptr i64 %639 to i32*
  %642 = load i32, i32* %641, align 4
  %643 = zext i32 %642 to i64
  store i64 %643, i64* %RAX.i323, align 8
  %644 = add i64 %556, -84
  %645 = add i64 %607, 10
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %644 to i32*
  store i32 %642, i32* %646, align 4
  %647 = load i64, i64* %RBP.i, align 8
  %648 = add i64 %647, -16
  %649 = load i64, i64* %3, align 8
  %650 = add i64 %649, 4
  store i64 %650, i64* %3, align 8
  %651 = inttoptr i64 %648 to i64*
  %652 = load i64, i64* %651, align 8
  store i64 %652, i64* %RSI.i762, align 8
  %653 = add i64 %649, 53069
  %654 = add i64 %649, 9
  %655 = load i64, i64* %6, align 8
  %656 = add i64 %655, -8
  %657 = inttoptr i64 %656 to i64*
  store i64 %654, i64* %657, align 8
  store i64 %656, i64* %6, align 8
  store i64 %653, i64* %3, align 8
  %call2_4a02a7 = tail call %struct.Memory* @sub_4ad1f0.writeSyntaxElement2Buf_UVLC(%struct.State* nonnull %0, i64 %653, %struct.Memory* %527)
  %658 = load i64, i64* %RAX.i323, align 8
  %659 = load i64, i64* %RBP.i, align 8
  %660 = add i64 %659, -128
  %661 = load i64, i64* %3, align 8
  %662 = add i64 %661, 3
  store i64 %662, i64* %3, align 8
  %663 = trunc i64 %658 to i32
  %664 = inttoptr i64 %660 to i32*
  %665 = load i32, i32* %664, align 4
  %666 = add i32 %665, %663
  %667 = zext i32 %666 to i64
  store i64 %667, i64* %RAX.i323, align 8
  %668 = icmp ult i32 %666, %663
  %669 = icmp ult i32 %666, %665
  %670 = or i1 %668, %669
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %14, align 1
  %672 = and i32 %666, 255
  %673 = tail call i32 @llvm.ctpop.i32(i32 %672)
  %674 = trunc i32 %673 to i8
  %675 = and i8 %674, 1
  %676 = xor i8 %675, 1
  store i8 %676, i8* %21, align 1
  %677 = xor i32 %665, %663
  %678 = xor i32 %677, %666
  %679 = lshr i32 %678, 4
  %680 = trunc i32 %679 to i8
  %681 = and i8 %680, 1
  store i8 %681, i8* %27, align 1
  %682 = icmp eq i32 %666, 0
  %683 = zext i1 %682 to i8
  store i8 %683, i8* %30, align 1
  %684 = lshr i32 %666, 31
  %685 = trunc i32 %684 to i8
  store i8 %685, i8* %33, align 1
  %686 = lshr i32 %663, 31
  %687 = lshr i32 %665, 31
  %688 = xor i32 %684, %686
  %689 = xor i32 %684, %687
  %690 = add nuw nsw i32 %688, %689
  %691 = icmp eq i32 %690, 2
  %692 = zext i1 %691 to i8
  store i8 %692, i8* %39, align 1
  %693 = add i64 %661, 6
  store i64 %693, i64* %3, align 8
  store i32 %666, i32* %664, align 4
  %694 = load i64, i64* %RBP.i, align 8
  %695 = add i64 %694, -28
  %696 = load i64, i64* %3, align 8
  %697 = add i64 %696, 7
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %695 to i32*
  store i32 0, i32* %698, align 4
  %.pre87 = load i64, i64* %3, align 8
  br label %block_.L_4a02b9

block_.L_4a02b9:                                  ; preds = %block_.L_4a0299, %block_4a028b
  %699 = phi i64 [ %.pre87, %block_.L_4a0299 ], [ %637, %block_4a028b ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_4a02a7, %block_.L_4a0299 ], [ %527, %block_4a028b ]
  %700 = load i64, i64* %RBP.i, align 8
  %701 = add i64 %700, -116
  %702 = add i64 %699, 4
  store i64 %702, i64* %3, align 8
  %703 = inttoptr i64 %701 to i32*
  %704 = load i32, i32* %703, align 4
  %705 = add i32 %704, 1
  %706 = icmp ne i32 %704, -1
  %707 = zext i1 %706 to i8
  store i8 %707, i8* %14, align 1
  %708 = and i32 %705, 255
  %709 = tail call i32 @llvm.ctpop.i32(i32 %708)
  %710 = trunc i32 %709 to i8
  %711 = and i8 %710, 1
  %712 = xor i8 %711, 1
  store i8 %712, i8* %21, align 1
  %713 = xor i32 %704, 16
  %714 = xor i32 %713, %705
  %715 = lshr i32 %714, 4
  %716 = trunc i32 %715 to i8
  %717 = and i8 %716, 1
  store i8 %717, i8* %27, align 1
  %718 = icmp eq i32 %705, 0
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %30, align 1
  %720 = lshr i32 %705, 31
  %721 = trunc i32 %720 to i8
  store i8 %721, i8* %33, align 1
  %722 = lshr i32 %704, 31
  %723 = xor i32 %722, 1
  %724 = xor i32 %720, %722
  %725 = add nuw nsw i32 %724, %723
  %726 = icmp eq i32 %725, 2
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %39, align 1
  %.v106 = select i1 %718, i64 10, i64 152
  %728 = add i64 %699, %.v106
  store i64 %728, i64* %3, align 8
  br i1 %718, label %block_4a02c3, label %block_.L_4a0351

block_4a02c3:                                     ; preds = %block_.L_4a02b9
  %729 = add i64 %700, -120
  %730 = add i64 %728, 4
  store i64 %730, i64* %3, align 8
  %731 = inttoptr i64 %729 to i32*
  %732 = load i32, i32* %731, align 4
  store i8 0, i8* %14, align 1
  %733 = and i32 %732, 255
  %734 = tail call i32 @llvm.ctpop.i32(i32 %733)
  %735 = trunc i32 %734 to i8
  %736 = and i8 %735, 1
  %737 = xor i8 %736, 1
  store i8 %737, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %738 = icmp eq i32 %732, 0
  %739 = zext i1 %738 to i8
  store i8 %739, i8* %30, align 1
  %740 = lshr i32 %732, 31
  %741 = trunc i32 %740 to i8
  store i8 %741, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v122 = select i1 %738, i64 10, i64 142
  %742 = add i64 %728, %.v122
  store i64 %742, i64* %3, align 8
  br i1 %738, label %block_4a02cd, label %block_.L_4a0351

block_4a02cd:                                     ; preds = %block_4a02c3
  %743 = add i64 %700, -92
  %744 = add i64 %742, 3
  store i64 %744, i64* %3, align 8
  %745 = inttoptr i64 %743 to i32*
  %746 = load i32, i32* %745, align 4
  %747 = zext i32 %746 to i64
  store i64 %747, i64* %RAX.i323, align 8
  %748 = add i64 %700, -100
  %749 = add i64 %742, 6
  store i64 %749, i64* %3, align 8
  %750 = inttoptr i64 %748 to i32*
  %751 = load i32, i32* %750, align 4
  %752 = sub i32 %746, %751
  %753 = icmp ult i32 %746, %751
  %754 = zext i1 %753 to i8
  store i8 %754, i8* %14, align 1
  %755 = and i32 %752, 255
  %756 = tail call i32 @llvm.ctpop.i32(i32 %755)
  %757 = trunc i32 %756 to i8
  %758 = and i8 %757, 1
  %759 = xor i8 %758, 1
  store i8 %759, i8* %21, align 1
  %760 = xor i32 %751, %746
  %761 = xor i32 %760, %752
  %762 = lshr i32 %761, 4
  %763 = trunc i32 %762 to i8
  %764 = and i8 %763, 1
  store i8 %764, i8* %27, align 1
  %765 = icmp eq i32 %752, 0
  %766 = zext i1 %765 to i8
  store i8 %766, i8* %30, align 1
  %767 = lshr i32 %752, 31
  %768 = trunc i32 %767 to i8
  store i8 %768, i8* %33, align 1
  %769 = lshr i32 %746, 31
  %770 = lshr i32 %751, 31
  %771 = xor i32 %770, %769
  %772 = xor i32 %767, %769
  %773 = add nuw nsw i32 %772, %771
  %774 = icmp eq i32 %773, 2
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %39, align 1
  %776 = icmp ne i8 %768, 0
  %777 = xor i1 %776, %774
  %778 = or i1 %765, %777
  %.v123 = select i1 %778, i64 26, i64 12
  %779 = add i64 %742, %.v123
  store i64 %779, i64* %3, align 8
  br i1 %778, label %block_.L_4a02e7, label %block_4a02d9

block_4a02d9:                                     ; preds = %block_4a02cd
  %780 = add i64 %779, 3
  store i64 %780, i64* %3, align 8
  %781 = load i32, i32* %745, align 4
  %782 = add i32 %781, -1
  %783 = zext i32 %782 to i64
  store i64 %783, i64* %RAX.i323, align 8
  %784 = icmp ne i32 %781, 0
  %785 = zext i1 %784 to i8
  store i8 %785, i8* %14, align 1
  %786 = and i32 %782, 255
  %787 = tail call i32 @llvm.ctpop.i32(i32 %786)
  %788 = trunc i32 %787 to i8
  %789 = and i8 %788, 1
  %790 = xor i8 %789, 1
  store i8 %790, i8* %21, align 1
  %791 = xor i32 %781, 16
  %792 = xor i32 %791, %782
  %793 = lshr i32 %792, 4
  %794 = trunc i32 %793 to i8
  %795 = and i8 %794, 1
  store i8 %795, i8* %27, align 1
  %796 = icmp eq i32 %782, 0
  %797 = zext i1 %796 to i8
  store i8 %797, i8* %30, align 1
  %798 = lshr i32 %782, 31
  %799 = trunc i32 %798 to i8
  store i8 %799, i8* %33, align 1
  %800 = lshr i32 %781, 31
  %801 = xor i32 %798, %800
  %802 = xor i32 %798, 1
  %803 = add nuw nsw i32 %801, %802
  %804 = icmp eq i32 %803, 2
  %805 = zext i1 %804 to i8
  store i8 %805, i8* %39, align 1
  %806 = add i64 %779, 9
  store i64 %806, i64* %3, align 8
  store i32 %782, i32* %745, align 4
  %807 = load i64, i64* %3, align 8
  %808 = add i64 %807, 106
  br label %block_.L_4a034c

block_.L_4a02e7:                                  ; preds = %block_4a02cd
  %809 = add i64 %779, 4
  store i64 %809, i64* %3, align 8
  %810 = load i32, i32* %745, align 4
  store i8 0, i8* %14, align 1
  %811 = and i32 %810, 255
  %812 = tail call i32 @llvm.ctpop.i32(i32 %811)
  %813 = trunc i32 %812 to i8
  %814 = and i8 %813, 1
  %815 = xor i8 %814, 1
  store i8 %815, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %816 = icmp eq i32 %810, 0
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %30, align 1
  %818 = lshr i32 %810, 31
  %819 = trunc i32 %818 to i8
  store i8 %819, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v124 = select i1 %816, i64 10, i64 47
  %820 = add i64 %779, %.v124
  store i64 %820, i64* %3, align 8
  br i1 %816, label %block_4a02f1, label %block_.L_4a0316

block_4a02f1:                                     ; preds = %block_.L_4a02e7
  %821 = add i64 %700, -108
  %822 = add i64 %820, 3
  store i64 %822, i64* %3, align 8
  %823 = inttoptr i64 %821 to i32*
  %824 = load i32, i32* %823, align 4
  %825 = add i32 %824, 1
  %826 = zext i32 %825 to i64
  store i64 %826, i64* %RAX.i323, align 8
  %827 = icmp eq i32 %824, -1
  %828 = icmp eq i32 %825, 0
  %829 = or i1 %827, %828
  %830 = zext i1 %829 to i8
  store i8 %830, i8* %14, align 1
  %831 = and i32 %825, 255
  %832 = tail call i32 @llvm.ctpop.i32(i32 %831)
  %833 = trunc i32 %832 to i8
  %834 = and i8 %833, 1
  %835 = xor i8 %834, 1
  store i8 %835, i8* %21, align 1
  %836 = xor i32 %825, %824
  %837 = lshr i32 %836, 4
  %838 = trunc i32 %837 to i8
  %839 = and i8 %838, 1
  store i8 %839, i8* %27, align 1
  %840 = zext i1 %828 to i8
  store i8 %840, i8* %30, align 1
  %841 = lshr i32 %825, 31
  %842 = trunc i32 %841 to i8
  store i8 %842, i8* %33, align 1
  %843 = lshr i32 %824, 31
  %844 = xor i32 %841, %843
  %845 = add nuw nsw i32 %844, %841
  %846 = icmp eq i32 %845, 2
  %847 = zext i1 %846 to i8
  store i8 %847, i8* %39, align 1
  %848 = add i64 %700, -96
  %849 = add i64 %820, 9
  store i64 %849, i64* %3, align 8
  %850 = inttoptr i64 %848 to i32*
  store i32 %825, i32* %850, align 4
  %851 = load i64, i64* %RBP.i, align 8
  %852 = add i64 %851, -108
  %853 = load i64, i64* %3, align 8
  %854 = add i64 %853, 3
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %852 to i32*
  %856 = load i32, i32* %855, align 4
  %857 = add i32 %856, 1
  %858 = zext i32 %857 to i64
  store i64 %858, i64* %RAX.i323, align 8
  %859 = icmp eq i32 %856, -1
  %860 = icmp eq i32 %857, 0
  %861 = or i1 %859, %860
  %862 = zext i1 %861 to i8
  store i8 %862, i8* %14, align 1
  %863 = and i32 %857, 255
  %864 = tail call i32 @llvm.ctpop.i32(i32 %863)
  %865 = trunc i32 %864 to i8
  %866 = and i8 %865, 1
  %867 = xor i8 %866, 1
  store i8 %867, i8* %21, align 1
  %868 = xor i32 %857, %856
  %869 = lshr i32 %868, 4
  %870 = trunc i32 %869 to i8
  %871 = and i8 %870, 1
  store i8 %871, i8* %27, align 1
  %872 = zext i1 %860 to i8
  store i8 %872, i8* %30, align 1
  %873 = lshr i32 %857, 31
  %874 = trunc i32 %873 to i8
  store i8 %874, i8* %33, align 1
  %875 = lshr i32 %856, 31
  %876 = xor i32 %873, %875
  %877 = add nuw nsw i32 %876, %873
  %878 = icmp eq i32 %877, 2
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %39, align 1
  %880 = add i64 %853, 9
  store i64 %880, i64* %3, align 8
  store i32 %857, i32* %855, align 4
  %881 = load i64, i64* %RBP.i, align 8
  %882 = add i64 %881, -116
  %883 = load i64, i64* %3, align 8
  %884 = add i64 %883, 7
  store i64 %884, i64* %3, align 8
  %885 = inttoptr i64 %882 to i32*
  store i32 1, i32* %885, align 4
  %886 = load i64, i64* %RBP.i, align 8
  %887 = add i64 %886, -120
  %888 = load i64, i64* %3, align 8
  %889 = add i64 %888, 7
  store i64 %889, i64* %3, align 8
  %890 = inttoptr i64 %887 to i32*
  store i32 0, i32* %890, align 4
  %891 = load i64, i64* %3, align 8
  %892 = add i64 %891, 54
  br label %block_.L_4a0347

block_.L_4a0316:                                  ; preds = %block_.L_4a02e7
  %893 = add i64 %820, 3
  store i64 %893, i64* %3, align 8
  %894 = load i32, i32* %745, align 4
  %895 = zext i32 %894 to i64
  store i64 %895, i64* %RAX.i323, align 8
  %896 = add i64 %820, 6
  store i64 %896, i64* %3, align 8
  %897 = load i32, i32* %750, align 4
  %898 = sub i32 %894, %897
  %899 = icmp ult i32 %894, %897
  %900 = zext i1 %899 to i8
  store i8 %900, i8* %14, align 1
  %901 = and i32 %898, 255
  %902 = tail call i32 @llvm.ctpop.i32(i32 %901)
  %903 = trunc i32 %902 to i8
  %904 = and i8 %903, 1
  %905 = xor i8 %904, 1
  store i8 %905, i8* %21, align 1
  %906 = xor i32 %897, %894
  %907 = xor i32 %906, %898
  %908 = lshr i32 %907, 4
  %909 = trunc i32 %908 to i8
  %910 = and i8 %909, 1
  store i8 %910, i8* %27, align 1
  %911 = icmp eq i32 %898, 0
  %912 = zext i1 %911 to i8
  store i8 %912, i8* %30, align 1
  %913 = lshr i32 %898, 31
  %914 = trunc i32 %913 to i8
  store i8 %914, i8* %33, align 1
  %915 = lshr i32 %894, 31
  %916 = lshr i32 %897, 31
  %917 = xor i32 %916, %915
  %918 = xor i32 %913, %915
  %919 = add nuw nsw i32 %918, %917
  %920 = icmp eq i32 %919, 2
  %921 = zext i1 %920 to i8
  store i8 %921, i8* %39, align 1
  %.v125 = select i1 %911, i64 12, i64 44
  %922 = add i64 %820, %.v125
  store i64 %922, i64* %3, align 8
  br i1 %911, label %block_4a0322, label %block_.L_4a0342

block_4a0322:                                     ; preds = %block_.L_4a0316
  %923 = add i64 %922, 3
  store i64 %923, i64* %3, align 8
  %924 = load i32, i32* %745, align 4
  %925 = add i32 %924, -1
  %926 = zext i32 %925 to i64
  store i64 %926, i64* %RAX.i323, align 8
  %927 = icmp ne i32 %924, 0
  %928 = zext i1 %927 to i8
  store i8 %928, i8* %14, align 1
  %929 = and i32 %925, 255
  %930 = tail call i32 @llvm.ctpop.i32(i32 %929)
  %931 = trunc i32 %930 to i8
  %932 = and i8 %931, 1
  %933 = xor i8 %932, 1
  store i8 %933, i8* %21, align 1
  %934 = xor i32 %924, 16
  %935 = xor i32 %934, %925
  %936 = lshr i32 %935, 4
  %937 = trunc i32 %936 to i8
  %938 = and i8 %937, 1
  store i8 %938, i8* %27, align 1
  %939 = icmp eq i32 %925, 0
  %940 = zext i1 %939 to i8
  store i8 %940, i8* %30, align 1
  %941 = lshr i32 %925, 31
  %942 = trunc i32 %941 to i8
  store i8 %942, i8* %33, align 1
  %943 = lshr i32 %924, 31
  %944 = xor i32 %941, %943
  %945 = xor i32 %941, 1
  %946 = add nuw nsw i32 %944, %945
  %947 = icmp eq i32 %946, 2
  %948 = zext i1 %947 to i8
  store i8 %948, i8* %39, align 1
  %949 = add i64 %922, 9
  store i64 %949, i64* %3, align 8
  store i32 %925, i32* %745, align 4
  %950 = load i64, i64* %RBP.i, align 8
  %951 = add i64 %950, -100
  %952 = load i64, i64* %3, align 8
  %953 = add i64 %952, 3
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %951 to i32*
  %955 = load i32, i32* %954, align 4
  %956 = add i32 %955, -1
  %957 = zext i32 %956 to i64
  store i64 %957, i64* %RAX.i323, align 8
  %958 = icmp ne i32 %955, 0
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
  store i8 %969, i8* %27, align 1
  %970 = icmp eq i32 %956, 0
  %971 = zext i1 %970 to i8
  store i8 %971, i8* %30, align 1
  %972 = lshr i32 %956, 31
  %973 = trunc i32 %972 to i8
  store i8 %973, i8* %33, align 1
  %974 = lshr i32 %955, 31
  %975 = xor i32 %972, %974
  %976 = xor i32 %972, 1
  %977 = add nuw nsw i32 %975, %976
  %978 = icmp eq i32 %977, 2
  %979 = zext i1 %978 to i8
  store i8 %979, i8* %39, align 1
  %980 = add i64 %952, 9
  store i64 %980, i64* %3, align 8
  store i32 %956, i32* %954, align 4
  %981 = load i64, i64* %RBP.i, align 8
  %982 = add i64 %981, -116
  %983 = load i64, i64* %3, align 8
  %984 = add i64 %983, 7
  store i64 %984, i64* %3, align 8
  %985 = inttoptr i64 %982 to i32*
  store i32 0, i32* %985, align 4
  %986 = load i64, i64* %RBP.i, align 8
  %987 = add i64 %986, -120
  %988 = load i64, i64* %3, align 8
  %989 = add i64 %988, 7
  store i64 %989, i64* %3, align 8
  %990 = inttoptr i64 %987 to i32*
  store i32 1, i32* %990, align 4
  %.pre88 = load i64, i64* %3, align 8
  br label %block_.L_4a0342

block_.L_4a0342:                                  ; preds = %block_.L_4a0316, %block_4a0322
  %991 = phi i64 [ %.pre88, %block_4a0322 ], [ %922, %block_.L_4a0316 ]
  %992 = add i64 %991, 5
  store i64 %992, i64* %3, align 8
  br label %block_.L_4a0347

block_.L_4a0347:                                  ; preds = %block_.L_4a0342, %block_4a02f1
  %storemerge30 = phi i64 [ %892, %block_4a02f1 ], [ %992, %block_.L_4a0342 ]
  %993 = add i64 %storemerge30, 5
  store i64 %993, i64* %3, align 8
  br label %block_.L_4a034c

block_.L_4a034c:                                  ; preds = %block_.L_4a0347, %block_4a02d9
  %storemerge = phi i64 [ %808, %block_4a02d9 ], [ %993, %block_.L_4a0347 ]
  %994 = add i64 %storemerge, 550
  br label %block_.L_4a0572

block_.L_4a0351:                                  ; preds = %block_4a02c3, %block_.L_4a02b9
  %995 = phi i64 [ %742, %block_4a02c3 ], [ %728, %block_.L_4a02b9 ]
  %996 = add i64 %995, 4
  store i64 %996, i64* %3, align 8
  %997 = load i32, i32* %703, align 4
  %998 = add i32 %997, -1
  %999 = icmp eq i32 %997, 0
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %14, align 1
  %1001 = and i32 %998, 255
  %1002 = tail call i32 @llvm.ctpop.i32(i32 %1001)
  %1003 = trunc i32 %1002 to i8
  %1004 = and i8 %1003, 1
  %1005 = xor i8 %1004, 1
  store i8 %1005, i8* %21, align 1
  %1006 = xor i32 %998, %997
  %1007 = lshr i32 %1006, 4
  %1008 = trunc i32 %1007 to i8
  %1009 = and i8 %1008, 1
  store i8 %1009, i8* %27, align 1
  %1010 = icmp eq i32 %998, 0
  %1011 = zext i1 %1010 to i8
  store i8 %1011, i8* %30, align 1
  %1012 = lshr i32 %998, 31
  %1013 = trunc i32 %1012 to i8
  store i8 %1013, i8* %33, align 1
  %1014 = lshr i32 %997, 31
  %1015 = xor i32 %1012, %1014
  %1016 = add nuw nsw i32 %1015, %1014
  %1017 = icmp eq i32 %1016, 2
  %1018 = zext i1 %1017 to i8
  store i8 %1018, i8* %39, align 1
  %.v107 = select i1 %1010, i64 10, i64 189
  %1019 = add i64 %995, %.v107
  store i64 %1019, i64* %3, align 8
  br i1 %1010, label %block_4a035b, label %block_.L_4a040e

block_4a035b:                                     ; preds = %block_.L_4a0351
  %1020 = add i64 %700, -120
  %1021 = add i64 %1019, 4
  store i64 %1021, i64* %3, align 8
  %1022 = inttoptr i64 %1020 to i32*
  %1023 = load i32, i32* %1022, align 4
  store i8 0, i8* %14, align 1
  %1024 = and i32 %1023, 255
  %1025 = tail call i32 @llvm.ctpop.i32(i32 %1024)
  %1026 = trunc i32 %1025 to i8
  %1027 = and i8 %1026, 1
  %1028 = xor i8 %1027, 1
  store i8 %1028, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1029 = icmp eq i32 %1023, 0
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %30, align 1
  %1031 = lshr i32 %1023, 31
  %1032 = trunc i32 %1031 to i8
  store i8 %1032, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v118 = select i1 %1029, i64 10, i64 179
  %1033 = add i64 %1019, %.v118
  store i64 %1033, i64* %3, align 8
  br i1 %1029, label %block_4a0365, label %block_.L_4a040e

block_4a0365:                                     ; preds = %block_4a035b
  %1034 = add i64 %700, -92
  %1035 = add i64 %1033, 3
  store i64 %1035, i64* %3, align 8
  %1036 = inttoptr i64 %1034 to i32*
  %1037 = load i32, i32* %1036, align 4
  %1038 = zext i32 %1037 to i64
  store i64 %1038, i64* %RAX.i323, align 8
  %1039 = add i64 %700, -104
  %1040 = add i64 %1033, 6
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i32*
  %1042 = load i32, i32* %1041, align 4
  %1043 = sub i32 %1037, %1042
  %1044 = icmp ult i32 %1037, %1042
  %1045 = zext i1 %1044 to i8
  store i8 %1045, i8* %14, align 1
  %1046 = and i32 %1043, 255
  %1047 = tail call i32 @llvm.ctpop.i32(i32 %1046)
  %1048 = trunc i32 %1047 to i8
  %1049 = and i8 %1048, 1
  %1050 = xor i8 %1049, 1
  store i8 %1050, i8* %21, align 1
  %1051 = xor i32 %1042, %1037
  %1052 = xor i32 %1051, %1043
  %1053 = lshr i32 %1052, 4
  %1054 = trunc i32 %1053 to i8
  %1055 = and i8 %1054, 1
  store i8 %1055, i8* %27, align 1
  %1056 = icmp eq i32 %1043, 0
  %1057 = zext i1 %1056 to i8
  store i8 %1057, i8* %30, align 1
  %1058 = lshr i32 %1043, 31
  %1059 = trunc i32 %1058 to i8
  store i8 %1059, i8* %33, align 1
  %1060 = lshr i32 %1037, 31
  %1061 = lshr i32 %1042, 31
  %1062 = xor i32 %1061, %1060
  %1063 = xor i32 %1058, %1060
  %1064 = add nuw nsw i32 %1063, %1062
  %1065 = icmp eq i32 %1064, 2
  %1066 = zext i1 %1065 to i8
  store i8 %1066, i8* %39, align 1
  %1067 = icmp ne i8 %1059, 0
  %1068 = xor i1 %1067, %1065
  %.v119 = select i1 %1068, i64 12, i64 26
  %1069 = add i64 %1033, %.v119
  store i64 %1069, i64* %3, align 8
  br i1 %1068, label %block_4a0371, label %block_.L_4a037f

block_4a0371:                                     ; preds = %block_4a0365
  %1070 = add i64 %1069, 3
  store i64 %1070, i64* %3, align 8
  %1071 = load i32, i32* %1036, align 4
  %1072 = add i32 %1071, 1
  %1073 = zext i32 %1072 to i64
  store i64 %1073, i64* %RAX.i323, align 8
  %1074 = icmp eq i32 %1071, -1
  %1075 = icmp eq i32 %1072, 0
  %1076 = or i1 %1074, %1075
  %1077 = zext i1 %1076 to i8
  store i8 %1077, i8* %14, align 1
  %1078 = and i32 %1072, 255
  %1079 = tail call i32 @llvm.ctpop.i32(i32 %1078)
  %1080 = trunc i32 %1079 to i8
  %1081 = and i8 %1080, 1
  %1082 = xor i8 %1081, 1
  store i8 %1082, i8* %21, align 1
  %1083 = xor i32 %1072, %1071
  %1084 = lshr i32 %1083, 4
  %1085 = trunc i32 %1084 to i8
  %1086 = and i8 %1085, 1
  store i8 %1086, i8* %27, align 1
  %1087 = zext i1 %1075 to i8
  store i8 %1087, i8* %30, align 1
  %1088 = lshr i32 %1072, 31
  %1089 = trunc i32 %1088 to i8
  store i8 %1089, i8* %33, align 1
  %1090 = lshr i32 %1071, 31
  %1091 = xor i32 %1088, %1090
  %1092 = add nuw nsw i32 %1091, %1088
  %1093 = icmp eq i32 %1092, 2
  %1094 = zext i1 %1093 to i8
  store i8 %1094, i8* %39, align 1
  %1095 = add i64 %1069, 9
  store i64 %1095, i64* %3, align 8
  store i32 %1072, i32* %1036, align 4
  %1096 = load i64, i64* %3, align 8
  %1097 = add i64 %1096, 143
  br label %block_.L_4a0409

block_.L_4a037f:                                  ; preds = %block_4a0365
  store i64 16, i64* %RAX.i323, align 8
  %1098 = add i64 %1069, 8
  store i64 %1098, i64* %3, align 8
  %1099 = load i32, i32* %1036, align 4
  %1100 = zext i32 %1099 to i64
  store i64 %1100, i64* %RCX.i503, align 8
  %1101 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1101, i64* %RDX.i680, align 8
  %1102 = add i64 %1101, 52
  %1103 = add i64 %1069, 19
  store i64 %1103, i64* %3, align 8
  %1104 = inttoptr i64 %1102 to i32*
  %1105 = load i32, i32* %1104, align 4
  %1106 = zext i32 %1105 to i64
  store i64 %1106, i64* %RSI.i762, align 8
  %1107 = add i64 %700, -160
  %1108 = add i64 %1069, 25
  store i64 %1108, i64* %3, align 8
  %1109 = inttoptr i64 %1107 to i32*
  store i32 16, i32* %1109, align 4
  %1110 = load i32, i32* %ESI.i718, align 4
  %1111 = zext i32 %1110 to i64
  %1112 = load i64, i64* %3, align 8
  store i64 %1111, i64* %RAX.i323, align 8
  %1113 = sext i32 %1110 to i64
  %1114 = lshr i64 %1113, 32
  store i64 %1114, i64* %77, align 8
  %1115 = load i64, i64* %RBP.i, align 8
  %1116 = add i64 %1115, -160
  %1117 = add i64 %1112, 9
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i32*
  %1119 = load i32, i32* %1118, align 4
  %1120 = zext i32 %1119 to i64
  store i64 %1120, i64* %RSI.i762, align 8
  %1121 = add i64 %1112, 11
  store i64 %1121, i64* %3, align 8
  %1122 = sext i32 %1119 to i64
  %1123 = shl nuw i64 %1114, 32
  %1124 = or i64 %1123, %1111
  %1125 = sdiv i64 %1124, %1122
  %1126 = shl i64 %1125, 32
  %1127 = ashr exact i64 %1126, 32
  %1128 = icmp eq i64 %1125, %1127
  br i1 %1128, label %1131, label %1129

; <label>:1129:                                   ; preds = %block_.L_4a037f
  %1130 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1121, %struct.Memory* %MEMORY.2)
  %.pre89 = load i64, i64* %RAX.i323, align 8
  %.pre90 = load i64, i64* %3, align 8
  %.pre91 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit501

; <label>:1131:                                   ; preds = %block_.L_4a037f
  %1132 = srem i64 %1124, %1122
  %1133 = and i64 %1125, 4294967295
  store i64 %1133, i64* %RAX.i323, align 8
  %1134 = and i64 %1132, 4294967295
  store i64 %1134, i64* %RDX.i680, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__esi.exit501

routine_idivl__esi.exit501:                       ; preds = %1131, %1129
  %1135 = phi i64 [ %.pre91, %1129 ], [ %1115, %1131 ]
  %1136 = phi i64 [ %.pre90, %1129 ], [ %1121, %1131 ]
  %1137 = phi i64 [ %.pre89, %1129 ], [ %1133, %1131 ]
  %1138 = phi %struct.Memory* [ %1130, %1129 ], [ %MEMORY.2, %1131 ]
  %1139 = trunc i64 %1137 to i32
  %1140 = add i32 %1139, -1
  %1141 = zext i32 %1140 to i64
  store i64 %1141, i64* %RAX.i323, align 8
  %1142 = lshr i32 %1140, 31
  %1143 = load i32, i32* %ECX.i854, align 4
  %1144 = sub i32 %1143, %1140
  %1145 = icmp ult i32 %1143, %1140
  %1146 = zext i1 %1145 to i8
  store i8 %1146, i8* %14, align 1
  %1147 = and i32 %1144, 255
  %1148 = tail call i32 @llvm.ctpop.i32(i32 %1147)
  %1149 = trunc i32 %1148 to i8
  %1150 = and i8 %1149, 1
  %1151 = xor i8 %1150, 1
  store i8 %1151, i8* %21, align 1
  %1152 = xor i32 %1140, %1143
  %1153 = xor i32 %1152, %1144
  %1154 = lshr i32 %1153, 4
  %1155 = trunc i32 %1154 to i8
  %1156 = and i8 %1155, 1
  store i8 %1156, i8* %27, align 1
  %1157 = icmp eq i32 %1144, 0
  %1158 = zext i1 %1157 to i8
  store i8 %1158, i8* %30, align 1
  %1159 = lshr i32 %1144, 31
  %1160 = trunc i32 %1159 to i8
  store i8 %1160, i8* %33, align 1
  %1161 = lshr i32 %1143, 31
  %1162 = xor i32 %1142, %1161
  %1163 = xor i32 %1159, %1161
  %1164 = add nuw nsw i32 %1163, %1162
  %1165 = icmp eq i32 %1164, 2
  %1166 = zext i1 %1165 to i8
  store i8 %1166, i8* %39, align 1
  %.v120 = select i1 %1157, i64 11, i64 48
  %1167 = add i64 %1136, %.v120
  store i64 %1167, i64* %3, align 8
  br i1 %1157, label %block_4a03ae, label %block_.L_4a03d3

block_4a03ae:                                     ; preds = %routine_idivl__esi.exit501
  %1168 = add i64 %1135, -112
  %1169 = add i64 %1167, 3
  store i64 %1169, i64* %3, align 8
  %1170 = inttoptr i64 %1168 to i32*
  %1171 = load i32, i32* %1170, align 4
  %1172 = add i32 %1171, -1
  %1173 = zext i32 %1172 to i64
  store i64 %1173, i64* %RAX.i323, align 8
  %1174 = icmp eq i32 %1171, 0
  %1175 = zext i1 %1174 to i8
  store i8 %1175, i8* %14, align 1
  %1176 = and i32 %1172, 255
  %1177 = tail call i32 @llvm.ctpop.i32(i32 %1176)
  %1178 = trunc i32 %1177 to i8
  %1179 = and i8 %1178, 1
  %1180 = xor i8 %1179, 1
  store i8 %1180, i8* %21, align 1
  %1181 = xor i32 %1172, %1171
  %1182 = lshr i32 %1181, 4
  %1183 = trunc i32 %1182 to i8
  %1184 = and i8 %1183, 1
  store i8 %1184, i8* %27, align 1
  %1185 = icmp eq i32 %1172, 0
  %1186 = zext i1 %1185 to i8
  store i8 %1186, i8* %30, align 1
  %1187 = lshr i32 %1172, 31
  %1188 = trunc i32 %1187 to i8
  store i8 %1188, i8* %33, align 1
  %1189 = lshr i32 %1171, 31
  %1190 = xor i32 %1187, %1189
  %1191 = add nuw nsw i32 %1190, %1189
  %1192 = icmp eq i32 %1191, 2
  %1193 = zext i1 %1192 to i8
  store i8 %1193, i8* %39, align 1
  %1194 = add i64 %1135, -96
  %1195 = add i64 %1167, 9
  store i64 %1195, i64* %3, align 8
  %1196 = inttoptr i64 %1194 to i32*
  store i32 %1172, i32* %1196, align 4
  %1197 = load i64, i64* %RBP.i, align 8
  %1198 = add i64 %1197, -112
  %1199 = load i64, i64* %3, align 8
  %1200 = add i64 %1199, 3
  store i64 %1200, i64* %3, align 8
  %1201 = inttoptr i64 %1198 to i32*
  %1202 = load i32, i32* %1201, align 4
  %1203 = add i32 %1202, -1
  %1204 = zext i32 %1203 to i64
  store i64 %1204, i64* %RAX.i323, align 8
  %1205 = icmp ne i32 %1202, 0
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %14, align 1
  %1207 = and i32 %1203, 255
  %1208 = tail call i32 @llvm.ctpop.i32(i32 %1207)
  %1209 = trunc i32 %1208 to i8
  %1210 = and i8 %1209, 1
  %1211 = xor i8 %1210, 1
  store i8 %1211, i8* %21, align 1
  %1212 = xor i32 %1202, 16
  %1213 = xor i32 %1212, %1203
  %1214 = lshr i32 %1213, 4
  %1215 = trunc i32 %1214 to i8
  %1216 = and i8 %1215, 1
  store i8 %1216, i8* %27, align 1
  %1217 = icmp eq i32 %1203, 0
  %1218 = zext i1 %1217 to i8
  store i8 %1218, i8* %30, align 1
  %1219 = lshr i32 %1203, 31
  %1220 = trunc i32 %1219 to i8
  store i8 %1220, i8* %33, align 1
  %1221 = lshr i32 %1202, 31
  %1222 = xor i32 %1219, %1221
  %1223 = xor i32 %1219, 1
  %1224 = add nuw nsw i32 %1222, %1223
  %1225 = icmp eq i32 %1224, 2
  %1226 = zext i1 %1225 to i8
  store i8 %1226, i8* %39, align 1
  %1227 = add i64 %1199, 9
  store i64 %1227, i64* %3, align 8
  store i32 %1203, i32* %1201, align 4
  %1228 = load i64, i64* %RBP.i, align 8
  %1229 = add i64 %1228, -116
  %1230 = load i64, i64* %3, align 8
  %1231 = add i64 %1230, 7
  store i64 %1231, i64* %3, align 8
  %1232 = inttoptr i64 %1229 to i32*
  store i32 -1, i32* %1232, align 4
  %1233 = load i64, i64* %RBP.i, align 8
  %1234 = add i64 %1233, -120
  %1235 = load i64, i64* %3, align 8
  %1236 = add i64 %1235, 7
  store i64 %1236, i64* %3, align 8
  %1237 = inttoptr i64 %1234 to i32*
  store i32 0, i32* %1237, align 4
  %1238 = load i64, i64* %3, align 8
  %1239 = add i64 %1238, 54
  br label %block_.L_4a0404

block_.L_4a03d3:                                  ; preds = %routine_idivl__esi.exit501
  %1240 = add i64 %1135, -92
  %1241 = add i64 %1167, 3
  store i64 %1241, i64* %3, align 8
  %1242 = inttoptr i64 %1240 to i32*
  %1243 = load i32, i32* %1242, align 4
  %1244 = zext i32 %1243 to i64
  store i64 %1244, i64* %RAX.i323, align 8
  %1245 = add i64 %1135, -104
  %1246 = add i64 %1167, 6
  store i64 %1246, i64* %3, align 8
  %1247 = inttoptr i64 %1245 to i32*
  %1248 = load i32, i32* %1247, align 4
  %1249 = sub i32 %1243, %1248
  %1250 = icmp ult i32 %1243, %1248
  %1251 = zext i1 %1250 to i8
  store i8 %1251, i8* %14, align 1
  %1252 = and i32 %1249, 255
  %1253 = tail call i32 @llvm.ctpop.i32(i32 %1252)
  %1254 = trunc i32 %1253 to i8
  %1255 = and i8 %1254, 1
  %1256 = xor i8 %1255, 1
  store i8 %1256, i8* %21, align 1
  %1257 = xor i32 %1248, %1243
  %1258 = xor i32 %1257, %1249
  %1259 = lshr i32 %1258, 4
  %1260 = trunc i32 %1259 to i8
  %1261 = and i8 %1260, 1
  store i8 %1261, i8* %27, align 1
  %1262 = icmp eq i32 %1249, 0
  %1263 = zext i1 %1262 to i8
  store i8 %1263, i8* %30, align 1
  %1264 = lshr i32 %1249, 31
  %1265 = trunc i32 %1264 to i8
  store i8 %1265, i8* %33, align 1
  %1266 = lshr i32 %1243, 31
  %1267 = lshr i32 %1248, 31
  %1268 = xor i32 %1267, %1266
  %1269 = xor i32 %1264, %1266
  %1270 = add nuw nsw i32 %1269, %1268
  %1271 = icmp eq i32 %1270, 2
  %1272 = zext i1 %1271 to i8
  store i8 %1272, i8* %39, align 1
  %.v121 = select i1 %1262, i64 12, i64 44
  %1273 = add i64 %1167, %.v121
  store i64 %1273, i64* %3, align 8
  br i1 %1262, label %block_4a03df, label %block_.L_4a03ff

block_4a03df:                                     ; preds = %block_.L_4a03d3
  %1274 = add i64 %1273, 3
  store i64 %1274, i64* %3, align 8
  %1275 = load i32, i32* %1242, align 4
  %1276 = add i32 %1275, 1
  %1277 = zext i32 %1276 to i64
  store i64 %1277, i64* %RAX.i323, align 8
  %1278 = icmp eq i32 %1275, -1
  %1279 = icmp eq i32 %1276, 0
  %1280 = or i1 %1278, %1279
  %1281 = zext i1 %1280 to i8
  store i8 %1281, i8* %14, align 1
  %1282 = and i32 %1276, 255
  %1283 = tail call i32 @llvm.ctpop.i32(i32 %1282)
  %1284 = trunc i32 %1283 to i8
  %1285 = and i8 %1284, 1
  %1286 = xor i8 %1285, 1
  store i8 %1286, i8* %21, align 1
  %1287 = xor i32 %1276, %1275
  %1288 = lshr i32 %1287, 4
  %1289 = trunc i32 %1288 to i8
  %1290 = and i8 %1289, 1
  store i8 %1290, i8* %27, align 1
  %1291 = zext i1 %1279 to i8
  store i8 %1291, i8* %30, align 1
  %1292 = lshr i32 %1276, 31
  %1293 = trunc i32 %1292 to i8
  store i8 %1293, i8* %33, align 1
  %1294 = lshr i32 %1275, 31
  %1295 = xor i32 %1292, %1294
  %1296 = add nuw nsw i32 %1295, %1292
  %1297 = icmp eq i32 %1296, 2
  %1298 = zext i1 %1297 to i8
  store i8 %1298, i8* %39, align 1
  %1299 = add i64 %1273, 9
  store i64 %1299, i64* %3, align 8
  store i32 %1276, i32* %1242, align 4
  %1300 = load i64, i64* %RBP.i, align 8
  %1301 = add i64 %1300, -104
  %1302 = load i64, i64* %3, align 8
  %1303 = add i64 %1302, 3
  store i64 %1303, i64* %3, align 8
  %1304 = inttoptr i64 %1301 to i32*
  %1305 = load i32, i32* %1304, align 4
  %1306 = add i32 %1305, 1
  %1307 = zext i32 %1306 to i64
  store i64 %1307, i64* %RAX.i323, align 8
  %1308 = icmp eq i32 %1305, -1
  %1309 = icmp eq i32 %1306, 0
  %1310 = or i1 %1308, %1309
  %1311 = zext i1 %1310 to i8
  store i8 %1311, i8* %14, align 1
  %1312 = and i32 %1306, 255
  %1313 = tail call i32 @llvm.ctpop.i32(i32 %1312)
  %1314 = trunc i32 %1313 to i8
  %1315 = and i8 %1314, 1
  %1316 = xor i8 %1315, 1
  store i8 %1316, i8* %21, align 1
  %1317 = xor i32 %1306, %1305
  %1318 = lshr i32 %1317, 4
  %1319 = trunc i32 %1318 to i8
  %1320 = and i8 %1319, 1
  store i8 %1320, i8* %27, align 1
  %1321 = zext i1 %1309 to i8
  store i8 %1321, i8* %30, align 1
  %1322 = lshr i32 %1306, 31
  %1323 = trunc i32 %1322 to i8
  store i8 %1323, i8* %33, align 1
  %1324 = lshr i32 %1305, 31
  %1325 = xor i32 %1322, %1324
  %1326 = add nuw nsw i32 %1325, %1322
  %1327 = icmp eq i32 %1326, 2
  %1328 = zext i1 %1327 to i8
  store i8 %1328, i8* %39, align 1
  %1329 = add i64 %1302, 9
  store i64 %1329, i64* %3, align 8
  store i32 %1306, i32* %1304, align 4
  %1330 = load i64, i64* %RBP.i, align 8
  %1331 = add i64 %1330, -116
  %1332 = load i64, i64* %3, align 8
  %1333 = add i64 %1332, 7
  store i64 %1333, i64* %3, align 8
  %1334 = inttoptr i64 %1331 to i32*
  store i32 0, i32* %1334, align 4
  %1335 = load i64, i64* %RBP.i, align 8
  %1336 = add i64 %1335, -120
  %1337 = load i64, i64* %3, align 8
  %1338 = add i64 %1337, 7
  store i64 %1338, i64* %3, align 8
  %1339 = inttoptr i64 %1336 to i32*
  store i32 -1, i32* %1339, align 4
  %.pre92 = load i64, i64* %3, align 8
  br label %block_.L_4a03ff

block_.L_4a03ff:                                  ; preds = %block_.L_4a03d3, %block_4a03df
  %1340 = phi i64 [ %.pre92, %block_4a03df ], [ %1273, %block_.L_4a03d3 ]
  %1341 = add i64 %1340, 5
  store i64 %1341, i64* %3, align 8
  br label %block_.L_4a0404

block_.L_4a0404:                                  ; preds = %block_.L_4a03ff, %block_4a03ae
  %storemerge33 = phi i64 [ %1239, %block_4a03ae ], [ %1341, %block_.L_4a03ff ]
  %1342 = add i64 %storemerge33, 5
  store i64 %1342, i64* %3, align 8
  br label %block_.L_4a0409

block_.L_4a0409:                                  ; preds = %block_.L_4a0404, %block_4a0371
  %storemerge31 = phi i64 [ %1097, %block_4a0371 ], [ %1342, %block_.L_4a0404 ]
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.2, %block_4a0371 ], [ %1138, %block_.L_4a0404 ]
  %1343 = add i64 %storemerge31, 356
  br label %block_.L_4a056d

block_.L_4a040e:                                  ; preds = %block_4a035b, %block_.L_4a0351
  %1344 = phi i64 [ %1033, %block_4a035b ], [ %1019, %block_.L_4a0351 ]
  %1345 = add i64 %1344, 4
  store i64 %1345, i64* %3, align 8
  %1346 = load i32, i32* %703, align 4
  store i8 0, i8* %14, align 1
  %1347 = and i32 %1346, 255
  %1348 = tail call i32 @llvm.ctpop.i32(i32 %1347)
  %1349 = trunc i32 %1348 to i8
  %1350 = and i8 %1349, 1
  %1351 = xor i8 %1350, 1
  store i8 %1351, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1352 = icmp eq i32 %1346, 0
  %1353 = zext i1 %1352 to i8
  store i8 %1353, i8* %30, align 1
  %1354 = lshr i32 %1346, 31
  %1355 = trunc i32 %1354 to i8
  store i8 %1355, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v108 = select i1 %1352, i64 10, i64 152
  %1356 = add i64 %1344, %.v108
  store i64 %1356, i64* %3, align 8
  br i1 %1352, label %block_4a0418, label %block_.L_4a04a6

block_4a0418:                                     ; preds = %block_.L_4a040e
  %1357 = add i64 %700, -120
  %1358 = add i64 %1356, 4
  store i64 %1358, i64* %3, align 8
  %1359 = inttoptr i64 %1357 to i32*
  %1360 = load i32, i32* %1359, align 4
  %1361 = add i32 %1360, 1
  %1362 = icmp ne i32 %1360, -1
  %1363 = zext i1 %1362 to i8
  store i8 %1363, i8* %14, align 1
  %1364 = and i32 %1361, 255
  %1365 = tail call i32 @llvm.ctpop.i32(i32 %1364)
  %1366 = trunc i32 %1365 to i8
  %1367 = and i8 %1366, 1
  %1368 = xor i8 %1367, 1
  store i8 %1368, i8* %21, align 1
  %1369 = xor i32 %1360, 16
  %1370 = xor i32 %1369, %1361
  %1371 = lshr i32 %1370, 4
  %1372 = trunc i32 %1371 to i8
  %1373 = and i8 %1372, 1
  store i8 %1373, i8* %27, align 1
  %1374 = icmp eq i32 %1361, 0
  %1375 = zext i1 %1374 to i8
  store i8 %1375, i8* %30, align 1
  %1376 = lshr i32 %1361, 31
  %1377 = trunc i32 %1376 to i8
  store i8 %1377, i8* %33, align 1
  %1378 = lshr i32 %1360, 31
  %1379 = xor i32 %1378, 1
  %1380 = xor i32 %1376, %1378
  %1381 = add nuw nsw i32 %1380, %1379
  %1382 = icmp eq i32 %1381, 2
  %1383 = zext i1 %1382 to i8
  store i8 %1383, i8* %39, align 1
  %.v114 = select i1 %1374, i64 10, i64 142
  %1384 = add i64 %1356, %.v114
  store i64 %1384, i64* %3, align 8
  br i1 %1374, label %block_4a0422, label %block_.L_4a04a6

block_4a0422:                                     ; preds = %block_4a0418
  %1385 = add i64 %700, -96
  %1386 = add i64 %1384, 3
  store i64 %1386, i64* %3, align 8
  %1387 = inttoptr i64 %1385 to i32*
  %1388 = load i32, i32* %1387, align 4
  %1389 = zext i32 %1388 to i64
  store i64 %1389, i64* %RAX.i323, align 8
  %1390 = add i64 %700, -112
  %1391 = add i64 %1384, 6
  store i64 %1391, i64* %3, align 8
  %1392 = inttoptr i64 %1390 to i32*
  %1393 = load i32, i32* %1392, align 4
  %1394 = sub i32 %1388, %1393
  %1395 = icmp ult i32 %1388, %1393
  %1396 = zext i1 %1395 to i8
  store i8 %1396, i8* %14, align 1
  %1397 = and i32 %1394, 255
  %1398 = tail call i32 @llvm.ctpop.i32(i32 %1397)
  %1399 = trunc i32 %1398 to i8
  %1400 = and i8 %1399, 1
  %1401 = xor i8 %1400, 1
  store i8 %1401, i8* %21, align 1
  %1402 = xor i32 %1393, %1388
  %1403 = xor i32 %1402, %1394
  %1404 = lshr i32 %1403, 4
  %1405 = trunc i32 %1404 to i8
  %1406 = and i8 %1405, 1
  store i8 %1406, i8* %27, align 1
  %1407 = icmp eq i32 %1394, 0
  %1408 = zext i1 %1407 to i8
  store i8 %1408, i8* %30, align 1
  %1409 = lshr i32 %1394, 31
  %1410 = trunc i32 %1409 to i8
  store i8 %1410, i8* %33, align 1
  %1411 = lshr i32 %1388, 31
  %1412 = lshr i32 %1393, 31
  %1413 = xor i32 %1412, %1411
  %1414 = xor i32 %1409, %1411
  %1415 = add nuw nsw i32 %1414, %1413
  %1416 = icmp eq i32 %1415, 2
  %1417 = zext i1 %1416 to i8
  store i8 %1417, i8* %39, align 1
  %1418 = icmp ne i8 %1410, 0
  %1419 = xor i1 %1418, %1416
  %1420 = or i1 %1407, %1419
  %.v115 = select i1 %1420, i64 26, i64 12
  %1421 = add i64 %1384, %.v115
  store i64 %1421, i64* %3, align 8
  br i1 %1420, label %block_.L_4a043c, label %block_4a042e

block_4a042e:                                     ; preds = %block_4a0422
  %1422 = add i64 %1421, 3
  store i64 %1422, i64* %3, align 8
  %1423 = load i32, i32* %1387, align 4
  %1424 = add i32 %1423, -1
  %1425 = zext i32 %1424 to i64
  store i64 %1425, i64* %RAX.i323, align 8
  %1426 = icmp ne i32 %1423, 0
  %1427 = zext i1 %1426 to i8
  store i8 %1427, i8* %14, align 1
  %1428 = and i32 %1424, 255
  %1429 = tail call i32 @llvm.ctpop.i32(i32 %1428)
  %1430 = trunc i32 %1429 to i8
  %1431 = and i8 %1430, 1
  %1432 = xor i8 %1431, 1
  store i8 %1432, i8* %21, align 1
  %1433 = xor i32 %1423, 16
  %1434 = xor i32 %1433, %1424
  %1435 = lshr i32 %1434, 4
  %1436 = trunc i32 %1435 to i8
  %1437 = and i8 %1436, 1
  store i8 %1437, i8* %27, align 1
  %1438 = icmp eq i32 %1424, 0
  %1439 = zext i1 %1438 to i8
  store i8 %1439, i8* %30, align 1
  %1440 = lshr i32 %1424, 31
  %1441 = trunc i32 %1440 to i8
  store i8 %1441, i8* %33, align 1
  %1442 = lshr i32 %1423, 31
  %1443 = xor i32 %1440, %1442
  %1444 = xor i32 %1440, 1
  %1445 = add nuw nsw i32 %1443, %1444
  %1446 = icmp eq i32 %1445, 2
  %1447 = zext i1 %1446 to i8
  store i8 %1447, i8* %39, align 1
  %1448 = add i64 %1421, 9
  store i64 %1448, i64* %3, align 8
  store i32 %1424, i32* %1387, align 4
  %1449 = load i64, i64* %3, align 8
  %1450 = add i64 %1449, 106
  br label %block_.L_4a04a1

block_.L_4a043c:                                  ; preds = %block_4a0422
  %1451 = add i64 %1421, 4
  store i64 %1451, i64* %3, align 8
  %1452 = load i32, i32* %1387, align 4
  store i8 0, i8* %14, align 1
  %1453 = and i32 %1452, 255
  %1454 = tail call i32 @llvm.ctpop.i32(i32 %1453)
  %1455 = trunc i32 %1454 to i8
  %1456 = and i8 %1455, 1
  %1457 = xor i8 %1456, 1
  store i8 %1457, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1458 = icmp eq i32 %1452, 0
  %1459 = zext i1 %1458 to i8
  store i8 %1459, i8* %30, align 1
  %1460 = lshr i32 %1452, 31
  %1461 = trunc i32 %1460 to i8
  store i8 %1461, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v116 = select i1 %1458, i64 10, i64 47
  %1462 = add i64 %1421, %.v116
  store i64 %1462, i64* %3, align 8
  br i1 %1458, label %block_4a0446, label %block_.L_4a046b

block_4a0446:                                     ; preds = %block_.L_4a043c
  %1463 = add i64 %700, -100
  %1464 = add i64 %1462, 3
  store i64 %1464, i64* %3, align 8
  %1465 = inttoptr i64 %1463 to i32*
  %1466 = load i32, i32* %1465, align 4
  %1467 = add i32 %1466, -1
  %1468 = zext i32 %1467 to i64
  store i64 %1468, i64* %RAX.i323, align 8
  %1469 = icmp eq i32 %1466, 0
  %1470 = zext i1 %1469 to i8
  store i8 %1470, i8* %14, align 1
  %1471 = and i32 %1467, 255
  %1472 = tail call i32 @llvm.ctpop.i32(i32 %1471)
  %1473 = trunc i32 %1472 to i8
  %1474 = and i8 %1473, 1
  %1475 = xor i8 %1474, 1
  store i8 %1475, i8* %21, align 1
  %1476 = xor i32 %1467, %1466
  %1477 = lshr i32 %1476, 4
  %1478 = trunc i32 %1477 to i8
  %1479 = and i8 %1478, 1
  store i8 %1479, i8* %27, align 1
  %1480 = icmp eq i32 %1467, 0
  %1481 = zext i1 %1480 to i8
  store i8 %1481, i8* %30, align 1
  %1482 = lshr i32 %1467, 31
  %1483 = trunc i32 %1482 to i8
  store i8 %1483, i8* %33, align 1
  %1484 = lshr i32 %1466, 31
  %1485 = xor i32 %1482, %1484
  %1486 = add nuw nsw i32 %1485, %1484
  %1487 = icmp eq i32 %1486, 2
  %1488 = zext i1 %1487 to i8
  store i8 %1488, i8* %39, align 1
  %1489 = add i64 %700, -92
  %1490 = add i64 %1462, 9
  store i64 %1490, i64* %3, align 8
  %1491 = inttoptr i64 %1489 to i32*
  store i32 %1467, i32* %1491, align 4
  %1492 = load i64, i64* %RBP.i, align 8
  %1493 = add i64 %1492, -100
  %1494 = load i64, i64* %3, align 8
  %1495 = add i64 %1494, 3
  store i64 %1495, i64* %3, align 8
  %1496 = inttoptr i64 %1493 to i32*
  %1497 = load i32, i32* %1496, align 4
  %1498 = add i32 %1497, -1
  %1499 = zext i32 %1498 to i64
  store i64 %1499, i64* %RAX.i323, align 8
  %1500 = icmp ne i32 %1497, 0
  %1501 = zext i1 %1500 to i8
  store i8 %1501, i8* %14, align 1
  %1502 = and i32 %1498, 255
  %1503 = tail call i32 @llvm.ctpop.i32(i32 %1502)
  %1504 = trunc i32 %1503 to i8
  %1505 = and i8 %1504, 1
  %1506 = xor i8 %1505, 1
  store i8 %1506, i8* %21, align 1
  %1507 = xor i32 %1497, 16
  %1508 = xor i32 %1507, %1498
  %1509 = lshr i32 %1508, 4
  %1510 = trunc i32 %1509 to i8
  %1511 = and i8 %1510, 1
  store i8 %1511, i8* %27, align 1
  %1512 = icmp eq i32 %1498, 0
  %1513 = zext i1 %1512 to i8
  store i8 %1513, i8* %30, align 1
  %1514 = lshr i32 %1498, 31
  %1515 = trunc i32 %1514 to i8
  store i8 %1515, i8* %33, align 1
  %1516 = lshr i32 %1497, 31
  %1517 = xor i32 %1514, %1516
  %1518 = xor i32 %1514, 1
  %1519 = add nuw nsw i32 %1517, %1518
  %1520 = icmp eq i32 %1519, 2
  %1521 = zext i1 %1520 to i8
  store i8 %1521, i8* %39, align 1
  %1522 = add i64 %1494, 9
  store i64 %1522, i64* %3, align 8
  store i32 %1498, i32* %1496, align 4
  %1523 = load i64, i64* %RBP.i, align 8
  %1524 = add i64 %1523, -116
  %1525 = load i64, i64* %3, align 8
  %1526 = add i64 %1525, 7
  store i64 %1526, i64* %3, align 8
  %1527 = inttoptr i64 %1524 to i32*
  store i32 0, i32* %1527, align 4
  %1528 = load i64, i64* %RBP.i, align 8
  %1529 = add i64 %1528, -120
  %1530 = load i64, i64* %3, align 8
  %1531 = add i64 %1530, 7
  store i64 %1531, i64* %3, align 8
  %1532 = inttoptr i64 %1529 to i32*
  store i32 1, i32* %1532, align 4
  %1533 = load i64, i64* %3, align 8
  %1534 = add i64 %1533, 54
  br label %block_.L_4a049c

block_.L_4a046b:                                  ; preds = %block_.L_4a043c
  %1535 = add i64 %1462, 3
  store i64 %1535, i64* %3, align 8
  %1536 = load i32, i32* %1387, align 4
  %1537 = zext i32 %1536 to i64
  store i64 %1537, i64* %RAX.i323, align 8
  %1538 = add i64 %1462, 6
  store i64 %1538, i64* %3, align 8
  %1539 = load i32, i32* %1392, align 4
  %1540 = sub i32 %1536, %1539
  %1541 = icmp ult i32 %1536, %1539
  %1542 = zext i1 %1541 to i8
  store i8 %1542, i8* %14, align 1
  %1543 = and i32 %1540, 255
  %1544 = tail call i32 @llvm.ctpop.i32(i32 %1543)
  %1545 = trunc i32 %1544 to i8
  %1546 = and i8 %1545, 1
  %1547 = xor i8 %1546, 1
  store i8 %1547, i8* %21, align 1
  %1548 = xor i32 %1539, %1536
  %1549 = xor i32 %1548, %1540
  %1550 = lshr i32 %1549, 4
  %1551 = trunc i32 %1550 to i8
  %1552 = and i8 %1551, 1
  store i8 %1552, i8* %27, align 1
  %1553 = icmp eq i32 %1540, 0
  %1554 = zext i1 %1553 to i8
  store i8 %1554, i8* %30, align 1
  %1555 = lshr i32 %1540, 31
  %1556 = trunc i32 %1555 to i8
  store i8 %1556, i8* %33, align 1
  %1557 = lshr i32 %1536, 31
  %1558 = lshr i32 %1539, 31
  %1559 = xor i32 %1558, %1557
  %1560 = xor i32 %1555, %1557
  %1561 = add nuw nsw i32 %1560, %1559
  %1562 = icmp eq i32 %1561, 2
  %1563 = zext i1 %1562 to i8
  store i8 %1563, i8* %39, align 1
  %.v117 = select i1 %1553, i64 12, i64 44
  %1564 = add i64 %1462, %.v117
  store i64 %1564, i64* %3, align 8
  br i1 %1553, label %block_4a0477, label %block_.L_4a0497

block_4a0477:                                     ; preds = %block_.L_4a046b
  %1565 = add i64 %1564, 3
  store i64 %1565, i64* %3, align 8
  %1566 = load i32, i32* %1387, align 4
  %1567 = add i32 %1566, -1
  %1568 = zext i32 %1567 to i64
  store i64 %1568, i64* %RAX.i323, align 8
  %1569 = icmp ne i32 %1566, 0
  %1570 = zext i1 %1569 to i8
  store i8 %1570, i8* %14, align 1
  %1571 = and i32 %1567, 255
  %1572 = tail call i32 @llvm.ctpop.i32(i32 %1571)
  %1573 = trunc i32 %1572 to i8
  %1574 = and i8 %1573, 1
  %1575 = xor i8 %1574, 1
  store i8 %1575, i8* %21, align 1
  %1576 = xor i32 %1566, 16
  %1577 = xor i32 %1576, %1567
  %1578 = lshr i32 %1577, 4
  %1579 = trunc i32 %1578 to i8
  %1580 = and i8 %1579, 1
  store i8 %1580, i8* %27, align 1
  %1581 = icmp eq i32 %1567, 0
  %1582 = zext i1 %1581 to i8
  store i8 %1582, i8* %30, align 1
  %1583 = lshr i32 %1567, 31
  %1584 = trunc i32 %1583 to i8
  store i8 %1584, i8* %33, align 1
  %1585 = lshr i32 %1566, 31
  %1586 = xor i32 %1583, %1585
  %1587 = xor i32 %1583, 1
  %1588 = add nuw nsw i32 %1586, %1587
  %1589 = icmp eq i32 %1588, 2
  %1590 = zext i1 %1589 to i8
  store i8 %1590, i8* %39, align 1
  %1591 = add i64 %1564, 9
  store i64 %1591, i64* %3, align 8
  store i32 %1567, i32* %1387, align 4
  %1592 = load i64, i64* %RBP.i, align 8
  %1593 = add i64 %1592, -112
  %1594 = load i64, i64* %3, align 8
  %1595 = add i64 %1594, 3
  store i64 %1595, i64* %3, align 8
  %1596 = inttoptr i64 %1593 to i32*
  %1597 = load i32, i32* %1596, align 4
  %1598 = add i32 %1597, -1
  %1599 = zext i32 %1598 to i64
  store i64 %1599, i64* %RAX.i323, align 8
  %1600 = icmp ne i32 %1597, 0
  %1601 = zext i1 %1600 to i8
  store i8 %1601, i8* %14, align 1
  %1602 = and i32 %1598, 255
  %1603 = tail call i32 @llvm.ctpop.i32(i32 %1602)
  %1604 = trunc i32 %1603 to i8
  %1605 = and i8 %1604, 1
  %1606 = xor i8 %1605, 1
  store i8 %1606, i8* %21, align 1
  %1607 = xor i32 %1597, 16
  %1608 = xor i32 %1607, %1598
  %1609 = lshr i32 %1608, 4
  %1610 = trunc i32 %1609 to i8
  %1611 = and i8 %1610, 1
  store i8 %1611, i8* %27, align 1
  %1612 = icmp eq i32 %1598, 0
  %1613 = zext i1 %1612 to i8
  store i8 %1613, i8* %30, align 1
  %1614 = lshr i32 %1598, 31
  %1615 = trunc i32 %1614 to i8
  store i8 %1615, i8* %33, align 1
  %1616 = lshr i32 %1597, 31
  %1617 = xor i32 %1614, %1616
  %1618 = xor i32 %1614, 1
  %1619 = add nuw nsw i32 %1617, %1618
  %1620 = icmp eq i32 %1619, 2
  %1621 = zext i1 %1620 to i8
  store i8 %1621, i8* %39, align 1
  %1622 = add i64 %1594, 9
  store i64 %1622, i64* %3, align 8
  store i32 %1598, i32* %1596, align 4
  %1623 = load i64, i64* %RBP.i, align 8
  %1624 = add i64 %1623, -116
  %1625 = load i64, i64* %3, align 8
  %1626 = add i64 %1625, 7
  store i64 %1626, i64* %3, align 8
  %1627 = inttoptr i64 %1624 to i32*
  store i32 -1, i32* %1627, align 4
  %1628 = load i64, i64* %RBP.i, align 8
  %1629 = add i64 %1628, -120
  %1630 = load i64, i64* %3, align 8
  %1631 = add i64 %1630, 7
  store i64 %1631, i64* %3, align 8
  %1632 = inttoptr i64 %1629 to i32*
  store i32 0, i32* %1632, align 4
  %.pre93 = load i64, i64* %3, align 8
  br label %block_.L_4a0497

block_.L_4a0497:                                  ; preds = %block_.L_4a046b, %block_4a0477
  %1633 = phi i64 [ %.pre93, %block_4a0477 ], [ %1564, %block_.L_4a046b ]
  %1634 = add i64 %1633, 5
  store i64 %1634, i64* %3, align 8
  br label %block_.L_4a049c

block_.L_4a049c:                                  ; preds = %block_.L_4a0497, %block_4a0446
  %storemerge36 = phi i64 [ %1534, %block_4a0446 ], [ %1634, %block_.L_4a0497 ]
  %1635 = add i64 %storemerge36, 5
  store i64 %1635, i64* %3, align 8
  br label %block_.L_4a04a1

block_.L_4a04a1:                                  ; preds = %block_.L_4a049c, %block_4a042e
  %storemerge34 = phi i64 [ %1450, %block_4a042e ], [ %1635, %block_.L_4a049c ]
  %1636 = add i64 %storemerge34, 199
  br label %block_.L_4a0568

block_.L_4a04a6:                                  ; preds = %block_4a0418, %block_.L_4a040e
  %1637 = phi i64 [ %1384, %block_4a0418 ], [ %1356, %block_.L_4a040e ]
  %1638 = add i64 %1637, 4
  store i64 %1638, i64* %3, align 8
  %1639 = load i32, i32* %703, align 4
  store i8 0, i8* %14, align 1
  %1640 = and i32 %1639, 255
  %1641 = tail call i32 @llvm.ctpop.i32(i32 %1640)
  %1642 = trunc i32 %1641 to i8
  %1643 = and i8 %1642, 1
  %1644 = xor i8 %1643, 1
  store i8 %1644, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1645 = icmp eq i32 %1639, 0
  %1646 = zext i1 %1645 to i8
  store i8 %1646, i8* %30, align 1
  %1647 = lshr i32 %1639, 31
  %1648 = trunc i32 %1647 to i8
  store i8 %1648, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v109 = select i1 %1645, i64 10, i64 189
  %1649 = add i64 %1637, %.v109
  store i64 %1649, i64* %3, align 8
  br i1 %1645, label %block_4a04b0, label %block_.L_4a0563

block_4a04b0:                                     ; preds = %block_.L_4a04a6
  %1650 = add i64 %700, -120
  %1651 = add i64 %1649, 4
  store i64 %1651, i64* %3, align 8
  %1652 = inttoptr i64 %1650 to i32*
  %1653 = load i32, i32* %1652, align 4
  %1654 = add i32 %1653, -1
  %1655 = icmp eq i32 %1653, 0
  %1656 = zext i1 %1655 to i8
  store i8 %1656, i8* %14, align 1
  %1657 = and i32 %1654, 255
  %1658 = tail call i32 @llvm.ctpop.i32(i32 %1657)
  %1659 = trunc i32 %1658 to i8
  %1660 = and i8 %1659, 1
  %1661 = xor i8 %1660, 1
  store i8 %1661, i8* %21, align 1
  %1662 = xor i32 %1654, %1653
  %1663 = lshr i32 %1662, 4
  %1664 = trunc i32 %1663 to i8
  %1665 = and i8 %1664, 1
  store i8 %1665, i8* %27, align 1
  %1666 = icmp eq i32 %1654, 0
  %1667 = zext i1 %1666 to i8
  store i8 %1667, i8* %30, align 1
  %1668 = lshr i32 %1654, 31
  %1669 = trunc i32 %1668 to i8
  store i8 %1669, i8* %33, align 1
  %1670 = lshr i32 %1653, 31
  %1671 = xor i32 %1668, %1670
  %1672 = add nuw nsw i32 %1671, %1670
  %1673 = icmp eq i32 %1672, 2
  %1674 = zext i1 %1673 to i8
  store i8 %1674, i8* %39, align 1
  %.v110 = select i1 %1666, i64 10, i64 179
  %1675 = add i64 %1649, %.v110
  store i64 %1675, i64* %3, align 8
  br i1 %1666, label %block_4a04ba, label %block_.L_4a0563

block_4a04ba:                                     ; preds = %block_4a04b0
  %1676 = add i64 %700, -96
  %1677 = add i64 %1675, 3
  store i64 %1677, i64* %3, align 8
  %1678 = inttoptr i64 %1676 to i32*
  %1679 = load i32, i32* %1678, align 4
  %1680 = zext i32 %1679 to i64
  store i64 %1680, i64* %RAX.i323, align 8
  %1681 = add i64 %700, -108
  %1682 = add i64 %1675, 6
  store i64 %1682, i64* %3, align 8
  %1683 = inttoptr i64 %1681 to i32*
  %1684 = load i32, i32* %1683, align 4
  %1685 = sub i32 %1679, %1684
  %1686 = icmp ult i32 %1679, %1684
  %1687 = zext i1 %1686 to i8
  store i8 %1687, i8* %14, align 1
  %1688 = and i32 %1685, 255
  %1689 = tail call i32 @llvm.ctpop.i32(i32 %1688)
  %1690 = trunc i32 %1689 to i8
  %1691 = and i8 %1690, 1
  %1692 = xor i8 %1691, 1
  store i8 %1692, i8* %21, align 1
  %1693 = xor i32 %1684, %1679
  %1694 = xor i32 %1693, %1685
  %1695 = lshr i32 %1694, 4
  %1696 = trunc i32 %1695 to i8
  %1697 = and i8 %1696, 1
  store i8 %1697, i8* %27, align 1
  %1698 = icmp eq i32 %1685, 0
  %1699 = zext i1 %1698 to i8
  store i8 %1699, i8* %30, align 1
  %1700 = lshr i32 %1685, 31
  %1701 = trunc i32 %1700 to i8
  store i8 %1701, i8* %33, align 1
  %1702 = lshr i32 %1679, 31
  %1703 = lshr i32 %1684, 31
  %1704 = xor i32 %1703, %1702
  %1705 = xor i32 %1700, %1702
  %1706 = add nuw nsw i32 %1705, %1704
  %1707 = icmp eq i32 %1706, 2
  %1708 = zext i1 %1707 to i8
  store i8 %1708, i8* %39, align 1
  %1709 = icmp ne i8 %1701, 0
  %1710 = xor i1 %1709, %1707
  %.v111 = select i1 %1710, i64 12, i64 26
  %1711 = add i64 %1675, %.v111
  store i64 %1711, i64* %3, align 8
  br i1 %1710, label %block_4a04c6, label %block_.L_4a04d4

block_4a04c6:                                     ; preds = %block_4a04ba
  %1712 = add i64 %1711, 3
  store i64 %1712, i64* %3, align 8
  %1713 = load i32, i32* %1678, align 4
  %1714 = add i32 %1713, 1
  %1715 = zext i32 %1714 to i64
  store i64 %1715, i64* %RAX.i323, align 8
  %1716 = icmp eq i32 %1713, -1
  %1717 = icmp eq i32 %1714, 0
  %1718 = or i1 %1716, %1717
  %1719 = zext i1 %1718 to i8
  store i8 %1719, i8* %14, align 1
  %1720 = and i32 %1714, 255
  %1721 = tail call i32 @llvm.ctpop.i32(i32 %1720)
  %1722 = trunc i32 %1721 to i8
  %1723 = and i8 %1722, 1
  %1724 = xor i8 %1723, 1
  store i8 %1724, i8* %21, align 1
  %1725 = xor i32 %1714, %1713
  %1726 = lshr i32 %1725, 4
  %1727 = trunc i32 %1726 to i8
  %1728 = and i8 %1727, 1
  store i8 %1728, i8* %27, align 1
  %1729 = zext i1 %1717 to i8
  store i8 %1729, i8* %30, align 1
  %1730 = lshr i32 %1714, 31
  %1731 = trunc i32 %1730 to i8
  store i8 %1731, i8* %33, align 1
  %1732 = lshr i32 %1713, 31
  %1733 = xor i32 %1730, %1732
  %1734 = add nuw nsw i32 %1733, %1730
  %1735 = icmp eq i32 %1734, 2
  %1736 = zext i1 %1735 to i8
  store i8 %1736, i8* %39, align 1
  %1737 = add i64 %1711, 9
  store i64 %1737, i64* %3, align 8
  store i32 %1714, i32* %1678, align 4
  %1738 = load i64, i64* %3, align 8
  %1739 = add i64 %1738, 143
  br label %block_.L_4a055e

block_.L_4a04d4:                                  ; preds = %block_4a04ba
  store i64 16, i64* %RAX.i323, align 8
  %1740 = add i64 %1711, 8
  store i64 %1740, i64* %3, align 8
  %1741 = load i32, i32* %1678, align 4
  %1742 = zext i32 %1741 to i64
  store i64 %1742, i64* %RCX.i503, align 8
  %1743 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1743, i64* %RDX.i680, align 8
  %1744 = add i64 %1743, 60
  %1745 = add i64 %1711, 19
  store i64 %1745, i64* %3, align 8
  %1746 = inttoptr i64 %1744 to i32*
  %1747 = load i32, i32* %1746, align 4
  %1748 = zext i32 %1747 to i64
  store i64 %1748, i64* %RSI.i762, align 8
  %1749 = add i64 %700, -164
  %1750 = add i64 %1711, 25
  store i64 %1750, i64* %3, align 8
  %1751 = inttoptr i64 %1749 to i32*
  store i32 16, i32* %1751, align 4
  %1752 = load i32, i32* %ESI.i718, align 4
  %1753 = zext i32 %1752 to i64
  %1754 = load i64, i64* %3, align 8
  store i64 %1753, i64* %RAX.i323, align 8
  %1755 = sext i32 %1752 to i64
  %1756 = lshr i64 %1755, 32
  store i64 %1756, i64* %77, align 8
  %1757 = load i64, i64* %RBP.i, align 8
  %1758 = add i64 %1757, -164
  %1759 = add i64 %1754, 9
  store i64 %1759, i64* %3, align 8
  %1760 = inttoptr i64 %1758 to i32*
  %1761 = load i32, i32* %1760, align 4
  %1762 = zext i32 %1761 to i64
  store i64 %1762, i64* %RSI.i762, align 8
  %1763 = add i64 %1754, 11
  store i64 %1763, i64* %3, align 8
  %1764 = sext i32 %1761 to i64
  %1765 = shl nuw i64 %1756, 32
  %1766 = or i64 %1765, %1753
  %1767 = sdiv i64 %1766, %1764
  %1768 = shl i64 %1767, 32
  %1769 = ashr exact i64 %1768, 32
  %1770 = icmp eq i64 %1767, %1769
  br i1 %1770, label %1773, label %1771

; <label>:1771:                                   ; preds = %block_.L_4a04d4
  %1772 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1763, %struct.Memory* %MEMORY.2)
  %.pre94 = load i64, i64* %RAX.i323, align 8
  %.pre95 = load i64, i64* %3, align 8
  %.pre96 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit321

; <label>:1773:                                   ; preds = %block_.L_4a04d4
  %1774 = srem i64 %1766, %1764
  %1775 = and i64 %1767, 4294967295
  store i64 %1775, i64* %RAX.i323, align 8
  %1776 = and i64 %1774, 4294967295
  store i64 %1776, i64* %RDX.i680, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  br label %routine_idivl__esi.exit321

routine_idivl__esi.exit321:                       ; preds = %1773, %1771
  %1777 = phi i64 [ %.pre96, %1771 ], [ %1757, %1773 ]
  %1778 = phi i64 [ %.pre95, %1771 ], [ %1763, %1773 ]
  %1779 = phi i64 [ %.pre94, %1771 ], [ %1775, %1773 ]
  %1780 = phi %struct.Memory* [ %1772, %1771 ], [ %MEMORY.2, %1773 ]
  %1781 = trunc i64 %1779 to i32
  %1782 = add i32 %1781, -1
  %1783 = zext i32 %1782 to i64
  store i64 %1783, i64* %RAX.i323, align 8
  %1784 = lshr i32 %1782, 31
  %1785 = load i32, i32* %ECX.i854, align 4
  %1786 = sub i32 %1785, %1782
  %1787 = icmp ult i32 %1785, %1782
  %1788 = zext i1 %1787 to i8
  store i8 %1788, i8* %14, align 1
  %1789 = and i32 %1786, 255
  %1790 = tail call i32 @llvm.ctpop.i32(i32 %1789)
  %1791 = trunc i32 %1790 to i8
  %1792 = and i8 %1791, 1
  %1793 = xor i8 %1792, 1
  store i8 %1793, i8* %21, align 1
  %1794 = xor i32 %1782, %1785
  %1795 = xor i32 %1794, %1786
  %1796 = lshr i32 %1795, 4
  %1797 = trunc i32 %1796 to i8
  %1798 = and i8 %1797, 1
  store i8 %1798, i8* %27, align 1
  %1799 = icmp eq i32 %1786, 0
  %1800 = zext i1 %1799 to i8
  store i8 %1800, i8* %30, align 1
  %1801 = lshr i32 %1786, 31
  %1802 = trunc i32 %1801 to i8
  store i8 %1802, i8* %33, align 1
  %1803 = lshr i32 %1785, 31
  %1804 = xor i32 %1784, %1803
  %1805 = xor i32 %1801, %1803
  %1806 = add nuw nsw i32 %1805, %1804
  %1807 = icmp eq i32 %1806, 2
  %1808 = zext i1 %1807 to i8
  store i8 %1808, i8* %39, align 1
  %.v112 = select i1 %1799, i64 11, i64 48
  %1809 = add i64 %1778, %.v112
  store i64 %1809, i64* %3, align 8
  br i1 %1799, label %block_4a0503, label %block_.L_4a0528

block_4a0503:                                     ; preds = %routine_idivl__esi.exit321
  %1810 = add i64 %1777, -104
  %1811 = add i64 %1809, 3
  store i64 %1811, i64* %3, align 8
  %1812 = inttoptr i64 %1810 to i32*
  %1813 = load i32, i32* %1812, align 4
  %1814 = add i32 %1813, 1
  %1815 = zext i32 %1814 to i64
  store i64 %1815, i64* %RAX.i323, align 8
  %1816 = icmp eq i32 %1813, -1
  %1817 = icmp eq i32 %1814, 0
  %1818 = or i1 %1816, %1817
  %1819 = zext i1 %1818 to i8
  store i8 %1819, i8* %14, align 1
  %1820 = and i32 %1814, 255
  %1821 = tail call i32 @llvm.ctpop.i32(i32 %1820)
  %1822 = trunc i32 %1821 to i8
  %1823 = and i8 %1822, 1
  %1824 = xor i8 %1823, 1
  store i8 %1824, i8* %21, align 1
  %1825 = xor i32 %1814, %1813
  %1826 = lshr i32 %1825, 4
  %1827 = trunc i32 %1826 to i8
  %1828 = and i8 %1827, 1
  store i8 %1828, i8* %27, align 1
  %1829 = zext i1 %1817 to i8
  store i8 %1829, i8* %30, align 1
  %1830 = lshr i32 %1814, 31
  %1831 = trunc i32 %1830 to i8
  store i8 %1831, i8* %33, align 1
  %1832 = lshr i32 %1813, 31
  %1833 = xor i32 %1830, %1832
  %1834 = add nuw nsw i32 %1833, %1830
  %1835 = icmp eq i32 %1834, 2
  %1836 = zext i1 %1835 to i8
  store i8 %1836, i8* %39, align 1
  %1837 = add i64 %1777, -92
  %1838 = add i64 %1809, 9
  store i64 %1838, i64* %3, align 8
  %1839 = inttoptr i64 %1837 to i32*
  store i32 %1814, i32* %1839, align 4
  %1840 = load i64, i64* %RBP.i, align 8
  %1841 = add i64 %1840, -104
  %1842 = load i64, i64* %3, align 8
  %1843 = add i64 %1842, 3
  store i64 %1843, i64* %3, align 8
  %1844 = inttoptr i64 %1841 to i32*
  %1845 = load i32, i32* %1844, align 4
  %1846 = add i32 %1845, 1
  %1847 = zext i32 %1846 to i64
  store i64 %1847, i64* %RAX.i323, align 8
  %1848 = icmp eq i32 %1845, -1
  %1849 = icmp eq i32 %1846, 0
  %1850 = or i1 %1848, %1849
  %1851 = zext i1 %1850 to i8
  store i8 %1851, i8* %14, align 1
  %1852 = and i32 %1846, 255
  %1853 = tail call i32 @llvm.ctpop.i32(i32 %1852)
  %1854 = trunc i32 %1853 to i8
  %1855 = and i8 %1854, 1
  %1856 = xor i8 %1855, 1
  store i8 %1856, i8* %21, align 1
  %1857 = xor i32 %1846, %1845
  %1858 = lshr i32 %1857, 4
  %1859 = trunc i32 %1858 to i8
  %1860 = and i8 %1859, 1
  store i8 %1860, i8* %27, align 1
  %1861 = zext i1 %1849 to i8
  store i8 %1861, i8* %30, align 1
  %1862 = lshr i32 %1846, 31
  %1863 = trunc i32 %1862 to i8
  store i8 %1863, i8* %33, align 1
  %1864 = lshr i32 %1845, 31
  %1865 = xor i32 %1862, %1864
  %1866 = add nuw nsw i32 %1865, %1862
  %1867 = icmp eq i32 %1866, 2
  %1868 = zext i1 %1867 to i8
  store i8 %1868, i8* %39, align 1
  %1869 = add i64 %1842, 9
  store i64 %1869, i64* %3, align 8
  store i32 %1846, i32* %1844, align 4
  %1870 = load i64, i64* %RBP.i, align 8
  %1871 = add i64 %1870, -116
  %1872 = load i64, i64* %3, align 8
  %1873 = add i64 %1872, 7
  store i64 %1873, i64* %3, align 8
  %1874 = inttoptr i64 %1871 to i32*
  store i32 0, i32* %1874, align 4
  %1875 = load i64, i64* %RBP.i, align 8
  %1876 = add i64 %1875, -120
  %1877 = load i64, i64* %3, align 8
  %1878 = add i64 %1877, 7
  store i64 %1878, i64* %3, align 8
  %1879 = inttoptr i64 %1876 to i32*
  store i32 -1, i32* %1879, align 4
  %1880 = load i64, i64* %3, align 8
  %1881 = add i64 %1880, 54
  br label %block_.L_4a0559

block_.L_4a0528:                                  ; preds = %routine_idivl__esi.exit321
  %1882 = add i64 %1777, -96
  %1883 = add i64 %1809, 3
  store i64 %1883, i64* %3, align 8
  %1884 = inttoptr i64 %1882 to i32*
  %1885 = load i32, i32* %1884, align 4
  %1886 = zext i32 %1885 to i64
  store i64 %1886, i64* %RAX.i323, align 8
  %1887 = add i64 %1777, -108
  %1888 = add i64 %1809, 6
  store i64 %1888, i64* %3, align 8
  %1889 = inttoptr i64 %1887 to i32*
  %1890 = load i32, i32* %1889, align 4
  %1891 = sub i32 %1885, %1890
  %1892 = icmp ult i32 %1885, %1890
  %1893 = zext i1 %1892 to i8
  store i8 %1893, i8* %14, align 1
  %1894 = and i32 %1891, 255
  %1895 = tail call i32 @llvm.ctpop.i32(i32 %1894)
  %1896 = trunc i32 %1895 to i8
  %1897 = and i8 %1896, 1
  %1898 = xor i8 %1897, 1
  store i8 %1898, i8* %21, align 1
  %1899 = xor i32 %1890, %1885
  %1900 = xor i32 %1899, %1891
  %1901 = lshr i32 %1900, 4
  %1902 = trunc i32 %1901 to i8
  %1903 = and i8 %1902, 1
  store i8 %1903, i8* %27, align 1
  %1904 = icmp eq i32 %1891, 0
  %1905 = zext i1 %1904 to i8
  store i8 %1905, i8* %30, align 1
  %1906 = lshr i32 %1891, 31
  %1907 = trunc i32 %1906 to i8
  store i8 %1907, i8* %33, align 1
  %1908 = lshr i32 %1885, 31
  %1909 = lshr i32 %1890, 31
  %1910 = xor i32 %1909, %1908
  %1911 = xor i32 %1906, %1908
  %1912 = add nuw nsw i32 %1911, %1910
  %1913 = icmp eq i32 %1912, 2
  %1914 = zext i1 %1913 to i8
  store i8 %1914, i8* %39, align 1
  %.v113 = select i1 %1904, i64 12, i64 44
  %1915 = add i64 %1809, %.v113
  store i64 %1915, i64* %3, align 8
  br i1 %1904, label %block_4a0534, label %block_.L_4a0554

block_4a0534:                                     ; preds = %block_.L_4a0528
  %1916 = add i64 %1915, 3
  store i64 %1916, i64* %3, align 8
  %1917 = load i32, i32* %1884, align 4
  %1918 = add i32 %1917, 1
  %1919 = zext i32 %1918 to i64
  store i64 %1919, i64* %RAX.i323, align 8
  %1920 = icmp eq i32 %1917, -1
  %1921 = icmp eq i32 %1918, 0
  %1922 = or i1 %1920, %1921
  %1923 = zext i1 %1922 to i8
  store i8 %1923, i8* %14, align 1
  %1924 = and i32 %1918, 255
  %1925 = tail call i32 @llvm.ctpop.i32(i32 %1924)
  %1926 = trunc i32 %1925 to i8
  %1927 = and i8 %1926, 1
  %1928 = xor i8 %1927, 1
  store i8 %1928, i8* %21, align 1
  %1929 = xor i32 %1918, %1917
  %1930 = lshr i32 %1929, 4
  %1931 = trunc i32 %1930 to i8
  %1932 = and i8 %1931, 1
  store i8 %1932, i8* %27, align 1
  %1933 = zext i1 %1921 to i8
  store i8 %1933, i8* %30, align 1
  %1934 = lshr i32 %1918, 31
  %1935 = trunc i32 %1934 to i8
  store i8 %1935, i8* %33, align 1
  %1936 = lshr i32 %1917, 31
  %1937 = xor i32 %1934, %1936
  %1938 = add nuw nsw i32 %1937, %1934
  %1939 = icmp eq i32 %1938, 2
  %1940 = zext i1 %1939 to i8
  store i8 %1940, i8* %39, align 1
  %1941 = add i64 %1915, 9
  store i64 %1941, i64* %3, align 8
  store i32 %1918, i32* %1884, align 4
  %1942 = load i64, i64* %RBP.i, align 8
  %1943 = add i64 %1942, -108
  %1944 = load i64, i64* %3, align 8
  %1945 = add i64 %1944, 3
  store i64 %1945, i64* %3, align 8
  %1946 = inttoptr i64 %1943 to i32*
  %1947 = load i32, i32* %1946, align 4
  %1948 = add i32 %1947, 1
  %1949 = zext i32 %1948 to i64
  store i64 %1949, i64* %RAX.i323, align 8
  %1950 = icmp eq i32 %1947, -1
  %1951 = icmp eq i32 %1948, 0
  %1952 = or i1 %1950, %1951
  %1953 = zext i1 %1952 to i8
  store i8 %1953, i8* %14, align 1
  %1954 = and i32 %1948, 255
  %1955 = tail call i32 @llvm.ctpop.i32(i32 %1954)
  %1956 = trunc i32 %1955 to i8
  %1957 = and i8 %1956, 1
  %1958 = xor i8 %1957, 1
  store i8 %1958, i8* %21, align 1
  %1959 = xor i32 %1948, %1947
  %1960 = lshr i32 %1959, 4
  %1961 = trunc i32 %1960 to i8
  %1962 = and i8 %1961, 1
  store i8 %1962, i8* %27, align 1
  %1963 = zext i1 %1951 to i8
  store i8 %1963, i8* %30, align 1
  %1964 = lshr i32 %1948, 31
  %1965 = trunc i32 %1964 to i8
  store i8 %1965, i8* %33, align 1
  %1966 = lshr i32 %1947, 31
  %1967 = xor i32 %1964, %1966
  %1968 = add nuw nsw i32 %1967, %1964
  %1969 = icmp eq i32 %1968, 2
  %1970 = zext i1 %1969 to i8
  store i8 %1970, i8* %39, align 1
  %1971 = add i64 %1944, 9
  store i64 %1971, i64* %3, align 8
  store i32 %1948, i32* %1946, align 4
  %1972 = load i64, i64* %RBP.i, align 8
  %1973 = add i64 %1972, -116
  %1974 = load i64, i64* %3, align 8
  %1975 = add i64 %1974, 7
  store i64 %1975, i64* %3, align 8
  %1976 = inttoptr i64 %1973 to i32*
  store i32 1, i32* %1976, align 4
  %1977 = load i64, i64* %RBP.i, align 8
  %1978 = add i64 %1977, -120
  %1979 = load i64, i64* %3, align 8
  %1980 = add i64 %1979, 7
  store i64 %1980, i64* %3, align 8
  %1981 = inttoptr i64 %1978 to i32*
  store i32 0, i32* %1981, align 4
  %.pre97 = load i64, i64* %3, align 8
  br label %block_.L_4a0554

block_.L_4a0554:                                  ; preds = %block_.L_4a0528, %block_4a0534
  %1982 = phi i64 [ %.pre97, %block_4a0534 ], [ %1915, %block_.L_4a0528 ]
  %1983 = add i64 %1982, 5
  store i64 %1983, i64* %3, align 8
  br label %block_.L_4a0559

block_.L_4a0559:                                  ; preds = %block_.L_4a0554, %block_4a0503
  %storemerge38 = phi i64 [ %1881, %block_4a0503 ], [ %1983, %block_.L_4a0554 ]
  %1984 = add i64 %storemerge38, 5
  store i64 %1984, i64* %3, align 8
  br label %block_.L_4a055e

block_.L_4a055e:                                  ; preds = %block_.L_4a0559, %block_4a04c6
  %storemerge37 = phi i64 [ %1739, %block_4a04c6 ], [ %1984, %block_.L_4a0559 ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.2, %block_4a04c6 ], [ %1780, %block_.L_4a0559 ]
  %1985 = add i64 %storemerge37, 5
  store i64 %1985, i64* %3, align 8
  br label %block_.L_4a0563

block_.L_4a0563:                                  ; preds = %block_4a04b0, %block_.L_4a04a6, %block_.L_4a055e
  %1986 = phi i64 [ %1649, %block_.L_4a04a6 ], [ %1675, %block_4a04b0 ], [ %1985, %block_.L_4a055e ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.2, %block_.L_4a04a6 ], [ %MEMORY.2, %block_4a04b0 ], [ %MEMORY.17, %block_.L_4a055e ]
  %1987 = add i64 %1986, 5
  store i64 %1987, i64* %3, align 8
  br label %block_.L_4a0568

block_.L_4a0568:                                  ; preds = %block_.L_4a0563, %block_.L_4a04a1
  %storemerge35 = phi i64 [ %1636, %block_.L_4a04a1 ], [ %1987, %block_.L_4a0563 ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.2, %block_.L_4a04a1 ], [ %MEMORY.18, %block_.L_4a0563 ]
  %1988 = add i64 %storemerge35, 5
  store i64 %1988, i64* %3, align 8
  br label %block_.L_4a056d

block_.L_4a056d:                                  ; preds = %block_.L_4a0568, %block_.L_4a0409
  %storemerge32 = phi i64 [ %1343, %block_.L_4a0409 ], [ %1988, %block_.L_4a0568 ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.9, %block_.L_4a0409 ], [ %MEMORY.19, %block_.L_4a0568 ]
  %1989 = add i64 %storemerge32, 5
  store i64 %1989, i64* %3, align 8
  br label %block_.L_4a0572

block_.L_4a0572:                                  ; preds = %block_.L_4a056d, %block_.L_4a034c
  %storemerge29 = phi i64 [ %994, %block_.L_4a034c ], [ %1989, %block_.L_4a056d ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.2, %block_.L_4a034c ], [ %MEMORY.20, %block_.L_4a056d ]
  %1990 = load i64, i64* %RBP.i, align 8
  %1991 = add i64 %1990, -24
  %1992 = add i64 %storemerge29, 8
  store i64 %1992, i64* %3, align 8
  %1993 = inttoptr i64 %1991 to i32*
  %1994 = load i32, i32* %1993, align 4
  %1995 = add i32 %1994, 1
  %1996 = zext i32 %1995 to i64
  store i64 %1996, i64* %RAX.i323, align 8
  %1997 = icmp eq i32 %1994, -1
  %1998 = icmp eq i32 %1995, 0
  %1999 = or i1 %1997, %1998
  %2000 = zext i1 %1999 to i8
  store i8 %2000, i8* %14, align 1
  %2001 = and i32 %1995, 255
  %2002 = tail call i32 @llvm.ctpop.i32(i32 %2001)
  %2003 = trunc i32 %2002 to i8
  %2004 = and i8 %2003, 1
  %2005 = xor i8 %2004, 1
  store i8 %2005, i8* %21, align 1
  %2006 = xor i32 %1995, %1994
  %2007 = lshr i32 %2006, 4
  %2008 = trunc i32 %2007 to i8
  %2009 = and i8 %2008, 1
  store i8 %2009, i8* %27, align 1
  %2010 = zext i1 %1998 to i8
  store i8 %2010, i8* %30, align 1
  %2011 = lshr i32 %1995, 31
  %2012 = trunc i32 %2011 to i8
  store i8 %2012, i8* %33, align 1
  %2013 = lshr i32 %1994, 31
  %2014 = xor i32 %2011, %2013
  %2015 = add nuw nsw i32 %2014, %2011
  %2016 = icmp eq i32 %2015, 2
  %2017 = zext i1 %2016 to i8
  store i8 %2017, i8* %39, align 1
  %2018 = add i64 %storemerge29, 14
  store i64 %2018, i64* %3, align 8
  store i32 %1995, i32* %1993, align 4
  %2019 = load i64, i64* %3, align 8
  %2020 = add i64 %2019, -830
  store i64 %2020, i64* %3, align 8
  br label %block_.L_4a0242

block_.L_4a0585:                                  ; preds = %routine_idivl__esi.exit678
  %2021 = add i64 %556, -20
  %2022 = add i64 %555, 8
  store i64 %2022, i64* %3, align 8
  %2023 = inttoptr i64 %2021 to i32*
  %2024 = load i32, i32* %2023, align 4
  %2025 = add i32 %2024, 1
  %2026 = zext i32 %2025 to i64
  store i64 %2026, i64* %RAX.i323, align 8
  %2027 = icmp eq i32 %2024, -1
  %2028 = icmp eq i32 %2025, 0
  %2029 = or i1 %2027, %2028
  %2030 = zext i1 %2029 to i8
  store i8 %2030, i8* %14, align 1
  %2031 = and i32 %2025, 255
  %2032 = tail call i32 @llvm.ctpop.i32(i32 %2031)
  %2033 = trunc i32 %2032 to i8
  %2034 = and i8 %2033, 1
  %2035 = xor i8 %2034, 1
  store i8 %2035, i8* %21, align 1
  %2036 = xor i32 %2025, %2024
  %2037 = lshr i32 %2036, 4
  %2038 = trunc i32 %2037 to i8
  %2039 = and i8 %2038, 1
  store i8 %2039, i8* %27, align 1
  %2040 = zext i1 %2028 to i8
  store i8 %2040, i8* %30, align 1
  %2041 = lshr i32 %2025, 31
  %2042 = trunc i32 %2041 to i8
  store i8 %2042, i8* %33, align 1
  %2043 = lshr i32 %2024, 31
  %2044 = xor i32 %2041, %2043
  %2045 = add nuw nsw i32 %2044, %2041
  %2046 = icmp eq i32 %2045, 2
  %2047 = zext i1 %2046 to i8
  store i8 %2047, i8* %39, align 1
  %2048 = add i64 %555, 14
  store i64 %2048, i64* %3, align 8
  store i32 %2025, i32* %2023, align 4
  %2049 = load i64, i64* %3, align 8
  %2050 = add i64 %2049, -900
  store i64 %2050, i64* %3, align 8
  br label %block_.L_4a020f

block_.L_4a0598:                                  ; preds = %routine_idivl__esi.exit709
  %2051 = add i64 %448, -28
  %2052 = add i64 %479, 4
  store i64 %2052, i64* %3, align 8
  %2053 = inttoptr i64 %2051 to i32*
  %2054 = load i32, i32* %2053, align 4
  store i8 0, i8* %14, align 1
  %2055 = and i32 %2054, 255
  %2056 = tail call i32 @llvm.ctpop.i32(i32 %2055)
  %2057 = trunc i32 %2056 to i8
  %2058 = and i8 %2057, 1
  %2059 = xor i8 %2058, 1
  store i8 %2059, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2060 = icmp eq i32 %2054, 0
  %2061 = zext i1 %2060 to i8
  store i8 %2061, i8* %30, align 1
  %2062 = lshr i32 %2054, 31
  %2063 = trunc i32 %2062 to i8
  store i8 %2063, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v98 = select i1 %2060, i64 35, i64 10
  %2064 = add i64 %479, %.v98
  store i64 %2064, i64* %3, align 8
  br i1 %2060, label %block_.L_4a05bb, label %block_4a05a2

block_4a05a2:                                     ; preds = %block_.L_4a0598
  %2065 = add i64 %448, -88
  store i64 %2065, i64* %RDI.i711, align 8
  %2066 = add i64 %2064, 7
  store i64 %2066, i64* %3, align 8
  %2067 = load i32, i32* %2053, align 4
  %2068 = zext i32 %2067 to i64
  store i64 %2068, i64* %RAX.i323, align 8
  %2069 = add i64 %448, -84
  %2070 = add i64 %2064, 10
  store i64 %2070, i64* %3, align 8
  %2071 = inttoptr i64 %2069 to i32*
  store i32 %2067, i32* %2071, align 4
  %2072 = load i64, i64* %RBP.i, align 8
  %2073 = add i64 %2072, -16
  %2074 = load i64, i64* %3, align 8
  %2075 = add i64 %2074, 4
  store i64 %2075, i64* %3, align 8
  %2076 = inttoptr i64 %2073 to i64*
  %2077 = load i64, i64* %2076, align 8
  store i64 %2077, i64* %RSI.i762, align 8
  %2078 = add i64 %2074, 52292
  %2079 = add i64 %2074, 9
  %2080 = load i64, i64* %6, align 8
  %2081 = add i64 %2080, -8
  %2082 = inttoptr i64 %2081 to i64*
  store i64 %2079, i64* %2082, align 8
  store i64 %2081, i64* %6, align 8
  store i64 %2078, i64* %3, align 8
  %call2_4a05b0 = tail call %struct.Memory* @sub_4ad1f0.writeSyntaxElement2Buf_UVLC(%struct.State* nonnull %0, i64 %2078, %struct.Memory* %451)
  %2083 = load i64, i64* %RAX.i323, align 8
  %2084 = load i64, i64* %RBP.i, align 8
  %2085 = add i64 %2084, -128
  %2086 = load i64, i64* %3, align 8
  %2087 = add i64 %2086, 3
  store i64 %2087, i64* %3, align 8
  %2088 = trunc i64 %2083 to i32
  %2089 = inttoptr i64 %2085 to i32*
  %2090 = load i32, i32* %2089, align 4
  %2091 = add i32 %2090, %2088
  %2092 = zext i32 %2091 to i64
  store i64 %2092, i64* %RAX.i323, align 8
  %2093 = icmp ult i32 %2091, %2088
  %2094 = icmp ult i32 %2091, %2090
  %2095 = or i1 %2093, %2094
  %2096 = zext i1 %2095 to i8
  store i8 %2096, i8* %14, align 1
  %2097 = and i32 %2091, 255
  %2098 = tail call i32 @llvm.ctpop.i32(i32 %2097)
  %2099 = trunc i32 %2098 to i8
  %2100 = and i8 %2099, 1
  %2101 = xor i8 %2100, 1
  store i8 %2101, i8* %21, align 1
  %2102 = xor i32 %2090, %2088
  %2103 = xor i32 %2102, %2091
  %2104 = lshr i32 %2103, 4
  %2105 = trunc i32 %2104 to i8
  %2106 = and i8 %2105, 1
  store i8 %2106, i8* %27, align 1
  %2107 = icmp eq i32 %2091, 0
  %2108 = zext i1 %2107 to i8
  store i8 %2108, i8* %30, align 1
  %2109 = lshr i32 %2091, 31
  %2110 = trunc i32 %2109 to i8
  store i8 %2110, i8* %33, align 1
  %2111 = lshr i32 %2088, 31
  %2112 = lshr i32 %2090, 31
  %2113 = xor i32 %2109, %2111
  %2114 = xor i32 %2109, %2112
  %2115 = add nuw nsw i32 %2113, %2114
  %2116 = icmp eq i32 %2115, 2
  %2117 = zext i1 %2116 to i8
  store i8 %2117, i8* %39, align 1
  %2118 = add i64 %2086, 6
  store i64 %2118, i64* %3, align 8
  store i32 %2091, i32* %2089, align 4
  %.pre71 = load i64, i64* %3, align 8
  %.pre72 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4a05bb

block_.L_4a05bb:                                  ; preds = %block_4a05a2, %block_.L_4a0598
  %2119 = phi i64 [ %448, %block_.L_4a0598 ], [ %.pre72, %block_4a05a2 ]
  %2120 = phi i64 [ %2064, %block_.L_4a0598 ], [ %.pre71, %block_4a05a2 ]
  %MEMORY.22 = phi %struct.Memory* [ %451, %block_.L_4a0598 ], [ %call2_4a05b0, %block_4a05a2 ]
  store i64 0, i64* %RAX.i323, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 1, i64* %RCX.i503, align 8
  %2121 = add i64 %2119, -128
  %2122 = add i64 %2120, 10
  store i64 %2122, i64* %3, align 8
  %2123 = inttoptr i64 %2121 to i32*
  %2124 = load i32, i32* %2123, align 4
  %2125 = zext i32 %2124 to i64
  store i64 %2125, i64* %RDX.i680, align 8
  %2126 = add i64 %2119, -124
  %2127 = add i64 %2120, 13
  store i64 %2127, i64* %3, align 8
  %2128 = inttoptr i64 %2126 to i32*
  %2129 = load i32, i32* %2128, align 4
  %2130 = sub i32 %2124, %2129
  %2131 = icmp ult i32 %2124, %2129
  %2132 = zext i1 %2131 to i8
  store i8 %2132, i8* %14, align 1
  %2133 = and i32 %2130, 255
  %2134 = tail call i32 @llvm.ctpop.i32(i32 %2133)
  %2135 = trunc i32 %2134 to i8
  %2136 = and i8 %2135, 1
  %2137 = xor i8 %2136, 1
  store i8 %2137, i8* %21, align 1
  %2138 = xor i32 %2129, %2124
  %2139 = xor i32 %2138, %2130
  %2140 = lshr i32 %2139, 4
  %2141 = trunc i32 %2140 to i8
  %2142 = and i8 %2141, 1
  store i8 %2142, i8* %27, align 1
  %2143 = icmp eq i32 %2130, 0
  %2144 = zext i1 %2143 to i8
  store i8 %2144, i8* %30, align 1
  %2145 = lshr i32 %2130, 31
  %2146 = trunc i32 %2145 to i8
  store i8 %2146, i8* %33, align 1
  %2147 = lshr i32 %2124, 31
  %2148 = lshr i32 %2129, 31
  %2149 = xor i32 %2148, %2147
  %2150 = xor i32 %2145, %2147
  %2151 = add nuw nsw i32 %2150, %2149
  %2152 = icmp eq i32 %2151, 2
  %2153 = zext i1 %2152 to i8
  store i8 %2153, i8* %39, align 1
  %2154 = icmp ne i8 %2146, 0
  %2155 = xor i1 %2154, %2152
  %2156 = zext i1 %2155 to i64
  store i64 %2156, i64* %RAX.i323, align 8
  %2157 = add i64 %2119, -132
  %2158 = zext i1 %2155 to i32
  %2159 = add i64 %2120, 22
  store i64 %2159, i64* %3, align 8
  %2160 = inttoptr i64 %2157 to i32*
  store i32 %2158, i32* %2160, align 4
  %2161 = load i64, i64* %RBP.i, align 8
  %2162 = add i64 %2161, -132
  %2163 = load i64, i64* %3, align 8
  %2164 = add i64 %2163, 7
  store i64 %2164, i64* %3, align 8
  %2165 = inttoptr i64 %2162 to i32*
  %2166 = load i32, i32* %2165, align 4
  store i8 0, i8* %14, align 1
  %2167 = and i32 %2166, 255
  %2168 = tail call i32 @llvm.ctpop.i32(i32 %2167)
  %2169 = trunc i32 %2168 to i8
  %2170 = and i8 %2169, 1
  %2171 = xor i8 %2170, 1
  store i8 %2171, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2172 = icmp eq i32 %2166, 0
  %2173 = zext i1 %2172 to i8
  store i8 %2173, i8* %30, align 1
  %2174 = lshr i32 %2166, 31
  %2175 = trunc i32 %2174 to i8
  store i8 %2175, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v99 = select i1 %2172, i64 13, i64 325
  %2176 = add i64 %2163, %.v99
  store i64 %2176, i64* %3, align 8
  br i1 %2172, label %block_4a05de, label %block_.L_4a0716

block_4a05de:                                     ; preds = %block_.L_4a05bb
  %2177 = add i64 %2161, -16
  %2178 = add i64 %2176, 4
  store i64 %2178, i64* %3, align 8
  %2179 = inttoptr i64 %2177 to i64*
  %2180 = load i64, i64* %2179, align 8
  store i64 %2180, i64* %RAX.i323, align 8
  %2181 = add i64 %2180, 8
  %2182 = add i64 %2176, 8
  store i64 %2182, i64* %3, align 8
  %2183 = inttoptr i64 %2181 to i8*
  store i8 0, i8* %2183, align 1
  %2184 = load i64, i64* %RBP.i, align 8
  %2185 = add i64 %2184, -16
  %2186 = load i64, i64* %3, align 8
  %2187 = add i64 %2186, 4
  store i64 %2187, i64* %3, align 8
  %2188 = inttoptr i64 %2185 to i64*
  %2189 = load i64, i64* %2188, align 8
  store i64 %2189, i64* %RAX.i323, align 8
  %2190 = add i64 %2189, 4
  %2191 = add i64 %2186, 11
  store i64 %2191, i64* %3, align 8
  %2192 = inttoptr i64 %2190 to i32*
  store i32 8, i32* %2192, align 4
  %2193 = load i64, i64* %RBP.i, align 8
  %2194 = add i64 %2193, -16
  %2195 = load i64, i64* %3, align 8
  %2196 = add i64 %2195, 4
  store i64 %2196, i64* %3, align 8
  %2197 = inttoptr i64 %2194 to i64*
  %2198 = load i64, i64* %2197, align 8
  store i64 %2198, i64* %RAX.i323, align 8
  %2199 = add i64 %2195, 10
  store i64 %2199, i64* %3, align 8
  %2200 = inttoptr i64 %2198 to i32*
  store i32 0, i32* %2200, align 4
  %2201 = load i64, i64* %RBP.i, align 8
  %2202 = add i64 %2201, -20
  %2203 = load i64, i64* %3, align 8
  %2204 = add i64 %2203, 7
  store i64 %2204, i64* %3, align 8
  %2205 = inttoptr i64 %2202 to i32*
  store i32 0, i32* %2205, align 4
  %CL.i111 = bitcast %union.anon* %41 to i8*
  %DL.i112 = bitcast %union.anon* %42 to i8*
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_4a0602

block_.L_4a0602:                                  ; preds = %block_.L_4a06fe, %block_4a05de
  %2206 = phi i64 [ %.pre73, %block_4a05de ], [ %2611, %block_.L_4a06fe ]
  %MEMORY.23 = phi %struct.Memory* [ %MEMORY.22, %block_4a05de ], [ %2327, %block_.L_4a06fe ]
  store i64 16, i64* %RAX.i323, align 8
  %2207 = load i64, i64* %RBP.i, align 8
  %2208 = add i64 %2207, -20
  %2209 = add i64 %2206, 8
  store i64 %2209, i64* %3, align 8
  %2210 = inttoptr i64 %2208 to i32*
  %2211 = load i32, i32* %2210, align 4
  %2212 = zext i32 %2211 to i64
  store i64 %2212, i64* %RCX.i503, align 8
  %2213 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2213, i64* %RDX.i680, align 8
  %2214 = add i64 %2213, 60
  %2215 = add i64 %2206, 19
  store i64 %2215, i64* %3, align 8
  %2216 = inttoptr i64 %2214 to i32*
  %2217 = load i32, i32* %2216, align 4
  %2218 = zext i32 %2217 to i64
  store i64 %2218, i64* %RSI.i762, align 8
  %2219 = add i64 %2207, -168
  %2220 = add i64 %2206, 25
  store i64 %2220, i64* %3, align 8
  %2221 = inttoptr i64 %2219 to i32*
  store i32 16, i32* %2221, align 4
  %2222 = load i32, i32* %ESI.i718, align 4
  %2223 = zext i32 %2222 to i64
  %2224 = load i64, i64* %3, align 8
  store i64 %2223, i64* %RAX.i323, align 8
  %2225 = sext i32 %2222 to i64
  %2226 = lshr i64 %2225, 32
  store i64 %2226, i64* %77, align 8
  %2227 = load i64, i64* %RBP.i, align 8
  %2228 = add i64 %2227, -168
  %2229 = add i64 %2224, 9
  store i64 %2229, i64* %3, align 8
  %2230 = inttoptr i64 %2228 to i32*
  %2231 = load i32, i32* %2230, align 4
  %2232 = zext i32 %2231 to i64
  store i64 %2232, i64* %RSI.i762, align 8
  %2233 = add i64 %2224, 11
  store i64 %2233, i64* %3, align 8
  %2234 = sext i32 %2231 to i64
  %2235 = shl nuw i64 %2226, 32
  %2236 = or i64 %2235, %2223
  %2237 = sdiv i64 %2236, %2234
  %2238 = shl i64 %2237, 32
  %2239 = ashr exact i64 %2238, 32
  %2240 = icmp eq i64 %2237, %2239
  br i1 %2240, label %2243, label %2241

; <label>:2241:                                   ; preds = %block_.L_4a0602
  %2242 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2233, %struct.Memory* %MEMORY.23)
  %.pre74 = load i32, i32* %EAX.i796, align 4
  %.pre75 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit158

; <label>:2243:                                   ; preds = %block_.L_4a0602
  %2244 = srem i64 %2236, %2234
  %2245 = and i64 %2237, 4294967295
  store i64 %2245, i64* %RAX.i323, align 8
  %2246 = and i64 %2244, 4294967295
  store i64 %2246, i64* %RDX.i680, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2247 = trunc i64 %2237 to i32
  br label %routine_idivl__esi.exit158

routine_idivl__esi.exit158:                       ; preds = %2243, %2241
  %2248 = phi i64 [ %.pre75, %2241 ], [ %2233, %2243 ]
  %2249 = phi i32 [ %.pre74, %2241 ], [ %2247, %2243 ]
  %2250 = phi %struct.Memory* [ %2242, %2241 ], [ %MEMORY.23, %2243 ]
  %2251 = load i32, i32* %ECX.i854, align 4
  %2252 = sub i32 %2251, %2249
  %2253 = icmp ult i32 %2251, %2249
  %2254 = zext i1 %2253 to i8
  store i8 %2254, i8* %14, align 1
  %2255 = and i32 %2252, 255
  %2256 = tail call i32 @llvm.ctpop.i32(i32 %2255)
  %2257 = trunc i32 %2256 to i8
  %2258 = and i8 %2257, 1
  %2259 = xor i8 %2258, 1
  store i8 %2259, i8* %21, align 1
  %2260 = xor i32 %2249, %2251
  %2261 = xor i32 %2260, %2252
  %2262 = lshr i32 %2261, 4
  %2263 = trunc i32 %2262 to i8
  %2264 = and i8 %2263, 1
  store i8 %2264, i8* %27, align 1
  %2265 = icmp eq i32 %2252, 0
  %2266 = zext i1 %2265 to i8
  store i8 %2266, i8* %30, align 1
  %2267 = lshr i32 %2252, 31
  %2268 = trunc i32 %2267 to i8
  store i8 %2268, i8* %33, align 1
  %2269 = lshr i32 %2251, 31
  %2270 = lshr i32 %2249, 31
  %2271 = xor i32 %2270, %2269
  %2272 = xor i32 %2267, %2269
  %2273 = add nuw nsw i32 %2272, %2271
  %2274 = icmp eq i32 %2273, 2
  %2275 = zext i1 %2274 to i8
  store i8 %2275, i8* %39, align 1
  %2276 = icmp ne i8 %2268, 0
  %2277 = xor i1 %2276, %2274
  %.v100 = select i1 %2277, i64 8, i64 235
  %2278 = add i64 %2248, %.v100
  store i64 %2278, i64* %3, align 8
  br i1 %2277, label %block_4a062e, label %block_.L_4a0711

block_4a062e:                                     ; preds = %routine_idivl__esi.exit158
  %2279 = load i64, i64* %RBP.i, align 8
  %2280 = add i64 %2279, -24
  %2281 = add i64 %2278, 7
  store i64 %2281, i64* %3, align 8
  %2282 = inttoptr i64 %2280 to i32*
  store i32 0, i32* %2282, align 4
  %.pre76 = load i64, i64* %3, align 8
  br label %block_.L_4a0635

block_.L_4a0635:                                  ; preds = %block_.L_4a06eb, %block_4a062e
  %2283 = phi i64 [ %.pre76, %block_4a062e ], [ %2581, %block_.L_4a06eb ]
  %MEMORY.24 = phi %struct.Memory* [ %2250, %block_4a062e ], [ %2327, %block_.L_4a06eb ]
  store i64 16, i64* %RAX.i323, align 8
  %2284 = load i64, i64* %RBP.i, align 8
  %2285 = add i64 %2284, -24
  %2286 = add i64 %2283, 8
  store i64 %2286, i64* %3, align 8
  %2287 = inttoptr i64 %2285 to i32*
  %2288 = load i32, i32* %2287, align 4
  %2289 = zext i32 %2288 to i64
  store i64 %2289, i64* %RCX.i503, align 8
  %2290 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2290, i64* %RDX.i680, align 8
  %2291 = add i64 %2290, 52
  %2292 = add i64 %2283, 19
  store i64 %2292, i64* %3, align 8
  %2293 = inttoptr i64 %2291 to i32*
  %2294 = load i32, i32* %2293, align 4
  %2295 = zext i32 %2294 to i64
  store i64 %2295, i64* %RSI.i762, align 8
  %2296 = add i64 %2284, -172
  %2297 = add i64 %2283, 25
  store i64 %2297, i64* %3, align 8
  %2298 = inttoptr i64 %2296 to i32*
  store i32 16, i32* %2298, align 4
  %2299 = load i32, i32* %ESI.i718, align 4
  %2300 = zext i32 %2299 to i64
  %2301 = load i64, i64* %3, align 8
  store i64 %2300, i64* %RAX.i323, align 8
  %2302 = sext i32 %2299 to i64
  %2303 = lshr i64 %2302, 32
  store i64 %2303, i64* %77, align 8
  %2304 = load i64, i64* %RBP.i, align 8
  %2305 = add i64 %2304, -172
  %2306 = add i64 %2301, 9
  store i64 %2306, i64* %3, align 8
  %2307 = inttoptr i64 %2305 to i32*
  %2308 = load i32, i32* %2307, align 4
  %2309 = zext i32 %2308 to i64
  store i64 %2309, i64* %RSI.i762, align 8
  %2310 = add i64 %2301, 11
  store i64 %2310, i64* %3, align 8
  %2311 = sext i32 %2308 to i64
  %2312 = shl nuw i64 %2303, 32
  %2313 = or i64 %2312, %2300
  %2314 = sdiv i64 %2313, %2311
  %2315 = shl i64 %2314, 32
  %2316 = ashr exact i64 %2315, 32
  %2317 = icmp eq i64 %2314, %2316
  br i1 %2317, label %2320, label %2318

; <label>:2318:                                   ; preds = %block_.L_4a0635
  %2319 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2310, %struct.Memory* %MEMORY.24)
  %.pre77 = load i32, i32* %EAX.i796, align 4
  %.pre78 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit

; <label>:2320:                                   ; preds = %block_.L_4a0635
  %2321 = srem i64 %2313, %2311
  %2322 = and i64 %2314, 4294967295
  store i64 %2322, i64* %RAX.i323, align 8
  %2323 = and i64 %2321, 4294967295
  store i64 %2323, i64* %RDX.i680, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2324 = trunc i64 %2314 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %2320, %2318
  %2325 = phi i64 [ %.pre78, %2318 ], [ %2310, %2320 ]
  %2326 = phi i32 [ %.pre77, %2318 ], [ %2324, %2320 ]
  %2327 = phi %struct.Memory* [ %2319, %2318 ], [ %MEMORY.24, %2320 ]
  %2328 = load i32, i32* %ECX.i854, align 4
  %2329 = sub i32 %2328, %2326
  %2330 = icmp ult i32 %2328, %2326
  %2331 = zext i1 %2330 to i8
  store i8 %2331, i8* %14, align 1
  %2332 = and i32 %2329, 255
  %2333 = tail call i32 @llvm.ctpop.i32(i32 %2332)
  %2334 = trunc i32 %2333 to i8
  %2335 = and i8 %2334, 1
  %2336 = xor i8 %2335, 1
  store i8 %2336, i8* %21, align 1
  %2337 = xor i32 %2326, %2328
  %2338 = xor i32 %2337, %2329
  %2339 = lshr i32 %2338, 4
  %2340 = trunc i32 %2339 to i8
  %2341 = and i8 %2340, 1
  store i8 %2341, i8* %27, align 1
  %2342 = icmp eq i32 %2329, 0
  %2343 = zext i1 %2342 to i8
  store i8 %2343, i8* %30, align 1
  %2344 = lshr i32 %2329, 31
  %2345 = trunc i32 %2344 to i8
  store i8 %2345, i8* %33, align 1
  %2346 = lshr i32 %2328, 31
  %2347 = lshr i32 %2326, 31
  %2348 = xor i32 %2347, %2346
  %2349 = xor i32 %2344, %2346
  %2350 = add nuw nsw i32 %2349, %2348
  %2351 = icmp eq i32 %2350, 2
  %2352 = zext i1 %2351 to i8
  store i8 %2352, i8* %39, align 1
  %2353 = icmp ne i8 %2345, 0
  %2354 = xor i1 %2353, %2351
  %.v101 = select i1 %2354, i64 8, i64 165
  %2355 = add i64 %2325, %.v101
  store i64 %2355, i64* %3, align 8
  %2356 = load i64, i64* %RBP.i, align 8
  br i1 %2354, label %block_4a0661, label %block_.L_4a06fe

block_4a0661:                                     ; preds = %routine_idivl__esi.exit
  %2357 = add i64 %2356, -16
  %2358 = add i64 %2355, 4
  store i64 %2358, i64* %3, align 8
  %2359 = inttoptr i64 %2357 to i64*
  %2360 = load i64, i64* %2359, align 8
  store i64 %2360, i64* %RAX.i323, align 8
  %2361 = add i64 %2360, 8
  %2362 = add i64 %2355, 8
  store i64 %2362, i64* %3, align 8
  %2363 = inttoptr i64 %2361 to i8*
  %2364 = load i8, i8* %2363, align 1
  %2365 = zext i8 %2364 to i32
  %2366 = shl nuw nsw i32 %2365, 1
  %2367 = zext i32 %2366 to i64
  store i64 %2367, i64* %RCX.i503, align 8
  store i8 0, i8* %14, align 1
  %2368 = and i32 %2366, 254
  %2369 = tail call i32 @llvm.ctpop.i32(i32 %2368)
  %2370 = trunc i32 %2369 to i8
  %2371 = and i8 %2370, 1
  %2372 = xor i8 %2371, 1
  store i8 %2372, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2373 = icmp eq i8 %2364, 0
  %2374 = zext i1 %2373 to i8
  store i8 %2374, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2375 = trunc i32 %2366 to i8
  store i8 %2375, i8* %DL.i112, align 1
  %2376 = add i64 %2355, 15
  store i64 %2376, i64* %3, align 8
  store i8 %2375, i8* %2363, align 1
  %2377 = load i64, i64* %RBP.i, align 8
  %2378 = add i64 %2377, -8
  %2379 = load i64, i64* %3, align 8
  %2380 = add i64 %2379, 4
  store i64 %2380, i64* %3, align 8
  %2381 = inttoptr i64 %2378 to i64*
  %2382 = load i64, i64* %2381, align 8
  store i64 %2382, i64* %RAX.i323, align 8
  %2383 = add i64 %2377, -20
  %2384 = add i64 %2379, 8
  store i64 %2384, i64* %3, align 8
  %2385 = inttoptr i64 %2383 to i32*
  %2386 = load i32, i32* %2385, align 4
  %2387 = sext i32 %2386 to i64
  store i64 %2387, i64* %RSI.i762, align 8
  %2388 = shl nsw i64 %2387, 3
  %2389 = add i64 %2388, %2382
  %2390 = add i64 %2379, 12
  store i64 %2390, i64* %3, align 8
  %2391 = inttoptr i64 %2389 to i64*
  %2392 = load i64, i64* %2391, align 8
  store i64 %2392, i64* %RAX.i323, align 8
  %2393 = add i64 %2377, -24
  %2394 = add i64 %2379, 16
  store i64 %2394, i64* %3, align 8
  %2395 = inttoptr i64 %2393 to i32*
  %2396 = load i32, i32* %2395, align 4
  %2397 = sext i32 %2396 to i64
  store i64 %2397, i64* %RSI.i762, align 8
  %2398 = add i64 %2392, %2397
  %2399 = add i64 %2379, 20
  store i64 %2399, i64* %3, align 8
  %2400 = inttoptr i64 %2398 to i8*
  %2401 = load i8, i8* %2400, align 1
  store i8 0, i8* %14, align 1
  %2402 = zext i8 %2401 to i32
  %2403 = tail call i32 @llvm.ctpop.i32(i32 %2402)
  %2404 = trunc i32 %2403 to i8
  %2405 = and i8 %2404, 1
  %2406 = xor i8 %2405, 1
  store i8 %2406, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2407 = icmp eq i8 %2401, 0
  %2408 = zext i1 %2407 to i8
  store i8 %2408, i8* %30, align 1
  %2409 = lshr i8 %2401, 7
  store i8 %2409, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v102 = select i1 %2407, i64 42, i64 26
  %2410 = add i64 %2379, %.v102
  store i64 %2410, i64* %3, align 8
  br i1 %2407, label %block_.L_4a069b, label %block_4a068b

block_4a068b:                                     ; preds = %block_4a0661
  %2411 = add i64 %2377, -16
  %2412 = add i64 %2410, 4
  store i64 %2412, i64* %3, align 8
  %2413 = inttoptr i64 %2411 to i64*
  %2414 = load i64, i64* %2413, align 8
  store i64 %2414, i64* %RAX.i323, align 8
  %2415 = add i64 %2414, 8
  %2416 = add i64 %2410, 8
  store i64 %2416, i64* %3, align 8
  %2417 = inttoptr i64 %2415 to i8*
  %2418 = load i8, i8* %2417, align 1
  %2419 = or i8 %2418, 1
  %2420 = zext i8 %2419 to i64
  %2421 = zext i8 %2419 to i32
  store i64 %2420, i64* %RCX.i503, align 8
  store i8 0, i8* %14, align 1
  %2422 = tail call i32 @llvm.ctpop.i32(i32 %2421)
  %2423 = trunc i32 %2422 to i8
  %2424 = and i8 %2423, 1
  %2425 = xor i8 %2424, 1
  store i8 %2425, i8* %21, align 1
  store i8 0, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 %2419, i8* %DL.i112, align 1
  %2426 = add i64 %2410, 16
  store i64 %2426, i64* %3, align 8
  store i8 %2419, i8* %2417, align 1
  %.pre79 = load i64, i64* %RBP.i, align 8
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_4a069b

block_.L_4a069b:                                  ; preds = %block_4a068b, %block_4a0661
  %2427 = phi i64 [ %.pre80, %block_4a068b ], [ %2410, %block_4a0661 ]
  %2428 = phi i64 [ %.pre79, %block_4a068b ], [ %2377, %block_4a0661 ]
  %2429 = add i64 %2428, -16
  %2430 = add i64 %2427, 4
  store i64 %2430, i64* %3, align 8
  %2431 = inttoptr i64 %2429 to i64*
  %2432 = load i64, i64* %2431, align 8
  store i64 %2432, i64* %RAX.i323, align 8
  %2433 = add i64 %2432, 4
  %2434 = add i64 %2427, 7
  store i64 %2434, i64* %3, align 8
  %2435 = inttoptr i64 %2433 to i32*
  %2436 = load i32, i32* %2435, align 4
  %2437 = add i32 %2436, -1
  %2438 = zext i32 %2437 to i64
  store i64 %2438, i64* %RCX.i503, align 8
  %2439 = icmp ne i32 %2436, 0
  %2440 = zext i1 %2439 to i8
  store i8 %2440, i8* %14, align 1
  %2441 = and i32 %2437, 255
  %2442 = tail call i32 @llvm.ctpop.i32(i32 %2441)
  %2443 = trunc i32 %2442 to i8
  %2444 = and i8 %2443, 1
  %2445 = xor i8 %2444, 1
  store i8 %2445, i8* %21, align 1
  %2446 = xor i32 %2436, 16
  %2447 = xor i32 %2446, %2437
  %2448 = lshr i32 %2447, 4
  %2449 = trunc i32 %2448 to i8
  %2450 = and i8 %2449, 1
  store i8 %2450, i8* %27, align 1
  %2451 = icmp eq i32 %2437, 0
  %2452 = zext i1 %2451 to i8
  store i8 %2452, i8* %30, align 1
  %2453 = lshr i32 %2437, 31
  %2454 = trunc i32 %2453 to i8
  store i8 %2454, i8* %33, align 1
  %2455 = lshr i32 %2436, 31
  %2456 = xor i32 %2453, %2455
  %2457 = xor i32 %2453, 1
  %2458 = add nuw nsw i32 %2456, %2457
  %2459 = icmp eq i32 %2458, 2
  %2460 = zext i1 %2459 to i8
  store i8 %2460, i8* %39, align 1
  %2461 = add i64 %2427, 13
  store i64 %2461, i64* %3, align 8
  store i32 %2437, i32* %2435, align 4
  %2462 = load i64, i64* %RBP.i, align 8
  %2463 = add i64 %2462, -16
  %2464 = load i64, i64* %3, align 8
  %2465 = add i64 %2464, 4
  store i64 %2465, i64* %3, align 8
  %2466 = inttoptr i64 %2463 to i64*
  %2467 = load i64, i64* %2466, align 8
  store i64 %2467, i64* %RAX.i323, align 8
  %2468 = add i64 %2467, 4
  %2469 = add i64 %2464, 8
  store i64 %2469, i64* %3, align 8
  %2470 = inttoptr i64 %2468 to i32*
  %2471 = load i32, i32* %2470, align 4
  store i8 0, i8* %14, align 1
  %2472 = and i32 %2471, 255
  %2473 = tail call i32 @llvm.ctpop.i32(i32 %2472)
  %2474 = trunc i32 %2473 to i8
  %2475 = and i8 %2474, 1
  %2476 = xor i8 %2475, 1
  store i8 %2476, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2477 = icmp eq i32 %2471, 0
  %2478 = zext i1 %2477 to i8
  store i8 %2478, i8* %30, align 1
  %2479 = lshr i32 %2471, 31
  %2480 = trunc i32 %2479 to i8
  store i8 %2480, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v103 = select i1 %2477, i64 14, i64 67
  %2481 = add i64 %2464, %.v103
  store i64 %2481, i64* %3, align 8
  br i1 %2477, label %block_4a06b6, label %block_.L_4a06eb

block_4a06b6:                                     ; preds = %block_.L_4a069b
  %2482 = add i64 %2481, 4
  store i64 %2482, i64* %3, align 8
  %2483 = load i64, i64* %2466, align 8
  store i64 %2483, i64* %RAX.i323, align 8
  %2484 = add i64 %2483, 4
  %2485 = add i64 %2481, 11
  store i64 %2485, i64* %3, align 8
  %2486 = inttoptr i64 %2484 to i32*
  store i32 8, i32* %2486, align 4
  %2487 = load i64, i64* %RBP.i, align 8
  %2488 = add i64 %2487, -16
  %2489 = load i64, i64* %3, align 8
  %2490 = add i64 %2489, 4
  store i64 %2490, i64* %3, align 8
  %2491 = inttoptr i64 %2488 to i64*
  %2492 = load i64, i64* %2491, align 8
  store i64 %2492, i64* %RAX.i323, align 8
  %2493 = add i64 %2492, 8
  %2494 = add i64 %2489, 7
  store i64 %2494, i64* %3, align 8
  %2495 = inttoptr i64 %2493 to i8*
  %2496 = load i8, i8* %2495, align 1
  store i8 %2496, i8* %CL.i111, align 1
  %2497 = add i64 %2489, 11
  store i64 %2497, i64* %3, align 8
  %2498 = load i64, i64* %2491, align 8
  store i64 %2498, i64* %RAX.i323, align 8
  %2499 = add i64 %2498, 32
  %2500 = add i64 %2489, 15
  store i64 %2500, i64* %3, align 8
  %2501 = inttoptr i64 %2499 to i64*
  %2502 = load i64, i64* %2501, align 8
  store i64 %2502, i64* %RAX.i323, align 8
  %2503 = add i64 %2489, 19
  store i64 %2503, i64* %3, align 8
  %2504 = load i64, i64* %2491, align 8
  store i64 %2504, i64* %RDX.i680, align 8
  %2505 = add i64 %2489, 21
  store i64 %2505, i64* %3, align 8
  %2506 = inttoptr i64 %2504 to i32*
  %2507 = load i32, i32* %2506, align 4
  %2508 = zext i32 %2507 to i64
  store i64 %2508, i64* %RSI.i762, align 8
  %2509 = add i32 %2507, 1
  %2510 = zext i32 %2509 to i64
  store i64 %2510, i64* %RDI.i711, align 8
  %2511 = icmp eq i32 %2507, -1
  %2512 = icmp eq i32 %2509, 0
  %2513 = or i1 %2511, %2512
  %2514 = zext i1 %2513 to i8
  store i8 %2514, i8* %14, align 1
  %2515 = and i32 %2509, 255
  %2516 = tail call i32 @llvm.ctpop.i32(i32 %2515)
  %2517 = trunc i32 %2516 to i8
  %2518 = and i8 %2517, 1
  %2519 = xor i8 %2518, 1
  store i8 %2519, i8* %21, align 1
  %2520 = xor i32 %2509, %2507
  %2521 = lshr i32 %2520, 4
  %2522 = trunc i32 %2521 to i8
  %2523 = and i8 %2522, 1
  store i8 %2523, i8* %27, align 1
  %2524 = zext i1 %2512 to i8
  store i8 %2524, i8* %30, align 1
  %2525 = lshr i32 %2509, 31
  %2526 = trunc i32 %2525 to i8
  store i8 %2526, i8* %33, align 1
  %2527 = lshr i32 %2507, 31
  %2528 = xor i32 %2525, %2527
  %2529 = add nuw nsw i32 %2528, %2525
  %2530 = icmp eq i32 %2529, 2
  %2531 = zext i1 %2530 to i8
  store i8 %2531, i8* %39, align 1
  %2532 = add i64 %2489, 28
  store i64 %2532, i64* %3, align 8
  store i32 %2509, i32* %2506, align 4
  %2533 = load i32, i32* %ESI.i718, align 4
  %2534 = load i64, i64* %3, align 8
  %2535 = sext i32 %2533 to i64
  store i64 %2535, i64* %RDX.i680, align 8
  %2536 = load i64, i64* %RAX.i323, align 8
  %2537 = add i64 %2536, %2535
  %2538 = load i8, i8* %CL.i111, align 1
  %2539 = add i64 %2534, 6
  store i64 %2539, i64* %3, align 8
  %2540 = inttoptr i64 %2537 to i8*
  store i8 %2538, i8* %2540, align 1
  %2541 = load i64, i64* %RBP.i, align 8
  %2542 = add i64 %2541, -16
  %2543 = load i64, i64* %3, align 8
  %2544 = add i64 %2543, 4
  store i64 %2544, i64* %3, align 8
  %2545 = inttoptr i64 %2542 to i64*
  %2546 = load i64, i64* %2545, align 8
  store i64 %2546, i64* %RAX.i323, align 8
  %2547 = add i64 %2546, 8
  %2548 = add i64 %2543, 8
  store i64 %2548, i64* %3, align 8
  %2549 = inttoptr i64 %2547 to i8*
  store i8 0, i8* %2549, align 1
  %.pre81 = load i64, i64* %3, align 8
  %.pre82 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4a06eb

block_.L_4a06eb:                                  ; preds = %block_.L_4a069b, %block_4a06b6
  %2550 = phi i64 [ %.pre82, %block_4a06b6 ], [ %2462, %block_.L_4a069b ]
  %2551 = phi i64 [ %.pre81, %block_4a06b6 ], [ %2481, %block_.L_4a069b ]
  %2552 = add i64 %2550, -24
  %2553 = add i64 %2551, 8
  store i64 %2553, i64* %3, align 8
  %2554 = inttoptr i64 %2552 to i32*
  %2555 = load i32, i32* %2554, align 4
  %2556 = add i32 %2555, 1
  %2557 = zext i32 %2556 to i64
  store i64 %2557, i64* %RAX.i323, align 8
  %2558 = icmp eq i32 %2555, -1
  %2559 = icmp eq i32 %2556, 0
  %2560 = or i1 %2558, %2559
  %2561 = zext i1 %2560 to i8
  store i8 %2561, i8* %14, align 1
  %2562 = and i32 %2556, 255
  %2563 = tail call i32 @llvm.ctpop.i32(i32 %2562)
  %2564 = trunc i32 %2563 to i8
  %2565 = and i8 %2564, 1
  %2566 = xor i8 %2565, 1
  store i8 %2566, i8* %21, align 1
  %2567 = xor i32 %2556, %2555
  %2568 = lshr i32 %2567, 4
  %2569 = trunc i32 %2568 to i8
  %2570 = and i8 %2569, 1
  store i8 %2570, i8* %27, align 1
  %2571 = zext i1 %2559 to i8
  store i8 %2571, i8* %30, align 1
  %2572 = lshr i32 %2556, 31
  %2573 = trunc i32 %2572 to i8
  store i8 %2573, i8* %33, align 1
  %2574 = lshr i32 %2555, 31
  %2575 = xor i32 %2572, %2574
  %2576 = add nuw nsw i32 %2575, %2572
  %2577 = icmp eq i32 %2576, 2
  %2578 = zext i1 %2577 to i8
  store i8 %2578, i8* %39, align 1
  %2579 = add i64 %2551, 14
  store i64 %2579, i64* %3, align 8
  store i32 %2556, i32* %2554, align 4
  %2580 = load i64, i64* %3, align 8
  %2581 = add i64 %2580, -196
  store i64 %2581, i64* %3, align 8
  br label %block_.L_4a0635

block_.L_4a06fe:                                  ; preds = %routine_idivl__esi.exit
  %2582 = add i64 %2356, -20
  %2583 = add i64 %2355, 8
  store i64 %2583, i64* %3, align 8
  %2584 = inttoptr i64 %2582 to i32*
  %2585 = load i32, i32* %2584, align 4
  %2586 = add i32 %2585, 1
  %2587 = zext i32 %2586 to i64
  store i64 %2587, i64* %RAX.i323, align 8
  %2588 = icmp eq i32 %2585, -1
  %2589 = icmp eq i32 %2586, 0
  %2590 = or i1 %2588, %2589
  %2591 = zext i1 %2590 to i8
  store i8 %2591, i8* %14, align 1
  %2592 = and i32 %2586, 255
  %2593 = tail call i32 @llvm.ctpop.i32(i32 %2592)
  %2594 = trunc i32 %2593 to i8
  %2595 = and i8 %2594, 1
  %2596 = xor i8 %2595, 1
  store i8 %2596, i8* %21, align 1
  %2597 = xor i32 %2586, %2585
  %2598 = lshr i32 %2597, 4
  %2599 = trunc i32 %2598 to i8
  %2600 = and i8 %2599, 1
  store i8 %2600, i8* %27, align 1
  %2601 = zext i1 %2589 to i8
  store i8 %2601, i8* %30, align 1
  %2602 = lshr i32 %2586, 31
  %2603 = trunc i32 %2602 to i8
  store i8 %2603, i8* %33, align 1
  %2604 = lshr i32 %2585, 31
  %2605 = xor i32 %2602, %2604
  %2606 = add nuw nsw i32 %2605, %2602
  %2607 = icmp eq i32 %2606, 2
  %2608 = zext i1 %2607 to i8
  store i8 %2608, i8* %39, align 1
  %2609 = add i64 %2355, 14
  store i64 %2609, i64* %3, align 8
  store i32 %2586, i32* %2584, align 4
  %2610 = load i64, i64* %3, align 8
  %2611 = add i64 %2610, -266
  store i64 %2611, i64* %3, align 8
  br label %block_.L_4a0602

block_.L_4a0711:                                  ; preds = %routine_idivl__esi.exit158
  %2612 = add i64 %2278, 5
  store i64 %2612, i64* %3, align 8
  %.pre83 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4a0716

block_.L_4a0716:                                  ; preds = %block_.L_4a05bb, %block_.L_4a0711
  %2613 = phi i64 [ %2176, %block_.L_4a05bb ], [ %2612, %block_.L_4a0711 ]
  %2614 = phi i64 [ %2161, %block_.L_4a05bb ], [ %.pre83, %block_.L_4a0711 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.22, %block_.L_4a05bb ], [ %2250, %block_.L_4a0711 ]
  %2615 = add i64 %2614, -132
  %2616 = add i64 %2613, 6
  store i64 %2616, i64* %3, align 8
  %2617 = inttoptr i64 %2615 to i32*
  %2618 = load i32, i32* %2617, align 4
  %2619 = zext i32 %2618 to i64
  store i64 %2619, i64* %RAX.i323, align 8
  %2620 = load i64, i64* %6, align 8
  %2621 = add i64 %2620, 176
  store i64 %2621, i64* %6, align 8
  %2622 = icmp ugt i64 %2620, -177
  %2623 = zext i1 %2622 to i8
  store i8 %2623, i8* %14, align 1
  %2624 = trunc i64 %2621 to i32
  %2625 = and i32 %2624, 255
  %2626 = tail call i32 @llvm.ctpop.i32(i32 %2625)
  %2627 = trunc i32 %2626 to i8
  %2628 = and i8 %2627, 1
  %2629 = xor i8 %2628, 1
  store i8 %2629, i8* %21, align 1
  %2630 = xor i64 %2620, 16
  %2631 = xor i64 %2630, %2621
  %2632 = lshr i64 %2631, 4
  %2633 = trunc i64 %2632 to i8
  %2634 = and i8 %2633, 1
  store i8 %2634, i8* %27, align 1
  %2635 = icmp eq i64 %2621, 0
  %2636 = zext i1 %2635 to i8
  store i8 %2636, i8* %30, align 1
  %2637 = lshr i64 %2621, 63
  %2638 = trunc i64 %2637 to i8
  store i8 %2638, i8* %33, align 1
  %2639 = lshr i64 %2620, 63
  %2640 = xor i64 %2637, %2639
  %2641 = add nuw nsw i64 %2640, %2637
  %2642 = icmp eq i64 %2641, 2
  %2643 = zext i1 %2642 to i8
  store i8 %2643, i8* %39, align 1
  %2644 = add i64 %2613, 14
  store i64 %2644, i64* %3, align 8
  %2645 = add i64 %2620, 184
  %2646 = inttoptr i64 %2621 to i64*
  %2647 = load i64, i64* %2646, align 8
  store i64 %2647, i64* %RBP.i, align 8
  store i64 %2645, i64* %6, align 8
  %2648 = add i64 %2613, 15
  store i64 %2648, i64* %3, align 8
  %2649 = inttoptr i64 %2645 to i64*
  %2650 = load i64, i64* %2649, align 8
  store i64 %2650, i64* %3, align 8
  %2651 = add i64 %2620, 192
  store i64 %2651, i64* %6, align 8
  ret %struct.Memory* %MEMORY.27
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
define %struct.Memory* @routine_subq__0xb0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -176
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 176
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
define %struct.Memory* @routine_movl__0x10___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4ac700___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4ac700_type* @G__0x4ac700 to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x3c__rsi____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 60
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
define %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
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
define %struct.Memory* @routine_movl_0x34__rsi____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 52
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
define %struct.Memory* @routine_movl_MINUS0x94__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__eax___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %6 = load i32, i32* %R8D, align 4
  %7 = load i32, i32* %EAX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = sext i32 %6 to i64
  %11 = sext i32 %7 to i64
  %12 = mul nsw i64 %11, %10
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %5, align 8
  %15 = shl i64 %12, 32
  %16 = ashr exact i64 %15, 32
  %17 = icmp ne i64 %16, %12
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
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %27, align 1
  %28 = lshr i32 %13, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %18, i8* %31, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x90__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x34__rdi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 52
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
define %struct.Memory* @routine_movl_MINUS0x88__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x3c__rdi____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__0x0__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_movl_MINUS0x14__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl_0x3c__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
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
define %struct.Memory* @routine_movl_MINUS0x98__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
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
define %struct.Memory* @routine_jge_.L_4a0598(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movl_0x34__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -156
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x9c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -156
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
define %struct.Memory* @routine_jge_.L_4a0585(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x60__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_movslq_MINUS0x5c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_movzbl___rax__rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -40
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
define %struct.Memory* @routine_jne_.L_4a0299(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4a02b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x58__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.writeSyntaxElement2Buf_UVLC(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_MINUS0x80__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 1
  %10 = icmp ne i32 %8, -1
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
  %32 = xor i32 %31, 1
  %33 = xor i32 %28, %31
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4a0351(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x64__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -100
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
define %struct.Memory* @routine_jle_.L_4a02e7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = icmp ne i32 %6, 0
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
  %32 = xor i32 %27, 1
  %33 = add nuw nsw i32 %31, %32
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a034c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_jne_.L_4a0316(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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
define %struct.Memory* @routine_movl__0x1__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a0347(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4a0342(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4a0572(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_jne_.L_4a040e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x68__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -104
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
define %struct.Memory* @routine_jge_.L_4a037f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4a0409(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_movl_MINUS0xa0__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
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
define %struct.Memory* @routine_jne_.L_4a03d3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a0404(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4a03ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a056d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_jne_.L_4a04a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 1
  %10 = icmp ne i32 %8, -1
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
  %32 = xor i32 %31, 1
  %33 = xor i32 %28, %31
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x70__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -112
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
define %struct.Memory* @routine_jle_.L_4a043c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4a04a1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_jne_.L_4a046b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4a049c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4a0497(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4a0568(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4a0563(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x6c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -108
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
define %struct.Memory* @routine_jge_.L_4a04d4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4a055e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x60__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_movl_MINUS0xa4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -164
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
define %struct.Memory* @routine_jne_.L_4a0528(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4a0559(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4a0554(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4a0563(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a0577(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_jmpq_.L_4a0242(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a058a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4a020f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_je_.L_4a05bb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x80__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_cmpl_MINUS0x7c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -124
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
define %struct.Memory* @routine_cmovll__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  %14 = xor i1 %10, %13
  %15 = load i64, i64* %RAX, align 8
  %16 = select i1 %14, i64 %5, i64 %15
  %17 = and i64 %16, 4294967295
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
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
define %struct.Memory* @routine_jne_.L_4a0716(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 0, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x8__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 8, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 0, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -168
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4a0711(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -172
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xac__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
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
define %struct.Memory* @routine_jge_.L_4a06fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movzbl_0x8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl___dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dl__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
  %6 = load i8, i8* %DL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rsi_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_cmpb__0x0____rax__rsi_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_je_.L_4a069b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_orl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 1
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RCX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %7, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %16, align 1
  %17 = lshr i32 %7, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = icmp ne i32 %6, 0
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
  %32 = xor i32 %27, 1
  %33 = add nuw nsw i32 %31, %32
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_4a06eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb_0x8__rax____cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RDX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__edi____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = bitcast i64* %RDX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
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
define %struct.Memory* @routine_movb__cl____rax__rdx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %CL, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a06f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a0635(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a0703(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a0602(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4a0716(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x84__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
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
define %struct.Memory* @routine_addq__0xb0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 176
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -177
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
