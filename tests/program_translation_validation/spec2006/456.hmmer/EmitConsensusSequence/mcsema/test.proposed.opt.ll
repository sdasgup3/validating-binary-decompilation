; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x3ff44__rip__type = type <{ [4 x i8] }>
%G_0x4002b__rip__type = type <{ [8 x i8] }>
%G_0x4014b__rip__type = type <{ [8 x i8] }>
%G_0x401c8__rip__type = type <{ [4 x i8] }>
%G_0x40297__rip__type = type <{ [4 x i8] }>
%G_0x402a1__rip__type = type <{ [4 x i8] }>
%G_0x402af__rip__type = type <{ [8 x i8] }>
%G_0x402f8__rip__type = type <{ [8 x i8] }>
%G_0x676d90_type = type <{ [1 x i8] }>
%G_0x676ffc_type = type <{ [4 x i8] }>
%G_0x677060_type = type <{ [4 x i8] }>
%G__0x45638b_type = type <{ [8 x i8] }>
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
@G_0x3ff44__rip_ = global %G_0x3ff44__rip__type zeroinitializer
@G_0x4002b__rip_ = global %G_0x4002b__rip__type zeroinitializer
@G_0x4014b__rip_ = global %G_0x4014b__rip__type zeroinitializer
@G_0x401c8__rip_ = global %G_0x401c8__rip__type zeroinitializer
@G_0x40297__rip_ = global %G_0x40297__rip__type zeroinitializer
@G_0x402a1__rip_ = global %G_0x402a1__rip__type zeroinitializer
@G_0x402af__rip_ = global %G_0x402af__rip__type zeroinitializer
@G_0x402f8__rip_ = global %G_0x402f8__rip__type zeroinitializer
@G_0x676d90 = local_unnamed_addr global %G_0x676d90_type zeroinitializer
@G_0x676ffc = local_unnamed_addr global %G_0x676ffc_type zeroinitializer
@G_0x677060 = local_unnamed_addr global %G_0x677060_type zeroinitializer
@G__0x45638b = global %G__0x45638b_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #0

; Function Attrs: nounwind readnone
declare float @llvm.trunc.f32(float) #0

declare extern_weak x86_64_sysvcc i64 @free(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_4149c0.StateOccupancy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44d5c0.P7AllocTrace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44d790.TraceSet(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_452580.FArgMax(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4015c0.tolower_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44d730.P7FreeTrace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @EmitConsensusSequence(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -152
  store i64 %11, i64* %6, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %RDI.i70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %18 = add i64 %7, -16
  %19 = load i64, i64* %RDI.i70, align 8
  %20 = add i64 %10, 14
  store i64 %20, i64* %3, align 8
  %21 = inttoptr i64 %18 to i64*
  store i64 %19, i64* %21, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i = getelementptr inbounds %union.anon, %union.anon* %22, i64 0, i32 0
  %23 = load i64, i64* %RBP.i, align 8
  %24 = add i64 %23, -16
  %25 = load i64, i64* %RSI.i, align 8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 4
  store i64 %27, i64* %3, align 8
  %28 = inttoptr i64 %24 to i64*
  store i64 %25, i64* %28, align 8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i = getelementptr inbounds %union.anon, %union.anon* %29, i64 0, i32 0
  %30 = load i64, i64* %RBP.i, align 8
  %31 = add i64 %30, -24
  %32 = load i64, i64* %RDX.i, align 8
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 4
  store i64 %34, i64* %3, align 8
  %35 = inttoptr i64 %31 to i64*
  store i64 %32, i64* %35, align 8
  %RCX.i300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %36 = load i64, i64* %RBP.i, align 8
  %37 = add i64 %36, -32
  %38 = load i64, i64* %RCX.i300, align 8
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 4
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %37 to i64*
  store i64 %38, i64* %41, align 8
  %R8.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %42 = load i64, i64* %RBP.i, align 8
  %43 = add i64 %42, -40
  %44 = load i64, i64* %R8.i, align 8
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %45, 4
  store i64 %46, i64* %3, align 8
  %47 = inttoptr i64 %43 to i64*
  store i64 %44, i64* %47, align 8
  %48 = load i64, i64* %3, align 8
  %49 = load i32, i32* bitcast (%G_0x676d90_type* @G_0x676d90 to i32*), align 8
  %50 = add i32 %49, -3
  %51 = icmp ult i32 %49, 3
  %52 = zext i1 %51 to i8
  store i8 %52, i8* %12, align 1
  %53 = and i32 %50, 255
  %54 = tail call i32 @llvm.ctpop.i32(i32 %53)
  %55 = trunc i32 %54 to i8
  %56 = and i8 %55, 1
  %57 = xor i8 %56, 1
  store i8 %57, i8* %13, align 1
  %58 = xor i32 %50, %49
  %59 = lshr i32 %58, 4
  %60 = trunc i32 %59 to i8
  %61 = and i8 %60, 1
  store i8 %61, i8* %14, align 1
  %62 = icmp eq i32 %50, 0
  %63 = zext i1 %62 to i8
  store i8 %63, i8* %15, align 1
  %64 = lshr i32 %50, 31
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %16, align 1
  %66 = lshr i32 %49, 31
  %67 = xor i32 %64, %66
  %68 = add nuw nsw i32 %67, %66
  %69 = icmp eq i32 %68, 2
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %17, align 1
  %.v50 = select i1 %62, i64 14, i64 32
  %71 = add i64 %48, %.v50
  store i64 %71, i64* %3, align 8
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %73 = bitcast [32 x %union.VectorReg]* %72 to i8*
  br i1 %62, label %block_41448d, label %block_.L_41449f

block_41448d:                                     ; preds = %entry
  %74 = add i64 %71, ptrtoint (%G_0x40297__rip__type* @G_0x40297__rip_ to i64)
  %75 = add i64 %71, 8
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %74 to i32*
  %77 = load i32, i32* %76, align 4
  %78 = bitcast [32 x %union.VectorReg]* %72 to i32*
  store i32 %77, i32* %78, align 1
  %79 = getelementptr inbounds i8, i8* %73, i64 4
  %80 = bitcast i8* %79 to float*
  store float 0.000000e+00, float* %80, align 1
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %82 = bitcast i64* %81 to float*
  store float 0.000000e+00, float* %82, align 1
  %83 = getelementptr inbounds i8, i8* %73, i64 12
  %84 = bitcast i8* %83 to float*
  store float 0.000000e+00, float* %84, align 1
  %85 = load i64, i64* %RBP.i, align 8
  %86 = add i64 %85, -120
  %87 = add i64 %71, 13
  store i64 %87, i64* %3, align 8
  %88 = bitcast [32 x %union.VectorReg]* %72 to <2 x float>*
  %89 = load <2 x float>, <2 x float>* %88, align 1
  %90 = extractelement <2 x float> %89, i32 0
  %91 = inttoptr i64 %86 to float*
  store float %90, float* %91, align 4
  %92 = load i64, i64* %3, align 8
  %93 = add i64 %92, 18
  store i64 %93, i64* %3, align 8
  br label %block_.L_4144ac

block_.L_41449f:                                  ; preds = %entry
  %94 = add i64 %71, ptrtoint (%G_0x402a1__rip__type* @G_0x402a1__rip_ to i64)
  %95 = add i64 %71, 8
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %94 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = bitcast [32 x %union.VectorReg]* %72 to i32*
  store i32 %97, i32* %98, align 1
  %99 = getelementptr inbounds i8, i8* %73, i64 4
  %100 = bitcast i8* %99 to float*
  store float 0.000000e+00, float* %100, align 1
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %102 = bitcast i64* %101 to float*
  store float 0.000000e+00, float* %102, align 1
  %103 = getelementptr inbounds i8, i8* %73, i64 12
  %104 = bitcast i8* %103 to float*
  store float 0.000000e+00, float* %104, align 1
  %105 = load i64, i64* %RBP.i, align 8
  %106 = add i64 %105, -120
  %107 = add i64 %71, 13
  store i64 %107, i64* %3, align 8
  %108 = bitcast [32 x %union.VectorReg]* %72 to <2 x float>*
  %109 = load <2 x float>, <2 x float>* %108, align 1
  %110 = extractelement <2 x float> %109, i32 0
  %111 = inttoptr i64 %106 to float*
  store float %110, float* %111, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4144ac

block_.L_4144ac:                                  ; preds = %block_.L_41449f, %block_41448d
  %.pre-phi46 = phi <2 x float>* [ %108, %block_.L_41449f ], [ %88, %block_41448d ]
  %.pre-phi45 = phi float* [ %104, %block_.L_41449f ], [ %84, %block_41448d ]
  %.pre-phi44 = phi i8* [ %103, %block_.L_41449f ], [ %83, %block_41448d ]
  %.pre-phi43 = phi float* [ %102, %block_.L_41449f ], [ %82, %block_41448d ]
  %.pre-phi42 = phi float* [ %100, %block_.L_41449f ], [ %80, %block_41448d ]
  %.pre-phi41 = phi i8* [ %99, %block_.L_41449f ], [ %79, %block_41448d ]
  %.pre-phi40 = phi i32* [ %98, %block_.L_41449f ], [ %78, %block_41448d ]
  %.pre-phi = phi i64* [ %101, %block_.L_41449f ], [ %81, %block_41448d ]
  %112 = phi i64 [ %.pre, %block_.L_41449f ], [ %93, %block_41448d ]
  %113 = load i64, i64* %RBP.i, align 8
  %114 = add i64 %113, -72
  store i64 %114, i64* %RSI.i, align 8
  %115 = add i64 %113, -80
  store i64 %115, i64* %RDX.i, align 8
  %116 = add i64 %113, -88
  store i64 %116, i64* %RCX.i300, align 8
  %117 = add i64 %113, -8
  %118 = add i64 %112, 16
  store i64 %118, i64* %3, align 8
  %119 = inttoptr i64 %117 to i64*
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %RDI.i70, align 8
  %121 = add i64 %112, 1300
  %122 = add i64 %112, 21
  %123 = load i64, i64* %6, align 8
  %124 = add i64 %123, -8
  %125 = inttoptr i64 %124 to i64*
  store i64 %122, i64* %125, align 8
  store i64 %124, i64* %6, align 8
  store i64 %121, i64* %3, align 8
  %call2_4144bc = tail call %struct.Memory* @sub_4149c0.StateOccupancy(%struct.State* nonnull %0, i64 %121, %struct.Memory* %2)
  %126 = load i64, i64* %RBP.i, align 8
  %127 = add i64 %126, -100
  %128 = load i64, i64* %3, align 8
  %129 = add i64 %128, 7
  store i64 %129, i64* %3, align 8
  %130 = inttoptr i64 %127 to i32*
  store i32 0, i32* %130, align 4
  %131 = load i64, i64* %RBP.i, align 8
  %132 = add i64 %131, -96
  %133 = load i64, i64* %3, align 8
  %134 = add i64 %133, 7
  store i64 %134, i64* %3, align 8
  %135 = inttoptr i64 %132 to i32*
  store i32 0, i32* %135, align 4
  %136 = load i64, i64* %RBP.i, align 8
  %137 = add i64 %136, -92
  %138 = load i64, i64* %3, align 8
  %139 = add i64 %138, 7
  store i64 %139, i64* %3, align 8
  %140 = inttoptr i64 %137 to i32*
  store i32 0, i32* %140, align 4
  %141 = load i64, i64* %RBP.i, align 8
  %142 = add i64 %141, -104
  %143 = load i64, i64* %3, align 8
  %144 = add i64 %143, 7
  store i64 %144, i64* %3, align 8
  %145 = inttoptr i64 %142 to i32*
  store i32 1, i32* %145, align 4
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i762 = getelementptr inbounds %union.anon, %union.anon* %146, i64 0, i32 0
  %EAX.i756 = bitcast %union.anon* %146 to i32*
  %147 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %72, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %148 = bitcast i64* %.pre-phi to double*
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %150 = bitcast %union.VectorReg* %149 to i8*
  %151 = bitcast %union.VectorReg* %149 to double*
  %152 = bitcast [32 x %union.VectorReg]* %72 to float*
  %153 = bitcast [32 x %union.VectorReg]* %72 to <2 x i32>*
  %154 = bitcast i64* %.pre-phi to <2 x i32>*
  %155 = bitcast %union.VectorReg* %149 to i32*
  %156 = getelementptr inbounds i8, i8* %150, i64 4
  %157 = bitcast i8* %156 to i32*
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %159 = bitcast i64* %158 to i32*
  %160 = getelementptr inbounds i8, i8* %150, i64 12
  %161 = bitcast i8* %160 to i32*
  %162 = bitcast %union.VectorReg* %149 to <2 x float>*
  %163 = bitcast i64* %158 to <2 x i32>*
  %164 = bitcast %union.VectorReg* %149 to float*
  %165 = bitcast i8* %.pre-phi41 to i32*
  %166 = bitcast i64* %.pre-phi to i32*
  %167 = bitcast i8* %.pre-phi44 to i32*
  %.pre18 = load i64, i64* %3, align 8
  br label %block_.L_4144dd

block_.L_4144dd:                                  ; preds = %block_.L_414589, %block_.L_4144ac
  %168 = phi i64 [ %.pre18, %block_.L_4144ac ], [ %527, %block_.L_414589 ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_4144bc, %block_.L_4144ac ], [ %MEMORY.3, %block_.L_414589 ]
  %169 = load i64, i64* %RBP.i, align 8
  %170 = add i64 %169, -104
  %171 = add i64 %168, 3
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %170 to i32*
  %173 = load i32, i32* %172, align 4
  %174 = zext i32 %173 to i64
  store i64 %174, i64* %RAX.i762, align 8
  %175 = add i64 %169, -8
  %176 = add i64 %168, 7
  store i64 %176, i64* %3, align 8
  %177 = inttoptr i64 %175 to i64*
  %178 = load i64, i64* %177, align 8
  store i64 %178, i64* %RCX.i300, align 8
  %179 = add i64 %178, 136
  %180 = add i64 %168, 13
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %179 to i32*
  %182 = load i32, i32* %181, align 4
  %183 = sub i32 %173, %182
  %184 = icmp ult i32 %173, %182
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %12, align 1
  %186 = and i32 %183, 255
  %187 = tail call i32 @llvm.ctpop.i32(i32 %186)
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  %190 = xor i8 %189, 1
  store i8 %190, i8* %13, align 1
  %191 = xor i32 %182, %173
  %192 = xor i32 %191, %183
  %193 = lshr i32 %192, 4
  %194 = trunc i32 %193 to i8
  %195 = and i8 %194, 1
  store i8 %195, i8* %14, align 1
  %196 = icmp eq i32 %183, 0
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %15, align 1
  %198 = lshr i32 %183, 31
  %199 = trunc i32 %198 to i8
  store i8 %199, i8* %16, align 1
  %200 = lshr i32 %173, 31
  %201 = lshr i32 %182, 31
  %202 = xor i32 %201, %200
  %203 = xor i32 %198, %200
  %204 = add nuw nsw i32 %203, %202
  %205 = icmp eq i32 %204, 2
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %17, align 1
  %207 = icmp ne i8 %199, 0
  %208 = xor i1 %207, %205
  %.demorgan = or i1 %196, %208
  %.v51 = select i1 %.demorgan, i64 19, i64 191
  %209 = add i64 %168, %.v51
  store i64 %209, i64* %3, align 8
  br i1 %.demorgan, label %block_4144f0, label %block_.L_41459c

block_4144f0:                                     ; preds = %block_.L_4144dd
  %210 = add i64 %209, ptrtoint (%G_0x402f8__rip__type* @G_0x402f8__rip_ to i64)
  %211 = add i64 %209, 8
  store i64 %211, i64* %3, align 8
  %212 = inttoptr i64 %210 to i64*
  %213 = load i64, i64* %212, align 8
  store i64 %213, i64* %147, align 1
  store double 0.000000e+00, double* %148, align 1
  %214 = add i64 %169, -72
  %215 = add i64 %209, 12
  store i64 %215, i64* %3, align 8
  %216 = inttoptr i64 %214 to i64*
  %217 = load i64, i64* %216, align 8
  store i64 %217, i64* %RAX.i762, align 8
  %218 = add i64 %209, 16
  store i64 %218, i64* %3, align 8
  %219 = load i32, i32* %172, align 4
  %220 = sext i32 %219 to i64
  store i64 %220, i64* %RCX.i300, align 8
  %221 = shl nsw i64 %220, 2
  %222 = add i64 %221, %217
  %223 = add i64 %209, 21
  store i64 %223, i64* %3, align 8
  %224 = inttoptr i64 %222 to float*
  %225 = load float, float* %224, align 4
  %226 = fpext float %225 to double
  store double %226, double* %151, align 1
  %227 = add i64 %209, 25
  store i64 %227, i64* %3, align 8
  %228 = bitcast i64 %213 to double
  %229 = fcmp uno double %226, %228
  br i1 %229, label %230, label %240

; <label>:230:                                    ; preds = %block_4144f0
  %231 = fadd double %226, %228
  %232 = bitcast double %231 to i64
  %233 = and i64 %232, 9221120237041090560
  %234 = icmp eq i64 %233, 9218868437227405312
  %235 = and i64 %232, 2251799813685247
  %236 = icmp ne i64 %235, 0
  %237 = and i1 %234, %236
  br i1 %237, label %238, label %246

; <label>:238:                                    ; preds = %230
  %239 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %227, %struct.Memory* %MEMORY.1)
  %.pre19 = load i64, i64* %3, align 8
  %.pre20 = load i8, i8* %12, align 1
  %.pre21 = load i64, i64* %RBP.i, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit739

; <label>:240:                                    ; preds = %block_4144f0
  %241 = fcmp ogt double %226, %228
  br i1 %241, label %246, label %242

; <label>:242:                                    ; preds = %240
  %243 = fcmp olt double %226, %228
  br i1 %243, label %246, label %244

; <label>:244:                                    ; preds = %242
  %245 = fcmp oeq double %226, %228
  br i1 %245, label %246, label %250

; <label>:246:                                    ; preds = %244, %242, %240, %230
  %247 = phi i8 [ 0, %240 ], [ 0, %242 ], [ 1, %244 ], [ 1, %230 ]
  %248 = phi i8 [ 0, %240 ], [ 0, %242 ], [ 0, %244 ], [ 1, %230 ]
  %249 = phi i8 [ 0, %240 ], [ 1, %242 ], [ 0, %244 ], [ 1, %230 ]
  store i8 %247, i8* %15, align 1
  store i8 %248, i8* %13, align 1
  store i8 %249, i8* %12, align 1
  br label %250

; <label>:250:                                    ; preds = %246, %244
  %251 = phi i8 [ %249, %246 ], [ %185, %244 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit739

routine_ucomisd__xmm0___xmm1.exit739:             ; preds = %250, %238
  %252 = phi i64 [ %.pre21, %238 ], [ %169, %250 ]
  %253 = phi i8 [ %.pre20, %238 ], [ %251, %250 ]
  %254 = phi i64 [ %.pre19, %238 ], [ %227, %250 ]
  %255 = phi %struct.Memory* [ %239, %238 ], [ %MEMORY.1, %250 ]
  %256 = icmp ne i8 %253, 0
  %.v58 = select i1 %256, i64 20, i64 6
  %257 = add i64 %254, %.v58
  store i64 %257, i64* %3, align 8
  %cmpBr_414509 = icmp eq i8 %253, 1
  br i1 %cmpBr_414509, label %block_.L_41451d, label %block_41450f

block_41450f:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit739
  %258 = add i64 %252, -92
  %259 = add i64 %257, 3
  store i64 %259, i64* %3, align 8
  %260 = inttoptr i64 %258 to i32*
  %261 = load i32, i32* %260, align 4
  %262 = add i32 %261, 1
  %263 = zext i32 %262 to i64
  store i64 %263, i64* %RAX.i762, align 8
  %264 = icmp eq i32 %261, -1
  %265 = icmp eq i32 %262, 0
  %266 = or i1 %264, %265
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %12, align 1
  %268 = and i32 %262, 255
  %269 = tail call i32 @llvm.ctpop.i32(i32 %268)
  %270 = trunc i32 %269 to i8
  %271 = and i8 %270, 1
  %272 = xor i8 %271, 1
  store i8 %272, i8* %13, align 1
  %273 = xor i32 %262, %261
  %274 = lshr i32 %273, 4
  %275 = trunc i32 %274 to i8
  %276 = and i8 %275, 1
  store i8 %276, i8* %14, align 1
  %277 = zext i1 %265 to i8
  store i8 %277, i8* %15, align 1
  %278 = lshr i32 %262, 31
  %279 = trunc i32 %278 to i8
  store i8 %279, i8* %16, align 1
  %280 = lshr i32 %261, 31
  %281 = xor i32 %278, %280
  %282 = add nuw nsw i32 %281, %278
  %283 = icmp eq i32 %282, 2
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %17, align 1
  %285 = add i64 %257, 9
  store i64 %285, i64* %3, align 8
  store i32 %262, i32* %260, align 4
  %286 = load i64, i64* %3, align 8
  %287 = add i64 %286, 14
  store i64 %287, i64* %3, align 8
  br label %block_.L_414526

block_.L_41451d:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit739
  %288 = add i64 %252, -96
  %289 = add i64 %257, 3
  store i64 %289, i64* %3, align 8
  %290 = inttoptr i64 %288 to i32*
  %291 = load i32, i32* %290, align 4
  %292 = add i32 %291, 1
  %293 = zext i32 %292 to i64
  store i64 %293, i64* %RAX.i762, align 8
  %294 = icmp eq i32 %291, -1
  %295 = icmp eq i32 %292, 0
  %296 = or i1 %294, %295
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %12, align 1
  %298 = and i32 %292, 255
  %299 = tail call i32 @llvm.ctpop.i32(i32 %298)
  %300 = trunc i32 %299 to i8
  %301 = and i8 %300, 1
  %302 = xor i8 %301, 1
  store i8 %302, i8* %13, align 1
  %303 = xor i32 %292, %291
  %304 = lshr i32 %303, 4
  %305 = trunc i32 %304 to i8
  %306 = and i8 %305, 1
  store i8 %306, i8* %14, align 1
  %307 = zext i1 %295 to i8
  store i8 %307, i8* %15, align 1
  %308 = lshr i32 %292, 31
  %309 = trunc i32 %308 to i8
  store i8 %309, i8* %16, align 1
  %310 = lshr i32 %291, 31
  %311 = xor i32 %308, %310
  %312 = add nuw nsw i32 %311, %308
  %313 = icmp eq i32 %312, 2
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %17, align 1
  %315 = add i64 %257, 9
  store i64 %315, i64* %3, align 8
  store i32 %292, i32* %290, align 4
  %.pre22 = load i64, i64* %3, align 8
  br label %block_.L_414526

block_.L_414526:                                  ; preds = %block_.L_41451d, %block_41450f
  %316 = phi i64 [ %.pre22, %block_.L_41451d ], [ %287, %block_41450f ]
  %317 = load i64, i64* %RBP.i, align 8
  %318 = add i64 %317, -104
  %319 = add i64 %316, 3
  store i64 %319, i64* %3, align 8
  %320 = inttoptr i64 %318 to i32*
  %321 = load i32, i32* %320, align 4
  %322 = zext i32 %321 to i64
  store i64 %322, i64* %RAX.i762, align 8
  %323 = add i64 %317, -8
  %324 = add i64 %316, 7
  store i64 %324, i64* %3, align 8
  %325 = inttoptr i64 %323 to i64*
  %326 = load i64, i64* %325, align 8
  store i64 %326, i64* %RCX.i300, align 8
  %327 = add i64 %326, 136
  %328 = add i64 %316, 13
  store i64 %328, i64* %3, align 8
  %329 = inttoptr i64 %327 to i32*
  %330 = load i32, i32* %329, align 4
  %331 = sub i32 %321, %330
  %332 = icmp ult i32 %321, %330
  %333 = zext i1 %332 to i8
  store i8 %333, i8* %12, align 1
  %334 = and i32 %331, 255
  %335 = tail call i32 @llvm.ctpop.i32(i32 %334)
  %336 = trunc i32 %335 to i8
  %337 = and i8 %336, 1
  %338 = xor i8 %337, 1
  store i8 %338, i8* %13, align 1
  %339 = xor i32 %330, %321
  %340 = xor i32 %339, %331
  %341 = lshr i32 %340, 4
  %342 = trunc i32 %341 to i8
  %343 = and i8 %342, 1
  store i8 %343, i8* %14, align 1
  %344 = icmp eq i32 %331, 0
  %345 = zext i1 %344 to i8
  store i8 %345, i8* %15, align 1
  %346 = lshr i32 %331, 31
  %347 = trunc i32 %346 to i8
  store i8 %347, i8* %16, align 1
  %348 = lshr i32 %321, 31
  %349 = lshr i32 %330, 31
  %350 = xor i32 %349, %348
  %351 = xor i32 %346, %348
  %352 = add nuw nsw i32 %351, %350
  %353 = icmp eq i32 %352, 2
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %17, align 1
  %355 = icmp ne i8 %347, 0
  %356 = xor i1 %355, %353
  %.v59 = select i1 %356, i64 19, i64 99
  %357 = add i64 %316, %.v59
  store i64 %357, i64* %3, align 8
  br i1 %356, label %block_414539, label %block_.L_414589

block_414539:                                     ; preds = %block_.L_414526
  %358 = add i64 %357, ptrtoint (%G_0x402af__rip__type* @G_0x402af__rip_ to i64)
  %359 = add i64 %357, 8
  store i64 %359, i64* %3, align 8
  %360 = inttoptr i64 %358 to i64*
  %361 = load i64, i64* %360, align 8
  store i64 %361, i64* %147, align 1
  store double 0.000000e+00, double* %148, align 1
  %362 = add i64 %317, -80
  %363 = add i64 %357, 12
  store i64 %363, i64* %3, align 8
  %364 = inttoptr i64 %362 to i64*
  %365 = load i64, i64* %364, align 8
  store i64 %365, i64* %RAX.i762, align 8
  %366 = add i64 %357, 16
  store i64 %366, i64* %3, align 8
  %367 = load i32, i32* %320, align 4
  %368 = sext i32 %367 to i64
  store i64 %368, i64* %RCX.i300, align 8
  %369 = shl nsw i64 %368, 2
  %370 = add i64 %369, %365
  %371 = add i64 %357, 21
  store i64 %371, i64* %3, align 8
  %372 = inttoptr i64 %370 to float*
  %373 = load float, float* %372, align 4
  %374 = fpext float %373 to double
  store double %374, double* %151, align 1
  %375 = add i64 %357, 25
  store i64 %375, i64* %3, align 8
  %376 = bitcast i64 %361 to double
  %377 = fcmp uno double %374, %376
  br i1 %377, label %378, label %388

; <label>:378:                                    ; preds = %block_414539
  %379 = fadd double %374, %376
  %380 = bitcast double %379 to i64
  %381 = and i64 %380, 9221120237041090560
  %382 = icmp eq i64 %381, 9218868437227405312
  %383 = and i64 %380, 2251799813685247
  %384 = icmp ne i64 %383, 0
  %385 = and i1 %382, %384
  br i1 %385, label %386, label %394

; <label>:386:                                    ; preds = %378
  %387 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %375, %struct.Memory* %255)
  %.pre23 = load i64, i64* %3, align 8
  %.pre24 = load i8, i8* %12, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit694

; <label>:388:                                    ; preds = %block_414539
  %389 = fcmp ogt double %374, %376
  br i1 %389, label %394, label %390

; <label>:390:                                    ; preds = %388
  %391 = fcmp olt double %374, %376
  br i1 %391, label %394, label %392

; <label>:392:                                    ; preds = %390
  %393 = fcmp oeq double %374, %376
  br i1 %393, label %394, label %398

; <label>:394:                                    ; preds = %392, %390, %388, %378
  %395 = phi i8 [ 0, %388 ], [ 0, %390 ], [ 1, %392 ], [ 1, %378 ]
  %396 = phi i8 [ 0, %388 ], [ 0, %390 ], [ 0, %392 ], [ 1, %378 ]
  %397 = phi i8 [ 0, %388 ], [ 1, %390 ], [ 0, %392 ], [ 1, %378 ]
  store i8 %395, i8* %15, align 1
  store i8 %396, i8* %13, align 1
  store i8 %397, i8* %12, align 1
  br label %398

; <label>:398:                                    ; preds = %394, %392
  %399 = phi i8 [ %397, %394 ], [ %333, %392 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit694

routine_ucomisd__xmm0___xmm1.exit694:             ; preds = %398, %386
  %400 = phi i8 [ %.pre24, %386 ], [ %399, %398 ]
  %401 = phi i64 [ %.pre23, %386 ], [ %375, %398 ]
  %402 = phi %struct.Memory* [ %387, %386 ], [ %255, %398 ]
  %403 = icmp ne i8 %400, 0
  %.v60 = select i1 %403, i64 55, i64 6
  %404 = add i64 %401, %.v60
  store i64 %404, i64* %3, align 8
  %cmpBr_414552 = icmp eq i8 %400, 1
  br i1 %cmpBr_414552, label %block_.L_414589, label %block_414558

block_414558:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit694
  %405 = add i64 %404, ptrtoint (%G_0x401c8__rip__type* @G_0x401c8__rip_ to i64)
  %406 = add i64 %404, 8
  store i64 %406, i64* %3, align 8
  %407 = inttoptr i64 %405 to i32*
  %408 = load i32, i32* %407, align 4
  store i32 %408, i32* %.pre-phi40, align 1
  store float 0.000000e+00, float* %.pre-phi42, align 1
  store float 0.000000e+00, float* %.pre-phi43, align 1
  store float 0.000000e+00, float* %.pre-phi45, align 1
  %409 = load i64, i64* %RBP.i, align 8
  %410 = add i64 %409, -8
  %411 = add i64 %404, 12
  store i64 %411, i64* %3, align 8
  %412 = inttoptr i64 %410 to i64*
  %413 = load i64, i64* %412, align 8
  store i64 %413, i64* %RAX.i762, align 8
  %414 = add i64 %413, 144
  %415 = add i64 %404, 19
  store i64 %415, i64* %3, align 8
  %416 = inttoptr i64 %414 to i64*
  %417 = load i64, i64* %416, align 8
  store i64 %417, i64* %RAX.i762, align 8
  %418 = add i64 %409, -104
  %419 = add i64 %404, 23
  store i64 %419, i64* %3, align 8
  %420 = inttoptr i64 %418 to i32*
  %421 = load i32, i32* %420, align 4
  %422 = sext i32 %421 to i64
  store i64 %422, i64* %RCX.i300, align 8
  %423 = shl nsw i64 %422, 3
  %424 = add i64 %423, %417
  %425 = add i64 %404, 27
  store i64 %425, i64* %3, align 8
  %426 = inttoptr i64 %424 to i64*
  %427 = load i64, i64* %426, align 8
  store i64 %427, i64* %RAX.i762, align 8
  %428 = load <2 x i32>, <2 x i32>* %153, align 1
  %429 = load <2 x i32>, <2 x i32>* %154, align 1
  %430 = extractelement <2 x i32> %428, i32 0
  store i32 %430, i32* %155, align 1
  %431 = extractelement <2 x i32> %428, i32 1
  store i32 %431, i32* %157, align 1
  %432 = extractelement <2 x i32> %429, i32 0
  store i32 %432, i32* %159, align 1
  %433 = extractelement <2 x i32> %429, i32 1
  store i32 %433, i32* %161, align 1
  %434 = add i64 %427, 16
  %435 = add i64 %404, 35
  store i64 %435, i64* %3, align 8
  %436 = load <2 x float>, <2 x float>* %162, align 1
  %437 = load <2 x i32>, <2 x i32>* %163, align 1
  %438 = inttoptr i64 %434 to float*
  %439 = load float, float* %438, align 4
  %440 = extractelement <2 x float> %436, i32 0
  %441 = fsub float %440, %439
  store float %441, float* %164, align 1
  %442 = bitcast <2 x float> %436 to <2 x i32>
  %443 = extractelement <2 x i32> %442, i32 1
  store i32 %443, i32* %157, align 1
  %444 = extractelement <2 x i32> %437, i32 0
  store i32 %444, i32* %159, align 1
  %445 = extractelement <2 x i32> %437, i32 1
  store i32 %445, i32* %161, align 1
  %446 = bitcast <2 x i32> %428 to <2 x float>
  %447 = load <2 x float>, <2 x float>* %162, align 1
  %448 = extractelement <2 x float> %446, i32 0
  %449 = extractelement <2 x float> %447, i32 0
  %450 = fdiv float %448, %449
  store float %450, float* %152, align 1
  %451 = extractelement <2 x i32> %428, i32 1
  store i32 %451, i32* %165, align 1
  store i32 %432, i32* %166, align 1
  store i32 %433, i32* %167, align 1
  %452 = load <2 x float>, <2 x float>* %.pre-phi46, align 1
  %453 = extractelement <2 x float> %452, i32 0
  %454 = tail call float @llvm.trunc.f32(float %453)
  %455 = tail call float @llvm.fabs.f32(float %454)
  %456 = fcmp ogt float %455, 0x41E0000000000000
  %457 = fptosi float %454 to i32
  %458 = zext i32 %457 to i64
  %459 = select i1 %456, i64 2147483648, i64 %458
  store i64 %459, i64* %RDX.i, align 8
  %460 = add i64 %409, -100
  %461 = add i64 %404, 46
  store i64 %461, i64* %3, align 8
  %462 = trunc i64 %459 to i32
  %463 = inttoptr i64 %460 to i32*
  %464 = load i32, i32* %463, align 4
  %465 = add i32 %462, %464
  %466 = zext i32 %465 to i64
  store i64 %466, i64* %RDX.i, align 8
  %467 = icmp ult i32 %465, %462
  %468 = icmp ult i32 %465, %464
  %469 = or i1 %467, %468
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %12, align 1
  %471 = and i32 %465, 255
  %472 = tail call i32 @llvm.ctpop.i32(i32 %471)
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  %475 = xor i8 %474, 1
  store i8 %475, i8* %13, align 1
  %476 = xor i32 %462, %464
  %477 = xor i32 %476, %465
  %478 = lshr i32 %477, 4
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  store i8 %480, i8* %14, align 1
  %481 = icmp eq i32 %465, 0
  %482 = zext i1 %481 to i8
  store i8 %482, i8* %15, align 1
  %483 = lshr i32 %465, 31
  %484 = trunc i32 %483 to i8
  store i8 %484, i8* %16, align 1
  %485 = lshr i32 %462, 31
  %486 = lshr i32 %464, 31
  %487 = xor i32 %483, %485
  %488 = xor i32 %483, %486
  %489 = add nuw nsw i32 %487, %488
  %490 = icmp eq i32 %489, 2
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %17, align 1
  %492 = load i64, i64* %RBP.i, align 8
  %493 = add i64 %492, -100
  %494 = add i64 %404, 49
  store i64 %494, i64* %3, align 8
  %495 = inttoptr i64 %493 to i32*
  store i32 %465, i32* %495, align 4
  %.pre25 = load i64, i64* %3, align 8
  br label %block_.L_414589

block_.L_414589:                                  ; preds = %block_.L_414526, %block_414558, %routine_ucomisd__xmm0___xmm1.exit694
  %496 = phi i64 [ %357, %block_.L_414526 ], [ %404, %routine_ucomisd__xmm0___xmm1.exit694 ], [ %.pre25, %block_414558 ]
  %MEMORY.3 = phi %struct.Memory* [ %255, %block_.L_414526 ], [ %402, %routine_ucomisd__xmm0___xmm1.exit694 ], [ %402, %block_414558 ]
  %497 = load i64, i64* %RBP.i, align 8
  %498 = add i64 %497, -104
  %499 = add i64 %496, 8
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %498 to i32*
  %501 = load i32, i32* %500, align 4
  %502 = add i32 %501, 1
  %503 = zext i32 %502 to i64
  store i64 %503, i64* %RAX.i762, align 8
  %504 = icmp eq i32 %501, -1
  %505 = icmp eq i32 %502, 0
  %506 = or i1 %504, %505
  %507 = zext i1 %506 to i8
  store i8 %507, i8* %12, align 1
  %508 = and i32 %502, 255
  %509 = tail call i32 @llvm.ctpop.i32(i32 %508)
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  %512 = xor i8 %511, 1
  store i8 %512, i8* %13, align 1
  %513 = xor i32 %502, %501
  %514 = lshr i32 %513, 4
  %515 = trunc i32 %514 to i8
  %516 = and i8 %515, 1
  store i8 %516, i8* %14, align 1
  %517 = zext i1 %505 to i8
  store i8 %517, i8* %15, align 1
  %518 = lshr i32 %502, 31
  %519 = trunc i32 %518 to i8
  store i8 %519, i8* %16, align 1
  %520 = lshr i32 %501, 31
  %521 = xor i32 %518, %520
  %522 = add nuw nsw i32 %521, %518
  %523 = icmp eq i32 %522, 2
  %524 = zext i1 %523 to i8
  store i8 %524, i8* %17, align 1
  %525 = add i64 %496, 14
  store i64 %525, i64* %3, align 8
  store i32 %502, i32* %500, align 4
  %526 = load i64, i64* %3, align 8
  %527 = add i64 %526, -186
  store i64 %527, i64* %3, align 8
  br label %block_.L_4144dd

block_.L_41459c:                                  ; preds = %block_.L_4144dd
  %528 = add i64 %169, -48
  store i64 %528, i64* %RSI.i, align 8
  %529 = add i64 %169, -92
  %530 = add i64 %209, 7
  store i64 %530, i64* %3, align 8
  %531 = inttoptr i64 %529 to i32*
  %532 = load i32, i32* %531, align 4
  %533 = add i32 %532, 6
  %534 = zext i32 %533 to i64
  store i64 %534, i64* %RAX.i762, align 8
  %535 = icmp ugt i32 %532, -7
  %536 = zext i1 %535 to i8
  store i8 %536, i8* %12, align 1
  %537 = and i32 %533, 255
  %538 = tail call i32 @llvm.ctpop.i32(i32 %537)
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  %541 = xor i8 %540, 1
  store i8 %541, i8* %13, align 1
  %542 = xor i32 %533, %532
  %543 = lshr i32 %542, 4
  %544 = trunc i32 %543 to i8
  %545 = and i8 %544, 1
  store i8 %545, i8* %14, align 1
  %546 = icmp eq i32 %533, 0
  %547 = zext i1 %546 to i8
  store i8 %547, i8* %15, align 1
  %548 = lshr i32 %533, 31
  %549 = trunc i32 %548 to i8
  store i8 %549, i8* %16, align 1
  %550 = lshr i32 %532, 31
  %551 = xor i32 %548, %550
  %552 = add nuw nsw i32 %551, %548
  %553 = icmp eq i32 %552, 2
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %17, align 1
  %555 = add i64 %169, -96
  %556 = add i64 %209, 13
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %555 to i32*
  %558 = load i32, i32* %557, align 4
  %559 = add i32 %558, %533
  %560 = zext i32 %559 to i64
  store i64 %560, i64* %RAX.i762, align 8
  %561 = icmp ult i32 %559, %533
  %562 = icmp ult i32 %559, %558
  %563 = or i1 %561, %562
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %12, align 1
  %565 = and i32 %559, 255
  %566 = tail call i32 @llvm.ctpop.i32(i32 %565)
  %567 = trunc i32 %566 to i8
  %568 = and i8 %567, 1
  %569 = xor i8 %568, 1
  store i8 %569, i8* %13, align 1
  %570 = xor i32 %558, %533
  %571 = xor i32 %570, %559
  %572 = lshr i32 %571, 4
  %573 = trunc i32 %572 to i8
  %574 = and i8 %573, 1
  store i8 %574, i8* %14, align 1
  %575 = icmp eq i32 %559, 0
  %576 = zext i1 %575 to i8
  store i8 %576, i8* %15, align 1
  %577 = lshr i32 %559, 31
  %578 = trunc i32 %577 to i8
  store i8 %578, i8* %16, align 1
  %579 = lshr i32 %558, 31
  %580 = xor i32 %577, %548
  %581 = xor i32 %577, %579
  %582 = add nuw nsw i32 %580, %581
  %583 = icmp eq i32 %582, 2
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %17, align 1
  %585 = add i64 %169, -100
  %586 = add i64 %209, 16
  store i64 %586, i64* %3, align 8
  %587 = inttoptr i64 %585 to i32*
  %588 = load i32, i32* %587, align 4
  %589 = add i32 %588, %559
  %590 = zext i32 %589 to i64
  store i64 %590, i64* %RAX.i762, align 8
  %591 = icmp ult i32 %589, %559
  %592 = icmp ult i32 %589, %588
  %593 = or i1 %591, %592
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %12, align 1
  %595 = and i32 %589, 255
  %596 = tail call i32 @llvm.ctpop.i32(i32 %595)
  %597 = trunc i32 %596 to i8
  %598 = and i8 %597, 1
  %599 = xor i8 %598, 1
  store i8 %599, i8* %13, align 1
  %600 = xor i32 %588, %559
  %601 = xor i32 %600, %589
  %602 = lshr i32 %601, 4
  %603 = trunc i32 %602 to i8
  %604 = and i8 %603, 1
  store i8 %604, i8* %14, align 1
  %605 = icmp eq i32 %589, 0
  %606 = zext i1 %605 to i8
  store i8 %606, i8* %15, align 1
  %607 = lshr i32 %589, 31
  %608 = trunc i32 %607 to i8
  store i8 %608, i8* %16, align 1
  %609 = lshr i32 %588, 31
  %610 = xor i32 %607, %577
  %611 = xor i32 %607, %609
  %612 = add nuw nsw i32 %610, %611
  %613 = icmp eq i32 %612, 2
  %614 = zext i1 %613 to i8
  store i8 %614, i8* %17, align 1
  store i64 %590, i64* %RDI.i70, align 8
  %615 = add i64 %209, 233508
  %616 = add i64 %209, 23
  %617 = load i64, i64* %6, align 8
  %618 = add i64 %617, -8
  %619 = inttoptr i64 %618 to i64*
  store i64 %616, i64* %619, align 8
  store i64 %618, i64* %6, align 8
  store i64 %615, i64* %3, align 8
  %call2_4145ae = tail call %struct.Memory* @sub_44d5c0.P7AllocTrace(%struct.State* nonnull %0, i64 %615, %struct.Memory* %MEMORY.1)
  %620 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45638b_type* @G__0x45638b to i64), i64* %RDI.i70, align 8
  store i64 327, i64* %RSI.i, align 8
  %621 = load i64, i64* %RBP.i, align 8
  %622 = add i64 %621, -92
  %623 = add i64 %620, 18
  store i64 %623, i64* %3, align 8
  %624 = inttoptr i64 %622 to i32*
  %625 = load i32, i32* %624, align 4
  %626 = zext i32 %625 to i64
  store i64 %626, i64* %RAX.i762, align 8
  %627 = add i64 %621, -100
  %628 = add i64 %620, 21
  store i64 %628, i64* %3, align 8
  %629 = inttoptr i64 %627 to i32*
  %630 = load i32, i32* %629, align 4
  %631 = add i32 %630, %625
  %632 = lshr i32 %631, 31
  %633 = add i32 %631, 3
  %634 = zext i32 %633 to i64
  store i64 %634, i64* %RAX.i762, align 8
  %635 = icmp ugt i32 %631, -4
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %12, align 1
  %637 = and i32 %633, 255
  %638 = tail call i32 @llvm.ctpop.i32(i32 %637)
  %639 = trunc i32 %638 to i8
  %640 = and i8 %639, 1
  %641 = xor i8 %640, 1
  store i8 %641, i8* %13, align 1
  %642 = xor i32 %633, %631
  %643 = lshr i32 %642, 4
  %644 = trunc i32 %643 to i8
  %645 = and i8 %644, 1
  store i8 %645, i8* %14, align 1
  %646 = icmp eq i32 %633, 0
  %647 = zext i1 %646 to i8
  store i8 %647, i8* %15, align 1
  %648 = lshr i32 %633, 31
  %649 = trunc i32 %648 to i8
  store i8 %649, i8* %16, align 1
  %650 = xor i32 %648, %632
  %651 = add nuw nsw i32 %650, %648
  %652 = icmp eq i32 %651, 2
  %653 = zext i1 %652 to i8
  store i8 %653, i8* %17, align 1
  %654 = sext i32 %633 to i64
  store i64 %654, i64* %RCX.i300, align 8
  store i64 %654, i64* %RDX.i, align 8
  %655 = add i64 %620, 203437
  %656 = add i64 %620, 39
  %657 = load i64, i64* %6, align 8
  %658 = add i64 %657, -8
  %659 = inttoptr i64 %658 to i64*
  store i64 %656, i64* %659, align 8
  store i64 %658, i64* %6, align 8
  store i64 %655, i64* %3, align 8
  %call2_4145d5 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %655, %struct.Memory* %call2_4145ae)
  %660 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45638b_type* @G__0x45638b to i64), i64* %RDI.i70, align 8
  store i64 328, i64* %RSI.i, align 8
  %661 = load i64, i64* %RBP.i, align 8
  %662 = add i64 %661, -56
  %663 = load i64, i64* %RAX.i762, align 8
  %664 = add i64 %660, 19
  store i64 %664, i64* %3, align 8
  %665 = inttoptr i64 %662 to i64*
  store i64 %663, i64* %665, align 8
  %666 = load i64, i64* %RBP.i, align 8
  %667 = add i64 %666, -92
  %668 = load i64, i64* %3, align 8
  %669 = add i64 %668, 4
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %667 to i32*
  %671 = load i32, i32* %670, align 4
  %672 = zext i32 %671 to i64
  store i64 %672, i64* %R8.i, align 8
  %673 = add i64 %666, -100
  %674 = add i64 %668, 8
  store i64 %674, i64* %3, align 8
  %675 = inttoptr i64 %673 to i32*
  %676 = load i32, i32* %675, align 4
  %677 = add i32 %676, %671
  %678 = lshr i32 %677, 31
  %679 = add i32 %677, 1
  %680 = zext i32 %679 to i64
  store i64 %680, i64* %R8.i, align 8
  %681 = icmp eq i32 %677, -1
  %682 = icmp eq i32 %679, 0
  %683 = or i1 %681, %682
  %684 = zext i1 %683 to i8
  store i8 %684, i8* %12, align 1
  %685 = and i32 %679, 255
  %686 = tail call i32 @llvm.ctpop.i32(i32 %685)
  %687 = trunc i32 %686 to i8
  %688 = and i8 %687, 1
  %689 = xor i8 %688, 1
  store i8 %689, i8* %13, align 1
  %690 = xor i32 %679, %677
  %691 = lshr i32 %690, 4
  %692 = trunc i32 %691 to i8
  %693 = and i8 %692, 1
  store i8 %693, i8* %14, align 1
  %694 = zext i1 %682 to i8
  store i8 %694, i8* %15, align 1
  %695 = lshr i32 %679, 31
  %696 = trunc i32 %695 to i8
  store i8 %696, i8* %16, align 1
  %697 = xor i32 %695, %678
  %698 = add nuw nsw i32 %697, %695
  %699 = icmp eq i32 %698, 2
  %700 = zext i1 %699 to i8
  store i8 %700, i8* %17, align 1
  %701 = sext i32 %679 to i64
  store i64 %701, i64* %RAX.i762, align 8
  store i64 %701, i64* %RDX.i, align 8
  %702 = add i64 %668, 203379
  %703 = add i64 %668, 27
  %704 = load i64, i64* %6, align 8
  %705 = add i64 %704, -8
  %706 = inttoptr i64 %705 to i64*
  store i64 %703, i64* %706, align 8
  store i64 %705, i64* %6, align 8
  store i64 %702, i64* %3, align 8
  %call2_414603 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %702, %struct.Memory* %call2_4145d5)
  %ESI.i584 = bitcast %union.anon* %22 to i32*
  %707 = load i64, i64* %3, align 8
  store i64 0, i64* %RSI.i, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  store i64 4, i64* %RDX.i, align 8
  %708 = load i64, i64* %RBP.i, align 8
  %709 = add i64 %708, -64
  %710 = load i64, i64* %RAX.i762, align 8
  %711 = add i64 %707, 11
  store i64 %711, i64* %3, align 8
  %712 = inttoptr i64 %709 to i64*
  store i64 %710, i64* %712, align 8
  %713 = load i64, i64* %RBP.i, align 8
  %714 = add i64 %713, -48
  %715 = load i64, i64* %3, align 8
  %716 = add i64 %715, 4
  store i64 %716, i64* %3, align 8
  %717 = inttoptr i64 %714 to i64*
  %718 = load i64, i64* %717, align 8
  store i64 %718, i64* %RDI.i70, align 8
  %719 = add i64 %713, -124
  %720 = load i32, i32* %ESI.i584, align 4
  %721 = add i64 %715, 7
  store i64 %721, i64* %3, align 8
  %722 = inttoptr i64 %719 to i32*
  store i32 %720, i32* %722, align 4
  %723 = load i64, i64* %RBP.i, align 8
  %724 = add i64 %723, -124
  %725 = load i64, i64* %3, align 8
  %726 = add i64 %725, 3
  store i64 %726, i64* %3, align 8
  %727 = inttoptr i64 %724 to i32*
  %728 = load i32, i32* %727, align 4
  %729 = zext i32 %728 to i64
  store i64 %729, i64* %RCX.i300, align 8
  %730 = add i64 %725, 7
  store i64 %730, i64* %3, align 8
  %731 = load i32, i32* %727, align 4
  %732 = zext i32 %731 to i64
  store i64 %732, i64* %R8.i, align 8
  %733 = add i64 %725, 233846
  %734 = add i64 %725, 12
  %735 = load i64, i64* %6, align 8
  %736 = add i64 %735, -8
  %737 = inttoptr i64 %736 to i64*
  store i64 %734, i64* %737, align 8
  store i64 %736, i64* %6, align 8
  store i64 %733, i64* %3, align 8
  %call2_414621 = tail call %struct.Memory* @sub_44d790.TraceSet(%struct.State* nonnull %0, i64 %733, %struct.Memory* %call2_414603)
  %738 = load i64, i64* %3, align 8
  store i64 1, i64* %RSI.i, align 8
  store i64 5, i64* %RDX.i, align 8
  store i64 0, i64* %RCX.i300, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %739 = load i64, i64* %RBP.i, align 8
  %740 = add i64 %739, -48
  %741 = add i64 %738, 16
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %740 to i64*
  %743 = load i64, i64* %742, align 8
  store i64 %743, i64* %RDI.i70, align 8
  %744 = add i64 %739, -128
  %745 = add i64 %738, 19
  store i64 %745, i64* %3, align 8
  %746 = inttoptr i64 %744 to i32*
  store i32 0, i32* %746, align 4
  %747 = load i64, i64* %RBP.i, align 8
  %748 = add i64 %747, -128
  %749 = load i64, i64* %3, align 8
  %750 = add i64 %749, 4
  store i64 %750, i64* %3, align 8
  %751 = inttoptr i64 %748 to i32*
  %752 = load i32, i32* %751, align 4
  %753 = zext i32 %752 to i64
  store i64 %753, i64* %R8.i, align 8
  %754 = add i64 %749, 233815
  %755 = add i64 %749, 9
  %756 = load i64, i64* %6, align 8
  %757 = add i64 %756, -8
  %758 = inttoptr i64 %757 to i64*
  store i64 %755, i64* %758, align 8
  store i64 %757, i64* %6, align 8
  store i64 %754, i64* %3, align 8
  %call2_41463d = tail call %struct.Memory* @sub_44d790.TraceSet(%struct.State* nonnull %0, i64 %754, %struct.Memory* %call2_414621)
  %759 = load i64, i64* %3, align 8
  store i64 2, i64* %RSI.i, align 8
  store i64 6, i64* %RDX.i, align 8
  store i64 0, i64* %RCX.i300, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %760 = load i64, i64* %RBP.i, align 8
  %761 = add i64 %760, -48
  %762 = add i64 %759, 16
  store i64 %762, i64* %3, align 8
  %763 = inttoptr i64 %761 to i64*
  %764 = load i64, i64* %763, align 8
  store i64 %764, i64* %RDI.i70, align 8
  %765 = add i64 %760, -132
  %766 = add i64 %759, 22
  store i64 %766, i64* %3, align 8
  %767 = inttoptr i64 %765 to i32*
  store i32 0, i32* %767, align 4
  %768 = load i64, i64* %RBP.i, align 8
  %769 = add i64 %768, -132
  %770 = load i64, i64* %3, align 8
  %771 = add i64 %770, 7
  store i64 %771, i64* %3, align 8
  %772 = inttoptr i64 %769 to i32*
  %773 = load i32, i32* %772, align 4
  %774 = zext i32 %773 to i64
  store i64 %774, i64* %R8.i, align 8
  %775 = add i64 %770, 233784
  %776 = add i64 %770, 12
  %777 = load i64, i64* %6, align 8
  %778 = add i64 %777, -8
  %779 = inttoptr i64 %778 to i64*
  store i64 %776, i64* %779, align 8
  store i64 %778, i64* %6, align 8
  store i64 %775, i64* %3, align 8
  %call2_41465f = tail call %struct.Memory* @sub_44d790.TraceSet(%struct.State* nonnull %0, i64 %775, %struct.Memory* %call2_41463d)
  %780 = load i64, i64* %3, align 8
  %781 = load i32, i32* bitcast (%G_0x676ffc_type* @G_0x676ffc to i32*), align 8
  %782 = zext i32 %781 to i64
  store i64 %782, i64* %RCX.i300, align 8
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B.i529 = bitcast %union.anon* %783 to i8*
  %784 = trunc i32 %781 to i8
  store i8 %784, i8* %R9B.i529, align 1
  %785 = load i64, i64* %RBP.i, align 8
  %786 = add i64 %785, -56
  %787 = add i64 %780, 14
  store i64 %787, i64* %3, align 8
  %788 = inttoptr i64 %786 to i64*
  %789 = load i64, i64* %788, align 8
  store i64 %789, i64* %RAX.i762, align 8
  %790 = add i64 %780, 17
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %789 to i8*
  store i8 %784, i8* %791, align 1
  %792 = load i64, i64* %RBP.i, align 8
  %793 = add i64 %792, -108
  %794 = load i64, i64* %3, align 8
  %795 = add i64 %794, 7
  store i64 %795, i64* %3, align 8
  %796 = inttoptr i64 %793 to i32*
  store i32 3, i32* %796, align 4
  %797 = load i64, i64* %RBP.i, align 8
  %798 = add i64 %797, -112
  %799 = load i64, i64* %3, align 8
  %800 = add i64 %799, 7
  store i64 %800, i64* %3, align 8
  %801 = inttoptr i64 %798 to i32*
  store i32 0, i32* %801, align 4
  %802 = load i64, i64* %RBP.i, align 8
  %803 = add i64 %802, -104
  %804 = load i64, i64* %3, align 8
  %805 = add i64 %804, 7
  store i64 %805, i64* %3, align 8
  %806 = inttoptr i64 %803 to i32*
  store i32 1, i32* %806, align 4
  %R9.i234 = getelementptr inbounds %union.anon, %union.anon* %783, i64 0, i32 0
  %AL.i223 = bitcast %union.anon* %146 to i8*
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10B.i224 = bitcast %union.anon* %807 to i8*
  %R10.i440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %808 = bitcast i8* %156 to float*
  %809 = bitcast i64* %158 to float*
  %810 = bitcast i8* %160 to float*
  %DL.i374 = bitcast %union.anon* %29 to i8*
  %.pre26 = load i64, i64* %3, align 8
  br label %block_.L_41468a

block_.L_41468a:                                  ; preds = %block_.L_414882, %block_.L_41459c
  %811 = phi i64 [ %.pre26, %block_.L_41459c ], [ %1650, %block_.L_414882 ]
  %MEMORY.4 = phi %struct.Memory* [ %call2_41465f, %block_.L_41459c ], [ %MEMORY.8, %block_.L_414882 ]
  %812 = load i64, i64* %RBP.i, align 8
  %813 = add i64 %812, -104
  %814 = add i64 %811, 3
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %813 to i32*
  %816 = load i32, i32* %815, align 4
  %817 = zext i32 %816 to i64
  store i64 %817, i64* %RAX.i762, align 8
  %818 = add i64 %812, -8
  %819 = add i64 %811, 7
  store i64 %819, i64* %3, align 8
  %820 = inttoptr i64 %818 to i64*
  %821 = load i64, i64* %820, align 8
  store i64 %821, i64* %RCX.i300, align 8
  %822 = add i64 %821, 136
  %823 = add i64 %811, 13
  store i64 %823, i64* %3, align 8
  %824 = inttoptr i64 %822 to i32*
  %825 = load i32, i32* %824, align 4
  %826 = sub i32 %816, %825
  %827 = icmp ult i32 %816, %825
  %828 = zext i1 %827 to i8
  store i8 %828, i8* %12, align 1
  %829 = and i32 %826, 255
  %830 = tail call i32 @llvm.ctpop.i32(i32 %829)
  %831 = trunc i32 %830 to i8
  %832 = and i8 %831, 1
  %833 = xor i8 %832, 1
  store i8 %833, i8* %13, align 1
  %834 = xor i32 %825, %816
  %835 = xor i32 %834, %826
  %836 = lshr i32 %835, 4
  %837 = trunc i32 %836 to i8
  %838 = and i8 %837, 1
  store i8 %838, i8* %14, align 1
  %839 = icmp eq i32 %826, 0
  %840 = zext i1 %839 to i8
  store i8 %840, i8* %15, align 1
  %841 = lshr i32 %826, 31
  %842 = trunc i32 %841 to i8
  store i8 %842, i8* %16, align 1
  %843 = lshr i32 %816, 31
  %844 = lshr i32 %825, 31
  %845 = xor i32 %844, %843
  %846 = xor i32 %841, %843
  %847 = add nuw nsw i32 %846, %845
  %848 = icmp eq i32 %847, 2
  %849 = zext i1 %848 to i8
  store i8 %849, i8* %17, align 1
  %850 = icmp ne i8 %842, 0
  %851 = xor i1 %850, %848
  %.demorgan47 = or i1 %839, %851
  %.v52 = select i1 %.demorgan47, i64 19, i64 523
  %852 = add i64 %811, %.v52
  store i64 %852, i64* %3, align 8
  br i1 %.demorgan47, label %block_41469d, label %block_.L_414895

block_41469d:                                     ; preds = %block_.L_41468a
  %853 = add i64 %852, ptrtoint (%G_0x4014b__rip__type* @G_0x4014b__rip_ to i64)
  %854 = add i64 %852, 8
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %853 to i64*
  %856 = load i64, i64* %855, align 8
  store i64 %856, i64* %147, align 1
  store double 0.000000e+00, double* %148, align 1
  %857 = add i64 %812, -72
  %858 = add i64 %852, 12
  store i64 %858, i64* %3, align 8
  %859 = inttoptr i64 %857 to i64*
  %860 = load i64, i64* %859, align 8
  store i64 %860, i64* %RAX.i762, align 8
  %861 = add i64 %852, 16
  store i64 %861, i64* %3, align 8
  %862 = load i32, i32* %815, align 4
  %863 = sext i32 %862 to i64
  store i64 %863, i64* %RCX.i300, align 8
  %864 = shl nsw i64 %863, 2
  %865 = add i64 %864, %860
  %866 = add i64 %852, 21
  store i64 %866, i64* %3, align 8
  %867 = inttoptr i64 %865 to float*
  %868 = load float, float* %867, align 4
  %869 = fpext float %868 to double
  store double %869, double* %151, align 1
  %870 = add i64 %852, 25
  store i64 %870, i64* %3, align 8
  %871 = bitcast i64 %856 to double
  %872 = fcmp uno double %869, %871
  br i1 %872, label %873, label %883

; <label>:873:                                    ; preds = %block_41469d
  %874 = fadd double %869, %871
  %875 = bitcast double %874 to i64
  %876 = and i64 %875, 9221120237041090560
  %877 = icmp eq i64 %876, 9218868437227405312
  %878 = and i64 %875, 2251799813685247
  %879 = icmp ne i64 %878, 0
  %880 = and i1 %877, %879
  br i1 %880, label %881, label %889

; <label>:881:                                    ; preds = %873
  %882 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %870, %struct.Memory* %MEMORY.4)
  %.pre27 = load i64, i64* %3, align 8
  %.pre28 = load i8, i8* %12, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit492

; <label>:883:                                    ; preds = %block_41469d
  %884 = fcmp ogt double %869, %871
  br i1 %884, label %889, label %885

; <label>:885:                                    ; preds = %883
  %886 = fcmp olt double %869, %871
  br i1 %886, label %889, label %887

; <label>:887:                                    ; preds = %885
  %888 = fcmp oeq double %869, %871
  br i1 %888, label %889, label %893

; <label>:889:                                    ; preds = %887, %885, %883, %873
  %890 = phi i8 [ 0, %883 ], [ 0, %885 ], [ 1, %887 ], [ 1, %873 ]
  %891 = phi i8 [ 0, %883 ], [ 0, %885 ], [ 0, %887 ], [ 1, %873 ]
  %892 = phi i8 [ 0, %883 ], [ 1, %885 ], [ 0, %887 ], [ 1, %873 ]
  store i8 %890, i8* %15, align 1
  store i8 %891, i8* %13, align 1
  store i8 %892, i8* %12, align 1
  br label %893

; <label>:893:                                    ; preds = %889, %887
  %894 = phi i8 [ %892, %889 ], [ %828, %887 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit492

routine_ucomisd__xmm0___xmm1.exit492:             ; preds = %893, %881
  %895 = phi i8 [ %.pre28, %881 ], [ %894, %893 ]
  %896 = phi i64 [ %.pre27, %881 ], [ %870, %893 ]
  %897 = phi %struct.Memory* [ %882, %881 ], [ %MEMORY.4, %893 ]
  %898 = icmp ne i8 %895, 0
  %.v54 = select i1 %898, i64 212, i64 6
  %899 = add i64 %896, %.v54
  store i64 %899, i64* %3, align 8
  %cmpBr_4146b6 = icmp eq i8 %895, 1
  br i1 %cmpBr_4146b6, label %block_.L_41478a, label %block_4146bc

block_4146bc:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit492
  %900 = load i64, i64* %RBP.i, align 8
  %901 = add i64 %900, -8
  %902 = add i64 %899, 4
  store i64 %902, i64* %3, align 8
  %903 = inttoptr i64 %901 to i64*
  %904 = load i64, i64* %903, align 8
  store i64 %904, i64* %RAX.i762, align 8
  %905 = add i64 %904, 152
  %906 = add i64 %899, 11
  store i64 %906, i64* %3, align 8
  %907 = inttoptr i64 %905 to i64*
  %908 = load i64, i64* %907, align 8
  store i64 %908, i64* %RAX.i762, align 8
  %909 = add i64 %900, -104
  %910 = add i64 %899, 15
  store i64 %910, i64* %3, align 8
  %911 = inttoptr i64 %909 to i32*
  %912 = load i32, i32* %911, align 4
  %913 = sext i32 %912 to i64
  store i64 %913, i64* %RCX.i300, align 8
  %914 = shl nsw i64 %913, 3
  %915 = add i64 %914, %908
  %916 = add i64 %899, 19
  store i64 %916, i64* %3, align 8
  %917 = inttoptr i64 %915 to i64*
  %918 = load i64, i64* %917, align 8
  store i64 %918, i64* %RDI.i70, align 8
  %919 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %920 = zext i32 %919 to i64
  store i64 %920, i64* %RSI.i, align 8
  %921 = add i64 %899, 253636
  %922 = add i64 %899, 31
  %923 = load i64, i64* %6, align 8
  %924 = add i64 %923, -8
  %925 = inttoptr i64 %924 to i64*
  store i64 %922, i64* %925, align 8
  store i64 %924, i64* %6, align 8
  store i64 %921, i64* %3, align 8
  %call2_4146d6 = tail call %struct.Memory* @sub_452580.FArgMax(%struct.State* nonnull %0, i64 %921, %struct.Memory* %897)
  %926 = load i64, i64* %3, align 8
  store i64 1, i64* %RDX.i, align 8
  %927 = load i64, i64* %RBP.i, align 8
  %928 = add i64 %927, -116
  %929 = load i32, i32* %EAX.i756, align 4
  %930 = add i64 %926, 8
  store i64 %930, i64* %3, align 8
  %931 = inttoptr i64 %928 to i32*
  store i32 %929, i32* %931, align 4
  %932 = load i64, i64* %RBP.i, align 8
  %933 = add i64 %932, -48
  %934 = load i64, i64* %3, align 8
  %935 = add i64 %934, 4
  store i64 %935, i64* %3, align 8
  %936 = inttoptr i64 %933 to i64*
  %937 = load i64, i64* %936, align 8
  store i64 %937, i64* %RDI.i70, align 8
  %938 = add i64 %932, -108
  %939 = add i64 %934, 7
  store i64 %939, i64* %3, align 8
  %940 = inttoptr i64 %938 to i32*
  %941 = load i32, i32* %940, align 4
  %942 = zext i32 %941 to i64
  store i64 %942, i64* %RSI.i, align 8
  %943 = add i64 %932, -104
  %944 = add i64 %934, 10
  store i64 %944, i64* %3, align 8
  %945 = inttoptr i64 %943 to i32*
  %946 = load i32, i32* %945, align 4
  %947 = zext i32 %946 to i64
  store i64 %947, i64* %RCX.i300, align 8
  %948 = add i64 %932, -112
  %949 = add i64 %934, 13
  store i64 %949, i64* %3, align 8
  %950 = inttoptr i64 %948 to i32*
  %951 = load i32, i32* %950, align 4
  %952 = add i32 %951, 1
  %953 = zext i32 %952 to i64
  store i64 %953, i64* %RAX.i762, align 8
  %954 = icmp eq i32 %951, -1
  %955 = icmp eq i32 %952, 0
  %956 = or i1 %954, %955
  %957 = zext i1 %956 to i8
  store i8 %957, i8* %12, align 1
  %958 = and i32 %952, 255
  %959 = tail call i32 @llvm.ctpop.i32(i32 %958)
  %960 = trunc i32 %959 to i8
  %961 = and i8 %960, 1
  %962 = xor i8 %961, 1
  store i8 %962, i8* %13, align 1
  %963 = xor i32 %952, %951
  %964 = lshr i32 %963, 4
  %965 = trunc i32 %964 to i8
  %966 = and i8 %965, 1
  store i8 %966, i8* %14, align 1
  %967 = zext i1 %955 to i8
  store i8 %967, i8* %15, align 1
  %968 = lshr i32 %952, 31
  %969 = trunc i32 %968 to i8
  store i8 %969, i8* %16, align 1
  %970 = lshr i32 %951, 31
  %971 = xor i32 %968, %970
  %972 = add nuw nsw i32 %971, %968
  %973 = icmp eq i32 %972, 2
  %974 = zext i1 %973 to i8
  store i8 %974, i8* %17, align 1
  store i64 %953, i64* %R8.i, align 8
  %975 = add i64 %934, 233645
  %976 = add i64 %934, 24
  %977 = load i64, i64* %6, align 8
  %978 = add i64 %977, -8
  %979 = inttoptr i64 %978 to i64*
  store i64 %976, i64* %979, align 8
  store i64 %978, i64* %6, align 8
  store i64 %975, i64* %3, align 8
  %call2_4146f6 = tail call %struct.Memory* @sub_44d790.TraceSet(%struct.State* nonnull %0, i64 %975, %struct.Memory* %call2_4146d6)
  %980 = load i64, i64* %RBP.i, align 8
  %981 = add i64 %980, -116
  %982 = load i64, i64* %3, align 8
  %983 = add i64 %982, 4
  store i64 %983, i64* %3, align 8
  %984 = inttoptr i64 %981 to i32*
  %985 = load i32, i32* %984, align 4
  %986 = sext i32 %985 to i64
  store i64 %986, i64* %RDI.i70, align 8
  %987 = add nsw i64 %986, 6778848
  %988 = add i64 %982, 12
  store i64 %988, i64* %3, align 8
  %989 = inttoptr i64 %987 to i8*
  %990 = load i8, i8* %989, align 1
  store i8 %990, i8* %R9B.i529, align 1
  %991 = add i64 %980, -64
  %992 = add i64 %982, 16
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %991 to i64*
  %994 = load i64, i64* %993, align 8
  store i64 %994, i64* %RDI.i70, align 8
  %995 = add i64 %980, -112
  %996 = add i64 %982, 20
  store i64 %996, i64* %3, align 8
  %997 = inttoptr i64 %995 to i32*
  %998 = load i32, i32* %997, align 4
  %999 = sext i32 %998 to i64
  store i64 %999, i64* %R10.i440, align 8
  %1000 = add i64 %994, %999
  %1001 = add i64 %982, 24
  store i64 %1001, i64* %3, align 8
  %1002 = inttoptr i64 %1000 to i8*
  store i8 %990, i8* %1002, align 1
  %1003 = load i64, i64* %RBP.i, align 8
  %1004 = add i64 %1003, -116
  %1005 = load i64, i64* %3, align 8
  %1006 = add i64 %1005, 3
  store i64 %1006, i64* %3, align 8
  %1007 = inttoptr i64 %1004 to i32*
  %1008 = load i32, i32* %1007, align 4
  %1009 = zext i32 %1008 to i64
  store i64 %1009, i64* %RAX.i762, align 8
  %1010 = trunc i32 %1008 to i8
  store i8 %1010, i8* %R9B.i529, align 1
  %1011 = add i64 %1003, -56
  %1012 = add i64 %1005, 10
  store i64 %1012, i64* %3, align 8
  %1013 = inttoptr i64 %1011 to i64*
  %1014 = load i64, i64* %1013, align 8
  store i64 %1014, i64* %RDI.i70, align 8
  %1015 = add i64 %1003, -112
  %1016 = add i64 %1005, 13
  store i64 %1016, i64* %3, align 8
  %1017 = inttoptr i64 %1015 to i32*
  %1018 = load i32, i32* %1017, align 4
  %1019 = add i32 %1018, 1
  %1020 = zext i32 %1019 to i64
  store i64 %1020, i64* %RAX.i762, align 8
  %1021 = icmp eq i32 %1018, -1
  %1022 = icmp eq i32 %1019, 0
  %1023 = or i1 %1021, %1022
  %1024 = zext i1 %1023 to i8
  store i8 %1024, i8* %12, align 1
  %1025 = and i32 %1019, 255
  %1026 = tail call i32 @llvm.ctpop.i32(i32 %1025)
  %1027 = trunc i32 %1026 to i8
  %1028 = and i8 %1027, 1
  %1029 = xor i8 %1028, 1
  store i8 %1029, i8* %13, align 1
  %1030 = xor i32 %1019, %1018
  %1031 = lshr i32 %1030, 4
  %1032 = trunc i32 %1031 to i8
  %1033 = and i8 %1032, 1
  store i8 %1033, i8* %14, align 1
  %1034 = zext i1 %1022 to i8
  store i8 %1034, i8* %15, align 1
  %1035 = lshr i32 %1019, 31
  %1036 = trunc i32 %1035 to i8
  store i8 %1036, i8* %16, align 1
  %1037 = lshr i32 %1018, 31
  %1038 = xor i32 %1035, %1037
  %1039 = add nuw nsw i32 %1038, %1035
  %1040 = icmp eq i32 %1039, 2
  %1041 = zext i1 %1040 to i8
  store i8 %1041, i8* %17, align 1
  %1042 = sext i32 %1019 to i64
  store i64 %1042, i64* %R10.i440, align 8
  %1043 = add i64 %1014, %1042
  %1044 = add i64 %1005, 23
  store i64 %1044, i64* %3, align 8
  %1045 = inttoptr i64 %1043 to i8*
  store i8 %1010, i8* %1045, align 1
  %1046 = load i64, i64* %RBP.i, align 8
  %1047 = add i64 %1046, -8
  %1048 = load i64, i64* %3, align 8
  %1049 = add i64 %1048, 4
  store i64 %1049, i64* %3, align 8
  %1050 = inttoptr i64 %1047 to i64*
  %1051 = load i64, i64* %1050, align 8
  store i64 %1051, i64* %RDI.i70, align 8
  %1052 = add i64 %1051, 152
  %1053 = add i64 %1048, 11
  store i64 %1053, i64* %3, align 8
  %1054 = inttoptr i64 %1052 to i64*
  %1055 = load i64, i64* %1054, align 8
  store i64 %1055, i64* %RDI.i70, align 8
  %1056 = add i64 %1046, -104
  %1057 = add i64 %1048, 15
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1056 to i32*
  %1059 = load i32, i32* %1058, align 4
  %1060 = sext i32 %1059 to i64
  store i64 %1060, i64* %R10.i440, align 8
  %1061 = shl nsw i64 %1060, 3
  %1062 = add i64 %1061, %1055
  %1063 = add i64 %1048, 19
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1062 to i64*
  %1065 = load i64, i64* %1064, align 8
  store i64 %1065, i64* %RDI.i70, align 8
  %1066 = add i64 %1046, -116
  %1067 = add i64 %1048, 23
  store i64 %1067, i64* %3, align 8
  %1068 = inttoptr i64 %1066 to i32*
  %1069 = load i32, i32* %1068, align 4
  %1070 = sext i32 %1069 to i64
  store i64 %1070, i64* %R10.i440, align 8
  %1071 = shl nsw i64 %1070, 2
  %1072 = add i64 %1071, %1065
  %1073 = add i64 %1048, 29
  store i64 %1073, i64* %3, align 8
  %1074 = inttoptr i64 %1072 to i32*
  %1075 = load i32, i32* %1074, align 4
  store i32 %1075, i32* %.pre-phi40, align 1
  store float 0.000000e+00, float* %.pre-phi42, align 1
  store float 0.000000e+00, float* %.pre-phi43, align 1
  store float 0.000000e+00, float* %.pre-phi45, align 1
  %1076 = add i64 %1046, -120
  %1077 = add i64 %1048, 34
  store i64 %1077, i64* %3, align 8
  %1078 = inttoptr i64 %1076 to i32*
  %1079 = load i32, i32* %1078, align 4
  store i32 %1079, i32* %155, align 1
  store float 0.000000e+00, float* %808, align 1
  store float 0.000000e+00, float* %809, align 1
  store float 0.000000e+00, float* %810, align 1
  %1080 = add i64 %1048, 37
  store i64 %1080, i64* %3, align 8
  %1081 = load <2 x float>, <2 x float>* %162, align 1
  %1082 = extractelement <2 x float> %1081, i32 0
  %1083 = load <2 x float>, <2 x float>* %.pre-phi46, align 1
  %1084 = extractelement <2 x float> %1083, i32 0
  %1085 = fcmp uno float %1082, %1084
  br i1 %1085, label %1086, label %1096

; <label>:1086:                                   ; preds = %block_4146bc
  %1087 = fadd float %1082, %1084
  %1088 = bitcast float %1087 to i32
  %1089 = and i32 %1088, 2143289344
  %1090 = icmp eq i32 %1089, 2139095040
  %1091 = and i32 %1088, 4194303
  %1092 = icmp ne i32 %1091, 0
  %1093 = and i1 %1090, %1092
  br i1 %1093, label %1094, label %1102

; <label>:1094:                                   ; preds = %1086
  %1095 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1080, %struct.Memory* %call2_4146f6)
  %.pre29 = load i64, i64* %3, align 8
  br label %routine_ucomiss__xmm0___xmm1.exit

; <label>:1096:                                   ; preds = %block_4146bc
  %1097 = fcmp ogt float %1082, %1084
  br i1 %1097, label %1102, label %1098

; <label>:1098:                                   ; preds = %1096
  %1099 = fcmp olt float %1082, %1084
  br i1 %1099, label %1102, label %1100

; <label>:1100:                                   ; preds = %1098
  %1101 = fcmp oeq float %1082, %1084
  br i1 %1101, label %1102, label %1106

; <label>:1102:                                   ; preds = %1100, %1098, %1096, %1086
  %1103 = phi i8 [ 0, %1096 ], [ 0, %1098 ], [ 1, %1100 ], [ 1, %1086 ]
  %1104 = phi i8 [ 0, %1096 ], [ 0, %1098 ], [ 0, %1100 ], [ 1, %1086 ]
  %1105 = phi i8 [ 0, %1096 ], [ 1, %1098 ], [ 0, %1100 ], [ 1, %1086 ]
  store i8 %1103, i8* %15, align 1
  store i8 %1104, i8* %13, align 1
  store i8 %1105, i8* %12, align 1
  br label %1106

; <label>:1106:                                   ; preds = %1102, %1100
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit

routine_ucomiss__xmm0___xmm1.exit:                ; preds = %1106, %1094
  %1107 = phi i64 [ %.pre29, %1094 ], [ %1080, %1106 ]
  %1108 = phi %struct.Memory* [ %1095, %1094 ], [ %call2_4146f6, %1106 ]
  %1109 = add i64 %1107, 36
  %1110 = add i64 %1107, 6
  %1111 = load i8, i8* %12, align 1
  %1112 = load i8, i8* %15, align 1
  %1113 = or i8 %1112, %1111
  %1114 = icmp ne i8 %1113, 0
  %1115 = select i1 %1114, i64 %1109, i64 %1110
  store i64 %1115, i64* %3, align 8
  br i1 %1114, label %block_.L_414773, label %block_414755

block_414755:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit
  %1116 = load i64, i64* %RBP.i, align 8
  %1117 = add i64 %1116, -64
  %1118 = add i64 %1115, 4
  store i64 %1118, i64* %3, align 8
  %1119 = inttoptr i64 %1117 to i64*
  %1120 = load i64, i64* %1119, align 8
  store i64 %1120, i64* %RAX.i762, align 8
  %1121 = add i64 %1116, -112
  %1122 = add i64 %1115, 8
  store i64 %1122, i64* %3, align 8
  %1123 = inttoptr i64 %1121 to i32*
  %1124 = load i32, i32* %1123, align 4
  %1125 = sext i32 %1124 to i64
  store i64 %1125, i64* %RCX.i300, align 8
  %1126 = add i64 %1120, %1125
  %1127 = add i64 %1115, 12
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1126 to i8*
  %1129 = load i8, i8* %1128, align 1
  %1130 = sext i8 %1129 to i64
  %1131 = and i64 %1130, 4294967295
  store i64 %1131, i64* %RDI.i70, align 8
  %1132 = add i64 %1115, -78229
  %1133 = add i64 %1115, 17
  %1134 = load i64, i64* %6, align 8
  %1135 = add i64 %1134, -8
  %1136 = inttoptr i64 %1135 to i64*
  store i64 %1133, i64* %1136, align 8
  store i64 %1135, i64* %6, align 8
  store i64 %1132, i64* %3, align 8
  %call2_414761 = tail call %struct.Memory* @sub_4015c0.tolower_plt(%struct.State* nonnull %0, i64 %1132, %struct.Memory* %1108)
  %1137 = load i8, i8* %AL.i223, align 1
  %1138 = load i64, i64* %3, align 8
  store i8 %1137, i8* %DL.i374, align 1
  %1139 = load i64, i64* %RBP.i, align 8
  %1140 = add i64 %1139, -64
  %1141 = add i64 %1138, 6
  store i64 %1141, i64* %3, align 8
  %1142 = inttoptr i64 %1140 to i64*
  %1143 = load i64, i64* %1142, align 8
  store i64 %1143, i64* %RCX.i300, align 8
  %1144 = add i64 %1139, -112
  %1145 = add i64 %1138, 10
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to i32*
  %1147 = load i32, i32* %1146, align 4
  %1148 = sext i32 %1147 to i64
  store i64 %1148, i64* %RSI.i, align 8
  %1149 = add i64 %1143, %1148
  %1150 = add i64 %1138, 13
  store i64 %1150, i64* %3, align 8
  %1151 = inttoptr i64 %1149 to i8*
  store i8 %1137, i8* %1151, align 1
  %.pre30 = load i64, i64* %3, align 8
  br label %block_.L_414773

block_.L_414773:                                  ; preds = %block_414755, %routine_ucomiss__xmm0___xmm1.exit
  %1152 = phi i64 [ %1109, %routine_ucomiss__xmm0___xmm1.exit ], [ %.pre30, %block_414755 ]
  %MEMORY.5 = phi %struct.Memory* [ %1108, %routine_ucomiss__xmm0___xmm1.exit ], [ %call2_414761, %block_414755 ]
  %1153 = load i64, i64* %RBP.i, align 8
  %1154 = add i64 %1153, -112
  %1155 = add i64 %1152, 3
  store i64 %1155, i64* %3, align 8
  %1156 = inttoptr i64 %1154 to i32*
  %1157 = load i32, i32* %1156, align 4
  %1158 = add i32 %1157, 1
  %1159 = zext i32 %1158 to i64
  store i64 %1159, i64* %RAX.i762, align 8
  %1160 = icmp eq i32 %1157, -1
  %1161 = icmp eq i32 %1158, 0
  %1162 = or i1 %1160, %1161
  %1163 = zext i1 %1162 to i8
  store i8 %1163, i8* %12, align 1
  %1164 = and i32 %1158, 255
  %1165 = tail call i32 @llvm.ctpop.i32(i32 %1164)
  %1166 = trunc i32 %1165 to i8
  %1167 = and i8 %1166, 1
  %1168 = xor i8 %1167, 1
  store i8 %1168, i8* %13, align 1
  %1169 = xor i32 %1158, %1157
  %1170 = lshr i32 %1169, 4
  %1171 = trunc i32 %1170 to i8
  %1172 = and i8 %1171, 1
  store i8 %1172, i8* %14, align 1
  %1173 = zext i1 %1161 to i8
  store i8 %1173, i8* %15, align 1
  %1174 = lshr i32 %1158, 31
  %1175 = trunc i32 %1174 to i8
  store i8 %1175, i8* %16, align 1
  %1176 = lshr i32 %1157, 31
  %1177 = xor i32 %1174, %1176
  %1178 = add nuw nsw i32 %1177, %1174
  %1179 = icmp eq i32 %1178, 2
  %1180 = zext i1 %1179 to i8
  store i8 %1180, i8* %17, align 1
  %1181 = add i64 %1152, 9
  store i64 %1181, i64* %3, align 8
  store i32 %1158, i32* %1156, align 4
  %1182 = load i64, i64* %RBP.i, align 8
  %1183 = add i64 %1182, -108
  %1184 = load i64, i64* %3, align 8
  %1185 = add i64 %1184, 3
  store i64 %1185, i64* %3, align 8
  %1186 = inttoptr i64 %1183 to i32*
  %1187 = load i32, i32* %1186, align 4
  %1188 = add i32 %1187, 1
  %1189 = zext i32 %1188 to i64
  store i64 %1189, i64* %RAX.i762, align 8
  %1190 = icmp eq i32 %1187, -1
  %1191 = icmp eq i32 %1188, 0
  %1192 = or i1 %1190, %1191
  %1193 = zext i1 %1192 to i8
  store i8 %1193, i8* %12, align 1
  %1194 = and i32 %1188, 255
  %1195 = tail call i32 @llvm.ctpop.i32(i32 %1194)
  %1196 = trunc i32 %1195 to i8
  %1197 = and i8 %1196, 1
  %1198 = xor i8 %1197, 1
  store i8 %1198, i8* %13, align 1
  %1199 = xor i32 %1188, %1187
  %1200 = lshr i32 %1199, 4
  %1201 = trunc i32 %1200 to i8
  %1202 = and i8 %1201, 1
  store i8 %1202, i8* %14, align 1
  %1203 = zext i1 %1191 to i8
  store i8 %1203, i8* %15, align 1
  %1204 = lshr i32 %1188, 31
  %1205 = trunc i32 %1204 to i8
  store i8 %1205, i8* %16, align 1
  %1206 = lshr i32 %1187, 31
  %1207 = xor i32 %1204, %1206
  %1208 = add nuw nsw i32 %1207, %1204
  %1209 = icmp eq i32 %1208, 2
  %1210 = zext i1 %1209 to i8
  store i8 %1210, i8* %17, align 1
  %1211 = add i64 %1184, 9
  store i64 %1211, i64* %3, align 8
  store i32 %1188, i32* %1186, align 4
  %1212 = load i64, i64* %3, align 8
  %1213 = add i64 %1212, 37
  store i64 %1213, i64* %3, align 8
  br label %block_.L_4147aa

block_.L_41478a:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit492
  store i64 2, i64* %RDX.i, align 8
  store i64 0, i64* %R8.i, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1214 = load i64, i64* %RBP.i, align 8
  %1215 = add i64 %1214, -48
  %1216 = add i64 %899, 12
  store i64 %1216, i64* %3, align 8
  %1217 = inttoptr i64 %1215 to i64*
  %1218 = load i64, i64* %1217, align 8
  store i64 %1218, i64* %RDI.i70, align 8
  %1219 = add i64 %1214, -108
  %1220 = add i64 %899, 15
  store i64 %1220, i64* %3, align 8
  %1221 = inttoptr i64 %1219 to i32*
  %1222 = load i32, i32* %1221, align 4
  %1223 = zext i32 %1222 to i64
  store i64 %1223, i64* %RSI.i, align 8
  %1224 = add i64 %1214, -104
  %1225 = add i64 %899, 18
  store i64 %1225, i64* %3, align 8
  %1226 = inttoptr i64 %1224 to i32*
  %1227 = load i32, i32* %1226, align 4
  %1228 = zext i32 %1227 to i64
  store i64 %1228, i64* %RCX.i300, align 8
  %1229 = add i64 %899, 233478
  %1230 = add i64 %899, 23
  %1231 = load i64, i64* %6, align 8
  %1232 = add i64 %1231, -8
  %1233 = inttoptr i64 %1232 to i64*
  store i64 %1230, i64* %1233, align 8
  store i64 %1232, i64* %6, align 8
  store i64 %1229, i64* %3, align 8
  %call2_41479c = tail call %struct.Memory* @sub_44d790.TraceSet(%struct.State* nonnull %0, i64 %1229, %struct.Memory* %897)
  %1234 = load i64, i64* %RBP.i, align 8
  %1235 = add i64 %1234, -108
  %1236 = load i64, i64* %3, align 8
  %1237 = add i64 %1236, 3
  store i64 %1237, i64* %3, align 8
  %1238 = inttoptr i64 %1235 to i32*
  %1239 = load i32, i32* %1238, align 4
  %1240 = add i32 %1239, 1
  %1241 = zext i32 %1240 to i64
  store i64 %1241, i64* %RCX.i300, align 8
  %1242 = icmp eq i32 %1239, -1
  %1243 = icmp eq i32 %1240, 0
  %1244 = or i1 %1242, %1243
  %1245 = zext i1 %1244 to i8
  store i8 %1245, i8* %12, align 1
  %1246 = and i32 %1240, 255
  %1247 = tail call i32 @llvm.ctpop.i32(i32 %1246)
  %1248 = trunc i32 %1247 to i8
  %1249 = and i8 %1248, 1
  %1250 = xor i8 %1249, 1
  store i8 %1250, i8* %13, align 1
  %1251 = xor i32 %1240, %1239
  %1252 = lshr i32 %1251, 4
  %1253 = trunc i32 %1252 to i8
  %1254 = and i8 %1253, 1
  store i8 %1254, i8* %14, align 1
  %1255 = zext i1 %1243 to i8
  store i8 %1255, i8* %15, align 1
  %1256 = lshr i32 %1240, 31
  %1257 = trunc i32 %1256 to i8
  store i8 %1257, i8* %16, align 1
  %1258 = lshr i32 %1239, 31
  %1259 = xor i32 %1256, %1258
  %1260 = add nuw nsw i32 %1259, %1256
  %1261 = icmp eq i32 %1260, 2
  %1262 = zext i1 %1261 to i8
  store i8 %1262, i8* %17, align 1
  %1263 = add i64 %1236, 9
  store i64 %1263, i64* %3, align 8
  store i32 %1240, i32* %1238, align 4
  %.pre31 = load i64, i64* %3, align 8
  br label %block_.L_4147aa

block_.L_4147aa:                                  ; preds = %block_.L_41478a, %block_.L_414773
  %1264 = phi i64 [ %.pre31, %block_.L_41478a ], [ %1213, %block_.L_414773 ]
  %MEMORY.6 = phi %struct.Memory* [ %call2_41479c, %block_.L_41478a ], [ %MEMORY.5, %block_.L_414773 ]
  %1265 = load i64, i64* %RBP.i, align 8
  %1266 = add i64 %1265, -104
  %1267 = add i64 %1264, 3
  store i64 %1267, i64* %3, align 8
  %1268 = inttoptr i64 %1266 to i32*
  %1269 = load i32, i32* %1268, align 4
  %1270 = zext i32 %1269 to i64
  store i64 %1270, i64* %RAX.i762, align 8
  %1271 = add i64 %1265, -8
  %1272 = add i64 %1264, 7
  store i64 %1272, i64* %3, align 8
  %1273 = inttoptr i64 %1271 to i64*
  %1274 = load i64, i64* %1273, align 8
  store i64 %1274, i64* %RCX.i300, align 8
  %1275 = add i64 %1274, 136
  %1276 = add i64 %1264, 13
  store i64 %1276, i64* %3, align 8
  %1277 = inttoptr i64 %1275 to i32*
  %1278 = load i32, i32* %1277, align 4
  %1279 = sub i32 %1269, %1278
  %1280 = icmp ult i32 %1269, %1278
  %1281 = zext i1 %1280 to i8
  store i8 %1281, i8* %12, align 1
  %1282 = and i32 %1279, 255
  %1283 = tail call i32 @llvm.ctpop.i32(i32 %1282)
  %1284 = trunc i32 %1283 to i8
  %1285 = and i8 %1284, 1
  %1286 = xor i8 %1285, 1
  store i8 %1286, i8* %13, align 1
  %1287 = xor i32 %1278, %1269
  %1288 = xor i32 %1287, %1279
  %1289 = lshr i32 %1288, 4
  %1290 = trunc i32 %1289 to i8
  %1291 = and i8 %1290, 1
  store i8 %1291, i8* %14, align 1
  %1292 = icmp eq i32 %1279, 0
  %1293 = zext i1 %1292 to i8
  store i8 %1293, i8* %15, align 1
  %1294 = lshr i32 %1279, 31
  %1295 = trunc i32 %1294 to i8
  store i8 %1295, i8* %16, align 1
  %1296 = lshr i32 %1269, 31
  %1297 = lshr i32 %1278, 31
  %1298 = xor i32 %1297, %1296
  %1299 = xor i32 %1294, %1296
  %1300 = add nuw nsw i32 %1299, %1298
  %1301 = icmp eq i32 %1300, 2
  %1302 = zext i1 %1301 to i8
  store i8 %1302, i8* %17, align 1
  %1303 = icmp ne i8 %1295, 0
  %1304 = xor i1 %1303, %1301
  %.v55 = select i1 %1304, i64 19, i64 216
  %1305 = add i64 %1264, %.v55
  store i64 %1305, i64* %3, align 8
  br i1 %1304, label %block_4147bd, label %block_.L_414882

block_4147bd:                                     ; preds = %block_.L_4147aa
  %1306 = add i64 %1305, ptrtoint (%G_0x4002b__rip__type* @G_0x4002b__rip_ to i64)
  %1307 = add i64 %1305, 8
  store i64 %1307, i64* %3, align 8
  %1308 = inttoptr i64 %1306 to i64*
  %1309 = load i64, i64* %1308, align 8
  store i64 %1309, i64* %147, align 1
  store double 0.000000e+00, double* %148, align 1
  %1310 = add i64 %1265, -80
  %1311 = add i64 %1305, 12
  store i64 %1311, i64* %3, align 8
  %1312 = inttoptr i64 %1310 to i64*
  %1313 = load i64, i64* %1312, align 8
  store i64 %1313, i64* %RAX.i762, align 8
  %1314 = add i64 %1305, 16
  store i64 %1314, i64* %3, align 8
  %1315 = load i32, i32* %1268, align 4
  %1316 = sext i32 %1315 to i64
  store i64 %1316, i64* %RCX.i300, align 8
  %1317 = shl nsw i64 %1316, 2
  %1318 = add i64 %1317, %1313
  %1319 = add i64 %1305, 21
  store i64 %1319, i64* %3, align 8
  %1320 = inttoptr i64 %1318 to float*
  %1321 = load float, float* %1320, align 4
  %1322 = fpext float %1321 to double
  store double %1322, double* %151, align 1
  %1323 = add i64 %1305, 25
  store i64 %1323, i64* %3, align 8
  %1324 = bitcast i64 %1309 to double
  %1325 = fcmp uno double %1322, %1324
  br i1 %1325, label %1326, label %1336

; <label>:1326:                                   ; preds = %block_4147bd
  %1327 = fadd double %1322, %1324
  %1328 = bitcast double %1327 to i64
  %1329 = and i64 %1328, 9221120237041090560
  %1330 = icmp eq i64 %1329, 9218868437227405312
  %1331 = and i64 %1328, 2251799813685247
  %1332 = icmp ne i64 %1331, 0
  %1333 = and i1 %1330, %1332
  br i1 %1333, label %1334, label %1342

; <label>:1334:                                   ; preds = %1326
  %1335 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1323, %struct.Memory* %MEMORY.6)
  %.pre32 = load i64, i64* %3, align 8
  %.pre33 = load i8, i8* %12, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:1336:                                   ; preds = %block_4147bd
  %1337 = fcmp ogt double %1322, %1324
  br i1 %1337, label %1342, label %1338

; <label>:1338:                                   ; preds = %1336
  %1339 = fcmp olt double %1322, %1324
  br i1 %1339, label %1342, label %1340

; <label>:1340:                                   ; preds = %1338
  %1341 = fcmp oeq double %1322, %1324
  br i1 %1341, label %1342, label %1346

; <label>:1342:                                   ; preds = %1340, %1338, %1336, %1326
  %1343 = phi i8 [ 0, %1336 ], [ 0, %1338 ], [ 1, %1340 ], [ 1, %1326 ]
  %1344 = phi i8 [ 0, %1336 ], [ 0, %1338 ], [ 0, %1340 ], [ 1, %1326 ]
  %1345 = phi i8 [ 0, %1336 ], [ 1, %1338 ], [ 0, %1340 ], [ 1, %1326 ]
  store i8 %1343, i8* %15, align 1
  store i8 %1344, i8* %13, align 1
  store i8 %1345, i8* %12, align 1
  br label %1346

; <label>:1346:                                   ; preds = %1342, %1340
  %1347 = phi i8 [ %1345, %1342 ], [ %1281, %1340 ]
  store i8 0, i8* %17, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %14, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %1346, %1334
  %1348 = phi i8 [ %.pre33, %1334 ], [ %1347, %1346 ]
  %1349 = phi i64 [ %.pre32, %1334 ], [ %1323, %1346 ]
  %1350 = phi %struct.Memory* [ %1335, %1334 ], [ %MEMORY.6, %1346 ]
  %1351 = icmp ne i8 %1348, 0
  %.v56 = select i1 %1351, i64 172, i64 6
  %1352 = add i64 %1349, %.v56
  store i64 %1352, i64* %3, align 8
  %cmpBr_4147d6 = icmp eq i8 %1348, 1
  br i1 %cmpBr_4147d6, label %block_.L_414882, label %block_4147dc

block_4147dc:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %1353 = add i64 %1352, ptrtoint (%G_0x3ff44__rip__type* @G_0x3ff44__rip_ to i64)
  %1354 = add i64 %1352, 8
  store i64 %1354, i64* %3, align 8
  %1355 = inttoptr i64 %1353 to i32*
  %1356 = load i32, i32* %1355, align 4
  store i32 %1356, i32* %.pre-phi40, align 1
  store float 0.000000e+00, float* %.pre-phi42, align 1
  store float 0.000000e+00, float* %.pre-phi43, align 1
  store float 0.000000e+00, float* %.pre-phi45, align 1
  %1357 = load i64, i64* %RBP.i, align 8
  %1358 = add i64 %1357, -8
  %1359 = add i64 %1352, 12
  store i64 %1359, i64* %3, align 8
  %1360 = inttoptr i64 %1358 to i64*
  %1361 = load i64, i64* %1360, align 8
  store i64 %1361, i64* %RAX.i762, align 8
  %1362 = add i64 %1361, 144
  %1363 = add i64 %1352, 19
  store i64 %1363, i64* %3, align 8
  %1364 = inttoptr i64 %1362 to i64*
  %1365 = load i64, i64* %1364, align 8
  store i64 %1365, i64* %RAX.i762, align 8
  %1366 = add i64 %1357, -104
  %1367 = add i64 %1352, 23
  store i64 %1367, i64* %3, align 8
  %1368 = inttoptr i64 %1366 to i32*
  %1369 = load i32, i32* %1368, align 4
  %1370 = sext i32 %1369 to i64
  store i64 %1370, i64* %RCX.i300, align 8
  %1371 = shl nsw i64 %1370, 3
  %1372 = add i64 %1371, %1365
  %1373 = add i64 %1352, 27
  store i64 %1373, i64* %3, align 8
  %1374 = inttoptr i64 %1372 to i64*
  %1375 = load i64, i64* %1374, align 8
  store i64 %1375, i64* %RAX.i762, align 8
  %1376 = load <2 x i32>, <2 x i32>* %153, align 1
  %1377 = load <2 x i32>, <2 x i32>* %154, align 1
  %1378 = extractelement <2 x i32> %1376, i32 0
  store i32 %1378, i32* %155, align 1
  %1379 = extractelement <2 x i32> %1376, i32 1
  store i32 %1379, i32* %157, align 1
  %1380 = extractelement <2 x i32> %1377, i32 0
  store i32 %1380, i32* %159, align 1
  %1381 = extractelement <2 x i32> %1377, i32 1
  store i32 %1381, i32* %161, align 1
  %1382 = add i64 %1375, 16
  %1383 = add i64 %1352, 35
  store i64 %1383, i64* %3, align 8
  %1384 = load <2 x float>, <2 x float>* %162, align 1
  %1385 = load <2 x i32>, <2 x i32>* %163, align 1
  %1386 = inttoptr i64 %1382 to float*
  %1387 = load float, float* %1386, align 4
  %1388 = extractelement <2 x float> %1384, i32 0
  %1389 = fsub float %1388, %1387
  store float %1389, float* %164, align 1
  %1390 = bitcast <2 x float> %1384 to <2 x i32>
  %1391 = extractelement <2 x i32> %1390, i32 1
  store i32 %1391, i32* %157, align 1
  %1392 = extractelement <2 x i32> %1385, i32 0
  store i32 %1392, i32* %159, align 1
  %1393 = extractelement <2 x i32> %1385, i32 1
  store i32 %1393, i32* %161, align 1
  %1394 = bitcast <2 x i32> %1376 to <2 x float>
  %1395 = load <2 x float>, <2 x float>* %162, align 1
  %1396 = extractelement <2 x float> %1394, i32 0
  %1397 = extractelement <2 x float> %1395, i32 0
  %1398 = fdiv float %1396, %1397
  store float %1398, float* %152, align 1
  %1399 = extractelement <2 x i32> %1376, i32 1
  store i32 %1399, i32* %165, align 1
  store i32 %1380, i32* %166, align 1
  store i32 %1381, i32* %167, align 1
  %1400 = load <2 x float>, <2 x float>* %.pre-phi46, align 1
  %1401 = extractelement <2 x float> %1400, i32 0
  %1402 = tail call float @llvm.trunc.f32(float %1401)
  %1403 = tail call float @llvm.fabs.f32(float %1402)
  %1404 = fcmp ogt float %1403, 0x41E0000000000000
  %1405 = fptosi float %1402 to i32
  %1406 = zext i32 %1405 to i64
  %1407 = select i1 %1404, i64 2147483648, i64 %1406
  store i64 %1407, i64* %RDX.i, align 8
  %1408 = add i64 %1357, -116
  %1409 = trunc i64 %1407 to i32
  %1410 = add i64 %1352, 46
  store i64 %1410, i64* %3, align 8
  %1411 = inttoptr i64 %1408 to i32*
  store i32 %1409, i32* %1411, align 4
  %.pre34 = load i64, i64* %3, align 8
  br label %block_.L_41480a

block_.L_41480a:                                  ; preds = %block_41481e, %block_4147dc
  %1412 = phi i64 [ %1618, %block_41481e ], [ %.pre34, %block_4147dc ]
  %1413 = load i64, i64* %RBP.i, align 8
  %1414 = add i64 %1413, -116
  %1415 = add i64 %1412, 3
  store i64 %1415, i64* %3, align 8
  %1416 = inttoptr i64 %1414 to i32*
  %1417 = load i32, i32* %1416, align 4
  %1418 = zext i32 %1417 to i64
  store i64 %1418, i64* %RAX.i762, align 8
  %1419 = add i32 %1417, -1
  %1420 = zext i32 %1419 to i64
  store i64 %1420, i64* %RCX.i300, align 8
  %1421 = add i64 %1412, 11
  store i64 %1421, i64* %3, align 8
  store i32 %1419, i32* %1416, align 4
  %1422 = load i32, i32* %EAX.i756, align 4
  %1423 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %1424 = and i32 %1422, 255
  %1425 = tail call i32 @llvm.ctpop.i32(i32 %1424)
  %1426 = trunc i32 %1425 to i8
  %1427 = and i8 %1426, 1
  %1428 = xor i8 %1427, 1
  store i8 %1428, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1429 = icmp eq i32 %1422, 0
  %1430 = zext i1 %1429 to i8
  store i8 %1430, i8* %15, align 1
  %1431 = lshr i32 %1422, 31
  %1432 = trunc i32 %1431 to i8
  store i8 %1432, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v57 = select i1 %1429, i64 104, i64 9
  %1433 = add i64 %1423, %.v57
  %1434 = add i64 %1433, 5
  store i64 %1434, i64* %3, align 8
  br i1 %1429, label %block_.L_414882.loopexit, label %block_41481e

block_41481e:                                     ; preds = %block_.L_41480a
  store i64 3, i64* %RDX.i, align 8
  %1435 = load i64, i64* %RBP.i, align 8
  %1436 = add i64 %1435, -48
  %1437 = add i64 %1433, 9
  store i64 %1437, i64* %3, align 8
  %1438 = inttoptr i64 %1436 to i64*
  %1439 = load i64, i64* %1438, align 8
  store i64 %1439, i64* %RDI.i70, align 8
  %1440 = add i64 %1435, -108
  %1441 = add i64 %1433, 12
  store i64 %1441, i64* %3, align 8
  %1442 = inttoptr i64 %1440 to i32*
  %1443 = load i32, i32* %1442, align 4
  %1444 = zext i32 %1443 to i64
  store i64 %1444, i64* %RSI.i, align 8
  %1445 = add i64 %1435, -104
  %1446 = add i64 %1433, 15
  store i64 %1446, i64* %3, align 8
  %1447 = inttoptr i64 %1445 to i32*
  %1448 = load i32, i32* %1447, align 4
  %1449 = zext i32 %1448 to i64
  store i64 %1449, i64* %RCX.i300, align 8
  %1450 = add i64 %1435, -112
  %1451 = add i64 %1433, 18
  store i64 %1451, i64* %3, align 8
  %1452 = inttoptr i64 %1450 to i32*
  %1453 = load i32, i32* %1452, align 4
  %1454 = add i32 %1453, 1
  %1455 = zext i32 %1454 to i64
  store i64 %1455, i64* %RAX.i762, align 8
  %1456 = icmp eq i32 %1453, -1
  %1457 = icmp eq i32 %1454, 0
  %1458 = or i1 %1456, %1457
  %1459 = zext i1 %1458 to i8
  store i8 %1459, i8* %12, align 1
  %1460 = and i32 %1454, 255
  %1461 = tail call i32 @llvm.ctpop.i32(i32 %1460)
  %1462 = trunc i32 %1461 to i8
  %1463 = and i8 %1462, 1
  %1464 = xor i8 %1463, 1
  store i8 %1464, i8* %13, align 1
  %1465 = xor i32 %1454, %1453
  %1466 = lshr i32 %1465, 4
  %1467 = trunc i32 %1466 to i8
  %1468 = and i8 %1467, 1
  store i8 %1468, i8* %14, align 1
  %1469 = zext i1 %1457 to i8
  store i8 %1469, i8* %15, align 1
  %1470 = lshr i32 %1454, 31
  %1471 = trunc i32 %1470 to i8
  store i8 %1471, i8* %16, align 1
  %1472 = lshr i32 %1453, 31
  %1473 = xor i32 %1470, %1472
  %1474 = add nuw nsw i32 %1473, %1470
  %1475 = icmp eq i32 %1474, 2
  %1476 = zext i1 %1475 to i8
  store i8 %1476, i8* %17, align 1
  store i64 %1455, i64* %R8.i, align 8
  %1477 = add i64 %1433, 233330
  %1478 = add i64 %1433, 29
  %1479 = load i64, i64* %6, align 8
  %1480 = add i64 %1479, -8
  %1481 = inttoptr i64 %1480 to i64*
  store i64 %1478, i64* %1481, align 8
  store i64 %1480, i64* %6, align 8
  store i64 %1477, i64* %3, align 8
  %call2_414836 = tail call %struct.Memory* @sub_44d790.TraceSet(%struct.State* nonnull %0, i64 %1477, %struct.Memory* %1350)
  %1482 = load i64, i64* %RBP.i, align 8
  %1483 = add i64 %1482, -64
  %1484 = load i64, i64* %3, align 8
  %1485 = add i64 %1484, 4
  store i64 %1485, i64* %3, align 8
  %1486 = inttoptr i64 %1483 to i64*
  %1487 = load i64, i64* %1486, align 8
  store i64 %1487, i64* %RDI.i70, align 8
  %1488 = add i64 %1482, -112
  %1489 = add i64 %1484, 8
  store i64 %1489, i64* %3, align 8
  %1490 = inttoptr i64 %1488 to i32*
  %1491 = load i32, i32* %1490, align 4
  %1492 = sext i32 %1491 to i64
  store i64 %1492, i64* %R9.i234, align 8
  %1493 = add i64 %1487, %1492
  %1494 = add i64 %1484, 13
  store i64 %1494, i64* %3, align 8
  %1495 = inttoptr i64 %1493 to i8*
  store i8 120, i8* %1495, align 1
  %1496 = load i64, i64* %3, align 8
  %1497 = load i32, i32* bitcast (%G_0x676ffc_type* @G_0x676ffc to i32*), align 8
  %1498 = add i32 %1497, -1
  %1499 = zext i32 %1498 to i64
  store i64 %1499, i64* %RAX.i762, align 8
  %1500 = icmp eq i32 %1497, 0
  %1501 = zext i1 %1500 to i8
  store i8 %1501, i8* %12, align 1
  %1502 = and i32 %1498, 255
  %1503 = tail call i32 @llvm.ctpop.i32(i32 %1502)
  %1504 = trunc i32 %1503 to i8
  %1505 = and i8 %1504, 1
  %1506 = xor i8 %1505, 1
  store i8 %1506, i8* %13, align 1
  %1507 = xor i32 %1498, %1497
  %1508 = lshr i32 %1507, 4
  %1509 = trunc i32 %1508 to i8
  %1510 = and i8 %1509, 1
  store i8 %1510, i8* %14, align 1
  %1511 = icmp eq i32 %1498, 0
  %1512 = zext i1 %1511 to i8
  store i8 %1512, i8* %15, align 1
  %1513 = lshr i32 %1498, 31
  %1514 = trunc i32 %1513 to i8
  store i8 %1514, i8* %16, align 1
  %1515 = lshr i32 %1497, 31
  %1516 = xor i32 %1513, %1515
  %1517 = add nuw nsw i32 %1516, %1515
  %1518 = icmp eq i32 %1517, 2
  %1519 = zext i1 %1518 to i8
  store i8 %1519, i8* %17, align 1
  %1520 = trunc i32 %1498 to i8
  store i8 %1520, i8* %R10B.i224, align 1
  %1521 = load i64, i64* %RBP.i, align 8
  %1522 = add i64 %1521, -56
  %1523 = add i64 %1496, 17
  store i64 %1523, i64* %3, align 8
  %1524 = inttoptr i64 %1522 to i64*
  %1525 = load i64, i64* %1524, align 8
  store i64 %1525, i64* %RDI.i70, align 8
  %1526 = add i64 %1521, -112
  %1527 = add i64 %1496, 20
  store i64 %1527, i64* %3, align 8
  %1528 = inttoptr i64 %1526 to i32*
  %1529 = load i32, i32* %1528, align 4
  %1530 = add i32 %1529, 1
  %1531 = zext i32 %1530 to i64
  store i64 %1531, i64* %RAX.i762, align 8
  %1532 = icmp eq i32 %1529, -1
  %1533 = icmp eq i32 %1530, 0
  %1534 = or i1 %1532, %1533
  %1535 = zext i1 %1534 to i8
  store i8 %1535, i8* %12, align 1
  %1536 = and i32 %1530, 255
  %1537 = tail call i32 @llvm.ctpop.i32(i32 %1536)
  %1538 = trunc i32 %1537 to i8
  %1539 = and i8 %1538, 1
  %1540 = xor i8 %1539, 1
  store i8 %1540, i8* %13, align 1
  %1541 = xor i32 %1530, %1529
  %1542 = lshr i32 %1541, 4
  %1543 = trunc i32 %1542 to i8
  %1544 = and i8 %1543, 1
  store i8 %1544, i8* %14, align 1
  %1545 = zext i1 %1533 to i8
  store i8 %1545, i8* %15, align 1
  %1546 = lshr i32 %1530, 31
  %1547 = trunc i32 %1546 to i8
  store i8 %1547, i8* %16, align 1
  %1548 = lshr i32 %1529, 31
  %1549 = xor i32 %1546, %1548
  %1550 = add nuw nsw i32 %1549, %1546
  %1551 = icmp eq i32 %1550, 2
  %1552 = zext i1 %1551 to i8
  store i8 %1552, i8* %17, align 1
  %1553 = sext i32 %1530 to i64
  store i64 %1553, i64* %R9.i234, align 8
  %1554 = add i64 %1525, %1553
  %1555 = add i64 %1496, 30
  store i64 %1555, i64* %3, align 8
  %1556 = inttoptr i64 %1554 to i8*
  store i8 %1520, i8* %1556, align 1
  %1557 = load i64, i64* %RBP.i, align 8
  %1558 = add i64 %1557, -112
  %1559 = load i64, i64* %3, align 8
  %1560 = add i64 %1559, 3
  store i64 %1560, i64* %3, align 8
  %1561 = inttoptr i64 %1558 to i32*
  %1562 = load i32, i32* %1561, align 4
  %1563 = add i32 %1562, 1
  %1564 = zext i32 %1563 to i64
  store i64 %1564, i64* %RAX.i762, align 8
  %1565 = icmp eq i32 %1562, -1
  %1566 = icmp eq i32 %1563, 0
  %1567 = or i1 %1565, %1566
  %1568 = zext i1 %1567 to i8
  store i8 %1568, i8* %12, align 1
  %1569 = and i32 %1563, 255
  %1570 = tail call i32 @llvm.ctpop.i32(i32 %1569)
  %1571 = trunc i32 %1570 to i8
  %1572 = and i8 %1571, 1
  %1573 = xor i8 %1572, 1
  store i8 %1573, i8* %13, align 1
  %1574 = xor i32 %1563, %1562
  %1575 = lshr i32 %1574, 4
  %1576 = trunc i32 %1575 to i8
  %1577 = and i8 %1576, 1
  store i8 %1577, i8* %14, align 1
  %1578 = zext i1 %1566 to i8
  store i8 %1578, i8* %15, align 1
  %1579 = lshr i32 %1563, 31
  %1580 = trunc i32 %1579 to i8
  store i8 %1580, i8* %16, align 1
  %1581 = lshr i32 %1562, 31
  %1582 = xor i32 %1579, %1581
  %1583 = add nuw nsw i32 %1582, %1579
  %1584 = icmp eq i32 %1583, 2
  %1585 = zext i1 %1584 to i8
  store i8 %1585, i8* %17, align 1
  %1586 = add i64 %1559, 9
  store i64 %1586, i64* %3, align 8
  store i32 %1563, i32* %1561, align 4
  %1587 = load i64, i64* %RBP.i, align 8
  %1588 = add i64 %1587, -108
  %1589 = load i64, i64* %3, align 8
  %1590 = add i64 %1589, 3
  store i64 %1590, i64* %3, align 8
  %1591 = inttoptr i64 %1588 to i32*
  %1592 = load i32, i32* %1591, align 4
  %1593 = add i32 %1592, 1
  %1594 = zext i32 %1593 to i64
  store i64 %1594, i64* %RAX.i762, align 8
  %1595 = icmp eq i32 %1592, -1
  %1596 = icmp eq i32 %1593, 0
  %1597 = or i1 %1595, %1596
  %1598 = zext i1 %1597 to i8
  store i8 %1598, i8* %12, align 1
  %1599 = and i32 %1593, 255
  %1600 = tail call i32 @llvm.ctpop.i32(i32 %1599)
  %1601 = trunc i32 %1600 to i8
  %1602 = and i8 %1601, 1
  %1603 = xor i8 %1602, 1
  store i8 %1603, i8* %13, align 1
  %1604 = xor i32 %1593, %1592
  %1605 = lshr i32 %1604, 4
  %1606 = trunc i32 %1605 to i8
  %1607 = and i8 %1606, 1
  store i8 %1607, i8* %14, align 1
  %1608 = zext i1 %1596 to i8
  store i8 %1608, i8* %15, align 1
  %1609 = lshr i32 %1593, 31
  %1610 = trunc i32 %1609 to i8
  store i8 %1610, i8* %16, align 1
  %1611 = lshr i32 %1592, 31
  %1612 = xor i32 %1609, %1611
  %1613 = add nuw nsw i32 %1612, %1609
  %1614 = icmp eq i32 %1613, 2
  %1615 = zext i1 %1614 to i8
  store i8 %1615, i8* %17, align 1
  %1616 = add i64 %1589, 9
  store i64 %1616, i64* %3, align 8
  store i32 %1593, i32* %1591, align 4
  %1617 = load i64, i64* %3, align 8
  %1618 = add i64 %1617, -110
  store i64 %1618, i64* %3, align 8
  br label %block_.L_41480a

block_.L_414882.loopexit:                         ; preds = %block_.L_41480a
  br label %block_.L_414882

block_.L_414882:                                  ; preds = %block_.L_414882.loopexit, %block_.L_4147aa, %routine_ucomisd__xmm0___xmm1.exit
  %1619 = phi i64 [ %1305, %block_.L_4147aa ], [ %1352, %routine_ucomisd__xmm0___xmm1.exit ], [ %1434, %block_.L_414882.loopexit ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.6, %block_.L_4147aa ], [ %1350, %routine_ucomisd__xmm0___xmm1.exit ], [ %1350, %block_.L_414882.loopexit ]
  %1620 = load i64, i64* %RBP.i, align 8
  %1621 = add i64 %1620, -104
  %1622 = add i64 %1619, 8
  store i64 %1622, i64* %3, align 8
  %1623 = inttoptr i64 %1621 to i32*
  %1624 = load i32, i32* %1623, align 4
  %1625 = add i32 %1624, 1
  %1626 = zext i32 %1625 to i64
  store i64 %1626, i64* %RAX.i762, align 8
  %1627 = icmp eq i32 %1624, -1
  %1628 = icmp eq i32 %1625, 0
  %1629 = or i1 %1627, %1628
  %1630 = zext i1 %1629 to i8
  store i8 %1630, i8* %12, align 1
  %1631 = and i32 %1625, 255
  %1632 = tail call i32 @llvm.ctpop.i32(i32 %1631)
  %1633 = trunc i32 %1632 to i8
  %1634 = and i8 %1633, 1
  %1635 = xor i8 %1634, 1
  store i8 %1635, i8* %13, align 1
  %1636 = xor i32 %1625, %1624
  %1637 = lshr i32 %1636, 4
  %1638 = trunc i32 %1637 to i8
  %1639 = and i8 %1638, 1
  store i8 %1639, i8* %14, align 1
  %1640 = zext i1 %1628 to i8
  store i8 %1640, i8* %15, align 1
  %1641 = lshr i32 %1625, 31
  %1642 = trunc i32 %1641 to i8
  store i8 %1642, i8* %16, align 1
  %1643 = lshr i32 %1624, 31
  %1644 = xor i32 %1641, %1643
  %1645 = add nuw nsw i32 %1644, %1641
  %1646 = icmp eq i32 %1645, 2
  %1647 = zext i1 %1646 to i8
  store i8 %1647, i8* %17, align 1
  %1648 = add i64 %1619, 14
  store i64 %1648, i64* %3, align 8
  store i32 %1625, i32* %1623, align 4
  %1649 = load i64, i64* %3, align 8
  %1650 = add i64 %1649, -518
  store i64 %1650, i64* %3, align 8
  br label %block_.L_41468a

block_.L_414895:                                  ; preds = %block_.L_41468a
  store i64 7, i64* %RDX.i, align 8
  store i64 0, i64* %RAX.i762, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1651 = add i64 %812, -48
  %1652 = add i64 %852, 11
  store i64 %1652, i64* %3, align 8
  %1653 = inttoptr i64 %1651 to i64*
  %1654 = load i64, i64* %1653, align 8
  store i64 %1654, i64* %RDI.i70, align 8
  %1655 = add i64 %812, -108
  %1656 = add i64 %852, 14
  store i64 %1656, i64* %3, align 8
  %1657 = inttoptr i64 %1655 to i32*
  %1658 = load i32, i32* %1657, align 4
  %1659 = zext i32 %1658 to i64
  store i64 %1659, i64* %RSI.i, align 8
  store i64 0, i64* %RCX.i300, align 8
  store i64 0, i64* %R8.i, align 8
  %1660 = add i64 %852, 233211
  %1661 = add i64 %852, 24
  %1662 = load i64, i64* %6, align 8
  %1663 = add i64 %1662, -8
  %1664 = inttoptr i64 %1663 to i64*
  store i64 %1661, i64* %1664, align 8
  store i64 %1663, i64* %6, align 8
  store i64 %1660, i64* %3, align 8
  %call2_4148a8 = tail call %struct.Memory* @sub_44d790.TraceSet(%struct.State* nonnull %0, i64 %1660, %struct.Memory* %MEMORY.4)
  %1665 = load i64, i64* %3, align 8
  store i64 8, i64* %RDX.i, align 8
  store i64 0, i64* %RAX.i762, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1666 = load i64, i64* %RBP.i, align 8
  %1667 = add i64 %1666, -108
  %1668 = add i64 %1665, 10
  store i64 %1668, i64* %3, align 8
  %1669 = inttoptr i64 %1667 to i32*
  %1670 = load i32, i32* %1669, align 4
  %1671 = add i32 %1670, 1
  %1672 = zext i32 %1671 to i64
  store i64 %1672, i64* %RCX.i300, align 8
  %1673 = icmp eq i32 %1670, -1
  %1674 = icmp eq i32 %1671, 0
  %1675 = or i1 %1673, %1674
  %1676 = zext i1 %1675 to i8
  store i8 %1676, i8* %12, align 1
  %1677 = and i32 %1671, 255
  %1678 = tail call i32 @llvm.ctpop.i32(i32 %1677)
  %1679 = trunc i32 %1678 to i8
  %1680 = and i8 %1679, 1
  %1681 = xor i8 %1680, 1
  store i8 %1681, i8* %13, align 1
  %1682 = xor i32 %1671, %1670
  %1683 = lshr i32 %1682, 4
  %1684 = trunc i32 %1683 to i8
  %1685 = and i8 %1684, 1
  store i8 %1685, i8* %14, align 1
  %1686 = zext i1 %1674 to i8
  store i8 %1686, i8* %15, align 1
  %1687 = lshr i32 %1671, 31
  %1688 = trunc i32 %1687 to i8
  store i8 %1688, i8* %16, align 1
  %1689 = lshr i32 %1670, 31
  %1690 = xor i32 %1687, %1689
  %1691 = add nuw nsw i32 %1690, %1687
  %1692 = icmp eq i32 %1691, 2
  %1693 = zext i1 %1692 to i8
  store i8 %1693, i8* %17, align 1
  %1694 = add i64 %1665, 16
  store i64 %1694, i64* %3, align 8
  store i32 %1671, i32* %1669, align 4
  %1695 = load i64, i64* %RBP.i, align 8
  %1696 = add i64 %1695, -48
  %1697 = load i64, i64* %3, align 8
  %1698 = add i64 %1697, 4
  store i64 %1698, i64* %3, align 8
  %1699 = inttoptr i64 %1696 to i64*
  %1700 = load i64, i64* %1699, align 8
  store i64 %1700, i64* %RDI.i70, align 8
  %1701 = add i64 %1695, -108
  %1702 = add i64 %1697, 7
  store i64 %1702, i64* %3, align 8
  %1703 = inttoptr i64 %1701 to i32*
  %1704 = load i32, i32* %1703, align 4
  %1705 = zext i32 %1704 to i64
  store i64 %1705, i64* %RSI.i, align 8
  %1706 = load i32, i32* %EAX.i756, align 4
  %1707 = zext i32 %1706 to i64
  store i64 %1707, i64* %RCX.i300, align 8
  store i64 %1707, i64* %R8.i, align 8
  %1708 = add i64 %1697, 233171
  %1709 = add i64 %1697, 17
  %1710 = load i64, i64* %6, align 8
  %1711 = add i64 %1710, -8
  %1712 = inttoptr i64 %1711 to i64*
  store i64 %1709, i64* %1712, align 8
  store i64 %1711, i64* %6, align 8
  store i64 %1708, i64* %3, align 8
  %call2_4148c9 = tail call %struct.Memory* @sub_44d790.TraceSet(%struct.State* nonnull %0, i64 %1708, %struct.Memory* %call2_4148a8)
  %1713 = load i64, i64* %3, align 8
  store i64 9, i64* %RDX.i, align 8
  store i64 0, i64* %RAX.i762, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1714 = load i64, i64* %RBP.i, align 8
  %1715 = add i64 %1714, -108
  %1716 = add i64 %1713, 10
  store i64 %1716, i64* %3, align 8
  %1717 = inttoptr i64 %1715 to i32*
  %1718 = load i32, i32* %1717, align 4
  %1719 = add i32 %1718, 1
  %1720 = zext i32 %1719 to i64
  store i64 %1720, i64* %RCX.i300, align 8
  %1721 = icmp eq i32 %1718, -1
  %1722 = icmp eq i32 %1719, 0
  %1723 = or i1 %1721, %1722
  %1724 = zext i1 %1723 to i8
  store i8 %1724, i8* %12, align 1
  %1725 = and i32 %1719, 255
  %1726 = tail call i32 @llvm.ctpop.i32(i32 %1725)
  %1727 = trunc i32 %1726 to i8
  %1728 = and i8 %1727, 1
  %1729 = xor i8 %1728, 1
  store i8 %1729, i8* %13, align 1
  %1730 = xor i32 %1719, %1718
  %1731 = lshr i32 %1730, 4
  %1732 = trunc i32 %1731 to i8
  %1733 = and i8 %1732, 1
  store i8 %1733, i8* %14, align 1
  %1734 = zext i1 %1722 to i8
  store i8 %1734, i8* %15, align 1
  %1735 = lshr i32 %1719, 31
  %1736 = trunc i32 %1735 to i8
  store i8 %1736, i8* %16, align 1
  %1737 = lshr i32 %1718, 31
  %1738 = xor i32 %1735, %1737
  %1739 = add nuw nsw i32 %1738, %1735
  %1740 = icmp eq i32 %1739, 2
  %1741 = zext i1 %1740 to i8
  store i8 %1741, i8* %17, align 1
  %1742 = add i64 %1713, 16
  store i64 %1742, i64* %3, align 8
  store i32 %1719, i32* %1717, align 4
  %1743 = load i64, i64* %RBP.i, align 8
  %1744 = add i64 %1743, -48
  %1745 = load i64, i64* %3, align 8
  %1746 = add i64 %1745, 4
  store i64 %1746, i64* %3, align 8
  %1747 = inttoptr i64 %1744 to i64*
  %1748 = load i64, i64* %1747, align 8
  store i64 %1748, i64* %RDI.i70, align 8
  %1749 = add i64 %1743, -108
  %1750 = add i64 %1745, 7
  store i64 %1750, i64* %3, align 8
  %1751 = inttoptr i64 %1749 to i32*
  %1752 = load i32, i32* %1751, align 4
  %1753 = zext i32 %1752 to i64
  store i64 %1753, i64* %RSI.i, align 8
  %1754 = load i32, i32* %EAX.i756, align 4
  %1755 = zext i32 %1754 to i64
  store i64 %1755, i64* %RCX.i300, align 8
  store i64 %1755, i64* %R8.i, align 8
  %1756 = add i64 %1745, 233138
  %1757 = add i64 %1745, 17
  %1758 = load i64, i64* %6, align 8
  %1759 = add i64 %1758, -8
  %1760 = inttoptr i64 %1759 to i64*
  store i64 %1757, i64* %1760, align 8
  store i64 %1759, i64* %6, align 8
  store i64 %1756, i64* %3, align 8
  %call2_4148ea = tail call %struct.Memory* @sub_44d790.TraceSet(%struct.State* nonnull %0, i64 %1756, %struct.Memory* %call2_4148c9)
  %1761 = load i64, i64* %RBP.i, align 8
  %1762 = add i64 %1761, -108
  %1763 = load i64, i64* %3, align 8
  %1764 = add i64 %1763, 3
  store i64 %1764, i64* %3, align 8
  %1765 = inttoptr i64 %1762 to i32*
  %1766 = load i32, i32* %1765, align 4
  %1767 = add i32 %1766, 1
  %1768 = icmp eq i32 %1766, -1
  %1769 = icmp eq i32 %1767, 0
  %1770 = or i1 %1768, %1769
  %1771 = zext i1 %1770 to i8
  store i8 %1771, i8* %12, align 1
  %1772 = and i32 %1767, 255
  %1773 = tail call i32 @llvm.ctpop.i32(i32 %1772)
  %1774 = trunc i32 %1773 to i8
  %1775 = and i8 %1774, 1
  %1776 = xor i8 %1775, 1
  store i8 %1776, i8* %13, align 1
  %1777 = xor i32 %1767, %1766
  %1778 = lshr i32 %1777, 4
  %1779 = trunc i32 %1778 to i8
  %1780 = and i8 %1779, 1
  store i8 %1780, i8* %14, align 1
  %1781 = zext i1 %1769 to i8
  store i8 %1781, i8* %15, align 1
  %1782 = lshr i32 %1767, 31
  %1783 = trunc i32 %1782 to i8
  store i8 %1783, i8* %16, align 1
  %1784 = lshr i32 %1766, 31
  %1785 = xor i32 %1782, %1784
  %1786 = add nuw nsw i32 %1785, %1782
  %1787 = icmp eq i32 %1786, 2
  %1788 = zext i1 %1787 to i8
  store i8 %1788, i8* %17, align 1
  %1789 = add i64 %1763, 9
  store i64 %1789, i64* %3, align 8
  store i32 %1767, i32* %1765, align 4
  %1790 = load i64, i64* %3, align 8
  %1791 = load i32, i32* bitcast (%G_0x676ffc_type* @G_0x676ffc to i32*), align 8
  %1792 = zext i32 %1791 to i64
  store i64 %1792, i64* %RAX.i762, align 8
  %1793 = trunc i32 %1791 to i8
  store i8 %1793, i8* %R9B.i529, align 1
  %1794 = load i64, i64* %RBP.i, align 8
  %1795 = add i64 %1794, -56
  %1796 = add i64 %1790, 14
  store i64 %1796, i64* %3, align 8
  %1797 = inttoptr i64 %1795 to i64*
  %1798 = load i64, i64* %1797, align 8
  store i64 %1798, i64* %RDI.i70, align 8
  %1799 = add i64 %1794, -112
  %1800 = add i64 %1790, 17
  store i64 %1800, i64* %3, align 8
  %1801 = inttoptr i64 %1799 to i32*
  %1802 = load i32, i32* %1801, align 4
  %1803 = add i32 %1802, 1
  %1804 = zext i32 %1803 to i64
  store i64 %1804, i64* %RAX.i762, align 8
  %1805 = icmp eq i32 %1802, -1
  %1806 = icmp eq i32 %1803, 0
  %1807 = or i1 %1805, %1806
  %1808 = zext i1 %1807 to i8
  store i8 %1808, i8* %12, align 1
  %1809 = and i32 %1803, 255
  %1810 = tail call i32 @llvm.ctpop.i32(i32 %1809)
  %1811 = trunc i32 %1810 to i8
  %1812 = and i8 %1811, 1
  %1813 = xor i8 %1812, 1
  store i8 %1813, i8* %13, align 1
  %1814 = xor i32 %1803, %1802
  %1815 = lshr i32 %1814, 4
  %1816 = trunc i32 %1815 to i8
  %1817 = and i8 %1816, 1
  store i8 %1817, i8* %14, align 1
  %1818 = zext i1 %1806 to i8
  store i8 %1818, i8* %15, align 1
  %1819 = lshr i32 %1803, 31
  %1820 = trunc i32 %1819 to i8
  store i8 %1820, i8* %16, align 1
  %1821 = lshr i32 %1802, 31
  %1822 = xor i32 %1819, %1821
  %1823 = add nuw nsw i32 %1822, %1819
  %1824 = icmp eq i32 %1823, 2
  %1825 = zext i1 %1824 to i8
  store i8 %1825, i8* %17, align 1
  %1826 = sext i32 %1803 to i64
  store i64 %1826, i64* %R10.i440, align 8
  %1827 = add i64 %1798, %1826
  %1828 = add i64 %1790, 27
  store i64 %1828, i64* %3, align 8
  %1829 = inttoptr i64 %1827 to i8*
  store i8 %1793, i8* %1829, align 1
  %1830 = load i64, i64* %RBP.i, align 8
  %1831 = add i64 %1830, -72
  %1832 = load i64, i64* %3, align 8
  %1833 = add i64 %1832, 4
  store i64 %1833, i64* %3, align 8
  %1834 = inttoptr i64 %1831 to i64*
  %1835 = load i64, i64* %1834, align 8
  store i64 %1835, i64* %RDI.i70, align 8
  %1836 = add i64 %1832, -79251
  %1837 = add i64 %1832, 9
  %1838 = load i64, i64* %6, align 8
  %1839 = add i64 %1838, -8
  %1840 = inttoptr i64 %1839 to i64*
  store i64 %1837, i64* %1840, align 8
  store i64 %1839, i64* %6, align 8
  store i64 %1836, i64* %3, align 8
  %1841 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %call2_4148ea)
  %1842 = load i64, i64* %RBP.i, align 8
  %1843 = add i64 %1842, -80
  %1844 = load i64, i64* %3, align 8
  %1845 = add i64 %1844, 4
  store i64 %1845, i64* %3, align 8
  %1846 = inttoptr i64 %1843 to i64*
  %1847 = load i64, i64* %1846, align 8
  store i64 %1847, i64* %RDI.i70, align 8
  %1848 = add i64 %1844, -79260
  %1849 = add i64 %1844, 9
  %1850 = load i64, i64* %6, align 8
  %1851 = add i64 %1850, -8
  %1852 = inttoptr i64 %1851 to i64*
  store i64 %1849, i64* %1852, align 8
  store i64 %1851, i64* %6, align 8
  store i64 %1848, i64* %3, align 8
  %1853 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1841)
  %1854 = load i64, i64* %RBP.i, align 8
  %1855 = add i64 %1854, -88
  %1856 = load i64, i64* %3, align 8
  %1857 = add i64 %1856, 4
  store i64 %1857, i64* %3, align 8
  %1858 = inttoptr i64 %1855 to i64*
  %1859 = load i64, i64* %1858, align 8
  store i64 %1859, i64* %RDI.i70, align 8
  %1860 = add i64 %1856, -79269
  %1861 = add i64 %1856, 9
  %1862 = load i64, i64* %6, align 8
  %1863 = add i64 %1862, -8
  %1864 = inttoptr i64 %1863 to i64*
  store i64 %1861, i64* %1864, align 8
  store i64 %1863, i64* %6, align 8
  store i64 %1860, i64* %3, align 8
  %1865 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1853)
  %1866 = load i64, i64* %RBP.i, align 8
  %1867 = add i64 %1866, -16
  %1868 = load i64, i64* %3, align 8
  %1869 = add i64 %1868, 5
  store i64 %1869, i64* %3, align 8
  %1870 = inttoptr i64 %1867 to i64*
  %1871 = load i64, i64* %1870, align 8
  store i8 0, i8* %12, align 1
  %1872 = trunc i64 %1871 to i32
  %1873 = and i32 %1872, 255
  %1874 = tail call i32 @llvm.ctpop.i32(i32 %1873)
  %1875 = trunc i32 %1874 to i8
  %1876 = and i8 %1875, 1
  %1877 = xor i8 %1876, 1
  store i8 %1877, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1878 = icmp eq i64 %1871, 0
  %1879 = zext i1 %1878 to i8
  store i8 %1879, i8* %15, align 1
  %1880 = lshr i64 %1871, 63
  %1881 = trunc i64 %1880 to i8
  store i8 %1881, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v = select i1 %1878, i64 27, i64 11
  %1882 = add i64 %1868, %.v
  %1883 = add i64 %1866, -64
  %1884 = add i64 %1882, 4
  store i64 %1884, i64* %3, align 8
  %1885 = inttoptr i64 %1883 to i64*
  %1886 = load i64, i64* %1885, align 8
  br i1 %1878, label %block_.L_414949, label %block_414939

block_414939:                                     ; preds = %block_.L_414895
  store i64 %1886, i64* %RAX.i762, align 8
  %1887 = add i64 %1882, 8
  store i64 %1887, i64* %3, align 8
  %1888 = load i64, i64* %1870, align 8
  store i64 %1888, i64* %RCX.i300, align 8
  %1889 = add i64 %1882, 11
  store i64 %1889, i64* %3, align 8
  %1890 = inttoptr i64 %1888 to i64*
  store i64 %1886, i64* %1890, align 8
  %1891 = load i64, i64* %3, align 8
  %1892 = add i64 %1891, 14
  store i64 %1892, i64* %3, align 8
  br label %block_.L_414952

block_.L_414949:                                  ; preds = %block_.L_414895
  store i64 %1886, i64* %RDI.i70, align 8
  %1893 = add i64 %1882, -79305
  %1894 = add i64 %1882, 9
  %1895 = load i64, i64* %6, align 8
  %1896 = add i64 %1895, -8
  %1897 = inttoptr i64 %1896 to i64*
  store i64 %1894, i64* %1897, align 8
  store i64 %1896, i64* %6, align 8
  store i64 %1893, i64* %3, align 8
  %1898 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %1865)
  %.pre35 = load i64, i64* %3, align 8
  br label %block_.L_414952

block_.L_414952:                                  ; preds = %block_.L_414949, %block_414939
  %1899 = phi i64 [ %.pre35, %block_.L_414949 ], [ %1892, %block_414939 ]
  %MEMORY.9 = phi %struct.Memory* [ %1898, %block_.L_414949 ], [ %1865, %block_414939 ]
  %1900 = load i64, i64* %RBP.i, align 8
  %1901 = add i64 %1900, -24
  %1902 = add i64 %1899, 5
  store i64 %1902, i64* %3, align 8
  %1903 = inttoptr i64 %1901 to i64*
  %1904 = load i64, i64* %1903, align 8
  store i8 0, i8* %12, align 1
  %1905 = trunc i64 %1904 to i32
  %1906 = and i32 %1905, 255
  %1907 = tail call i32 @llvm.ctpop.i32(i32 %1906)
  %1908 = trunc i32 %1907 to i8
  %1909 = and i8 %1908, 1
  %1910 = xor i8 %1909, 1
  store i8 %1910, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1911 = icmp eq i64 %1904, 0
  %1912 = zext i1 %1911 to i8
  store i8 %1912, i8* %15, align 1
  %1913 = lshr i64 %1904, 63
  %1914 = trunc i64 %1913 to i8
  store i8 %1914, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v48 = select i1 %1911, i64 27, i64 11
  %1915 = add i64 %1899, %.v48
  %1916 = add i64 %1900, -56
  %1917 = add i64 %1915, 4
  store i64 %1917, i64* %3, align 8
  %1918 = inttoptr i64 %1916 to i64*
  %1919 = load i64, i64* %1918, align 8
  br i1 %1911, label %block_.L_41496d, label %block_41495d

block_41495d:                                     ; preds = %block_.L_414952
  store i64 %1919, i64* %RAX.i762, align 8
  %1920 = add i64 %1915, 8
  store i64 %1920, i64* %3, align 8
  %1921 = load i64, i64* %1903, align 8
  store i64 %1921, i64* %RCX.i300, align 8
  %1922 = add i64 %1915, 11
  store i64 %1922, i64* %3, align 8
  %1923 = inttoptr i64 %1921 to i64*
  store i64 %1919, i64* %1923, align 8
  %1924 = load i64, i64* %3, align 8
  %1925 = add i64 %1924, 14
  store i64 %1925, i64* %3, align 8
  br label %block_.L_414976

block_.L_41496d:                                  ; preds = %block_.L_414952
  store i64 %1919, i64* %RDI.i70, align 8
  %1926 = add i64 %1915, -79341
  %1927 = add i64 %1915, 9
  %1928 = load i64, i64* %6, align 8
  %1929 = add i64 %1928, -8
  %1930 = inttoptr i64 %1929 to i64*
  store i64 %1927, i64* %1930, align 8
  store i64 %1929, i64* %6, align 8
  store i64 %1926, i64* %3, align 8
  %1931 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %MEMORY.9)
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_414976

block_.L_414976:                                  ; preds = %block_.L_41496d, %block_41495d
  %1932 = phi i64 [ %.pre36, %block_.L_41496d ], [ %1925, %block_41495d ]
  %MEMORY.10 = phi %struct.Memory* [ %1931, %block_.L_41496d ], [ %MEMORY.9, %block_41495d ]
  %1933 = load i64, i64* %RBP.i, align 8
  %1934 = add i64 %1933, -32
  %1935 = add i64 %1932, 5
  store i64 %1935, i64* %3, align 8
  %1936 = inttoptr i64 %1934 to i64*
  %1937 = load i64, i64* %1936, align 8
  store i8 0, i8* %12, align 1
  %1938 = trunc i64 %1937 to i32
  %1939 = and i32 %1938, 255
  %1940 = tail call i32 @llvm.ctpop.i32(i32 %1939)
  %1941 = trunc i32 %1940 to i8
  %1942 = and i8 %1941, 1
  %1943 = xor i8 %1942, 1
  store i8 %1943, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1944 = icmp eq i64 %1937, 0
  %1945 = zext i1 %1944 to i8
  store i8 %1945, i8* %15, align 1
  %1946 = lshr i64 %1937, 63
  %1947 = trunc i64 %1946 to i8
  store i8 %1947, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v53 = select i1 %1944, i64 20, i64 11
  %1948 = add i64 %1932, %.v53
  store i64 %1948, i64* %3, align 8
  br i1 %1944, label %block_.L_41498a, label %block_414981

block_414981:                                     ; preds = %block_.L_414976
  %1949 = add i64 %1933, -112
  %1950 = add i64 %1948, 3
  store i64 %1950, i64* %3, align 8
  %1951 = inttoptr i64 %1949 to i32*
  %1952 = load i32, i32* %1951, align 4
  %1953 = zext i32 %1952 to i64
  store i64 %1953, i64* %RAX.i762, align 8
  %1954 = add i64 %1948, 7
  store i64 %1954, i64* %3, align 8
  %1955 = load i64, i64* %1936, align 8
  store i64 %1955, i64* %RCX.i300, align 8
  %1956 = add i64 %1948, 9
  store i64 %1956, i64* %3, align 8
  %1957 = inttoptr i64 %1955 to i32*
  store i32 %1952, i32* %1957, align 4
  %.pre37 = load i64, i64* %RBP.i, align 8
  %.pre38 = load i64, i64* %3, align 8
  br label %block_.L_41498a

block_.L_41498a:                                  ; preds = %block_414981, %block_.L_414976
  %1958 = phi i64 [ %.pre38, %block_414981 ], [ %1948, %block_.L_414976 ]
  %1959 = phi i64 [ %.pre37, %block_414981 ], [ %1933, %block_.L_414976 ]
  %1960 = add i64 %1959, -40
  %1961 = add i64 %1958, 5
  store i64 %1961, i64* %3, align 8
  %1962 = inttoptr i64 %1960 to i64*
  %1963 = load i64, i64* %1962, align 8
  store i8 0, i8* %12, align 1
  %1964 = trunc i64 %1963 to i32
  %1965 = and i32 %1964, 255
  %1966 = tail call i32 @llvm.ctpop.i32(i32 %1965)
  %1967 = trunc i32 %1966 to i8
  %1968 = and i8 %1967, 1
  %1969 = xor i8 %1968, 1
  store i8 %1969, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1970 = icmp eq i64 %1963, 0
  %1971 = zext i1 %1970 to i8
  store i8 %1971, i8* %15, align 1
  %1972 = lshr i64 %1963, 63
  %1973 = trunc i64 %1972 to i8
  store i8 %1973, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v49 = select i1 %1970, i64 27, i64 11
  %1974 = add i64 %1958, %.v49
  %1975 = add i64 %1959, -48
  %1976 = add i64 %1974, 4
  store i64 %1976, i64* %3, align 8
  %1977 = inttoptr i64 %1975 to i64*
  %1978 = load i64, i64* %1977, align 8
  br i1 %1970, label %block_.L_4149a5, label %block_414995

block_414995:                                     ; preds = %block_.L_41498a
  store i64 %1978, i64* %RAX.i762, align 8
  %1979 = add i64 %1974, 8
  store i64 %1979, i64* %3, align 8
  %1980 = load i64, i64* %1962, align 8
  store i64 %1980, i64* %RCX.i300, align 8
  %1981 = add i64 %1974, 11
  store i64 %1981, i64* %3, align 8
  %1982 = inttoptr i64 %1980 to i64*
  store i64 %1978, i64* %1982, align 8
  %1983 = load i64, i64* %3, align 8
  %1984 = add i64 %1983, 14
  store i64 %1984, i64* %3, align 8
  br label %block_.L_4149ae

block_.L_4149a5:                                  ; preds = %block_.L_41498a
  store i64 %1978, i64* %RDI.i70, align 8
  %1985 = add i64 %1974, 232843
  %1986 = add i64 %1974, 9
  %1987 = load i64, i64* %6, align 8
  %1988 = add i64 %1987, -8
  %1989 = inttoptr i64 %1988 to i64*
  store i64 %1986, i64* %1989, align 8
  store i64 %1988, i64* %6, align 8
  store i64 %1985, i64* %3, align 8
  %call2_4149a9 = tail call %struct.Memory* @sub_44d730.P7FreeTrace(%struct.State* nonnull %0, i64 %1985, %struct.Memory* %MEMORY.10)
  %.pre39 = load i64, i64* %3, align 8
  br label %block_.L_4149ae

block_.L_4149ae:                                  ; preds = %block_.L_4149a5, %block_414995
  %1990 = phi i64 [ %.pre39, %block_.L_4149a5 ], [ %1984, %block_414995 ]
  %MEMORY.12 = phi %struct.Memory* [ %call2_4149a9, %block_.L_4149a5 ], [ %MEMORY.10, %block_414995 ]
  %1991 = load i64, i64* %6, align 8
  %1992 = add i64 %1991, 144
  store i64 %1992, i64* %6, align 8
  %1993 = icmp ugt i64 %1991, -145
  %1994 = zext i1 %1993 to i8
  store i8 %1994, i8* %12, align 1
  %1995 = trunc i64 %1992 to i32
  %1996 = and i32 %1995, 255
  %1997 = tail call i32 @llvm.ctpop.i32(i32 %1996)
  %1998 = trunc i32 %1997 to i8
  %1999 = and i8 %1998, 1
  %2000 = xor i8 %1999, 1
  store i8 %2000, i8* %13, align 1
  %2001 = xor i64 %1991, 16
  %2002 = xor i64 %2001, %1992
  %2003 = lshr i64 %2002, 4
  %2004 = trunc i64 %2003 to i8
  %2005 = and i8 %2004, 1
  store i8 %2005, i8* %14, align 1
  %2006 = icmp eq i64 %1992, 0
  %2007 = zext i1 %2006 to i8
  store i8 %2007, i8* %15, align 1
  %2008 = lshr i64 %1992, 63
  %2009 = trunc i64 %2008 to i8
  store i8 %2009, i8* %16, align 1
  %2010 = lshr i64 %1991, 63
  %2011 = xor i64 %2008, %2010
  %2012 = add nuw nsw i64 %2011, %2008
  %2013 = icmp eq i64 %2012, 2
  %2014 = zext i1 %2013 to i8
  store i8 %2014, i8* %17, align 1
  %2015 = add i64 %1990, 8
  store i64 %2015, i64* %3, align 8
  %2016 = add i64 %1991, 152
  %2017 = inttoptr i64 %1992 to i64*
  %2018 = load i64, i64* %2017, align 8
  store i64 %2018, i64* %RBP.i, align 8
  store i64 %2016, i64* %6, align 8
  %2019 = add i64 %1990, 9
  store i64 %2019, i64* %3, align 8
  %2020 = inttoptr i64 %2016 to i64*
  %2021 = load i64, i64* %2020, align 8
  store i64 %2021, i64* %3, align 8
  %2022 = add i64 %1991, 160
  store i64 %2022, i64* %6, align 8
  ret %struct.Memory* %MEMORY.12
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
define %struct.Memory* @routine_subq__0x90___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -144
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 144
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
define %struct.Memory* @routine_movq__rcx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__0x676d90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x676d90_type* @G_0x676d90 to i32*), align 8
  %6 = add i32 %5, -3
  %7 = icmp ult i32 %5, 3
  %8 = zext i1 %7 to i8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8, i8* %9, align 1
  %10 = and i32 %6, 255
  %11 = tail call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = xor i32 %6, %5
  %17 = lshr i32 %16, 4
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %6, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = lshr i32 %6, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = lshr i32 %5, 31
  %28 = xor i32 %24, %27
  %29 = add nuw nsw i32 %28, %27
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %31, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41449f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x40297__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x40297__rip__type* @G_0x40297__rip_ to i64)
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
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
define %struct.Memory* @routine_jmpq_.L_4144ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x402a1__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x402a1__rip__type* @G_0x402a1__rip_ to i64)
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
define %struct.Memory* @routine_leaq_MINUS0x48__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.StateOccupancy(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_jg_.L_41459c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x402f8__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x402f8__rip__type* @G_0x402f8__rip_ to i64)
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
define %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_cvtss2sd___rax__rcx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to float*
  %11 = load float, float* %10, align 4
  %12 = fpext float %11 to double
  %13 = bitcast %union.VectorReg* %3 to double*
  store double %12, double* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jb_.L_41451d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_414526(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jge_.L_414589(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x402af__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x402af__rip__type* @G_0x402af__rip_ to i64)
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
define %struct.Memory* @routine_jb_.L_414589(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x401c8__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x401c8__rip__type* @G_0x401c8__rip_ to i64)
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
define %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movaps__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subss_0x10__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fsub float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %17 = fdiv float %15, %16
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x64__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
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
define %struct.Memory* @routine_movl__edx__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41458e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_4144dd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x30__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x6___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 6
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -7
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
define %struct.Memory* @routine_addl_MINUS0x60__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
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
define %struct.Memory* @routine_addl_MINUS0x64__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
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
define %struct.Memory* @routine_callq_.P7AllocTrace(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45638b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45638b_type* @G__0x45638b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x147___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 327, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 3
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -4
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
define %struct.Memory* @routine_shlq__0x0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 4
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__0x148___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 328, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
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
define %struct.Memory* @routine_addl_MINUS0x64__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %6, -100
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %5
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = icmp ult i32 %12, %5
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
  %25 = xor i32 %11, %5
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
  %37 = lshr i32 %5, 31
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, 1
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp eq i32 %5, -1
  %11 = icmp eq i32 %8, 0
  %12 = or i1 %10, %11
  %13 = zext i1 %12 to i8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %13, i8* %14, align 1
  %15 = and i32 %8, 255
  %16 = tail call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %8, %5
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = zext i1 %11 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %28
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__r8d___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_shlq__0x0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 4
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_xorl__esi___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__0x4___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0x7c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
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
define %struct.Memory* @routine_callq_.TraceSet(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x5___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 5, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x80__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
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
define %struct.Memory* @routine_movl__0x2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x84__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -132
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x676ffc___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x676ffc_type* @G_0x676ffc to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl___r9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %R9B, align 1
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
define %struct.Memory* @routine_movb__r9b____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i8**
  %5 = load i8*, i8** %4, align 8
  %6 = load i8, i8* %R9B, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i8 %6, i8* %5, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_414895(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x4014b__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x4014b__rip__type* @G_0x4014b__rip_ to i64)
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
define %struct.Memory* @routine_jb_.L_41478a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x98__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_callq_.FArgMax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x6c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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
define %struct.Memory* @routine_movl_MINUS0x68__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_movslq_MINUS0x74__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_movb_0x676fe0___rdi_1____r9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %3 to i8*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 6778848
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %R9B, align 1
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
define %struct.Memory* @routine_movslq_MINUS0x70__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__r9b____rdi__r10_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %3 to i8*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %R10, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %R9B, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x74__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
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
define %struct.Memory* @routine_movb__al___r9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9B = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %R9B, align 1
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
define %struct.Memory* @routine_movslq__eax___r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x98__rdi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x68__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rdi__r10_8____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %R10, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x74__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss___rdi__r10_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %R10, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 6
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
define %struct.Memory* @routine_movss_MINUS0x78__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -120
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
define %struct.Memory* @routine_jbe_.L_414773(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x70__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.tolower_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__al___dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %DL, align 1
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
define %struct.Memory* @routine_movslq_MINUS0x70__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_movb__dl____rcx__rsi_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %DL, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
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
define %struct.Memory* @routine_jmpq_.L_4147aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 0, i64* %3, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %10, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %11, align 1
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
define %struct.Memory* @routine_jge_.L_414882(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x4002b__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x4002b__rip__type* @G_0x4002b__rip_ to i64)
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
define %struct.Memory* @routine_jb_.L_414882(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x3ff44__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x3ff44__rip__type* @G_0x3ff44__rip_ to i64)
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
define %struct.Memory* @routine_movl__edx__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__ecx__MINUS0x74__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -116
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_je_.L_41487d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x70__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x78____rdi__r9_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %R9, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 120, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x676ffc___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x676ffc_type* @G_0x676ffc to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_movb__al___r10b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10B = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %R10B, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__eax___r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__r10b____rdi__r9_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10B = bitcast %union.anon* %3 to i8*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = load i64, i64* %R9, align 8
  %6 = add i64 %5, %4
  %7 = load i8, i8* %R10B, align 1
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i8*
  store i8 %7, i8* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41480a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_414882(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_414887(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41468a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x7___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 7, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__0x8___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x9___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 9, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_414949(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_414952(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41496d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_414976(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41498a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4149a5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4149ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.P7FreeTrace(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x90___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 144
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -145
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
