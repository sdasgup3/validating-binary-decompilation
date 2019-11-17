; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x602150___rcx_8__type = type <{ [8 x i8] }>
%G_0x602168_type = type <{ [8 x i8] }>
%G_0x602170_type = type <{ [8 x i8] }>
%G_0x602180_type = type <{ [8 x i8] }>
%G_0x6021a0_type = type <{ [2 x i8] }>
%G_0x602348_type = type <{ [16 x i8] }>
%G_0x602630_type = type <{ [16 x i8] }>
%G_0x602638_type = type <{ [16 x i8] }>
%G_0x602640_type = type <{ [16 x i8] }>
%G_0x602648_type = type <{ [16 x i8] }>
%G_0x627__rip__type = type <{ [8 x i8] }>
%G_0x68b__rip__type = type <{ [8 x i8] }>
%G_0x6d8__rip__type = type <{ [8 x i8] }>
%G__0x6021b0_type = type <{ [8 x i8] }>
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
@G_0x602150___rcx_8_ = global %G_0x602150___rcx_8__type zeroinitializer
@G_0x602168 = local_unnamed_addr global %G_0x602168_type zeroinitializer
@G_0x602170 = local_unnamed_addr global %G_0x602170_type zeroinitializer
@G_0x602180 = local_unnamed_addr global %G_0x602180_type zeroinitializer
@G_0x6021a0 = local_unnamed_addr global %G_0x6021a0_type zeroinitializer
@G_0x602348 = local_unnamed_addr global %G_0x602348_type zeroinitializer
@G_0x602630 = local_unnamed_addr global %G_0x602630_type zeroinitializer
@G_0x602638 = local_unnamed_addr global %G_0x602638_type zeroinitializer
@G_0x602640 = local_unnamed_addr global %G_0x602640_type zeroinitializer
@G_0x602648 = local_unnamed_addr global %G_0x602648_type zeroinitializer
@G_0x627__rip_ = global %G_0x627__rip__type zeroinitializer
@G_0x68b__rip_ = global %G_0x68b__rip__type zeroinitializer
@G_0x6d8__rip_ = global %G_0x6d8__rip__type zeroinitializer
@G__0x6021b0 = global %G__0x6021b0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_401110.transit_surface(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @trace_line(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %41 = add i64 %10, add (i64 ptrtoint (%G_0x6d8__rip__type* @G_0x6d8__rip_ to i64), i64 7)
  %42 = add i64 %10, 15
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %41 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = bitcast %union.VectorReg* %40 to double*
  %46 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %40, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %44, i64* %46, align 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %48 = bitcast i64* %47 to double*
  store double 0.000000e+00, double* %48, align 1
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %51 = bitcast %union.VectorReg* %49 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %51, align 1
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %52 to i32*
  %53 = add i64 %7, -16
  %54 = load i32, i32* %EDI.i, align 4
  %55 = add i64 %10, 21
  store i64 %55, i64* %3, align 8
  %56 = inttoptr i64 %53 to i32*
  store i32 %54, i32* %56, align 4
  %57 = load i64, i64* %RBP.i, align 8
  %58 = add i64 %57, -16
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 5
  store i64 %60, i64* %3, align 8
  %61 = bitcast [32 x %union.VectorReg]* %39 to double*
  %62 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %39, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %63 = load i64, i64* %62, align 1
  %64 = inttoptr i64 %58 to i64*
  store i64 %63, i64* %64, align 8
  %65 = load i64, i64* %3, align 8
  %66 = bitcast %union.VectorReg* %49 to double*
  %67 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %49, i64 0, i32 0, i32 0, i32 0, i64 0
  %68 = load i64, i64* %67, align 1
  store i64 %68, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
  %69 = load i64, i64* %RBP.i, align 8
  %70 = add i64 %69, -16
  %71 = add i64 %65, 14
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %70 to i64*
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %62, align 1
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %75 = bitcast i64* %74 to double*
  store double 0.000000e+00, double* %75, align 1
  store i64 %73, i64* bitcast (%G_0x602630_type* @G_0x602630 to i64*), align 8
  %76 = load i64, i64* %46, align 1
  store i64 %76, i64* bitcast (%G_0x602638_type* @G_0x602638 to i64*), align 8
  %77 = add i64 %69, -20
  %78 = add i64 %65, 39
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %77 to i32*
  store i32 1, i32* %79, align 4
  %RAX.i142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX.i140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX.i125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %80 = bitcast i64* %50 to double*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %82 = bitcast %union.VectorReg* %81 to double*
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %.pre = load i64, i64* %3, align 8
  %.pre7 = load i16, i16* bitcast (%G_0x6021a0_type* @G_0x6021a0 to i16*), align 8
  br label %block_.L_400fb2

block_.L_400fb2:                                  ; preds = %block_.L_4010f4, %entry
  %84 = phi i16 [ %.pre7, %entry ], [ %349, %block_.L_4010f4 ]
  %85 = phi i64 [ %.pre, %entry ], [ %446, %block_.L_4010f4 ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %call2_40109e, %block_.L_4010f4 ]
  %86 = load i64, i64* %RBP.i, align 8
  %87 = add i64 %86, -20
  %88 = add i64 %85, 3
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %87 to i32*
  %90 = load i32, i32* %89, align 4
  %91 = zext i32 %90 to i64
  store i64 %91, i64* %RAX.i142, align 8
  %92 = sext i16 %84 to i64
  %93 = and i64 %92, 4294967295
  store i64 %93, i64* %RCX.i140, align 8
  %94 = sext i16 %84 to i32
  %95 = sub i32 %90, %94
  %96 = icmp ult i32 %90, %94
  %97 = zext i1 %96 to i8
  store i8 %97, i8* %14, align 1
  %98 = and i32 %95, 255
  %99 = tail call i32 @llvm.ctpop.i32(i32 %98)
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  %102 = xor i8 %101, 1
  store i8 %102, i8* %21, align 1
  %103 = xor i32 %94, %90
  %104 = xor i32 %103, %95
  %105 = lshr i32 %104, 4
  %106 = trunc i32 %105 to i8
  %107 = and i8 %106, 1
  store i8 %107, i8* %26, align 1
  %108 = icmp eq i32 %95, 0
  %109 = zext i1 %108 to i8
  store i8 %109, i8* %29, align 1
  %110 = lshr i32 %95, 31
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %32, align 1
  %112 = lshr i32 %90, 31
  %113 = lshr i32 %94, 31
  %114 = xor i32 %113, %112
  %115 = xor i32 %110, %112
  %116 = add nuw nsw i32 %115, %114
  %117 = icmp eq i32 %116, 2
  %118 = zext i1 %117 to i8
  store i8 %118, i8* %38, align 1
  %119 = icmp ne i8 %111, 0
  %120 = xor i1 %119, %117
  %.demorgan = or i1 %108, %120
  %.v = select i1 %.demorgan, i64 19, i64 341
  %121 = add i64 %85, %.v
  store i64 %121, i64* %3, align 8
  br i1 %.demorgan, label %block_400fc5, label %block_.L_401107

block_400fc5:                                     ; preds = %block_.L_400fb2
  %122 = add i64 %121, ptrtoint (%G_0x68b__rip__type* @G_0x68b__rip_ to i64)
  %123 = add i64 %121, 8
  store i64 %123, i64* %3, align 8
  %124 = inttoptr i64 %122 to i64*
  %125 = load i64, i64* %124, align 8
  store i64 %125, i64* %62, align 1
  store double 0.000000e+00, double* %75, align 1
  store i64 ptrtoint (%G__0x6021b0_type* @G__0x6021b0 to i64), i64* %RAX.i142, align 8
  %126 = add i64 %121, 22
  store i64 %126, i64* %3, align 8
  %127 = load i32, i32* %89, align 4
  %128 = sext i32 %127 to i64
  %129 = mul nsw i64 %128, 40
  store i64 %129, i64* %RCX.i140, align 8
  %130 = lshr i64 %129, 63
  %131 = add i64 %129, ptrtoint (%G__0x6021b0_type* @G__0x6021b0 to i64)
  store i64 %131, i64* %RDX.i125, align 8
  %132 = icmp ult i64 %131, ptrtoint (%G__0x6021b0_type* @G__0x6021b0 to i64)
  %133 = icmp ult i64 %131, %129
  %134 = or i1 %132, %133
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %14, align 1
  %136 = trunc i64 %131 to i32
  %137 = and i32 %136, 248
  %138 = tail call i32 @llvm.ctpop.i32(i32 %137)
  %139 = trunc i32 %138 to i8
  %140 = and i8 %139, 1
  %141 = xor i8 %140, 1
  store i8 %141, i8* %21, align 1
  %142 = xor i64 %129, ptrtoint (%G__0x6021b0_type* @G__0x6021b0 to i64)
  %143 = xor i64 %142, %131
  %144 = lshr i64 %143, 4
  %145 = trunc i64 %144 to i8
  %146 = and i8 %145, 1
  store i8 %146, i8* %26, align 1
  %147 = icmp eq i64 %131, 0
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %29, align 1
  %149 = lshr i64 %131, 63
  %150 = trunc i64 %149 to i8
  store i8 %150, i8* %32, align 1
  %151 = xor i64 %149, lshr (i64 ptrtoint (%G__0x6021b0_type* @G__0x6021b0 to i64), i64 63)
  %152 = xor i64 %149, %130
  %153 = add nuw nsw i64 %151, %152
  %154 = icmp eq i64 %153, 2
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %38, align 1
  %156 = add i64 %129, add (i64 ptrtoint (%G__0x6021b0_type* @G__0x6021b0 to i64), i64 8)
  %157 = add i64 %121, 37
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %156 to i64*
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %46, align 1
  store double 0.000000e+00, double* %48, align 1
  store i64 %159, i64* bitcast (%G_0x602640_type* @G_0x602640 to i64*), align 8
  %160 = add i64 %121, 50
  store i64 %160, i64* %3, align 8
  %161 = load i32, i32* %89, align 4
  %162 = sext i32 %161 to i64
  %163 = mul nsw i64 %162, 40
  store i64 %163, i64* %RCX.i140, align 8
  %164 = lshr i64 %163, 63
  %165 = load i64, i64* %RAX.i142, align 8
  %166 = add i64 %163, %165
  store i64 %166, i64* %RAX.i142, align 8
  %167 = icmp ult i64 %166, %165
  %168 = icmp ult i64 %166, %163
  %169 = or i1 %167, %168
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %14, align 1
  %171 = trunc i64 %166 to i32
  %172 = and i32 %171, 255
  %173 = tail call i32 @llvm.ctpop.i32(i32 %172)
  %174 = trunc i32 %173 to i8
  %175 = and i8 %174, 1
  %176 = xor i8 %175, 1
  store i8 %176, i8* %21, align 1
  %177 = xor i64 %163, %165
  %178 = xor i64 %177, %166
  %179 = lshr i64 %178, 4
  %180 = trunc i64 %179 to i8
  %181 = and i8 %180, 1
  store i8 %181, i8* %26, align 1
  %182 = icmp eq i64 %166, 0
  %183 = zext i1 %182 to i8
  store i8 %183, i8* %29, align 1
  %184 = lshr i64 %166, 63
  %185 = trunc i64 %184 to i8
  store i8 %185, i8* %32, align 1
  %186 = lshr i64 %165, 63
  %187 = xor i64 %184, %186
  %188 = xor i64 %184, %164
  %189 = add nuw nsw i64 %187, %188
  %190 = icmp eq i64 %189, 2
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %38, align 1
  %192 = add i64 %166, 16
  %193 = add i64 %121, 62
  store i64 %193, i64* %3, align 8
  %194 = inttoptr i64 %192 to i64*
  %195 = load i64, i64* %194, align 8
  store i64 %195, i64* bitcast (%G_0x602648_type* @G_0x602648 to i64*), align 8
  store i64 %195, i64* %46, align 1
  store double 0.000000e+00, double* %48, align 1
  %196 = add i64 %121, 84
  store i64 %196, i64* %3, align 8
  %.cast = bitcast i64 %195 to double
  %197 = load double, double* %61, align 1
  %198 = fcmp uno double %.cast, %197
  br i1 %198, label %199, label %209

; <label>:199:                                    ; preds = %block_400fc5
  %200 = fadd double %.cast, %197
  %201 = bitcast double %200 to i64
  %202 = and i64 %201, 9221120237041090560
  %203 = icmp eq i64 %202, 9218868437227405312
  %204 = and i64 %201, 2251799813685247
  %205 = icmp ne i64 %204, 0
  %206 = and i1 %203, %205
  br i1 %206, label %207, label %215

; <label>:207:                                    ; preds = %199
  %208 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %196, %struct.Memory* %MEMORY.0)
  %.pre8 = load i64, i64* %3, align 8
  %.pre9 = load i8, i8* %14, align 1
  %.pre10 = load i8, i8* %29, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:209:                                    ; preds = %block_400fc5
  %210 = fcmp ogt double %.cast, %197
  br i1 %210, label %215, label %211

; <label>:211:                                    ; preds = %209
  %212 = fcmp olt double %.cast, %197
  br i1 %212, label %215, label %213

; <label>:213:                                    ; preds = %211
  %214 = fcmp oeq double %.cast, %197
  br i1 %214, label %215, label %219

; <label>:215:                                    ; preds = %213, %211, %209, %199
  %216 = phi i8 [ 0, %209 ], [ 0, %211 ], [ 1, %213 ], [ 1, %199 ]
  %217 = phi i8 [ 0, %209 ], [ 0, %211 ], [ 0, %213 ], [ 1, %199 ]
  %218 = phi i8 [ 0, %209 ], [ 1, %211 ], [ 0, %213 ], [ 1, %199 ]
  store i8 %216, i8* %29, align 1
  store i8 %217, i8* %21, align 1
  store i8 %218, i8* %14, align 1
  br label %219

; <label>:219:                                    ; preds = %215, %213
  %220 = phi i8 [ %216, %215 ], [ %183, %213 ]
  %221 = phi i8 [ %218, %215 ], [ %170, %213 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %219, %207
  %222 = phi i8 [ %.pre10, %207 ], [ %220, %219 ]
  %223 = phi i8 [ %.pre9, %207 ], [ %221, %219 ]
  %224 = phi i64 [ %.pre8, %207 ], [ %196, %219 ]
  %225 = phi %struct.Memory* [ %208, %207 ], [ %MEMORY.0, %219 ]
  %226 = or i8 %222, %223
  %227 = icmp ne i8 %226, 0
  %.v11 = select i1 %227, i64 133, i64 6
  %228 = add i64 %224, %.v11
  store i64 %228, i64* %3, align 8
  br i1 %227, label %block_.L_40109e, label %block_40101f

block_40101f:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  store i64 ptrtoint (%G__0x6021b0_type* @G__0x6021b0 to i64), i64* %RAX.i142, align 8
  %229 = add i64 %228, add (i64 ptrtoint (%G_0x627__rip__type* @G_0x627__rip_ to i64), i64 10)
  %230 = add i64 %228, 18
  store i64 %230, i64* %3, align 8
  %231 = inttoptr i64 %229 to i64*
  %232 = load i64, i64* %231, align 8
  store i64 %232, i64* %62, align 1
  store double 0.000000e+00, double* %75, align 1
  %233 = load i64, i64* bitcast (%G_0x602648_type* @G_0x602648 to i64*), align 8
  store i64 %233, i64* %46, align 1
  store double 0.000000e+00, double* %48, align 1
  %234 = load i64, i64* bitcast (%G_0x602170_type* @G_0x602170 to i64*), align 8
  store i64 %234, i64* %67, align 1
  store double 0.000000e+00, double* %80, align 1
  %235 = load i64, i64* %RBP.i, align 8
  %236 = add i64 %235, -8
  %237 = add i64 %228, 40
  store i64 %237, i64* %3, align 8
  %238 = inttoptr i64 %236 to i32*
  %239 = load i32, i32* %238, align 4
  %240 = sext i32 %239 to i64
  store i64 %240, i64* %RCX.i140, align 8
  %241 = shl nsw i64 %240, 3
  %242 = add i64 %241, ptrtoint (%G_0x602150___rcx_8__type* @G_0x602150___rcx_8_ to i64)
  %243 = add i64 %228, 49
  store i64 %243, i64* %3, align 8
  %244 = bitcast i64 %234 to double
  %245 = inttoptr i64 %242 to double*
  %246 = load double, double* %245, align 8
  %247 = fsub double %244, %246
  %248 = load double, double* bitcast (%G_0x602168_type* @G_0x602168 to double*), align 8
  %249 = load double, double* bitcast (%G_0x602180_type* @G_0x602180 to double*), align 8
  %250 = fsub double %248, %249
  store double %250, double* %82, align 1
  store i64 0, i64* %83, align 1
  %251 = fdiv double %247, %250
  store double %251, double* %66, align 1
  store i64 0, i64* %50, align 1
  %252 = add i64 %235, -20
  %253 = add i64 %228, 75
  store i64 %253, i64* %3, align 8
  %254 = inttoptr i64 %252 to i32*
  %255 = load i32, i32* %254, align 4
  %256 = sext i32 %255 to i64
  %257 = mul nsw i64 %256, 40
  store i64 %257, i64* %RCX.i140, align 8
  %258 = lshr i64 %257, 63
  %259 = add i64 %257, ptrtoint (%G__0x6021b0_type* @G__0x6021b0 to i64)
  store i64 %259, i64* %RDX.i125, align 8
  %260 = icmp ult i64 %259, ptrtoint (%G__0x6021b0_type* @G__0x6021b0 to i64)
  %261 = icmp ult i64 %259, %257
  %262 = or i1 %260, %261
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %14, align 1
  %264 = trunc i64 %259 to i32
  %265 = and i32 %264, 248
  %266 = tail call i32 @llvm.ctpop.i32(i32 %265)
  %267 = trunc i32 %266 to i8
  %268 = and i8 %267, 1
  %269 = xor i8 %268, 1
  store i8 %269, i8* %21, align 1
  %270 = xor i64 %257, ptrtoint (%G__0x6021b0_type* @G__0x6021b0 to i64)
  %271 = xor i64 %270, %259
  %272 = lshr i64 %271, 4
  %273 = trunc i64 %272 to i8
  %274 = and i8 %273, 1
  store i8 %274, i8* %26, align 1
  %275 = icmp eq i64 %259, 0
  %276 = zext i1 %275 to i8
  store i8 %276, i8* %29, align 1
  %277 = lshr i64 %259, 63
  %278 = trunc i64 %277 to i8
  store i8 %278, i8* %32, align 1
  %279 = xor i64 %277, lshr (i64 ptrtoint (%G__0x6021b0_type* @G__0x6021b0 to i64), i64 63)
  %280 = xor i64 %277, %258
  %281 = add nuw nsw i64 %279, %280
  %282 = icmp eq i64 %281, 2
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %38, align 1
  %284 = add i64 %257, add (i64 ptrtoint (%G__0x6021b0_type* @G__0x6021b0 to i64), i64 16)
  %285 = add i64 %228, 90
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to double*
  %287 = load double, double* %286, align 8
  %288 = load double, double* %61, align 1
  %289 = fsub double %287, %288
  store double %289, double* %82, align 1
  store i64 0, i64* %83, align 1
  %290 = load i64, i64* %RBP.i, align 8
  %291 = add i64 %290, -20
  %292 = add i64 %228, 98
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %291 to i32*
  %294 = load i32, i32* %293, align 4
  %295 = sext i32 %294 to i64
  %296 = mul nsw i64 %295, 40
  store i64 %296, i64* %RCX.i140, align 8
  %297 = lshr i64 %296, 63
  %298 = load i64, i64* %RAX.i142, align 8
  %299 = add i64 %296, %298
  store i64 %299, i64* %RAX.i142, align 8
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
  store i8 %314, i8* %26, align 1
  %315 = icmp eq i64 %299, 0
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %29, align 1
  %317 = lshr i64 %299, 63
  %318 = trunc i64 %317 to i8
  store i8 %318, i8* %32, align 1
  %319 = lshr i64 %298, 63
  %320 = xor i64 %317, %319
  %321 = xor i64 %317, %297
  %322 = add nuw nsw i64 %320, %321
  %323 = icmp eq i64 %322, 2
  %324 = zext i1 %323 to i8
  store i8 %324, i8* %38, align 1
  %325 = add i64 %299, 24
  %326 = add i64 %228, 110
  store i64 %326, i64* %3, align 8
  %327 = inttoptr i64 %325 to double*
  %328 = load double, double* %327, align 8
  %329 = fdiv double %289, %328
  store double %329, double* %82, align 1
  store i64 0, i64* %83, align 1
  %330 = load double, double* %66, align 1
  %331 = fmul double %330, %329
  store double %331, double* %66, align 1
  %332 = load double, double* %45, align 1
  %333 = fadd double %332, %331
  store double %333, double* %45, align 1
  %334 = add i64 %228, 127
  store i64 %334, i64* %3, align 8
  store double %333, double* bitcast (%G_0x602648_type* @G_0x602648 to double*), align 8
  br label %block_.L_40109e

block_.L_40109e:                                  ; preds = %block_40101f, %routine_ucomisd__xmm0___xmm1.exit
  %335 = phi i64 [ %334, %block_40101f ], [ %228, %routine_ucomisd__xmm0___xmm1.exit ]
  %336 = add i64 %335, 114
  %337 = add i64 %335, 5
  %338 = load i64, i64* %6, align 8
  %339 = add i64 %338, -8
  %340 = inttoptr i64 %339 to i64*
  store i64 %337, i64* %340, align 8
  store i64 %339, i64* %6, align 8
  store i64 %336, i64* %3, align 8
  %call2_40109e = tail call %struct.Memory* @sub_401110.transit_surface(%struct.State* nonnull %0, i64 %336, %struct.Memory* %225)
  %341 = load i64, i64* %3, align 8
  %342 = load i64, i64* bitcast (%G_0x602648_type* @G_0x602648 to i64*), align 8
  store i64 %342, i64* %62, align 1
  store double 0.000000e+00, double* %75, align 1
  store i64 %342, i64* bitcast (%G_0x602638_type* @G_0x602638 to i64*), align 8
  %343 = load i64, i64* %RBP.i, align 8
  %344 = add i64 %343, -20
  %345 = add i64 %341, 21
  store i64 %345, i64* %3, align 8
  %346 = inttoptr i64 %344 to i32*
  %347 = load i32, i32* %346, align 4
  %348 = zext i32 %347 to i64
  store i64 %348, i64* %RAX.i142, align 8
  %349 = load i16, i16* bitcast (%G_0x6021a0_type* @G_0x6021a0 to i16*), align 8
  %350 = sext i16 %349 to i64
  %351 = and i64 %350, 4294967295
  store i64 %351, i64* %RCX.i140, align 8
  %352 = sext i16 %349 to i32
  %353 = sub i32 %347, %352
  %354 = icmp ult i32 %347, %352
  %355 = zext i1 %354 to i8
  store i8 %355, i8* %14, align 1
  %356 = and i32 %353, 255
  %357 = tail call i32 @llvm.ctpop.i32(i32 %356)
  %358 = trunc i32 %357 to i8
  %359 = and i8 %358, 1
  %360 = xor i8 %359, 1
  store i8 %360, i8* %21, align 1
  %361 = xor i32 %352, %347
  %362 = xor i32 %361, %353
  %363 = lshr i32 %362, 4
  %364 = trunc i32 %363 to i8
  %365 = and i8 %364, 1
  store i8 %365, i8* %26, align 1
  %366 = icmp eq i32 %353, 0
  %367 = zext i1 %366 to i8
  store i8 %367, i8* %29, align 1
  %368 = lshr i32 %353, 31
  %369 = trunc i32 %368 to i8
  store i8 %369, i8* %32, align 1
  %370 = lshr i32 %347, 31
  %371 = lshr i32 %352, 31
  %372 = xor i32 %371, %370
  %373 = xor i32 %368, %370
  %374 = add nuw nsw i32 %373, %372
  %375 = icmp eq i32 %374, 2
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %38, align 1
  %377 = icmp ne i8 %369, 0
  %378 = xor i1 %377, %375
  %.v12 = select i1 %378, i64 37, i64 81
  %379 = add i64 %341, %.v12
  store i64 %379, i64* %3, align 8
  br i1 %378, label %block_4010c8, label %block_.L_4010f4

block_4010c8:                                     ; preds = %block_.L_40109e
  store i64 ptrtoint (%G__0x6021b0_type* @G__0x6021b0 to i64), i64* %RAX.i142, align 8
  %380 = load i64, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
  store i64 %380, i64* %62, align 1
  store double 0.000000e+00, double* %75, align 1
  %381 = add i64 %379, 23
  store i64 %381, i64* %3, align 8
  %382 = load i32, i32* %346, align 4
  %383 = sext i32 %382 to i64
  %384 = mul nsw i64 %383, 40
  store i64 %384, i64* %RCX.i140, align 8
  %385 = lshr i64 %384, 63
  %386 = add i64 %384, ptrtoint (%G__0x6021b0_type* @G__0x6021b0 to i64)
  store i64 %386, i64* %RAX.i142, align 8
  %387 = icmp ult i64 %386, ptrtoint (%G__0x6021b0_type* @G__0x6021b0 to i64)
  %388 = icmp ult i64 %386, %384
  %389 = or i1 %387, %388
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %14, align 1
  %391 = trunc i64 %386 to i32
  %392 = and i32 %391, 248
  %393 = tail call i32 @llvm.ctpop.i32(i32 %392)
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  %396 = xor i8 %395, 1
  store i8 %396, i8* %21, align 1
  %397 = xor i64 %384, ptrtoint (%G__0x6021b0_type* @G__0x6021b0 to i64)
  %398 = xor i64 %397, %386
  %399 = lshr i64 %398, 4
  %400 = trunc i64 %399 to i8
  %401 = and i8 %400, 1
  store i8 %401, i8* %26, align 1
  %402 = icmp eq i64 %386, 0
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %29, align 1
  %404 = lshr i64 %386, 63
  %405 = trunc i64 %404 to i8
  store i8 %405, i8* %32, align 1
  %406 = xor i64 %404, lshr (i64 ptrtoint (%G__0x6021b0_type* @G__0x6021b0 to i64), i64 63)
  %407 = xor i64 %404, %385
  %408 = add nuw nsw i64 %406, %407
  %409 = icmp eq i64 %408, 2
  %410 = zext i1 %409 to i8
  store i8 %410, i8* %38, align 1
  %411 = add i64 %384, add (i64 ptrtoint (%G__0x6021b0_type* @G__0x6021b0 to i64), i64 32)
  %412 = add i64 %379, 35
  store i64 %412, i64* %3, align 8
  %413 = bitcast i64 %380 to double
  %414 = inttoptr i64 %411 to double*
  %415 = load double, double* %414, align 8
  %416 = fsub double %413, %415
  store double %416, double* %61, align 1
  store i64 0, i64* %74, align 1
  %417 = add i64 %379, 44
  store i64 %417, i64* %3, align 8
  store double %416, double* bitcast (%G_0x602348_type* @G_0x602348 to double*), align 8
  br label %block_.L_4010f4

block_.L_4010f4:                                  ; preds = %block_.L_40109e, %block_4010c8
  %418 = phi i64 [ %379, %block_.L_40109e ], [ %417, %block_4010c8 ]
  %419 = add i64 %418, 8
  store i64 %419, i64* %3, align 8
  %420 = load i32, i32* %346, align 4
  %421 = add i32 %420, 1
  %422 = zext i32 %421 to i64
  store i64 %422, i64* %RAX.i142, align 8
  %423 = icmp eq i32 %420, -1
  %424 = icmp eq i32 %421, 0
  %425 = or i1 %423, %424
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %14, align 1
  %427 = and i32 %421, 255
  %428 = tail call i32 @llvm.ctpop.i32(i32 %427)
  %429 = trunc i32 %428 to i8
  %430 = and i8 %429, 1
  %431 = xor i8 %430, 1
  store i8 %431, i8* %21, align 1
  %432 = xor i32 %421, %420
  %433 = lshr i32 %432, 4
  %434 = trunc i32 %433 to i8
  %435 = and i8 %434, 1
  store i8 %435, i8* %26, align 1
  %436 = zext i1 %424 to i8
  store i8 %436, i8* %29, align 1
  %437 = lshr i32 %421, 31
  %438 = trunc i32 %437 to i8
  store i8 %438, i8* %32, align 1
  %439 = lshr i32 %420, 31
  %440 = xor i32 %437, %439
  %441 = add nuw nsw i32 %440, %437
  %442 = icmp eq i32 %441, 2
  %443 = zext i1 %442 to i8
  store i8 %443, i8* %38, align 1
  %444 = add i64 %418, 14
  store i64 %444, i64* %3, align 8
  store i32 %421, i32* %346, align 4
  %445 = load i64, i64* %3, align 8
  %446 = add i64 %445, -336
  store i64 %446, i64* %3, align 8
  br label %block_.L_400fb2

block_.L_401107:                                  ; preds = %block_.L_400fb2
  %447 = add i64 %86, -4
  %448 = add i64 %121, 3
  store i64 %448, i64* %3, align 8
  %449 = inttoptr i64 %447 to i32*
  %450 = load i32, i32* %449, align 4
  %451 = zext i32 %450 to i64
  store i64 %451, i64* %RAX.i142, align 8
  %452 = load i64, i64* %6, align 8
  %453 = add i64 %452, 32
  store i64 %453, i64* %6, align 8
  %454 = icmp ugt i64 %452, -33
  %455 = zext i1 %454 to i8
  store i8 %455, i8* %14, align 1
  %456 = trunc i64 %453 to i32
  %457 = and i32 %456, 255
  %458 = tail call i32 @llvm.ctpop.i32(i32 %457)
  %459 = trunc i32 %458 to i8
  %460 = and i8 %459, 1
  %461 = xor i8 %460, 1
  store i8 %461, i8* %21, align 1
  %462 = xor i64 %453, %452
  %463 = lshr i64 %462, 4
  %464 = trunc i64 %463 to i8
  %465 = and i8 %464, 1
  store i8 %465, i8* %26, align 1
  %466 = icmp eq i64 %453, 0
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %29, align 1
  %468 = lshr i64 %453, 63
  %469 = trunc i64 %468 to i8
  store i8 %469, i8* %32, align 1
  %470 = lshr i64 %452, 63
  %471 = xor i64 %468, %470
  %472 = add nuw nsw i64 %471, %468
  %473 = icmp eq i64 %472, 2
  %474 = zext i1 %473 to i8
  store i8 %474, i8* %38, align 1
  %475 = add i64 %121, 8
  store i64 %475, i64* %3, align 8
  %476 = add i64 %452, 40
  %477 = inttoptr i64 %453 to i64*
  %478 = load i64, i64* %477, align 8
  store i64 %478, i64* %RBP.i, align 8
  store i64 %476, i64* %6, align 8
  %479 = add i64 %121, 9
  store i64 %479, i64* %3, align 8
  %480 = inttoptr i64 %476 to i64*
  %481 = load i64, i64* %480, align 8
  store i64 %481, i64* %3, align 8
  %482 = add i64 %452, 48
  store i64 %482, i64* %6, align 8
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd_0x6d8__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x6d8__rip__type* @G_0x6d8__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_xorps__xmm2___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_movsd__xmm2__0x602348(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x10__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x602630(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602630_type* @G_0x602630 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__0x602638(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602638_type* @G_0x602638 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movswl_0x6021a0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i16, i16* bitcast (%G_0x6021a0_type* @G_0x6021a0 to i16*), align 8
  %6 = sext i16 %5 to i64
  %7 = and i64 %6, 4294967295
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jg_.L_401107(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd_0x68b__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x68b__rip__type* @G_0x68b__rip_ to i64)
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
define %struct.Memory* @routine_movq__0x6021b0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6021b0_type* @G__0x6021b0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline nounwind
define %struct.Memory* @routine_imulq__0x28___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 40
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

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd_0x8__rdx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__0x602640(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602640_type* @G_0x602640 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline nounwind
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd_0x10__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__0x602648(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602648_type* @G_0x602648 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd_0x602648___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602648_type* @G_0x602648 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline
define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #1 {
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jbe_.L_40109e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x627__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x627__rip__type* @G_0x627__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x602170___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602170_type* @G_0x602170 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_subsd_0x602150___rcx_8____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, ptrtoint (%G_0x602150___rcx_8__type* @G_0x602150___rcx_8_ to i64)
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 9
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to double*
  %10 = load double, double* %9, align 1
  %11 = inttoptr i64 %6 to double*
  %12 = load double, double* %11, align 8
  %13 = fsub double %10, %12
  store double %13, double* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd_0x602168___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602168_type* @G_0x602168 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_subsd_0x602180___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = load double, double* bitcast (%G_0x602180_type* @G_0x602180 to double*), align 8
  %9 = fsub double %7, %8
  store double %9, double* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_divsd__xmm3___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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
define %struct.Memory* @routine_movsd_0x10__rdx____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_subsd__xmm0___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_divsd_0x18__rax____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fdiv double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm3___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_addsd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_callq_.transit_surface(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x602648___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602648_type* @G_0x602648 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x602638(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602638_type* @G_0x602638 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jge_.L_4010f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x602348___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_subsd_0x20__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fsub double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__0x602348(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %6 = load i64, i64* %5, align 1
  store i64 %6, i64* bitcast (%G_0x602348_type* @G_0x602348 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4010f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: alwaysinline norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_400fb2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline norecurse nounwind
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

; Function Attrs: alwaysinline nounwind
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
