; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xaf2774_type = type <{ [1 x i8] }>
%G_0xaf2788_type = type <{ [1 x i8] }>
%G_0xaf279c_type = type <{ [1 x i8] }>
%G_0xaf28cc_type = type <{ [4 x i8] }>
%G__0xaf2760_type = type <{ [8 x i8] }>
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
@G_0xaf2774 = local_unnamed_addr global %G_0xaf2774_type zeroinitializer
@G_0xaf2788 = local_unnamed_addr global %G_0xaf2788_type zeroinitializer
@G_0xaf279c = local_unnamed_addr global %G_0xaf279c_type zeroinitializer
@G_0xaf28cc = local_unnamed_addr global %G_0xaf28cc_type zeroinitializer
@G__0xaf2760 = global %G__0xaf2760_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @set_handicap_spots(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -40
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 32
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
  %40 = add i64 %7, -12
  %41 = load i32, i32* %EDI.i, align 4
  %42 = add i64 %10, 10
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i32*
  store i32 %41, i32* %43, align 4
  %RDI.i90 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %44 = load i64, i64* %3, align 8
  %45 = load i32, i32* bitcast (%G_0xaf28cc_type* @G_0xaf28cc to i32*), align 8
  %46 = zext i32 %45 to i64
  store i64 %46, i64* %RDI.i90, align 8
  %47 = load i64, i64* %RBP.i, align 8
  %48 = add i64 %47, -4
  %49 = add i64 %44, 10
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %48 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = sub i32 %45, %51
  %53 = icmp ult i32 %45, %51
  %54 = zext i1 %53 to i8
  store i8 %54, i8* %14, align 1
  %55 = and i32 %52, 255
  %56 = tail call i32 @llvm.ctpop.i32(i32 %55)
  %57 = trunc i32 %56 to i8
  %58 = and i8 %57, 1
  %59 = xor i8 %58, 1
  store i8 %59, i8* %21, align 1
  %60 = xor i32 %51, %45
  %61 = xor i32 %60, %52
  %62 = lshr i32 %61, 4
  %63 = trunc i32 %62 to i8
  %64 = and i8 %63, 1
  store i8 %64, i8* %26, align 1
  %65 = icmp eq i32 %52, 0
  %66 = zext i1 %65 to i8
  store i8 %66, i8* %29, align 1
  %67 = lshr i32 %52, 31
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %32, align 1
  %69 = lshr i32 %45, 31
  %70 = lshr i32 %51, 31
  %71 = xor i32 %70, %69
  %72 = xor i32 %67, %69
  %73 = add nuw nsw i32 %72, %71
  %74 = icmp eq i32 %73, 2
  %75 = zext i1 %74 to i8
  store i8 %75, i8* %38, align 1
  %.v42 = select i1 %65, i64 16, i64 21
  %76 = add i64 %44, %.v42
  store i64 %76, i64* %3, align 8
  br i1 %65, label %block_49242b, label %block_.L_492430

block_49242b:                                     ; preds = %entry
  %77 = add i64 %76, 837
  br label %block_.L_492770

block_.L_492430:                                  ; preds = %entry
  store i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64* %RDI.i90, align 8
  %RSI.i428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 46, i64* %RSI.i428, align 8
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i455 = getelementptr inbounds %union.anon, %union.anon* %78, i64 0, i32 0
  store i64 361, i64* %RAX.i455, align 8
  %EAX.i472 = bitcast %union.anon* %78 to i32*
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i473 = getelementptr inbounds %union.anon, %union.anon* %79, i64 0, i32 0
  store i64 361, i64* %RDX.i473, align 8
  %80 = add i64 %76, 25
  store i64 %80, i64* %3, align 8
  %81 = load i32, i32* %50, align 4
  %82 = zext i32 %81 to i64
  store i64 %82, i64* %RAX.i455, align 8
  store i32 %81, i32* bitcast (%G_0xaf28cc_type* @G_0xaf28cc to i32*), align 8
  %83 = add i64 %76, -594880
  %84 = add i64 %76, 37
  %85 = load i64, i64* %6, align 8
  %86 = add i64 %85, -8
  %87 = inttoptr i64 %86 to i64*
  store i64 %84, i64* %87, align 8
  store i64 %86, i64* %6, align 8
  store i64 %83, i64* %3, align 8
  %88 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %2)
  %89 = load i64, i64* %RBP.i, align 8
  %90 = add i64 %89, -4
  %91 = load i64, i64* %3, align 8
  %92 = add i64 %91, 4
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %90 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = add i32 %94, -5
  %96 = icmp ult i32 %94, 5
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %14, align 1
  %98 = and i32 %95, 255
  %99 = tail call i32 @llvm.ctpop.i32(i32 %98)
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  %102 = xor i8 %101, 1
  store i8 %102, i8* %21, align 1
  %103 = xor i32 %95, %94
  %104 = lshr i32 %103, 4
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  store i8 %106, i8* %26, align 1
  %107 = icmp eq i32 %95, 0
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %29, align 1
  %109 = lshr i32 %95, 31
  %110 = trunc i32 %109 to i8
  store i8 %110, i8* %32, align 1
  %111 = lshr i32 %94, 31
  %112 = xor i32 %109, %111
  %113 = add nuw nsw i32 %112, %111
  %114 = icmp eq i32 %113, 2
  %115 = zext i1 %114 to i8
  store i8 %115, i8* %38, align 1
  %.v43 = select i1 %107, i64 10, i64 150
  %116 = add i64 %91, %.v43
  %117 = add i64 %116, 5
  store i64 %117, i64* %3, align 8
  store i64 2, i64* %RAX.i455, align 8
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i440 = getelementptr inbounds %union.anon, %union.anon* %118, i64 0, i32 0
  br i1 %107, label %block_49245f, label %block_.L_4924eb

block_49245f:                                     ; preds = %block_.L_492430
  store i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64* %RCX.i440, align 8
  store i8 43, i8* getelementptr inbounds (%G_0xaf2774_type, %G_0xaf2774_type* @G_0xaf2774, i64 0, i32 0, i64 0), align 8
  %119 = add i64 %116, 26
  store i64 %119, i64* %3, align 8
  %120 = load i32, i32* %93, align 4
  %121 = add i32 %120, -2
  %122 = zext i32 %121 to i64
  store i64 %122, i64* %RDX.i473, align 8
  %EDX.i535 = bitcast %union.anon* %79 to i32*
  %123 = sext i32 %121 to i64
  %124 = mul nsw i64 %123, 19
  store i64 %124, i64* %RSI.i428, align 8
  %125 = lshr i64 %124, 63
  %126 = add i64 %124, ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64)
  store i64 %126, i64* %RDI.i90, align 8
  %127 = icmp ult i64 %126, ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64)
  %128 = icmp ult i64 %126, %124
  %129 = or i1 %127, %128
  %130 = zext i1 %129 to i8
  store i8 %130, i8* %14, align 1
  %131 = trunc i64 %126 to i32
  %132 = and i32 %131, 255
  %133 = tail call i32 @llvm.ctpop.i32(i32 %132)
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  %136 = xor i8 %135, 1
  store i8 %136, i8* %21, align 1
  %137 = xor i64 %124, ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64)
  %138 = xor i64 %137, %126
  %139 = lshr i64 %138, 4
  %140 = trunc i64 %139 to i8
  %141 = and i8 %140, 1
  store i8 %141, i8* %26, align 1
  %142 = icmp eq i64 %126, 0
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %29, align 1
  %144 = lshr i64 %126, 63
  %145 = trunc i64 %144 to i8
  store i8 %145, i8* %32, align 1
  %146 = xor i64 %144, lshr (i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64 63)
  %147 = xor i64 %144, %125
  %148 = add nuw nsw i64 %146, %147
  %149 = icmp eq i64 %148, 2
  %150 = zext i1 %149 to i8
  store i8 %150, i8* %38, align 1
  %151 = add i64 %124, add (i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64 1)
  %152 = add i64 %116, 46
  store i64 %152, i64* %3, align 8
  %153 = inttoptr i64 %151 to i8*
  store i8 43, i8* %153, align 1
  %154 = load i64, i64* %RBP.i, align 8
  %155 = add i64 %154, -4
  %156 = load i64, i64* %3, align 8
  %157 = add i64 %156, 3
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %155 to i32*
  %159 = load i32, i32* %158, align 4
  %160 = add i32 %159, -2
  %161 = zext i32 %160 to i64
  store i64 %161, i64* %RDX.i473, align 8
  %162 = icmp ult i32 %159, 2
  %163 = zext i1 %162 to i8
  store i8 %163, i8* %14, align 1
  %164 = and i32 %160, 255
  %165 = tail call i32 @llvm.ctpop.i32(i32 %164)
  %166 = trunc i32 %165 to i8
  %167 = and i8 %166, 1
  %168 = xor i8 %167, 1
  store i8 %168, i8* %21, align 1
  %169 = xor i32 %160, %159
  %170 = lshr i32 %169, 4
  %171 = trunc i32 %170 to i8
  %172 = and i8 %171, 1
  store i8 %172, i8* %26, align 1
  %173 = icmp eq i32 %160, 0
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %29, align 1
  %175 = lshr i32 %160, 31
  %176 = trunc i32 %175 to i8
  store i8 %176, i8* %32, align 1
  %177 = lshr i32 %159, 31
  %178 = xor i32 %175, %177
  %179 = add nuw nsw i32 %178, %177
  %180 = icmp eq i32 %179, 2
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %38, align 1
  %182 = sext i32 %160 to i64
  store i64 %182, i64* %RSI.i428, align 8
  %183 = add nsw i64 %182, 11478899
  %184 = add i64 %156, 17
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %183 to i8*
  store i8 43, i8* %185, align 1
  %186 = load i64, i64* %RBP.i, align 8
  %187 = add i64 %186, -4
  %188 = load i64, i64* %3, align 8
  %189 = add i64 %188, 3
  store i64 %189, i64* %3, align 8
  %190 = inttoptr i64 %187 to i32*
  %191 = load i32, i32* %190, align 4
  %192 = add i32 %191, -2
  %193 = zext i32 %192 to i64
  store i64 %193, i64* %RDX.i473, align 8
  %194 = sext i32 %192 to i64
  %195 = mul nsw i64 %194, 19
  store i64 %195, i64* %RSI.i428, align 8
  %196 = lshr i64 %195, 63
  %197 = load i64, i64* %RCX.i440, align 8
  %198 = add i64 %195, %197
  store i64 %198, i64* %RDI.i90, align 8
  %199 = icmp ult i64 %198, %197
  %200 = icmp ult i64 %198, %195
  %201 = or i1 %199, %200
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %14, align 1
  %203 = trunc i64 %198 to i32
  %204 = and i32 %203, 255
  %205 = tail call i32 @llvm.ctpop.i32(i32 %204)
  %206 = trunc i32 %205 to i8
  %207 = and i8 %206, 1
  %208 = xor i8 %207, 1
  store i8 %208, i8* %21, align 1
  %209 = xor i64 %195, %197
  %210 = xor i64 %209, %198
  %211 = lshr i64 %210, 4
  %212 = trunc i64 %211 to i8
  %213 = and i8 %212, 1
  store i8 %213, i8* %26, align 1
  %214 = icmp eq i64 %198, 0
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %29, align 1
  %216 = lshr i64 %198, 63
  %217 = trunc i64 %216 to i8
  store i8 %217, i8* %32, align 1
  %218 = lshr i64 %197, 63
  %219 = xor i64 %216, %218
  %220 = xor i64 %216, %196
  %221 = add nuw nsw i64 %219, %220
  %222 = icmp eq i64 %221, 2
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %38, align 1
  %224 = load i64, i64* %RBP.i, align 8
  %225 = add i64 %224, -4
  %226 = add i64 %188, 22
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %225 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = add i32 %228, -2
  %230 = zext i32 %229 to i64
  store i64 %230, i64* %RDX.i473, align 8
  %231 = icmp ult i32 %228, 2
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %14, align 1
  %233 = and i32 %229, 255
  %234 = tail call i32 @llvm.ctpop.i32(i32 %233)
  %235 = trunc i32 %234 to i8
  %236 = and i8 %235, 1
  %237 = xor i8 %236, 1
  store i8 %237, i8* %21, align 1
  %238 = xor i32 %229, %228
  %239 = lshr i32 %238, 4
  %240 = trunc i32 %239 to i8
  %241 = and i8 %240, 1
  store i8 %241, i8* %26, align 1
  %242 = icmp eq i32 %229, 0
  %243 = zext i1 %242 to i8
  store i8 %243, i8* %29, align 1
  %244 = lshr i32 %229, 31
  %245 = trunc i32 %244 to i8
  store i8 %245, i8* %32, align 1
  %246 = lshr i32 %228, 31
  %247 = xor i32 %244, %246
  %248 = add nuw nsw i32 %247, %246
  %249 = icmp eq i32 %248, 2
  %250 = zext i1 %249 to i8
  store i8 %250, i8* %38, align 1
  %251 = sext i32 %229 to i64
  store i64 %251, i64* %RSI.i428, align 8
  %252 = add i64 %198, %251
  %253 = add i64 %188, 32
  store i64 %253, i64* %3, align 8
  %254 = inttoptr i64 %252 to i8*
  store i8 43, i8* %254, align 1
  %255 = load i64, i64* %RBP.i, align 8
  %256 = add i64 %255, -4
  %257 = load i64, i64* %3, align 8
  %258 = add i64 %257, 3
  store i64 %258, i64* %3, align 8
  %259 = inttoptr i64 %256 to i32*
  %260 = load i32, i32* %259, align 4
  %261 = zext i32 %260 to i64
  store i64 %261, i64* %RDX.i473, align 8
  %262 = add i64 %255, -8
  %263 = load i32, i32* %EAX.i472, align 4
  %264 = add i64 %257, 6
  store i64 %264, i64* %3, align 8
  %265 = inttoptr i64 %262 to i32*
  store i32 %263, i32* %265, align 4
  %266 = load i32, i32* %EDX.i535, align 4
  %267 = zext i32 %266 to i64
  %268 = load i64, i64* %3, align 8
  store i64 %267, i64* %RAX.i455, align 8
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %270 = sext i32 %266 to i64
  %271 = lshr i64 %270, 32
  store i64 %271, i64* %269, align 8
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %273 = getelementptr inbounds %union.anon, %union.anon* %272, i64 0, i32 0
  %274 = load i64, i64* %RBP.i, align 8
  %275 = add i64 %274, -8
  %276 = add i64 %268, 7
  store i64 %276, i64* %3, align 8
  %277 = inttoptr i64 %275 to i32*
  %278 = load i32, i32* %277, align 4
  %279 = zext i32 %278 to i64
  store i64 %279, i64* %273, align 8
  %280 = add i64 %268, 10
  store i64 %280, i64* %3, align 8
  %281 = sext i32 %278 to i64
  %282 = shl nuw i64 %271, 32
  %283 = or i64 %282, %267
  %284 = sdiv i64 %283, %281
  %285 = shl i64 %284, 32
  %286 = ashr exact i64 %285, 32
  %287 = icmp eq i64 %284, %286
  br i1 %287, label %290, label %288

; <label>:288:                                    ; preds = %block_49245f
  %R8D.i475 = bitcast %union.anon* %272 to i32*
  %289 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %280, %struct.Memory* %88)
  %.pre = load i32, i32* %EAX.i472, align 4
  %.pre7 = load i64, i64* %3, align 8
  %.pre8 = load i64, i64* %RBP.i, align 8
  %.pre9 = load i32, i32* %R8D.i475, align 4
  br label %routine_idivl__r8d.exit470

; <label>:290:                                    ; preds = %block_49245f
  %291 = srem i64 %283, %281
  %292 = and i64 %284, 4294967295
  store i64 %292, i64* %RAX.i455, align 8
  %293 = and i64 %291, 4294967295
  store i64 %293, i64* %RDX.i473, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %294 = trunc i64 %284 to i32
  br label %routine_idivl__r8d.exit470

routine_idivl__r8d.exit470:                       ; preds = %290, %288
  %295 = phi i32 [ %.pre9, %288 ], [ %278, %290 ]
  %296 = phi i64 [ %.pre8, %288 ], [ %274, %290 ]
  %297 = phi i64 [ %.pre7, %288 ], [ %280, %290 ]
  %298 = phi i32 [ %.pre, %288 ], [ %294, %290 ]
  %299 = phi %struct.Memory* [ %289, %288 ], [ %88, %290 ]
  %300 = sext i32 %298 to i64
  %301 = mul nsw i64 %300, 19
  store i64 %301, i64* %RSI.i428, align 8
  %302 = lshr i64 %301, 63
  %303 = load i64, i64* %RCX.i440, align 8
  %304 = add i64 %301, %303
  store i64 %304, i64* %RCX.i440, align 8
  %305 = icmp ult i64 %304, %303
  %306 = icmp ult i64 %304, %301
  %307 = or i1 %305, %306
  %308 = zext i1 %307 to i8
  store i8 %308, i8* %14, align 1
  %309 = trunc i64 %304 to i32
  %310 = and i32 %309, 255
  %311 = tail call i32 @llvm.ctpop.i32(i32 %310)
  %312 = trunc i32 %311 to i8
  %313 = and i8 %312, 1
  %314 = xor i8 %313, 1
  store i8 %314, i8* %21, align 1
  %315 = xor i64 %301, %303
  %316 = xor i64 %315, %304
  %317 = lshr i64 %316, 4
  %318 = trunc i64 %317 to i8
  %319 = and i8 %318, 1
  store i8 %319, i8* %26, align 1
  %320 = icmp eq i64 %304, 0
  %321 = zext i1 %320 to i8
  store i8 %321, i8* %29, align 1
  %322 = lshr i64 %304, 63
  %323 = trunc i64 %322 to i8
  store i8 %323, i8* %32, align 1
  %324 = lshr i64 %303, 63
  %325 = xor i64 %322, %324
  %326 = xor i64 %322, %302
  %327 = add nuw nsw i64 %325, %326
  %328 = icmp eq i64 %327, 2
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %38, align 1
  %330 = add i64 %296, -4
  %331 = add i64 %297, 13
  store i64 %331, i64* %3, align 8
  %332 = inttoptr i64 %330 to i32*
  %333 = load i32, i32* %332, align 4
  %334 = zext i32 %333 to i64
  store i64 %334, i64* %RAX.i455, align 8
  %335 = sext i32 %333 to i64
  %336 = lshr i64 %335, 32
  store i64 %336, i64* %269, align 8
  %337 = add i64 %297, 17
  store i64 %337, i64* %3, align 8
  %338 = sext i32 %295 to i64
  %339 = shl nuw i64 %336, 32
  %340 = or i64 %339, %334
  %341 = sdiv i64 %340, %338
  %342 = shl i64 %341, 32
  %343 = ashr exact i64 %342, 32
  %344 = icmp eq i64 %341, %343
  br i1 %344, label %347, label %345

; <label>:345:                                    ; preds = %routine_idivl__r8d.exit470
  %346 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %337, %struct.Memory* %299)
  %.pre10 = load i32, i32* %EAX.i472, align 4
  %.pre11 = load i64, i64* %3, align 8
  %.pre12 = load i64, i64* %RCX.i440, align 8
  br label %routine_idivl__r8d.exit453

; <label>:347:                                    ; preds = %routine_idivl__r8d.exit470
  %348 = srem i64 %340, %338
  %349 = and i64 %341, 4294967295
  store i64 %349, i64* %RAX.i455, align 8
  %350 = and i64 %348, 4294967295
  store i64 %350, i64* %RDX.i473, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %351 = trunc i64 %341 to i32
  br label %routine_idivl__r8d.exit453

routine_idivl__r8d.exit453:                       ; preds = %347, %345
  %352 = phi i64 [ %.pre12, %345 ], [ %304, %347 ]
  %353 = phi i64 [ %.pre11, %345 ], [ %337, %347 ]
  %354 = phi i32 [ %.pre10, %345 ], [ %351, %347 ]
  %355 = phi %struct.Memory* [ %346, %345 ], [ %299, %347 ]
  %356 = sext i32 %354 to i64
  store i64 %356, i64* %RSI.i428, align 8
  %357 = add i64 %352, %356
  %358 = add i64 %353, 7
  store i64 %358, i64* %3, align 8
  %359 = inttoptr i64 %357 to i8*
  store i8 43, i8* %359, align 1
  %360 = load i64, i64* %3, align 8
  %361 = add i64 %360, 650
  br label %block_.L_492770

block_.L_4924eb:                                  ; preds = %block_.L_492430
  %362 = add i64 %116, 8
  store i64 %362, i64* %3, align 8
  %363 = load i32, i32* %93, align 4
  %364 = zext i32 %363 to i64
  store i64 %364, i64* %RCX.i440, align 8
  %365 = add i64 %89, -12
  %366 = add i64 %116, 11
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to i32*
  store i32 2, i32* %367, align 4
  %ECX.i434 = bitcast %union.anon* %118 to i32*
  %368 = load i32, i32* %ECX.i434, align 4
  %369 = zext i32 %368 to i64
  %370 = load i64, i64* %3, align 8
  store i64 %369, i64* %RAX.i455, align 8
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %372 = sext i32 %368 to i64
  %373 = lshr i64 %372, 32
  store i64 %373, i64* %371, align 8
  %374 = load i64, i64* %RBP.i, align 8
  %375 = add i64 %374, -12
  %376 = add i64 %370, 6
  store i64 %376, i64* %3, align 8
  %377 = inttoptr i64 %375 to i32*
  %378 = load i32, i32* %377, align 4
  %379 = zext i32 %378 to i64
  store i64 %379, i64* %RCX.i440, align 8
  %380 = add i64 %370, 8
  store i64 %380, i64* %3, align 8
  %381 = bitcast %union.anon* %79 to i32*
  %382 = sext i32 %378 to i64
  %383 = shl nuw i64 %373, 32
  %384 = or i64 %383, %369
  %385 = sdiv i64 %384, %382
  %386 = shl i64 %385, 32
  %387 = ashr exact i64 %386, 32
  %388 = icmp eq i64 %385, %387
  br i1 %388, label %391, label %389

; <label>:389:                                    ; preds = %block_.L_4924eb
  %390 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %380, %struct.Memory* %88)
  %.pre13 = load i32, i32* %381, align 4
  %.pre14 = load i64, i64* %3, align 8
  %.pre15 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit

; <label>:391:                                    ; preds = %block_.L_4924eb
  %392 = srem i64 %384, %382
  %393 = and i64 %385, 4294967295
  store i64 %393, i64* %RAX.i455, align 8
  %394 = and i64 %392, 4294967295
  store i64 %394, i64* %RDX.i473, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %395 = trunc i64 %392 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %391, %389
  %396 = phi i64 [ %.pre15, %389 ], [ %374, %391 ]
  %397 = phi i64 [ %.pre14, %389 ], [ %380, %391 ]
  %398 = phi i32 [ %.pre13, %389 ], [ %395, %391 ]
  %399 = phi %struct.Memory* [ %390, %389 ], [ %88, %391 ]
  store i8 0, i8* %14, align 1
  %400 = and i32 %398, 255
  %401 = tail call i32 @llvm.ctpop.i32(i32 %400)
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  %404 = xor i8 %403, 1
  store i8 %404, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %405 = icmp eq i32 %398, 0
  %406 = zext i1 %405 to i8
  store i8 %406, i8* %29, align 1
  %407 = lshr i32 %398, 31
  %408 = trunc i32 %407 to i8
  store i8 %408, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v = select i1 %405, i64 9, i64 213
  %409 = add i64 %397, %.v
  %410 = add i64 %396, -4
  %411 = add i64 %409, 4
  store i64 %411, i64* %3, align 8
  %412 = inttoptr i64 %410 to i32*
  %413 = load i32, i32* %412, align 4
  %414 = add i32 %413, -2
  %415 = icmp ult i32 %413, 2
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %14, align 1
  %417 = and i32 %414, 255
  %418 = tail call i32 @llvm.ctpop.i32(i32 %417)
  %419 = trunc i32 %418 to i8
  %420 = and i8 %419, 1
  %421 = xor i8 %420, 1
  store i8 %421, i8* %21, align 1
  %422 = xor i32 %414, %413
  %423 = lshr i32 %422, 4
  %424 = trunc i32 %423 to i8
  %425 = and i8 %424, 1
  store i8 %425, i8* %26, align 1
  %426 = icmp eq i32 %414, 0
  %427 = zext i1 %426 to i8
  store i8 %427, i8* %29, align 1
  %428 = lshr i32 %414, 31
  %429 = trunc i32 %428 to i8
  store i8 %429, i8* %32, align 1
  %430 = lshr i32 %413, 31
  %431 = xor i32 %428, %430
  %432 = add nuw nsw i32 %431, %430
  %433 = icmp eq i32 %432, 2
  %434 = zext i1 %433 to i8
  store i8 %434, i8* %38, align 1
  %435 = icmp ne i8 %429, 0
  %436 = xor i1 %435, %433
  %437 = or i1 %426, %436
  br i1 %405, label %block_492507, label %block_.L_4925d3

block_492507:                                     ; preds = %routine_idivl__ecx.exit
  %.v46 = select i1 %437, i64 112, i64 10
  %438 = add i64 %409, %.v46
  store i64 %438, i64* %3, align 8
  br i1 %437, label %block_.L_492577, label %block_492511

block_492511:                                     ; preds = %block_492507
  %439 = add i64 %438, 4
  store i64 %439, i64* %3, align 8
  %440 = load i32, i32* %412, align 4
  %441 = add i32 %440, -12
  %442 = icmp ult i32 %440, 12
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %14, align 1
  %444 = and i32 %441, 255
  %445 = tail call i32 @llvm.ctpop.i32(i32 %444)
  %446 = trunc i32 %445 to i8
  %447 = and i8 %446, 1
  %448 = xor i8 %447, 1
  store i8 %448, i8* %21, align 1
  %449 = xor i32 %441, %440
  %450 = lshr i32 %449, 4
  %451 = trunc i32 %450 to i8
  %452 = and i8 %451, 1
  store i8 %452, i8* %26, align 1
  %453 = icmp eq i32 %441, 0
  %454 = zext i1 %453 to i8
  store i8 %454, i8* %29, align 1
  %455 = lshr i32 %441, 31
  %456 = trunc i32 %455 to i8
  store i8 %456, i8* %32, align 1
  %457 = lshr i32 %440, 31
  %458 = xor i32 %455, %457
  %459 = add nuw nsw i32 %458, %457
  %460 = icmp eq i32 %459, 2
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %38, align 1
  %462 = icmp ne i8 %456, 0
  %463 = xor i1 %462, %460
  %.v47 = select i1 %463, i64 10, i64 102
  %464 = add i64 %438, %.v47
  store i64 %464, i64* %3, align 8
  br i1 %463, label %block_49251b, label %block_.L_492577

block_49251b:                                     ; preds = %block_492511
  store i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64* %RAX.i455, align 8
  store i8 43, i8* getelementptr inbounds (%G_0xaf2788_type, %G_0xaf2788_type* @G_0xaf2788, i64 0, i32 0, i64 0), align 8
  %465 = add i64 %464, 21
  store i64 %465, i64* %3, align 8
  %466 = load i32, i32* %412, align 4
  %467 = add i32 %466, -3
  %468 = zext i32 %467 to i64
  store i64 %468, i64* %RCX.i440, align 8
  %469 = sext i32 %467 to i64
  %470 = mul nsw i64 %469, 19
  store i64 %470, i64* %RDX.i473, align 8
  %471 = lshr i64 %470, 63
  %472 = add i64 %470, ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64)
  store i64 %472, i64* %RSI.i428, align 8
  %473 = icmp ult i64 %472, ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64)
  %474 = icmp ult i64 %472, %470
  %475 = or i1 %473, %474
  %476 = zext i1 %475 to i8
  store i8 %476, i8* %14, align 1
  %477 = trunc i64 %472 to i32
  %478 = and i32 %477, 255
  %479 = tail call i32 @llvm.ctpop.i32(i32 %478)
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  %482 = xor i8 %481, 1
  store i8 %482, i8* %21, align 1
  %483 = xor i64 %470, ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64)
  %484 = xor i64 %483, %472
  %485 = lshr i64 %484, 4
  %486 = trunc i64 %485 to i8
  %487 = and i8 %486, 1
  store i8 %487, i8* %26, align 1
  %488 = icmp eq i64 %472, 0
  %489 = zext i1 %488 to i8
  store i8 %489, i8* %29, align 1
  %490 = lshr i64 %472, 63
  %491 = trunc i64 %490 to i8
  store i8 %491, i8* %32, align 1
  %492 = xor i64 %490, lshr (i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64 63)
  %493 = xor i64 %490, %471
  %494 = add nuw nsw i64 %492, %493
  %495 = icmp eq i64 %494, 2
  %496 = zext i1 %495 to i8
  store i8 %496, i8* %38, align 1
  %497 = add i64 %470, add (i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64 2)
  %498 = add i64 %464, 41
  store i64 %498, i64* %3, align 8
  %499 = inttoptr i64 %497 to i8*
  store i8 43, i8* %499, align 1
  %500 = load i64, i64* %RBP.i, align 8
  %501 = add i64 %500, -4
  %502 = load i64, i64* %3, align 8
  %503 = add i64 %502, 3
  store i64 %503, i64* %3, align 8
  %504 = inttoptr i64 %501 to i32*
  %505 = load i32, i32* %504, align 4
  %506 = add i32 %505, -3
  %507 = zext i32 %506 to i64
  store i64 %507, i64* %RCX.i440, align 8
  %508 = icmp ult i32 %505, 3
  %509 = zext i1 %508 to i8
  store i8 %509, i8* %14, align 1
  %510 = and i32 %506, 255
  %511 = tail call i32 @llvm.ctpop.i32(i32 %510)
  %512 = trunc i32 %511 to i8
  %513 = and i8 %512, 1
  %514 = xor i8 %513, 1
  store i8 %514, i8* %21, align 1
  %515 = xor i32 %506, %505
  %516 = lshr i32 %515, 4
  %517 = trunc i32 %516 to i8
  %518 = and i8 %517, 1
  store i8 %518, i8* %26, align 1
  %519 = icmp eq i32 %506, 0
  %520 = zext i1 %519 to i8
  store i8 %520, i8* %29, align 1
  %521 = lshr i32 %506, 31
  %522 = trunc i32 %521 to i8
  store i8 %522, i8* %32, align 1
  %523 = lshr i32 %505, 31
  %524 = xor i32 %521, %523
  %525 = add nuw nsw i32 %524, %523
  %526 = icmp eq i32 %525, 2
  %527 = zext i1 %526 to i8
  store i8 %527, i8* %38, align 1
  %528 = sext i32 %506 to i64
  store i64 %528, i64* %RDX.i473, align 8
  %529 = add nsw i64 %528, 11478918
  %530 = add i64 %502, 17
  store i64 %530, i64* %3, align 8
  %531 = inttoptr i64 %529 to i8*
  store i8 43, i8* %531, align 1
  %532 = load i64, i64* %RBP.i, align 8
  %533 = add i64 %532, -4
  %534 = load i64, i64* %3, align 8
  %535 = add i64 %534, 3
  store i64 %535, i64* %3, align 8
  %536 = inttoptr i64 %533 to i32*
  %537 = load i32, i32* %536, align 4
  %538 = add i32 %537, -3
  %539 = zext i32 %538 to i64
  store i64 %539, i64* %RCX.i440, align 8
  %540 = sext i32 %538 to i64
  %541 = mul nsw i64 %540, 19
  store i64 %541, i64* %RDX.i473, align 8
  %542 = lshr i64 %541, 63
  %543 = load i64, i64* %RAX.i455, align 8
  %544 = add i64 %541, %543
  store i64 %544, i64* %RAX.i455, align 8
  %545 = icmp ult i64 %544, %543
  %546 = icmp ult i64 %544, %541
  %547 = or i1 %545, %546
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %14, align 1
  %549 = trunc i64 %544 to i32
  %550 = and i32 %549, 255
  %551 = tail call i32 @llvm.ctpop.i32(i32 %550)
  %552 = trunc i32 %551 to i8
  %553 = and i8 %552, 1
  %554 = xor i8 %553, 1
  store i8 %554, i8* %21, align 1
  %555 = xor i64 %541, %543
  %556 = xor i64 %555, %544
  %557 = lshr i64 %556, 4
  %558 = trunc i64 %557 to i8
  %559 = and i8 %558, 1
  store i8 %559, i8* %26, align 1
  %560 = icmp eq i64 %544, 0
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %29, align 1
  %562 = lshr i64 %544, 63
  %563 = trunc i64 %562 to i8
  store i8 %563, i8* %32, align 1
  %564 = lshr i64 %543, 63
  %565 = xor i64 %562, %564
  %566 = xor i64 %562, %542
  %567 = add nuw nsw i64 %565, %566
  %568 = icmp eq i64 %567, 2
  %569 = zext i1 %568 to i8
  store i8 %569, i8* %38, align 1
  %570 = load i64, i64* %RBP.i, align 8
  %571 = add i64 %570, -4
  %572 = add i64 %534, 19
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %571 to i32*
  %574 = load i32, i32* %573, align 4
  %575 = add i32 %574, -3
  %576 = zext i32 %575 to i64
  store i64 %576, i64* %RCX.i440, align 8
  %577 = icmp ult i32 %574, 3
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %14, align 1
  %579 = and i32 %575, 255
  %580 = tail call i32 @llvm.ctpop.i32(i32 %579)
  %581 = trunc i32 %580 to i8
  %582 = and i8 %581, 1
  %583 = xor i8 %582, 1
  store i8 %583, i8* %21, align 1
  %584 = xor i32 %575, %574
  %585 = lshr i32 %584, 4
  %586 = trunc i32 %585 to i8
  %587 = and i8 %586, 1
  store i8 %587, i8* %26, align 1
  %588 = icmp eq i32 %575, 0
  %589 = zext i1 %588 to i8
  store i8 %589, i8* %29, align 1
  %590 = lshr i32 %575, 31
  %591 = trunc i32 %590 to i8
  store i8 %591, i8* %32, align 1
  %592 = lshr i32 %574, 31
  %593 = xor i32 %590, %592
  %594 = add nuw nsw i32 %593, %592
  %595 = icmp eq i32 %594, 2
  %596 = zext i1 %595 to i8
  store i8 %596, i8* %38, align 1
  %597 = sext i32 %575 to i64
  store i64 %597, i64* %RDX.i473, align 8
  %598 = add i64 %544, %597
  %599 = add i64 %534, 29
  store i64 %599, i64* %3, align 8
  %600 = inttoptr i64 %598 to i8*
  store i8 43, i8* %600, align 1
  %601 = load i64, i64* %3, align 8
  %602 = add i64 %601, 92
  store i64 %602, i64* %3, align 8
  br label %block_.L_4925ce

block_.L_492577:                                  ; preds = %block_492511, %block_492507
  %603 = phi i64 [ %464, %block_492511 ], [ %438, %block_492507 ]
  store i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64* %RAX.i455, align 8
  store i8 43, i8* getelementptr inbounds (%G_0xaf279c_type, %G_0xaf279c_type* @G_0xaf279c, i64 0, i32 0, i64 0), align 8
  %604 = add i64 %603, 21
  store i64 %604, i64* %3, align 8
  %605 = load i32, i32* %412, align 4
  %606 = add i32 %605, -4
  %607 = zext i32 %606 to i64
  store i64 %607, i64* %RCX.i440, align 8
  %608 = sext i32 %606 to i64
  %609 = mul nsw i64 %608, 19
  store i64 %609, i64* %RDX.i473, align 8
  %610 = lshr i64 %609, 63
  %611 = add i64 %609, ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64)
  store i64 %611, i64* %RSI.i428, align 8
  %612 = icmp ult i64 %611, ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64)
  %613 = icmp ult i64 %611, %609
  %614 = or i1 %612, %613
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %14, align 1
  %616 = trunc i64 %611 to i32
  %617 = and i32 %616, 255
  %618 = tail call i32 @llvm.ctpop.i32(i32 %617)
  %619 = trunc i32 %618 to i8
  %620 = and i8 %619, 1
  %621 = xor i8 %620, 1
  store i8 %621, i8* %21, align 1
  %622 = xor i64 %609, ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64)
  %623 = xor i64 %622, %611
  %624 = lshr i64 %623, 4
  %625 = trunc i64 %624 to i8
  %626 = and i8 %625, 1
  store i8 %626, i8* %26, align 1
  %627 = icmp eq i64 %611, 0
  %628 = zext i1 %627 to i8
  store i8 %628, i8* %29, align 1
  %629 = lshr i64 %611, 63
  %630 = trunc i64 %629 to i8
  store i8 %630, i8* %32, align 1
  %631 = xor i64 %629, lshr (i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64 63)
  %632 = xor i64 %629, %610
  %633 = add nuw nsw i64 %631, %632
  %634 = icmp eq i64 %633, 2
  %635 = zext i1 %634 to i8
  store i8 %635, i8* %38, align 1
  %636 = add i64 %609, add (i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64 3)
  %637 = add i64 %603, 41
  store i64 %637, i64* %3, align 8
  %638 = inttoptr i64 %636 to i8*
  store i8 43, i8* %638, align 1
  %639 = load i64, i64* %RBP.i, align 8
  %640 = add i64 %639, -4
  %641 = load i64, i64* %3, align 8
  %642 = add i64 %641, 3
  store i64 %642, i64* %3, align 8
  %643 = inttoptr i64 %640 to i32*
  %644 = load i32, i32* %643, align 4
  %645 = add i32 %644, -4
  %646 = zext i32 %645 to i64
  store i64 %646, i64* %RCX.i440, align 8
  %647 = icmp ult i32 %644, 4
  %648 = zext i1 %647 to i8
  store i8 %648, i8* %14, align 1
  %649 = and i32 %645, 255
  %650 = tail call i32 @llvm.ctpop.i32(i32 %649)
  %651 = trunc i32 %650 to i8
  %652 = and i8 %651, 1
  %653 = xor i8 %652, 1
  store i8 %653, i8* %21, align 1
  %654 = xor i32 %645, %644
  %655 = lshr i32 %654, 4
  %656 = trunc i32 %655 to i8
  %657 = and i8 %656, 1
  store i8 %657, i8* %26, align 1
  %658 = icmp eq i32 %645, 0
  %659 = zext i1 %658 to i8
  store i8 %659, i8* %29, align 1
  %660 = lshr i32 %645, 31
  %661 = trunc i32 %660 to i8
  store i8 %661, i8* %32, align 1
  %662 = lshr i32 %644, 31
  %663 = xor i32 %660, %662
  %664 = add nuw nsw i32 %663, %662
  %665 = icmp eq i32 %664, 2
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %38, align 1
  %667 = sext i32 %645 to i64
  store i64 %667, i64* %RDX.i473, align 8
  %668 = add nsw i64 %667, 11478937
  %669 = add i64 %641, 17
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %668 to i8*
  store i8 43, i8* %670, align 1
  %671 = load i64, i64* %RBP.i, align 8
  %672 = add i64 %671, -4
  %673 = load i64, i64* %3, align 8
  %674 = add i64 %673, 3
  store i64 %674, i64* %3, align 8
  %675 = inttoptr i64 %672 to i32*
  %676 = load i32, i32* %675, align 4
  %677 = add i32 %676, -4
  %678 = zext i32 %677 to i64
  store i64 %678, i64* %RCX.i440, align 8
  %679 = sext i32 %677 to i64
  %680 = mul nsw i64 %679, 19
  store i64 %680, i64* %RDX.i473, align 8
  %681 = lshr i64 %680, 63
  %682 = load i64, i64* %RAX.i455, align 8
  %683 = add i64 %680, %682
  store i64 %683, i64* %RAX.i455, align 8
  %684 = icmp ult i64 %683, %682
  %685 = icmp ult i64 %683, %680
  %686 = or i1 %684, %685
  %687 = zext i1 %686 to i8
  store i8 %687, i8* %14, align 1
  %688 = trunc i64 %683 to i32
  %689 = and i32 %688, 255
  %690 = tail call i32 @llvm.ctpop.i32(i32 %689)
  %691 = trunc i32 %690 to i8
  %692 = and i8 %691, 1
  %693 = xor i8 %692, 1
  store i8 %693, i8* %21, align 1
  %694 = xor i64 %680, %682
  %695 = xor i64 %694, %683
  %696 = lshr i64 %695, 4
  %697 = trunc i64 %696 to i8
  %698 = and i8 %697, 1
  store i8 %698, i8* %26, align 1
  %699 = icmp eq i64 %683, 0
  %700 = zext i1 %699 to i8
  store i8 %700, i8* %29, align 1
  %701 = lshr i64 %683, 63
  %702 = trunc i64 %701 to i8
  store i8 %702, i8* %32, align 1
  %703 = lshr i64 %682, 63
  %704 = xor i64 %701, %703
  %705 = xor i64 %701, %681
  %706 = add nuw nsw i64 %704, %705
  %707 = icmp eq i64 %706, 2
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %38, align 1
  %709 = load i64, i64* %RBP.i, align 8
  %710 = add i64 %709, -4
  %711 = add i64 %673, 19
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %710 to i32*
  %713 = load i32, i32* %712, align 4
  %714 = add i32 %713, -4
  %715 = zext i32 %714 to i64
  store i64 %715, i64* %RCX.i440, align 8
  %716 = icmp ult i32 %713, 4
  %717 = zext i1 %716 to i8
  store i8 %717, i8* %14, align 1
  %718 = and i32 %714, 255
  %719 = tail call i32 @llvm.ctpop.i32(i32 %718)
  %720 = trunc i32 %719 to i8
  %721 = and i8 %720, 1
  %722 = xor i8 %721, 1
  store i8 %722, i8* %21, align 1
  %723 = xor i32 %714, %713
  %724 = lshr i32 %723, 4
  %725 = trunc i32 %724 to i8
  %726 = and i8 %725, 1
  store i8 %726, i8* %26, align 1
  %727 = icmp eq i32 %714, 0
  %728 = zext i1 %727 to i8
  store i8 %728, i8* %29, align 1
  %729 = lshr i32 %714, 31
  %730 = trunc i32 %729 to i8
  store i8 %730, i8* %32, align 1
  %731 = lshr i32 %713, 31
  %732 = xor i32 %729, %731
  %733 = add nuw nsw i32 %732, %731
  %734 = icmp eq i32 %733, 2
  %735 = zext i1 %734 to i8
  store i8 %735, i8* %38, align 1
  %736 = sext i32 %714 to i64
  store i64 %736, i64* %RDX.i473, align 8
  %737 = add i64 %683, %736
  %738 = add i64 %673, 29
  store i64 %738, i64* %3, align 8
  %739 = inttoptr i64 %737 to i8*
  store i8 43, i8* %739, align 1
  %.pre16 = load i64, i64* %3, align 8
  br label %block_.L_4925ce

block_.L_4925ce:                                  ; preds = %block_.L_492577, %block_49251b
  %740 = phi i64 [ %.pre16, %block_.L_492577 ], [ %602, %block_49251b ]
  %741 = add i64 %740, 413
  br label %block_.L_49276b

block_.L_4925d3:                                  ; preds = %routine_idivl__ecx.exit
  %.v44 = select i1 %437, i64 160, i64 10
  %742 = add i64 %409, %.v44
  store i64 %742, i64* %3, align 8
  br i1 %437, label %block_.L_492673, label %block_4925dd

block_4925dd:                                     ; preds = %block_.L_4925d3
  %743 = add i64 %742, 4
  store i64 %743, i64* %3, align 8
  %744 = load i32, i32* %412, align 4
  %745 = add i32 %744, -12
  %746 = icmp ult i32 %744, 12
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
  %766 = icmp ne i8 %760, 0
  %767 = xor i1 %766, %764
  %.v45 = select i1 %767, i64 10, i64 150
  %768 = add i64 %742, %.v45
  store i64 %768, i64* %3, align 8
  br i1 %767, label %block_4925e7, label %block_.L_492673

block_4925e7:                                     ; preds = %block_4925dd
  store i64 2, i64* %RAX.i455, align 8
  store i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64* %RCX.i440, align 8
  store i8 43, i8* getelementptr inbounds (%G_0xaf2788_type, %G_0xaf2788_type* @G_0xaf2788, i64 0, i32 0, i64 0), align 8
  %769 = add i64 %768, 26
  store i64 %769, i64* %3, align 8
  %770 = load i32, i32* %412, align 4
  %771 = add i32 %770, -3
  %772 = zext i32 %771 to i64
  store i64 %772, i64* %RDX.i473, align 8
  %773 = sext i32 %771 to i64
  %774 = mul nsw i64 %773, 19
  store i64 %774, i64* %RSI.i428, align 8
  %775 = lshr i64 %774, 63
  %776 = add i64 %774, ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64)
  store i64 %776, i64* %RDI.i90, align 8
  %777 = icmp ult i64 %776, ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64)
  %778 = icmp ult i64 %776, %774
  %779 = or i1 %777, %778
  %780 = zext i1 %779 to i8
  store i8 %780, i8* %14, align 1
  %781 = trunc i64 %776 to i32
  %782 = and i32 %781, 255
  %783 = tail call i32 @llvm.ctpop.i32(i32 %782)
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  %786 = xor i8 %785, 1
  store i8 %786, i8* %21, align 1
  %787 = xor i64 %774, ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64)
  %788 = xor i64 %787, %776
  %789 = lshr i64 %788, 4
  %790 = trunc i64 %789 to i8
  %791 = and i8 %790, 1
  store i8 %791, i8* %26, align 1
  %792 = icmp eq i64 %776, 0
  %793 = zext i1 %792 to i8
  store i8 %793, i8* %29, align 1
  %794 = lshr i64 %776, 63
  %795 = trunc i64 %794 to i8
  store i8 %795, i8* %32, align 1
  %796 = xor i64 %794, lshr (i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64 63)
  %797 = xor i64 %794, %775
  %798 = add nuw nsw i64 %796, %797
  %799 = icmp eq i64 %798, 2
  %800 = zext i1 %799 to i8
  store i8 %800, i8* %38, align 1
  %801 = add i64 %774, add (i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64 2)
  %802 = add i64 %768, 46
  store i64 %802, i64* %3, align 8
  %803 = inttoptr i64 %801 to i8*
  store i8 43, i8* %803, align 1
  %804 = load i64, i64* %RBP.i, align 8
  %805 = add i64 %804, -4
  %806 = load i64, i64* %3, align 8
  %807 = add i64 %806, 3
  store i64 %807, i64* %3, align 8
  %808 = inttoptr i64 %805 to i32*
  %809 = load i32, i32* %808, align 4
  %810 = add i32 %809, -3
  %811 = zext i32 %810 to i64
  store i64 %811, i64* %RDX.i473, align 8
  %812 = icmp ult i32 %809, 3
  %813 = zext i1 %812 to i8
  store i8 %813, i8* %14, align 1
  %814 = and i32 %810, 255
  %815 = tail call i32 @llvm.ctpop.i32(i32 %814)
  %816 = trunc i32 %815 to i8
  %817 = and i8 %816, 1
  %818 = xor i8 %817, 1
  store i8 %818, i8* %21, align 1
  %819 = xor i32 %810, %809
  %820 = lshr i32 %819, 4
  %821 = trunc i32 %820 to i8
  %822 = and i8 %821, 1
  store i8 %822, i8* %26, align 1
  %823 = icmp eq i32 %810, 0
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %29, align 1
  %825 = lshr i32 %810, 31
  %826 = trunc i32 %825 to i8
  store i8 %826, i8* %32, align 1
  %827 = lshr i32 %809, 31
  %828 = xor i32 %825, %827
  %829 = add nuw nsw i32 %828, %827
  %830 = icmp eq i32 %829, 2
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %38, align 1
  %832 = sext i32 %810 to i64
  store i64 %832, i64* %RSI.i428, align 8
  %833 = add nsw i64 %832, 11478918
  %834 = add i64 %806, 17
  store i64 %834, i64* %3, align 8
  %835 = inttoptr i64 %833 to i8*
  store i8 43, i8* %835, align 1
  %836 = load i64, i64* %RBP.i, align 8
  %837 = add i64 %836, -4
  %838 = load i64, i64* %3, align 8
  %839 = add i64 %838, 3
  store i64 %839, i64* %3, align 8
  %840 = inttoptr i64 %837 to i32*
  %841 = load i32, i32* %840, align 4
  %842 = add i32 %841, -3
  %843 = zext i32 %842 to i64
  store i64 %843, i64* %RDX.i473, align 8
  %844 = sext i32 %842 to i64
  %845 = mul nsw i64 %844, 19
  store i64 %845, i64* %RSI.i428, align 8
  %846 = lshr i64 %845, 63
  %847 = load i64, i64* %RCX.i440, align 8
  %848 = add i64 %845, %847
  store i64 %848, i64* %RDI.i90, align 8
  %849 = icmp ult i64 %848, %847
  %850 = icmp ult i64 %848, %845
  %851 = or i1 %849, %850
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %14, align 1
  %853 = trunc i64 %848 to i32
  %854 = and i32 %853, 255
  %855 = tail call i32 @llvm.ctpop.i32(i32 %854)
  %856 = trunc i32 %855 to i8
  %857 = and i8 %856, 1
  %858 = xor i8 %857, 1
  store i8 %858, i8* %21, align 1
  %859 = xor i64 %845, %847
  %860 = xor i64 %859, %848
  %861 = lshr i64 %860, 4
  %862 = trunc i64 %861 to i8
  %863 = and i8 %862, 1
  store i8 %863, i8* %26, align 1
  %864 = icmp eq i64 %848, 0
  %865 = zext i1 %864 to i8
  store i8 %865, i8* %29, align 1
  %866 = lshr i64 %848, 63
  %867 = trunc i64 %866 to i8
  store i8 %867, i8* %32, align 1
  %868 = lshr i64 %847, 63
  %869 = xor i64 %866, %868
  %870 = xor i64 %866, %846
  %871 = add nuw nsw i64 %869, %870
  %872 = icmp eq i64 %871, 2
  %873 = zext i1 %872 to i8
  store i8 %873, i8* %38, align 1
  %874 = load i64, i64* %RBP.i, align 8
  %875 = add i64 %874, -4
  %876 = add i64 %838, 22
  store i64 %876, i64* %3, align 8
  %877 = inttoptr i64 %875 to i32*
  %878 = load i32, i32* %877, align 4
  %879 = add i32 %878, -3
  %880 = zext i32 %879 to i64
  store i64 %880, i64* %RDX.i473, align 8
  %881 = icmp ult i32 %878, 3
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %14, align 1
  %883 = and i32 %879, 255
  %884 = tail call i32 @llvm.ctpop.i32(i32 %883)
  %885 = trunc i32 %884 to i8
  %886 = and i8 %885, 1
  %887 = xor i8 %886, 1
  store i8 %887, i8* %21, align 1
  %888 = xor i32 %879, %878
  %889 = lshr i32 %888, 4
  %890 = trunc i32 %889 to i8
  %891 = and i8 %890, 1
  store i8 %891, i8* %26, align 1
  %892 = icmp eq i32 %879, 0
  %893 = zext i1 %892 to i8
  store i8 %893, i8* %29, align 1
  %894 = lshr i32 %879, 31
  %895 = trunc i32 %894 to i8
  store i8 %895, i8* %32, align 1
  %896 = lshr i32 %878, 31
  %897 = xor i32 %894, %896
  %898 = add nuw nsw i32 %897, %896
  %899 = icmp eq i32 %898, 2
  %900 = zext i1 %899 to i8
  store i8 %900, i8* %38, align 1
  %901 = sext i32 %879 to i64
  store i64 %901, i64* %RSI.i428, align 8
  %902 = add i64 %848, %901
  %903 = add i64 %838, 32
  store i64 %903, i64* %3, align 8
  %904 = inttoptr i64 %902 to i8*
  store i8 43, i8* %904, align 1
  %905 = load i64, i64* %RBP.i, align 8
  %906 = add i64 %905, -4
  %907 = load i64, i64* %3, align 8
  %908 = add i64 %907, 3
  store i64 %908, i64* %3, align 8
  %909 = inttoptr i64 %906 to i32*
  %910 = load i32, i32* %909, align 4
  %911 = zext i32 %910 to i64
  store i64 %911, i64* %RDX.i473, align 8
  %912 = add i64 %905, -16
  %913 = load i32, i32* %EAX.i472, align 4
  %914 = add i64 %907, 6
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %912 to i32*
  store i32 %913, i32* %915, align 4
  %916 = load i32, i32* %381, align 4
  %917 = zext i32 %916 to i64
  %918 = load i64, i64* %3, align 8
  store i64 %917, i64* %RAX.i455, align 8
  %919 = sext i32 %916 to i64
  %920 = lshr i64 %919, 32
  store i64 %920, i64* %371, align 8
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %922 = getelementptr inbounds %union.anon, %union.anon* %921, i64 0, i32 0
  %923 = load i64, i64* %RBP.i, align 8
  %924 = add i64 %923, -16
  %925 = add i64 %918, 7
  store i64 %925, i64* %3, align 8
  %926 = inttoptr i64 %924 to i32*
  %927 = load i32, i32* %926, align 4
  %928 = zext i32 %927 to i64
  store i64 %928, i64* %922, align 8
  %929 = add i64 %918, 10
  store i64 %929, i64* %3, align 8
  %930 = sext i32 %927 to i64
  %931 = shl nuw i64 %920, 32
  %932 = or i64 %931, %917
  %933 = sdiv i64 %932, %930
  %934 = shl i64 %933, 32
  %935 = ashr exact i64 %934, 32
  %936 = icmp eq i64 %933, %935
  br i1 %936, label %939, label %937

; <label>:937:                                    ; preds = %block_4925e7
  %R8D.i227 = bitcast %union.anon* %921 to i32*
  %938 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %929, %struct.Memory* %399)
  %.pre17 = load i32, i32* %EAX.i472, align 4
  %.pre18 = load i64, i64* %3, align 8
  %.pre19 = load i64, i64* %RBP.i, align 8
  %.pre20 = load i32, i32* %R8D.i227, align 4
  br label %routine_idivl__r8d.exit223

; <label>:939:                                    ; preds = %block_4925e7
  %940 = srem i64 %932, %930
  %941 = and i64 %933, 4294967295
  store i64 %941, i64* %RAX.i455, align 8
  %942 = and i64 %940, 4294967295
  store i64 %942, i64* %RDX.i473, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %943 = trunc i64 %933 to i32
  br label %routine_idivl__r8d.exit223

routine_idivl__r8d.exit223:                       ; preds = %939, %937
  %944 = phi i32 [ %.pre20, %937 ], [ %927, %939 ]
  %945 = phi i64 [ %.pre19, %937 ], [ %923, %939 ]
  %946 = phi i64 [ %.pre18, %937 ], [ %929, %939 ]
  %947 = phi i32 [ %.pre17, %937 ], [ %943, %939 ]
  %948 = phi %struct.Memory* [ %938, %937 ], [ %399, %939 ]
  %949 = sext i32 %947 to i64
  %950 = mul nsw i64 %949, 19
  store i64 %950, i64* %RSI.i428, align 8
  %951 = lshr i64 %950, 63
  %952 = load i64, i64* %RCX.i440, align 8
  %953 = add i64 %950, %952
  store i64 %953, i64* %RCX.i440, align 8
  %954 = icmp ult i64 %953, %952
  %955 = icmp ult i64 %953, %950
  %956 = or i1 %954, %955
  %957 = zext i1 %956 to i8
  store i8 %957, i8* %14, align 1
  %958 = trunc i64 %953 to i32
  %959 = and i32 %958, 255
  %960 = tail call i32 @llvm.ctpop.i32(i32 %959)
  %961 = trunc i32 %960 to i8
  %962 = and i8 %961, 1
  %963 = xor i8 %962, 1
  store i8 %963, i8* %21, align 1
  %964 = xor i64 %950, %952
  %965 = xor i64 %964, %953
  %966 = lshr i64 %965, 4
  %967 = trunc i64 %966 to i8
  %968 = and i8 %967, 1
  store i8 %968, i8* %26, align 1
  %969 = icmp eq i64 %953, 0
  %970 = zext i1 %969 to i8
  store i8 %970, i8* %29, align 1
  %971 = lshr i64 %953, 63
  %972 = trunc i64 %971 to i8
  store i8 %972, i8* %32, align 1
  %973 = lshr i64 %952, 63
  %974 = xor i64 %971, %973
  %975 = xor i64 %971, %951
  %976 = add nuw nsw i64 %974, %975
  %977 = icmp eq i64 %976, 2
  %978 = zext i1 %977 to i8
  store i8 %978, i8* %38, align 1
  %979 = add i64 %945, -4
  %980 = add i64 %946, 13
  store i64 %980, i64* %3, align 8
  %981 = inttoptr i64 %979 to i32*
  %982 = load i32, i32* %981, align 4
  %983 = zext i32 %982 to i64
  store i64 %983, i64* %RAX.i455, align 8
  %984 = sext i32 %982 to i64
  %985 = lshr i64 %984, 32
  store i64 %985, i64* %371, align 8
  %986 = add i64 %946, 17
  store i64 %986, i64* %3, align 8
  %987 = sext i32 %944 to i64
  %988 = shl nuw i64 %985, 32
  %989 = or i64 %988, %983
  %990 = sdiv i64 %989, %987
  %991 = shl i64 %990, 32
  %992 = ashr exact i64 %991, 32
  %993 = icmp eq i64 %990, %992
  br i1 %993, label %996, label %994

; <label>:994:                                    ; preds = %routine_idivl__r8d.exit223
  %995 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %986, %struct.Memory* %948)
  %.pre21 = load i32, i32* %EAX.i472, align 4
  %.pre22 = load i64, i64* %3, align 8
  %.pre23 = load i64, i64* %RCX.i440, align 8
  br label %routine_idivl__r8d.exit207

; <label>:996:                                    ; preds = %routine_idivl__r8d.exit223
  %997 = srem i64 %989, %987
  %998 = and i64 %990, 4294967295
  store i64 %998, i64* %RAX.i455, align 8
  %999 = and i64 %997, 4294967295
  store i64 %999, i64* %RDX.i473, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1000 = trunc i64 %990 to i32
  br label %routine_idivl__r8d.exit207

routine_idivl__r8d.exit207:                       ; preds = %996, %994
  %1001 = phi i64 [ %.pre23, %994 ], [ %953, %996 ]
  %1002 = phi i64 [ %.pre22, %994 ], [ %986, %996 ]
  %1003 = phi i32 [ %.pre21, %994 ], [ %1000, %996 ]
  %1004 = phi %struct.Memory* [ %995, %994 ], [ %948, %996 ]
  %1005 = sext i32 %1003 to i64
  store i64 %1005, i64* %RSI.i428, align 8
  %1006 = add i64 %1001, %1005
  %1007 = add i64 %1002, 7
  store i64 %1007, i64* %3, align 8
  %1008 = inttoptr i64 %1006 to i8*
  store i8 43, i8* %1008, align 1
  %1009 = load i64, i64* %3, align 8
  %1010 = add i64 %1009, 248
  store i64 %1010, i64* %3, align 8
  br label %block_.L_492766

block_.L_492673:                                  ; preds = %block_4925dd, %block_.L_4925d3
  %1011 = phi i64 [ %768, %block_4925dd ], [ %742, %block_.L_4925d3 ]
  store i64 2, i64* %RAX.i455, align 8
  store i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64* %RCX.i440, align 8
  store i8 43, i8* getelementptr inbounds (%G_0xaf279c_type, %G_0xaf279c_type* @G_0xaf279c, i64 0, i32 0, i64 0), align 8
  %1012 = add i64 %1011, 26
  store i64 %1012, i64* %3, align 8
  %1013 = load i32, i32* %412, align 4
  %1014 = add i32 %1013, -4
  %1015 = zext i32 %1014 to i64
  store i64 %1015, i64* %RDX.i473, align 8
  %1016 = sext i32 %1014 to i64
  %1017 = mul nsw i64 %1016, 19
  store i64 %1017, i64* %RSI.i428, align 8
  %1018 = lshr i64 %1017, 63
  %1019 = add i64 %1017, ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64)
  store i64 %1019, i64* %RDI.i90, align 8
  %1020 = icmp ult i64 %1019, ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64)
  %1021 = icmp ult i64 %1019, %1017
  %1022 = or i1 %1020, %1021
  %1023 = zext i1 %1022 to i8
  store i8 %1023, i8* %14, align 1
  %1024 = trunc i64 %1019 to i32
  %1025 = and i32 %1024, 255
  %1026 = tail call i32 @llvm.ctpop.i32(i32 %1025)
  %1027 = trunc i32 %1026 to i8
  %1028 = and i8 %1027, 1
  %1029 = xor i8 %1028, 1
  store i8 %1029, i8* %21, align 1
  %1030 = xor i64 %1017, ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64)
  %1031 = xor i64 %1030, %1019
  %1032 = lshr i64 %1031, 4
  %1033 = trunc i64 %1032 to i8
  %1034 = and i8 %1033, 1
  store i8 %1034, i8* %26, align 1
  %1035 = icmp eq i64 %1019, 0
  %1036 = zext i1 %1035 to i8
  store i8 %1036, i8* %29, align 1
  %1037 = lshr i64 %1019, 63
  %1038 = trunc i64 %1037 to i8
  store i8 %1038, i8* %32, align 1
  %1039 = xor i64 %1037, lshr (i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64 63)
  %1040 = xor i64 %1037, %1018
  %1041 = add nuw nsw i64 %1039, %1040
  %1042 = icmp eq i64 %1041, 2
  %1043 = zext i1 %1042 to i8
  store i8 %1043, i8* %38, align 1
  %1044 = add i64 %1017, add (i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64 3)
  %1045 = add i64 %1011, 46
  store i64 %1045, i64* %3, align 8
  %1046 = inttoptr i64 %1044 to i8*
  store i8 43, i8* %1046, align 1
  %1047 = load i64, i64* %RBP.i, align 8
  %1048 = add i64 %1047, -4
  %1049 = load i64, i64* %3, align 8
  %1050 = add i64 %1049, 3
  store i64 %1050, i64* %3, align 8
  %1051 = inttoptr i64 %1048 to i32*
  %1052 = load i32, i32* %1051, align 4
  %1053 = add i32 %1052, -4
  %1054 = zext i32 %1053 to i64
  store i64 %1054, i64* %RDX.i473, align 8
  %1055 = icmp ult i32 %1052, 4
  %1056 = zext i1 %1055 to i8
  store i8 %1056, i8* %14, align 1
  %1057 = and i32 %1053, 255
  %1058 = tail call i32 @llvm.ctpop.i32(i32 %1057)
  %1059 = trunc i32 %1058 to i8
  %1060 = and i8 %1059, 1
  %1061 = xor i8 %1060, 1
  store i8 %1061, i8* %21, align 1
  %1062 = xor i32 %1053, %1052
  %1063 = lshr i32 %1062, 4
  %1064 = trunc i32 %1063 to i8
  %1065 = and i8 %1064, 1
  store i8 %1065, i8* %26, align 1
  %1066 = icmp eq i32 %1053, 0
  %1067 = zext i1 %1066 to i8
  store i8 %1067, i8* %29, align 1
  %1068 = lshr i32 %1053, 31
  %1069 = trunc i32 %1068 to i8
  store i8 %1069, i8* %32, align 1
  %1070 = lshr i32 %1052, 31
  %1071 = xor i32 %1068, %1070
  %1072 = add nuw nsw i32 %1071, %1070
  %1073 = icmp eq i32 %1072, 2
  %1074 = zext i1 %1073 to i8
  store i8 %1074, i8* %38, align 1
  %1075 = sext i32 %1053 to i64
  store i64 %1075, i64* %RSI.i428, align 8
  %1076 = add nsw i64 %1075, 11478937
  %1077 = add i64 %1049, 17
  store i64 %1077, i64* %3, align 8
  %1078 = inttoptr i64 %1076 to i8*
  store i8 43, i8* %1078, align 1
  %1079 = load i64, i64* %RBP.i, align 8
  %1080 = add i64 %1079, -4
  %1081 = load i64, i64* %3, align 8
  %1082 = add i64 %1081, 3
  store i64 %1082, i64* %3, align 8
  %1083 = inttoptr i64 %1080 to i32*
  %1084 = load i32, i32* %1083, align 4
  %1085 = add i32 %1084, -4
  %1086 = zext i32 %1085 to i64
  store i64 %1086, i64* %RDX.i473, align 8
  %1087 = sext i32 %1085 to i64
  %1088 = mul nsw i64 %1087, 19
  store i64 %1088, i64* %RSI.i428, align 8
  %1089 = lshr i64 %1088, 63
  %1090 = load i64, i64* %RCX.i440, align 8
  %1091 = add i64 %1088, %1090
  store i64 %1091, i64* %RDI.i90, align 8
  %1092 = icmp ult i64 %1091, %1090
  %1093 = icmp ult i64 %1091, %1088
  %1094 = or i1 %1092, %1093
  %1095 = zext i1 %1094 to i8
  store i8 %1095, i8* %14, align 1
  %1096 = trunc i64 %1091 to i32
  %1097 = and i32 %1096, 255
  %1098 = tail call i32 @llvm.ctpop.i32(i32 %1097)
  %1099 = trunc i32 %1098 to i8
  %1100 = and i8 %1099, 1
  %1101 = xor i8 %1100, 1
  store i8 %1101, i8* %21, align 1
  %1102 = xor i64 %1088, %1090
  %1103 = xor i64 %1102, %1091
  %1104 = lshr i64 %1103, 4
  %1105 = trunc i64 %1104 to i8
  %1106 = and i8 %1105, 1
  store i8 %1106, i8* %26, align 1
  %1107 = icmp eq i64 %1091, 0
  %1108 = zext i1 %1107 to i8
  store i8 %1108, i8* %29, align 1
  %1109 = lshr i64 %1091, 63
  %1110 = trunc i64 %1109 to i8
  store i8 %1110, i8* %32, align 1
  %1111 = lshr i64 %1090, 63
  %1112 = xor i64 %1109, %1111
  %1113 = xor i64 %1109, %1089
  %1114 = add nuw nsw i64 %1112, %1113
  %1115 = icmp eq i64 %1114, 2
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %38, align 1
  %1117 = load i64, i64* %RBP.i, align 8
  %1118 = add i64 %1117, -4
  %1119 = add i64 %1081, 22
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1118 to i32*
  %1121 = load i32, i32* %1120, align 4
  %1122 = add i32 %1121, -4
  %1123 = zext i32 %1122 to i64
  store i64 %1123, i64* %RDX.i473, align 8
  %1124 = icmp ult i32 %1121, 4
  %1125 = zext i1 %1124 to i8
  store i8 %1125, i8* %14, align 1
  %1126 = and i32 %1122, 255
  %1127 = tail call i32 @llvm.ctpop.i32(i32 %1126)
  %1128 = trunc i32 %1127 to i8
  %1129 = and i8 %1128, 1
  %1130 = xor i8 %1129, 1
  store i8 %1130, i8* %21, align 1
  %1131 = xor i32 %1122, %1121
  %1132 = lshr i32 %1131, 4
  %1133 = trunc i32 %1132 to i8
  %1134 = and i8 %1133, 1
  store i8 %1134, i8* %26, align 1
  %1135 = icmp eq i32 %1122, 0
  %1136 = zext i1 %1135 to i8
  store i8 %1136, i8* %29, align 1
  %1137 = lshr i32 %1122, 31
  %1138 = trunc i32 %1137 to i8
  store i8 %1138, i8* %32, align 1
  %1139 = lshr i32 %1121, 31
  %1140 = xor i32 %1137, %1139
  %1141 = add nuw nsw i32 %1140, %1139
  %1142 = icmp eq i32 %1141, 2
  %1143 = zext i1 %1142 to i8
  store i8 %1143, i8* %38, align 1
  %1144 = sext i32 %1122 to i64
  store i64 %1144, i64* %RSI.i428, align 8
  %1145 = add i64 %1091, %1144
  %1146 = add i64 %1081, 32
  store i64 %1146, i64* %3, align 8
  %1147 = inttoptr i64 %1145 to i8*
  store i8 43, i8* %1147, align 1
  %1148 = load i64, i64* %RBP.i, align 8
  %1149 = add i64 %1148, -4
  %1150 = load i64, i64* %3, align 8
  %1151 = add i64 %1150, 3
  store i64 %1151, i64* %3, align 8
  %1152 = inttoptr i64 %1149 to i32*
  %1153 = load i32, i32* %1152, align 4
  %1154 = zext i32 %1153 to i64
  store i64 %1154, i64* %RDX.i473, align 8
  %1155 = add i64 %1148, -20
  %1156 = load i32, i32* %EAX.i472, align 4
  %1157 = add i64 %1150, 6
  store i64 %1157, i64* %3, align 8
  %1158 = inttoptr i64 %1155 to i32*
  store i32 %1156, i32* %1158, align 4
  %1159 = load i32, i32* %381, align 4
  %1160 = zext i32 %1159 to i64
  %1161 = load i64, i64* %3, align 8
  store i64 %1160, i64* %RAX.i455, align 8
  %1162 = sext i32 %1159 to i64
  %1163 = lshr i64 %1162, 32
  store i64 %1163, i64* %371, align 8
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i128 = bitcast %union.anon* %1164 to i32*
  %1165 = getelementptr inbounds %union.anon, %union.anon* %1164, i64 0, i32 0
  %1166 = load i64, i64* %RBP.i, align 8
  %1167 = add i64 %1166, -20
  %1168 = add i64 %1161, 7
  store i64 %1168, i64* %3, align 8
  %1169 = inttoptr i64 %1167 to i32*
  %1170 = load i32, i32* %1169, align 4
  %1171 = zext i32 %1170 to i64
  store i64 %1171, i64* %1165, align 8
  %1172 = add i64 %1161, 10
  store i64 %1172, i64* %3, align 8
  %1173 = sext i32 %1170 to i64
  %1174 = shl nuw i64 %1163, 32
  %1175 = or i64 %1174, %1160
  %1176 = sdiv i64 %1175, %1173
  %1177 = shl i64 %1176, 32
  %1178 = ashr exact i64 %1177, 32
  %1179 = icmp eq i64 %1176, %1178
  br i1 %1179, label %1182, label %1180

; <label>:1180:                                   ; preds = %block_.L_492673
  %1181 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1172, %struct.Memory* %399)
  %.pre24 = load i32, i32* %EAX.i472, align 4
  %.pre25 = load i64, i64* %3, align 8
  br label %routine_idivl__r8d.exit125

; <label>:1182:                                   ; preds = %block_.L_492673
  %1183 = srem i64 %1175, %1173
  %1184 = and i64 %1176, 4294967295
  store i64 %1184, i64* %RAX.i455, align 8
  %1185 = and i64 %1183, 4294967295
  store i64 %1185, i64* %RDX.i473, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1186 = trunc i64 %1176 to i32
  br label %routine_idivl__r8d.exit125

routine_idivl__r8d.exit125:                       ; preds = %1182, %1180
  %1187 = phi i64 [ %.pre25, %1180 ], [ %1172, %1182 ]
  %1188 = phi i32 [ %.pre24, %1180 ], [ %1186, %1182 ]
  %1189 = phi %struct.Memory* [ %1181, %1180 ], [ %399, %1182 ]
  %1190 = sext i32 %1188 to i64
  store i64 %1190, i64* %RSI.i428, align 8
  %1191 = add nsw i64 %1190, 11478937
  %1192 = add i64 %1187, 11
  store i64 %1192, i64* %3, align 8
  %1193 = inttoptr i64 %1191 to i8*
  store i8 43, i8* %1193, align 1
  %1194 = load i64, i64* %RBP.i, align 8
  %1195 = add i64 %1194, -4
  %1196 = load i64, i64* %3, align 8
  %1197 = add i64 %1196, 3
  store i64 %1197, i64* %3, align 8
  %1198 = inttoptr i64 %1195 to i32*
  %1199 = load i32, i32* %1198, align 4
  %1200 = zext i32 %1199 to i64
  store i64 %1200, i64* %RAX.i455, align 8
  %1201 = sext i32 %1199 to i64
  %1202 = lshr i64 %1201, 32
  store i64 %1202, i64* %371, align 8
  %1203 = load i32, i32* %R8D.i128, align 4
  %1204 = add i64 %1196, 7
  store i64 %1204, i64* %3, align 8
  %1205 = sext i32 %1203 to i64
  %1206 = shl nuw i64 %1202, 32
  %1207 = or i64 %1206, %1200
  %1208 = sdiv i64 %1207, %1205
  %1209 = shl i64 %1208, 32
  %1210 = ashr exact i64 %1209, 32
  %1211 = icmp eq i64 %1208, %1210
  br i1 %1211, label %1214, label %1212

; <label>:1212:                                   ; preds = %routine_idivl__r8d.exit125
  %1213 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1204, %struct.Memory* %1189)
  %.pre26 = load i32, i32* %EAX.i472, align 4
  %.pre27 = load i64, i64* %3, align 8
  br label %routine_idivl__r8d.exit110

; <label>:1214:                                   ; preds = %routine_idivl__r8d.exit125
  %1215 = srem i64 %1207, %1205
  %1216 = and i64 %1208, 4294967295
  store i64 %1216, i64* %RAX.i455, align 8
  %1217 = and i64 %1215, 4294967295
  store i64 %1217, i64* %RDX.i473, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1218 = trunc i64 %1208 to i32
  br label %routine_idivl__r8d.exit110

routine_idivl__r8d.exit110:                       ; preds = %1214, %1212
  %1219 = phi i64 [ %.pre27, %1212 ], [ %1204, %1214 ]
  %1220 = phi i32 [ %.pre26, %1212 ], [ %1218, %1214 ]
  %1221 = phi %struct.Memory* [ %1213, %1212 ], [ %1189, %1214 ]
  %1222 = sext i32 %1220 to i64
  %1223 = mul nsw i64 %1222, 19
  store i64 %1223, i64* %RSI.i428, align 8
  %1224 = lshr i64 %1223, 63
  %1225 = load i64, i64* %RCX.i440, align 8
  %1226 = add i64 %1223, %1225
  store i64 %1226, i64* %RDI.i90, align 8
  %1227 = icmp ult i64 %1226, %1225
  %1228 = icmp ult i64 %1226, %1223
  %1229 = or i1 %1227, %1228
  %1230 = zext i1 %1229 to i8
  store i8 %1230, i8* %14, align 1
  %1231 = trunc i64 %1226 to i32
  %1232 = and i32 %1231, 255
  %1233 = tail call i32 @llvm.ctpop.i32(i32 %1232)
  %1234 = trunc i32 %1233 to i8
  %1235 = and i8 %1234, 1
  %1236 = xor i8 %1235, 1
  store i8 %1236, i8* %21, align 1
  %1237 = xor i64 %1223, %1225
  %1238 = xor i64 %1237, %1226
  %1239 = lshr i64 %1238, 4
  %1240 = trunc i64 %1239 to i8
  %1241 = and i8 %1240, 1
  store i8 %1241, i8* %26, align 1
  %1242 = icmp eq i64 %1226, 0
  %1243 = zext i1 %1242 to i8
  store i8 %1243, i8* %29, align 1
  %1244 = lshr i64 %1226, 63
  %1245 = trunc i64 %1244 to i8
  store i8 %1245, i8* %32, align 1
  %1246 = lshr i64 %1225, 63
  %1247 = xor i64 %1244, %1246
  %1248 = xor i64 %1244, %1224
  %1249 = add nuw nsw i64 %1247, %1248
  %1250 = icmp eq i64 %1249, 2
  %1251 = zext i1 %1250 to i8
  store i8 %1251, i8* %38, align 1
  %1252 = add i64 %1226, 3
  %1253 = add i64 %1219, 17
  store i64 %1253, i64* %3, align 8
  %1254 = inttoptr i64 %1252 to i8*
  store i8 43, i8* %1254, align 1
  %1255 = load i64, i64* %RBP.i, align 8
  %1256 = add i64 %1255, -4
  %1257 = load i64, i64* %3, align 8
  %1258 = add i64 %1257, 3
  store i64 %1258, i64* %3, align 8
  %1259 = inttoptr i64 %1256 to i32*
  %1260 = load i32, i32* %1259, align 4
  %1261 = zext i32 %1260 to i64
  store i64 %1261, i64* %RAX.i455, align 8
  %1262 = sext i32 %1260 to i64
  %1263 = lshr i64 %1262, 32
  store i64 %1263, i64* %371, align 8
  %1264 = load i32, i32* %R8D.i128, align 4
  %1265 = add i64 %1257, 7
  store i64 %1265, i64* %3, align 8
  %1266 = sext i32 %1264 to i64
  %1267 = shl nuw i64 %1263, 32
  %1268 = or i64 %1267, %1261
  %1269 = sdiv i64 %1268, %1266
  %1270 = shl i64 %1269, 32
  %1271 = ashr exact i64 %1270, 32
  %1272 = icmp eq i64 %1269, %1271
  br i1 %1272, label %1275, label %1273

; <label>:1273:                                   ; preds = %routine_idivl__r8d.exit110
  %1274 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1265, %struct.Memory* %1221)
  %.pre28 = load i32, i32* %EAX.i472, align 4
  %.pre29 = load i64, i64* %3, align 8
  %.pre30 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__r8d.exit88

; <label>:1275:                                   ; preds = %routine_idivl__r8d.exit110
  %1276 = srem i64 %1268, %1266
  %1277 = and i64 %1269, 4294967295
  store i64 %1277, i64* %RAX.i455, align 8
  %1278 = and i64 %1276, 4294967295
  store i64 %1278, i64* %RDX.i473, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1279 = trunc i64 %1269 to i32
  br label %routine_idivl__r8d.exit88

routine_idivl__r8d.exit88:                        ; preds = %1275, %1273
  %1280 = phi i64 [ %.pre30, %1273 ], [ %1255, %1275 ]
  %1281 = phi i64 [ %.pre29, %1273 ], [ %1265, %1275 ]
  %1282 = phi i32 [ %.pre28, %1273 ], [ %1279, %1275 ]
  %1283 = phi %struct.Memory* [ %1274, %1273 ], [ %1221, %1275 ]
  %1284 = sext i32 %1282 to i64
  %1285 = mul nsw i64 %1284, 19
  store i64 %1285, i64* %RSI.i428, align 8
  %1286 = lshr i64 %1285, 63
  %1287 = load i64, i64* %RCX.i440, align 8
  %1288 = add i64 %1285, %1287
  store i64 %1288, i64* %RDI.i90, align 8
  %1289 = icmp ult i64 %1288, %1287
  %1290 = icmp ult i64 %1288, %1285
  %1291 = or i1 %1289, %1290
  %1292 = zext i1 %1291 to i8
  store i8 %1292, i8* %14, align 1
  %1293 = trunc i64 %1288 to i32
  %1294 = and i32 %1293, 255
  %1295 = tail call i32 @llvm.ctpop.i32(i32 %1294)
  %1296 = trunc i32 %1295 to i8
  %1297 = and i8 %1296, 1
  %1298 = xor i8 %1297, 1
  store i8 %1298, i8* %21, align 1
  %1299 = xor i64 %1285, %1287
  %1300 = xor i64 %1299, %1288
  %1301 = lshr i64 %1300, 4
  %1302 = trunc i64 %1301 to i8
  %1303 = and i8 %1302, 1
  store i8 %1303, i8* %26, align 1
  %1304 = icmp eq i64 %1288, 0
  %1305 = zext i1 %1304 to i8
  store i8 %1305, i8* %29, align 1
  %1306 = lshr i64 %1288, 63
  %1307 = trunc i64 %1306 to i8
  store i8 %1307, i8* %32, align 1
  %1308 = lshr i64 %1287, 63
  %1309 = xor i64 %1306, %1308
  %1310 = xor i64 %1306, %1286
  %1311 = add nuw nsw i64 %1309, %1310
  %1312 = icmp eq i64 %1311, 2
  %1313 = zext i1 %1312 to i8
  store i8 %1313, i8* %38, align 1
  %1314 = add i64 %1280, -4
  %1315 = add i64 %1281, 16
  store i64 %1315, i64* %3, align 8
  %1316 = inttoptr i64 %1314 to i32*
  %1317 = load i32, i32* %1316, align 4
  %1318 = add i32 %1317, -4
  %1319 = zext i32 %1318 to i64
  store i64 %1319, i64* %RAX.i455, align 8
  %1320 = icmp ult i32 %1317, 4
  %1321 = zext i1 %1320 to i8
  store i8 %1321, i8* %14, align 1
  %1322 = and i32 %1318, 255
  %1323 = tail call i32 @llvm.ctpop.i32(i32 %1322)
  %1324 = trunc i32 %1323 to i8
  %1325 = and i8 %1324, 1
  %1326 = xor i8 %1325, 1
  store i8 %1326, i8* %21, align 1
  %1327 = xor i32 %1318, %1317
  %1328 = lshr i32 %1327, 4
  %1329 = trunc i32 %1328 to i8
  %1330 = and i8 %1329, 1
  store i8 %1330, i8* %26, align 1
  %1331 = icmp eq i32 %1318, 0
  %1332 = zext i1 %1331 to i8
  store i8 %1332, i8* %29, align 1
  %1333 = lshr i32 %1318, 31
  %1334 = trunc i32 %1333 to i8
  store i8 %1334, i8* %32, align 1
  %1335 = lshr i32 %1317, 31
  %1336 = xor i32 %1333, %1335
  %1337 = add nuw nsw i32 %1336, %1335
  %1338 = icmp eq i32 %1337, 2
  %1339 = zext i1 %1338 to i8
  store i8 %1339, i8* %38, align 1
  %1340 = sext i32 %1318 to i64
  store i64 %1340, i64* %RSI.i428, align 8
  %1341 = add i64 %1288, %1340
  %1342 = add i64 %1281, 26
  store i64 %1342, i64* %3, align 8
  %1343 = inttoptr i64 %1341 to i8*
  store i8 43, i8* %1343, align 1
  %1344 = load i64, i64* %RBP.i, align 8
  %1345 = add i64 %1344, -4
  %1346 = load i64, i64* %3, align 8
  %1347 = add i64 %1346, 3
  store i64 %1347, i64* %3, align 8
  %1348 = inttoptr i64 %1345 to i32*
  %1349 = load i32, i32* %1348, align 4
  %1350 = add i32 %1349, -4
  %1351 = zext i32 %1350 to i64
  store i64 %1351, i64* %RAX.i455, align 8
  %1352 = sext i32 %1350 to i64
  %1353 = mul nsw i64 %1352, 19
  store i64 %1353, i64* %RSI.i428, align 8
  %1354 = lshr i64 %1353, 63
  %1355 = load i64, i64* %RCX.i440, align 8
  %1356 = add i64 %1353, %1355
  store i64 %1356, i64* %RDI.i90, align 8
  %1357 = icmp ult i64 %1356, %1355
  %1358 = icmp ult i64 %1356, %1353
  %1359 = or i1 %1357, %1358
  %1360 = zext i1 %1359 to i8
  store i8 %1360, i8* %14, align 1
  %1361 = trunc i64 %1356 to i32
  %1362 = and i32 %1361, 255
  %1363 = tail call i32 @llvm.ctpop.i32(i32 %1362)
  %1364 = trunc i32 %1363 to i8
  %1365 = and i8 %1364, 1
  %1366 = xor i8 %1365, 1
  store i8 %1366, i8* %21, align 1
  %1367 = xor i64 %1353, %1355
  %1368 = xor i64 %1367, %1356
  %1369 = lshr i64 %1368, 4
  %1370 = trunc i64 %1369 to i8
  %1371 = and i8 %1370, 1
  store i8 %1371, i8* %26, align 1
  %1372 = icmp eq i64 %1356, 0
  %1373 = zext i1 %1372 to i8
  store i8 %1373, i8* %29, align 1
  %1374 = lshr i64 %1356, 63
  %1375 = trunc i64 %1374 to i8
  store i8 %1375, i8* %32, align 1
  %1376 = lshr i64 %1355, 63
  %1377 = xor i64 %1374, %1376
  %1378 = xor i64 %1374, %1354
  %1379 = add nuw nsw i64 %1377, %1378
  %1380 = icmp eq i64 %1379, 2
  %1381 = zext i1 %1380 to i8
  store i8 %1381, i8* %38, align 1
  %1382 = load i64, i64* %RBP.i, align 8
  %1383 = add i64 %1382, -4
  %1384 = add i64 %1346, 22
  store i64 %1384, i64* %3, align 8
  %1385 = inttoptr i64 %1383 to i32*
  %1386 = load i32, i32* %1385, align 4
  %1387 = zext i32 %1386 to i64
  store i64 %1387, i64* %RAX.i455, align 8
  %1388 = sext i32 %1386 to i64
  %1389 = lshr i64 %1388, 32
  store i64 %1389, i64* %371, align 8
  %1390 = load i32, i32* %R8D.i128, align 4
  %1391 = add i64 %1346, 26
  store i64 %1391, i64* %3, align 8
  %1392 = sext i32 %1390 to i64
  %1393 = shl nuw i64 %1389, 32
  %1394 = or i64 %1393, %1387
  %1395 = sdiv i64 %1394, %1392
  %1396 = shl i64 %1395, 32
  %1397 = ashr exact i64 %1396, 32
  %1398 = icmp eq i64 %1395, %1397
  br i1 %1398, label %1401, label %1399

; <label>:1399:                                   ; preds = %routine_idivl__r8d.exit88
  %1400 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1391, %struct.Memory* %1283)
  %.pre31 = load i32, i32* %EAX.i472, align 4
  %.pre32 = load i64, i64* %3, align 8
  %.pre33 = load i64, i64* %RDI.i90, align 8
  br label %routine_idivl__r8d.exit41

; <label>:1401:                                   ; preds = %routine_idivl__r8d.exit88
  %1402 = srem i64 %1394, %1392
  %1403 = and i64 %1395, 4294967295
  store i64 %1403, i64* %RAX.i455, align 8
  %1404 = and i64 %1402, 4294967295
  store i64 %1404, i64* %RDX.i473, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1405 = trunc i64 %1395 to i32
  br label %routine_idivl__r8d.exit41

routine_idivl__r8d.exit41:                        ; preds = %1401, %1399
  %1406 = phi i64 [ %.pre33, %1399 ], [ %1356, %1401 ]
  %1407 = phi i64 [ %.pre32, %1399 ], [ %1391, %1401 ]
  %1408 = phi i32 [ %.pre31, %1399 ], [ %1405, %1401 ]
  %1409 = phi %struct.Memory* [ %1400, %1399 ], [ %1283, %1401 ]
  %1410 = sext i32 %1408 to i64
  store i64 %1410, i64* %RSI.i428, align 8
  %1411 = add i64 %1406, %1410
  %1412 = add i64 %1407, 7
  store i64 %1412, i64* %3, align 8
  %1413 = inttoptr i64 %1411 to i8*
  store i8 43, i8* %1413, align 1
  %1414 = load i64, i64* %RBP.i, align 8
  %1415 = add i64 %1414, -4
  %1416 = load i64, i64* %3, align 8
  %1417 = add i64 %1416, 3
  store i64 %1417, i64* %3, align 8
  %1418 = inttoptr i64 %1415 to i32*
  %1419 = load i32, i32* %1418, align 4
  %1420 = zext i32 %1419 to i64
  store i64 %1420, i64* %RAX.i455, align 8
  %1421 = sext i32 %1419 to i64
  %1422 = lshr i64 %1421, 32
  store i64 %1422, i64* %371, align 8
  %1423 = load i32, i32* %R8D.i128, align 4
  %1424 = add i64 %1416, 7
  store i64 %1424, i64* %3, align 8
  %1425 = sext i32 %1423 to i64
  %1426 = shl nuw i64 %1422, 32
  %1427 = or i64 %1426, %1420
  %1428 = sdiv i64 %1427, %1425
  %1429 = shl i64 %1428, 32
  %1430 = ashr exact i64 %1429, 32
  %1431 = icmp eq i64 %1428, %1430
  br i1 %1431, label %1434, label %1432

; <label>:1432:                                   ; preds = %routine_idivl__r8d.exit41
  %1433 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1424, %struct.Memory* %1409)
  %.pre34 = load i32, i32* %EAX.i472, align 4
  %.pre35 = load i64, i64* %3, align 8
  %.pre36 = load i64, i64* %RBP.i, align 8
  %.pre37 = load i32, i32* %R8D.i128, align 4
  br label %routine_idivl__r8d.exit27

; <label>:1434:                                   ; preds = %routine_idivl__r8d.exit41
  %1435 = srem i64 %1427, %1425
  %1436 = and i64 %1428, 4294967295
  store i64 %1436, i64* %RAX.i455, align 8
  %1437 = and i64 %1435, 4294967295
  store i64 %1437, i64* %RDX.i473, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1438 = trunc i64 %1428 to i32
  br label %routine_idivl__r8d.exit27

routine_idivl__r8d.exit27:                        ; preds = %1434, %1432
  %1439 = phi i32 [ %.pre37, %1432 ], [ %1423, %1434 ]
  %1440 = phi i64 [ %.pre36, %1432 ], [ %1414, %1434 ]
  %1441 = phi i64 [ %.pre35, %1432 ], [ %1424, %1434 ]
  %1442 = phi i32 [ %.pre34, %1432 ], [ %1438, %1434 ]
  %1443 = phi %struct.Memory* [ %1433, %1432 ], [ %1409, %1434 ]
  %1444 = sext i32 %1442 to i64
  %1445 = mul nsw i64 %1444, 19
  store i64 %1445, i64* %RSI.i428, align 8
  %1446 = lshr i64 %1445, 63
  %1447 = load i64, i64* %RCX.i440, align 8
  %1448 = add i64 %1445, %1447
  store i64 %1448, i64* %RCX.i440, align 8
  %1449 = icmp ult i64 %1448, %1447
  %1450 = icmp ult i64 %1448, %1445
  %1451 = or i1 %1449, %1450
  %1452 = zext i1 %1451 to i8
  store i8 %1452, i8* %14, align 1
  %1453 = trunc i64 %1448 to i32
  %1454 = and i32 %1453, 255
  %1455 = tail call i32 @llvm.ctpop.i32(i32 %1454)
  %1456 = trunc i32 %1455 to i8
  %1457 = and i8 %1456, 1
  %1458 = xor i8 %1457, 1
  store i8 %1458, i8* %21, align 1
  %1459 = xor i64 %1445, %1447
  %1460 = xor i64 %1459, %1448
  %1461 = lshr i64 %1460, 4
  %1462 = trunc i64 %1461 to i8
  %1463 = and i8 %1462, 1
  store i8 %1463, i8* %26, align 1
  %1464 = icmp eq i64 %1448, 0
  %1465 = zext i1 %1464 to i8
  store i8 %1465, i8* %29, align 1
  %1466 = lshr i64 %1448, 63
  %1467 = trunc i64 %1466 to i8
  store i8 %1467, i8* %32, align 1
  %1468 = lshr i64 %1447, 63
  %1469 = xor i64 %1466, %1468
  %1470 = xor i64 %1466, %1446
  %1471 = add nuw nsw i64 %1469, %1470
  %1472 = icmp eq i64 %1471, 2
  %1473 = zext i1 %1472 to i8
  store i8 %1473, i8* %38, align 1
  %1474 = add i64 %1440, -4
  %1475 = add i64 %1441, 13
  store i64 %1475, i64* %3, align 8
  %1476 = inttoptr i64 %1474 to i32*
  %1477 = load i32, i32* %1476, align 4
  %1478 = zext i32 %1477 to i64
  store i64 %1478, i64* %RAX.i455, align 8
  %1479 = sext i32 %1477 to i64
  %1480 = lshr i64 %1479, 32
  store i64 %1480, i64* %371, align 8
  %1481 = add i64 %1441, 17
  store i64 %1481, i64* %3, align 8
  %1482 = sext i32 %1439 to i64
  %1483 = shl nuw i64 %1480, 32
  %1484 = or i64 %1483, %1478
  %1485 = sdiv i64 %1484, %1482
  %1486 = shl i64 %1485, 32
  %1487 = ashr exact i64 %1486, 32
  %1488 = icmp eq i64 %1485, %1487
  br i1 %1488, label %1491, label %1489

; <label>:1489:                                   ; preds = %routine_idivl__r8d.exit27
  %1490 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1481, %struct.Memory* %1443)
  %.pre38 = load i32, i32* %EAX.i472, align 4
  %.pre39 = load i64, i64* %3, align 8
  %.pre40 = load i64, i64* %RCX.i440, align 8
  br label %routine_idivl__r8d.exit

; <label>:1491:                                   ; preds = %routine_idivl__r8d.exit27
  %1492 = srem i64 %1484, %1482
  %1493 = and i64 %1485, 4294967295
  store i64 %1493, i64* %RAX.i455, align 8
  %1494 = and i64 %1492, 4294967295
  store i64 %1494, i64* %RDX.i473, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1495 = trunc i64 %1485 to i32
  br label %routine_idivl__r8d.exit

routine_idivl__r8d.exit:                          ; preds = %1491, %1489
  %1496 = phi i64 [ %.pre40, %1489 ], [ %1448, %1491 ]
  %1497 = phi i64 [ %.pre39, %1489 ], [ %1481, %1491 ]
  %1498 = phi i32 [ %.pre38, %1489 ], [ %1495, %1491 ]
  %1499 = phi %struct.Memory* [ %1490, %1489 ], [ %1443, %1491 ]
  %1500 = sext i32 %1498 to i64
  store i64 %1500, i64* %RSI.i428, align 8
  %1501 = add i64 %1496, %1500
  %1502 = add i64 %1497, 7
  store i64 %1502, i64* %3, align 8
  %1503 = inttoptr i64 %1501 to i8*
  store i8 43, i8* %1503, align 1
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_492766

block_.L_492766:                                  ; preds = %routine_idivl__r8d.exit, %routine_idivl__r8d.exit207
  %1504 = phi i64 [ %.pre41, %routine_idivl__r8d.exit ], [ %1010, %routine_idivl__r8d.exit207 ]
  %MEMORY.3 = phi %struct.Memory* [ %1499, %routine_idivl__r8d.exit ], [ %1004, %routine_idivl__r8d.exit207 ]
  %1505 = add i64 %1504, 5
  store i64 %1505, i64* %3, align 8
  br label %block_.L_49276b

block_.L_49276b:                                  ; preds = %block_.L_492766, %block_.L_4925ce
  %storemerge = phi i64 [ %741, %block_.L_4925ce ], [ %1505, %block_.L_492766 ]
  %MEMORY.4 = phi %struct.Memory* [ %399, %block_.L_4925ce ], [ %MEMORY.3, %block_.L_492766 ]
  %1506 = add i64 %storemerge, 5
  br label %block_.L_492770

block_.L_492770:                                  ; preds = %block_.L_49276b, %routine_idivl__r8d.exit453, %block_49242b
  %.sink = phi i64 [ %1506, %block_.L_49276b ], [ %361, %routine_idivl__r8d.exit453 ], [ %77, %block_49242b ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.4, %block_.L_49276b ], [ %355, %routine_idivl__r8d.exit453 ], [ %2, %block_49242b ]
  %1507 = load i64, i64* %6, align 8
  %1508 = add i64 %1507, 32
  store i64 %1508, i64* %6, align 8
  %1509 = icmp ugt i64 %1507, -33
  %1510 = zext i1 %1509 to i8
  store i8 %1510, i8* %14, align 1
  %1511 = trunc i64 %1508 to i32
  %1512 = and i32 %1511, 255
  %1513 = tail call i32 @llvm.ctpop.i32(i32 %1512)
  %1514 = trunc i32 %1513 to i8
  %1515 = and i8 %1514, 1
  %1516 = xor i8 %1515, 1
  store i8 %1516, i8* %21, align 1
  %1517 = xor i64 %1508, %1507
  %1518 = lshr i64 %1517, 4
  %1519 = trunc i64 %1518 to i8
  %1520 = and i8 %1519, 1
  store i8 %1520, i8* %26, align 1
  %1521 = icmp eq i64 %1508, 0
  %1522 = zext i1 %1521 to i8
  store i8 %1522, i8* %29, align 1
  %1523 = lshr i64 %1508, 63
  %1524 = trunc i64 %1523 to i8
  store i8 %1524, i8* %32, align 1
  %1525 = lshr i64 %1507, 63
  %1526 = xor i64 %1523, %1525
  %1527 = add nuw nsw i64 %1526, %1523
  %1528 = icmp eq i64 %1527, 2
  %1529 = zext i1 %1528 to i8
  store i8 %1529, i8* %38, align 1
  %1530 = add i64 %.sink, 5
  store i64 %1530, i64* %3, align 8
  %1531 = add i64 %1507, 40
  %1532 = inttoptr i64 %1508 to i64*
  %1533 = load i64, i64* %1532, align 8
  store i64 %1533, i64* %RBP.i, align 8
  store i64 %1531, i64* %6, align 8
  %1534 = add i64 %.sink, 6
  store i64 %1534, i64* %3, align 8
  %1535 = inttoptr i64 %1531 to i64*
  %1536 = load i64, i64* %1535, align 8
  store i64 %1536, i64* %3, align 8
  %1537 = add i64 %1507, 48
  store i64 %1537, i64* %6, align 8
  ret %struct.Memory* %MEMORY.5
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
define %struct.Memory* @routine_subq__0x20___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -32
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 32
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
define %struct.Memory* @routine_movl_0xaf28cc___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xaf28cc_type* @G_0xaf28cc to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_492430(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_492770(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0xaf2760___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2e___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 46, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x169___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 361, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__eax__0xaf28cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xaf28cc_type* @G_0xaf28cc to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.memset_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x5__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -5
  %10 = icmp ult i32 %8, 5
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
define %struct.Memory* @routine_jne_.L_4924eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xaf2760___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x2b__0xaf2774(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  store i8 43, i8* getelementptr inbounds (%G_0xaf2774_type, %G_0xaf2774_type* @G_0xaf2774, i64 0, i32 0, i64 0), align 8
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
define %struct.Memory* @routine_subl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ult i32 %6, 2
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
define %struct.Memory* @routine_imulq__0x13___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 19
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RSI, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 255
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
define %struct.Memory* @routine_movq__rcx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDI, align 8
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
define %struct.Memory* @routine_movb__0x2b__0x1__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 43, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x2b__0xaf2773___rsi_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 11478899
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 43, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x2b____rdi__rsi_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 43, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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
define %struct.Memory* @routine_movslq__eax___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
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
define %struct.Memory* @routine_movb__0x2b____rcx__rsi_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 43, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_jne_.L_4925d3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jle_.L_492577(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xc__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -12
  %10 = icmp ult i32 %8, 12
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
define %struct.Memory* @routine_jge_.L_492577(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xaf2760___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xaf2760_type* @G__0xaf2760 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x2b__0xaf2788(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  store i8 43, i8* getelementptr inbounds (%G_0xaf2788_type, %G_0xaf2788_type* @G_0xaf2788, i64 0, i32 0, i64 0), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -3
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 3
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x13___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 19
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 255
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
define %struct.Memory* @routine_movb__0x2b__0x2__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 43, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x2b__0xaf2786___rdx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 11478918
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 43, i8* %7, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x2b____rax__rdx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i8 43, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4925ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x2b__0xaf279c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  store i8 43, i8* getelementptr inbounds (%G_0xaf279c_type, %G_0xaf279c_type* @G_0xaf279c, i64 0, i32 0, i64 0), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 4
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
define %struct.Memory* @routine_movb__0x2b__0x3__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 43, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x2b__0xaf2799___rdx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 11478937
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 43, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49276b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_492673(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_492673(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x3___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -3
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ult i32 %6, 3
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
define %struct.Memory* @routine_movb__0x2b__0x2__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 43, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x2b__0xaf2786___rsi_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 11478918
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 43, i8* %7, align 1
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
define %struct.Memory* @routine_movl_MINUS0x10__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16
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
define %struct.Memory* @routine_jmpq_.L_492766(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x4___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ult i32 %6, 4
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
define %struct.Memory* @routine_movb__0x2b__0x3__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 43, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x2b__0xaf2799___rsi_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 11478937
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 43, i8* %7, align 1
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
define %struct.Memory* @routine_movl_MINUS0x14__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 4
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
define %struct.Memory* @routine_addq__0x20___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 32
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -33
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
