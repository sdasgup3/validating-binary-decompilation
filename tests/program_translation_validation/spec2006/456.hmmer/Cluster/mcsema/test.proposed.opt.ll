; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x4e0a4__rip__type = type <{ [8 x i8] }>
%G_0x4e20e__rip__type = type <{ [8 x i8] }>
%G_0x4e8a7__rip__type = type <{ [4 x i8] }>
%G__0x455dc7_type = type <{ [8 x i8] }>
%G__0x455e76_type = type <{ [8 x i8] }>
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
@G_0x4e0a4__rip_ = global %G_0x4e0a4__rip__type zeroinitializer
@G_0x4e20e__rip_ = global %G_0x4e20e__rip__type zeroinitializer
@G_0x4e8a7__rip_ = global %G_0x4e8a7__rip__type zeroinitializer
@G__0x455dc7 = global %G__0x455dc7_type zeroinitializer
@G__0x455e76 = global %G__0x455e76_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @free(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406860.AllocPhylo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_446110.Free2DArray(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @Cluster(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %12 = icmp ult i64 %8, 128
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
  %RAX.i250 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x455dc7_type* @G__0x455dc7 to i64), i64* %RAX.i250, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i = bitcast %union.anon* %40 to i32*
  %41 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 168, i64* %41, align 8
  %RDI.i1792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %42 = add i64 %7, -16
  %43 = load i64, i64* %RDI.i1792, align 8
  %44 = add i64 %10, 30
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %42 to i64*
  store i64 %43, i64* %45, align 8
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i2088 = bitcast %union.anon* %46 to i32*
  %47 = load i64, i64* %RBP.i, align 8
  %48 = add i64 %47, -12
  %49 = load i32, i32* %ESI.i2088, align 4
  %50 = load i64, i64* %3, align 8
  %51 = add i64 %50, 3
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %48 to i32*
  store i32 %49, i32* %52, align 4
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i2085 = bitcast %union.anon* %53 to i32*
  %54 = load i64, i64* %RBP.i, align 8
  %55 = add i64 %54, -16
  %56 = load i32, i32* %EDX.i2085, align 4
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, 3
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %55 to i32*
  store i32 %56, i32* %59, align 4
  %RCX.i2082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -24
  %62 = load i64, i64* %RCX.i2082, align 8
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 4
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %61 to i64*
  store i64 %62, i64* %65, align 8
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -12
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, 4
  store i64 %69, i64* %3, align 8
  %70 = inttoptr i64 %67 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = shl nsw i64 %72, 3
  store i64 %73, i64* %RCX.i2082, align 8
  %.lobit = lshr i32 %71, 31
  %74 = trunc i32 %.lobit to i8
  store i8 %74, i8* %14, align 1
  %75 = trunc i64 %73 to i32
  %76 = and i32 %75, 248
  %77 = tail call i32 @llvm.ctpop.i32(i32 %76)
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 1
  %80 = xor i8 %79, 1
  store i8 %80, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %81 = icmp eq i32 %71, 0
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %29, align 1
  %83 = lshr i64 %72, 60
  %84 = trunc i64 %83 to i8
  %85 = and i8 %84, 1
  store i8 %85, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %86 = load i64, i64* %RAX.i250, align 8
  store i64 %86, i64* %RDI.i1792, align 8
  %RSI.i2072 = getelementptr inbounds %union.anon, %union.anon* %46, i64 0, i32 0
  %87 = load i32, i32* %R8D.i, align 4
  %88 = zext i32 %87 to i64
  store i64 %88, i64* %RSI.i2072, align 8
  %RDX.i2069 = getelementptr inbounds %union.anon, %union.anon* %53, i64 0, i32 0
  store i64 %73, i64* %RDX.i2069, align 8
  %89 = add i64 %68, 263031
  %90 = add i64 %68, 22
  %91 = load i64, i64* %6, align 8
  %92 = add i64 %91, -8
  %93 = inttoptr i64 %92 to i64*
  store i64 %90, i64* %93, align 8
  store i64 %92, i64* %6, align 8
  store i64 %89, i64* %3, align 8
  %call2_405cfa = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %89, %struct.Memory* %2)
  %94 = load i64, i64* %RBP.i, align 8
  %95 = add i64 %94, -40
  %96 = load i64, i64* %RAX.i250, align 8
  %97 = load i64, i64* %3, align 8
  %98 = add i64 %97, 4
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %95 to i64*
  store i64 %96, i64* %99, align 8
  %100 = load i64, i64* %RBP.i, align 8
  %101 = add i64 %100, -52
  %102 = load i64, i64* %3, align 8
  %103 = add i64 %102, 7
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %101 to i32*
  store i32 0, i32* %104, align 4
  %EAX.i2056 = bitcast %union.anon* %39 to i32*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %106 = bitcast %union.VectorReg* %105 to i8*
  %107 = bitcast %union.VectorReg* %105 to i32*
  %108 = getelementptr inbounds i8, i8* %106, i64 4
  %109 = bitcast i8* %108 to float*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %111 = bitcast i64* %110 to float*
  %112 = getelementptr inbounds i8, i8* %106, i64 12
  %113 = bitcast i8* %112 to float*
  %114 = bitcast %union.VectorReg* %105 to <2 x float>*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_405d0a

block_.L_405d0a:                                  ; preds = %block_.L_405d8c, %entry
  %115 = phi i64 [ %338, %block_.L_405d8c ], [ %.pre, %entry ]
  %116 = load i64, i64* %RBP.i, align 8
  %117 = add i64 %116, -52
  %118 = add i64 %115, 3
  store i64 %118, i64* %3, align 8
  %119 = inttoptr i64 %117 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = zext i32 %120 to i64
  store i64 %121, i64* %RAX.i250, align 8
  %122 = add i64 %116, -12
  %123 = add i64 %115, 6
  store i64 %123, i64* %3, align 8
  %124 = inttoptr i64 %122 to i32*
  %125 = load i32, i32* %124, align 4
  %126 = sub i32 %120, %125
  %127 = icmp ult i32 %120, %125
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %14, align 1
  %129 = and i32 %126, 255
  %130 = tail call i32 @llvm.ctpop.i32(i32 %129)
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  %133 = xor i8 %132, 1
  store i8 %133, i8* %21, align 1
  %134 = xor i32 %125, %120
  %135 = xor i32 %134, %126
  %136 = lshr i32 %135, 4
  %137 = trunc i32 %136 to i8
  %138 = and i8 %137, 1
  store i8 %138, i8* %26, align 1
  %139 = icmp eq i32 %126, 0
  %140 = zext i1 %139 to i8
  store i8 %140, i8* %29, align 1
  %141 = lshr i32 %126, 31
  %142 = trunc i32 %141 to i8
  store i8 %142, i8* %32, align 1
  %143 = lshr i32 %120, 31
  %144 = lshr i32 %125, 31
  %145 = xor i32 %144, %143
  %146 = xor i32 %141, %143
  %147 = add nuw nsw i32 %146, %145
  %148 = icmp eq i32 %147, 2
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %38, align 1
  %150 = icmp ne i8 %142, 0
  %151 = xor i1 %150, %148
  %.v117 = select i1 %151, i64 12, i64 149
  %152 = add i64 %115, %.v117
  store i64 ptrtoint (%G__0x455dc7_type* @G__0x455dc7 to i64), i64* %RDI.i1792, align 8
  %153 = add i64 %152, 15
  store i64 %153, i64* %3, align 8
  br i1 %151, label %block_405d16, label %block_.L_405d9f

block_405d16:                                     ; preds = %block_.L_405d0a
  store i64 171, i64* %RSI.i2072, align 8
  %154 = add i64 %152, 19
  store i64 %154, i64* %3, align 8
  %155 = load i32, i32* %124, align 4
  %156 = sext i32 %155 to i64
  %157 = shl nsw i64 %156, 2
  store i64 %157, i64* %RAX.i250, align 8
  %.lobit30 = lshr i32 %155, 31
  %158 = trunc i32 %.lobit30 to i8
  store i8 %158, i8* %14, align 1
  %159 = trunc i64 %157 to i32
  %160 = and i32 %159, 252
  %161 = tail call i32 @llvm.ctpop.i32(i32 %160)
  %162 = trunc i32 %161 to i8
  %163 = and i8 %162, 1
  %164 = xor i8 %163, 1
  store i8 %164, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %165 = icmp eq i32 %155, 0
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %29, align 1
  %167 = lshr i64 %156, 61
  %168 = trunc i64 %167 to i8
  %169 = and i8 %168, 1
  store i8 %169, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %157, i64* %RDX.i2069, align 8
  %170 = add i64 %152, 262986
  %171 = add i64 %152, 31
  %172 = load i64, i64* %6, align 8
  %173 = add i64 %172, -8
  %174 = inttoptr i64 %173 to i64*
  store i64 %171, i64* %174, align 8
  store i64 %173, i64* %6, align 8
  store i64 %170, i64* %3, align 8
  %call2_405d30 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %170, %struct.Memory* %call2_405cfa)
  %175 = load i64, i64* %RBP.i, align 8
  %176 = add i64 %175, -40
  %177 = load i64, i64* %3, align 8
  %178 = add i64 %177, 4
  store i64 %178, i64* %3, align 8
  %179 = inttoptr i64 %176 to i64*
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* %RDX.i2069, align 8
  %181 = add i64 %175, -52
  %182 = add i64 %177, 8
  store i64 %182, i64* %3, align 8
  %183 = inttoptr i64 %181 to i32*
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  store i64 %185, i64* %RDI.i1792, align 8
  %186 = shl nsw i64 %185, 3
  %187 = add i64 %186, %180
  %188 = load i64, i64* %RAX.i250, align 8
  %189 = add i64 %177, 12
  store i64 %189, i64* %3, align 8
  %190 = inttoptr i64 %187 to i64*
  store i64 %188, i64* %190, align 8
  %191 = load i64, i64* %RBP.i, align 8
  %192 = add i64 %191, -56
  %193 = load i64, i64* %3, align 8
  %194 = add i64 %193, 7
  store i64 %194, i64* %3, align 8
  %195 = inttoptr i64 %192 to i32*
  store i32 0, i32* %195, align 4
  %.pre110 = load i64, i64* %3, align 8
  br label %block_.L_405d48

block_.L_405d48:                                  ; preds = %block_405d54, %block_405d16
  %196 = phi i64 [ %308, %block_405d54 ], [ %.pre110, %block_405d16 ]
  %197 = load i64, i64* %RBP.i, align 8
  %198 = add i64 %197, -56
  %199 = add i64 %196, 3
  store i64 %199, i64* %3, align 8
  %200 = inttoptr i64 %198 to i32*
  %201 = load i32, i32* %200, align 4
  %202 = zext i32 %201 to i64
  store i64 %202, i64* %RAX.i250, align 8
  %203 = add i64 %197, -12
  %204 = add i64 %196, 6
  store i64 %204, i64* %3, align 8
  %205 = inttoptr i64 %203 to i32*
  %206 = load i32, i32* %205, align 4
  %207 = sub i32 %201, %206
  %208 = icmp ult i32 %201, %206
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %14, align 1
  %210 = and i32 %207, 255
  %211 = tail call i32 @llvm.ctpop.i32(i32 %210)
  %212 = trunc i32 %211 to i8
  %213 = and i8 %212, 1
  %214 = xor i8 %213, 1
  store i8 %214, i8* %21, align 1
  %215 = xor i32 %206, %201
  %216 = xor i32 %215, %207
  %217 = lshr i32 %216, 4
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  store i8 %219, i8* %26, align 1
  %220 = icmp eq i32 %207, 0
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %29, align 1
  %222 = lshr i32 %207, 31
  %223 = trunc i32 %222 to i8
  store i8 %223, i8* %32, align 1
  %224 = lshr i32 %201, 31
  %225 = lshr i32 %206, 31
  %226 = xor i32 %225, %224
  %227 = xor i32 %222, %224
  %228 = add nuw nsw i32 %227, %226
  %229 = icmp eq i32 %228, 2
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %38, align 1
  %231 = icmp ne i8 %223, 0
  %232 = xor i1 %231, %229
  %.v116 = select i1 %232, i64 12, i64 68
  %233 = add i64 %196, %.v116
  store i64 %233, i64* %3, align 8
  br i1 %232, label %block_405d54, label %block_.L_405d8c

block_405d54:                                     ; preds = %block_.L_405d48
  %234 = add i64 %197, -8
  %235 = add i64 %233, 4
  store i64 %235, i64* %3, align 8
  %236 = inttoptr i64 %234 to i64*
  %237 = load i64, i64* %236, align 8
  store i64 %237, i64* %RAX.i250, align 8
  %238 = add i64 %197, -52
  %239 = add i64 %233, 8
  store i64 %239, i64* %3, align 8
  %240 = inttoptr i64 %238 to i32*
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  store i64 %242, i64* %RCX.i2082, align 8
  %243 = shl nsw i64 %242, 3
  %244 = add i64 %243, %237
  %245 = add i64 %233, 12
  store i64 %245, i64* %3, align 8
  %246 = inttoptr i64 %244 to i64*
  %247 = load i64, i64* %246, align 8
  store i64 %247, i64* %RAX.i250, align 8
  %248 = add i64 %233, 16
  store i64 %248, i64* %3, align 8
  %249 = load i32, i32* %200, align 4
  %250 = sext i32 %249 to i64
  store i64 %250, i64* %RCX.i2082, align 8
  %251 = shl nsw i64 %250, 2
  %252 = add i64 %251, %247
  %253 = add i64 %233, 21
  store i64 %253, i64* %3, align 8
  %254 = inttoptr i64 %252 to i32*
  %255 = load i32, i32* %254, align 4
  store i32 %255, i32* %107, align 1
  store float 0.000000e+00, float* %109, align 1
  store float 0.000000e+00, float* %111, align 1
  store float 0.000000e+00, float* %113, align 1
  %256 = add i64 %197, -40
  %257 = add i64 %233, 25
  store i64 %257, i64* %3, align 8
  %258 = inttoptr i64 %256 to i64*
  %259 = load i64, i64* %258, align 8
  store i64 %259, i64* %RAX.i250, align 8
  %260 = add i64 %233, 29
  store i64 %260, i64* %3, align 8
  %261 = load i32, i32* %240, align 4
  %262 = sext i32 %261 to i64
  store i64 %262, i64* %RCX.i2082, align 8
  %263 = shl nsw i64 %262, 3
  %264 = add i64 %263, %259
  %265 = add i64 %233, 33
  store i64 %265, i64* %3, align 8
  %266 = inttoptr i64 %264 to i64*
  %267 = load i64, i64* %266, align 8
  store i64 %267, i64* %RAX.i250, align 8
  %268 = add i64 %233, 37
  store i64 %268, i64* %3, align 8
  %269 = load i32, i32* %200, align 4
  %270 = sext i32 %269 to i64
  store i64 %270, i64* %RCX.i2082, align 8
  %271 = shl nsw i64 %270, 2
  %272 = add i64 %271, %267
  %273 = add i64 %233, 42
  store i64 %273, i64* %3, align 8
  %274 = load <2 x float>, <2 x float>* %114, align 1
  %275 = extractelement <2 x float> %274, i32 0
  %276 = inttoptr i64 %272 to float*
  store float %275, float* %276, align 4
  %277 = load i64, i64* %RBP.i, align 8
  %278 = add i64 %277, -56
  %279 = load i64, i64* %3, align 8
  %280 = add i64 %279, 3
  store i64 %280, i64* %3, align 8
  %281 = inttoptr i64 %278 to i32*
  %282 = load i32, i32* %281, align 4
  %283 = add i32 %282, 1
  %284 = zext i32 %283 to i64
  store i64 %284, i64* %RAX.i250, align 8
  %285 = icmp eq i32 %282, -1
  %286 = icmp eq i32 %283, 0
  %287 = or i1 %285, %286
  %288 = zext i1 %287 to i8
  store i8 %288, i8* %14, align 1
  %289 = and i32 %283, 255
  %290 = tail call i32 @llvm.ctpop.i32(i32 %289)
  %291 = trunc i32 %290 to i8
  %292 = and i8 %291, 1
  %293 = xor i8 %292, 1
  store i8 %293, i8* %21, align 1
  %294 = xor i32 %283, %282
  %295 = lshr i32 %294, 4
  %296 = trunc i32 %295 to i8
  %297 = and i8 %296, 1
  store i8 %297, i8* %26, align 1
  %298 = zext i1 %286 to i8
  store i8 %298, i8* %29, align 1
  %299 = lshr i32 %283, 31
  %300 = trunc i32 %299 to i8
  store i8 %300, i8* %32, align 1
  %301 = lshr i32 %282, 31
  %302 = xor i32 %299, %301
  %303 = add nuw nsw i32 %302, %299
  %304 = icmp eq i32 %303, 2
  %305 = zext i1 %304 to i8
  store i8 %305, i8* %38, align 1
  %306 = add i64 %279, 9
  store i64 %306, i64* %3, align 8
  store i32 %283, i32* %281, align 4
  %307 = load i64, i64* %3, align 8
  %308 = add i64 %307, -63
  store i64 %308, i64* %3, align 8
  br label %block_.L_405d48

block_.L_405d8c:                                  ; preds = %block_.L_405d48
  %309 = add i64 %197, -52
  %310 = add i64 %233, 8
  store i64 %310, i64* %3, align 8
  %311 = inttoptr i64 %309 to i32*
  %312 = load i32, i32* %311, align 4
  %313 = add i32 %312, 1
  %314 = zext i32 %313 to i64
  store i64 %314, i64* %RAX.i250, align 8
  %315 = icmp eq i32 %312, -1
  %316 = icmp eq i32 %313, 0
  %317 = or i1 %315, %316
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %14, align 1
  %319 = and i32 %313, 255
  %320 = tail call i32 @llvm.ctpop.i32(i32 %319)
  %321 = trunc i32 %320 to i8
  %322 = and i8 %321, 1
  %323 = xor i8 %322, 1
  store i8 %323, i8* %21, align 1
  %324 = xor i32 %313, %312
  %325 = lshr i32 %324, 4
  %326 = trunc i32 %325 to i8
  %327 = and i8 %326, 1
  store i8 %327, i8* %26, align 1
  %328 = zext i1 %316 to i8
  store i8 %328, i8* %29, align 1
  %329 = lshr i32 %313, 31
  %330 = trunc i32 %329 to i8
  store i8 %330, i8* %32, align 1
  %331 = lshr i32 %312, 31
  %332 = xor i32 %329, %331
  %333 = add nuw nsw i32 %332, %329
  %334 = icmp eq i32 %333, 2
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %38, align 1
  %336 = add i64 %233, 14
  store i64 %336, i64* %3, align 8
  store i32 %313, i32* %311, align 4
  %337 = load i64, i64* %3, align 8
  %338 = add i64 %337, -144
  store i64 %338, i64* %3, align 8
  br label %block_.L_405d0a

block_.L_405d9f:                                  ; preds = %block_.L_405d0a
  store i64 176, i64* %RSI.i2072, align 8
  %339 = add i64 %152, 19
  store i64 %339, i64* %3, align 8
  %340 = load i32, i32* %124, align 4
  %341 = sext i32 %340 to i64
  %342 = shl nsw i64 %341, 2
  store i64 %342, i64* %RAX.i250, align 8
  %.lobit31 = lshr i32 %340, 31
  %343 = trunc i32 %.lobit31 to i8
  store i8 %343, i8* %14, align 1
  %344 = trunc i64 %342 to i32
  %345 = and i32 %344, 252
  %346 = tail call i32 @llvm.ctpop.i32(i32 %345)
  %347 = trunc i32 %346 to i8
  %348 = and i8 %347, 1
  %349 = xor i8 %348, 1
  store i8 %349, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %350 = icmp eq i32 %340, 0
  %351 = zext i1 %350 to i8
  store i8 %351, i8* %29, align 1
  %352 = lshr i64 %341, 61
  %353 = trunc i64 %352 to i8
  %354 = and i8 %353, 1
  store i8 %354, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %342, i64* %RDX.i2069, align 8
  %355 = add i64 %152, 262849
  %356 = add i64 %152, 31
  %357 = load i64, i64* %6, align 8
  %358 = add i64 %357, -8
  %359 = inttoptr i64 %358 to i64*
  store i64 %356, i64* %359, align 8
  store i64 %358, i64* %6, align 8
  store i64 %355, i64* %3, align 8
  %call2_405db9 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %355, %struct.Memory* %call2_405cfa)
  %360 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x455dc7_type* @G__0x455dc7 to i64), i64* %RDI.i1792, align 8
  store i64 177, i64* %RSI.i2072, align 8
  %361 = load i64, i64* %RBP.i, align 8
  %362 = add i64 %361, -48
  %363 = load i64, i64* %RAX.i250, align 8
  %364 = add i64 %360, 19
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %362 to i64*
  store i64 %363, i64* %365, align 8
  %366 = load i64, i64* %RBP.i, align 8
  %367 = add i64 %366, -12
  %368 = load i64, i64* %3, align 8
  %369 = add i64 %368, 3
  store i64 %369, i64* %3, align 8
  %370 = inttoptr i64 %367 to i32*
  %371 = load i32, i32* %370, align 4
  %372 = add i32 %371, -1
  %373 = zext i32 %372 to i64
  store i64 %373, i64* %RCX.i2082, align 8
  %374 = icmp eq i32 %372, 0
  %375 = zext i1 %374 to i8
  %376 = lshr i32 %372, 31
  %377 = trunc i32 %376 to i8
  %378 = sext i32 %372 to i64
  %379 = shl nsw i64 %378, 2
  store i64 %379, i64* %RAX.i250, align 8
  store i8 %377, i8* %14, align 1
  %380 = trunc i64 %379 to i32
  %381 = and i32 %380, 252
  %382 = tail call i32 @llvm.ctpop.i32(i32 %381)
  %383 = trunc i32 %382 to i8
  %384 = and i8 %383, 1
  %385 = xor i8 %384, 1
  store i8 %385, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %375, i8* %29, align 1
  %386 = lshr i64 %378, 61
  %387 = trunc i64 %386 to i8
  %388 = and i8 %387, 1
  store i8 %388, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %379, i64* %RDX.i2069, align 8
  %389 = add i64 %368, 262799
  %390 = add i64 %368, 21
  %391 = load i64, i64* %6, align 8
  %392 = add i64 %391, -8
  %393 = inttoptr i64 %392 to i64*
  store i64 %390, i64* %393, align 8
  store i64 %392, i64* %6, align 8
  store i64 %389, i64* %3, align 8
  %call2_405de1 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %389, %struct.Memory* %call2_405db9)
  %394 = load i64, i64* %RBP.i, align 8
  %395 = add i64 %394, -104
  %396 = load i64, i64* %RAX.i250, align 8
  %397 = load i64, i64* %3, align 8
  %398 = add i64 %397, 4
  store i64 %398, i64* %3, align 8
  %399 = inttoptr i64 %395 to i64*
  store i64 %396, i64* %399, align 8
  %400 = load i64, i64* %RBP.i, align 8
  %401 = add i64 %400, -72
  %402 = load i64, i64* %3, align 8
  %403 = add i64 %402, 7
  store i64 %403, i64* %3, align 8
  %404 = inttoptr i64 %401 to i32*
  store i32 0, i32* %404, align 4
  %.pre69 = load i64, i64* %3, align 8
  br label %block_.L_405df1

block_.L_405df1:                                  ; preds = %block_405dfd, %block_.L_405d9f
  %405 = phi i64 [ %488, %block_405dfd ], [ %.pre69, %block_.L_405d9f ]
  %406 = load i64, i64* %RBP.i, align 8
  %407 = add i64 %406, -72
  %408 = add i64 %405, 3
  store i64 %408, i64* %3, align 8
  %409 = inttoptr i64 %407 to i32*
  %410 = load i32, i32* %409, align 4
  %411 = zext i32 %410 to i64
  store i64 %411, i64* %RAX.i250, align 8
  %412 = add i64 %406, -12
  %413 = add i64 %405, 6
  store i64 %413, i64* %3, align 8
  %414 = inttoptr i64 %412 to i32*
  %415 = load i32, i32* %414, align 4
  %416 = sub i32 %410, %415
  %417 = icmp ult i32 %410, %415
  %418 = zext i1 %417 to i8
  store i8 %418, i8* %14, align 1
  %419 = and i32 %416, 255
  %420 = tail call i32 @llvm.ctpop.i32(i32 %419)
  %421 = trunc i32 %420 to i8
  %422 = and i8 %421, 1
  %423 = xor i8 %422, 1
  store i8 %423, i8* %21, align 1
  %424 = xor i32 %415, %410
  %425 = xor i32 %424, %416
  %426 = lshr i32 %425, 4
  %427 = trunc i32 %426 to i8
  %428 = and i8 %427, 1
  store i8 %428, i8* %26, align 1
  %429 = icmp eq i32 %416, 0
  %430 = zext i1 %429 to i8
  store i8 %430, i8* %29, align 1
  %431 = lshr i32 %416, 31
  %432 = trunc i32 %431 to i8
  store i8 %432, i8* %32, align 1
  %433 = lshr i32 %410, 31
  %434 = lshr i32 %415, 31
  %435 = xor i32 %434, %433
  %436 = xor i32 %431, %433
  %437 = add nuw nsw i32 %436, %435
  %438 = icmp eq i32 %437, 2
  %439 = zext i1 %438 to i8
  store i8 %439, i8* %38, align 1
  %440 = icmp ne i8 %432, 0
  %441 = xor i1 %440, %438
  %.v118 = select i1 %441, i64 12, i64 40
  %442 = add i64 %405, %.v118
  store i64 %442, i64* %3, align 8
  br i1 %441, label %block_405dfd, label %block_.L_405e19

block_405dfd:                                     ; preds = %block_.L_405df1
  %443 = add i64 %442, 3
  store i64 %443, i64* %3, align 8
  %444 = load i32, i32* %409, align 4
  %445 = zext i32 %444 to i64
  store i64 %445, i64* %RAX.i250, align 8
  %446 = add i64 %406, -48
  %447 = add i64 %442, 7
  store i64 %447, i64* %3, align 8
  %448 = inttoptr i64 %446 to i64*
  %449 = load i64, i64* %448, align 8
  store i64 %449, i64* %RCX.i2082, align 8
  %450 = add i64 %442, 11
  store i64 %450, i64* %3, align 8
  %451 = load i32, i32* %409, align 4
  %452 = sext i32 %451 to i64
  store i64 %452, i64* %RDX.i2069, align 8
  %453 = shl nsw i64 %452, 2
  %454 = add i64 %453, %449
  %455 = add i64 %442, 14
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %454 to i32*
  store i32 %444, i32* %456, align 4
  %457 = load i64, i64* %RBP.i, align 8
  %458 = add i64 %457, -72
  %459 = load i64, i64* %3, align 8
  %460 = add i64 %459, 3
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %458 to i32*
  %462 = load i32, i32* %461, align 4
  %463 = add i32 %462, 1
  %464 = zext i32 %463 to i64
  store i64 %464, i64* %RAX.i250, align 8
  %465 = icmp eq i32 %462, -1
  %466 = icmp eq i32 %463, 0
  %467 = or i1 %465, %466
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %14, align 1
  %469 = and i32 %463, 255
  %470 = tail call i32 @llvm.ctpop.i32(i32 %469)
  %471 = trunc i32 %470 to i8
  %472 = and i8 %471, 1
  %473 = xor i8 %472, 1
  store i8 %473, i8* %21, align 1
  %474 = xor i32 %463, %462
  %475 = lshr i32 %474, 4
  %476 = trunc i32 %475 to i8
  %477 = and i8 %476, 1
  store i8 %477, i8* %26, align 1
  %478 = zext i1 %466 to i8
  store i8 %478, i8* %29, align 1
  %479 = lshr i32 %463, 31
  %480 = trunc i32 %479 to i8
  store i8 %480, i8* %32, align 1
  %481 = lshr i32 %462, 31
  %482 = xor i32 %479, %481
  %483 = add nuw nsw i32 %482, %479
  %484 = icmp eq i32 %483, 2
  %485 = zext i1 %484 to i8
  store i8 %485, i8* %38, align 1
  %486 = add i64 %459, 9
  store i64 %486, i64* %3, align 8
  store i32 %463, i32* %461, align 4
  %487 = load i64, i64* %3, align 8
  %488 = add i64 %487, -35
  store i64 %488, i64* %3, align 8
  br label %block_.L_405df1

block_.L_405e19:                                  ; preds = %block_.L_405df1
  %489 = add i64 %406, -52
  %490 = add i64 %442, 7
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %489 to i32*
  store i32 0, i32* %491, align 4
  %492 = bitcast i64* %110 to i32*
  %.pre70 = load i64, i64* %3, align 8
  %493 = bitcast %union.VectorReg* %105 to <4 x i32>*
  br label %block_.L_405e20

block_.L_405e20:                                  ; preds = %block_405e31, %block_.L_405e19
  %494 = phi i64 [ %578, %block_405e31 ], [ %.pre70, %block_.L_405e19 ]
  %495 = load i64, i64* %RBP.i, align 8
  %496 = add i64 %495, -52
  %497 = add i64 %494, 3
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %496 to i32*
  %499 = load i32, i32* %498, align 4
  %500 = zext i32 %499 to i64
  store i64 %500, i64* %RAX.i250, align 8
  %501 = add i64 %495, -12
  %502 = add i64 %494, 6
  store i64 %502, i64* %3, align 8
  %503 = inttoptr i64 %501 to i32*
  %504 = load i32, i32* %503, align 4
  %505 = add i32 %504, -1
  %506 = zext i32 %505 to i64
  store i64 %506, i64* %RCX.i2082, align 8
  %507 = lshr i32 %505, 31
  %508 = sub i32 %499, %505
  %509 = icmp ult i32 %499, %505
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %14, align 1
  %511 = and i32 %508, 255
  %512 = tail call i32 @llvm.ctpop.i32(i32 %511)
  %513 = trunc i32 %512 to i8
  %514 = and i8 %513, 1
  %515 = xor i8 %514, 1
  store i8 %515, i8* %21, align 1
  %516 = xor i32 %505, %499
  %517 = xor i32 %516, %508
  %518 = lshr i32 %517, 4
  %519 = trunc i32 %518 to i8
  %520 = and i8 %519, 1
  store i8 %520, i8* %26, align 1
  %521 = icmp eq i32 %508, 0
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %29, align 1
  %523 = lshr i32 %508, 31
  %524 = trunc i32 %523 to i8
  store i8 %524, i8* %32, align 1
  %525 = lshr i32 %499, 31
  %526 = xor i32 %507, %525
  %527 = xor i32 %523, %525
  %528 = add nuw nsw i32 %527, %526
  %529 = icmp eq i32 %528, 2
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %38, align 1
  %531 = icmp ne i8 %524, 0
  %532 = xor i1 %531, %529
  %.v119 = select i1 %532, i64 17, i64 47
  %533 = add i64 %494, %.v119
  store i64 %533, i64* %3, align 8
  br i1 %532, label %block_405e31, label %block_.L_405e4f

block_405e31:                                     ; preds = %block_.L_405e20
  store <4 x i32> zeroinitializer, <4 x i32>* %493, align 1
  %534 = add i64 %495, -104
  %535 = add i64 %533, 7
  store i64 %535, i64* %3, align 8
  %536 = inttoptr i64 %534 to i64*
  %537 = load i64, i64* %536, align 8
  store i64 %537, i64* %RAX.i250, align 8
  %538 = add i64 %533, 11
  store i64 %538, i64* %3, align 8
  %539 = load i32, i32* %498, align 4
  %540 = sext i32 %539 to i64
  store i64 %540, i64* %RCX.i2082, align 8
  %541 = shl nsw i64 %540, 2
  %542 = add i64 %541, %537
  %543 = add i64 %533, 16
  store i64 %543, i64* %3, align 8
  %544 = load <2 x float>, <2 x float>* %114, align 1
  %545 = extractelement <2 x float> %544, i32 0
  %546 = inttoptr i64 %542 to float*
  store float %545, float* %546, align 4
  %547 = load i64, i64* %RBP.i, align 8
  %548 = add i64 %547, -52
  %549 = load i64, i64* %3, align 8
  %550 = add i64 %549, 3
  store i64 %550, i64* %3, align 8
  %551 = inttoptr i64 %548 to i32*
  %552 = load i32, i32* %551, align 4
  %553 = add i32 %552, 1
  %554 = zext i32 %553 to i64
  store i64 %554, i64* %RAX.i250, align 8
  %555 = icmp eq i32 %552, -1
  %556 = icmp eq i32 %553, 0
  %557 = or i1 %555, %556
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %14, align 1
  %559 = and i32 %553, 255
  %560 = tail call i32 @llvm.ctpop.i32(i32 %559)
  %561 = trunc i32 %560 to i8
  %562 = and i8 %561, 1
  %563 = xor i8 %562, 1
  store i8 %563, i8* %21, align 1
  %564 = xor i32 %553, %552
  %565 = lshr i32 %564, 4
  %566 = trunc i32 %565 to i8
  %567 = and i8 %566, 1
  store i8 %567, i8* %26, align 1
  %568 = zext i1 %556 to i8
  store i8 %568, i8* %29, align 1
  %569 = lshr i32 %553, 31
  %570 = trunc i32 %569 to i8
  store i8 %570, i8* %32, align 1
  %571 = lshr i32 %552, 31
  %572 = xor i32 %569, %571
  %573 = add nuw nsw i32 %572, %569
  %574 = icmp eq i32 %573, 2
  %575 = zext i1 %574 to i8
  store i8 %575, i8* %38, align 1
  %576 = add i64 %549, 9
  store i64 %576, i64* %3, align 8
  store i32 %553, i32* %551, align 4
  %577 = load i64, i64* %3, align 8
  %578 = add i64 %577, -42
  store i64 %578, i64* %3, align 8
  br label %block_.L_405e20

block_.L_405e4f:                                  ; preds = %block_.L_405e20
  %579 = add i64 %533, 3
  store i64 %579, i64* %3, align 8
  %580 = load i32, i32* %503, align 4
  %581 = zext i32 %580 to i64
  store i64 %581, i64* %RDI.i1792, align 8
  %582 = add i64 %533, 2577
  %583 = add i64 %533, 8
  %584 = load i64, i64* %6, align 8
  %585 = add i64 %584, -8
  %586 = inttoptr i64 %585 to i64*
  store i64 %583, i64* %586, align 8
  store i64 %585, i64* %6, align 8
  store i64 %582, i64* %3, align 8
  %call2_405e52 = tail call %struct.Memory* @sub_406860.AllocPhylo(%struct.State* nonnull %0, i64 %582, %struct.Memory* %call2_405de1)
  %587 = load i64, i64* %RBP.i, align 8
  %588 = add i64 %587, -32
  %589 = load i64, i64* %RAX.i250, align 8
  %590 = load i64, i64* %3, align 8
  %591 = add i64 %590, 4
  store i64 %591, i64* %3, align 8
  %592 = inttoptr i64 %588 to i64*
  store i64 %589, i64* %592, align 8
  %593 = load i64, i64* %RAX.i250, align 8
  %594 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %595 = trunc i64 %593 to i32
  %596 = and i32 %595, 255
  %597 = tail call i32 @llvm.ctpop.i32(i32 %596)
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  %600 = xor i8 %599, 1
  store i8 %600, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %601 = icmp eq i64 %593, 0
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %29, align 1
  %603 = lshr i64 %593, 63
  %604 = trunc i64 %603 to i8
  store i8 %604, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v120 = select i1 %601, i64 10, i64 27
  %605 = add i64 %594, %.v120
  store i64 %605, i64* %3, align 8
  br i1 %601, label %block_405e65, label %block_.L_405e76

block_405e65:                                     ; preds = %block_.L_405e4f
  store i64 ptrtoint (%G__0x455e76_type* @G__0x455e76 to i64), i64* %RDI.i1792, align 8
  %AL.i = bitcast %union.anon* %39 to i8*
  store i8 0, i8* %AL.i, align 1
  %606 = add i64 %605, 232363
  %607 = add i64 %605, 17
  %608 = load i64, i64* %6, align 8
  %609 = add i64 %608, -8
  %610 = inttoptr i64 %609 to i64*
  store i64 %607, i64* %610, align 8
  store i64 %609, i64* %6, align 8
  store i64 %606, i64* %3, align 8
  %call2_405e71 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %606, %struct.Memory* %call2_405e52)
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_405e76

block_.L_405e76:                                  ; preds = %block_.L_405e4f, %block_405e65
  %611 = phi i64 [ %605, %block_.L_405e4f ], [ %.pre71, %block_405e65 ]
  %MEMORY.4 = phi %struct.Memory* [ %call2_405e52, %block_.L_405e4f ], [ %call2_405e71, %block_405e65 ]
  %612 = load i64, i64* %RBP.i, align 8
  %613 = add i64 %612, -56
  %614 = add i64 %611, 7
  store i64 %614, i64* %3, align 8
  %615 = inttoptr i64 %613 to i32*
  store i32 0, i32* %615, align 4
  %616 = load i64, i64* %RBP.i, align 8
  %617 = add i64 %616, -12
  %618 = load i64, i64* %3, align 8
  %619 = add i64 %618, 3
  store i64 %619, i64* %3, align 8
  %620 = inttoptr i64 %617 to i32*
  %621 = load i32, i32* %620, align 4
  %622 = zext i32 %621 to i64
  store i64 %622, i64* %RAX.i250, align 8
  %623 = add i64 %616, -64
  %624 = add i64 %618, 6
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %623 to i32*
  store i32 %621, i32* %625, align 4
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %627 = bitcast [32 x %union.VectorReg]* %626 to i8*
  %628 = bitcast [32 x %union.VectorReg]* %626 to float*
  %629 = bitcast [32 x %union.VectorReg]* %626 to i32*
  %630 = getelementptr inbounds i8, i8* %627, i64 4
  %631 = bitcast i8* %630 to float*
  %632 = getelementptr inbounds i8, i8* %627, i64 12
  %633 = bitcast i8* %632 to float*
  %634 = bitcast [32 x %union.VectorReg]* %626 to <2 x float>*
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %636 = bitcast %union.VectorReg* %635 to i8*
  %637 = bitcast %union.VectorReg* %635 to i32*
  %638 = getelementptr inbounds i8, i8* %636, i64 4
  %639 = bitcast i8* %638 to float*
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %641 = bitcast i64* %640 to float*
  %642 = getelementptr inbounds i8, i8* %636, i64 12
  %643 = bitcast i8* %642 to float*
  %644 = bitcast %union.VectorReg* %635 to <2 x float>*
  %645 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %626, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %646 = bitcast i64* %110 to double*
  %647 = bitcast %union.VectorReg* %635 to float*
  %648 = bitcast i64* %640 to <2 x i32>*
  %649 = bitcast i8* %638 to i32*
  %650 = bitcast i64* %640 to i32*
  %651 = bitcast i8* %642 to i32*
  %652 = bitcast %union.VectorReg* %635 to double*
  %653 = bitcast i8* %630 to i32*
  %654 = bitcast i8* %632 to i32*
  %R8B.i984 = bitcast %union.anon* %40 to i8*
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_405e83

block_.L_405e83:                                  ; preds = %block_.L_4067ed, %block_.L_405e76
  %655 = phi i64 [ %.pre72, %block_.L_405e76 ], [ %4871, %block_.L_4067ed ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.4, %block_.L_405e76 ], [ %MEMORY.23, %block_.L_4067ed ]
  %656 = load i64, i64* %RBP.i, align 8
  %657 = add i64 %656, -64
  %658 = add i64 %655, 4
  store i64 %658, i64* %3, align 8
  %659 = inttoptr i64 %657 to i32*
  %660 = load i32, i32* %659, align 4
  %661 = add i32 %660, -2
  %662 = icmp ult i32 %660, 2
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %14, align 1
  %664 = and i32 %661, 255
  %665 = tail call i32 @llvm.ctpop.i32(i32 %664)
  %666 = trunc i32 %665 to i8
  %667 = and i8 %666, 1
  %668 = xor i8 %667, 1
  store i8 %668, i8* %21, align 1
  %669 = xor i32 %661, %660
  %670 = lshr i32 %669, 4
  %671 = trunc i32 %670 to i8
  %672 = and i8 %671, 1
  store i8 %672, i8* %26, align 1
  %673 = icmp eq i32 %661, 0
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %29, align 1
  %675 = lshr i32 %661, 31
  %676 = trunc i32 %675 to i8
  store i8 %676, i8* %32, align 1
  %677 = lshr i32 %660, 31
  %678 = xor i32 %675, %677
  %679 = add nuw nsw i32 %678, %677
  %680 = icmp eq i32 %679, 2
  %681 = zext i1 %680 to i8
  store i8 %681, i8* %38, align 1
  %682 = icmp ne i8 %676, 0
  %683 = xor i1 %682, %680
  %.v121 = select i1 %683, i64 2449, i64 10
  %684 = add i64 %655, %.v121
  store i64 %684, i64* %3, align 8
  br i1 %683, label %block_.L_406814, label %block_405e8d

block_405e8d:                                     ; preds = %block_.L_405e83
  %685 = add i64 %684, ptrtoint (%G_0x4e8a7__rip__type* @G_0x4e8a7__rip_ to i64)
  %686 = add i64 %684, 8
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %685 to i32*
  %688 = load i32, i32* %687, align 4
  store i32 %688, i32* %629, align 1
  store float 0.000000e+00, float* %631, align 1
  store float 0.000000e+00, float* %111, align 1
  store float 0.000000e+00, float* %633, align 1
  %689 = add i64 %656, -76
  %690 = add i64 %684, 13
  store i64 %690, i64* %3, align 8
  %691 = load <2 x float>, <2 x float>* %634, align 1
  %692 = extractelement <2 x float> %691, i32 0
  %693 = inttoptr i64 %689 to float*
  store float %692, float* %693, align 4
  %694 = load i64, i64* %RBP.i, align 8
  %695 = add i64 %694, -68
  %696 = load i64, i64* %3, align 8
  %697 = add i64 %696, 7
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %695 to i32*
  store i32 0, i32* %698, align 4
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_405ea1

block_.L_405ea1:                                  ; preds = %block_.L_405f1e, %block_405e8d
  %699 = phi i64 [ %.pre73, %block_405e8d ], [ %976, %block_.L_405f1e ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.5, %block_405e8d ], [ %MEMORY.7, %block_.L_405f1e ]
  %700 = load i64, i64* %RBP.i, align 8
  %701 = add i64 %700, -68
  %702 = add i64 %699, 3
  store i64 %702, i64* %3, align 8
  %703 = inttoptr i64 %701 to i32*
  %704 = load i32, i32* %703, align 4
  %705 = zext i32 %704 to i64
  store i64 %705, i64* %RAX.i250, align 8
  %706 = add i64 %700, -64
  %707 = add i64 %699, 6
  store i64 %707, i64* %3, align 8
  %708 = inttoptr i64 %706 to i32*
  %709 = load i32, i32* %708, align 4
  %710 = sub i32 %704, %709
  %711 = icmp ult i32 %704, %709
  %712 = zext i1 %711 to i8
  store i8 %712, i8* %14, align 1
  %713 = and i32 %710, 255
  %714 = tail call i32 @llvm.ctpop.i32(i32 %713)
  %715 = trunc i32 %714 to i8
  %716 = and i8 %715, 1
  %717 = xor i8 %716, 1
  store i8 %717, i8* %21, align 1
  %718 = xor i32 %709, %704
  %719 = xor i32 %718, %710
  %720 = lshr i32 %719, 4
  %721 = trunc i32 %720 to i8
  %722 = and i8 %721, 1
  store i8 %722, i8* %26, align 1
  %723 = icmp eq i32 %710, 0
  %724 = zext i1 %723 to i8
  store i8 %724, i8* %29, align 1
  %725 = lshr i32 %710, 31
  %726 = trunc i32 %725 to i8
  store i8 %726, i8* %32, align 1
  %727 = lshr i32 %704, 31
  %728 = lshr i32 %709, 31
  %729 = xor i32 %728, %727
  %730 = xor i32 %725, %727
  %731 = add nuw nsw i32 %730, %729
  %732 = icmp eq i32 %731, 2
  %733 = zext i1 %732 to i8
  store i8 %733, i8* %38, align 1
  %734 = icmp ne i8 %726, 0
  %735 = xor i1 %734, %732
  %.v122 = select i1 %735, i64 12, i64 144
  %736 = add i64 %699, %.v122
  store i64 %736, i64* %3, align 8
  br i1 %735, label %block_405ead, label %block_.L_405f31

block_405ead:                                     ; preds = %block_.L_405ea1
  %737 = add i64 %736, 3
  store i64 %737, i64* %3, align 8
  %738 = load i32, i32* %703, align 4
  %739 = add i32 %738, 1
  %740 = zext i32 %739 to i64
  store i64 %740, i64* %RAX.i250, align 8
  %741 = icmp eq i32 %738, -1
  %742 = icmp eq i32 %739, 0
  %743 = or i1 %741, %742
  %744 = zext i1 %743 to i8
  store i8 %744, i8* %14, align 1
  %745 = and i32 %739, 255
  %746 = tail call i32 @llvm.ctpop.i32(i32 %745)
  %747 = trunc i32 %746 to i8
  %748 = and i8 %747, 1
  %749 = xor i8 %748, 1
  store i8 %749, i8* %21, align 1
  %750 = xor i32 %739, %738
  %751 = lshr i32 %750, 4
  %752 = trunc i32 %751 to i8
  %753 = and i8 %752, 1
  store i8 %753, i8* %26, align 1
  %754 = zext i1 %742 to i8
  store i8 %754, i8* %29, align 1
  %755 = lshr i32 %739, 31
  %756 = trunc i32 %755 to i8
  store i8 %756, i8* %32, align 1
  %757 = lshr i32 %738, 31
  %758 = xor i32 %755, %757
  %759 = add nuw nsw i32 %758, %755
  %760 = icmp eq i32 %759, 2
  %761 = zext i1 %760 to i8
  store i8 %761, i8* %38, align 1
  %762 = add i64 %700, -72
  %763 = add i64 %736, 9
  store i64 %763, i64* %3, align 8
  %764 = inttoptr i64 %762 to i32*
  store i32 %739, i32* %764, align 4
  %.pre105 = load i64, i64* %3, align 8
  br label %block_.L_405eb6

block_.L_405eb6:                                  ; preds = %block_.L_405f0b, %block_405ead
  %765 = phi i64 [ %.pre105, %block_405ead ], [ %946, %block_.L_405f0b ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.6, %block_405ead ], [ %861, %block_.L_405f0b ]
  %766 = load i64, i64* %RBP.i, align 8
  %767 = add i64 %766, -72
  %768 = add i64 %765, 3
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %767 to i32*
  %770 = load i32, i32* %769, align 4
  %771 = zext i32 %770 to i64
  store i64 %771, i64* %RAX.i250, align 8
  %772 = add i64 %766, -64
  %773 = add i64 %765, 6
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %772 to i32*
  %775 = load i32, i32* %774, align 4
  %776 = sub i32 %770, %775
  %777 = icmp ult i32 %770, %775
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %14, align 1
  %779 = and i32 %776, 255
  %780 = tail call i32 @llvm.ctpop.i32(i32 %779)
  %781 = trunc i32 %780 to i8
  %782 = and i8 %781, 1
  %783 = xor i8 %782, 1
  store i8 %783, i8* %21, align 1
  %784 = xor i32 %775, %770
  %785 = xor i32 %784, %776
  %786 = lshr i32 %785, 4
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  store i8 %788, i8* %26, align 1
  %789 = icmp eq i32 %776, 0
  %790 = zext i1 %789 to i8
  store i8 %790, i8* %29, align 1
  %791 = lshr i32 %776, 31
  %792 = trunc i32 %791 to i8
  store i8 %792, i8* %32, align 1
  %793 = lshr i32 %770, 31
  %794 = lshr i32 %775, 31
  %795 = xor i32 %794, %793
  %796 = xor i32 %791, %793
  %797 = add nuw nsw i32 %796, %795
  %798 = icmp eq i32 %797, 2
  %799 = zext i1 %798 to i8
  store i8 %799, i8* %38, align 1
  %800 = icmp ne i8 %792, 0
  %801 = xor i1 %800, %798
  %.v115 = select i1 %801, i64 12, i64 104
  %802 = add i64 %765, %.v115
  store i64 %802, i64* %3, align 8
  br i1 %801, label %block_405ec2, label %block_.L_405f1e

block_405ec2:                                     ; preds = %block_.L_405eb6
  %803 = add i64 %766, -40
  %804 = add i64 %802, 4
  store i64 %804, i64* %3, align 8
  %805 = inttoptr i64 %803 to i64*
  %806 = load i64, i64* %805, align 8
  store i64 %806, i64* %RAX.i250, align 8
  %807 = add i64 %766, -68
  %808 = add i64 %802, 8
  store i64 %808, i64* %3, align 8
  %809 = inttoptr i64 %807 to i32*
  %810 = load i32, i32* %809, align 4
  %811 = sext i32 %810 to i64
  store i64 %811, i64* %RCX.i2082, align 8
  %812 = shl nsw i64 %811, 3
  %813 = add i64 %812, %806
  %814 = add i64 %802, 12
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %813 to i64*
  %816 = load i64, i64* %815, align 8
  store i64 %816, i64* %RAX.i250, align 8
  %817 = add i64 %802, 16
  store i64 %817, i64* %3, align 8
  %818 = load i32, i32* %769, align 4
  %819 = sext i32 %818 to i64
  store i64 %819, i64* %RCX.i2082, align 8
  %820 = shl nsw i64 %819, 2
  %821 = add i64 %820, %816
  %822 = add i64 %802, 21
  store i64 %822, i64* %3, align 8
  %823 = inttoptr i64 %821 to i32*
  %824 = load i32, i32* %823, align 4
  store i32 %824, i32* %629, align 1
  store float 0.000000e+00, float* %631, align 1
  store float 0.000000e+00, float* %111, align 1
  store float 0.000000e+00, float* %633, align 1
  %825 = add i64 %766, -76
  %826 = add i64 %802, 26
  store i64 %826, i64* %3, align 8
  %827 = inttoptr i64 %825 to i32*
  %828 = load i32, i32* %827, align 4
  store i32 %828, i32* %637, align 1
  store float 0.000000e+00, float* %639, align 1
  store float 0.000000e+00, float* %641, align 1
  store float 0.000000e+00, float* %643, align 1
  %829 = add i64 %802, 29
  store i64 %829, i64* %3, align 8
  %830 = load <2 x float>, <2 x float>* %644, align 1
  %831 = extractelement <2 x float> %830, i32 0
  %832 = load <2 x float>, <2 x float>* %634, align 1
  %833 = extractelement <2 x float> %832, i32 0
  %834 = fcmp uno float %831, %833
  br i1 %834, label %835, label %845

; <label>:835:                                    ; preds = %block_405ec2
  %836 = fadd float %831, %833
  %837 = bitcast float %836 to i32
  %838 = and i32 %837, 2143289344
  %839 = icmp eq i32 %838, 2139095040
  %840 = and i32 %837, 4194303
  %841 = icmp ne i32 %840, 0
  %842 = and i1 %839, %841
  br i1 %842, label %843, label %851

; <label>:843:                                    ; preds = %835
  %844 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %829, %struct.Memory* %MEMORY.7)
  %.pre106 = load i64, i64* %3, align 8
  %.pre107 = load i8, i8* %14, align 1
  %.pre108 = load i8, i8* %29, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit1790

; <label>:845:                                    ; preds = %block_405ec2
  %846 = fcmp ogt float %831, %833
  br i1 %846, label %851, label %847

; <label>:847:                                    ; preds = %845
  %848 = fcmp olt float %831, %833
  br i1 %848, label %851, label %849

; <label>:849:                                    ; preds = %847
  %850 = fcmp oeq float %831, %833
  br i1 %850, label %851, label %855

; <label>:851:                                    ; preds = %849, %847, %845, %835
  %852 = phi i8 [ 0, %845 ], [ 0, %847 ], [ 1, %849 ], [ 1, %835 ]
  %853 = phi i8 [ 0, %845 ], [ 0, %847 ], [ 0, %849 ], [ 1, %835 ]
  %854 = phi i8 [ 0, %845 ], [ 1, %847 ], [ 0, %849 ], [ 1, %835 ]
  store i8 %852, i8* %29, align 1
  store i8 %853, i8* %21, align 1
  store i8 %854, i8* %14, align 1
  br label %855

; <label>:855:                                    ; preds = %851, %849
  %856 = phi i8 [ %852, %851 ], [ %790, %849 ]
  %857 = phi i8 [ %854, %851 ], [ %778, %849 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit1790

routine_ucomiss__xmm0___xmm1.exit1790:            ; preds = %855, %843
  %858 = phi i8 [ %.pre108, %843 ], [ %856, %855 ]
  %859 = phi i8 [ %.pre107, %843 ], [ %857, %855 ]
  %860 = phi i64 [ %.pre106, %843 ], [ %829, %855 ]
  %861 = phi %struct.Memory* [ %844, %843 ], [ %MEMORY.7, %855 ]
  %862 = or i8 %858, %859
  %863 = icmp ne i8 %862, 0
  %.v137 = select i1 %863, i64 44, i64 6
  %864 = add i64 %860, %.v137
  store i64 %864, i64* %3, align 8
  br i1 %863, label %block_.L_405f0b, label %block_405ee5

block_405ee5:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit1790
  %865 = load i64, i64* %RBP.i, align 8
  %866 = add i64 %865, -40
  %867 = add i64 %864, 4
  store i64 %867, i64* %3, align 8
  %868 = inttoptr i64 %866 to i64*
  %869 = load i64, i64* %868, align 8
  store i64 %869, i64* %RAX.i250, align 8
  %870 = add i64 %865, -68
  %871 = add i64 %864, 8
  store i64 %871, i64* %3, align 8
  %872 = inttoptr i64 %870 to i32*
  %873 = load i32, i32* %872, align 4
  %874 = sext i32 %873 to i64
  store i64 %874, i64* %RCX.i2082, align 8
  %875 = shl nsw i64 %874, 3
  %876 = add i64 %875, %869
  %877 = add i64 %864, 12
  store i64 %877, i64* %3, align 8
  %878 = inttoptr i64 %876 to i64*
  %879 = load i64, i64* %878, align 8
  store i64 %879, i64* %RAX.i250, align 8
  %880 = add i64 %865, -72
  %881 = add i64 %864, 16
  store i64 %881, i64* %3, align 8
  %882 = inttoptr i64 %880 to i32*
  %883 = load i32, i32* %882, align 4
  %884 = sext i32 %883 to i64
  store i64 %884, i64* %RCX.i2082, align 8
  %885 = shl nsw i64 %884, 2
  %886 = add i64 %885, %879
  %887 = add i64 %864, 21
  store i64 %887, i64* %3, align 8
  %888 = inttoptr i64 %886 to i32*
  %889 = load i32, i32* %888, align 4
  store i32 %889, i32* %629, align 1
  store float 0.000000e+00, float* %631, align 1
  store float 0.000000e+00, float* %111, align 1
  store float 0.000000e+00, float* %633, align 1
  %890 = add i64 %865, -76
  %891 = add i64 %864, 26
  store i64 %891, i64* %3, align 8
  %892 = load <2 x float>, <2 x float>* %634, align 1
  %893 = extractelement <2 x float> %892, i32 0
  %894 = inttoptr i64 %890 to float*
  store float %893, float* %894, align 4
  %895 = load i64, i64* %RBP.i, align 8
  %896 = add i64 %895, -68
  %897 = load i64, i64* %3, align 8
  %898 = add i64 %897, 3
  store i64 %898, i64* %3, align 8
  %899 = inttoptr i64 %896 to i32*
  %900 = load i32, i32* %899, align 4
  %901 = zext i32 %900 to i64
  store i64 %901, i64* %RDX.i2069, align 8
  %902 = add i64 %895, -52
  %903 = add i64 %897, 6
  store i64 %903, i64* %3, align 8
  %904 = inttoptr i64 %902 to i32*
  store i32 %900, i32* %904, align 4
  %905 = load i64, i64* %RBP.i, align 8
  %906 = add i64 %905, -72
  %907 = load i64, i64* %3, align 8
  %908 = add i64 %907, 3
  store i64 %908, i64* %3, align 8
  %909 = inttoptr i64 %906 to i32*
  %910 = load i32, i32* %909, align 4
  %911 = zext i32 %910 to i64
  store i64 %911, i64* %RDX.i2069, align 8
  %912 = add i64 %905, -56
  %913 = add i64 %907, 6
  store i64 %913, i64* %3, align 8
  %914 = inttoptr i64 %912 to i32*
  store i32 %910, i32* %914, align 4
  %.pre109 = load i64, i64* %3, align 8
  br label %block_.L_405f0b

block_.L_405f0b:                                  ; preds = %block_405ee5, %routine_ucomiss__xmm0___xmm1.exit1790
  %915 = phi i64 [ %.pre109, %block_405ee5 ], [ %864, %routine_ucomiss__xmm0___xmm1.exit1790 ]
  %916 = load i64, i64* %RBP.i, align 8
  %917 = add i64 %916, -72
  %918 = add i64 %915, 8
  store i64 %918, i64* %3, align 8
  %919 = inttoptr i64 %917 to i32*
  %920 = load i32, i32* %919, align 4
  %921 = add i32 %920, 1
  %922 = zext i32 %921 to i64
  store i64 %922, i64* %RAX.i250, align 8
  %923 = icmp eq i32 %920, -1
  %924 = icmp eq i32 %921, 0
  %925 = or i1 %923, %924
  %926 = zext i1 %925 to i8
  store i8 %926, i8* %14, align 1
  %927 = and i32 %921, 255
  %928 = tail call i32 @llvm.ctpop.i32(i32 %927)
  %929 = trunc i32 %928 to i8
  %930 = and i8 %929, 1
  %931 = xor i8 %930, 1
  store i8 %931, i8* %21, align 1
  %932 = xor i32 %921, %920
  %933 = lshr i32 %932, 4
  %934 = trunc i32 %933 to i8
  %935 = and i8 %934, 1
  store i8 %935, i8* %26, align 1
  %936 = zext i1 %924 to i8
  store i8 %936, i8* %29, align 1
  %937 = lshr i32 %921, 31
  %938 = trunc i32 %937 to i8
  store i8 %938, i8* %32, align 1
  %939 = lshr i32 %920, 31
  %940 = xor i32 %937, %939
  %941 = add nuw nsw i32 %940, %937
  %942 = icmp eq i32 %941, 2
  %943 = zext i1 %942 to i8
  store i8 %943, i8* %38, align 1
  %944 = add i64 %915, 14
  store i64 %944, i64* %3, align 8
  store i32 %921, i32* %919, align 4
  %945 = load i64, i64* %3, align 8
  %946 = add i64 %945, -99
  store i64 %946, i64* %3, align 8
  br label %block_.L_405eb6

block_.L_405f1e:                                  ; preds = %block_.L_405eb6
  %947 = add i64 %766, -68
  %948 = add i64 %802, 8
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to i32*
  %950 = load i32, i32* %949, align 4
  %951 = add i32 %950, 1
  %952 = zext i32 %951 to i64
  store i64 %952, i64* %RAX.i250, align 8
  %953 = icmp eq i32 %950, -1
  %954 = icmp eq i32 %951, 0
  %955 = or i1 %953, %954
  %956 = zext i1 %955 to i8
  store i8 %956, i8* %14, align 1
  %957 = and i32 %951, 255
  %958 = tail call i32 @llvm.ctpop.i32(i32 %957)
  %959 = trunc i32 %958 to i8
  %960 = and i8 %959, 1
  %961 = xor i8 %960, 1
  store i8 %961, i8* %21, align 1
  %962 = xor i32 %951, %950
  %963 = lshr i32 %962, 4
  %964 = trunc i32 %963 to i8
  %965 = and i8 %964, 1
  store i8 %965, i8* %26, align 1
  %966 = zext i1 %954 to i8
  store i8 %966, i8* %29, align 1
  %967 = lshr i32 %951, 31
  %968 = trunc i32 %967 to i8
  store i8 %968, i8* %32, align 1
  %969 = lshr i32 %950, 31
  %970 = xor i32 %967, %969
  %971 = add nuw nsw i32 %970, %967
  %972 = icmp eq i32 %971, 2
  %973 = zext i1 %972 to i8
  store i8 %973, i8* %38, align 1
  %974 = add i64 %802, 14
  store i64 %974, i64* %3, align 8
  store i32 %951, i32* %949, align 4
  %975 = load i64, i64* %3, align 8
  %976 = add i64 %975, -139
  store i64 %976, i64* %3, align 8
  br label %block_.L_405ea1

block_.L_405f31:                                  ; preds = %block_.L_405ea1
  %977 = add i64 %700, -48
  %978 = add i64 %736, 4
  store i64 %978, i64* %3, align 8
  %979 = inttoptr i64 %977 to i64*
  %980 = load i64, i64* %979, align 8
  store i64 %980, i64* %RAX.i250, align 8
  %981 = add i64 %700, -52
  %982 = add i64 %736, 8
  store i64 %982, i64* %3, align 8
  %983 = inttoptr i64 %981 to i32*
  %984 = load i32, i32* %983, align 4
  %985 = sext i32 %984 to i64
  store i64 %985, i64* %RCX.i2082, align 8
  %986 = shl nsw i64 %985, 2
  %987 = add i64 %986, %980
  %988 = add i64 %736, 11
  store i64 %988, i64* %3, align 8
  %989 = inttoptr i64 %987 to i32*
  %990 = load i32, i32* %989, align 4
  %991 = zext i32 %990 to i64
  store i64 %991, i64* %RDX.i2069, align 8
  %992 = add i64 %700, -32
  %993 = add i64 %736, 15
  store i64 %993, i64* %3, align 8
  %994 = inttoptr i64 %992 to i64*
  %995 = load i64, i64* %994, align 8
  store i64 %995, i64* %RAX.i250, align 8
  %996 = add i64 %736, 18
  store i64 %996, i64* %3, align 8
  %997 = load i32, i32* %708, align 4
  %998 = add i32 %997, -2
  %999 = zext i32 %998 to i64
  store i64 %999, i64* %RSI.i2072, align 8
  %1000 = sext i32 %998 to i64
  %1001 = mul nsw i64 %1000, 40
  store i64 %1001, i64* %RCX.i2082, align 8
  %1002 = lshr i64 %1001, 63
  %1003 = add i64 %1001, %995
  store i64 %1003, i64* %RAX.i250, align 8
  %1004 = icmp ult i64 %1003, %995
  %1005 = icmp ult i64 %1003, %1001
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
  %1014 = xor i64 %1001, %995
  %1015 = xor i64 %1014, %1003
  %1016 = lshr i64 %1015, 4
  %1017 = trunc i64 %1016 to i8
  %1018 = and i8 %1017, 1
  store i8 %1018, i8* %26, align 1
  %1019 = icmp eq i64 %1003, 0
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %29, align 1
  %1021 = lshr i64 %1003, 63
  %1022 = trunc i64 %1021 to i8
  store i8 %1022, i8* %32, align 1
  %1023 = lshr i64 %995, 63
  %1024 = xor i64 %1021, %1023
  %1025 = xor i64 %1021, %1002
  %1026 = add nuw nsw i64 %1024, %1025
  %1027 = icmp eq i64 %1026, 2
  %1028 = zext i1 %1027 to i8
  store i8 %1028, i8* %38, align 1
  %1029 = add i64 %1003, 4
  %1030 = load i32, i32* %EDX.i2085, align 4
  %1031 = add i64 %736, 34
  store i64 %1031, i64* %3, align 8
  %1032 = inttoptr i64 %1029 to i32*
  store i32 %1030, i32* %1032, align 4
  %1033 = load i64, i64* %RBP.i, align 8
  %1034 = add i64 %1033, -48
  %1035 = load i64, i64* %3, align 8
  %1036 = add i64 %1035, 4
  store i64 %1036, i64* %3, align 8
  %1037 = inttoptr i64 %1034 to i64*
  %1038 = load i64, i64* %1037, align 8
  store i64 %1038, i64* %RAX.i250, align 8
  %1039 = add i64 %1033, -56
  %1040 = add i64 %1035, 8
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i32*
  %1042 = load i32, i32* %1041, align 4
  %1043 = sext i32 %1042 to i64
  store i64 %1043, i64* %RCX.i2082, align 8
  %1044 = shl nsw i64 %1043, 2
  %1045 = add i64 %1044, %1038
  %1046 = add i64 %1035, 11
  store i64 %1046, i64* %3, align 8
  %1047 = inttoptr i64 %1045 to i32*
  %1048 = load i32, i32* %1047, align 4
  %1049 = zext i32 %1048 to i64
  store i64 %1049, i64* %RDX.i2069, align 8
  %1050 = add i64 %1033, -32
  %1051 = add i64 %1035, 15
  store i64 %1051, i64* %3, align 8
  %1052 = inttoptr i64 %1050 to i64*
  %1053 = load i64, i64* %1052, align 8
  store i64 %1053, i64* %RAX.i250, align 8
  %1054 = add i64 %1033, -64
  %1055 = add i64 %1035, 18
  store i64 %1055, i64* %3, align 8
  %1056 = inttoptr i64 %1054 to i32*
  %1057 = load i32, i32* %1056, align 4
  %1058 = add i32 %1057, -2
  %1059 = zext i32 %1058 to i64
  store i64 %1059, i64* %RSI.i2072, align 8
  %1060 = sext i32 %1058 to i64
  %1061 = mul nsw i64 %1060, 40
  store i64 %1061, i64* %RCX.i2082, align 8
  %1062 = lshr i64 %1061, 63
  %1063 = add i64 %1061, %1053
  store i64 %1063, i64* %RAX.i250, align 8
  %1064 = icmp ult i64 %1063, %1053
  %1065 = icmp ult i64 %1063, %1061
  %1066 = or i1 %1064, %1065
  %1067 = zext i1 %1066 to i8
  store i8 %1067, i8* %14, align 1
  %1068 = trunc i64 %1063 to i32
  %1069 = and i32 %1068, 255
  %1070 = tail call i32 @llvm.ctpop.i32(i32 %1069)
  %1071 = trunc i32 %1070 to i8
  %1072 = and i8 %1071, 1
  %1073 = xor i8 %1072, 1
  store i8 %1073, i8* %21, align 1
  %1074 = xor i64 %1061, %1053
  %1075 = xor i64 %1074, %1063
  %1076 = lshr i64 %1075, 4
  %1077 = trunc i64 %1076 to i8
  %1078 = and i8 %1077, 1
  store i8 %1078, i8* %26, align 1
  %1079 = icmp eq i64 %1063, 0
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %29, align 1
  %1081 = lshr i64 %1063, 63
  %1082 = trunc i64 %1081 to i8
  store i8 %1082, i8* %32, align 1
  %1083 = lshr i64 %1053, 63
  %1084 = xor i64 %1081, %1083
  %1085 = xor i64 %1081, %1062
  %1086 = add nuw nsw i64 %1084, %1085
  %1087 = icmp eq i64 %1086, 2
  %1088 = zext i1 %1087 to i8
  store i8 %1088, i8* %38, align 1
  %1089 = add i64 %1063, 8
  %1090 = load i32, i32* %EDX.i2085, align 4
  %1091 = add i64 %1035, 34
  store i64 %1091, i64* %3, align 8
  %1092 = inttoptr i64 %1089 to i32*
  store i32 %1090, i32* %1092, align 4
  %1093 = load i64, i64* %RBP.i, align 8
  %1094 = add i64 %1093, -48
  %1095 = load i64, i64* %3, align 8
  %1096 = add i64 %1095, 4
  store i64 %1096, i64* %3, align 8
  %1097 = inttoptr i64 %1094 to i64*
  %1098 = load i64, i64* %1097, align 8
  store i64 %1098, i64* %RAX.i250, align 8
  %1099 = add i64 %1093, -52
  %1100 = add i64 %1095, 8
  store i64 %1100, i64* %3, align 8
  %1101 = inttoptr i64 %1099 to i32*
  %1102 = load i32, i32* %1101, align 4
  %1103 = sext i32 %1102 to i64
  store i64 %1103, i64* %RCX.i2082, align 8
  %1104 = shl nsw i64 %1103, 2
  %1105 = add i64 %1104, %1098
  %1106 = add i64 %1095, 11
  store i64 %1106, i64* %3, align 8
  %1107 = inttoptr i64 %1105 to i32*
  %1108 = load i32, i32* %1107, align 4
  %1109 = zext i32 %1108 to i64
  store i64 %1109, i64* %RDX.i2069, align 8
  %1110 = add i64 %1093, -12
  %1111 = add i64 %1095, 14
  store i64 %1111, i64* %3, align 8
  %1112 = inttoptr i64 %1110 to i32*
  %1113 = load i32, i32* %1112, align 4
  %1114 = sub i32 %1108, %1113
  %1115 = icmp ult i32 %1108, %1113
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %14, align 1
  %1117 = and i32 %1114, 255
  %1118 = tail call i32 @llvm.ctpop.i32(i32 %1117)
  %1119 = trunc i32 %1118 to i8
  %1120 = and i8 %1119, 1
  %1121 = xor i8 %1120, 1
  store i8 %1121, i8* %21, align 1
  %1122 = xor i32 %1113, %1108
  %1123 = xor i32 %1122, %1114
  %1124 = lshr i32 %1123, 4
  %1125 = trunc i32 %1124 to i8
  %1126 = and i8 %1125, 1
  store i8 %1126, i8* %26, align 1
  %1127 = icmp eq i32 %1114, 0
  %1128 = zext i1 %1127 to i8
  store i8 %1128, i8* %29, align 1
  %1129 = lshr i32 %1114, 31
  %1130 = trunc i32 %1129 to i8
  store i8 %1130, i8* %32, align 1
  %1131 = lshr i32 %1108, 31
  %1132 = lshr i32 %1113, 31
  %1133 = xor i32 %1132, %1131
  %1134 = xor i32 %1129, %1131
  %1135 = add nuw nsw i32 %1134, %1133
  %1136 = icmp eq i32 %1135, 2
  %1137 = zext i1 %1136 to i8
  store i8 %1137, i8* %38, align 1
  %1138 = icmp ne i8 %1130, 0
  %1139 = xor i1 %1138, %1136
  %.v123 = select i1 %1139, i64 59, i64 20
  %1140 = add i64 %1095, %.v123
  store i64 %1140, i64* %3, align 8
  br i1 %1139, label %block_.L_405fb0, label %block_405f89

block_405f89:                                     ; preds = %block_.L_405f31
  %1141 = add i64 %1140, 3
  store i64 %1141, i64* %3, align 8
  %1142 = load i32, i32* %1112, align 4
  %1143 = zext i32 %1142 to i64
  store i64 %1143, i64* %RAX.i250, align 8
  %1144 = add i64 %1093, -64
  %1145 = add i64 %1140, 6
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to i32*
  %1147 = load i32, i32* %1146, align 4
  %1148 = add i32 %1147, %1142
  %1149 = lshr i32 %1148, 31
  %1150 = add i32 %1148, -2
  %1151 = zext i32 %1150 to i64
  store i64 %1151, i64* %RAX.i250, align 8
  %1152 = icmp ult i32 %1148, 2
  %1153 = zext i1 %1152 to i8
  store i8 %1153, i8* %14, align 1
  %1154 = and i32 %1150, 255
  %1155 = tail call i32 @llvm.ctpop.i32(i32 %1154)
  %1156 = trunc i32 %1155 to i8
  %1157 = and i8 %1156, 1
  %1158 = xor i8 %1157, 1
  store i8 %1158, i8* %21, align 1
  %1159 = xor i32 %1150, %1148
  %1160 = lshr i32 %1159, 4
  %1161 = trunc i32 %1160 to i8
  %1162 = and i8 %1161, 1
  store i8 %1162, i8* %26, align 1
  %1163 = icmp eq i32 %1150, 0
  %1164 = zext i1 %1163 to i8
  store i8 %1164, i8* %29, align 1
  %1165 = lshr i32 %1150, 31
  %1166 = trunc i32 %1165 to i8
  store i8 %1166, i8* %32, align 1
  %1167 = xor i32 %1165, %1149
  %1168 = add nuw nsw i32 %1167, %1149
  %1169 = icmp eq i32 %1168, 2
  %1170 = zext i1 %1169 to i8
  store i8 %1170, i8* %38, align 1
  %1171 = add i64 %1093, -32
  %1172 = add i64 %1140, 13
  store i64 %1172, i64* %3, align 8
  %1173 = inttoptr i64 %1171 to i64*
  %1174 = load i64, i64* %1173, align 8
  store i64 %1174, i64* %RCX.i2082, align 8
  %1175 = add i64 %1140, 17
  store i64 %1175, i64* %3, align 8
  %1176 = load i64, i64* %1097, align 8
  store i64 %1176, i64* %RDX.i2069, align 8
  %1177 = add i64 %1140, 21
  store i64 %1177, i64* %3, align 8
  %1178 = load i32, i32* %1101, align 4
  %1179 = sext i32 %1178 to i64
  store i64 %1179, i64* %RSI.i2072, align 8
  %1180 = shl nsw i64 %1179, 2
  %1181 = add i64 %1180, %1176
  %1182 = add i64 %1140, 24
  store i64 %1182, i64* %3, align 8
  %1183 = inttoptr i64 %1181 to i32*
  %1184 = load i32, i32* %1183, align 4
  %1185 = zext i32 %1184 to i64
  store i64 %1185, i64* %RDI.i1792, align 8
  %1186 = add i64 %1140, 27
  store i64 %1186, i64* %3, align 8
  %1187 = load i32, i32* %1112, align 4
  %1188 = sub i32 %1184, %1187
  %1189 = zext i32 %1188 to i64
  store i64 %1189, i64* %RDI.i1792, align 8
  %1190 = sext i32 %1188 to i64
  %1191 = mul nsw i64 %1190, 40
  store i64 %1191, i64* %RDX.i2069, align 8
  %1192 = lshr i64 %1191, 63
  %1193 = add i64 %1191, %1174
  store i64 %1193, i64* %RCX.i2082, align 8
  %1194 = icmp ult i64 %1193, %1174
  %1195 = icmp ult i64 %1193, %1191
  %1196 = or i1 %1194, %1195
  %1197 = zext i1 %1196 to i8
  store i8 %1197, i8* %14, align 1
  %1198 = trunc i64 %1193 to i32
  %1199 = and i32 %1198, 255
  %1200 = tail call i32 @llvm.ctpop.i32(i32 %1199)
  %1201 = trunc i32 %1200 to i8
  %1202 = and i8 %1201, 1
  %1203 = xor i8 %1202, 1
  store i8 %1203, i8* %21, align 1
  %1204 = xor i64 %1191, %1174
  %1205 = xor i64 %1204, %1193
  %1206 = lshr i64 %1205, 4
  %1207 = trunc i64 %1206 to i8
  %1208 = and i8 %1207, 1
  store i8 %1208, i8* %26, align 1
  %1209 = icmp eq i64 %1193, 0
  %1210 = zext i1 %1209 to i8
  store i8 %1210, i8* %29, align 1
  %1211 = lshr i64 %1193, 63
  %1212 = trunc i64 %1211 to i8
  store i8 %1212, i8* %32, align 1
  %1213 = lshr i64 %1174, 63
  %1214 = xor i64 %1211, %1213
  %1215 = xor i64 %1211, %1192
  %1216 = add nuw nsw i64 %1214, %1215
  %1217 = icmp eq i64 %1216, 2
  %1218 = zext i1 %1217 to i8
  store i8 %1218, i8* %38, align 1
  %1219 = inttoptr i64 %1193 to i32*
  %1220 = load i32, i32* %EAX.i2056, align 4
  %1221 = add i64 %1140, 39
  store i64 %1221, i64* %3, align 8
  store i32 %1220, i32* %1219, align 4
  %.pre74 = load i64, i64* %RBP.i, align 8
  %.pre75 = load i64, i64* %3, align 8
  br label %block_.L_405fb0

block_.L_405fb0:                                  ; preds = %block_405f89, %block_.L_405f31
  %1222 = phi i64 [ %.pre75, %block_405f89 ], [ %1140, %block_.L_405f31 ]
  %1223 = phi i64 [ %.pre74, %block_405f89 ], [ %1093, %block_.L_405f31 ]
  %1224 = add i64 %1223, -48
  %1225 = add i64 %1222, 4
  store i64 %1225, i64* %3, align 8
  %1226 = inttoptr i64 %1224 to i64*
  %1227 = load i64, i64* %1226, align 8
  store i64 %1227, i64* %RAX.i250, align 8
  %1228 = add i64 %1223, -56
  %1229 = add i64 %1222, 8
  store i64 %1229, i64* %3, align 8
  %1230 = inttoptr i64 %1228 to i32*
  %1231 = load i32, i32* %1230, align 4
  %1232 = sext i32 %1231 to i64
  store i64 %1232, i64* %RCX.i2082, align 8
  %1233 = shl nsw i64 %1232, 2
  %1234 = add i64 %1233, %1227
  %1235 = add i64 %1222, 11
  store i64 %1235, i64* %3, align 8
  %1236 = inttoptr i64 %1234 to i32*
  %1237 = load i32, i32* %1236, align 4
  %1238 = zext i32 %1237 to i64
  store i64 %1238, i64* %RDX.i2069, align 8
  %1239 = add i64 %1223, -12
  %1240 = add i64 %1222, 14
  store i64 %1240, i64* %3, align 8
  %1241 = inttoptr i64 %1239 to i32*
  %1242 = load i32, i32* %1241, align 4
  %1243 = sub i32 %1237, %1242
  %1244 = icmp ult i32 %1237, %1242
  %1245 = zext i1 %1244 to i8
  store i8 %1245, i8* %14, align 1
  %1246 = and i32 %1243, 255
  %1247 = tail call i32 @llvm.ctpop.i32(i32 %1246)
  %1248 = trunc i32 %1247 to i8
  %1249 = and i8 %1248, 1
  %1250 = xor i8 %1249, 1
  store i8 %1250, i8* %21, align 1
  %1251 = xor i32 %1242, %1237
  %1252 = xor i32 %1251, %1243
  %1253 = lshr i32 %1252, 4
  %1254 = trunc i32 %1253 to i8
  %1255 = and i8 %1254, 1
  store i8 %1255, i8* %26, align 1
  %1256 = icmp eq i32 %1243, 0
  %1257 = zext i1 %1256 to i8
  store i8 %1257, i8* %29, align 1
  %1258 = lshr i32 %1243, 31
  %1259 = trunc i32 %1258 to i8
  store i8 %1259, i8* %32, align 1
  %1260 = lshr i32 %1237, 31
  %1261 = lshr i32 %1242, 31
  %1262 = xor i32 %1261, %1260
  %1263 = xor i32 %1258, %1260
  %1264 = add nuw nsw i32 %1263, %1262
  %1265 = icmp eq i32 %1264, 2
  %1266 = zext i1 %1265 to i8
  store i8 %1266, i8* %38, align 1
  %1267 = icmp ne i8 %1259, 0
  %1268 = xor i1 %1267, %1265
  %.v124 = select i1 %1268, i64 59, i64 20
  %1269 = add i64 %1222, %.v124
  store i64 %1269, i64* %3, align 8
  br i1 %1268, label %block_.L_405feb, label %block_405fc4

block_405fc4:                                     ; preds = %block_.L_405fb0
  %1270 = add i64 %1269, 3
  store i64 %1270, i64* %3, align 8
  %1271 = load i32, i32* %1241, align 4
  %1272 = zext i32 %1271 to i64
  store i64 %1272, i64* %RAX.i250, align 8
  %1273 = add i64 %1223, -64
  %1274 = add i64 %1269, 6
  store i64 %1274, i64* %3, align 8
  %1275 = inttoptr i64 %1273 to i32*
  %1276 = load i32, i32* %1275, align 4
  %1277 = add i32 %1276, %1271
  %1278 = lshr i32 %1277, 31
  %1279 = add i32 %1277, -2
  %1280 = zext i32 %1279 to i64
  store i64 %1280, i64* %RAX.i250, align 8
  %1281 = icmp ult i32 %1277, 2
  %1282 = zext i1 %1281 to i8
  store i8 %1282, i8* %14, align 1
  %1283 = and i32 %1279, 255
  %1284 = tail call i32 @llvm.ctpop.i32(i32 %1283)
  %1285 = trunc i32 %1284 to i8
  %1286 = and i8 %1285, 1
  %1287 = xor i8 %1286, 1
  store i8 %1287, i8* %21, align 1
  %1288 = xor i32 %1279, %1277
  %1289 = lshr i32 %1288, 4
  %1290 = trunc i32 %1289 to i8
  %1291 = and i8 %1290, 1
  store i8 %1291, i8* %26, align 1
  %1292 = icmp eq i32 %1279, 0
  %1293 = zext i1 %1292 to i8
  store i8 %1293, i8* %29, align 1
  %1294 = lshr i32 %1279, 31
  %1295 = trunc i32 %1294 to i8
  store i8 %1295, i8* %32, align 1
  %1296 = xor i32 %1294, %1278
  %1297 = add nuw nsw i32 %1296, %1278
  %1298 = icmp eq i32 %1297, 2
  %1299 = zext i1 %1298 to i8
  store i8 %1299, i8* %38, align 1
  %1300 = add i64 %1223, -32
  %1301 = add i64 %1269, 13
  store i64 %1301, i64* %3, align 8
  %1302 = inttoptr i64 %1300 to i64*
  %1303 = load i64, i64* %1302, align 8
  store i64 %1303, i64* %RCX.i2082, align 8
  %1304 = add i64 %1269, 17
  store i64 %1304, i64* %3, align 8
  %1305 = load i64, i64* %1226, align 8
  store i64 %1305, i64* %RDX.i2069, align 8
  %1306 = add i64 %1269, 21
  store i64 %1306, i64* %3, align 8
  %1307 = load i32, i32* %1230, align 4
  %1308 = sext i32 %1307 to i64
  store i64 %1308, i64* %RSI.i2072, align 8
  %1309 = shl nsw i64 %1308, 2
  %1310 = add i64 %1309, %1305
  %1311 = add i64 %1269, 24
  store i64 %1311, i64* %3, align 8
  %1312 = inttoptr i64 %1310 to i32*
  %1313 = load i32, i32* %1312, align 4
  %1314 = zext i32 %1313 to i64
  store i64 %1314, i64* %RDI.i1792, align 8
  %1315 = add i64 %1269, 27
  store i64 %1315, i64* %3, align 8
  %1316 = load i32, i32* %1241, align 4
  %1317 = sub i32 %1313, %1316
  %1318 = zext i32 %1317 to i64
  store i64 %1318, i64* %RDI.i1792, align 8
  %1319 = sext i32 %1317 to i64
  %1320 = mul nsw i64 %1319, 40
  store i64 %1320, i64* %RDX.i2069, align 8
  %1321 = lshr i64 %1320, 63
  %1322 = add i64 %1320, %1303
  store i64 %1322, i64* %RCX.i2082, align 8
  %1323 = icmp ult i64 %1322, %1303
  %1324 = icmp ult i64 %1322, %1320
  %1325 = or i1 %1323, %1324
  %1326 = zext i1 %1325 to i8
  store i8 %1326, i8* %14, align 1
  %1327 = trunc i64 %1322 to i32
  %1328 = and i32 %1327, 255
  %1329 = tail call i32 @llvm.ctpop.i32(i32 %1328)
  %1330 = trunc i32 %1329 to i8
  %1331 = and i8 %1330, 1
  %1332 = xor i8 %1331, 1
  store i8 %1332, i8* %21, align 1
  %1333 = xor i64 %1320, %1303
  %1334 = xor i64 %1333, %1322
  %1335 = lshr i64 %1334, 4
  %1336 = trunc i64 %1335 to i8
  %1337 = and i8 %1336, 1
  store i8 %1337, i8* %26, align 1
  %1338 = icmp eq i64 %1322, 0
  %1339 = zext i1 %1338 to i8
  store i8 %1339, i8* %29, align 1
  %1340 = lshr i64 %1322, 63
  %1341 = trunc i64 %1340 to i8
  store i8 %1341, i8* %32, align 1
  %1342 = lshr i64 %1303, 63
  %1343 = xor i64 %1340, %1342
  %1344 = xor i64 %1340, %1321
  %1345 = add nuw nsw i64 %1343, %1344
  %1346 = icmp eq i64 %1345, 2
  %1347 = zext i1 %1346 to i8
  store i8 %1347, i8* %38, align 1
  %1348 = inttoptr i64 %1322 to i32*
  %1349 = load i32, i32* %EAX.i2056, align 4
  %1350 = add i64 %1269, 39
  store i64 %1350, i64* %3, align 8
  store i32 %1349, i32* %1348, align 4
  %.pre76 = load i64, i64* %RBP.i, align 8
  %.pre77 = load i64, i64* %3, align 8
  br label %block_.L_405feb

block_.L_405feb:                                  ; preds = %block_405fc4, %block_.L_405fb0
  %1351 = phi i64 [ %.pre77, %block_405fc4 ], [ %1269, %block_.L_405fb0 ]
  %1352 = phi i64 [ %.pre76, %block_405fc4 ], [ %1223, %block_.L_405fb0 ]
  %1353 = add i64 %1352, -76
  %1354 = add i64 %1351, 5
  store i64 %1354, i64* %3, align 8
  %1355 = inttoptr i64 %1353 to i32*
  %1356 = load i32, i32* %1355, align 4
  store i32 %1356, i32* %629, align 1
  store float 0.000000e+00, float* %631, align 1
  store float 0.000000e+00, float* %111, align 1
  store float 0.000000e+00, float* %633, align 1
  %1357 = add i64 %1352, -32
  %1358 = add i64 %1351, 9
  store i64 %1358, i64* %3, align 8
  %1359 = inttoptr i64 %1357 to i64*
  %1360 = load i64, i64* %1359, align 8
  store i64 %1360, i64* %RAX.i250, align 8
  %1361 = add i64 %1352, -64
  %1362 = add i64 %1351, 12
  store i64 %1362, i64* %3, align 8
  %1363 = inttoptr i64 %1361 to i32*
  %1364 = load i32, i32* %1363, align 4
  %1365 = add i32 %1364, -2
  %1366 = zext i32 %1365 to i64
  store i64 %1366, i64* %RCX.i2082, align 8
  %1367 = sext i32 %1365 to i64
  %1368 = mul nsw i64 %1367, 40
  store i64 %1368, i64* %RDX.i2069, align 8
  %1369 = lshr i64 %1368, 63
  %1370 = add i64 %1368, %1360
  store i64 %1370, i64* %RAX.i250, align 8
  %1371 = icmp ult i64 %1370, %1360
  %1372 = icmp ult i64 %1370, %1368
  %1373 = or i1 %1371, %1372
  %1374 = zext i1 %1373 to i8
  store i8 %1374, i8* %14, align 1
  %1375 = trunc i64 %1370 to i32
  %1376 = and i32 %1375, 255
  %1377 = tail call i32 @llvm.ctpop.i32(i32 %1376)
  %1378 = trunc i32 %1377 to i8
  %1379 = and i8 %1378, 1
  %1380 = xor i8 %1379, 1
  store i8 %1380, i8* %21, align 1
  %1381 = xor i64 %1368, %1360
  %1382 = xor i64 %1381, %1370
  %1383 = lshr i64 %1382, 4
  %1384 = trunc i64 %1383 to i8
  %1385 = and i8 %1384, 1
  store i8 %1385, i8* %26, align 1
  %1386 = icmp eq i64 %1370, 0
  %1387 = zext i1 %1386 to i8
  store i8 %1387, i8* %29, align 1
  %1388 = lshr i64 %1370, 63
  %1389 = trunc i64 %1388 to i8
  store i8 %1389, i8* %32, align 1
  %1390 = lshr i64 %1360, 63
  %1391 = xor i64 %1388, %1390
  %1392 = xor i64 %1388, %1369
  %1393 = add nuw nsw i64 %1391, %1392
  %1394 = icmp eq i64 %1393, 2
  %1395 = zext i1 %1394 to i8
  store i8 %1395, i8* %38, align 1
  %1396 = add i64 %1370, 12
  %1397 = add i64 %1351, 30
  store i64 %1397, i64* %3, align 8
  %1398 = load <2 x float>, <2 x float>* %634, align 1
  %1399 = extractelement <2 x float> %1398, i32 0
  %1400 = inttoptr i64 %1396 to float*
  store float %1399, float* %1400, align 4
  %1401 = load i64, i64* %RBP.i, align 8
  %1402 = add i64 %1401, -104
  %1403 = load i64, i64* %3, align 8
  %1404 = add i64 %1403, 4
  store i64 %1404, i64* %3, align 8
  %1405 = inttoptr i64 %1402 to i64*
  %1406 = load i64, i64* %1405, align 8
  store i64 %1406, i64* %RAX.i250, align 8
  %1407 = add i64 %1401, -64
  %1408 = add i64 %1403, 7
  store i64 %1408, i64* %3, align 8
  %1409 = inttoptr i64 %1407 to i32*
  %1410 = load i32, i32* %1409, align 4
  %1411 = add i32 %1410, -2
  %1412 = zext i32 %1411 to i64
  store i64 %1412, i64* %RCX.i2082, align 8
  %1413 = icmp ult i32 %1410, 2
  %1414 = zext i1 %1413 to i8
  store i8 %1414, i8* %14, align 1
  %1415 = and i32 %1411, 255
  %1416 = tail call i32 @llvm.ctpop.i32(i32 %1415)
  %1417 = trunc i32 %1416 to i8
  %1418 = and i8 %1417, 1
  %1419 = xor i8 %1418, 1
  store i8 %1419, i8* %21, align 1
  %1420 = xor i32 %1411, %1410
  %1421 = lshr i32 %1420, 4
  %1422 = trunc i32 %1421 to i8
  %1423 = and i8 %1422, 1
  store i8 %1423, i8* %26, align 1
  %1424 = icmp eq i32 %1411, 0
  %1425 = zext i1 %1424 to i8
  store i8 %1425, i8* %29, align 1
  %1426 = lshr i32 %1411, 31
  %1427 = trunc i32 %1426 to i8
  store i8 %1427, i8* %32, align 1
  %1428 = lshr i32 %1410, 31
  %1429 = xor i32 %1426, %1428
  %1430 = add nuw nsw i32 %1429, %1428
  %1431 = icmp eq i32 %1430, 2
  %1432 = zext i1 %1431 to i8
  store i8 %1432, i8* %38, align 1
  %1433 = sext i32 %1411 to i64
  store i64 %1433, i64* %RDX.i2069, align 8
  %1434 = shl nsw i64 %1433, 2
  %1435 = add i64 %1406, %1434
  %1436 = add i64 %1403, 18
  store i64 %1436, i64* %3, align 8
  %1437 = load <2 x float>, <2 x float>* %634, align 1
  %1438 = extractelement <2 x float> %1437, i32 0
  %1439 = inttoptr i64 %1435 to float*
  store float %1438, float* %1439, align 4
  %1440 = load i64, i64* %RBP.i, align 8
  %1441 = add i64 %1440, -76
  %1442 = load i64, i64* %3, align 8
  %1443 = add i64 %1442, 5
  store i64 %1443, i64* %3, align 8
  %1444 = inttoptr i64 %1441 to i32*
  %1445 = load i32, i32* %1444, align 4
  store i32 %1445, i32* %629, align 1
  store float 0.000000e+00, float* %631, align 1
  store float 0.000000e+00, float* %111, align 1
  store float 0.000000e+00, float* %633, align 1
  %1446 = add i64 %1440, -32
  %1447 = add i64 %1442, 9
  store i64 %1447, i64* %3, align 8
  %1448 = inttoptr i64 %1446 to i64*
  %1449 = load i64, i64* %1448, align 8
  store i64 %1449, i64* %RAX.i250, align 8
  %1450 = add i64 %1440, -64
  %1451 = add i64 %1442, 12
  store i64 %1451, i64* %3, align 8
  %1452 = inttoptr i64 %1450 to i32*
  %1453 = load i32, i32* %1452, align 4
  %1454 = add i32 %1453, -2
  %1455 = zext i32 %1454 to i64
  store i64 %1455, i64* %RCX.i2082, align 8
  %1456 = sext i32 %1454 to i64
  %1457 = mul nsw i64 %1456, 40
  store i64 %1457, i64* %RDX.i2069, align 8
  %1458 = lshr i64 %1457, 63
  %1459 = add i64 %1457, %1449
  store i64 %1459, i64* %RAX.i250, align 8
  %1460 = icmp ult i64 %1459, %1449
  %1461 = icmp ult i64 %1459, %1457
  %1462 = or i1 %1460, %1461
  %1463 = zext i1 %1462 to i8
  store i8 %1463, i8* %14, align 1
  %1464 = trunc i64 %1459 to i32
  %1465 = and i32 %1464, 255
  %1466 = tail call i32 @llvm.ctpop.i32(i32 %1465)
  %1467 = trunc i32 %1466 to i8
  %1468 = and i8 %1467, 1
  %1469 = xor i8 %1468, 1
  store i8 %1469, i8* %21, align 1
  %1470 = xor i64 %1457, %1449
  %1471 = xor i64 %1470, %1459
  %1472 = lshr i64 %1471, 4
  %1473 = trunc i64 %1472 to i8
  %1474 = and i8 %1473, 1
  store i8 %1474, i8* %26, align 1
  %1475 = icmp eq i64 %1459, 0
  %1476 = zext i1 %1475 to i8
  store i8 %1476, i8* %29, align 1
  %1477 = lshr i64 %1459, 63
  %1478 = trunc i64 %1477 to i8
  store i8 %1478, i8* %32, align 1
  %1479 = lshr i64 %1449, 63
  %1480 = xor i64 %1477, %1479
  %1481 = xor i64 %1477, %1458
  %1482 = add nuw nsw i64 %1480, %1481
  %1483 = icmp eq i64 %1482, 2
  %1484 = zext i1 %1483 to i8
  store i8 %1484, i8* %38, align 1
  %1485 = add i64 %1459, 20
  %1486 = add i64 %1442, 30
  store i64 %1486, i64* %3, align 8
  %1487 = load <2 x float>, <2 x float>* %634, align 1
  %1488 = extractelement <2 x float> %1487, i32 0
  %1489 = inttoptr i64 %1485 to float*
  store float %1488, float* %1489, align 4
  %1490 = load i64, i64* %RBP.i, align 8
  %1491 = add i64 %1490, -32
  %1492 = load i64, i64* %3, align 8
  %1493 = add i64 %1492, 4
  store i64 %1493, i64* %3, align 8
  %1494 = inttoptr i64 %1491 to i64*
  %1495 = load i64, i64* %1494, align 8
  store i64 %1495, i64* %RAX.i250, align 8
  %1496 = add i64 %1490, -64
  %1497 = add i64 %1492, 7
  store i64 %1497, i64* %3, align 8
  %1498 = inttoptr i64 %1496 to i32*
  %1499 = load i32, i32* %1498, align 4
  %1500 = add i32 %1499, -2
  %1501 = zext i32 %1500 to i64
  store i64 %1501, i64* %RCX.i2082, align 8
  %1502 = sext i32 %1500 to i64
  %1503 = mul nsw i64 %1502, 40
  store i64 %1503, i64* %RDX.i2069, align 8
  %1504 = lshr i64 %1503, 63
  %1505 = add i64 %1503, %1495
  store i64 %1505, i64* %RAX.i250, align 8
  %1506 = icmp ult i64 %1505, %1495
  %1507 = icmp ult i64 %1505, %1503
  %1508 = or i1 %1506, %1507
  %1509 = zext i1 %1508 to i8
  store i8 %1509, i8* %14, align 1
  %1510 = trunc i64 %1505 to i32
  %1511 = and i32 %1510, 255
  %1512 = tail call i32 @llvm.ctpop.i32(i32 %1511)
  %1513 = trunc i32 %1512 to i8
  %1514 = and i8 %1513, 1
  %1515 = xor i8 %1514, 1
  store i8 %1515, i8* %21, align 1
  %1516 = xor i64 %1503, %1495
  %1517 = xor i64 %1516, %1505
  %1518 = lshr i64 %1517, 4
  %1519 = trunc i64 %1518 to i8
  %1520 = and i8 %1519, 1
  store i8 %1520, i8* %26, align 1
  %1521 = icmp eq i64 %1505, 0
  %1522 = zext i1 %1521 to i8
  store i8 %1522, i8* %29, align 1
  %1523 = lshr i64 %1505, 63
  %1524 = trunc i64 %1523 to i8
  store i8 %1524, i8* %32, align 1
  %1525 = lshr i64 %1495, 63
  %1526 = xor i64 %1523, %1525
  %1527 = xor i64 %1523, %1504
  %1528 = add nuw nsw i64 %1526, %1527
  %1529 = icmp eq i64 %1528, 2
  %1530 = zext i1 %1529 to i8
  store i8 %1530, i8* %38, align 1
  %1531 = add i64 %1505, 16
  %1532 = add i64 %1492, 25
  store i64 %1532, i64* %3, align 8
  %1533 = load <2 x float>, <2 x float>* %634, align 1
  %1534 = extractelement <2 x float> %1533, i32 0
  %1535 = inttoptr i64 %1531 to float*
  store float %1534, float* %1535, align 4
  %1536 = load i64, i64* %RBP.i, align 8
  %1537 = add i64 %1536, -48
  %1538 = load i64, i64* %3, align 8
  %1539 = add i64 %1538, 4
  store i64 %1539, i64* %3, align 8
  %1540 = inttoptr i64 %1537 to i64*
  %1541 = load i64, i64* %1540, align 8
  store i64 %1541, i64* %RAX.i250, align 8
  %1542 = add i64 %1536, -52
  %1543 = add i64 %1538, 8
  store i64 %1543, i64* %3, align 8
  %1544 = inttoptr i64 %1542 to i32*
  %1545 = load i32, i32* %1544, align 4
  %1546 = sext i32 %1545 to i64
  store i64 %1546, i64* %RDX.i2069, align 8
  %1547 = shl nsw i64 %1546, 2
  %1548 = add i64 %1547, %1541
  %1549 = add i64 %1538, 11
  store i64 %1549, i64* %3, align 8
  %1550 = inttoptr i64 %1548 to i32*
  %1551 = load i32, i32* %1550, align 4
  %1552 = zext i32 %1551 to i64
  store i64 %1552, i64* %RCX.i2082, align 8
  %1553 = add i64 %1536, -12
  %1554 = add i64 %1538, 14
  store i64 %1554, i64* %3, align 8
  %1555 = inttoptr i64 %1553 to i32*
  %1556 = load i32, i32* %1555, align 4
  %1557 = sub i32 %1551, %1556
  %1558 = icmp ult i32 %1551, %1556
  %1559 = zext i1 %1558 to i8
  store i8 %1559, i8* %14, align 1
  %1560 = and i32 %1557, 255
  %1561 = tail call i32 @llvm.ctpop.i32(i32 %1560)
  %1562 = trunc i32 %1561 to i8
  %1563 = and i8 %1562, 1
  %1564 = xor i8 %1563, 1
  store i8 %1564, i8* %21, align 1
  %1565 = xor i32 %1556, %1551
  %1566 = xor i32 %1565, %1557
  %1567 = lshr i32 %1566, 4
  %1568 = trunc i32 %1567 to i8
  %1569 = and i8 %1568, 1
  store i8 %1569, i8* %26, align 1
  %1570 = icmp eq i32 %1557, 0
  %1571 = zext i1 %1570 to i8
  store i8 %1571, i8* %29, align 1
  %1572 = lshr i32 %1557, 31
  %1573 = trunc i32 %1572 to i8
  store i8 %1573, i8* %32, align 1
  %1574 = lshr i32 %1551, 31
  %1575 = lshr i32 %1556, 31
  %1576 = xor i32 %1575, %1574
  %1577 = xor i32 %1572, %1574
  %1578 = add nuw nsw i32 %1577, %1576
  %1579 = icmp eq i32 %1578, 2
  %1580 = zext i1 %1579 to i8
  store i8 %1580, i8* %38, align 1
  %1581 = icmp ne i8 %1573, 0
  %1582 = xor i1 %1581, %1579
  %.v125 = select i1 %1582, i64 80, i64 20
  %1583 = add i64 %1538, %.v125
  store i64 %1583, i64* %3, align 8
  br i1 %1582, label %block_.L_4060a2, label %block_406066

block_406066:                                     ; preds = %block_.L_405feb
  %1584 = add i64 %1536, -104
  %1585 = add i64 %1583, 4
  store i64 %1585, i64* %3, align 8
  %1586 = inttoptr i64 %1584 to i64*
  %1587 = load i64, i64* %1586, align 8
  store i64 %1587, i64* %RAX.i250, align 8
  %1588 = add i64 %1583, 8
  store i64 %1588, i64* %3, align 8
  %1589 = load i64, i64* %1540, align 8
  store i64 %1589, i64* %RCX.i2082, align 8
  %1590 = add i64 %1583, 12
  store i64 %1590, i64* %3, align 8
  %1591 = load i32, i32* %1544, align 4
  %1592 = sext i32 %1591 to i64
  store i64 %1592, i64* %RDX.i2069, align 8
  %1593 = shl nsw i64 %1592, 2
  %1594 = add i64 %1593, %1589
  %1595 = add i64 %1583, 15
  store i64 %1595, i64* %3, align 8
  %1596 = inttoptr i64 %1594 to i32*
  %1597 = load i32, i32* %1596, align 4
  %1598 = zext i32 %1597 to i64
  store i64 %1598, i64* %RSI.i2072, align 8
  %1599 = add i64 %1583, 18
  store i64 %1599, i64* %3, align 8
  %1600 = load i32, i32* %1555, align 4
  %1601 = sub i32 %1597, %1600
  %1602 = zext i32 %1601 to i64
  store i64 %1602, i64* %RSI.i2072, align 8
  %1603 = icmp ult i32 %1597, %1600
  %1604 = zext i1 %1603 to i8
  store i8 %1604, i8* %14, align 1
  %1605 = and i32 %1601, 255
  %1606 = tail call i32 @llvm.ctpop.i32(i32 %1605)
  %1607 = trunc i32 %1606 to i8
  %1608 = and i8 %1607, 1
  %1609 = xor i8 %1608, 1
  store i8 %1609, i8* %21, align 1
  %1610 = xor i32 %1600, %1597
  %1611 = xor i32 %1610, %1601
  %1612 = lshr i32 %1611, 4
  %1613 = trunc i32 %1612 to i8
  %1614 = and i8 %1613, 1
  store i8 %1614, i8* %26, align 1
  %1615 = icmp eq i32 %1601, 0
  %1616 = zext i1 %1615 to i8
  store i8 %1616, i8* %29, align 1
  %1617 = lshr i32 %1601, 31
  %1618 = trunc i32 %1617 to i8
  store i8 %1618, i8* %32, align 1
  %1619 = lshr i32 %1597, 31
  %1620 = lshr i32 %1600, 31
  %1621 = xor i32 %1620, %1619
  %1622 = xor i32 %1617, %1619
  %1623 = add nuw nsw i32 %1622, %1621
  %1624 = icmp eq i32 %1623, 2
  %1625 = zext i1 %1624 to i8
  store i8 %1625, i8* %38, align 1
  %1626 = sext i32 %1601 to i64
  store i64 %1626, i64* %RCX.i2082, align 8
  %1627 = shl nsw i64 %1626, 2
  %1628 = add i64 %1587, %1627
  %1629 = add i64 %1583, 26
  store i64 %1629, i64* %3, align 8
  %1630 = inttoptr i64 %1628 to i32*
  %1631 = load i32, i32* %1630, align 4
  store i32 %1631, i32* %629, align 1
  store float 0.000000e+00, float* %631, align 1
  store float 0.000000e+00, float* %111, align 1
  store float 0.000000e+00, float* %633, align 1
  %1632 = add i64 %1536, -32
  %1633 = add i64 %1583, 30
  store i64 %1633, i64* %3, align 8
  %1634 = inttoptr i64 %1632 to i64*
  %1635 = load i64, i64* %1634, align 8
  store i64 %1635, i64* %RAX.i250, align 8
  %1636 = add i64 %1536, -64
  %1637 = add i64 %1583, 33
  store i64 %1637, i64* %3, align 8
  %1638 = inttoptr i64 %1636 to i32*
  %1639 = load i32, i32* %1638, align 4
  %1640 = add i32 %1639, -2
  %1641 = zext i32 %1640 to i64
  store i64 %1641, i64* %RSI.i2072, align 8
  %1642 = sext i32 %1640 to i64
  %1643 = mul nsw i64 %1642, 40
  store i64 %1643, i64* %RCX.i2082, align 8
  %1644 = lshr i64 %1643, 63
  %1645 = add i64 %1643, %1635
  store i64 %1645, i64* %RAX.i250, align 8
  %1646 = icmp ult i64 %1645, %1635
  %1647 = icmp ult i64 %1645, %1643
  %1648 = or i1 %1646, %1647
  %1649 = zext i1 %1648 to i8
  store i8 %1649, i8* %14, align 1
  %1650 = trunc i64 %1645 to i32
  %1651 = and i32 %1650, 255
  %1652 = tail call i32 @llvm.ctpop.i32(i32 %1651)
  %1653 = trunc i32 %1652 to i8
  %1654 = and i8 %1653, 1
  %1655 = xor i8 %1654, 1
  store i8 %1655, i8* %21, align 1
  %1656 = xor i64 %1643, %1635
  %1657 = xor i64 %1656, %1645
  %1658 = lshr i64 %1657, 4
  %1659 = trunc i64 %1658 to i8
  %1660 = and i8 %1659, 1
  store i8 %1660, i8* %26, align 1
  %1661 = icmp eq i64 %1645, 0
  %1662 = zext i1 %1661 to i8
  store i8 %1662, i8* %29, align 1
  %1663 = lshr i64 %1645, 63
  %1664 = trunc i64 %1663 to i8
  store i8 %1664, i8* %32, align 1
  %1665 = lshr i64 %1635, 63
  %1666 = xor i64 %1663, %1665
  %1667 = xor i64 %1663, %1644
  %1668 = add nuw nsw i64 %1666, %1667
  %1669 = icmp eq i64 %1668, 2
  %1670 = zext i1 %1669 to i8
  store i8 %1670, i8* %38, align 1
  %1671 = add i64 %1645, 16
  %1672 = add i64 %1583, 51
  store i64 %1672, i64* %3, align 8
  %1673 = inttoptr i64 %1671 to i32*
  %1674 = load i32, i32* %1673, align 4
  store i32 %1674, i32* %637, align 1
  store float 0.000000e+00, float* %639, align 1
  store float 0.000000e+00, float* %641, align 1
  store float 0.000000e+00, float* %643, align 1
  %1675 = load <2 x float>, <2 x float>* %644, align 1
  %1676 = load <2 x i32>, <2 x i32>* %648, align 1
  %1677 = load <2 x float>, <2 x float>* %634, align 1
  %1678 = extractelement <2 x float> %1675, i32 0
  %1679 = extractelement <2 x float> %1677, i32 0
  %1680 = fsub float %1678, %1679
  store float %1680, float* %647, align 1
  %1681 = bitcast <2 x float> %1675 to <2 x i32>
  %1682 = extractelement <2 x i32> %1681, i32 1
  store i32 %1682, i32* %649, align 1
  %1683 = extractelement <2 x i32> %1676, i32 0
  store i32 %1683, i32* %650, align 1
  %1684 = extractelement <2 x i32> %1676, i32 1
  store i32 %1684, i32* %651, align 1
  %1685 = add i64 %1583, 60
  store i64 %1685, i64* %3, align 8
  %1686 = load <2 x float>, <2 x float>* %644, align 1
  %1687 = extractelement <2 x float> %1686, i32 0
  %1688 = inttoptr i64 %1671 to float*
  store float %1687, float* %1688, align 4
  %.pre78 = load i64, i64* %RBP.i, align 8
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_4060a2

block_.L_4060a2:                                  ; preds = %block_406066, %block_.L_405feb
  %1689 = phi i64 [ %.pre79, %block_406066 ], [ %1583, %block_.L_405feb ]
  %1690 = phi i64 [ %.pre78, %block_406066 ], [ %1536, %block_.L_405feb ]
  %1691 = add i64 %1690, -48
  %1692 = add i64 %1689, 4
  store i64 %1692, i64* %3, align 8
  %1693 = inttoptr i64 %1691 to i64*
  %1694 = load i64, i64* %1693, align 8
  store i64 %1694, i64* %RAX.i250, align 8
  %1695 = add i64 %1690, -56
  %1696 = add i64 %1689, 8
  store i64 %1696, i64* %3, align 8
  %1697 = inttoptr i64 %1695 to i32*
  %1698 = load i32, i32* %1697, align 4
  %1699 = sext i32 %1698 to i64
  store i64 %1699, i64* %RCX.i2082, align 8
  %1700 = shl nsw i64 %1699, 2
  %1701 = add i64 %1700, %1694
  %1702 = add i64 %1689, 11
  store i64 %1702, i64* %3, align 8
  %1703 = inttoptr i64 %1701 to i32*
  %1704 = load i32, i32* %1703, align 4
  %1705 = zext i32 %1704 to i64
  store i64 %1705, i64* %RDX.i2069, align 8
  %1706 = add i64 %1690, -12
  %1707 = add i64 %1689, 14
  store i64 %1707, i64* %3, align 8
  %1708 = inttoptr i64 %1706 to i32*
  %1709 = load i32, i32* %1708, align 4
  %1710 = sub i32 %1704, %1709
  %1711 = icmp ult i32 %1704, %1709
  %1712 = zext i1 %1711 to i8
  store i8 %1712, i8* %14, align 1
  %1713 = and i32 %1710, 255
  %1714 = tail call i32 @llvm.ctpop.i32(i32 %1713)
  %1715 = trunc i32 %1714 to i8
  %1716 = and i8 %1715, 1
  %1717 = xor i8 %1716, 1
  store i8 %1717, i8* %21, align 1
  %1718 = xor i32 %1709, %1704
  %1719 = xor i32 %1718, %1710
  %1720 = lshr i32 %1719, 4
  %1721 = trunc i32 %1720 to i8
  %1722 = and i8 %1721, 1
  store i8 %1722, i8* %26, align 1
  %1723 = icmp eq i32 %1710, 0
  %1724 = zext i1 %1723 to i8
  store i8 %1724, i8* %29, align 1
  %1725 = lshr i32 %1710, 31
  %1726 = trunc i32 %1725 to i8
  store i8 %1726, i8* %32, align 1
  %1727 = lshr i32 %1704, 31
  %1728 = lshr i32 %1709, 31
  %1729 = xor i32 %1728, %1727
  %1730 = xor i32 %1725, %1727
  %1731 = add nuw nsw i32 %1730, %1729
  %1732 = icmp eq i32 %1731, 2
  %1733 = zext i1 %1732 to i8
  store i8 %1733, i8* %38, align 1
  %1734 = icmp ne i8 %1726, 0
  %1735 = xor i1 %1734, %1732
  %.v126 = select i1 %1735, i64 80, i64 20
  %1736 = add i64 %1689, %.v126
  store i64 %1736, i64* %3, align 8
  br i1 %1735, label %block_.L_4060f2, label %block_4060b6

block_4060b6:                                     ; preds = %block_.L_4060a2
  %1737 = add i64 %1690, -104
  %1738 = add i64 %1736, 4
  store i64 %1738, i64* %3, align 8
  %1739 = inttoptr i64 %1737 to i64*
  %1740 = load i64, i64* %1739, align 8
  store i64 %1740, i64* %RAX.i250, align 8
  %1741 = add i64 %1736, 8
  store i64 %1741, i64* %3, align 8
  %1742 = load i64, i64* %1693, align 8
  store i64 %1742, i64* %RCX.i2082, align 8
  %1743 = add i64 %1736, 12
  store i64 %1743, i64* %3, align 8
  %1744 = load i32, i32* %1697, align 4
  %1745 = sext i32 %1744 to i64
  store i64 %1745, i64* %RDX.i2069, align 8
  %1746 = shl nsw i64 %1745, 2
  %1747 = add i64 %1746, %1742
  %1748 = add i64 %1736, 15
  store i64 %1748, i64* %3, align 8
  %1749 = inttoptr i64 %1747 to i32*
  %1750 = load i32, i32* %1749, align 4
  %1751 = zext i32 %1750 to i64
  store i64 %1751, i64* %RSI.i2072, align 8
  %1752 = add i64 %1736, 18
  store i64 %1752, i64* %3, align 8
  %1753 = load i32, i32* %1708, align 4
  %1754 = sub i32 %1750, %1753
  %1755 = zext i32 %1754 to i64
  store i64 %1755, i64* %RSI.i2072, align 8
  %1756 = icmp ult i32 %1750, %1753
  %1757 = zext i1 %1756 to i8
  store i8 %1757, i8* %14, align 1
  %1758 = and i32 %1754, 255
  %1759 = tail call i32 @llvm.ctpop.i32(i32 %1758)
  %1760 = trunc i32 %1759 to i8
  %1761 = and i8 %1760, 1
  %1762 = xor i8 %1761, 1
  store i8 %1762, i8* %21, align 1
  %1763 = xor i32 %1753, %1750
  %1764 = xor i32 %1763, %1754
  %1765 = lshr i32 %1764, 4
  %1766 = trunc i32 %1765 to i8
  %1767 = and i8 %1766, 1
  store i8 %1767, i8* %26, align 1
  %1768 = icmp eq i32 %1754, 0
  %1769 = zext i1 %1768 to i8
  store i8 %1769, i8* %29, align 1
  %1770 = lshr i32 %1754, 31
  %1771 = trunc i32 %1770 to i8
  store i8 %1771, i8* %32, align 1
  %1772 = lshr i32 %1750, 31
  %1773 = lshr i32 %1753, 31
  %1774 = xor i32 %1773, %1772
  %1775 = xor i32 %1770, %1772
  %1776 = add nuw nsw i32 %1775, %1774
  %1777 = icmp eq i32 %1776, 2
  %1778 = zext i1 %1777 to i8
  store i8 %1778, i8* %38, align 1
  %1779 = sext i32 %1754 to i64
  store i64 %1779, i64* %RCX.i2082, align 8
  %1780 = shl nsw i64 %1779, 2
  %1781 = add i64 %1740, %1780
  %1782 = add i64 %1736, 26
  store i64 %1782, i64* %3, align 8
  %1783 = inttoptr i64 %1781 to i32*
  %1784 = load i32, i32* %1783, align 4
  store i32 %1784, i32* %629, align 1
  store float 0.000000e+00, float* %631, align 1
  store float 0.000000e+00, float* %111, align 1
  store float 0.000000e+00, float* %633, align 1
  %1785 = add i64 %1690, -32
  %1786 = add i64 %1736, 30
  store i64 %1786, i64* %3, align 8
  %1787 = inttoptr i64 %1785 to i64*
  %1788 = load i64, i64* %1787, align 8
  store i64 %1788, i64* %RAX.i250, align 8
  %1789 = add i64 %1690, -64
  %1790 = add i64 %1736, 33
  store i64 %1790, i64* %3, align 8
  %1791 = inttoptr i64 %1789 to i32*
  %1792 = load i32, i32* %1791, align 4
  %1793 = add i32 %1792, -2
  %1794 = zext i32 %1793 to i64
  store i64 %1794, i64* %RSI.i2072, align 8
  %1795 = sext i32 %1793 to i64
  %1796 = mul nsw i64 %1795, 40
  store i64 %1796, i64* %RCX.i2082, align 8
  %1797 = lshr i64 %1796, 63
  %1798 = add i64 %1796, %1788
  store i64 %1798, i64* %RAX.i250, align 8
  %1799 = icmp ult i64 %1798, %1788
  %1800 = icmp ult i64 %1798, %1796
  %1801 = or i1 %1799, %1800
  %1802 = zext i1 %1801 to i8
  store i8 %1802, i8* %14, align 1
  %1803 = trunc i64 %1798 to i32
  %1804 = and i32 %1803, 255
  %1805 = tail call i32 @llvm.ctpop.i32(i32 %1804)
  %1806 = trunc i32 %1805 to i8
  %1807 = and i8 %1806, 1
  %1808 = xor i8 %1807, 1
  store i8 %1808, i8* %21, align 1
  %1809 = xor i64 %1796, %1788
  %1810 = xor i64 %1809, %1798
  %1811 = lshr i64 %1810, 4
  %1812 = trunc i64 %1811 to i8
  %1813 = and i8 %1812, 1
  store i8 %1813, i8* %26, align 1
  %1814 = icmp eq i64 %1798, 0
  %1815 = zext i1 %1814 to i8
  store i8 %1815, i8* %29, align 1
  %1816 = lshr i64 %1798, 63
  %1817 = trunc i64 %1816 to i8
  store i8 %1817, i8* %32, align 1
  %1818 = lshr i64 %1788, 63
  %1819 = xor i64 %1816, %1818
  %1820 = xor i64 %1816, %1797
  %1821 = add nuw nsw i64 %1819, %1820
  %1822 = icmp eq i64 %1821, 2
  %1823 = zext i1 %1822 to i8
  store i8 %1823, i8* %38, align 1
  %1824 = add i64 %1798, 20
  %1825 = add i64 %1736, 51
  store i64 %1825, i64* %3, align 8
  %1826 = inttoptr i64 %1824 to i32*
  %1827 = load i32, i32* %1826, align 4
  store i32 %1827, i32* %637, align 1
  store float 0.000000e+00, float* %639, align 1
  store float 0.000000e+00, float* %641, align 1
  store float 0.000000e+00, float* %643, align 1
  %1828 = load <2 x float>, <2 x float>* %644, align 1
  %1829 = load <2 x i32>, <2 x i32>* %648, align 1
  %1830 = load <2 x float>, <2 x float>* %634, align 1
  %1831 = extractelement <2 x float> %1828, i32 0
  %1832 = extractelement <2 x float> %1830, i32 0
  %1833 = fsub float %1831, %1832
  store float %1833, float* %647, align 1
  %1834 = bitcast <2 x float> %1828 to <2 x i32>
  %1835 = extractelement <2 x i32> %1834, i32 1
  store i32 %1835, i32* %649, align 1
  %1836 = extractelement <2 x i32> %1829, i32 0
  store i32 %1836, i32* %650, align 1
  %1837 = extractelement <2 x i32> %1829, i32 1
  store i32 %1837, i32* %651, align 1
  %1838 = add i64 %1736, 60
  store i64 %1838, i64* %3, align 8
  %1839 = load <2 x float>, <2 x float>* %644, align 1
  %1840 = extractelement <2 x float> %1839, i32 0
  %1841 = inttoptr i64 %1824 to float*
  store float %1840, float* %1841, align 4
  %.pre80 = load i64, i64* %RBP.i, align 8
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_4060f2

block_.L_4060f2:                                  ; preds = %block_4060b6, %block_.L_4060a2
  %1842 = phi i64 [ %.pre81, %block_4060b6 ], [ %1736, %block_.L_4060a2 ]
  %1843 = phi i64 [ %.pre80, %block_4060b6 ], [ %1690, %block_.L_4060a2 ]
  %1844 = add i64 %1843, -48
  %1845 = add i64 %1842, 4
  store i64 %1845, i64* %3, align 8
  %1846 = inttoptr i64 %1844 to i64*
  %1847 = load i64, i64* %1846, align 8
  store i64 %1847, i64* %RAX.i250, align 8
  %1848 = add i64 %1843, -52
  %1849 = add i64 %1842, 8
  store i64 %1849, i64* %3, align 8
  %1850 = inttoptr i64 %1848 to i32*
  %1851 = load i32, i32* %1850, align 4
  %1852 = sext i32 %1851 to i64
  store i64 %1852, i64* %RCX.i2082, align 8
  %1853 = shl nsw i64 %1852, 2
  %1854 = add i64 %1853, %1847
  %1855 = add i64 %1842, 11
  store i64 %1855, i64* %3, align 8
  %1856 = inttoptr i64 %1854 to i32*
  %1857 = load i32, i32* %1856, align 4
  %1858 = zext i32 %1857 to i64
  store i64 %1858, i64* %RDX.i2069, align 8
  %1859 = add i64 %1843, -12
  %1860 = add i64 %1842, 14
  store i64 %1860, i64* %3, align 8
  %1861 = inttoptr i64 %1859 to i32*
  %1862 = load i32, i32* %1861, align 4
  %1863 = sub i32 %1857, %1862
  %1864 = icmp ult i32 %1857, %1862
  %1865 = zext i1 %1864 to i8
  store i8 %1865, i8* %14, align 1
  %1866 = and i32 %1863, 255
  %1867 = tail call i32 @llvm.ctpop.i32(i32 %1866)
  %1868 = trunc i32 %1867 to i8
  %1869 = and i8 %1868, 1
  %1870 = xor i8 %1869, 1
  store i8 %1870, i8* %21, align 1
  %1871 = xor i32 %1862, %1857
  %1872 = xor i32 %1871, %1863
  %1873 = lshr i32 %1872, 4
  %1874 = trunc i32 %1873 to i8
  %1875 = and i8 %1874, 1
  store i8 %1875, i8* %26, align 1
  %1876 = icmp eq i32 %1863, 0
  %1877 = zext i1 %1876 to i8
  store i8 %1877, i8* %29, align 1
  %1878 = lshr i32 %1863, 31
  %1879 = trunc i32 %1878 to i8
  store i8 %1879, i8* %32, align 1
  %1880 = lshr i32 %1857, 31
  %1881 = lshr i32 %1862, 31
  %1882 = xor i32 %1881, %1880
  %1883 = xor i32 %1878, %1880
  %1884 = add nuw nsw i32 %1883, %1882
  %1885 = icmp eq i32 %1884, 2
  %1886 = zext i1 %1885 to i8
  store i8 %1886, i8* %38, align 1
  %1887 = icmp ne i8 %1879, 0
  %1888 = xor i1 %1887, %1885
  %.v = select i1 %1888, i64 20, i64 94
  %1889 = add i64 %1842, %.v
  %1890 = add i64 %1843, -32
  %1891 = add i64 %1889, 4
  store i64 %1891, i64* %3, align 8
  %1892 = inttoptr i64 %1890 to i64*
  %1893 = load i64, i64* %1892, align 8
  store i64 %1893, i64* %RAX.i250, align 8
  br i1 %1888, label %block_406106, label %block_.L_406150

block_406106:                                     ; preds = %block_.L_4060f2
  %1894 = add i64 %1843, -64
  %1895 = add i64 %1889, 7
  store i64 %1895, i64* %3, align 8
  %1896 = inttoptr i64 %1894 to i32*
  %1897 = load i32, i32* %1896, align 4
  %1898 = add i32 %1897, -2
  %1899 = zext i32 %1898 to i64
  store i64 %1899, i64* %RCX.i2082, align 8
  %1900 = sext i32 %1898 to i64
  %1901 = mul nsw i64 %1900, 40
  store i64 %1901, i64* %RDX.i2069, align 8
  %1902 = lshr i64 %1901, 63
  %1903 = add i64 %1901, %1893
  store i64 %1903, i64* %RAX.i250, align 8
  %1904 = icmp ult i64 %1903, %1893
  %1905 = icmp ult i64 %1903, %1901
  %1906 = or i1 %1904, %1905
  %1907 = zext i1 %1906 to i8
  store i8 %1907, i8* %14, align 1
  %1908 = trunc i64 %1903 to i32
  %1909 = and i32 %1908, 255
  %1910 = tail call i32 @llvm.ctpop.i32(i32 %1909)
  %1911 = trunc i32 %1910 to i8
  %1912 = and i8 %1911, 1
  %1913 = xor i8 %1912, 1
  store i8 %1913, i8* %21, align 1
  %1914 = xor i64 %1901, %1893
  %1915 = xor i64 %1914, %1903
  %1916 = lshr i64 %1915, 4
  %1917 = trunc i64 %1916 to i8
  %1918 = and i8 %1917, 1
  store i8 %1918, i8* %26, align 1
  %1919 = icmp eq i64 %1903, 0
  %1920 = zext i1 %1919 to i8
  store i8 %1920, i8* %29, align 1
  %1921 = lshr i64 %1903, 63
  %1922 = trunc i64 %1921 to i8
  store i8 %1922, i8* %32, align 1
  %1923 = lshr i64 %1893, 63
  %1924 = xor i64 %1921, %1923
  %1925 = xor i64 %1921, %1902
  %1926 = add nuw nsw i64 %1924, %1925
  %1927 = icmp eq i64 %1926, 2
  %1928 = zext i1 %1927 to i8
  store i8 %1928, i8* %38, align 1
  %1929 = add i64 %1903, 32
  %1930 = add i64 %1889, 23
  store i64 %1930, i64* %3, align 8
  %1931 = inttoptr i64 %1929 to i32*
  %1932 = load i32, i32* %1931, align 4
  %1933 = add i32 %1932, 1
  %1934 = zext i32 %1933 to i64
  store i64 %1934, i64* %RCX.i2082, align 8
  %1935 = icmp eq i32 %1932, -1
  %1936 = icmp eq i32 %1933, 0
  %1937 = or i1 %1935, %1936
  %1938 = zext i1 %1937 to i8
  store i8 %1938, i8* %14, align 1
  %1939 = and i32 %1933, 255
  %1940 = tail call i32 @llvm.ctpop.i32(i32 %1939)
  %1941 = trunc i32 %1940 to i8
  %1942 = and i8 %1941, 1
  %1943 = xor i8 %1942, 1
  store i8 %1943, i8* %21, align 1
  %1944 = xor i32 %1933, %1932
  %1945 = lshr i32 %1944, 4
  %1946 = trunc i32 %1945 to i8
  %1947 = and i8 %1946, 1
  store i8 %1947, i8* %26, align 1
  %1948 = zext i1 %1936 to i8
  store i8 %1948, i8* %29, align 1
  %1949 = lshr i32 %1933, 31
  %1950 = trunc i32 %1949 to i8
  store i8 %1950, i8* %32, align 1
  %1951 = lshr i32 %1932, 31
  %1952 = xor i32 %1949, %1951
  %1953 = add nuw nsw i32 %1952, %1949
  %1954 = icmp eq i32 %1953, 2
  %1955 = zext i1 %1954 to i8
  store i8 %1955, i8* %38, align 1
  %1956 = add i64 %1889, 29
  store i64 %1956, i64* %3, align 8
  store i32 %1933, i32* %1931, align 4
  %1957 = load i64, i64* %RBP.i, align 8
  %1958 = add i64 %1957, -32
  %1959 = load i64, i64* %3, align 8
  %1960 = add i64 %1959, 4
  store i64 %1960, i64* %3, align 8
  %1961 = inttoptr i64 %1958 to i64*
  %1962 = load i64, i64* %1961, align 8
  store i64 %1962, i64* %RAX.i250, align 8
  %1963 = add i64 %1957, -64
  %1964 = add i64 %1959, 7
  store i64 %1964, i64* %3, align 8
  %1965 = inttoptr i64 %1963 to i32*
  %1966 = load i32, i32* %1965, align 4
  %1967 = add i32 %1966, -2
  %1968 = zext i32 %1967 to i64
  store i64 %1968, i64* %RCX.i2082, align 8
  %1969 = sext i32 %1967 to i64
  %1970 = mul nsw i64 %1969, 40
  store i64 %1970, i64* %RDX.i2069, align 8
  %1971 = lshr i64 %1970, 63
  %1972 = add i64 %1970, %1962
  store i64 %1972, i64* %RAX.i250, align 8
  %1973 = icmp ult i64 %1972, %1962
  %1974 = icmp ult i64 %1972, %1970
  %1975 = or i1 %1973, %1974
  %1976 = zext i1 %1975 to i8
  store i8 %1976, i8* %14, align 1
  %1977 = trunc i64 %1972 to i32
  %1978 = and i32 %1977, 255
  %1979 = tail call i32 @llvm.ctpop.i32(i32 %1978)
  %1980 = trunc i32 %1979 to i8
  %1981 = and i8 %1980, 1
  %1982 = xor i8 %1981, 1
  store i8 %1982, i8* %21, align 1
  %1983 = xor i64 %1970, %1962
  %1984 = xor i64 %1983, %1972
  %1985 = lshr i64 %1984, 4
  %1986 = trunc i64 %1985 to i8
  %1987 = and i8 %1986, 1
  store i8 %1987, i8* %26, align 1
  %1988 = icmp eq i64 %1972, 0
  %1989 = zext i1 %1988 to i8
  store i8 %1989, i8* %29, align 1
  %1990 = lshr i64 %1972, 63
  %1991 = trunc i64 %1990 to i8
  store i8 %1991, i8* %32, align 1
  %1992 = lshr i64 %1962, 63
  %1993 = xor i64 %1990, %1992
  %1994 = xor i64 %1990, %1971
  %1995 = add nuw nsw i64 %1993, %1994
  %1996 = icmp eq i64 %1995, 2
  %1997 = zext i1 %1996 to i8
  store i8 %1997, i8* %38, align 1
  %1998 = add i64 %1972, 24
  %1999 = add i64 %1959, 24
  store i64 %1999, i64* %3, align 8
  %2000 = inttoptr i64 %1998 to i64*
  %2001 = load i64, i64* %2000, align 8
  store i64 %2001, i64* %RAX.i250, align 8
  %2002 = load i64, i64* %RBP.i, align 8
  %2003 = add i64 %2002, -48
  %2004 = add i64 %1959, 28
  store i64 %2004, i64* %3, align 8
  %2005 = inttoptr i64 %2003 to i64*
  %2006 = load i64, i64* %2005, align 8
  store i64 %2006, i64* %RDX.i2069, align 8
  %2007 = add i64 %2002, -52
  %2008 = add i64 %1959, 32
  store i64 %2008, i64* %3, align 8
  %2009 = inttoptr i64 %2007 to i32*
  %2010 = load i32, i32* %2009, align 4
  %2011 = sext i32 %2010 to i64
  store i64 %2011, i64* %RSI.i2072, align 8
  %2012 = shl nsw i64 %2011, 2
  %2013 = add i64 %2012, %2006
  %2014 = add i64 %1959, 36
  store i64 %2014, i64* %3, align 8
  %2015 = inttoptr i64 %2013 to i32*
  %2016 = load i32, i32* %2015, align 4
  %2017 = sext i32 %2016 to i64
  store i64 %2017, i64* %RDX.i2069, align 8
  %2018 = add i64 %2001, %2017
  %2019 = add i64 %1959, 40
  store i64 %2019, i64* %3, align 8
  %2020 = inttoptr i64 %2018 to i8*
  store i8 1, i8* %2020, align 1
  %2021 = load i64, i64* %3, align 8
  %2022 = add i64 %2021, 181
  %.pre83 = load i64, i64* %RBP.i, align 8
  br label %block_.L_406200

block_.L_406150:                                  ; preds = %block_.L_4060f2
  %2023 = add i64 %1889, 8
  store i64 %2023, i64* %3, align 8
  %2024 = load i64, i64* %1846, align 8
  store i64 %2024, i64* %RCX.i2082, align 8
  %2025 = add i64 %1889, 12
  store i64 %2025, i64* %3, align 8
  %2026 = load i32, i32* %1850, align 4
  %2027 = sext i32 %2026 to i64
  store i64 %2027, i64* %RDX.i2069, align 8
  %2028 = shl nsw i64 %2027, 2
  %2029 = add i64 %2028, %2024
  %2030 = add i64 %1889, 15
  store i64 %2030, i64* %3, align 8
  %2031 = inttoptr i64 %2029 to i32*
  %2032 = load i32, i32* %2031, align 4
  %2033 = zext i32 %2032 to i64
  store i64 %2033, i64* %RSI.i2072, align 8
  %2034 = add i64 %1889, 18
  store i64 %2034, i64* %3, align 8
  %2035 = load i32, i32* %1861, align 4
  %2036 = sub i32 %2032, %2035
  %2037 = zext i32 %2036 to i64
  store i64 %2037, i64* %RSI.i2072, align 8
  %2038 = sext i32 %2036 to i64
  %2039 = mul nsw i64 %2038, 40
  store i64 %2039, i64* %RCX.i2082, align 8
  %2040 = lshr i64 %2039, 63
  %2041 = add i64 %2039, %1893
  store i64 %2041, i64* %RAX.i250, align 8
  %2042 = icmp ult i64 %2041, %1893
  %2043 = icmp ult i64 %2041, %2039
  %2044 = or i1 %2042, %2043
  %2045 = zext i1 %2044 to i8
  store i8 %2045, i8* %14, align 1
  %2046 = trunc i64 %2041 to i32
  %2047 = and i32 %2046, 255
  %2048 = tail call i32 @llvm.ctpop.i32(i32 %2047)
  %2049 = trunc i32 %2048 to i8
  %2050 = and i8 %2049, 1
  %2051 = xor i8 %2050, 1
  store i8 %2051, i8* %21, align 1
  %2052 = xor i64 %2039, %1893
  %2053 = xor i64 %2052, %2041
  %2054 = lshr i64 %2053, 4
  %2055 = trunc i64 %2054 to i8
  %2056 = and i8 %2055, 1
  store i8 %2056, i8* %26, align 1
  %2057 = icmp eq i64 %2041, 0
  %2058 = zext i1 %2057 to i8
  store i8 %2058, i8* %29, align 1
  %2059 = lshr i64 %2041, 63
  %2060 = trunc i64 %2059 to i8
  store i8 %2060, i8* %32, align 1
  %2061 = lshr i64 %1893, 63
  %2062 = xor i64 %2059, %2061
  %2063 = xor i64 %2059, %2040
  %2064 = add nuw nsw i64 %2062, %2063
  %2065 = icmp eq i64 %2064, 2
  %2066 = zext i1 %2065 to i8
  store i8 %2066, i8* %38, align 1
  %2067 = add i64 %2041, 32
  %2068 = add i64 %1889, 31
  store i64 %2068, i64* %3, align 8
  %2069 = inttoptr i64 %2067 to i32*
  %2070 = load i32, i32* %2069, align 4
  %2071 = zext i32 %2070 to i64
  store i64 %2071, i64* %RSI.i2072, align 8
  %2072 = load i64, i64* %RBP.i, align 8
  %2073 = add i64 %2072, -32
  %2074 = add i64 %1889, 35
  store i64 %2074, i64* %3, align 8
  %2075 = inttoptr i64 %2073 to i64*
  %2076 = load i64, i64* %2075, align 8
  store i64 %2076, i64* %RAX.i250, align 8
  %2077 = add i64 %2072, -64
  %2078 = add i64 %1889, 38
  store i64 %2078, i64* %3, align 8
  %2079 = inttoptr i64 %2077 to i32*
  %2080 = load i32, i32* %2079, align 4
  %2081 = add i32 %2080, -2
  %2082 = zext i32 %2081 to i64
  store i64 %2082, i64* %RDI.i1792, align 8
  %2083 = sext i32 %2081 to i64
  %2084 = mul nsw i64 %2083, 40
  store i64 %2084, i64* %RCX.i2082, align 8
  %2085 = lshr i64 %2084, 63
  %2086 = add i64 %2084, %2076
  store i64 %2086, i64* %RAX.i250, align 8
  %2087 = icmp ult i64 %2086, %2076
  %2088 = icmp ult i64 %2086, %2084
  %2089 = or i1 %2087, %2088
  %2090 = zext i1 %2089 to i8
  store i8 %2090, i8* %14, align 1
  %2091 = trunc i64 %2086 to i32
  %2092 = and i32 %2091, 255
  %2093 = tail call i32 @llvm.ctpop.i32(i32 %2092)
  %2094 = trunc i32 %2093 to i8
  %2095 = and i8 %2094, 1
  %2096 = xor i8 %2095, 1
  store i8 %2096, i8* %21, align 1
  %2097 = xor i64 %2084, %2076
  %2098 = xor i64 %2097, %2086
  %2099 = lshr i64 %2098, 4
  %2100 = trunc i64 %2099 to i8
  %2101 = and i8 %2100, 1
  store i8 %2101, i8* %26, align 1
  %2102 = icmp eq i64 %2086, 0
  %2103 = zext i1 %2102 to i8
  store i8 %2103, i8* %29, align 1
  %2104 = lshr i64 %2086, 63
  %2105 = trunc i64 %2104 to i8
  store i8 %2105, i8* %32, align 1
  %2106 = lshr i64 %2076, 63
  %2107 = xor i64 %2104, %2106
  %2108 = xor i64 %2104, %2085
  %2109 = add nuw nsw i64 %2107, %2108
  %2110 = icmp eq i64 %2109, 2
  %2111 = zext i1 %2110 to i8
  store i8 %2111, i8* %38, align 1
  %2112 = load i64, i64* %RSI.i2072, align 8
  %2113 = add i64 %2086, 32
  %2114 = add i64 %1889, 54
  store i64 %2114, i64* %3, align 8
  %2115 = trunc i64 %2112 to i32
  %2116 = inttoptr i64 %2113 to i32*
  %2117 = load i32, i32* %2116, align 4
  %2118 = add i32 %2117, %2115
  %2119 = zext i32 %2118 to i64
  store i64 %2119, i64* %RSI.i2072, align 8
  %2120 = icmp ult i32 %2118, %2115
  %2121 = icmp ult i32 %2118, %2117
  %2122 = or i1 %2120, %2121
  %2123 = zext i1 %2122 to i8
  store i8 %2123, i8* %14, align 1
  %2124 = and i32 %2118, 255
  %2125 = tail call i32 @llvm.ctpop.i32(i32 %2124)
  %2126 = trunc i32 %2125 to i8
  %2127 = and i8 %2126, 1
  %2128 = xor i8 %2127, 1
  store i8 %2128, i8* %21, align 1
  %2129 = xor i32 %2117, %2115
  %2130 = xor i32 %2129, %2118
  %2131 = lshr i32 %2130, 4
  %2132 = trunc i32 %2131 to i8
  %2133 = and i8 %2132, 1
  store i8 %2133, i8* %26, align 1
  %2134 = icmp eq i32 %2118, 0
  %2135 = zext i1 %2134 to i8
  store i8 %2135, i8* %29, align 1
  %2136 = lshr i32 %2118, 31
  %2137 = trunc i32 %2136 to i8
  store i8 %2137, i8* %32, align 1
  %2138 = lshr i32 %2115, 31
  %2139 = lshr i32 %2117, 31
  %2140 = xor i32 %2136, %2138
  %2141 = xor i32 %2136, %2139
  %2142 = add nuw nsw i32 %2140, %2141
  %2143 = icmp eq i32 %2142, 2
  %2144 = zext i1 %2143 to i8
  store i8 %2144, i8* %38, align 1
  %2145 = add i64 %1889, 57
  store i64 %2145, i64* %3, align 8
  store i32 %2118, i32* %2116, align 4
  %2146 = load i64, i64* %RBP.i, align 8
  %2147 = add i64 %2146, -60
  %2148 = load i64, i64* %3, align 8
  %2149 = add i64 %2148, 7
  store i64 %2149, i64* %3, align 8
  %2150 = inttoptr i64 %2147 to i32*
  store i32 0, i32* %2150, align 4
  %.pre82 = load i64, i64* %3, align 8
  br label %block_.L_406190

block_.L_406190:                                  ; preds = %block_40619c, %block_.L_406150
  %2151 = phi i64 [ %2358, %block_40619c ], [ %.pre82, %block_.L_406150 ]
  %2152 = load i64, i64* %RBP.i, align 8
  %2153 = add i64 %2152, -60
  %2154 = add i64 %2151, 3
  store i64 %2154, i64* %3, align 8
  %2155 = inttoptr i64 %2153 to i32*
  %2156 = load i32, i32* %2155, align 4
  %2157 = zext i32 %2156 to i64
  store i64 %2157, i64* %RAX.i250, align 8
  %2158 = add i64 %2152, -12
  %2159 = add i64 %2151, 6
  store i64 %2159, i64* %3, align 8
  %2160 = inttoptr i64 %2158 to i32*
  %2161 = load i32, i32* %2160, align 4
  %2162 = sub i32 %2156, %2161
  %2163 = icmp ult i32 %2156, %2161
  %2164 = zext i1 %2163 to i8
  store i8 %2164, i8* %14, align 1
  %2165 = and i32 %2162, 255
  %2166 = tail call i32 @llvm.ctpop.i32(i32 %2165)
  %2167 = trunc i32 %2166 to i8
  %2168 = and i8 %2167, 1
  %2169 = xor i8 %2168, 1
  store i8 %2169, i8* %21, align 1
  %2170 = xor i32 %2161, %2156
  %2171 = xor i32 %2170, %2162
  %2172 = lshr i32 %2171, 4
  %2173 = trunc i32 %2172 to i8
  %2174 = and i8 %2173, 1
  store i8 %2174, i8* %26, align 1
  %2175 = icmp eq i32 %2162, 0
  %2176 = zext i1 %2175 to i8
  store i8 %2176, i8* %29, align 1
  %2177 = lshr i32 %2162, 31
  %2178 = trunc i32 %2177 to i8
  store i8 %2178, i8* %32, align 1
  %2179 = lshr i32 %2156, 31
  %2180 = lshr i32 %2161, 31
  %2181 = xor i32 %2180, %2179
  %2182 = xor i32 %2177, %2179
  %2183 = add nuw nsw i32 %2182, %2181
  %2184 = icmp eq i32 %2183, 2
  %2185 = zext i1 %2184 to i8
  store i8 %2185, i8* %38, align 1
  %2186 = icmp ne i8 %2178, 0
  %2187 = xor i1 %2186, %2184
  %.v127 = select i1 %2187, i64 12, i64 107
  %2188 = add i64 %2151, %.v127
  store i64 %2188, i64* %3, align 8
  br i1 %2187, label %block_40619c, label %block_.L_4061fb

block_40619c:                                     ; preds = %block_.L_406190
  %2189 = add i64 %2152, -32
  %2190 = add i64 %2188, 4
  store i64 %2190, i64* %3, align 8
  %2191 = inttoptr i64 %2189 to i64*
  %2192 = load i64, i64* %2191, align 8
  store i64 %2192, i64* %RAX.i250, align 8
  %2193 = add i64 %2152, -48
  %2194 = add i64 %2188, 8
  store i64 %2194, i64* %3, align 8
  %2195 = inttoptr i64 %2193 to i64*
  %2196 = load i64, i64* %2195, align 8
  store i64 %2196, i64* %RCX.i2082, align 8
  %2197 = add i64 %2152, -52
  %2198 = add i64 %2188, 12
  store i64 %2198, i64* %3, align 8
  %2199 = inttoptr i64 %2197 to i32*
  %2200 = load i32, i32* %2199, align 4
  %2201 = sext i32 %2200 to i64
  store i64 %2201, i64* %RDX.i2069, align 8
  %2202 = shl nsw i64 %2201, 2
  %2203 = add i64 %2202, %2196
  %2204 = add i64 %2188, 15
  store i64 %2204, i64* %3, align 8
  %2205 = inttoptr i64 %2203 to i32*
  %2206 = load i32, i32* %2205, align 4
  %2207 = zext i32 %2206 to i64
  store i64 %2207, i64* %RSI.i2072, align 8
  %2208 = add i64 %2188, 18
  store i64 %2208, i64* %3, align 8
  %2209 = load i32, i32* %2160, align 4
  %2210 = sub i32 %2206, %2209
  %2211 = zext i32 %2210 to i64
  store i64 %2211, i64* %RSI.i2072, align 8
  %2212 = sext i32 %2210 to i64
  %2213 = mul nsw i64 %2212, 40
  store i64 %2213, i64* %RCX.i2082, align 8
  %2214 = lshr i64 %2213, 63
  %2215 = add i64 %2213, %2192
  store i64 %2215, i64* %RAX.i250, align 8
  %2216 = icmp ult i64 %2215, %2192
  %2217 = icmp ult i64 %2215, %2213
  %2218 = or i1 %2216, %2217
  %2219 = zext i1 %2218 to i8
  store i8 %2219, i8* %14, align 1
  %2220 = trunc i64 %2215 to i32
  %2221 = and i32 %2220, 255
  %2222 = tail call i32 @llvm.ctpop.i32(i32 %2221)
  %2223 = trunc i32 %2222 to i8
  %2224 = and i8 %2223, 1
  %2225 = xor i8 %2224, 1
  store i8 %2225, i8* %21, align 1
  %2226 = xor i64 %2213, %2192
  %2227 = xor i64 %2226, %2215
  %2228 = lshr i64 %2227, 4
  %2229 = trunc i64 %2228 to i8
  %2230 = and i8 %2229, 1
  store i8 %2230, i8* %26, align 1
  %2231 = icmp eq i64 %2215, 0
  %2232 = zext i1 %2231 to i8
  store i8 %2232, i8* %29, align 1
  %2233 = lshr i64 %2215, 63
  %2234 = trunc i64 %2233 to i8
  store i8 %2234, i8* %32, align 1
  %2235 = lshr i64 %2192, 63
  %2236 = xor i64 %2233, %2235
  %2237 = xor i64 %2233, %2214
  %2238 = add nuw nsw i64 %2236, %2237
  %2239 = icmp eq i64 %2238, 2
  %2240 = zext i1 %2239 to i8
  store i8 %2240, i8* %38, align 1
  %2241 = add i64 %2215, 24
  %2242 = add i64 %2188, 32
  store i64 %2242, i64* %3, align 8
  %2243 = inttoptr i64 %2241 to i64*
  %2244 = load i64, i64* %2243, align 8
  store i64 %2244, i64* %RAX.i250, align 8
  %2245 = load i64, i64* %RBP.i, align 8
  %2246 = add i64 %2245, -60
  %2247 = add i64 %2188, 36
  store i64 %2247, i64* %3, align 8
  %2248 = inttoptr i64 %2246 to i32*
  %2249 = load i32, i32* %2248, align 4
  %2250 = sext i32 %2249 to i64
  store i64 %2250, i64* %RCX.i2082, align 8
  %2251 = add i64 %2244, %2250
  %2252 = add i64 %2188, 40
  store i64 %2252, i64* %3, align 8
  %2253 = inttoptr i64 %2251 to i8*
  %2254 = load i8, i8* %2253, align 1
  %2255 = sext i8 %2254 to i64
  %2256 = and i64 %2255, 4294967295
  store i64 %2256, i64* %RSI.i2072, align 8
  %2257 = add i64 %2245, -32
  %2258 = add i64 %2188, 44
  store i64 %2258, i64* %3, align 8
  %2259 = inttoptr i64 %2257 to i64*
  %2260 = load i64, i64* %2259, align 8
  store i64 %2260, i64* %RAX.i250, align 8
  %2261 = add i64 %2245, -64
  %2262 = add i64 %2188, 47
  store i64 %2262, i64* %3, align 8
  %2263 = inttoptr i64 %2261 to i32*
  %2264 = load i32, i32* %2263, align 4
  %2265 = add i32 %2264, -2
  %2266 = zext i32 %2265 to i64
  store i64 %2266, i64* %RDI.i1792, align 8
  %2267 = sext i32 %2265 to i64
  %2268 = mul nsw i64 %2267, 40
  store i64 %2268, i64* %RCX.i2082, align 8
  %2269 = lshr i64 %2268, 63
  %2270 = add i64 %2268, %2260
  store i64 %2270, i64* %RAX.i250, align 8
  %2271 = icmp ult i64 %2270, %2260
  %2272 = icmp ult i64 %2270, %2268
  %2273 = or i1 %2271, %2272
  %2274 = zext i1 %2273 to i8
  store i8 %2274, i8* %14, align 1
  %2275 = trunc i64 %2270 to i32
  %2276 = and i32 %2275, 255
  %2277 = tail call i32 @llvm.ctpop.i32(i32 %2276)
  %2278 = trunc i32 %2277 to i8
  %2279 = and i8 %2278, 1
  %2280 = xor i8 %2279, 1
  store i8 %2280, i8* %21, align 1
  %2281 = xor i64 %2268, %2260
  %2282 = xor i64 %2281, %2270
  %2283 = lshr i64 %2282, 4
  %2284 = trunc i64 %2283 to i8
  %2285 = and i8 %2284, 1
  store i8 %2285, i8* %26, align 1
  %2286 = icmp eq i64 %2270, 0
  %2287 = zext i1 %2286 to i8
  store i8 %2287, i8* %29, align 1
  %2288 = lshr i64 %2270, 63
  %2289 = trunc i64 %2288 to i8
  store i8 %2289, i8* %32, align 1
  %2290 = lshr i64 %2260, 63
  %2291 = xor i64 %2288, %2290
  %2292 = xor i64 %2288, %2269
  %2293 = add nuw nsw i64 %2291, %2292
  %2294 = icmp eq i64 %2293, 2
  %2295 = zext i1 %2294 to i8
  store i8 %2295, i8* %38, align 1
  %2296 = add i64 %2270, 24
  %2297 = add i64 %2188, 64
  store i64 %2297, i64* %3, align 8
  %2298 = inttoptr i64 %2296 to i64*
  %2299 = load i64, i64* %2298, align 8
  store i64 %2299, i64* %RAX.i250, align 8
  %2300 = load i64, i64* %RBP.i, align 8
  %2301 = add i64 %2300, -60
  %2302 = add i64 %2188, 68
  store i64 %2302, i64* %3, align 8
  %2303 = inttoptr i64 %2301 to i32*
  %2304 = load i32, i32* %2303, align 4
  %2305 = sext i32 %2304 to i64
  store i64 %2305, i64* %RCX.i2082, align 8
  %2306 = add i64 %2299, %2305
  %2307 = add i64 %2188, 72
  store i64 %2307, i64* %3, align 8
  %2308 = inttoptr i64 %2306 to i8*
  %2309 = load i8, i8* %2308, align 1
  %2310 = sext i8 %2309 to i64
  %2311 = and i64 %2310, 4294967295
  %2312 = load i32, i32* %ESI.i2088, align 4
  %2313 = zext i32 %2312 to i64
  %2314 = or i64 %2313, %2311
  %2315 = trunc i64 %2314 to i32
  store i64 %2314, i64* %RDI.i1792, align 8
  store i8 0, i8* %14, align 1
  %2316 = and i32 %2315, 255
  %2317 = tail call i32 @llvm.ctpop.i32(i32 %2316)
  %2318 = trunc i32 %2317 to i8
  %2319 = and i8 %2318, 1
  %2320 = xor i8 %2319, 1
  store i8 %2320, i8* %21, align 1
  %2321 = icmp eq i32 %2315, 0
  %2322 = zext i1 %2321 to i8
  store i8 %2322, i8* %29, align 1
  %2323 = lshr i32 %2315, 31
  %2324 = trunc i32 %2323 to i8
  store i8 %2324, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2325 = trunc i64 %2314 to i8
  store i8 %2325, i8* %R8B.i984, align 1
  %2326 = add i64 %2188, 81
  store i64 %2326, i64* %3, align 8
  store i8 %2325, i8* %2308, align 1
  %2327 = load i64, i64* %RBP.i, align 8
  %2328 = add i64 %2327, -60
  %2329 = load i64, i64* %3, align 8
  %2330 = add i64 %2329, 3
  store i64 %2330, i64* %3, align 8
  %2331 = inttoptr i64 %2328 to i32*
  %2332 = load i32, i32* %2331, align 4
  %2333 = add i32 %2332, 1
  %2334 = zext i32 %2333 to i64
  store i64 %2334, i64* %RAX.i250, align 8
  %2335 = icmp eq i32 %2332, -1
  %2336 = icmp eq i32 %2333, 0
  %2337 = or i1 %2335, %2336
  %2338 = zext i1 %2337 to i8
  store i8 %2338, i8* %14, align 1
  %2339 = and i32 %2333, 255
  %2340 = tail call i32 @llvm.ctpop.i32(i32 %2339)
  %2341 = trunc i32 %2340 to i8
  %2342 = and i8 %2341, 1
  %2343 = xor i8 %2342, 1
  store i8 %2343, i8* %21, align 1
  %2344 = xor i32 %2333, %2332
  %2345 = lshr i32 %2344, 4
  %2346 = trunc i32 %2345 to i8
  %2347 = and i8 %2346, 1
  store i8 %2347, i8* %26, align 1
  %2348 = zext i1 %2336 to i8
  store i8 %2348, i8* %29, align 1
  %2349 = lshr i32 %2333, 31
  %2350 = trunc i32 %2349 to i8
  store i8 %2350, i8* %32, align 1
  %2351 = lshr i32 %2332, 31
  %2352 = xor i32 %2349, %2351
  %2353 = add nuw nsw i32 %2352, %2349
  %2354 = icmp eq i32 %2353, 2
  %2355 = zext i1 %2354 to i8
  store i8 %2355, i8* %38, align 1
  %2356 = add i64 %2329, 9
  store i64 %2356, i64* %3, align 8
  store i32 %2333, i32* %2331, align 4
  %2357 = load i64, i64* %3, align 8
  %2358 = add i64 %2357, -102
  store i64 %2358, i64* %3, align 8
  br label %block_.L_406190

block_.L_4061fb:                                  ; preds = %block_.L_406190
  %2359 = add i64 %2188, 5
  store i64 %2359, i64* %3, align 8
  br label %block_.L_406200

block_.L_406200:                                  ; preds = %block_.L_4061fb, %block_406106
  %2360 = phi i64 [ %.pre83, %block_406106 ], [ %2152, %block_.L_4061fb ]
  %storemerge = phi i64 [ %2022, %block_406106 ], [ %2359, %block_.L_4061fb ]
  %2361 = add i64 %2360, -48
  %2362 = add i64 %storemerge, 4
  store i64 %2362, i64* %3, align 8
  %2363 = inttoptr i64 %2361 to i64*
  %2364 = load i64, i64* %2363, align 8
  store i64 %2364, i64* %RAX.i250, align 8
  %2365 = add i64 %2360, -56
  %2366 = add i64 %storemerge, 8
  store i64 %2366, i64* %3, align 8
  %2367 = inttoptr i64 %2365 to i32*
  %2368 = load i32, i32* %2367, align 4
  %2369 = sext i32 %2368 to i64
  store i64 %2369, i64* %RCX.i2082, align 8
  %2370 = shl nsw i64 %2369, 2
  %2371 = add i64 %2370, %2364
  %2372 = add i64 %storemerge, 11
  store i64 %2372, i64* %3, align 8
  %2373 = inttoptr i64 %2371 to i32*
  %2374 = load i32, i32* %2373, align 4
  %2375 = zext i32 %2374 to i64
  store i64 %2375, i64* %RDX.i2069, align 8
  %2376 = add i64 %2360, -12
  %2377 = add i64 %storemerge, 14
  store i64 %2377, i64* %3, align 8
  %2378 = inttoptr i64 %2376 to i32*
  %2379 = load i32, i32* %2378, align 4
  %2380 = sub i32 %2374, %2379
  %2381 = icmp ult i32 %2374, %2379
  %2382 = zext i1 %2381 to i8
  store i8 %2382, i8* %14, align 1
  %2383 = and i32 %2380, 255
  %2384 = tail call i32 @llvm.ctpop.i32(i32 %2383)
  %2385 = trunc i32 %2384 to i8
  %2386 = and i8 %2385, 1
  %2387 = xor i8 %2386, 1
  store i8 %2387, i8* %21, align 1
  %2388 = xor i32 %2379, %2374
  %2389 = xor i32 %2388, %2380
  %2390 = lshr i32 %2389, 4
  %2391 = trunc i32 %2390 to i8
  %2392 = and i8 %2391, 1
  store i8 %2392, i8* %26, align 1
  %2393 = icmp eq i32 %2380, 0
  %2394 = zext i1 %2393 to i8
  store i8 %2394, i8* %29, align 1
  %2395 = lshr i32 %2380, 31
  %2396 = trunc i32 %2395 to i8
  store i8 %2396, i8* %32, align 1
  %2397 = lshr i32 %2374, 31
  %2398 = lshr i32 %2379, 31
  %2399 = xor i32 %2398, %2397
  %2400 = xor i32 %2395, %2397
  %2401 = add nuw nsw i32 %2400, %2399
  %2402 = icmp eq i32 %2401, 2
  %2403 = zext i1 %2402 to i8
  store i8 %2403, i8* %38, align 1
  %2404 = icmp ne i8 %2396, 0
  %2405 = xor i1 %2404, %2402
  %.v114 = select i1 %2405, i64 20, i64 94
  %2406 = add i64 %storemerge, %.v114
  %2407 = add i64 %2360, -32
  %2408 = add i64 %2406, 4
  store i64 %2408, i64* %3, align 8
  %2409 = inttoptr i64 %2407 to i64*
  %2410 = load i64, i64* %2409, align 8
  store i64 %2410, i64* %RAX.i250, align 8
  br i1 %2405, label %block_406214, label %block_.L_40625e

block_406214:                                     ; preds = %block_.L_406200
  %2411 = add i64 %2360, -64
  %2412 = add i64 %2406, 7
  store i64 %2412, i64* %3, align 8
  %2413 = inttoptr i64 %2411 to i32*
  %2414 = load i32, i32* %2413, align 4
  %2415 = add i32 %2414, -2
  %2416 = zext i32 %2415 to i64
  store i64 %2416, i64* %RCX.i2082, align 8
  %2417 = sext i32 %2415 to i64
  %2418 = mul nsw i64 %2417, 40
  store i64 %2418, i64* %RDX.i2069, align 8
  %2419 = lshr i64 %2418, 63
  %2420 = add i64 %2418, %2410
  store i64 %2420, i64* %RAX.i250, align 8
  %2421 = icmp ult i64 %2420, %2410
  %2422 = icmp ult i64 %2420, %2418
  %2423 = or i1 %2421, %2422
  %2424 = zext i1 %2423 to i8
  store i8 %2424, i8* %14, align 1
  %2425 = trunc i64 %2420 to i32
  %2426 = and i32 %2425, 255
  %2427 = tail call i32 @llvm.ctpop.i32(i32 %2426)
  %2428 = trunc i32 %2427 to i8
  %2429 = and i8 %2428, 1
  %2430 = xor i8 %2429, 1
  store i8 %2430, i8* %21, align 1
  %2431 = xor i64 %2418, %2410
  %2432 = xor i64 %2431, %2420
  %2433 = lshr i64 %2432, 4
  %2434 = trunc i64 %2433 to i8
  %2435 = and i8 %2434, 1
  store i8 %2435, i8* %26, align 1
  %2436 = icmp eq i64 %2420, 0
  %2437 = zext i1 %2436 to i8
  store i8 %2437, i8* %29, align 1
  %2438 = lshr i64 %2420, 63
  %2439 = trunc i64 %2438 to i8
  store i8 %2439, i8* %32, align 1
  %2440 = lshr i64 %2410, 63
  %2441 = xor i64 %2438, %2440
  %2442 = xor i64 %2438, %2419
  %2443 = add nuw nsw i64 %2441, %2442
  %2444 = icmp eq i64 %2443, 2
  %2445 = zext i1 %2444 to i8
  store i8 %2445, i8* %38, align 1
  %2446 = add i64 %2420, 32
  %2447 = add i64 %2406, 23
  store i64 %2447, i64* %3, align 8
  %2448 = inttoptr i64 %2446 to i32*
  %2449 = load i32, i32* %2448, align 4
  %2450 = add i32 %2449, 1
  %2451 = zext i32 %2450 to i64
  store i64 %2451, i64* %RCX.i2082, align 8
  %2452 = icmp eq i32 %2449, -1
  %2453 = icmp eq i32 %2450, 0
  %2454 = or i1 %2452, %2453
  %2455 = zext i1 %2454 to i8
  store i8 %2455, i8* %14, align 1
  %2456 = and i32 %2450, 255
  %2457 = tail call i32 @llvm.ctpop.i32(i32 %2456)
  %2458 = trunc i32 %2457 to i8
  %2459 = and i8 %2458, 1
  %2460 = xor i8 %2459, 1
  store i8 %2460, i8* %21, align 1
  %2461 = xor i32 %2450, %2449
  %2462 = lshr i32 %2461, 4
  %2463 = trunc i32 %2462 to i8
  %2464 = and i8 %2463, 1
  store i8 %2464, i8* %26, align 1
  %2465 = zext i1 %2453 to i8
  store i8 %2465, i8* %29, align 1
  %2466 = lshr i32 %2450, 31
  %2467 = trunc i32 %2466 to i8
  store i8 %2467, i8* %32, align 1
  %2468 = lshr i32 %2449, 31
  %2469 = xor i32 %2466, %2468
  %2470 = add nuw nsw i32 %2469, %2466
  %2471 = icmp eq i32 %2470, 2
  %2472 = zext i1 %2471 to i8
  store i8 %2472, i8* %38, align 1
  %2473 = add i64 %2406, 29
  store i64 %2473, i64* %3, align 8
  store i32 %2450, i32* %2448, align 4
  %2474 = load i64, i64* %RBP.i, align 8
  %2475 = add i64 %2474, -32
  %2476 = load i64, i64* %3, align 8
  %2477 = add i64 %2476, 4
  store i64 %2477, i64* %3, align 8
  %2478 = inttoptr i64 %2475 to i64*
  %2479 = load i64, i64* %2478, align 8
  store i64 %2479, i64* %RAX.i250, align 8
  %2480 = add i64 %2474, -64
  %2481 = add i64 %2476, 7
  store i64 %2481, i64* %3, align 8
  %2482 = inttoptr i64 %2480 to i32*
  %2483 = load i32, i32* %2482, align 4
  %2484 = add i32 %2483, -2
  %2485 = zext i32 %2484 to i64
  store i64 %2485, i64* %RCX.i2082, align 8
  %2486 = sext i32 %2484 to i64
  %2487 = mul nsw i64 %2486, 40
  store i64 %2487, i64* %RDX.i2069, align 8
  %2488 = lshr i64 %2487, 63
  %2489 = add i64 %2487, %2479
  store i64 %2489, i64* %RAX.i250, align 8
  %2490 = icmp ult i64 %2489, %2479
  %2491 = icmp ult i64 %2489, %2487
  %2492 = or i1 %2490, %2491
  %2493 = zext i1 %2492 to i8
  store i8 %2493, i8* %14, align 1
  %2494 = trunc i64 %2489 to i32
  %2495 = and i32 %2494, 255
  %2496 = tail call i32 @llvm.ctpop.i32(i32 %2495)
  %2497 = trunc i32 %2496 to i8
  %2498 = and i8 %2497, 1
  %2499 = xor i8 %2498, 1
  store i8 %2499, i8* %21, align 1
  %2500 = xor i64 %2487, %2479
  %2501 = xor i64 %2500, %2489
  %2502 = lshr i64 %2501, 4
  %2503 = trunc i64 %2502 to i8
  %2504 = and i8 %2503, 1
  store i8 %2504, i8* %26, align 1
  %2505 = icmp eq i64 %2489, 0
  %2506 = zext i1 %2505 to i8
  store i8 %2506, i8* %29, align 1
  %2507 = lshr i64 %2489, 63
  %2508 = trunc i64 %2507 to i8
  store i8 %2508, i8* %32, align 1
  %2509 = lshr i64 %2479, 63
  %2510 = xor i64 %2507, %2509
  %2511 = xor i64 %2507, %2488
  %2512 = add nuw nsw i64 %2510, %2511
  %2513 = icmp eq i64 %2512, 2
  %2514 = zext i1 %2513 to i8
  store i8 %2514, i8* %38, align 1
  %2515 = add i64 %2489, 24
  %2516 = add i64 %2476, 24
  store i64 %2516, i64* %3, align 8
  %2517 = inttoptr i64 %2515 to i64*
  %2518 = load i64, i64* %2517, align 8
  store i64 %2518, i64* %RAX.i250, align 8
  %2519 = load i64, i64* %RBP.i, align 8
  %2520 = add i64 %2519, -48
  %2521 = add i64 %2476, 28
  store i64 %2521, i64* %3, align 8
  %2522 = inttoptr i64 %2520 to i64*
  %2523 = load i64, i64* %2522, align 8
  store i64 %2523, i64* %RDX.i2069, align 8
  %2524 = add i64 %2519, -56
  %2525 = add i64 %2476, 32
  store i64 %2525, i64* %3, align 8
  %2526 = inttoptr i64 %2524 to i32*
  %2527 = load i32, i32* %2526, align 4
  %2528 = sext i32 %2527 to i64
  store i64 %2528, i64* %RSI.i2072, align 8
  %2529 = shl nsw i64 %2528, 2
  %2530 = add i64 %2529, %2523
  %2531 = add i64 %2476, 36
  store i64 %2531, i64* %3, align 8
  %2532 = inttoptr i64 %2530 to i32*
  %2533 = load i32, i32* %2532, align 4
  %2534 = sext i32 %2533 to i64
  store i64 %2534, i64* %RDX.i2069, align 8
  %2535 = add i64 %2518, %2534
  %2536 = add i64 %2476, 40
  store i64 %2536, i64* %3, align 8
  %2537 = inttoptr i64 %2535 to i8*
  store i8 1, i8* %2537, align 1
  %2538 = load i64, i64* %3, align 8
  %2539 = add i64 %2538, 181
  %.pre85 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40630e

block_.L_40625e:                                  ; preds = %block_.L_406200
  %2540 = add i64 %2406, 8
  store i64 %2540, i64* %3, align 8
  %2541 = load i64, i64* %2363, align 8
  store i64 %2541, i64* %RCX.i2082, align 8
  %2542 = add i64 %2406, 12
  store i64 %2542, i64* %3, align 8
  %2543 = load i32, i32* %2367, align 4
  %2544 = sext i32 %2543 to i64
  store i64 %2544, i64* %RDX.i2069, align 8
  %2545 = shl nsw i64 %2544, 2
  %2546 = add i64 %2545, %2541
  %2547 = add i64 %2406, 15
  store i64 %2547, i64* %3, align 8
  %2548 = inttoptr i64 %2546 to i32*
  %2549 = load i32, i32* %2548, align 4
  %2550 = zext i32 %2549 to i64
  store i64 %2550, i64* %RSI.i2072, align 8
  %2551 = add i64 %2406, 18
  store i64 %2551, i64* %3, align 8
  %2552 = load i32, i32* %2378, align 4
  %2553 = sub i32 %2549, %2552
  %2554 = zext i32 %2553 to i64
  store i64 %2554, i64* %RSI.i2072, align 8
  %2555 = sext i32 %2553 to i64
  %2556 = mul nsw i64 %2555, 40
  store i64 %2556, i64* %RCX.i2082, align 8
  %2557 = lshr i64 %2556, 63
  %2558 = add i64 %2556, %2410
  store i64 %2558, i64* %RAX.i250, align 8
  %2559 = icmp ult i64 %2558, %2410
  %2560 = icmp ult i64 %2558, %2556
  %2561 = or i1 %2559, %2560
  %2562 = zext i1 %2561 to i8
  store i8 %2562, i8* %14, align 1
  %2563 = trunc i64 %2558 to i32
  %2564 = and i32 %2563, 255
  %2565 = tail call i32 @llvm.ctpop.i32(i32 %2564)
  %2566 = trunc i32 %2565 to i8
  %2567 = and i8 %2566, 1
  %2568 = xor i8 %2567, 1
  store i8 %2568, i8* %21, align 1
  %2569 = xor i64 %2556, %2410
  %2570 = xor i64 %2569, %2558
  %2571 = lshr i64 %2570, 4
  %2572 = trunc i64 %2571 to i8
  %2573 = and i8 %2572, 1
  store i8 %2573, i8* %26, align 1
  %2574 = icmp eq i64 %2558, 0
  %2575 = zext i1 %2574 to i8
  store i8 %2575, i8* %29, align 1
  %2576 = lshr i64 %2558, 63
  %2577 = trunc i64 %2576 to i8
  store i8 %2577, i8* %32, align 1
  %2578 = lshr i64 %2410, 63
  %2579 = xor i64 %2576, %2578
  %2580 = xor i64 %2576, %2557
  %2581 = add nuw nsw i64 %2579, %2580
  %2582 = icmp eq i64 %2581, 2
  %2583 = zext i1 %2582 to i8
  store i8 %2583, i8* %38, align 1
  %2584 = add i64 %2558, 32
  %2585 = add i64 %2406, 31
  store i64 %2585, i64* %3, align 8
  %2586 = inttoptr i64 %2584 to i32*
  %2587 = load i32, i32* %2586, align 4
  %2588 = zext i32 %2587 to i64
  store i64 %2588, i64* %RSI.i2072, align 8
  %2589 = load i64, i64* %RBP.i, align 8
  %2590 = add i64 %2589, -32
  %2591 = add i64 %2406, 35
  store i64 %2591, i64* %3, align 8
  %2592 = inttoptr i64 %2590 to i64*
  %2593 = load i64, i64* %2592, align 8
  store i64 %2593, i64* %RAX.i250, align 8
  %2594 = add i64 %2589, -64
  %2595 = add i64 %2406, 38
  store i64 %2595, i64* %3, align 8
  %2596 = inttoptr i64 %2594 to i32*
  %2597 = load i32, i32* %2596, align 4
  %2598 = add i32 %2597, -2
  %2599 = zext i32 %2598 to i64
  store i64 %2599, i64* %RDI.i1792, align 8
  %2600 = sext i32 %2598 to i64
  %2601 = mul nsw i64 %2600, 40
  store i64 %2601, i64* %RCX.i2082, align 8
  %2602 = lshr i64 %2601, 63
  %2603 = add i64 %2601, %2593
  store i64 %2603, i64* %RAX.i250, align 8
  %2604 = icmp ult i64 %2603, %2593
  %2605 = icmp ult i64 %2603, %2601
  %2606 = or i1 %2604, %2605
  %2607 = zext i1 %2606 to i8
  store i8 %2607, i8* %14, align 1
  %2608 = trunc i64 %2603 to i32
  %2609 = and i32 %2608, 255
  %2610 = tail call i32 @llvm.ctpop.i32(i32 %2609)
  %2611 = trunc i32 %2610 to i8
  %2612 = and i8 %2611, 1
  %2613 = xor i8 %2612, 1
  store i8 %2613, i8* %21, align 1
  %2614 = xor i64 %2601, %2593
  %2615 = xor i64 %2614, %2603
  %2616 = lshr i64 %2615, 4
  %2617 = trunc i64 %2616 to i8
  %2618 = and i8 %2617, 1
  store i8 %2618, i8* %26, align 1
  %2619 = icmp eq i64 %2603, 0
  %2620 = zext i1 %2619 to i8
  store i8 %2620, i8* %29, align 1
  %2621 = lshr i64 %2603, 63
  %2622 = trunc i64 %2621 to i8
  store i8 %2622, i8* %32, align 1
  %2623 = lshr i64 %2593, 63
  %2624 = xor i64 %2621, %2623
  %2625 = xor i64 %2621, %2602
  %2626 = add nuw nsw i64 %2624, %2625
  %2627 = icmp eq i64 %2626, 2
  %2628 = zext i1 %2627 to i8
  store i8 %2628, i8* %38, align 1
  %2629 = load i64, i64* %RSI.i2072, align 8
  %2630 = add i64 %2603, 32
  %2631 = add i64 %2406, 54
  store i64 %2631, i64* %3, align 8
  %2632 = trunc i64 %2629 to i32
  %2633 = inttoptr i64 %2630 to i32*
  %2634 = load i32, i32* %2633, align 4
  %2635 = add i32 %2634, %2632
  %2636 = zext i32 %2635 to i64
  store i64 %2636, i64* %RSI.i2072, align 8
  %2637 = icmp ult i32 %2635, %2632
  %2638 = icmp ult i32 %2635, %2634
  %2639 = or i1 %2637, %2638
  %2640 = zext i1 %2639 to i8
  store i8 %2640, i8* %14, align 1
  %2641 = and i32 %2635, 255
  %2642 = tail call i32 @llvm.ctpop.i32(i32 %2641)
  %2643 = trunc i32 %2642 to i8
  %2644 = and i8 %2643, 1
  %2645 = xor i8 %2644, 1
  store i8 %2645, i8* %21, align 1
  %2646 = xor i32 %2634, %2632
  %2647 = xor i32 %2646, %2635
  %2648 = lshr i32 %2647, 4
  %2649 = trunc i32 %2648 to i8
  %2650 = and i8 %2649, 1
  store i8 %2650, i8* %26, align 1
  %2651 = icmp eq i32 %2635, 0
  %2652 = zext i1 %2651 to i8
  store i8 %2652, i8* %29, align 1
  %2653 = lshr i32 %2635, 31
  %2654 = trunc i32 %2653 to i8
  store i8 %2654, i8* %32, align 1
  %2655 = lshr i32 %2632, 31
  %2656 = lshr i32 %2634, 31
  %2657 = xor i32 %2653, %2655
  %2658 = xor i32 %2653, %2656
  %2659 = add nuw nsw i32 %2657, %2658
  %2660 = icmp eq i32 %2659, 2
  %2661 = zext i1 %2660 to i8
  store i8 %2661, i8* %38, align 1
  %2662 = add i64 %2406, 57
  store i64 %2662, i64* %3, align 8
  store i32 %2635, i32* %2633, align 4
  %2663 = load i64, i64* %RBP.i, align 8
  %2664 = add i64 %2663, -60
  %2665 = load i64, i64* %3, align 8
  %2666 = add i64 %2665, 7
  store i64 %2666, i64* %3, align 8
  %2667 = inttoptr i64 %2664 to i32*
  store i32 0, i32* %2667, align 4
  %.pre84 = load i64, i64* %3, align 8
  br label %block_.L_40629e

block_.L_40629e:                                  ; preds = %block_4062aa, %block_.L_40625e
  %2668 = phi i64 [ %2875, %block_4062aa ], [ %.pre84, %block_.L_40625e ]
  %2669 = load i64, i64* %RBP.i, align 8
  %2670 = add i64 %2669, -60
  %2671 = add i64 %2668, 3
  store i64 %2671, i64* %3, align 8
  %2672 = inttoptr i64 %2670 to i32*
  %2673 = load i32, i32* %2672, align 4
  %2674 = zext i32 %2673 to i64
  store i64 %2674, i64* %RAX.i250, align 8
  %2675 = add i64 %2669, -12
  %2676 = add i64 %2668, 6
  store i64 %2676, i64* %3, align 8
  %2677 = inttoptr i64 %2675 to i32*
  %2678 = load i32, i32* %2677, align 4
  %2679 = sub i32 %2673, %2678
  %2680 = icmp ult i32 %2673, %2678
  %2681 = zext i1 %2680 to i8
  store i8 %2681, i8* %14, align 1
  %2682 = and i32 %2679, 255
  %2683 = tail call i32 @llvm.ctpop.i32(i32 %2682)
  %2684 = trunc i32 %2683 to i8
  %2685 = and i8 %2684, 1
  %2686 = xor i8 %2685, 1
  store i8 %2686, i8* %21, align 1
  %2687 = xor i32 %2678, %2673
  %2688 = xor i32 %2687, %2679
  %2689 = lshr i32 %2688, 4
  %2690 = trunc i32 %2689 to i8
  %2691 = and i8 %2690, 1
  store i8 %2691, i8* %26, align 1
  %2692 = icmp eq i32 %2679, 0
  %2693 = zext i1 %2692 to i8
  store i8 %2693, i8* %29, align 1
  %2694 = lshr i32 %2679, 31
  %2695 = trunc i32 %2694 to i8
  store i8 %2695, i8* %32, align 1
  %2696 = lshr i32 %2673, 31
  %2697 = lshr i32 %2678, 31
  %2698 = xor i32 %2697, %2696
  %2699 = xor i32 %2694, %2696
  %2700 = add nuw nsw i32 %2699, %2698
  %2701 = icmp eq i32 %2700, 2
  %2702 = zext i1 %2701 to i8
  store i8 %2702, i8* %38, align 1
  %2703 = icmp ne i8 %2695, 0
  %2704 = xor i1 %2703, %2701
  %.v128 = select i1 %2704, i64 12, i64 107
  %2705 = add i64 %2668, %.v128
  store i64 %2705, i64* %3, align 8
  br i1 %2704, label %block_4062aa, label %block_.L_406309

block_4062aa:                                     ; preds = %block_.L_40629e
  %2706 = add i64 %2669, -32
  %2707 = add i64 %2705, 4
  store i64 %2707, i64* %3, align 8
  %2708 = inttoptr i64 %2706 to i64*
  %2709 = load i64, i64* %2708, align 8
  store i64 %2709, i64* %RAX.i250, align 8
  %2710 = add i64 %2669, -48
  %2711 = add i64 %2705, 8
  store i64 %2711, i64* %3, align 8
  %2712 = inttoptr i64 %2710 to i64*
  %2713 = load i64, i64* %2712, align 8
  store i64 %2713, i64* %RCX.i2082, align 8
  %2714 = add i64 %2669, -56
  %2715 = add i64 %2705, 12
  store i64 %2715, i64* %3, align 8
  %2716 = inttoptr i64 %2714 to i32*
  %2717 = load i32, i32* %2716, align 4
  %2718 = sext i32 %2717 to i64
  store i64 %2718, i64* %RDX.i2069, align 8
  %2719 = shl nsw i64 %2718, 2
  %2720 = add i64 %2719, %2713
  %2721 = add i64 %2705, 15
  store i64 %2721, i64* %3, align 8
  %2722 = inttoptr i64 %2720 to i32*
  %2723 = load i32, i32* %2722, align 4
  %2724 = zext i32 %2723 to i64
  store i64 %2724, i64* %RSI.i2072, align 8
  %2725 = add i64 %2705, 18
  store i64 %2725, i64* %3, align 8
  %2726 = load i32, i32* %2677, align 4
  %2727 = sub i32 %2723, %2726
  %2728 = zext i32 %2727 to i64
  store i64 %2728, i64* %RSI.i2072, align 8
  %2729 = sext i32 %2727 to i64
  %2730 = mul nsw i64 %2729, 40
  store i64 %2730, i64* %RCX.i2082, align 8
  %2731 = lshr i64 %2730, 63
  %2732 = add i64 %2730, %2709
  store i64 %2732, i64* %RAX.i250, align 8
  %2733 = icmp ult i64 %2732, %2709
  %2734 = icmp ult i64 %2732, %2730
  %2735 = or i1 %2733, %2734
  %2736 = zext i1 %2735 to i8
  store i8 %2736, i8* %14, align 1
  %2737 = trunc i64 %2732 to i32
  %2738 = and i32 %2737, 255
  %2739 = tail call i32 @llvm.ctpop.i32(i32 %2738)
  %2740 = trunc i32 %2739 to i8
  %2741 = and i8 %2740, 1
  %2742 = xor i8 %2741, 1
  store i8 %2742, i8* %21, align 1
  %2743 = xor i64 %2730, %2709
  %2744 = xor i64 %2743, %2732
  %2745 = lshr i64 %2744, 4
  %2746 = trunc i64 %2745 to i8
  %2747 = and i8 %2746, 1
  store i8 %2747, i8* %26, align 1
  %2748 = icmp eq i64 %2732, 0
  %2749 = zext i1 %2748 to i8
  store i8 %2749, i8* %29, align 1
  %2750 = lshr i64 %2732, 63
  %2751 = trunc i64 %2750 to i8
  store i8 %2751, i8* %32, align 1
  %2752 = lshr i64 %2709, 63
  %2753 = xor i64 %2750, %2752
  %2754 = xor i64 %2750, %2731
  %2755 = add nuw nsw i64 %2753, %2754
  %2756 = icmp eq i64 %2755, 2
  %2757 = zext i1 %2756 to i8
  store i8 %2757, i8* %38, align 1
  %2758 = add i64 %2732, 24
  %2759 = add i64 %2705, 32
  store i64 %2759, i64* %3, align 8
  %2760 = inttoptr i64 %2758 to i64*
  %2761 = load i64, i64* %2760, align 8
  store i64 %2761, i64* %RAX.i250, align 8
  %2762 = load i64, i64* %RBP.i, align 8
  %2763 = add i64 %2762, -60
  %2764 = add i64 %2705, 36
  store i64 %2764, i64* %3, align 8
  %2765 = inttoptr i64 %2763 to i32*
  %2766 = load i32, i32* %2765, align 4
  %2767 = sext i32 %2766 to i64
  store i64 %2767, i64* %RCX.i2082, align 8
  %2768 = add i64 %2761, %2767
  %2769 = add i64 %2705, 40
  store i64 %2769, i64* %3, align 8
  %2770 = inttoptr i64 %2768 to i8*
  %2771 = load i8, i8* %2770, align 1
  %2772 = sext i8 %2771 to i64
  %2773 = and i64 %2772, 4294967295
  store i64 %2773, i64* %RSI.i2072, align 8
  %2774 = add i64 %2762, -32
  %2775 = add i64 %2705, 44
  store i64 %2775, i64* %3, align 8
  %2776 = inttoptr i64 %2774 to i64*
  %2777 = load i64, i64* %2776, align 8
  store i64 %2777, i64* %RAX.i250, align 8
  %2778 = add i64 %2762, -64
  %2779 = add i64 %2705, 47
  store i64 %2779, i64* %3, align 8
  %2780 = inttoptr i64 %2778 to i32*
  %2781 = load i32, i32* %2780, align 4
  %2782 = add i32 %2781, -2
  %2783 = zext i32 %2782 to i64
  store i64 %2783, i64* %RDI.i1792, align 8
  %2784 = sext i32 %2782 to i64
  %2785 = mul nsw i64 %2784, 40
  store i64 %2785, i64* %RCX.i2082, align 8
  %2786 = lshr i64 %2785, 63
  %2787 = add i64 %2785, %2777
  store i64 %2787, i64* %RAX.i250, align 8
  %2788 = icmp ult i64 %2787, %2777
  %2789 = icmp ult i64 %2787, %2785
  %2790 = or i1 %2788, %2789
  %2791 = zext i1 %2790 to i8
  store i8 %2791, i8* %14, align 1
  %2792 = trunc i64 %2787 to i32
  %2793 = and i32 %2792, 255
  %2794 = tail call i32 @llvm.ctpop.i32(i32 %2793)
  %2795 = trunc i32 %2794 to i8
  %2796 = and i8 %2795, 1
  %2797 = xor i8 %2796, 1
  store i8 %2797, i8* %21, align 1
  %2798 = xor i64 %2785, %2777
  %2799 = xor i64 %2798, %2787
  %2800 = lshr i64 %2799, 4
  %2801 = trunc i64 %2800 to i8
  %2802 = and i8 %2801, 1
  store i8 %2802, i8* %26, align 1
  %2803 = icmp eq i64 %2787, 0
  %2804 = zext i1 %2803 to i8
  store i8 %2804, i8* %29, align 1
  %2805 = lshr i64 %2787, 63
  %2806 = trunc i64 %2805 to i8
  store i8 %2806, i8* %32, align 1
  %2807 = lshr i64 %2777, 63
  %2808 = xor i64 %2805, %2807
  %2809 = xor i64 %2805, %2786
  %2810 = add nuw nsw i64 %2808, %2809
  %2811 = icmp eq i64 %2810, 2
  %2812 = zext i1 %2811 to i8
  store i8 %2812, i8* %38, align 1
  %2813 = add i64 %2787, 24
  %2814 = add i64 %2705, 64
  store i64 %2814, i64* %3, align 8
  %2815 = inttoptr i64 %2813 to i64*
  %2816 = load i64, i64* %2815, align 8
  store i64 %2816, i64* %RAX.i250, align 8
  %2817 = load i64, i64* %RBP.i, align 8
  %2818 = add i64 %2817, -60
  %2819 = add i64 %2705, 68
  store i64 %2819, i64* %3, align 8
  %2820 = inttoptr i64 %2818 to i32*
  %2821 = load i32, i32* %2820, align 4
  %2822 = sext i32 %2821 to i64
  store i64 %2822, i64* %RCX.i2082, align 8
  %2823 = add i64 %2816, %2822
  %2824 = add i64 %2705, 72
  store i64 %2824, i64* %3, align 8
  %2825 = inttoptr i64 %2823 to i8*
  %2826 = load i8, i8* %2825, align 1
  %2827 = sext i8 %2826 to i64
  %2828 = and i64 %2827, 4294967295
  %2829 = load i32, i32* %ESI.i2088, align 4
  %2830 = zext i32 %2829 to i64
  %2831 = or i64 %2830, %2828
  %2832 = trunc i64 %2831 to i32
  store i64 %2831, i64* %RDI.i1792, align 8
  store i8 0, i8* %14, align 1
  %2833 = and i32 %2832, 255
  %2834 = tail call i32 @llvm.ctpop.i32(i32 %2833)
  %2835 = trunc i32 %2834 to i8
  %2836 = and i8 %2835, 1
  %2837 = xor i8 %2836, 1
  store i8 %2837, i8* %21, align 1
  %2838 = icmp eq i32 %2832, 0
  %2839 = zext i1 %2838 to i8
  store i8 %2839, i8* %29, align 1
  %2840 = lshr i32 %2832, 31
  %2841 = trunc i32 %2840 to i8
  store i8 %2841, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2842 = trunc i64 %2831 to i8
  store i8 %2842, i8* %R8B.i984, align 1
  %2843 = add i64 %2705, 81
  store i64 %2843, i64* %3, align 8
  store i8 %2842, i8* %2825, align 1
  %2844 = load i64, i64* %RBP.i, align 8
  %2845 = add i64 %2844, -60
  %2846 = load i64, i64* %3, align 8
  %2847 = add i64 %2846, 3
  store i64 %2847, i64* %3, align 8
  %2848 = inttoptr i64 %2845 to i32*
  %2849 = load i32, i32* %2848, align 4
  %2850 = add i32 %2849, 1
  %2851 = zext i32 %2850 to i64
  store i64 %2851, i64* %RAX.i250, align 8
  %2852 = icmp eq i32 %2849, -1
  %2853 = icmp eq i32 %2850, 0
  %2854 = or i1 %2852, %2853
  %2855 = zext i1 %2854 to i8
  store i8 %2855, i8* %14, align 1
  %2856 = and i32 %2850, 255
  %2857 = tail call i32 @llvm.ctpop.i32(i32 %2856)
  %2858 = trunc i32 %2857 to i8
  %2859 = and i8 %2858, 1
  %2860 = xor i8 %2859, 1
  store i8 %2860, i8* %21, align 1
  %2861 = xor i32 %2850, %2849
  %2862 = lshr i32 %2861, 4
  %2863 = trunc i32 %2862 to i8
  %2864 = and i8 %2863, 1
  store i8 %2864, i8* %26, align 1
  %2865 = zext i1 %2853 to i8
  store i8 %2865, i8* %29, align 1
  %2866 = lshr i32 %2850, 31
  %2867 = trunc i32 %2866 to i8
  store i8 %2867, i8* %32, align 1
  %2868 = lshr i32 %2849, 31
  %2869 = xor i32 %2866, %2868
  %2870 = add nuw nsw i32 %2869, %2866
  %2871 = icmp eq i32 %2870, 2
  %2872 = zext i1 %2871 to i8
  store i8 %2872, i8* %38, align 1
  %2873 = add i64 %2846, 9
  store i64 %2873, i64* %3, align 8
  store i32 %2850, i32* %2848, align 4
  %2874 = load i64, i64* %3, align 8
  %2875 = add i64 %2874, -102
  store i64 %2875, i64* %3, align 8
  br label %block_.L_40629e

block_.L_406309:                                  ; preds = %block_.L_40629e
  %2876 = add i64 %2705, 5
  store i64 %2876, i64* %3, align 8
  br label %block_.L_40630e

block_.L_40630e:                                  ; preds = %block_.L_406309, %block_406214
  %2877 = phi i64 [ %.pre85, %block_406214 ], [ %2669, %block_.L_406309 ]
  %storemerge33 = phi i64 [ %2539, %block_406214 ], [ %2876, %block_.L_406309 ]
  %2878 = add i64 %2877, -52
  %2879 = add i64 %storemerge33, 3
  store i64 %2879, i64* %3, align 8
  %2880 = inttoptr i64 %2878 to i32*
  %2881 = load i32, i32* %2880, align 4
  %2882 = zext i32 %2881 to i64
  store i64 %2882, i64* %RAX.i250, align 8
  %2883 = add i64 %2877, -64
  %2884 = add i64 %storemerge33, 6
  store i64 %2884, i64* %3, align 8
  %2885 = inttoptr i64 %2883 to i32*
  %2886 = load i32, i32* %2885, align 4
  %2887 = add i32 %2886, -1
  %2888 = zext i32 %2887 to i64
  store i64 %2888, i64* %RCX.i2082, align 8
  %2889 = lshr i32 %2887, 31
  %2890 = sub i32 %2881, %2887
  %2891 = icmp ult i32 %2881, %2887
  %2892 = zext i1 %2891 to i8
  store i8 %2892, i8* %14, align 1
  %2893 = and i32 %2890, 255
  %2894 = tail call i32 @llvm.ctpop.i32(i32 %2893)
  %2895 = trunc i32 %2894 to i8
  %2896 = and i8 %2895, 1
  %2897 = xor i8 %2896, 1
  store i8 %2897, i8* %21, align 1
  %2898 = xor i32 %2887, %2881
  %2899 = xor i32 %2898, %2890
  %2900 = lshr i32 %2899, 4
  %2901 = trunc i32 %2900 to i8
  %2902 = and i8 %2901, 1
  store i8 %2902, i8* %26, align 1
  %2903 = icmp eq i32 %2890, 0
  %2904 = zext i1 %2903 to i8
  store i8 %2904, i8* %29, align 1
  %2905 = lshr i32 %2890, 31
  %2906 = trunc i32 %2905 to i8
  store i8 %2906, i8* %32, align 1
  %2907 = lshr i32 %2881, 31
  %2908 = xor i32 %2889, %2907
  %2909 = xor i32 %2905, %2907
  %2910 = add nuw nsw i32 %2909, %2908
  %2911 = icmp eq i32 %2910, 2
  %2912 = zext i1 %2911 to i8
  store i8 %2912, i8* %38, align 1
  %.v129 = select i1 %2903, i64 34, i64 17
  %2913 = add i64 %storemerge33, %.v129
  store i64 %2913, i64* %3, align 8
  %.pre111 = add i64 %2877, -56
  br i1 %2903, label %block_.L_40630e.block_.L_406330_crit_edge, label %block_40631f

block_.L_40630e.block_.L_406330_crit_edge:        ; preds = %block_.L_40630e
  %.pre112 = inttoptr i64 %.pre111 to i32*
  br label %block_.L_406330

block_40631f:                                     ; preds = %block_.L_40630e
  %2914 = add i64 %2913, 3
  store i64 %2914, i64* %3, align 8
  %2915 = inttoptr i64 %.pre111 to i32*
  %2916 = load i32, i32* %2915, align 4
  %2917 = zext i32 %2916 to i64
  store i64 %2917, i64* %RAX.i250, align 8
  %2918 = add i64 %2913, 6
  store i64 %2918, i64* %3, align 8
  %2919 = load i32, i32* %2885, align 4
  %2920 = add i32 %2919, -2
  %2921 = zext i32 %2920 to i64
  store i64 %2921, i64* %RCX.i2082, align 8
  %2922 = lshr i32 %2920, 31
  %2923 = sub i32 %2916, %2920
  %2924 = icmp ult i32 %2916, %2920
  %2925 = zext i1 %2924 to i8
  store i8 %2925, i8* %14, align 1
  %2926 = and i32 %2923, 255
  %2927 = tail call i32 @llvm.ctpop.i32(i32 %2926)
  %2928 = trunc i32 %2927 to i8
  %2929 = and i8 %2928, 1
  %2930 = xor i8 %2929, 1
  store i8 %2930, i8* %21, align 1
  %2931 = xor i32 %2920, %2916
  %2932 = xor i32 %2931, %2923
  %2933 = lshr i32 %2932, 4
  %2934 = trunc i32 %2933 to i8
  %2935 = and i8 %2934, 1
  store i8 %2935, i8* %26, align 1
  %2936 = icmp eq i32 %2923, 0
  %2937 = zext i1 %2936 to i8
  store i8 %2937, i8* %29, align 1
  %2938 = lshr i32 %2923, 31
  %2939 = trunc i32 %2938 to i8
  store i8 %2939, i8* %32, align 1
  %2940 = lshr i32 %2916, 31
  %2941 = xor i32 %2922, %2940
  %2942 = xor i32 %2938, %2940
  %2943 = add nuw nsw i32 %2942, %2941
  %2944 = icmp eq i32 %2943, 2
  %2945 = zext i1 %2944 to i8
  store i8 %2945, i8* %38, align 1
  %.v130 = select i1 %2936, i64 17, i64 35
  %2946 = add i64 %2913, %.v130
  store i64 %2946, i64* %3, align 8
  br i1 %2936, label %block_.L_406330, label %block_.L_406342

block_.L_406330:                                  ; preds = %block_40631f, %block_.L_40630e.block_.L_406330_crit_edge
  %.pre-phi113 = phi i32* [ %.pre112, %block_.L_40630e.block_.L_406330_crit_edge ], [ %2915, %block_40631f ]
  %2947 = phi i64 [ %2913, %block_.L_40630e.block_.L_406330_crit_edge ], [ %2946, %block_40631f ]
  %2948 = add i64 %2947, 3
  store i64 %2948, i64* %3, align 8
  %2949 = load i32, i32* %.pre-phi113, align 4
  %2950 = zext i32 %2949 to i64
  store i64 %2950, i64* %RAX.i250, align 8
  %2951 = add i64 %2877, -108
  %2952 = add i64 %2947, 6
  store i64 %2952, i64* %3, align 8
  %2953 = inttoptr i64 %2951 to i32*
  store i32 %2949, i32* %2953, align 4
  %2954 = load i64, i64* %RBP.i, align 8
  %2955 = add i64 %2954, -52
  %2956 = load i64, i64* %3, align 8
  %2957 = add i64 %2956, 3
  store i64 %2957, i64* %3, align 8
  %2958 = inttoptr i64 %2955 to i32*
  %2959 = load i32, i32* %2958, align 4
  %2960 = zext i32 %2959 to i64
  store i64 %2960, i64* %RAX.i250, align 8
  %2961 = add i64 %2954, -56
  %2962 = add i64 %2956, 6
  store i64 %2962, i64* %3, align 8
  %2963 = inttoptr i64 %2961 to i32*
  store i32 %2959, i32* %2963, align 4
  %2964 = load i64, i64* %RBP.i, align 8
  %2965 = add i64 %2964, -108
  %2966 = load i64, i64* %3, align 8
  %2967 = add i64 %2966, 3
  store i64 %2967, i64* %3, align 8
  %2968 = inttoptr i64 %2965 to i32*
  %2969 = load i32, i32* %2968, align 4
  %2970 = zext i32 %2969 to i64
  store i64 %2970, i64* %RAX.i250, align 8
  %2971 = add i64 %2964, -52
  %2972 = add i64 %2966, 6
  store i64 %2972, i64* %3, align 8
  %2973 = inttoptr i64 %2971 to i32*
  store i32 %2969, i32* %2973, align 4
  %.pre86 = load i64, i64* %RBP.i, align 8
  %.pre87 = load i64, i64* %3, align 8
  br label %block_.L_406342

block_.L_406342:                                  ; preds = %block_40631f, %block_.L_406330
  %2974 = phi i64 [ %.pre87, %block_.L_406330 ], [ %2946, %block_40631f ]
  %2975 = phi i64 [ %.pre86, %block_.L_406330 ], [ %2877, %block_40631f ]
  %2976 = add i64 %2975, -52
  %2977 = add i64 %2974, 3
  store i64 %2977, i64* %3, align 8
  %2978 = inttoptr i64 %2976 to i32*
  %2979 = load i32, i32* %2978, align 4
  %2980 = zext i32 %2979 to i64
  store i64 %2980, i64* %RAX.i250, align 8
  %2981 = add i64 %2975, -64
  %2982 = add i64 %2974, 6
  store i64 %2982, i64* %3, align 8
  %2983 = inttoptr i64 %2981 to i32*
  %2984 = load i32, i32* %2983, align 4
  %2985 = add i32 %2984, -2
  %2986 = zext i32 %2985 to i64
  store i64 %2986, i64* %RCX.i2082, align 8
  %2987 = lshr i32 %2985, 31
  %2988 = sub i32 %2979, %2985
  %2989 = icmp ult i32 %2979, %2985
  %2990 = zext i1 %2989 to i8
  store i8 %2990, i8* %14, align 1
  %2991 = and i32 %2988, 255
  %2992 = tail call i32 @llvm.ctpop.i32(i32 %2991)
  %2993 = trunc i32 %2992 to i8
  %2994 = and i8 %2993, 1
  %2995 = xor i8 %2994, 1
  store i8 %2995, i8* %21, align 1
  %2996 = xor i32 %2985, %2979
  %2997 = xor i32 %2996, %2988
  %2998 = lshr i32 %2997, 4
  %2999 = trunc i32 %2998 to i8
  %3000 = and i8 %2999, 1
  store i8 %3000, i8* %26, align 1
  %3001 = icmp eq i32 %2988, 0
  %3002 = zext i1 %3001 to i8
  store i8 %3002, i8* %29, align 1
  %3003 = lshr i32 %2988, 31
  %3004 = trunc i32 %3003 to i8
  store i8 %3004, i8* %32, align 1
  %3005 = lshr i32 %2979, 31
  %3006 = xor i32 %2987, %3005
  %3007 = xor i32 %3003, %3005
  %3008 = add nuw nsw i32 %3007, %3006
  %3009 = icmp eq i32 %3008, 2
  %3010 = zext i1 %3009 to i8
  store i8 %3010, i8* %38, align 1
  %.v131 = select i1 %3001, i64 280, i64 17
  %3011 = add i64 %2974, %.v131
  store i64 %3011, i64* %3, align 8
  br i1 %3001, label %block_.L_40645a, label %block_406353

block_406353:                                     ; preds = %block_.L_406342
  %3012 = add i64 %2975, -40
  %3013 = add i64 %3011, 4
  store i64 %3013, i64* %3, align 8
  %3014 = inttoptr i64 %3012 to i64*
  %3015 = load i64, i64* %3014, align 8
  store i64 %3015, i64* %RAX.i250, align 8
  %3016 = add i64 %3011, 7
  store i64 %3016, i64* %3, align 8
  %3017 = load i32, i32* %2983, align 4
  %3018 = add i32 %3017, -2
  %3019 = zext i32 %3018 to i64
  store i64 %3019, i64* %RCX.i2082, align 8
  %3020 = icmp ult i32 %3017, 2
  %3021 = zext i1 %3020 to i8
  store i8 %3021, i8* %14, align 1
  %3022 = and i32 %3018, 255
  %3023 = tail call i32 @llvm.ctpop.i32(i32 %3022)
  %3024 = trunc i32 %3023 to i8
  %3025 = and i8 %3024, 1
  %3026 = xor i8 %3025, 1
  store i8 %3026, i8* %21, align 1
  %3027 = xor i32 %3018, %3017
  %3028 = lshr i32 %3027, 4
  %3029 = trunc i32 %3028 to i8
  %3030 = and i8 %3029, 1
  store i8 %3030, i8* %26, align 1
  %3031 = icmp eq i32 %3018, 0
  %3032 = zext i1 %3031 to i8
  store i8 %3032, i8* %29, align 1
  %3033 = lshr i32 %3018, 31
  %3034 = trunc i32 %3033 to i8
  store i8 %3034, i8* %32, align 1
  %3035 = lshr i32 %3017, 31
  %3036 = xor i32 %3033, %3035
  %3037 = add nuw nsw i32 %3036, %3035
  %3038 = icmp eq i32 %3037, 2
  %3039 = zext i1 %3038 to i8
  store i8 %3039, i8* %38, align 1
  %3040 = sext i32 %3018 to i64
  store i64 %3040, i64* %RDX.i2069, align 8
  %3041 = shl nsw i64 %3040, 3
  %3042 = add i64 %3015, %3041
  %3043 = add i64 %3011, 17
  store i64 %3043, i64* %3, align 8
  %3044 = inttoptr i64 %3042 to i64*
  %3045 = load i64, i64* %3044, align 8
  store i64 %3045, i64* %RAX.i250, align 8
  %3046 = add i64 %2975, -88
  %3047 = add i64 %3011, 21
  store i64 %3047, i64* %3, align 8
  %3048 = inttoptr i64 %3046 to i64*
  store i64 %3045, i64* %3048, align 8
  %3049 = load i64, i64* %RBP.i, align 8
  %3050 = add i64 %3049, -40
  %3051 = load i64, i64* %3, align 8
  %3052 = add i64 %3051, 4
  store i64 %3052, i64* %3, align 8
  %3053 = inttoptr i64 %3050 to i64*
  %3054 = load i64, i64* %3053, align 8
  store i64 %3054, i64* %RAX.i250, align 8
  %3055 = add i64 %3049, -52
  %3056 = add i64 %3051, 8
  store i64 %3056, i64* %3, align 8
  %3057 = inttoptr i64 %3055 to i32*
  %3058 = load i32, i32* %3057, align 4
  %3059 = sext i32 %3058 to i64
  store i64 %3059, i64* %RDX.i2069, align 8
  %3060 = shl nsw i64 %3059, 3
  %3061 = add i64 %3060, %3054
  %3062 = add i64 %3051, 12
  store i64 %3062, i64* %3, align 8
  %3063 = inttoptr i64 %3061 to i64*
  %3064 = load i64, i64* %3063, align 8
  store i64 %3064, i64* %RAX.i250, align 8
  %3065 = add i64 %3051, 16
  store i64 %3065, i64* %3, align 8
  %3066 = load i64, i64* %3053, align 8
  store i64 %3066, i64* %RDX.i2069, align 8
  %3067 = add i64 %3049, -64
  %3068 = add i64 %3051, 19
  store i64 %3068, i64* %3, align 8
  %3069 = inttoptr i64 %3067 to i32*
  %3070 = load i32, i32* %3069, align 4
  %3071 = add i32 %3070, -2
  %3072 = zext i32 %3071 to i64
  store i64 %3072, i64* %RCX.i2082, align 8
  %3073 = icmp ult i32 %3070, 2
  %3074 = zext i1 %3073 to i8
  store i8 %3074, i8* %14, align 1
  %3075 = and i32 %3071, 255
  %3076 = tail call i32 @llvm.ctpop.i32(i32 %3075)
  %3077 = trunc i32 %3076 to i8
  %3078 = and i8 %3077, 1
  %3079 = xor i8 %3078, 1
  store i8 %3079, i8* %21, align 1
  %3080 = xor i32 %3071, %3070
  %3081 = lshr i32 %3080, 4
  %3082 = trunc i32 %3081 to i8
  %3083 = and i8 %3082, 1
  store i8 %3083, i8* %26, align 1
  %3084 = icmp eq i32 %3071, 0
  %3085 = zext i1 %3084 to i8
  store i8 %3085, i8* %29, align 1
  %3086 = lshr i32 %3071, 31
  %3087 = trunc i32 %3086 to i8
  store i8 %3087, i8* %32, align 1
  %3088 = lshr i32 %3070, 31
  %3089 = xor i32 %3086, %3088
  %3090 = add nuw nsw i32 %3089, %3088
  %3091 = icmp eq i32 %3090, 2
  %3092 = zext i1 %3091 to i8
  store i8 %3092, i8* %38, align 1
  %3093 = sext i32 %3071 to i64
  store i64 %3093, i64* %RSI.i2072, align 8
  %3094 = shl nsw i64 %3093, 3
  %3095 = add i64 %3066, %3094
  %3096 = add i64 %3051, 29
  store i64 %3096, i64* %3, align 8
  %3097 = inttoptr i64 %3095 to i64*
  store i64 %3064, i64* %3097, align 8
  %3098 = load i64, i64* %RBP.i, align 8
  %3099 = add i64 %3098, -88
  %3100 = load i64, i64* %3, align 8
  %3101 = add i64 %3100, 4
  store i64 %3101, i64* %3, align 8
  %3102 = inttoptr i64 %3099 to i64*
  %3103 = load i64, i64* %3102, align 8
  store i64 %3103, i64* %RAX.i250, align 8
  %3104 = add i64 %3098, -40
  %3105 = add i64 %3100, 8
  store i64 %3105, i64* %3, align 8
  %3106 = inttoptr i64 %3104 to i64*
  %3107 = load i64, i64* %3106, align 8
  store i64 %3107, i64* %RDX.i2069, align 8
  %3108 = add i64 %3098, -52
  %3109 = add i64 %3100, 12
  store i64 %3109, i64* %3, align 8
  %3110 = inttoptr i64 %3108 to i32*
  %3111 = load i32, i32* %3110, align 4
  %3112 = sext i32 %3111 to i64
  store i64 %3112, i64* %RSI.i2072, align 8
  %3113 = shl nsw i64 %3112, 3
  %3114 = add i64 %3113, %3107
  %3115 = add i64 %3100, 16
  store i64 %3115, i64* %3, align 8
  %3116 = inttoptr i64 %3114 to i64*
  store i64 %3103, i64* %3116, align 8
  %3117 = load i64, i64* %RBP.i, align 8
  %3118 = add i64 %3117, -68
  %3119 = load i64, i64* %3, align 8
  %3120 = add i64 %3119, 7
  store i64 %3120, i64* %3, align 8
  %3121 = inttoptr i64 %3118 to i32*
  store i32 0, i32* %3121, align 4
  %.pre88 = load i64, i64* %3, align 8
  br label %block_.L_40639c

block_.L_40639c:                                  ; preds = %block_4063a8, %block_406353
  %3122 = phi i64 [ %3338, %block_4063a8 ], [ %.pre88, %block_406353 ]
  %3123 = load i64, i64* %RBP.i, align 8
  %3124 = add i64 %3123, -68
  %3125 = add i64 %3122, 3
  store i64 %3125, i64* %3, align 8
  %3126 = inttoptr i64 %3124 to i32*
  %3127 = load i32, i32* %3126, align 4
  %3128 = zext i32 %3127 to i64
  store i64 %3128, i64* %RAX.i250, align 8
  %3129 = add i64 %3123, -64
  %3130 = add i64 %3122, 6
  store i64 %3130, i64* %3, align 8
  %3131 = inttoptr i64 %3129 to i32*
  %3132 = load i32, i32* %3131, align 4
  %3133 = sub i32 %3127, %3132
  %3134 = icmp ult i32 %3127, %3132
  %3135 = zext i1 %3134 to i8
  store i8 %3135, i8* %14, align 1
  %3136 = and i32 %3133, 255
  %3137 = tail call i32 @llvm.ctpop.i32(i32 %3136)
  %3138 = trunc i32 %3137 to i8
  %3139 = and i8 %3138, 1
  %3140 = xor i8 %3139, 1
  store i8 %3140, i8* %21, align 1
  %3141 = xor i32 %3132, %3127
  %3142 = xor i32 %3141, %3133
  %3143 = lshr i32 %3142, 4
  %3144 = trunc i32 %3143 to i8
  %3145 = and i8 %3144, 1
  store i8 %3145, i8* %26, align 1
  %3146 = icmp eq i32 %3133, 0
  %3147 = zext i1 %3146 to i8
  store i8 %3147, i8* %29, align 1
  %3148 = lshr i32 %3133, 31
  %3149 = trunc i32 %3148 to i8
  store i8 %3149, i8* %32, align 1
  %3150 = lshr i32 %3127, 31
  %3151 = lshr i32 %3132, 31
  %3152 = xor i32 %3151, %3150
  %3153 = xor i32 %3148, %3150
  %3154 = add nuw nsw i32 %3153, %3152
  %3155 = icmp eq i32 %3154, 2
  %3156 = zext i1 %3155 to i8
  store i8 %3156, i8* %38, align 1
  %3157 = icmp ne i8 %3149, 0
  %3158 = xor i1 %3157, %3155
  %.v132 = select i1 %3158, i64 12, i64 130
  %3159 = add i64 %3122, %.v132
  store i64 %3159, i64* %3, align 8
  br i1 %3158, label %block_4063a8, label %block_.L_40641e

block_4063a8:                                     ; preds = %block_.L_40639c
  %3160 = add i64 %3123, -40
  %3161 = add i64 %3159, 4
  store i64 %3161, i64* %3, align 8
  %3162 = inttoptr i64 %3160 to i64*
  %3163 = load i64, i64* %3162, align 8
  store i64 %3163, i64* %RAX.i250, align 8
  %3164 = add i64 %3159, 8
  store i64 %3164, i64* %3, align 8
  %3165 = load i32, i32* %3126, align 4
  %3166 = sext i32 %3165 to i64
  store i64 %3166, i64* %RCX.i2082, align 8
  %3167 = shl nsw i64 %3166, 3
  %3168 = add i64 %3167, %3163
  %3169 = add i64 %3159, 12
  store i64 %3169, i64* %3, align 8
  %3170 = inttoptr i64 %3168 to i64*
  %3171 = load i64, i64* %3170, align 8
  store i64 %3171, i64* %RAX.i250, align 8
  %3172 = add i64 %3159, 15
  store i64 %3172, i64* %3, align 8
  %3173 = load i32, i32* %3131, align 4
  %3174 = add i32 %3173, -2
  %3175 = zext i32 %3174 to i64
  store i64 %3175, i64* %RDX.i2069, align 8
  %3176 = icmp ult i32 %3173, 2
  %3177 = zext i1 %3176 to i8
  store i8 %3177, i8* %14, align 1
  %3178 = and i32 %3174, 255
  %3179 = tail call i32 @llvm.ctpop.i32(i32 %3178)
  %3180 = trunc i32 %3179 to i8
  %3181 = and i8 %3180, 1
  %3182 = xor i8 %3181, 1
  store i8 %3182, i8* %21, align 1
  %3183 = xor i32 %3174, %3173
  %3184 = lshr i32 %3183, 4
  %3185 = trunc i32 %3184 to i8
  %3186 = and i8 %3185, 1
  store i8 %3186, i8* %26, align 1
  %3187 = icmp eq i32 %3174, 0
  %3188 = zext i1 %3187 to i8
  store i8 %3188, i8* %29, align 1
  %3189 = lshr i32 %3174, 31
  %3190 = trunc i32 %3189 to i8
  store i8 %3190, i8* %32, align 1
  %3191 = lshr i32 %3173, 31
  %3192 = xor i32 %3189, %3191
  %3193 = add nuw nsw i32 %3192, %3191
  %3194 = icmp eq i32 %3193, 2
  %3195 = zext i1 %3194 to i8
  store i8 %3195, i8* %38, align 1
  %3196 = sext i32 %3174 to i64
  store i64 %3196, i64* %RCX.i2082, align 8
  %3197 = shl nsw i64 %3196, 2
  %3198 = add i64 %3171, %3197
  %3199 = add i64 %3159, 26
  store i64 %3199, i64* %3, align 8
  %3200 = inttoptr i64 %3198 to i32*
  %3201 = load i32, i32* %3200, align 4
  store i32 %3201, i32* %629, align 1
  store float 0.000000e+00, float* %631, align 1
  store float 0.000000e+00, float* %111, align 1
  store float 0.000000e+00, float* %633, align 1
  %3202 = add i64 %3123, -92
  %3203 = add i64 %3159, 31
  store i64 %3203, i64* %3, align 8
  %3204 = load <2 x float>, <2 x float>* %634, align 1
  %3205 = extractelement <2 x float> %3204, i32 0
  %3206 = inttoptr i64 %3202 to float*
  store float %3205, float* %3206, align 4
  %3207 = load i64, i64* %RBP.i, align 8
  %3208 = add i64 %3207, -40
  %3209 = load i64, i64* %3, align 8
  %3210 = add i64 %3209, 4
  store i64 %3210, i64* %3, align 8
  %3211 = inttoptr i64 %3208 to i64*
  %3212 = load i64, i64* %3211, align 8
  store i64 %3212, i64* %RAX.i250, align 8
  %3213 = add i64 %3207, -68
  %3214 = add i64 %3209, 8
  store i64 %3214, i64* %3, align 8
  %3215 = inttoptr i64 %3213 to i32*
  %3216 = load i32, i32* %3215, align 4
  %3217 = sext i32 %3216 to i64
  store i64 %3217, i64* %RCX.i2082, align 8
  %3218 = shl nsw i64 %3217, 3
  %3219 = add i64 %3218, %3212
  %3220 = add i64 %3209, 12
  store i64 %3220, i64* %3, align 8
  %3221 = inttoptr i64 %3219 to i64*
  %3222 = load i64, i64* %3221, align 8
  store i64 %3222, i64* %RAX.i250, align 8
  %3223 = add i64 %3207, -52
  %3224 = add i64 %3209, 16
  store i64 %3224, i64* %3, align 8
  %3225 = inttoptr i64 %3223 to i32*
  %3226 = load i32, i32* %3225, align 4
  %3227 = sext i32 %3226 to i64
  store i64 %3227, i64* %RCX.i2082, align 8
  %3228 = shl nsw i64 %3227, 2
  %3229 = add i64 %3228, %3222
  %3230 = add i64 %3209, 21
  store i64 %3230, i64* %3, align 8
  %3231 = inttoptr i64 %3229 to i32*
  %3232 = load i32, i32* %3231, align 4
  store i32 %3232, i32* %629, align 1
  store float 0.000000e+00, float* %631, align 1
  store float 0.000000e+00, float* %111, align 1
  store float 0.000000e+00, float* %633, align 1
  %3233 = add i64 %3209, 25
  store i64 %3233, i64* %3, align 8
  %3234 = load i64, i64* %3211, align 8
  store i64 %3234, i64* %RAX.i250, align 8
  %3235 = add i64 %3209, 29
  store i64 %3235, i64* %3, align 8
  %3236 = load i32, i32* %3215, align 4
  %3237 = sext i32 %3236 to i64
  store i64 %3237, i64* %RCX.i2082, align 8
  %3238 = shl nsw i64 %3237, 3
  %3239 = add i64 %3238, %3234
  %3240 = add i64 %3209, 33
  store i64 %3240, i64* %3, align 8
  %3241 = inttoptr i64 %3239 to i64*
  %3242 = load i64, i64* %3241, align 8
  store i64 %3242, i64* %RAX.i250, align 8
  %3243 = add i64 %3207, -64
  %3244 = add i64 %3209, 36
  store i64 %3244, i64* %3, align 8
  %3245 = inttoptr i64 %3243 to i32*
  %3246 = load i32, i32* %3245, align 4
  %3247 = add i32 %3246, -2
  %3248 = zext i32 %3247 to i64
  store i64 %3248, i64* %RDX.i2069, align 8
  %3249 = icmp ult i32 %3246, 2
  %3250 = zext i1 %3249 to i8
  store i8 %3250, i8* %14, align 1
  %3251 = and i32 %3247, 255
  %3252 = tail call i32 @llvm.ctpop.i32(i32 %3251)
  %3253 = trunc i32 %3252 to i8
  %3254 = and i8 %3253, 1
  %3255 = xor i8 %3254, 1
  store i8 %3255, i8* %21, align 1
  %3256 = xor i32 %3247, %3246
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
  %3264 = lshr i32 %3246, 31
  %3265 = xor i32 %3262, %3264
  %3266 = add nuw nsw i32 %3265, %3264
  %3267 = icmp eq i32 %3266, 2
  %3268 = zext i1 %3267 to i8
  store i8 %3268, i8* %38, align 1
  %3269 = sext i32 %3247 to i64
  store i64 %3269, i64* %RCX.i2082, align 8
  %3270 = shl nsw i64 %3269, 2
  %3271 = add i64 %3242, %3270
  %3272 = add i64 %3209, 47
  store i64 %3272, i64* %3, align 8
  %3273 = load <2 x float>, <2 x float>* %634, align 1
  %3274 = extractelement <2 x float> %3273, i32 0
  %3275 = inttoptr i64 %3271 to float*
  store float %3274, float* %3275, align 4
  %3276 = load i64, i64* %RBP.i, align 8
  %3277 = add i64 %3276, -92
  %3278 = load i64, i64* %3, align 8
  %3279 = add i64 %3278, 5
  store i64 %3279, i64* %3, align 8
  %3280 = inttoptr i64 %3277 to i32*
  %3281 = load i32, i32* %3280, align 4
  store i32 %3281, i32* %629, align 1
  store float 0.000000e+00, float* %631, align 1
  store float 0.000000e+00, float* %111, align 1
  store float 0.000000e+00, float* %633, align 1
  %3282 = add i64 %3276, -40
  %3283 = add i64 %3278, 9
  store i64 %3283, i64* %3, align 8
  %3284 = inttoptr i64 %3282 to i64*
  %3285 = load i64, i64* %3284, align 8
  store i64 %3285, i64* %RAX.i250, align 8
  %3286 = add i64 %3276, -68
  %3287 = add i64 %3278, 13
  store i64 %3287, i64* %3, align 8
  %3288 = inttoptr i64 %3286 to i32*
  %3289 = load i32, i32* %3288, align 4
  %3290 = sext i32 %3289 to i64
  store i64 %3290, i64* %RCX.i2082, align 8
  %3291 = shl nsw i64 %3290, 3
  %3292 = add i64 %3291, %3285
  %3293 = add i64 %3278, 17
  store i64 %3293, i64* %3, align 8
  %3294 = inttoptr i64 %3292 to i64*
  %3295 = load i64, i64* %3294, align 8
  store i64 %3295, i64* %RAX.i250, align 8
  %3296 = add i64 %3276, -52
  %3297 = add i64 %3278, 21
  store i64 %3297, i64* %3, align 8
  %3298 = inttoptr i64 %3296 to i32*
  %3299 = load i32, i32* %3298, align 4
  %3300 = sext i32 %3299 to i64
  store i64 %3300, i64* %RCX.i2082, align 8
  %3301 = shl nsw i64 %3300, 2
  %3302 = add i64 %3301, %3295
  %3303 = add i64 %3278, 26
  store i64 %3303, i64* %3, align 8
  %3304 = load <2 x float>, <2 x float>* %634, align 1
  %3305 = extractelement <2 x float> %3304, i32 0
  %3306 = inttoptr i64 %3302 to float*
  store float %3305, float* %3306, align 4
  %3307 = load i64, i64* %RBP.i, align 8
  %3308 = add i64 %3307, -68
  %3309 = load i64, i64* %3, align 8
  %3310 = add i64 %3309, 3
  store i64 %3310, i64* %3, align 8
  %3311 = inttoptr i64 %3308 to i32*
  %3312 = load i32, i32* %3311, align 4
  %3313 = add i32 %3312, 1
  %3314 = zext i32 %3313 to i64
  store i64 %3314, i64* %RAX.i250, align 8
  %3315 = icmp eq i32 %3312, -1
  %3316 = icmp eq i32 %3313, 0
  %3317 = or i1 %3315, %3316
  %3318 = zext i1 %3317 to i8
  store i8 %3318, i8* %14, align 1
  %3319 = and i32 %3313, 255
  %3320 = tail call i32 @llvm.ctpop.i32(i32 %3319)
  %3321 = trunc i32 %3320 to i8
  %3322 = and i8 %3321, 1
  %3323 = xor i8 %3322, 1
  store i8 %3323, i8* %21, align 1
  %3324 = xor i32 %3313, %3312
  %3325 = lshr i32 %3324, 4
  %3326 = trunc i32 %3325 to i8
  %3327 = and i8 %3326, 1
  store i8 %3327, i8* %26, align 1
  %3328 = zext i1 %3316 to i8
  store i8 %3328, i8* %29, align 1
  %3329 = lshr i32 %3313, 31
  %3330 = trunc i32 %3329 to i8
  store i8 %3330, i8* %32, align 1
  %3331 = lshr i32 %3312, 31
  %3332 = xor i32 %3329, %3331
  %3333 = add nuw nsw i32 %3332, %3329
  %3334 = icmp eq i32 %3333, 2
  %3335 = zext i1 %3334 to i8
  store i8 %3335, i8* %38, align 1
  %3336 = add i64 %3309, 9
  store i64 %3336, i64* %3, align 8
  store i32 %3313, i32* %3311, align 4
  %3337 = load i64, i64* %3, align 8
  %3338 = add i64 %3337, -125
  store i64 %3338, i64* %3, align 8
  br label %block_.L_40639c

block_.L_40641e:                                  ; preds = %block_.L_40639c
  %3339 = add i64 %3123, -48
  %3340 = add i64 %3159, 4
  store i64 %3340, i64* %3, align 8
  %3341 = inttoptr i64 %3339 to i64*
  %3342 = load i64, i64* %3341, align 8
  store i64 %3342, i64* %RAX.i250, align 8
  %3343 = add i64 %3159, 7
  store i64 %3343, i64* %3, align 8
  %3344 = load i32, i32* %3131, align 4
  %3345 = add i32 %3344, -2
  %3346 = zext i32 %3345 to i64
  store i64 %3346, i64* %RCX.i2082, align 8
  %3347 = icmp ult i32 %3344, 2
  %3348 = zext i1 %3347 to i8
  store i8 %3348, i8* %14, align 1
  %3349 = and i32 %3345, 255
  %3350 = tail call i32 @llvm.ctpop.i32(i32 %3349)
  %3351 = trunc i32 %3350 to i8
  %3352 = and i8 %3351, 1
  %3353 = xor i8 %3352, 1
  store i8 %3353, i8* %21, align 1
  %3354 = xor i32 %3345, %3344
  %3355 = lshr i32 %3354, 4
  %3356 = trunc i32 %3355 to i8
  %3357 = and i8 %3356, 1
  store i8 %3357, i8* %26, align 1
  %3358 = icmp eq i32 %3345, 0
  %3359 = zext i1 %3358 to i8
  store i8 %3359, i8* %29, align 1
  %3360 = lshr i32 %3345, 31
  %3361 = trunc i32 %3360 to i8
  store i8 %3361, i8* %32, align 1
  %3362 = lshr i32 %3344, 31
  %3363 = xor i32 %3360, %3362
  %3364 = add nuw nsw i32 %3363, %3362
  %3365 = icmp eq i32 %3364, 2
  %3366 = zext i1 %3365 to i8
  store i8 %3366, i8* %38, align 1
  %3367 = sext i32 %3345 to i64
  store i64 %3367, i64* %RDX.i2069, align 8
  %3368 = shl nsw i64 %3367, 2
  %3369 = add i64 %3342, %3368
  %3370 = add i64 %3159, 16
  store i64 %3370, i64* %3, align 8
  %3371 = inttoptr i64 %3369 to i32*
  %3372 = load i32, i32* %3371, align 4
  %3373 = zext i32 %3372 to i64
  store i64 %3373, i64* %RCX.i2082, align 8
  %3374 = add i64 %3123, -108
  %3375 = add i64 %3159, 19
  store i64 %3375, i64* %3, align 8
  %3376 = inttoptr i64 %3374 to i32*
  store i32 %3372, i32* %3376, align 4
  %3377 = load i64, i64* %RBP.i, align 8
  %3378 = add i64 %3377, -48
  %3379 = load i64, i64* %3, align 8
  %3380 = add i64 %3379, 4
  store i64 %3380, i64* %3, align 8
  %3381 = inttoptr i64 %3378 to i64*
  %3382 = load i64, i64* %3381, align 8
  store i64 %3382, i64* %RAX.i250, align 8
  %3383 = add i64 %3377, -52
  %3384 = add i64 %3379, 8
  store i64 %3384, i64* %3, align 8
  %3385 = inttoptr i64 %3383 to i32*
  %3386 = load i32, i32* %3385, align 4
  %3387 = sext i32 %3386 to i64
  store i64 %3387, i64* %RDX.i2069, align 8
  %3388 = shl nsw i64 %3387, 2
  %3389 = add i64 %3388, %3382
  %3390 = add i64 %3379, 11
  store i64 %3390, i64* %3, align 8
  %3391 = inttoptr i64 %3389 to i32*
  %3392 = load i32, i32* %3391, align 4
  %3393 = zext i32 %3392 to i64
  store i64 %3393, i64* %RCX.i2082, align 8
  %3394 = add i64 %3379, 15
  store i64 %3394, i64* %3, align 8
  %3395 = load i64, i64* %3381, align 8
  store i64 %3395, i64* %RAX.i250, align 8
  %3396 = add i64 %3377, -64
  %3397 = add i64 %3379, 18
  store i64 %3397, i64* %3, align 8
  %3398 = inttoptr i64 %3396 to i32*
  %3399 = load i32, i32* %3398, align 4
  %3400 = add i32 %3399, -2
  %3401 = zext i32 %3400 to i64
  store i64 %3401, i64* %RSI.i2072, align 8
  %3402 = icmp ult i32 %3399, 2
  %3403 = zext i1 %3402 to i8
  store i8 %3403, i8* %14, align 1
  %3404 = and i32 %3400, 255
  %3405 = tail call i32 @llvm.ctpop.i32(i32 %3404)
  %3406 = trunc i32 %3405 to i8
  %3407 = and i8 %3406, 1
  %3408 = xor i8 %3407, 1
  store i8 %3408, i8* %21, align 1
  %3409 = xor i32 %3400, %3399
  %3410 = lshr i32 %3409, 4
  %3411 = trunc i32 %3410 to i8
  %3412 = and i8 %3411, 1
  store i8 %3412, i8* %26, align 1
  %3413 = icmp eq i32 %3400, 0
  %3414 = zext i1 %3413 to i8
  store i8 %3414, i8* %29, align 1
  %3415 = lshr i32 %3400, 31
  %3416 = trunc i32 %3415 to i8
  store i8 %3416, i8* %32, align 1
  %3417 = lshr i32 %3399, 31
  %3418 = xor i32 %3415, %3417
  %3419 = add nuw nsw i32 %3418, %3417
  %3420 = icmp eq i32 %3419, 2
  %3421 = zext i1 %3420 to i8
  store i8 %3421, i8* %38, align 1
  %3422 = sext i32 %3400 to i64
  store i64 %3422, i64* %RDX.i2069, align 8
  %3423 = shl nsw i64 %3422, 2
  %3424 = add i64 %3395, %3423
  %3425 = add i64 %3379, 27
  store i64 %3425, i64* %3, align 8
  %3426 = inttoptr i64 %3424 to i32*
  store i32 %3392, i32* %3426, align 4
  %3427 = load i64, i64* %RBP.i, align 8
  %3428 = add i64 %3427, -108
  %3429 = load i64, i64* %3, align 8
  %3430 = add i64 %3429, 3
  store i64 %3430, i64* %3, align 8
  %3431 = inttoptr i64 %3428 to i32*
  %3432 = load i32, i32* %3431, align 4
  %3433 = zext i32 %3432 to i64
  store i64 %3433, i64* %RCX.i2082, align 8
  %3434 = add i64 %3427, -48
  %3435 = add i64 %3429, 7
  store i64 %3435, i64* %3, align 8
  %3436 = inttoptr i64 %3434 to i64*
  %3437 = load i64, i64* %3436, align 8
  store i64 %3437, i64* %RAX.i250, align 8
  %3438 = add i64 %3427, -52
  %3439 = add i64 %3429, 11
  store i64 %3439, i64* %3, align 8
  %3440 = inttoptr i64 %3438 to i32*
  %3441 = load i32, i32* %3440, align 4
  %3442 = sext i32 %3441 to i64
  store i64 %3442, i64* %RDX.i2069, align 8
  %3443 = shl nsw i64 %3442, 2
  %3444 = add i64 %3443, %3437
  %3445 = add i64 %3429, 14
  store i64 %3445, i64* %3, align 8
  %3446 = inttoptr i64 %3444 to i32*
  store i32 %3432, i32* %3446, align 4
  %.pre89 = load i64, i64* %RBP.i, align 8
  %.pre90 = load i64, i64* %3, align 8
  br label %block_.L_40645a

block_.L_40645a:                                  ; preds = %block_.L_40641e, %block_.L_406342
  %3447 = phi i64 [ %.pre90, %block_.L_40641e ], [ %3011, %block_.L_406342 ]
  %3448 = phi i64 [ %.pre89, %block_.L_40641e ], [ %2975, %block_.L_406342 ]
  %3449 = add i64 %3448, -56
  %3450 = add i64 %3447, 3
  store i64 %3450, i64* %3, align 8
  %3451 = inttoptr i64 %3449 to i32*
  %3452 = load i32, i32* %3451, align 4
  %3453 = zext i32 %3452 to i64
  store i64 %3453, i64* %RAX.i250, align 8
  %3454 = add i64 %3448, -64
  %3455 = add i64 %3447, 6
  store i64 %3455, i64* %3, align 8
  %3456 = inttoptr i64 %3454 to i32*
  %3457 = load i32, i32* %3456, align 4
  %3458 = add i32 %3457, -1
  %3459 = zext i32 %3458 to i64
  store i64 %3459, i64* %RCX.i2082, align 8
  %3460 = lshr i32 %3458, 31
  %3461 = sub i32 %3452, %3458
  %3462 = icmp ult i32 %3452, %3458
  %3463 = zext i1 %3462 to i8
  store i8 %3463, i8* %14, align 1
  %3464 = and i32 %3461, 255
  %3465 = tail call i32 @llvm.ctpop.i32(i32 %3464)
  %3466 = trunc i32 %3465 to i8
  %3467 = and i8 %3466, 1
  %3468 = xor i8 %3467, 1
  store i8 %3468, i8* %21, align 1
  %3469 = xor i32 %3458, %3452
  %3470 = xor i32 %3469, %3461
  %3471 = lshr i32 %3470, 4
  %3472 = trunc i32 %3471 to i8
  %3473 = and i8 %3472, 1
  store i8 %3473, i8* %26, align 1
  %3474 = icmp eq i32 %3461, 0
  %3475 = zext i1 %3474 to i8
  store i8 %3475, i8* %29, align 1
  %3476 = lshr i32 %3461, 31
  %3477 = trunc i32 %3476 to i8
  store i8 %3477, i8* %32, align 1
  %3478 = lshr i32 %3452, 31
  %3479 = xor i32 %3460, %3478
  %3480 = xor i32 %3476, %3478
  %3481 = add nuw nsw i32 %3480, %3479
  %3482 = icmp eq i32 %3481, 2
  %3483 = zext i1 %3482 to i8
  store i8 %3483, i8* %38, align 1
  %.v133 = select i1 %3474, i64 280, i64 17
  %3484 = add i64 %3447, %.v133
  store i64 %3484, i64* %3, align 8
  br i1 %3474, label %block_.L_406572, label %block_40646b

block_40646b:                                     ; preds = %block_.L_40645a
  %3485 = add i64 %3448, -40
  %3486 = add i64 %3484, 4
  store i64 %3486, i64* %3, align 8
  %3487 = inttoptr i64 %3485 to i64*
  %3488 = load i64, i64* %3487, align 8
  store i64 %3488, i64* %RAX.i250, align 8
  %3489 = add i64 %3484, 7
  store i64 %3489, i64* %3, align 8
  %3490 = load i32, i32* %3456, align 4
  %3491 = add i32 %3490, -1
  %3492 = zext i32 %3491 to i64
  store i64 %3492, i64* %RCX.i2082, align 8
  %3493 = icmp eq i32 %3490, 0
  %3494 = zext i1 %3493 to i8
  store i8 %3494, i8* %14, align 1
  %3495 = and i32 %3491, 255
  %3496 = tail call i32 @llvm.ctpop.i32(i32 %3495)
  %3497 = trunc i32 %3496 to i8
  %3498 = and i8 %3497, 1
  %3499 = xor i8 %3498, 1
  store i8 %3499, i8* %21, align 1
  %3500 = xor i32 %3491, %3490
  %3501 = lshr i32 %3500, 4
  %3502 = trunc i32 %3501 to i8
  %3503 = and i8 %3502, 1
  store i8 %3503, i8* %26, align 1
  %3504 = icmp eq i32 %3491, 0
  %3505 = zext i1 %3504 to i8
  store i8 %3505, i8* %29, align 1
  %3506 = lshr i32 %3491, 31
  %3507 = trunc i32 %3506 to i8
  store i8 %3507, i8* %32, align 1
  %3508 = lshr i32 %3490, 31
  %3509 = xor i32 %3506, %3508
  %3510 = add nuw nsw i32 %3509, %3508
  %3511 = icmp eq i32 %3510, 2
  %3512 = zext i1 %3511 to i8
  store i8 %3512, i8* %38, align 1
  %3513 = sext i32 %3491 to i64
  store i64 %3513, i64* %RDX.i2069, align 8
  %3514 = shl nsw i64 %3513, 3
  %3515 = add i64 %3488, %3514
  %3516 = add i64 %3484, 17
  store i64 %3516, i64* %3, align 8
  %3517 = inttoptr i64 %3515 to i64*
  %3518 = load i64, i64* %3517, align 8
  store i64 %3518, i64* %RAX.i250, align 8
  %3519 = add i64 %3448, -88
  %3520 = add i64 %3484, 21
  store i64 %3520, i64* %3, align 8
  %3521 = inttoptr i64 %3519 to i64*
  store i64 %3518, i64* %3521, align 8
  %3522 = load i64, i64* %RBP.i, align 8
  %3523 = add i64 %3522, -40
  %3524 = load i64, i64* %3, align 8
  %3525 = add i64 %3524, 4
  store i64 %3525, i64* %3, align 8
  %3526 = inttoptr i64 %3523 to i64*
  %3527 = load i64, i64* %3526, align 8
  store i64 %3527, i64* %RAX.i250, align 8
  %3528 = add i64 %3522, -56
  %3529 = add i64 %3524, 8
  store i64 %3529, i64* %3, align 8
  %3530 = inttoptr i64 %3528 to i32*
  %3531 = load i32, i32* %3530, align 4
  %3532 = sext i32 %3531 to i64
  store i64 %3532, i64* %RDX.i2069, align 8
  %3533 = shl nsw i64 %3532, 3
  %3534 = add i64 %3533, %3527
  %3535 = add i64 %3524, 12
  store i64 %3535, i64* %3, align 8
  %3536 = inttoptr i64 %3534 to i64*
  %3537 = load i64, i64* %3536, align 8
  store i64 %3537, i64* %RAX.i250, align 8
  %3538 = add i64 %3524, 16
  store i64 %3538, i64* %3, align 8
  %3539 = load i64, i64* %3526, align 8
  store i64 %3539, i64* %RDX.i2069, align 8
  %3540 = add i64 %3522, -64
  %3541 = add i64 %3524, 19
  store i64 %3541, i64* %3, align 8
  %3542 = inttoptr i64 %3540 to i32*
  %3543 = load i32, i32* %3542, align 4
  %3544 = add i32 %3543, -1
  %3545 = zext i32 %3544 to i64
  store i64 %3545, i64* %RCX.i2082, align 8
  %3546 = icmp eq i32 %3543, 0
  %3547 = zext i1 %3546 to i8
  store i8 %3547, i8* %14, align 1
  %3548 = and i32 %3544, 255
  %3549 = tail call i32 @llvm.ctpop.i32(i32 %3548)
  %3550 = trunc i32 %3549 to i8
  %3551 = and i8 %3550, 1
  %3552 = xor i8 %3551, 1
  store i8 %3552, i8* %21, align 1
  %3553 = xor i32 %3544, %3543
  %3554 = lshr i32 %3553, 4
  %3555 = trunc i32 %3554 to i8
  %3556 = and i8 %3555, 1
  store i8 %3556, i8* %26, align 1
  %3557 = icmp eq i32 %3544, 0
  %3558 = zext i1 %3557 to i8
  store i8 %3558, i8* %29, align 1
  %3559 = lshr i32 %3544, 31
  %3560 = trunc i32 %3559 to i8
  store i8 %3560, i8* %32, align 1
  %3561 = lshr i32 %3543, 31
  %3562 = xor i32 %3559, %3561
  %3563 = add nuw nsw i32 %3562, %3561
  %3564 = icmp eq i32 %3563, 2
  %3565 = zext i1 %3564 to i8
  store i8 %3565, i8* %38, align 1
  %3566 = sext i32 %3544 to i64
  store i64 %3566, i64* %RSI.i2072, align 8
  %3567 = shl nsw i64 %3566, 3
  %3568 = add i64 %3539, %3567
  %3569 = add i64 %3524, 29
  store i64 %3569, i64* %3, align 8
  %3570 = inttoptr i64 %3568 to i64*
  store i64 %3537, i64* %3570, align 8
  %3571 = load i64, i64* %RBP.i, align 8
  %3572 = add i64 %3571, -88
  %3573 = load i64, i64* %3, align 8
  %3574 = add i64 %3573, 4
  store i64 %3574, i64* %3, align 8
  %3575 = inttoptr i64 %3572 to i64*
  %3576 = load i64, i64* %3575, align 8
  store i64 %3576, i64* %RAX.i250, align 8
  %3577 = add i64 %3571, -40
  %3578 = add i64 %3573, 8
  store i64 %3578, i64* %3, align 8
  %3579 = inttoptr i64 %3577 to i64*
  %3580 = load i64, i64* %3579, align 8
  store i64 %3580, i64* %RDX.i2069, align 8
  %3581 = add i64 %3571, -56
  %3582 = add i64 %3573, 12
  store i64 %3582, i64* %3, align 8
  %3583 = inttoptr i64 %3581 to i32*
  %3584 = load i32, i32* %3583, align 4
  %3585 = sext i32 %3584 to i64
  store i64 %3585, i64* %RSI.i2072, align 8
  %3586 = shl nsw i64 %3585, 3
  %3587 = add i64 %3586, %3580
  %3588 = add i64 %3573, 16
  store i64 %3588, i64* %3, align 8
  %3589 = inttoptr i64 %3587 to i64*
  store i64 %3576, i64* %3589, align 8
  %3590 = load i64, i64* %RBP.i, align 8
  %3591 = add i64 %3590, -68
  %3592 = load i64, i64* %3, align 8
  %3593 = add i64 %3592, 7
  store i64 %3593, i64* %3, align 8
  %3594 = inttoptr i64 %3591 to i32*
  store i32 0, i32* %3594, align 4
  %.pre91 = load i64, i64* %3, align 8
  br label %block_.L_4064b4

block_.L_4064b4:                                  ; preds = %block_4064c0, %block_40646b
  %3595 = phi i64 [ %3811, %block_4064c0 ], [ %.pre91, %block_40646b ]
  %3596 = load i64, i64* %RBP.i, align 8
  %3597 = add i64 %3596, -68
  %3598 = add i64 %3595, 3
  store i64 %3598, i64* %3, align 8
  %3599 = inttoptr i64 %3597 to i32*
  %3600 = load i32, i32* %3599, align 4
  %3601 = zext i32 %3600 to i64
  store i64 %3601, i64* %RAX.i250, align 8
  %3602 = add i64 %3596, -64
  %3603 = add i64 %3595, 6
  store i64 %3603, i64* %3, align 8
  %3604 = inttoptr i64 %3602 to i32*
  %3605 = load i32, i32* %3604, align 4
  %3606 = sub i32 %3600, %3605
  %3607 = icmp ult i32 %3600, %3605
  %3608 = zext i1 %3607 to i8
  store i8 %3608, i8* %14, align 1
  %3609 = and i32 %3606, 255
  %3610 = tail call i32 @llvm.ctpop.i32(i32 %3609)
  %3611 = trunc i32 %3610 to i8
  %3612 = and i8 %3611, 1
  %3613 = xor i8 %3612, 1
  store i8 %3613, i8* %21, align 1
  %3614 = xor i32 %3605, %3600
  %3615 = xor i32 %3614, %3606
  %3616 = lshr i32 %3615, 4
  %3617 = trunc i32 %3616 to i8
  %3618 = and i8 %3617, 1
  store i8 %3618, i8* %26, align 1
  %3619 = icmp eq i32 %3606, 0
  %3620 = zext i1 %3619 to i8
  store i8 %3620, i8* %29, align 1
  %3621 = lshr i32 %3606, 31
  %3622 = trunc i32 %3621 to i8
  store i8 %3622, i8* %32, align 1
  %3623 = lshr i32 %3600, 31
  %3624 = lshr i32 %3605, 31
  %3625 = xor i32 %3624, %3623
  %3626 = xor i32 %3621, %3623
  %3627 = add nuw nsw i32 %3626, %3625
  %3628 = icmp eq i32 %3627, 2
  %3629 = zext i1 %3628 to i8
  store i8 %3629, i8* %38, align 1
  %3630 = icmp ne i8 %3622, 0
  %3631 = xor i1 %3630, %3628
  %.v134 = select i1 %3631, i64 12, i64 130
  %3632 = add i64 %3595, %.v134
  store i64 %3632, i64* %3, align 8
  br i1 %3631, label %block_4064c0, label %block_.L_406536

block_4064c0:                                     ; preds = %block_.L_4064b4
  %3633 = add i64 %3596, -40
  %3634 = add i64 %3632, 4
  store i64 %3634, i64* %3, align 8
  %3635 = inttoptr i64 %3633 to i64*
  %3636 = load i64, i64* %3635, align 8
  store i64 %3636, i64* %RAX.i250, align 8
  %3637 = add i64 %3632, 8
  store i64 %3637, i64* %3, align 8
  %3638 = load i32, i32* %3599, align 4
  %3639 = sext i32 %3638 to i64
  store i64 %3639, i64* %RCX.i2082, align 8
  %3640 = shl nsw i64 %3639, 3
  %3641 = add i64 %3640, %3636
  %3642 = add i64 %3632, 12
  store i64 %3642, i64* %3, align 8
  %3643 = inttoptr i64 %3641 to i64*
  %3644 = load i64, i64* %3643, align 8
  store i64 %3644, i64* %RAX.i250, align 8
  %3645 = add i64 %3632, 15
  store i64 %3645, i64* %3, align 8
  %3646 = load i32, i32* %3604, align 4
  %3647 = add i32 %3646, -1
  %3648 = zext i32 %3647 to i64
  store i64 %3648, i64* %RDX.i2069, align 8
  %3649 = icmp eq i32 %3646, 0
  %3650 = zext i1 %3649 to i8
  store i8 %3650, i8* %14, align 1
  %3651 = and i32 %3647, 255
  %3652 = tail call i32 @llvm.ctpop.i32(i32 %3651)
  %3653 = trunc i32 %3652 to i8
  %3654 = and i8 %3653, 1
  %3655 = xor i8 %3654, 1
  store i8 %3655, i8* %21, align 1
  %3656 = xor i32 %3647, %3646
  %3657 = lshr i32 %3656, 4
  %3658 = trunc i32 %3657 to i8
  %3659 = and i8 %3658, 1
  store i8 %3659, i8* %26, align 1
  %3660 = icmp eq i32 %3647, 0
  %3661 = zext i1 %3660 to i8
  store i8 %3661, i8* %29, align 1
  %3662 = lshr i32 %3647, 31
  %3663 = trunc i32 %3662 to i8
  store i8 %3663, i8* %32, align 1
  %3664 = lshr i32 %3646, 31
  %3665 = xor i32 %3662, %3664
  %3666 = add nuw nsw i32 %3665, %3664
  %3667 = icmp eq i32 %3666, 2
  %3668 = zext i1 %3667 to i8
  store i8 %3668, i8* %38, align 1
  %3669 = sext i32 %3647 to i64
  store i64 %3669, i64* %RCX.i2082, align 8
  %3670 = shl nsw i64 %3669, 2
  %3671 = add i64 %3644, %3670
  %3672 = add i64 %3632, 26
  store i64 %3672, i64* %3, align 8
  %3673 = inttoptr i64 %3671 to i32*
  %3674 = load i32, i32* %3673, align 4
  store i32 %3674, i32* %629, align 1
  store float 0.000000e+00, float* %631, align 1
  store float 0.000000e+00, float* %111, align 1
  store float 0.000000e+00, float* %633, align 1
  %3675 = add i64 %3596, -92
  %3676 = add i64 %3632, 31
  store i64 %3676, i64* %3, align 8
  %3677 = load <2 x float>, <2 x float>* %634, align 1
  %3678 = extractelement <2 x float> %3677, i32 0
  %3679 = inttoptr i64 %3675 to float*
  store float %3678, float* %3679, align 4
  %3680 = load i64, i64* %RBP.i, align 8
  %3681 = add i64 %3680, -40
  %3682 = load i64, i64* %3, align 8
  %3683 = add i64 %3682, 4
  store i64 %3683, i64* %3, align 8
  %3684 = inttoptr i64 %3681 to i64*
  %3685 = load i64, i64* %3684, align 8
  store i64 %3685, i64* %RAX.i250, align 8
  %3686 = add i64 %3680, -68
  %3687 = add i64 %3682, 8
  store i64 %3687, i64* %3, align 8
  %3688 = inttoptr i64 %3686 to i32*
  %3689 = load i32, i32* %3688, align 4
  %3690 = sext i32 %3689 to i64
  store i64 %3690, i64* %RCX.i2082, align 8
  %3691 = shl nsw i64 %3690, 3
  %3692 = add i64 %3691, %3685
  %3693 = add i64 %3682, 12
  store i64 %3693, i64* %3, align 8
  %3694 = inttoptr i64 %3692 to i64*
  %3695 = load i64, i64* %3694, align 8
  store i64 %3695, i64* %RAX.i250, align 8
  %3696 = add i64 %3680, -56
  %3697 = add i64 %3682, 16
  store i64 %3697, i64* %3, align 8
  %3698 = inttoptr i64 %3696 to i32*
  %3699 = load i32, i32* %3698, align 4
  %3700 = sext i32 %3699 to i64
  store i64 %3700, i64* %RCX.i2082, align 8
  %3701 = shl nsw i64 %3700, 2
  %3702 = add i64 %3701, %3695
  %3703 = add i64 %3682, 21
  store i64 %3703, i64* %3, align 8
  %3704 = inttoptr i64 %3702 to i32*
  %3705 = load i32, i32* %3704, align 4
  store i32 %3705, i32* %629, align 1
  store float 0.000000e+00, float* %631, align 1
  store float 0.000000e+00, float* %111, align 1
  store float 0.000000e+00, float* %633, align 1
  %3706 = add i64 %3682, 25
  store i64 %3706, i64* %3, align 8
  %3707 = load i64, i64* %3684, align 8
  store i64 %3707, i64* %RAX.i250, align 8
  %3708 = add i64 %3682, 29
  store i64 %3708, i64* %3, align 8
  %3709 = load i32, i32* %3688, align 4
  %3710 = sext i32 %3709 to i64
  store i64 %3710, i64* %RCX.i2082, align 8
  %3711 = shl nsw i64 %3710, 3
  %3712 = add i64 %3711, %3707
  %3713 = add i64 %3682, 33
  store i64 %3713, i64* %3, align 8
  %3714 = inttoptr i64 %3712 to i64*
  %3715 = load i64, i64* %3714, align 8
  store i64 %3715, i64* %RAX.i250, align 8
  %3716 = add i64 %3680, -64
  %3717 = add i64 %3682, 36
  store i64 %3717, i64* %3, align 8
  %3718 = inttoptr i64 %3716 to i32*
  %3719 = load i32, i32* %3718, align 4
  %3720 = add i32 %3719, -1
  %3721 = zext i32 %3720 to i64
  store i64 %3721, i64* %RDX.i2069, align 8
  %3722 = icmp eq i32 %3719, 0
  %3723 = zext i1 %3722 to i8
  store i8 %3723, i8* %14, align 1
  %3724 = and i32 %3720, 255
  %3725 = tail call i32 @llvm.ctpop.i32(i32 %3724)
  %3726 = trunc i32 %3725 to i8
  %3727 = and i8 %3726, 1
  %3728 = xor i8 %3727, 1
  store i8 %3728, i8* %21, align 1
  %3729 = xor i32 %3720, %3719
  %3730 = lshr i32 %3729, 4
  %3731 = trunc i32 %3730 to i8
  %3732 = and i8 %3731, 1
  store i8 %3732, i8* %26, align 1
  %3733 = icmp eq i32 %3720, 0
  %3734 = zext i1 %3733 to i8
  store i8 %3734, i8* %29, align 1
  %3735 = lshr i32 %3720, 31
  %3736 = trunc i32 %3735 to i8
  store i8 %3736, i8* %32, align 1
  %3737 = lshr i32 %3719, 31
  %3738 = xor i32 %3735, %3737
  %3739 = add nuw nsw i32 %3738, %3737
  %3740 = icmp eq i32 %3739, 2
  %3741 = zext i1 %3740 to i8
  store i8 %3741, i8* %38, align 1
  %3742 = sext i32 %3720 to i64
  store i64 %3742, i64* %RCX.i2082, align 8
  %3743 = shl nsw i64 %3742, 2
  %3744 = add i64 %3715, %3743
  %3745 = add i64 %3682, 47
  store i64 %3745, i64* %3, align 8
  %3746 = load <2 x float>, <2 x float>* %634, align 1
  %3747 = extractelement <2 x float> %3746, i32 0
  %3748 = inttoptr i64 %3744 to float*
  store float %3747, float* %3748, align 4
  %3749 = load i64, i64* %RBP.i, align 8
  %3750 = add i64 %3749, -92
  %3751 = load i64, i64* %3, align 8
  %3752 = add i64 %3751, 5
  store i64 %3752, i64* %3, align 8
  %3753 = inttoptr i64 %3750 to i32*
  %3754 = load i32, i32* %3753, align 4
  store i32 %3754, i32* %629, align 1
  store float 0.000000e+00, float* %631, align 1
  store float 0.000000e+00, float* %111, align 1
  store float 0.000000e+00, float* %633, align 1
  %3755 = add i64 %3749, -40
  %3756 = add i64 %3751, 9
  store i64 %3756, i64* %3, align 8
  %3757 = inttoptr i64 %3755 to i64*
  %3758 = load i64, i64* %3757, align 8
  store i64 %3758, i64* %RAX.i250, align 8
  %3759 = add i64 %3749, -68
  %3760 = add i64 %3751, 13
  store i64 %3760, i64* %3, align 8
  %3761 = inttoptr i64 %3759 to i32*
  %3762 = load i32, i32* %3761, align 4
  %3763 = sext i32 %3762 to i64
  store i64 %3763, i64* %RCX.i2082, align 8
  %3764 = shl nsw i64 %3763, 3
  %3765 = add i64 %3764, %3758
  %3766 = add i64 %3751, 17
  store i64 %3766, i64* %3, align 8
  %3767 = inttoptr i64 %3765 to i64*
  %3768 = load i64, i64* %3767, align 8
  store i64 %3768, i64* %RAX.i250, align 8
  %3769 = add i64 %3749, -56
  %3770 = add i64 %3751, 21
  store i64 %3770, i64* %3, align 8
  %3771 = inttoptr i64 %3769 to i32*
  %3772 = load i32, i32* %3771, align 4
  %3773 = sext i32 %3772 to i64
  store i64 %3773, i64* %RCX.i2082, align 8
  %3774 = shl nsw i64 %3773, 2
  %3775 = add i64 %3774, %3768
  %3776 = add i64 %3751, 26
  store i64 %3776, i64* %3, align 8
  %3777 = load <2 x float>, <2 x float>* %634, align 1
  %3778 = extractelement <2 x float> %3777, i32 0
  %3779 = inttoptr i64 %3775 to float*
  store float %3778, float* %3779, align 4
  %3780 = load i64, i64* %RBP.i, align 8
  %3781 = add i64 %3780, -68
  %3782 = load i64, i64* %3, align 8
  %3783 = add i64 %3782, 3
  store i64 %3783, i64* %3, align 8
  %3784 = inttoptr i64 %3781 to i32*
  %3785 = load i32, i32* %3784, align 4
  %3786 = add i32 %3785, 1
  %3787 = zext i32 %3786 to i64
  store i64 %3787, i64* %RAX.i250, align 8
  %3788 = icmp eq i32 %3785, -1
  %3789 = icmp eq i32 %3786, 0
  %3790 = or i1 %3788, %3789
  %3791 = zext i1 %3790 to i8
  store i8 %3791, i8* %14, align 1
  %3792 = and i32 %3786, 255
  %3793 = tail call i32 @llvm.ctpop.i32(i32 %3792)
  %3794 = trunc i32 %3793 to i8
  %3795 = and i8 %3794, 1
  %3796 = xor i8 %3795, 1
  store i8 %3796, i8* %21, align 1
  %3797 = xor i32 %3786, %3785
  %3798 = lshr i32 %3797, 4
  %3799 = trunc i32 %3798 to i8
  %3800 = and i8 %3799, 1
  store i8 %3800, i8* %26, align 1
  %3801 = zext i1 %3789 to i8
  store i8 %3801, i8* %29, align 1
  %3802 = lshr i32 %3786, 31
  %3803 = trunc i32 %3802 to i8
  store i8 %3803, i8* %32, align 1
  %3804 = lshr i32 %3785, 31
  %3805 = xor i32 %3802, %3804
  %3806 = add nuw nsw i32 %3805, %3802
  %3807 = icmp eq i32 %3806, 2
  %3808 = zext i1 %3807 to i8
  store i8 %3808, i8* %38, align 1
  %3809 = add i64 %3782, 9
  store i64 %3809, i64* %3, align 8
  store i32 %3786, i32* %3784, align 4
  %3810 = load i64, i64* %3, align 8
  %3811 = add i64 %3810, -125
  store i64 %3811, i64* %3, align 8
  br label %block_.L_4064b4

block_.L_406536:                                  ; preds = %block_.L_4064b4
  %3812 = add i64 %3596, -48
  %3813 = add i64 %3632, 4
  store i64 %3813, i64* %3, align 8
  %3814 = inttoptr i64 %3812 to i64*
  %3815 = load i64, i64* %3814, align 8
  store i64 %3815, i64* %RAX.i250, align 8
  %3816 = add i64 %3632, 7
  store i64 %3816, i64* %3, align 8
  %3817 = load i32, i32* %3604, align 4
  %3818 = add i32 %3817, -1
  %3819 = zext i32 %3818 to i64
  store i64 %3819, i64* %RCX.i2082, align 8
  %3820 = icmp eq i32 %3817, 0
  %3821 = zext i1 %3820 to i8
  store i8 %3821, i8* %14, align 1
  %3822 = and i32 %3818, 255
  %3823 = tail call i32 @llvm.ctpop.i32(i32 %3822)
  %3824 = trunc i32 %3823 to i8
  %3825 = and i8 %3824, 1
  %3826 = xor i8 %3825, 1
  store i8 %3826, i8* %21, align 1
  %3827 = xor i32 %3818, %3817
  %3828 = lshr i32 %3827, 4
  %3829 = trunc i32 %3828 to i8
  %3830 = and i8 %3829, 1
  store i8 %3830, i8* %26, align 1
  %3831 = icmp eq i32 %3818, 0
  %3832 = zext i1 %3831 to i8
  store i8 %3832, i8* %29, align 1
  %3833 = lshr i32 %3818, 31
  %3834 = trunc i32 %3833 to i8
  store i8 %3834, i8* %32, align 1
  %3835 = lshr i32 %3817, 31
  %3836 = xor i32 %3833, %3835
  %3837 = add nuw nsw i32 %3836, %3835
  %3838 = icmp eq i32 %3837, 2
  %3839 = zext i1 %3838 to i8
  store i8 %3839, i8* %38, align 1
  %3840 = sext i32 %3818 to i64
  store i64 %3840, i64* %RDX.i2069, align 8
  %3841 = shl nsw i64 %3840, 2
  %3842 = add i64 %3815, %3841
  %3843 = add i64 %3632, 16
  store i64 %3843, i64* %3, align 8
  %3844 = inttoptr i64 %3842 to i32*
  %3845 = load i32, i32* %3844, align 4
  %3846 = zext i32 %3845 to i64
  store i64 %3846, i64* %RCX.i2082, align 8
  %3847 = add i64 %3596, -108
  %3848 = add i64 %3632, 19
  store i64 %3848, i64* %3, align 8
  %3849 = inttoptr i64 %3847 to i32*
  store i32 %3845, i32* %3849, align 4
  %3850 = load i64, i64* %RBP.i, align 8
  %3851 = add i64 %3850, -48
  %3852 = load i64, i64* %3, align 8
  %3853 = add i64 %3852, 4
  store i64 %3853, i64* %3, align 8
  %3854 = inttoptr i64 %3851 to i64*
  %3855 = load i64, i64* %3854, align 8
  store i64 %3855, i64* %RAX.i250, align 8
  %3856 = add i64 %3850, -56
  %3857 = add i64 %3852, 8
  store i64 %3857, i64* %3, align 8
  %3858 = inttoptr i64 %3856 to i32*
  %3859 = load i32, i32* %3858, align 4
  %3860 = sext i32 %3859 to i64
  store i64 %3860, i64* %RDX.i2069, align 8
  %3861 = shl nsw i64 %3860, 2
  %3862 = add i64 %3861, %3855
  %3863 = add i64 %3852, 11
  store i64 %3863, i64* %3, align 8
  %3864 = inttoptr i64 %3862 to i32*
  %3865 = load i32, i32* %3864, align 4
  %3866 = zext i32 %3865 to i64
  store i64 %3866, i64* %RCX.i2082, align 8
  %3867 = add i64 %3852, 15
  store i64 %3867, i64* %3, align 8
  %3868 = load i64, i64* %3854, align 8
  store i64 %3868, i64* %RAX.i250, align 8
  %3869 = add i64 %3850, -64
  %3870 = add i64 %3852, 18
  store i64 %3870, i64* %3, align 8
  %3871 = inttoptr i64 %3869 to i32*
  %3872 = load i32, i32* %3871, align 4
  %3873 = add i32 %3872, -1
  %3874 = zext i32 %3873 to i64
  store i64 %3874, i64* %RSI.i2072, align 8
  %3875 = icmp eq i32 %3872, 0
  %3876 = zext i1 %3875 to i8
  store i8 %3876, i8* %14, align 1
  %3877 = and i32 %3873, 255
  %3878 = tail call i32 @llvm.ctpop.i32(i32 %3877)
  %3879 = trunc i32 %3878 to i8
  %3880 = and i8 %3879, 1
  %3881 = xor i8 %3880, 1
  store i8 %3881, i8* %21, align 1
  %3882 = xor i32 %3873, %3872
  %3883 = lshr i32 %3882, 4
  %3884 = trunc i32 %3883 to i8
  %3885 = and i8 %3884, 1
  store i8 %3885, i8* %26, align 1
  %3886 = icmp eq i32 %3873, 0
  %3887 = zext i1 %3886 to i8
  store i8 %3887, i8* %29, align 1
  %3888 = lshr i32 %3873, 31
  %3889 = trunc i32 %3888 to i8
  store i8 %3889, i8* %32, align 1
  %3890 = lshr i32 %3872, 31
  %3891 = xor i32 %3888, %3890
  %3892 = add nuw nsw i32 %3891, %3890
  %3893 = icmp eq i32 %3892, 2
  %3894 = zext i1 %3893 to i8
  store i8 %3894, i8* %38, align 1
  %3895 = sext i32 %3873 to i64
  store i64 %3895, i64* %RDX.i2069, align 8
  %3896 = shl nsw i64 %3895, 2
  %3897 = add i64 %3868, %3896
  %3898 = add i64 %3852, 27
  store i64 %3898, i64* %3, align 8
  %3899 = inttoptr i64 %3897 to i32*
  store i32 %3865, i32* %3899, align 4
  %3900 = load i64, i64* %RBP.i, align 8
  %3901 = add i64 %3900, -108
  %3902 = load i64, i64* %3, align 8
  %3903 = add i64 %3902, 3
  store i64 %3903, i64* %3, align 8
  %3904 = inttoptr i64 %3901 to i32*
  %3905 = load i32, i32* %3904, align 4
  %3906 = zext i32 %3905 to i64
  store i64 %3906, i64* %RCX.i2082, align 8
  %3907 = add i64 %3900, -48
  %3908 = add i64 %3902, 7
  store i64 %3908, i64* %3, align 8
  %3909 = inttoptr i64 %3907 to i64*
  %3910 = load i64, i64* %3909, align 8
  store i64 %3910, i64* %RAX.i250, align 8
  %3911 = add i64 %3900, -56
  %3912 = add i64 %3902, 11
  store i64 %3912, i64* %3, align 8
  %3913 = inttoptr i64 %3911 to i32*
  %3914 = load i32, i32* %3913, align 4
  %3915 = sext i32 %3914 to i64
  store i64 %3915, i64* %RDX.i2069, align 8
  %3916 = shl nsw i64 %3915, 2
  %3917 = add i64 %3916, %3910
  %3918 = add i64 %3902, 14
  store i64 %3918, i64* %3, align 8
  %3919 = inttoptr i64 %3917 to i32*
  store i32 %3905, i32* %3919, align 4
  %.pre92 = load i64, i64* %RBP.i, align 8
  %.pre93 = load i64, i64* %3, align 8
  br label %block_.L_406572

block_.L_406572:                                  ; preds = %block_.L_406536, %block_.L_40645a
  %3920 = phi i64 [ %.pre93, %block_.L_406536 ], [ %3484, %block_.L_40645a ]
  %3921 = phi i64 [ %.pre92, %block_.L_406536 ], [ %3448, %block_.L_40645a ]
  %3922 = add i64 %3921, -64
  %3923 = add i64 %3920, 3
  store i64 %3923, i64* %3, align 8
  %3924 = inttoptr i64 %3922 to i32*
  %3925 = load i32, i32* %3924, align 4
  %3926 = add i32 %3925, -2
  %3927 = zext i32 %3926 to i64
  store i64 %3927, i64* %RAX.i250, align 8
  %3928 = icmp ult i32 %3925, 2
  %3929 = zext i1 %3928 to i8
  store i8 %3929, i8* %14, align 1
  %3930 = and i32 %3926, 255
  %3931 = tail call i32 @llvm.ctpop.i32(i32 %3930)
  %3932 = trunc i32 %3931 to i8
  %3933 = and i8 %3932, 1
  %3934 = xor i8 %3933, 1
  store i8 %3934, i8* %21, align 1
  %3935 = xor i32 %3926, %3925
  %3936 = lshr i32 %3935, 4
  %3937 = trunc i32 %3936 to i8
  %3938 = and i8 %3937, 1
  store i8 %3938, i8* %26, align 1
  %3939 = icmp eq i32 %3926, 0
  %3940 = zext i1 %3939 to i8
  store i8 %3940, i8* %29, align 1
  %3941 = lshr i32 %3926, 31
  %3942 = trunc i32 %3941 to i8
  store i8 %3942, i8* %32, align 1
  %3943 = lshr i32 %3925, 31
  %3944 = xor i32 %3941, %3943
  %3945 = add nuw nsw i32 %3944, %3943
  %3946 = icmp eq i32 %3945, 2
  %3947 = zext i1 %3946 to i8
  store i8 %3947, i8* %38, align 1
  %3948 = add i64 %3921, -52
  %3949 = add i64 %3920, 9
  store i64 %3949, i64* %3, align 8
  %3950 = inttoptr i64 %3948 to i32*
  store i32 %3926, i32* %3950, align 4
  %3951 = load i64, i64* %RBP.i, align 8
  %3952 = add i64 %3951, -64
  %3953 = load i64, i64* %3, align 8
  %3954 = add i64 %3953, 3
  store i64 %3954, i64* %3, align 8
  %3955 = inttoptr i64 %3952 to i32*
  %3956 = load i32, i32* %3955, align 4
  %3957 = add i32 %3956, -1
  %3958 = zext i32 %3957 to i64
  store i64 %3958, i64* %RAX.i250, align 8
  %3959 = icmp eq i32 %3956, 0
  %3960 = zext i1 %3959 to i8
  store i8 %3960, i8* %14, align 1
  %3961 = and i32 %3957, 255
  %3962 = tail call i32 @llvm.ctpop.i32(i32 %3961)
  %3963 = trunc i32 %3962 to i8
  %3964 = and i8 %3963, 1
  %3965 = xor i8 %3964, 1
  store i8 %3965, i8* %21, align 1
  %3966 = xor i32 %3957, %3956
  %3967 = lshr i32 %3966, 4
  %3968 = trunc i32 %3967 to i8
  %3969 = and i8 %3968, 1
  store i8 %3969, i8* %26, align 1
  %3970 = icmp eq i32 %3957, 0
  %3971 = zext i1 %3970 to i8
  store i8 %3971, i8* %29, align 1
  %3972 = lshr i32 %3957, 31
  %3973 = trunc i32 %3972 to i8
  store i8 %3973, i8* %32, align 1
  %3974 = lshr i32 %3956, 31
  %3975 = xor i32 %3972, %3974
  %3976 = add nuw nsw i32 %3975, %3974
  %3977 = icmp eq i32 %3976, 2
  %3978 = zext i1 %3977 to i8
  store i8 %3978, i8* %38, align 1
  %3979 = add i64 %3951, -56
  %3980 = add i64 %3953, 9
  store i64 %3980, i64* %3, align 8
  %3981 = inttoptr i64 %3979 to i32*
  store i32 %3957, i32* %3981, align 4
  %3982 = load i64, i64* %RBP.i, align 8
  %3983 = add i64 %3982, -72
  %3984 = load i64, i64* %3, align 8
  %3985 = add i64 %3984, 7
  store i64 %3985, i64* %3, align 8
  %3986 = inttoptr i64 %3983 to i32*
  store i32 0, i32* %3986, align 4
  %.pre94 = load i64, i64* %3, align 8
  br label %block_.L_40658b

block_.L_40658b:                                  ; preds = %block_.L_40678f, %block_.L_406572
  %3987 = phi i64 [ %.pre94, %block_.L_406572 ], [ %4663, %block_.L_40678f ]
  %MEMORY.23 = phi %struct.Memory* [ %MEMORY.6, %block_.L_406572 ], [ %MEMORY.26, %block_.L_40678f ]
  %3988 = load i64, i64* %RBP.i, align 8
  %3989 = add i64 %3988, -72
  %3990 = add i64 %3987, 3
  store i64 %3990, i64* %3, align 8
  %3991 = inttoptr i64 %3989 to i32*
  %3992 = load i32, i32* %3991, align 4
  %3993 = zext i32 %3992 to i64
  store i64 %3993, i64* %RAX.i250, align 8
  %3994 = add i64 %3988, -64
  %3995 = add i64 %3987, 6
  store i64 %3995, i64* %3, align 8
  %3996 = inttoptr i64 %3994 to i32*
  %3997 = load i32, i32* %3996, align 4
  %3998 = sub i32 %3992, %3997
  %3999 = icmp ult i32 %3992, %3997
  %4000 = zext i1 %3999 to i8
  store i8 %4000, i8* %14, align 1
  %4001 = and i32 %3998, 255
  %4002 = tail call i32 @llvm.ctpop.i32(i32 %4001)
  %4003 = trunc i32 %4002 to i8
  %4004 = and i8 %4003, 1
  %4005 = xor i8 %4004, 1
  store i8 %4005, i8* %21, align 1
  %4006 = xor i32 %3997, %3992
  %4007 = xor i32 %4006, %3998
  %4008 = lshr i32 %4007, 4
  %4009 = trunc i32 %4008 to i8
  %4010 = and i8 %4009, 1
  store i8 %4010, i8* %26, align 1
  %4011 = icmp eq i32 %3998, 0
  %4012 = zext i1 %4011 to i8
  store i8 %4012, i8* %29, align 1
  %4013 = lshr i32 %3998, 31
  %4014 = trunc i32 %4013 to i8
  store i8 %4014, i8* %32, align 1
  %4015 = lshr i32 %3992, 31
  %4016 = lshr i32 %3997, 31
  %4017 = xor i32 %4016, %4015
  %4018 = xor i32 %4013, %4015
  %4019 = add nuw nsw i32 %4018, %4017
  %4020 = icmp eq i32 %4019, 2
  %4021 = zext i1 %4020 to i8
  store i8 %4021, i8* %38, align 1
  %4022 = icmp ne i8 %4014, 0
  %4023 = xor i1 %4022, %4020
  %.v135 = select i1 %4023, i64 12, i64 535
  %4024 = add i64 %3987, %.v135
  store i64 %4024, i64* %3, align 8
  br i1 %4023, label %block_406597, label %block_.L_4067a2

block_406597:                                     ; preds = %block_.L_40658b
  %4025 = add i64 %3988, -16
  %4026 = add i64 %4024, 3
  store i64 %4026, i64* %3, align 8
  %4027 = inttoptr i64 %4025 to i32*
  %4028 = load i32, i32* %4027, align 4
  %4029 = zext i32 %4028 to i64
  store i64 %4029, i64* %RAX.i250, align 8
  store i8 0, i8* %14, align 1
  %4030 = and i32 %4028, 255
  %4031 = tail call i32 @llvm.ctpop.i32(i32 %4030)
  %4032 = trunc i32 %4031 to i8
  %4033 = and i8 %4032, 1
  %4034 = xor i8 %4033, 1
  store i8 %4034, i8* %21, align 1
  %4035 = icmp eq i32 %4028, 0
  %4036 = zext i1 %4035 to i8
  store i8 %4036, i8* %29, align 1
  %4037 = lshr i32 %4028, 31
  %4038 = trunc i32 %4037 to i8
  store i8 %4038, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %4039 = add i64 %3988, -112
  %4040 = add i64 %4024, 8
  store i64 %4040, i64* %3, align 8
  %4041 = inttoptr i64 %4039 to i32*
  store i32 %4028, i32* %4041, align 4
  %4042 = load i64, i64* %3, align 8
  %4043 = load i8, i8* %29, align 1
  %4044 = icmp ne i8 %4043, 0
  %.v167 = select i1 %4044, i64 51, i64 6
  %4045 = add i64 %4042, %.v167
  store i64 %4045, i64* %3, align 8
  %cmpBr_40659f = icmp eq i8 %4043, 1
  br i1 %cmpBr_40659f, label %block_.L_4065d2, label %block_4065a5

block_4065a5:                                     ; preds = %block_406597
  %4046 = load i64, i64* %RBP.i, align 8
  %4047 = add i64 %4046, -112
  %4048 = add i64 %4045, 8
  store i64 %4048, i64* %3, align 8
  %4049 = inttoptr i64 %4047 to i32*
  %4050 = load i32, i32* %4049, align 4
  %4051 = add i32 %4050, -1
  %4052 = zext i32 %4051 to i64
  store i64 %4052, i64* %RAX.i250, align 8
  %4053 = icmp eq i32 %4050, 0
  %4054 = zext i1 %4053 to i8
  store i8 %4054, i8* %14, align 1
  %4055 = and i32 %4051, 255
  %4056 = tail call i32 @llvm.ctpop.i32(i32 %4055)
  %4057 = trunc i32 %4056 to i8
  %4058 = and i8 %4057, 1
  %4059 = xor i8 %4058, 1
  store i8 %4059, i8* %21, align 1
  %4060 = xor i32 %4051, %4050
  %4061 = lshr i32 %4060, 4
  %4062 = trunc i32 %4061 to i8
  %4063 = and i8 %4062, 1
  store i8 %4063, i8* %26, align 1
  %4064 = icmp eq i32 %4051, 0
  %4065 = zext i1 %4064 to i8
  store i8 %4065, i8* %29, align 1
  %4066 = lshr i32 %4051, 31
  %4067 = trunc i32 %4066 to i8
  store i8 %4067, i8* %32, align 1
  %4068 = lshr i32 %4050, 31
  %4069 = xor i32 %4066, %4068
  %4070 = add nuw nsw i32 %4069, %4068
  %4071 = icmp eq i32 %4070, 2
  %4072 = zext i1 %4071 to i8
  store i8 %4072, i8* %38, align 1
  %4073 = add i64 %4046, -116
  %4074 = add i64 %4045, 14
  store i64 %4074, i64* %3, align 8
  %4075 = inttoptr i64 %4073 to i32*
  store i32 %4051, i32* %4075, align 4
  %4076 = load i64, i64* %3, align 8
  %4077 = load i8, i8* %29, align 1
  %4078 = icmp ne i8 %4077, 0
  %.v168 = select i1 %4078, i64 258, i64 6
  %4079 = add i64 %4076, %.v168
  store i64 %4079, i64* %3, align 8
  %cmpBr_4065b3 = icmp eq i8 %4077, 1
  %4080 = load i64, i64* %RBP.i, align 8
  br i1 %cmpBr_4065b3, label %block_.L_4066b5, label %block_4065b9

block_4065b9:                                     ; preds = %block_4065a5
  %4081 = add i64 %4080, -112
  %4082 = add i64 %4079, 8
  store i64 %4082, i64* %3, align 8
  %4083 = inttoptr i64 %4081 to i32*
  %4084 = load i32, i32* %4083, align 4
  %4085 = add i32 %4084, -2
  %4086 = zext i32 %4085 to i64
  store i64 %4086, i64* %RAX.i250, align 8
  %4087 = icmp ult i32 %4084, 2
  %4088 = zext i1 %4087 to i8
  store i8 %4088, i8* %14, align 1
  %4089 = and i32 %4085, 255
  %4090 = tail call i32 @llvm.ctpop.i32(i32 %4089)
  %4091 = trunc i32 %4090 to i8
  %4092 = and i8 %4091, 1
  %4093 = xor i8 %4092, 1
  store i8 %4093, i8* %21, align 1
  %4094 = xor i32 %4085, %4084
  %4095 = lshr i32 %4094, 4
  %4096 = trunc i32 %4095 to i8
  %4097 = and i8 %4096, 1
  store i8 %4097, i8* %26, align 1
  %4098 = icmp eq i32 %4085, 0
  %4099 = zext i1 %4098 to i8
  store i8 %4099, i8* %29, align 1
  %4100 = lshr i32 %4085, 31
  %4101 = trunc i32 %4100 to i8
  store i8 %4101, i8* %32, align 1
  %4102 = lshr i32 %4084, 31
  %4103 = xor i32 %4100, %4102
  %4104 = add nuw nsw i32 %4103, %4102
  %4105 = icmp eq i32 %4104, 2
  %4106 = zext i1 %4105 to i8
  store i8 %4106, i8* %38, align 1
  %4107 = add i64 %4080, -120
  %4108 = add i64 %4079, 14
  store i64 %4108, i64* %3, align 8
  %4109 = inttoptr i64 %4107 to i32*
  store i32 %4085, i32* %4109, align 4
  %4110 = load i64, i64* %3, align 8
  %4111 = load i8, i8* %29, align 1
  %4112 = icmp ne i8 %4111, 0
  %.v169 = select i1 %4112, i64 99, i64 6
  %4113 = add i64 %4110, %.v169
  store i64 %4113, i64* %3, align 8
  %cmpBr_4065c7 = icmp eq i8 %4111, 1
  br i1 %cmpBr_4065c7, label %block_.L_40662a, label %block_4065cd

block_4065cd:                                     ; preds = %block_4065b9
  %4114 = add i64 %4113, add (i64 ptrtoint (%G_0x4e0a4__rip__type* @G_0x4e0a4__rip_ to i64), i64 367)
  %4115 = add i64 %4113, 375
  store i64 %4115, i64* %3, align 8
  %4116 = inttoptr i64 %4114 to i64*
  %4117 = load i64, i64* %4116, align 8
  store i64 %4117, i64* %645, align 1
  store double 0.000000e+00, double* %646, align 1
  %4118 = load i64, i64* %RBP.i, align 8
  %4119 = add i64 %4118, -40
  %4120 = add i64 %4113, 379
  store i64 %4120, i64* %3, align 8
  %4121 = inttoptr i64 %4119 to i64*
  %4122 = load i64, i64* %4121, align 8
  store i64 %4122, i64* %RAX.i250, align 8
  %4123 = add i64 %4118, -52
  %4124 = add i64 %4113, 383
  store i64 %4124, i64* %3, align 8
  %4125 = inttoptr i64 %4123 to i32*
  %4126 = load i32, i32* %4125, align 4
  %4127 = sext i32 %4126 to i64
  store i64 %4127, i64* %RCX.i2082, align 8
  %4128 = shl nsw i64 %4127, 3
  %4129 = add i64 %4128, %4122
  %4130 = add i64 %4113, 387
  store i64 %4130, i64* %3, align 8
  %4131 = inttoptr i64 %4129 to i64*
  %4132 = load i64, i64* %4131, align 8
  store i64 %4132, i64* %RAX.i250, align 8
  %4133 = add i64 %4118, -72
  %4134 = add i64 %4113, 391
  store i64 %4134, i64* %3, align 8
  %4135 = inttoptr i64 %4133 to i32*
  %4136 = load i32, i32* %4135, align 4
  %4137 = sext i32 %4136 to i64
  store i64 %4137, i64* %RCX.i2082, align 8
  %4138 = shl nsw i64 %4137, 2
  %4139 = add i64 %4138, %4132
  %4140 = add i64 %4113, 396
  store i64 %4140, i64* %3, align 8
  %4141 = inttoptr i64 %4139 to i32*
  %4142 = load i32, i32* %4141, align 4
  store i32 %4142, i32* %637, align 1
  store float 0.000000e+00, float* %639, align 1
  store float 0.000000e+00, float* %641, align 1
  store float 0.000000e+00, float* %643, align 1
  %4143 = add i64 %4113, 400
  store i64 %4143, i64* %3, align 8
  %4144 = load i64, i64* %4121, align 8
  store i64 %4144, i64* %RAX.i250, align 8
  %4145 = add i64 %4118, -56
  %4146 = add i64 %4113, 404
  store i64 %4146, i64* %3, align 8
  %4147 = inttoptr i64 %4145 to i32*
  %4148 = load i32, i32* %4147, align 4
  %4149 = sext i32 %4148 to i64
  store i64 %4149, i64* %RCX.i2082, align 8
  %4150 = shl nsw i64 %4149, 3
  %4151 = add i64 %4150, %4144
  %4152 = add i64 %4113, 408
  store i64 %4152, i64* %3, align 8
  %4153 = inttoptr i64 %4151 to i64*
  %4154 = load i64, i64* %4153, align 8
  store i64 %4154, i64* %RAX.i250, align 8
  %4155 = add i64 %4113, 412
  store i64 %4155, i64* %3, align 8
  %4156 = load i32, i32* %4135, align 4
  %4157 = sext i32 %4156 to i64
  store i64 %4157, i64* %RCX.i2082, align 8
  %4158 = shl nsw i64 %4157, 2
  %4159 = add i64 %4158, %4154
  %4160 = add i64 %4113, 417
  store i64 %4160, i64* %3, align 8
  %4161 = load <2 x float>, <2 x float>* %644, align 1
  %4162 = load <2 x i32>, <2 x i32>* %648, align 1
  %4163 = inttoptr i64 %4159 to float*
  %4164 = load float, float* %4163, align 4
  %4165 = extractelement <2 x float> %4161, i32 0
  %4166 = fadd float %4165, %4164
  store float %4166, float* %647, align 1
  %4167 = bitcast <2 x float> %4161 to <2 x i32>
  %4168 = extractelement <2 x i32> %4167, i32 1
  store i32 %4168, i32* %649, align 1
  %4169 = extractelement <2 x i32> %4162, i32 0
  store i32 %4169, i32* %650, align 1
  %4170 = extractelement <2 x i32> %4162, i32 1
  store i32 %4170, i32* %651, align 1
  %4171 = load <2 x float>, <2 x float>* %644, align 1
  %4172 = extractelement <2 x float> %4171, i32 0
  %4173 = fpext float %4172 to double
  %4174 = bitcast i64 %4117 to double
  %4175 = fdiv double %4173, %4174
  store double %4175, double* %652, align 1
  %.cast = bitcast i64 %4117 to <2 x i32>
  %4176 = fptrunc double %4175 to float
  store float %4176, float* %628, align 1
  %4177 = extractelement <2 x i32> %.cast, i32 1
  store i32 %4177, i32* %653, align 1
  store i32 0, i32* %492, align 1
  store i32 0, i32* %654, align 1
  %4178 = load i64, i64* %RBP.i, align 8
  %4179 = add i64 %4178, -40
  %4180 = add i64 %4113, 433
  store i64 %4180, i64* %3, align 8
  %4181 = inttoptr i64 %4179 to i64*
  %4182 = load i64, i64* %4181, align 8
  store i64 %4182, i64* %RAX.i250, align 8
  %4183 = add i64 %4178, -52
  %4184 = add i64 %4113, 437
  store i64 %4184, i64* %3, align 8
  %4185 = inttoptr i64 %4183 to i32*
  %4186 = load i32, i32* %4185, align 4
  %4187 = sext i32 %4186 to i64
  store i64 %4187, i64* %RCX.i2082, align 8
  %4188 = shl nsw i64 %4187, 3
  %4189 = add i64 %4188, %4182
  %4190 = add i64 %4113, 441
  store i64 %4190, i64* %3, align 8
  %4191 = inttoptr i64 %4189 to i64*
  %4192 = load i64, i64* %4191, align 8
  store i64 %4192, i64* %RAX.i250, align 8
  %4193 = add i64 %4178, -72
  %4194 = add i64 %4113, 445
  store i64 %4194, i64* %3, align 8
  %4195 = inttoptr i64 %4193 to i32*
  %4196 = load i32, i32* %4195, align 4
  %4197 = sext i32 %4196 to i64
  store i64 %4197, i64* %RCX.i2082, align 8
  %4198 = shl nsw i64 %4197, 2
  %4199 = add i64 %4198, %4192
  %4200 = add i64 %4113, 450
  store i64 %4200, i64* %3, align 8
  %4201 = load <2 x float>, <2 x float>* %634, align 1
  %4202 = extractelement <2 x float> %4201, i32 0
  %4203 = inttoptr i64 %4199 to float*
  store float %4202, float* %4203, align 4
  %.pre104 = load i64, i64* %3, align 8
  br label %block_.L_40678f

block_.L_4065d2:                                  ; preds = %block_406597
  %4204 = add i64 %4045, ptrtoint (%G_0x4e20e__rip__type* @G_0x4e20e__rip_ to i64)
  %4205 = add i64 %4045, 8
  store i64 %4205, i64* %3, align 8
  %4206 = inttoptr i64 %4204 to i64*
  %4207 = load i64, i64* %4206, align 8
  store i64 %4207, i64* %645, align 1
  store double 0.000000e+00, double* %646, align 1
  %4208 = load i64, i64* %RBP.i, align 8
  %4209 = add i64 %4208, -40
  %4210 = add i64 %4045, 12
  store i64 %4210, i64* %3, align 8
  %4211 = inttoptr i64 %4209 to i64*
  %4212 = load i64, i64* %4211, align 8
  store i64 %4212, i64* %RAX.i250, align 8
  %4213 = add i64 %4208, -52
  %4214 = add i64 %4045, 16
  store i64 %4214, i64* %3, align 8
  %4215 = inttoptr i64 %4213 to i32*
  %4216 = load i32, i32* %4215, align 4
  %4217 = sext i32 %4216 to i64
  store i64 %4217, i64* %RCX.i2082, align 8
  %4218 = shl nsw i64 %4217, 3
  %4219 = add i64 %4218, %4212
  %4220 = add i64 %4045, 20
  store i64 %4220, i64* %3, align 8
  %4221 = inttoptr i64 %4219 to i64*
  %4222 = load i64, i64* %4221, align 8
  store i64 %4222, i64* %RAX.i250, align 8
  %4223 = add i64 %4208, -72
  %4224 = add i64 %4045, 24
  store i64 %4224, i64* %3, align 8
  %4225 = inttoptr i64 %4223 to i32*
  %4226 = load i32, i32* %4225, align 4
  %4227 = sext i32 %4226 to i64
  store i64 %4227, i64* %RCX.i2082, align 8
  %4228 = shl nsw i64 %4227, 2
  %4229 = add i64 %4228, %4222
  %4230 = add i64 %4045, 29
  store i64 %4230, i64* %3, align 8
  %4231 = inttoptr i64 %4229 to i32*
  %4232 = load i32, i32* %4231, align 4
  store i32 %4232, i32* %637, align 1
  store float 0.000000e+00, float* %639, align 1
  store float 0.000000e+00, float* %641, align 1
  store float 0.000000e+00, float* %643, align 1
  %4233 = add i64 %4045, 33
  store i64 %4233, i64* %3, align 8
  %4234 = load i64, i64* %4211, align 8
  store i64 %4234, i64* %RAX.i250, align 8
  %4235 = add i64 %4208, -56
  %4236 = add i64 %4045, 37
  store i64 %4236, i64* %3, align 8
  %4237 = inttoptr i64 %4235 to i32*
  %4238 = load i32, i32* %4237, align 4
  %4239 = sext i32 %4238 to i64
  store i64 %4239, i64* %RCX.i2082, align 8
  %4240 = shl nsw i64 %4239, 3
  %4241 = add i64 %4240, %4234
  %4242 = add i64 %4045, 41
  store i64 %4242, i64* %3, align 8
  %4243 = inttoptr i64 %4241 to i64*
  %4244 = load i64, i64* %4243, align 8
  store i64 %4244, i64* %RAX.i250, align 8
  %4245 = add i64 %4045, 45
  store i64 %4245, i64* %3, align 8
  %4246 = load i32, i32* %4225, align 4
  %4247 = sext i32 %4246 to i64
  store i64 %4247, i64* %RCX.i2082, align 8
  %4248 = shl nsw i64 %4247, 2
  %4249 = add i64 %4248, %4244
  %4250 = add i64 %4045, 50
  store i64 %4250, i64* %3, align 8
  %4251 = load <2 x float>, <2 x float>* %644, align 1
  %4252 = load <2 x i32>, <2 x i32>* %648, align 1
  %4253 = inttoptr i64 %4249 to float*
  %4254 = load float, float* %4253, align 4
  %4255 = extractelement <2 x float> %4251, i32 0
  %4256 = fadd float %4255, %4254
  store float %4256, float* %647, align 1
  %4257 = bitcast <2 x float> %4251 to <2 x i32>
  %4258 = extractelement <2 x i32> %4257, i32 1
  store i32 %4258, i32* %649, align 1
  %4259 = extractelement <2 x i32> %4252, i32 0
  store i32 %4259, i32* %650, align 1
  %4260 = extractelement <2 x i32> %4252, i32 1
  store i32 %4260, i32* %651, align 1
  %4261 = load <2 x float>, <2 x float>* %644, align 1
  %4262 = extractelement <2 x float> %4261, i32 0
  %4263 = fpext float %4262 to double
  %4264 = bitcast i64 %4207 to double
  %4265 = fdiv double %4263, %4264
  store double %4265, double* %652, align 1
  %.cast51 = bitcast i64 %4207 to <2 x i32>
  %4266 = fptrunc double %4265 to float
  store float %4266, float* %628, align 1
  %4267 = extractelement <2 x i32> %.cast51, i32 1
  store i32 %4267, i32* %653, align 1
  store i32 0, i32* %492, align 1
  store i32 0, i32* %654, align 1
  %4268 = load i64, i64* %RBP.i, align 8
  %4269 = add i64 %4268, -40
  %4270 = add i64 %4045, 66
  store i64 %4270, i64* %3, align 8
  %4271 = inttoptr i64 %4269 to i64*
  %4272 = load i64, i64* %4271, align 8
  store i64 %4272, i64* %RAX.i250, align 8
  %4273 = add i64 %4268, -52
  %4274 = add i64 %4045, 70
  store i64 %4274, i64* %3, align 8
  %4275 = inttoptr i64 %4273 to i32*
  %4276 = load i32, i32* %4275, align 4
  %4277 = sext i32 %4276 to i64
  store i64 %4277, i64* %RCX.i2082, align 8
  %4278 = shl nsw i64 %4277, 3
  %4279 = add i64 %4278, %4272
  %4280 = add i64 %4045, 74
  store i64 %4280, i64* %3, align 8
  %4281 = inttoptr i64 %4279 to i64*
  %4282 = load i64, i64* %4281, align 8
  store i64 %4282, i64* %RAX.i250, align 8
  %4283 = add i64 %4268, -72
  %4284 = add i64 %4045, 78
  store i64 %4284, i64* %3, align 8
  %4285 = inttoptr i64 %4283 to i32*
  %4286 = load i32, i32* %4285, align 4
  %4287 = sext i32 %4286 to i64
  store i64 %4287, i64* %RCX.i2082, align 8
  %4288 = shl nsw i64 %4287, 2
  %4289 = add i64 %4288, %4282
  %4290 = add i64 %4045, 83
  store i64 %4290, i64* %3, align 8
  %4291 = load <2 x float>, <2 x float>* %634, align 1
  %4292 = extractelement <2 x float> %4291, i32 0
  %4293 = inttoptr i64 %4289 to float*
  store float %4292, float* %4293, align 4
  %4294 = load i64, i64* %3, align 8
  %4295 = add i64 %4294, 362
  store i64 %4295, i64* %3, align 8
  br label %block_.L_40678f

block_.L_40662a:                                  ; preds = %block_4065b9
  %4296 = load i64, i64* %RBP.i, align 8
  %4297 = add i64 %4296, -40
  %4298 = add i64 %4113, 4
  store i64 %4298, i64* %3, align 8
  %4299 = inttoptr i64 %4297 to i64*
  %4300 = load i64, i64* %4299, align 8
  store i64 %4300, i64* %RAX.i250, align 8
  %4301 = add i64 %4296, -52
  %4302 = add i64 %4113, 8
  store i64 %4302, i64* %3, align 8
  %4303 = inttoptr i64 %4301 to i32*
  %4304 = load i32, i32* %4303, align 4
  %4305 = sext i32 %4304 to i64
  store i64 %4305, i64* %RCX.i2082, align 8
  %4306 = shl nsw i64 %4305, 3
  %4307 = add i64 %4306, %4300
  %4308 = add i64 %4113, 12
  store i64 %4308, i64* %3, align 8
  %4309 = inttoptr i64 %4307 to i64*
  %4310 = load i64, i64* %4309, align 8
  store i64 %4310, i64* %RAX.i250, align 8
  %4311 = add i64 %4296, -72
  %4312 = add i64 %4113, 16
  store i64 %4312, i64* %3, align 8
  %4313 = inttoptr i64 %4311 to i32*
  %4314 = load i32, i32* %4313, align 4
  %4315 = sext i32 %4314 to i64
  store i64 %4315, i64* %RCX.i2082, align 8
  %4316 = shl nsw i64 %4315, 2
  %4317 = add i64 %4316, %4310
  %4318 = add i64 %4113, 21
  store i64 %4318, i64* %3, align 8
  %4319 = inttoptr i64 %4317 to i32*
  %4320 = load i32, i32* %4319, align 4
  store i32 %4320, i32* %629, align 1
  store float 0.000000e+00, float* %631, align 1
  store float 0.000000e+00, float* %111, align 1
  store float 0.000000e+00, float* %633, align 1
  %4321 = add i64 %4113, 25
  store i64 %4321, i64* %3, align 8
  %4322 = load i64, i64* %4299, align 8
  store i64 %4322, i64* %RAX.i250, align 8
  %4323 = add i64 %4296, -56
  %4324 = add i64 %4113, 29
  store i64 %4324, i64* %3, align 8
  %4325 = inttoptr i64 %4323 to i32*
  %4326 = load i32, i32* %4325, align 4
  %4327 = sext i32 %4326 to i64
  store i64 %4327, i64* %RCX.i2082, align 8
  %4328 = shl nsw i64 %4327, 3
  %4329 = add i64 %4328, %4322
  %4330 = add i64 %4113, 33
  store i64 %4330, i64* %3, align 8
  %4331 = inttoptr i64 %4329 to i64*
  %4332 = load i64, i64* %4331, align 8
  store i64 %4332, i64* %RAX.i250, align 8
  %4333 = add i64 %4113, 37
  store i64 %4333, i64* %3, align 8
  %4334 = load i32, i32* %4313, align 4
  %4335 = sext i32 %4334 to i64
  store i64 %4335, i64* %RCX.i2082, align 8
  %4336 = shl nsw i64 %4335, 2
  %4337 = add i64 %4336, %4332
  %4338 = add i64 %4113, 42
  store i64 %4338, i64* %3, align 8
  %4339 = inttoptr i64 %4337 to i32*
  %4340 = load i32, i32* %4339, align 4
  store i32 %4340, i32* %637, align 1
  store float 0.000000e+00, float* %639, align 1
  store float 0.000000e+00, float* %641, align 1
  store float 0.000000e+00, float* %643, align 1
  %4341 = add i64 %4113, 45
  store i64 %4341, i64* %3, align 8
  %4342 = load <2 x float>, <2 x float>* %644, align 1
  %4343 = extractelement <2 x float> %4342, i32 0
  %4344 = load <2 x float>, <2 x float>* %634, align 1
  %4345 = extractelement <2 x float> %4344, i32 0
  %4346 = fcmp uno float %4343, %4345
  br i1 %4346, label %4347, label %4357

; <label>:4347:                                   ; preds = %block_.L_40662a
  %4348 = fadd float %4343, %4345
  %4349 = bitcast float %4348 to i32
  %4350 = and i32 %4349, 2143289344
  %4351 = icmp eq i32 %4350, 2139095040
  %4352 = and i32 %4349, 4194303
  %4353 = icmp ne i32 %4352, 0
  %4354 = and i1 %4351, %4353
  br i1 %4354, label %4355, label %4363

; <label>:4355:                                   ; preds = %4347
  %4356 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4341, %struct.Memory* %MEMORY.23)
  %.pre96 = load i64, i64* %3, align 8
  %.pre97 = load i8, i8* %29, align 1
  %.pre98 = load i64, i64* %RBP.i, align 8
  br label %routine_ucomiss__xmm0___xmm1.exit

; <label>:4357:                                   ; preds = %block_.L_40662a
  %4358 = fcmp ogt float %4343, %4345
  br i1 %4358, label %4363, label %4359

; <label>:4359:                                   ; preds = %4357
  %4360 = fcmp olt float %4343, %4345
  br i1 %4360, label %4363, label %4361

; <label>:4361:                                   ; preds = %4359
  %4362 = fcmp oeq float %4343, %4345
  br i1 %4362, label %4363, label %4367

; <label>:4363:                                   ; preds = %4361, %4359, %4357, %4347
  %4364 = phi i8 [ 0, %4357 ], [ 0, %4359 ], [ 1, %4361 ], [ 1, %4347 ]
  %4365 = phi i8 [ 0, %4357 ], [ 0, %4359 ], [ 0, %4361 ], [ 1, %4347 ]
  %4366 = phi i8 [ 0, %4357 ], [ 1, %4359 ], [ 0, %4361 ], [ 1, %4347 ]
  store i8 %4364, i8* %29, align 1
  store i8 %4365, i8* %21, align 1
  store i8 %4366, i8* %14, align 1
  br label %4367

; <label>:4367:                                   ; preds = %4363, %4361
  %4368 = phi i8 [ %4364, %4363 ], [ 1, %4361 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit

routine_ucomiss__xmm0___xmm1.exit:                ; preds = %4367, %4355
  %4369 = phi i64 [ %.pre98, %4355 ], [ %4296, %4367 ]
  %4370 = phi i8 [ %.pre97, %4355 ], [ %4368, %4367 ]
  %4371 = phi i64 [ %.pre96, %4355 ], [ %4341, %4367 ]
  %4372 = phi %struct.Memory* [ %4356, %4355 ], [ %MEMORY.23, %4367 ]
  %4373 = load i8, i8* %14, align 1
  %4374 = or i8 %4370, %4373
  %4375 = icmp ne i8 %4374, 0
  %.v170 = select i1 %4375, i64 37, i64 6
  %4376 = add i64 %4371, %.v170
  %4377 = add i64 %4369, -40
  %4378 = add i64 %4376, 4
  store i64 %4378, i64* %3, align 8
  %4379 = inttoptr i64 %4377 to i64*
  %4380 = load i64, i64* %4379, align 8
  store i64 %4380, i64* %RAX.i250, align 8
  br i1 %4375, label %block_.L_40667c, label %block_40665d

block_40665d:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit
  %4381 = add i64 %4369, -52
  %4382 = add i64 %4376, 8
  store i64 %4382, i64* %3, align 8
  %4383 = inttoptr i64 %4381 to i32*
  %4384 = load i32, i32* %4383, align 4
  %4385 = sext i32 %4384 to i64
  store i64 %4385, i64* %RCX.i2082, align 8
  %4386 = shl nsw i64 %4385, 3
  %4387 = add i64 %4386, %4380
  %4388 = add i64 %4376, 12
  store i64 %4388, i64* %3, align 8
  %4389 = inttoptr i64 %4387 to i64*
  %4390 = load i64, i64* %4389, align 8
  store i64 %4390, i64* %RAX.i250, align 8
  %4391 = add i64 %4369, -72
  %4392 = add i64 %4376, 16
  store i64 %4392, i64* %3, align 8
  %4393 = inttoptr i64 %4391 to i32*
  %4394 = load i32, i32* %4393, align 4
  %4395 = sext i32 %4394 to i64
  store i64 %4395, i64* %RCX.i2082, align 8
  %4396 = shl nsw i64 %4395, 2
  %4397 = add i64 %4396, %4390
  %4398 = add i64 %4376, 21
  store i64 %4398, i64* %3, align 8
  %4399 = inttoptr i64 %4397 to i32*
  %4400 = load i32, i32* %4399, align 4
  store i32 %4400, i32* %629, align 1
  store float 0.000000e+00, float* %631, align 1
  store float 0.000000e+00, float* %111, align 1
  store float 0.000000e+00, float* %633, align 1
  %4401 = add i64 %4369, -124
  %4402 = add i64 %4376, 26
  store i64 %4402, i64* %3, align 8
  %4403 = load <2 x float>, <2 x float>* %634, align 1
  %4404 = extractelement <2 x float> %4403, i32 0
  %4405 = inttoptr i64 %4401 to float*
  store float %4404, float* %4405, align 4
  %4406 = load i64, i64* %3, align 8
  %4407 = add i64 %4406, 31
  store i64 %4407, i64* %3, align 8
  br label %block_.L_406696

block_.L_40667c:                                  ; preds = %routine_ucomiss__xmm0___xmm1.exit
  %4408 = add i64 %4369, -56
  %4409 = add i64 %4376, 8
  store i64 %4409, i64* %3, align 8
  %4410 = inttoptr i64 %4408 to i32*
  %4411 = load i32, i32* %4410, align 4
  %4412 = sext i32 %4411 to i64
  store i64 %4412, i64* %RCX.i2082, align 8
  %4413 = shl nsw i64 %4412, 3
  %4414 = add i64 %4413, %4380
  %4415 = add i64 %4376, 12
  store i64 %4415, i64* %3, align 8
  %4416 = inttoptr i64 %4414 to i64*
  %4417 = load i64, i64* %4416, align 8
  store i64 %4417, i64* %RAX.i250, align 8
  %4418 = add i64 %4369, -72
  %4419 = add i64 %4376, 16
  store i64 %4419, i64* %3, align 8
  %4420 = inttoptr i64 %4418 to i32*
  %4421 = load i32, i32* %4420, align 4
  %4422 = sext i32 %4421 to i64
  store i64 %4422, i64* %RCX.i2082, align 8
  %4423 = shl nsw i64 %4422, 2
  %4424 = add i64 %4423, %4417
  %4425 = add i64 %4376, 21
  store i64 %4425, i64* %3, align 8
  %4426 = inttoptr i64 %4424 to i32*
  %4427 = load i32, i32* %4426, align 4
  store i32 %4427, i32* %629, align 1
  store float 0.000000e+00, float* %631, align 1
  store float 0.000000e+00, float* %111, align 1
  store float 0.000000e+00, float* %633, align 1
  %4428 = add i64 %4369, -124
  %4429 = add i64 %4376, 26
  store i64 %4429, i64* %3, align 8
  %4430 = load <2 x float>, <2 x float>* %634, align 1
  %4431 = extractelement <2 x float> %4430, i32 0
  %4432 = inttoptr i64 %4428 to float*
  store float %4431, float* %4432, align 4
  %.pre99 = load i64, i64* %3, align 8
  br label %block_.L_406696

block_.L_406696:                                  ; preds = %block_.L_40667c, %block_40665d
  %4433 = phi i64 [ %.pre99, %block_.L_40667c ], [ %4407, %block_40665d ]
  %4434 = load i64, i64* %RBP.i, align 8
  %4435 = add i64 %4434, -124
  %4436 = add i64 %4433, 5
  store i64 %4436, i64* %3, align 8
  %4437 = inttoptr i64 %4435 to i32*
  %4438 = load i32, i32* %4437, align 4
  store i32 %4438, i32* %629, align 1
  store float 0.000000e+00, float* %631, align 1
  store float 0.000000e+00, float* %111, align 1
  store float 0.000000e+00, float* %633, align 1
  %4439 = add i64 %4434, -40
  %4440 = add i64 %4433, 9
  store i64 %4440, i64* %3, align 8
  %4441 = inttoptr i64 %4439 to i64*
  %4442 = load i64, i64* %4441, align 8
  store i64 %4442, i64* %RAX.i250, align 8
  %4443 = add i64 %4434, -52
  %4444 = add i64 %4433, 13
  store i64 %4444, i64* %3, align 8
  %4445 = inttoptr i64 %4443 to i32*
  %4446 = load i32, i32* %4445, align 4
  %4447 = sext i32 %4446 to i64
  store i64 %4447, i64* %RCX.i2082, align 8
  %4448 = shl nsw i64 %4447, 3
  %4449 = add i64 %4448, %4442
  %4450 = add i64 %4433, 17
  store i64 %4450, i64* %3, align 8
  %4451 = inttoptr i64 %4449 to i64*
  %4452 = load i64, i64* %4451, align 8
  store i64 %4452, i64* %RAX.i250, align 8
  %4453 = add i64 %4434, -72
  %4454 = add i64 %4433, 21
  store i64 %4454, i64* %3, align 8
  %4455 = inttoptr i64 %4453 to i32*
  %4456 = load i32, i32* %4455, align 4
  %4457 = sext i32 %4456 to i64
  store i64 %4457, i64* %RCX.i2082, align 8
  %4458 = shl nsw i64 %4457, 2
  %4459 = add i64 %4458, %4452
  %4460 = add i64 %4433, 26
  store i64 %4460, i64* %3, align 8
  %4461 = load <2 x float>, <2 x float>* %634, align 1
  %4462 = extractelement <2 x float> %4461, i32 0
  %4463 = inttoptr i64 %4459 to float*
  store float %4462, float* %4463, align 4
  %4464 = load i64, i64* %3, align 8
  %4465 = add i64 %4464, 223
  store i64 %4465, i64* %3, align 8
  br label %block_.L_40678f

block_.L_4066b5:                                  ; preds = %block_4065a5
  %4466 = add i64 %4080, -40
  %4467 = add i64 %4079, 4
  store i64 %4467, i64* %3, align 8
  %4468 = inttoptr i64 %4466 to i64*
  %4469 = load i64, i64* %4468, align 8
  store i64 %4469, i64* %RAX.i250, align 8
  %4470 = add i64 %4080, -52
  %4471 = add i64 %4079, 8
  store i64 %4471, i64* %3, align 8
  %4472 = inttoptr i64 %4470 to i32*
  %4473 = load i32, i32* %4472, align 4
  %4474 = sext i32 %4473 to i64
  store i64 %4474, i64* %RCX.i2082, align 8
  %4475 = shl nsw i64 %4474, 3
  %4476 = add i64 %4475, %4469
  %4477 = add i64 %4079, 12
  store i64 %4477, i64* %3, align 8
  %4478 = inttoptr i64 %4476 to i64*
  %4479 = load i64, i64* %4478, align 8
  store i64 %4479, i64* %RAX.i250, align 8
  %4480 = add i64 %4080, -72
  %4481 = add i64 %4079, 16
  store i64 %4481, i64* %3, align 8
  %4482 = inttoptr i64 %4480 to i32*
  %4483 = load i32, i32* %4482, align 4
  %4484 = sext i32 %4483 to i64
  store i64 %4484, i64* %RCX.i2082, align 8
  %4485 = shl nsw i64 %4484, 2
  %4486 = add i64 %4485, %4479
  %4487 = add i64 %4079, 21
  store i64 %4487, i64* %3, align 8
  %4488 = inttoptr i64 %4486 to i32*
  %4489 = load i32, i32* %4488, align 4
  store i32 %4489, i32* %629, align 1
  store float 0.000000e+00, float* %631, align 1
  store float 0.000000e+00, float* %111, align 1
  store float 0.000000e+00, float* %633, align 1
  %4490 = add i64 %4079, 25
  store i64 %4490, i64* %3, align 8
  %4491 = load i64, i64* %4468, align 8
  store i64 %4491, i64* %RAX.i250, align 8
  %4492 = add i64 %4080, -56
  %4493 = add i64 %4079, 29
  store i64 %4493, i64* %3, align 8
  %4494 = inttoptr i64 %4492 to i32*
  %4495 = load i32, i32* %4494, align 4
  %4496 = sext i32 %4495 to i64
  store i64 %4496, i64* %RCX.i2082, align 8
  %4497 = shl nsw i64 %4496, 3
  %4498 = add i64 %4497, %4491
  %4499 = add i64 %4079, 33
  store i64 %4499, i64* %3, align 8
  %4500 = inttoptr i64 %4498 to i64*
  %4501 = load i64, i64* %4500, align 8
  store i64 %4501, i64* %RAX.i250, align 8
  %4502 = add i64 %4079, 37
  store i64 %4502, i64* %3, align 8
  %4503 = load i32, i32* %4482, align 4
  %4504 = sext i32 %4503 to i64
  store i64 %4504, i64* %RCX.i2082, align 8
  %4505 = shl nsw i64 %4504, 2
  %4506 = add i64 %4505, %4501
  %4507 = add i64 %4079, 41
  store i64 %4507, i64* %3, align 8
  %4508 = load <2 x float>, <2 x float>* %634, align 1
  %4509 = extractelement <2 x float> %4508, i32 0
  %4510 = inttoptr i64 %4506 to float*
  %4511 = load float, float* %4510, align 4
  %4512 = fcmp uno float %4509, %4511
  br i1 %4512, label %4513, label %4523

; <label>:4513:                                   ; preds = %block_.L_4066b5
  %4514 = fadd float %4509, %4511
  %4515 = bitcast float %4514 to i32
  %4516 = and i32 %4515, 2143289344
  %4517 = icmp eq i32 %4516, 2139095040
  %4518 = and i32 %4515, 4194303
  %4519 = icmp ne i32 %4518, 0
  %4520 = and i1 %4517, %4519
  br i1 %4520, label %4521, label %4529

; <label>:4521:                                   ; preds = %4513
  %4522 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4507, %struct.Memory* %MEMORY.23)
  %.pre100 = load i64, i64* %3, align 8
  %.pre101 = load i8, i8* %29, align 1
  %.pre102 = load i64, i64* %RBP.i, align 8
  br label %routine_ucomiss___rax__rcx_4____xmm0.exit

; <label>:4523:                                   ; preds = %block_.L_4066b5
  %4524 = fcmp ogt float %4509, %4511
  br i1 %4524, label %4529, label %4525

; <label>:4525:                                   ; preds = %4523
  %4526 = fcmp olt float %4509, %4511
  br i1 %4526, label %4529, label %4527

; <label>:4527:                                   ; preds = %4525
  %4528 = fcmp oeq float %4509, %4511
  br i1 %4528, label %4529, label %4533

; <label>:4529:                                   ; preds = %4527, %4525, %4523, %4513
  %4530 = phi i8 [ 0, %4523 ], [ 0, %4525 ], [ 1, %4527 ], [ 1, %4513 ]
  %4531 = phi i8 [ 0, %4523 ], [ 0, %4525 ], [ 0, %4527 ], [ 1, %4513 ]
  %4532 = phi i8 [ 0, %4523 ], [ 1, %4525 ], [ 0, %4527 ], [ 1, %4513 ]
  store i8 %4530, i8* %29, align 1
  store i8 %4531, i8* %21, align 1
  store i8 %4532, i8* %14, align 1
  br label %4533

; <label>:4533:                                   ; preds = %4529, %4527
  %4534 = phi i8 [ %4530, %4529 ], [ 1, %4527 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomiss___rax__rcx_4____xmm0.exit

routine_ucomiss___rax__rcx_4____xmm0.exit:        ; preds = %4533, %4521
  %4535 = phi i64 [ %.pre102, %4521 ], [ %4080, %4533 ]
  %4536 = phi i8 [ %.pre101, %4521 ], [ %4534, %4533 ]
  %4537 = phi i64 [ %.pre100, %4521 ], [ %4507, %4533 ]
  %4538 = phi %struct.Memory* [ %4522, %4521 ], [ %MEMORY.23, %4533 ]
  %4539 = load i8, i8* %14, align 1
  %4540 = or i8 %4536, %4539
  %4541 = icmp ne i8 %4540, 0
  %.v171 = select i1 %4541, i64 37, i64 6
  %4542 = add i64 %4537, %.v171
  %4543 = add i64 %4535, -40
  %4544 = add i64 %4542, 4
  store i64 %4544, i64* %3, align 8
  %4545 = inttoptr i64 %4543 to i64*
  %4546 = load i64, i64* %4545, align 8
  store i64 %4546, i64* %RAX.i250, align 8
  br i1 %4541, label %block_.L_406703, label %block_4066e4

block_4066e4:                                     ; preds = %routine_ucomiss___rax__rcx_4____xmm0.exit
  %4547 = add i64 %4535, -52
  %4548 = add i64 %4542, 8
  store i64 %4548, i64* %3, align 8
  %4549 = inttoptr i64 %4547 to i32*
  %4550 = load i32, i32* %4549, align 4
  %4551 = sext i32 %4550 to i64
  store i64 %4551, i64* %RCX.i2082, align 8
  %4552 = shl nsw i64 %4551, 3
  %4553 = add i64 %4552, %4546
  %4554 = add i64 %4542, 12
  store i64 %4554, i64* %3, align 8
  %4555 = inttoptr i64 %4553 to i64*
  %4556 = load i64, i64* %4555, align 8
  store i64 %4556, i64* %RAX.i250, align 8
  %4557 = add i64 %4535, -72
  %4558 = add i64 %4542, 16
  store i64 %4558, i64* %3, align 8
  %4559 = inttoptr i64 %4557 to i32*
  %4560 = load i32, i32* %4559, align 4
  %4561 = sext i32 %4560 to i64
  store i64 %4561, i64* %RCX.i2082, align 8
  %4562 = shl nsw i64 %4561, 2
  %4563 = add i64 %4562, %4556
  %4564 = add i64 %4542, 21
  store i64 %4564, i64* %3, align 8
  %4565 = inttoptr i64 %4563 to i32*
  %4566 = load i32, i32* %4565, align 4
  store i32 %4566, i32* %629, align 1
  store float 0.000000e+00, float* %631, align 1
  store float 0.000000e+00, float* %111, align 1
  store float 0.000000e+00, float* %633, align 1
  %4567 = add i64 %4535, -128
  %4568 = add i64 %4542, 26
  store i64 %4568, i64* %3, align 8
  %4569 = load <2 x float>, <2 x float>* %634, align 1
  %4570 = extractelement <2 x float> %4569, i32 0
  %4571 = inttoptr i64 %4567 to float*
  store float %4570, float* %4571, align 4
  %4572 = load i64, i64* %3, align 8
  %4573 = add i64 %4572, 31
  store i64 %4573, i64* %3, align 8
  br label %block_.L_40671d

block_.L_406703:                                  ; preds = %routine_ucomiss___rax__rcx_4____xmm0.exit
  %4574 = add i64 %4535, -56
  %4575 = add i64 %4542, 8
  store i64 %4575, i64* %3, align 8
  %4576 = inttoptr i64 %4574 to i32*
  %4577 = load i32, i32* %4576, align 4
  %4578 = sext i32 %4577 to i64
  store i64 %4578, i64* %RCX.i2082, align 8
  %4579 = shl nsw i64 %4578, 3
  %4580 = add i64 %4579, %4546
  %4581 = add i64 %4542, 12
  store i64 %4581, i64* %3, align 8
  %4582 = inttoptr i64 %4580 to i64*
  %4583 = load i64, i64* %4582, align 8
  store i64 %4583, i64* %RAX.i250, align 8
  %4584 = add i64 %4535, -72
  %4585 = add i64 %4542, 16
  store i64 %4585, i64* %3, align 8
  %4586 = inttoptr i64 %4584 to i32*
  %4587 = load i32, i32* %4586, align 4
  %4588 = sext i32 %4587 to i64
  store i64 %4588, i64* %RCX.i2082, align 8
  %4589 = shl nsw i64 %4588, 2
  %4590 = add i64 %4589, %4583
  %4591 = add i64 %4542, 21
  store i64 %4591, i64* %3, align 8
  %4592 = inttoptr i64 %4590 to i32*
  %4593 = load i32, i32* %4592, align 4
  store i32 %4593, i32* %629, align 1
  store float 0.000000e+00, float* %631, align 1
  store float 0.000000e+00, float* %111, align 1
  store float 0.000000e+00, float* %633, align 1
  %4594 = add i64 %4535, -128
  %4595 = add i64 %4542, 26
  store i64 %4595, i64* %3, align 8
  %4596 = load <2 x float>, <2 x float>* %634, align 1
  %4597 = extractelement <2 x float> %4596, i32 0
  %4598 = inttoptr i64 %4594 to float*
  store float %4597, float* %4598, align 4
  %.pre103 = load i64, i64* %3, align 8
  br label %block_.L_40671d

block_.L_40671d:                                  ; preds = %block_.L_406703, %block_4066e4
  %4599 = phi i64 [ %.pre103, %block_.L_406703 ], [ %4573, %block_4066e4 ]
  %4600 = load i64, i64* %RBP.i, align 8
  %4601 = add i64 %4600, -128
  %4602 = add i64 %4599, 5
  store i64 %4602, i64* %3, align 8
  %4603 = inttoptr i64 %4601 to i32*
  %4604 = load i32, i32* %4603, align 4
  store i32 %4604, i32* %629, align 1
  store float 0.000000e+00, float* %631, align 1
  store float 0.000000e+00, float* %111, align 1
  store float 0.000000e+00, float* %633, align 1
  %4605 = add i64 %4600, -40
  %4606 = add i64 %4599, 9
  store i64 %4606, i64* %3, align 8
  %4607 = inttoptr i64 %4605 to i64*
  %4608 = load i64, i64* %4607, align 8
  store i64 %4608, i64* %RAX.i250, align 8
  %4609 = add i64 %4600, -52
  %4610 = add i64 %4599, 13
  store i64 %4610, i64* %3, align 8
  %4611 = inttoptr i64 %4609 to i32*
  %4612 = load i32, i32* %4611, align 4
  %4613 = sext i32 %4612 to i64
  store i64 %4613, i64* %RCX.i2082, align 8
  %4614 = shl nsw i64 %4613, 3
  %4615 = add i64 %4614, %4608
  %4616 = add i64 %4599, 17
  store i64 %4616, i64* %3, align 8
  %4617 = inttoptr i64 %4615 to i64*
  %4618 = load i64, i64* %4617, align 8
  store i64 %4618, i64* %RAX.i250, align 8
  %4619 = add i64 %4600, -72
  %4620 = add i64 %4599, 21
  store i64 %4620, i64* %3, align 8
  %4621 = inttoptr i64 %4619 to i32*
  %4622 = load i32, i32* %4621, align 4
  %4623 = sext i32 %4622 to i64
  store i64 %4623, i64* %RCX.i2082, align 8
  %4624 = shl nsw i64 %4623, 2
  %4625 = add i64 %4624, %4618
  %4626 = add i64 %4599, 26
  store i64 %4626, i64* %3, align 8
  %4627 = load <2 x float>, <2 x float>* %634, align 1
  %4628 = extractelement <2 x float> %4627, i32 0
  %4629 = inttoptr i64 %4625 to float*
  store float %4628, float* %4629, align 4
  %4630 = load i64, i64* %3, align 8
  %4631 = add i64 %4630, 88
  store i64 %4631, i64* %3, align 8
  br label %block_.L_40678f

block_.L_40678f:                                  ; preds = %block_4065cd, %block_.L_40671d, %block_.L_406696, %block_.L_4065d2
  %4632 = phi i64 [ %4295, %block_.L_4065d2 ], [ %4631, %block_.L_40671d ], [ %4465, %block_.L_406696 ], [ %.pre104, %block_4065cd ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.23, %block_.L_4065d2 ], [ %4538, %block_.L_40671d ], [ %4372, %block_.L_406696 ], [ %MEMORY.23, %block_4065cd ]
  %4633 = load i64, i64* %RBP.i, align 8
  %4634 = add i64 %4633, -72
  %4635 = add i64 %4632, 8
  store i64 %4635, i64* %3, align 8
  %4636 = inttoptr i64 %4634 to i32*
  %4637 = load i32, i32* %4636, align 4
  %4638 = add i32 %4637, 1
  %4639 = zext i32 %4638 to i64
  store i64 %4639, i64* %RAX.i250, align 8
  %4640 = icmp eq i32 %4637, -1
  %4641 = icmp eq i32 %4638, 0
  %4642 = or i1 %4640, %4641
  %4643 = zext i1 %4642 to i8
  store i8 %4643, i8* %14, align 1
  %4644 = and i32 %4638, 255
  %4645 = tail call i32 @llvm.ctpop.i32(i32 %4644)
  %4646 = trunc i32 %4645 to i8
  %4647 = and i8 %4646, 1
  %4648 = xor i8 %4647, 1
  store i8 %4648, i8* %21, align 1
  %4649 = xor i32 %4638, %4637
  %4650 = lshr i32 %4649, 4
  %4651 = trunc i32 %4650 to i8
  %4652 = and i8 %4651, 1
  store i8 %4652, i8* %26, align 1
  %4653 = zext i1 %4641 to i8
  store i8 %4653, i8* %29, align 1
  %4654 = lshr i32 %4638, 31
  %4655 = trunc i32 %4654 to i8
  store i8 %4655, i8* %32, align 1
  %4656 = lshr i32 %4637, 31
  %4657 = xor i32 %4654, %4656
  %4658 = add nuw nsw i32 %4657, %4654
  %4659 = icmp eq i32 %4658, 2
  %4660 = zext i1 %4659 to i8
  store i8 %4660, i8* %38, align 1
  %4661 = add i64 %4632, 14
  store i64 %4661, i64* %3, align 8
  store i32 %4638, i32* %4636, align 4
  %4662 = load i64, i64* %3, align 8
  %4663 = add i64 %4662, -530
  store i64 %4663, i64* %3, align 8
  br label %block_.L_40658b

block_.L_4067a2:                                  ; preds = %block_.L_40658b
  %4664 = add i64 %4024, 7
  store i64 %4664, i64* %3, align 8
  store i32 0, i32* %3991, align 4
  %.pre95 = load i64, i64* %3, align 8
  br label %block_.L_4067a9

block_.L_4067a9:                                  ; preds = %block_4067b5, %block_.L_4067a2
  %4665 = phi i64 [ %4775, %block_4067b5 ], [ %.pre95, %block_.L_4067a2 ]
  %4666 = load i64, i64* %RBP.i, align 8
  %4667 = add i64 %4666, -72
  %4668 = add i64 %4665, 3
  store i64 %4668, i64* %3, align 8
  %4669 = inttoptr i64 %4667 to i32*
  %4670 = load i32, i32* %4669, align 4
  %4671 = zext i32 %4670 to i64
  store i64 %4671, i64* %RAX.i250, align 8
  %4672 = add i64 %4666, -64
  %4673 = add i64 %4665, 6
  store i64 %4673, i64* %3, align 8
  %4674 = inttoptr i64 %4672 to i32*
  %4675 = load i32, i32* %4674, align 4
  %4676 = sub i32 %4670, %4675
  %4677 = icmp ult i32 %4670, %4675
  %4678 = zext i1 %4677 to i8
  store i8 %4678, i8* %14, align 1
  %4679 = and i32 %4676, 255
  %4680 = tail call i32 @llvm.ctpop.i32(i32 %4679)
  %4681 = trunc i32 %4680 to i8
  %4682 = and i8 %4681, 1
  %4683 = xor i8 %4682, 1
  store i8 %4683, i8* %21, align 1
  %4684 = xor i32 %4675, %4670
  %4685 = xor i32 %4684, %4676
  %4686 = lshr i32 %4685, 4
  %4687 = trunc i32 %4686 to i8
  %4688 = and i8 %4687, 1
  store i8 %4688, i8* %26, align 1
  %4689 = icmp eq i32 %4676, 0
  %4690 = zext i1 %4689 to i8
  store i8 %4690, i8* %29, align 1
  %4691 = lshr i32 %4676, 31
  %4692 = trunc i32 %4691 to i8
  store i8 %4692, i8* %32, align 1
  %4693 = lshr i32 %4670, 31
  %4694 = lshr i32 %4675, 31
  %4695 = xor i32 %4694, %4693
  %4696 = xor i32 %4691, %4693
  %4697 = add nuw nsw i32 %4696, %4695
  %4698 = icmp eq i32 %4697, 2
  %4699 = zext i1 %4698 to i8
  store i8 %4699, i8* %38, align 1
  %4700 = icmp ne i8 %4692, 0
  %4701 = xor i1 %4700, %4698
  %.v136 = select i1 %4701, i64 12, i64 68
  %4702 = add i64 %4665, %.v136
  store i64 %4702, i64* %3, align 8
  br i1 %4701, label %block_4067b5, label %block_.L_4067ed

block_4067b5:                                     ; preds = %block_.L_4067a9
  %4703 = add i64 %4666, -40
  %4704 = add i64 %4702, 4
  store i64 %4704, i64* %3, align 8
  %4705 = inttoptr i64 %4703 to i64*
  %4706 = load i64, i64* %4705, align 8
  store i64 %4706, i64* %RAX.i250, align 8
  %4707 = add i64 %4666, -52
  %4708 = add i64 %4702, 8
  store i64 %4708, i64* %3, align 8
  %4709 = inttoptr i64 %4707 to i32*
  %4710 = load i32, i32* %4709, align 4
  %4711 = sext i32 %4710 to i64
  store i64 %4711, i64* %RCX.i2082, align 8
  %4712 = shl nsw i64 %4711, 3
  %4713 = add i64 %4712, %4706
  %4714 = add i64 %4702, 12
  store i64 %4714, i64* %3, align 8
  %4715 = inttoptr i64 %4713 to i64*
  %4716 = load i64, i64* %4715, align 8
  store i64 %4716, i64* %RAX.i250, align 8
  %4717 = add i64 %4702, 16
  store i64 %4717, i64* %3, align 8
  %4718 = load i32, i32* %4669, align 4
  %4719 = sext i32 %4718 to i64
  store i64 %4719, i64* %RCX.i2082, align 8
  %4720 = shl nsw i64 %4719, 2
  %4721 = add i64 %4720, %4716
  %4722 = add i64 %4702, 21
  store i64 %4722, i64* %3, align 8
  %4723 = inttoptr i64 %4721 to i32*
  %4724 = load i32, i32* %4723, align 4
  store i32 %4724, i32* %629, align 1
  store float 0.000000e+00, float* %631, align 1
  store float 0.000000e+00, float* %111, align 1
  store float 0.000000e+00, float* %633, align 1
  %4725 = add i64 %4702, 25
  store i64 %4725, i64* %3, align 8
  %4726 = load i64, i64* %4705, align 8
  store i64 %4726, i64* %RAX.i250, align 8
  %4727 = add i64 %4702, 29
  store i64 %4727, i64* %3, align 8
  %4728 = load i32, i32* %4669, align 4
  %4729 = sext i32 %4728 to i64
  store i64 %4729, i64* %RCX.i2082, align 8
  %4730 = shl nsw i64 %4729, 3
  %4731 = add i64 %4730, %4726
  %4732 = add i64 %4702, 33
  store i64 %4732, i64* %3, align 8
  %4733 = inttoptr i64 %4731 to i64*
  %4734 = load i64, i64* %4733, align 8
  store i64 %4734, i64* %RAX.i250, align 8
  %4735 = add i64 %4702, 37
  store i64 %4735, i64* %3, align 8
  %4736 = load i32, i32* %4709, align 4
  %4737 = sext i32 %4736 to i64
  store i64 %4737, i64* %RCX.i2082, align 8
  %4738 = shl nsw i64 %4737, 2
  %4739 = add i64 %4738, %4734
  %4740 = add i64 %4702, 42
  store i64 %4740, i64* %3, align 8
  %4741 = load <2 x float>, <2 x float>* %634, align 1
  %4742 = extractelement <2 x float> %4741, i32 0
  %4743 = inttoptr i64 %4739 to float*
  store float %4742, float* %4743, align 4
  %4744 = load i64, i64* %RBP.i, align 8
  %4745 = add i64 %4744, -72
  %4746 = load i64, i64* %3, align 8
  %4747 = add i64 %4746, 3
  store i64 %4747, i64* %3, align 8
  %4748 = inttoptr i64 %4745 to i32*
  %4749 = load i32, i32* %4748, align 4
  %4750 = add i32 %4749, 1
  %4751 = zext i32 %4750 to i64
  store i64 %4751, i64* %RAX.i250, align 8
  %4752 = icmp eq i32 %4749, -1
  %4753 = icmp eq i32 %4750, 0
  %4754 = or i1 %4752, %4753
  %4755 = zext i1 %4754 to i8
  store i8 %4755, i8* %14, align 1
  %4756 = and i32 %4750, 255
  %4757 = tail call i32 @llvm.ctpop.i32(i32 %4756)
  %4758 = trunc i32 %4757 to i8
  %4759 = and i8 %4758, 1
  %4760 = xor i8 %4759, 1
  store i8 %4760, i8* %21, align 1
  %4761 = xor i32 %4750, %4749
  %4762 = lshr i32 %4761, 4
  %4763 = trunc i32 %4762 to i8
  %4764 = and i8 %4763, 1
  store i8 %4764, i8* %26, align 1
  %4765 = zext i1 %4753 to i8
  store i8 %4765, i8* %29, align 1
  %4766 = lshr i32 %4750, 31
  %4767 = trunc i32 %4766 to i8
  store i8 %4767, i8* %32, align 1
  %4768 = lshr i32 %4749, 31
  %4769 = xor i32 %4766, %4768
  %4770 = add nuw nsw i32 %4769, %4766
  %4771 = icmp eq i32 %4770, 2
  %4772 = zext i1 %4771 to i8
  store i8 %4772, i8* %38, align 1
  %4773 = add i64 %4746, 9
  store i64 %4773, i64* %3, align 8
  store i32 %4750, i32* %4748, align 4
  %4774 = load i64, i64* %3, align 8
  %4775 = add i64 %4774, -63
  store i64 %4775, i64* %3, align 8
  br label %block_.L_4067a9

block_.L_4067ed:                                  ; preds = %block_.L_4067a9
  %4776 = add i64 %4702, 3
  store i64 %4776, i64* %3, align 8
  %4777 = load i32, i32* %4674, align 4
  %4778 = zext i32 %4777 to i64
  store i64 %4778, i64* %RAX.i250, align 8
  %4779 = add i64 %4666, -12
  %4780 = add i64 %4702, 6
  store i64 %4780, i64* %3, align 8
  %4781 = inttoptr i64 %4779 to i32*
  %4782 = load i32, i32* %4781, align 4
  %4783 = add i32 %4782, %4777
  %4784 = lshr i32 %4783, 31
  %4785 = add i32 %4783, -2
  %4786 = zext i32 %4785 to i64
  store i64 %4786, i64* %RAX.i250, align 8
  %4787 = icmp ult i32 %4783, 2
  %4788 = zext i1 %4787 to i8
  store i8 %4788, i8* %14, align 1
  %4789 = and i32 %4785, 255
  %4790 = tail call i32 @llvm.ctpop.i32(i32 %4789)
  %4791 = trunc i32 %4790 to i8
  %4792 = and i8 %4791, 1
  %4793 = xor i8 %4792, 1
  store i8 %4793, i8* %21, align 1
  %4794 = xor i32 %4785, %4783
  %4795 = lshr i32 %4794, 4
  %4796 = trunc i32 %4795 to i8
  %4797 = and i8 %4796, 1
  store i8 %4797, i8* %26, align 1
  %4798 = icmp eq i32 %4785, 0
  %4799 = zext i1 %4798 to i8
  store i8 %4799, i8* %29, align 1
  %4800 = lshr i32 %4785, 31
  %4801 = trunc i32 %4800 to i8
  store i8 %4801, i8* %32, align 1
  %4802 = xor i32 %4800, %4784
  %4803 = add nuw nsw i32 %4802, %4784
  %4804 = icmp eq i32 %4803, 2
  %4805 = zext i1 %4804 to i8
  store i8 %4805, i8* %38, align 1
  %4806 = add i64 %4666, -48
  %4807 = add i64 %4702, 13
  store i64 %4807, i64* %3, align 8
  %4808 = inttoptr i64 %4806 to i64*
  %4809 = load i64, i64* %4808, align 8
  store i64 %4809, i64* %RCX.i2082, align 8
  %4810 = add i64 %4702, 16
  store i64 %4810, i64* %3, align 8
  %4811 = load i32, i32* %4674, align 4
  %4812 = add i32 %4811, -2
  %4813 = zext i32 %4812 to i64
  store i64 %4813, i64* %RDX.i2069, align 8
  %4814 = icmp ult i32 %4811, 2
  %4815 = zext i1 %4814 to i8
  store i8 %4815, i8* %14, align 1
  %4816 = and i32 %4812, 255
  %4817 = tail call i32 @llvm.ctpop.i32(i32 %4816)
  %4818 = trunc i32 %4817 to i8
  %4819 = and i8 %4818, 1
  %4820 = xor i8 %4819, 1
  store i8 %4820, i8* %21, align 1
  %4821 = xor i32 %4812, %4811
  %4822 = lshr i32 %4821, 4
  %4823 = trunc i32 %4822 to i8
  %4824 = and i8 %4823, 1
  store i8 %4824, i8* %26, align 1
  %4825 = icmp eq i32 %4812, 0
  %4826 = zext i1 %4825 to i8
  store i8 %4826, i8* %29, align 1
  %4827 = lshr i32 %4812, 31
  %4828 = trunc i32 %4827 to i8
  store i8 %4828, i8* %32, align 1
  %4829 = lshr i32 %4811, 31
  %4830 = xor i32 %4827, %4829
  %4831 = add nuw nsw i32 %4830, %4829
  %4832 = icmp eq i32 %4831, 2
  %4833 = zext i1 %4832 to i8
  store i8 %4833, i8* %38, align 1
  %4834 = sext i32 %4812 to i64
  store i64 %4834, i64* %RSI.i2072, align 8
  %4835 = shl nsw i64 %4834, 2
  %4836 = add i64 %4809, %4835
  %4837 = add i64 %4702, 25
  store i64 %4837, i64* %3, align 8
  %4838 = inttoptr i64 %4836 to i32*
  store i32 %4785, i32* %4838, align 4
  %4839 = load i64, i64* %RBP.i, align 8
  %4840 = add i64 %4839, -64
  %4841 = load i64, i64* %3, align 8
  %4842 = add i64 %4841, 3
  store i64 %4842, i64* %3, align 8
  %4843 = inttoptr i64 %4840 to i32*
  %4844 = load i32, i32* %4843, align 4
  %4845 = add i32 %4844, -1
  %4846 = zext i32 %4845 to i64
  store i64 %4846, i64* %RAX.i250, align 8
  %4847 = icmp ne i32 %4844, 0
  %4848 = zext i1 %4847 to i8
  store i8 %4848, i8* %14, align 1
  %4849 = and i32 %4845, 255
  %4850 = tail call i32 @llvm.ctpop.i32(i32 %4849)
  %4851 = trunc i32 %4850 to i8
  %4852 = and i8 %4851, 1
  %4853 = xor i8 %4852, 1
  store i8 %4853, i8* %21, align 1
  %4854 = xor i32 %4844, 16
  %4855 = xor i32 %4854, %4845
  %4856 = lshr i32 %4855, 4
  %4857 = trunc i32 %4856 to i8
  %4858 = and i8 %4857, 1
  store i8 %4858, i8* %26, align 1
  %4859 = icmp eq i32 %4845, 0
  %4860 = zext i1 %4859 to i8
  store i8 %4860, i8* %29, align 1
  %4861 = lshr i32 %4845, 31
  %4862 = trunc i32 %4861 to i8
  store i8 %4862, i8* %32, align 1
  %4863 = lshr i32 %4844, 31
  %4864 = xor i32 %4861, %4863
  %4865 = xor i32 %4861, 1
  %4866 = add nuw nsw i32 %4864, %4865
  %4867 = icmp eq i32 %4866, 2
  %4868 = zext i1 %4867 to i8
  store i8 %4868, i8* %38, align 1
  %4869 = add i64 %4841, 9
  store i64 %4869, i64* %3, align 8
  store i32 %4845, i32* %4843, align 4
  %4870 = load i64, i64* %3, align 8
  %4871 = add i64 %4870, -2444
  store i64 %4871, i64* %3, align 8
  br label %block_.L_405e83

block_.L_406814:                                  ; preds = %block_.L_405e83
  %4872 = add i64 %656, -40
  %4873 = add i64 %684, 4
  store i64 %4873, i64* %3, align 8
  %4874 = inttoptr i64 %4872 to i64*
  %4875 = load i64, i64* %4874, align 8
  store i64 %4875, i64* %RAX.i250, align 8
  %4876 = add i64 %656, -12
  %4877 = add i64 %684, 7
  store i64 %4877, i64* %3, align 8
  %4878 = inttoptr i64 %4876 to i32*
  %4879 = load i32, i32* %4878, align 4
  %4880 = zext i32 %4879 to i64
  store i64 %4880, i64* %RSI.i2072, align 8
  store i64 %4875, i64* %RDI.i1792, align 8
  %4881 = add i64 %684, 260348
  %4882 = add i64 %684, 15
  %4883 = load i64, i64* %6, align 8
  %4884 = add i64 %4883, -8
  %4885 = inttoptr i64 %4884 to i64*
  store i64 %4882, i64* %4885, align 8
  store i64 %4884, i64* %6, align 8
  store i64 %4881, i64* %3, align 8
  %call2_40681e = tail call %struct.Memory* @sub_446110.Free2DArray(%struct.State* nonnull %0, i64 %4881, %struct.Memory* %MEMORY.5)
  %4886 = load i64, i64* %RBP.i, align 8
  %4887 = add i64 %4886, -48
  %4888 = load i64, i64* %3, align 8
  %4889 = add i64 %4888, 4
  store i64 %4889, i64* %3, align 8
  %4890 = inttoptr i64 %4887 to i64*
  %4891 = load i64, i64* %4890, align 8
  store i64 %4891, i64* %RAX.i250, align 8
  store i64 %4891, i64* %RDI.i1792, align 8
  %4892 = add i64 %4888, -21667
  %4893 = add i64 %4888, 12
  %4894 = load i64, i64* %6, align 8
  %4895 = add i64 %4894, -8
  %4896 = inttoptr i64 %4895 to i64*
  store i64 %4893, i64* %4896, align 8
  store i64 %4895, i64* %6, align 8
  store i64 %4892, i64* %3, align 8
  %4897 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %call2_40681e)
  %4898 = load i64, i64* %RBP.i, align 8
  %4899 = add i64 %4898, -104
  %4900 = load i64, i64* %3, align 8
  %4901 = add i64 %4900, 4
  store i64 %4901, i64* %3, align 8
  %4902 = inttoptr i64 %4899 to i64*
  %4903 = load i64, i64* %4902, align 8
  store i64 %4903, i64* %RAX.i250, align 8
  store i64 %4903, i64* %RDI.i1792, align 8
  %4904 = add i64 %4900, -21679
  %4905 = add i64 %4900, 12
  %4906 = load i64, i64* %6, align 8
  %4907 = add i64 %4906, -8
  %4908 = inttoptr i64 %4907 to i64*
  store i64 %4905, i64* %4908, align 8
  store i64 %4907, i64* %6, align 8
  store i64 %4904, i64* %3, align 8
  %4909 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %4897)
  %4910 = load i64, i64* %3, align 8
  store i64 1, i64* %RAX.i250, align 8
  %4911 = load i64, i64* %RBP.i, align 8
  %4912 = add i64 %4911, -32
  %4913 = add i64 %4910, 9
  store i64 %4913, i64* %3, align 8
  %4914 = inttoptr i64 %4912 to i64*
  %4915 = load i64, i64* %4914, align 8
  store i64 %4915, i64* %RDI.i1792, align 8
  %4916 = add i64 %4911, -24
  %4917 = add i64 %4910, 13
  store i64 %4917, i64* %3, align 8
  %4918 = inttoptr i64 %4916 to i64*
  %4919 = load i64, i64* %4918, align 8
  store i64 %4919, i64* %RCX.i2082, align 8
  %4920 = add i64 %4910, 16
  store i64 %4920, i64* %3, align 8
  %4921 = inttoptr i64 %4919 to i64*
  store i64 %4915, i64* %4921, align 8
  %4922 = load i64, i64* %6, align 8
  %4923 = load i64, i64* %3, align 8
  %4924 = add i64 %4922, 128
  store i64 %4924, i64* %6, align 8
  %4925 = icmp ugt i64 %4922, -129
  %4926 = zext i1 %4925 to i8
  store i8 %4926, i8* %14, align 1
  %4927 = trunc i64 %4924 to i32
  %4928 = and i32 %4927, 255
  %4929 = tail call i32 @llvm.ctpop.i32(i32 %4928)
  %4930 = trunc i32 %4929 to i8
  %4931 = and i8 %4930, 1
  %4932 = xor i8 %4931, 1
  store i8 %4932, i8* %21, align 1
  %4933 = xor i64 %4924, %4922
  %4934 = lshr i64 %4933, 4
  %4935 = trunc i64 %4934 to i8
  %4936 = and i8 %4935, 1
  store i8 %4936, i8* %26, align 1
  %4937 = icmp eq i64 %4924, 0
  %4938 = zext i1 %4937 to i8
  store i8 %4938, i8* %29, align 1
  %4939 = lshr i64 %4924, 63
  %4940 = trunc i64 %4939 to i8
  store i8 %4940, i8* %32, align 1
  %4941 = lshr i64 %4922, 63
  %4942 = xor i64 %4939, %4941
  %4943 = add nuw nsw i64 %4942, %4939
  %4944 = icmp eq i64 %4943, 2
  %4945 = zext i1 %4944 to i8
  store i8 %4945, i8* %38, align 1
  %4946 = add i64 %4923, 8
  store i64 %4946, i64* %3, align 8
  %4947 = add i64 %4922, 136
  %4948 = inttoptr i64 %4924 to i64*
  %4949 = load i64, i64* %4948, align 8
  store i64 %4949, i64* %RBP.i, align 8
  store i64 %4947, i64* %6, align 8
  %4950 = add i64 %4923, 9
  store i64 %4950, i64* %3, align 8
  %4951 = inttoptr i64 %4947 to i64*
  %4952 = load i64, i64* %4951, align 8
  store i64 %4952, i64* %3, align 8
  %4953 = add i64 %4922, 144
  store i64 %4953, i64* %6, align 8
  ret %struct.Memory* %4909
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x455dc7___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x455dc7_type* @G__0x455dc7 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xa8___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 168, i64* %3, align 8
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
define %struct.Memory* @routine_movq__rcx__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 3
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 61
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 248
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
  %23 = lshr i64 %3, 60
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__rcx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sre_malloc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_jge_.L_405d9f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x455dc7___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x455dc7_type* @G__0x455dc7 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xab___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 171, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x2___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 62
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 252
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
  %23 = lshr i64 %3, 61
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rdx__rdi_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %RAX, align 8
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i64*
  store i64 %7, i64* %10, align 8
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
define %struct.Memory* @routine_jge_.L_405d8c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %union.VectorReg* %3 to i32*
  store i32 %12, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 4
  %15 = bitcast i8* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %4, i64 12
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = inttoptr i64 %7 to float*
  store float %12, float* %13, align 4
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
define %struct.Memory* @routine_jmpq_.L_405d48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_405d91(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_405d0a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xb0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 176, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xb1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 177, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movslq__ecx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
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
define %struct.Memory* @routine_jge_.L_405e19(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_jmpq_.L_405df1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jge_.L_405e4f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_405e20(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_callq_.AllocPhylo(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %3 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %3, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %3, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_405e76(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x455e76___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x455e76_type* @G__0x455e76 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 0, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Die(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_jl_.L_406814(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x4e8a7__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x4e8a7__rip__type* @G_0x4e8a7__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
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
define %struct.Memory* @routine_cmpl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -64
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
define %struct.Memory* @routine_jge_.L_405f31(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_405f1e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_MINUS0x4c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -76
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = extractelement <2 x float> %8, i32 0
  %10 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = fcmp uno float %9, %12
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %block_400488
  %15 = fadd float %9, %12
  %16 = bitcast float %15 to i32
  %17 = and i32 %16, 2143289344
  %18 = icmp eq i32 %17, 2139095040
  %19 = and i32 %16, 4194303
  %20 = icmp ne i32 %19, 0
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %30

; <label>:22:                                     ; preds = %14
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = fcmp ogt float %9, %12
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp olt float %9, %12
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %26
  %29 = fcmp oeq float %9, %12
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %28, %26, %24, %14
  %31 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 1, %28 ], [ 1, %14 ]
  %32 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 0, %28 ], [ 1, %14 ]
  %33 = phi i8 [ 0, %24 ], [ 1, %26 ], [ 0, %28 ], [ 1, %14 ]
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %33, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %30, %28
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %40, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %37, %22
  %41 = phi %struct.Memory* [ %23, %22 ], [ %2, %37 ]
  ret %struct.Memory* %41
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_405f0b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_jmpq_.L_405f10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_405eb6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_405f23(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_405ea1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_subl__0x2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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

; Function Attrs: nounwind
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
define %struct.Memory* @routine_movl__edx__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 4
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jl_.L_405fb0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x40__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movl___rdx__rsi_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0xc__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
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
  store i64 %12, i64* %RDI, align 8
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
define %struct.Memory* @routine_movslq__edi___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x28___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 40
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__eax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_405feb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movss_MINUS0x4c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -76
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_subl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movss__xmm0__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 12
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
define %struct.Memory* @routine_movss__xmm0____rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = inttoptr i64 %7 to float*
  store float %12, float* %13, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x14__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 20
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
define %struct.Memory* @routine_movss__xmm0__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 16
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
define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jl_.L_4060a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0xc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
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
  store i64 %12, i64* %RSI, align 8
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
define %struct.Memory* @routine_movss_0x10__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 16
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subss__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fsub float %15, %16
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 16
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
define %struct.Memory* @routine_jl_.L_4060f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movss_0x14__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 20
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__0x14__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 20
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
define %struct.Memory* @routine_jge_.L_406150(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x20__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_addl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__0x20__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 32
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x18__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq___rdx__rsi_4____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x1____rax__rdx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i8 1, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_406200(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x20__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_subl__0x2___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_addl_0x20__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 32
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
define %struct.Memory* @routine_movl__esi__0x20__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 32
  %6 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_jge_.L_4061fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rax__rcx_1____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rax__rcx_1____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl__esi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i32, i32* %ESI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = or i64 %6, %4
  %10 = trunc i64 %9 to i32
  %11 = and i64 %9, 4294967295
  store i64 %11, i64* %RDI, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %10, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
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
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__dil___r8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %DIL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %R8B, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__r8b____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %R8B, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
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
define %struct.Memory* @routine_jmpq_.L_406190(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40625e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40630e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_406309(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40629e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_406330(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_406342(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_40645a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rdx__rsi_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %RAX, align 8
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i64*
  store i64 %7, i64* %10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40641e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
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
define %struct.Memory* @routine_movss_MINUS0x5c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -92
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40639c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0x6c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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
define %struct.Memory* @routine_je_.L_406572(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_406536(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4064b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
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
define %struct.Memory* @routine_jge_.L_4067a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_testl__eax___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
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
  %14 = icmp eq i32 %4, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %4, 31
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
define %struct.Memory* @routine_je_.L_4065d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4065aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_je_.L_4066b5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4065be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_je_.L_40662a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40673c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x4e20e__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x4e20e__rip__type* @G_0x4e20e__rip_ to i64)
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
define %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %union.VectorReg* %3 to i32*
  store i32 %12, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 4
  %15 = bitcast i8* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %4, i64 12
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss___rax__rcx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fadd float %18, %17
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %12 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 0
  %26 = bitcast i64* %13 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %15, i32 1
  %28 = getelementptr inbounds i8, i8* %4, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd__xmm1___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = fpext float %8 to double
  %10 = bitcast %union.VectorReg* %3 to double*
  store double %9, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
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
define %struct.Memory* @routine_jmpq_.L_40678f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_40667c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
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
define %struct.Memory* @routine_jmpq_.L_406696(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x7c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -124
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss___rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = inttoptr i64 %7 to float*
  %14 = load float, float* %13, align 4
  %15 = fcmp uno float %12, %14
  br i1 %15, label %16, label %26

; <label>:16:                                     ; preds = %block_400488
  %17 = fadd float %12, %14
  %18 = bitcast float %17 to i32
  %19 = and i32 %18, 2143289344
  %20 = icmp eq i32 %19, 2139095040
  %21 = and i32 %18, 4194303
  %22 = icmp ne i32 %21, 0
  %23 = and i1 %20, %22
  br i1 %23, label %24, label %32

; <label>:24:                                     ; preds = %16
  %25 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %9, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:26:                                     ; preds = %block_400488
  %27 = fcmp ogt float %12, %14
  br i1 %27, label %32, label %28

; <label>:28:                                     ; preds = %26
  %29 = fcmp olt float %12, %14
  br i1 %29, label %32, label %30

; <label>:30:                                     ; preds = %28
  %31 = fcmp oeq float %12, %14
  br i1 %31, label %32, label %39

; <label>:32:                                     ; preds = %30, %28, %26, %16
  %33 = phi i8 [ 0, %26 ], [ 0, %28 ], [ 1, %30 ], [ 1, %16 ]
  %34 = phi i8 [ 0, %26 ], [ 0, %28 ], [ 0, %30 ], [ 1, %16 ]
  %35 = phi i8 [ 0, %26 ], [ 1, %28 ], [ 0, %30 ], [ 1, %16 ]
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %35, i8* %38, align 1
  br label %39

; <label>:39:                                     ; preds = %32, %30
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %42, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %39, %24
  %43 = phi %struct.Memory* [ %25, %24 ], [ %2, %39 ]
  ret %struct.Memory* %43
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_406703(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
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
define %struct.Memory* @routine_jmpq_.L_40671d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x80__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -128
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x4e0a4__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x4e0a4__rip__type* @G_0x4e0a4__rip_ to i64)
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
define %struct.Memory* @routine_jmpq_.L_406794(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40658b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4067ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4067a9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax____rcx__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_jmpq_.L_405e83(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_callq_.Free2DArray(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.free_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__rdi____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
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
