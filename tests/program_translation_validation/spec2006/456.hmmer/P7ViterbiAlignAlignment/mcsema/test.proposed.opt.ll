; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x46038__rip__type = type <{ [8 x i8] }>
%G_0x46152__rip__type = type <{ [4 x i8] }>
%G_0x677060_type = type <{ [4 x i8] }>
%G__0x455f2a_type = type <{ [8 x i8] }>
%G__0x676fe0_type = type <{ [8 x i8] }>
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
@G_0x46038__rip_ = global %G_0x46038__rip__type zeroinitializer
@G_0x46152__rip_ = global %G_0x46152__rip__type zeroinitializer
@G_0x677060 = local_unnamed_addr global %G_0x677060_type zeroinitializer
@G__0x455f2a = global %G__0x455f2a_type zeroinitializer
@G__0x676fe0 = global %G__0x676fe0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #0

; Function Attrs: nounwind readnone
declare float @llvm.trunc.f32(float) #0

declare extern_weak x86_64_sysvcc i64 @free(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451f40.FSet(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_452090.FSum(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401480.strchr_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4054d0.P7CountSymbol(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451fe0.FScale(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407890.AllocPlan7Matrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4079d0.AllocShadowMatrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f800.ShadowTrace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407940.FreePlan7Matrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407d00.FreeShadowMatrix(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @P7ViterbiAlignAlignment(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -200
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 192
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
  %RAX.i34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RAX.i34, align 8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i100 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 2044, i64* %RCX.i100, align 8
  %RDI.i783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i783, align 8
  %42 = add i64 %10, 29
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i1533 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -16
  %47 = load i64, i64* %RSI.i1533, align 8
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i64*
  store i64 %47, i64* %50, align 8
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -8
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %52 to i64*
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %RSI.i1533, align 8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i2857 = getelementptr inbounds %union.anon, %union.anon* %57, i64 0, i32 0
  %58 = add i64 %56, 24
  %59 = add i64 %53, 7
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %58 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = add i32 %61, 1
  %63 = zext i32 %62 to i64
  store i64 %63, i64* %RDX.i2857, align 8
  %64 = icmp eq i32 %62, 0
  %65 = zext i1 %64 to i8
  %66 = lshr i32 %62, 31
  %67 = trunc i32 %66 to i8
  %EDX.i2852 = bitcast %union.anon* %57 to i32*
  %68 = sext i32 %62 to i64
  %69 = shl nsw i64 %68, 3
  store i8 %67, i8* %14, align 1
  %70 = trunc i64 %69 to i32
  %71 = and i32 %70, 248
  %72 = tail call i32 @llvm.ctpop.i32(i32 %71)
  %73 = trunc i32 %72 to i8
  %74 = and i8 %73, 1
  %75 = xor i8 %74, 1
  store i8 %75, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %65, i8* %29, align 1
  %76 = lshr i64 %68, 60
  %77 = trunc i64 %76 to i8
  %78 = and i8 %77, 1
  store i8 %78, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %79 = load i64, i64* %RAX.i34, align 8
  store i64 %79, i64* %RDI.i783, align 8
  %80 = add i64 %51, -160
  %81 = add i64 %53, 27
  store i64 %81, i64* %3, align 8
  %82 = inttoptr i64 %80 to i64*
  store i64 %69, i64* %82, align 8
  %ECX.i2841 = bitcast %union.anon* %39 to i32*
  %83 = load i32, i32* %ECX.i2841, align 4
  %84 = zext i32 %83 to i64
  %85 = load i64, i64* %3, align 8
  store i64 %84, i64* %RSI.i1533, align 8
  %86 = load i64, i64* %RBP.i, align 8
  %87 = add i64 %86, -160
  %88 = add i64 %85, 9
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %87 to i64*
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %RDX.i2857, align 8
  %91 = add i64 %85, 228131
  %92 = add i64 %85, 14
  %93 = load i64, i64* %6, align 8
  %94 = add i64 %93, -8
  %95 = inttoptr i64 %94 to i64*
  store i64 %92, i64* %95, align 8
  store i64 %94, i64* %6, align 8
  store i64 %91, i64* %3, align 8
  %call2_40e546 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %91, %struct.Memory* %2)
  %96 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RDI.i783, align 8
  store i64 2045, i64* %RSI.i1533, align 8
  %97 = load i64, i64* %RBP.i, align 8
  %98 = add i64 %97, -112
  %99 = load i64, i64* %RAX.i34, align 8
  %100 = add i64 %96, 19
  store i64 %100, i64* %3, align 8
  %101 = inttoptr i64 %98 to i64*
  store i64 %99, i64* %101, align 8
  %102 = load i64, i64* %RBP.i, align 8
  %103 = add i64 %102, -8
  %104 = load i64, i64* %3, align 8
  %105 = add i64 %104, 4
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %103 to i64*
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %RAX.i34, align 8
  %108 = add i64 %107, 24
  %109 = add i64 %104, 7
  store i64 %109, i64* %3, align 8
  %110 = inttoptr i64 %108 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = add i32 %111, 1
  %113 = zext i32 %112 to i64
  store i64 %113, i64* %RCX.i100, align 8
  %114 = icmp eq i32 %112, 0
  %115 = zext i1 %114 to i8
  %116 = lshr i32 %112, 31
  %117 = trunc i32 %116 to i8
  %118 = sext i32 %112 to i64
  %119 = shl nsw i64 %118, 2
  store i64 %119, i64* %RAX.i34, align 8
  store i8 %117, i8* %14, align 1
  %120 = trunc i64 %119 to i32
  %121 = and i32 %120, 252
  %122 = tail call i32 @llvm.ctpop.i32(i32 %121)
  %123 = trunc i32 %122 to i8
  %124 = and i8 %123, 1
  %125 = xor i8 %124, 1
  store i8 %125, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %115, i8* %29, align 1
  %126 = lshr i64 %118, 61
  %127 = trunc i64 %126 to i8
  %128 = and i8 %127, 1
  store i8 %128, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %119, i64* %RDX.i2857, align 8
  %129 = add i64 %104, 228098
  %130 = add i64 %104, 25
  %131 = load i64, i64* %6, align 8
  %132 = add i64 %131, -8
  %133 = inttoptr i64 %132 to i64*
  store i64 %130, i64* %133, align 8
  store i64 %132, i64* %6, align 8
  store i64 %129, i64* %3, align 8
  %call2_40e572 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %129, %struct.Memory* %call2_40e546)
  %134 = load i64, i64* %RBP.i, align 8
  %135 = add i64 %134, -120
  %136 = load i64, i64* %RAX.i34, align 8
  %137 = load i64, i64* %3, align 8
  %138 = add i64 %137, 4
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %135 to i64*
  store i64 %136, i64* %139, align 8
  %140 = load i64, i64* %RBP.i, align 8
  %141 = add i64 %140, -124
  %142 = load i64, i64* %3, align 8
  %143 = add i64 %142, 7
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %141 to i32*
  store i32 1, i32* %144, align 4
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %147 = bitcast i64* %146 to i32*
  %.pre = load i64, i64* %3, align 8
  %148 = bitcast %union.VectorReg* %145 to <4 x i32>*
  br label %block_.L_40e582

block_.L_40e582:                                  ; preds = %block_40e592, %entry
  %149 = phi i64 [ %281, %block_40e592 ], [ %.pre, %entry ]
  %150 = load i64, i64* %RBP.i, align 8
  %151 = add i64 %150, -124
  %152 = add i64 %149, 3
  store i64 %152, i64* %3, align 8
  %153 = inttoptr i64 %151 to i32*
  %154 = load i32, i32* %153, align 4
  %155 = zext i32 %154 to i64
  store i64 %155, i64* %RAX.i34, align 8
  %156 = add i64 %150, -8
  %157 = add i64 %149, 7
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %156 to i64*
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %RCX.i100, align 8
  %160 = add i64 %159, 24
  %161 = add i64 %149, 10
  store i64 %161, i64* %3, align 8
  %162 = inttoptr i64 %160 to i32*
  %163 = load i32, i32* %162, align 4
  %164 = sub i32 %154, %163
  %165 = icmp ult i32 %154, %163
  %166 = zext i1 %165 to i8
  store i8 %166, i8* %14, align 1
  %167 = and i32 %164, 255
  %168 = tail call i32 @llvm.ctpop.i32(i32 %167)
  %169 = trunc i32 %168 to i8
  %170 = and i8 %169, 1
  %171 = xor i8 %170, 1
  store i8 %171, i8* %21, align 1
  %172 = xor i32 %163, %154
  %173 = xor i32 %172, %164
  %174 = lshr i32 %173, 4
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  store i8 %176, i8* %26, align 1
  %177 = icmp eq i32 %164, 0
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %29, align 1
  %179 = lshr i32 %164, 31
  %180 = trunc i32 %179 to i8
  store i8 %180, i8* %32, align 1
  %181 = lshr i32 %154, 31
  %182 = lshr i32 %163, 31
  %183 = xor i32 %182, %181
  %184 = xor i32 %179, %181
  %185 = add nuw nsw i32 %184, %183
  %186 = icmp eq i32 %185, 2
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %38, align 1
  %188 = icmp ne i8 %180, 0
  %189 = xor i1 %188, %186
  %.demorgan = or i1 %177, %189
  %.v144 = select i1 %.demorgan, i64 16, i64 104
  %190 = add i64 %149, %.v144
  store i64 %190, i64* %3, align 8
  br i1 %.demorgan, label %block_40e592, label %block_.L_40e5ea

block_40e592:                                     ; preds = %block_.L_40e582
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RDI.i783, align 8
  store i64 2047, i64* %RSI.i1533, align 8
  %191 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %192 = sext i32 %191 to i64
  %193 = shl nsw i64 %192, 2
  store i64 %193, i64* %RAX.i34, align 8
  %.lobit58 = lshr i32 %191, 31
  %194 = trunc i32 %.lobit58 to i8
  store i8 %194, i8* %14, align 1
  %195 = trunc i64 %193 to i32
  %196 = and i32 %195, 252
  %197 = tail call i32 @llvm.ctpop.i32(i32 %196)
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  %200 = xor i8 %199, 1
  store i8 %200, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %201 = icmp eq i32 %191, 0
  %202 = zext i1 %201 to i8
  store i8 %202, i8* %29, align 1
  %203 = lshr i64 %192, 61
  %204 = trunc i64 %203 to i8
  %205 = and i8 %204, 1
  store i8 %205, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i64 %193, i64* %RDX.i2857, align 8
  %206 = add i64 %190, 228046
  %207 = add i64 %190, 35
  %208 = load i64, i64* %6, align 8
  %209 = add i64 %208, -8
  %210 = inttoptr i64 %209 to i64*
  store i64 %207, i64* %210, align 8
  store i64 %209, i64* %6, align 8
  store i64 %206, i64* %3, align 8
  %call2_40e5b0 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %206, %struct.Memory* %call2_40e572)
  %211 = load i64, i64* %3, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %148, align 1
  %212 = load i64, i64* %RBP.i, align 8
  %213 = add i64 %212, -112
  %214 = add i64 %211, 7
  store i64 %214, i64* %3, align 8
  %215 = inttoptr i64 %213 to i64*
  %216 = load i64, i64* %215, align 8
  store i64 %216, i64* %RDX.i2857, align 8
  %217 = add i64 %212, -124
  %218 = add i64 %211, 11
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %217 to i32*
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  store i64 %221, i64* %RDI.i783, align 8
  %222 = shl nsw i64 %221, 3
  %223 = add i64 %222, %216
  %224 = load i64, i64* %RAX.i34, align 8
  %225 = add i64 %211, 15
  store i64 %225, i64* %3, align 8
  %226 = inttoptr i64 %223 to i64*
  store i64 %224, i64* %226, align 8
  %227 = load i64, i64* %RBP.i, align 8
  %228 = add i64 %227, -112
  %229 = load i64, i64* %3, align 8
  %230 = add i64 %229, 4
  store i64 %230, i64* %3, align 8
  %231 = inttoptr i64 %228 to i64*
  %232 = load i64, i64* %231, align 8
  store i64 %232, i64* %RAX.i34, align 8
  %233 = add i64 %227, -124
  %234 = add i64 %229, 8
  store i64 %234, i64* %3, align 8
  %235 = inttoptr i64 %233 to i32*
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  store i64 %237, i64* %RDX.i2857, align 8
  %238 = shl nsw i64 %237, 3
  %239 = add i64 %238, %232
  %240 = add i64 %229, 12
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %239 to i64*
  %242 = load i64, i64* %241, align 8
  store i64 %242, i64* %RDI.i783, align 8
  %243 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %244 = zext i32 %243 to i64
  store i64 %244, i64* %RSI.i1533, align 8
  %245 = add i64 %229, 276860
  %246 = add i64 %229, 24
  %247 = load i64, i64* %6, align 8
  %248 = add i64 %247, -8
  %249 = inttoptr i64 %248 to i64*
  store i64 %246, i64* %249, align 8
  store i64 %248, i64* %6, align 8
  store i64 %245, i64* %3, align 8
  %call2_40e5d7 = tail call %struct.Memory* @sub_451f40.FSet(%struct.State* nonnull %0, i64 %245, %struct.Memory* %call2_40e572)
  %250 = load i64, i64* %RBP.i, align 8
  %251 = add i64 %250, -124
  %252 = load i64, i64* %3, align 8
  %253 = add i64 %252, 3
  store i64 %253, i64* %3, align 8
  %254 = inttoptr i64 %251 to i32*
  %255 = load i32, i32* %254, align 4
  %256 = add i32 %255, 1
  %257 = zext i32 %256 to i64
  store i64 %257, i64* %RAX.i34, align 8
  %258 = icmp eq i32 %255, -1
  %259 = icmp eq i32 %256, 0
  %260 = or i1 %258, %259
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %14, align 1
  %262 = and i32 %256, 255
  %263 = tail call i32 @llvm.ctpop.i32(i32 %262)
  %264 = trunc i32 %263 to i8
  %265 = and i8 %264, 1
  %266 = xor i8 %265, 1
  store i8 %266, i8* %21, align 1
  %267 = xor i32 %256, %255
  %268 = lshr i32 %267, 4
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  store i8 %270, i8* %26, align 1
  %271 = zext i1 %259 to i8
  store i8 %271, i8* %29, align 1
  %272 = lshr i32 %256, 31
  %273 = trunc i32 %272 to i8
  store i8 %273, i8* %32, align 1
  %274 = lshr i32 %255, 31
  %275 = xor i32 %272, %274
  %276 = add nuw nsw i32 %275, %272
  %277 = icmp eq i32 %276, 2
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %38, align 1
  %279 = add i64 %252, 9
  store i64 %279, i64* %3, align 8
  store i32 %256, i32* %254, align 4
  %280 = load i64, i64* %3, align 8
  %281 = add i64 %280, -99
  store i64 %281, i64* %3, align 8
  br label %block_.L_40e582

block_.L_40e5ea:                                  ; preds = %block_.L_40e582
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %283 = bitcast [32 x %union.VectorReg]* %282 to i8*
  %284 = add i64 %190, ptrtoint (%G_0x46152__rip__type* @G_0x46152__rip_ to i64)
  %285 = add i64 %190, 8
  store i64 %285, i64* %3, align 8
  %286 = inttoptr i64 %284 to i32*
  %287 = load i32, i32* %286, align 4
  %288 = bitcast [32 x %union.VectorReg]* %282 to float*
  %289 = bitcast [32 x %union.VectorReg]* %282 to i32*
  store i32 %287, i32* %289, align 1
  %290 = getelementptr inbounds i8, i8* %283, i64 4
  %291 = bitcast i8* %290 to float*
  store float 0.000000e+00, float* %291, align 1
  %292 = bitcast i64* %146 to float*
  store float 0.000000e+00, float* %292, align 1
  %293 = getelementptr inbounds i8, i8* %283, i64 12
  %294 = bitcast i8* %293 to float*
  store float 0.000000e+00, float* %294, align 1
  %295 = add i64 %150, -120
  %296 = add i64 %190, 12
  store i64 %296, i64* %3, align 8
  %297 = inttoptr i64 %295 to i64*
  %298 = load i64, i64* %297, align 8
  store i64 %298, i64* %RAX.i34, align 8
  %299 = add i64 %190, 16
  store i64 %299, i64* %3, align 8
  %300 = bitcast [32 x %union.VectorReg]* %282 to <2 x float>*
  %301 = load <2 x float>, <2 x float>* %300, align 1
  %302 = extractelement <2 x float> %301, i32 0
  %303 = inttoptr i64 %298 to float*
  store float %302, float* %303, align 4
  %304 = load i64, i64* %RBP.i, align 8
  %305 = add i64 %304, -8
  %306 = load i64, i64* %3, align 8
  %307 = add i64 %306, 4
  store i64 %307, i64* %3, align 8
  %308 = inttoptr i64 %305 to i64*
  %309 = load i64, i64* %308, align 8
  store i64 %309, i64* %RAX.i34, align 8
  %310 = add i64 %309, 16
  %311 = add i64 %306, 8
  store i64 %311, i64* %3, align 8
  %312 = inttoptr i64 %310 to i64*
  %313 = load i64, i64* %312, align 8
  store i64 %313, i64* %RDI.i783, align 8
  %314 = add i64 %306, 12
  store i64 %314, i64* %3, align 8
  %315 = load i64, i64* %308, align 8
  store i64 %315, i64* %RAX.i34, align 8
  %316 = add i64 %315, 28
  %317 = add i64 %306, 15
  store i64 %317, i64* %3, align 8
  %318 = inttoptr i64 %316 to i32*
  %319 = load i32, i32* %318, align 4
  %320 = zext i32 %319 to i64
  store i64 %320, i64* %RSI.i1533, align 8
  %321 = add i64 %306, 277142
  %322 = add i64 %306, 20
  %323 = load i64, i64* %6, align 8
  %324 = add i64 %323, -8
  %325 = inttoptr i64 %324 to i64*
  store i64 %322, i64* %325, align 8
  store i64 %324, i64* %6, align 8
  store i64 %321, i64* %3, align 8
  %call2_40e609 = tail call %struct.Memory* @sub_452090.FSum(%struct.State* nonnull %0, i64 %321, %struct.Memory* %call2_40e572)
  %326 = load i64, i64* %RBP.i, align 8
  %327 = add i64 %326, -144
  %328 = load i64, i64* %3, align 8
  %329 = add i64 %328, 8
  store i64 %329, i64* %3, align 8
  %330 = load <2 x float>, <2 x float>* %300, align 1
  %331 = extractelement <2 x float> %330, i32 0
  %332 = inttoptr i64 %327 to float*
  store float %331, float* %332, align 4
  %333 = load i64, i64* %RBP.i, align 8
  %334 = add i64 %333, -124
  %335 = load i64, i64* %3, align 8
  %336 = add i64 %335, 7
  store i64 %336, i64* %3, align 8
  %337 = inttoptr i64 %334 to i32*
  store i32 1, i32* %337, align 4
  %ESI.i2543 = bitcast %union.anon* %44 to i32*
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B.i2528 = bitcast %union.anon* %338 to i8*
  %339 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %282, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %340 = bitcast i64* %146 to double*
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %342 = bitcast %union.VectorReg* %341 to double*
  %343 = bitcast i8* %290 to i32*
  %344 = bitcast i8* %293 to i32*
  %.pre92 = load i64, i64* %3, align 8
  br label %block_.L_40e61d

block_.L_40e61d:                                  ; preds = %block_.L_40e7a0, %block_.L_40e5ea
  %345 = phi i64 [ %.pre92, %block_.L_40e5ea ], [ %1065, %block_.L_40e7a0 ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_40e609, %block_.L_40e5ea ], [ %call2_40e7e3, %block_.L_40e7a0 ]
  %346 = load i64, i64* %RBP.i, align 8
  %347 = add i64 %346, -124
  %348 = add i64 %345, 3
  store i64 %348, i64* %3, align 8
  %349 = inttoptr i64 %347 to i32*
  %350 = load i32, i32* %349, align 4
  %351 = zext i32 %350 to i64
  store i64 %351, i64* %RAX.i34, align 8
  %352 = add i64 %346, -8
  %353 = add i64 %345, 7
  store i64 %353, i64* %3, align 8
  %354 = inttoptr i64 %352 to i64*
  %355 = load i64, i64* %354, align 8
  store i64 %355, i64* %RCX.i100, align 8
  %356 = add i64 %355, 24
  %357 = add i64 %345, 10
  store i64 %357, i64* %3, align 8
  %358 = inttoptr i64 %356 to i32*
  %359 = load i32, i32* %358, align 4
  %360 = sub i32 %350, %359
  %361 = icmp ult i32 %350, %359
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %14, align 1
  %363 = and i32 %360, 255
  %364 = tail call i32 @llvm.ctpop.i32(i32 %363)
  %365 = trunc i32 %364 to i8
  %366 = and i8 %365, 1
  %367 = xor i8 %366, 1
  store i8 %367, i8* %21, align 1
  %368 = xor i32 %359, %350
  %369 = xor i32 %368, %360
  %370 = lshr i32 %369, 4
  %371 = trunc i32 %370 to i8
  %372 = and i8 %371, 1
  store i8 %372, i8* %26, align 1
  %373 = icmp eq i32 %360, 0
  %374 = zext i1 %373 to i8
  store i8 %374, i8* %29, align 1
  %375 = lshr i32 %360, 31
  %376 = trunc i32 %375 to i8
  store i8 %376, i8* %32, align 1
  %377 = lshr i32 %350, 31
  %378 = lshr i32 %359, 31
  %379 = xor i32 %378, %377
  %380 = xor i32 %375, %377
  %381 = add nuw nsw i32 %380, %379
  %382 = icmp eq i32 %381, 2
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %38, align 1
  %384 = icmp ne i8 %376, 0
  %385 = xor i1 %384, %382
  %.demorgan138 = or i1 %373, %385
  %.v145 = select i1 %.demorgan138, i64 16, i64 486
  %386 = add i64 %345, %.v145
  store i64 %386, i64* %3, align 8
  br i1 %.demorgan138, label %block_40e62d, label %block_.L_40e803

block_40e62d:                                     ; preds = %block_.L_40e61d
  %387 = add i64 %346, -132
  %388 = add i64 %386, 10
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %387 to i32*
  store i32 0, i32* %389, align 4
  %.pre93 = load i64, i64* %3, align 8
  br label %block_.L_40e637

block_.L_40e637:                                  ; preds = %block_.L_40e787, %block_40e62d
  %390 = phi i64 [ %.pre93, %block_40e62d ], [ %959, %block_.L_40e787 ]
  %391 = load i64, i64* %RBP.i, align 8
  %392 = add i64 %391, -132
  %393 = add i64 %390, 6
  store i64 %393, i64* %3, align 8
  %394 = inttoptr i64 %392 to i32*
  %395 = load i32, i32* %394, align 4
  %396 = zext i32 %395 to i64
  store i64 %396, i64* %RAX.i34, align 8
  %397 = add i64 %391, -8
  %398 = add i64 %390, 10
  store i64 %398, i64* %3, align 8
  %399 = inttoptr i64 %397 to i64*
  %400 = load i64, i64* %399, align 8
  store i64 %400, i64* %RCX.i100, align 8
  %401 = add i64 %400, 28
  %402 = add i64 %390, 13
  store i64 %402, i64* %3, align 8
  %403 = inttoptr i64 %401 to i32*
  %404 = load i32, i32* %403, align 4
  %405 = sub i32 %395, %404
  %406 = icmp ult i32 %395, %404
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %14, align 1
  %408 = and i32 %405, 255
  %409 = tail call i32 @llvm.ctpop.i32(i32 %408)
  %410 = trunc i32 %409 to i8
  %411 = and i8 %410, 1
  %412 = xor i8 %411, 1
  store i8 %412, i8* %21, align 1
  %413 = xor i32 %404, %395
  %414 = xor i32 %413, %405
  %415 = lshr i32 %414, 4
  %416 = trunc i32 %415 to i8
  %417 = and i8 %416, 1
  store i8 %417, i8* %26, align 1
  %418 = icmp eq i32 %405, 0
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %29, align 1
  %420 = lshr i32 %405, 31
  %421 = trunc i32 %420 to i8
  store i8 %421, i8* %32, align 1
  %422 = lshr i32 %395, 31
  %423 = lshr i32 %404, 31
  %424 = xor i32 %423, %422
  %425 = xor i32 %420, %422
  %426 = add nuw nsw i32 %425, %424
  %427 = icmp eq i32 %426, 2
  %428 = zext i1 %427 to i8
  store i8 %428, i8* %38, align 1
  %429 = icmp ne i8 %421, 0
  %430 = xor i1 %429, %427
  %.v193 = select i1 %430, i64 19, i64 361
  %431 = add i64 %390, %.v193
  store i64 %431, i64* %3, align 8
  br i1 %430, label %block_40e64a, label %block_.L_40e7a0

block_40e64a:                                     ; preds = %block_.L_40e637
  %432 = add i64 %431, 4
  store i64 %432, i64* %3, align 8
  %433 = load i64, i64* %399, align 8
  store i64 %433, i64* %RAX.i34, align 8
  %434 = add i64 %431, 7
  store i64 %434, i64* %3, align 8
  %435 = inttoptr i64 %433 to i64*
  %436 = load i64, i64* %435, align 8
  store i64 %436, i64* %RAX.i34, align 8
  %437 = add i64 %431, 14
  store i64 %437, i64* %3, align 8
  %438 = load i32, i32* %394, align 4
  %439 = sext i32 %438 to i64
  store i64 %439, i64* %RCX.i100, align 8
  %440 = shl nsw i64 %439, 3
  %441 = add i64 %440, %436
  %442 = add i64 %431, 18
  store i64 %442, i64* %3, align 8
  %443 = inttoptr i64 %441 to i64*
  %444 = load i64, i64* %443, align 8
  store i64 %444, i64* %RAX.i34, align 8
  %445 = add i64 %391, -124
  %446 = add i64 %431, 21
  store i64 %446, i64* %3, align 8
  %447 = inttoptr i64 %445 to i32*
  %448 = load i32, i32* %447, align 4
  %449 = add i32 %448, -1
  %450 = zext i32 %449 to i64
  store i64 %450, i64* %RDX.i2857, align 8
  %451 = icmp eq i32 %448, 0
  %452 = zext i1 %451 to i8
  store i8 %452, i8* %14, align 1
  %453 = and i32 %449, 255
  %454 = tail call i32 @llvm.ctpop.i32(i32 %453)
  %455 = trunc i32 %454 to i8
  %456 = and i8 %455, 1
  %457 = xor i8 %456, 1
  store i8 %457, i8* %21, align 1
  %458 = xor i32 %449, %448
  %459 = lshr i32 %458, 4
  %460 = trunc i32 %459 to i8
  %461 = and i8 %460, 1
  store i8 %461, i8* %26, align 1
  %462 = icmp eq i32 %449, 0
  %463 = zext i1 %462 to i8
  store i8 %463, i8* %29, align 1
  %464 = lshr i32 %449, 31
  %465 = trunc i32 %464 to i8
  store i8 %465, i8* %32, align 1
  %466 = lshr i32 %448, 31
  %467 = xor i32 %464, %466
  %468 = add nuw nsw i32 %467, %466
  %469 = icmp eq i32 %468, 2
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %38, align 1
  %471 = sext i32 %449 to i64
  store i64 %471, i64* %RCX.i100, align 8
  %472 = add i64 %444, %471
  %473 = add i64 %431, 31
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %472 to i8*
  %475 = load i8, i8* %474, align 1
  %476 = sext i8 %475 to i64
  %477 = and i64 %476, 4294967295
  store i64 %477, i64* %RDX.i2857, align 8
  %478 = sext i8 %475 to i32
  %479 = add nsw i32 %478, -32
  %480 = icmp ult i8 %475, 32
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %14, align 1
  %482 = and i32 %479, 255
  %483 = tail call i32 @llvm.ctpop.i32(i32 %482)
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  %486 = xor i8 %485, 1
  store i8 %486, i8* %21, align 1
  %487 = xor i32 %479, %478
  %488 = lshr i32 %487, 4
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  store i8 %490, i8* %26, align 1
  %491 = icmp eq i32 %479, 0
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %29, align 1
  %493 = lshr i32 %479, 31
  %494 = trunc i32 %493 to i8
  store i8 %494, i8* %32, align 1
  %495 = lshr i32 %478, 31
  %496 = xor i32 %493, %495
  %497 = add nuw nsw i32 %496, %495
  %498 = icmp eq i32 %497, 2
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %38, align 1
  %.v194 = select i1 %491, i64 317, i64 40
  %500 = add i64 %431, %.v194
  store i64 %500, i64* %3, align 8
  br i1 %491, label %block_.L_40e787, label %block_40e672

block_40e672:                                     ; preds = %block_40e64a
  %501 = load i64, i64* %RBP.i, align 8
  %502 = add i64 %501, -8
  %503 = add i64 %500, 4
  store i64 %503, i64* %3, align 8
  %504 = inttoptr i64 %502 to i64*
  %505 = load i64, i64* %504, align 8
  store i64 %505, i64* %RAX.i34, align 8
  %506 = add i64 %500, 7
  store i64 %506, i64* %3, align 8
  %507 = inttoptr i64 %505 to i64*
  %508 = load i64, i64* %507, align 8
  store i64 %508, i64* %RAX.i34, align 8
  %509 = add i64 %501, -132
  %510 = add i64 %500, 14
  store i64 %510, i64* %3, align 8
  %511 = inttoptr i64 %509 to i32*
  %512 = load i32, i32* %511, align 4
  %513 = sext i32 %512 to i64
  store i64 %513, i64* %RCX.i100, align 8
  %514 = shl nsw i64 %513, 3
  %515 = add i64 %514, %508
  %516 = add i64 %500, 18
  store i64 %516, i64* %3, align 8
  %517 = inttoptr i64 %515 to i64*
  %518 = load i64, i64* %517, align 8
  store i64 %518, i64* %RAX.i34, align 8
  %519 = add i64 %501, -124
  %520 = add i64 %500, 21
  store i64 %520, i64* %3, align 8
  %521 = inttoptr i64 %519 to i32*
  %522 = load i32, i32* %521, align 4
  %523 = add i32 %522, -1
  %524 = zext i32 %523 to i64
  store i64 %524, i64* %RDX.i2857, align 8
  %525 = icmp eq i32 %522, 0
  %526 = zext i1 %525 to i8
  store i8 %526, i8* %14, align 1
  %527 = and i32 %523, 255
  %528 = tail call i32 @llvm.ctpop.i32(i32 %527)
  %529 = trunc i32 %528 to i8
  %530 = and i8 %529, 1
  %531 = xor i8 %530, 1
  store i8 %531, i8* %21, align 1
  %532 = xor i32 %523, %522
  %533 = lshr i32 %532, 4
  %534 = trunc i32 %533 to i8
  %535 = and i8 %534, 1
  store i8 %535, i8* %26, align 1
  %536 = icmp eq i32 %523, 0
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %29, align 1
  %538 = lshr i32 %523, 31
  %539 = trunc i32 %538 to i8
  store i8 %539, i8* %32, align 1
  %540 = lshr i32 %522, 31
  %541 = xor i32 %538, %540
  %542 = add nuw nsw i32 %541, %540
  %543 = icmp eq i32 %542, 2
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %38, align 1
  %545 = sext i32 %523 to i64
  store i64 %545, i64* %RCX.i100, align 8
  %546 = add i64 %518, %545
  %547 = add i64 %500, 31
  store i64 %547, i64* %3, align 8
  %548 = inttoptr i64 %546 to i8*
  %549 = load i8, i8* %548, align 1
  %550 = sext i8 %549 to i64
  %551 = and i64 %550, 4294967295
  store i64 %551, i64* %RDX.i2857, align 8
  %552 = sext i8 %549 to i32
  %553 = add nsw i32 %552, -46
  %554 = icmp ult i8 %549, 46
  %555 = zext i1 %554 to i8
  store i8 %555, i8* %14, align 1
  %556 = and i32 %553, 255
  %557 = tail call i32 @llvm.ctpop.i32(i32 %556)
  %558 = trunc i32 %557 to i8
  %559 = and i8 %558, 1
  %560 = xor i8 %559, 1
  store i8 %560, i8* %21, align 1
  %561 = xor i32 %553, %552
  %562 = lshr i32 %561, 4
  %563 = trunc i32 %562 to i8
  %564 = and i8 %563, 1
  store i8 %564, i8* %26, align 1
  %565 = icmp eq i32 %553, 0
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %29, align 1
  %567 = lshr i32 %553, 31
  %568 = trunc i32 %567 to i8
  store i8 %568, i8* %32, align 1
  %569 = lshr i32 %552, 31
  %570 = xor i32 %567, %569
  %571 = add nuw nsw i32 %570, %569
  %572 = icmp eq i32 %571, 2
  %573 = zext i1 %572 to i8
  store i8 %573, i8* %38, align 1
  %.v195 = select i1 %565, i64 277, i64 40
  %574 = add i64 %500, %.v195
  store i64 %574, i64* %3, align 8
  br i1 %565, label %block_.L_40e787, label %block_40e69a

block_40e69a:                                     ; preds = %block_40e672
  %575 = load i64, i64* %RBP.i, align 8
  %576 = add i64 %575, -8
  %577 = add i64 %574, 4
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %576 to i64*
  %579 = load i64, i64* %578, align 8
  store i64 %579, i64* %RAX.i34, align 8
  %580 = add i64 %574, 7
  store i64 %580, i64* %3, align 8
  %581 = inttoptr i64 %579 to i64*
  %582 = load i64, i64* %581, align 8
  store i64 %582, i64* %RAX.i34, align 8
  %583 = add i64 %575, -132
  %584 = add i64 %574, 14
  store i64 %584, i64* %3, align 8
  %585 = inttoptr i64 %583 to i32*
  %586 = load i32, i32* %585, align 4
  %587 = sext i32 %586 to i64
  store i64 %587, i64* %RCX.i100, align 8
  %588 = shl nsw i64 %587, 3
  %589 = add i64 %588, %582
  %590 = add i64 %574, 18
  store i64 %590, i64* %3, align 8
  %591 = inttoptr i64 %589 to i64*
  %592 = load i64, i64* %591, align 8
  store i64 %592, i64* %RAX.i34, align 8
  %593 = add i64 %575, -124
  %594 = add i64 %574, 21
  store i64 %594, i64* %3, align 8
  %595 = inttoptr i64 %593 to i32*
  %596 = load i32, i32* %595, align 4
  %597 = add i32 %596, -1
  %598 = zext i32 %597 to i64
  store i64 %598, i64* %RDX.i2857, align 8
  %599 = icmp eq i32 %596, 0
  %600 = zext i1 %599 to i8
  store i8 %600, i8* %14, align 1
  %601 = and i32 %597, 255
  %602 = tail call i32 @llvm.ctpop.i32(i32 %601)
  %603 = trunc i32 %602 to i8
  %604 = and i8 %603, 1
  %605 = xor i8 %604, 1
  store i8 %605, i8* %21, align 1
  %606 = xor i32 %597, %596
  %607 = lshr i32 %606, 4
  %608 = trunc i32 %607 to i8
  %609 = and i8 %608, 1
  store i8 %609, i8* %26, align 1
  %610 = icmp eq i32 %597, 0
  %611 = zext i1 %610 to i8
  store i8 %611, i8* %29, align 1
  %612 = lshr i32 %597, 31
  %613 = trunc i32 %612 to i8
  store i8 %613, i8* %32, align 1
  %614 = lshr i32 %596, 31
  %615 = xor i32 %612, %614
  %616 = add nuw nsw i32 %615, %614
  %617 = icmp eq i32 %616, 2
  %618 = zext i1 %617 to i8
  store i8 %618, i8* %38, align 1
  %619 = sext i32 %597 to i64
  store i64 %619, i64* %RCX.i100, align 8
  %620 = add i64 %592, %619
  %621 = add i64 %574, 31
  store i64 %621, i64* %3, align 8
  %622 = inttoptr i64 %620 to i8*
  %623 = load i8, i8* %622, align 1
  %624 = sext i8 %623 to i64
  %625 = and i64 %624, 4294967295
  store i64 %625, i64* %RDX.i2857, align 8
  %626 = sext i8 %623 to i32
  %627 = add nsw i32 %626, -95
  %628 = icmp ult i8 %623, 95
  %629 = zext i1 %628 to i8
  store i8 %629, i8* %14, align 1
  %630 = and i32 %627, 255
  %631 = tail call i32 @llvm.ctpop.i32(i32 %630)
  %632 = trunc i32 %631 to i8
  %633 = and i8 %632, 1
  %634 = xor i8 %633, 1
  store i8 %634, i8* %21, align 1
  %635 = xor i32 %626, 16
  %636 = xor i32 %635, %627
  %637 = lshr i32 %636, 4
  %638 = trunc i32 %637 to i8
  %639 = and i8 %638, 1
  store i8 %639, i8* %26, align 1
  %640 = icmp eq i32 %627, 0
  %641 = zext i1 %640 to i8
  store i8 %641, i8* %29, align 1
  %642 = lshr i32 %627, 31
  %643 = trunc i32 %642 to i8
  store i8 %643, i8* %32, align 1
  %644 = lshr i32 %626, 31
  %645 = xor i32 %642, %644
  %646 = add nuw nsw i32 %645, %644
  %647 = icmp eq i32 %646, 2
  %648 = zext i1 %647 to i8
  store i8 %648, i8* %38, align 1
  %.v196 = select i1 %640, i64 237, i64 40
  %649 = add i64 %574, %.v196
  store i64 %649, i64* %3, align 8
  br i1 %640, label %block_.L_40e787, label %block_40e6c2

block_40e6c2:                                     ; preds = %block_40e69a
  %650 = load i64, i64* %RBP.i, align 8
  %651 = add i64 %650, -8
  %652 = add i64 %649, 4
  store i64 %652, i64* %3, align 8
  %653 = inttoptr i64 %651 to i64*
  %654 = load i64, i64* %653, align 8
  store i64 %654, i64* %RAX.i34, align 8
  %655 = add i64 %649, 7
  store i64 %655, i64* %3, align 8
  %656 = inttoptr i64 %654 to i64*
  %657 = load i64, i64* %656, align 8
  store i64 %657, i64* %RAX.i34, align 8
  %658 = add i64 %650, -132
  %659 = add i64 %649, 14
  store i64 %659, i64* %3, align 8
  %660 = inttoptr i64 %658 to i32*
  %661 = load i32, i32* %660, align 4
  %662 = sext i32 %661 to i64
  store i64 %662, i64* %RCX.i100, align 8
  %663 = shl nsw i64 %662, 3
  %664 = add i64 %663, %657
  %665 = add i64 %649, 18
  store i64 %665, i64* %3, align 8
  %666 = inttoptr i64 %664 to i64*
  %667 = load i64, i64* %666, align 8
  store i64 %667, i64* %RAX.i34, align 8
  %668 = add i64 %650, -124
  %669 = add i64 %649, 21
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %668 to i32*
  %671 = load i32, i32* %670, align 4
  %672 = add i32 %671, -1
  %673 = zext i32 %672 to i64
  store i64 %673, i64* %RDX.i2857, align 8
  %674 = icmp eq i32 %671, 0
  %675 = zext i1 %674 to i8
  store i8 %675, i8* %14, align 1
  %676 = and i32 %672, 255
  %677 = tail call i32 @llvm.ctpop.i32(i32 %676)
  %678 = trunc i32 %677 to i8
  %679 = and i8 %678, 1
  %680 = xor i8 %679, 1
  store i8 %680, i8* %21, align 1
  %681 = xor i32 %672, %671
  %682 = lshr i32 %681, 4
  %683 = trunc i32 %682 to i8
  %684 = and i8 %683, 1
  store i8 %684, i8* %26, align 1
  %685 = icmp eq i32 %672, 0
  %686 = zext i1 %685 to i8
  store i8 %686, i8* %29, align 1
  %687 = lshr i32 %672, 31
  %688 = trunc i32 %687 to i8
  store i8 %688, i8* %32, align 1
  %689 = lshr i32 %671, 31
  %690 = xor i32 %687, %689
  %691 = add nuw nsw i32 %690, %689
  %692 = icmp eq i32 %691, 2
  %693 = zext i1 %692 to i8
  store i8 %693, i8* %38, align 1
  %694 = sext i32 %672 to i64
  store i64 %694, i64* %RCX.i100, align 8
  %695 = add i64 %667, %694
  %696 = add i64 %649, 31
  store i64 %696, i64* %3, align 8
  %697 = inttoptr i64 %695 to i8*
  %698 = load i8, i8* %697, align 1
  %699 = sext i8 %698 to i64
  %700 = and i64 %699, 4294967295
  store i64 %700, i64* %RDX.i2857, align 8
  %701 = sext i8 %698 to i32
  %702 = add nsw i32 %701, -45
  %703 = icmp ult i8 %698, 45
  %704 = zext i1 %703 to i8
  store i8 %704, i8* %14, align 1
  %705 = and i32 %702, 255
  %706 = tail call i32 @llvm.ctpop.i32(i32 %705)
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  %709 = xor i8 %708, 1
  store i8 %709, i8* %21, align 1
  %710 = xor i32 %702, %701
  %711 = lshr i32 %710, 4
  %712 = trunc i32 %711 to i8
  %713 = and i8 %712, 1
  store i8 %713, i8* %26, align 1
  %714 = icmp eq i32 %702, 0
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %29, align 1
  %716 = lshr i32 %702, 31
  %717 = trunc i32 %716 to i8
  store i8 %717, i8* %32, align 1
  %718 = lshr i32 %701, 31
  %719 = xor i32 %716, %718
  %720 = add nuw nsw i32 %719, %718
  %721 = icmp eq i32 %720, 2
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %38, align 1
  %.v197 = select i1 %714, i64 197, i64 40
  %723 = add i64 %649, %.v197
  store i64 %723, i64* %3, align 8
  br i1 %714, label %block_.L_40e787, label %block_40e6ea

block_40e6ea:                                     ; preds = %block_40e6c2
  %724 = load i64, i64* %RBP.i, align 8
  %725 = add i64 %724, -8
  %726 = add i64 %723, 4
  store i64 %726, i64* %3, align 8
  %727 = inttoptr i64 %725 to i64*
  %728 = load i64, i64* %727, align 8
  store i64 %728, i64* %RAX.i34, align 8
  %729 = add i64 %723, 7
  store i64 %729, i64* %3, align 8
  %730 = inttoptr i64 %728 to i64*
  %731 = load i64, i64* %730, align 8
  store i64 %731, i64* %RAX.i34, align 8
  %732 = add i64 %724, -132
  %733 = add i64 %723, 14
  store i64 %733, i64* %3, align 8
  %734 = inttoptr i64 %732 to i32*
  %735 = load i32, i32* %734, align 4
  %736 = sext i32 %735 to i64
  store i64 %736, i64* %RCX.i100, align 8
  %737 = shl nsw i64 %736, 3
  %738 = add i64 %737, %731
  %739 = add i64 %723, 18
  store i64 %739, i64* %3, align 8
  %740 = inttoptr i64 %738 to i64*
  %741 = load i64, i64* %740, align 8
  store i64 %741, i64* %RAX.i34, align 8
  %742 = add i64 %724, -124
  %743 = add i64 %723, 21
  store i64 %743, i64* %3, align 8
  %744 = inttoptr i64 %742 to i32*
  %745 = load i32, i32* %744, align 4
  %746 = add i32 %745, -1
  %747 = zext i32 %746 to i64
  store i64 %747, i64* %RDX.i2857, align 8
  %748 = icmp eq i32 %745, 0
  %749 = zext i1 %748 to i8
  store i8 %749, i8* %14, align 1
  %750 = and i32 %746, 255
  %751 = tail call i32 @llvm.ctpop.i32(i32 %750)
  %752 = trunc i32 %751 to i8
  %753 = and i8 %752, 1
  %754 = xor i8 %753, 1
  store i8 %754, i8* %21, align 1
  %755 = xor i32 %746, %745
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
  %764 = xor i32 %761, %763
  %765 = add nuw nsw i32 %764, %763
  %766 = icmp eq i32 %765, 2
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %38, align 1
  %768 = sext i32 %746 to i64
  store i64 %768, i64* %RCX.i100, align 8
  %769 = add i64 %741, %768
  %770 = add i64 %723, 31
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %769 to i8*
  %772 = load i8, i8* %771, align 1
  %773 = sext i8 %772 to i64
  %774 = and i64 %773, 4294967295
  store i64 %774, i64* %RDX.i2857, align 8
  %775 = sext i8 %772 to i32
  %776 = add nsw i32 %775, -126
  %777 = icmp ult i8 %772, 126
  %778 = zext i1 %777 to i8
  store i8 %778, i8* %14, align 1
  %779 = and i32 %776, 255
  %780 = tail call i32 @llvm.ctpop.i32(i32 %779)
  %781 = trunc i32 %780 to i8
  %782 = and i8 %781, 1
  %783 = xor i8 %782, 1
  store i8 %783, i8* %21, align 1
  %784 = xor i32 %775, 16
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
  %793 = lshr i32 %775, 31
  %794 = xor i32 %791, %793
  %795 = add nuw nsw i32 %794, %793
  %796 = icmp eq i32 %795, 2
  %797 = zext i1 %796 to i8
  store i8 %797, i8* %38, align 1
  %.v198 = select i1 %789, i64 157, i64 40
  %798 = add i64 %723, %.v198
  store i64 %798, i64* %3, align 8
  br i1 %789, label %block_.L_40e787, label %block_40e712

block_40e712:                                     ; preds = %block_40e6ea
  store i64 ptrtoint (%G__0x676fe0_type* @G__0x676fe0 to i64), i64* %RDI.i783, align 8
  %799 = load i64, i64* %RBP.i, align 8
  %800 = add i64 %799, -112
  %801 = add i64 %798, 14
  store i64 %801, i64* %3, align 8
  %802 = inttoptr i64 %800 to i64*
  %803 = load i64, i64* %802, align 8
  store i64 %803, i64* %RAX.i34, align 8
  %804 = add i64 %799, -124
  %805 = add i64 %798, 18
  store i64 %805, i64* %3, align 8
  %806 = inttoptr i64 %804 to i32*
  %807 = load i32, i32* %806, align 4
  %808 = sext i32 %807 to i64
  store i64 %808, i64* %RCX.i100, align 8
  %809 = shl nsw i64 %808, 3
  %810 = add i64 %809, %803
  %811 = add i64 %798, 22
  store i64 %811, i64* %3, align 8
  %812 = inttoptr i64 %810 to i64*
  %813 = load i64, i64* %812, align 8
  store i64 %813, i64* %RAX.i34, align 8
  %814 = add i64 %799, -8
  %815 = add i64 %798, 26
  store i64 %815, i64* %3, align 8
  %816 = inttoptr i64 %814 to i64*
  %817 = load i64, i64* %816, align 8
  store i64 %817, i64* %RCX.i100, align 8
  %818 = add i64 %798, 29
  store i64 %818, i64* %3, align 8
  %819 = inttoptr i64 %817 to i64*
  %820 = load i64, i64* %819, align 8
  store i64 %820, i64* %RCX.i100, align 8
  %821 = add i64 %799, -132
  %822 = add i64 %798, 36
  store i64 %822, i64* %3, align 8
  %823 = inttoptr i64 %821 to i32*
  %824 = load i32, i32* %823, align 4
  %825 = sext i32 %824 to i64
  store i64 %825, i64* %RDX.i2857, align 8
  %826 = shl nsw i64 %825, 3
  %827 = add i64 %826, %820
  %828 = add i64 %798, 40
  store i64 %828, i64* %3, align 8
  %829 = inttoptr i64 %827 to i64*
  %830 = load i64, i64* %829, align 8
  store i64 %830, i64* %RCX.i100, align 8
  %831 = add i64 %798, 43
  store i64 %831, i64* %3, align 8
  %832 = load i32, i32* %806, align 4
  %833 = add i32 %832, -1
  %834 = zext i32 %833 to i64
  store i64 %834, i64* %RSI.i1533, align 8
  %835 = icmp eq i32 %832, 0
  %836 = zext i1 %835 to i8
  store i8 %836, i8* %14, align 1
  %837 = and i32 %833, 255
  %838 = tail call i32 @llvm.ctpop.i32(i32 %837)
  %839 = trunc i32 %838 to i8
  %840 = and i8 %839, 1
  %841 = xor i8 %840, 1
  store i8 %841, i8* %21, align 1
  %842 = xor i32 %833, %832
  %843 = lshr i32 %842, 4
  %844 = trunc i32 %843 to i8
  %845 = and i8 %844, 1
  store i8 %845, i8* %26, align 1
  %846 = icmp eq i32 %833, 0
  %847 = zext i1 %846 to i8
  store i8 %847, i8* %29, align 1
  %848 = lshr i32 %833, 31
  %849 = trunc i32 %848 to i8
  store i8 %849, i8* %32, align 1
  %850 = lshr i32 %832, 31
  %851 = xor i32 %848, %850
  %852 = add nuw nsw i32 %851, %850
  %853 = icmp eq i32 %852, 2
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %38, align 1
  %855 = sext i32 %833 to i64
  store i64 %855, i64* %RDX.i2857, align 8
  %856 = add i64 %830, %855
  %857 = add i64 %798, 53
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %856 to i8*
  %859 = load i8, i8* %858, align 1
  %860 = sext i8 %859 to i64
  %861 = and i64 %860, 4294967295
  store i64 %861, i64* %RSI.i1533, align 8
  %862 = add i64 %799, -168
  %863 = add i64 %798, 60
  store i64 %863, i64* %3, align 8
  %864 = inttoptr i64 %862 to i64*
  store i64 %813, i64* %864, align 8
  %865 = load i64, i64* %3, align 8
  %866 = add i64 %865, -53966
  %867 = add i64 %865, 5
  %868 = load i64, i64* %6, align 8
  %869 = add i64 %868, -8
  %870 = inttoptr i64 %869 to i64*
  store i64 %867, i64* %870, align 8
  store i64 %869, i64* %6, align 8
  store i64 %866, i64* %3, align 8
  %call2_40e74e = tail call %struct.Memory* @sub_401480.strchr_plt(%struct.State* nonnull %0, i64 %866, %struct.Memory* %MEMORY.1)
  %871 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x676fe0_type* @G__0x676fe0 to i64), i64* %RCX.i100, align 8
  %872 = load i64, i64* %RAX.i34, align 8
  %873 = sub i64 %872, ptrtoint (%G__0x676fe0_type* @G__0x676fe0 to i64)
  store i64 %873, i64* %RAX.i34, align 8
  %874 = icmp ult i64 %872, ptrtoint (%G__0x676fe0_type* @G__0x676fe0 to i64)
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %14, align 1
  %876 = trunc i64 %873 to i32
  %877 = and i32 %876, 255
  %878 = tail call i32 @llvm.ctpop.i32(i32 %877)
  %879 = trunc i32 %878 to i8
  %880 = and i8 %879, 1
  %881 = xor i8 %880, 1
  store i8 %881, i8* %21, align 1
  %882 = xor i64 %872, ptrtoint (%G__0x676fe0_type* @G__0x676fe0 to i64)
  %883 = xor i64 %882, %873
  %884 = lshr i64 %883, 4
  %885 = trunc i64 %884 to i8
  %886 = and i8 %885, 1
  store i8 %886, i8* %26, align 1
  %887 = icmp eq i64 %873, 0
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %29, align 1
  %889 = lshr i64 %873, 63
  %890 = trunc i64 %889 to i8
  store i8 %890, i8* %32, align 1
  %891 = lshr i64 %872, 63
  %892 = xor i64 %891, lshr (i64 ptrtoint (%G__0x676fe0_type* @G__0x676fe0 to i64), i64 63)
  %893 = xor i64 %889, %891
  %894 = add nuw nsw i64 %893, %892
  %895 = icmp eq i64 %894, 2
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %38, align 1
  %897 = trunc i64 %873 to i8
  store i8 %897, i8* %R8B.i2528, align 1
  %898 = load i64, i64* %RBP.i, align 8
  %899 = add i64 %898, -8
  %900 = add i64 %871, 20
  store i64 %900, i64* %3, align 8
  %901 = inttoptr i64 %899 to i64*
  %902 = load i64, i64* %901, align 8
  store i64 %902, i64* %RAX.i34, align 8
  %903 = add i64 %902, 16
  %904 = add i64 %871, 24
  store i64 %904, i64* %3, align 8
  %905 = inttoptr i64 %903 to i64*
  %906 = load i64, i64* %905, align 8
  store i64 %906, i64* %RAX.i34, align 8
  %907 = add i64 %898, -132
  %908 = add i64 %871, 31
  store i64 %908, i64* %3, align 8
  %909 = inttoptr i64 %907 to i32*
  %910 = load i32, i32* %909, align 4
  %911 = sext i32 %910 to i64
  store i64 %911, i64* %RCX.i100, align 8
  %912 = shl nsw i64 %911, 2
  %913 = add i64 %912, %906
  %914 = add i64 %871, 36
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %913 to i32*
  %916 = load i32, i32* %915, align 4
  store i32 %916, i32* %289, align 1
  store float 0.000000e+00, float* %291, align 1
  store float 0.000000e+00, float* %292, align 1
  store float 0.000000e+00, float* %294, align 1
  %917 = add i64 %898, -168
  %918 = add i64 %871, 43
  store i64 %918, i64* %3, align 8
  %919 = inttoptr i64 %917 to i64*
  %920 = load i64, i64* %919, align 8
  store i64 %920, i64* %RDI.i783, align 8
  %sext = shl i64 %873, 56
  %921 = ashr exact i64 %sext, 56
  %922 = and i64 %921, 4294967295
  store i64 %922, i64* %RSI.i1533, align 8
  %923 = add i64 %871, -37507
  %924 = add i64 %871, 52
  %925 = load i64, i64* %6, align 8
  %926 = add i64 %925, -8
  %927 = inttoptr i64 %926 to i64*
  store i64 %924, i64* %927, align 8
  store i64 %926, i64* %6, align 8
  store i64 %923, i64* %3, align 8
  %call2_40e782 = tail call %struct.Memory* @sub_4054d0.P7CountSymbol(%struct.State* nonnull %0, i64 %923, %struct.Memory* %MEMORY.1)
  %.pre94 = load i64, i64* %3, align 8
  br label %block_.L_40e787

block_.L_40e787:                                  ; preds = %block_40e712, %block_40e6ea, %block_40e6c2, %block_40e69a, %block_40e672, %block_40e64a
  %928 = phi i64 [ %.pre94, %block_40e712 ], [ %798, %block_40e6ea ], [ %723, %block_40e6c2 ], [ %649, %block_40e69a ], [ %574, %block_40e672 ], [ %500, %block_40e64a ]
  %929 = load i64, i64* %RBP.i, align 8
  %930 = add i64 %929, -132
  %931 = add i64 %928, 11
  store i64 %931, i64* %3, align 8
  %932 = inttoptr i64 %930 to i32*
  %933 = load i32, i32* %932, align 4
  %934 = add i32 %933, 1
  %935 = zext i32 %934 to i64
  store i64 %935, i64* %RAX.i34, align 8
  %936 = icmp eq i32 %933, -1
  %937 = icmp eq i32 %934, 0
  %938 = or i1 %936, %937
  %939 = zext i1 %938 to i8
  store i8 %939, i8* %14, align 1
  %940 = and i32 %934, 255
  %941 = tail call i32 @llvm.ctpop.i32(i32 %940)
  %942 = trunc i32 %941 to i8
  %943 = and i8 %942, 1
  %944 = xor i8 %943, 1
  store i8 %944, i8* %21, align 1
  %945 = xor i32 %934, %933
  %946 = lshr i32 %945, 4
  %947 = trunc i32 %946 to i8
  %948 = and i8 %947, 1
  store i8 %948, i8* %26, align 1
  %949 = zext i1 %937 to i8
  store i8 %949, i8* %29, align 1
  %950 = lshr i32 %934, 31
  %951 = trunc i32 %950 to i8
  store i8 %951, i8* %32, align 1
  %952 = lshr i32 %933, 31
  %953 = xor i32 %950, %952
  %954 = add nuw nsw i32 %953, %950
  %955 = icmp eq i32 %954, 2
  %956 = zext i1 %955 to i8
  store i8 %956, i8* %38, align 1
  %957 = add i64 %928, 20
  store i64 %957, i64* %3, align 8
  store i32 %934, i32* %932, align 4
  %958 = load i64, i64* %3, align 8
  %959 = add i64 %958, -356
  store i64 %959, i64* %3, align 8
  br label %block_.L_40e637

block_.L_40e7a0:                                  ; preds = %block_.L_40e637
  %960 = add i64 %431, ptrtoint (%G_0x46038__rip__type* @G_0x46038__rip_ to i64)
  %961 = add i64 %431, 8
  store i64 %961, i64* %3, align 8
  %962 = inttoptr i64 %960 to i64*
  %963 = load i64, i64* %962, align 8
  store i64 %963, i64* %339, align 1
  store double 0.000000e+00, double* %340, align 1
  %964 = add i64 %391, -112
  %965 = add i64 %431, 12
  store i64 %965, i64* %3, align 8
  %966 = inttoptr i64 %964 to i64*
  %967 = load i64, i64* %966, align 8
  store i64 %967, i64* %RAX.i34, align 8
  %968 = add i64 %391, -124
  %969 = add i64 %431, 16
  store i64 %969, i64* %3, align 8
  %970 = inttoptr i64 %968 to i32*
  %971 = load i32, i32* %970, align 4
  %972 = sext i32 %971 to i64
  store i64 %972, i64* %RCX.i100, align 8
  %973 = shl nsw i64 %972, 3
  %974 = add i64 %973, %967
  %975 = add i64 %431, 20
  store i64 %975, i64* %3, align 8
  %976 = inttoptr i64 %974 to i64*
  %977 = load i64, i64* %976, align 8
  store i64 %977, i64* %RDI.i783, align 8
  %978 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %979 = zext i32 %978 to i64
  store i64 %979, i64* %RSI.i1533, align 8
  %980 = add i64 %391, -144
  %981 = add i64 %431, 35
  store i64 %981, i64* %3, align 8
  %982 = inttoptr i64 %980 to float*
  %983 = load float, float* %982, align 4
  %984 = fpext float %983 to double
  store double %984, double* %342, align 1
  %985 = bitcast i64 %963 to double
  %986 = fdiv double %985, %984
  %.cast = bitcast double %986 to <2 x i32>
  %987 = fptrunc double %986 to float
  store float %987, float* %288, align 1
  %988 = extractelement <2 x i32> %.cast, i32 1
  store i32 %988, i32* %343, align 1
  store i32 0, i32* %147, align 1
  store i32 0, i32* %344, align 1
  %989 = add i64 %431, 276544
  %990 = add i64 %431, 48
  %991 = load i64, i64* %6, align 8
  %992 = add i64 %991, -8
  %993 = inttoptr i64 %992 to i64*
  store i64 %990, i64* %993, align 8
  store i64 %992, i64* %6, align 8
  store i64 %989, i64* %3, align 8
  %call2_40e7cb = tail call %struct.Memory* @sub_451fe0.FScale(%struct.State* nonnull %0, i64 %989, %struct.Memory* %MEMORY.1)
  %994 = load i64, i64* %RBP.i, align 8
  %995 = add i64 %994, -112
  %996 = load i64, i64* %3, align 8
  %997 = add i64 %996, 4
  store i64 %997, i64* %3, align 8
  %998 = inttoptr i64 %995 to i64*
  %999 = load i64, i64* %998, align 8
  store i64 %999, i64* %RAX.i34, align 8
  %1000 = add i64 %994, -124
  %1001 = add i64 %996, 8
  store i64 %1001, i64* %3, align 8
  %1002 = inttoptr i64 %1000 to i32*
  %1003 = load i32, i32* %1002, align 4
  %1004 = sext i32 %1003 to i64
  store i64 %1004, i64* %RCX.i100, align 8
  %1005 = shl nsw i64 %1004, 3
  %1006 = add i64 %1005, %999
  %1007 = add i64 %996, 12
  store i64 %1007, i64* %3, align 8
  %1008 = inttoptr i64 %1006 to i64*
  %1009 = load i64, i64* %1008, align 8
  store i64 %1009, i64* %RDI.i783, align 8
  %1010 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %1011 = zext i32 %1010 to i64
  store i64 %1011, i64* %RSI.i1533, align 8
  %1012 = add i64 %996, 276672
  %1013 = add i64 %996, 24
  %1014 = load i64, i64* %6, align 8
  %1015 = add i64 %1014, -8
  %1016 = inttoptr i64 %1015 to i64*
  store i64 %1013, i64* %1016, align 8
  store i64 %1015, i64* %6, align 8
  store i64 %1012, i64* %3, align 8
  %call2_40e7e3 = tail call %struct.Memory* @sub_452090.FSum(%struct.State* nonnull %0, i64 %1012, %struct.Memory* %call2_40e7cb)
  %1017 = load i64, i64* %RBP.i, align 8
  %1018 = add i64 %1017, -120
  %1019 = load i64, i64* %3, align 8
  %1020 = add i64 %1019, 4
  store i64 %1020, i64* %3, align 8
  %1021 = inttoptr i64 %1018 to i64*
  %1022 = load i64, i64* %1021, align 8
  store i64 %1022, i64* %RAX.i34, align 8
  %1023 = add i64 %1017, -124
  %1024 = add i64 %1019, 8
  store i64 %1024, i64* %3, align 8
  %1025 = inttoptr i64 %1023 to i32*
  %1026 = load i32, i32* %1025, align 4
  %1027 = sext i32 %1026 to i64
  store i64 %1027, i64* %RCX.i100, align 8
  %1028 = shl nsw i64 %1027, 2
  %1029 = add i64 %1028, %1022
  %1030 = add i64 %1019, 13
  store i64 %1030, i64* %3, align 8
  %1031 = load <2 x float>, <2 x float>* %300, align 1
  %1032 = extractelement <2 x float> %1031, i32 0
  %1033 = inttoptr i64 %1029 to float*
  store float %1032, float* %1033, align 4
  %1034 = load i64, i64* %RBP.i, align 8
  %1035 = add i64 %1034, -124
  %1036 = load i64, i64* %3, align 8
  %1037 = add i64 %1036, 3
  store i64 %1037, i64* %3, align 8
  %1038 = inttoptr i64 %1035 to i32*
  %1039 = load i32, i32* %1038, align 4
  %1040 = add i32 %1039, 1
  %1041 = zext i32 %1040 to i64
  store i64 %1041, i64* %RAX.i34, align 8
  %1042 = icmp eq i32 %1039, -1
  %1043 = icmp eq i32 %1040, 0
  %1044 = or i1 %1042, %1043
  %1045 = zext i1 %1044 to i8
  store i8 %1045, i8* %14, align 1
  %1046 = and i32 %1040, 255
  %1047 = tail call i32 @llvm.ctpop.i32(i32 %1046)
  %1048 = trunc i32 %1047 to i8
  %1049 = and i8 %1048, 1
  %1050 = xor i8 %1049, 1
  store i8 %1050, i8* %21, align 1
  %1051 = xor i32 %1040, %1039
  %1052 = lshr i32 %1051, 4
  %1053 = trunc i32 %1052 to i8
  %1054 = and i8 %1053, 1
  store i8 %1054, i8* %26, align 1
  %1055 = zext i1 %1043 to i8
  store i8 %1055, i8* %29, align 1
  %1056 = lshr i32 %1040, 31
  %1057 = trunc i32 %1056 to i8
  store i8 %1057, i8* %32, align 1
  %1058 = lshr i32 %1039, 31
  %1059 = xor i32 %1056, %1058
  %1060 = add nuw nsw i32 %1059, %1056
  %1061 = icmp eq i32 %1060, 2
  %1062 = zext i1 %1061 to i8
  store i8 %1062, i8* %38, align 1
  %1063 = add i64 %1036, 9
  store i64 %1063, i64* %3, align 8
  store i32 %1040, i32* %1038, align 4
  %1064 = load i64, i64* %3, align 8
  %1065 = add i64 %1064, -481
  store i64 %1065, i64* %3, align 8
  br label %block_.L_40e61d

block_.L_40e803:                                  ; preds = %block_.L_40e61d
  store i64 2, i64* %RDI.i783, align 8
  %1066 = add i64 %346, -48
  store i64 %1066, i64* %RDX.i2857, align 8
  %1067 = add i64 %346, -56
  store i64 %1067, i64* %RCX.i100, align 8
  %R8.i2434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %1068 = add i64 %346, -64
  store i64 %1068, i64* %R8.i2434, align 8
  %R9.i2431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %1069 = add i64 %346, -72
  store i64 %1069, i64* %R9.i2431, align 8
  %1070 = add i64 %346, -16
  %1071 = add i64 %386, 25
  store i64 %1071, i64* %3, align 8
  %1072 = inttoptr i64 %1070 to i64*
  %1073 = load i64, i64* %1072, align 8
  store i64 %1073, i64* %RAX.i34, align 8
  %1074 = add i64 %1073, 136
  %1075 = add i64 %386, 31
  store i64 %1075, i64* %3, align 8
  %1076 = inttoptr i64 %1074 to i32*
  %1077 = load i32, i32* %1076, align 4
  %1078 = zext i32 %1077 to i64
  store i64 %1078, i64* %RSI.i1533, align 8
  %1079 = add i64 %386, -28531
  %1080 = add i64 %386, 36
  %1081 = load i64, i64* %6, align 8
  %1082 = add i64 %1081, -8
  %1083 = inttoptr i64 %1082 to i64*
  store i64 %1080, i64* %1083, align 8
  store i64 %1082, i64* %6, align 8
  store i64 %1079, i64* %3, align 8
  %call2_40e822 = tail call %struct.Memory* @sub_407890.AllocPlan7Matrix(%struct.State* nonnull %0, i64 %1079, %struct.Memory* %MEMORY.1)
  %1084 = load i64, i64* %RBP.i, align 8
  %1085 = add i64 %1084, -80
  %1086 = load i64, i64* %3, align 8
  store i64 %1085, i64* %RDX.i2857, align 8
  %1087 = add i64 %1084, -88
  store i64 %1087, i64* %RCX.i100, align 8
  %1088 = add i64 %1084, -96
  store i64 %1088, i64* %R8.i2434, align 8
  %1089 = add i64 %1084, -104
  store i64 %1089, i64* %R9.i2431, align 8
  %1090 = add i64 %1084, -24
  %1091 = load i64, i64* %RAX.i34, align 8
  %1092 = add i64 %1086, 20
  store i64 %1092, i64* %3, align 8
  %1093 = inttoptr i64 %1090 to i64*
  store i64 %1091, i64* %1093, align 8
  %1094 = load i64, i64* %RBP.i, align 8
  %1095 = add i64 %1094, -8
  %1096 = load i64, i64* %3, align 8
  %1097 = add i64 %1096, 4
  store i64 %1097, i64* %3, align 8
  %1098 = inttoptr i64 %1095 to i64*
  %1099 = load i64, i64* %1098, align 8
  store i64 %1099, i64* %RAX.i34, align 8
  %1100 = add i64 %1099, 24
  %1101 = add i64 %1096, 7
  store i64 %1101, i64* %3, align 8
  %1102 = inttoptr i64 %1100 to i32*
  %1103 = load i32, i32* %1102, align 4
  %1104 = add i32 %1103, 1
  %1105 = zext i32 %1104 to i64
  store i64 %1105, i64* %RSI.i1533, align 8
  %1106 = icmp eq i32 %1103, -1
  %1107 = icmp eq i32 %1104, 0
  %1108 = or i1 %1106, %1107
  %1109 = zext i1 %1108 to i8
  store i8 %1109, i8* %14, align 1
  %1110 = and i32 %1104, 255
  %1111 = tail call i32 @llvm.ctpop.i32(i32 %1110)
  %1112 = trunc i32 %1111 to i8
  %1113 = and i8 %1112, 1
  %1114 = xor i8 %1113, 1
  store i8 %1114, i8* %21, align 1
  %1115 = xor i32 %1104, %1103
  %1116 = lshr i32 %1115, 4
  %1117 = trunc i32 %1116 to i8
  %1118 = and i8 %1117, 1
  store i8 %1118, i8* %26, align 1
  %1119 = zext i1 %1107 to i8
  store i8 %1119, i8* %29, align 1
  %1120 = lshr i32 %1104, 31
  %1121 = trunc i32 %1120 to i8
  store i8 %1121, i8* %32, align 1
  %1122 = lshr i32 %1103, 31
  %1123 = xor i32 %1120, %1122
  %1124 = add nuw nsw i32 %1123, %1120
  %1125 = icmp eq i32 %1124, 2
  %1126 = zext i1 %1125 to i8
  store i8 %1126, i8* %38, align 1
  %1127 = add i64 %1094, -16
  %1128 = add i64 %1096, 14
  store i64 %1128, i64* %3, align 8
  %1129 = inttoptr i64 %1127 to i64*
  %1130 = load i64, i64* %1129, align 8
  store i64 %1130, i64* %RAX.i34, align 8
  %1131 = add i64 %1130, 136
  %1132 = add i64 %1096, 20
  store i64 %1132, i64* %3, align 8
  %1133 = inttoptr i64 %1131 to i32*
  %1134 = load i32, i32* %1133, align 4
  %1135 = add i64 %1094, -172
  %1136 = add i64 %1096, 26
  store i64 %1136, i64* %3, align 8
  %1137 = inttoptr i64 %1135 to i32*
  store i32 %1134, i32* %1137, align 4
  %1138 = load i32, i32* %ESI.i2543, align 4
  %1139 = zext i32 %1138 to i64
  %1140 = load i64, i64* %3, align 8
  store i64 %1139, i64* %RDI.i783, align 8
  %1141 = load i64, i64* %RBP.i, align 8
  %1142 = add i64 %1141, -172
  %1143 = add i64 %1140, 8
  store i64 %1143, i64* %3, align 8
  %1144 = inttoptr i64 %1142 to i32*
  %1145 = load i32, i32* %1144, align 4
  %1146 = zext i32 %1145 to i64
  store i64 %1146, i64* %RSI.i1533, align 8
  %1147 = add i64 %1140, -28293
  %1148 = add i64 %1140, 13
  %1149 = load i64, i64* %6, align 8
  %1150 = add i64 %1149, -8
  %1151 = inttoptr i64 %1150 to i64*
  store i64 %1148, i64* %1151, align 8
  store i64 %1150, i64* %6, align 8
  store i64 %1147, i64* %3, align 8
  %call2_40e85d = tail call %struct.Memory* @sub_4079d0.AllocShadowMatrix(%struct.State* nonnull %0, i64 %1147, %struct.Memory* %call2_40e822)
  %1152 = load i64, i64* %RBP.i, align 8
  %1153 = add i64 %1152, -32
  %1154 = load i64, i64* %RAX.i34, align 8
  %1155 = load i64, i64* %3, align 8
  %1156 = add i64 %1155, 4
  store i64 %1156, i64* %3, align 8
  %1157 = inttoptr i64 %1153 to i64*
  store i64 %1154, i64* %1157, align 8
  %1158 = load i64, i64* %RBP.i, align 8
  %1159 = add i64 %1158, -48
  %1160 = load i64, i64* %3, align 8
  %1161 = add i64 %1160, 4
  store i64 %1161, i64* %3, align 8
  %1162 = inttoptr i64 %1159 to i64*
  %1163 = load i64, i64* %1162, align 8
  store i64 %1163, i64* %RAX.i34, align 8
  %1164 = add i64 %1160, 7
  store i64 %1164, i64* %3, align 8
  %1165 = inttoptr i64 %1163 to i64*
  %1166 = load i64, i64* %1165, align 8
  store i64 %1166, i64* %RAX.i34, align 8
  %1167 = add i64 %1166, 16
  %1168 = add i64 %1160, 14
  store i64 %1168, i64* %3, align 8
  %1169 = inttoptr i64 %1167 to i32*
  store i32 0, i32* %1169, align 4
  %1170 = load i64, i64* %RBP.i, align 8
  %1171 = add i64 %1170, -80
  %1172 = load i64, i64* %3, align 8
  %1173 = add i64 %1172, 4
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1171 to i64*
  %1175 = load i64, i64* %1174, align 8
  store i64 %1175, i64* %RAX.i34, align 8
  %1176 = add i64 %1172, 7
  store i64 %1176, i64* %3, align 8
  %1177 = inttoptr i64 %1175 to i64*
  %1178 = load i64, i64* %1177, align 8
  store i64 %1178, i64* %RAX.i34, align 8
  %1179 = add i64 %1178, 4
  %1180 = add i64 %1172, 11
  store i64 %1180, i64* %3, align 8
  %1181 = inttoptr i64 %1179 to i8*
  store i8 4, i8* %1181, align 1
  %1182 = load i64, i64* %RBP.i, align 8
  %1183 = add i64 %1182, -16
  %1184 = load i64, i64* %3, align 8
  %1185 = add i64 %1184, 4
  store i64 %1185, i64* %3, align 8
  %1186 = inttoptr i64 %1183 to i64*
  %1187 = load i64, i64* %1186, align 8
  store i64 %1187, i64* %RAX.i34, align 8
  %1188 = add i64 %1187, 336
  %1189 = add i64 %1184, 10
  store i64 %1189, i64* %3, align 8
  %1190 = inttoptr i64 %1188 to i32*
  %1191 = load i32, i32* %1190, align 4
  %1192 = zext i32 %1191 to i64
  store i64 %1192, i64* %RSI.i1533, align 8
  %1193 = add i64 %1182, -48
  %1194 = add i64 %1184, 14
  store i64 %1194, i64* %3, align 8
  %1195 = inttoptr i64 %1193 to i64*
  %1196 = load i64, i64* %1195, align 8
  store i64 %1196, i64* %RAX.i34, align 8
  %1197 = add i64 %1184, 17
  store i64 %1197, i64* %3, align 8
  %1198 = inttoptr i64 %1196 to i64*
  %1199 = load i64, i64* %1198, align 8
  store i64 %1199, i64* %RAX.i34, align 8
  %1200 = add i64 %1184, 19
  store i64 %1200, i64* %3, align 8
  %1201 = inttoptr i64 %1199 to i32*
  store i32 %1191, i32* %1201, align 4
  %1202 = load i64, i64* %RBP.i, align 8
  %1203 = add i64 %1202, -80
  %1204 = load i64, i64* %3, align 8
  %1205 = add i64 %1204, 4
  store i64 %1205, i64* %3, align 8
  %1206 = inttoptr i64 %1203 to i64*
  %1207 = load i64, i64* %1206, align 8
  store i64 %1207, i64* %RAX.i34, align 8
  %1208 = add i64 %1204, 7
  store i64 %1208, i64* %3, align 8
  %1209 = inttoptr i64 %1207 to i64*
  %1210 = load i64, i64* %1209, align 8
  store i64 %1210, i64* %RAX.i34, align 8
  %1211 = add i64 %1204, 10
  store i64 %1211, i64* %3, align 8
  %1212 = inttoptr i64 %1210 to i8*
  store i8 5, i8* %1212, align 1
  %1213 = load i64, i64* %RBP.i, align 8
  %1214 = add i64 %1213, -48
  %1215 = load i64, i64* %3, align 8
  %1216 = add i64 %1215, 4
  store i64 %1216, i64* %3, align 8
  %1217 = inttoptr i64 %1214 to i64*
  %1218 = load i64, i64* %1217, align 8
  store i64 %1218, i64* %RAX.i34, align 8
  %1219 = add i64 %1215, 7
  store i64 %1219, i64* %3, align 8
  %1220 = inttoptr i64 %1218 to i64*
  %1221 = load i64, i64* %1220, align 8
  store i64 %1221, i64* %RAX.i34, align 8
  %1222 = add i64 %1221, 12
  %1223 = add i64 %1215, 14
  store i64 %1223, i64* %3, align 8
  %1224 = inttoptr i64 %1222 to i32*
  store i32 -987654321, i32* %1224, align 4
  %1225 = load i64, i64* %RBP.i, align 8
  %1226 = add i64 %1225, -48
  %1227 = load i64, i64* %3, align 8
  %1228 = add i64 %1227, 4
  store i64 %1228, i64* %3, align 8
  %1229 = inttoptr i64 %1226 to i64*
  %1230 = load i64, i64* %1229, align 8
  store i64 %1230, i64* %RAX.i34, align 8
  %1231 = add i64 %1227, 7
  store i64 %1231, i64* %3, align 8
  %1232 = inttoptr i64 %1230 to i64*
  %1233 = load i64, i64* %1232, align 8
  store i64 %1233, i64* %RAX.i34, align 8
  %1234 = add i64 %1233, 8
  %1235 = add i64 %1227, 14
  store i64 %1235, i64* %3, align 8
  %1236 = inttoptr i64 %1234 to i32*
  store i32 -987654321, i32* %1236, align 4
  %1237 = load i64, i64* %RBP.i, align 8
  %1238 = add i64 %1237, -48
  %1239 = load i64, i64* %3, align 8
  %1240 = add i64 %1239, 4
  store i64 %1240, i64* %3, align 8
  %1241 = inttoptr i64 %1238 to i64*
  %1242 = load i64, i64* %1241, align 8
  store i64 %1242, i64* %RAX.i34, align 8
  %1243 = add i64 %1239, 7
  store i64 %1243, i64* %3, align 8
  %1244 = inttoptr i64 %1242 to i64*
  %1245 = load i64, i64* %1244, align 8
  store i64 %1245, i64* %RAX.i34, align 8
  %1246 = add i64 %1245, 4
  %1247 = add i64 %1239, 14
  store i64 %1247, i64* %3, align 8
  %1248 = inttoptr i64 %1246 to i32*
  store i32 -987654321, i32* %1248, align 4
  %1249 = load i64, i64* %RBP.i, align 8
  %1250 = add i64 %1249, -32
  %1251 = load i64, i64* %3, align 8
  %1252 = add i64 %1251, 4
  store i64 %1252, i64* %3, align 8
  %1253 = inttoptr i64 %1250 to i64*
  %1254 = load i64, i64* %1253, align 8
  store i64 %1254, i64* %RAX.i34, align 8
  %1255 = add i64 %1254, 32
  %1256 = add i64 %1251, 8
  store i64 %1256, i64* %3, align 8
  %1257 = inttoptr i64 %1255 to i64*
  %1258 = load i64, i64* %1257, align 8
  store i64 %1258, i64* %RAX.i34, align 8
  %1259 = add i64 %1251, 14
  store i64 %1259, i64* %3, align 8
  %1260 = inttoptr i64 %1258 to i32*
  store i32 0, i32* %1260, align 4
  %1261 = load i64, i64* %RBP.i, align 8
  %1262 = add i64 %1261, -80
  %1263 = load i64, i64* %3, align 8
  %1264 = add i64 %1263, 4
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1262 to i64*
  %1266 = load i64, i64* %1265, align 8
  store i64 %1266, i64* %RAX.i34, align 8
  %1267 = add i64 %1263, 7
  store i64 %1267, i64* %3, align 8
  %1268 = inttoptr i64 %1266 to i64*
  %1269 = load i64, i64* %1268, align 8
  store i64 %1269, i64* %RAX.i34, align 8
  %1270 = add i64 %1269, 3
  %1271 = add i64 %1263, 11
  store i64 %1271, i64* %3, align 8
  %1272 = inttoptr i64 %1270 to i8*
  store i8 0, i8* %1272, align 1
  %1273 = load i64, i64* %RBP.i, align 8
  %1274 = add i64 %1273, -80
  %1275 = load i64, i64* %3, align 8
  %1276 = add i64 %1275, 4
  store i64 %1276, i64* %3, align 8
  %1277 = inttoptr i64 %1274 to i64*
  %1278 = load i64, i64* %1277, align 8
  store i64 %1278, i64* %RAX.i34, align 8
  %1279 = add i64 %1275, 7
  store i64 %1279, i64* %3, align 8
  %1280 = inttoptr i64 %1278 to i64*
  %1281 = load i64, i64* %1280, align 8
  store i64 %1281, i64* %RAX.i34, align 8
  %1282 = add i64 %1281, 2
  %1283 = add i64 %1275, 11
  store i64 %1283, i64* %3, align 8
  %1284 = inttoptr i64 %1282 to i8*
  store i8 0, i8* %1284, align 1
  %1285 = load i64, i64* %RBP.i, align 8
  %1286 = add i64 %1285, -128
  %1287 = load i64, i64* %3, align 8
  %1288 = add i64 %1287, 7
  store i64 %1288, i64* %3, align 8
  %1289 = inttoptr i64 %1286 to i32*
  store i32 0, i32* %1289, align 4
  %.pre95 = load i64, i64* %3, align 8
  br label %block_.L_40e8f1

block_.L_40e8f1:                                  ; preds = %block_40e904, %block_.L_40e803
  %1290 = phi i64 [ %1464, %block_40e904 ], [ %.pre95, %block_.L_40e803 ]
  %1291 = load i64, i64* %RBP.i, align 8
  %1292 = add i64 %1291, -128
  %1293 = add i64 %1290, 3
  store i64 %1293, i64* %3, align 8
  %1294 = inttoptr i64 %1292 to i32*
  %1295 = load i32, i32* %1294, align 4
  %1296 = zext i32 %1295 to i64
  store i64 %1296, i64* %RAX.i34, align 8
  %1297 = add i64 %1291, -16
  %1298 = add i64 %1290, 7
  store i64 %1298, i64* %3, align 8
  %1299 = inttoptr i64 %1297 to i64*
  %1300 = load i64, i64* %1299, align 8
  store i64 %1300, i64* %RCX.i100, align 8
  %1301 = add i64 %1300, 136
  %1302 = add i64 %1290, 13
  store i64 %1302, i64* %3, align 8
  %1303 = inttoptr i64 %1301 to i32*
  %1304 = load i32, i32* %1303, align 4
  %1305 = sub i32 %1295, %1304
  %1306 = icmp ult i32 %1295, %1304
  %1307 = zext i1 %1306 to i8
  store i8 %1307, i8* %14, align 1
  %1308 = and i32 %1305, 255
  %1309 = tail call i32 @llvm.ctpop.i32(i32 %1308)
  %1310 = trunc i32 %1309 to i8
  %1311 = and i8 %1310, 1
  %1312 = xor i8 %1311, 1
  store i8 %1312, i8* %21, align 1
  %1313 = xor i32 %1304, %1295
  %1314 = xor i32 %1313, %1305
  %1315 = lshr i32 %1314, 4
  %1316 = trunc i32 %1315 to i8
  %1317 = and i8 %1316, 1
  store i8 %1317, i8* %26, align 1
  %1318 = icmp eq i32 %1305, 0
  %1319 = zext i1 %1318 to i8
  store i8 %1319, i8* %29, align 1
  %1320 = lshr i32 %1305, 31
  %1321 = trunc i32 %1320 to i8
  store i8 %1321, i8* %32, align 1
  %1322 = lshr i32 %1295, 31
  %1323 = lshr i32 %1304, 31
  %1324 = xor i32 %1323, %1322
  %1325 = xor i32 %1320, %1322
  %1326 = add nuw nsw i32 %1325, %1324
  %1327 = icmp eq i32 %1326, 2
  %1328 = zext i1 %1327 to i8
  store i8 %1328, i8* %38, align 1
  %1329 = icmp ne i8 %1321, 0
  %1330 = xor i1 %1329, %1327
  %.demorgan139 = or i1 %1318, %1330
  %.v146 = select i1 %.demorgan139, i64 19, i64 132
  %1331 = add i64 %1290, %.v146
  store i64 %1331, i64* %3, align 8
  br i1 %.demorgan139, label %block_40e904, label %block_.L_40e975

block_40e904:                                     ; preds = %block_.L_40e8f1
  %1332 = add i64 %1291, -72
  %1333 = add i64 %1331, 4
  store i64 %1333, i64* %3, align 8
  %1334 = inttoptr i64 %1332 to i64*
  %1335 = load i64, i64* %1334, align 8
  store i64 %1335, i64* %RAX.i34, align 8
  %1336 = add i64 %1331, 7
  store i64 %1336, i64* %3, align 8
  %1337 = inttoptr i64 %1335 to i64*
  %1338 = load i64, i64* %1337, align 8
  store i64 %1338, i64* %RAX.i34, align 8
  %1339 = add i64 %1331, 11
  store i64 %1339, i64* %3, align 8
  %1340 = load i32, i32* %1294, align 4
  %1341 = sext i32 %1340 to i64
  store i64 %1341, i64* %RCX.i100, align 8
  %1342 = shl nsw i64 %1341, 2
  %1343 = add i64 %1342, %1338
  %1344 = add i64 %1331, 18
  store i64 %1344, i64* %3, align 8
  %1345 = inttoptr i64 %1343 to i32*
  store i32 -987654321, i32* %1345, align 4
  %1346 = load i64, i64* %RBP.i, align 8
  %1347 = add i64 %1346, -64
  %1348 = load i64, i64* %3, align 8
  %1349 = add i64 %1348, 4
  store i64 %1349, i64* %3, align 8
  %1350 = inttoptr i64 %1347 to i64*
  %1351 = load i64, i64* %1350, align 8
  store i64 %1351, i64* %RAX.i34, align 8
  %1352 = add i64 %1348, 7
  store i64 %1352, i64* %3, align 8
  %1353 = inttoptr i64 %1351 to i64*
  %1354 = load i64, i64* %1353, align 8
  store i64 %1354, i64* %RAX.i34, align 8
  %1355 = add i64 %1346, -128
  %1356 = add i64 %1348, 11
  store i64 %1356, i64* %3, align 8
  %1357 = inttoptr i64 %1355 to i32*
  %1358 = load i32, i32* %1357, align 4
  %1359 = sext i32 %1358 to i64
  store i64 %1359, i64* %RCX.i100, align 8
  %1360 = shl nsw i64 %1359, 2
  %1361 = add i64 %1360, %1354
  %1362 = add i64 %1348, 18
  store i64 %1362, i64* %3, align 8
  %1363 = inttoptr i64 %1361 to i32*
  store i32 -987654321, i32* %1363, align 4
  %1364 = load i64, i64* %RBP.i, align 8
  %1365 = add i64 %1364, -56
  %1366 = load i64, i64* %3, align 8
  %1367 = add i64 %1366, 4
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1365 to i64*
  %1369 = load i64, i64* %1368, align 8
  store i64 %1369, i64* %RAX.i34, align 8
  %1370 = add i64 %1366, 7
  store i64 %1370, i64* %3, align 8
  %1371 = inttoptr i64 %1369 to i64*
  %1372 = load i64, i64* %1371, align 8
  store i64 %1372, i64* %RAX.i34, align 8
  %1373 = add i64 %1364, -128
  %1374 = add i64 %1366, 11
  store i64 %1374, i64* %3, align 8
  %1375 = inttoptr i64 %1373 to i32*
  %1376 = load i32, i32* %1375, align 4
  %1377 = sext i32 %1376 to i64
  store i64 %1377, i64* %RCX.i100, align 8
  %1378 = shl nsw i64 %1377, 2
  %1379 = add i64 %1378, %1372
  %1380 = add i64 %1366, 18
  store i64 %1380, i64* %3, align 8
  %1381 = inttoptr i64 %1379 to i32*
  store i32 -987654321, i32* %1381, align 4
  %1382 = load i64, i64* %RBP.i, align 8
  %1383 = add i64 %1382, -104
  %1384 = load i64, i64* %3, align 8
  %1385 = add i64 %1384, 4
  store i64 %1385, i64* %3, align 8
  %1386 = inttoptr i64 %1383 to i64*
  %1387 = load i64, i64* %1386, align 8
  store i64 %1387, i64* %RAX.i34, align 8
  %1388 = add i64 %1384, 7
  store i64 %1388, i64* %3, align 8
  %1389 = inttoptr i64 %1387 to i64*
  %1390 = load i64, i64* %1389, align 8
  store i64 %1390, i64* %RAX.i34, align 8
  %1391 = add i64 %1382, -128
  %1392 = add i64 %1384, 11
  store i64 %1392, i64* %3, align 8
  %1393 = inttoptr i64 %1391 to i32*
  %1394 = load i32, i32* %1393, align 4
  %1395 = sext i32 %1394 to i64
  store i64 %1395, i64* %RCX.i100, align 8
  %1396 = add i64 %1390, %1395
  %1397 = add i64 %1384, 15
  store i64 %1397, i64* %3, align 8
  %1398 = inttoptr i64 %1396 to i8*
  store i8 0, i8* %1398, align 1
  %1399 = load i64, i64* %RBP.i, align 8
  %1400 = add i64 %1399, -96
  %1401 = load i64, i64* %3, align 8
  %1402 = add i64 %1401, 4
  store i64 %1402, i64* %3, align 8
  %1403 = inttoptr i64 %1400 to i64*
  %1404 = load i64, i64* %1403, align 8
  store i64 %1404, i64* %RAX.i34, align 8
  %1405 = add i64 %1401, 7
  store i64 %1405, i64* %3, align 8
  %1406 = inttoptr i64 %1404 to i64*
  %1407 = load i64, i64* %1406, align 8
  store i64 %1407, i64* %RAX.i34, align 8
  %1408 = add i64 %1399, -128
  %1409 = add i64 %1401, 11
  store i64 %1409, i64* %3, align 8
  %1410 = inttoptr i64 %1408 to i32*
  %1411 = load i32, i32* %1410, align 4
  %1412 = sext i32 %1411 to i64
  store i64 %1412, i64* %RCX.i100, align 8
  %1413 = add i64 %1407, %1412
  %1414 = add i64 %1401, 15
  store i64 %1414, i64* %3, align 8
  %1415 = inttoptr i64 %1413 to i8*
  store i8 0, i8* %1415, align 1
  %1416 = load i64, i64* %RBP.i, align 8
  %1417 = add i64 %1416, -88
  %1418 = load i64, i64* %3, align 8
  %1419 = add i64 %1418, 4
  store i64 %1419, i64* %3, align 8
  %1420 = inttoptr i64 %1417 to i64*
  %1421 = load i64, i64* %1420, align 8
  store i64 %1421, i64* %RAX.i34, align 8
  %1422 = add i64 %1418, 7
  store i64 %1422, i64* %3, align 8
  %1423 = inttoptr i64 %1421 to i64*
  %1424 = load i64, i64* %1423, align 8
  store i64 %1424, i64* %RAX.i34, align 8
  %1425 = add i64 %1416, -128
  %1426 = add i64 %1418, 11
  store i64 %1426, i64* %3, align 8
  %1427 = inttoptr i64 %1425 to i32*
  %1428 = load i32, i32* %1427, align 4
  %1429 = sext i32 %1428 to i64
  store i64 %1429, i64* %RCX.i100, align 8
  %1430 = add i64 %1424, %1429
  %1431 = add i64 %1418, 15
  store i64 %1431, i64* %3, align 8
  %1432 = inttoptr i64 %1430 to i8*
  store i8 0, i8* %1432, align 1
  %1433 = load i64, i64* %RBP.i, align 8
  %1434 = add i64 %1433, -128
  %1435 = load i64, i64* %3, align 8
  %1436 = add i64 %1435, 3
  store i64 %1436, i64* %3, align 8
  %1437 = inttoptr i64 %1434 to i32*
  %1438 = load i32, i32* %1437, align 4
  %1439 = add i32 %1438, 1
  %1440 = zext i32 %1439 to i64
  store i64 %1440, i64* %RAX.i34, align 8
  %1441 = icmp eq i32 %1438, -1
  %1442 = icmp eq i32 %1439, 0
  %1443 = or i1 %1441, %1442
  %1444 = zext i1 %1443 to i8
  store i8 %1444, i8* %14, align 1
  %1445 = and i32 %1439, 255
  %1446 = tail call i32 @llvm.ctpop.i32(i32 %1445)
  %1447 = trunc i32 %1446 to i8
  %1448 = and i8 %1447, 1
  %1449 = xor i8 %1448, 1
  store i8 %1449, i8* %21, align 1
  %1450 = xor i32 %1439, %1438
  %1451 = lshr i32 %1450, 4
  %1452 = trunc i32 %1451 to i8
  %1453 = and i8 %1452, 1
  store i8 %1453, i8* %26, align 1
  %1454 = zext i1 %1442 to i8
  store i8 %1454, i8* %29, align 1
  %1455 = lshr i32 %1439, 31
  %1456 = trunc i32 %1455 to i8
  store i8 %1456, i8* %32, align 1
  %1457 = lshr i32 %1438, 31
  %1458 = xor i32 %1455, %1457
  %1459 = add nuw nsw i32 %1458, %1455
  %1460 = icmp eq i32 %1459, 2
  %1461 = zext i1 %1460 to i8
  store i8 %1461, i8* %38, align 1
  %1462 = add i64 %1435, 9
  store i64 %1462, i64* %3, align 8
  store i32 %1439, i32* %1437, align 4
  %1463 = load i64, i64* %3, align 8
  %1464 = add i64 %1463, -127
  store i64 %1464, i64* %3, align 8
  br label %block_.L_40e8f1

block_.L_40e975:                                  ; preds = %block_.L_40e8f1
  %1465 = add i64 %1291, -124
  %1466 = add i64 %1331, 7
  store i64 %1466, i64* %3, align 8
  %1467 = inttoptr i64 %1465 to i32*
  store i32 1, i32* %1467, align 4
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %SIL.i2180 = bitcast %union.anon* %44 to i8*
  %1469 = bitcast %union.VectorReg* %341 to i8*
  %1470 = bitcast %union.VectorReg* %341 to float*
  %1471 = bitcast %union.VectorReg* %341 to i32*
  %1472 = getelementptr inbounds i8, i8* %1469, i64 4
  %1473 = bitcast i8* %1472 to float*
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %1475 = bitcast i64* %1474 to float*
  %1476 = getelementptr inbounds i8, i8* %1469, i64 12
  %1477 = bitcast i8* %1476 to float*
  %1478 = bitcast %union.VectorReg* %341 to <2 x float>*
  %1479 = bitcast [32 x %union.VectorReg]* %282 to <2 x i32>*
  %1480 = bitcast i64* %146 to <2 x i32>*
  %1481 = bitcast %union.VectorReg* %341 to <2 x i32>*
  %1482 = bitcast i64* %1474 to <2 x i32>*
  %1483 = bitcast i8* %1472 to i32*
  %1484 = bitcast i64* %1474 to i32*
  %1485 = bitcast i8* %1476 to i32*
  %.pre96 = load i64, i64* %3, align 8
  %1486 = bitcast [32 x %union.VectorReg]* %282 to <4 x i32>*
  %1487 = bitcast [32 x %union.VectorReg]* %282 to <4 x i32>*
  br label %block_.L_40e97c

block_.L_40e97c:                                  ; preds = %block_.L_40f726, %block_.L_40e975
  %1488 = phi i64 [ %.pre96, %block_.L_40e975 ], [ %6658, %block_.L_40f726 ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_40e85d, %block_.L_40e975 ], [ %MEMORY.6, %block_.L_40f726 ]
  %1489 = load i64, i64* %RBP.i, align 8
  %1490 = add i64 %1489, -124
  %1491 = add i64 %1488, 3
  store i64 %1491, i64* %3, align 8
  %1492 = inttoptr i64 %1490 to i32*
  %1493 = load i32, i32* %1492, align 4
  %1494 = zext i32 %1493 to i64
  store i64 %1494, i64* %RAX.i34, align 8
  %1495 = add i64 %1489, -8
  %1496 = add i64 %1488, 7
  store i64 %1496, i64* %3, align 8
  %1497 = inttoptr i64 %1495 to i64*
  %1498 = load i64, i64* %1497, align 8
  store i64 %1498, i64* %RCX.i100, align 8
  %1499 = add i64 %1498, 24
  %1500 = add i64 %1488, 10
  store i64 %1500, i64* %3, align 8
  %1501 = inttoptr i64 %1499 to i32*
  %1502 = load i32, i32* %1501, align 4
  %1503 = sub i32 %1493, %1502
  %1504 = icmp ult i32 %1493, %1502
  %1505 = zext i1 %1504 to i8
  store i8 %1505, i8* %14, align 1
  %1506 = and i32 %1503, 255
  %1507 = tail call i32 @llvm.ctpop.i32(i32 %1506)
  %1508 = trunc i32 %1507 to i8
  %1509 = and i8 %1508, 1
  %1510 = xor i8 %1509, 1
  store i8 %1510, i8* %21, align 1
  %1511 = xor i32 %1502, %1493
  %1512 = xor i32 %1511, %1503
  %1513 = lshr i32 %1512, 4
  %1514 = trunc i32 %1513 to i8
  %1515 = and i8 %1514, 1
  store i8 %1515, i8* %26, align 1
  %1516 = icmp eq i32 %1503, 0
  %1517 = zext i1 %1516 to i8
  store i8 %1517, i8* %29, align 1
  %1518 = lshr i32 %1503, 31
  %1519 = trunc i32 %1518 to i8
  store i8 %1519, i8* %32, align 1
  %1520 = lshr i32 %1493, 31
  %1521 = lshr i32 %1502, 31
  %1522 = xor i32 %1521, %1520
  %1523 = xor i32 %1518, %1520
  %1524 = add nuw nsw i32 %1523, %1522
  %1525 = icmp eq i32 %1524, 2
  %1526 = zext i1 %1525 to i8
  store i8 %1526, i8* %38, align 1
  %1527 = icmp ne i8 %1519, 0
  %1528 = xor i1 %1527, %1525
  %.demorgan140 = or i1 %1516, %1528
  %.v199 = select i1 %.demorgan140, i64 16, i64 3517
  %1529 = add i64 %1488, %.v199
  %1530 = add i64 %1529, 5
  store i64 %1530, i64* %3, align 8
  store i64 2, i64* %RAX.i34, align 8
  br i1 %.demorgan140, label %block_40e98c, label %block_.L_40f739

block_40e98c:                                     ; preds = %block_.L_40e97c
  %1531 = add i64 %1529, 8
  store i64 %1531, i64* %3, align 8
  %1532 = load i32, i32* %1492, align 4
  %1533 = zext i32 %1532 to i64
  store i64 %1533, i64* %RCX.i100, align 8
  %1534 = add i64 %1489, -176
  %1535 = add i64 %1529, 14
  store i64 %1535, i64* %3, align 8
  %1536 = inttoptr i64 %1534 to i32*
  store i32 2, i32* %1536, align 4
  %1537 = load i32, i32* %ECX.i2841, align 4
  %1538 = zext i32 %1537 to i64
  %1539 = load i64, i64* %3, align 8
  store i64 %1538, i64* %RAX.i34, align 8
  %1540 = sext i32 %1537 to i64
  %1541 = lshr i64 %1540, 32
  store i64 %1541, i64* %1468, align 8
  %1542 = load i64, i64* %RBP.i, align 8
  %1543 = add i64 %1542, -176
  %1544 = add i64 %1539, 9
  store i64 %1544, i64* %3, align 8
  %1545 = inttoptr i64 %1543 to i32*
  %1546 = load i32, i32* %1545, align 4
  %1547 = zext i32 %1546 to i64
  store i64 %1547, i64* %RCX.i100, align 8
  %1548 = add i64 %1539, 11
  store i64 %1548, i64* %3, align 8
  %1549 = sext i32 %1546 to i64
  %1550 = shl nuw i64 %1541, 32
  %1551 = or i64 %1550, %1538
  %1552 = sdiv i64 %1551, %1549
  %1553 = shl i64 %1552, 32
  %1554 = ashr exact i64 %1553, 32
  %1555 = icmp eq i64 %1552, %1554
  br i1 %1555, label %1558, label %1556

; <label>:1556:                                   ; preds = %block_40e98c
  %1557 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1548, %struct.Memory* %MEMORY.5)
  %.pre97 = load i64, i64* %RBP.i, align 8
  %.pre98 = load i32, i32* %EDX.i2852, align 4
  %.pre99 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:1558:                                   ; preds = %block_40e98c
  %1559 = srem i64 %1551, %1549
  %1560 = and i64 %1552, 4294967295
  store i64 %1560, i64* %RAX.i34, align 8
  %1561 = and i64 %1559, 4294967295
  store i64 %1561, i64* %RDX.i2857, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1562 = trunc i64 %1559 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %1558, %1556
  %1563 = phi i64 [ %.pre99, %1556 ], [ %1548, %1558 ]
  %1564 = phi i32 [ %.pre98, %1556 ], [ %1562, %1558 ]
  %1565 = phi i64 [ %.pre97, %1556 ], [ %1542, %1558 ]
  %1566 = phi %struct.Memory* [ %1557, %1556 ], [ %MEMORY.5, %1558 ]
  %1567 = add i64 %1565, -148
  %1568 = add i64 %1563, 6
  store i64 %1568, i64* %3, align 8
  %1569 = inttoptr i64 %1567 to i32*
  store i32 %1564, i32* %1569, align 4
  %1570 = load i64, i64* %RBP.i, align 8
  %1571 = add i64 %1570, -148
  %1572 = load i64, i64* %3, align 8
  %1573 = add i64 %1572, 7
  store i64 %1573, i64* %3, align 8
  %1574 = inttoptr i64 %1571 to i32*
  %1575 = load i32, i32* %1574, align 4
  %1576 = icmp eq i32 %1575, 0
  %1577 = zext i1 %1576 to i8
  store i8 %1577, i8* %SIL.i2180, align 1
  store i8 0, i8* %14, align 1
  %1578 = zext i1 %1576 to i32
  %1579 = tail call i32 @llvm.ctpop.i32(i32 %1578)
  %1580 = trunc i32 %1579 to i8
  %1581 = xor i8 %1580, 1
  store i8 %1581, i8* %21, align 1
  %1582 = xor i8 %1577, 1
  store i8 %1582, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1583 = zext i1 %1576 to i64
  store i64 %1583, i64* %RDX.i2857, align 8
  %1584 = add i64 %1570, -152
  %1585 = zext i1 %1576 to i32
  %1586 = add i64 %1572, 29
  store i64 %1586, i64* %3, align 8
  %1587 = inttoptr i64 %1584 to i32*
  store i32 %1585, i32* %1587, align 4
  %1588 = load i64, i64* %RBP.i, align 8
  %1589 = add i64 %1588, -72
  %1590 = load i64, i64* %3, align 8
  %1591 = add i64 %1590, 4
  store i64 %1591, i64* %3, align 8
  %1592 = inttoptr i64 %1589 to i64*
  %1593 = load i64, i64* %1592, align 8
  store i64 %1593, i64* %RDI.i783, align 8
  %1594 = add i64 %1588, -148
  %1595 = add i64 %1590, 11
  store i64 %1595, i64* %3, align 8
  %1596 = inttoptr i64 %1594 to i32*
  %1597 = load i32, i32* %1596, align 4
  %1598 = sext i32 %1597 to i64
  store i64 %1598, i64* %R8.i2434, align 8
  %1599 = shl nsw i64 %1598, 3
  %1600 = add i64 %1599, %1593
  %1601 = add i64 %1590, 15
  store i64 %1601, i64* %3, align 8
  %1602 = inttoptr i64 %1600 to i64*
  %1603 = load i64, i64* %1602, align 8
  store i64 %1603, i64* %RDI.i783, align 8
  %1604 = add i64 %1590, 21
  store i64 %1604, i64* %3, align 8
  %1605 = inttoptr i64 %1603 to i32*
  store i32 -987654321, i32* %1605, align 4
  %1606 = load i64, i64* %RBP.i, align 8
  %1607 = add i64 %1606, -64
  %1608 = load i64, i64* %3, align 8
  %1609 = add i64 %1608, 4
  store i64 %1609, i64* %3, align 8
  %1610 = inttoptr i64 %1607 to i64*
  %1611 = load i64, i64* %1610, align 8
  store i64 %1611, i64* %RDI.i783, align 8
  %1612 = add i64 %1606, -148
  %1613 = add i64 %1608, 11
  store i64 %1613, i64* %3, align 8
  %1614 = inttoptr i64 %1612 to i32*
  %1615 = load i32, i32* %1614, align 4
  %1616 = sext i32 %1615 to i64
  store i64 %1616, i64* %R8.i2434, align 8
  %1617 = shl nsw i64 %1616, 3
  %1618 = add i64 %1617, %1611
  %1619 = add i64 %1608, 15
  store i64 %1619, i64* %3, align 8
  %1620 = inttoptr i64 %1618 to i64*
  %1621 = load i64, i64* %1620, align 8
  store i64 %1621, i64* %RDI.i783, align 8
  %1622 = add i64 %1608, 21
  store i64 %1622, i64* %3, align 8
  %1623 = inttoptr i64 %1621 to i32*
  store i32 -987654321, i32* %1623, align 4
  %1624 = load i64, i64* %RBP.i, align 8
  %1625 = add i64 %1624, -56
  %1626 = load i64, i64* %3, align 8
  %1627 = add i64 %1626, 4
  store i64 %1627, i64* %3, align 8
  %1628 = inttoptr i64 %1625 to i64*
  %1629 = load i64, i64* %1628, align 8
  store i64 %1629, i64* %RDI.i783, align 8
  %1630 = add i64 %1624, -148
  %1631 = add i64 %1626, 11
  store i64 %1631, i64* %3, align 8
  %1632 = inttoptr i64 %1630 to i32*
  %1633 = load i32, i32* %1632, align 4
  %1634 = sext i32 %1633 to i64
  store i64 %1634, i64* %R8.i2434, align 8
  %1635 = shl nsw i64 %1634, 3
  %1636 = add i64 %1635, %1629
  %1637 = add i64 %1626, 15
  store i64 %1637, i64* %3, align 8
  %1638 = inttoptr i64 %1636 to i64*
  %1639 = load i64, i64* %1638, align 8
  store i64 %1639, i64* %RDI.i783, align 8
  %1640 = add i64 %1626, 21
  store i64 %1640, i64* %3, align 8
  %1641 = inttoptr i64 %1639 to i32*
  store i32 -987654321, i32* %1641, align 4
  %1642 = load i64, i64* %RBP.i, align 8
  %1643 = add i64 %1642, -104
  %1644 = load i64, i64* %3, align 8
  %1645 = add i64 %1644, 4
  store i64 %1645, i64* %3, align 8
  %1646 = inttoptr i64 %1643 to i64*
  %1647 = load i64, i64* %1646, align 8
  store i64 %1647, i64* %RDI.i783, align 8
  %1648 = add i64 %1642, -124
  %1649 = add i64 %1644, 8
  store i64 %1649, i64* %3, align 8
  %1650 = inttoptr i64 %1648 to i32*
  %1651 = load i32, i32* %1650, align 4
  %1652 = sext i32 %1651 to i64
  store i64 %1652, i64* %R8.i2434, align 8
  %1653 = shl nsw i64 %1652, 3
  %1654 = add i64 %1653, %1647
  %1655 = add i64 %1644, 12
  store i64 %1655, i64* %3, align 8
  %1656 = inttoptr i64 %1654 to i64*
  %1657 = load i64, i64* %1656, align 8
  store i64 %1657, i64* %RDI.i783, align 8
  %1658 = add i64 %1644, 15
  store i64 %1658, i64* %3, align 8
  %1659 = inttoptr i64 %1657 to i8*
  store i8 0, i8* %1659, align 1
  %1660 = load i64, i64* %RBP.i, align 8
  %1661 = add i64 %1660, -96
  %1662 = load i64, i64* %3, align 8
  %1663 = add i64 %1662, 4
  store i64 %1663, i64* %3, align 8
  %1664 = inttoptr i64 %1661 to i64*
  %1665 = load i64, i64* %1664, align 8
  store i64 %1665, i64* %RDI.i783, align 8
  %1666 = add i64 %1660, -124
  %1667 = add i64 %1662, 8
  store i64 %1667, i64* %3, align 8
  %1668 = inttoptr i64 %1666 to i32*
  %1669 = load i32, i32* %1668, align 4
  %1670 = sext i32 %1669 to i64
  store i64 %1670, i64* %R8.i2434, align 8
  %1671 = shl nsw i64 %1670, 3
  %1672 = add i64 %1671, %1665
  %1673 = add i64 %1662, 12
  store i64 %1673, i64* %3, align 8
  %1674 = inttoptr i64 %1672 to i64*
  %1675 = load i64, i64* %1674, align 8
  store i64 %1675, i64* %RDI.i783, align 8
  %1676 = add i64 %1662, 15
  store i64 %1676, i64* %3, align 8
  %1677 = inttoptr i64 %1675 to i8*
  store i8 0, i8* %1677, align 1
  %1678 = load i64, i64* %RBP.i, align 8
  %1679 = add i64 %1678, -88
  %1680 = load i64, i64* %3, align 8
  %1681 = add i64 %1680, 4
  store i64 %1681, i64* %3, align 8
  %1682 = inttoptr i64 %1679 to i64*
  %1683 = load i64, i64* %1682, align 8
  store i64 %1683, i64* %RDI.i783, align 8
  %1684 = add i64 %1678, -124
  %1685 = add i64 %1680, 8
  store i64 %1685, i64* %3, align 8
  %1686 = inttoptr i64 %1684 to i32*
  %1687 = load i32, i32* %1686, align 4
  %1688 = sext i32 %1687 to i64
  store i64 %1688, i64* %R8.i2434, align 8
  %1689 = shl nsw i64 %1688, 3
  %1690 = add i64 %1689, %1683
  %1691 = add i64 %1680, 12
  store i64 %1691, i64* %3, align 8
  %1692 = inttoptr i64 %1690 to i64*
  %1693 = load i64, i64* %1692, align 8
  store i64 %1693, i64* %RDI.i783, align 8
  %1694 = add i64 %1680, 15
  store i64 %1694, i64* %3, align 8
  %1695 = inttoptr i64 %1693 to i8*
  store i8 0, i8* %1695, align 1
  %1696 = load i64, i64* %RBP.i, align 8
  %1697 = add i64 %1696, -128
  %1698 = load i64, i64* %3, align 8
  %1699 = add i64 %1698, 7
  store i64 %1699, i64* %3, align 8
  %1700 = inttoptr i64 %1697 to i32*
  store i32 1, i32* %1700, align 4
  %.pre100 = load i64, i64* %3, align 8
  br label %block_.L_40ea3b

block_.L_40ea3b:                                  ; preds = %block_.L_40f345, %routine_idivl__ecx.exit
  %1701 = phi i64 [ %.pre100, %routine_idivl__ecx.exit ], [ %5274, %block_.L_40f345 ]
  %MEMORY.6 = phi %struct.Memory* [ %1566, %routine_idivl__ecx.exit ], [ %MEMORY.21, %block_.L_40f345 ]
  %1702 = load i64, i64* %RBP.i, align 8
  %1703 = add i64 %1702, -128
  %1704 = add i64 %1701, 3
  store i64 %1704, i64* %3, align 8
  %1705 = inttoptr i64 %1703 to i32*
  %1706 = load i32, i32* %1705, align 4
  %1707 = zext i32 %1706 to i64
  store i64 %1707, i64* %RAX.i34, align 8
  %1708 = add i64 %1702, -16
  %1709 = add i64 %1701, 7
  store i64 %1709, i64* %3, align 8
  %1710 = inttoptr i64 %1708 to i64*
  %1711 = load i64, i64* %1710, align 8
  store i64 %1711, i64* %RCX.i100, align 8
  %1712 = add i64 %1711, 136
  %1713 = add i64 %1701, 13
  store i64 %1713, i64* %3, align 8
  %1714 = inttoptr i64 %1712 to i32*
  %1715 = load i32, i32* %1714, align 4
  %1716 = sub i32 %1706, %1715
  %1717 = icmp ult i32 %1706, %1715
  %1718 = zext i1 %1717 to i8
  store i8 %1718, i8* %14, align 1
  %1719 = and i32 %1716, 255
  %1720 = tail call i32 @llvm.ctpop.i32(i32 %1719)
  %1721 = trunc i32 %1720 to i8
  %1722 = and i8 %1721, 1
  %1723 = xor i8 %1722, 1
  store i8 %1723, i8* %21, align 1
  %1724 = xor i32 %1715, %1706
  %1725 = xor i32 %1724, %1716
  %1726 = lshr i32 %1725, 4
  %1727 = trunc i32 %1726 to i8
  %1728 = and i8 %1727, 1
  store i8 %1728, i8* %26, align 1
  %1729 = icmp eq i32 %1716, 0
  %1730 = zext i1 %1729 to i8
  store i8 %1730, i8* %29, align 1
  %1731 = lshr i32 %1716, 31
  %1732 = trunc i32 %1731 to i8
  store i8 %1732, i8* %32, align 1
  %1733 = lshr i32 %1706, 31
  %1734 = lshr i32 %1715, 31
  %1735 = xor i32 %1734, %1733
  %1736 = xor i32 %1731, %1733
  %1737 = add nuw nsw i32 %1736, %1735
  %1738 = icmp eq i32 %1737, 2
  %1739 = zext i1 %1738 to i8
  store i8 %1739, i8* %38, align 1
  %1740 = icmp ne i8 %1732, 0
  %1741 = xor i1 %1740, %1738
  %.demorgan141 = or i1 %1729, %1741
  %.v147 = select i1 %.demorgan141, i64 19, i64 2333
  %1742 = add i64 %1701, %.v147
  store i64 %1742, i64* %3, align 8
  br i1 %.demorgan141, label %block_40ea4e, label %block_.L_40f358

block_40ea4e:                                     ; preds = %block_.L_40ea3b
  %1743 = add i64 %1702, -56
  %1744 = add i64 %1742, 4
  store i64 %1744, i64* %3, align 8
  %1745 = inttoptr i64 %1743 to i64*
  %1746 = load i64, i64* %1745, align 8
  store i64 %1746, i64* %RAX.i34, align 8
  %1747 = add i64 %1702, -148
  %1748 = add i64 %1742, 11
  store i64 %1748, i64* %3, align 8
  %1749 = inttoptr i64 %1747 to i32*
  %1750 = load i32, i32* %1749, align 4
  %1751 = sext i32 %1750 to i64
  store i64 %1751, i64* %RCX.i100, align 8
  %1752 = shl nsw i64 %1751, 3
  %1753 = add i64 %1752, %1746
  %1754 = add i64 %1742, 15
  store i64 %1754, i64* %3, align 8
  %1755 = inttoptr i64 %1753 to i64*
  %1756 = load i64, i64* %1755, align 8
  store i64 %1756, i64* %RAX.i34, align 8
  %1757 = add i64 %1742, 19
  store i64 %1757, i64* %3, align 8
  %1758 = load i32, i32* %1705, align 4
  %1759 = sext i32 %1758 to i64
  store i64 %1759, i64* %RCX.i100, align 8
  %1760 = shl nsw i64 %1759, 2
  %1761 = add i64 %1760, %1756
  %1762 = add i64 %1742, 26
  store i64 %1762, i64* %3, align 8
  %1763 = inttoptr i64 %1761 to i32*
  store i32 -987654321, i32* %1763, align 4
  %1764 = load i64, i64* %RBP.i, align 8
  %1765 = add i64 %1764, -88
  %1766 = load i64, i64* %3, align 8
  %1767 = add i64 %1766, 4
  store i64 %1767, i64* %3, align 8
  %1768 = inttoptr i64 %1765 to i64*
  %1769 = load i64, i64* %1768, align 8
  store i64 %1769, i64* %RAX.i34, align 8
  %1770 = add i64 %1764, -124
  %1771 = add i64 %1766, 8
  store i64 %1771, i64* %3, align 8
  %1772 = inttoptr i64 %1770 to i32*
  %1773 = load i32, i32* %1772, align 4
  %1774 = sext i32 %1773 to i64
  store i64 %1774, i64* %RCX.i100, align 8
  %1775 = shl nsw i64 %1774, 3
  %1776 = add i64 %1775, %1769
  %1777 = add i64 %1766, 12
  store i64 %1777, i64* %3, align 8
  %1778 = inttoptr i64 %1776 to i64*
  %1779 = load i64, i64* %1778, align 8
  store i64 %1779, i64* %RAX.i34, align 8
  %1780 = add i64 %1764, -128
  %1781 = add i64 %1766, 16
  store i64 %1781, i64* %3, align 8
  %1782 = inttoptr i64 %1780 to i32*
  %1783 = load i32, i32* %1782, align 4
  %1784 = sext i32 %1783 to i64
  store i64 %1784, i64* %RCX.i100, align 8
  %1785 = add i64 %1779, %1784
  %1786 = add i64 %1766, 20
  store i64 %1786, i64* %3, align 8
  %1787 = inttoptr i64 %1785 to i8*
  store i8 0, i8* %1787, align 1
  %1788 = load i64, i64* %RBP.i, align 8
  %1789 = add i64 %1788, -56
  %1790 = load i64, i64* %3, align 8
  %1791 = add i64 %1790, 4
  store i64 %1791, i64* %3, align 8
  %1792 = inttoptr i64 %1789 to i64*
  %1793 = load i64, i64* %1792, align 8
  store i64 %1793, i64* %RAX.i34, align 8
  %1794 = add i64 %1788, -152
  %1795 = add i64 %1790, 11
  store i64 %1795, i64* %3, align 8
  %1796 = inttoptr i64 %1794 to i32*
  %1797 = load i32, i32* %1796, align 4
  %1798 = sext i32 %1797 to i64
  store i64 %1798, i64* %RCX.i100, align 8
  %1799 = shl nsw i64 %1798, 3
  %1800 = add i64 %1799, %1793
  %1801 = add i64 %1790, 15
  store i64 %1801, i64* %3, align 8
  %1802 = inttoptr i64 %1800 to i64*
  %1803 = load i64, i64* %1802, align 8
  store i64 %1803, i64* %RAX.i34, align 8
  %1804 = add i64 %1788, -128
  %1805 = add i64 %1790, 18
  store i64 %1805, i64* %3, align 8
  %1806 = inttoptr i64 %1804 to i32*
  %1807 = load i32, i32* %1806, align 4
  %1808 = add i32 %1807, -1
  %1809 = zext i32 %1808 to i64
  store i64 %1809, i64* %RDX.i2857, align 8
  %1810 = icmp eq i32 %1807, 0
  %1811 = zext i1 %1810 to i8
  store i8 %1811, i8* %14, align 1
  %1812 = and i32 %1808, 255
  %1813 = tail call i32 @llvm.ctpop.i32(i32 %1812)
  %1814 = trunc i32 %1813 to i8
  %1815 = and i8 %1814, 1
  %1816 = xor i8 %1815, 1
  store i8 %1816, i8* %21, align 1
  %1817 = xor i32 %1808, %1807
  %1818 = lshr i32 %1817, 4
  %1819 = trunc i32 %1818 to i8
  %1820 = and i8 %1819, 1
  store i8 %1820, i8* %26, align 1
  %1821 = icmp eq i32 %1808, 0
  %1822 = zext i1 %1821 to i8
  store i8 %1822, i8* %29, align 1
  %1823 = lshr i32 %1808, 31
  %1824 = trunc i32 %1823 to i8
  store i8 %1824, i8* %32, align 1
  %1825 = lshr i32 %1807, 31
  %1826 = xor i32 %1823, %1825
  %1827 = add nuw nsw i32 %1826, %1825
  %1828 = icmp eq i32 %1827, 2
  %1829 = zext i1 %1828 to i8
  store i8 %1829, i8* %38, align 1
  %1830 = sext i32 %1808 to i64
  store i64 %1830, i64* %RCX.i100, align 8
  %1831 = shl nsw i64 %1830, 2
  %1832 = add i64 %1803, %1831
  %1833 = add i64 %1790, 31
  store i64 %1833, i64* %3, align 8
  %1834 = inttoptr i64 %1832 to i32*
  %1835 = load i32, i32* %1834, align 4
  %1836 = add i32 %1835, 987654321
  %1837 = icmp ult i32 %1835, -987654321
  %1838 = zext i1 %1837 to i8
  store i8 %1838, i8* %14, align 1
  %1839 = and i32 %1836, 255
  %1840 = tail call i32 @llvm.ctpop.i32(i32 %1839)
  %1841 = trunc i32 %1840 to i8
  %1842 = and i8 %1841, 1
  %1843 = xor i8 %1842, 1
  store i8 %1843, i8* %21, align 1
  %1844 = xor i32 %1836, %1835
  %1845 = lshr i32 %1844, 4
  %1846 = trunc i32 %1845 to i8
  %1847 = and i8 %1846, 1
  store i8 %1847, i8* %26, align 1
  %1848 = icmp eq i32 %1836, 0
  %1849 = zext i1 %1848 to i8
  store i8 %1849, i8* %29, align 1
  %1850 = lshr i32 %1836, 31
  %1851 = trunc i32 %1850 to i8
  store i8 %1851, i8* %32, align 1
  %1852 = lshr i32 %1835, 31
  %1853 = xor i32 %1852, 1
  %1854 = xor i32 %1850, %1852
  %1855 = add nuw nsw i32 %1854, %1853
  %1856 = icmp eq i32 %1855, 2
  %1857 = zext i1 %1856 to i8
  store i8 %1857, i8* %38, align 1
  %1858 = icmp ne i8 %1851, 0
  %1859 = xor i1 %1858, %1856
  %1860 = or i1 %1848, %1859
  %.v164 = select i1 %1860, i64 208, i64 37
  %1861 = add i64 %1790, %.v164
  store i64 %1861, i64* %3, align 8
  br i1 %1860, label %block_.L_40eb4c, label %block_40eaa1

block_40eaa1:                                     ; preds = %block_40ea4e
  %1862 = load i64, i64* %RBP.i, align 8
  %1863 = add i64 %1862, -16
  %1864 = add i64 %1861, 4
  store i64 %1864, i64* %3, align 8
  %1865 = inttoptr i64 %1863 to i64*
  %1866 = load i64, i64* %1865, align 8
  store i64 %1866, i64* %RAX.i34, align 8
  %1867 = add i64 %1866, 312
  %1868 = add i64 %1861, 11
  store i64 %1868, i64* %3, align 8
  %1869 = inttoptr i64 %1867 to i64*
  %1870 = load i64, i64* %1869, align 8
  store i64 %1870, i64* %RAX.i34, align 8
  %1871 = add i64 %1861, 14
  store i64 %1871, i64* %3, align 8
  %1872 = inttoptr i64 %1870 to i64*
  %1873 = load i64, i64* %1872, align 8
  store i64 %1873, i64* %RAX.i34, align 8
  %1874 = add i64 %1862, -128
  %1875 = add i64 %1861, 17
  store i64 %1875, i64* %3, align 8
  %1876 = inttoptr i64 %1874 to i32*
  %1877 = load i32, i32* %1876, align 4
  %1878 = add i32 %1877, -1
  %1879 = zext i32 %1878 to i64
  store i64 %1879, i64* %RCX.i100, align 8
  %1880 = icmp eq i32 %1877, 0
  %1881 = zext i1 %1880 to i8
  store i8 %1881, i8* %14, align 1
  %1882 = and i32 %1878, 255
  %1883 = tail call i32 @llvm.ctpop.i32(i32 %1882)
  %1884 = trunc i32 %1883 to i8
  %1885 = and i8 %1884, 1
  %1886 = xor i8 %1885, 1
  store i8 %1886, i8* %21, align 1
  %1887 = xor i32 %1878, %1877
  %1888 = lshr i32 %1887, 4
  %1889 = trunc i32 %1888 to i8
  %1890 = and i8 %1889, 1
  store i8 %1890, i8* %26, align 1
  %1891 = icmp eq i32 %1878, 0
  %1892 = zext i1 %1891 to i8
  store i8 %1892, i8* %29, align 1
  %1893 = lshr i32 %1878, 31
  %1894 = trunc i32 %1893 to i8
  store i8 %1894, i8* %32, align 1
  %1895 = lshr i32 %1877, 31
  %1896 = xor i32 %1893, %1895
  %1897 = add nuw nsw i32 %1896, %1895
  %1898 = icmp eq i32 %1897, 2
  %1899 = zext i1 %1898 to i8
  store i8 %1899, i8* %38, align 1
  %1900 = sext i32 %1878 to i64
  store i64 %1900, i64* %RDX.i2857, align 8
  %1901 = shl nsw i64 %1900, 2
  %1902 = add i64 %1873, %1901
  %1903 = add i64 %1861, 30
  store i64 %1903, i64* %3, align 8
  %1904 = inttoptr i64 %1902 to i32*
  %1905 = load i32, i32* %1904, align 4
  %1906 = add i32 %1905, 987654321
  %1907 = icmp ult i32 %1905, -987654321
  %1908 = zext i1 %1907 to i8
  store i8 %1908, i8* %14, align 1
  %1909 = and i32 %1906, 255
  %1910 = tail call i32 @llvm.ctpop.i32(i32 %1909)
  %1911 = trunc i32 %1910 to i8
  %1912 = and i8 %1911, 1
  %1913 = xor i8 %1912, 1
  store i8 %1913, i8* %21, align 1
  %1914 = xor i32 %1906, %1905
  %1915 = lshr i32 %1914, 4
  %1916 = trunc i32 %1915 to i8
  %1917 = and i8 %1916, 1
  store i8 %1917, i8* %26, align 1
  %1918 = icmp eq i32 %1906, 0
  %1919 = zext i1 %1918 to i8
  store i8 %1919, i8* %29, align 1
  %1920 = lshr i32 %1906, 31
  %1921 = trunc i32 %1920 to i8
  store i8 %1921, i8* %32, align 1
  %1922 = lshr i32 %1905, 31
  %1923 = xor i32 %1922, 1
  %1924 = xor i32 %1920, %1922
  %1925 = add nuw nsw i32 %1924, %1923
  %1926 = icmp eq i32 %1925, 2
  %1927 = zext i1 %1926 to i8
  store i8 %1927, i8* %38, align 1
  %1928 = icmp ne i8 %1921, 0
  %1929 = xor i1 %1928, %1926
  %1930 = or i1 %1918, %1929
  %.v165 = select i1 %1930, i64 171, i64 36
  %1931 = add i64 %1861, %.v165
  store i64 %1931, i64* %3, align 8
  br i1 %1930, label %block_.L_40eb4c, label %block_40eac5

block_40eac5:                                     ; preds = %block_40eaa1
  %1932 = load i64, i64* %RBP.i, align 8
  %1933 = add i64 %1932, -56
  %1934 = add i64 %1931, 4
  store i64 %1934, i64* %3, align 8
  %1935 = inttoptr i64 %1933 to i64*
  %1936 = load i64, i64* %1935, align 8
  store i64 %1936, i64* %RAX.i34, align 8
  %1937 = add i64 %1932, -152
  %1938 = add i64 %1931, 11
  store i64 %1938, i64* %3, align 8
  %1939 = inttoptr i64 %1937 to i32*
  %1940 = load i32, i32* %1939, align 4
  %1941 = sext i32 %1940 to i64
  store i64 %1941, i64* %RCX.i100, align 8
  %1942 = shl nsw i64 %1941, 3
  %1943 = add i64 %1942, %1936
  %1944 = add i64 %1931, 15
  store i64 %1944, i64* %3, align 8
  %1945 = inttoptr i64 %1943 to i64*
  %1946 = load i64, i64* %1945, align 8
  store i64 %1946, i64* %RAX.i34, align 8
  %1947 = add i64 %1932, -128
  %1948 = add i64 %1931, 18
  store i64 %1948, i64* %3, align 8
  %1949 = inttoptr i64 %1947 to i32*
  %1950 = load i32, i32* %1949, align 4
  %1951 = add i32 %1950, -1
  %1952 = zext i32 %1951 to i64
  store i64 %1952, i64* %RDX.i2857, align 8
  %1953 = icmp eq i32 %1950, 0
  %1954 = zext i1 %1953 to i8
  store i8 %1954, i8* %14, align 1
  %1955 = and i32 %1951, 255
  %1956 = tail call i32 @llvm.ctpop.i32(i32 %1955)
  %1957 = trunc i32 %1956 to i8
  %1958 = and i8 %1957, 1
  %1959 = xor i8 %1958, 1
  store i8 %1959, i8* %21, align 1
  %1960 = xor i32 %1951, %1950
  %1961 = lshr i32 %1960, 4
  %1962 = trunc i32 %1961 to i8
  %1963 = and i8 %1962, 1
  store i8 %1963, i8* %26, align 1
  %1964 = icmp eq i32 %1951, 0
  %1965 = zext i1 %1964 to i8
  store i8 %1965, i8* %29, align 1
  %1966 = lshr i32 %1951, 31
  %1967 = trunc i32 %1966 to i8
  store i8 %1967, i8* %32, align 1
  %1968 = lshr i32 %1950, 31
  %1969 = xor i32 %1966, %1968
  %1970 = add nuw nsw i32 %1969, %1968
  %1971 = icmp eq i32 %1970, 2
  %1972 = zext i1 %1971 to i8
  store i8 %1972, i8* %38, align 1
  %1973 = sext i32 %1951 to i64
  store i64 %1973, i64* %RCX.i100, align 8
  %1974 = shl nsw i64 %1973, 2
  %1975 = add i64 %1946, %1974
  %1976 = add i64 %1931, 27
  store i64 %1976, i64* %3, align 8
  %1977 = inttoptr i64 %1975 to i32*
  %1978 = load i32, i32* %1977, align 4
  %1979 = zext i32 %1978 to i64
  store i64 %1979, i64* %RDX.i2857, align 8
  %1980 = add i64 %1932, -16
  %1981 = add i64 %1931, 31
  store i64 %1981, i64* %3, align 8
  %1982 = inttoptr i64 %1980 to i64*
  %1983 = load i64, i64* %1982, align 8
  store i64 %1983, i64* %RAX.i34, align 8
  %1984 = add i64 %1983, 312
  %1985 = add i64 %1931, 38
  store i64 %1985, i64* %3, align 8
  %1986 = inttoptr i64 %1984 to i64*
  %1987 = load i64, i64* %1986, align 8
  store i64 %1987, i64* %RAX.i34, align 8
  %1988 = add i64 %1931, 41
  store i64 %1988, i64* %3, align 8
  %1989 = inttoptr i64 %1987 to i64*
  %1990 = load i64, i64* %1989, align 8
  store i64 %1990, i64* %RAX.i34, align 8
  %1991 = add i64 %1931, 44
  store i64 %1991, i64* %3, align 8
  %1992 = load i32, i32* %1949, align 4
  %1993 = add i32 %1992, -1
  %1994 = zext i32 %1993 to i64
  store i64 %1994, i64* %RSI.i1533, align 8
  %1995 = icmp eq i32 %1992, 0
  %1996 = zext i1 %1995 to i8
  store i8 %1996, i8* %14, align 1
  %1997 = and i32 %1993, 255
  %1998 = tail call i32 @llvm.ctpop.i32(i32 %1997)
  %1999 = trunc i32 %1998 to i8
  %2000 = and i8 %1999, 1
  %2001 = xor i8 %2000, 1
  store i8 %2001, i8* %21, align 1
  %2002 = xor i32 %1993, %1992
  %2003 = lshr i32 %2002, 4
  %2004 = trunc i32 %2003 to i8
  %2005 = and i8 %2004, 1
  store i8 %2005, i8* %26, align 1
  %2006 = icmp eq i32 %1993, 0
  %2007 = zext i1 %2006 to i8
  store i8 %2007, i8* %29, align 1
  %2008 = lshr i32 %1993, 31
  %2009 = trunc i32 %2008 to i8
  store i8 %2009, i8* %32, align 1
  %2010 = lshr i32 %1992, 31
  %2011 = xor i32 %2008, %2010
  %2012 = add nuw nsw i32 %2011, %2010
  %2013 = icmp eq i32 %2012, 2
  %2014 = zext i1 %2013 to i8
  store i8 %2014, i8* %38, align 1
  %2015 = sext i32 %1993 to i64
  store i64 %2015, i64* %RCX.i100, align 8
  %2016 = shl nsw i64 %2015, 2
  %2017 = add i64 %1990, %2016
  %2018 = add i64 %1931, 53
  store i64 %2018, i64* %3, align 8
  %2019 = inttoptr i64 %2017 to i32*
  %2020 = load i32, i32* %2019, align 4
  %2021 = add i32 %2020, %1978
  %2022 = zext i32 %2021 to i64
  store i64 %2022, i64* %RDX.i2857, align 8
  %2023 = icmp ult i32 %2021, %1978
  %2024 = icmp ult i32 %2021, %2020
  %2025 = or i1 %2023, %2024
  %2026 = zext i1 %2025 to i8
  store i8 %2026, i8* %14, align 1
  %2027 = and i32 %2021, 255
  %2028 = tail call i32 @llvm.ctpop.i32(i32 %2027)
  %2029 = trunc i32 %2028 to i8
  %2030 = and i8 %2029, 1
  %2031 = xor i8 %2030, 1
  store i8 %2031, i8* %21, align 1
  %2032 = xor i32 %2020, %1978
  %2033 = xor i32 %2032, %2021
  %2034 = lshr i32 %2033, 4
  %2035 = trunc i32 %2034 to i8
  %2036 = and i8 %2035, 1
  store i8 %2036, i8* %26, align 1
  %2037 = icmp eq i32 %2021, 0
  %2038 = zext i1 %2037 to i8
  store i8 %2038, i8* %29, align 1
  %2039 = lshr i32 %2021, 31
  %2040 = trunc i32 %2039 to i8
  store i8 %2040, i8* %32, align 1
  %2041 = lshr i32 %1978, 31
  %2042 = lshr i32 %2020, 31
  %2043 = xor i32 %2039, %2041
  %2044 = xor i32 %2039, %2042
  %2045 = add nuw nsw i32 %2043, %2044
  %2046 = icmp eq i32 %2045, 2
  %2047 = zext i1 %2046 to i8
  store i8 %2047, i8* %38, align 1
  %2048 = load i64, i64* %RBP.i, align 8
  %2049 = add i64 %2048, -140
  %2050 = add i64 %1931, 59
  store i64 %2050, i64* %3, align 8
  %2051 = inttoptr i64 %2049 to i32*
  store i32 %2021, i32* %2051, align 4
  %2052 = load i64, i64* %RBP.i, align 8
  %2053 = add i64 %2052, -56
  %2054 = load i64, i64* %3, align 8
  %2055 = add i64 %2054, 4
  store i64 %2055, i64* %3, align 8
  %2056 = inttoptr i64 %2053 to i64*
  %2057 = load i64, i64* %2056, align 8
  store i64 %2057, i64* %RAX.i34, align 8
  %2058 = add i64 %2052, -148
  %2059 = add i64 %2054, 11
  store i64 %2059, i64* %3, align 8
  %2060 = inttoptr i64 %2058 to i32*
  %2061 = load i32, i32* %2060, align 4
  %2062 = sext i32 %2061 to i64
  store i64 %2062, i64* %RCX.i100, align 8
  %2063 = shl nsw i64 %2062, 3
  %2064 = add i64 %2063, %2057
  %2065 = add i64 %2054, 15
  store i64 %2065, i64* %3, align 8
  %2066 = inttoptr i64 %2064 to i64*
  %2067 = load i64, i64* %2066, align 8
  store i64 %2067, i64* %RAX.i34, align 8
  %2068 = add i64 %2052, -128
  %2069 = add i64 %2054, 19
  store i64 %2069, i64* %3, align 8
  %2070 = inttoptr i64 %2068 to i32*
  %2071 = load i32, i32* %2070, align 4
  %2072 = sext i32 %2071 to i64
  store i64 %2072, i64* %RCX.i100, align 8
  %2073 = load i32, i32* %EDX.i2852, align 4
  %2074 = shl nsw i64 %2072, 2
  %2075 = add i64 %2067, %2074
  %2076 = add i64 %2054, 22
  store i64 %2076, i64* %3, align 8
  %2077 = inttoptr i64 %2075 to i32*
  %2078 = load i32, i32* %2077, align 4
  %2079 = sub i32 %2073, %2078
  %2080 = icmp ult i32 %2073, %2078
  %2081 = zext i1 %2080 to i8
  store i8 %2081, i8* %14, align 1
  %2082 = and i32 %2079, 255
  %2083 = tail call i32 @llvm.ctpop.i32(i32 %2082)
  %2084 = trunc i32 %2083 to i8
  %2085 = and i8 %2084, 1
  %2086 = xor i8 %2085, 1
  store i8 %2086, i8* %21, align 1
  %2087 = xor i32 %2078, %2073
  %2088 = xor i32 %2087, %2079
  %2089 = lshr i32 %2088, 4
  %2090 = trunc i32 %2089 to i8
  %2091 = and i8 %2090, 1
  store i8 %2091, i8* %26, align 1
  %2092 = icmp eq i32 %2079, 0
  %2093 = zext i1 %2092 to i8
  store i8 %2093, i8* %29, align 1
  %2094 = lshr i32 %2079, 31
  %2095 = trunc i32 %2094 to i8
  store i8 %2095, i8* %32, align 1
  %2096 = lshr i32 %2073, 31
  %2097 = lshr i32 %2078, 31
  %2098 = xor i32 %2097, %2096
  %2099 = xor i32 %2094, %2096
  %2100 = add nuw nsw i32 %2099, %2098
  %2101 = icmp eq i32 %2100, 2
  %2102 = zext i1 %2101 to i8
  store i8 %2102, i8* %38, align 1
  %2103 = icmp ne i8 %2095, 0
  %2104 = xor i1 %2103, %2101
  %2105 = or i1 %2092, %2104
  %.v166 = select i1 %2105, i64 76, i64 28
  %2106 = add i64 %2054, %.v166
  store i64 %2106, i64* %3, align 8
  br i1 %2105, label %block_.L_40eb4c, label %block_40eb1c

block_40eb1c:                                     ; preds = %block_40eac5
  %2107 = add i64 %2052, -140
  %2108 = add i64 %2106, 6
  store i64 %2108, i64* %3, align 8
  %2109 = inttoptr i64 %2107 to i32*
  %2110 = load i32, i32* %2109, align 4
  %2111 = zext i32 %2110 to i64
  store i64 %2111, i64* %RAX.i34, align 8
  %2112 = add i64 %2106, 10
  store i64 %2112, i64* %3, align 8
  %2113 = load i64, i64* %2056, align 8
  store i64 %2113, i64* %RCX.i100, align 8
  %2114 = add i64 %2106, 17
  store i64 %2114, i64* %3, align 8
  %2115 = load i32, i32* %2060, align 4
  %2116 = sext i32 %2115 to i64
  store i64 %2116, i64* %RDX.i2857, align 8
  %2117 = shl nsw i64 %2116, 3
  %2118 = add i64 %2117, %2113
  %2119 = add i64 %2106, 21
  store i64 %2119, i64* %3, align 8
  %2120 = inttoptr i64 %2118 to i64*
  %2121 = load i64, i64* %2120, align 8
  store i64 %2121, i64* %RCX.i100, align 8
  %2122 = add i64 %2106, 25
  store i64 %2122, i64* %3, align 8
  %2123 = load i32, i32* %2070, align 4
  %2124 = sext i32 %2123 to i64
  store i64 %2124, i64* %RDX.i2857, align 8
  %2125 = shl nsw i64 %2124, 2
  %2126 = add i64 %2125, %2121
  %2127 = add i64 %2106, 28
  store i64 %2127, i64* %3, align 8
  %2128 = inttoptr i64 %2126 to i32*
  store i32 %2110, i32* %2128, align 4
  %2129 = load i64, i64* %RBP.i, align 8
  %2130 = add i64 %2129, -88
  %2131 = load i64, i64* %3, align 8
  %2132 = add i64 %2131, 4
  store i64 %2132, i64* %3, align 8
  %2133 = inttoptr i64 %2130 to i64*
  %2134 = load i64, i64* %2133, align 8
  store i64 %2134, i64* %RCX.i100, align 8
  %2135 = add i64 %2129, -124
  %2136 = add i64 %2131, 8
  store i64 %2136, i64* %3, align 8
  %2137 = inttoptr i64 %2135 to i32*
  %2138 = load i32, i32* %2137, align 4
  %2139 = sext i32 %2138 to i64
  store i64 %2139, i64* %RDX.i2857, align 8
  %2140 = shl nsw i64 %2139, 3
  %2141 = add i64 %2140, %2134
  %2142 = add i64 %2131, 12
  store i64 %2142, i64* %3, align 8
  %2143 = inttoptr i64 %2141 to i64*
  %2144 = load i64, i64* %2143, align 8
  store i64 %2144, i64* %RCX.i100, align 8
  %2145 = add i64 %2129, -128
  %2146 = add i64 %2131, 16
  store i64 %2146, i64* %3, align 8
  %2147 = inttoptr i64 %2145 to i32*
  %2148 = load i32, i32* %2147, align 4
  %2149 = sext i32 %2148 to i64
  store i64 %2149, i64* %RDX.i2857, align 8
  %2150 = add i64 %2144, %2149
  %2151 = add i64 %2131, 20
  store i64 %2151, i64* %3, align 8
  %2152 = inttoptr i64 %2150 to i8*
  store i8 1, i8* %2152, align 1
  %.pre101 = load i64, i64* %3, align 8
  br label %block_.L_40eb4c

block_.L_40eb4c:                                  ; preds = %block_40eb1c, %block_40eac5, %block_40eaa1, %block_40ea4e
  %2153 = phi i64 [ %.pre101, %block_40eb1c ], [ %2106, %block_40eac5 ], [ %1931, %block_40eaa1 ], [ %1861, %block_40ea4e ]
  %2154 = load i64, i64* %RBP.i, align 8
  %2155 = add i64 %2154, -64
  %2156 = add i64 %2153, 4
  store i64 %2156, i64* %3, align 8
  %2157 = inttoptr i64 %2155 to i64*
  %2158 = load i64, i64* %2157, align 8
  store i64 %2158, i64* %RAX.i34, align 8
  %2159 = add i64 %2154, -152
  %2160 = add i64 %2153, 11
  store i64 %2160, i64* %3, align 8
  %2161 = inttoptr i64 %2159 to i32*
  %2162 = load i32, i32* %2161, align 4
  %2163 = sext i32 %2162 to i64
  store i64 %2163, i64* %RCX.i100, align 8
  %2164 = shl nsw i64 %2163, 3
  %2165 = add i64 %2164, %2158
  %2166 = add i64 %2153, 15
  store i64 %2166, i64* %3, align 8
  %2167 = inttoptr i64 %2165 to i64*
  %2168 = load i64, i64* %2167, align 8
  store i64 %2168, i64* %RAX.i34, align 8
  %2169 = add i64 %2154, -128
  %2170 = add i64 %2153, 18
  store i64 %2170, i64* %3, align 8
  %2171 = inttoptr i64 %2169 to i32*
  %2172 = load i32, i32* %2171, align 4
  %2173 = add i32 %2172, -1
  %2174 = zext i32 %2173 to i64
  store i64 %2174, i64* %RDX.i2857, align 8
  %2175 = icmp eq i32 %2172, 0
  %2176 = zext i1 %2175 to i8
  store i8 %2176, i8* %14, align 1
  %2177 = and i32 %2173, 255
  %2178 = tail call i32 @llvm.ctpop.i32(i32 %2177)
  %2179 = trunc i32 %2178 to i8
  %2180 = and i8 %2179, 1
  %2181 = xor i8 %2180, 1
  store i8 %2181, i8* %21, align 1
  %2182 = xor i32 %2173, %2172
  %2183 = lshr i32 %2182, 4
  %2184 = trunc i32 %2183 to i8
  %2185 = and i8 %2184, 1
  store i8 %2185, i8* %26, align 1
  %2186 = icmp eq i32 %2173, 0
  %2187 = zext i1 %2186 to i8
  store i8 %2187, i8* %29, align 1
  %2188 = lshr i32 %2173, 31
  %2189 = trunc i32 %2188 to i8
  store i8 %2189, i8* %32, align 1
  %2190 = lshr i32 %2172, 31
  %2191 = xor i32 %2188, %2190
  %2192 = add nuw nsw i32 %2191, %2190
  %2193 = icmp eq i32 %2192, 2
  %2194 = zext i1 %2193 to i8
  store i8 %2194, i8* %38, align 1
  %2195 = sext i32 %2173 to i64
  store i64 %2195, i64* %RCX.i100, align 8
  %2196 = shl nsw i64 %2195, 2
  %2197 = add i64 %2168, %2196
  %2198 = add i64 %2153, 31
  store i64 %2198, i64* %3, align 8
  %2199 = inttoptr i64 %2197 to i32*
  %2200 = load i32, i32* %2199, align 4
  %2201 = add i32 %2200, 987654321
  %2202 = icmp ult i32 %2200, -987654321
  %2203 = zext i1 %2202 to i8
  store i8 %2203, i8* %14, align 1
  %2204 = and i32 %2201, 255
  %2205 = tail call i32 @llvm.ctpop.i32(i32 %2204)
  %2206 = trunc i32 %2205 to i8
  %2207 = and i8 %2206, 1
  %2208 = xor i8 %2207, 1
  store i8 %2208, i8* %21, align 1
  %2209 = xor i32 %2201, %2200
  %2210 = lshr i32 %2209, 4
  %2211 = trunc i32 %2210 to i8
  %2212 = and i8 %2211, 1
  store i8 %2212, i8* %26, align 1
  %2213 = icmp eq i32 %2201, 0
  %2214 = zext i1 %2213 to i8
  store i8 %2214, i8* %29, align 1
  %2215 = lshr i32 %2201, 31
  %2216 = trunc i32 %2215 to i8
  store i8 %2216, i8* %32, align 1
  %2217 = lshr i32 %2200, 31
  %2218 = xor i32 %2217, 1
  %2219 = xor i32 %2215, %2217
  %2220 = add nuw nsw i32 %2219, %2218
  %2221 = icmp eq i32 %2220, 2
  %2222 = zext i1 %2221 to i8
  store i8 %2222, i8* %38, align 1
  %2223 = icmp ne i8 %2216, 0
  %2224 = xor i1 %2223, %2221
  %2225 = or i1 %2213, %2224
  %.v167 = select i1 %2225, i64 240, i64 37
  %2226 = add i64 %2153, %.v167
  store i64 %2226, i64* %3, align 8
  br i1 %2225, label %block_.L_40ec3c, label %block_40eb71

block_40eb71:                                     ; preds = %block_.L_40eb4c
  %2227 = load i64, i64* %RBP.i, align 8
  %2228 = add i64 %2227, -16
  %2229 = add i64 %2226, 4
  store i64 %2229, i64* %3, align 8
  %2230 = inttoptr i64 %2228 to i64*
  %2231 = load i64, i64* %2230, align 8
  store i64 %2231, i64* %RAX.i34, align 8
  %2232 = add i64 %2231, 312
  %2233 = add i64 %2226, 11
  store i64 %2233, i64* %3, align 8
  %2234 = inttoptr i64 %2232 to i64*
  %2235 = load i64, i64* %2234, align 8
  store i64 %2235, i64* %RAX.i34, align 8
  %2236 = add i64 %2235, 24
  %2237 = add i64 %2226, 15
  store i64 %2237, i64* %3, align 8
  %2238 = inttoptr i64 %2236 to i64*
  %2239 = load i64, i64* %2238, align 8
  store i64 %2239, i64* %RAX.i34, align 8
  %2240 = add i64 %2227, -128
  %2241 = add i64 %2226, 18
  store i64 %2241, i64* %3, align 8
  %2242 = inttoptr i64 %2240 to i32*
  %2243 = load i32, i32* %2242, align 4
  %2244 = add i32 %2243, -1
  %2245 = zext i32 %2244 to i64
  store i64 %2245, i64* %RCX.i100, align 8
  %2246 = icmp eq i32 %2243, 0
  %2247 = zext i1 %2246 to i8
  store i8 %2247, i8* %14, align 1
  %2248 = and i32 %2244, 255
  %2249 = tail call i32 @llvm.ctpop.i32(i32 %2248)
  %2250 = trunc i32 %2249 to i8
  %2251 = and i8 %2250, 1
  %2252 = xor i8 %2251, 1
  store i8 %2252, i8* %21, align 1
  %2253 = xor i32 %2244, %2243
  %2254 = lshr i32 %2253, 4
  %2255 = trunc i32 %2254 to i8
  %2256 = and i8 %2255, 1
  store i8 %2256, i8* %26, align 1
  %2257 = icmp eq i32 %2244, 0
  %2258 = zext i1 %2257 to i8
  store i8 %2258, i8* %29, align 1
  %2259 = lshr i32 %2244, 31
  %2260 = trunc i32 %2259 to i8
  store i8 %2260, i8* %32, align 1
  %2261 = lshr i32 %2243, 31
  %2262 = xor i32 %2259, %2261
  %2263 = add nuw nsw i32 %2262, %2261
  %2264 = icmp eq i32 %2263, 2
  %2265 = zext i1 %2264 to i8
  store i8 %2265, i8* %38, align 1
  %2266 = sext i32 %2244 to i64
  store i64 %2266, i64* %RDX.i2857, align 8
  %2267 = shl nsw i64 %2266, 2
  %2268 = add i64 %2239, %2267
  %2269 = add i64 %2226, 31
  store i64 %2269, i64* %3, align 8
  %2270 = inttoptr i64 %2268 to i32*
  %2271 = load i32, i32* %2270, align 4
  %2272 = add i32 %2271, 987654321
  %2273 = icmp ult i32 %2271, -987654321
  %2274 = zext i1 %2273 to i8
  store i8 %2274, i8* %14, align 1
  %2275 = and i32 %2272, 255
  %2276 = tail call i32 @llvm.ctpop.i32(i32 %2275)
  %2277 = trunc i32 %2276 to i8
  %2278 = and i8 %2277, 1
  %2279 = xor i8 %2278, 1
  store i8 %2279, i8* %21, align 1
  %2280 = xor i32 %2272, %2271
  %2281 = lshr i32 %2280, 4
  %2282 = trunc i32 %2281 to i8
  %2283 = and i8 %2282, 1
  store i8 %2283, i8* %26, align 1
  %2284 = icmp eq i32 %2272, 0
  %2285 = zext i1 %2284 to i8
  store i8 %2285, i8* %29, align 1
  %2286 = lshr i32 %2272, 31
  %2287 = trunc i32 %2286 to i8
  store i8 %2287, i8* %32, align 1
  %2288 = lshr i32 %2271, 31
  %2289 = xor i32 %2288, 1
  %2290 = xor i32 %2286, %2288
  %2291 = add nuw nsw i32 %2290, %2289
  %2292 = icmp eq i32 %2291, 2
  %2293 = zext i1 %2292 to i8
  store i8 %2293, i8* %38, align 1
  %2294 = icmp ne i8 %2287, 0
  %2295 = xor i1 %2294, %2292
  %2296 = or i1 %2284, %2295
  %.v168 = select i1 %2296, i64 203, i64 37
  %2297 = add i64 %2226, %.v168
  store i64 %2297, i64* %3, align 8
  br i1 %2296, label %block_.L_40ec3c, label %block_40eb96

block_40eb96:                                     ; preds = %block_40eb71
  %2298 = load i64, i64* %RBP.i, align 8
  %2299 = add i64 %2298, -64
  %2300 = add i64 %2297, 4
  store i64 %2300, i64* %3, align 8
  %2301 = inttoptr i64 %2299 to i64*
  %2302 = load i64, i64* %2301, align 8
  store i64 %2302, i64* %RAX.i34, align 8
  %2303 = add i64 %2298, -152
  %2304 = add i64 %2297, 11
  store i64 %2304, i64* %3, align 8
  %2305 = inttoptr i64 %2303 to i32*
  %2306 = load i32, i32* %2305, align 4
  %2307 = sext i32 %2306 to i64
  store i64 %2307, i64* %RCX.i100, align 8
  %2308 = shl nsw i64 %2307, 3
  %2309 = add i64 %2308, %2302
  %2310 = add i64 %2297, 15
  store i64 %2310, i64* %3, align 8
  %2311 = inttoptr i64 %2309 to i64*
  %2312 = load i64, i64* %2311, align 8
  store i64 %2312, i64* %RAX.i34, align 8
  %2313 = add i64 %2298, -128
  %2314 = add i64 %2297, 18
  store i64 %2314, i64* %3, align 8
  %2315 = inttoptr i64 %2313 to i32*
  %2316 = load i32, i32* %2315, align 4
  %2317 = add i32 %2316, -1
  %2318 = zext i32 %2317 to i64
  store i64 %2318, i64* %RDX.i2857, align 8
  %2319 = icmp eq i32 %2316, 0
  %2320 = zext i1 %2319 to i8
  store i8 %2320, i8* %14, align 1
  %2321 = and i32 %2317, 255
  %2322 = tail call i32 @llvm.ctpop.i32(i32 %2321)
  %2323 = trunc i32 %2322 to i8
  %2324 = and i8 %2323, 1
  %2325 = xor i8 %2324, 1
  store i8 %2325, i8* %21, align 1
  %2326 = xor i32 %2317, %2316
  %2327 = lshr i32 %2326, 4
  %2328 = trunc i32 %2327 to i8
  %2329 = and i8 %2328, 1
  store i8 %2329, i8* %26, align 1
  %2330 = icmp eq i32 %2317, 0
  %2331 = zext i1 %2330 to i8
  store i8 %2331, i8* %29, align 1
  %2332 = lshr i32 %2317, 31
  %2333 = trunc i32 %2332 to i8
  store i8 %2333, i8* %32, align 1
  %2334 = lshr i32 %2316, 31
  %2335 = xor i32 %2332, %2334
  %2336 = add nuw nsw i32 %2335, %2334
  %2337 = icmp eq i32 %2336, 2
  %2338 = zext i1 %2337 to i8
  store i8 %2338, i8* %38, align 1
  %2339 = sext i32 %2317 to i64
  store i64 %2339, i64* %RCX.i100, align 8
  %2340 = shl nsw i64 %2339, 2
  %2341 = add i64 %2312, %2340
  %2342 = add i64 %2297, 29
  store i64 %2342, i64* %3, align 8
  %2343 = load <2 x i32>, <2 x i32>* %1479, align 1
  %2344 = load <2 x i32>, <2 x i32>* %1480, align 1
  %2345 = inttoptr i64 %2341 to i32*
  %2346 = load i32, i32* %2345, align 4
  %2347 = sitofp i32 %2346 to float
  store float %2347, float* %288, align 1
  %2348 = extractelement <2 x i32> %2343, i32 1
  store i32 %2348, i32* %343, align 1
  %2349 = extractelement <2 x i32> %2344, i32 0
  store i32 %2349, i32* %147, align 1
  %2350 = extractelement <2 x i32> %2344, i32 1
  store i32 %2350, i32* %344, align 1
  %2351 = add i64 %2298, -16
  %2352 = add i64 %2297, 33
  store i64 %2352, i64* %3, align 8
  %2353 = inttoptr i64 %2351 to i64*
  %2354 = load i64, i64* %2353, align 8
  store i64 %2354, i64* %RAX.i34, align 8
  %2355 = add i64 %2354, 312
  %2356 = add i64 %2297, 40
  store i64 %2356, i64* %3, align 8
  %2357 = inttoptr i64 %2355 to i64*
  %2358 = load i64, i64* %2357, align 8
  store i64 %2358, i64* %RAX.i34, align 8
  %2359 = add i64 %2358, 24
  %2360 = add i64 %2297, 44
  store i64 %2360, i64* %3, align 8
  %2361 = inttoptr i64 %2359 to i64*
  %2362 = load i64, i64* %2361, align 8
  store i64 %2362, i64* %RAX.i34, align 8
  %2363 = add i64 %2297, 47
  store i64 %2363, i64* %3, align 8
  %2364 = load i32, i32* %2315, align 4
  %2365 = add i32 %2364, -1
  %2366 = zext i32 %2365 to i64
  store i64 %2366, i64* %RDX.i2857, align 8
  %2367 = icmp eq i32 %2364, 0
  %2368 = zext i1 %2367 to i8
  store i8 %2368, i8* %14, align 1
  %2369 = and i32 %2365, 255
  %2370 = tail call i32 @llvm.ctpop.i32(i32 %2369)
  %2371 = trunc i32 %2370 to i8
  %2372 = and i8 %2371, 1
  %2373 = xor i8 %2372, 1
  store i8 %2373, i8* %21, align 1
  %2374 = xor i32 %2365, %2364
  %2375 = lshr i32 %2374, 4
  %2376 = trunc i32 %2375 to i8
  %2377 = and i8 %2376, 1
  store i8 %2377, i8* %26, align 1
  %2378 = icmp eq i32 %2365, 0
  %2379 = zext i1 %2378 to i8
  store i8 %2379, i8* %29, align 1
  %2380 = lshr i32 %2365, 31
  %2381 = trunc i32 %2380 to i8
  store i8 %2381, i8* %32, align 1
  %2382 = lshr i32 %2364, 31
  %2383 = xor i32 %2380, %2382
  %2384 = add nuw nsw i32 %2383, %2382
  %2385 = icmp eq i32 %2384, 2
  %2386 = zext i1 %2385 to i8
  store i8 %2386, i8* %38, align 1
  %2387 = sext i32 %2365 to i64
  store i64 %2387, i64* %RCX.i100, align 8
  %2388 = shl nsw i64 %2387, 2
  %2389 = add i64 %2362, %2388
  %2390 = add i64 %2297, 58
  store i64 %2390, i64* %3, align 8
  %2391 = load <2 x i32>, <2 x i32>* %1481, align 1
  %2392 = load <2 x i32>, <2 x i32>* %1482, align 1
  %2393 = inttoptr i64 %2389 to i32*
  %2394 = load i32, i32* %2393, align 4
  %2395 = sitofp i32 %2394 to float
  store float %2395, float* %1470, align 1
  %2396 = extractelement <2 x i32> %2391, i32 1
  store i32 %2396, i32* %1483, align 1
  %2397 = extractelement <2 x i32> %2392, i32 0
  store i32 %2397, i32* %1484, align 1
  %2398 = extractelement <2 x i32> %2392, i32 1
  store i32 %2398, i32* %1485, align 1
  %2399 = load i64, i64* %RBP.i, align 8
  %2400 = add i64 %2399, -120
  %2401 = add i64 %2297, 62
  store i64 %2401, i64* %3, align 8
  %2402 = inttoptr i64 %2400 to i64*
  %2403 = load i64, i64* %2402, align 8
  store i64 %2403, i64* %RAX.i34, align 8
  %2404 = add i64 %2399, -124
  %2405 = add i64 %2297, 65
  store i64 %2405, i64* %3, align 8
  %2406 = inttoptr i64 %2404 to i32*
  %2407 = load i32, i32* %2406, align 4
  %2408 = add i32 %2407, -1
  %2409 = zext i32 %2408 to i64
  store i64 %2409, i64* %RDX.i2857, align 8
  %2410 = icmp eq i32 %2407, 0
  %2411 = zext i1 %2410 to i8
  store i8 %2411, i8* %14, align 1
  %2412 = and i32 %2408, 255
  %2413 = tail call i32 @llvm.ctpop.i32(i32 %2412)
  %2414 = trunc i32 %2413 to i8
  %2415 = and i8 %2414, 1
  %2416 = xor i8 %2415, 1
  store i8 %2416, i8* %21, align 1
  %2417 = xor i32 %2408, %2407
  %2418 = lshr i32 %2417, 4
  %2419 = trunc i32 %2418 to i8
  %2420 = and i8 %2419, 1
  store i8 %2420, i8* %26, align 1
  %2421 = icmp eq i32 %2408, 0
  %2422 = zext i1 %2421 to i8
  store i8 %2422, i8* %29, align 1
  %2423 = lshr i32 %2408, 31
  %2424 = trunc i32 %2423 to i8
  store i8 %2424, i8* %32, align 1
  %2425 = lshr i32 %2407, 31
  %2426 = xor i32 %2423, %2425
  %2427 = add nuw nsw i32 %2426, %2425
  %2428 = icmp eq i32 %2427, 2
  %2429 = zext i1 %2428 to i8
  store i8 %2429, i8* %38, align 1
  %2430 = sext i32 %2408 to i64
  store i64 %2430, i64* %RCX.i100, align 8
  %2431 = shl nsw i64 %2430, 2
  %2432 = add i64 %2403, %2431
  %2433 = add i64 %2297, 76
  store i64 %2433, i64* %3, align 8
  %2434 = load <2 x float>, <2 x float>* %1478, align 1
  %2435 = load <2 x i32>, <2 x i32>* %1482, align 1
  %2436 = inttoptr i64 %2432 to float*
  %2437 = load float, float* %2436, align 4
  %2438 = extractelement <2 x float> %2434, i32 0
  %2439 = fmul float %2438, %2437
  store float %2439, float* %1470, align 1
  %2440 = bitcast <2 x float> %2434 to <2 x i32>
  %2441 = extractelement <2 x i32> %2440, i32 1
  store i32 %2441, i32* %1483, align 1
  %2442 = extractelement <2 x i32> %2435, i32 0
  store i32 %2442, i32* %1484, align 1
  %2443 = extractelement <2 x i32> %2435, i32 1
  store i32 %2443, i32* %1485, align 1
  %2444 = load <2 x float>, <2 x float>* %300, align 1
  %2445 = load <2 x i32>, <2 x i32>* %1480, align 1
  %2446 = load <2 x float>, <2 x float>* %1478, align 1
  %2447 = extractelement <2 x float> %2444, i32 0
  %2448 = extractelement <2 x float> %2446, i32 0
  %2449 = fadd float %2447, %2448
  store float %2449, float* %288, align 1
  %2450 = bitcast <2 x float> %2444 to <2 x i32>
  %2451 = extractelement <2 x i32> %2450, i32 1
  store i32 %2451, i32* %343, align 1
  %2452 = extractelement <2 x i32> %2445, i32 0
  store i32 %2452, i32* %147, align 1
  %2453 = extractelement <2 x i32> %2445, i32 1
  store i32 %2453, i32* %344, align 1
  %2454 = load <2 x float>, <2 x float>* %300, align 1
  %2455 = extractelement <2 x float> %2454, i32 0
  %2456 = tail call float @llvm.trunc.f32(float %2455)
  %2457 = tail call float @llvm.fabs.f32(float %2456)
  %2458 = fcmp ogt float %2457, 0x41E0000000000000
  %2459 = fptosi float %2456 to i32
  %2460 = zext i32 %2459 to i64
  %2461 = select i1 %2458, i64 2147483648, i64 %2460
  store i64 %2461, i64* %RDX.i2857, align 8
  %2462 = add i64 %2399, -140
  %2463 = trunc i64 %2461 to i32
  %2464 = add i64 %2297, 90
  store i64 %2464, i64* %3, align 8
  %2465 = inttoptr i64 %2462 to i32*
  store i32 %2463, i32* %2465, align 4
  %2466 = load i64, i64* %RBP.i, align 8
  %2467 = add i64 %2466, -56
  %2468 = load i64, i64* %3, align 8
  %2469 = add i64 %2468, 4
  store i64 %2469, i64* %3, align 8
  %2470 = inttoptr i64 %2467 to i64*
  %2471 = load i64, i64* %2470, align 8
  store i64 %2471, i64* %RAX.i34, align 8
  %2472 = add i64 %2466, -148
  %2473 = add i64 %2468, 11
  store i64 %2473, i64* %3, align 8
  %2474 = inttoptr i64 %2472 to i32*
  %2475 = load i32, i32* %2474, align 4
  %2476 = sext i32 %2475 to i64
  store i64 %2476, i64* %RCX.i100, align 8
  %2477 = shl nsw i64 %2476, 3
  %2478 = add i64 %2477, %2471
  %2479 = add i64 %2468, 15
  store i64 %2479, i64* %3, align 8
  %2480 = inttoptr i64 %2478 to i64*
  %2481 = load i64, i64* %2480, align 8
  store i64 %2481, i64* %RAX.i34, align 8
  %2482 = add i64 %2466, -128
  %2483 = add i64 %2468, 19
  store i64 %2483, i64* %3, align 8
  %2484 = inttoptr i64 %2482 to i32*
  %2485 = load i32, i32* %2484, align 4
  %2486 = sext i32 %2485 to i64
  store i64 %2486, i64* %RCX.i100, align 8
  %2487 = load i32, i32* %EDX.i2852, align 4
  %2488 = shl nsw i64 %2486, 2
  %2489 = add i64 %2481, %2488
  %2490 = add i64 %2468, 22
  store i64 %2490, i64* %3, align 8
  %2491 = inttoptr i64 %2489 to i32*
  %2492 = load i32, i32* %2491, align 4
  %2493 = sub i32 %2487, %2492
  %2494 = icmp ult i32 %2487, %2492
  %2495 = zext i1 %2494 to i8
  store i8 %2495, i8* %14, align 1
  %2496 = and i32 %2493, 255
  %2497 = tail call i32 @llvm.ctpop.i32(i32 %2496)
  %2498 = trunc i32 %2497 to i8
  %2499 = and i8 %2498, 1
  %2500 = xor i8 %2499, 1
  store i8 %2500, i8* %21, align 1
  %2501 = xor i32 %2492, %2487
  %2502 = xor i32 %2501, %2493
  %2503 = lshr i32 %2502, 4
  %2504 = trunc i32 %2503 to i8
  %2505 = and i8 %2504, 1
  store i8 %2505, i8* %26, align 1
  %2506 = icmp eq i32 %2493, 0
  %2507 = zext i1 %2506 to i8
  store i8 %2507, i8* %29, align 1
  %2508 = lshr i32 %2493, 31
  %2509 = trunc i32 %2508 to i8
  store i8 %2509, i8* %32, align 1
  %2510 = lshr i32 %2487, 31
  %2511 = lshr i32 %2492, 31
  %2512 = xor i32 %2511, %2510
  %2513 = xor i32 %2508, %2510
  %2514 = add nuw nsw i32 %2513, %2512
  %2515 = icmp eq i32 %2514, 2
  %2516 = zext i1 %2515 to i8
  store i8 %2516, i8* %38, align 1
  %2517 = icmp ne i8 %2509, 0
  %2518 = xor i1 %2517, %2515
  %2519 = or i1 %2506, %2518
  %.v169 = select i1 %2519, i64 76, i64 28
  %2520 = add i64 %2468, %.v169
  store i64 %2520, i64* %3, align 8
  br i1 %2519, label %block_.L_40ec3c, label %block_40ec0c

block_40ec0c:                                     ; preds = %block_40eb96
  %2521 = add i64 %2466, -140
  %2522 = add i64 %2520, 6
  store i64 %2522, i64* %3, align 8
  %2523 = inttoptr i64 %2521 to i32*
  %2524 = load i32, i32* %2523, align 4
  %2525 = zext i32 %2524 to i64
  store i64 %2525, i64* %RAX.i34, align 8
  %2526 = add i64 %2520, 10
  store i64 %2526, i64* %3, align 8
  %2527 = load i64, i64* %2470, align 8
  store i64 %2527, i64* %RCX.i100, align 8
  %2528 = add i64 %2520, 17
  store i64 %2528, i64* %3, align 8
  %2529 = load i32, i32* %2474, align 4
  %2530 = sext i32 %2529 to i64
  store i64 %2530, i64* %RDX.i2857, align 8
  %2531 = shl nsw i64 %2530, 3
  %2532 = add i64 %2531, %2527
  %2533 = add i64 %2520, 21
  store i64 %2533, i64* %3, align 8
  %2534 = inttoptr i64 %2532 to i64*
  %2535 = load i64, i64* %2534, align 8
  store i64 %2535, i64* %RCX.i100, align 8
  %2536 = add i64 %2520, 25
  store i64 %2536, i64* %3, align 8
  %2537 = load i32, i32* %2484, align 4
  %2538 = sext i32 %2537 to i64
  store i64 %2538, i64* %RDX.i2857, align 8
  %2539 = shl nsw i64 %2538, 2
  %2540 = add i64 %2539, %2535
  %2541 = add i64 %2520, 28
  store i64 %2541, i64* %3, align 8
  %2542 = inttoptr i64 %2540 to i32*
  store i32 %2524, i32* %2542, align 4
  %2543 = load i64, i64* %RBP.i, align 8
  %2544 = add i64 %2543, -88
  %2545 = load i64, i64* %3, align 8
  %2546 = add i64 %2545, 4
  store i64 %2546, i64* %3, align 8
  %2547 = inttoptr i64 %2544 to i64*
  %2548 = load i64, i64* %2547, align 8
  store i64 %2548, i64* %RCX.i100, align 8
  %2549 = add i64 %2543, -124
  %2550 = add i64 %2545, 8
  store i64 %2550, i64* %3, align 8
  %2551 = inttoptr i64 %2549 to i32*
  %2552 = load i32, i32* %2551, align 4
  %2553 = sext i32 %2552 to i64
  store i64 %2553, i64* %RDX.i2857, align 8
  %2554 = shl nsw i64 %2553, 3
  %2555 = add i64 %2554, %2548
  %2556 = add i64 %2545, 12
  store i64 %2556, i64* %3, align 8
  %2557 = inttoptr i64 %2555 to i64*
  %2558 = load i64, i64* %2557, align 8
  store i64 %2558, i64* %RCX.i100, align 8
  %2559 = add i64 %2543, -128
  %2560 = add i64 %2545, 16
  store i64 %2560, i64* %3, align 8
  %2561 = inttoptr i64 %2559 to i32*
  %2562 = load i32, i32* %2561, align 4
  %2563 = sext i32 %2562 to i64
  store i64 %2563, i64* %RDX.i2857, align 8
  %2564 = add i64 %2558, %2563
  %2565 = add i64 %2545, 20
  store i64 %2565, i64* %3, align 8
  %2566 = inttoptr i64 %2564 to i8*
  store i8 3, i8* %2566, align 1
  %.pre102 = load i64, i64* %3, align 8
  br label %block_.L_40ec3c

block_.L_40ec3c:                                  ; preds = %block_40ec0c, %block_40eb96, %block_40eb71, %block_.L_40eb4c
  %2567 = phi i64 [ %.pre102, %block_40ec0c ], [ %2520, %block_40eb96 ], [ %2297, %block_40eb71 ], [ %2226, %block_.L_40eb4c ]
  %2568 = load i64, i64* %RBP.i, align 8
  %2569 = add i64 %2568, -48
  %2570 = add i64 %2567, 4
  store i64 %2570, i64* %3, align 8
  %2571 = inttoptr i64 %2569 to i64*
  %2572 = load i64, i64* %2571, align 8
  store i64 %2572, i64* %RAX.i34, align 8
  %2573 = add i64 %2568, -152
  %2574 = add i64 %2567, 11
  store i64 %2574, i64* %3, align 8
  %2575 = inttoptr i64 %2573 to i32*
  %2576 = load i32, i32* %2575, align 4
  %2577 = sext i32 %2576 to i64
  store i64 %2577, i64* %RCX.i100, align 8
  %2578 = shl nsw i64 %2577, 3
  %2579 = add i64 %2578, %2572
  %2580 = add i64 %2567, 15
  store i64 %2580, i64* %3, align 8
  %2581 = inttoptr i64 %2579 to i64*
  %2582 = load i64, i64* %2581, align 8
  store i64 %2582, i64* %RAX.i34, align 8
  %2583 = add i64 %2567, 17
  store i64 %2583, i64* %3, align 8
  %2584 = inttoptr i64 %2582 to i32*
  %2585 = load i32, i32* %2584, align 4
  %2586 = zext i32 %2585 to i64
  store i64 %2586, i64* %RDX.i2857, align 8
  %2587 = add i64 %2568, -16
  %2588 = add i64 %2567, 21
  store i64 %2588, i64* %3, align 8
  %2589 = inttoptr i64 %2587 to i64*
  %2590 = load i64, i64* %2589, align 8
  store i64 %2590, i64* %RAX.i34, align 8
  %2591 = add i64 %2590, 368
  %2592 = add i64 %2567, 28
  store i64 %2592, i64* %3, align 8
  %2593 = inttoptr i64 %2591 to i64*
  %2594 = load i64, i64* %2593, align 8
  store i64 %2594, i64* %RAX.i34, align 8
  %2595 = add i64 %2568, -128
  %2596 = add i64 %2567, 32
  store i64 %2596, i64* %3, align 8
  %2597 = inttoptr i64 %2595 to i32*
  %2598 = load i32, i32* %2597, align 4
  %2599 = sext i32 %2598 to i64
  store i64 %2599, i64* %RCX.i100, align 8
  %2600 = shl nsw i64 %2599, 2
  %2601 = add i64 %2594, %2600
  %2602 = add i64 %2567, 35
  store i64 %2602, i64* %3, align 8
  %2603 = inttoptr i64 %2601 to i32*
  %2604 = load i32, i32* %2603, align 4
  %2605 = add i32 %2604, %2585
  %2606 = zext i32 %2605 to i64
  store i64 %2606, i64* %RDX.i2857, align 8
  %2607 = icmp ult i32 %2605, %2585
  %2608 = icmp ult i32 %2605, %2604
  %2609 = or i1 %2607, %2608
  %2610 = zext i1 %2609 to i8
  store i8 %2610, i8* %14, align 1
  %2611 = and i32 %2605, 255
  %2612 = tail call i32 @llvm.ctpop.i32(i32 %2611)
  %2613 = trunc i32 %2612 to i8
  %2614 = and i8 %2613, 1
  %2615 = xor i8 %2614, 1
  store i8 %2615, i8* %21, align 1
  %2616 = xor i32 %2604, %2585
  %2617 = xor i32 %2616, %2605
  %2618 = lshr i32 %2617, 4
  %2619 = trunc i32 %2618 to i8
  %2620 = and i8 %2619, 1
  store i8 %2620, i8* %26, align 1
  %2621 = icmp eq i32 %2605, 0
  %2622 = zext i1 %2621 to i8
  store i8 %2622, i8* %29, align 1
  %2623 = lshr i32 %2605, 31
  %2624 = trunc i32 %2623 to i8
  store i8 %2624, i8* %32, align 1
  %2625 = lshr i32 %2585, 31
  %2626 = lshr i32 %2604, 31
  %2627 = xor i32 %2623, %2625
  %2628 = xor i32 %2623, %2626
  %2629 = add nuw nsw i32 %2627, %2628
  %2630 = icmp eq i32 %2629, 2
  %2631 = zext i1 %2630 to i8
  store i8 %2631, i8* %38, align 1
  %2632 = add i64 %2568, -140
  %2633 = add i64 %2567, 41
  store i64 %2633, i64* %3, align 8
  %2634 = inttoptr i64 %2632 to i32*
  store i32 %2605, i32* %2634, align 4
  %2635 = load i64, i64* %RBP.i, align 8
  %2636 = add i64 %2635, -56
  %2637 = load i64, i64* %3, align 8
  %2638 = add i64 %2637, 4
  store i64 %2638, i64* %3, align 8
  %2639 = inttoptr i64 %2636 to i64*
  %2640 = load i64, i64* %2639, align 8
  store i64 %2640, i64* %RAX.i34, align 8
  %2641 = add i64 %2635, -148
  %2642 = add i64 %2637, 11
  store i64 %2642, i64* %3, align 8
  %2643 = inttoptr i64 %2641 to i32*
  %2644 = load i32, i32* %2643, align 4
  %2645 = sext i32 %2644 to i64
  store i64 %2645, i64* %RCX.i100, align 8
  %2646 = shl nsw i64 %2645, 3
  %2647 = add i64 %2646, %2640
  %2648 = add i64 %2637, 15
  store i64 %2648, i64* %3, align 8
  %2649 = inttoptr i64 %2647 to i64*
  %2650 = load i64, i64* %2649, align 8
  store i64 %2650, i64* %RAX.i34, align 8
  %2651 = add i64 %2635, -128
  %2652 = add i64 %2637, 19
  store i64 %2652, i64* %3, align 8
  %2653 = inttoptr i64 %2651 to i32*
  %2654 = load i32, i32* %2653, align 4
  %2655 = sext i32 %2654 to i64
  store i64 %2655, i64* %RCX.i100, align 8
  %2656 = load i32, i32* %EDX.i2852, align 4
  %2657 = shl nsw i64 %2655, 2
  %2658 = add i64 %2650, %2657
  %2659 = add i64 %2637, 22
  store i64 %2659, i64* %3, align 8
  %2660 = inttoptr i64 %2658 to i32*
  %2661 = load i32, i32* %2660, align 4
  %2662 = sub i32 %2656, %2661
  %2663 = icmp ult i32 %2656, %2661
  %2664 = zext i1 %2663 to i8
  store i8 %2664, i8* %14, align 1
  %2665 = and i32 %2662, 255
  %2666 = tail call i32 @llvm.ctpop.i32(i32 %2665)
  %2667 = trunc i32 %2666 to i8
  %2668 = and i8 %2667, 1
  %2669 = xor i8 %2668, 1
  store i8 %2669, i8* %21, align 1
  %2670 = xor i32 %2661, %2656
  %2671 = xor i32 %2670, %2662
  %2672 = lshr i32 %2671, 4
  %2673 = trunc i32 %2672 to i8
  %2674 = and i8 %2673, 1
  store i8 %2674, i8* %26, align 1
  %2675 = icmp eq i32 %2662, 0
  %2676 = zext i1 %2675 to i8
  store i8 %2676, i8* %29, align 1
  %2677 = lshr i32 %2662, 31
  %2678 = trunc i32 %2677 to i8
  store i8 %2678, i8* %32, align 1
  %2679 = lshr i32 %2656, 31
  %2680 = lshr i32 %2661, 31
  %2681 = xor i32 %2680, %2679
  %2682 = xor i32 %2677, %2679
  %2683 = add nuw nsw i32 %2682, %2681
  %2684 = icmp eq i32 %2683, 2
  %2685 = zext i1 %2684 to i8
  store i8 %2685, i8* %38, align 1
  %2686 = icmp ne i8 %2678, 0
  %2687 = xor i1 %2686, %2684
  %2688 = or i1 %2675, %2687
  %.v170 = select i1 %2688, i64 76, i64 28
  %2689 = add i64 %2637, %.v170
  store i64 %2689, i64* %3, align 8
  br i1 %2688, label %block_.L_40ecb1, label %block_40ec81

block_40ec81:                                     ; preds = %block_.L_40ec3c
  %2690 = add i64 %2635, -140
  %2691 = add i64 %2689, 6
  store i64 %2691, i64* %3, align 8
  %2692 = inttoptr i64 %2690 to i32*
  %2693 = load i32, i32* %2692, align 4
  %2694 = zext i32 %2693 to i64
  store i64 %2694, i64* %RAX.i34, align 8
  %2695 = add i64 %2689, 10
  store i64 %2695, i64* %3, align 8
  %2696 = load i64, i64* %2639, align 8
  store i64 %2696, i64* %RCX.i100, align 8
  %2697 = add i64 %2689, 17
  store i64 %2697, i64* %3, align 8
  %2698 = load i32, i32* %2643, align 4
  %2699 = sext i32 %2698 to i64
  store i64 %2699, i64* %RDX.i2857, align 8
  %2700 = shl nsw i64 %2699, 3
  %2701 = add i64 %2700, %2696
  %2702 = add i64 %2689, 21
  store i64 %2702, i64* %3, align 8
  %2703 = inttoptr i64 %2701 to i64*
  %2704 = load i64, i64* %2703, align 8
  store i64 %2704, i64* %RCX.i100, align 8
  %2705 = add i64 %2689, 25
  store i64 %2705, i64* %3, align 8
  %2706 = load i32, i32* %2653, align 4
  %2707 = sext i32 %2706 to i64
  store i64 %2707, i64* %RDX.i2857, align 8
  %2708 = shl nsw i64 %2707, 2
  %2709 = add i64 %2708, %2704
  %2710 = add i64 %2689, 28
  store i64 %2710, i64* %3, align 8
  %2711 = inttoptr i64 %2709 to i32*
  store i32 %2693, i32* %2711, align 4
  %2712 = load i64, i64* %RBP.i, align 8
  %2713 = add i64 %2712, -88
  %2714 = load i64, i64* %3, align 8
  %2715 = add i64 %2714, 4
  store i64 %2715, i64* %3, align 8
  %2716 = inttoptr i64 %2713 to i64*
  %2717 = load i64, i64* %2716, align 8
  store i64 %2717, i64* %RCX.i100, align 8
  %2718 = add i64 %2712, -124
  %2719 = add i64 %2714, 8
  store i64 %2719, i64* %3, align 8
  %2720 = inttoptr i64 %2718 to i32*
  %2721 = load i32, i32* %2720, align 4
  %2722 = sext i32 %2721 to i64
  store i64 %2722, i64* %RDX.i2857, align 8
  %2723 = shl nsw i64 %2722, 3
  %2724 = add i64 %2723, %2717
  %2725 = add i64 %2714, 12
  store i64 %2725, i64* %3, align 8
  %2726 = inttoptr i64 %2724 to i64*
  %2727 = load i64, i64* %2726, align 8
  store i64 %2727, i64* %RCX.i100, align 8
  %2728 = add i64 %2712, -128
  %2729 = add i64 %2714, 16
  store i64 %2729, i64* %3, align 8
  %2730 = inttoptr i64 %2728 to i32*
  %2731 = load i32, i32* %2730, align 4
  %2732 = sext i32 %2731 to i64
  store i64 %2732, i64* %RDX.i2857, align 8
  %2733 = add i64 %2727, %2732
  %2734 = add i64 %2714, 20
  store i64 %2734, i64* %3, align 8
  %2735 = inttoptr i64 %2733 to i8*
  store i8 6, i8* %2735, align 1
  %.pre103 = load i64, i64* %RBP.i, align 8
  %.pre104 = load i64, i64* %3, align 8
  br label %block_.L_40ecb1

block_.L_40ecb1:                                  ; preds = %block_40ec81, %block_.L_40ec3c
  %2736 = phi i64 [ %.pre104, %block_40ec81 ], [ %2689, %block_.L_40ec3c ]
  %2737 = phi i64 [ %.pre103, %block_40ec81 ], [ %2635, %block_.L_40ec3c ]
  %2738 = add i64 %2737, -72
  %2739 = add i64 %2736, 4
  store i64 %2739, i64* %3, align 8
  %2740 = inttoptr i64 %2738 to i64*
  %2741 = load i64, i64* %2740, align 8
  store i64 %2741, i64* %RAX.i34, align 8
  %2742 = add i64 %2737, -152
  %2743 = add i64 %2736, 11
  store i64 %2743, i64* %3, align 8
  %2744 = inttoptr i64 %2742 to i32*
  %2745 = load i32, i32* %2744, align 4
  %2746 = sext i32 %2745 to i64
  store i64 %2746, i64* %RCX.i100, align 8
  %2747 = shl nsw i64 %2746, 3
  %2748 = add i64 %2747, %2741
  %2749 = add i64 %2736, 15
  store i64 %2749, i64* %3, align 8
  %2750 = inttoptr i64 %2748 to i64*
  %2751 = load i64, i64* %2750, align 8
  store i64 %2751, i64* %RAX.i34, align 8
  %2752 = add i64 %2737, -128
  %2753 = add i64 %2736, 18
  store i64 %2753, i64* %3, align 8
  %2754 = inttoptr i64 %2752 to i32*
  %2755 = load i32, i32* %2754, align 4
  %2756 = add i32 %2755, -1
  %2757 = zext i32 %2756 to i64
  store i64 %2757, i64* %RDX.i2857, align 8
  %2758 = icmp eq i32 %2755, 0
  %2759 = zext i1 %2758 to i8
  store i8 %2759, i8* %14, align 1
  %2760 = and i32 %2756, 255
  %2761 = tail call i32 @llvm.ctpop.i32(i32 %2760)
  %2762 = trunc i32 %2761 to i8
  %2763 = and i8 %2762, 1
  %2764 = xor i8 %2763, 1
  store i8 %2764, i8* %21, align 1
  %2765 = xor i32 %2756, %2755
  %2766 = lshr i32 %2765, 4
  %2767 = trunc i32 %2766 to i8
  %2768 = and i8 %2767, 1
  store i8 %2768, i8* %26, align 1
  %2769 = icmp eq i32 %2756, 0
  %2770 = zext i1 %2769 to i8
  store i8 %2770, i8* %29, align 1
  %2771 = lshr i32 %2756, 31
  %2772 = trunc i32 %2771 to i8
  store i8 %2772, i8* %32, align 1
  %2773 = lshr i32 %2755, 31
  %2774 = xor i32 %2771, %2773
  %2775 = add nuw nsw i32 %2774, %2773
  %2776 = icmp eq i32 %2775, 2
  %2777 = zext i1 %2776 to i8
  store i8 %2777, i8* %38, align 1
  %2778 = sext i32 %2756 to i64
  store i64 %2778, i64* %RCX.i100, align 8
  %2779 = shl nsw i64 %2778, 2
  %2780 = add i64 %2751, %2779
  %2781 = add i64 %2736, 31
  store i64 %2781, i64* %3, align 8
  %2782 = inttoptr i64 %2780 to i32*
  %2783 = load i32, i32* %2782, align 4
  %2784 = add i32 %2783, 987654321
  %2785 = icmp ult i32 %2783, -987654321
  %2786 = zext i1 %2785 to i8
  store i8 %2786, i8* %14, align 1
  %2787 = and i32 %2784, 255
  %2788 = tail call i32 @llvm.ctpop.i32(i32 %2787)
  %2789 = trunc i32 %2788 to i8
  %2790 = and i8 %2789, 1
  %2791 = xor i8 %2790, 1
  store i8 %2791, i8* %21, align 1
  %2792 = xor i32 %2784, %2783
  %2793 = lshr i32 %2792, 4
  %2794 = trunc i32 %2793 to i8
  %2795 = and i8 %2794, 1
  store i8 %2795, i8* %26, align 1
  %2796 = icmp eq i32 %2784, 0
  %2797 = zext i1 %2796 to i8
  store i8 %2797, i8* %29, align 1
  %2798 = lshr i32 %2784, 31
  %2799 = trunc i32 %2798 to i8
  store i8 %2799, i8* %32, align 1
  %2800 = lshr i32 %2783, 31
  %2801 = xor i32 %2800, 1
  %2802 = xor i32 %2798, %2800
  %2803 = add nuw nsw i32 %2802, %2801
  %2804 = icmp eq i32 %2803, 2
  %2805 = zext i1 %2804 to i8
  store i8 %2805, i8* %38, align 1
  %2806 = icmp ne i8 %2799, 0
  %2807 = xor i1 %2806, %2804
  %2808 = or i1 %2796, %2807
  %.v171 = select i1 %2808, i64 210, i64 37
  %2809 = add i64 %2736, %.v171
  store i64 %2809, i64* %3, align 8
  br i1 %2808, label %block_.L_40ed83, label %block_40ecd6

block_40ecd6:                                     ; preds = %block_.L_40ecb1
  %2810 = load i64, i64* %RBP.i, align 8
  %2811 = add i64 %2810, -16
  %2812 = add i64 %2809, 4
  store i64 %2812, i64* %3, align 8
  %2813 = inttoptr i64 %2811 to i64*
  %2814 = load i64, i64* %2813, align 8
  store i64 %2814, i64* %RAX.i34, align 8
  %2815 = add i64 %2814, 312
  %2816 = add i64 %2809, 11
  store i64 %2816, i64* %3, align 8
  %2817 = inttoptr i64 %2815 to i64*
  %2818 = load i64, i64* %2817, align 8
  store i64 %2818, i64* %RAX.i34, align 8
  %2819 = add i64 %2818, 40
  %2820 = add i64 %2809, 15
  store i64 %2820, i64* %3, align 8
  %2821 = inttoptr i64 %2819 to i64*
  %2822 = load i64, i64* %2821, align 8
  store i64 %2822, i64* %RAX.i34, align 8
  %2823 = add i64 %2810, -128
  %2824 = add i64 %2809, 18
  store i64 %2824, i64* %3, align 8
  %2825 = inttoptr i64 %2823 to i32*
  %2826 = load i32, i32* %2825, align 4
  %2827 = add i32 %2826, -1
  %2828 = zext i32 %2827 to i64
  store i64 %2828, i64* %RCX.i100, align 8
  %2829 = icmp eq i32 %2826, 0
  %2830 = zext i1 %2829 to i8
  store i8 %2830, i8* %14, align 1
  %2831 = and i32 %2827, 255
  %2832 = tail call i32 @llvm.ctpop.i32(i32 %2831)
  %2833 = trunc i32 %2832 to i8
  %2834 = and i8 %2833, 1
  %2835 = xor i8 %2834, 1
  store i8 %2835, i8* %21, align 1
  %2836 = xor i32 %2827, %2826
  %2837 = lshr i32 %2836, 4
  %2838 = trunc i32 %2837 to i8
  %2839 = and i8 %2838, 1
  store i8 %2839, i8* %26, align 1
  %2840 = icmp eq i32 %2827, 0
  %2841 = zext i1 %2840 to i8
  store i8 %2841, i8* %29, align 1
  %2842 = lshr i32 %2827, 31
  %2843 = trunc i32 %2842 to i8
  store i8 %2843, i8* %32, align 1
  %2844 = lshr i32 %2826, 31
  %2845 = xor i32 %2842, %2844
  %2846 = add nuw nsw i32 %2845, %2844
  %2847 = icmp eq i32 %2846, 2
  %2848 = zext i1 %2847 to i8
  store i8 %2848, i8* %38, align 1
  %2849 = sext i32 %2827 to i64
  store i64 %2849, i64* %RDX.i2857, align 8
  %2850 = shl nsw i64 %2849, 2
  %2851 = add i64 %2822, %2850
  %2852 = add i64 %2809, 31
  store i64 %2852, i64* %3, align 8
  %2853 = inttoptr i64 %2851 to i32*
  %2854 = load i32, i32* %2853, align 4
  %2855 = add i32 %2854, 987654321
  %2856 = icmp ult i32 %2854, -987654321
  %2857 = zext i1 %2856 to i8
  store i8 %2857, i8* %14, align 1
  %2858 = and i32 %2855, 255
  %2859 = tail call i32 @llvm.ctpop.i32(i32 %2858)
  %2860 = trunc i32 %2859 to i8
  %2861 = and i8 %2860, 1
  %2862 = xor i8 %2861, 1
  store i8 %2862, i8* %21, align 1
  %2863 = xor i32 %2855, %2854
  %2864 = lshr i32 %2863, 4
  %2865 = trunc i32 %2864 to i8
  %2866 = and i8 %2865, 1
  store i8 %2866, i8* %26, align 1
  %2867 = icmp eq i32 %2855, 0
  %2868 = zext i1 %2867 to i8
  store i8 %2868, i8* %29, align 1
  %2869 = lshr i32 %2855, 31
  %2870 = trunc i32 %2869 to i8
  store i8 %2870, i8* %32, align 1
  %2871 = lshr i32 %2854, 31
  %2872 = xor i32 %2871, 1
  %2873 = xor i32 %2869, %2871
  %2874 = add nuw nsw i32 %2873, %2872
  %2875 = icmp eq i32 %2874, 2
  %2876 = zext i1 %2875 to i8
  store i8 %2876, i8* %38, align 1
  %2877 = icmp ne i8 %2870, 0
  %2878 = xor i1 %2877, %2875
  %2879 = or i1 %2867, %2878
  %.v172 = select i1 %2879, i64 173, i64 37
  %2880 = add i64 %2809, %.v172
  store i64 %2880, i64* %3, align 8
  br i1 %2879, label %block_.L_40ed83, label %block_40ecfb

block_40ecfb:                                     ; preds = %block_40ecd6
  %2881 = load i64, i64* %RBP.i, align 8
  %2882 = add i64 %2881, -72
  %2883 = add i64 %2880, 4
  store i64 %2883, i64* %3, align 8
  %2884 = inttoptr i64 %2882 to i64*
  %2885 = load i64, i64* %2884, align 8
  store i64 %2885, i64* %RAX.i34, align 8
  %2886 = add i64 %2881, -152
  %2887 = add i64 %2880, 11
  store i64 %2887, i64* %3, align 8
  %2888 = inttoptr i64 %2886 to i32*
  %2889 = load i32, i32* %2888, align 4
  %2890 = sext i32 %2889 to i64
  store i64 %2890, i64* %RCX.i100, align 8
  %2891 = shl nsw i64 %2890, 3
  %2892 = add i64 %2891, %2885
  %2893 = add i64 %2880, 15
  store i64 %2893, i64* %3, align 8
  %2894 = inttoptr i64 %2892 to i64*
  %2895 = load i64, i64* %2894, align 8
  store i64 %2895, i64* %RAX.i34, align 8
  %2896 = add i64 %2881, -128
  %2897 = add i64 %2880, 18
  store i64 %2897, i64* %3, align 8
  %2898 = inttoptr i64 %2896 to i32*
  %2899 = load i32, i32* %2898, align 4
  %2900 = add i32 %2899, -1
  %2901 = zext i32 %2900 to i64
  store i64 %2901, i64* %RDX.i2857, align 8
  %2902 = icmp eq i32 %2899, 0
  %2903 = zext i1 %2902 to i8
  store i8 %2903, i8* %14, align 1
  %2904 = and i32 %2900, 255
  %2905 = tail call i32 @llvm.ctpop.i32(i32 %2904)
  %2906 = trunc i32 %2905 to i8
  %2907 = and i8 %2906, 1
  %2908 = xor i8 %2907, 1
  store i8 %2908, i8* %21, align 1
  %2909 = xor i32 %2900, %2899
  %2910 = lshr i32 %2909, 4
  %2911 = trunc i32 %2910 to i8
  %2912 = and i8 %2911, 1
  store i8 %2912, i8* %26, align 1
  %2913 = icmp eq i32 %2900, 0
  %2914 = zext i1 %2913 to i8
  store i8 %2914, i8* %29, align 1
  %2915 = lshr i32 %2900, 31
  %2916 = trunc i32 %2915 to i8
  store i8 %2916, i8* %32, align 1
  %2917 = lshr i32 %2899, 31
  %2918 = xor i32 %2915, %2917
  %2919 = add nuw nsw i32 %2918, %2917
  %2920 = icmp eq i32 %2919, 2
  %2921 = zext i1 %2920 to i8
  store i8 %2921, i8* %38, align 1
  %2922 = sext i32 %2900 to i64
  store i64 %2922, i64* %RCX.i100, align 8
  %2923 = shl nsw i64 %2922, 2
  %2924 = add i64 %2895, %2923
  %2925 = add i64 %2880, 27
  store i64 %2925, i64* %3, align 8
  %2926 = inttoptr i64 %2924 to i32*
  %2927 = load i32, i32* %2926, align 4
  %2928 = zext i32 %2927 to i64
  store i64 %2928, i64* %RDX.i2857, align 8
  %2929 = add i64 %2881, -16
  %2930 = add i64 %2880, 31
  store i64 %2930, i64* %3, align 8
  %2931 = inttoptr i64 %2929 to i64*
  %2932 = load i64, i64* %2931, align 8
  store i64 %2932, i64* %RAX.i34, align 8
  %2933 = add i64 %2932, 312
  %2934 = add i64 %2880, 38
  store i64 %2934, i64* %3, align 8
  %2935 = inttoptr i64 %2933 to i64*
  %2936 = load i64, i64* %2935, align 8
  store i64 %2936, i64* %RAX.i34, align 8
  %2937 = add i64 %2936, 40
  %2938 = add i64 %2880, 42
  store i64 %2938, i64* %3, align 8
  %2939 = inttoptr i64 %2937 to i64*
  %2940 = load i64, i64* %2939, align 8
  store i64 %2940, i64* %RAX.i34, align 8
  %2941 = add i64 %2880, 45
  store i64 %2941, i64* %3, align 8
  %2942 = load i32, i32* %2898, align 4
  %2943 = add i32 %2942, -1
  %2944 = zext i32 %2943 to i64
  store i64 %2944, i64* %RSI.i1533, align 8
  %2945 = icmp eq i32 %2942, 0
  %2946 = zext i1 %2945 to i8
  store i8 %2946, i8* %14, align 1
  %2947 = and i32 %2943, 255
  %2948 = tail call i32 @llvm.ctpop.i32(i32 %2947)
  %2949 = trunc i32 %2948 to i8
  %2950 = and i8 %2949, 1
  %2951 = xor i8 %2950, 1
  store i8 %2951, i8* %21, align 1
  %2952 = xor i32 %2943, %2942
  %2953 = lshr i32 %2952, 4
  %2954 = trunc i32 %2953 to i8
  %2955 = and i8 %2954, 1
  store i8 %2955, i8* %26, align 1
  %2956 = icmp eq i32 %2943, 0
  %2957 = zext i1 %2956 to i8
  store i8 %2957, i8* %29, align 1
  %2958 = lshr i32 %2943, 31
  %2959 = trunc i32 %2958 to i8
  store i8 %2959, i8* %32, align 1
  %2960 = lshr i32 %2942, 31
  %2961 = xor i32 %2958, %2960
  %2962 = add nuw nsw i32 %2961, %2960
  %2963 = icmp eq i32 %2962, 2
  %2964 = zext i1 %2963 to i8
  store i8 %2964, i8* %38, align 1
  %2965 = sext i32 %2943 to i64
  store i64 %2965, i64* %RCX.i100, align 8
  %2966 = shl nsw i64 %2965, 2
  %2967 = add i64 %2940, %2966
  %2968 = add i64 %2880, 54
  store i64 %2968, i64* %3, align 8
  %2969 = inttoptr i64 %2967 to i32*
  %2970 = load i32, i32* %2969, align 4
  %2971 = add i32 %2970, %2927
  %2972 = zext i32 %2971 to i64
  store i64 %2972, i64* %RDX.i2857, align 8
  %2973 = icmp ult i32 %2971, %2927
  %2974 = icmp ult i32 %2971, %2970
  %2975 = or i1 %2973, %2974
  %2976 = zext i1 %2975 to i8
  store i8 %2976, i8* %14, align 1
  %2977 = and i32 %2971, 255
  %2978 = tail call i32 @llvm.ctpop.i32(i32 %2977)
  %2979 = trunc i32 %2978 to i8
  %2980 = and i8 %2979, 1
  %2981 = xor i8 %2980, 1
  store i8 %2981, i8* %21, align 1
  %2982 = xor i32 %2970, %2927
  %2983 = xor i32 %2982, %2971
  %2984 = lshr i32 %2983, 4
  %2985 = trunc i32 %2984 to i8
  %2986 = and i8 %2985, 1
  store i8 %2986, i8* %26, align 1
  %2987 = icmp eq i32 %2971, 0
  %2988 = zext i1 %2987 to i8
  store i8 %2988, i8* %29, align 1
  %2989 = lshr i32 %2971, 31
  %2990 = trunc i32 %2989 to i8
  store i8 %2990, i8* %32, align 1
  %2991 = lshr i32 %2927, 31
  %2992 = lshr i32 %2970, 31
  %2993 = xor i32 %2989, %2991
  %2994 = xor i32 %2989, %2992
  %2995 = add nuw nsw i32 %2993, %2994
  %2996 = icmp eq i32 %2995, 2
  %2997 = zext i1 %2996 to i8
  store i8 %2997, i8* %38, align 1
  %2998 = load i64, i64* %RBP.i, align 8
  %2999 = add i64 %2998, -140
  %3000 = add i64 %2880, 60
  store i64 %3000, i64* %3, align 8
  %3001 = inttoptr i64 %2999 to i32*
  store i32 %2971, i32* %3001, align 4
  %3002 = load i64, i64* %RBP.i, align 8
  %3003 = add i64 %3002, -56
  %3004 = load i64, i64* %3, align 8
  %3005 = add i64 %3004, 4
  store i64 %3005, i64* %3, align 8
  %3006 = inttoptr i64 %3003 to i64*
  %3007 = load i64, i64* %3006, align 8
  store i64 %3007, i64* %RAX.i34, align 8
  %3008 = add i64 %3002, -148
  %3009 = add i64 %3004, 11
  store i64 %3009, i64* %3, align 8
  %3010 = inttoptr i64 %3008 to i32*
  %3011 = load i32, i32* %3010, align 4
  %3012 = sext i32 %3011 to i64
  store i64 %3012, i64* %RCX.i100, align 8
  %3013 = shl nsw i64 %3012, 3
  %3014 = add i64 %3013, %3007
  %3015 = add i64 %3004, 15
  store i64 %3015, i64* %3, align 8
  %3016 = inttoptr i64 %3014 to i64*
  %3017 = load i64, i64* %3016, align 8
  store i64 %3017, i64* %RAX.i34, align 8
  %3018 = add i64 %3002, -128
  %3019 = add i64 %3004, 19
  store i64 %3019, i64* %3, align 8
  %3020 = inttoptr i64 %3018 to i32*
  %3021 = load i32, i32* %3020, align 4
  %3022 = sext i32 %3021 to i64
  store i64 %3022, i64* %RCX.i100, align 8
  %3023 = load i32, i32* %EDX.i2852, align 4
  %3024 = shl nsw i64 %3022, 2
  %3025 = add i64 %3017, %3024
  %3026 = add i64 %3004, 22
  store i64 %3026, i64* %3, align 8
  %3027 = inttoptr i64 %3025 to i32*
  %3028 = load i32, i32* %3027, align 4
  %3029 = sub i32 %3023, %3028
  %3030 = icmp ult i32 %3023, %3028
  %3031 = zext i1 %3030 to i8
  store i8 %3031, i8* %14, align 1
  %3032 = and i32 %3029, 255
  %3033 = tail call i32 @llvm.ctpop.i32(i32 %3032)
  %3034 = trunc i32 %3033 to i8
  %3035 = and i8 %3034, 1
  %3036 = xor i8 %3035, 1
  store i8 %3036, i8* %21, align 1
  %3037 = xor i32 %3028, %3023
  %3038 = xor i32 %3037, %3029
  %3039 = lshr i32 %3038, 4
  %3040 = trunc i32 %3039 to i8
  %3041 = and i8 %3040, 1
  store i8 %3041, i8* %26, align 1
  %3042 = icmp eq i32 %3029, 0
  %3043 = zext i1 %3042 to i8
  store i8 %3043, i8* %29, align 1
  %3044 = lshr i32 %3029, 31
  %3045 = trunc i32 %3044 to i8
  store i8 %3045, i8* %32, align 1
  %3046 = lshr i32 %3023, 31
  %3047 = lshr i32 %3028, 31
  %3048 = xor i32 %3047, %3046
  %3049 = xor i32 %3044, %3046
  %3050 = add nuw nsw i32 %3049, %3048
  %3051 = icmp eq i32 %3050, 2
  %3052 = zext i1 %3051 to i8
  store i8 %3052, i8* %38, align 1
  %3053 = icmp ne i8 %3045, 0
  %3054 = xor i1 %3053, %3051
  %3055 = or i1 %3042, %3054
  %.v173 = select i1 %3055, i64 76, i64 28
  %3056 = add i64 %3004, %.v173
  store i64 %3056, i64* %3, align 8
  br i1 %3055, label %block_.L_40ed83, label %block_40ed53

block_40ed53:                                     ; preds = %block_40ecfb
  %3057 = add i64 %3002, -140
  %3058 = add i64 %3056, 6
  store i64 %3058, i64* %3, align 8
  %3059 = inttoptr i64 %3057 to i32*
  %3060 = load i32, i32* %3059, align 4
  %3061 = zext i32 %3060 to i64
  store i64 %3061, i64* %RAX.i34, align 8
  %3062 = add i64 %3056, 10
  store i64 %3062, i64* %3, align 8
  %3063 = load i64, i64* %3006, align 8
  store i64 %3063, i64* %RCX.i100, align 8
  %3064 = add i64 %3056, 17
  store i64 %3064, i64* %3, align 8
  %3065 = load i32, i32* %3010, align 4
  %3066 = sext i32 %3065 to i64
  store i64 %3066, i64* %RDX.i2857, align 8
  %3067 = shl nsw i64 %3066, 3
  %3068 = add i64 %3067, %3063
  %3069 = add i64 %3056, 21
  store i64 %3069, i64* %3, align 8
  %3070 = inttoptr i64 %3068 to i64*
  %3071 = load i64, i64* %3070, align 8
  store i64 %3071, i64* %RCX.i100, align 8
  %3072 = add i64 %3056, 25
  store i64 %3072, i64* %3, align 8
  %3073 = load i32, i32* %3020, align 4
  %3074 = sext i32 %3073 to i64
  store i64 %3074, i64* %RDX.i2857, align 8
  %3075 = shl nsw i64 %3074, 2
  %3076 = add i64 %3075, %3071
  %3077 = add i64 %3056, 28
  store i64 %3077, i64* %3, align 8
  %3078 = inttoptr i64 %3076 to i32*
  store i32 %3060, i32* %3078, align 4
  %3079 = load i64, i64* %RBP.i, align 8
  %3080 = add i64 %3079, -88
  %3081 = load i64, i64* %3, align 8
  %3082 = add i64 %3081, 4
  store i64 %3082, i64* %3, align 8
  %3083 = inttoptr i64 %3080 to i64*
  %3084 = load i64, i64* %3083, align 8
  store i64 %3084, i64* %RCX.i100, align 8
  %3085 = add i64 %3079, -124
  %3086 = add i64 %3081, 8
  store i64 %3086, i64* %3, align 8
  %3087 = inttoptr i64 %3085 to i32*
  %3088 = load i32, i32* %3087, align 4
  %3089 = sext i32 %3088 to i64
  store i64 %3089, i64* %RDX.i2857, align 8
  %3090 = shl nsw i64 %3089, 3
  %3091 = add i64 %3090, %3084
  %3092 = add i64 %3081, 12
  store i64 %3092, i64* %3, align 8
  %3093 = inttoptr i64 %3091 to i64*
  %3094 = load i64, i64* %3093, align 8
  store i64 %3094, i64* %RCX.i100, align 8
  %3095 = add i64 %3079, -128
  %3096 = add i64 %3081, 16
  store i64 %3096, i64* %3, align 8
  %3097 = inttoptr i64 %3095 to i32*
  %3098 = load i32, i32* %3097, align 4
  %3099 = sext i32 %3098 to i64
  store i64 %3099, i64* %RDX.i2857, align 8
  %3100 = add i64 %3094, %3099
  %3101 = add i64 %3081, 20
  store i64 %3101, i64* %3, align 8
  %3102 = inttoptr i64 %3100 to i8*
  store i8 2, i8* %3102, align 1
  %.pre105 = load i64, i64* %3, align 8
  br label %block_.L_40ed83

block_.L_40ed83:                                  ; preds = %block_40ed53, %block_40ecfb, %block_40ecd6, %block_.L_40ecb1
  %3103 = phi i64 [ %.pre105, %block_40ed53 ], [ %3056, %block_40ecfb ], [ %2880, %block_40ecd6 ], [ %2809, %block_.L_40ecb1 ]
  %3104 = load i64, i64* %RBP.i, align 8
  %3105 = add i64 %3104, -136
  %3106 = add i64 %3103, 10
  store i64 %3106, i64* %3, align 8
  %3107 = inttoptr i64 %3105 to i32*
  store i32 0, i32* %3107, align 4
  %.pre106 = load i64, i64* %3, align 8
  br label %block_.L_40ed8d

block_.L_40ed8d:                                  ; preds = %block_.L_40ee0a, %block_.L_40ed83
  %3108 = phi i64 [ %.pre106, %block_.L_40ed83 ], [ %3422, %block_.L_40ee0a ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.6, %block_.L_40ed83 ], [ %3197, %block_.L_40ee0a ]
  %3109 = load i64, i64* %RBP.i, align 8
  %3110 = add i64 %3109, -136
  %3111 = add i64 %3108, 6
  store i64 %3111, i64* %3, align 8
  %3112 = inttoptr i64 %3110 to i32*
  %3113 = load i32, i32* %3112, align 4
  %3114 = zext i32 %3113 to i64
  store i64 %3114, i64* %RAX.i34, align 8
  %3115 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %3116 = sub i32 %3113, %3115
  %3117 = icmp ult i32 %3113, %3115
  %3118 = zext i1 %3117 to i8
  store i8 %3118, i8* %14, align 1
  %3119 = and i32 %3116, 255
  %3120 = tail call i32 @llvm.ctpop.i32(i32 %3119)
  %3121 = trunc i32 %3120 to i8
  %3122 = and i8 %3121, 1
  %3123 = xor i8 %3122, 1
  store i8 %3123, i8* %21, align 1
  %3124 = xor i32 %3115, %3113
  %3125 = xor i32 %3124, %3116
  %3126 = lshr i32 %3125, 4
  %3127 = trunc i32 %3126 to i8
  %3128 = and i8 %3127, 1
  store i8 %3128, i8* %26, align 1
  %3129 = icmp eq i32 %3116, 0
  %3130 = zext i1 %3129 to i8
  store i8 %3130, i8* %29, align 1
  %3131 = lshr i32 %3116, 31
  %3132 = trunc i32 %3131 to i8
  store i8 %3132, i8* %32, align 1
  %3133 = lshr i32 %3113, 31
  %3134 = lshr i32 %3115, 31
  %3135 = xor i32 %3134, %3133
  %3136 = xor i32 %3131, %3133
  %3137 = add nuw nsw i32 %3136, %3135
  %3138 = icmp eq i32 %3137, 2
  %3139 = zext i1 %3138 to i8
  store i8 %3139, i8* %38, align 1
  %3140 = icmp ne i8 %3132, 0
  %3141 = xor i1 %3140, %3138
  %.v174 = select i1 %3141, i64 19, i64 235
  %3142 = add i64 %3108, %.v174
  store i64 %3142, i64* %3, align 8
  br i1 %3141, label %block_40eda0, label %block_.L_40ee78.loopexit

block_40eda0:                                     ; preds = %block_.L_40ed8d
  store <4 x i32> zeroinitializer, <4 x i32>* %1486, align 1
  %3143 = add i64 %3109, -112
  %3144 = add i64 %3142, 7
  store i64 %3144, i64* %3, align 8
  %3145 = inttoptr i64 %3143 to i64*
  %3146 = load i64, i64* %3145, align 8
  store i64 %3146, i64* %RAX.i34, align 8
  %3147 = add i64 %3109, -124
  %3148 = add i64 %3142, 11
  store i64 %3148, i64* %3, align 8
  %3149 = inttoptr i64 %3147 to i32*
  %3150 = load i32, i32* %3149, align 4
  %3151 = sext i32 %3150 to i64
  store i64 %3151, i64* %RCX.i100, align 8
  %3152 = shl nsw i64 %3151, 3
  %3153 = add i64 %3152, %3146
  %3154 = add i64 %3142, 15
  store i64 %3154, i64* %3, align 8
  %3155 = inttoptr i64 %3153 to i64*
  %3156 = load i64, i64* %3155, align 8
  store i64 %3156, i64* %RAX.i34, align 8
  %3157 = add i64 %3142, 22
  store i64 %3157, i64* %3, align 8
  %3158 = load i32, i32* %3112, align 4
  %3159 = sext i32 %3158 to i64
  store i64 %3159, i64* %RCX.i100, align 8
  %3160 = shl nsw i64 %3159, 2
  %3161 = add i64 %3160, %3156
  %3162 = add i64 %3142, 27
  store i64 %3162, i64* %3, align 8
  %3163 = inttoptr i64 %3161 to i32*
  %3164 = load i32, i32* %3163, align 4
  store i32 %3164, i32* %1471, align 1
  store float 0.000000e+00, float* %1473, align 1
  store float 0.000000e+00, float* %1475, align 1
  store float 0.000000e+00, float* %1477, align 1
  %3165 = add i64 %3142, 30
  store i64 %3165, i64* %3, align 8
  %3166 = load <2 x float>, <2 x float>* %1478, align 1
  %3167 = extractelement <2 x float> %3166, i32 0
  %3168 = load <2 x float>, <2 x float>* %300, align 1
  %3169 = extractelement <2 x float> %3168, i32 0
  %3170 = fcmp uno float %3167, %3169
  br i1 %3170, label %3171, label %3181

; <label>:3171:                                   ; preds = %block_40eda0
  %3172 = fadd float %3167, %3169
  %3173 = bitcast float %3172 to i32
  %3174 = and i32 %3173, 2143289344
  %3175 = icmp eq i32 %3174, 2139095040
  %3176 = and i32 %3173, 4194303
  %3177 = icmp ne i32 %3176, 0
  %3178 = and i1 %3175, %3177
  br i1 %3178, label %3179, label %3187

; <label>:3179:                                   ; preds = %3171
  %3180 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3165, %struct.Memory* %MEMORY.11)
  %.pre107 = load i64, i64* %3, align 8
  %.pre108 = load i8, i8* %14, align 1
  %.pre109 = load i8, i8* %29, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit1531

; <label>:3181:                                   ; preds = %block_40eda0
  %3182 = fcmp ogt float %3167, %3169
  br i1 %3182, label %3187, label %3183

; <label>:3183:                                   ; preds = %3181
  %3184 = fcmp olt float %3167, %3169
  br i1 %3184, label %3187, label %3185

; <label>:3185:                                   ; preds = %3183
  %3186 = fcmp oeq float %3167, %3169
  br i1 %3186, label %3187, label %3191

; <label>:3187:                                   ; preds = %3185, %3183, %3181, %3171
  %3188 = phi i8 [ 0, %3181 ], [ 0, %3183 ], [ 1, %3185 ], [ 1, %3171 ]
  %3189 = phi i8 [ 0, %3181 ], [ 0, %3183 ], [ 0, %3185 ], [ 1, %3171 ]
  %3190 = phi i8 [ 0, %3181 ], [ 1, %3183 ], [ 0, %3185 ], [ 1, %3171 ]
  store i8 %3188, i8* %29, align 1
  store i8 %3189, i8* %21, align 1
  store i8 %3190, i8* %14, align 1
  br label %3191

; <label>:3191:                                   ; preds = %3187, %3185
  %3192 = phi i8 [ %3188, %3187 ], [ %3130, %3185 ]
  %3193 = phi i8 [ %3190, %3187 ], [ %3118, %3185 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit1531

routine_ucomiss__xmm0___xmm1.exit1531:            ; preds = %3191, %3179
  %3194 = phi i8 [ %.pre109, %3179 ], [ %3192, %3191 ]
  %3195 = phi i8 [ %.pre108, %3179 ], [ %3193, %3191 ]
  %3196 = phi i64 [ %.pre107, %3179 ], [ %3165, %3191 ]
  %3197 = phi %struct.Memory* [ %3180, %3179 ], [ %MEMORY.11, %3191 ]
  %3198 = or i8 %3194, %3195
  %3199 = icmp ne i8 %3198, 0
  %.v191 = select i1 %3199, i64 76, i64 6
  %3200 = add i64 %3196, %.v191
  store i64 %3200, i64* %3, align 8
  %.pre123 = load i64, i64* %RBP.i, align 8
  br i1 %3199, label %block_.L_40ee0a, label %block_40edc4

block_40edc4:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit1531
  %3201 = add i64 %.pre123, -16
  %3202 = add i64 %3200, 4
  store i64 %3202, i64* %3, align 8
  %3203 = inttoptr i64 %3201 to i64*
  %3204 = load i64, i64* %3203, align 8
  store i64 %3204, i64* %RAX.i34, align 8
  %3205 = add i64 %3204, 320
  %3206 = add i64 %3200, 11
  store i64 %3206, i64* %3, align 8
  %3207 = inttoptr i64 %3205 to i64*
  %3208 = load i64, i64* %3207, align 8
  store i64 %3208, i64* %RAX.i34, align 8
  %3209 = add i64 %.pre123, -136
  %3210 = add i64 %3200, 18
  store i64 %3210, i64* %3, align 8
  %3211 = inttoptr i64 %3209 to i32*
  %3212 = load i32, i32* %3211, align 4
  %3213 = sext i32 %3212 to i64
  store i64 %3213, i64* %RCX.i100, align 8
  %3214 = shl nsw i64 %3213, 3
  %3215 = add i64 %3214, %3208
  %3216 = add i64 %3200, 22
  store i64 %3216, i64* %3, align 8
  %3217 = inttoptr i64 %3215 to i64*
  %3218 = load i64, i64* %3217, align 8
  store i64 %3218, i64* %RAX.i34, align 8
  %3219 = add i64 %.pre123, -128
  %3220 = add i64 %3200, 26
  store i64 %3220, i64* %3, align 8
  %3221 = inttoptr i64 %3219 to i32*
  %3222 = load i32, i32* %3221, align 4
  %3223 = sext i32 %3222 to i64
  store i64 %3223, i64* %RCX.i100, align 8
  %3224 = shl nsw i64 %3223, 2
  %3225 = add i64 %3224, %3218
  %3226 = add i64 %3200, 33
  store i64 %3226, i64* %3, align 8
  %3227 = inttoptr i64 %3225 to i32*
  %3228 = load i32, i32* %3227, align 4
  %3229 = add i32 %3228, 987654321
  %3230 = icmp ult i32 %3228, -987654321
  %3231 = zext i1 %3230 to i8
  store i8 %3231, i8* %14, align 1
  %3232 = and i32 %3229, 255
  %3233 = tail call i32 @llvm.ctpop.i32(i32 %3232)
  %3234 = trunc i32 %3233 to i8
  %3235 = and i8 %3234, 1
  %3236 = xor i8 %3235, 1
  store i8 %3236, i8* %21, align 1
  %3237 = xor i32 %3229, %3228
  %3238 = lshr i32 %3237, 4
  %3239 = trunc i32 %3238 to i8
  %3240 = and i8 %3239, 1
  store i8 %3240, i8* %26, align 1
  %3241 = icmp eq i32 %3229, 0
  %3242 = zext i1 %3241 to i8
  store i8 %3242, i8* %29, align 1
  %3243 = lshr i32 %3229, 31
  %3244 = trunc i32 %3243 to i8
  store i8 %3244, i8* %32, align 1
  %3245 = lshr i32 %3228, 31
  %3246 = xor i32 %3245, 1
  %3247 = xor i32 %3243, %3245
  %3248 = add nuw nsw i32 %3247, %3246
  %3249 = icmp eq i32 %3248, 2
  %3250 = zext i1 %3249 to i8
  store i8 %3250, i8* %38, align 1
  %.v192 = select i1 %3241, i64 39, i64 70
  %3251 = add i64 %3200, %.v192
  store i64 %3251, i64* %3, align 8
  br i1 %3241, label %block_40edeb, label %block_.L_40ee0a

block_40edeb:                                     ; preds = %block_40edc4
  %3252 = add i64 %.pre123, -56
  %3253 = add i64 %3251, 4
  store i64 %3253, i64* %3, align 8
  %3254 = inttoptr i64 %3252 to i64*
  %3255 = load i64, i64* %3254, align 8
  store i64 %3255, i64* %RAX.i34, align 8
  %3256 = add i64 %.pre123, -148
  %3257 = add i64 %3251, 11
  store i64 %3257, i64* %3, align 8
  %3258 = inttoptr i64 %3256 to i32*
  %3259 = load i32, i32* %3258, align 4
  %3260 = sext i32 %3259 to i64
  store i64 %3260, i64* %RCX.i100, align 8
  %3261 = shl nsw i64 %3260, 3
  %3262 = add i64 %3261, %3255
  %3263 = add i64 %3251, 15
  store i64 %3263, i64* %3, align 8
  %3264 = inttoptr i64 %3262 to i64*
  %3265 = load i64, i64* %3264, align 8
  store i64 %3265, i64* %RAX.i34, align 8
  %3266 = add i64 %3251, 19
  store i64 %3266, i64* %3, align 8
  %3267 = load i32, i32* %3221, align 4
  %3268 = sext i32 %3267 to i64
  store i64 %3268, i64* %RCX.i100, align 8
  %3269 = shl nsw i64 %3268, 2
  %3270 = add i64 %3269, %3265
  %3271 = add i64 %3251, 26
  store i64 %3271, i64* %3, align 8
  %3272 = inttoptr i64 %3270 to i32*
  store i32 -987654321, i32* %3272, align 4
  %3273 = load i64, i64* %3, align 8
  %3274 = add i64 %3273, 115
  store i64 %3274, i64* %3, align 8
  %.pre110 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40ee78

block_.L_40ee0a:                                  ; preds = %routine_ucomiss__xmm0___xmm1.exit1531, %block_40edc4
  %3275 = phi i64 [ %3251, %block_40edc4 ], [ %3200, %routine_ucomiss__xmm0___xmm1.exit1531 ]
  %3276 = add i64 %.pre123, -16
  %3277 = add i64 %3275, 4
  store i64 %3277, i64* %3, align 8
  %3278 = inttoptr i64 %3276 to i64*
  %3279 = load i64, i64* %3278, align 8
  store i64 %3279, i64* %RAX.i34, align 8
  %3280 = add i64 %3279, 320
  %3281 = add i64 %3275, 11
  store i64 %3281, i64* %3, align 8
  %3282 = inttoptr i64 %3280 to i64*
  %3283 = load i64, i64* %3282, align 8
  store i64 %3283, i64* %RAX.i34, align 8
  %3284 = add i64 %.pre123, -136
  %3285 = add i64 %3275, 18
  store i64 %3285, i64* %3, align 8
  %3286 = inttoptr i64 %3284 to i32*
  %3287 = load i32, i32* %3286, align 4
  %3288 = sext i32 %3287 to i64
  store i64 %3288, i64* %RCX.i100, align 8
  %3289 = shl nsw i64 %3288, 3
  %3290 = add i64 %3289, %3283
  %3291 = add i64 %3275, 22
  store i64 %3291, i64* %3, align 8
  %3292 = inttoptr i64 %3290 to i64*
  %3293 = load i64, i64* %3292, align 8
  store i64 %3293, i64* %RAX.i34, align 8
  %3294 = add i64 %.pre123, -128
  %3295 = add i64 %3275, 26
  store i64 %3295, i64* %3, align 8
  %3296 = inttoptr i64 %3294 to i32*
  %3297 = load i32, i32* %3296, align 4
  %3298 = sext i32 %3297 to i64
  store i64 %3298, i64* %RCX.i100, align 8
  %3299 = shl nsw i64 %3298, 2
  %3300 = add i64 %3299, %3293
  %3301 = add i64 %3275, 31
  store i64 %3301, i64* %3, align 8
  %3302 = load <2 x i32>, <2 x i32>* %1479, align 1
  %3303 = load <2 x i32>, <2 x i32>* %1480, align 1
  %3304 = inttoptr i64 %3300 to i32*
  %3305 = load i32, i32* %3304, align 4
  %3306 = sitofp i32 %3305 to float
  store float %3306, float* %288, align 1
  %3307 = extractelement <2 x i32> %3302, i32 1
  store i32 %3307, i32* %343, align 1
  %3308 = extractelement <2 x i32> %3303, i32 0
  store i32 %3308, i32* %147, align 1
  %3309 = extractelement <2 x i32> %3303, i32 1
  store i32 %3309, i32* %344, align 1
  %3310 = add i64 %.pre123, -112
  %3311 = add i64 %3275, 35
  store i64 %3311, i64* %3, align 8
  %3312 = inttoptr i64 %3310 to i64*
  %3313 = load i64, i64* %3312, align 8
  store i64 %3313, i64* %RAX.i34, align 8
  %3314 = add i64 %.pre123, -124
  %3315 = add i64 %3275, 39
  store i64 %3315, i64* %3, align 8
  %3316 = inttoptr i64 %3314 to i32*
  %3317 = load i32, i32* %3316, align 4
  %3318 = sext i32 %3317 to i64
  store i64 %3318, i64* %RCX.i100, align 8
  %3319 = shl nsw i64 %3318, 3
  %3320 = add i64 %3319, %3313
  %3321 = add i64 %3275, 43
  store i64 %3321, i64* %3, align 8
  %3322 = inttoptr i64 %3320 to i64*
  %3323 = load i64, i64* %3322, align 8
  store i64 %3323, i64* %RAX.i34, align 8
  %3324 = add i64 %3275, 50
  store i64 %3324, i64* %3, align 8
  %3325 = load i32, i32* %3286, align 4
  %3326 = sext i32 %3325 to i64
  store i64 %3326, i64* %RCX.i100, align 8
  %3327 = shl nsw i64 %3326, 2
  %3328 = add i64 %3327, %3323
  %3329 = add i64 %3275, 55
  store i64 %3329, i64* %3, align 8
  %3330 = load <2 x float>, <2 x float>* %300, align 1
  %3331 = load <2 x i32>, <2 x i32>* %1480, align 1
  %3332 = inttoptr i64 %3328 to float*
  %3333 = load float, float* %3332, align 4
  %3334 = extractelement <2 x float> %3330, i32 0
  %3335 = fmul float %3334, %3333
  store float %3335, float* %288, align 1
  %3336 = bitcast <2 x float> %3330 to <2 x i32>
  %3337 = extractelement <2 x i32> %3336, i32 1
  store i32 %3337, i32* %343, align 1
  %3338 = extractelement <2 x i32> %3331, i32 0
  store i32 %3338, i32* %147, align 1
  %3339 = extractelement <2 x i32> %3331, i32 1
  store i32 %3339, i32* %344, align 1
  %3340 = add i64 %.pre123, -56
  %3341 = add i64 %3275, 59
  store i64 %3341, i64* %3, align 8
  %3342 = inttoptr i64 %3340 to i64*
  %3343 = load i64, i64* %3342, align 8
  store i64 %3343, i64* %RAX.i34, align 8
  %3344 = load i64, i64* %RBP.i, align 8
  %3345 = add i64 %3344, -148
  %3346 = add i64 %3275, 66
  store i64 %3346, i64* %3, align 8
  %3347 = inttoptr i64 %3345 to i32*
  %3348 = load i32, i32* %3347, align 4
  %3349 = sext i32 %3348 to i64
  store i64 %3349, i64* %RCX.i100, align 8
  %3350 = shl nsw i64 %3349, 3
  %3351 = add i64 %3350, %3343
  %3352 = add i64 %3275, 70
  store i64 %3352, i64* %3, align 8
  %3353 = inttoptr i64 %3351 to i64*
  %3354 = load i64, i64* %3353, align 8
  store i64 %3354, i64* %RAX.i34, align 8
  %3355 = add i64 %3344, -128
  %3356 = add i64 %3275, 74
  store i64 %3356, i64* %3, align 8
  %3357 = inttoptr i64 %3355 to i32*
  %3358 = load i32, i32* %3357, align 4
  %3359 = sext i32 %3358 to i64
  store i64 %3359, i64* %RCX.i100, align 8
  %3360 = shl nsw i64 %3359, 2
  %3361 = add i64 %3360, %3354
  %3362 = add i64 %3275, 79
  store i64 %3362, i64* %3, align 8
  %3363 = load <2 x i32>, <2 x i32>* %1481, align 1
  %3364 = load <2 x i32>, <2 x i32>* %1482, align 1
  %3365 = inttoptr i64 %3361 to i32*
  %3366 = load i32, i32* %3365, align 4
  %3367 = sitofp i32 %3366 to float
  store float %3367, float* %1470, align 1
  %3368 = extractelement <2 x i32> %3363, i32 1
  store i32 %3368, i32* %1483, align 1
  %3369 = extractelement <2 x i32> %3364, i32 0
  store i32 %3369, i32* %1484, align 1
  %3370 = extractelement <2 x i32> %3364, i32 1
  store i32 %3370, i32* %1485, align 1
  %3371 = load <2 x float>, <2 x float>* %1478, align 1
  %3372 = load <2 x i32>, <2 x i32>* %1482, align 1
  %3373 = load <2 x float>, <2 x float>* %300, align 1
  %3374 = extractelement <2 x float> %3371, i32 0
  %3375 = extractelement <2 x float> %3373, i32 0
  %3376 = fadd float %3374, %3375
  store float %3376, float* %1470, align 1
  %3377 = bitcast <2 x float> %3371 to <2 x i32>
  %3378 = extractelement <2 x i32> %3377, i32 1
  store i32 %3378, i32* %1483, align 1
  %3379 = extractelement <2 x i32> %3372, i32 0
  store i32 %3379, i32* %1484, align 1
  %3380 = extractelement <2 x i32> %3372, i32 1
  store i32 %3380, i32* %1485, align 1
  %3381 = load <2 x float>, <2 x float>* %1478, align 1
  %3382 = extractelement <2 x float> %3381, i32 0
  %3383 = tail call float @llvm.trunc.f32(float %3382)
  %3384 = tail call float @llvm.fabs.f32(float %3383)
  %3385 = fcmp ogt float %3384, 0x41E0000000000000
  %3386 = fptosi float %3383 to i32
  %3387 = zext i32 %3386 to i64
  %3388 = select i1 %3385, i64 2147483648, i64 %3387
  store i64 %3388, i64* %RDX.i2857, align 8
  %3389 = trunc i64 %3388 to i32
  %3390 = add i64 %3275, 90
  store i64 %3390, i64* %3, align 8
  store i32 %3389, i32* %3365, align 4
  %3391 = load i64, i64* %RBP.i, align 8
  %3392 = add i64 %3391, -136
  %3393 = load i64, i64* %3, align 8
  %3394 = add i64 %3393, 6
  store i64 %3394, i64* %3, align 8
  %3395 = inttoptr i64 %3392 to i32*
  %3396 = load i32, i32* %3395, align 4
  %3397 = add i32 %3396, 1
  %3398 = zext i32 %3397 to i64
  store i64 %3398, i64* %RAX.i34, align 8
  %3399 = icmp eq i32 %3396, -1
  %3400 = icmp eq i32 %3397, 0
  %3401 = or i1 %3399, %3400
  %3402 = zext i1 %3401 to i8
  store i8 %3402, i8* %14, align 1
  %3403 = and i32 %3397, 255
  %3404 = tail call i32 @llvm.ctpop.i32(i32 %3403)
  %3405 = trunc i32 %3404 to i8
  %3406 = and i8 %3405, 1
  %3407 = xor i8 %3406, 1
  store i8 %3407, i8* %21, align 1
  %3408 = xor i32 %3397, %3396
  %3409 = lshr i32 %3408, 4
  %3410 = trunc i32 %3409 to i8
  %3411 = and i8 %3410, 1
  store i8 %3411, i8* %26, align 1
  %3412 = zext i1 %3400 to i8
  store i8 %3412, i8* %29, align 1
  %3413 = lshr i32 %3397, 31
  %3414 = trunc i32 %3413 to i8
  store i8 %3414, i8* %32, align 1
  %3415 = lshr i32 %3396, 31
  %3416 = xor i32 %3413, %3415
  %3417 = add nuw nsw i32 %3416, %3413
  %3418 = icmp eq i32 %3417, 2
  %3419 = zext i1 %3418 to i8
  store i8 %3419, i8* %38, align 1
  %3420 = add i64 %3393, 15
  store i64 %3420, i64* %3, align 8
  store i32 %3397, i32* %3395, align 4
  %3421 = load i64, i64* %3, align 8
  %3422 = add i64 %3421, -230
  store i64 %3422, i64* %3, align 8
  br label %block_.L_40ed8d

block_.L_40ee78.loopexit:                         ; preds = %block_.L_40ed8d
  br label %block_.L_40ee78

block_.L_40ee78:                                  ; preds = %block_.L_40ee78.loopexit, %block_40edeb
  %3423 = phi i64 [ %3274, %block_40edeb ], [ %3142, %block_.L_40ee78.loopexit ]
  %3424 = phi i64 [ %.pre110, %block_40edeb ], [ %3109, %block_.L_40ee78.loopexit ]
  %MEMORY.13 = phi %struct.Memory* [ %3197, %block_40edeb ], [ %MEMORY.11, %block_.L_40ee78.loopexit ]
  %3425 = add i64 %3424, -72
  %3426 = add i64 %3423, 4
  store i64 %3426, i64* %3, align 8
  %3427 = inttoptr i64 %3425 to i64*
  %3428 = load i64, i64* %3427, align 8
  store i64 %3428, i64* %RAX.i34, align 8
  %3429 = add i64 %3424, -148
  %3430 = add i64 %3423, 11
  store i64 %3430, i64* %3, align 8
  %3431 = inttoptr i64 %3429 to i32*
  %3432 = load i32, i32* %3431, align 4
  %3433 = sext i32 %3432 to i64
  store i64 %3433, i64* %RCX.i100, align 8
  %3434 = shl nsw i64 %3433, 3
  %3435 = add i64 %3434, %3428
  %3436 = add i64 %3423, 15
  store i64 %3436, i64* %3, align 8
  %3437 = inttoptr i64 %3435 to i64*
  %3438 = load i64, i64* %3437, align 8
  store i64 %3438, i64* %RAX.i34, align 8
  %3439 = add i64 %3424, -128
  %3440 = add i64 %3423, 19
  store i64 %3440, i64* %3, align 8
  %3441 = inttoptr i64 %3439 to i32*
  %3442 = load i32, i32* %3441, align 4
  %3443 = sext i32 %3442 to i64
  store i64 %3443, i64* %RCX.i100, align 8
  %3444 = shl nsw i64 %3443, 2
  %3445 = add i64 %3444, %3438
  %3446 = add i64 %3423, 26
  store i64 %3446, i64* %3, align 8
  %3447 = inttoptr i64 %3445 to i32*
  store i32 -987654321, i32* %3447, align 4
  %3448 = load i64, i64* %RBP.i, align 8
  %3449 = add i64 %3448, -104
  %3450 = load i64, i64* %3, align 8
  %3451 = add i64 %3450, 4
  store i64 %3451, i64* %3, align 8
  %3452 = inttoptr i64 %3449 to i64*
  %3453 = load i64, i64* %3452, align 8
  store i64 %3453, i64* %RAX.i34, align 8
  %3454 = add i64 %3448, -124
  %3455 = add i64 %3450, 8
  store i64 %3455, i64* %3, align 8
  %3456 = inttoptr i64 %3454 to i32*
  %3457 = load i32, i32* %3456, align 4
  %3458 = sext i32 %3457 to i64
  store i64 %3458, i64* %RCX.i100, align 8
  %3459 = shl nsw i64 %3458, 3
  %3460 = add i64 %3459, %3453
  %3461 = add i64 %3450, 12
  store i64 %3461, i64* %3, align 8
  %3462 = inttoptr i64 %3460 to i64*
  %3463 = load i64, i64* %3462, align 8
  store i64 %3463, i64* %RAX.i34, align 8
  %3464 = add i64 %3448, -128
  %3465 = add i64 %3450, 16
  store i64 %3465, i64* %3, align 8
  %3466 = inttoptr i64 %3464 to i32*
  %3467 = load i32, i32* %3466, align 4
  %3468 = sext i32 %3467 to i64
  store i64 %3468, i64* %RCX.i100, align 8
  %3469 = add i64 %3463, %3468
  %3470 = add i64 %3450, 20
  store i64 %3470, i64* %3, align 8
  %3471 = inttoptr i64 %3469 to i8*
  store i8 0, i8* %3471, align 1
  %3472 = load i64, i64* %RBP.i, align 8
  %3473 = add i64 %3472, -56
  %3474 = load i64, i64* %3, align 8
  %3475 = add i64 %3474, 4
  store i64 %3475, i64* %3, align 8
  %3476 = inttoptr i64 %3473 to i64*
  %3477 = load i64, i64* %3476, align 8
  store i64 %3477, i64* %RAX.i34, align 8
  %3478 = add i64 %3472, -148
  %3479 = add i64 %3474, 11
  store i64 %3479, i64* %3, align 8
  %3480 = inttoptr i64 %3478 to i32*
  %3481 = load i32, i32* %3480, align 4
  %3482 = sext i32 %3481 to i64
  store i64 %3482, i64* %RCX.i100, align 8
  %3483 = shl nsw i64 %3482, 3
  %3484 = add i64 %3483, %3477
  %3485 = add i64 %3474, 15
  store i64 %3485, i64* %3, align 8
  %3486 = inttoptr i64 %3484 to i64*
  %3487 = load i64, i64* %3486, align 8
  store i64 %3487, i64* %RAX.i34, align 8
  %3488 = add i64 %3472, -128
  %3489 = add i64 %3474, 18
  store i64 %3489, i64* %3, align 8
  %3490 = inttoptr i64 %3488 to i32*
  %3491 = load i32, i32* %3490, align 4
  %3492 = add i32 %3491, -1
  %3493 = zext i32 %3492 to i64
  store i64 %3493, i64* %RDX.i2857, align 8
  %3494 = icmp eq i32 %3491, 0
  %3495 = zext i1 %3494 to i8
  store i8 %3495, i8* %14, align 1
  %3496 = and i32 %3492, 255
  %3497 = tail call i32 @llvm.ctpop.i32(i32 %3496)
  %3498 = trunc i32 %3497 to i8
  %3499 = and i8 %3498, 1
  %3500 = xor i8 %3499, 1
  store i8 %3500, i8* %21, align 1
  %3501 = xor i32 %3492, %3491
  %3502 = lshr i32 %3501, 4
  %3503 = trunc i32 %3502 to i8
  %3504 = and i8 %3503, 1
  store i8 %3504, i8* %26, align 1
  %3505 = icmp eq i32 %3492, 0
  %3506 = zext i1 %3505 to i8
  store i8 %3506, i8* %29, align 1
  %3507 = lshr i32 %3492, 31
  %3508 = trunc i32 %3507 to i8
  store i8 %3508, i8* %32, align 1
  %3509 = lshr i32 %3491, 31
  %3510 = xor i32 %3507, %3509
  %3511 = add nuw nsw i32 %3510, %3509
  %3512 = icmp eq i32 %3511, 2
  %3513 = zext i1 %3512 to i8
  store i8 %3513, i8* %38, align 1
  %3514 = sext i32 %3492 to i64
  store i64 %3514, i64* %RCX.i100, align 8
  %3515 = shl nsw i64 %3514, 2
  %3516 = add i64 %3487, %3515
  %3517 = add i64 %3474, 31
  store i64 %3517, i64* %3, align 8
  %3518 = inttoptr i64 %3516 to i32*
  %3519 = load i32, i32* %3518, align 4
  %3520 = add i32 %3519, 987654321
  %3521 = icmp ult i32 %3519, -987654321
  %3522 = zext i1 %3521 to i8
  store i8 %3522, i8* %14, align 1
  %3523 = and i32 %3520, 255
  %3524 = tail call i32 @llvm.ctpop.i32(i32 %3523)
  %3525 = trunc i32 %3524 to i8
  %3526 = and i8 %3525, 1
  %3527 = xor i8 %3526, 1
  store i8 %3527, i8* %21, align 1
  %3528 = xor i32 %3520, %3519
  %3529 = lshr i32 %3528, 4
  %3530 = trunc i32 %3529 to i8
  %3531 = and i8 %3530, 1
  store i8 %3531, i8* %26, align 1
  %3532 = icmp eq i32 %3520, 0
  %3533 = zext i1 %3532 to i8
  store i8 %3533, i8* %29, align 1
  %3534 = lshr i32 %3520, 31
  %3535 = trunc i32 %3534 to i8
  store i8 %3535, i8* %32, align 1
  %3536 = lshr i32 %3519, 31
  %3537 = xor i32 %3536, 1
  %3538 = xor i32 %3534, %3536
  %3539 = add nuw nsw i32 %3538, %3537
  %3540 = icmp eq i32 %3539, 2
  %3541 = zext i1 %3540 to i8
  store i8 %3541, i8* %38, align 1
  %3542 = icmp ne i8 %3535, 0
  %3543 = xor i1 %3542, %3540
  %3544 = or i1 %3532, %3543
  %.v175 = select i1 %3544, i64 210, i64 37
  %3545 = add i64 %3474, %.v175
  store i64 %3545, i64* %3, align 8
  br i1 %3544, label %block_.L_40ef78, label %block_40eecb

block_40eecb:                                     ; preds = %block_.L_40ee78
  %3546 = load i64, i64* %RBP.i, align 8
  %3547 = add i64 %3546, -16
  %3548 = add i64 %3545, 4
  store i64 %3548, i64* %3, align 8
  %3549 = inttoptr i64 %3547 to i64*
  %3550 = load i64, i64* %3549, align 8
  store i64 %3550, i64* %RAX.i34, align 8
  %3551 = add i64 %3550, 312
  %3552 = add i64 %3545, 11
  store i64 %3552, i64* %3, align 8
  %3553 = inttoptr i64 %3551 to i64*
  %3554 = load i64, i64* %3553, align 8
  store i64 %3554, i64* %RAX.i34, align 8
  %3555 = add i64 %3554, 16
  %3556 = add i64 %3545, 15
  store i64 %3556, i64* %3, align 8
  %3557 = inttoptr i64 %3555 to i64*
  %3558 = load i64, i64* %3557, align 8
  store i64 %3558, i64* %RAX.i34, align 8
  %3559 = add i64 %3546, -128
  %3560 = add i64 %3545, 18
  store i64 %3560, i64* %3, align 8
  %3561 = inttoptr i64 %3559 to i32*
  %3562 = load i32, i32* %3561, align 4
  %3563 = add i32 %3562, -1
  %3564 = zext i32 %3563 to i64
  store i64 %3564, i64* %RCX.i100, align 8
  %3565 = icmp eq i32 %3562, 0
  %3566 = zext i1 %3565 to i8
  store i8 %3566, i8* %14, align 1
  %3567 = and i32 %3563, 255
  %3568 = tail call i32 @llvm.ctpop.i32(i32 %3567)
  %3569 = trunc i32 %3568 to i8
  %3570 = and i8 %3569, 1
  %3571 = xor i8 %3570, 1
  store i8 %3571, i8* %21, align 1
  %3572 = xor i32 %3563, %3562
  %3573 = lshr i32 %3572, 4
  %3574 = trunc i32 %3573 to i8
  %3575 = and i8 %3574, 1
  store i8 %3575, i8* %26, align 1
  %3576 = icmp eq i32 %3563, 0
  %3577 = zext i1 %3576 to i8
  store i8 %3577, i8* %29, align 1
  %3578 = lshr i32 %3563, 31
  %3579 = trunc i32 %3578 to i8
  store i8 %3579, i8* %32, align 1
  %3580 = lshr i32 %3562, 31
  %3581 = xor i32 %3578, %3580
  %3582 = add nuw nsw i32 %3581, %3580
  %3583 = icmp eq i32 %3582, 2
  %3584 = zext i1 %3583 to i8
  store i8 %3584, i8* %38, align 1
  %3585 = sext i32 %3563 to i64
  store i64 %3585, i64* %RDX.i2857, align 8
  %3586 = shl nsw i64 %3585, 2
  %3587 = add i64 %3558, %3586
  %3588 = add i64 %3545, 31
  store i64 %3588, i64* %3, align 8
  %3589 = inttoptr i64 %3587 to i32*
  %3590 = load i32, i32* %3589, align 4
  %3591 = add i32 %3590, 987654321
  %3592 = icmp ult i32 %3590, -987654321
  %3593 = zext i1 %3592 to i8
  store i8 %3593, i8* %14, align 1
  %3594 = and i32 %3591, 255
  %3595 = tail call i32 @llvm.ctpop.i32(i32 %3594)
  %3596 = trunc i32 %3595 to i8
  %3597 = and i8 %3596, 1
  %3598 = xor i8 %3597, 1
  store i8 %3598, i8* %21, align 1
  %3599 = xor i32 %3591, %3590
  %3600 = lshr i32 %3599, 4
  %3601 = trunc i32 %3600 to i8
  %3602 = and i8 %3601, 1
  store i8 %3602, i8* %26, align 1
  %3603 = icmp eq i32 %3591, 0
  %3604 = zext i1 %3603 to i8
  store i8 %3604, i8* %29, align 1
  %3605 = lshr i32 %3591, 31
  %3606 = trunc i32 %3605 to i8
  store i8 %3606, i8* %32, align 1
  %3607 = lshr i32 %3590, 31
  %3608 = xor i32 %3607, 1
  %3609 = xor i32 %3605, %3607
  %3610 = add nuw nsw i32 %3609, %3608
  %3611 = icmp eq i32 %3610, 2
  %3612 = zext i1 %3611 to i8
  store i8 %3612, i8* %38, align 1
  %3613 = icmp ne i8 %3606, 0
  %3614 = xor i1 %3613, %3611
  %3615 = or i1 %3603, %3614
  %.v176 = select i1 %3615, i64 173, i64 37
  %3616 = add i64 %3545, %.v176
  store i64 %3616, i64* %3, align 8
  br i1 %3615, label %block_.L_40ef78, label %block_40eef0

block_40eef0:                                     ; preds = %block_40eecb
  %3617 = load i64, i64* %RBP.i, align 8
  %3618 = add i64 %3617, -56
  %3619 = add i64 %3616, 4
  store i64 %3619, i64* %3, align 8
  %3620 = inttoptr i64 %3618 to i64*
  %3621 = load i64, i64* %3620, align 8
  store i64 %3621, i64* %RAX.i34, align 8
  %3622 = add i64 %3617, -148
  %3623 = add i64 %3616, 11
  store i64 %3623, i64* %3, align 8
  %3624 = inttoptr i64 %3622 to i32*
  %3625 = load i32, i32* %3624, align 4
  %3626 = sext i32 %3625 to i64
  store i64 %3626, i64* %RCX.i100, align 8
  %3627 = shl nsw i64 %3626, 3
  %3628 = add i64 %3627, %3621
  %3629 = add i64 %3616, 15
  store i64 %3629, i64* %3, align 8
  %3630 = inttoptr i64 %3628 to i64*
  %3631 = load i64, i64* %3630, align 8
  store i64 %3631, i64* %RAX.i34, align 8
  %3632 = add i64 %3617, -128
  %3633 = add i64 %3616, 18
  store i64 %3633, i64* %3, align 8
  %3634 = inttoptr i64 %3632 to i32*
  %3635 = load i32, i32* %3634, align 4
  %3636 = add i32 %3635, -1
  %3637 = zext i32 %3636 to i64
  store i64 %3637, i64* %RDX.i2857, align 8
  %3638 = icmp eq i32 %3635, 0
  %3639 = zext i1 %3638 to i8
  store i8 %3639, i8* %14, align 1
  %3640 = and i32 %3636, 255
  %3641 = tail call i32 @llvm.ctpop.i32(i32 %3640)
  %3642 = trunc i32 %3641 to i8
  %3643 = and i8 %3642, 1
  %3644 = xor i8 %3643, 1
  store i8 %3644, i8* %21, align 1
  %3645 = xor i32 %3636, %3635
  %3646 = lshr i32 %3645, 4
  %3647 = trunc i32 %3646 to i8
  %3648 = and i8 %3647, 1
  store i8 %3648, i8* %26, align 1
  %3649 = icmp eq i32 %3636, 0
  %3650 = zext i1 %3649 to i8
  store i8 %3650, i8* %29, align 1
  %3651 = lshr i32 %3636, 31
  %3652 = trunc i32 %3651 to i8
  store i8 %3652, i8* %32, align 1
  %3653 = lshr i32 %3635, 31
  %3654 = xor i32 %3651, %3653
  %3655 = add nuw nsw i32 %3654, %3653
  %3656 = icmp eq i32 %3655, 2
  %3657 = zext i1 %3656 to i8
  store i8 %3657, i8* %38, align 1
  %3658 = sext i32 %3636 to i64
  store i64 %3658, i64* %RCX.i100, align 8
  %3659 = shl nsw i64 %3658, 2
  %3660 = add i64 %3631, %3659
  %3661 = add i64 %3616, 27
  store i64 %3661, i64* %3, align 8
  %3662 = inttoptr i64 %3660 to i32*
  %3663 = load i32, i32* %3662, align 4
  %3664 = zext i32 %3663 to i64
  store i64 %3664, i64* %RDX.i2857, align 8
  %3665 = add i64 %3617, -16
  %3666 = add i64 %3616, 31
  store i64 %3666, i64* %3, align 8
  %3667 = inttoptr i64 %3665 to i64*
  %3668 = load i64, i64* %3667, align 8
  store i64 %3668, i64* %RAX.i34, align 8
  %3669 = add i64 %3668, 312
  %3670 = add i64 %3616, 38
  store i64 %3670, i64* %3, align 8
  %3671 = inttoptr i64 %3669 to i64*
  %3672 = load i64, i64* %3671, align 8
  store i64 %3672, i64* %RAX.i34, align 8
  %3673 = add i64 %3672, 16
  %3674 = add i64 %3616, 42
  store i64 %3674, i64* %3, align 8
  %3675 = inttoptr i64 %3673 to i64*
  %3676 = load i64, i64* %3675, align 8
  store i64 %3676, i64* %RAX.i34, align 8
  %3677 = add i64 %3616, 45
  store i64 %3677, i64* %3, align 8
  %3678 = load i32, i32* %3634, align 4
  %3679 = add i32 %3678, -1
  %3680 = zext i32 %3679 to i64
  store i64 %3680, i64* %RSI.i1533, align 8
  %3681 = icmp eq i32 %3678, 0
  %3682 = zext i1 %3681 to i8
  store i8 %3682, i8* %14, align 1
  %3683 = and i32 %3679, 255
  %3684 = tail call i32 @llvm.ctpop.i32(i32 %3683)
  %3685 = trunc i32 %3684 to i8
  %3686 = and i8 %3685, 1
  %3687 = xor i8 %3686, 1
  store i8 %3687, i8* %21, align 1
  %3688 = xor i32 %3679, %3678
  %3689 = lshr i32 %3688, 4
  %3690 = trunc i32 %3689 to i8
  %3691 = and i8 %3690, 1
  store i8 %3691, i8* %26, align 1
  %3692 = icmp eq i32 %3679, 0
  %3693 = zext i1 %3692 to i8
  store i8 %3693, i8* %29, align 1
  %3694 = lshr i32 %3679, 31
  %3695 = trunc i32 %3694 to i8
  store i8 %3695, i8* %32, align 1
  %3696 = lshr i32 %3678, 31
  %3697 = xor i32 %3694, %3696
  %3698 = add nuw nsw i32 %3697, %3696
  %3699 = icmp eq i32 %3698, 2
  %3700 = zext i1 %3699 to i8
  store i8 %3700, i8* %38, align 1
  %3701 = sext i32 %3679 to i64
  store i64 %3701, i64* %RCX.i100, align 8
  %3702 = shl nsw i64 %3701, 2
  %3703 = add i64 %3676, %3702
  %3704 = add i64 %3616, 54
  store i64 %3704, i64* %3, align 8
  %3705 = inttoptr i64 %3703 to i32*
  %3706 = load i32, i32* %3705, align 4
  %3707 = add i32 %3706, %3663
  %3708 = zext i32 %3707 to i64
  store i64 %3708, i64* %RDX.i2857, align 8
  %3709 = icmp ult i32 %3707, %3663
  %3710 = icmp ult i32 %3707, %3706
  %3711 = or i1 %3709, %3710
  %3712 = zext i1 %3711 to i8
  store i8 %3712, i8* %14, align 1
  %3713 = and i32 %3707, 255
  %3714 = tail call i32 @llvm.ctpop.i32(i32 %3713)
  %3715 = trunc i32 %3714 to i8
  %3716 = and i8 %3715, 1
  %3717 = xor i8 %3716, 1
  store i8 %3717, i8* %21, align 1
  %3718 = xor i32 %3706, %3663
  %3719 = xor i32 %3718, %3707
  %3720 = lshr i32 %3719, 4
  %3721 = trunc i32 %3720 to i8
  %3722 = and i8 %3721, 1
  store i8 %3722, i8* %26, align 1
  %3723 = icmp eq i32 %3707, 0
  %3724 = zext i1 %3723 to i8
  store i8 %3724, i8* %29, align 1
  %3725 = lshr i32 %3707, 31
  %3726 = trunc i32 %3725 to i8
  store i8 %3726, i8* %32, align 1
  %3727 = lshr i32 %3663, 31
  %3728 = lshr i32 %3706, 31
  %3729 = xor i32 %3725, %3727
  %3730 = xor i32 %3725, %3728
  %3731 = add nuw nsw i32 %3729, %3730
  %3732 = icmp eq i32 %3731, 2
  %3733 = zext i1 %3732 to i8
  store i8 %3733, i8* %38, align 1
  %3734 = load i64, i64* %RBP.i, align 8
  %3735 = add i64 %3734, -140
  %3736 = add i64 %3616, 60
  store i64 %3736, i64* %3, align 8
  %3737 = inttoptr i64 %3735 to i32*
  store i32 %3707, i32* %3737, align 4
  %3738 = load i64, i64* %RBP.i, align 8
  %3739 = add i64 %3738, -72
  %3740 = load i64, i64* %3, align 8
  %3741 = add i64 %3740, 4
  store i64 %3741, i64* %3, align 8
  %3742 = inttoptr i64 %3739 to i64*
  %3743 = load i64, i64* %3742, align 8
  store i64 %3743, i64* %RAX.i34, align 8
  %3744 = add i64 %3738, -148
  %3745 = add i64 %3740, 11
  store i64 %3745, i64* %3, align 8
  %3746 = inttoptr i64 %3744 to i32*
  %3747 = load i32, i32* %3746, align 4
  %3748 = sext i32 %3747 to i64
  store i64 %3748, i64* %RCX.i100, align 8
  %3749 = shl nsw i64 %3748, 3
  %3750 = add i64 %3749, %3743
  %3751 = add i64 %3740, 15
  store i64 %3751, i64* %3, align 8
  %3752 = inttoptr i64 %3750 to i64*
  %3753 = load i64, i64* %3752, align 8
  store i64 %3753, i64* %RAX.i34, align 8
  %3754 = add i64 %3738, -128
  %3755 = add i64 %3740, 19
  store i64 %3755, i64* %3, align 8
  %3756 = inttoptr i64 %3754 to i32*
  %3757 = load i32, i32* %3756, align 4
  %3758 = sext i32 %3757 to i64
  store i64 %3758, i64* %RCX.i100, align 8
  %3759 = load i32, i32* %EDX.i2852, align 4
  %3760 = shl nsw i64 %3758, 2
  %3761 = add i64 %3753, %3760
  %3762 = add i64 %3740, 22
  store i64 %3762, i64* %3, align 8
  %3763 = inttoptr i64 %3761 to i32*
  %3764 = load i32, i32* %3763, align 4
  %3765 = sub i32 %3759, %3764
  %3766 = icmp ult i32 %3759, %3764
  %3767 = zext i1 %3766 to i8
  store i8 %3767, i8* %14, align 1
  %3768 = and i32 %3765, 255
  %3769 = tail call i32 @llvm.ctpop.i32(i32 %3768)
  %3770 = trunc i32 %3769 to i8
  %3771 = and i8 %3770, 1
  %3772 = xor i8 %3771, 1
  store i8 %3772, i8* %21, align 1
  %3773 = xor i32 %3764, %3759
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
  %3782 = lshr i32 %3759, 31
  %3783 = lshr i32 %3764, 31
  %3784 = xor i32 %3783, %3782
  %3785 = xor i32 %3780, %3782
  %3786 = add nuw nsw i32 %3785, %3784
  %3787 = icmp eq i32 %3786, 2
  %3788 = zext i1 %3787 to i8
  store i8 %3788, i8* %38, align 1
  %3789 = icmp ne i8 %3781, 0
  %3790 = xor i1 %3789, %3787
  %3791 = or i1 %3778, %3790
  %.v177 = select i1 %3791, i64 76, i64 28
  %3792 = add i64 %3740, %.v177
  store i64 %3792, i64* %3, align 8
  br i1 %3791, label %block_.L_40ef78, label %block_40ef48

block_40ef48:                                     ; preds = %block_40eef0
  %3793 = add i64 %3738, -140
  %3794 = add i64 %3792, 6
  store i64 %3794, i64* %3, align 8
  %3795 = inttoptr i64 %3793 to i32*
  %3796 = load i32, i32* %3795, align 4
  %3797 = zext i32 %3796 to i64
  store i64 %3797, i64* %RAX.i34, align 8
  %3798 = add i64 %3792, 10
  store i64 %3798, i64* %3, align 8
  %3799 = load i64, i64* %3742, align 8
  store i64 %3799, i64* %RCX.i100, align 8
  %3800 = add i64 %3792, 17
  store i64 %3800, i64* %3, align 8
  %3801 = load i32, i32* %3746, align 4
  %3802 = sext i32 %3801 to i64
  store i64 %3802, i64* %RDX.i2857, align 8
  %3803 = shl nsw i64 %3802, 3
  %3804 = add i64 %3803, %3799
  %3805 = add i64 %3792, 21
  store i64 %3805, i64* %3, align 8
  %3806 = inttoptr i64 %3804 to i64*
  %3807 = load i64, i64* %3806, align 8
  store i64 %3807, i64* %RCX.i100, align 8
  %3808 = add i64 %3792, 25
  store i64 %3808, i64* %3, align 8
  %3809 = load i32, i32* %3756, align 4
  %3810 = sext i32 %3809 to i64
  store i64 %3810, i64* %RDX.i2857, align 8
  %3811 = shl nsw i64 %3810, 2
  %3812 = add i64 %3811, %3807
  %3813 = add i64 %3792, 28
  store i64 %3813, i64* %3, align 8
  %3814 = inttoptr i64 %3812 to i32*
  store i32 %3796, i32* %3814, align 4
  %3815 = load i64, i64* %RBP.i, align 8
  %3816 = add i64 %3815, -104
  %3817 = load i64, i64* %3, align 8
  %3818 = add i64 %3817, 4
  store i64 %3818, i64* %3, align 8
  %3819 = inttoptr i64 %3816 to i64*
  %3820 = load i64, i64* %3819, align 8
  store i64 %3820, i64* %RCX.i100, align 8
  %3821 = add i64 %3815, -124
  %3822 = add i64 %3817, 8
  store i64 %3822, i64* %3, align 8
  %3823 = inttoptr i64 %3821 to i32*
  %3824 = load i32, i32* %3823, align 4
  %3825 = sext i32 %3824 to i64
  store i64 %3825, i64* %RDX.i2857, align 8
  %3826 = shl nsw i64 %3825, 3
  %3827 = add i64 %3826, %3820
  %3828 = add i64 %3817, 12
  store i64 %3828, i64* %3, align 8
  %3829 = inttoptr i64 %3827 to i64*
  %3830 = load i64, i64* %3829, align 8
  store i64 %3830, i64* %RCX.i100, align 8
  %3831 = add i64 %3815, -128
  %3832 = add i64 %3817, 16
  store i64 %3832, i64* %3, align 8
  %3833 = inttoptr i64 %3831 to i32*
  %3834 = load i32, i32* %3833, align 4
  %3835 = sext i32 %3834 to i64
  store i64 %3835, i64* %RDX.i2857, align 8
  %3836 = add i64 %3830, %3835
  %3837 = add i64 %3817, 20
  store i64 %3837, i64* %3, align 8
  %3838 = inttoptr i64 %3836 to i8*
  store i8 1, i8* %3838, align 1
  %.pre111 = load i64, i64* %3, align 8
  br label %block_.L_40ef78

block_.L_40ef78:                                  ; preds = %block_40ef48, %block_40eef0, %block_40eecb, %block_.L_40ee78
  %3839 = phi i64 [ %.pre111, %block_40ef48 ], [ %3792, %block_40eef0 ], [ %3616, %block_40eecb ], [ %3545, %block_.L_40ee78 ]
  %3840 = load i64, i64* %RBP.i, align 8
  %3841 = add i64 %3840, -72
  %3842 = add i64 %3839, 4
  store i64 %3842, i64* %3, align 8
  %3843 = inttoptr i64 %3841 to i64*
  %3844 = load i64, i64* %3843, align 8
  store i64 %3844, i64* %RAX.i34, align 8
  %3845 = add i64 %3840, -148
  %3846 = add i64 %3839, 11
  store i64 %3846, i64* %3, align 8
  %3847 = inttoptr i64 %3845 to i32*
  %3848 = load i32, i32* %3847, align 4
  %3849 = sext i32 %3848 to i64
  store i64 %3849, i64* %RCX.i100, align 8
  %3850 = shl nsw i64 %3849, 3
  %3851 = add i64 %3850, %3844
  %3852 = add i64 %3839, 15
  store i64 %3852, i64* %3, align 8
  %3853 = inttoptr i64 %3851 to i64*
  %3854 = load i64, i64* %3853, align 8
  store i64 %3854, i64* %RAX.i34, align 8
  %3855 = add i64 %3840, -128
  %3856 = add i64 %3839, 18
  store i64 %3856, i64* %3, align 8
  %3857 = inttoptr i64 %3855 to i32*
  %3858 = load i32, i32* %3857, align 4
  %3859 = add i32 %3858, -1
  %3860 = zext i32 %3859 to i64
  store i64 %3860, i64* %RDX.i2857, align 8
  %3861 = icmp eq i32 %3858, 0
  %3862 = zext i1 %3861 to i8
  store i8 %3862, i8* %14, align 1
  %3863 = and i32 %3859, 255
  %3864 = tail call i32 @llvm.ctpop.i32(i32 %3863)
  %3865 = trunc i32 %3864 to i8
  %3866 = and i8 %3865, 1
  %3867 = xor i8 %3866, 1
  store i8 %3867, i8* %21, align 1
  %3868 = xor i32 %3859, %3858
  %3869 = lshr i32 %3868, 4
  %3870 = trunc i32 %3869 to i8
  %3871 = and i8 %3870, 1
  store i8 %3871, i8* %26, align 1
  %3872 = icmp eq i32 %3859, 0
  %3873 = zext i1 %3872 to i8
  store i8 %3873, i8* %29, align 1
  %3874 = lshr i32 %3859, 31
  %3875 = trunc i32 %3874 to i8
  store i8 %3875, i8* %32, align 1
  %3876 = lshr i32 %3858, 31
  %3877 = xor i32 %3874, %3876
  %3878 = add nuw nsw i32 %3877, %3876
  %3879 = icmp eq i32 %3878, 2
  %3880 = zext i1 %3879 to i8
  store i8 %3880, i8* %38, align 1
  %3881 = sext i32 %3859 to i64
  store i64 %3881, i64* %RCX.i100, align 8
  %3882 = shl nsw i64 %3881, 2
  %3883 = add i64 %3854, %3882
  %3884 = add i64 %3839, 31
  store i64 %3884, i64* %3, align 8
  %3885 = inttoptr i64 %3883 to i32*
  %3886 = load i32, i32* %3885, align 4
  %3887 = add i32 %3886, 987654321
  %3888 = icmp ult i32 %3886, -987654321
  %3889 = zext i1 %3888 to i8
  store i8 %3889, i8* %14, align 1
  %3890 = and i32 %3887, 255
  %3891 = tail call i32 @llvm.ctpop.i32(i32 %3890)
  %3892 = trunc i32 %3891 to i8
  %3893 = and i8 %3892, 1
  %3894 = xor i8 %3893, 1
  store i8 %3894, i8* %21, align 1
  %3895 = xor i32 %3887, %3886
  %3896 = lshr i32 %3895, 4
  %3897 = trunc i32 %3896 to i8
  %3898 = and i8 %3897, 1
  store i8 %3898, i8* %26, align 1
  %3899 = icmp eq i32 %3887, 0
  %3900 = zext i1 %3899 to i8
  store i8 %3900, i8* %29, align 1
  %3901 = lshr i32 %3887, 31
  %3902 = trunc i32 %3901 to i8
  store i8 %3902, i8* %32, align 1
  %3903 = lshr i32 %3886, 31
  %3904 = xor i32 %3903, 1
  %3905 = xor i32 %3901, %3903
  %3906 = add nuw nsw i32 %3905, %3904
  %3907 = icmp eq i32 %3906, 2
  %3908 = zext i1 %3907 to i8
  store i8 %3908, i8* %38, align 1
  %3909 = icmp ne i8 %3902, 0
  %3910 = xor i1 %3909, %3907
  %3911 = or i1 %3899, %3910
  %.v178 = select i1 %3911, i64 210, i64 37
  %3912 = add i64 %3839, %.v178
  store i64 %3912, i64* %3, align 8
  br i1 %3911, label %block_.L_40f04a, label %block_40ef9d

block_40ef9d:                                     ; preds = %block_.L_40ef78
  %3913 = load i64, i64* %RBP.i, align 8
  %3914 = add i64 %3913, -16
  %3915 = add i64 %3912, 4
  store i64 %3915, i64* %3, align 8
  %3916 = inttoptr i64 %3914 to i64*
  %3917 = load i64, i64* %3916, align 8
  store i64 %3917, i64* %RAX.i34, align 8
  %3918 = add i64 %3917, 312
  %3919 = add i64 %3912, 11
  store i64 %3919, i64* %3, align 8
  %3920 = inttoptr i64 %3918 to i64*
  %3921 = load i64, i64* %3920, align 8
  store i64 %3921, i64* %RAX.i34, align 8
  %3922 = add i64 %3921, 48
  %3923 = add i64 %3912, 15
  store i64 %3923, i64* %3, align 8
  %3924 = inttoptr i64 %3922 to i64*
  %3925 = load i64, i64* %3924, align 8
  store i64 %3925, i64* %RAX.i34, align 8
  %3926 = add i64 %3913, -128
  %3927 = add i64 %3912, 18
  store i64 %3927, i64* %3, align 8
  %3928 = inttoptr i64 %3926 to i32*
  %3929 = load i32, i32* %3928, align 4
  %3930 = add i32 %3929, -1
  %3931 = zext i32 %3930 to i64
  store i64 %3931, i64* %RCX.i100, align 8
  %3932 = icmp eq i32 %3929, 0
  %3933 = zext i1 %3932 to i8
  store i8 %3933, i8* %14, align 1
  %3934 = and i32 %3930, 255
  %3935 = tail call i32 @llvm.ctpop.i32(i32 %3934)
  %3936 = trunc i32 %3935 to i8
  %3937 = and i8 %3936, 1
  %3938 = xor i8 %3937, 1
  store i8 %3938, i8* %21, align 1
  %3939 = xor i32 %3930, %3929
  %3940 = lshr i32 %3939, 4
  %3941 = trunc i32 %3940 to i8
  %3942 = and i8 %3941, 1
  store i8 %3942, i8* %26, align 1
  %3943 = icmp eq i32 %3930, 0
  %3944 = zext i1 %3943 to i8
  store i8 %3944, i8* %29, align 1
  %3945 = lshr i32 %3930, 31
  %3946 = trunc i32 %3945 to i8
  store i8 %3946, i8* %32, align 1
  %3947 = lshr i32 %3929, 31
  %3948 = xor i32 %3945, %3947
  %3949 = add nuw nsw i32 %3948, %3947
  %3950 = icmp eq i32 %3949, 2
  %3951 = zext i1 %3950 to i8
  store i8 %3951, i8* %38, align 1
  %3952 = sext i32 %3930 to i64
  store i64 %3952, i64* %RDX.i2857, align 8
  %3953 = shl nsw i64 %3952, 2
  %3954 = add i64 %3925, %3953
  %3955 = add i64 %3912, 31
  store i64 %3955, i64* %3, align 8
  %3956 = inttoptr i64 %3954 to i32*
  %3957 = load i32, i32* %3956, align 4
  %3958 = add i32 %3957, 987654321
  %3959 = icmp ult i32 %3957, -987654321
  %3960 = zext i1 %3959 to i8
  store i8 %3960, i8* %14, align 1
  %3961 = and i32 %3958, 255
  %3962 = tail call i32 @llvm.ctpop.i32(i32 %3961)
  %3963 = trunc i32 %3962 to i8
  %3964 = and i8 %3963, 1
  %3965 = xor i8 %3964, 1
  store i8 %3965, i8* %21, align 1
  %3966 = xor i32 %3958, %3957
  %3967 = lshr i32 %3966, 4
  %3968 = trunc i32 %3967 to i8
  %3969 = and i8 %3968, 1
  store i8 %3969, i8* %26, align 1
  %3970 = icmp eq i32 %3958, 0
  %3971 = zext i1 %3970 to i8
  store i8 %3971, i8* %29, align 1
  %3972 = lshr i32 %3958, 31
  %3973 = trunc i32 %3972 to i8
  store i8 %3973, i8* %32, align 1
  %3974 = lshr i32 %3957, 31
  %3975 = xor i32 %3974, 1
  %3976 = xor i32 %3972, %3974
  %3977 = add nuw nsw i32 %3976, %3975
  %3978 = icmp eq i32 %3977, 2
  %3979 = zext i1 %3978 to i8
  store i8 %3979, i8* %38, align 1
  %3980 = icmp ne i8 %3973, 0
  %3981 = xor i1 %3980, %3978
  %3982 = or i1 %3970, %3981
  %.v179 = select i1 %3982, i64 173, i64 37
  %3983 = add i64 %3912, %.v179
  store i64 %3983, i64* %3, align 8
  br i1 %3982, label %block_.L_40f04a, label %block_40efc2

block_40efc2:                                     ; preds = %block_40ef9d
  %3984 = load i64, i64* %RBP.i, align 8
  %3985 = add i64 %3984, -72
  %3986 = add i64 %3983, 4
  store i64 %3986, i64* %3, align 8
  %3987 = inttoptr i64 %3985 to i64*
  %3988 = load i64, i64* %3987, align 8
  store i64 %3988, i64* %RAX.i34, align 8
  %3989 = add i64 %3984, -148
  %3990 = add i64 %3983, 11
  store i64 %3990, i64* %3, align 8
  %3991 = inttoptr i64 %3989 to i32*
  %3992 = load i32, i32* %3991, align 4
  %3993 = sext i32 %3992 to i64
  store i64 %3993, i64* %RCX.i100, align 8
  %3994 = shl nsw i64 %3993, 3
  %3995 = add i64 %3994, %3988
  %3996 = add i64 %3983, 15
  store i64 %3996, i64* %3, align 8
  %3997 = inttoptr i64 %3995 to i64*
  %3998 = load i64, i64* %3997, align 8
  store i64 %3998, i64* %RAX.i34, align 8
  %3999 = add i64 %3984, -128
  %4000 = add i64 %3983, 18
  store i64 %4000, i64* %3, align 8
  %4001 = inttoptr i64 %3999 to i32*
  %4002 = load i32, i32* %4001, align 4
  %4003 = add i32 %4002, -1
  %4004 = zext i32 %4003 to i64
  store i64 %4004, i64* %RDX.i2857, align 8
  %4005 = icmp eq i32 %4002, 0
  %4006 = zext i1 %4005 to i8
  store i8 %4006, i8* %14, align 1
  %4007 = and i32 %4003, 255
  %4008 = tail call i32 @llvm.ctpop.i32(i32 %4007)
  %4009 = trunc i32 %4008 to i8
  %4010 = and i8 %4009, 1
  %4011 = xor i8 %4010, 1
  store i8 %4011, i8* %21, align 1
  %4012 = xor i32 %4003, %4002
  %4013 = lshr i32 %4012, 4
  %4014 = trunc i32 %4013 to i8
  %4015 = and i8 %4014, 1
  store i8 %4015, i8* %26, align 1
  %4016 = icmp eq i32 %4003, 0
  %4017 = zext i1 %4016 to i8
  store i8 %4017, i8* %29, align 1
  %4018 = lshr i32 %4003, 31
  %4019 = trunc i32 %4018 to i8
  store i8 %4019, i8* %32, align 1
  %4020 = lshr i32 %4002, 31
  %4021 = xor i32 %4018, %4020
  %4022 = add nuw nsw i32 %4021, %4020
  %4023 = icmp eq i32 %4022, 2
  %4024 = zext i1 %4023 to i8
  store i8 %4024, i8* %38, align 1
  %4025 = sext i32 %4003 to i64
  store i64 %4025, i64* %RCX.i100, align 8
  %4026 = shl nsw i64 %4025, 2
  %4027 = add i64 %3998, %4026
  %4028 = add i64 %3983, 27
  store i64 %4028, i64* %3, align 8
  %4029 = inttoptr i64 %4027 to i32*
  %4030 = load i32, i32* %4029, align 4
  %4031 = zext i32 %4030 to i64
  store i64 %4031, i64* %RDX.i2857, align 8
  %4032 = add i64 %3984, -16
  %4033 = add i64 %3983, 31
  store i64 %4033, i64* %3, align 8
  %4034 = inttoptr i64 %4032 to i64*
  %4035 = load i64, i64* %4034, align 8
  store i64 %4035, i64* %RAX.i34, align 8
  %4036 = add i64 %4035, 312
  %4037 = add i64 %3983, 38
  store i64 %4037, i64* %3, align 8
  %4038 = inttoptr i64 %4036 to i64*
  %4039 = load i64, i64* %4038, align 8
  store i64 %4039, i64* %RAX.i34, align 8
  %4040 = add i64 %4039, 48
  %4041 = add i64 %3983, 42
  store i64 %4041, i64* %3, align 8
  %4042 = inttoptr i64 %4040 to i64*
  %4043 = load i64, i64* %4042, align 8
  store i64 %4043, i64* %RAX.i34, align 8
  %4044 = add i64 %3983, 45
  store i64 %4044, i64* %3, align 8
  %4045 = load i32, i32* %4001, align 4
  %4046 = add i32 %4045, -1
  %4047 = zext i32 %4046 to i64
  store i64 %4047, i64* %RSI.i1533, align 8
  %4048 = icmp eq i32 %4045, 0
  %4049 = zext i1 %4048 to i8
  store i8 %4049, i8* %14, align 1
  %4050 = and i32 %4046, 255
  %4051 = tail call i32 @llvm.ctpop.i32(i32 %4050)
  %4052 = trunc i32 %4051 to i8
  %4053 = and i8 %4052, 1
  %4054 = xor i8 %4053, 1
  store i8 %4054, i8* %21, align 1
  %4055 = xor i32 %4046, %4045
  %4056 = lshr i32 %4055, 4
  %4057 = trunc i32 %4056 to i8
  %4058 = and i8 %4057, 1
  store i8 %4058, i8* %26, align 1
  %4059 = icmp eq i32 %4046, 0
  %4060 = zext i1 %4059 to i8
  store i8 %4060, i8* %29, align 1
  %4061 = lshr i32 %4046, 31
  %4062 = trunc i32 %4061 to i8
  store i8 %4062, i8* %32, align 1
  %4063 = lshr i32 %4045, 31
  %4064 = xor i32 %4061, %4063
  %4065 = add nuw nsw i32 %4064, %4063
  %4066 = icmp eq i32 %4065, 2
  %4067 = zext i1 %4066 to i8
  store i8 %4067, i8* %38, align 1
  %4068 = sext i32 %4046 to i64
  store i64 %4068, i64* %RCX.i100, align 8
  %4069 = shl nsw i64 %4068, 2
  %4070 = add i64 %4043, %4069
  %4071 = add i64 %3983, 54
  store i64 %4071, i64* %3, align 8
  %4072 = inttoptr i64 %4070 to i32*
  %4073 = load i32, i32* %4072, align 4
  %4074 = add i32 %4073, %4030
  %4075 = zext i32 %4074 to i64
  store i64 %4075, i64* %RDX.i2857, align 8
  %4076 = icmp ult i32 %4074, %4030
  %4077 = icmp ult i32 %4074, %4073
  %4078 = or i1 %4076, %4077
  %4079 = zext i1 %4078 to i8
  store i8 %4079, i8* %14, align 1
  %4080 = and i32 %4074, 255
  %4081 = tail call i32 @llvm.ctpop.i32(i32 %4080)
  %4082 = trunc i32 %4081 to i8
  %4083 = and i8 %4082, 1
  %4084 = xor i8 %4083, 1
  store i8 %4084, i8* %21, align 1
  %4085 = xor i32 %4073, %4030
  %4086 = xor i32 %4085, %4074
  %4087 = lshr i32 %4086, 4
  %4088 = trunc i32 %4087 to i8
  %4089 = and i8 %4088, 1
  store i8 %4089, i8* %26, align 1
  %4090 = icmp eq i32 %4074, 0
  %4091 = zext i1 %4090 to i8
  store i8 %4091, i8* %29, align 1
  %4092 = lshr i32 %4074, 31
  %4093 = trunc i32 %4092 to i8
  store i8 %4093, i8* %32, align 1
  %4094 = lshr i32 %4030, 31
  %4095 = lshr i32 %4073, 31
  %4096 = xor i32 %4092, %4094
  %4097 = xor i32 %4092, %4095
  %4098 = add nuw nsw i32 %4096, %4097
  %4099 = icmp eq i32 %4098, 2
  %4100 = zext i1 %4099 to i8
  store i8 %4100, i8* %38, align 1
  %4101 = load i64, i64* %RBP.i, align 8
  %4102 = add i64 %4101, -140
  %4103 = add i64 %3983, 60
  store i64 %4103, i64* %3, align 8
  %4104 = inttoptr i64 %4102 to i32*
  store i32 %4074, i32* %4104, align 4
  %4105 = load i64, i64* %RBP.i, align 8
  %4106 = add i64 %4105, -72
  %4107 = load i64, i64* %3, align 8
  %4108 = add i64 %4107, 4
  store i64 %4108, i64* %3, align 8
  %4109 = inttoptr i64 %4106 to i64*
  %4110 = load i64, i64* %4109, align 8
  store i64 %4110, i64* %RAX.i34, align 8
  %4111 = add i64 %4105, -148
  %4112 = add i64 %4107, 11
  store i64 %4112, i64* %3, align 8
  %4113 = inttoptr i64 %4111 to i32*
  %4114 = load i32, i32* %4113, align 4
  %4115 = sext i32 %4114 to i64
  store i64 %4115, i64* %RCX.i100, align 8
  %4116 = shl nsw i64 %4115, 3
  %4117 = add i64 %4116, %4110
  %4118 = add i64 %4107, 15
  store i64 %4118, i64* %3, align 8
  %4119 = inttoptr i64 %4117 to i64*
  %4120 = load i64, i64* %4119, align 8
  store i64 %4120, i64* %RAX.i34, align 8
  %4121 = add i64 %4105, -128
  %4122 = add i64 %4107, 19
  store i64 %4122, i64* %3, align 8
  %4123 = inttoptr i64 %4121 to i32*
  %4124 = load i32, i32* %4123, align 4
  %4125 = sext i32 %4124 to i64
  store i64 %4125, i64* %RCX.i100, align 8
  %4126 = load i32, i32* %EDX.i2852, align 4
  %4127 = shl nsw i64 %4125, 2
  %4128 = add i64 %4120, %4127
  %4129 = add i64 %4107, 22
  store i64 %4129, i64* %3, align 8
  %4130 = inttoptr i64 %4128 to i32*
  %4131 = load i32, i32* %4130, align 4
  %4132 = sub i32 %4126, %4131
  %4133 = icmp ult i32 %4126, %4131
  %4134 = zext i1 %4133 to i8
  store i8 %4134, i8* %14, align 1
  %4135 = and i32 %4132, 255
  %4136 = tail call i32 @llvm.ctpop.i32(i32 %4135)
  %4137 = trunc i32 %4136 to i8
  %4138 = and i8 %4137, 1
  %4139 = xor i8 %4138, 1
  store i8 %4139, i8* %21, align 1
  %4140 = xor i32 %4131, %4126
  %4141 = xor i32 %4140, %4132
  %4142 = lshr i32 %4141, 4
  %4143 = trunc i32 %4142 to i8
  %4144 = and i8 %4143, 1
  store i8 %4144, i8* %26, align 1
  %4145 = icmp eq i32 %4132, 0
  %4146 = zext i1 %4145 to i8
  store i8 %4146, i8* %29, align 1
  %4147 = lshr i32 %4132, 31
  %4148 = trunc i32 %4147 to i8
  store i8 %4148, i8* %32, align 1
  %4149 = lshr i32 %4126, 31
  %4150 = lshr i32 %4131, 31
  %4151 = xor i32 %4150, %4149
  %4152 = xor i32 %4147, %4149
  %4153 = add nuw nsw i32 %4152, %4151
  %4154 = icmp eq i32 %4153, 2
  %4155 = zext i1 %4154 to i8
  store i8 %4155, i8* %38, align 1
  %4156 = icmp ne i8 %4148, 0
  %4157 = xor i1 %4156, %4154
  %4158 = or i1 %4145, %4157
  %.v180 = select i1 %4158, i64 76, i64 28
  %4159 = add i64 %4107, %.v180
  store i64 %4159, i64* %3, align 8
  br i1 %4158, label %block_.L_40f04a, label %block_40f01a

block_40f01a:                                     ; preds = %block_40efc2
  %4160 = add i64 %4105, -140
  %4161 = add i64 %4159, 6
  store i64 %4161, i64* %3, align 8
  %4162 = inttoptr i64 %4160 to i32*
  %4163 = load i32, i32* %4162, align 4
  %4164 = zext i32 %4163 to i64
  store i64 %4164, i64* %RAX.i34, align 8
  %4165 = add i64 %4159, 10
  store i64 %4165, i64* %3, align 8
  %4166 = load i64, i64* %4109, align 8
  store i64 %4166, i64* %RCX.i100, align 8
  %4167 = add i64 %4159, 17
  store i64 %4167, i64* %3, align 8
  %4168 = load i32, i32* %4113, align 4
  %4169 = sext i32 %4168 to i64
  store i64 %4169, i64* %RDX.i2857, align 8
  %4170 = shl nsw i64 %4169, 3
  %4171 = add i64 %4170, %4166
  %4172 = add i64 %4159, 21
  store i64 %4172, i64* %3, align 8
  %4173 = inttoptr i64 %4171 to i64*
  %4174 = load i64, i64* %4173, align 8
  store i64 %4174, i64* %RCX.i100, align 8
  %4175 = add i64 %4159, 25
  store i64 %4175, i64* %3, align 8
  %4176 = load i32, i32* %4123, align 4
  %4177 = sext i32 %4176 to i64
  store i64 %4177, i64* %RDX.i2857, align 8
  %4178 = shl nsw i64 %4177, 2
  %4179 = add i64 %4178, %4174
  %4180 = add i64 %4159, 28
  store i64 %4180, i64* %3, align 8
  %4181 = inttoptr i64 %4179 to i32*
  store i32 %4163, i32* %4181, align 4
  %4182 = load i64, i64* %RBP.i, align 8
  %4183 = add i64 %4182, -104
  %4184 = load i64, i64* %3, align 8
  %4185 = add i64 %4184, 4
  store i64 %4185, i64* %3, align 8
  %4186 = inttoptr i64 %4183 to i64*
  %4187 = load i64, i64* %4186, align 8
  store i64 %4187, i64* %RCX.i100, align 8
  %4188 = add i64 %4182, -124
  %4189 = add i64 %4184, 8
  store i64 %4189, i64* %3, align 8
  %4190 = inttoptr i64 %4188 to i32*
  %4191 = load i32, i32* %4190, align 4
  %4192 = sext i32 %4191 to i64
  store i64 %4192, i64* %RDX.i2857, align 8
  %4193 = shl nsw i64 %4192, 3
  %4194 = add i64 %4193, %4187
  %4195 = add i64 %4184, 12
  store i64 %4195, i64* %3, align 8
  %4196 = inttoptr i64 %4194 to i64*
  %4197 = load i64, i64* %4196, align 8
  store i64 %4197, i64* %RCX.i100, align 8
  %4198 = add i64 %4182, -128
  %4199 = add i64 %4184, 16
  store i64 %4199, i64* %3, align 8
  %4200 = inttoptr i64 %4198 to i32*
  %4201 = load i32, i32* %4200, align 4
  %4202 = sext i32 %4201 to i64
  store i64 %4202, i64* %RDX.i2857, align 8
  %4203 = add i64 %4197, %4202
  %4204 = add i64 %4184, 20
  store i64 %4204, i64* %3, align 8
  %4205 = inttoptr i64 %4203 to i8*
  store i8 2, i8* %4205, align 1
  %.pre112 = load i64, i64* %3, align 8
  br label %block_.L_40f04a

block_.L_40f04a:                                  ; preds = %block_40f01a, %block_40efc2, %block_40ef9d, %block_.L_40ef78
  %4206 = phi i64 [ %.pre112, %block_40f01a ], [ %4159, %block_40efc2 ], [ %3983, %block_40ef9d ], [ %3912, %block_.L_40ef78 ]
  %4207 = load i64, i64* %RBP.i, align 8
  %4208 = add i64 %4207, -128
  %4209 = add i64 %4206, 3
  store i64 %4209, i64* %3, align 8
  %4210 = inttoptr i64 %4208 to i32*
  %4211 = load i32, i32* %4210, align 4
  %4212 = zext i32 %4211 to i64
  store i64 %4212, i64* %RAX.i34, align 8
  %4213 = add i64 %4207, -16
  %4214 = add i64 %4206, 7
  store i64 %4214, i64* %3, align 8
  %4215 = inttoptr i64 %4213 to i64*
  %4216 = load i64, i64* %4215, align 8
  store i64 %4216, i64* %RCX.i100, align 8
  %4217 = add i64 %4216, 136
  %4218 = add i64 %4206, 13
  store i64 %4218, i64* %3, align 8
  %4219 = inttoptr i64 %4217 to i32*
  %4220 = load i32, i32* %4219, align 4
  %4221 = sub i32 %4211, %4220
  %4222 = icmp ult i32 %4211, %4220
  %4223 = zext i1 %4222 to i8
  store i8 %4223, i8* %14, align 1
  %4224 = and i32 %4221, 255
  %4225 = tail call i32 @llvm.ctpop.i32(i32 %4224)
  %4226 = trunc i32 %4225 to i8
  %4227 = and i8 %4226, 1
  %4228 = xor i8 %4227, 1
  store i8 %4228, i8* %21, align 1
  %4229 = xor i32 %4220, %4211
  %4230 = xor i32 %4229, %4221
  %4231 = lshr i32 %4230, 4
  %4232 = trunc i32 %4231 to i8
  %4233 = and i8 %4232, 1
  store i8 %4233, i8* %26, align 1
  %4234 = icmp eq i32 %4221, 0
  %4235 = zext i1 %4234 to i8
  store i8 %4235, i8* %29, align 1
  %4236 = lshr i32 %4221, 31
  %4237 = trunc i32 %4236 to i8
  store i8 %4237, i8* %32, align 1
  %4238 = lshr i32 %4211, 31
  %4239 = lshr i32 %4220, 31
  %4240 = xor i32 %4239, %4238
  %4241 = xor i32 %4236, %4238
  %4242 = add nuw nsw i32 %4241, %4240
  %4243 = icmp eq i32 %4242, 2
  %4244 = zext i1 %4243 to i8
  store i8 %4244, i8* %38, align 1
  %4245 = icmp ne i8 %4237, 0
  %4246 = xor i1 %4245, %4243
  %.v181 = select i1 %4246, i64 19, i64 763
  %4247 = add i64 %4206, %.v181
  store i64 %4247, i64* %3, align 8
  br i1 %4246, label %block_40f05d, label %block_.L_40f345

block_40f05d:                                     ; preds = %block_.L_40f04a
  %4248 = add i64 %4207, -64
  %4249 = add i64 %4247, 4
  store i64 %4249, i64* %3, align 8
  %4250 = inttoptr i64 %4248 to i64*
  %4251 = load i64, i64* %4250, align 8
  store i64 %4251, i64* %RAX.i34, align 8
  %4252 = add i64 %4207, -148
  %4253 = add i64 %4247, 11
  store i64 %4253, i64* %3, align 8
  %4254 = inttoptr i64 %4252 to i32*
  %4255 = load i32, i32* %4254, align 4
  %4256 = sext i32 %4255 to i64
  store i64 %4256, i64* %RCX.i100, align 8
  %4257 = shl nsw i64 %4256, 3
  %4258 = add i64 %4257, %4251
  %4259 = add i64 %4247, 15
  store i64 %4259, i64* %3, align 8
  %4260 = inttoptr i64 %4258 to i64*
  %4261 = load i64, i64* %4260, align 8
  store i64 %4261, i64* %RAX.i34, align 8
  %4262 = add i64 %4247, 19
  store i64 %4262, i64* %3, align 8
  %4263 = load i32, i32* %4210, align 4
  %4264 = sext i32 %4263 to i64
  store i64 %4264, i64* %RCX.i100, align 8
  %4265 = shl nsw i64 %4264, 2
  %4266 = add i64 %4265, %4261
  %4267 = add i64 %4247, 26
  store i64 %4267, i64* %3, align 8
  %4268 = inttoptr i64 %4266 to i32*
  store i32 -987654321, i32* %4268, align 4
  %4269 = load i64, i64* %RBP.i, align 8
  %4270 = add i64 %4269, -96
  %4271 = load i64, i64* %3, align 8
  %4272 = add i64 %4271, 4
  store i64 %4272, i64* %3, align 8
  %4273 = inttoptr i64 %4270 to i64*
  %4274 = load i64, i64* %4273, align 8
  store i64 %4274, i64* %RAX.i34, align 8
  %4275 = add i64 %4269, -124
  %4276 = add i64 %4271, 8
  store i64 %4276, i64* %3, align 8
  %4277 = inttoptr i64 %4275 to i32*
  %4278 = load i32, i32* %4277, align 4
  %4279 = sext i32 %4278 to i64
  store i64 %4279, i64* %RCX.i100, align 8
  %4280 = shl nsw i64 %4279, 3
  %4281 = add i64 %4280, %4274
  %4282 = add i64 %4271, 12
  store i64 %4282, i64* %3, align 8
  %4283 = inttoptr i64 %4281 to i64*
  %4284 = load i64, i64* %4283, align 8
  store i64 %4284, i64* %RAX.i34, align 8
  %4285 = add i64 %4269, -128
  %4286 = add i64 %4271, 16
  store i64 %4286, i64* %3, align 8
  %4287 = inttoptr i64 %4285 to i32*
  %4288 = load i32, i32* %4287, align 4
  %4289 = sext i32 %4288 to i64
  store i64 %4289, i64* %RCX.i100, align 8
  %4290 = add i64 %4284, %4289
  %4291 = add i64 %4271, 20
  store i64 %4291, i64* %3, align 8
  %4292 = inttoptr i64 %4290 to i8*
  store i8 0, i8* %4292, align 1
  %4293 = load i64, i64* %RBP.i, align 8
  %4294 = add i64 %4293, -56
  %4295 = load i64, i64* %3, align 8
  %4296 = add i64 %4295, 4
  store i64 %4296, i64* %3, align 8
  %4297 = inttoptr i64 %4294 to i64*
  %4298 = load i64, i64* %4297, align 8
  store i64 %4298, i64* %RAX.i34, align 8
  %4299 = add i64 %4293, -152
  %4300 = add i64 %4295, 11
  store i64 %4300, i64* %3, align 8
  %4301 = inttoptr i64 %4299 to i32*
  %4302 = load i32, i32* %4301, align 4
  %4303 = sext i32 %4302 to i64
  store i64 %4303, i64* %RCX.i100, align 8
  %4304 = shl nsw i64 %4303, 3
  %4305 = add i64 %4304, %4298
  %4306 = add i64 %4295, 15
  store i64 %4306, i64* %3, align 8
  %4307 = inttoptr i64 %4305 to i64*
  %4308 = load i64, i64* %4307, align 8
  store i64 %4308, i64* %RAX.i34, align 8
  %4309 = add i64 %4293, -128
  %4310 = add i64 %4295, 19
  store i64 %4310, i64* %3, align 8
  %4311 = inttoptr i64 %4309 to i32*
  %4312 = load i32, i32* %4311, align 4
  %4313 = sext i32 %4312 to i64
  store i64 %4313, i64* %RCX.i100, align 8
  %4314 = shl nsw i64 %4313, 2
  %4315 = add i64 %4314, %4308
  %4316 = add i64 %4295, 26
  store i64 %4316, i64* %3, align 8
  %4317 = inttoptr i64 %4315 to i32*
  %4318 = load i32, i32* %4317, align 4
  %4319 = add i32 %4318, 987654321
  %4320 = icmp ult i32 %4318, -987654321
  %4321 = zext i1 %4320 to i8
  store i8 %4321, i8* %14, align 1
  %4322 = and i32 %4319, 255
  %4323 = tail call i32 @llvm.ctpop.i32(i32 %4322)
  %4324 = trunc i32 %4323 to i8
  %4325 = and i8 %4324, 1
  %4326 = xor i8 %4325, 1
  store i8 %4326, i8* %21, align 1
  %4327 = xor i32 %4319, %4318
  %4328 = lshr i32 %4327, 4
  %4329 = trunc i32 %4328 to i8
  %4330 = and i8 %4329, 1
  store i8 %4330, i8* %26, align 1
  %4331 = icmp eq i32 %4319, 0
  %4332 = zext i1 %4331 to i8
  store i8 %4332, i8* %29, align 1
  %4333 = lshr i32 %4319, 31
  %4334 = trunc i32 %4333 to i8
  store i8 %4334, i8* %32, align 1
  %4335 = lshr i32 %4318, 31
  %4336 = xor i32 %4335, 1
  %4337 = xor i32 %4333, %4335
  %4338 = add nuw nsw i32 %4337, %4336
  %4339 = icmp eq i32 %4338, 2
  %4340 = zext i1 %4339 to i8
  store i8 %4340, i8* %38, align 1
  %4341 = icmp ne i8 %4334, 0
  %4342 = xor i1 %4341, %4339
  %4343 = or i1 %4331, %4342
  %.v182 = select i1 %4343, i64 215, i64 32
  %4344 = add i64 %4295, %.v182
  store i64 %4344, i64* %3, align 8
  br i1 %4343, label %block_.L_40f162, label %block_40f0ab

block_40f0ab:                                     ; preds = %block_40f05d
  %4345 = add i64 %4293, -16
  %4346 = add i64 %4344, 4
  store i64 %4346, i64* %3, align 8
  %4347 = inttoptr i64 %4345 to i64*
  %4348 = load i64, i64* %4347, align 8
  store i64 %4348, i64* %RAX.i34, align 8
  %4349 = add i64 %4348, 312
  %4350 = add i64 %4344, 11
  store i64 %4350, i64* %3, align 8
  %4351 = inttoptr i64 %4349 to i64*
  %4352 = load i64, i64* %4351, align 8
  store i64 %4352, i64* %RAX.i34, align 8
  %4353 = add i64 %4352, 8
  %4354 = add i64 %4344, 15
  store i64 %4354, i64* %3, align 8
  %4355 = inttoptr i64 %4353 to i64*
  %4356 = load i64, i64* %4355, align 8
  store i64 %4356, i64* %RAX.i34, align 8
  %4357 = add i64 %4344, 19
  store i64 %4357, i64* %3, align 8
  %4358 = load i32, i32* %4311, align 4
  %4359 = sext i32 %4358 to i64
  store i64 %4359, i64* %RCX.i100, align 8
  %4360 = shl nsw i64 %4359, 2
  %4361 = add i64 %4360, %4356
  %4362 = add i64 %4344, 26
  store i64 %4362, i64* %3, align 8
  %4363 = inttoptr i64 %4361 to i32*
  %4364 = load i32, i32* %4363, align 4
  %4365 = add i32 %4364, 987654321
  %4366 = icmp ult i32 %4364, -987654321
  %4367 = zext i1 %4366 to i8
  store i8 %4367, i8* %14, align 1
  %4368 = and i32 %4365, 255
  %4369 = tail call i32 @llvm.ctpop.i32(i32 %4368)
  %4370 = trunc i32 %4369 to i8
  %4371 = and i8 %4370, 1
  %4372 = xor i8 %4371, 1
  store i8 %4372, i8* %21, align 1
  %4373 = xor i32 %4365, %4364
  %4374 = lshr i32 %4373, 4
  %4375 = trunc i32 %4374 to i8
  %4376 = and i8 %4375, 1
  store i8 %4376, i8* %26, align 1
  %4377 = icmp eq i32 %4365, 0
  %4378 = zext i1 %4377 to i8
  store i8 %4378, i8* %29, align 1
  %4379 = lshr i32 %4365, 31
  %4380 = trunc i32 %4379 to i8
  store i8 %4380, i8* %32, align 1
  %4381 = lshr i32 %4364, 31
  %4382 = xor i32 %4381, 1
  %4383 = xor i32 %4379, %4381
  %4384 = add nuw nsw i32 %4383, %4382
  %4385 = icmp eq i32 %4384, 2
  %4386 = zext i1 %4385 to i8
  store i8 %4386, i8* %38, align 1
  %4387 = icmp ne i8 %4380, 0
  %4388 = xor i1 %4387, %4385
  %4389 = or i1 %4377, %4388
  %.v183 = select i1 %4389, i64 183, i64 32
  %4390 = add i64 %4344, %.v183
  store i64 %4390, i64* %3, align 8
  br i1 %4389, label %block_.L_40f162, label %block_40f0cb

block_40f0cb:                                     ; preds = %block_40f0ab
  %4391 = add i64 %4390, 4
  store i64 %4391, i64* %3, align 8
  %4392 = load i64, i64* %4297, align 8
  store i64 %4392, i64* %RAX.i34, align 8
  %4393 = add i64 %4390, 11
  store i64 %4393, i64* %3, align 8
  %4394 = load i32, i32* %4301, align 4
  %4395 = sext i32 %4394 to i64
  store i64 %4395, i64* %RCX.i100, align 8
  %4396 = shl nsw i64 %4395, 3
  %4397 = add i64 %4396, %4392
  %4398 = add i64 %4390, 15
  store i64 %4398, i64* %3, align 8
  %4399 = inttoptr i64 %4397 to i64*
  %4400 = load i64, i64* %4399, align 8
  store i64 %4400, i64* %RAX.i34, align 8
  %4401 = add i64 %4390, 19
  store i64 %4401, i64* %3, align 8
  %4402 = load i32, i32* %4311, align 4
  %4403 = sext i32 %4402 to i64
  store i64 %4403, i64* %RCX.i100, align 8
  %4404 = shl nsw i64 %4403, 2
  %4405 = add i64 %4404, %4400
  %4406 = add i64 %4390, 24
  store i64 %4406, i64* %3, align 8
  %4407 = load <2 x i32>, <2 x i32>* %1479, align 1
  %4408 = load <2 x i32>, <2 x i32>* %1480, align 1
  %4409 = inttoptr i64 %4405 to i32*
  %4410 = load i32, i32* %4409, align 4
  %4411 = sitofp i32 %4410 to float
  store float %4411, float* %288, align 1
  %4412 = extractelement <2 x i32> %4407, i32 1
  store i32 %4412, i32* %343, align 1
  %4413 = extractelement <2 x i32> %4408, i32 0
  store i32 %4413, i32* %147, align 1
  %4414 = extractelement <2 x i32> %4408, i32 1
  store i32 %4414, i32* %344, align 1
  %4415 = add i64 %4390, 28
  store i64 %4415, i64* %3, align 8
  %4416 = load i64, i64* %4347, align 8
  store i64 %4416, i64* %RAX.i34, align 8
  %4417 = add i64 %4416, 312
  %4418 = add i64 %4390, 35
  store i64 %4418, i64* %3, align 8
  %4419 = inttoptr i64 %4417 to i64*
  %4420 = load i64, i64* %4419, align 8
  store i64 %4420, i64* %RAX.i34, align 8
  %4421 = add i64 %4420, 8
  %4422 = add i64 %4390, 39
  store i64 %4422, i64* %3, align 8
  %4423 = inttoptr i64 %4421 to i64*
  %4424 = load i64, i64* %4423, align 8
  store i64 %4424, i64* %RAX.i34, align 8
  %4425 = add i64 %4390, 43
  store i64 %4425, i64* %3, align 8
  %4426 = load i32, i32* %4311, align 4
  %4427 = sext i32 %4426 to i64
  store i64 %4427, i64* %RCX.i100, align 8
  %4428 = shl nsw i64 %4427, 2
  %4429 = add i64 %4428, %4424
  %4430 = add i64 %4390, 48
  store i64 %4430, i64* %3, align 8
  %4431 = load <2 x i32>, <2 x i32>* %1481, align 1
  %4432 = load <2 x i32>, <2 x i32>* %1482, align 1
  %4433 = inttoptr i64 %4429 to i32*
  %4434 = load i32, i32* %4433, align 4
  %4435 = sitofp i32 %4434 to float
  store float %4435, float* %1470, align 1
  %4436 = extractelement <2 x i32> %4431, i32 1
  store i32 %4436, i32* %1483, align 1
  %4437 = extractelement <2 x i32> %4432, i32 0
  store i32 %4437, i32* %1484, align 1
  %4438 = extractelement <2 x i32> %4432, i32 1
  store i32 %4438, i32* %1485, align 1
  %4439 = add i64 %4293, -120
  %4440 = add i64 %4390, 52
  store i64 %4440, i64* %3, align 8
  %4441 = inttoptr i64 %4439 to i64*
  %4442 = load i64, i64* %4441, align 8
  store i64 %4442, i64* %RAX.i34, align 8
  %4443 = add i64 %4293, -124
  %4444 = add i64 %4390, 56
  store i64 %4444, i64* %3, align 8
  %4445 = inttoptr i64 %4443 to i32*
  %4446 = load i32, i32* %4445, align 4
  %4447 = sext i32 %4446 to i64
  store i64 %4447, i64* %RCX.i100, align 8
  %4448 = shl nsw i64 %4447, 2
  %4449 = add i64 %4448, %4442
  %4450 = add i64 %4390, 61
  store i64 %4450, i64* %3, align 8
  %4451 = load <2 x float>, <2 x float>* %1478, align 1
  %4452 = load <2 x i32>, <2 x i32>* %1482, align 1
  %4453 = inttoptr i64 %4449 to float*
  %4454 = load float, float* %4453, align 4
  %4455 = extractelement <2 x float> %4451, i32 0
  %4456 = fmul float %4455, %4454
  store float %4456, float* %1470, align 1
  %4457 = bitcast <2 x float> %4451 to <2 x i32>
  %4458 = extractelement <2 x i32> %4457, i32 1
  store i32 %4458, i32* %1483, align 1
  %4459 = extractelement <2 x i32> %4452, i32 0
  store i32 %4459, i32* %1484, align 1
  %4460 = extractelement <2 x i32> %4452, i32 1
  store i32 %4460, i32* %1485, align 1
  %4461 = load <2 x float>, <2 x float>* %300, align 1
  %4462 = load <2 x i32>, <2 x i32>* %1480, align 1
  %4463 = load <2 x float>, <2 x float>* %1478, align 1
  %4464 = extractelement <2 x float> %4461, i32 0
  %4465 = extractelement <2 x float> %4463, i32 0
  %4466 = fadd float %4464, %4465
  store float %4466, float* %288, align 1
  %4467 = bitcast <2 x float> %4461 to <2 x i32>
  %4468 = extractelement <2 x i32> %4467, i32 1
  store i32 %4468, i32* %343, align 1
  %4469 = extractelement <2 x i32> %4462, i32 0
  store i32 %4469, i32* %147, align 1
  %4470 = extractelement <2 x i32> %4462, i32 1
  store i32 %4470, i32* %344, align 1
  %4471 = load <2 x float>, <2 x float>* %300, align 1
  %4472 = extractelement <2 x float> %4471, i32 0
  %4473 = tail call float @llvm.trunc.f32(float %4472)
  %4474 = tail call float @llvm.fabs.f32(float %4473)
  %4475 = fcmp ogt float %4474, 0x41E0000000000000
  %4476 = fptosi float %4473 to i32
  %4477 = zext i32 %4476 to i64
  %4478 = select i1 %4475, i64 2147483648, i64 %4477
  store i64 %4478, i64* %RDX.i2857, align 8
  %4479 = load i64, i64* %RBP.i, align 8
  %4480 = add i64 %4479, -140
  %4481 = trunc i64 %4478 to i32
  %4482 = add i64 %4390, 75
  store i64 %4482, i64* %3, align 8
  %4483 = inttoptr i64 %4480 to i32*
  store i32 %4481, i32* %4483, align 4
  %4484 = load i64, i64* %RBP.i, align 8
  %4485 = add i64 %4484, -64
  %4486 = load i64, i64* %3, align 8
  %4487 = add i64 %4486, 4
  store i64 %4487, i64* %3, align 8
  %4488 = inttoptr i64 %4485 to i64*
  %4489 = load i64, i64* %4488, align 8
  store i64 %4489, i64* %RAX.i34, align 8
  %4490 = add i64 %4484, -148
  %4491 = add i64 %4486, 11
  store i64 %4491, i64* %3, align 8
  %4492 = inttoptr i64 %4490 to i32*
  %4493 = load i32, i32* %4492, align 4
  %4494 = sext i32 %4493 to i64
  store i64 %4494, i64* %RCX.i100, align 8
  %4495 = shl nsw i64 %4494, 3
  %4496 = add i64 %4495, %4489
  %4497 = add i64 %4486, 15
  store i64 %4497, i64* %3, align 8
  %4498 = inttoptr i64 %4496 to i64*
  %4499 = load i64, i64* %4498, align 8
  store i64 %4499, i64* %RAX.i34, align 8
  %4500 = add i64 %4484, -128
  %4501 = add i64 %4486, 19
  store i64 %4501, i64* %3, align 8
  %4502 = inttoptr i64 %4500 to i32*
  %4503 = load i32, i32* %4502, align 4
  %4504 = sext i32 %4503 to i64
  store i64 %4504, i64* %RCX.i100, align 8
  %4505 = load i32, i32* %EDX.i2852, align 4
  %4506 = shl nsw i64 %4504, 2
  %4507 = add i64 %4499, %4506
  %4508 = add i64 %4486, 22
  store i64 %4508, i64* %3, align 8
  %4509 = inttoptr i64 %4507 to i32*
  %4510 = load i32, i32* %4509, align 4
  %4511 = sub i32 %4505, %4510
  %4512 = icmp ult i32 %4505, %4510
  %4513 = zext i1 %4512 to i8
  store i8 %4513, i8* %14, align 1
  %4514 = and i32 %4511, 255
  %4515 = tail call i32 @llvm.ctpop.i32(i32 %4514)
  %4516 = trunc i32 %4515 to i8
  %4517 = and i8 %4516, 1
  %4518 = xor i8 %4517, 1
  store i8 %4518, i8* %21, align 1
  %4519 = xor i32 %4510, %4505
  %4520 = xor i32 %4519, %4511
  %4521 = lshr i32 %4520, 4
  %4522 = trunc i32 %4521 to i8
  %4523 = and i8 %4522, 1
  store i8 %4523, i8* %26, align 1
  %4524 = icmp eq i32 %4511, 0
  %4525 = zext i1 %4524 to i8
  store i8 %4525, i8* %29, align 1
  %4526 = lshr i32 %4511, 31
  %4527 = trunc i32 %4526 to i8
  store i8 %4527, i8* %32, align 1
  %4528 = lshr i32 %4505, 31
  %4529 = lshr i32 %4510, 31
  %4530 = xor i32 %4529, %4528
  %4531 = xor i32 %4526, %4528
  %4532 = add nuw nsw i32 %4531, %4530
  %4533 = icmp eq i32 %4532, 2
  %4534 = zext i1 %4533 to i8
  store i8 %4534, i8* %38, align 1
  %4535 = icmp ne i8 %4527, 0
  %4536 = xor i1 %4535, %4533
  %4537 = or i1 %4524, %4536
  %.v184 = select i1 %4537, i64 76, i64 28
  %4538 = add i64 %4486, %.v184
  store i64 %4538, i64* %3, align 8
  br i1 %4537, label %block_.L_40f162, label %block_40f132

block_40f132:                                     ; preds = %block_40f0cb
  %4539 = add i64 %4484, -140
  %4540 = add i64 %4538, 6
  store i64 %4540, i64* %3, align 8
  %4541 = inttoptr i64 %4539 to i32*
  %4542 = load i32, i32* %4541, align 4
  %4543 = zext i32 %4542 to i64
  store i64 %4543, i64* %RAX.i34, align 8
  %4544 = add i64 %4538, 10
  store i64 %4544, i64* %3, align 8
  %4545 = load i64, i64* %4488, align 8
  store i64 %4545, i64* %RCX.i100, align 8
  %4546 = add i64 %4538, 17
  store i64 %4546, i64* %3, align 8
  %4547 = load i32, i32* %4492, align 4
  %4548 = sext i32 %4547 to i64
  store i64 %4548, i64* %RDX.i2857, align 8
  %4549 = shl nsw i64 %4548, 3
  %4550 = add i64 %4549, %4545
  %4551 = add i64 %4538, 21
  store i64 %4551, i64* %3, align 8
  %4552 = inttoptr i64 %4550 to i64*
  %4553 = load i64, i64* %4552, align 8
  store i64 %4553, i64* %RCX.i100, align 8
  %4554 = add i64 %4538, 25
  store i64 %4554, i64* %3, align 8
  %4555 = load i32, i32* %4502, align 4
  %4556 = sext i32 %4555 to i64
  store i64 %4556, i64* %RDX.i2857, align 8
  %4557 = shl nsw i64 %4556, 2
  %4558 = add i64 %4557, %4553
  %4559 = add i64 %4538, 28
  store i64 %4559, i64* %3, align 8
  %4560 = inttoptr i64 %4558 to i32*
  store i32 %4542, i32* %4560, align 4
  %4561 = load i64, i64* %RBP.i, align 8
  %4562 = add i64 %4561, -96
  %4563 = load i64, i64* %3, align 8
  %4564 = add i64 %4563, 4
  store i64 %4564, i64* %3, align 8
  %4565 = inttoptr i64 %4562 to i64*
  %4566 = load i64, i64* %4565, align 8
  store i64 %4566, i64* %RCX.i100, align 8
  %4567 = add i64 %4561, -124
  %4568 = add i64 %4563, 8
  store i64 %4568, i64* %3, align 8
  %4569 = inttoptr i64 %4567 to i32*
  %4570 = load i32, i32* %4569, align 4
  %4571 = sext i32 %4570 to i64
  store i64 %4571, i64* %RDX.i2857, align 8
  %4572 = shl nsw i64 %4571, 3
  %4573 = add i64 %4572, %4566
  %4574 = add i64 %4563, 12
  store i64 %4574, i64* %3, align 8
  %4575 = inttoptr i64 %4573 to i64*
  %4576 = load i64, i64* %4575, align 8
  store i64 %4576, i64* %RCX.i100, align 8
  %4577 = add i64 %4561, -128
  %4578 = add i64 %4563, 16
  store i64 %4578, i64* %3, align 8
  %4579 = inttoptr i64 %4577 to i32*
  %4580 = load i32, i32* %4579, align 4
  %4581 = sext i32 %4580 to i64
  store i64 %4581, i64* %RDX.i2857, align 8
  %4582 = add i64 %4576, %4581
  %4583 = add i64 %4563, 20
  store i64 %4583, i64* %3, align 8
  %4584 = inttoptr i64 %4582 to i8*
  store i8 1, i8* %4584, align 1
  %.pre113 = load i64, i64* %RBP.i, align 8
  %.pre114 = load i64, i64* %3, align 8
  br label %block_.L_40f162

block_.L_40f162:                                  ; preds = %block_40f132, %block_40f0cb, %block_40f0ab, %block_40f05d
  %4585 = phi i64 [ %.pre114, %block_40f132 ], [ %4538, %block_40f0cb ], [ %4390, %block_40f0ab ], [ %4344, %block_40f05d ]
  %4586 = phi i64 [ %.pre113, %block_40f132 ], [ %4484, %block_40f0cb ], [ %4293, %block_40f0ab ], [ %4293, %block_40f05d ]
  %4587 = add i64 %4586, -64
  %4588 = add i64 %4585, 4
  store i64 %4588, i64* %3, align 8
  %4589 = inttoptr i64 %4587 to i64*
  %4590 = load i64, i64* %4589, align 8
  store i64 %4590, i64* %RAX.i34, align 8
  %4591 = add i64 %4586, -152
  %4592 = add i64 %4585, 11
  store i64 %4592, i64* %3, align 8
  %4593 = inttoptr i64 %4591 to i32*
  %4594 = load i32, i32* %4593, align 4
  %4595 = sext i32 %4594 to i64
  store i64 %4595, i64* %RCX.i100, align 8
  %4596 = shl nsw i64 %4595, 3
  %4597 = add i64 %4596, %4590
  %4598 = add i64 %4585, 15
  store i64 %4598, i64* %3, align 8
  %4599 = inttoptr i64 %4597 to i64*
  %4600 = load i64, i64* %4599, align 8
  store i64 %4600, i64* %RAX.i34, align 8
  %4601 = add i64 %4586, -128
  %4602 = add i64 %4585, 19
  store i64 %4602, i64* %3, align 8
  %4603 = inttoptr i64 %4601 to i32*
  %4604 = load i32, i32* %4603, align 4
  %4605 = sext i32 %4604 to i64
  store i64 %4605, i64* %RCX.i100, align 8
  %4606 = shl nsw i64 %4605, 2
  %4607 = add i64 %4606, %4600
  %4608 = add i64 %4585, 26
  store i64 %4608, i64* %3, align 8
  %4609 = inttoptr i64 %4607 to i32*
  %4610 = load i32, i32* %4609, align 4
  %4611 = add i32 %4610, 987654321
  %4612 = icmp ult i32 %4610, -987654321
  %4613 = zext i1 %4612 to i8
  store i8 %4613, i8* %14, align 1
  %4614 = and i32 %4611, 255
  %4615 = tail call i32 @llvm.ctpop.i32(i32 %4614)
  %4616 = trunc i32 %4615 to i8
  %4617 = and i8 %4616, 1
  %4618 = xor i8 %4617, 1
  store i8 %4618, i8* %21, align 1
  %4619 = xor i32 %4611, %4610
  %4620 = lshr i32 %4619, 4
  %4621 = trunc i32 %4620 to i8
  %4622 = and i8 %4621, 1
  store i8 %4622, i8* %26, align 1
  %4623 = icmp eq i32 %4611, 0
  %4624 = zext i1 %4623 to i8
  store i8 %4624, i8* %29, align 1
  %4625 = lshr i32 %4611, 31
  %4626 = trunc i32 %4625 to i8
  store i8 %4626, i8* %32, align 1
  %4627 = lshr i32 %4610, 31
  %4628 = xor i32 %4627, 1
  %4629 = xor i32 %4625, %4627
  %4630 = add nuw nsw i32 %4629, %4628
  %4631 = icmp eq i32 %4630, 2
  %4632 = zext i1 %4631 to i8
  store i8 %4632, i8* %38, align 1
  %4633 = icmp ne i8 %4626, 0
  %4634 = xor i1 %4633, %4631
  %4635 = or i1 %4623, %4634
  %.v185 = select i1 %4635, i64 233, i64 32
  %4636 = add i64 %4585, %.v185
  store i64 %4636, i64* %3, align 8
  br i1 %4635, label %block_.L_40f24b, label %block_40f182

block_40f182:                                     ; preds = %block_.L_40f162
  %4637 = add i64 %4586, -16
  %4638 = add i64 %4636, 4
  store i64 %4638, i64* %3, align 8
  %4639 = inttoptr i64 %4637 to i64*
  %4640 = load i64, i64* %4639, align 8
  store i64 %4640, i64* %RAX.i34, align 8
  %4641 = add i64 %4640, 312
  %4642 = add i64 %4636, 11
  store i64 %4642, i64* %3, align 8
  %4643 = inttoptr i64 %4641 to i64*
  %4644 = load i64, i64* %4643, align 8
  store i64 %4644, i64* %RAX.i34, align 8
  %4645 = add i64 %4644, 32
  %4646 = add i64 %4636, 15
  store i64 %4646, i64* %3, align 8
  %4647 = inttoptr i64 %4645 to i64*
  %4648 = load i64, i64* %4647, align 8
  store i64 %4648, i64* %RAX.i34, align 8
  %4649 = add i64 %4636, 19
  store i64 %4649, i64* %3, align 8
  %4650 = load i32, i32* %4603, align 4
  %4651 = sext i32 %4650 to i64
  store i64 %4651, i64* %RCX.i100, align 8
  %4652 = shl nsw i64 %4651, 2
  %4653 = add i64 %4652, %4648
  %4654 = add i64 %4636, 26
  store i64 %4654, i64* %3, align 8
  %4655 = inttoptr i64 %4653 to i32*
  %4656 = load i32, i32* %4655, align 4
  %4657 = add i32 %4656, 987654321
  %4658 = icmp ult i32 %4656, -987654321
  %4659 = zext i1 %4658 to i8
  store i8 %4659, i8* %14, align 1
  %4660 = and i32 %4657, 255
  %4661 = tail call i32 @llvm.ctpop.i32(i32 %4660)
  %4662 = trunc i32 %4661 to i8
  %4663 = and i8 %4662, 1
  %4664 = xor i8 %4663, 1
  store i8 %4664, i8* %21, align 1
  %4665 = xor i32 %4657, %4656
  %4666 = lshr i32 %4665, 4
  %4667 = trunc i32 %4666 to i8
  %4668 = and i8 %4667, 1
  store i8 %4668, i8* %26, align 1
  %4669 = icmp eq i32 %4657, 0
  %4670 = zext i1 %4669 to i8
  store i8 %4670, i8* %29, align 1
  %4671 = lshr i32 %4657, 31
  %4672 = trunc i32 %4671 to i8
  store i8 %4672, i8* %32, align 1
  %4673 = lshr i32 %4656, 31
  %4674 = xor i32 %4673, 1
  %4675 = xor i32 %4671, %4673
  %4676 = add nuw nsw i32 %4675, %4674
  %4677 = icmp eq i32 %4676, 2
  %4678 = zext i1 %4677 to i8
  store i8 %4678, i8* %38, align 1
  %4679 = icmp ne i8 %4672, 0
  %4680 = xor i1 %4679, %4677
  %4681 = or i1 %4669, %4680
  %.v186 = select i1 %4681, i64 201, i64 32
  %4682 = add i64 %4636, %.v186
  store i64 %4682, i64* %3, align 8
  br i1 %4681, label %block_.L_40f24b, label %block_40f1a2

block_40f1a2:                                     ; preds = %block_40f182
  %4683 = add i64 %4682, 4
  store i64 %4683, i64* %3, align 8
  %4684 = load i64, i64* %4589, align 8
  store i64 %4684, i64* %RAX.i34, align 8
  %4685 = add i64 %4682, 11
  store i64 %4685, i64* %3, align 8
  %4686 = load i32, i32* %4593, align 4
  %4687 = sext i32 %4686 to i64
  store i64 %4687, i64* %RCX.i100, align 8
  %4688 = shl nsw i64 %4687, 3
  %4689 = add i64 %4688, %4684
  %4690 = add i64 %4682, 15
  store i64 %4690, i64* %3, align 8
  %4691 = inttoptr i64 %4689 to i64*
  %4692 = load i64, i64* %4691, align 8
  store i64 %4692, i64* %RAX.i34, align 8
  %4693 = add i64 %4682, 19
  store i64 %4693, i64* %3, align 8
  %4694 = load i32, i32* %4603, align 4
  %4695 = sext i32 %4694 to i64
  store i64 %4695, i64* %RCX.i100, align 8
  %4696 = shl nsw i64 %4695, 2
  %4697 = add i64 %4696, %4692
  %4698 = add i64 %4682, 24
  store i64 %4698, i64* %3, align 8
  %4699 = load <2 x i32>, <2 x i32>* %1479, align 1
  %4700 = load <2 x i32>, <2 x i32>* %1480, align 1
  %4701 = inttoptr i64 %4697 to i32*
  %4702 = load i32, i32* %4701, align 4
  %4703 = sitofp i32 %4702 to float
  store float %4703, float* %288, align 1
  %4704 = extractelement <2 x i32> %4699, i32 1
  store i32 %4704, i32* %343, align 1
  %4705 = extractelement <2 x i32> %4700, i32 0
  store i32 %4705, i32* %147, align 1
  %4706 = extractelement <2 x i32> %4700, i32 1
  store i32 %4706, i32* %344, align 1
  %4707 = add i64 %4682, 28
  store i64 %4707, i64* %3, align 8
  %4708 = load i64, i64* %4639, align 8
  store i64 %4708, i64* %RAX.i34, align 8
  %4709 = add i64 %4708, 312
  %4710 = add i64 %4682, 35
  store i64 %4710, i64* %3, align 8
  %4711 = inttoptr i64 %4709 to i64*
  %4712 = load i64, i64* %4711, align 8
  store i64 %4712, i64* %RAX.i34, align 8
  %4713 = add i64 %4712, 32
  %4714 = add i64 %4682, 39
  store i64 %4714, i64* %3, align 8
  %4715 = inttoptr i64 %4713 to i64*
  %4716 = load i64, i64* %4715, align 8
  store i64 %4716, i64* %RAX.i34, align 8
  %4717 = add i64 %4682, 43
  store i64 %4717, i64* %3, align 8
  %4718 = load i32, i32* %4603, align 4
  %4719 = sext i32 %4718 to i64
  store i64 %4719, i64* %RCX.i100, align 8
  %4720 = shl nsw i64 %4719, 2
  %4721 = add i64 %4720, %4716
  %4722 = add i64 %4682, 48
  store i64 %4722, i64* %3, align 8
  %4723 = load <2 x i32>, <2 x i32>* %1481, align 1
  %4724 = load <2 x i32>, <2 x i32>* %1482, align 1
  %4725 = inttoptr i64 %4721 to i32*
  %4726 = load i32, i32* %4725, align 4
  %4727 = sitofp i32 %4726 to float
  store float %4727, float* %1470, align 1
  %4728 = extractelement <2 x i32> %4723, i32 1
  store i32 %4728, i32* %1483, align 1
  %4729 = extractelement <2 x i32> %4724, i32 0
  store i32 %4729, i32* %1484, align 1
  %4730 = extractelement <2 x i32> %4724, i32 1
  store i32 %4730, i32* %1485, align 1
  %4731 = add i64 %4586, -120
  %4732 = add i64 %4682, 52
  store i64 %4732, i64* %3, align 8
  %4733 = inttoptr i64 %4731 to i64*
  %4734 = load i64, i64* %4733, align 8
  store i64 %4734, i64* %RAX.i34, align 8
  %4735 = add i64 %4586, -124
  %4736 = add i64 %4682, 55
  store i64 %4736, i64* %3, align 8
  %4737 = inttoptr i64 %4735 to i32*
  %4738 = load i32, i32* %4737, align 4
  %4739 = add i32 %4738, -1
  %4740 = zext i32 %4739 to i64
  store i64 %4740, i64* %RDX.i2857, align 8
  %4741 = icmp eq i32 %4738, 0
  %4742 = zext i1 %4741 to i8
  store i8 %4742, i8* %14, align 1
  %4743 = and i32 %4739, 255
  %4744 = tail call i32 @llvm.ctpop.i32(i32 %4743)
  %4745 = trunc i32 %4744 to i8
  %4746 = and i8 %4745, 1
  %4747 = xor i8 %4746, 1
  store i8 %4747, i8* %21, align 1
  %4748 = xor i32 %4739, %4738
  %4749 = lshr i32 %4748, 4
  %4750 = trunc i32 %4749 to i8
  %4751 = and i8 %4750, 1
  store i8 %4751, i8* %26, align 1
  %4752 = icmp eq i32 %4739, 0
  %4753 = zext i1 %4752 to i8
  store i8 %4753, i8* %29, align 1
  %4754 = lshr i32 %4739, 31
  %4755 = trunc i32 %4754 to i8
  store i8 %4755, i8* %32, align 1
  %4756 = lshr i32 %4738, 31
  %4757 = xor i32 %4754, %4756
  %4758 = add nuw nsw i32 %4757, %4756
  %4759 = icmp eq i32 %4758, 2
  %4760 = zext i1 %4759 to i8
  store i8 %4760, i8* %38, align 1
  %4761 = sext i32 %4739 to i64
  store i64 %4761, i64* %RCX.i100, align 8
  %4762 = shl nsw i64 %4761, 2
  %4763 = add i64 %4734, %4762
  %4764 = add i64 %4682, 66
  store i64 %4764, i64* %3, align 8
  %4765 = load <2 x float>, <2 x float>* %1478, align 1
  %4766 = load <2 x i32>, <2 x i32>* %1482, align 1
  %4767 = inttoptr i64 %4763 to float*
  %4768 = load float, float* %4767, align 4
  %4769 = extractelement <2 x float> %4765, i32 0
  %4770 = fmul float %4769, %4768
  store float %4770, float* %1470, align 1
  %4771 = bitcast <2 x float> %4765 to <2 x i32>
  %4772 = extractelement <2 x i32> %4771, i32 1
  store i32 %4772, i32* %1483, align 1
  %4773 = extractelement <2 x i32> %4766, i32 0
  store i32 %4773, i32* %1484, align 1
  %4774 = extractelement <2 x i32> %4766, i32 1
  store i32 %4774, i32* %1485, align 1
  %4775 = load i64, i64* %RBP.i, align 8
  %4776 = add i64 %4775, -120
  %4777 = add i64 %4682, 70
  store i64 %4777, i64* %3, align 8
  %4778 = inttoptr i64 %4776 to i64*
  %4779 = load i64, i64* %4778, align 8
  store i64 %4779, i64* %RAX.i34, align 8
  %4780 = add i64 %4775, -124
  %4781 = add i64 %4682, 74
  store i64 %4781, i64* %3, align 8
  %4782 = inttoptr i64 %4780 to i32*
  %4783 = load i32, i32* %4782, align 4
  %4784 = sext i32 %4783 to i64
  store i64 %4784, i64* %RCX.i100, align 8
  %4785 = shl nsw i64 %4784, 2
  %4786 = add i64 %4785, %4779
  %4787 = add i64 %4682, 79
  store i64 %4787, i64* %3, align 8
  %4788 = load <2 x float>, <2 x float>* %1478, align 1
  %4789 = load <2 x i32>, <2 x i32>* %1482, align 1
  %4790 = inttoptr i64 %4786 to float*
  %4791 = load float, float* %4790, align 4
  %4792 = extractelement <2 x float> %4788, i32 0
  %4793 = fmul float %4792, %4791
  store float %4793, float* %1470, align 1
  %4794 = bitcast <2 x float> %4788 to <2 x i32>
  %4795 = extractelement <2 x i32> %4794, i32 1
  store i32 %4795, i32* %1483, align 1
  %4796 = extractelement <2 x i32> %4789, i32 0
  store i32 %4796, i32* %1484, align 1
  %4797 = extractelement <2 x i32> %4789, i32 1
  store i32 %4797, i32* %1485, align 1
  %4798 = load <2 x float>, <2 x float>* %300, align 1
  %4799 = load <2 x i32>, <2 x i32>* %1480, align 1
  %4800 = load <2 x float>, <2 x float>* %1478, align 1
  %4801 = extractelement <2 x float> %4798, i32 0
  %4802 = extractelement <2 x float> %4800, i32 0
  %4803 = fadd float %4801, %4802
  store float %4803, float* %288, align 1
  %4804 = bitcast <2 x float> %4798 to <2 x i32>
  %4805 = extractelement <2 x i32> %4804, i32 1
  store i32 %4805, i32* %343, align 1
  %4806 = extractelement <2 x i32> %4799, i32 0
  store i32 %4806, i32* %147, align 1
  %4807 = extractelement <2 x i32> %4799, i32 1
  store i32 %4807, i32* %344, align 1
  %4808 = load <2 x float>, <2 x float>* %300, align 1
  %4809 = extractelement <2 x float> %4808, i32 0
  %4810 = tail call float @llvm.trunc.f32(float %4809)
  %4811 = tail call float @llvm.fabs.f32(float %4810)
  %4812 = fcmp ogt float %4811, 0x41E0000000000000
  %4813 = fptosi float %4810 to i32
  %4814 = zext i32 %4813 to i64
  %4815 = select i1 %4812, i64 2147483648, i64 %4814
  store i64 %4815, i64* %RDX.i2857, align 8
  %4816 = add i64 %4775, -140
  %4817 = trunc i64 %4815 to i32
  %4818 = add i64 %4682, 93
  store i64 %4818, i64* %3, align 8
  %4819 = inttoptr i64 %4816 to i32*
  store i32 %4817, i32* %4819, align 4
  %4820 = load i64, i64* %RBP.i, align 8
  %4821 = add i64 %4820, -64
  %4822 = load i64, i64* %3, align 8
  %4823 = add i64 %4822, 4
  store i64 %4823, i64* %3, align 8
  %4824 = inttoptr i64 %4821 to i64*
  %4825 = load i64, i64* %4824, align 8
  store i64 %4825, i64* %RAX.i34, align 8
  %4826 = add i64 %4820, -148
  %4827 = add i64 %4822, 11
  store i64 %4827, i64* %3, align 8
  %4828 = inttoptr i64 %4826 to i32*
  %4829 = load i32, i32* %4828, align 4
  %4830 = sext i32 %4829 to i64
  store i64 %4830, i64* %RCX.i100, align 8
  %4831 = shl nsw i64 %4830, 3
  %4832 = add i64 %4831, %4825
  %4833 = add i64 %4822, 15
  store i64 %4833, i64* %3, align 8
  %4834 = inttoptr i64 %4832 to i64*
  %4835 = load i64, i64* %4834, align 8
  store i64 %4835, i64* %RAX.i34, align 8
  %4836 = add i64 %4820, -128
  %4837 = add i64 %4822, 19
  store i64 %4837, i64* %3, align 8
  %4838 = inttoptr i64 %4836 to i32*
  %4839 = load i32, i32* %4838, align 4
  %4840 = sext i32 %4839 to i64
  store i64 %4840, i64* %RCX.i100, align 8
  %4841 = load i32, i32* %EDX.i2852, align 4
  %4842 = shl nsw i64 %4840, 2
  %4843 = add i64 %4835, %4842
  %4844 = add i64 %4822, 22
  store i64 %4844, i64* %3, align 8
  %4845 = inttoptr i64 %4843 to i32*
  %4846 = load i32, i32* %4845, align 4
  %4847 = sub i32 %4841, %4846
  %4848 = icmp ult i32 %4841, %4846
  %4849 = zext i1 %4848 to i8
  store i8 %4849, i8* %14, align 1
  %4850 = and i32 %4847, 255
  %4851 = tail call i32 @llvm.ctpop.i32(i32 %4850)
  %4852 = trunc i32 %4851 to i8
  %4853 = and i8 %4852, 1
  %4854 = xor i8 %4853, 1
  store i8 %4854, i8* %21, align 1
  %4855 = xor i32 %4846, %4841
  %4856 = xor i32 %4855, %4847
  %4857 = lshr i32 %4856, 4
  %4858 = trunc i32 %4857 to i8
  %4859 = and i8 %4858, 1
  store i8 %4859, i8* %26, align 1
  %4860 = icmp eq i32 %4847, 0
  %4861 = zext i1 %4860 to i8
  store i8 %4861, i8* %29, align 1
  %4862 = lshr i32 %4847, 31
  %4863 = trunc i32 %4862 to i8
  store i8 %4863, i8* %32, align 1
  %4864 = lshr i32 %4841, 31
  %4865 = lshr i32 %4846, 31
  %4866 = xor i32 %4865, %4864
  %4867 = xor i32 %4862, %4864
  %4868 = add nuw nsw i32 %4867, %4866
  %4869 = icmp eq i32 %4868, 2
  %4870 = zext i1 %4869 to i8
  store i8 %4870, i8* %38, align 1
  %4871 = icmp ne i8 %4863, 0
  %4872 = xor i1 %4871, %4869
  %4873 = or i1 %4860, %4872
  %.v187 = select i1 %4873, i64 76, i64 28
  %4874 = add i64 %4822, %.v187
  store i64 %4874, i64* %3, align 8
  br i1 %4873, label %block_.L_40f24b, label %block_40f21b

block_40f21b:                                     ; preds = %block_40f1a2
  %4875 = add i64 %4820, -140
  %4876 = add i64 %4874, 6
  store i64 %4876, i64* %3, align 8
  %4877 = inttoptr i64 %4875 to i32*
  %4878 = load i32, i32* %4877, align 4
  %4879 = zext i32 %4878 to i64
  store i64 %4879, i64* %RAX.i34, align 8
  %4880 = add i64 %4874, 10
  store i64 %4880, i64* %3, align 8
  %4881 = load i64, i64* %4824, align 8
  store i64 %4881, i64* %RCX.i100, align 8
  %4882 = add i64 %4874, 17
  store i64 %4882, i64* %3, align 8
  %4883 = load i32, i32* %4828, align 4
  %4884 = sext i32 %4883 to i64
  store i64 %4884, i64* %RDX.i2857, align 8
  %4885 = shl nsw i64 %4884, 3
  %4886 = add i64 %4885, %4881
  %4887 = add i64 %4874, 21
  store i64 %4887, i64* %3, align 8
  %4888 = inttoptr i64 %4886 to i64*
  %4889 = load i64, i64* %4888, align 8
  store i64 %4889, i64* %RCX.i100, align 8
  %4890 = add i64 %4874, 25
  store i64 %4890, i64* %3, align 8
  %4891 = load i32, i32* %4838, align 4
  %4892 = sext i32 %4891 to i64
  store i64 %4892, i64* %RDX.i2857, align 8
  %4893 = shl nsw i64 %4892, 2
  %4894 = add i64 %4893, %4889
  %4895 = add i64 %4874, 28
  store i64 %4895, i64* %3, align 8
  %4896 = inttoptr i64 %4894 to i32*
  store i32 %4878, i32* %4896, align 4
  %4897 = load i64, i64* %RBP.i, align 8
  %4898 = add i64 %4897, -96
  %4899 = load i64, i64* %3, align 8
  %4900 = add i64 %4899, 4
  store i64 %4900, i64* %3, align 8
  %4901 = inttoptr i64 %4898 to i64*
  %4902 = load i64, i64* %4901, align 8
  store i64 %4902, i64* %RCX.i100, align 8
  %4903 = add i64 %4897, -124
  %4904 = add i64 %4899, 8
  store i64 %4904, i64* %3, align 8
  %4905 = inttoptr i64 %4903 to i32*
  %4906 = load i32, i32* %4905, align 4
  %4907 = sext i32 %4906 to i64
  store i64 %4907, i64* %RDX.i2857, align 8
  %4908 = shl nsw i64 %4907, 3
  %4909 = add i64 %4908, %4902
  %4910 = add i64 %4899, 12
  store i64 %4910, i64* %3, align 8
  %4911 = inttoptr i64 %4909 to i64*
  %4912 = load i64, i64* %4911, align 8
  store i64 %4912, i64* %RCX.i100, align 8
  %4913 = add i64 %4897, -128
  %4914 = add i64 %4899, 16
  store i64 %4914, i64* %3, align 8
  %4915 = inttoptr i64 %4913 to i32*
  %4916 = load i32, i32* %4915, align 4
  %4917 = sext i32 %4916 to i64
  store i64 %4917, i64* %RDX.i2857, align 8
  %4918 = add i64 %4912, %4917
  %4919 = add i64 %4899, 20
  store i64 %4919, i64* %3, align 8
  %4920 = inttoptr i64 %4918 to i8*
  store i8 3, i8* %4920, align 1
  %.pre115 = load i64, i64* %RBP.i, align 8
  %.pre116 = load i64, i64* %3, align 8
  br label %block_.L_40f24b

block_.L_40f24b:                                  ; preds = %block_40f21b, %block_40f1a2, %block_40f182, %block_.L_40f162
  %4921 = phi i64 [ %.pre116, %block_40f21b ], [ %4874, %block_40f1a2 ], [ %4682, %block_40f182 ], [ %4636, %block_.L_40f162 ]
  %4922 = phi i64 [ %.pre115, %block_40f21b ], [ %4820, %block_40f1a2 ], [ %4586, %block_40f182 ], [ %4586, %block_.L_40f162 ]
  %4923 = add i64 %4922, -136
  %4924 = add i64 %4921, 10
  store i64 %4924, i64* %3, align 8
  %4925 = inttoptr i64 %4923 to i32*
  store i32 0, i32* %4925, align 4
  %.pre117 = load i64, i64* %3, align 8
  br label %block_.L_40f255

block_.L_40f255:                                  ; preds = %block_.L_40f2d2, %block_.L_40f24b
  %4926 = phi i64 [ %.pre117, %block_.L_40f24b ], [ %5240, %block_.L_40f2d2 ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.13, %block_.L_40f24b ], [ %5015, %block_.L_40f2d2 ]
  %4927 = load i64, i64* %RBP.i, align 8
  %4928 = add i64 %4927, -136
  %4929 = add i64 %4926, 6
  store i64 %4929, i64* %3, align 8
  %4930 = inttoptr i64 %4928 to i32*
  %4931 = load i32, i32* %4930, align 4
  %4932 = zext i32 %4931 to i64
  store i64 %4932, i64* %RAX.i34, align 8
  %4933 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %4934 = sub i32 %4931, %4933
  %4935 = icmp ult i32 %4931, %4933
  %4936 = zext i1 %4935 to i8
  store i8 %4936, i8* %14, align 1
  %4937 = and i32 %4934, 255
  %4938 = tail call i32 @llvm.ctpop.i32(i32 %4937)
  %4939 = trunc i32 %4938 to i8
  %4940 = and i8 %4939, 1
  %4941 = xor i8 %4940, 1
  store i8 %4941, i8* %21, align 1
  %4942 = xor i32 %4933, %4931
  %4943 = xor i32 %4942, %4934
  %4944 = lshr i32 %4943, 4
  %4945 = trunc i32 %4944 to i8
  %4946 = and i8 %4945, 1
  store i8 %4946, i8* %26, align 1
  %4947 = icmp eq i32 %4934, 0
  %4948 = zext i1 %4947 to i8
  store i8 %4948, i8* %29, align 1
  %4949 = lshr i32 %4934, 31
  %4950 = trunc i32 %4949 to i8
  store i8 %4950, i8* %32, align 1
  %4951 = lshr i32 %4931, 31
  %4952 = lshr i32 %4933, 31
  %4953 = xor i32 %4952, %4951
  %4954 = xor i32 %4949, %4951
  %4955 = add nuw nsw i32 %4954, %4953
  %4956 = icmp eq i32 %4955, 2
  %4957 = zext i1 %4956 to i8
  store i8 %4957, i8* %38, align 1
  %4958 = icmp ne i8 %4950, 0
  %4959 = xor i1 %4958, %4956
  %.v188 = select i1 %4959, i64 19, i64 235
  %4960 = add i64 %4926, %.v188
  store i64 %4960, i64* %3, align 8
  br i1 %4959, label %block_40f268, label %block_.L_40f340.loopexit

block_40f268:                                     ; preds = %block_.L_40f255
  store <4 x i32> zeroinitializer, <4 x i32>* %1487, align 1
  %4961 = add i64 %4927, -112
  %4962 = add i64 %4960, 7
  store i64 %4962, i64* %3, align 8
  %4963 = inttoptr i64 %4961 to i64*
  %4964 = load i64, i64* %4963, align 8
  store i64 %4964, i64* %RAX.i34, align 8
  %4965 = add i64 %4927, -124
  %4966 = add i64 %4960, 11
  store i64 %4966, i64* %3, align 8
  %4967 = inttoptr i64 %4965 to i32*
  %4968 = load i32, i32* %4967, align 4
  %4969 = sext i32 %4968 to i64
  store i64 %4969, i64* %RCX.i100, align 8
  %4970 = shl nsw i64 %4969, 3
  %4971 = add i64 %4970, %4964
  %4972 = add i64 %4960, 15
  store i64 %4972, i64* %3, align 8
  %4973 = inttoptr i64 %4971 to i64*
  %4974 = load i64, i64* %4973, align 8
  store i64 %4974, i64* %RAX.i34, align 8
  %4975 = add i64 %4960, 22
  store i64 %4975, i64* %3, align 8
  %4976 = load i32, i32* %4930, align 4
  %4977 = sext i32 %4976 to i64
  store i64 %4977, i64* %RCX.i100, align 8
  %4978 = shl nsw i64 %4977, 2
  %4979 = add i64 %4978, %4974
  %4980 = add i64 %4960, 27
  store i64 %4980, i64* %3, align 8
  %4981 = inttoptr i64 %4979 to i32*
  %4982 = load i32, i32* %4981, align 4
  store i32 %4982, i32* %1471, align 1
  store float 0.000000e+00, float* %1473, align 1
  store float 0.000000e+00, float* %1475, align 1
  store float 0.000000e+00, float* %1477, align 1
  %4983 = add i64 %4960, 30
  store i64 %4983, i64* %3, align 8
  %4984 = load <2 x float>, <2 x float>* %1478, align 1
  %4985 = extractelement <2 x float> %4984, i32 0
  %4986 = load <2 x float>, <2 x float>* %300, align 1
  %4987 = extractelement <2 x float> %4986, i32 0
  %4988 = fcmp uno float %4985, %4987
  br i1 %4988, label %4989, label %4999

; <label>:4989:                                   ; preds = %block_40f268
  %4990 = fadd float %4985, %4987
  %4991 = bitcast float %4990 to i32
  %4992 = and i32 %4991, 2143289344
  %4993 = icmp eq i32 %4992, 2139095040
  %4994 = and i32 %4991, 4194303
  %4995 = icmp ne i32 %4994, 0
  %4996 = and i1 %4993, %4995
  br i1 %4996, label %4997, label %5005

; <label>:4997:                                   ; preds = %4989
  %4998 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4983, %struct.Memory* %MEMORY.18)
  %.pre118 = load i64, i64* %3, align 8
  %.pre119 = load i8, i8* %14, align 1
  %.pre120 = load i8, i8* %29, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit

; <label>:4999:                                   ; preds = %block_40f268
  %5000 = fcmp ogt float %4985, %4987
  br i1 %5000, label %5005, label %5001

; <label>:5001:                                   ; preds = %4999
  %5002 = fcmp olt float %4985, %4987
  br i1 %5002, label %5005, label %5003

; <label>:5003:                                   ; preds = %5001
  %5004 = fcmp oeq float %4985, %4987
  br i1 %5004, label %5005, label %5009

; <label>:5005:                                   ; preds = %5003, %5001, %4999, %4989
  %5006 = phi i8 [ 0, %4999 ], [ 0, %5001 ], [ 1, %5003 ], [ 1, %4989 ]
  %5007 = phi i8 [ 0, %4999 ], [ 0, %5001 ], [ 0, %5003 ], [ 1, %4989 ]
  %5008 = phi i8 [ 0, %4999 ], [ 1, %5001 ], [ 0, %5003 ], [ 1, %4989 ]
  store i8 %5006, i8* %29, align 1
  store i8 %5007, i8* %21, align 1
  store i8 %5008, i8* %14, align 1
  br label %5009

; <label>:5009:                                   ; preds = %5005, %5003
  %5010 = phi i8 [ %5006, %5005 ], [ %4948, %5003 ]
  %5011 = phi i8 [ %5008, %5005 ], [ %4936, %5003 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit

routine_ucomiss__xmm0___xmm1.exit:                ; preds = %5009, %4997
  %5012 = phi i8 [ %.pre120, %4997 ], [ %5010, %5009 ]
  %5013 = phi i8 [ %.pre119, %4997 ], [ %5011, %5009 ]
  %5014 = phi i64 [ %.pre118, %4997 ], [ %4983, %5009 ]
  %5015 = phi %struct.Memory* [ %4998, %4997 ], [ %MEMORY.18, %5009 ]
  %5016 = or i8 %5012, %5013
  %5017 = icmp ne i8 %5016, 0
  %.v189 = select i1 %5017, i64 76, i64 6
  %5018 = add i64 %5014, %.v189
  store i64 %5018, i64* %3, align 8
  %.pre122 = load i64, i64* %RBP.i, align 8
  br i1 %5017, label %block_.L_40f2d2, label %block_40f28c

block_40f28c:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit
  %5019 = add i64 %.pre122, -16
  %5020 = add i64 %5018, 4
  store i64 %5020, i64* %3, align 8
  %5021 = inttoptr i64 %5019 to i64*
  %5022 = load i64, i64* %5021, align 8
  store i64 %5022, i64* %RAX.i34, align 8
  %5023 = add i64 %5022, 328
  %5024 = add i64 %5018, 11
  store i64 %5024, i64* %3, align 8
  %5025 = inttoptr i64 %5023 to i64*
  %5026 = load i64, i64* %5025, align 8
  store i64 %5026, i64* %RAX.i34, align 8
  %5027 = add i64 %.pre122, -136
  %5028 = add i64 %5018, 18
  store i64 %5028, i64* %3, align 8
  %5029 = inttoptr i64 %5027 to i32*
  %5030 = load i32, i32* %5029, align 4
  %5031 = sext i32 %5030 to i64
  store i64 %5031, i64* %RCX.i100, align 8
  %5032 = shl nsw i64 %5031, 3
  %5033 = add i64 %5032, %5026
  %5034 = add i64 %5018, 22
  store i64 %5034, i64* %3, align 8
  %5035 = inttoptr i64 %5033 to i64*
  %5036 = load i64, i64* %5035, align 8
  store i64 %5036, i64* %RAX.i34, align 8
  %5037 = add i64 %.pre122, -128
  %5038 = add i64 %5018, 26
  store i64 %5038, i64* %3, align 8
  %5039 = inttoptr i64 %5037 to i32*
  %5040 = load i32, i32* %5039, align 4
  %5041 = sext i32 %5040 to i64
  store i64 %5041, i64* %RCX.i100, align 8
  %5042 = shl nsw i64 %5041, 2
  %5043 = add i64 %5042, %5036
  %5044 = add i64 %5018, 33
  store i64 %5044, i64* %3, align 8
  %5045 = inttoptr i64 %5043 to i32*
  %5046 = load i32, i32* %5045, align 4
  %5047 = add i32 %5046, 987654321
  %5048 = icmp ult i32 %5046, -987654321
  %5049 = zext i1 %5048 to i8
  store i8 %5049, i8* %14, align 1
  %5050 = and i32 %5047, 255
  %5051 = tail call i32 @llvm.ctpop.i32(i32 %5050)
  %5052 = trunc i32 %5051 to i8
  %5053 = and i8 %5052, 1
  %5054 = xor i8 %5053, 1
  store i8 %5054, i8* %21, align 1
  %5055 = xor i32 %5047, %5046
  %5056 = lshr i32 %5055, 4
  %5057 = trunc i32 %5056 to i8
  %5058 = and i8 %5057, 1
  store i8 %5058, i8* %26, align 1
  %5059 = icmp eq i32 %5047, 0
  %5060 = zext i1 %5059 to i8
  store i8 %5060, i8* %29, align 1
  %5061 = lshr i32 %5047, 31
  %5062 = trunc i32 %5061 to i8
  store i8 %5062, i8* %32, align 1
  %5063 = lshr i32 %5046, 31
  %5064 = xor i32 %5063, 1
  %5065 = xor i32 %5061, %5063
  %5066 = add nuw nsw i32 %5065, %5064
  %5067 = icmp eq i32 %5066, 2
  %5068 = zext i1 %5067 to i8
  store i8 %5068, i8* %38, align 1
  %.v190 = select i1 %5059, i64 39, i64 70
  %5069 = add i64 %5018, %.v190
  store i64 %5069, i64* %3, align 8
  br i1 %5059, label %block_40f2b3, label %block_.L_40f2d2

block_40f2b3:                                     ; preds = %block_40f28c
  %5070 = add i64 %.pre122, -64
  %5071 = add i64 %5069, 4
  store i64 %5071, i64* %3, align 8
  %5072 = inttoptr i64 %5070 to i64*
  %5073 = load i64, i64* %5072, align 8
  store i64 %5073, i64* %RAX.i34, align 8
  %5074 = add i64 %.pre122, -148
  %5075 = add i64 %5069, 11
  store i64 %5075, i64* %3, align 8
  %5076 = inttoptr i64 %5074 to i32*
  %5077 = load i32, i32* %5076, align 4
  %5078 = sext i32 %5077 to i64
  store i64 %5078, i64* %RCX.i100, align 8
  %5079 = shl nsw i64 %5078, 3
  %5080 = add i64 %5079, %5073
  %5081 = add i64 %5069, 15
  store i64 %5081, i64* %3, align 8
  %5082 = inttoptr i64 %5080 to i64*
  %5083 = load i64, i64* %5082, align 8
  store i64 %5083, i64* %RAX.i34, align 8
  %5084 = add i64 %5069, 19
  store i64 %5084, i64* %3, align 8
  %5085 = load i32, i32* %5039, align 4
  %5086 = sext i32 %5085 to i64
  store i64 %5086, i64* %RCX.i100, align 8
  %5087 = shl nsw i64 %5086, 2
  %5088 = add i64 %5087, %5083
  %5089 = add i64 %5069, 26
  store i64 %5089, i64* %3, align 8
  %5090 = inttoptr i64 %5088 to i32*
  store i32 -987654321, i32* %5090, align 4
  %5091 = load i64, i64* %3, align 8
  %5092 = add i64 %5091, 115
  store i64 %5092, i64* %3, align 8
  %.pre121.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_40f340

block_.L_40f2d2:                                  ; preds = %routine_ucomiss__xmm0___xmm1.exit, %block_40f28c
  %5093 = phi i64 [ %5069, %block_40f28c ], [ %5018, %routine_ucomiss__xmm0___xmm1.exit ]
  %5094 = add i64 %.pre122, -16
  %5095 = add i64 %5093, 4
  store i64 %5095, i64* %3, align 8
  %5096 = inttoptr i64 %5094 to i64*
  %5097 = load i64, i64* %5096, align 8
  store i64 %5097, i64* %RAX.i34, align 8
  %5098 = add i64 %5097, 328
  %5099 = add i64 %5093, 11
  store i64 %5099, i64* %3, align 8
  %5100 = inttoptr i64 %5098 to i64*
  %5101 = load i64, i64* %5100, align 8
  store i64 %5101, i64* %RAX.i34, align 8
  %5102 = add i64 %.pre122, -136
  %5103 = add i64 %5093, 18
  store i64 %5103, i64* %3, align 8
  %5104 = inttoptr i64 %5102 to i32*
  %5105 = load i32, i32* %5104, align 4
  %5106 = sext i32 %5105 to i64
  store i64 %5106, i64* %RCX.i100, align 8
  %5107 = shl nsw i64 %5106, 3
  %5108 = add i64 %5107, %5101
  %5109 = add i64 %5093, 22
  store i64 %5109, i64* %3, align 8
  %5110 = inttoptr i64 %5108 to i64*
  %5111 = load i64, i64* %5110, align 8
  store i64 %5111, i64* %RAX.i34, align 8
  %5112 = add i64 %.pre122, -128
  %5113 = add i64 %5093, 26
  store i64 %5113, i64* %3, align 8
  %5114 = inttoptr i64 %5112 to i32*
  %5115 = load i32, i32* %5114, align 4
  %5116 = sext i32 %5115 to i64
  store i64 %5116, i64* %RCX.i100, align 8
  %5117 = shl nsw i64 %5116, 2
  %5118 = add i64 %5117, %5111
  %5119 = add i64 %5093, 31
  store i64 %5119, i64* %3, align 8
  %5120 = load <2 x i32>, <2 x i32>* %1479, align 1
  %5121 = load <2 x i32>, <2 x i32>* %1480, align 1
  %5122 = inttoptr i64 %5118 to i32*
  %5123 = load i32, i32* %5122, align 4
  %5124 = sitofp i32 %5123 to float
  store float %5124, float* %288, align 1
  %5125 = extractelement <2 x i32> %5120, i32 1
  store i32 %5125, i32* %343, align 1
  %5126 = extractelement <2 x i32> %5121, i32 0
  store i32 %5126, i32* %147, align 1
  %5127 = extractelement <2 x i32> %5121, i32 1
  store i32 %5127, i32* %344, align 1
  %5128 = add i64 %.pre122, -112
  %5129 = add i64 %5093, 35
  store i64 %5129, i64* %3, align 8
  %5130 = inttoptr i64 %5128 to i64*
  %5131 = load i64, i64* %5130, align 8
  store i64 %5131, i64* %RAX.i34, align 8
  %5132 = add i64 %.pre122, -124
  %5133 = add i64 %5093, 39
  store i64 %5133, i64* %3, align 8
  %5134 = inttoptr i64 %5132 to i32*
  %5135 = load i32, i32* %5134, align 4
  %5136 = sext i32 %5135 to i64
  store i64 %5136, i64* %RCX.i100, align 8
  %5137 = shl nsw i64 %5136, 3
  %5138 = add i64 %5137, %5131
  %5139 = add i64 %5093, 43
  store i64 %5139, i64* %3, align 8
  %5140 = inttoptr i64 %5138 to i64*
  %5141 = load i64, i64* %5140, align 8
  store i64 %5141, i64* %RAX.i34, align 8
  %5142 = add i64 %5093, 50
  store i64 %5142, i64* %3, align 8
  %5143 = load i32, i32* %5104, align 4
  %5144 = sext i32 %5143 to i64
  store i64 %5144, i64* %RCX.i100, align 8
  %5145 = shl nsw i64 %5144, 2
  %5146 = add i64 %5145, %5141
  %5147 = add i64 %5093, 55
  store i64 %5147, i64* %3, align 8
  %5148 = load <2 x float>, <2 x float>* %300, align 1
  %5149 = load <2 x i32>, <2 x i32>* %1480, align 1
  %5150 = inttoptr i64 %5146 to float*
  %5151 = load float, float* %5150, align 4
  %5152 = extractelement <2 x float> %5148, i32 0
  %5153 = fmul float %5152, %5151
  store float %5153, float* %288, align 1
  %5154 = bitcast <2 x float> %5148 to <2 x i32>
  %5155 = extractelement <2 x i32> %5154, i32 1
  store i32 %5155, i32* %343, align 1
  %5156 = extractelement <2 x i32> %5149, i32 0
  store i32 %5156, i32* %147, align 1
  %5157 = extractelement <2 x i32> %5149, i32 1
  store i32 %5157, i32* %344, align 1
  %5158 = add i64 %.pre122, -64
  %5159 = add i64 %5093, 59
  store i64 %5159, i64* %3, align 8
  %5160 = inttoptr i64 %5158 to i64*
  %5161 = load i64, i64* %5160, align 8
  store i64 %5161, i64* %RAX.i34, align 8
  %5162 = load i64, i64* %RBP.i, align 8
  %5163 = add i64 %5162, -148
  %5164 = add i64 %5093, 66
  store i64 %5164, i64* %3, align 8
  %5165 = inttoptr i64 %5163 to i32*
  %5166 = load i32, i32* %5165, align 4
  %5167 = sext i32 %5166 to i64
  store i64 %5167, i64* %RCX.i100, align 8
  %5168 = shl nsw i64 %5167, 3
  %5169 = add i64 %5168, %5161
  %5170 = add i64 %5093, 70
  store i64 %5170, i64* %3, align 8
  %5171 = inttoptr i64 %5169 to i64*
  %5172 = load i64, i64* %5171, align 8
  store i64 %5172, i64* %RAX.i34, align 8
  %5173 = add i64 %5162, -128
  %5174 = add i64 %5093, 74
  store i64 %5174, i64* %3, align 8
  %5175 = inttoptr i64 %5173 to i32*
  %5176 = load i32, i32* %5175, align 4
  %5177 = sext i32 %5176 to i64
  store i64 %5177, i64* %RCX.i100, align 8
  %5178 = shl nsw i64 %5177, 2
  %5179 = add i64 %5178, %5172
  %5180 = add i64 %5093, 79
  store i64 %5180, i64* %3, align 8
  %5181 = load <2 x i32>, <2 x i32>* %1481, align 1
  %5182 = load <2 x i32>, <2 x i32>* %1482, align 1
  %5183 = inttoptr i64 %5179 to i32*
  %5184 = load i32, i32* %5183, align 4
  %5185 = sitofp i32 %5184 to float
  store float %5185, float* %1470, align 1
  %5186 = extractelement <2 x i32> %5181, i32 1
  store i32 %5186, i32* %1483, align 1
  %5187 = extractelement <2 x i32> %5182, i32 0
  store i32 %5187, i32* %1484, align 1
  %5188 = extractelement <2 x i32> %5182, i32 1
  store i32 %5188, i32* %1485, align 1
  %5189 = load <2 x float>, <2 x float>* %1478, align 1
  %5190 = load <2 x i32>, <2 x i32>* %1482, align 1
  %5191 = load <2 x float>, <2 x float>* %300, align 1
  %5192 = extractelement <2 x float> %5189, i32 0
  %5193 = extractelement <2 x float> %5191, i32 0
  %5194 = fadd float %5192, %5193
  store float %5194, float* %1470, align 1
  %5195 = bitcast <2 x float> %5189 to <2 x i32>
  %5196 = extractelement <2 x i32> %5195, i32 1
  store i32 %5196, i32* %1483, align 1
  %5197 = extractelement <2 x i32> %5190, i32 0
  store i32 %5197, i32* %1484, align 1
  %5198 = extractelement <2 x i32> %5190, i32 1
  store i32 %5198, i32* %1485, align 1
  %5199 = load <2 x float>, <2 x float>* %1478, align 1
  %5200 = extractelement <2 x float> %5199, i32 0
  %5201 = tail call float @llvm.trunc.f32(float %5200)
  %5202 = tail call float @llvm.fabs.f32(float %5201)
  %5203 = fcmp ogt float %5202, 0x41E0000000000000
  %5204 = fptosi float %5201 to i32
  %5205 = zext i32 %5204 to i64
  %5206 = select i1 %5203, i64 2147483648, i64 %5205
  store i64 %5206, i64* %RDX.i2857, align 8
  %5207 = trunc i64 %5206 to i32
  %5208 = add i64 %5093, 90
  store i64 %5208, i64* %3, align 8
  store i32 %5207, i32* %5183, align 4
  %5209 = load i64, i64* %RBP.i, align 8
  %5210 = add i64 %5209, -136
  %5211 = load i64, i64* %3, align 8
  %5212 = add i64 %5211, 6
  store i64 %5212, i64* %3, align 8
  %5213 = inttoptr i64 %5210 to i32*
  %5214 = load i32, i32* %5213, align 4
  %5215 = add i32 %5214, 1
  %5216 = zext i32 %5215 to i64
  store i64 %5216, i64* %RAX.i34, align 8
  %5217 = icmp eq i32 %5214, -1
  %5218 = icmp eq i32 %5215, 0
  %5219 = or i1 %5217, %5218
  %5220 = zext i1 %5219 to i8
  store i8 %5220, i8* %14, align 1
  %5221 = and i32 %5215, 255
  %5222 = tail call i32 @llvm.ctpop.i32(i32 %5221)
  %5223 = trunc i32 %5222 to i8
  %5224 = and i8 %5223, 1
  %5225 = xor i8 %5224, 1
  store i8 %5225, i8* %21, align 1
  %5226 = xor i32 %5215, %5214
  %5227 = lshr i32 %5226, 4
  %5228 = trunc i32 %5227 to i8
  %5229 = and i8 %5228, 1
  store i8 %5229, i8* %26, align 1
  %5230 = zext i1 %5218 to i8
  store i8 %5230, i8* %29, align 1
  %5231 = lshr i32 %5215, 31
  %5232 = trunc i32 %5231 to i8
  store i8 %5232, i8* %32, align 1
  %5233 = lshr i32 %5214, 31
  %5234 = xor i32 %5231, %5233
  %5235 = add nuw nsw i32 %5234, %5231
  %5236 = icmp eq i32 %5235, 2
  %5237 = zext i1 %5236 to i8
  store i8 %5237, i8* %38, align 1
  %5238 = add i64 %5211, 15
  store i64 %5238, i64* %3, align 8
  store i32 %5215, i32* %5213, align 4
  %5239 = load i64, i64* %3, align 8
  %5240 = add i64 %5239, -230
  store i64 %5240, i64* %3, align 8
  br label %block_.L_40f255

block_.L_40f340.loopexit:                         ; preds = %block_.L_40f255
  br label %block_.L_40f340

block_.L_40f340:                                  ; preds = %block_.L_40f340.loopexit, %block_40f2b3
  %.pre121 = phi i64 [ %.pre121.pre, %block_40f2b3 ], [ %4927, %block_.L_40f340.loopexit ]
  %5241 = phi i64 [ %5092, %block_40f2b3 ], [ %4960, %block_.L_40f340.loopexit ]
  %MEMORY.20 = phi %struct.Memory* [ %5015, %block_40f2b3 ], [ %MEMORY.18, %block_.L_40f340.loopexit ]
  %5242 = add i64 %5241, 5
  store i64 %5242, i64* %3, align 8
  br label %block_.L_40f345

block_.L_40f345:                                  ; preds = %block_.L_40f04a, %block_.L_40f340
  %5243 = phi i64 [ %4207, %block_.L_40f04a ], [ %.pre121, %block_.L_40f340 ]
  %5244 = phi i64 [ %4247, %block_.L_40f04a ], [ %5242, %block_.L_40f340 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.13, %block_.L_40f04a ], [ %MEMORY.20, %block_.L_40f340 ]
  %5245 = add i64 %5243, -128
  %5246 = add i64 %5244, 8
  store i64 %5246, i64* %3, align 8
  %5247 = inttoptr i64 %5245 to i32*
  %5248 = load i32, i32* %5247, align 4
  %5249 = add i32 %5248, 1
  %5250 = zext i32 %5249 to i64
  store i64 %5250, i64* %RAX.i34, align 8
  %5251 = icmp eq i32 %5248, -1
  %5252 = icmp eq i32 %5249, 0
  %5253 = or i1 %5251, %5252
  %5254 = zext i1 %5253 to i8
  store i8 %5254, i8* %14, align 1
  %5255 = and i32 %5249, 255
  %5256 = tail call i32 @llvm.ctpop.i32(i32 %5255)
  %5257 = trunc i32 %5256 to i8
  %5258 = and i8 %5257, 1
  %5259 = xor i8 %5258, 1
  store i8 %5259, i8* %21, align 1
  %5260 = xor i32 %5249, %5248
  %5261 = lshr i32 %5260, 4
  %5262 = trunc i32 %5261 to i8
  %5263 = and i8 %5262, 1
  store i8 %5263, i8* %26, align 1
  %5264 = zext i1 %5252 to i8
  store i8 %5264, i8* %29, align 1
  %5265 = lshr i32 %5249, 31
  %5266 = trunc i32 %5265 to i8
  store i8 %5266, i8* %32, align 1
  %5267 = lshr i32 %5248, 31
  %5268 = xor i32 %5265, %5267
  %5269 = add nuw nsw i32 %5268, %5265
  %5270 = icmp eq i32 %5269, 2
  %5271 = zext i1 %5270 to i8
  store i8 %5271, i8* %38, align 1
  %5272 = add i64 %5244, 14
  store i64 %5272, i64* %3, align 8
  store i32 %5249, i32* %5247, align 4
  %5273 = load i64, i64* %3, align 8
  %5274 = add i64 %5273, -2328
  store i64 %5274, i64* %3, align 8
  br label %block_.L_40ea3b

block_.L_40f358:                                  ; preds = %block_.L_40ea3b
  %5275 = add i64 %1702, -48
  %5276 = add i64 %1742, 4
  store i64 %5276, i64* %3, align 8
  %5277 = inttoptr i64 %5275 to i64*
  %5278 = load i64, i64* %5277, align 8
  store i64 %5278, i64* %RAX.i34, align 8
  %5279 = add i64 %1702, -148
  %5280 = add i64 %1742, 11
  store i64 %5280, i64* %3, align 8
  %5281 = inttoptr i64 %5279 to i32*
  %5282 = load i32, i32* %5281, align 4
  %5283 = sext i32 %5282 to i64
  store i64 %5283, i64* %RCX.i100, align 8
  %5284 = shl nsw i64 %5283, 3
  %5285 = add i64 %5284, %5278
  %5286 = add i64 %1742, 15
  store i64 %5286, i64* %3, align 8
  %5287 = inttoptr i64 %5285 to i64*
  %5288 = load i64, i64* %5287, align 8
  store i64 %5288, i64* %RAX.i34, align 8
  %5289 = add i64 %5288, 16
  %5290 = add i64 %1742, 22
  store i64 %5290, i64* %3, align 8
  %5291 = inttoptr i64 %5289 to i32*
  store i32 -987654321, i32* %5291, align 4
  %5292 = load i64, i64* %RBP.i, align 8
  %5293 = add i64 %5292, -80
  %5294 = load i64, i64* %3, align 8
  %5295 = add i64 %5294, 4
  store i64 %5295, i64* %3, align 8
  %5296 = inttoptr i64 %5293 to i64*
  %5297 = load i64, i64* %5296, align 8
  store i64 %5297, i64* %RAX.i34, align 8
  %5298 = add i64 %5292, -124
  %5299 = add i64 %5294, 8
  store i64 %5299, i64* %3, align 8
  %5300 = inttoptr i64 %5298 to i32*
  %5301 = load i32, i32* %5300, align 4
  %5302 = sext i32 %5301 to i64
  store i64 %5302, i64* %RCX.i100, align 8
  %5303 = shl nsw i64 %5302, 3
  %5304 = add i64 %5303, %5297
  %5305 = add i64 %5294, 12
  store i64 %5305, i64* %3, align 8
  %5306 = inttoptr i64 %5304 to i64*
  %5307 = load i64, i64* %5306, align 8
  store i64 %5307, i64* %RAX.i34, align 8
  %5308 = add i64 %5307, 4
  %5309 = add i64 %5294, 16
  store i64 %5309, i64* %3, align 8
  %5310 = inttoptr i64 %5308 to i8*
  store i8 0, i8* %5310, align 1
  %5311 = load i64, i64* %RBP.i, align 8
  %5312 = add i64 %5311, -48
  %5313 = load i64, i64* %3, align 8
  %5314 = add i64 %5313, 4
  store i64 %5314, i64* %3, align 8
  %5315 = inttoptr i64 %5312 to i64*
  %5316 = load i64, i64* %5315, align 8
  store i64 %5316, i64* %RAX.i34, align 8
  %5317 = add i64 %5311, -152
  %5318 = add i64 %5313, 11
  store i64 %5318, i64* %3, align 8
  %5319 = inttoptr i64 %5317 to i32*
  %5320 = load i32, i32* %5319, align 4
  %5321 = sext i32 %5320 to i64
  store i64 %5321, i64* %RCX.i100, align 8
  %5322 = shl nsw i64 %5321, 3
  %5323 = add i64 %5322, %5316
  %5324 = add i64 %5313, 15
  store i64 %5324, i64* %3, align 8
  %5325 = inttoptr i64 %5323 to i64*
  %5326 = load i64, i64* %5325, align 8
  store i64 %5326, i64* %RAX.i34, align 8
  %5327 = add i64 %5326, 16
  %5328 = add i64 %5313, 22
  store i64 %5328, i64* %3, align 8
  %5329 = inttoptr i64 %5327 to i32*
  %5330 = load i32, i32* %5329, align 4
  %5331 = add i32 %5330, 987654321
  %5332 = icmp ult i32 %5330, -987654321
  %5333 = zext i1 %5332 to i8
  store i8 %5333, i8* %14, align 1
  %5334 = and i32 %5331, 255
  %5335 = tail call i32 @llvm.ctpop.i32(i32 %5334)
  %5336 = trunc i32 %5335 to i8
  %5337 = and i8 %5336, 1
  %5338 = xor i8 %5337, 1
  store i8 %5338, i8* %21, align 1
  %5339 = xor i32 %5331, %5330
  %5340 = lshr i32 %5339, 4
  %5341 = trunc i32 %5340 to i8
  %5342 = and i8 %5341, 1
  store i8 %5342, i8* %26, align 1
  %5343 = icmp eq i32 %5331, 0
  %5344 = zext i1 %5343 to i8
  store i8 %5344, i8* %29, align 1
  %5345 = lshr i32 %5331, 31
  %5346 = trunc i32 %5345 to i8
  store i8 %5346, i8* %32, align 1
  %5347 = lshr i32 %5330, 31
  %5348 = xor i32 %5347, 1
  %5349 = xor i32 %5345, %5347
  %5350 = add nuw nsw i32 %5349, %5348
  %5351 = icmp eq i32 %5350, 2
  %5352 = zext i1 %5351 to i8
  store i8 %5352, i8* %38, align 1
  %5353 = icmp ne i8 %5346, 0
  %5354 = xor i1 %5353, %5351
  %5355 = or i1 %5343, %5354
  %.v148 = select i1 %5355, i64 159, i64 28
  %5356 = add i64 %5313, %.v148
  store i64 %5356, i64* %3, align 8
  br i1 %5355, label %block_.L_40f41d, label %block_40f39a

block_40f39a:                                     ; preds = %block_.L_40f358
  %5357 = add i64 %5311, -16
  %5358 = add i64 %5356, 4
  store i64 %5358, i64* %3, align 8
  %5359 = inttoptr i64 %5357 to i64*
  %5360 = load i64, i64* %5359, align 8
  store i64 %5360, i64* %RAX.i34, align 8
  %5361 = add i64 %5360, 340
  %5362 = add i64 %5356, 14
  store i64 %5362, i64* %3, align 8
  %5363 = inttoptr i64 %5361 to i32*
  %5364 = load i32, i32* %5363, align 4
  %5365 = add i32 %5364, 987654321
  %5366 = icmp ult i32 %5364, -987654321
  %5367 = zext i1 %5366 to i8
  store i8 %5367, i8* %14, align 1
  %5368 = and i32 %5365, 255
  %5369 = tail call i32 @llvm.ctpop.i32(i32 %5368)
  %5370 = trunc i32 %5369 to i8
  %5371 = and i8 %5370, 1
  %5372 = xor i8 %5371, 1
  store i8 %5372, i8* %21, align 1
  %5373 = xor i32 %5365, %5364
  %5374 = lshr i32 %5373, 4
  %5375 = trunc i32 %5374 to i8
  %5376 = and i8 %5375, 1
  store i8 %5376, i8* %26, align 1
  %5377 = icmp eq i32 %5365, 0
  %5378 = zext i1 %5377 to i8
  store i8 %5378, i8* %29, align 1
  %5379 = lshr i32 %5365, 31
  %5380 = trunc i32 %5379 to i8
  store i8 %5380, i8* %32, align 1
  %5381 = lshr i32 %5364, 31
  %5382 = xor i32 %5381, 1
  %5383 = xor i32 %5379, %5381
  %5384 = add nuw nsw i32 %5383, %5382
  %5385 = icmp eq i32 %5384, 2
  %5386 = zext i1 %5385 to i8
  store i8 %5386, i8* %38, align 1
  %5387 = icmp ne i8 %5380, 0
  %5388 = xor i1 %5387, %5385
  %5389 = or i1 %5377, %5388
  %.v149 = select i1 %5389, i64 131, i64 20
  %5390 = add i64 %5356, %.v149
  store i64 %5390, i64* %3, align 8
  br i1 %5389, label %block_.L_40f41d, label %block_40f3ae

block_40f3ae:                                     ; preds = %block_40f39a
  %5391 = add i64 %5390, 4
  store i64 %5391, i64* %3, align 8
  %5392 = load i64, i64* %5315, align 8
  store i64 %5392, i64* %RAX.i34, align 8
  %5393 = add i64 %5390, 11
  store i64 %5393, i64* %3, align 8
  %5394 = load i32, i32* %5319, align 4
  %5395 = sext i32 %5394 to i64
  store i64 %5395, i64* %RCX.i100, align 8
  %5396 = shl nsw i64 %5395, 3
  %5397 = add i64 %5396, %5392
  %5398 = add i64 %5390, 15
  store i64 %5398, i64* %3, align 8
  %5399 = inttoptr i64 %5397 to i64*
  %5400 = load i64, i64* %5399, align 8
  store i64 %5400, i64* %RAX.i34, align 8
  %5401 = add i64 %5400, 16
  %5402 = add i64 %5390, 20
  store i64 %5402, i64* %3, align 8
  %5403 = load <2 x i32>, <2 x i32>* %1479, align 1
  %5404 = load <2 x i32>, <2 x i32>* %1480, align 1
  %5405 = inttoptr i64 %5401 to i32*
  %5406 = load i32, i32* %5405, align 4
  %5407 = sitofp i32 %5406 to float
  store float %5407, float* %288, align 1
  %5408 = extractelement <2 x i32> %5403, i32 1
  store i32 %5408, i32* %343, align 1
  %5409 = extractelement <2 x i32> %5404, i32 0
  store i32 %5409, i32* %147, align 1
  %5410 = extractelement <2 x i32> %5404, i32 1
  store i32 %5410, i32* %344, align 1
  %5411 = add i64 %5390, 24
  store i64 %5411, i64* %3, align 8
  %5412 = load i64, i64* %5359, align 8
  store i64 %5412, i64* %RAX.i34, align 8
  %5413 = add i64 %5412, 340
  %5414 = add i64 %5390, 32
  store i64 %5414, i64* %3, align 8
  %5415 = load <2 x i32>, <2 x i32>* %1481, align 1
  %5416 = load <2 x i32>, <2 x i32>* %1482, align 1
  %5417 = inttoptr i64 %5413 to i32*
  %5418 = load i32, i32* %5417, align 4
  %5419 = sitofp i32 %5418 to float
  store float %5419, float* %1470, align 1
  %5420 = extractelement <2 x i32> %5415, i32 1
  store i32 %5420, i32* %1483, align 1
  %5421 = extractelement <2 x i32> %5416, i32 0
  store i32 %5421, i32* %1484, align 1
  %5422 = extractelement <2 x i32> %5416, i32 1
  store i32 %5422, i32* %1485, align 1
  %5423 = add i64 %5311, -120
  %5424 = add i64 %5390, 36
  store i64 %5424, i64* %3, align 8
  %5425 = inttoptr i64 %5423 to i64*
  %5426 = load i64, i64* %5425, align 8
  store i64 %5426, i64* %RAX.i34, align 8
  %5427 = add i64 %5311, -124
  %5428 = add i64 %5390, 40
  store i64 %5428, i64* %3, align 8
  %5429 = inttoptr i64 %5427 to i32*
  %5430 = load i32, i32* %5429, align 4
  %5431 = sext i32 %5430 to i64
  store i64 %5431, i64* %RCX.i100, align 8
  %5432 = shl nsw i64 %5431, 2
  %5433 = add i64 %5432, %5426
  %5434 = add i64 %5390, 45
  store i64 %5434, i64* %3, align 8
  %5435 = load <2 x float>, <2 x float>* %1478, align 1
  %5436 = load <2 x i32>, <2 x i32>* %1482, align 1
  %5437 = inttoptr i64 %5433 to float*
  %5438 = load float, float* %5437, align 4
  %5439 = extractelement <2 x float> %5435, i32 0
  %5440 = fmul float %5439, %5438
  store float %5440, float* %1470, align 1
  %5441 = bitcast <2 x float> %5435 to <2 x i32>
  %5442 = extractelement <2 x i32> %5441, i32 1
  store i32 %5442, i32* %1483, align 1
  %5443 = extractelement <2 x i32> %5436, i32 0
  store i32 %5443, i32* %1484, align 1
  %5444 = extractelement <2 x i32> %5436, i32 1
  store i32 %5444, i32* %1485, align 1
  %5445 = load <2 x float>, <2 x float>* %300, align 1
  %5446 = load <2 x i32>, <2 x i32>* %1480, align 1
  %5447 = load <2 x float>, <2 x float>* %1478, align 1
  %5448 = extractelement <2 x float> %5445, i32 0
  %5449 = extractelement <2 x float> %5447, i32 0
  %5450 = fadd float %5448, %5449
  store float %5450, float* %288, align 1
  %5451 = bitcast <2 x float> %5445 to <2 x i32>
  %5452 = extractelement <2 x i32> %5451, i32 1
  store i32 %5452, i32* %343, align 1
  %5453 = extractelement <2 x i32> %5446, i32 0
  store i32 %5453, i32* %147, align 1
  %5454 = extractelement <2 x i32> %5446, i32 1
  store i32 %5454, i32* %344, align 1
  %5455 = load <2 x float>, <2 x float>* %300, align 1
  %5456 = extractelement <2 x float> %5455, i32 0
  %5457 = tail call float @llvm.trunc.f32(float %5456)
  %5458 = tail call float @llvm.fabs.f32(float %5457)
  %5459 = fcmp ogt float %5458, 0x41E0000000000000
  %5460 = fptosi float %5457 to i32
  %5461 = zext i32 %5460 to i64
  %5462 = select i1 %5459, i64 2147483648, i64 %5461
  store i64 %5462, i64* %RDX.i2857, align 8
  %5463 = load i64, i64* %RBP.i, align 8
  %5464 = add i64 %5463, -140
  %5465 = trunc i64 %5462 to i32
  %5466 = add i64 %5390, 59
  store i64 %5466, i64* %3, align 8
  %5467 = inttoptr i64 %5464 to i32*
  store i32 %5465, i32* %5467, align 4
  %5468 = load i32, i32* %EDX.i2852, align 4
  %5469 = load i64, i64* %3, align 8
  %5470 = add i32 %5468, 987654321
  %5471 = icmp ult i32 %5468, -987654321
  %5472 = zext i1 %5471 to i8
  store i8 %5472, i8* %14, align 1
  %5473 = and i32 %5470, 255
  %5474 = tail call i32 @llvm.ctpop.i32(i32 %5473)
  %5475 = trunc i32 %5474 to i8
  %5476 = and i8 %5475, 1
  %5477 = xor i8 %5476, 1
  store i8 %5477, i8* %21, align 1
  %5478 = xor i32 %5470, %5468
  %5479 = lshr i32 %5478, 4
  %5480 = trunc i32 %5479 to i8
  %5481 = and i8 %5480, 1
  store i8 %5481, i8* %26, align 1
  %5482 = icmp eq i32 %5470, 0
  %5483 = zext i1 %5482 to i8
  store i8 %5483, i8* %29, align 1
  %5484 = lshr i32 %5470, 31
  %5485 = trunc i32 %5484 to i8
  store i8 %5485, i8* %32, align 1
  %5486 = lshr i32 %5468, 31
  %5487 = xor i32 %5486, 1
  %5488 = xor i32 %5484, %5486
  %5489 = add nuw nsw i32 %5488, %5487
  %5490 = icmp eq i32 %5489, 2
  %5491 = zext i1 %5490 to i8
  store i8 %5491, i8* %38, align 1
  %5492 = icmp ne i8 %5485, 0
  %5493 = xor i1 %5492, %5490
  %5494 = or i1 %5482, %5493
  %.v150 = select i1 %5494, i64 52, i64 12
  %5495 = add i64 %5469, %.v150
  store i64 %5495, i64* %3, align 8
  br i1 %5494, label %block_.L_40f41d, label %block_40f3f5

block_40f3f5:                                     ; preds = %block_40f3ae
  %5496 = load i64, i64* %RBP.i, align 8
  %5497 = add i64 %5496, -140
  %5498 = add i64 %5495, 6
  store i64 %5498, i64* %3, align 8
  %5499 = inttoptr i64 %5497 to i32*
  %5500 = load i32, i32* %5499, align 4
  %5501 = zext i32 %5500 to i64
  store i64 %5501, i64* %RAX.i34, align 8
  %5502 = add i64 %5496, -48
  %5503 = add i64 %5495, 10
  store i64 %5503, i64* %3, align 8
  %5504 = inttoptr i64 %5502 to i64*
  %5505 = load i64, i64* %5504, align 8
  store i64 %5505, i64* %RCX.i100, align 8
  %5506 = add i64 %5496, -148
  %5507 = add i64 %5495, 17
  store i64 %5507, i64* %3, align 8
  %5508 = inttoptr i64 %5506 to i32*
  %5509 = load i32, i32* %5508, align 4
  %5510 = sext i32 %5509 to i64
  store i64 %5510, i64* %RDX.i2857, align 8
  %5511 = shl nsw i64 %5510, 3
  %5512 = add i64 %5511, %5505
  %5513 = add i64 %5495, 21
  store i64 %5513, i64* %3, align 8
  %5514 = inttoptr i64 %5512 to i64*
  %5515 = load i64, i64* %5514, align 8
  store i64 %5515, i64* %RCX.i100, align 8
  %5516 = add i64 %5515, 16
  %5517 = add i64 %5495, 24
  store i64 %5517, i64* %3, align 8
  %5518 = inttoptr i64 %5516 to i32*
  store i32 %5500, i32* %5518, align 4
  %5519 = load i64, i64* %RBP.i, align 8
  %5520 = add i64 %5519, -80
  %5521 = load i64, i64* %3, align 8
  %5522 = add i64 %5521, 4
  store i64 %5522, i64* %3, align 8
  %5523 = inttoptr i64 %5520 to i64*
  %5524 = load i64, i64* %5523, align 8
  store i64 %5524, i64* %RCX.i100, align 8
  %5525 = add i64 %5519, -124
  %5526 = add i64 %5521, 8
  store i64 %5526, i64* %3, align 8
  %5527 = inttoptr i64 %5525 to i32*
  %5528 = load i32, i32* %5527, align 4
  %5529 = sext i32 %5528 to i64
  store i64 %5529, i64* %RDX.i2857, align 8
  %5530 = shl nsw i64 %5529, 3
  %5531 = add i64 %5530, %5524
  %5532 = add i64 %5521, 12
  store i64 %5532, i64* %3, align 8
  %5533 = inttoptr i64 %5531 to i64*
  %5534 = load i64, i64* %5533, align 8
  store i64 %5534, i64* %RCX.i100, align 8
  %5535 = add i64 %5534, 4
  %5536 = add i64 %5521, 16
  store i64 %5536, i64* %3, align 8
  %5537 = inttoptr i64 %5535 to i8*
  store i8 5, i8* %5537, align 1
  %.pre124 = load i64, i64* %3, align 8
  br label %block_.L_40f41d

block_.L_40f41d:                                  ; preds = %block_40f3f5, %block_40f3ae, %block_40f39a, %block_.L_40f358
  %5538 = phi i64 [ %.pre124, %block_40f3f5 ], [ %5495, %block_40f3ae ], [ %5390, %block_40f39a ], [ %5356, %block_.L_40f358 ]
  %5539 = load i64, i64* %RBP.i, align 8
  %5540 = add i64 %5539, -48
  %5541 = add i64 %5538, 4
  store i64 %5541, i64* %3, align 8
  %5542 = inttoptr i64 %5540 to i64*
  %5543 = load i64, i64* %5542, align 8
  store i64 %5543, i64* %RAX.i34, align 8
  %5544 = add i64 %5539, -148
  %5545 = add i64 %5538, 11
  store i64 %5545, i64* %3, align 8
  %5546 = inttoptr i64 %5544 to i32*
  %5547 = load i32, i32* %5546, align 4
  %5548 = sext i32 %5547 to i64
  store i64 %5548, i64* %RCX.i100, align 8
  %5549 = shl nsw i64 %5548, 3
  %5550 = add i64 %5549, %5543
  %5551 = add i64 %5538, 15
  store i64 %5551, i64* %3, align 8
  %5552 = inttoptr i64 %5550 to i64*
  %5553 = load i64, i64* %5552, align 8
  store i64 %5553, i64* %RAX.i34, align 8
  %5554 = add i64 %5553, 4
  %5555 = add i64 %5538, 22
  store i64 %5555, i64* %3, align 8
  %5556 = inttoptr i64 %5554 to i32*
  store i32 -987654321, i32* %5556, align 4
  %5557 = load i64, i64* %RBP.i, align 8
  %5558 = add i64 %5557, -80
  %5559 = load i64, i64* %3, align 8
  %5560 = add i64 %5559, 4
  store i64 %5560, i64* %3, align 8
  %5561 = inttoptr i64 %5558 to i64*
  %5562 = load i64, i64* %5561, align 8
  store i64 %5562, i64* %RAX.i34, align 8
  %5563 = add i64 %5557, -124
  %5564 = add i64 %5559, 8
  store i64 %5564, i64* %3, align 8
  %5565 = inttoptr i64 %5563 to i32*
  %5566 = load i32, i32* %5565, align 4
  %5567 = sext i32 %5566 to i64
  store i64 %5567, i64* %RCX.i100, align 8
  %5568 = shl nsw i64 %5567, 3
  %5569 = add i64 %5568, %5562
  %5570 = add i64 %5559, 12
  store i64 %5570, i64* %3, align 8
  %5571 = inttoptr i64 %5569 to i64*
  %5572 = load i64, i64* %5571, align 8
  store i64 %5572, i64* %RAX.i34, align 8
  %5573 = add i64 %5572, 1
  %5574 = add i64 %5559, 16
  store i64 %5574, i64* %3, align 8
  %5575 = inttoptr i64 %5573 to i8*
  store i8 0, i8* %5575, align 1
  %5576 = load i64, i64* %RBP.i, align 8
  %5577 = add i64 %5576, -128
  %5578 = load i64, i64* %3, align 8
  %5579 = add i64 %5578, 7
  store i64 %5579, i64* %3, align 8
  %5580 = inttoptr i64 %5577 to i32*
  store i32 1, i32* %5580, align 4
  %.pre125 = load i64, i64* %3, align 8
  br label %block_.L_40f44a

block_.L_40f44a:                                  ; preds = %block_.L_40f509, %block_.L_40f41d
  %5581 = phi i64 [ %5896, %block_.L_40f509 ], [ %.pre125, %block_.L_40f41d ]
  %5582 = load i64, i64* %RBP.i, align 8
  %5583 = add i64 %5582, -128
  %5584 = add i64 %5581, 3
  store i64 %5584, i64* %3, align 8
  %5585 = inttoptr i64 %5583 to i32*
  %5586 = load i32, i32* %5585, align 4
  %5587 = zext i32 %5586 to i64
  store i64 %5587, i64* %RAX.i34, align 8
  %5588 = add i64 %5582, -16
  %5589 = add i64 %5581, 7
  store i64 %5589, i64* %3, align 8
  %5590 = inttoptr i64 %5588 to i64*
  %5591 = load i64, i64* %5590, align 8
  store i64 %5591, i64* %RCX.i100, align 8
  %5592 = add i64 %5591, 136
  %5593 = add i64 %5581, 13
  store i64 %5593, i64* %3, align 8
  %5594 = inttoptr i64 %5592 to i32*
  %5595 = load i32, i32* %5594, align 4
  %5596 = sub i32 %5586, %5595
  %5597 = icmp ult i32 %5586, %5595
  %5598 = zext i1 %5597 to i8
  store i8 %5598, i8* %14, align 1
  %5599 = and i32 %5596, 255
  %5600 = tail call i32 @llvm.ctpop.i32(i32 %5599)
  %5601 = trunc i32 %5600 to i8
  %5602 = and i8 %5601, 1
  %5603 = xor i8 %5602, 1
  store i8 %5603, i8* %21, align 1
  %5604 = xor i32 %5595, %5586
  %5605 = xor i32 %5604, %5596
  %5606 = lshr i32 %5605, 4
  %5607 = trunc i32 %5606 to i8
  %5608 = and i8 %5607, 1
  store i8 %5608, i8* %26, align 1
  %5609 = icmp eq i32 %5596, 0
  %5610 = zext i1 %5609 to i8
  store i8 %5610, i8* %29, align 1
  %5611 = lshr i32 %5596, 31
  %5612 = trunc i32 %5611 to i8
  store i8 %5612, i8* %32, align 1
  %5613 = lshr i32 %5586, 31
  %5614 = lshr i32 %5595, 31
  %5615 = xor i32 %5614, %5613
  %5616 = xor i32 %5611, %5613
  %5617 = add nuw nsw i32 %5616, %5615
  %5618 = icmp eq i32 %5617, 2
  %5619 = zext i1 %5618 to i8
  store i8 %5619, i8* %38, align 1
  %5620 = icmp ne i8 %5612, 0
  %5621 = xor i1 %5620, %5618
  %.demorgan142 = or i1 %5609, %5621
  %.v151 = select i1 %.demorgan142, i64 19, i64 210
  %5622 = add i64 %5581, %.v151
  store i64 %5622, i64* %3, align 8
  br i1 %.demorgan142, label %block_40f45d, label %block_.L_40f51c

block_40f45d:                                     ; preds = %block_.L_40f44a
  %5623 = add i64 %5582, -56
  %5624 = add i64 %5622, 4
  store i64 %5624, i64* %3, align 8
  %5625 = inttoptr i64 %5623 to i64*
  %5626 = load i64, i64* %5625, align 8
  store i64 %5626, i64* %RAX.i34, align 8
  %5627 = add i64 %5582, -148
  %5628 = add i64 %5622, 11
  store i64 %5628, i64* %3, align 8
  %5629 = inttoptr i64 %5627 to i32*
  %5630 = load i32, i32* %5629, align 4
  %5631 = sext i32 %5630 to i64
  store i64 %5631, i64* %RCX.i100, align 8
  %5632 = shl nsw i64 %5631, 3
  %5633 = add i64 %5632, %5626
  %5634 = add i64 %5622, 15
  store i64 %5634, i64* %3, align 8
  %5635 = inttoptr i64 %5633 to i64*
  %5636 = load i64, i64* %5635, align 8
  store i64 %5636, i64* %RAX.i34, align 8
  %5637 = add i64 %5622, 19
  store i64 %5637, i64* %3, align 8
  %5638 = load i32, i32* %5585, align 4
  %5639 = sext i32 %5638 to i64
  store i64 %5639, i64* %RCX.i100, align 8
  %5640 = shl nsw i64 %5639, 2
  %5641 = add i64 %5640, %5636
  %5642 = add i64 %5622, 26
  store i64 %5642, i64* %3, align 8
  %5643 = inttoptr i64 %5641 to i32*
  %5644 = load i32, i32* %5643, align 4
  %5645 = add i32 %5644, 987654321
  %5646 = icmp ult i32 %5644, -987654321
  %5647 = zext i1 %5646 to i8
  store i8 %5647, i8* %14, align 1
  %5648 = and i32 %5645, 255
  %5649 = tail call i32 @llvm.ctpop.i32(i32 %5648)
  %5650 = trunc i32 %5649 to i8
  %5651 = and i8 %5650, 1
  %5652 = xor i8 %5651, 1
  store i8 %5652, i8* %21, align 1
  %5653 = xor i32 %5645, %5644
  %5654 = lshr i32 %5653, 4
  %5655 = trunc i32 %5654 to i8
  %5656 = and i8 %5655, 1
  store i8 %5656, i8* %26, align 1
  %5657 = icmp eq i32 %5645, 0
  %5658 = zext i1 %5657 to i8
  store i8 %5658, i8* %29, align 1
  %5659 = lshr i32 %5645, 31
  %5660 = trunc i32 %5659 to i8
  store i8 %5660, i8* %32, align 1
  %5661 = lshr i32 %5644, 31
  %5662 = xor i32 %5661, 1
  %5663 = xor i32 %5659, %5661
  %5664 = add nuw nsw i32 %5663, %5662
  %5665 = icmp eq i32 %5664, 2
  %5666 = zext i1 %5665 to i8
  store i8 %5666, i8* %38, align 1
  %5667 = icmp ne i8 %5660, 0
  %5668 = xor i1 %5667, %5665
  %5669 = or i1 %5657, %5668
  %.v161 = select i1 %5669, i64 172, i64 32
  %5670 = add i64 %5622, %.v161
  store i64 %5670, i64* %3, align 8
  br i1 %5669, label %block_.L_40f509, label %block_40f47d

block_40f47d:                                     ; preds = %block_40f45d
  %5671 = add i64 %5670, 4
  store i64 %5671, i64* %3, align 8
  %5672 = load i64, i64* %5590, align 8
  store i64 %5672, i64* %RAX.i34, align 8
  %5673 = add i64 %5672, 376
  %5674 = add i64 %5670, 11
  store i64 %5674, i64* %3, align 8
  %5675 = inttoptr i64 %5673 to i64*
  %5676 = load i64, i64* %5675, align 8
  store i64 %5676, i64* %RAX.i34, align 8
  %5677 = add i64 %5670, 15
  store i64 %5677, i64* %3, align 8
  %5678 = load i32, i32* %5585, align 4
  %5679 = sext i32 %5678 to i64
  store i64 %5679, i64* %RCX.i100, align 8
  %5680 = shl nsw i64 %5679, 2
  %5681 = add i64 %5680, %5676
  %5682 = add i64 %5670, 22
  store i64 %5682, i64* %3, align 8
  %5683 = inttoptr i64 %5681 to i32*
  %5684 = load i32, i32* %5683, align 4
  %5685 = add i32 %5684, 987654321
  %5686 = icmp ult i32 %5684, -987654321
  %5687 = zext i1 %5686 to i8
  store i8 %5687, i8* %14, align 1
  %5688 = and i32 %5685, 255
  %5689 = tail call i32 @llvm.ctpop.i32(i32 %5688)
  %5690 = trunc i32 %5689 to i8
  %5691 = and i8 %5690, 1
  %5692 = xor i8 %5691, 1
  store i8 %5692, i8* %21, align 1
  %5693 = xor i32 %5685, %5684
  %5694 = lshr i32 %5693, 4
  %5695 = trunc i32 %5694 to i8
  %5696 = and i8 %5695, 1
  store i8 %5696, i8* %26, align 1
  %5697 = icmp eq i32 %5685, 0
  %5698 = zext i1 %5697 to i8
  store i8 %5698, i8* %29, align 1
  %5699 = lshr i32 %5685, 31
  %5700 = trunc i32 %5699 to i8
  store i8 %5700, i8* %32, align 1
  %5701 = lshr i32 %5684, 31
  %5702 = xor i32 %5701, 1
  %5703 = xor i32 %5699, %5701
  %5704 = add nuw nsw i32 %5703, %5702
  %5705 = icmp eq i32 %5704, 2
  %5706 = zext i1 %5705 to i8
  store i8 %5706, i8* %38, align 1
  %5707 = icmp ne i8 %5700, 0
  %5708 = xor i1 %5707, %5705
  %5709 = or i1 %5697, %5708
  %.v162 = select i1 %5709, i64 140, i64 28
  %5710 = add i64 %5670, %.v162
  store i64 %5710, i64* %3, align 8
  br i1 %5709, label %block_.L_40f509, label %block_40f499

block_40f499:                                     ; preds = %block_40f47d
  %5711 = add i64 %5710, 4
  store i64 %5711, i64* %3, align 8
  %5712 = load i64, i64* %5625, align 8
  store i64 %5712, i64* %RAX.i34, align 8
  %5713 = add i64 %5710, 11
  store i64 %5713, i64* %3, align 8
  %5714 = load i32, i32* %5629, align 4
  %5715 = sext i32 %5714 to i64
  store i64 %5715, i64* %RCX.i100, align 8
  %5716 = shl nsw i64 %5715, 3
  %5717 = add i64 %5716, %5712
  %5718 = add i64 %5710, 15
  store i64 %5718, i64* %3, align 8
  %5719 = inttoptr i64 %5717 to i64*
  %5720 = load i64, i64* %5719, align 8
  store i64 %5720, i64* %RAX.i34, align 8
  %5721 = add i64 %5710, 19
  store i64 %5721, i64* %3, align 8
  %5722 = load i32, i32* %5585, align 4
  %5723 = sext i32 %5722 to i64
  store i64 %5723, i64* %RCX.i100, align 8
  %5724 = shl nsw i64 %5723, 2
  %5725 = add i64 %5724, %5720
  %5726 = add i64 %5710, 22
  store i64 %5726, i64* %3, align 8
  %5727 = inttoptr i64 %5725 to i32*
  %5728 = load i32, i32* %5727, align 4
  %5729 = zext i32 %5728 to i64
  store i64 %5729, i64* %RDX.i2857, align 8
  %5730 = add i64 %5710, 26
  store i64 %5730, i64* %3, align 8
  %5731 = load i64, i64* %5590, align 8
  store i64 %5731, i64* %RAX.i34, align 8
  %5732 = add i64 %5731, 376
  %5733 = add i64 %5710, 33
  store i64 %5733, i64* %3, align 8
  %5734 = inttoptr i64 %5732 to i64*
  %5735 = load i64, i64* %5734, align 8
  store i64 %5735, i64* %RAX.i34, align 8
  %5736 = add i64 %5710, 37
  store i64 %5736, i64* %3, align 8
  %5737 = load i32, i32* %5585, align 4
  %5738 = sext i32 %5737 to i64
  store i64 %5738, i64* %RCX.i100, align 8
  %5739 = shl nsw i64 %5738, 2
  %5740 = add i64 %5735, %5739
  %5741 = add i64 %5710, 40
  store i64 %5741, i64* %3, align 8
  %5742 = inttoptr i64 %5740 to i32*
  %5743 = load i32, i32* %5742, align 4
  %5744 = add i32 %5743, %5728
  %5745 = zext i32 %5744 to i64
  store i64 %5745, i64* %RDX.i2857, align 8
  %5746 = icmp ult i32 %5744, %5728
  %5747 = icmp ult i32 %5744, %5743
  %5748 = or i1 %5746, %5747
  %5749 = zext i1 %5748 to i8
  store i8 %5749, i8* %14, align 1
  %5750 = and i32 %5744, 255
  %5751 = tail call i32 @llvm.ctpop.i32(i32 %5750)
  %5752 = trunc i32 %5751 to i8
  %5753 = and i8 %5752, 1
  %5754 = xor i8 %5753, 1
  store i8 %5754, i8* %21, align 1
  %5755 = xor i32 %5743, %5728
  %5756 = xor i32 %5755, %5744
  %5757 = lshr i32 %5756, 4
  %5758 = trunc i32 %5757 to i8
  %5759 = and i8 %5758, 1
  store i8 %5759, i8* %26, align 1
  %5760 = icmp eq i32 %5744, 0
  %5761 = zext i1 %5760 to i8
  store i8 %5761, i8* %29, align 1
  %5762 = lshr i32 %5744, 31
  %5763 = trunc i32 %5762 to i8
  store i8 %5763, i8* %32, align 1
  %5764 = lshr i32 %5728, 31
  %5765 = lshr i32 %5743, 31
  %5766 = xor i32 %5762, %5764
  %5767 = xor i32 %5762, %5765
  %5768 = add nuw nsw i32 %5766, %5767
  %5769 = icmp eq i32 %5768, 2
  %5770 = zext i1 %5769 to i8
  store i8 %5770, i8* %38, align 1
  %5771 = add i64 %5582, -140
  %5772 = add i64 %5710, 46
  store i64 %5772, i64* %3, align 8
  %5773 = inttoptr i64 %5771 to i32*
  store i32 %5744, i32* %5773, align 4
  %5774 = load i64, i64* %RBP.i, align 8
  %5775 = add i64 %5774, -48
  %5776 = load i64, i64* %3, align 8
  %5777 = add i64 %5776, 4
  store i64 %5777, i64* %3, align 8
  %5778 = inttoptr i64 %5775 to i64*
  %5779 = load i64, i64* %5778, align 8
  store i64 %5779, i64* %RAX.i34, align 8
  %5780 = add i64 %5774, -148
  %5781 = add i64 %5776, 11
  store i64 %5781, i64* %3, align 8
  %5782 = inttoptr i64 %5780 to i32*
  %5783 = load i32, i32* %5782, align 4
  %5784 = sext i32 %5783 to i64
  store i64 %5784, i64* %RCX.i100, align 8
  %5785 = shl nsw i64 %5784, 3
  %5786 = add i64 %5785, %5779
  %5787 = add i64 %5776, 15
  store i64 %5787, i64* %3, align 8
  %5788 = inttoptr i64 %5786 to i64*
  %5789 = load i64, i64* %5788, align 8
  store i64 %5789, i64* %RAX.i34, align 8
  %5790 = load i32, i32* %EDX.i2852, align 4
  %5791 = add i64 %5789, 4
  %5792 = add i64 %5776, 18
  store i64 %5792, i64* %3, align 8
  %5793 = inttoptr i64 %5791 to i32*
  %5794 = load i32, i32* %5793, align 4
  %5795 = sub i32 %5790, %5794
  %5796 = icmp ult i32 %5790, %5794
  %5797 = zext i1 %5796 to i8
  store i8 %5797, i8* %14, align 1
  %5798 = and i32 %5795, 255
  %5799 = tail call i32 @llvm.ctpop.i32(i32 %5798)
  %5800 = trunc i32 %5799 to i8
  %5801 = and i8 %5800, 1
  %5802 = xor i8 %5801, 1
  store i8 %5802, i8* %21, align 1
  %5803 = xor i32 %5794, %5790
  %5804 = xor i32 %5803, %5795
  %5805 = lshr i32 %5804, 4
  %5806 = trunc i32 %5805 to i8
  %5807 = and i8 %5806, 1
  store i8 %5807, i8* %26, align 1
  %5808 = icmp eq i32 %5795, 0
  %5809 = zext i1 %5808 to i8
  store i8 %5809, i8* %29, align 1
  %5810 = lshr i32 %5795, 31
  %5811 = trunc i32 %5810 to i8
  store i8 %5811, i8* %32, align 1
  %5812 = lshr i32 %5790, 31
  %5813 = lshr i32 %5794, 31
  %5814 = xor i32 %5813, %5812
  %5815 = xor i32 %5810, %5812
  %5816 = add nuw nsw i32 %5815, %5814
  %5817 = icmp eq i32 %5816, 2
  %5818 = zext i1 %5817 to i8
  store i8 %5818, i8* %38, align 1
  %5819 = icmp ne i8 %5811, 0
  %5820 = xor i1 %5819, %5817
  %5821 = or i1 %5808, %5820
  %.v163 = select i1 %5821, i64 66, i64 24
  %5822 = add i64 %5776, %.v163
  store i64 %5822, i64* %3, align 8
  br i1 %5821, label %block_.L_40f509, label %block_40f4df

block_40f4df:                                     ; preds = %block_40f499
  %5823 = add i64 %5774, -140
  %5824 = add i64 %5822, 6
  store i64 %5824, i64* %3, align 8
  %5825 = inttoptr i64 %5823 to i32*
  %5826 = load i32, i32* %5825, align 4
  %5827 = zext i32 %5826 to i64
  store i64 %5827, i64* %RAX.i34, align 8
  %5828 = add i64 %5822, 10
  store i64 %5828, i64* %3, align 8
  %5829 = load i64, i64* %5778, align 8
  store i64 %5829, i64* %RCX.i100, align 8
  %5830 = add i64 %5822, 17
  store i64 %5830, i64* %3, align 8
  %5831 = load i32, i32* %5782, align 4
  %5832 = sext i32 %5831 to i64
  store i64 %5832, i64* %RDX.i2857, align 8
  %5833 = shl nsw i64 %5832, 3
  %5834 = add i64 %5833, %5829
  %5835 = add i64 %5822, 21
  store i64 %5835, i64* %3, align 8
  %5836 = inttoptr i64 %5834 to i64*
  %5837 = load i64, i64* %5836, align 8
  store i64 %5837, i64* %RCX.i100, align 8
  %5838 = add i64 %5837, 4
  %5839 = add i64 %5822, 24
  store i64 %5839, i64* %3, align 8
  %5840 = inttoptr i64 %5838 to i32*
  store i32 %5826, i32* %5840, align 4
  %5841 = load i64, i64* %RBP.i, align 8
  %5842 = add i64 %5841, -128
  %5843 = load i64, i64* %3, align 8
  %5844 = add i64 %5843, 3
  store i64 %5844, i64* %3, align 8
  %5845 = inttoptr i64 %5842 to i32*
  %5846 = load i32, i32* %5845, align 4
  %5847 = zext i32 %5846 to i64
  store i64 %5847, i64* %RAX.i34, align 8
  %5848 = add i64 %5841, -32
  %5849 = add i64 %5843, 7
  store i64 %5849, i64* %3, align 8
  %5850 = inttoptr i64 %5848 to i64*
  %5851 = load i64, i64* %5850, align 8
  store i64 %5851, i64* %RCX.i100, align 8
  %5852 = add i64 %5851, 32
  %5853 = add i64 %5843, 11
  store i64 %5853, i64* %3, align 8
  %5854 = inttoptr i64 %5852 to i64*
  %5855 = load i64, i64* %5854, align 8
  store i64 %5855, i64* %RCX.i100, align 8
  %5856 = add i64 %5841, -124
  %5857 = add i64 %5843, 15
  store i64 %5857, i64* %3, align 8
  %5858 = inttoptr i64 %5856 to i32*
  %5859 = load i32, i32* %5858, align 4
  %5860 = sext i32 %5859 to i64
  store i64 %5860, i64* %RDX.i2857, align 8
  %5861 = shl nsw i64 %5860, 2
  %5862 = add i64 %5861, %5855
  %5863 = add i64 %5843, 18
  store i64 %5863, i64* %3, align 8
  %5864 = inttoptr i64 %5862 to i32*
  store i32 %5846, i32* %5864, align 4
  %.pre126 = load i64, i64* %3, align 8
  %.pre127 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40f509

block_.L_40f509:                                  ; preds = %block_40f4df, %block_40f499, %block_40f47d, %block_40f45d
  %5865 = phi i64 [ %.pre127, %block_40f4df ], [ %5774, %block_40f499 ], [ %5582, %block_40f47d ], [ %5582, %block_40f45d ]
  %5866 = phi i64 [ %.pre126, %block_40f4df ], [ %5822, %block_40f499 ], [ %5710, %block_40f47d ], [ %5670, %block_40f45d ]
  %5867 = add i64 %5865, -128
  %5868 = add i64 %5866, 8
  store i64 %5868, i64* %3, align 8
  %5869 = inttoptr i64 %5867 to i32*
  %5870 = load i32, i32* %5869, align 4
  %5871 = add i32 %5870, 1
  %5872 = zext i32 %5871 to i64
  store i64 %5872, i64* %RAX.i34, align 8
  %5873 = icmp eq i32 %5870, -1
  %5874 = icmp eq i32 %5871, 0
  %5875 = or i1 %5873, %5874
  %5876 = zext i1 %5875 to i8
  store i8 %5876, i8* %14, align 1
  %5877 = and i32 %5871, 255
  %5878 = tail call i32 @llvm.ctpop.i32(i32 %5877)
  %5879 = trunc i32 %5878 to i8
  %5880 = and i8 %5879, 1
  %5881 = xor i8 %5880, 1
  store i8 %5881, i8* %21, align 1
  %5882 = xor i32 %5871, %5870
  %5883 = lshr i32 %5882, 4
  %5884 = trunc i32 %5883 to i8
  %5885 = and i8 %5884, 1
  store i8 %5885, i8* %26, align 1
  %5886 = zext i1 %5874 to i8
  store i8 %5886, i8* %29, align 1
  %5887 = lshr i32 %5871, 31
  %5888 = trunc i32 %5887 to i8
  store i8 %5888, i8* %32, align 1
  %5889 = lshr i32 %5870, 31
  %5890 = xor i32 %5887, %5889
  %5891 = add nuw nsw i32 %5890, %5887
  %5892 = icmp eq i32 %5891, 2
  %5893 = zext i1 %5892 to i8
  store i8 %5893, i8* %38, align 1
  %5894 = add i64 %5866, 14
  store i64 %5894, i64* %3, align 8
  store i32 %5871, i32* %5869, align 4
  %5895 = load i64, i64* %3, align 8
  %5896 = add i64 %5895, -205
  store i64 %5896, i64* %3, align 8
  br label %block_.L_40f44a

block_.L_40f51c:                                  ; preds = %block_.L_40f44a
  %5897 = add i64 %5582, -48
  %5898 = add i64 %5622, 4
  store i64 %5898, i64* %3, align 8
  %5899 = inttoptr i64 %5897 to i64*
  %5900 = load i64, i64* %5899, align 8
  store i64 %5900, i64* %RAX.i34, align 8
  %5901 = add i64 %5582, -148
  %5902 = add i64 %5622, 11
  store i64 %5902, i64* %3, align 8
  %5903 = inttoptr i64 %5901 to i32*
  %5904 = load i32, i32* %5903, align 4
  %5905 = sext i32 %5904 to i64
  store i64 %5905, i64* %RCX.i100, align 8
  %5906 = shl nsw i64 %5905, 3
  %5907 = add i64 %5906, %5900
  %5908 = add i64 %5622, 15
  store i64 %5908, i64* %3, align 8
  %5909 = inttoptr i64 %5907 to i64*
  %5910 = load i64, i64* %5909, align 8
  store i64 %5910, i64* %RAX.i34, align 8
  %5911 = add i64 %5622, 21
  store i64 %5911, i64* %3, align 8
  %5912 = inttoptr i64 %5910 to i32*
  store i32 -987654321, i32* %5912, align 4
  %5913 = load i64, i64* %RBP.i, align 8
  %5914 = add i64 %5913, -80
  %5915 = load i64, i64* %3, align 8
  %5916 = add i64 %5915, 4
  store i64 %5916, i64* %3, align 8
  %5917 = inttoptr i64 %5914 to i64*
  %5918 = load i64, i64* %5917, align 8
  store i64 %5918, i64* %RAX.i34, align 8
  %5919 = add i64 %5913, -124
  %5920 = add i64 %5915, 8
  store i64 %5920, i64* %3, align 8
  %5921 = inttoptr i64 %5919 to i32*
  %5922 = load i32, i32* %5921, align 4
  %5923 = sext i32 %5922 to i64
  store i64 %5923, i64* %RCX.i100, align 8
  %5924 = shl nsw i64 %5923, 3
  %5925 = add i64 %5924, %5918
  %5926 = add i64 %5915, 12
  store i64 %5926, i64* %3, align 8
  %5927 = inttoptr i64 %5925 to i64*
  %5928 = load i64, i64* %5927, align 8
  store i64 %5928, i64* %RAX.i34, align 8
  %5929 = add i64 %5915, 15
  store i64 %5929, i64* %3, align 8
  %5930 = inttoptr i64 %5928 to i8*
  store i8 0, i8* %5930, align 1
  %5931 = load i64, i64* %RBP.i, align 8
  %5932 = add i64 %5931, -48
  %5933 = load i64, i64* %3, align 8
  %5934 = add i64 %5933, 4
  store i64 %5934, i64* %3, align 8
  %5935 = inttoptr i64 %5932 to i64*
  %5936 = load i64, i64* %5935, align 8
  store i64 %5936, i64* %RAX.i34, align 8
  %5937 = add i64 %5931, -148
  %5938 = add i64 %5933, 11
  store i64 %5938, i64* %3, align 8
  %5939 = inttoptr i64 %5937 to i32*
  %5940 = load i32, i32* %5939, align 4
  %5941 = sext i32 %5940 to i64
  store i64 %5941, i64* %RCX.i100, align 8
  %5942 = shl nsw i64 %5941, 3
  %5943 = add i64 %5942, %5936
  %5944 = add i64 %5933, 15
  store i64 %5944, i64* %3, align 8
  %5945 = inttoptr i64 %5943 to i64*
  %5946 = load i64, i64* %5945, align 8
  store i64 %5946, i64* %RAX.i34, align 8
  %5947 = add i64 %5946, 16
  %5948 = add i64 %5933, 22
  store i64 %5948, i64* %3, align 8
  %5949 = inttoptr i64 %5947 to i32*
  %5950 = load i32, i32* %5949, align 4
  %5951 = add i32 %5950, 987654321
  %5952 = icmp ult i32 %5950, -987654321
  %5953 = zext i1 %5952 to i8
  store i8 %5953, i8* %14, align 1
  %5954 = and i32 %5951, 255
  %5955 = tail call i32 @llvm.ctpop.i32(i32 %5954)
  %5956 = trunc i32 %5955 to i8
  %5957 = and i8 %5956, 1
  %5958 = xor i8 %5957, 1
  store i8 %5958, i8* %21, align 1
  %5959 = xor i32 %5951, %5950
  %5960 = lshr i32 %5959, 4
  %5961 = trunc i32 %5960 to i8
  %5962 = and i8 %5961, 1
  store i8 %5962, i8* %26, align 1
  %5963 = icmp eq i32 %5951, 0
  %5964 = zext i1 %5963 to i8
  store i8 %5964, i8* %29, align 1
  %5965 = lshr i32 %5951, 31
  %5966 = trunc i32 %5965 to i8
  store i8 %5966, i8* %32, align 1
  %5967 = lshr i32 %5950, 31
  %5968 = xor i32 %5967, 1
  %5969 = xor i32 %5965, %5967
  %5970 = add nuw nsw i32 %5969, %5968
  %5971 = icmp eq i32 %5970, 2
  %5972 = zext i1 %5971 to i8
  store i8 %5972, i8* %38, align 1
  %5973 = icmp ne i8 %5966, 0
  %5974 = xor i1 %5973, %5971
  %5975 = or i1 %5963, %5974
  %.v152 = select i1 %5975, i64 143, i64 28
  %5976 = add i64 %5933, %.v152
  store i64 %5976, i64* %3, align 8
  br i1 %5975, label %block_.L_40f5cf, label %block_40f55c

block_40f55c:                                     ; preds = %block_.L_40f51c
  %5977 = add i64 %5931, -16
  %5978 = add i64 %5976, 4
  store i64 %5978, i64* %3, align 8
  %5979 = inttoptr i64 %5977 to i64*
  %5980 = load i64, i64* %5979, align 8
  store i64 %5980, i64* %RAX.i34, align 8
  %5981 = add i64 %5980, 336
  %5982 = add i64 %5976, 14
  store i64 %5982, i64* %3, align 8
  %5983 = inttoptr i64 %5981 to i32*
  %5984 = load i32, i32* %5983, align 4
  %5985 = add i32 %5984, 987654321
  %5986 = icmp ult i32 %5984, -987654321
  %5987 = zext i1 %5986 to i8
  store i8 %5987, i8* %14, align 1
  %5988 = and i32 %5985, 255
  %5989 = tail call i32 @llvm.ctpop.i32(i32 %5988)
  %5990 = trunc i32 %5989 to i8
  %5991 = and i8 %5990, 1
  %5992 = xor i8 %5991, 1
  store i8 %5992, i8* %21, align 1
  %5993 = xor i32 %5985, %5984
  %5994 = lshr i32 %5993, 4
  %5995 = trunc i32 %5994 to i8
  %5996 = and i8 %5995, 1
  store i8 %5996, i8* %26, align 1
  %5997 = icmp eq i32 %5985, 0
  %5998 = zext i1 %5997 to i8
  store i8 %5998, i8* %29, align 1
  %5999 = lshr i32 %5985, 31
  %6000 = trunc i32 %5999 to i8
  store i8 %6000, i8* %32, align 1
  %6001 = lshr i32 %5984, 31
  %6002 = xor i32 %6001, 1
  %6003 = xor i32 %5999, %6001
  %6004 = add nuw nsw i32 %6003, %6002
  %6005 = icmp eq i32 %6004, 2
  %6006 = zext i1 %6005 to i8
  store i8 %6006, i8* %38, align 1
  %6007 = icmp ne i8 %6000, 0
  %6008 = xor i1 %6007, %6005
  %6009 = or i1 %5997, %6008
  %.v153 = select i1 %6009, i64 115, i64 20
  %6010 = add i64 %5976, %.v153
  store i64 %6010, i64* %3, align 8
  br i1 %6009, label %block_.L_40f5cf, label %block_40f570

block_40f570:                                     ; preds = %block_40f55c
  %6011 = add i64 %6010, 4
  store i64 %6011, i64* %3, align 8
  %6012 = load i64, i64* %5935, align 8
  store i64 %6012, i64* %RAX.i34, align 8
  %6013 = add i64 %6010, 11
  store i64 %6013, i64* %3, align 8
  %6014 = load i32, i32* %5939, align 4
  %6015 = sext i32 %6014 to i64
  store i64 %6015, i64* %RCX.i100, align 8
  %6016 = shl nsw i64 %6015, 3
  %6017 = add i64 %6016, %6012
  %6018 = add i64 %6010, 15
  store i64 %6018, i64* %3, align 8
  %6019 = inttoptr i64 %6017 to i64*
  %6020 = load i64, i64* %6019, align 8
  store i64 %6020, i64* %RAX.i34, align 8
  %6021 = add i64 %6020, 16
  %6022 = add i64 %6010, 18
  store i64 %6022, i64* %3, align 8
  %6023 = inttoptr i64 %6021 to i32*
  %6024 = load i32, i32* %6023, align 4
  %6025 = zext i32 %6024 to i64
  store i64 %6025, i64* %RDX.i2857, align 8
  %6026 = add i64 %6010, 22
  store i64 %6026, i64* %3, align 8
  %6027 = load i64, i64* %5979, align 8
  store i64 %6027, i64* %RAX.i34, align 8
  %6028 = add i64 %6027, 336
  %6029 = add i64 %6010, 28
  store i64 %6029, i64* %3, align 8
  %6030 = inttoptr i64 %6028 to i32*
  %6031 = load i32, i32* %6030, align 4
  %6032 = add i32 %6031, %6024
  %6033 = zext i32 %6032 to i64
  store i64 %6033, i64* %RDX.i2857, align 8
  %6034 = icmp ult i32 %6032, %6024
  %6035 = icmp ult i32 %6032, %6031
  %6036 = or i1 %6034, %6035
  %6037 = zext i1 %6036 to i8
  store i8 %6037, i8* %14, align 1
  %6038 = and i32 %6032, 255
  %6039 = tail call i32 @llvm.ctpop.i32(i32 %6038)
  %6040 = trunc i32 %6039 to i8
  %6041 = and i8 %6040, 1
  %6042 = xor i8 %6041, 1
  store i8 %6042, i8* %21, align 1
  %6043 = xor i32 %6031, %6024
  %6044 = xor i32 %6043, %6032
  %6045 = lshr i32 %6044, 4
  %6046 = trunc i32 %6045 to i8
  %6047 = and i8 %6046, 1
  store i8 %6047, i8* %26, align 1
  %6048 = icmp eq i32 %6032, 0
  %6049 = zext i1 %6048 to i8
  store i8 %6049, i8* %29, align 1
  %6050 = lshr i32 %6032, 31
  %6051 = trunc i32 %6050 to i8
  store i8 %6051, i8* %32, align 1
  %6052 = lshr i32 %6024, 31
  %6053 = lshr i32 %6031, 31
  %6054 = xor i32 %6050, %6052
  %6055 = xor i32 %6050, %6053
  %6056 = add nuw nsw i32 %6054, %6055
  %6057 = icmp eq i32 %6056, 2
  %6058 = zext i1 %6057 to i8
  store i8 %6058, i8* %38, align 1
  %6059 = add i64 %5931, -140
  %6060 = add i64 %6010, 34
  store i64 %6060, i64* %3, align 8
  %6061 = inttoptr i64 %6059 to i32*
  store i32 %6032, i32* %6061, align 4
  %6062 = load i64, i64* %RBP.i, align 8
  %6063 = add i64 %6062, -48
  %6064 = load i64, i64* %3, align 8
  %6065 = add i64 %6064, 4
  store i64 %6065, i64* %3, align 8
  %6066 = inttoptr i64 %6063 to i64*
  %6067 = load i64, i64* %6066, align 8
  store i64 %6067, i64* %RAX.i34, align 8
  %6068 = add i64 %6062, -148
  %6069 = add i64 %6064, 11
  store i64 %6069, i64* %3, align 8
  %6070 = inttoptr i64 %6068 to i32*
  %6071 = load i32, i32* %6070, align 4
  %6072 = sext i32 %6071 to i64
  store i64 %6072, i64* %RCX.i100, align 8
  %6073 = shl nsw i64 %6072, 3
  %6074 = add i64 %6073, %6067
  %6075 = add i64 %6064, 15
  store i64 %6075, i64* %3, align 8
  %6076 = inttoptr i64 %6074 to i64*
  %6077 = load i64, i64* %6076, align 8
  store i64 %6077, i64* %RAX.i34, align 8
  %6078 = load i32, i32* %EDX.i2852, align 4
  %6079 = add i64 %6064, 17
  store i64 %6079, i64* %3, align 8
  %6080 = inttoptr i64 %6077 to i32*
  %6081 = load i32, i32* %6080, align 4
  %6082 = sub i32 %6078, %6081
  %6083 = icmp ult i32 %6078, %6081
  %6084 = zext i1 %6083 to i8
  store i8 %6084, i8* %14, align 1
  %6085 = and i32 %6082, 255
  %6086 = tail call i32 @llvm.ctpop.i32(i32 %6085)
  %6087 = trunc i32 %6086 to i8
  %6088 = and i8 %6087, 1
  %6089 = xor i8 %6088, 1
  store i8 %6089, i8* %21, align 1
  %6090 = xor i32 %6081, %6078
  %6091 = xor i32 %6090, %6082
  %6092 = lshr i32 %6091, 4
  %6093 = trunc i32 %6092 to i8
  %6094 = and i8 %6093, 1
  store i8 %6094, i8* %26, align 1
  %6095 = icmp eq i32 %6082, 0
  %6096 = zext i1 %6095 to i8
  store i8 %6096, i8* %29, align 1
  %6097 = lshr i32 %6082, 31
  %6098 = trunc i32 %6097 to i8
  store i8 %6098, i8* %32, align 1
  %6099 = lshr i32 %6078, 31
  %6100 = lshr i32 %6081, 31
  %6101 = xor i32 %6100, %6099
  %6102 = xor i32 %6097, %6099
  %6103 = add nuw nsw i32 %6102, %6101
  %6104 = icmp eq i32 %6103, 2
  %6105 = zext i1 %6104 to i8
  store i8 %6105, i8* %38, align 1
  %6106 = icmp ne i8 %6098, 0
  %6107 = xor i1 %6106, %6104
  %6108 = or i1 %6095, %6107
  %.v154 = select i1 %6108, i64 61, i64 23
  %6109 = add i64 %6064, %.v154
  store i64 %6109, i64* %3, align 8
  br i1 %6108, label %block_.L_40f5cf, label %block_40f5a9

block_40f5a9:                                     ; preds = %block_40f570
  %6110 = add i64 %6062, -140
  %6111 = add i64 %6109, 6
  store i64 %6111, i64* %3, align 8
  %6112 = inttoptr i64 %6110 to i32*
  %6113 = load i32, i32* %6112, align 4
  %6114 = zext i32 %6113 to i64
  store i64 %6114, i64* %RAX.i34, align 8
  %6115 = add i64 %6109, 10
  store i64 %6115, i64* %3, align 8
  %6116 = load i64, i64* %6066, align 8
  store i64 %6116, i64* %RCX.i100, align 8
  %6117 = add i64 %6109, 17
  store i64 %6117, i64* %3, align 8
  %6118 = load i32, i32* %6070, align 4
  %6119 = sext i32 %6118 to i64
  store i64 %6119, i64* %RDX.i2857, align 8
  %6120 = shl nsw i64 %6119, 3
  %6121 = add i64 %6120, %6116
  %6122 = add i64 %6109, 21
  store i64 %6122, i64* %3, align 8
  %6123 = inttoptr i64 %6121 to i64*
  %6124 = load i64, i64* %6123, align 8
  store i64 %6124, i64* %RCX.i100, align 8
  %6125 = add i64 %6109, 23
  store i64 %6125, i64* %3, align 8
  %6126 = inttoptr i64 %6124 to i32*
  store i32 %6113, i32* %6126, align 4
  %6127 = load i64, i64* %RBP.i, align 8
  %6128 = add i64 %6127, -80
  %6129 = load i64, i64* %3, align 8
  %6130 = add i64 %6129, 4
  store i64 %6130, i64* %3, align 8
  %6131 = inttoptr i64 %6128 to i64*
  %6132 = load i64, i64* %6131, align 8
  store i64 %6132, i64* %RCX.i100, align 8
  %6133 = add i64 %6127, -124
  %6134 = add i64 %6129, 8
  store i64 %6134, i64* %3, align 8
  %6135 = inttoptr i64 %6133 to i32*
  %6136 = load i32, i32* %6135, align 4
  %6137 = sext i32 %6136 to i64
  store i64 %6137, i64* %RDX.i2857, align 8
  %6138 = shl nsw i64 %6137, 3
  %6139 = add i64 %6138, %6132
  %6140 = add i64 %6129, 12
  store i64 %6140, i64* %3, align 8
  %6141 = inttoptr i64 %6139 to i64*
  %6142 = load i64, i64* %6141, align 8
  store i64 %6142, i64* %RCX.i100, align 8
  %6143 = add i64 %6129, 15
  store i64 %6143, i64* %3, align 8
  %6144 = inttoptr i64 %6142 to i8*
  store i8 5, i8* %6144, align 1
  %.pre128 = load i64, i64* %RBP.i, align 8
  %.pre129 = load i64, i64* %3, align 8
  br label %block_.L_40f5cf

block_.L_40f5cf:                                  ; preds = %block_40f5a9, %block_40f570, %block_40f55c, %block_.L_40f51c
  %6145 = phi i64 [ %.pre129, %block_40f5a9 ], [ %6109, %block_40f570 ], [ %6010, %block_40f55c ], [ %5976, %block_.L_40f51c ]
  %6146 = phi i64 [ %.pre128, %block_40f5a9 ], [ %6062, %block_40f570 ], [ %5931, %block_40f55c ], [ %5931, %block_.L_40f51c ]
  %6147 = add i64 %6146, -48
  %6148 = add i64 %6145, 4
  store i64 %6148, i64* %3, align 8
  %6149 = inttoptr i64 %6147 to i64*
  %6150 = load i64, i64* %6149, align 8
  store i64 %6150, i64* %RAX.i34, align 8
  %6151 = add i64 %6146, -148
  %6152 = add i64 %6145, 11
  store i64 %6152, i64* %3, align 8
  %6153 = inttoptr i64 %6151 to i32*
  %6154 = load i32, i32* %6153, align 4
  %6155 = sext i32 %6154 to i64
  store i64 %6155, i64* %RCX.i100, align 8
  %6156 = shl nsw i64 %6155, 3
  %6157 = add i64 %6156, %6150
  %6158 = add i64 %6145, 15
  store i64 %6158, i64* %3, align 8
  %6159 = inttoptr i64 %6157 to i64*
  %6160 = load i64, i64* %6159, align 8
  store i64 %6160, i64* %RAX.i34, align 8
  %6161 = add i64 %6160, 8
  %6162 = add i64 %6145, 22
  store i64 %6162, i64* %3, align 8
  %6163 = inttoptr i64 %6161 to i32*
  store i32 -987654321, i32* %6163, align 4
  %6164 = load i64, i64* %RBP.i, align 8
  %6165 = add i64 %6164, -80
  %6166 = load i64, i64* %3, align 8
  %6167 = add i64 %6166, 4
  store i64 %6167, i64* %3, align 8
  %6168 = inttoptr i64 %6165 to i64*
  %6169 = load i64, i64* %6168, align 8
  store i64 %6169, i64* %RAX.i34, align 8
  %6170 = add i64 %6164, -124
  %6171 = add i64 %6166, 8
  store i64 %6171, i64* %3, align 8
  %6172 = inttoptr i64 %6170 to i32*
  %6173 = load i32, i32* %6172, align 4
  %6174 = sext i32 %6173 to i64
  store i64 %6174, i64* %RCX.i100, align 8
  %6175 = shl nsw i64 %6174, 3
  %6176 = add i64 %6175, %6169
  %6177 = add i64 %6166, 12
  store i64 %6177, i64* %3, align 8
  %6178 = inttoptr i64 %6176 to i64*
  %6179 = load i64, i64* %6178, align 8
  store i64 %6179, i64* %RAX.i34, align 8
  %6180 = add i64 %6179, 2
  %6181 = add i64 %6166, 16
  store i64 %6181, i64* %3, align 8
  %6182 = inttoptr i64 %6180 to i8*
  store i8 0, i8* %6182, align 1
  %6183 = load i64, i64* %RBP.i, align 8
  %6184 = add i64 %6183, -48
  %6185 = load i64, i64* %3, align 8
  %6186 = add i64 %6185, 4
  store i64 %6186, i64* %3, align 8
  %6187 = inttoptr i64 %6184 to i64*
  %6188 = load i64, i64* %6187, align 8
  store i64 %6188, i64* %RAX.i34, align 8
  %6189 = add i64 %6183, -152
  %6190 = add i64 %6185, 11
  store i64 %6190, i64* %3, align 8
  %6191 = inttoptr i64 %6189 to i32*
  %6192 = load i32, i32* %6191, align 4
  %6193 = sext i32 %6192 to i64
  store i64 %6193, i64* %RCX.i100, align 8
  %6194 = shl nsw i64 %6193, 3
  %6195 = add i64 %6194, %6188
  %6196 = add i64 %6185, 15
  store i64 %6196, i64* %3, align 8
  %6197 = inttoptr i64 %6195 to i64*
  %6198 = load i64, i64* %6197, align 8
  store i64 %6198, i64* %RAX.i34, align 8
  %6199 = add i64 %6198, 8
  %6200 = add i64 %6185, 22
  store i64 %6200, i64* %3, align 8
  %6201 = inttoptr i64 %6199 to i32*
  %6202 = load i32, i32* %6201, align 4
  %6203 = add i32 %6202, 987654321
  %6204 = icmp ult i32 %6202, -987654321
  %6205 = zext i1 %6204 to i8
  store i8 %6205, i8* %14, align 1
  %6206 = and i32 %6203, 255
  %6207 = tail call i32 @llvm.ctpop.i32(i32 %6206)
  %6208 = trunc i32 %6207 to i8
  %6209 = and i8 %6208, 1
  %6210 = xor i8 %6209, 1
  store i8 %6210, i8* %21, align 1
  %6211 = xor i32 %6203, %6202
  %6212 = lshr i32 %6211, 4
  %6213 = trunc i32 %6212 to i8
  %6214 = and i8 %6213, 1
  store i8 %6214, i8* %26, align 1
  %6215 = icmp eq i32 %6203, 0
  %6216 = zext i1 %6215 to i8
  store i8 %6216, i8* %29, align 1
  %6217 = lshr i32 %6203, 31
  %6218 = trunc i32 %6217 to i8
  store i8 %6218, i8* %32, align 1
  %6219 = lshr i32 %6202, 31
  %6220 = xor i32 %6219, 1
  %6221 = xor i32 %6217, %6219
  %6222 = add nuw nsw i32 %6221, %6220
  %6223 = icmp eq i32 %6222, 2
  %6224 = zext i1 %6223 to i8
  store i8 %6224, i8* %38, align 1
  %6225 = icmp ne i8 %6218, 0
  %6226 = xor i1 %6225, %6223
  %6227 = or i1 %6215, %6226
  %.v155 = select i1 %6227, i64 159, i64 28
  %6228 = add i64 %6185, %.v155
  store i64 %6228, i64* %3, align 8
  br i1 %6227, label %block_.L_40f694, label %block_40f611

block_40f611:                                     ; preds = %block_.L_40f5cf
  %6229 = add i64 %6183, -16
  %6230 = add i64 %6228, 4
  store i64 %6230, i64* %3, align 8
  %6231 = inttoptr i64 %6229 to i64*
  %6232 = load i64, i64* %6231, align 8
  store i64 %6232, i64* %RAX.i34, align 8
  %6233 = add i64 %6232, 356
  %6234 = add i64 %6228, 14
  store i64 %6234, i64* %3, align 8
  %6235 = inttoptr i64 %6233 to i32*
  %6236 = load i32, i32* %6235, align 4
  %6237 = add i32 %6236, 987654321
  %6238 = icmp ult i32 %6236, -987654321
  %6239 = zext i1 %6238 to i8
  store i8 %6239, i8* %14, align 1
  %6240 = and i32 %6237, 255
  %6241 = tail call i32 @llvm.ctpop.i32(i32 %6240)
  %6242 = trunc i32 %6241 to i8
  %6243 = and i8 %6242, 1
  %6244 = xor i8 %6243, 1
  store i8 %6244, i8* %21, align 1
  %6245 = xor i32 %6237, %6236
  %6246 = lshr i32 %6245, 4
  %6247 = trunc i32 %6246 to i8
  %6248 = and i8 %6247, 1
  store i8 %6248, i8* %26, align 1
  %6249 = icmp eq i32 %6237, 0
  %6250 = zext i1 %6249 to i8
  store i8 %6250, i8* %29, align 1
  %6251 = lshr i32 %6237, 31
  %6252 = trunc i32 %6251 to i8
  store i8 %6252, i8* %32, align 1
  %6253 = lshr i32 %6236, 31
  %6254 = xor i32 %6253, 1
  %6255 = xor i32 %6251, %6253
  %6256 = add nuw nsw i32 %6255, %6254
  %6257 = icmp eq i32 %6256, 2
  %6258 = zext i1 %6257 to i8
  store i8 %6258, i8* %38, align 1
  %6259 = icmp ne i8 %6252, 0
  %6260 = xor i1 %6259, %6257
  %6261 = or i1 %6249, %6260
  %.v156 = select i1 %6261, i64 131, i64 20
  %6262 = add i64 %6228, %.v156
  store i64 %6262, i64* %3, align 8
  br i1 %6261, label %block_.L_40f694, label %block_40f625

block_40f625:                                     ; preds = %block_40f611
  %6263 = add i64 %6262, 4
  store i64 %6263, i64* %3, align 8
  %6264 = load i64, i64* %6187, align 8
  store i64 %6264, i64* %RAX.i34, align 8
  %6265 = add i64 %6262, 11
  store i64 %6265, i64* %3, align 8
  %6266 = load i32, i32* %6191, align 4
  %6267 = sext i32 %6266 to i64
  store i64 %6267, i64* %RCX.i100, align 8
  %6268 = shl nsw i64 %6267, 3
  %6269 = add i64 %6268, %6264
  %6270 = add i64 %6262, 15
  store i64 %6270, i64* %3, align 8
  %6271 = inttoptr i64 %6269 to i64*
  %6272 = load i64, i64* %6271, align 8
  store i64 %6272, i64* %RAX.i34, align 8
  %6273 = add i64 %6272, 8
  %6274 = add i64 %6262, 20
  store i64 %6274, i64* %3, align 8
  %6275 = load <2 x i32>, <2 x i32>* %1479, align 1
  %6276 = load <2 x i32>, <2 x i32>* %1480, align 1
  %6277 = inttoptr i64 %6273 to i32*
  %6278 = load i32, i32* %6277, align 4
  %6279 = sitofp i32 %6278 to float
  store float %6279, float* %288, align 1
  %6280 = extractelement <2 x i32> %6275, i32 1
  store i32 %6280, i32* %343, align 1
  %6281 = extractelement <2 x i32> %6276, i32 0
  store i32 %6281, i32* %147, align 1
  %6282 = extractelement <2 x i32> %6276, i32 1
  store i32 %6282, i32* %344, align 1
  %6283 = add i64 %6262, 24
  store i64 %6283, i64* %3, align 8
  %6284 = load i64, i64* %6231, align 8
  store i64 %6284, i64* %RAX.i34, align 8
  %6285 = add i64 %6284, 356
  %6286 = add i64 %6262, 32
  store i64 %6286, i64* %3, align 8
  %6287 = load <2 x i32>, <2 x i32>* %1481, align 1
  %6288 = load <2 x i32>, <2 x i32>* %1482, align 1
  %6289 = inttoptr i64 %6285 to i32*
  %6290 = load i32, i32* %6289, align 4
  %6291 = sitofp i32 %6290 to float
  store float %6291, float* %1470, align 1
  %6292 = extractelement <2 x i32> %6287, i32 1
  store i32 %6292, i32* %1483, align 1
  %6293 = extractelement <2 x i32> %6288, i32 0
  store i32 %6293, i32* %1484, align 1
  %6294 = extractelement <2 x i32> %6288, i32 1
  store i32 %6294, i32* %1485, align 1
  %6295 = add i64 %6183, -120
  %6296 = add i64 %6262, 36
  store i64 %6296, i64* %3, align 8
  %6297 = inttoptr i64 %6295 to i64*
  %6298 = load i64, i64* %6297, align 8
  store i64 %6298, i64* %RAX.i34, align 8
  %6299 = add i64 %6183, -124
  %6300 = add i64 %6262, 40
  store i64 %6300, i64* %3, align 8
  %6301 = inttoptr i64 %6299 to i32*
  %6302 = load i32, i32* %6301, align 4
  %6303 = sext i32 %6302 to i64
  store i64 %6303, i64* %RCX.i100, align 8
  %6304 = shl nsw i64 %6303, 2
  %6305 = add i64 %6304, %6298
  %6306 = add i64 %6262, 45
  store i64 %6306, i64* %3, align 8
  %6307 = load <2 x float>, <2 x float>* %1478, align 1
  %6308 = load <2 x i32>, <2 x i32>* %1482, align 1
  %6309 = inttoptr i64 %6305 to float*
  %6310 = load float, float* %6309, align 4
  %6311 = extractelement <2 x float> %6307, i32 0
  %6312 = fmul float %6311, %6310
  store float %6312, float* %1470, align 1
  %6313 = bitcast <2 x float> %6307 to <2 x i32>
  %6314 = extractelement <2 x i32> %6313, i32 1
  store i32 %6314, i32* %1483, align 1
  %6315 = extractelement <2 x i32> %6308, i32 0
  store i32 %6315, i32* %1484, align 1
  %6316 = extractelement <2 x i32> %6308, i32 1
  store i32 %6316, i32* %1485, align 1
  %6317 = load <2 x float>, <2 x float>* %300, align 1
  %6318 = load <2 x i32>, <2 x i32>* %1480, align 1
  %6319 = load <2 x float>, <2 x float>* %1478, align 1
  %6320 = extractelement <2 x float> %6317, i32 0
  %6321 = extractelement <2 x float> %6319, i32 0
  %6322 = fadd float %6320, %6321
  store float %6322, float* %288, align 1
  %6323 = bitcast <2 x float> %6317 to <2 x i32>
  %6324 = extractelement <2 x i32> %6323, i32 1
  store i32 %6324, i32* %343, align 1
  %6325 = extractelement <2 x i32> %6318, i32 0
  store i32 %6325, i32* %147, align 1
  %6326 = extractelement <2 x i32> %6318, i32 1
  store i32 %6326, i32* %344, align 1
  %6327 = load <2 x float>, <2 x float>* %300, align 1
  %6328 = extractelement <2 x float> %6327, i32 0
  %6329 = tail call float @llvm.trunc.f32(float %6328)
  %6330 = tail call float @llvm.fabs.f32(float %6329)
  %6331 = fcmp ogt float %6330, 0x41E0000000000000
  %6332 = fptosi float %6329 to i32
  %6333 = zext i32 %6332 to i64
  %6334 = select i1 %6331, i64 2147483648, i64 %6333
  store i64 %6334, i64* %RDX.i2857, align 8
  %6335 = load i64, i64* %RBP.i, align 8
  %6336 = add i64 %6335, -140
  %6337 = trunc i64 %6334 to i32
  %6338 = add i64 %6262, 59
  store i64 %6338, i64* %3, align 8
  %6339 = inttoptr i64 %6336 to i32*
  store i32 %6337, i32* %6339, align 4
  %6340 = load i32, i32* %EDX.i2852, align 4
  %6341 = load i64, i64* %3, align 8
  %6342 = add i32 %6340, 987654321
  %6343 = icmp ult i32 %6340, -987654321
  %6344 = zext i1 %6343 to i8
  store i8 %6344, i8* %14, align 1
  %6345 = and i32 %6342, 255
  %6346 = tail call i32 @llvm.ctpop.i32(i32 %6345)
  %6347 = trunc i32 %6346 to i8
  %6348 = and i8 %6347, 1
  %6349 = xor i8 %6348, 1
  store i8 %6349, i8* %21, align 1
  %6350 = xor i32 %6342, %6340
  %6351 = lshr i32 %6350, 4
  %6352 = trunc i32 %6351 to i8
  %6353 = and i8 %6352, 1
  store i8 %6353, i8* %26, align 1
  %6354 = icmp eq i32 %6342, 0
  %6355 = zext i1 %6354 to i8
  store i8 %6355, i8* %29, align 1
  %6356 = lshr i32 %6342, 31
  %6357 = trunc i32 %6356 to i8
  store i8 %6357, i8* %32, align 1
  %6358 = lshr i32 %6340, 31
  %6359 = xor i32 %6358, 1
  %6360 = xor i32 %6356, %6358
  %6361 = add nuw nsw i32 %6360, %6359
  %6362 = icmp eq i32 %6361, 2
  %6363 = zext i1 %6362 to i8
  store i8 %6363, i8* %38, align 1
  %6364 = icmp ne i8 %6357, 0
  %6365 = xor i1 %6364, %6362
  %6366 = or i1 %6354, %6365
  %.v157 = select i1 %6366, i64 52, i64 12
  %6367 = add i64 %6341, %.v157
  store i64 %6367, i64* %3, align 8
  br i1 %6366, label %block_.L_40f694, label %block_40f66c

block_40f66c:                                     ; preds = %block_40f625
  %6368 = load i64, i64* %RBP.i, align 8
  %6369 = add i64 %6368, -140
  %6370 = add i64 %6367, 6
  store i64 %6370, i64* %3, align 8
  %6371 = inttoptr i64 %6369 to i32*
  %6372 = load i32, i32* %6371, align 4
  %6373 = zext i32 %6372 to i64
  store i64 %6373, i64* %RAX.i34, align 8
  %6374 = add i64 %6368, -48
  %6375 = add i64 %6367, 10
  store i64 %6375, i64* %3, align 8
  %6376 = inttoptr i64 %6374 to i64*
  %6377 = load i64, i64* %6376, align 8
  store i64 %6377, i64* %RCX.i100, align 8
  %6378 = add i64 %6368, -148
  %6379 = add i64 %6367, 17
  store i64 %6379, i64* %3, align 8
  %6380 = inttoptr i64 %6378 to i32*
  %6381 = load i32, i32* %6380, align 4
  %6382 = sext i32 %6381 to i64
  store i64 %6382, i64* %RDX.i2857, align 8
  %6383 = shl nsw i64 %6382, 3
  %6384 = add i64 %6383, %6377
  %6385 = add i64 %6367, 21
  store i64 %6385, i64* %3, align 8
  %6386 = inttoptr i64 %6384 to i64*
  %6387 = load i64, i64* %6386, align 8
  store i64 %6387, i64* %RCX.i100, align 8
  %6388 = add i64 %6387, 8
  %6389 = add i64 %6367, 24
  store i64 %6389, i64* %3, align 8
  %6390 = inttoptr i64 %6388 to i32*
  store i32 %6372, i32* %6390, align 4
  %6391 = load i64, i64* %RBP.i, align 8
  %6392 = add i64 %6391, -80
  %6393 = load i64, i64* %3, align 8
  %6394 = add i64 %6393, 4
  store i64 %6394, i64* %3, align 8
  %6395 = inttoptr i64 %6392 to i64*
  %6396 = load i64, i64* %6395, align 8
  store i64 %6396, i64* %RCX.i100, align 8
  %6397 = add i64 %6391, -124
  %6398 = add i64 %6393, 8
  store i64 %6398, i64* %3, align 8
  %6399 = inttoptr i64 %6397 to i32*
  %6400 = load i32, i32* %6399, align 4
  %6401 = sext i32 %6400 to i64
  store i64 %6401, i64* %RDX.i2857, align 8
  %6402 = shl nsw i64 %6401, 3
  %6403 = add i64 %6402, %6396
  %6404 = add i64 %6393, 12
  store i64 %6404, i64* %3, align 8
  %6405 = inttoptr i64 %6403 to i64*
  %6406 = load i64, i64* %6405, align 8
  store i64 %6406, i64* %RCX.i100, align 8
  %6407 = add i64 %6406, 2
  %6408 = add i64 %6393, 16
  store i64 %6408, i64* %3, align 8
  %6409 = inttoptr i64 %6407 to i8*
  store i8 8, i8* %6409, align 1
  %.pre130 = load i64, i64* %3, align 8
  br label %block_.L_40f694

block_.L_40f694:                                  ; preds = %block_40f66c, %block_40f625, %block_40f611, %block_.L_40f5cf
  %6410 = phi i64 [ %.pre130, %block_40f66c ], [ %6367, %block_40f625 ], [ %6262, %block_40f611 ], [ %6228, %block_.L_40f5cf ]
  %6411 = load i64, i64* %RBP.i, align 8
  %6412 = add i64 %6411, -48
  %6413 = add i64 %6410, 4
  store i64 %6413, i64* %3, align 8
  %6414 = inttoptr i64 %6412 to i64*
  %6415 = load i64, i64* %6414, align 8
  store i64 %6415, i64* %RAX.i34, align 8
  %6416 = add i64 %6411, -148
  %6417 = add i64 %6410, 11
  store i64 %6417, i64* %3, align 8
  %6418 = inttoptr i64 %6416 to i32*
  %6419 = load i32, i32* %6418, align 4
  %6420 = sext i32 %6419 to i64
  store i64 %6420, i64* %RCX.i100, align 8
  %6421 = shl nsw i64 %6420, 3
  %6422 = add i64 %6421, %6415
  %6423 = add i64 %6410, 15
  store i64 %6423, i64* %3, align 8
  %6424 = inttoptr i64 %6422 to i64*
  %6425 = load i64, i64* %6424, align 8
  store i64 %6425, i64* %RAX.i34, align 8
  %6426 = add i64 %6425, 4
  %6427 = add i64 %6410, 22
  store i64 %6427, i64* %3, align 8
  %6428 = inttoptr i64 %6426 to i32*
  %6429 = load i32, i32* %6428, align 4
  %6430 = add i32 %6429, 987654321
  %6431 = icmp ult i32 %6429, -987654321
  %6432 = zext i1 %6431 to i8
  store i8 %6432, i8* %14, align 1
  %6433 = and i32 %6430, 255
  %6434 = tail call i32 @llvm.ctpop.i32(i32 %6433)
  %6435 = trunc i32 %6434 to i8
  %6436 = and i8 %6435, 1
  %6437 = xor i8 %6436, 1
  store i8 %6437, i8* %21, align 1
  %6438 = xor i32 %6430, %6429
  %6439 = lshr i32 %6438, 4
  %6440 = trunc i32 %6439 to i8
  %6441 = and i8 %6440, 1
  store i8 %6441, i8* %26, align 1
  %6442 = icmp eq i32 %6430, 0
  %6443 = zext i1 %6442 to i8
  store i8 %6443, i8* %29, align 1
  %6444 = lshr i32 %6430, 31
  %6445 = trunc i32 %6444 to i8
  store i8 %6445, i8* %32, align 1
  %6446 = lshr i32 %6429, 31
  %6447 = xor i32 %6446, 1
  %6448 = xor i32 %6444, %6446
  %6449 = add nuw nsw i32 %6448, %6447
  %6450 = icmp eq i32 %6449, 2
  %6451 = zext i1 %6450 to i8
  store i8 %6451, i8* %38, align 1
  %6452 = icmp ne i8 %6445, 0
  %6453 = xor i1 %6452, %6450
  %6454 = or i1 %6442, %6453
  %.v158 = select i1 %6454, i64 146, i64 28
  %6455 = add i64 %6410, %.v158
  store i64 %6455, i64* %3, align 8
  br i1 %6454, label %block_.L_40f726, label %block_40f6b0

block_40f6b0:                                     ; preds = %block_.L_40f694
  %6456 = add i64 %6411, -16
  %6457 = add i64 %6455, 4
  store i64 %6457, i64* %3, align 8
  %6458 = inttoptr i64 %6456 to i64*
  %6459 = load i64, i64* %6458, align 8
  store i64 %6459, i64* %RAX.i34, align 8
  %6460 = add i64 %6459, 344
  %6461 = add i64 %6455, 14
  store i64 %6461, i64* %3, align 8
  %6462 = inttoptr i64 %6460 to i32*
  %6463 = load i32, i32* %6462, align 4
  %6464 = add i32 %6463, 987654321
  %6465 = icmp ult i32 %6463, -987654321
  %6466 = zext i1 %6465 to i8
  store i8 %6466, i8* %14, align 1
  %6467 = and i32 %6464, 255
  %6468 = tail call i32 @llvm.ctpop.i32(i32 %6467)
  %6469 = trunc i32 %6468 to i8
  %6470 = and i8 %6469, 1
  %6471 = xor i8 %6470, 1
  store i8 %6471, i8* %21, align 1
  %6472 = xor i32 %6464, %6463
  %6473 = lshr i32 %6472, 4
  %6474 = trunc i32 %6473 to i8
  %6475 = and i8 %6474, 1
  store i8 %6475, i8* %26, align 1
  %6476 = icmp eq i32 %6464, 0
  %6477 = zext i1 %6476 to i8
  store i8 %6477, i8* %29, align 1
  %6478 = lshr i32 %6464, 31
  %6479 = trunc i32 %6478 to i8
  store i8 %6479, i8* %32, align 1
  %6480 = lshr i32 %6463, 31
  %6481 = xor i32 %6480, 1
  %6482 = xor i32 %6478, %6480
  %6483 = add nuw nsw i32 %6482, %6481
  %6484 = icmp eq i32 %6483, 2
  %6485 = zext i1 %6484 to i8
  store i8 %6485, i8* %38, align 1
  %6486 = icmp ne i8 %6479, 0
  %6487 = xor i1 %6486, %6484
  %6488 = or i1 %6476, %6487
  %.v159 = select i1 %6488, i64 118, i64 20
  %6489 = add i64 %6455, %.v159
  store i64 %6489, i64* %3, align 8
  br i1 %6488, label %block_.L_40f726, label %block_40f6c4

block_40f6c4:                                     ; preds = %block_40f6b0
  %6490 = add i64 %6489, 4
  store i64 %6490, i64* %3, align 8
  %6491 = load i64, i64* %6414, align 8
  store i64 %6491, i64* %RAX.i34, align 8
  %6492 = add i64 %6489, 11
  store i64 %6492, i64* %3, align 8
  %6493 = load i32, i32* %6418, align 4
  %6494 = sext i32 %6493 to i64
  store i64 %6494, i64* %RCX.i100, align 8
  %6495 = shl nsw i64 %6494, 3
  %6496 = add i64 %6495, %6491
  %6497 = add i64 %6489, 15
  store i64 %6497, i64* %3, align 8
  %6498 = inttoptr i64 %6496 to i64*
  %6499 = load i64, i64* %6498, align 8
  store i64 %6499, i64* %RAX.i34, align 8
  %6500 = add i64 %6499, 4
  %6501 = add i64 %6489, 18
  store i64 %6501, i64* %3, align 8
  %6502 = inttoptr i64 %6500 to i32*
  %6503 = load i32, i32* %6502, align 4
  %6504 = zext i32 %6503 to i64
  store i64 %6504, i64* %RDX.i2857, align 8
  %6505 = add i64 %6489, 22
  store i64 %6505, i64* %3, align 8
  %6506 = load i64, i64* %6458, align 8
  store i64 %6506, i64* %RAX.i34, align 8
  %6507 = add i64 %6506, 344
  %6508 = add i64 %6489, 28
  store i64 %6508, i64* %3, align 8
  %6509 = inttoptr i64 %6507 to i32*
  %6510 = load i32, i32* %6509, align 4
  %6511 = add i32 %6510, %6503
  %6512 = zext i32 %6511 to i64
  store i64 %6512, i64* %RDX.i2857, align 8
  %6513 = icmp ult i32 %6511, %6503
  %6514 = icmp ult i32 %6511, %6510
  %6515 = or i1 %6513, %6514
  %6516 = zext i1 %6515 to i8
  store i8 %6516, i8* %14, align 1
  %6517 = and i32 %6511, 255
  %6518 = tail call i32 @llvm.ctpop.i32(i32 %6517)
  %6519 = trunc i32 %6518 to i8
  %6520 = and i8 %6519, 1
  %6521 = xor i8 %6520, 1
  store i8 %6521, i8* %21, align 1
  %6522 = xor i32 %6510, %6503
  %6523 = xor i32 %6522, %6511
  %6524 = lshr i32 %6523, 4
  %6525 = trunc i32 %6524 to i8
  %6526 = and i8 %6525, 1
  store i8 %6526, i8* %26, align 1
  %6527 = icmp eq i32 %6511, 0
  %6528 = zext i1 %6527 to i8
  store i8 %6528, i8* %29, align 1
  %6529 = lshr i32 %6511, 31
  %6530 = trunc i32 %6529 to i8
  store i8 %6530, i8* %32, align 1
  %6531 = lshr i32 %6503, 31
  %6532 = lshr i32 %6510, 31
  %6533 = xor i32 %6529, %6531
  %6534 = xor i32 %6529, %6532
  %6535 = add nuw nsw i32 %6533, %6534
  %6536 = icmp eq i32 %6535, 2
  %6537 = zext i1 %6536 to i8
  store i8 %6537, i8* %38, align 1
  %6538 = add i64 %6411, -140
  %6539 = add i64 %6489, 34
  store i64 %6539, i64* %3, align 8
  %6540 = inttoptr i64 %6538 to i32*
  store i32 %6511, i32* %6540, align 4
  %6541 = load i64, i64* %RBP.i, align 8
  %6542 = add i64 %6541, -48
  %6543 = load i64, i64* %3, align 8
  %6544 = add i64 %6543, 4
  store i64 %6544, i64* %3, align 8
  %6545 = inttoptr i64 %6542 to i64*
  %6546 = load i64, i64* %6545, align 8
  store i64 %6546, i64* %RAX.i34, align 8
  %6547 = add i64 %6541, -148
  %6548 = add i64 %6543, 11
  store i64 %6548, i64* %3, align 8
  %6549 = inttoptr i64 %6547 to i32*
  %6550 = load i32, i32* %6549, align 4
  %6551 = sext i32 %6550 to i64
  store i64 %6551, i64* %RCX.i100, align 8
  %6552 = shl nsw i64 %6551, 3
  %6553 = add i64 %6552, %6546
  %6554 = add i64 %6543, 15
  store i64 %6554, i64* %3, align 8
  %6555 = inttoptr i64 %6553 to i64*
  %6556 = load i64, i64* %6555, align 8
  store i64 %6556, i64* %RAX.i34, align 8
  %6557 = load i32, i32* %EDX.i2852, align 4
  %6558 = add i64 %6556, 8
  %6559 = add i64 %6543, 18
  store i64 %6559, i64* %3, align 8
  %6560 = inttoptr i64 %6558 to i32*
  %6561 = load i32, i32* %6560, align 4
  %6562 = sub i32 %6557, %6561
  %6563 = icmp ult i32 %6557, %6561
  %6564 = zext i1 %6563 to i8
  store i8 %6564, i8* %14, align 1
  %6565 = and i32 %6562, 255
  %6566 = tail call i32 @llvm.ctpop.i32(i32 %6565)
  %6567 = trunc i32 %6566 to i8
  %6568 = and i8 %6567, 1
  %6569 = xor i8 %6568, 1
  store i8 %6569, i8* %21, align 1
  %6570 = xor i32 %6561, %6557
  %6571 = xor i32 %6570, %6562
  %6572 = lshr i32 %6571, 4
  %6573 = trunc i32 %6572 to i8
  %6574 = and i8 %6573, 1
  store i8 %6574, i8* %26, align 1
  %6575 = icmp eq i32 %6562, 0
  %6576 = zext i1 %6575 to i8
  store i8 %6576, i8* %29, align 1
  %6577 = lshr i32 %6562, 31
  %6578 = trunc i32 %6577 to i8
  store i8 %6578, i8* %32, align 1
  %6579 = lshr i32 %6557, 31
  %6580 = lshr i32 %6561, 31
  %6581 = xor i32 %6580, %6579
  %6582 = xor i32 %6577, %6579
  %6583 = add nuw nsw i32 %6582, %6581
  %6584 = icmp eq i32 %6583, 2
  %6585 = zext i1 %6584 to i8
  store i8 %6585, i8* %38, align 1
  %6586 = icmp ne i8 %6578, 0
  %6587 = xor i1 %6586, %6584
  %6588 = or i1 %6575, %6587
  %.v160 = select i1 %6588, i64 64, i64 24
  %6589 = add i64 %6543, %.v160
  store i64 %6589, i64* %3, align 8
  br i1 %6588, label %block_.L_40f726, label %block_40f6fe

block_40f6fe:                                     ; preds = %block_40f6c4
  %6590 = add i64 %6541, -140
  %6591 = add i64 %6589, 6
  store i64 %6591, i64* %3, align 8
  %6592 = inttoptr i64 %6590 to i32*
  %6593 = load i32, i32* %6592, align 4
  %6594 = zext i32 %6593 to i64
  store i64 %6594, i64* %RAX.i34, align 8
  %6595 = add i64 %6589, 10
  store i64 %6595, i64* %3, align 8
  %6596 = load i64, i64* %6545, align 8
  store i64 %6596, i64* %RCX.i100, align 8
  %6597 = add i64 %6589, 17
  store i64 %6597, i64* %3, align 8
  %6598 = load i32, i32* %6549, align 4
  %6599 = sext i32 %6598 to i64
  store i64 %6599, i64* %RDX.i2857, align 8
  %6600 = shl nsw i64 %6599, 3
  %6601 = add i64 %6600, %6596
  %6602 = add i64 %6589, 21
  store i64 %6602, i64* %3, align 8
  %6603 = inttoptr i64 %6601 to i64*
  %6604 = load i64, i64* %6603, align 8
  store i64 %6604, i64* %RCX.i100, align 8
  %6605 = add i64 %6604, 8
  %6606 = add i64 %6589, 24
  store i64 %6606, i64* %3, align 8
  %6607 = inttoptr i64 %6605 to i32*
  store i32 %6593, i32* %6607, align 4
  %6608 = load i64, i64* %RBP.i, align 8
  %6609 = add i64 %6608, -80
  %6610 = load i64, i64* %3, align 8
  %6611 = add i64 %6610, 4
  store i64 %6611, i64* %3, align 8
  %6612 = inttoptr i64 %6609 to i64*
  %6613 = load i64, i64* %6612, align 8
  store i64 %6613, i64* %RCX.i100, align 8
  %6614 = add i64 %6608, -124
  %6615 = add i64 %6610, 8
  store i64 %6615, i64* %3, align 8
  %6616 = inttoptr i64 %6614 to i32*
  %6617 = load i32, i32* %6616, align 4
  %6618 = sext i32 %6617 to i64
  store i64 %6618, i64* %RDX.i2857, align 8
  %6619 = shl nsw i64 %6618, 3
  %6620 = add i64 %6619, %6613
  %6621 = add i64 %6610, 12
  store i64 %6621, i64* %3, align 8
  %6622 = inttoptr i64 %6620 to i64*
  %6623 = load i64, i64* %6622, align 8
  store i64 %6623, i64* %RCX.i100, align 8
  %6624 = add i64 %6623, 2
  %6625 = add i64 %6610, 16
  store i64 %6625, i64* %3, align 8
  %6626 = inttoptr i64 %6624 to i8*
  store i8 7, i8* %6626, align 1
  %.pre131 = load i64, i64* %3, align 8
  %.pre132 = load i64, i64* %RBP.i, align 8
  br label %block_.L_40f726

block_.L_40f726:                                  ; preds = %block_40f6fe, %block_40f6c4, %block_40f6b0, %block_.L_40f694
  %6627 = phi i64 [ %.pre132, %block_40f6fe ], [ %6541, %block_40f6c4 ], [ %6411, %block_40f6b0 ], [ %6411, %block_.L_40f694 ]
  %6628 = phi i64 [ %.pre131, %block_40f6fe ], [ %6589, %block_40f6c4 ], [ %6489, %block_40f6b0 ], [ %6455, %block_.L_40f694 ]
  %6629 = add i64 %6627, -124
  %6630 = add i64 %6628, 8
  store i64 %6630, i64* %3, align 8
  %6631 = inttoptr i64 %6629 to i32*
  %6632 = load i32, i32* %6631, align 4
  %6633 = add i32 %6632, 1
  %6634 = zext i32 %6633 to i64
  store i64 %6634, i64* %RAX.i34, align 8
  %6635 = icmp eq i32 %6632, -1
  %6636 = icmp eq i32 %6633, 0
  %6637 = or i1 %6635, %6636
  %6638 = zext i1 %6637 to i8
  store i8 %6638, i8* %14, align 1
  %6639 = and i32 %6633, 255
  %6640 = tail call i32 @llvm.ctpop.i32(i32 %6639)
  %6641 = trunc i32 %6640 to i8
  %6642 = and i8 %6641, 1
  %6643 = xor i8 %6642, 1
  store i8 %6643, i8* %21, align 1
  %6644 = xor i32 %6633, %6632
  %6645 = lshr i32 %6644, 4
  %6646 = trunc i32 %6645 to i8
  %6647 = and i8 %6646, 1
  store i8 %6647, i8* %26, align 1
  %6648 = zext i1 %6636 to i8
  store i8 %6648, i8* %29, align 1
  %6649 = lshr i32 %6633, 31
  %6650 = trunc i32 %6649 to i8
  store i8 %6650, i8* %32, align 1
  %6651 = lshr i32 %6632, 31
  %6652 = xor i32 %6649, %6651
  %6653 = add nuw nsw i32 %6652, %6649
  %6654 = icmp eq i32 %6653, 2
  %6655 = zext i1 %6654 to i8
  store i8 %6655, i8* %38, align 1
  %6656 = add i64 %6628, 14
  store i64 %6656, i64* %3, align 8
  store i32 %6633, i32* %6631, align 4
  %6657 = load i64, i64* %3, align 8
  %6658 = add i64 %6657, -3512
  store i64 %6658, i64* %3, align 8
  br label %block_.L_40e97c

block_.L_40f739:                                  ; preds = %block_.L_40e97c
  %6659 = add i64 %1489, -48
  %6660 = add i64 %1529, 9
  store i64 %6660, i64* %3, align 8
  %6661 = inttoptr i64 %6659 to i64*
  %6662 = load i64, i64* %6661, align 8
  store i64 %6662, i64* %RCX.i100, align 8
  %6663 = add i64 %1529, 13
  store i64 %6663, i64* %3, align 8
  %6664 = load i64, i64* %1497, align 8
  store i64 %6664, i64* %RDX.i2857, align 8
  %6665 = add i64 %6664, 24
  %6666 = add i64 %1529, 16
  store i64 %6666, i64* %3, align 8
  %6667 = inttoptr i64 %6665 to i32*
  %6668 = load i32, i32* %6667, align 4
  %6669 = zext i32 %6668 to i64
  store i64 %6669, i64* %RSI.i1533, align 8
  %6670 = add i64 %1489, -180
  %6671 = add i64 %1529, 22
  store i64 %6671, i64* %3, align 8
  %6672 = inttoptr i64 %6670 to i32*
  store i32 2, i32* %6672, align 4
  %6673 = load i32, i32* %ESI.i2543, align 4
  %6674 = zext i32 %6673 to i64
  %6675 = load i64, i64* %3, align 8
  store i64 %6674, i64* %RAX.i34, align 8
  %6676 = sext i32 %6673 to i64
  %6677 = lshr i64 %6676, 32
  store i64 %6677, i64* %1468, align 8
  %6678 = load i64, i64* %RBP.i, align 8
  %6679 = add i64 %6678, -180
  %6680 = add i64 %6675, 9
  store i64 %6680, i64* %3, align 8
  %6681 = inttoptr i64 %6679 to i32*
  %6682 = load i32, i32* %6681, align 4
  %6683 = zext i32 %6682 to i64
  store i64 %6683, i64* %RSI.i1533, align 8
  %6684 = add i64 %6675, 11
  store i64 %6684, i64* %3, align 8
  %6685 = sext i32 %6682 to i64
  %6686 = shl nuw i64 %6677, 32
  %6687 = or i64 %6686, %6674
  %6688 = sdiv i64 %6687, %6685
  %6689 = shl i64 %6688, 32
  %6690 = ashr exact i64 %6689, 32
  %6691 = icmp eq i64 %6688, %6690
  br i1 %6691, label %6694, label %6692

; <label>:6692:                                   ; preds = %block_.L_40f739
  %6693 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6684, %struct.Memory* %MEMORY.5)
  %.pre133 = load i32, i32* %EDX.i2852, align 4
  %.pre134 = load i64, i64* %3, align 8
  %.pre135 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__esi.exit

; <label>:6694:                                   ; preds = %block_.L_40f739
  %6695 = srem i64 %6687, %6685
  %6696 = and i64 %6688, 4294967295
  store i64 %6696, i64* %RAX.i34, align 8
  %6697 = and i64 %6695, 4294967295
  store i64 %6697, i64* %RDX.i2857, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %6698 = trunc i64 %6695 to i32
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %6694, %6692
  %6699 = phi i64 [ %.pre135, %6692 ], [ %6678, %6694 ]
  %6700 = phi i64 [ %.pre134, %6692 ], [ %6684, %6694 ]
  %6701 = phi i32 [ %.pre133, %6692 ], [ %6698, %6694 ]
  %6702 = phi %struct.Memory* [ %6693, %6692 ], [ %MEMORY.5, %6694 ]
  %6703 = sext i32 %6701 to i64
  store i64 %6703, i64* %RDI.i783, align 8
  %6704 = load i64, i64* %RCX.i100, align 8
  %6705 = shl nsw i64 %6703, 3
  %6706 = add i64 %6704, %6705
  %6707 = add i64 %6700, 7
  store i64 %6707, i64* %3, align 8
  %6708 = inttoptr i64 %6706 to i64*
  %6709 = load i64, i64* %6708, align 8
  store i64 %6709, i64* %RCX.i100, align 8
  %6710 = add i64 %6709, 8
  %6711 = add i64 %6700, 10
  store i64 %6711, i64* %3, align 8
  %6712 = inttoptr i64 %6710 to i32*
  %6713 = load i32, i32* %6712, align 4
  %6714 = zext i32 %6713 to i64
  store i64 %6714, i64* %RDX.i2857, align 8
  %6715 = add i64 %6699, -16
  %6716 = add i64 %6700, 14
  store i64 %6716, i64* %3, align 8
  %6717 = inttoptr i64 %6715 to i64*
  %6718 = load i64, i64* %6717, align 8
  store i64 %6718, i64* %RCX.i100, align 8
  %6719 = add i64 %6718, 352
  %6720 = add i64 %6700, 20
  store i64 %6720, i64* %3, align 8
  %6721 = inttoptr i64 %6719 to i32*
  %6722 = load i32, i32* %6721, align 4
  %6723 = add i32 %6722, %6713
  %6724 = zext i32 %6723 to i64
  store i64 %6724, i64* %RDX.i2857, align 8
  %6725 = icmp ult i32 %6723, %6713
  %6726 = icmp ult i32 %6723, %6722
  %6727 = or i1 %6725, %6726
  %6728 = zext i1 %6727 to i8
  store i8 %6728, i8* %14, align 1
  %6729 = and i32 %6723, 255
  %6730 = tail call i32 @llvm.ctpop.i32(i32 %6729)
  %6731 = trunc i32 %6730 to i8
  %6732 = and i8 %6731, 1
  %6733 = xor i8 %6732, 1
  store i8 %6733, i8* %21, align 1
  %6734 = xor i32 %6722, %6713
  %6735 = xor i32 %6734, %6723
  %6736 = lshr i32 %6735, 4
  %6737 = trunc i32 %6736 to i8
  %6738 = and i8 %6737, 1
  store i8 %6738, i8* %26, align 1
  %6739 = icmp eq i32 %6723, 0
  %6740 = zext i1 %6739 to i8
  store i8 %6740, i8* %29, align 1
  %6741 = lshr i32 %6723, 31
  %6742 = trunc i32 %6741 to i8
  store i8 %6742, i8* %32, align 1
  %6743 = lshr i32 %6713, 31
  %6744 = lshr i32 %6722, 31
  %6745 = xor i32 %6741, %6743
  %6746 = xor i32 %6741, %6744
  %6747 = add nuw nsw i32 %6745, %6746
  %6748 = icmp eq i32 %6747, 2
  %6749 = zext i1 %6748 to i8
  store i8 %6749, i8* %38, align 1
  %6750 = add i64 %6699, -140
  %6751 = add i64 %6700, 26
  store i64 %6751, i64* %3, align 8
  %6752 = inttoptr i64 %6750 to i32*
  store i32 %6723, i32* %6752, align 4
  %6753 = load i64, i64* %RBP.i, align 8
  %6754 = add i64 %6753, -32
  %6755 = load i64, i64* %3, align 8
  %6756 = add i64 %6755, 4
  store i64 %6756, i64* %3, align 8
  %6757 = inttoptr i64 %6754 to i64*
  %6758 = load i64, i64* %6757, align 8
  store i64 %6758, i64* %RDI.i783, align 8
  %6759 = add i64 %6753, -16
  %6760 = add i64 %6755, 8
  store i64 %6760, i64* %3, align 8
  %6761 = inttoptr i64 %6759 to i64*
  %6762 = load i64, i64* %6761, align 8
  store i64 %6762, i64* %RSI.i1533, align 8
  %6763 = add i64 %6753, -8
  %6764 = add i64 %6755, 12
  store i64 %6764, i64* %3, align 8
  %6765 = inttoptr i64 %6763 to i64*
  %6766 = load i64, i64* %6765, align 8
  store i64 %6766, i64* %RCX.i100, align 8
  %6767 = add i64 %6766, 24
  %6768 = add i64 %6755, 15
  store i64 %6768, i64* %3, align 8
  %6769 = inttoptr i64 %6767 to i32*
  %6770 = load i32, i32* %6769, align 4
  %6771 = zext i32 %6770 to i64
  store i64 %6771, i64* %RDX.i2857, align 8
  %6772 = add i64 %6755, 140
  %6773 = add i64 %6755, 20
  %6774 = load i64, i64* %6, align 8
  %6775 = add i64 %6774, -8
  %6776 = inttoptr i64 %6775 to i64*
  store i64 %6773, i64* %6776, align 8
  store i64 %6775, i64* %6, align 8
  store i64 %6772, i64* %3, align 8
  %call2_40f783 = tail call %struct.Memory* @sub_40f800.ShadowTrace(%struct.State* nonnull %0, i64 %6772, %struct.Memory* %6702)
  %6777 = load i64, i64* %RBP.i, align 8
  %6778 = add i64 %6777, -40
  %6779 = load i64, i64* %RAX.i34, align 8
  %6780 = load i64, i64* %3, align 8
  %6781 = add i64 %6780, 4
  store i64 %6781, i64* %3, align 8
  %6782 = inttoptr i64 %6778 to i64*
  store i64 %6779, i64* %6782, align 8
  %6783 = load i64, i64* %RBP.i, align 8
  %6784 = add i64 %6783, -24
  %6785 = load i64, i64* %3, align 8
  %6786 = add i64 %6785, 4
  store i64 %6786, i64* %3, align 8
  %6787 = inttoptr i64 %6784 to i64*
  %6788 = load i64, i64* %6787, align 8
  store i64 %6788, i64* %RDI.i783, align 8
  %6789 = add i64 %6785, -32332
  %6790 = add i64 %6785, 9
  %6791 = load i64, i64* %6, align 8
  %6792 = add i64 %6791, -8
  %6793 = inttoptr i64 %6792 to i64*
  store i64 %6790, i64* %6793, align 8
  store i64 %6792, i64* %6, align 8
  store i64 %6789, i64* %3, align 8
  %call2_40f790 = tail call %struct.Memory* @sub_407940.FreePlan7Matrix(%struct.State* nonnull %0, i64 %6789, %struct.Memory* %call2_40f783)
  %6794 = load i64, i64* %RBP.i, align 8
  %6795 = add i64 %6794, -32
  %6796 = load i64, i64* %3, align 8
  %6797 = add i64 %6796, 4
  store i64 %6797, i64* %3, align 8
  %6798 = inttoptr i64 %6795 to i64*
  %6799 = load i64, i64* %6798, align 8
  store i64 %6799, i64* %RDI.i783, align 8
  %6800 = add i64 %6796, -31381
  %6801 = add i64 %6796, 9
  %6802 = load i64, i64* %6, align 8
  %6803 = add i64 %6802, -8
  %6804 = inttoptr i64 %6803 to i64*
  store i64 %6801, i64* %6804, align 8
  store i64 %6803, i64* %6, align 8
  store i64 %6800, i64* %3, align 8
  %call2_40f799 = tail call %struct.Memory* @sub_407d00.FreeShadowMatrix(%struct.State* nonnull %0, i64 %6800, %struct.Memory* %call2_40f790)
  %6805 = load i64, i64* %RBP.i, align 8
  %6806 = add i64 %6805, -124
  %6807 = load i64, i64* %3, align 8
  %6808 = add i64 %6807, 7
  store i64 %6808, i64* %3, align 8
  %6809 = inttoptr i64 %6806 to i32*
  store i32 1, i32* %6809, align 4
  %.pre136 = load i64, i64* %3, align 8
  br label %block_.L_40f7a5

block_.L_40f7a5:                                  ; preds = %block_40f7b5, %routine_idivl__esi.exit
  %6810 = phi i64 [ %.pre136, %routine_idivl__esi.exit ], [ %6901, %block_40f7b5 ]
  %MEMORY.28 = phi %struct.Memory* [ %call2_40f799, %routine_idivl__esi.exit ], [ %6869, %block_40f7b5 ]
  %6811 = load i64, i64* %RBP.i, align 8
  %6812 = add i64 %6811, -124
  %6813 = add i64 %6810, 3
  store i64 %6813, i64* %3, align 8
  %6814 = inttoptr i64 %6812 to i32*
  %6815 = load i32, i32* %6814, align 4
  %6816 = zext i32 %6815 to i64
  store i64 %6816, i64* %RAX.i34, align 8
  %6817 = add i64 %6811, -8
  %6818 = add i64 %6810, 7
  store i64 %6818, i64* %3, align 8
  %6819 = inttoptr i64 %6817 to i64*
  %6820 = load i64, i64* %6819, align 8
  store i64 %6820, i64* %RCX.i100, align 8
  %6821 = add i64 %6820, 24
  %6822 = add i64 %6810, 10
  store i64 %6822, i64* %3, align 8
  %6823 = inttoptr i64 %6821 to i32*
  %6824 = load i32, i32* %6823, align 4
  %6825 = sub i32 %6815, %6824
  %6826 = icmp ult i32 %6815, %6824
  %6827 = zext i1 %6826 to i8
  store i8 %6827, i8* %14, align 1
  %6828 = and i32 %6825, 255
  %6829 = tail call i32 @llvm.ctpop.i32(i32 %6828)
  %6830 = trunc i32 %6829 to i8
  %6831 = and i8 %6830, 1
  %6832 = xor i8 %6831, 1
  store i8 %6832, i8* %21, align 1
  %6833 = xor i32 %6824, %6815
  %6834 = xor i32 %6833, %6825
  %6835 = lshr i32 %6834, 4
  %6836 = trunc i32 %6835 to i8
  %6837 = and i8 %6836, 1
  store i8 %6837, i8* %26, align 1
  %6838 = icmp eq i32 %6825, 0
  %6839 = zext i1 %6838 to i8
  store i8 %6839, i8* %29, align 1
  %6840 = lshr i32 %6825, 31
  %6841 = trunc i32 %6840 to i8
  store i8 %6841, i8* %32, align 1
  %6842 = lshr i32 %6815, 31
  %6843 = lshr i32 %6824, 31
  %6844 = xor i32 %6843, %6842
  %6845 = xor i32 %6840, %6842
  %6846 = add nuw nsw i32 %6845, %6844
  %6847 = icmp eq i32 %6846, 2
  %6848 = zext i1 %6847 to i8
  store i8 %6848, i8* %38, align 1
  %6849 = icmp ne i8 %6841, 0
  %6850 = xor i1 %6849, %6847
  %.demorgan143 = or i1 %6838, %6850
  %.v = select i1 %.demorgan143, i64 16, i64 50
  %6851 = add i64 %6810, %.v
  %6852 = add i64 %6811, -112
  %6853 = add i64 %6851, 4
  store i64 %6853, i64* %3, align 8
  %6854 = inttoptr i64 %6852 to i64*
  %6855 = load i64, i64* %6854, align 8
  store i64 %6855, i64* %RAX.i34, align 8
  br i1 %.demorgan143, label %block_40f7b5, label %block_.L_40f7d7

block_40f7b5:                                     ; preds = %block_.L_40f7a5
  %6856 = add i64 %6851, 8
  store i64 %6856, i64* %3, align 8
  %6857 = load i32, i32* %6814, align 4
  %6858 = sext i32 %6857 to i64
  store i64 %6858, i64* %RCX.i100, align 8
  %6859 = shl nsw i64 %6858, 3
  %6860 = add i64 %6859, %6855
  %6861 = add i64 %6851, 12
  store i64 %6861, i64* %3, align 8
  %6862 = inttoptr i64 %6860 to i64*
  %6863 = load i64, i64* %6862, align 8
  store i64 %6863, i64* %RAX.i34, align 8
  store i64 %6863, i64* %RDI.i783, align 8
  %6864 = add i64 %6851, -58421
  %6865 = add i64 %6851, 20
  %6866 = load i64, i64* %6, align 8
  %6867 = add i64 %6866, -8
  %6868 = inttoptr i64 %6867 to i64*
  store i64 %6865, i64* %6868, align 8
  store i64 %6867, i64* %6, align 8
  store i64 %6864, i64* %3, align 8
  %6869 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %MEMORY.28)
  %6870 = load i64, i64* %RBP.i, align 8
  %6871 = add i64 %6870, -124
  %6872 = load i64, i64* %3, align 8
  %6873 = add i64 %6872, 3
  store i64 %6873, i64* %3, align 8
  %6874 = inttoptr i64 %6871 to i32*
  %6875 = load i32, i32* %6874, align 4
  %6876 = add i32 %6875, 1
  %6877 = zext i32 %6876 to i64
  store i64 %6877, i64* %RAX.i34, align 8
  %6878 = icmp eq i32 %6875, -1
  %6879 = icmp eq i32 %6876, 0
  %6880 = or i1 %6878, %6879
  %6881 = zext i1 %6880 to i8
  store i8 %6881, i8* %14, align 1
  %6882 = and i32 %6876, 255
  %6883 = tail call i32 @llvm.ctpop.i32(i32 %6882)
  %6884 = trunc i32 %6883 to i8
  %6885 = and i8 %6884, 1
  %6886 = xor i8 %6885, 1
  store i8 %6886, i8* %21, align 1
  %6887 = xor i32 %6876, %6875
  %6888 = lshr i32 %6887, 4
  %6889 = trunc i32 %6888 to i8
  %6890 = and i8 %6889, 1
  store i8 %6890, i8* %26, align 1
  %6891 = zext i1 %6879 to i8
  store i8 %6891, i8* %29, align 1
  %6892 = lshr i32 %6876, 31
  %6893 = trunc i32 %6892 to i8
  store i8 %6893, i8* %32, align 1
  %6894 = lshr i32 %6875, 31
  %6895 = xor i32 %6892, %6894
  %6896 = add nuw nsw i32 %6895, %6892
  %6897 = icmp eq i32 %6896, 2
  %6898 = zext i1 %6897 to i8
  store i8 %6898, i8* %38, align 1
  %6899 = add i64 %6872, 9
  store i64 %6899, i64* %3, align 8
  store i32 %6876, i32* %6874, align 4
  %6900 = load i64, i64* %3, align 8
  %6901 = add i64 %6900, -45
  store i64 %6901, i64* %3, align 8
  br label %block_.L_40f7a5

block_.L_40f7d7:                                  ; preds = %block_.L_40f7a5
  store i64 %6855, i64* %RDI.i783, align 8
  %6902 = add i64 %6851, -58455
  %6903 = add i64 %6851, 12
  %6904 = load i64, i64* %6, align 8
  %6905 = add i64 %6904, -8
  %6906 = inttoptr i64 %6905 to i64*
  store i64 %6903, i64* %6906, align 8
  store i64 %6905, i64* %6, align 8
  store i64 %6902, i64* %3, align 8
  %6907 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %MEMORY.28)
  %6908 = load i64, i64* %RBP.i, align 8
  %6909 = add i64 %6908, -120
  %6910 = load i64, i64* %3, align 8
  %6911 = add i64 %6910, 4
  store i64 %6911, i64* %3, align 8
  %6912 = inttoptr i64 %6909 to i64*
  %6913 = load i64, i64* %6912, align 8
  store i64 %6913, i64* %RAX.i34, align 8
  store i64 %6913, i64* %RDI.i783, align 8
  %6914 = add i64 %6910, -58467
  %6915 = add i64 %6910, 12
  %6916 = load i64, i64* %6, align 8
  %6917 = add i64 %6916, -8
  %6918 = inttoptr i64 %6917 to i64*
  store i64 %6915, i64* %6918, align 8
  store i64 %6917, i64* %6, align 8
  store i64 %6914, i64* %3, align 8
  %6919 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %6907)
  %6920 = load i64, i64* %RBP.i, align 8
  %6921 = add i64 %6920, -40
  %6922 = load i64, i64* %3, align 8
  %6923 = add i64 %6922, 4
  store i64 %6923, i64* %3, align 8
  %6924 = inttoptr i64 %6921 to i64*
  %6925 = load i64, i64* %6924, align 8
  store i64 %6925, i64* %RAX.i34, align 8
  %6926 = load i64, i64* %6, align 8
  %6927 = add i64 %6926, 192
  store i64 %6927, i64* %6, align 8
  %6928 = icmp ugt i64 %6926, -193
  %6929 = zext i1 %6928 to i8
  store i8 %6929, i8* %14, align 1
  %6930 = trunc i64 %6927 to i32
  %6931 = and i32 %6930, 255
  %6932 = tail call i32 @llvm.ctpop.i32(i32 %6931)
  %6933 = trunc i32 %6932 to i8
  %6934 = and i8 %6933, 1
  %6935 = xor i8 %6934, 1
  store i8 %6935, i8* %21, align 1
  %6936 = xor i64 %6927, %6926
  %6937 = lshr i64 %6936, 4
  %6938 = trunc i64 %6937 to i8
  %6939 = and i8 %6938, 1
  store i8 %6939, i8* %26, align 1
  %6940 = icmp eq i64 %6927, 0
  %6941 = zext i1 %6940 to i8
  store i8 %6941, i8* %29, align 1
  %6942 = lshr i64 %6927, 63
  %6943 = trunc i64 %6942 to i8
  store i8 %6943, i8* %32, align 1
  %6944 = lshr i64 %6926, 63
  %6945 = xor i64 %6942, %6944
  %6946 = add nuw nsw i64 %6945, %6942
  %6947 = icmp eq i64 %6946, 2
  %6948 = zext i1 %6947 to i8
  store i8 %6948, i8* %38, align 1
  %6949 = add i64 %6922, 12
  store i64 %6949, i64* %3, align 8
  %6950 = add i64 %6926, 200
  %6951 = inttoptr i64 %6927 to i64*
  %6952 = load i64, i64* %6951, align 8
  store i64 %6952, i64* %RBP.i, align 8
  store i64 %6950, i64* %6, align 8
  %6953 = add i64 %6922, 13
  store i64 %6953, i64* %3, align 8
  %6954 = inttoptr i64 %6950 to i64*
  %6955 = load i64, i64* %6954, align 8
  store i64 %6955, i64* %3, align 8
  %6956 = add i64 %6926, 208
  store i64 %6956, i64* %6, align 8
  ret %struct.Memory* %6919
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
define %struct.Memory* @routine_subq__0xc0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -192
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 192
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
define %struct.Memory* @routine_movq__0x455f2a___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x7fc___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2044, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_0x18__rsi____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_shlq__0x3___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 3
  store i64 %6, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq__rsi__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0xa0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__0x455f2a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x455f2a_type* @G__0x455f2a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x7fd___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2045, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_movq__rax__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x7c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 24
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
define %struct.Memory* @routine_jg_.L_40e5ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x7ff___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2047, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x677060___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
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
define %struct.Memory* @routine_movq_MINUS0x70__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
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
define %struct.Memory* @routine_movq___rax__rdx_8____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x677060___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.FSet(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40e582(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x46152__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x46152__rip__type* @G_0x46152__rip_ to i64)
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
define %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast i64* %RAX to float**
  %5 = load float*, float** %4, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  store float %10, float* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1c__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
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
define %struct.Memory* @routine_callq_.FSum(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_40e803(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 28
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
define %struct.Memory* @routine_jge_.L_40e7a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq___rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x84__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
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
define %struct.Memory* @routine_movl_MINUS0x7c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
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
define %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -32
  %8 = icmp ult i32 %4, 32
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
define %struct.Memory* @routine_je_.L_40e787(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -46
  %8 = icmp ult i32 %4, 46
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -95
  %8 = icmp ult i32 %4, 95
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -45
  %8 = icmp ult i32 %4, 45
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -126
  %8 = icmp ult i32 %4, 126
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x676fe0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x676fe0_type* @G__0x676fe0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
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
define %struct.Memory* @routine_movq___rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x84__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_movsbl___rcx__rdx_1____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__rax__MINUS0xa8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strchr_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x676fe0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x676fe0_type* @G__0x676fe0 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sub i64 %3, %4
  store i64 %7, i64* %RAX, align 8
  %8 = icmp ult i64 %3, %4
  %9 = zext i1 %8 to i8
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %9, i8* %10, align 1
  %11 = trunc i64 %7 to i32
  %12 = and i32 %11, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = xor i64 %4, %3
  %19 = xor i64 %18, %7
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = icmp eq i64 %7, 0
  %25 = zext i1 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %25, i8* %26, align 1
  %27 = lshr i64 %7, 63
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %28, i8* %29, align 1
  %30 = lshr i64 %3, 63
  %31 = lshr i64 %4, 63
  %32 = xor i64 %31, %30
  %33 = xor i64 %27, %30
  %34 = add nuw nsw i64 %33, %32
  %35 = icmp eq i64 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al___r8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %R8B, align 1
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
define %struct.Memory* @routine_movq_MINUS0xa8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl__r8b___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8B = bitcast %union.anon* %3 to i8*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i8, i8* %R8B, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = sext i8 %4 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.P7CountSymbol(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40e78c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40e637(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x46038__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x46038__rip__type* @G_0x46038__rip_ to i64)
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
define %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x90__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
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
define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %.cast = bitcast <2 x i32> %8 to double
  %12 = fptrunc double %.cast to float
  %13 = bitcast %union.VectorReg* %3 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %8, i32 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %11, i32 0
  %18 = bitcast i64* %9 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %11, i32 1
  %20 = getelementptr inbounds i8, i8* %4, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.FScale(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40e61d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x30__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x40__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x48__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R9, align 8
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
define %struct.Memory* @routine_movl_0x88__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 136
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
define %struct.Memory* @routine_callq_.AllocPlan7Matrix(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x50__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x58__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x60__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x68__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x18__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_movl_0x88__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 136
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
define %struct.Memory* @routine_movl__edi__MINUS0xac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -172
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_callq_.AllocShadowMatrix(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x4__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 4, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x150__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 336
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
define %struct.Memory* @routine_movb__0x5____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  store i8 5, i8* %4, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f__0xc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -987654321, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -987654321, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -987654321, i32* %7, align 4
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
define %struct.Memory* @routine_movb__0x0__0x3__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 0, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0__0x2__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 0, i8* %7, align 1
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
define %struct.Memory* @routine_movl_MINUS0x80__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 136
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
define %struct.Memory* @routine_jg_.L_40e975(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x80__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_movl__0xc521974f____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i32 -987654321, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movb__0x0____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 0, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_40e8f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_40f739(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x7c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
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
define %struct.Memory* @routine_movl__eax__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -176
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
define %struct.Memory* @routine_movl_MINUS0xb0__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
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
define %struct.Memory* @routine_movl__edx__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
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
define %struct.Memory* @routine_setne__sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorb__0xff___sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %SIL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = xor i8 %4, -1
  store i8 %7, i8* %SIL, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = zext i8 %7 to i32
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp eq i8 %4, -1
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i8 %7, 7
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %SIL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %SIL, align 1
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
define %struct.Memory* @routine_movzbl__sil___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i8, i8* %SIL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x94__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rdi__r8_8____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 -987654321, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x7c__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0____rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  store i8 0, i8* %4, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_40f358(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x94__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
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
define %struct.Memory* @routine_movslq_MINUS0x98__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
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
define %struct.Memory* @routine_cmpl__0xc521974f____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, 987654321
  %12 = icmp ult i32 %10, -987654321
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
  %21 = xor i32 %11, %10
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %11, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %11, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = xor i32 %32, 1
  %34 = xor i32 %29, %32
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40eb4c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xc521974f____rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, 987654321
  %12 = icmp ult i32 %10, -987654321
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
  %21 = xor i32 %11, %10
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %11, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %11, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = xor i32 %32, 1
  %34 = xor i32 %29, %32
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
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
define %struct.Memory* @routine_movl_MINUS0x80__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_addl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
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
  store i64 %14, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl___rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
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
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x94__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x80__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x1____rcx__rdx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_jle_.L_40ec3c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtsi2ssl___rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = sitofp i32 %17 to float
  %19 = bitcast %union.VectorReg* %3 to float*
  store float %18, float* %19, align 1
  %20 = extractelement <2 x i32> %12, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %15, i32 0
  %24 = bitcast i64* %13 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl___rax__rcx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = sitofp i32 %17 to float
  %19 = bitcast %union.VectorReg* %3 to float*
  store float %18, float* %19, align 1
  %20 = extractelement <2 x i32> %12, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %15, i32 0
  %24 = bitcast i64* %13 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss___rax__rcx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %19 = fmul float %18, %17
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
define %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fadd float %15, %16
  %18 = bitcast [32 x %union.VectorReg]* %3 to float*
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttss2si__xmm0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = tail call float @llvm.trunc.f32(float %8)
  %10 = tail call float @llvm.fabs.f32(float %9)
  %11 = fcmp ogt float %10, 0x41E0000000000000
  %12 = fptosi float %9 to i32
  %13 = zext i32 %12 to i64
  %14 = select i1 %11, i64 2147483648, i64 %13
  store i64 %14, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x3____rcx__rdx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 3, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x170__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 368
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40ecb1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x6____rcx__rdx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 6, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40ed83(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x28__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x2____rcx__rdx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 2, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_40ee78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x88__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
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
define %struct.Memory* @routine_jbe_.L_40ee0a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x140__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 320
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40ee0a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40ee78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss___rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fmul float %18, %17
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
define %struct.Memory* @routine_addss__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %17 = fadd float %15, %16
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttss2si__xmm1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = tail call float @llvm.trunc.f32(float %8)
  %10 = tail call float @llvm.fabs.f32(float %9)
  %11 = fcmp ogt float %10, 0x41E0000000000000
  %12 = fptosi float %9 to i32
  %13 = zext i32 %12 to i64
  %14 = select i1 %11, i64 2147483648, i64 %13
  store i64 %14, i64* %RDX, align 8
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
define %struct.Memory* @routine_jmpq_.L_40ed8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40ef78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x68__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40f04a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x30__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_40f345(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_40f162(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x60__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40f24b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_40f340(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jbe_.L_40f2d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x148__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_40f2d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40f340(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f255(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f345(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f34a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40ea3b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -987654321, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 0, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xc521974f__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 987654321
  %10 = icmp ult i32 %8, -987654321
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
  %31 = xor i32 %30, 1
  %32 = xor i32 %27, %30
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40f41d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xc521974f__0x154__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 340
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 987654321
  %10 = icmp ult i32 %8, -987654321
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
  %31 = xor i32 %30, 1
  %32 = xor i32 %27, %30
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_0x10__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 16
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_0x154__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 340
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xc521974f___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, 987654321
  %8 = icmp ult i32 %4, -987654321
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
  %29 = xor i32 %28, 1
  %30 = xor i32 %25, %28
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
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
define %struct.Memory* @routine_movl__eax__0x10__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 16
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x5__0x4__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 5, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0__0x1__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 0, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_40f51c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_40f509(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x178__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 376
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x4__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x4__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq_0x20__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f50e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f44a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 -987654321, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  store i8 0, i8* %4, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40f5cf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xc521974f__0x150__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 336
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 987654321
  %10 = icmp ult i32 %8, -987654321
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
  %31 = xor i32 %30, 1
  %32 = xor i32 %27, %30
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_addl_0x150__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 336
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl___rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = bitcast i64* %RAX to i32**
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sub i32 %4, %9
  %11 = icmp ult i32 %4, %9
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %12, i8* %13, align 1
  %14 = and i32 %10, 255
  %15 = tail call i32 @llvm.ctpop.i32(i32 %14)
  %16 = trunc i32 %15 to i8
  %17 = and i8 %16, 1
  %18 = xor i8 %17, 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %18, i8* %19, align 1
  %20 = xor i32 %9, %4
  %21 = xor i32 %20, %10
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %10, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %10, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %4, 31
  %33 = lshr i32 %9, 31
  %34 = xor i32 %33, %32
  %35 = xor i32 %29, %32
  %36 = add nuw nsw i32 %35, %34
  %37 = icmp eq i32 %36, 2
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
define %struct.Memory* @routine_movb__0x5____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  store i8 5, i8* %4, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xc521974f__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 987654321
  %10 = icmp ult i32 %8, -987654321
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
  %31 = xor i32 %30, 1
  %32 = xor i32 %27, %30
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40f694(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xc521974f__0x164__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 356
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 987654321
  %10 = icmp ult i32 %8, -987654321
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
  %31 = xor i32 %30, 1
  %32 = xor i32 %27, %30
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_0x8__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_0x164__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 356
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movb__0x8__0x2__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 8, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xc521974f__0x4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 987654321
  %10 = icmp ult i32 %8, -987654321
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
  %31 = xor i32 %30, 1
  %32 = xor i32 %27, %30
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_40f726(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xc521974f__0x158__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 344
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 987654321
  %10 = icmp ult i32 %8, -987654321
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
  %31 = xor i32 %30, 1
  %32 = xor i32 %27, %30
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
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
define %struct.Memory* @routine_addl_0x158__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 344
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x8__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_movb__0x7__0x2__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  store i8 7, i8* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40f72b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_40e97c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_0x18__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_movl__eax__MINUS0xb4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
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
define %struct.Memory* @routine_movl_MINUS0xb4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -180
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
define %struct.Memory* @routine_movslq__edx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx__rdi_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_addl_0x160__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 352
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movl_0x18__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_callq_.ShadowTrace(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.FreePlan7Matrix(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.FreeShadowMatrix(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_40f7d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_40f7a5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_addq__0xc0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 192
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -193
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
