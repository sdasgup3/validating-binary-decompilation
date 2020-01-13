; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x327__rip__4196577__type = type <{ [16 x i8] }>
%G_0x40a__rip__4196350__type = type <{ [16 x i8] }>
%G_0x426__rip__4196322__type = type <{ [16 x i8] }>
%G_0x446__rip__4196314__type = type <{ [16 x i8] }>
%G_0x483__rip__4196229__type = type <{ [16 x i8] }>
%G_0x4a6__rip__4196194__type = type <{ [16 x i8] }>
%G_0x4a6__rip__4196202__type = type <{ [16 x i8] }>
%G_0x4c9__rip__4196159__type = type <{ [16 x i8] }>
%G_0x4d1__rip__4196167__type = type <{ [16 x i8] }>
%G_0x4e9__rip__4196135__type = type <{ [16 x i8] }>
%G_0x509__rip__4196111__type = type <{ [16 x i8] }>
%G_0x511__rip__4196087__type = type <{ [16 x i8] }>
%G__0x400c28_type = type <{ [8 x i8] }>
%G__0x400c31_type = type <{ [8 x i8] }>
%G__0x400c39_type = type <{ [8 x i8] }>
%G__0x400c40_type = type <{ [8 x i8] }>
%G__0x400c49_type = type <{ [8 x i8] }>
%G__0x400c55_type = type <{ [8 x i8] }>
%G__0x400c63_type = type <{ [8 x i8] }>
%G__0x400c70_type = type <{ [8 x i8] }>
%G__0x400c7c_type = type <{ [8 x i8] }>
%G__0x400c85_type = type <{ [8 x i8] }>
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
@G_0x327__rip__4196577_ = local_unnamed_addr global %G_0x327__rip__4196577__type zeroinitializer
@G_0x40a__rip__4196350_ = local_unnamed_addr global %G_0x40a__rip__4196350__type zeroinitializer
@G_0x426__rip__4196322_ = local_unnamed_addr global %G_0x426__rip__4196322__type zeroinitializer
@G_0x446__rip__4196314_ = local_unnamed_addr global %G_0x446__rip__4196314__type zeroinitializer
@G_0x483__rip__4196229_ = local_unnamed_addr global %G_0x483__rip__4196229__type zeroinitializer
@G_0x4a6__rip__4196194_ = local_unnamed_addr global %G_0x4a6__rip__4196194__type zeroinitializer
@G_0x4a6__rip__4196202_ = local_unnamed_addr global %G_0x4a6__rip__4196202__type zeroinitializer
@G_0x4c9__rip__4196159_ = local_unnamed_addr global %G_0x4c9__rip__4196159__type zeroinitializer
@G_0x4d1__rip__4196167_ = local_unnamed_addr global %G_0x4d1__rip__4196167__type zeroinitializer
@G_0x4e9__rip__4196135_ = local_unnamed_addr global %G_0x4e9__rip__4196135__type zeroinitializer
@G_0x509__rip__4196111_ = local_unnamed_addr global %G_0x509__rip__4196111__type zeroinitializer
@G_0x511__rip__4196087_ = local_unnamed_addr global %G_0x511__rip__4196087__type zeroinitializer
@G__0x400c28 = global %G__0x400c28_type zeroinitializer
@G__0x400c31 = global %G__0x400c31_type zeroinitializer
@G__0x400c39 = global %G__0x400c39_type zeroinitializer
@G__0x400c40 = global %G__0x400c40_type zeroinitializer
@G__0x400c49 = global %G__0x400c49_type zeroinitializer
@G__0x400c55 = global %G__0x400c55_type zeroinitializer
@G__0x400c63 = global %G__0x400c63_type zeroinitializer
@G__0x400c70 = global %G__0x400c70_type zeroinitializer
@G__0x400c7c = global %G__0x400c7c_type zeroinitializer
@G__0x400c85 = global %G__0x400c85_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @pow(i64, i64)

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @ext_sqrt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @ext_cos(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @ext_sin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @sub_400630.make_vec(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400670.sum_vec(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -344
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 336
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %41 = bitcast [32 x %union.VectorReg]* %40 to i8*
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %43 = bitcast [32 x %union.VectorReg]* %40 to i32*
  store i32 0, i32* %43, align 1
  %44 = getelementptr inbounds i8, i8* %41, i64 4
  %45 = bitcast i8* %44 to i32*
  store i32 0, i32* %45, align 1
  %46 = bitcast i64* %42 to i32*
  store i32 0, i32* %46, align 1
  %47 = getelementptr inbounds i8, i8* %41, i64 12
  %48 = bitcast i8* %47 to i32*
  store i32 0, i32* %48, align 1
  %49 = add i64 %7, -12
  %50 = add i64 %10, 20
  store i64 %50, i64* %3, align 8
  %51 = inttoptr i64 %49 to i32*
  store i32 0, i32* %51, align 4
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %52 to i32*
  %53 = load i64, i64* %RBP.i, align 8
  %54 = add i64 %53, -8
  %55 = load i32, i32* %EDI.i, align 4
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %56, 3
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %54 to i32*
  store i32 %55, i32* %58, align 4
  %RSI.i87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %59 = load i64, i64* %RBP.i, align 8
  %60 = add i64 %59, -16
  %61 = load i64, i64* %RSI.i87, align 8
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, 4
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %60 to i64*
  store i64 %61, i64* %64, align 8
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -24
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 5
  store i64 %68, i64* %3, align 8
  %69 = bitcast [32 x %union.VectorReg]* %40 to double*
  %70 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %71 = load i64, i64* %70, align 1
  %72 = inttoptr i64 %66 to i64*
  store i64 %71, i64* %72, align 8
  %73 = load i64, i64* %RBP.i, align 8
  %74 = add i64 %73, -32
  %75 = load i64, i64* %3, align 8
  %76 = add i64 %75, 5
  store i64 %76, i64* %3, align 8
  %77 = load i64, i64* %70, align 1
  %78 = inttoptr i64 %74 to i64*
  store i64 %77, i64* %78, align 8
  %79 = load i64, i64* %RBP.i, align 8
  %80 = add i64 %79, -40
  %81 = load i64, i64* %3, align 8
  %82 = add i64 %81, 5
  store i64 %82, i64* %3, align 8
  %83 = load i64, i64* %70, align 1
  %84 = inttoptr i64 %80 to i64*
  store i64 %83, i64* %84, align 8
  %85 = load i64, i64* %RBP.i, align 8
  %86 = add i64 %85, -48
  %87 = load i64, i64* %3, align 8
  %88 = add i64 %87, 5
  store i64 %88, i64* %3, align 8
  %89 = load i64, i64* %70, align 1
  %90 = inttoptr i64 %86 to i64*
  store i64 %89, i64* %90, align 8
  %91 = load i64, i64* %RBP.i, align 8
  %92 = add i64 %91, -276
  %93 = load i64, i64* %3, align 8
  %94 = add i64 %93, 10
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %92 to i32*
  store i32 2500000, i32* %95, align 4
  %96 = load i64, i64* %RBP.i, align 8
  %97 = add i64 %96, -288
  %98 = load i64, i64* %3, align 8
  %99 = add i64 %98, 8
  store i64 %99, i64* %3, align 8
  %100 = load i64, i64* %70, align 1
  %101 = inttoptr i64 %97 to i64*
  store i64 %100, i64* %101, align 8
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %103 = bitcast %union.VectorReg* %102 to i8*
  %104 = load i64, i64* %RBP.i, align 8
  %105 = add i64 %104, -288
  %106 = load i64, i64* %3, align 8
  %107 = add i64 %106, 8
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %105 to i64*
  %109 = load i64, i64* %108, align 8
  %110 = bitcast %union.VectorReg* %102 to double*
  %111 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %102, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %109, i64* %111, align 1
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %113 = bitcast i64* %112 to double*
  store double 0.000000e+00, double* %113, align 1
  %114 = add i64 %106, -178
  %115 = add i64 %106, 13
  %116 = load i64, i64* %6, align 8
  %117 = add i64 %116, -8
  %118 = inttoptr i64 %117 to i64*
  store i64 %115, i64* %118, align 8
  store i64 %117, i64* %6, align 8
  store i64 %114, i64* %3, align 8
  %call2_4006ea = tail call %struct.Memory* @sub_400630.make_vec(%struct.State* %0, i64 %114, %struct.Memory* %2)
  %119 = load i64, i64* %3, align 8
  %120 = load i64, i64* bitcast (%G_0x511__rip__4196087__type* @G_0x511__rip__4196087_ to i64*), align 8
  store i64 %120, i64* %111, align 1
  store double 0.000000e+00, double* %113, align 1
  %121 = load i64, i64* %RBP.i, align 8
  %122 = add i64 %121, -144
  %123 = add i64 %119, 16
  store i64 %123, i64* %3, align 8
  %124 = load i64, i64* %70, align 1
  %125 = load i64, i64* %42, align 1
  %126 = inttoptr i64 %122 to i64*
  store i64 %124, i64* %126, align 8
  %127 = add i64 %121, -136
  %128 = inttoptr i64 %127 to i64*
  store i64 %125, i64* %128, align 8
  %129 = load i64, i64* %3, align 8
  %130 = bitcast %union.VectorReg* %102 to <2 x i32>*
  %131 = load <2 x i32>, <2 x i32>* %130, align 1
  %132 = bitcast i64* %112 to <2 x i32>*
  %133 = load <2 x i32>, <2 x i32>* %132, align 1
  %134 = extractelement <2 x i32> %131, i32 0
  store i32 %134, i32* %43, align 1
  %135 = extractelement <2 x i32> %131, i32 1
  store i32 %135, i32* %45, align 1
  %136 = extractelement <2 x i32> %133, i32 0
  store i32 %136, i32* %46, align 1
  %137 = extractelement <2 x i32> %133, i32 1
  store i32 %137, i32* %48, align 1
  %138 = add i64 %129, -207
  %139 = add i64 %129, 8
  %140 = load i64, i64* %6, align 8
  %141 = add i64 %140, -8
  %142 = inttoptr i64 %141 to i64*
  store i64 %139, i64* %142, align 8
  store i64 %141, i64* %6, align 8
  store i64 %138, i64* %3, align 8
  %call2_400702 = tail call %struct.Memory* @sub_400630.make_vec(%struct.State* %0, i64 %138, %struct.Memory* %call2_4006ea)
  %143 = load i64, i64* %3, align 8
  %144 = load i64, i64* bitcast (%G_0x509__rip__4196111__type* @G_0x509__rip__4196111_ to i64*), align 8
  store i64 %144, i64* %111, align 1
  store double 0.000000e+00, double* %113, align 1
  %145 = load i64, i64* %RBP.i, align 8
  %146 = add i64 %145, -160
  %147 = add i64 %143, 16
  store i64 %147, i64* %3, align 8
  %148 = load i64, i64* %70, align 1
  %149 = load i64, i64* %42, align 1
  %150 = inttoptr i64 %146 to i64*
  store i64 %148, i64* %150, align 8
  %151 = add i64 %145, -152
  %152 = inttoptr i64 %151 to i64*
  store i64 %149, i64* %152, align 8
  %153 = load i64, i64* %3, align 8
  %154 = load <2 x i32>, <2 x i32>* %130, align 1
  %155 = load <2 x i32>, <2 x i32>* %132, align 1
  %156 = extractelement <2 x i32> %154, i32 0
  store i32 %156, i32* %43, align 1
  %157 = extractelement <2 x i32> %154, i32 1
  store i32 %157, i32* %45, align 1
  %158 = extractelement <2 x i32> %155, i32 0
  store i32 %158, i32* %46, align 1
  %159 = extractelement <2 x i32> %155, i32 1
  store i32 %159, i32* %48, align 1
  %160 = add i64 %153, -231
  %161 = add i64 %153, 8
  %162 = load i64, i64* %6, align 8
  %163 = add i64 %162, -8
  %164 = inttoptr i64 %163 to i64*
  store i64 %161, i64* %164, align 8
  store i64 %163, i64* %6, align 8
  store i64 %160, i64* %3, align 8
  %call2_40071a = tail call %struct.Memory* @sub_400630.make_vec(%struct.State* %0, i64 %160, %struct.Memory* %call2_400702)
  %165 = load i64, i64* %3, align 8
  %166 = load i64, i64* bitcast (%G_0x4e9__rip__4196135__type* @G_0x4e9__rip__4196135_ to i64*), align 8
  store i64 %166, i64* %111, align 1
  store double 0.000000e+00, double* %113, align 1
  %167 = load i64, i64* %RBP.i, align 8
  %168 = add i64 %167, -176
  %169 = add i64 %165, 16
  store i64 %169, i64* %3, align 8
  %170 = load i64, i64* %70, align 1
  %171 = load i64, i64* %42, align 1
  %172 = inttoptr i64 %168 to i64*
  store i64 %170, i64* %172, align 8
  %173 = add i64 %167, -168
  %174 = inttoptr i64 %173 to i64*
  store i64 %171, i64* %174, align 8
  %175 = load i64, i64* %3, align 8
  %176 = load <2 x i32>, <2 x i32>* %130, align 1
  %177 = load <2 x i32>, <2 x i32>* %132, align 1
  %178 = extractelement <2 x i32> %176, i32 0
  store i32 %178, i32* %43, align 1
  %179 = extractelement <2 x i32> %176, i32 1
  store i32 %179, i32* %45, align 1
  %180 = extractelement <2 x i32> %177, i32 0
  store i32 %180, i32* %46, align 1
  %181 = extractelement <2 x i32> %177, i32 1
  store i32 %181, i32* %48, align 1
  %182 = add i64 %175, -255
  %183 = add i64 %175, 8
  %184 = load i64, i64* %6, align 8
  %185 = add i64 %184, -8
  %186 = inttoptr i64 %185 to i64*
  store i64 %183, i64* %186, align 8
  store i64 %185, i64* %6, align 8
  store i64 %182, i64* %3, align 8
  %call2_400732 = tail call %struct.Memory* @sub_400630.make_vec(%struct.State* %0, i64 %182, %struct.Memory* %call2_40071a)
  %187 = load i64, i64* %3, align 8
  %188 = load i64, i64* bitcast (%G_0x4c9__rip__4196159__type* @G_0x4c9__rip__4196159_ to i64*), align 8
  store i64 %188, i64* %111, align 1
  store double 0.000000e+00, double* %113, align 1
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %190 = load i64, i64* bitcast (%G_0x4d1__rip__4196167__type* @G_0x4d1__rip__4196167_ to i64*), align 8
  %191 = bitcast %union.VectorReg* %189 to double*
  %192 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %189, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %190, i64* %192, align 1
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %194 = bitcast i64* %193 to double*
  store double 0.000000e+00, double* %194, align 1
  %195 = load i64, i64* %RBP.i, align 8
  %196 = add i64 %195, -208
  %197 = add i64 %187, 24
  store i64 %197, i64* %3, align 8
  %198 = load i64, i64* %70, align 1
  %199 = load i64, i64* %42, align 1
  %200 = inttoptr i64 %196 to i64*
  store i64 %198, i64* %200, align 8
  %201 = add i64 %195, -200
  %202 = inttoptr i64 %201 to i64*
  store i64 %199, i64* %202, align 8
  %203 = load i64, i64* %3, align 8
  %204 = load <2 x i32>, <2 x i32>* %130, align 1
  %205 = load <2 x i32>, <2 x i32>* %132, align 1
  %206 = extractelement <2 x i32> %204, i32 0
  store i32 %206, i32* %43, align 1
  %207 = extractelement <2 x i32> %204, i32 1
  store i32 %207, i32* %45, align 1
  %208 = extractelement <2 x i32> %205, i32 0
  store i32 %208, i32* %46, align 1
  %209 = extractelement <2 x i32> %205, i32 1
  store i32 %209, i32* %48, align 1
  %210 = bitcast %union.VectorReg* %189 to <2 x i32>*
  %211 = load <2 x i32>, <2 x i32>* %210, align 1
  %212 = bitcast i64* %193 to <2 x i32>*
  %213 = load <2 x i32>, <2 x i32>* %212, align 1
  %214 = extractelement <2 x i32> %211, i32 0
  %215 = bitcast %union.VectorReg* %102 to i32*
  store i32 %214, i32* %215, align 1
  %216 = extractelement <2 x i32> %211, i32 1
  %217 = getelementptr inbounds i8, i8* %103, i64 4
  %218 = bitcast i8* %217 to i32*
  store i32 %216, i32* %218, align 1
  %219 = extractelement <2 x i32> %213, i32 0
  %220 = bitcast i64* %112 to i32*
  store i32 %219, i32* %220, align 1
  %221 = extractelement <2 x i32> %213, i32 1
  %222 = getelementptr inbounds i8, i8* %103, i64 12
  %223 = bitcast i8* %222 to i32*
  store i32 %221, i32* %223, align 1
  %224 = add i64 %203, -287
  %225 = add i64 %203, 11
  %226 = load i64, i64* %6, align 8
  %227 = add i64 %226, -8
  %228 = inttoptr i64 %227 to i64*
  store i64 %225, i64* %228, align 8
  store i64 %227, i64* %6, align 8
  store i64 %224, i64* %3, align 8
  %call2_400755 = tail call %struct.Memory* @sub_400630.make_vec(%struct.State* %0, i64 %224, %struct.Memory* %call2_400732)
  %229 = load i64, i64* %3, align 8
  %230 = load i64, i64* bitcast (%G_0x4a6__rip__4196194__type* @G_0x4a6__rip__4196194_ to i64*), align 8
  store i64 %230, i64* %111, align 1
  store double 0.000000e+00, double* %113, align 1
  %231 = load i64, i64* bitcast (%G_0x4a6__rip__4196202__type* @G_0x4a6__rip__4196202_ to i64*), align 8
  store i64 %231, i64* %192, align 1
  store double 0.000000e+00, double* %194, align 1
  %232 = load i64, i64* %RBP.i, align 8
  %233 = add i64 %232, -192
  %234 = add i64 %229, 24
  store i64 %234, i64* %3, align 8
  %235 = load i64, i64* %70, align 1
  %236 = load i64, i64* %42, align 1
  %237 = inttoptr i64 %233 to i64*
  store i64 %235, i64* %237, align 8
  %238 = add i64 %232, -184
  %239 = inttoptr i64 %238 to i64*
  store i64 %236, i64* %239, align 8
  %240 = load i64, i64* %3, align 8
  %241 = load <2 x i32>, <2 x i32>* %130, align 1
  %242 = load <2 x i32>, <2 x i32>* %132, align 1
  %243 = extractelement <2 x i32> %241, i32 0
  store i32 %243, i32* %43, align 1
  %244 = extractelement <2 x i32> %241, i32 1
  store i32 %244, i32* %45, align 1
  %245 = extractelement <2 x i32> %242, i32 0
  store i32 %245, i32* %46, align 1
  %246 = extractelement <2 x i32> %242, i32 1
  store i32 %246, i32* %48, align 1
  %247 = load <2 x i32>, <2 x i32>* %210, align 1
  %248 = load <2 x i32>, <2 x i32>* %212, align 1
  %249 = extractelement <2 x i32> %247, i32 0
  store i32 %249, i32* %215, align 1
  %250 = extractelement <2 x i32> %247, i32 1
  store i32 %250, i32* %218, align 1
  %251 = extractelement <2 x i32> %248, i32 0
  store i32 %251, i32* %220, align 1
  %252 = extractelement <2 x i32> %248, i32 1
  store i32 %252, i32* %223, align 1
  %253 = add i64 %240, -322
  %254 = add i64 %240, 11
  %255 = load i64, i64* %6, align 8
  %256 = add i64 %255, -8
  %257 = inttoptr i64 %256 to i64*
  store i64 %254, i64* %257, align 8
  store i64 %256, i64* %6, align 8
  store i64 %253, i64* %3, align 8
  %call2_400778 = tail call %struct.Memory* @sub_400630.make_vec(%struct.State* %0, i64 %253, %struct.Memory* %call2_400755)
  %258 = load i64, i64* %3, align 8
  %259 = load i64, i64* bitcast (%G_0x483__rip__4196229__type* @G_0x483__rip__4196229_ to i64*), align 8
  store i64 %259, i64* %111, align 1
  store double 0.000000e+00, double* %113, align 1
  %260 = load i64, i64* %RBP.i, align 8
  %261 = add i64 %260, -240
  %262 = add i64 %258, 16
  store i64 %262, i64* %3, align 8
  %263 = load i64, i64* %70, align 1
  %264 = load i64, i64* %42, align 1
  %265 = inttoptr i64 %261 to i64*
  store i64 %263, i64* %265, align 8
  %266 = add i64 %260, -232
  %267 = inttoptr i64 %266 to i64*
  store i64 %264, i64* %267, align 8
  %268 = load i64, i64* %RBP.i, align 8
  %269 = add i64 %268, -144
  %270 = load i64, i64* %3, align 8
  %271 = add i64 %270, 8
  store i64 %271, i64* %3, align 8
  %272 = inttoptr i64 %269 to i64*
  %273 = load i64, i64* %272, align 8
  %274 = add i64 %268, -136
  %275 = inttoptr i64 %274 to i64*
  %276 = load i64, i64* %275, align 8
  store i64 %273, i64* %70, align 1
  %277 = bitcast i64* %42 to double*
  store i64 %276, i64* %42, align 1
  %278 = add i64 %268, -128
  %279 = add i64 %270, 13
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %278 to i64*
  store i64 %273, i64* %280, align 8
  %281 = add i64 %268, -120
  %282 = inttoptr i64 %281 to i64*
  store i64 %276, i64* %282, align 8
  %283 = load i64, i64* %RBP.i, align 8
  %284 = add i64 %283, -112
  %285 = load i64, i64* %3, align 8
  %286 = add i64 %285, 5
  store i64 %286, i64* %3, align 8
  %287 = load i64, i64* %70, align 1
  %288 = load i64, i64* %42, align 1
  %289 = inttoptr i64 %284 to i64*
  store i64 %287, i64* %289, align 8
  %290 = add i64 %283, -104
  %291 = inttoptr i64 %290 to i64*
  store i64 %288, i64* %291, align 8
  %292 = load i64, i64* %RBP.i, align 8
  %293 = add i64 %292, -96
  %294 = load i64, i64* %3, align 8
  %295 = add i64 %294, 5
  store i64 %295, i64* %3, align 8
  %296 = load i64, i64* %70, align 1
  %297 = load i64, i64* %42, align 1
  %298 = inttoptr i64 %293 to i64*
  store i64 %296, i64* %298, align 8
  %299 = add i64 %292, -88
  %300 = inttoptr i64 %299 to i64*
  store i64 %297, i64* %300, align 8
  %301 = load i64, i64* %RBP.i, align 8
  %302 = add i64 %301, -80
  %303 = load i64, i64* %3, align 8
  %304 = add i64 %303, 5
  store i64 %304, i64* %3, align 8
  %305 = load i64, i64* %70, align 1
  %306 = load i64, i64* %42, align 1
  %307 = inttoptr i64 %302 to i64*
  store i64 %305, i64* %307, align 8
  %308 = add i64 %301, -72
  %309 = inttoptr i64 %308 to i64*
  store i64 %306, i64* %309, align 8
  %310 = load i64, i64* %RBP.i, align 8
  %311 = add i64 %310, -64
  %312 = load i64, i64* %3, align 8
  %313 = add i64 %312, 5
  store i64 %313, i64* %3, align 8
  %314 = load i64, i64* %70, align 1
  %315 = load i64, i64* %42, align 1
  %316 = inttoptr i64 %311 to i64*
  store i64 %314, i64* %316, align 8
  %317 = add i64 %310, -56
  %318 = inttoptr i64 %317 to i64*
  store i64 %315, i64* %318, align 8
  %319 = load i64, i64* %RBP.i, align 8
  %320 = add i64 %319, -248
  %321 = load i64, i64* %3, align 8
  %322 = add i64 %321, 8
  store i64 %322, i64* %3, align 8
  %323 = load i64, i64* %111, align 1
  %324 = inttoptr i64 %320 to i64*
  store i64 %323, i64* %324, align 8
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i395 = getelementptr inbounds %union.anon, %union.anon* %325, i64 0, i32 0
  %EAX.i392 = bitcast %union.anon* %325 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4007b6

block_.L_4007b6:                                  ; preds = %block_4007d2, %entry
  %326 = phi i64 [ %.pre, %entry ], [ %532, %block_4007d2 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_400778, %entry ], [ %call2_400870, %block_4007d2 ]
  %327 = load i64, i64* %RBP.i, align 8
  %328 = add i64 %327, -248
  %329 = add i64 %326, 8
  store i64 %329, i64* %3, align 8
  %330 = inttoptr i64 %328 to double*
  %331 = load double, double* %330, align 8
  store double %331, double* %69, align 1
  store double 0.000000e+00, double* %277, align 1
  %332 = add i64 %327, -276
  %333 = add i64 %326, 14
  store i64 %333, i64* %3, align 8
  %334 = inttoptr i64 %332 to i32*
  %335 = load i32, i32* %334, align 4
  %336 = zext i32 %335 to i64
  store i64 %336, i64* %RAX.i395, align 8
  %337 = sitofp i32 %335 to double
  store double %337, double* %110, align 1
  %338 = add i64 %326, 22
  store i64 %338, i64* %3, align 8
  %339 = fcmp uno double %337, %331
  br i1 %339, label %340, label %350

; <label>:340:                                    ; preds = %block_.L_4007b6
  %341 = fadd double %337, %331
  %342 = bitcast double %341 to i64
  %343 = and i64 %342, 9221120237041090560
  %344 = icmp eq i64 %343, 9218868437227405312
  %345 = and i64 %342, 2251799813685247
  %346 = icmp ne i64 %345, 0
  %347 = and i1 %344, %346
  br i1 %347, label %348, label %356

; <label>:348:                                    ; preds = %340
  %349 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %338, %struct.Memory* %MEMORY.0)
  %.pre2 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit387

; <label>:350:                                    ; preds = %block_.L_4007b6
  %351 = fcmp ogt double %337, %331
  br i1 %351, label %356, label %352

; <label>:352:                                    ; preds = %350
  %353 = fcmp olt double %337, %331
  br i1 %353, label %356, label %354

; <label>:354:                                    ; preds = %352
  %355 = fcmp oeq double %337, %331
  br i1 %355, label %356, label %360

; <label>:356:                                    ; preds = %354, %352, %350, %340
  %357 = phi i8 [ 0, %350 ], [ 0, %352 ], [ 1, %354 ], [ 1, %340 ]
  %358 = phi i8 [ 0, %350 ], [ 0, %352 ], [ 0, %354 ], [ 1, %340 ]
  %359 = phi i8 [ 0, %350 ], [ 1, %352 ], [ 0, %354 ], [ 1, %340 ]
  store i8 %357, i8* %30, align 1
  store i8 %358, i8* %21, align 1
  store i8 %359, i8* %14, align 1
  br label %360

; <label>:360:                                    ; preds = %356, %354
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit387

routine_ucomisd__xmm0___xmm1.exit387:             ; preds = %360, %348
  %361 = phi i64 [ %.pre2, %348 ], [ %338, %360 ]
  %362 = phi %struct.Memory* [ %349, %348 ], [ %MEMORY.0, %360 ]
  %363 = load i8, i8* %14, align 1
  %364 = icmp ne i8 %363, 0
  %.v = select i1 %364, i64 298, i64 6
  %365 = add i64 %361, %.v
  store i64 %365, i64* %3, align 8
  %cmpBr_4007cc = icmp eq i8 %363, 1
  br i1 %cmpBr_4007cc, label %block_.L_4008f6, label %block_4007d2

block_4007d2:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit387
  %366 = load i64, i64* bitcast (%G_0x446__rip__4196314__type* @G_0x446__rip__4196314_ to i64*), align 8
  store i64 %366, i64* %70, align 1
  store double 0.000000e+00, double* %277, align 1
  %367 = load double, double* bitcast (%G_0x426__rip__4196322__type* @G_0x426__rip__4196322_ to double*), align 8
  store double %367, double* %110, align 1
  store double 0.000000e+00, double* %113, align 1
  %368 = load i64, i64* %RBP.i, align 8
  %369 = add i64 %368, -248
  %370 = add i64 %365, 24
  store i64 %370, i64* %3, align 8
  %371 = inttoptr i64 %369 to double*
  %372 = load double, double* %371, align 8
  %373 = fsub double %372, %367
  store double %373, double* %191, align 1
  store i64 0, i64* %193, align 1
  %374 = bitcast double %373 to <2 x i32>
  %375 = extractelement <2 x i32> %374, i32 0
  store i32 %375, i32* %215, align 1
  %376 = extractelement <2 x i32> %374, i32 1
  store i32 %376, i32* %218, align 1
  store i32 0, i32* %220, align 1
  store i32 0, i32* %223, align 1
  %377 = add i64 %365, -722
  %378 = add i64 %365, 36
  %379 = load i64, i64* %6, align 8
  %380 = add i64 %379, -8
  %381 = inttoptr i64 %380 to i64*
  store i64 %378, i64* %381, align 8
  store i64 %380, i64* %6, align 8
  store i64 %377, i64* %3, align 8
  %382 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @pow to i64), %struct.Memory* %362)
  %383 = load i64, i64* %3, align 8
  %384 = load i64, i64* bitcast (%G_0x40a__rip__4196350__type* @G_0x40a__rip__4196350_ to i64*), align 8
  store i64 %384, i64* %111, align 1
  store double 0.000000e+00, double* %113, align 1
  %385 = load i64, i64* %RBP.i, align 8
  %386 = add i64 %385, -24
  %387 = add i64 %383, 13
  store i64 %387, i64* %3, align 8
  %388 = load double, double* %69, align 1
  %389 = inttoptr i64 %386 to double*
  %390 = load double, double* %389, align 8
  %391 = fadd double %388, %390
  store double %391, double* %69, align 1
  %392 = add i64 %383, 18
  store i64 %392, i64* %3, align 8
  store double %391, double* %389, align 8
  %393 = load i64, i64* %RBP.i, align 8
  %394 = add i64 %393, -248
  %395 = load i64, i64* %3, align 8
  %396 = add i64 %395, 8
  store i64 %396, i64* %3, align 8
  %397 = inttoptr i64 %394 to i64*
  %398 = load i64, i64* %397, align 8
  store i64 %398, i64* %70, align 1
  store double 0.000000e+00, double* %277, align 1
  %399 = add i64 %393, -296
  %400 = add i64 %395, 16
  store i64 %400, i64* %3, align 8
  %401 = load i64, i64* %111, align 1
  %402 = inttoptr i64 %399 to i64*
  store i64 %401, i64* %402, align 8
  %403 = load i64, i64* %3, align 8
  %404 = add i64 %403, -744
  %405 = add i64 %403, 5
  %406 = load i64, i64* %6, align 8
  %407 = add i64 %406, -8
  %408 = inttoptr i64 %407 to i64*
  store i64 %405, i64* %408, align 8
  store i64 %407, i64* %6, align 8
  store i64 %404, i64* %3, align 8
  %call2_400818 = tail call %struct.Memory* @ext_sqrt(%struct.State* %0, i64 %404, %struct.Memory* %382)
  %409 = load i64, i64* %RBP.i, align 8
  %410 = add i64 %409, -296
  %411 = load i64, i64* %3, align 8
  %412 = add i64 %411, 8
  store i64 %412, i64* %3, align 8
  %413 = inttoptr i64 %410 to double*
  %414 = load double, double* %413, align 8
  %415 = load double, double* %69, align 1
  %416 = fdiv double %414, %415
  store double %416, double* %110, align 1
  store i64 0, i64* %112, align 1
  %417 = add i64 %409, -32
  %418 = add i64 %411, 17
  store i64 %418, i64* %3, align 8
  %419 = inttoptr i64 %417 to double*
  %420 = load double, double* %419, align 8
  %421 = fadd double %416, %420
  store double %421, double* %110, align 1
  store i64 0, i64* %112, align 1
  %422 = add i64 %411, 22
  store i64 %422, i64* %3, align 8
  store double %421, double* %419, align 8
  %423 = load i64, i64* %RBP.i, align 8
  %424 = add i64 %423, -248
  %425 = load i64, i64* %3, align 8
  %426 = add i64 %425, 8
  store i64 %426, i64* %3, align 8
  %427 = inttoptr i64 %424 to double*
  %428 = load double, double* %427, align 8
  store double %428, double* %69, align 1
  store double 0.000000e+00, double* %277, align 1
  %429 = add i64 %425, 16
  store i64 %429, i64* %3, align 8
  %430 = load double, double* %427, align 8
  %431 = fmul double %428, %430
  store double %431, double* %69, align 1
  store i64 0, i64* %42, align 1
  %432 = add i64 %425, 24
  store i64 %432, i64* %3, align 8
  %433 = load double, double* %427, align 8
  %434 = fmul double %431, %433
  store double %434, double* %69, align 1
  store i64 0, i64* %42, align 1
  %435 = add i64 %423, -256
  %436 = add i64 %425, 32
  store i64 %436, i64* %3, align 8
  %437 = inttoptr i64 %435 to double*
  store double %434, double* %437, align 8
  %438 = load i64, i64* %RBP.i, align 8
  %439 = add i64 %438, -248
  %440 = load i64, i64* %3, align 8
  %441 = add i64 %440, 8
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %439 to i64*
  %443 = load i64, i64* %442, align 8
  store i64 %443, i64* %70, align 1
  store double 0.000000e+00, double* %277, align 1
  %444 = add i64 %440, -819
  %445 = add i64 %440, 13
  %446 = load i64, i64* %6, align 8
  %447 = add i64 %446, -8
  %448 = inttoptr i64 %447 to i64*
  store i64 %445, i64* %448, align 8
  store i64 %447, i64* %6, align 8
  store i64 %444, i64* %3, align 8
  %call2_40085b = tail call %struct.Memory* @ext_sin(%struct.State* %0, i64 %444, %struct.Memory* %call2_400818)
  %449 = load i64, i64* %RBP.i, align 8
  %450 = add i64 %449, -264
  %451 = load i64, i64* %3, align 8
  %452 = add i64 %451, 8
  store i64 %452, i64* %3, align 8
  %453 = load i64, i64* %70, align 1
  %454 = inttoptr i64 %450 to i64*
  store i64 %453, i64* %454, align 8
  %455 = load i64, i64* %RBP.i, align 8
  %456 = add i64 %455, -248
  %457 = load i64, i64* %3, align 8
  %458 = add i64 %457, 8
  store i64 %458, i64* %3, align 8
  %459 = inttoptr i64 %456 to i64*
  %460 = load i64, i64* %459, align 8
  store i64 %460, i64* %70, align 1
  store double 0.000000e+00, double* %277, align 1
  %461 = add i64 %457, -856
  %462 = add i64 %457, 13
  %463 = load i64, i64* %6, align 8
  %464 = add i64 %463, -8
  %465 = inttoptr i64 %464 to i64*
  store i64 %462, i64* %465, align 8
  store i64 %464, i64* %6, align 8
  store i64 %461, i64* %3, align 8
  %call2_400870 = tail call %struct.Memory* @ext_cos(%struct.State* %0, i64 %461, %struct.Memory* %call2_40085b)
  %466 = load i64, i64* %RBP.i, align 8
  %467 = add i64 %466, -272
  %468 = load i64, i64* %3, align 8
  %469 = add i64 %468, 8
  store i64 %469, i64* %3, align 8
  %470 = load i64, i64* %70, align 1
  %471 = inttoptr i64 %467 to i64*
  store i64 %470, i64* %471, align 8
  %472 = load i64, i64* %RBP.i, align 8
  %473 = add i64 %472, -256
  %474 = load i64, i64* %3, align 8
  %475 = add i64 %474, 8
  store i64 %475, i64* %3, align 8
  %476 = inttoptr i64 %473 to double*
  %477 = load double, double* %476, align 8
  store double %477, double* %69, align 1
  store double 0.000000e+00, double* %277, align 1
  %478 = add i64 %472, -264
  %479 = add i64 %474, 16
  store i64 %479, i64* %3, align 8
  %480 = inttoptr i64 %478 to double*
  %481 = load double, double* %480, align 8
  %482 = fmul double %477, %481
  store double %482, double* %69, align 1
  store i64 0, i64* %42, align 1
  %483 = add i64 %474, 24
  store i64 %483, i64* %3, align 8
  %484 = load double, double* %480, align 8
  %485 = fmul double %482, %484
  store double %485, double* %69, align 1
  store i64 0, i64* %42, align 1
  %486 = add i64 %472, -296
  %487 = add i64 %474, 32
  store i64 %487, i64* %3, align 8
  %488 = inttoptr i64 %486 to double*
  %489 = load double, double* %488, align 8
  %490 = fdiv double %489, %485
  store double %490, double* %110, align 1
  store i64 0, i64* %112, align 1
  %491 = add i64 %472, -40
  %492 = add i64 %474, 41
  store i64 %492, i64* %3, align 8
  %493 = inttoptr i64 %491 to double*
  %494 = load double, double* %493, align 8
  %495 = fadd double %490, %494
  store double %495, double* %110, align 1
  store i64 0, i64* %112, align 1
  %496 = add i64 %474, 46
  store i64 %496, i64* %3, align 8
  store double %495, double* %493, align 8
  %497 = load i64, i64* %RBP.i, align 8
  %498 = add i64 %497, -256
  %499 = load i64, i64* %3, align 8
  %500 = add i64 %499, 8
  store i64 %500, i64* %3, align 8
  %501 = inttoptr i64 %498 to double*
  %502 = load double, double* %501, align 8
  store double %502, double* %69, align 1
  store double 0.000000e+00, double* %277, align 1
  %503 = add i64 %497, -272
  %504 = add i64 %499, 16
  store i64 %504, i64* %3, align 8
  %505 = inttoptr i64 %503 to double*
  %506 = load double, double* %505, align 8
  %507 = fmul double %502, %506
  store double %507, double* %69, align 1
  store i64 0, i64* %42, align 1
  %508 = add i64 %499, 24
  store i64 %508, i64* %3, align 8
  %509 = load double, double* %505, align 8
  %510 = fmul double %507, %509
  store double %510, double* %69, align 1
  store i64 0, i64* %42, align 1
  %511 = add i64 %497, -296
  %512 = add i64 %499, 32
  store i64 %512, i64* %3, align 8
  %513 = inttoptr i64 %511 to double*
  %514 = load double, double* %513, align 8
  %515 = fdiv double %514, %510
  store double %515, double* %110, align 1
  store i64 0, i64* %112, align 1
  %516 = add i64 %497, -48
  %517 = add i64 %499, 41
  store i64 %517, i64* %3, align 8
  %518 = inttoptr i64 %516 to double*
  %519 = load double, double* %518, align 8
  %520 = fadd double %515, %519
  store double %520, double* %110, align 1
  store i64 0, i64* %112, align 1
  %521 = add i64 %499, 46
  store i64 %521, i64* %3, align 8
  store double %520, double* %518, align 8
  %522 = load i64, i64* %3, align 8
  %523 = load double, double* bitcast (%G_0x327__rip__4196577__type* @G_0x327__rip__4196577_ to double*), align 8
  store double %523, double* %69, align 1
  store double 0.000000e+00, double* %277, align 1
  %524 = load i64, i64* %RBP.i, align 8
  %525 = add i64 %524, -248
  %526 = add i64 %522, 16
  store i64 %526, i64* %3, align 8
  %527 = inttoptr i64 %525 to double*
  %528 = load double, double* %527, align 8
  %529 = fadd double %523, %528
  store double %529, double* %69, align 1
  store i64 0, i64* %42, align 1
  %530 = add i64 %522, 24
  store i64 %530, i64* %3, align 8
  store double %529, double* %527, align 8
  %531 = load i64, i64* %3, align 8
  %532 = add i64 %531, -315
  store i64 %532, i64* %3, align 8
  br label %block_.L_4007b6

block_.L_4008f6:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit387
  %533 = load i64, i64* %RBP.i, align 8
  %534 = add i64 %533, -192
  %535 = add i64 %365, 8
  store i64 %535, i64* %3, align 8
  %536 = inttoptr i64 %534 to i64*
  %537 = load i64, i64* %536, align 8
  %538 = add i64 %533, -184
  %539 = inttoptr i64 %538 to i64*
  %540 = load i64, i64* %539, align 8
  store i64 %537, i64* %70, align 1
  store i64 %540, i64* %42, align 1
  %541 = add i64 %533, -224
  %542 = add i64 %365, 16
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %541 to i64*
  store i64 %537, i64* %543, align 8
  %544 = add i64 %533, -216
  %545 = inttoptr i64 %544 to i64*
  store i64 %540, i64* %545, align 8
  %546 = bitcast %union.VectorReg* %189 to <2 x double>*
  %547 = bitcast %union.VectorReg* %102 to <2 x double>*
  %548 = bitcast [32 x %union.VectorReg]* %40 to <2 x double>*
  %.pre3 = load i64, i64* %3, align 8
  br label %block_.L_400906

block_.L_400906:                                  ; preds = %block_400922, %block_.L_4008f6
  %549 = phi i64 [ %.pre3, %block_.L_4008f6 ], [ %821, %block_400922 ]
  %MEMORY.1 = phi %struct.Memory* [ %362, %block_.L_4008f6 ], [ %585, %block_400922 ]
  %550 = load i64, i64* %RBP.i, align 8
  %551 = add i64 %550, -224
  %552 = add i64 %549, 8
  store i64 %552, i64* %3, align 8
  %553 = inttoptr i64 %551 to double*
  %554 = load double, double* %553, align 8
  store double %554, double* %69, align 1
  store double 0.000000e+00, double* %277, align 1
  %555 = add i64 %550, -276
  %556 = add i64 %549, 14
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %555 to i32*
  %558 = load i32, i32* %557, align 4
  %559 = zext i32 %558 to i64
  store i64 %559, i64* %RAX.i395, align 8
  %560 = sitofp i32 %558 to double
  store double %560, double* %110, align 1
  %561 = add i64 %549, 22
  store i64 %561, i64* %3, align 8
  %562 = fcmp uno double %560, %554
  br i1 %562, label %563, label %573

; <label>:563:                                    ; preds = %block_.L_400906
  %564 = fadd double %560, %554
  %565 = bitcast double %564 to i64
  %566 = and i64 %565, 9221120237041090560
  %567 = icmp eq i64 %566, 9218868437227405312
  %568 = and i64 %565, 2251799813685247
  %569 = icmp ne i64 %568, 0
  %570 = and i1 %567, %569
  br i1 %570, label %571, label %579

; <label>:571:                                    ; preds = %563
  %572 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %561, %struct.Memory* %MEMORY.1)
  %.pre4 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:573:                                    ; preds = %block_.L_400906
  %574 = fcmp ogt double %560, %554
  br i1 %574, label %579, label %575

; <label>:575:                                    ; preds = %573
  %576 = fcmp olt double %560, %554
  br i1 %576, label %579, label %577

; <label>:577:                                    ; preds = %575
  %578 = fcmp oeq double %560, %554
  br i1 %578, label %579, label %583

; <label>:579:                                    ; preds = %577, %575, %573, %563
  %580 = phi i8 [ 0, %573 ], [ 0, %575 ], [ 1, %577 ], [ 1, %563 ]
  %581 = phi i8 [ 0, %573 ], [ 0, %575 ], [ 0, %577 ], [ 1, %563 ]
  %582 = phi i8 [ 0, %573 ], [ 1, %575 ], [ 0, %577 ], [ 1, %563 ]
  store i8 %580, i8* %30, align 1
  store i8 %581, i8* %21, align 1
  store i8 %582, i8* %14, align 1
  br label %583

; <label>:583:                                    ; preds = %579, %577
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %583, %571
  %584 = phi i64 [ %.pre4, %571 ], [ %561, %583 ]
  %585 = phi %struct.Memory* [ %572, %571 ], [ %MEMORY.1, %583 ]
  %586 = load i8, i8* %14, align 1
  %587 = icmp ne i8 %586, 0
  %.v5 = select i1 %587, i64 221, i64 6
  %588 = add i64 %584, %.v5
  store i64 %588, i64* %3, align 8
  %cmpBr_40091c = icmp eq i8 %586, 1
  br i1 %cmpBr_40091c, label %block_.L_4009f9, label %block_400922

block_400922:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %589 = load i64, i64* %RBP.i, align 8
  %590 = add i64 %589, -160
  %591 = add i64 %588, 8
  store i64 %591, i64* %3, align 8
  %592 = inttoptr i64 %590 to double*
  %593 = inttoptr i64 %590 to i64*
  %594 = load i64, i64* %593, align 8
  %595 = add i64 %589, -152
  %596 = inttoptr i64 %595 to double*
  %597 = inttoptr i64 %595 to i64*
  %598 = load i64, i64* %597, align 8
  store i64 %594, i64* %70, align 1
  store i64 %598, i64* %42, align 1
  %599 = add i64 %589, -224
  %600 = add i64 %588, 16
  store i64 %600, i64* %3, align 8
  %601 = inttoptr i64 %599 to i64*
  %602 = load i64, i64* %601, align 8
  %603 = add i64 %589, -216
  %604 = inttoptr i64 %603 to i64*
  %605 = load i64, i64* %604, align 8
  store i64 %602, i64* %111, align 1
  store i64 %605, i64* %112, align 1
  %606 = add i64 %588, 24
  store i64 %606, i64* %3, align 8
  %607 = load i64, i64* %601, align 8
  %608 = load i64, i64* %604, align 8
  store i64 %607, i64* %192, align 1
  store i64 %608, i64* %193, align 1
  %609 = add i64 %588, 32
  store i64 %609, i64* %3, align 8
  %610 = load <2 x double>, <2 x double>* %546, align 1
  %611 = load double, double* %592, align 8
  %612 = load double, double* %596, align 8
  %613 = insertelement <2 x double> undef, double %611, i32 0
  %614 = insertelement <2 x double> %613, double %612, i32 1
  %615 = fadd <2 x double> %610, %614
  store <2 x double> %615, <2 x double>* %546, align 1
  %616 = load <2 x double>, <2 x double>* %547, align 1
  %617 = fmul <2 x double> %616, %615
  store <2 x double> %617, <2 x double>* %547, align 1
  %618 = load <2 x double>, <2 x double>* %548, align 1
  %619 = fdiv <2 x double> %618, %617
  store <2 x double> %619, <2 x double>* %548, align 1
  %620 = add i64 %589, -96
  %621 = add i64 %588, 45
  store i64 %621, i64* %3, align 8
  %622 = inttoptr i64 %620 to double*
  %623 = load double, double* %622, align 8
  %624 = add i64 %589, -88
  %625 = inttoptr i64 %624 to double*
  %626 = load double, double* %625, align 8
  %627 = insertelement <2 x double> undef, double %623, i32 0
  %628 = insertelement <2 x double> %627, double %626, i32 1
  %629 = fadd <2 x double> %619, %628
  store <2 x double> %629, <2 x double>* %548, align 1
  %630 = add i64 %588, 50
  store i64 %630, i64* %3, align 8
  %bc = bitcast <2 x double> %629 to <2 x i64>
  %631 = extractelement <2 x i64> %bc, i32 0
  %632 = extractelement <2 x double> %629, i32 1
  %633 = inttoptr i64 %620 to i64*
  store i64 %631, i64* %633, align 8
  store double %632, double* %625, align 8
  %634 = load i64, i64* %RBP.i, align 8
  %635 = add i64 %634, -160
  %636 = load i64, i64* %3, align 8
  %637 = add i64 %636, 8
  store i64 %637, i64* %3, align 8
  %638 = inttoptr i64 %635 to i64*
  %639 = load i64, i64* %638, align 8
  %640 = add i64 %634, -152
  %641 = inttoptr i64 %640 to i64*
  %642 = load i64, i64* %641, align 8
  store i64 %639, i64* %70, align 1
  store i64 %642, i64* %42, align 1
  %643 = add i64 %634, -224
  %644 = add i64 %636, 16
  store i64 %644, i64* %3, align 8
  %645 = load <2 x double>, <2 x double>* %548, align 1
  %646 = inttoptr i64 %643 to double*
  %647 = load double, double* %646, align 8
  %648 = add i64 %634, -216
  %649 = inttoptr i64 %648 to double*
  %650 = load double, double* %649, align 8
  %651 = insertelement <2 x double> undef, double %647, i32 0
  %652 = insertelement <2 x double> %651, double %650, i32 1
  %653 = fdiv <2 x double> %645, %652
  store <2 x double> %653, <2 x double>* %548, align 1
  %654 = add i64 %634, -64
  %655 = add i64 %636, 21
  store i64 %655, i64* %3, align 8
  %656 = inttoptr i64 %654 to double*
  %657 = load double, double* %656, align 8
  %658 = add i64 %634, -56
  %659 = inttoptr i64 %658 to double*
  %660 = load double, double* %659, align 8
  %661 = insertelement <2 x double> undef, double %657, i32 0
  %662 = insertelement <2 x double> %661, double %660, i32 1
  %663 = fadd <2 x double> %653, %662
  store <2 x double> %663, <2 x double>* %548, align 1
  %664 = add i64 %636, 26
  store i64 %664, i64* %3, align 8
  %bc9 = bitcast <2 x double> %663 to <2 x i64>
  %665 = extractelement <2 x i64> %bc9, i32 0
  %666 = extractelement <2 x double> %663, i32 1
  %667 = inttoptr i64 %654 to i64*
  store i64 %665, i64* %667, align 8
  store double %666, double* %659, align 8
  %668 = load i64, i64* %RBP.i, align 8
  %669 = add i64 %668, -160
  %670 = load i64, i64* %3, align 8
  %671 = add i64 %670, 8
  store i64 %671, i64* %3, align 8
  %672 = inttoptr i64 %669 to i64*
  %673 = load i64, i64* %672, align 8
  %674 = add i64 %668, -152
  %675 = inttoptr i64 %674 to i64*
  %676 = load i64, i64* %675, align 8
  store i64 %673, i64* %70, align 1
  store i64 %676, i64* %42, align 1
  %677 = add i64 %668, -224
  %678 = add i64 %670, 16
  store i64 %678, i64* %3, align 8
  %679 = inttoptr i64 %677 to double*
  %680 = inttoptr i64 %677 to i64*
  %681 = load i64, i64* %680, align 8
  %682 = add i64 %668, -216
  %683 = inttoptr i64 %682 to double*
  %684 = inttoptr i64 %682 to i64*
  %685 = load i64, i64* %684, align 8
  store i64 %681, i64* %111, align 1
  store i64 %685, i64* %112, align 1
  %686 = add i64 %670, 24
  store i64 %686, i64* %3, align 8
  %687 = load <2 x double>, <2 x double>* %547, align 1
  %688 = load double, double* %679, align 8
  %689 = load double, double* %683, align 8
  %690 = insertelement <2 x double> undef, double %688, i32 0
  %691 = insertelement <2 x double> %690, double %689, i32 1
  %692 = fmul <2 x double> %687, %691
  store <2 x double> %692, <2 x double>* %547, align 1
  %693 = load <2 x double>, <2 x double>* %548, align 1
  %694 = fdiv <2 x double> %693, %692
  store <2 x double> %694, <2 x double>* %548, align 1
  %695 = add i64 %668, -80
  %696 = add i64 %670, 33
  store i64 %696, i64* %3, align 8
  %697 = inttoptr i64 %695 to double*
  %698 = load double, double* %697, align 8
  %699 = add i64 %668, -72
  %700 = inttoptr i64 %699 to double*
  %701 = load double, double* %700, align 8
  %702 = insertelement <2 x double> undef, double %698, i32 0
  %703 = insertelement <2 x double> %702, double %701, i32 1
  %704 = fadd <2 x double> %694, %703
  store <2 x double> %704, <2 x double>* %548, align 1
  %705 = add i64 %670, 38
  store i64 %705, i64* %3, align 8
  %bc12 = bitcast <2 x double> %704 to <2 x i64>
  %706 = extractelement <2 x i64> %bc12, i32 0
  %707 = extractelement <2 x double> %704, i32 1
  %708 = inttoptr i64 %695 to i64*
  store i64 %706, i64* %708, align 8
  store double %707, double* %700, align 8
  %709 = load i64, i64* %RBP.i, align 8
  %710 = add i64 %709, -240
  %711 = load i64, i64* %3, align 8
  %712 = add i64 %711, 8
  store i64 %712, i64* %3, align 8
  %713 = inttoptr i64 %710 to i64*
  %714 = load i64, i64* %713, align 8
  %715 = add i64 %709, -232
  %716 = inttoptr i64 %715 to i64*
  %717 = load i64, i64* %716, align 8
  store i64 %714, i64* %70, align 1
  store i64 %717, i64* %42, align 1
  %718 = add i64 %709, -224
  %719 = add i64 %711, 16
  store i64 %719, i64* %3, align 8
  %720 = load <2 x double>, <2 x double>* %548, align 1
  %721 = inttoptr i64 %718 to double*
  %722 = load double, double* %721, align 8
  %723 = add i64 %709, -216
  %724 = inttoptr i64 %723 to double*
  %725 = load double, double* %724, align 8
  %726 = insertelement <2 x double> undef, double %722, i32 0
  %727 = insertelement <2 x double> %726, double %725, i32 1
  %728 = fdiv <2 x double> %720, %727
  store <2 x double> %728, <2 x double>* %548, align 1
  %729 = add i64 %709, -112
  %730 = add i64 %711, 21
  store i64 %730, i64* %3, align 8
  %731 = inttoptr i64 %729 to double*
  %732 = load double, double* %731, align 8
  %733 = add i64 %709, -104
  %734 = inttoptr i64 %733 to double*
  %735 = load double, double* %734, align 8
  %736 = insertelement <2 x double> undef, double %732, i32 0
  %737 = insertelement <2 x double> %736, double %735, i32 1
  %738 = fadd <2 x double> %728, %737
  store <2 x double> %738, <2 x double>* %548, align 1
  %739 = add i64 %711, 26
  store i64 %739, i64* %3, align 8
  %bc15 = bitcast <2 x double> %738 to <2 x i64>
  %740 = extractelement <2 x i64> %bc15, i32 0
  %741 = extractelement <2 x double> %738, i32 1
  %742 = inttoptr i64 %729 to i64*
  store i64 %740, i64* %742, align 8
  store double %741, double* %734, align 8
  %743 = load i64, i64* %RBP.i, align 8
  %744 = add i64 %743, -240
  %745 = load i64, i64* %3, align 8
  %746 = add i64 %745, 8
  store i64 %746, i64* %3, align 8
  %747 = inttoptr i64 %744 to i64*
  %748 = load i64, i64* %747, align 8
  %749 = add i64 %743, -232
  %750 = inttoptr i64 %749 to i64*
  %751 = load i64, i64* %750, align 8
  store i64 %748, i64* %70, align 1
  store i64 %751, i64* %42, align 1
  %752 = add i64 %743, -176
  %753 = add i64 %745, 16
  store i64 %753, i64* %3, align 8
  %754 = inttoptr i64 %752 to i64*
  %755 = load i64, i64* %754, align 8
  %756 = add i64 %743, -168
  %757 = inttoptr i64 %756 to i64*
  %758 = load i64, i64* %757, align 8
  store i64 %755, i64* %111, align 1
  store i64 %758, i64* %112, align 1
  %759 = add i64 %743, -224
  %760 = add i64 %745, 24
  store i64 %760, i64* %3, align 8
  %761 = load <2 x double>, <2 x double>* %547, align 1
  %762 = inttoptr i64 %759 to double*
  %763 = load double, double* %762, align 8
  %764 = add i64 %743, -216
  %765 = inttoptr i64 %764 to double*
  %766 = load double, double* %765, align 8
  %767 = insertelement <2 x double> undef, double %763, i32 0
  %768 = insertelement <2 x double> %767, double %766, i32 1
  %769 = fmul <2 x double> %761, %768
  store <2 x double> %769, <2 x double>* %547, align 1
  %770 = add i64 %743, -160
  %771 = add i64 %745, 32
  store i64 %771, i64* %3, align 8
  %772 = inttoptr i64 %770 to double*
  %773 = load double, double* %772, align 8
  %774 = add i64 %743, -152
  %775 = inttoptr i64 %774 to double*
  %776 = load double, double* %775, align 8
  %777 = insertelement <2 x double> undef, double %773, i32 0
  %778 = insertelement <2 x double> %777, double %776, i32 1
  %779 = fsub <2 x double> %769, %778
  store <2 x double> %779, <2 x double>* %547, align 1
  %780 = load <2 x double>, <2 x double>* %548, align 1
  %781 = fdiv <2 x double> %780, %779
  store <2 x double> %781, <2 x double>* %548, align 1
  %782 = add i64 %743, -128
  %783 = add i64 %745, 41
  store i64 %783, i64* %3, align 8
  %784 = inttoptr i64 %782 to double*
  %785 = load double, double* %784, align 8
  %786 = add i64 %743, -120
  %787 = inttoptr i64 %786 to double*
  %788 = load double, double* %787, align 8
  %789 = insertelement <2 x double> undef, double %785, i32 0
  %790 = insertelement <2 x double> %789, double %788, i32 1
  %791 = fadd <2 x double> %781, %790
  store <2 x double> %791, <2 x double>* %548, align 1
  %792 = add i64 %745, 46
  store i64 %792, i64* %3, align 8
  %bc18 = bitcast <2 x double> %791 to <2 x i64>
  %793 = extractelement <2 x i64> %bc18, i32 0
  %794 = extractelement <2 x double> %791, i32 1
  %795 = inttoptr i64 %782 to i64*
  store i64 %793, i64* %795, align 8
  store double %794, double* %787, align 8
  %796 = load i64, i64* %RBP.i, align 8
  %797 = add i64 %796, -176
  %798 = load i64, i64* %3, align 8
  %799 = add i64 %798, 8
  store i64 %799, i64* %3, align 8
  %800 = inttoptr i64 %797 to i64*
  %801 = load i64, i64* %800, align 8
  %802 = add i64 %796, -168
  %803 = inttoptr i64 %802 to i64*
  %804 = load i64, i64* %803, align 8
  store i64 %801, i64* %70, align 1
  store i64 %804, i64* %42, align 1
  %805 = add i64 %796, -224
  %806 = add i64 %798, 16
  store i64 %806, i64* %3, align 8
  %807 = load <2 x double>, <2 x double>* %548, align 1
  %808 = inttoptr i64 %805 to double*
  %809 = load double, double* %808, align 8
  %810 = add i64 %796, -216
  %811 = inttoptr i64 %810 to double*
  %812 = load double, double* %811, align 8
  %813 = insertelement <2 x double> undef, double %809, i32 0
  %814 = insertelement <2 x double> %813, double %812, i32 1
  %815 = fadd <2 x double> %807, %814
  store <2 x double> %815, <2 x double>* %548, align 1
  %816 = add i64 %798, 24
  store i64 %816, i64* %3, align 8
  %bc21 = bitcast <2 x double> %815 to <2 x i64>
  %817 = extractelement <2 x i64> %bc21, i32 0
  %818 = extractelement <2 x double> %815, i32 1
  %819 = inttoptr i64 %805 to i64*
  store i64 %817, i64* %819, align 8
  store double %818, double* %811, align 8
  %820 = load i64, i64* %3, align 8
  %821 = add i64 %820, -238
  store i64 %821, i64* %3, align 8
  br label %block_.L_400906

block_.L_4009f9:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %RDI.i147 = getelementptr inbounds %union.anon, %union.anon* %52, i64 0, i32 0
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI.i147, align 8
  store i64 ptrtoint (%G__0x400c31_type* @G__0x400c31 to i64), i64* %RSI.i87, align 8
  %822 = load i64, i64* %RBP.i, align 8
  %823 = add i64 %822, -24
  %824 = add i64 %588, 25
  store i64 %824, i64* %3, align 8
  %825 = inttoptr i64 %823 to i64*
  %826 = load i64, i64* %825, align 8
  store i64 %826, i64* %70, align 1
  store double 0.000000e+00, double* %277, align 1
  %AL.i140 = bitcast %union.anon* %325 to i8*
  store i8 1, i8* %AL.i140, align 1
  %827 = add i64 %588, -1289
  %828 = add i64 %588, 32
  %829 = load i64, i64* %6, align 8
  %830 = add i64 %829, -8
  %831 = inttoptr i64 %830 to i64*
  store i64 %828, i64* %831, align 8
  store i64 %830, i64* %6, align 8
  store i64 %827, i64* %3, align 8
  %832 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %585)
  %833 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI.i147, align 8
  store i64 ptrtoint (%G__0x400c39_type* @G__0x400c39 to i64), i64* %RSI.i87, align 8
  %834 = load i64, i64* %RBP.i, align 8
  %835 = add i64 %834, -32
  %836 = add i64 %833, 25
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i64*
  %838 = load i64, i64* %837, align 8
  store i64 %838, i64* %70, align 1
  store double 0.000000e+00, double* %277, align 1
  %839 = add i64 %834, -300
  %840 = load i32, i32* %EAX.i392, align 4
  %841 = add i64 %833, 31
  store i64 %841, i64* %3, align 8
  %842 = inttoptr i64 %839 to i32*
  store i32 %840, i32* %842, align 4
  %843 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i140, align 1
  %844 = add i64 %843, -1352
  %845 = add i64 %843, 7
  %846 = load i64, i64* %6, align 8
  %847 = add i64 %846, -8
  %848 = inttoptr i64 %847 to i64*
  store i64 %845, i64* %848, align 8
  store i64 %847, i64* %6, align 8
  store i64 %844, i64* %3, align 8
  %849 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %832)
  %850 = load i64, i64* %RBP.i, align 8
  %851 = add i64 %850, -96
  %852 = load i64, i64* %3, align 8
  %853 = add i64 %852, 5
  store i64 %853, i64* %3, align 8
  %854 = inttoptr i64 %851 to i64*
  %855 = load i64, i64* %854, align 8
  %856 = add i64 %850, -88
  %857 = inttoptr i64 %856 to i64*
  %858 = load i64, i64* %857, align 8
  store i64 %855, i64* %70, align 1
  store i64 %858, i64* %42, align 1
  %859 = add i64 %850, -304
  %860 = load i32, i32* %EAX.i392, align 4
  %861 = add i64 %852, 11
  store i64 %861, i64* %3, align 8
  %862 = inttoptr i64 %859 to i32*
  store i32 %860, i32* %862, align 4
  %863 = load i64, i64* %3, align 8
  %864 = add i64 %863, -986
  %865 = add i64 %863, 5
  %866 = load i64, i64* %6, align 8
  %867 = add i64 %866, -8
  %868 = inttoptr i64 %867 to i64*
  store i64 %865, i64* %868, align 8
  store i64 %867, i64* %6, align 8
  store i64 %864, i64* %3, align 8
  %call2_400a4a = tail call %struct.Memory* @sub_400670.sum_vec(%struct.State* %0, i64 %864, %struct.Memory* %849)
  %869 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI.i147, align 8
  store i64 ptrtoint (%G__0x400c40_type* @G__0x400c40 to i64), i64* %RSI.i87, align 8
  store i8 1, i8* %AL.i140, align 1
  %870 = add i64 %869, -1375
  %871 = add i64 %869, 27
  %872 = load i64, i64* %6, align 8
  %873 = add i64 %872, -8
  %874 = inttoptr i64 %873 to i64*
  store i64 %871, i64* %874, align 8
  store i64 %873, i64* %6, align 8
  store i64 %870, i64* %3, align 8
  %875 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400a4a)
  %876 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI.i147, align 8
  store i64 ptrtoint (%G__0x400c49_type* @G__0x400c49 to i64), i64* %RSI.i87, align 8
  %877 = load i64, i64* %RBP.i, align 8
  %878 = add i64 %877, -40
  %879 = add i64 %876, 25
  store i64 %879, i64* %3, align 8
  %880 = inttoptr i64 %878 to i64*
  %881 = load i64, i64* %880, align 8
  store i64 %881, i64* %70, align 1
  store double 0.000000e+00, double* %277, align 1
  %882 = add i64 %877, -308
  %883 = load i32, i32* %EAX.i392, align 4
  %884 = add i64 %876, 31
  store i64 %884, i64* %3, align 8
  %885 = inttoptr i64 %882 to i32*
  store i32 %883, i32* %885, align 4
  %886 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i140, align 1
  %887 = add i64 %886, -1433
  %888 = add i64 %886, 7
  %889 = load i64, i64* %6, align 8
  %890 = add i64 %889, -8
  %891 = inttoptr i64 %890 to i64*
  store i64 %888, i64* %891, align 8
  store i64 %890, i64* %6, align 8
  store i64 %887, i64* %3, align 8
  %892 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %875)
  %893 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI.i147, align 8
  store i64 ptrtoint (%G__0x400c55_type* @G__0x400c55 to i64), i64* %RSI.i87, align 8
  %894 = load i64, i64* %RBP.i, align 8
  %895 = add i64 %894, -48
  %896 = add i64 %893, 25
  store i64 %896, i64* %3, align 8
  %897 = inttoptr i64 %895 to i64*
  %898 = load i64, i64* %897, align 8
  store i64 %898, i64* %70, align 1
  store double 0.000000e+00, double* %277, align 1
  %899 = add i64 %894, -312
  %900 = load i32, i32* %EAX.i392, align 4
  %901 = add i64 %893, 31
  store i64 %901, i64* %3, align 8
  %902 = inttoptr i64 %899 to i32*
  store i32 %900, i32* %902, align 4
  %903 = load i64, i64* %3, align 8
  store i8 1, i8* %AL.i140, align 1
  %904 = add i64 %903, -1471
  %905 = add i64 %903, 7
  %906 = load i64, i64* %6, align 8
  %907 = add i64 %906, -8
  %908 = inttoptr i64 %907 to i64*
  store i64 %905, i64* %908, align 8
  store i64 %907, i64* %6, align 8
  store i64 %904, i64* %3, align 8
  %909 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %892)
  %910 = load i64, i64* %RBP.i, align 8
  %911 = add i64 %910, -64
  %912 = load i64, i64* %3, align 8
  %913 = add i64 %912, 5
  store i64 %913, i64* %3, align 8
  %914 = inttoptr i64 %911 to i64*
  %915 = load i64, i64* %914, align 8
  %916 = add i64 %910, -56
  %917 = inttoptr i64 %916 to i64*
  %918 = load i64, i64* %917, align 8
  store i64 %915, i64* %70, align 1
  store i64 %918, i64* %42, align 1
  %919 = add i64 %910, -316
  %920 = load i32, i32* %EAX.i392, align 4
  %921 = add i64 %912, 11
  store i64 %921, i64* %3, align 8
  %922 = inttoptr i64 %919 to i32*
  store i32 %920, i32* %922, align 4
  %923 = load i64, i64* %3, align 8
  %924 = add i64 %923, -1105
  %925 = add i64 %923, 5
  %926 = load i64, i64* %6, align 8
  %927 = add i64 %926, -8
  %928 = inttoptr i64 %927 to i64*
  store i64 %925, i64* %928, align 8
  store i64 %927, i64* %6, align 8
  store i64 %924, i64* %3, align 8
  %call2_400ac1 = tail call %struct.Memory* @sub_400670.sum_vec(%struct.State* %0, i64 %924, %struct.Memory* %909)
  %929 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI.i147, align 8
  store i64 ptrtoint (%G__0x400c7c_type* @G__0x400c7c to i64), i64* %RSI.i87, align 8
  store i8 1, i8* %AL.i140, align 1
  %930 = add i64 %929, -1494
  %931 = add i64 %929, 27
  %932 = load i64, i64* %6, align 8
  %933 = add i64 %932, -8
  %934 = inttoptr i64 %933 to i64*
  store i64 %931, i64* %934, align 8
  store i64 %933, i64* %6, align 8
  store i64 %930, i64* %3, align 8
  %935 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400ac1)
  %936 = load i64, i64* %RBP.i, align 8
  %937 = add i64 %936, -80
  %938 = load i64, i64* %3, align 8
  %939 = add i64 %938, 5
  store i64 %939, i64* %3, align 8
  %940 = inttoptr i64 %937 to i64*
  %941 = load i64, i64* %940, align 8
  %942 = add i64 %936, -72
  %943 = inttoptr i64 %942 to i64*
  %944 = load i64, i64* %943, align 8
  store i64 %941, i64* %70, align 1
  store i64 %944, i64* %42, align 1
  %945 = add i64 %936, -320
  %946 = load i32, i32* %EAX.i392, align 4
  %947 = add i64 %938, 11
  store i64 %947, i64* %3, align 8
  %948 = inttoptr i64 %945 to i32*
  store i32 %946, i32* %948, align 4
  %949 = load i64, i64* %3, align 8
  %950 = add i64 %949, -1148
  %951 = add i64 %949, 5
  %952 = load i64, i64* %6, align 8
  %953 = add i64 %952, -8
  %954 = inttoptr i64 %953 to i64*
  store i64 %951, i64* %954, align 8
  store i64 %953, i64* %6, align 8
  store i64 %950, i64* %3, align 8
  %call2_400aec = tail call %struct.Memory* @sub_400670.sum_vec(%struct.State* %0, i64 %950, %struct.Memory* %935)
  %955 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI.i147, align 8
  store i64 ptrtoint (%G__0x400c63_type* @G__0x400c63 to i64), i64* %RSI.i87, align 8
  store i8 1, i8* %AL.i140, align 1
  %956 = add i64 %955, -1537
  %957 = add i64 %955, 27
  %958 = load i64, i64* %6, align 8
  %959 = add i64 %958, -8
  %960 = inttoptr i64 %959 to i64*
  store i64 %957, i64* %960, align 8
  store i64 %959, i64* %6, align 8
  store i64 %956, i64* %3, align 8
  %961 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400aec)
  %962 = load i64, i64* %RBP.i, align 8
  %963 = add i64 %962, -112
  %964 = load i64, i64* %3, align 8
  %965 = add i64 %964, 5
  store i64 %965, i64* %3, align 8
  %966 = inttoptr i64 %963 to i64*
  %967 = load i64, i64* %966, align 8
  %968 = add i64 %962, -104
  %969 = inttoptr i64 %968 to i64*
  %970 = load i64, i64* %969, align 8
  store i64 %967, i64* %70, align 1
  store i64 %970, i64* %42, align 1
  %971 = add i64 %962, -324
  %972 = load i32, i32* %EAX.i392, align 4
  %973 = add i64 %964, 11
  store i64 %973, i64* %3, align 8
  %974 = inttoptr i64 %971 to i32*
  store i32 %972, i32* %974, align 4
  %975 = load i64, i64* %3, align 8
  %976 = add i64 %975, -1191
  %977 = add i64 %975, 5
  %978 = load i64, i64* %6, align 8
  %979 = add i64 %978, -8
  %980 = inttoptr i64 %979 to i64*
  store i64 %977, i64* %980, align 8
  store i64 %979, i64* %6, align 8
  store i64 %976, i64* %3, align 8
  %call2_400b17 = tail call %struct.Memory* @sub_400670.sum_vec(%struct.State* %0, i64 %976, %struct.Memory* %961)
  %981 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI.i147, align 8
  store i64 ptrtoint (%G__0x400c70_type* @G__0x400c70 to i64), i64* %RSI.i87, align 8
  store i8 1, i8* %AL.i140, align 1
  %982 = add i64 %981, -1580
  %983 = add i64 %981, 27
  %984 = load i64, i64* %6, align 8
  %985 = add i64 %984, -8
  %986 = inttoptr i64 %985 to i64*
  store i64 %983, i64* %986, align 8
  store i64 %985, i64* %6, align 8
  store i64 %982, i64* %3, align 8
  %987 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400b17)
  %988 = load i64, i64* %RBP.i, align 8
  %989 = add i64 %988, -128
  %990 = load i64, i64* %3, align 8
  %991 = add i64 %990, 5
  store i64 %991, i64* %3, align 8
  %992 = inttoptr i64 %989 to i64*
  %993 = load i64, i64* %992, align 8
  %994 = add i64 %988, -120
  %995 = inttoptr i64 %994 to i64*
  %996 = load i64, i64* %995, align 8
  store i64 %993, i64* %70, align 1
  store i64 %996, i64* %42, align 1
  %997 = add i64 %988, -328
  %998 = load i32, i32* %EAX.i392, align 4
  %999 = add i64 %990, 11
  store i64 %999, i64* %3, align 8
  %1000 = inttoptr i64 %997 to i32*
  store i32 %998, i32* %1000, align 4
  %1001 = load i64, i64* %3, align 8
  %1002 = add i64 %1001, -1234
  %1003 = add i64 %1001, 5
  %1004 = load i64, i64* %6, align 8
  %1005 = add i64 %1004, -8
  %1006 = inttoptr i64 %1005 to i64*
  store i64 %1003, i64* %1006, align 8
  store i64 %1005, i64* %6, align 8
  store i64 %1002, i64* %3, align 8
  %call2_400b42 = tail call %struct.Memory* @sub_400670.sum_vec(%struct.State* %0, i64 %1002, %struct.Memory* %987)
  %1007 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI.i147, align 8
  store i64 ptrtoint (%G__0x400c85_type* @G__0x400c85 to i64), i64* %RSI.i87, align 8
  store i8 1, i8* %AL.i140, align 1
  %1008 = add i64 %1007, -1623
  %1009 = add i64 %1007, 27
  %1010 = load i64, i64* %6, align 8
  %1011 = add i64 %1010, -8
  %1012 = inttoptr i64 %1011 to i64*
  store i64 %1009, i64* %1012, align 8
  store i64 %1011, i64* %6, align 8
  store i64 %1008, i64* %3, align 8
  %1013 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400b42)
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i9 = bitcast %union.anon* %1014 to i32*
  %RCX.i = getelementptr inbounds %union.anon, %union.anon* %1014, i64 0, i32 0
  %1015 = load i64, i64* %3, align 8
  store i64 0, i64* %RCX.i, align 8
  %1016 = load i64, i64* %RBP.i, align 8
  %1017 = add i64 %1016, -332
  %1018 = load i32, i32* %EAX.i392, align 4
  %1019 = add i64 %1015, 8
  store i64 %1019, i64* %3, align 8
  %1020 = inttoptr i64 %1017 to i32*
  store i32 %1018, i32* %1020, align 4
  %1021 = load i32, i32* %ECX.i9, align 4
  %1022 = zext i32 %1021 to i64
  %1023 = load i64, i64* %3, align 8
  store i64 %1022, i64* %RAX.i395, align 8
  %1024 = load i64, i64* %6, align 8
  %1025 = add i64 %1024, 336
  store i64 %1025, i64* %6, align 8
  %1026 = icmp ugt i64 %1024, -337
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %14, align 1
  %1028 = trunc i64 %1025 to i32
  %1029 = and i32 %1028, 255
  %1030 = tail call i32 @llvm.ctpop.i32(i32 %1029)
  %1031 = trunc i32 %1030 to i8
  %1032 = and i8 %1031, 1
  %1033 = xor i8 %1032, 1
  store i8 %1033, i8* %21, align 1
  %1034 = xor i64 %1024, 16
  %1035 = xor i64 %1034, %1025
  %1036 = lshr i64 %1035, 4
  %1037 = trunc i64 %1036 to i8
  %1038 = and i8 %1037, 1
  store i8 %1038, i8* %27, align 1
  %1039 = icmp eq i64 %1025, 0
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %30, align 1
  %1041 = lshr i64 %1025, 63
  %1042 = trunc i64 %1041 to i8
  store i8 %1042, i8* %33, align 1
  %1043 = lshr i64 %1024, 63
  %1044 = xor i64 %1041, %1043
  %1045 = add nuw nsw i64 %1044, %1041
  %1046 = icmp eq i64 %1045, 2
  %1047 = zext i1 %1046 to i8
  store i8 %1047, i8* %39, align 1
  %1048 = add i64 %1023, 10
  store i64 %1048, i64* %3, align 8
  %1049 = add i64 %1024, 344
  %1050 = inttoptr i64 %1025 to i64*
  %1051 = load i64, i64* %1050, align 8
  store i64 %1051, i64* %RBP.i, align 8
  store i64 %1049, i64* %6, align 8
  %1052 = add i64 %1023, 11
  store i64 %1052, i64* %3, align 8
  %1053 = inttoptr i64 %1049 to i64*
  %1054 = load i64, i64* %1053, align 8
  store i64 %1054, i64* %3, align 8
  %1055 = add i64 %1024, 352
  store i64 %1055, i64* %6, align 8
  ret %struct.Memory* %1013
}

define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subq__0x150___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -336
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 336
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

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 0, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to i32*
  store i32 0, i32* %10, align 1
  %11 = bitcast i64* %7 to i32*
  store i32 0, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 12
  %13 = bitcast i8* %12 to i32*
  store i32 0, i32* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2625a0__MINUS0x114__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -276
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2500000, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x120__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x120__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_callq_.make_vec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_0x511__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x511__rip__4196087__type* @G_0x511__rip__4196087_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -136
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x509__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x509__rip__4196111__type* @G_0x509__rip__4196111_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -152
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x4e9__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x4e9__rip__4196135__type* @G_0x4e9__rip__4196135_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -168
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x4c9__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x4c9__rip__4196159__type* @G_0x4c9__rip__4196159_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x4d1__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x4d1__rip__4196167__type* @G_0x4d1__rip__4196167_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0xd0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -200
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x4a6__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x4a6__rip__4196194__type* @G_0x4a6__rip__4196194_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x4a6__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x4a6__rip__4196202__type* @G_0x4a6__rip__4196202_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -184
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x483__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x483__rip__4196229__type* @G_0x483__rip__4196229_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0xf0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -232
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x90__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -136
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -120
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -104
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -88
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -72
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -56
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0xf8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xf8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_movl_MINUS0x114__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -276
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

; <label>:12:                                     ; preds = %block_400478
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

; <label>:22:                                     ; preds = %block_400478
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

define %struct.Memory* @routine_jb_.L_4008f6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x446__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x446__rip__4196314__type* @G_0x446__rip__4196314_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x426__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x426__rip__4196322__type* @G_0x426__rip__4196322_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xf8__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
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

define %struct.Memory* @routine_callq_.pow_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_0x40a__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x40a__rip__4196350__type* @G_0x40a__rip__4196350_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x128__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sqrt_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd_MINUS0x128__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addsd_MINUS0x20__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0xf8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -248
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x100__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sin_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x108__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.cos_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x110__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x100__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_mulsd_MINUS0x108__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -264
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x28__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x110__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -272
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x327__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x327__rip__4196577__type* @G_0x327__rip__4196577_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0xf8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -248
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0xf8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4007b6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xc0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -184
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0xe0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -216
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xe0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
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

define %struct.Memory* @routine_jb_.L_4009f9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %3, %.v
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xa0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -152
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xe0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -216
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xe0__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -216
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0xa0__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -152
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fadd <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulpd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x double>*
  %8 = load <2 x double>, <2 x double>* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to <2 x double>*
  %10 = load <2 x double>, <2 x double>* %9, align 1
  %11 = fmul <2 x double> %8, %10
  store <2 x double> %11, <2 x double>* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divpd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to <2 x double>*
  %8 = load <2 x double>, <2 x double>* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to <2 x double>*
  %10 = load <2 x double>, <2 x double>* %9, align 1
  %11 = fdiv <2 x double> %8, %10
  store <2 x double> %11, <2 x double>* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -88
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fadd <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divpd_MINUS0xe0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -224
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -216
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fdiv <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0x40__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -56
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fadd <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulpd_MINUS0xe0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -224
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -216
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fmul <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -72
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fadd <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xf0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -232
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -104
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fadd <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xb0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -168
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subpd_MINUS0xa0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -152
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fsub <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0x80__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -120
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fadd <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xb0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -168
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0xe0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -224
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -216
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fadd <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400906(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c28___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c31___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400c31_type* @G__0x400c31 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 1, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.printf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x400c39___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400c39_type* @G__0x400c39 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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

define %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -300
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -88
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x130__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -304
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sum_vec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__0x400c40___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400c40_type* @G__0x400c40 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c49___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400c49_type* @G__0x400c49 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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

define %struct.Memory* @routine_movl__eax__MINUS0x134__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -308
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c55___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400c55_type* @G__0x400c55 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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

define %struct.Memory* @routine_movl__eax__MINUS0x138__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -312
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x40__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -56
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x13c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -316
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c7c___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400c7c_type* @G__0x400c7c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -72
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x140__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -320
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c63___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400c63_type* @G__0x400c63 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -104
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x144__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -324
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c70___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400c70_type* @G__0x400c70 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x80__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -120
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x148__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -328
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c85___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400c85_type* @G__0x400c85 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x14c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -332
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addq__0x150___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 336
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -337
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

define %struct.Memory* @routine_popq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_retq(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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
