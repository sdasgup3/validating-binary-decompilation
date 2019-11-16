; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x746af__rip__type = type <{ [4 x i8] }>
%G_0x748c3__rip__type = type <{ [4 x i8] }>
%G_0x74932__rip__type = type <{ [4 x i8] }>
%G_0x749a6__rip__type = type <{ [4 x i8] }>
%G_0x749c6__rip__type = type <{ [4 x i8] }>
%G_0x74a03__rip__type = type <{ [4 x i8] }>
%G_0x74a56__rip__type = type <{ [4 x i8] }>
%G_0x74a76__rip__type = type <{ [4 x i8] }>
%G_0x74d4d__rip__type = type <{ [4 x i8] }>
%G_0x74db8__rip__type = type <{ [4 x i8] }>
%G_0x74e01__rip__type = type <{ [4 x i8] }>
%G_0x74e54__rip__type = type <{ [4 x i8] }>
%G_0x74e74__rip__type = type <{ [4 x i8] }>
%G_0x74eb1__rip__type = type <{ [4 x i8] }>
%G_0x74f04__rip__type = type <{ [4 x i8] }>
%G_0x74f24__rip__type = type <{ [4 x i8] }>
%G_0x7ae438_type = type <{ [4 x i8] }>
%G_0xab0f24_type = type <{ [4 x i8] }>
%G_0xab0fc0_type = type <{ [1 x i8] }>
%G_0xb38cb0_type = type <{ [4 x i8] }>
%G_0xb454f8_type = type <{ [4 x i8] }>
%G_0xb8c040_type = type <{ [4 x i8] }>
%G__0x58058f_type = type <{ [8 x i8] }>
%G__0x5805b3_type = type <{ [8 x i8] }>
%G__0x5805dc_type = type <{ [8 x i8] }>
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
@G_0x746af__rip_ = global %G_0x746af__rip__type zeroinitializer
@G_0x748c3__rip_ = global %G_0x748c3__rip__type zeroinitializer
@G_0x74932__rip_ = global %G_0x74932__rip__type zeroinitializer
@G_0x749a6__rip_ = global %G_0x749a6__rip__type zeroinitializer
@G_0x749c6__rip_ = global %G_0x749c6__rip__type zeroinitializer
@G_0x74a03__rip_ = global %G_0x74a03__rip__type zeroinitializer
@G_0x74a56__rip_ = global %G_0x74a56__rip__type zeroinitializer
@G_0x74a76__rip_ = global %G_0x74a76__rip__type zeroinitializer
@G_0x74d4d__rip_ = global %G_0x74d4d__rip__type zeroinitializer
@G_0x74db8__rip_ = global %G_0x74db8__rip__type zeroinitializer
@G_0x74e01__rip_ = global %G_0x74e01__rip__type zeroinitializer
@G_0x74e54__rip_ = global %G_0x74e54__rip__type zeroinitializer
@G_0x74e74__rip_ = global %G_0x74e74__rip__type zeroinitializer
@G_0x74eb1__rip_ = global %G_0x74eb1__rip__type zeroinitializer
@G_0x74f04__rip_ = global %G_0x74f04__rip__type zeroinitializer
@G_0x74f24__rip_ = global %G_0x74f24__rip__type zeroinitializer
@G_0x7ae438 = local_unnamed_addr global %G_0x7ae438_type zeroinitializer
@G_0xab0f24 = local_unnamed_addr global %G_0xab0f24_type zeroinitializer
@G_0xab0fc0 = local_unnamed_addr global %G_0xab0fc0_type zeroinitializer
@G_0xb38cb0 = local_unnamed_addr global %G_0xb38cb0_type zeroinitializer
@G_0xb454f8 = local_unnamed_addr global %G_0xb454f8_type zeroinitializer
@G_0xb8c040 = local_unnamed_addr global %G_0xb8c040_type zeroinitializer
@G__0x58058f = global %G__0x58058f_type zeroinitializer
@G__0x5805b3 = global %G__0x5805b3_type zeroinitializer
@G__0x5805dc = global %G__0x5805dc_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_46ccd0.dilate_erode(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_46d5f0.close_bubbles(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_46dc00.print_regions(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_46de20.captured_territory(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @estimate_score(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -1736
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 1728
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
  %RAX.i656 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 5, i64* %RAX.i656, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i707 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 21, i64* %RCX.i707, align 8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i946 = getelementptr inbounds %union.anon, %union.anon* %41, i64 0, i32 0
  store i64 1, i64* %RDX.i946, align 8
  %R8.i944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %42 = add i64 %7, -1624
  store i64 %42, i64* %R8.i944, align 8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %44 = bitcast [32 x %union.VectorReg]* %43 to i8*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %46 = bitcast [32 x %union.VectorReg]* %43 to i32*
  store i32 0, i32* %46, align 1
  %47 = getelementptr inbounds i8, i8* %44, i64 4
  %48 = bitcast i8* %47 to i32*
  store i32 0, i32* %48, align 1
  %49 = bitcast i64* %45 to i32*
  store i32 0, i32* %49, align 1
  %50 = getelementptr inbounds i8, i8* %44, i64 12
  %51 = bitcast i8* %50 to i32*
  store i32 0, i32* %51, align 1
  %RDI.i937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %52 = add i64 %7, -16
  %53 = load i64, i64* %RDI.i937, align 8
  %54 = add i64 %10, 39
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %52 to i64*
  store i64 %53, i64* %55, align 8
  %RSI.i934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %56 = load i64, i64* %RBP.i, align 8
  %57 = add i64 %56, -16
  %58 = load i64, i64* %RSI.i934, align 8
  %59 = load i64, i64* %3, align 8
  %60 = add i64 %59, 4
  store i64 %60, i64* %3, align 8
  %61 = inttoptr i64 %57 to i64*
  store i64 %58, i64* %61, align 8
  %62 = load i64, i64* %RBP.i, align 8
  %63 = add i64 %62, -1620
  %64 = load i64, i64* %3, align 8
  %65 = add i64 %64, 8
  store i64 %65, i64* %3, align 8
  %66 = bitcast [32 x %union.VectorReg]* %43 to <2 x float>*
  %67 = load <2 x float>, <2 x float>* %66, align 1
  %68 = extractelement <2 x float> %67, i32 0
  %69 = inttoptr i64 %63 to float*
  store float %68, float* %69, align 4
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -1624
  %72 = load i64, i64* %3, align 8
  %73 = add i64 %72, 8
  store i64 %73, i64* %3, align 8
  %74 = load <2 x float>, <2 x float>* %66, align 1
  %75 = extractelement <2 x float> %74, i32 0
  %76 = inttoptr i64 %71 to float*
  store float %75, float* %76, align 4
  %77 = load i64, i64* %RBP.i, align 8
  %78 = add i64 %77, -1628
  %79 = load i64, i64* %3, align 8
  %80 = add i64 %79, 8
  store i64 %80, i64* %3, align 8
  %81 = load <2 x float>, <2 x float>* %66, align 1
  %82 = extractelement <2 x float> %81, i32 0
  %83 = inttoptr i64 %78 to float*
  store float %82, float* %83, align 4
  %84 = load i64, i64* %RBP.i, align 8
  %85 = add i64 %84, -1632
  %86 = load i64, i64* %3, align 8
  %87 = add i64 %86, 8
  store i64 %87, i64* %3, align 8
  %88 = load <2 x float>, <2 x float>* %66, align 1
  %89 = extractelement <2 x float> %88, i32 0
  %90 = inttoptr i64 %85 to float*
  store float %89, float* %90, align 4
  %EAX.i919 = bitcast %union.anon* %39 to i32*
  %91 = load i32, i32* %EAX.i919, align 4
  %92 = zext i32 %91 to i64
  %93 = load i64, i64* %3, align 8
  store i64 %92, i64* %RDI.i937, align 8
  %ECX.i916 = bitcast %union.anon* %40 to i32*
  %94 = load i32, i32* %ECX.i916, align 4
  %95 = zext i32 %94 to i64
  store i64 %95, i64* %RSI.i934, align 8
  %EDX.i = bitcast %union.anon* %41 to i32*
  %96 = load i64, i64* %RBP.i, align 8
  %97 = add i64 %96, -1692
  %98 = load i32, i32* %EDX.i, align 4
  %99 = add i64 %93, 10
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %97 to i32*
  store i32 %98, i32* %100, align 4
  %101 = load i64, i64* %R8.i944, align 8
  %102 = load i64, i64* %3, align 8
  store i64 %101, i64* %RDX.i946, align 8
  %103 = load i64, i64* %RBP.i, align 8
  %104 = add i64 %103, -1692
  %105 = add i64 %102, 9
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %104 to i32*
  %107 = load i32, i32* %106, align 4
  %108 = zext i32 %107 to i64
  store i64 %108, i64* %RCX.i707, align 8
  %109 = add i64 %102, -5190
  %110 = add i64 %102, 14
  %111 = load i64, i64* %6, align 8
  %112 = add i64 %111, -8
  %113 = inttoptr i64 %112 to i64*
  store i64 %110, i64* %113, align 8
  store i64 %112, i64* %6, align 8
  store i64 %109, i64* %3, align 8
  %call2_46e11f = tail call %struct.Memory* @sub_46ccd0.dilate_erode(%struct.State* %0, i64 %109, %struct.Memory* %2)
  %114 = load i64, i64* %RBP.i, align 8
  %115 = add i64 %114, -1616
  %116 = load i64, i64* %3, align 8
  store i64 %115, i64* %RDI.i937, align 8
  %117 = add i64 %114, -1656
  %118 = load i32, i32* %EAX.i919, align 4
  %119 = add i64 %116, 13
  store i64 %119, i64* %3, align 8
  %120 = inttoptr i64 %117 to i32*
  store i32 %118, i32* %120, align 4
  %121 = load i64, i64* %3, align 8
  %122 = add i64 %121, -2881
  %123 = add i64 %121, 5
  %124 = load i64, i64* %6, align 8
  %125 = add i64 %124, -8
  %126 = inttoptr i64 %125 to i64*
  store i64 %123, i64* %126, align 8
  store i64 %125, i64* %6, align 8
  store i64 %122, i64* %3, align 8
  %call2_46e131 = tail call %struct.Memory* @sub_46d5f0.close_bubbles(%struct.State* %0, i64 %122, %struct.Memory* %call2_46e11f)
  %127 = load i64, i64* %3, align 8
  %128 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %129 = and i32 %128, 65536
  %130 = zext i32 %129 to i64
  store i64 %130, i64* %RAX.i656, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %131 = icmp eq i32 %129, 0
  %.lobit82 = lshr exact i32 %129, 16
  %132 = trunc i32 %.lobit82 to i8
  %133 = xor i8 %132, 1
  store i8 %133, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v = select i1 %131, i64 33, i64 21
  %134 = add i64 %127, %.v
  store i64 %134, i64* %3, align 8
  br i1 %131, label %block_.L_46e157, label %block_46e14b

block_46e14b:                                     ; preds = %entry
  %135 = load i64, i64* %RBP.i, align 8
  %136 = add i64 %135, -1616
  store i64 %136, i64* %RDI.i937, align 8
  %137 = add i64 %134, -1355
  %138 = add i64 %134, 12
  %139 = load i64, i64* %6, align 8
  %140 = add i64 %139, -8
  %141 = inttoptr i64 %140 to i64*
  store i64 %138, i64* %141, align 8
  store i64 %140, i64* %6, align 8
  store i64 %137, i64* %3, align 8
  %call2_46e152 = tail call %struct.Memory* @sub_46dc00.print_regions(%struct.State* nonnull %0, i64 %137, %struct.Memory* %call2_46e131)
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_46e157

block_.L_46e157:                                  ; preds = %block_46e14b, %entry
  %142 = phi i64 [ %134, %entry ], [ %.pre, %block_46e14b ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_46e131, %entry ], [ %call2_46e152, %block_46e14b ]
  %143 = load i64, i64* %RBP.i, align 8
  %144 = add i64 %143, -1636
  %145 = add i64 %142, 10
  store i64 %145, i64* %3, align 8
  %146 = inttoptr i64 %144 to i32*
  store i32 0, i32* %146, align 4
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %148 = bitcast %union.VectorReg* %147 to i8*
  %149 = bitcast %union.VectorReg* %147 to double*
  %150 = bitcast [32 x %union.VectorReg]* %43 to double*
  %151 = bitcast [32 x %union.VectorReg]* %43 to float*
  %152 = bitcast i8* %47 to float*
  %153 = bitcast i64* %45 to float*
  %154 = bitcast i8* %50 to float*
  %155 = bitcast [32 x %union.VectorReg]* %43 to <2 x i32>*
  %156 = bitcast i64* %45 to <2 x i32>*
  %157 = bitcast %union.VectorReg* %147 to i32*
  %158 = getelementptr inbounds i8, i8* %148, i64 4
  %159 = bitcast i8* %158 to i32*
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %161 = bitcast i64* %160 to i32*
  %162 = getelementptr inbounds i8, i8* %148, i64 12
  %163 = bitcast i8* %162 to i32*
  %164 = bitcast %union.VectorReg* %147 to <2 x float>*
  %165 = bitcast i64* %160 to <2 x i32>*
  %166 = bitcast %union.VectorReg* %147 to float*
  %167 = bitcast i8* %158 to float*
  %168 = bitcast i64* %160 to float*
  %169 = bitcast i8* %162 to float*
  %AL.i546 = bitcast %union.anon* %39 to i8*
  %.pre45 = load i64, i64* %3, align 8
  %170 = bitcast [32 x %union.VectorReg]* %43 to <4 x i32>*
  %171 = bitcast [32 x %union.VectorReg]* %43 to <4 x i32>*
  br label %block_.L_46e161

block_.L_46e161:                                  ; preds = %block_.L_46e4d8, %block_.L_46e157
  %172 = phi i64 [ %.pre45, %block_.L_46e157 ], [ %1204, %block_.L_46e4d8 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_.L_46e157 ], [ %MEMORY.11, %block_.L_46e4d8 ]
  %173 = load i64, i64* %RBP.i, align 8
  %174 = add i64 %173, -1636
  %175 = add i64 %172, 6
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %174 to i32*
  %177 = load i32, i32* %176, align 4
  %178 = zext i32 %177 to i64
  store i64 %178, i64* %RAX.i656, align 8
  %179 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %180 = sub i32 %177, %179
  %181 = icmp ult i32 %177, %179
  %182 = zext i1 %181 to i8
  store i8 %182, i8* %14, align 1
  %183 = and i32 %180, 255
  %184 = tail call i32 @llvm.ctpop.i32(i32 %183)
  %185 = trunc i32 %184 to i8
  %186 = and i8 %185, 1
  %187 = xor i8 %186, 1
  store i8 %187, i8* %21, align 1
  %188 = xor i32 %179, %177
  %189 = xor i32 %188, %180
  %190 = lshr i32 %189, 4
  %191 = trunc i32 %190 to i8
  %192 = and i8 %191, 1
  store i8 %192, i8* %26, align 1
  %193 = icmp eq i32 %180, 0
  %194 = zext i1 %193 to i8
  store i8 %194, i8* %29, align 1
  %195 = lshr i32 %180, 31
  %196 = trunc i32 %195 to i8
  store i8 %196, i8* %32, align 1
  %197 = lshr i32 %177, 31
  %198 = lshr i32 %179, 31
  %199 = xor i32 %198, %197
  %200 = xor i32 %195, %197
  %201 = add nuw nsw i32 %200, %199
  %202 = icmp eq i32 %201, 2
  %203 = zext i1 %202 to i8
  store i8 %203, i8* %38, align 1
  %204 = icmp ne i8 %196, 0
  %205 = xor i1 %204, %202
  %.v87 = select i1 %205, i64 19, i64 912
  %206 = add i64 %172, %.v87
  store i64 %206, i64* %3, align 8
  br i1 %205, label %block_46e174, label %block_.L_46e4f1

block_46e174:                                     ; preds = %block_.L_46e161
  %207 = add i64 %173, -1660
  %208 = add i64 %206, 10
  store i64 %208, i64* %3, align 8
  %209 = inttoptr i64 %207 to i32*
  store i32 0, i32* %209, align 4
  %210 = load i64, i64* %RBP.i, align 8
  %211 = add i64 %210, -1664
  %212 = load i64, i64* %3, align 8
  %213 = add i64 %212, 10
  store i64 %213, i64* %3, align 8
  %214 = inttoptr i64 %211 to i32*
  store i32 0, i32* %214, align 4
  %215 = load i64, i64* %RBP.i, align 8
  %216 = add i64 %215, -1668
  %217 = load i64, i64* %3, align 8
  %218 = add i64 %217, 10
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %216 to i32*
  store i32 0, i32* %219, align 4
  %220 = load i64, i64* %RBP.i, align 8
  %221 = add i64 %220, -1672
  %222 = load i64, i64* %3, align 8
  %223 = add i64 %222, 10
  store i64 %223, i64* %3, align 8
  %224 = inttoptr i64 %221 to i32*
  store i32 0, i32* %224, align 4
  %225 = load i64, i64* %RBP.i, align 8
  %226 = add i64 %225, -1640
  %227 = load i64, i64* %3, align 8
  %228 = add i64 %227, 10
  store i64 %228, i64* %3, align 8
  %229 = inttoptr i64 %226 to i32*
  store i32 0, i32* %229, align 4
  %.pre70 = load i64, i64* %3, align 8
  br label %block_.L_46e1a6

block_.L_46e1a6:                                  ; preds = %block_.L_46e40f, %block_46e174
  %230 = phi i64 [ %.pre70, %block_46e174 ], [ %1057, %block_.L_46e40f ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_46e174 ], [ %MEMORY.8, %block_.L_46e40f ]
  %231 = load i64, i64* %RBP.i, align 8
  %232 = add i64 %231, -1640
  %233 = add i64 %230, 6
  store i64 %233, i64* %3, align 8
  %234 = inttoptr i64 %232 to i32*
  %235 = load i32, i32* %234, align 4
  %236 = zext i32 %235 to i64
  store i64 %236, i64* %RAX.i656, align 8
  %237 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %238 = sub i32 %235, %237
  %239 = icmp ult i32 %235, %237
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %14, align 1
  %241 = and i32 %238, 255
  %242 = tail call i32 @llvm.ctpop.i32(i32 %241)
  %243 = trunc i32 %242 to i8
  %244 = and i8 %243, 1
  %245 = xor i8 %244, 1
  store i8 %245, i8* %21, align 1
  %246 = xor i32 %237, %235
  %247 = xor i32 %246, %238
  %248 = lshr i32 %247, 4
  %249 = trunc i32 %248 to i8
  %250 = and i8 %249, 1
  store i8 %250, i8* %26, align 1
  %251 = icmp eq i32 %238, 0
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %29, align 1
  %253 = lshr i32 %238, 31
  %254 = trunc i32 %253 to i8
  store i8 %254, i8* %32, align 1
  %255 = lshr i32 %235, 31
  %256 = lshr i32 %237, 31
  %257 = xor i32 %256, %255
  %258 = xor i32 %253, %255
  %259 = add nuw nsw i32 %258, %257
  %260 = icmp eq i32 %259, 2
  %261 = zext i1 %260 to i8
  store i8 %261, i8* %38, align 1
  %262 = icmp ne i8 %254, 0
  %263 = xor i1 %262, %260
  %.v105 = select i1 %263, i64 19, i64 642
  %264 = add i64 %230, %.v105
  store i64 %264, i64* %3, align 8
  br i1 %263, label %block_46e1b9, label %block_.L_46e428

block_46e1b9:                                     ; preds = %block_.L_46e1a6
  %265 = add i64 %231, -1636
  %266 = add i64 %264, 7
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %265 to i32*
  %268 = load i32, i32* %267, align 4
  %269 = mul i32 %268, 20
  %270 = add i32 %269, 21
  %271 = zext i32 %270 to i64
  store i64 %271, i64* %RAX.i656, align 8
  %272 = icmp ugt i32 %269, -22
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %14, align 1
  %274 = and i32 %270, 253
  %275 = tail call i32 @llvm.ctpop.i32(i32 %274)
  %276 = trunc i32 %275 to i8
  %277 = and i8 %276, 1
  %278 = xor i8 %277, 1
  store i8 %278, i8* %21, align 1
  %279 = xor i32 %269, 16
  %280 = xor i32 %279, %270
  %281 = lshr i32 %280, 4
  %282 = trunc i32 %281 to i8
  %283 = and i8 %282, 1
  store i8 %283, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %284 = lshr i32 %270, 31
  %285 = trunc i32 %284 to i8
  store i8 %285, i8* %32, align 1
  %286 = lshr i32 %269, 31
  %287 = xor i32 %284, %286
  %288 = add nuw nsw i32 %287, %284
  %289 = icmp eq i32 %288, 2
  %290 = zext i1 %289 to i8
  store i8 %290, i8* %38, align 1
  %291 = add i64 %264, 16
  store i64 %291, i64* %3, align 8
  %292 = load i32, i32* %234, align 4
  %293 = add i32 %292, %270
  %294 = zext i32 %293 to i64
  store i64 %294, i64* %RAX.i656, align 8
  %295 = icmp ult i32 %293, %270
  %296 = icmp ult i32 %293, %292
  %297 = or i1 %295, %296
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %14, align 1
  %299 = and i32 %293, 255
  %300 = tail call i32 @llvm.ctpop.i32(i32 %299)
  %301 = trunc i32 %300 to i8
  %302 = and i8 %301, 1
  %303 = xor i8 %302, 1
  store i8 %303, i8* %21, align 1
  %304 = xor i32 %292, %270
  %305 = xor i32 %304, %293
  %306 = lshr i32 %305, 4
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  store i8 %308, i8* %26, align 1
  %309 = icmp eq i32 %293, 0
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %29, align 1
  %311 = lshr i32 %293, 31
  %312 = trunc i32 %311 to i8
  store i8 %312, i8* %32, align 1
  %313 = lshr i32 %292, 31
  %314 = xor i32 %311, %284
  %315 = xor i32 %311, %313
  %316 = add nuw nsw i32 %314, %315
  %317 = icmp eq i32 %316, 2
  %318 = zext i1 %317 to i8
  store i8 %318, i8* %38, align 1
  %319 = add i64 %231, -1644
  %320 = add i64 %264, 22
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to i32*
  store i32 %293, i32* %321, align 4
  %322 = load i64, i64* %RBP.i, align 8
  %323 = add i64 %322, -1644
  %324 = load i64, i64* %3, align 8
  %325 = add i64 %324, 7
  store i64 %325, i64* %3, align 8
  %326 = inttoptr i64 %323 to i32*
  %327 = load i32, i32* %326, align 4
  %328 = sext i32 %327 to i64
  store i64 %328, i64* %RCX.i707, align 8
  %329 = add nsw i64 %328, 12099168
  %330 = add i64 %324, 15
  store i64 %330, i64* %3, align 8
  %331 = inttoptr i64 %329 to i8*
  %332 = load i8, i8* %331, align 1
  %333 = zext i8 %332 to i64
  store i64 %333, i64* %RAX.i656, align 8
  %334 = zext i8 %332 to i32
  %335 = add nsw i32 %334, -2
  %336 = icmp ult i8 %332, 2
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %14, align 1
  %338 = and i32 %335, 255
  %339 = tail call i32 @llvm.ctpop.i32(i32 %338)
  %340 = trunc i32 %339 to i8
  %341 = and i8 %340, 1
  %342 = xor i8 %341, 1
  store i8 %342, i8* %21, align 1
  %343 = xor i32 %335, %334
  %344 = lshr i32 %343, 4
  %345 = trunc i32 %344 to i8
  %346 = and i8 %345, 1
  store i8 %346, i8* %26, align 1
  %347 = icmp eq i32 %335, 0
  %348 = zext i1 %347 to i8
  store i8 %348, i8* %29, align 1
  %349 = lshr i32 %335, 31
  %350 = trunc i32 %349 to i8
  store i8 %350, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v108 = select i1 %347, i64 24, i64 176
  %351 = add i64 %324, %.v108
  store i64 %351, i64* %3, align 8
  br i1 %347, label %block_46e1e7, label %block_.L_46e27f

block_46e1e7:                                     ; preds = %block_46e1b9
  store i64 1, i64* %RSI.i934, align 8
  %352 = add i64 %351, 11
  store i64 %352, i64* %3, align 8
  %353 = load i32, i32* %326, align 4
  %354 = zext i32 %353 to i64
  store i64 %354, i64* %RDI.i937, align 8
  %355 = add i64 %351, -967
  %356 = add i64 %351, 16
  %357 = load i64, i64* %6, align 8
  %358 = add i64 %357, -8
  %359 = inttoptr i64 %358 to i64*
  store i64 %356, i64* %359, align 8
  store i64 %358, i64* %6, align 8
  store i64 %355, i64* %3, align 8
  %call2_46e1f2 = tail call %struct.Memory* @sub_46de20.captured_territory(%struct.State* nonnull %0, i64 %355, %struct.Memory* %MEMORY.2)
  %360 = load i32, i32* %EAX.i919, align 4
  %361 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %362 = and i32 %360, 255
  %363 = tail call i32 @llvm.ctpop.i32(i32 %362)
  %364 = trunc i32 %363 to i8
  %365 = and i8 %364, 1
  %366 = xor i8 %365, 1
  store i8 %366, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %367 = icmp eq i32 %360, 0
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %29, align 1
  %369 = lshr i32 %360, 31
  %370 = trunc i32 %369 to i8
  store i8 %370, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v113 = select i1 %367, i64 92, i64 9
  %371 = add i64 %361, %.v113
  store i64 %371, i64* %3, align 8
  br i1 %367, label %block_.L_46e253, label %block_46e200

block_46e200:                                     ; preds = %block_46e1e7
  %372 = add i64 %371, ptrtoint (%G_0x74f04__rip__type* @G_0x74f04__rip_ to i64)
  %373 = add i64 %371, 8
  store i64 %373, i64* %3, align 8
  %374 = inttoptr i64 %372 to i32*
  %375 = load i32, i32* %374, align 4
  store i32 %375, i32* %46, align 1
  store float 0.000000e+00, float* %152, align 1
  store float 0.000000e+00, float* %153, align 1
  store float 0.000000e+00, float* %154, align 1
  %376 = add i64 %371, add (i64 ptrtoint (%G_0x74f24__rip__type* @G_0x74f24__rip_ to i64), i64 8)
  %377 = add i64 %371, 16
  store i64 %377, i64* %3, align 8
  %378 = inttoptr i64 %376 to i32*
  %379 = load i32, i32* %378, align 4
  store i32 %379, i32* %157, align 1
  store float 0.000000e+00, float* %167, align 1
  store float 0.000000e+00, float* %168, align 1
  store float 0.000000e+00, float* %169, align 1
  %380 = load i64, i64* %RBP.i, align 8
  %381 = add i64 %380, -1620
  %382 = add i64 %371, 24
  store i64 %382, i64* %3, align 8
  %383 = load <2 x float>, <2 x float>* %164, align 1
  %384 = load <2 x i32>, <2 x i32>* %165, align 1
  %385 = inttoptr i64 %381 to float*
  %386 = load float, float* %385, align 4
  %387 = extractelement <2 x float> %383, i32 0
  %388 = fadd float %387, %386
  store float %388, float* %166, align 1
  %389 = bitcast <2 x float> %383 to <2 x i32>
  %390 = extractelement <2 x i32> %389, i32 1
  store i32 %390, i32* %159, align 1
  %391 = extractelement <2 x i32> %384, i32 0
  store i32 %391, i32* %161, align 1
  %392 = extractelement <2 x i32> %384, i32 1
  store i32 %392, i32* %163, align 1
  %393 = add i64 %371, 32
  store i64 %393, i64* %3, align 8
  %394 = load <2 x float>, <2 x float>* %164, align 1
  %395 = extractelement <2 x float> %394, i32 0
  store float %395, float* %385, align 4
  %396 = load i64, i64* %RBP.i, align 8
  %397 = add i64 %396, -1628
  %398 = load i64, i64* %3, align 8
  %399 = add i64 %398, 8
  store i64 %399, i64* %3, align 8
  %400 = load <2 x float>, <2 x float>* %66, align 1
  %401 = load <2 x i32>, <2 x i32>* %156, align 1
  %402 = inttoptr i64 %397 to float*
  %403 = load float, float* %402, align 4
  %404 = extractelement <2 x float> %400, i32 0
  %405 = fadd float %404, %403
  store float %405, float* %151, align 1
  %406 = bitcast <2 x float> %400 to <2 x i32>
  %407 = extractelement <2 x i32> %406, i32 1
  store i32 %407, i32* %48, align 1
  %408 = extractelement <2 x i32> %401, i32 0
  store i32 %408, i32* %49, align 1
  %409 = extractelement <2 x i32> %401, i32 1
  store i32 %409, i32* %51, align 1
  %410 = add i64 %398, 16
  store i64 %410, i64* %3, align 8
  %411 = load <2 x float>, <2 x float>* %66, align 1
  %412 = extractelement <2 x float> %411, i32 0
  store float %412, float* %402, align 4
  %413 = load i64, i64* %RBP.i, align 8
  %414 = add i64 %413, -1664
  %415 = load i64, i64* %3, align 8
  %416 = add i64 %415, 6
  store i64 %416, i64* %3, align 8
  %417 = inttoptr i64 %414 to i32*
  %418 = load i32, i32* %417, align 4
  %419 = add i32 %418, 2
  %420 = zext i32 %419 to i64
  store i64 %420, i64* %RAX.i656, align 8
  %421 = icmp ugt i32 %418, -3
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %14, align 1
  %423 = and i32 %419, 255
  %424 = tail call i32 @llvm.ctpop.i32(i32 %423)
  %425 = trunc i32 %424 to i8
  %426 = and i8 %425, 1
  %427 = xor i8 %426, 1
  store i8 %427, i8* %21, align 1
  %428 = xor i32 %419, %418
  %429 = lshr i32 %428, 4
  %430 = trunc i32 %429 to i8
  %431 = and i8 %430, 1
  store i8 %431, i8* %26, align 1
  %432 = icmp eq i32 %419, 0
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %29, align 1
  %434 = lshr i32 %419, 31
  %435 = trunc i32 %434 to i8
  store i8 %435, i8* %32, align 1
  %436 = lshr i32 %418, 31
  %437 = xor i32 %434, %436
  %438 = add nuw nsw i32 %437, %434
  %439 = icmp eq i32 %438, 2
  %440 = zext i1 %439 to i8
  store i8 %440, i8* %38, align 1
  %441 = add i64 %415, 15
  store i64 %441, i64* %3, align 8
  store i32 %419, i32* %417, align 4
  %442 = load i64, i64* %RBP.i, align 8
  %443 = add i64 %442, -1668
  %444 = load i64, i64* %3, align 8
  %445 = add i64 %444, 6
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %443 to i32*
  %447 = load i32, i32* %446, align 4
  %448 = add i32 %447, 1
  %449 = zext i32 %448 to i64
  store i64 %449, i64* %RAX.i656, align 8
  %450 = icmp eq i32 %447, -1
  %451 = icmp eq i32 %448, 0
  %452 = or i1 %450, %451
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %14, align 1
  %454 = and i32 %448, 255
  %455 = tail call i32 @llvm.ctpop.i32(i32 %454)
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  %458 = xor i8 %457, 1
  store i8 %458, i8* %21, align 1
  %459 = xor i32 %448, %447
  %460 = lshr i32 %459, 4
  %461 = trunc i32 %460 to i8
  %462 = and i8 %461, 1
  store i8 %462, i8* %26, align 1
  %463 = zext i1 %451 to i8
  store i8 %463, i8* %29, align 1
  %464 = lshr i32 %448, 31
  %465 = trunc i32 %464 to i8
  store i8 %465, i8* %32, align 1
  %466 = lshr i32 %447, 31
  %467 = xor i32 %464, %466
  %468 = add nuw nsw i32 %467, %464
  %469 = icmp eq i32 %468, 2
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %38, align 1
  %471 = add i64 %444, 15
  store i64 %471, i64* %3, align 8
  store i32 %448, i32* %446, align 4
  %472 = load i64, i64* %3, align 8
  %473 = add i64 %472, 44
  store i64 %473, i64* %3, align 8
  br label %block_.L_46e27a

block_.L_46e253:                                  ; preds = %block_46e1e7
  %474 = add i64 %371, ptrtoint (%G_0x74eb1__rip__type* @G_0x74eb1__rip_ to i64)
  %475 = add i64 %371, 8
  store i64 %475, i64* %3, align 8
  %476 = inttoptr i64 %474 to i32*
  %477 = load i32, i32* %476, align 4
  store i32 %477, i32* %46, align 1
  store float 0.000000e+00, float* %152, align 1
  store float 0.000000e+00, float* %153, align 1
  store float 0.000000e+00, float* %154, align 1
  %478 = load i64, i64* %RBP.i, align 8
  %479 = add i64 %478, -1632
  %480 = add i64 %371, 16
  store i64 %480, i64* %3, align 8
  %481 = load <2 x float>, <2 x float>* %66, align 1
  %482 = load <2 x i32>, <2 x i32>* %156, align 1
  %483 = inttoptr i64 %479 to float*
  %484 = load float, float* %483, align 4
  %485 = extractelement <2 x float> %481, i32 0
  %486 = fadd float %485, %484
  store float %486, float* %151, align 1
  %487 = bitcast <2 x float> %481 to <2 x i32>
  %488 = extractelement <2 x i32> %487, i32 1
  store i32 %488, i32* %48, align 1
  %489 = extractelement <2 x i32> %482, i32 0
  store i32 %489, i32* %49, align 1
  %490 = extractelement <2 x i32> %482, i32 1
  store i32 %490, i32* %51, align 1
  %491 = add i64 %371, 24
  store i64 %491, i64* %3, align 8
  %492 = load <2 x float>, <2 x float>* %66, align 1
  %493 = extractelement <2 x float> %492, i32 0
  store float %493, float* %483, align 4
  %494 = load i64, i64* %RBP.i, align 8
  %495 = add i64 %494, -1672
  %496 = load i64, i64* %3, align 8
  %497 = add i64 %496, 6
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %495 to i32*
  %499 = load i32, i32* %498, align 4
  %500 = add i32 %499, 1
  %501 = zext i32 %500 to i64
  store i64 %501, i64* %RAX.i656, align 8
  %502 = icmp eq i32 %499, -1
  %503 = icmp eq i32 %500, 0
  %504 = or i1 %502, %503
  %505 = zext i1 %504 to i8
  store i8 %505, i8* %14, align 1
  %506 = and i32 %500, 255
  %507 = tail call i32 @llvm.ctpop.i32(i32 %506)
  %508 = trunc i32 %507 to i8
  %509 = and i8 %508, 1
  %510 = xor i8 %509, 1
  store i8 %510, i8* %21, align 1
  %511 = xor i32 %500, %499
  %512 = lshr i32 %511, 4
  %513 = trunc i32 %512 to i8
  %514 = and i8 %513, 1
  store i8 %514, i8* %26, align 1
  %515 = zext i1 %503 to i8
  store i8 %515, i8* %29, align 1
  %516 = lshr i32 %500, 31
  %517 = trunc i32 %516 to i8
  store i8 %517, i8* %32, align 1
  %518 = lshr i32 %499, 31
  %519 = xor i32 %516, %518
  %520 = add nuw nsw i32 %519, %516
  %521 = icmp eq i32 %520, 2
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %38, align 1
  %523 = add i64 %496, 15
  store i64 %523, i64* %3, align 8
  store i32 %500, i32* %498, align 4
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_46e27a

block_.L_46e27a:                                  ; preds = %block_.L_46e253, %block_46e200
  %524 = phi i64 [ %.pre73, %block_.L_46e253 ], [ %473, %block_46e200 ]
  %525 = add i64 %524, 405
  br label %block_.L_46e40f

block_.L_46e27f:                                  ; preds = %block_46e1b9
  %526 = add i64 %351, 7
  store i64 %526, i64* %3, align 8
  %527 = load i32, i32* %326, align 4
  %528 = sext i32 %527 to i64
  store i64 %528, i64* %RAX.i656, align 8
  %529 = add nsw i64 %528, 12099168
  %530 = add i64 %351, 15
  store i64 %530, i64* %3, align 8
  %531 = inttoptr i64 %529 to i8*
  %532 = load i8, i8* %531, align 1
  %533 = zext i8 %532 to i64
  store i64 %533, i64* %RCX.i707, align 8
  %534 = zext i8 %532 to i32
  %535 = add nsw i32 %534, -1
  %536 = icmp eq i8 %532, 0
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %14, align 1
  %538 = and i32 %535, 255
  %539 = tail call i32 @llvm.ctpop.i32(i32 %538)
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  %542 = xor i8 %541, 1
  store i8 %542, i8* %21, align 1
  %543 = xor i32 %535, %534
  %544 = lshr i32 %543, 4
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 1
  store i8 %546, i8* %26, align 1
  %547 = icmp eq i32 %535, 0
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %29, align 1
  %549 = lshr i32 %535, 31
  %550 = trunc i32 %549 to i8
  store i8 %550, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v109 = select i1 %547, i64 24, i64 176
  %551 = add i64 %351, %.v109
  store i64 %551, i64* %3, align 8
  br i1 %547, label %block_46e297, label %block_.L_46e32f

block_46e297:                                     ; preds = %block_.L_46e27f
  store i64 1, i64* %RSI.i934, align 8
  %552 = add i64 %551, 11
  store i64 %552, i64* %3, align 8
  %553 = load i32, i32* %326, align 4
  %554 = zext i32 %553 to i64
  store i64 %554, i64* %RDI.i937, align 8
  %555 = add i64 %551, -1143
  %556 = add i64 %551, 16
  %557 = load i64, i64* %6, align 8
  %558 = add i64 %557, -8
  %559 = inttoptr i64 %558 to i64*
  store i64 %556, i64* %559, align 8
  store i64 %558, i64* %6, align 8
  store i64 %555, i64* %3, align 8
  %call2_46e2a2 = tail call %struct.Memory* @sub_46de20.captured_territory(%struct.State* nonnull %0, i64 %555, %struct.Memory* %MEMORY.2)
  %560 = load i32, i32* %EAX.i919, align 4
  %561 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %562 = and i32 %560, 255
  %563 = tail call i32 @llvm.ctpop.i32(i32 %562)
  %564 = trunc i32 %563 to i8
  %565 = and i8 %564, 1
  %566 = xor i8 %565, 1
  store i8 %566, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %567 = icmp eq i32 %560, 0
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %29, align 1
  %569 = lshr i32 %560, 31
  %570 = trunc i32 %569 to i8
  store i8 %570, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v112 = select i1 %567, i64 92, i64 9
  %571 = add i64 %561, %.v112
  store i64 %571, i64* %3, align 8
  br i1 %567, label %block_.L_46e303, label %block_46e2b0

block_46e2b0:                                     ; preds = %block_46e297
  %572 = add i64 %571, ptrtoint (%G_0x74e54__rip__type* @G_0x74e54__rip_ to i64)
  %573 = add i64 %571, 8
  store i64 %573, i64* %3, align 8
  %574 = inttoptr i64 %572 to i32*
  %575 = load i32, i32* %574, align 4
  store i32 %575, i32* %46, align 1
  store float 0.000000e+00, float* %152, align 1
  store float 0.000000e+00, float* %153, align 1
  store float 0.000000e+00, float* %154, align 1
  %576 = add i64 %571, add (i64 ptrtoint (%G_0x74e74__rip__type* @G_0x74e74__rip_ to i64), i64 8)
  %577 = add i64 %571, 16
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %576 to i32*
  %579 = load i32, i32* %578, align 4
  store i32 %579, i32* %157, align 1
  store float 0.000000e+00, float* %167, align 1
  store float 0.000000e+00, float* %168, align 1
  store float 0.000000e+00, float* %169, align 1
  %580 = load i64, i64* %RBP.i, align 8
  %581 = add i64 %580, -1624
  %582 = add i64 %571, 24
  store i64 %582, i64* %3, align 8
  %583 = load <2 x float>, <2 x float>* %164, align 1
  %584 = load <2 x i32>, <2 x i32>* %165, align 1
  %585 = inttoptr i64 %581 to float*
  %586 = load float, float* %585, align 4
  %587 = extractelement <2 x float> %583, i32 0
  %588 = fadd float %587, %586
  store float %588, float* %166, align 1
  %589 = bitcast <2 x float> %583 to <2 x i32>
  %590 = extractelement <2 x i32> %589, i32 1
  store i32 %590, i32* %159, align 1
  %591 = extractelement <2 x i32> %584, i32 0
  store i32 %591, i32* %161, align 1
  %592 = extractelement <2 x i32> %584, i32 1
  store i32 %592, i32* %163, align 1
  %593 = add i64 %571, 32
  store i64 %593, i64* %3, align 8
  %594 = load <2 x float>, <2 x float>* %164, align 1
  %595 = extractelement <2 x float> %594, i32 0
  store float %595, float* %585, align 4
  %596 = load i64, i64* %RBP.i, align 8
  %597 = add i64 %596, -1632
  %598 = load i64, i64* %3, align 8
  %599 = add i64 %598, 8
  store i64 %599, i64* %3, align 8
  %600 = load <2 x float>, <2 x float>* %66, align 1
  %601 = load <2 x i32>, <2 x i32>* %156, align 1
  %602 = inttoptr i64 %597 to float*
  %603 = load float, float* %602, align 4
  %604 = extractelement <2 x float> %600, i32 0
  %605 = fadd float %604, %603
  store float %605, float* %151, align 1
  %606 = bitcast <2 x float> %600 to <2 x i32>
  %607 = extractelement <2 x i32> %606, i32 1
  store i32 %607, i32* %48, align 1
  %608 = extractelement <2 x i32> %601, i32 0
  store i32 %608, i32* %49, align 1
  %609 = extractelement <2 x i32> %601, i32 1
  store i32 %609, i32* %51, align 1
  %610 = add i64 %598, 16
  store i64 %610, i64* %3, align 8
  %611 = load <2 x float>, <2 x float>* %66, align 1
  %612 = extractelement <2 x float> %611, i32 0
  store float %612, float* %602, align 4
  %613 = load i64, i64* %RBP.i, align 8
  %614 = add i64 %613, -1660
  %615 = load i64, i64* %3, align 8
  %616 = add i64 %615, 6
  store i64 %616, i64* %3, align 8
  %617 = inttoptr i64 %614 to i32*
  %618 = load i32, i32* %617, align 4
  %619 = add i32 %618, 2
  %620 = zext i32 %619 to i64
  store i64 %620, i64* %RAX.i656, align 8
  %621 = icmp ugt i32 %618, -3
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %14, align 1
  %623 = and i32 %619, 255
  %624 = tail call i32 @llvm.ctpop.i32(i32 %623)
  %625 = trunc i32 %624 to i8
  %626 = and i8 %625, 1
  %627 = xor i8 %626, 1
  store i8 %627, i8* %21, align 1
  %628 = xor i32 %619, %618
  %629 = lshr i32 %628, 4
  %630 = trunc i32 %629 to i8
  %631 = and i8 %630, 1
  store i8 %631, i8* %26, align 1
  %632 = icmp eq i32 %619, 0
  %633 = zext i1 %632 to i8
  store i8 %633, i8* %29, align 1
  %634 = lshr i32 %619, 31
  %635 = trunc i32 %634 to i8
  store i8 %635, i8* %32, align 1
  %636 = lshr i32 %618, 31
  %637 = xor i32 %634, %636
  %638 = add nuw nsw i32 %637, %634
  %639 = icmp eq i32 %638, 2
  %640 = zext i1 %639 to i8
  store i8 %640, i8* %38, align 1
  %641 = add i64 %615, 15
  store i64 %641, i64* %3, align 8
  store i32 %619, i32* %617, align 4
  %642 = load i64, i64* %RBP.i, align 8
  %643 = add i64 %642, -1672
  %644 = load i64, i64* %3, align 8
  %645 = add i64 %644, 6
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %643 to i32*
  %647 = load i32, i32* %646, align 4
  %648 = add i32 %647, 1
  %649 = zext i32 %648 to i64
  store i64 %649, i64* %RAX.i656, align 8
  %650 = icmp eq i32 %647, -1
  %651 = icmp eq i32 %648, 0
  %652 = or i1 %650, %651
  %653 = zext i1 %652 to i8
  store i8 %653, i8* %14, align 1
  %654 = and i32 %648, 255
  %655 = tail call i32 @llvm.ctpop.i32(i32 %654)
  %656 = trunc i32 %655 to i8
  %657 = and i8 %656, 1
  %658 = xor i8 %657, 1
  store i8 %658, i8* %21, align 1
  %659 = xor i32 %648, %647
  %660 = lshr i32 %659, 4
  %661 = trunc i32 %660 to i8
  %662 = and i8 %661, 1
  store i8 %662, i8* %26, align 1
  %663 = zext i1 %651 to i8
  store i8 %663, i8* %29, align 1
  %664 = lshr i32 %648, 31
  %665 = trunc i32 %664 to i8
  store i8 %665, i8* %32, align 1
  %666 = lshr i32 %647, 31
  %667 = xor i32 %664, %666
  %668 = add nuw nsw i32 %667, %664
  %669 = icmp eq i32 %668, 2
  %670 = zext i1 %669 to i8
  store i8 %670, i8* %38, align 1
  %671 = add i64 %644, 15
  store i64 %671, i64* %3, align 8
  store i32 %648, i32* %646, align 4
  %672 = load i64, i64* %3, align 8
  %673 = add i64 %672, 44
  store i64 %673, i64* %3, align 8
  br label %block_.L_46e32a

block_.L_46e303:                                  ; preds = %block_46e297
  %674 = add i64 %571, ptrtoint (%G_0x74e01__rip__type* @G_0x74e01__rip_ to i64)
  %675 = add i64 %571, 8
  store i64 %675, i64* %3, align 8
  %676 = inttoptr i64 %674 to i32*
  %677 = load i32, i32* %676, align 4
  store i32 %677, i32* %46, align 1
  store float 0.000000e+00, float* %152, align 1
  store float 0.000000e+00, float* %153, align 1
  store float 0.000000e+00, float* %154, align 1
  %678 = load i64, i64* %RBP.i, align 8
  %679 = add i64 %678, -1628
  %680 = add i64 %571, 16
  store i64 %680, i64* %3, align 8
  %681 = load <2 x float>, <2 x float>* %66, align 1
  %682 = load <2 x i32>, <2 x i32>* %156, align 1
  %683 = inttoptr i64 %679 to float*
  %684 = load float, float* %683, align 4
  %685 = extractelement <2 x float> %681, i32 0
  %686 = fadd float %685, %684
  store float %686, float* %151, align 1
  %687 = bitcast <2 x float> %681 to <2 x i32>
  %688 = extractelement <2 x i32> %687, i32 1
  store i32 %688, i32* %48, align 1
  %689 = extractelement <2 x i32> %682, i32 0
  store i32 %689, i32* %49, align 1
  %690 = extractelement <2 x i32> %682, i32 1
  store i32 %690, i32* %51, align 1
  %691 = add i64 %571, 24
  store i64 %691, i64* %3, align 8
  %692 = load <2 x float>, <2 x float>* %66, align 1
  %693 = extractelement <2 x float> %692, i32 0
  store float %693, float* %683, align 4
  %694 = load i64, i64* %RBP.i, align 8
  %695 = add i64 %694, -1668
  %696 = load i64, i64* %3, align 8
  %697 = add i64 %696, 6
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %695 to i32*
  %699 = load i32, i32* %698, align 4
  %700 = add i32 %699, 1
  %701 = zext i32 %700 to i64
  store i64 %701, i64* %RAX.i656, align 8
  %702 = icmp eq i32 %699, -1
  %703 = icmp eq i32 %700, 0
  %704 = or i1 %702, %703
  %705 = zext i1 %704 to i8
  store i8 %705, i8* %14, align 1
  %706 = and i32 %700, 255
  %707 = tail call i32 @llvm.ctpop.i32(i32 %706)
  %708 = trunc i32 %707 to i8
  %709 = and i8 %708, 1
  %710 = xor i8 %709, 1
  store i8 %710, i8* %21, align 1
  %711 = xor i32 %700, %699
  %712 = lshr i32 %711, 4
  %713 = trunc i32 %712 to i8
  %714 = and i8 %713, 1
  store i8 %714, i8* %26, align 1
  %715 = zext i1 %703 to i8
  store i8 %715, i8* %29, align 1
  %716 = lshr i32 %700, 31
  %717 = trunc i32 %716 to i8
  store i8 %717, i8* %32, align 1
  %718 = lshr i32 %699, 31
  %719 = xor i32 %716, %718
  %720 = add nuw nsw i32 %719, %716
  %721 = icmp eq i32 %720, 2
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %38, align 1
  %723 = add i64 %696, 15
  store i64 %723, i64* %3, align 8
  store i32 %700, i32* %698, align 4
  %.pre74 = load i64, i64* %3, align 8
  br label %block_.L_46e32a

block_.L_46e32a:                                  ; preds = %block_.L_46e303, %block_46e2b0
  %724 = phi i64 [ %.pre74, %block_.L_46e303 ], [ %673, %block_46e2b0 ]
  %725 = add i64 %724, 224
  br label %block_.L_46e40a

block_.L_46e32f:                                  ; preds = %block_.L_46e27f
  store <4 x i32> zeroinitializer, <4 x i32>* %170, align 1
  %726 = add i64 %551, 10
  store i64 %726, i64* %3, align 8
  %727 = load i32, i32* %326, align 4
  %728 = sext i32 %727 to i64
  store i64 %728, i64* %RAX.i656, align 8
  %729 = shl nsw i64 %728, 2
  %730 = add i64 %322, -1616
  %731 = add i64 %730, %729
  %732 = add i64 %551, 19
  store i64 %732, i64* %3, align 8
  %733 = inttoptr i64 %731 to i32*
  %734 = load i32, i32* %733, align 4
  %735 = sitofp i32 %734 to double
  store double %735, double* %149, align 1
  %736 = add i64 %551, 23
  store i64 %736, i64* %3, align 8
  %737 = load double, double* %150, align 1
  %738 = fcmp uno double %735, %737
  br i1 %738, label %739, label %749

; <label>:739:                                    ; preds = %block_.L_46e32f
  %740 = fadd double %735, %737
  %741 = bitcast double %740 to i64
  %742 = and i64 %741, 9221120237041090560
  %743 = icmp eq i64 %742, 9218868437227405312
  %744 = and i64 %741, 2251799813685247
  %745 = icmp ne i64 %744, 0
  %746 = and i1 %743, %745
  br i1 %746, label %747, label %755

; <label>:747:                                    ; preds = %739
  %748 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %736, %struct.Memory* %MEMORY.2)
  %.pre75 = load i64, i64* %3, align 8
  %.pre76 = load i8, i8* %14, align 1
  %.pre77 = load i8, i8* %29, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit705

; <label>:749:                                    ; preds = %block_.L_46e32f
  %750 = fcmp ogt double %735, %737
  br i1 %750, label %755, label %751

; <label>:751:                                    ; preds = %749
  %752 = fcmp olt double %735, %737
  br i1 %752, label %755, label %753

; <label>:753:                                    ; preds = %751
  %754 = fcmp oeq double %735, %737
  br i1 %754, label %755, label %759

; <label>:755:                                    ; preds = %753, %751, %749, %739
  %756 = phi i8 [ 0, %749 ], [ 0, %751 ], [ 1, %753 ], [ 1, %739 ]
  %757 = phi i8 [ 0, %749 ], [ 0, %751 ], [ 0, %753 ], [ 1, %739 ]
  %758 = phi i8 [ 0, %749 ], [ 1, %751 ], [ 0, %753 ], [ 1, %739 ]
  store i8 %756, i8* %29, align 1
  store i8 %757, i8* %21, align 1
  store i8 %758, i8* %14, align 1
  br label %759

; <label>:759:                                    ; preds = %755, %753
  %760 = phi i8 [ %756, %755 ], [ 0, %753 ]
  %761 = phi i8 [ %758, %755 ], [ %537, %753 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit705

routine_ucomisd__xmm0___xmm1.exit705:             ; preds = %759, %747
  %762 = phi i8 [ %.pre77, %747 ], [ %760, %759 ]
  %763 = phi i8 [ %.pre76, %747 ], [ %761, %759 ]
  %764 = phi i64 [ %.pre75, %747 ], [ %736, %759 ]
  %765 = phi %struct.Memory* [ %748, %747 ], [ %MEMORY.2, %759 ]
  %766 = or i8 %762, %763
  %767 = icmp ne i8 %766, 0
  %.v110 = select i1 %767, i64 84, i64 6
  %768 = add i64 %764, %.v110
  store i64 %768, i64* %3, align 8
  br i1 %767, label %block_.L_46e39a, label %block_46e34c

block_46e34c:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit705
  %769 = add i64 %768, ptrtoint (%G_0x74db8__rip__type* @G_0x74db8__rip_ to i64)
  %770 = add i64 %768, 8
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %769 to i32*
  %772 = load i32, i32* %771, align 4
  store i32 %772, i32* %46, align 1
  store float 0.000000e+00, float* %152, align 1
  store float 0.000000e+00, float* %153, align 1
  store float 0.000000e+00, float* %154, align 1
  %773 = load <2 x i32>, <2 x i32>* %155, align 1
  %774 = load <2 x i32>, <2 x i32>* %156, align 1
  %775 = extractelement <2 x i32> %773, i32 0
  store i32 %775, i32* %157, align 1
  %776 = extractelement <2 x i32> %773, i32 1
  store i32 %776, i32* %159, align 1
  %777 = extractelement <2 x i32> %774, i32 0
  store i32 %777, i32* %161, align 1
  %778 = extractelement <2 x i32> %774, i32 1
  store i32 %778, i32* %163, align 1
  %779 = load i64, i64* %RBP.i, align 8
  %780 = add i64 %779, -1620
  %781 = add i64 %768, 19
  store i64 %781, i64* %3, align 8
  %782 = load <2 x float>, <2 x float>* %164, align 1
  %783 = load <2 x i32>, <2 x i32>* %165, align 1
  %784 = inttoptr i64 %780 to float*
  %785 = load float, float* %784, align 4
  %786 = extractelement <2 x float> %782, i32 0
  %787 = fadd float %786, %785
  store float %787, float* %166, align 1
  %788 = bitcast <2 x float> %782 to <2 x i32>
  %789 = extractelement <2 x i32> %788, i32 1
  store i32 %789, i32* %159, align 1
  %790 = extractelement <2 x i32> %783, i32 0
  store i32 %790, i32* %161, align 1
  %791 = extractelement <2 x i32> %783, i32 1
  store i32 %791, i32* %163, align 1
  %792 = add i64 %768, 27
  store i64 %792, i64* %3, align 8
  %793 = load <2 x float>, <2 x float>* %164, align 1
  %794 = extractelement <2 x float> %793, i32 0
  store float %794, float* %784, align 4
  %795 = load i64, i64* %RBP.i, align 8
  %796 = add i64 %795, -1628
  %797 = load i64, i64* %3, align 8
  %798 = add i64 %797, 8
  store i64 %798, i64* %3, align 8
  %799 = load <2 x float>, <2 x float>* %66, align 1
  %800 = load <2 x i32>, <2 x i32>* %156, align 1
  %801 = inttoptr i64 %796 to float*
  %802 = load float, float* %801, align 4
  %803 = extractelement <2 x float> %799, i32 0
  %804 = fadd float %803, %802
  store float %804, float* %151, align 1
  %805 = bitcast <2 x float> %799 to <2 x i32>
  %806 = extractelement <2 x i32> %805, i32 1
  store i32 %806, i32* %48, align 1
  %807 = extractelement <2 x i32> %800, i32 0
  store i32 %807, i32* %49, align 1
  %808 = extractelement <2 x i32> %800, i32 1
  store i32 %808, i32* %51, align 1
  %809 = add i64 %797, 16
  store i64 %809, i64* %3, align 8
  %810 = load <2 x float>, <2 x float>* %66, align 1
  %811 = extractelement <2 x float> %810, i32 0
  store float %811, float* %801, align 4
  %812 = load i64, i64* %RBP.i, align 8
  %813 = add i64 %812, -1664
  %814 = load i64, i64* %3, align 8
  %815 = add i64 %814, 6
  store i64 %815, i64* %3, align 8
  %816 = inttoptr i64 %813 to i32*
  %817 = load i32, i32* %816, align 4
  %818 = add i32 %817, 1
  %819 = zext i32 %818 to i64
  store i64 %819, i64* %RAX.i656, align 8
  %820 = icmp eq i32 %817, -1
  %821 = icmp eq i32 %818, 0
  %822 = or i1 %820, %821
  %823 = zext i1 %822 to i8
  store i8 %823, i8* %14, align 1
  %824 = and i32 %818, 255
  %825 = tail call i32 @llvm.ctpop.i32(i32 %824)
  %826 = trunc i32 %825 to i8
  %827 = and i8 %826, 1
  %828 = xor i8 %827, 1
  store i8 %828, i8* %21, align 1
  %829 = xor i32 %818, %817
  %830 = lshr i32 %829, 4
  %831 = trunc i32 %830 to i8
  %832 = and i8 %831, 1
  store i8 %832, i8* %26, align 1
  %833 = zext i1 %821 to i8
  store i8 %833, i8* %29, align 1
  %834 = lshr i32 %818, 31
  %835 = trunc i32 %834 to i8
  store i8 %835, i8* %32, align 1
  %836 = lshr i32 %817, 31
  %837 = xor i32 %834, %836
  %838 = add nuw nsw i32 %837, %834
  %839 = icmp eq i32 %838, 2
  %840 = zext i1 %839 to i8
  store i8 %840, i8* %38, align 1
  %841 = add i64 %814, 15
  store i64 %841, i64* %3, align 8
  store i32 %818, i32* %816, align 4
  %842 = load i64, i64* %RBP.i, align 8
  %843 = add i64 %842, -1668
  %844 = load i64, i64* %3, align 8
  %845 = add i64 %844, 6
  store i64 %845, i64* %3, align 8
  %846 = inttoptr i64 %843 to i32*
  %847 = load i32, i32* %846, align 4
  %848 = add i32 %847, 1
  %849 = zext i32 %848 to i64
  store i64 %849, i64* %RAX.i656, align 8
  %850 = icmp eq i32 %847, -1
  %851 = icmp eq i32 %848, 0
  %852 = or i1 %850, %851
  %853 = zext i1 %852 to i8
  store i8 %853, i8* %14, align 1
  %854 = and i32 %848, 255
  %855 = tail call i32 @llvm.ctpop.i32(i32 %854)
  %856 = trunc i32 %855 to i8
  %857 = and i8 %856, 1
  %858 = xor i8 %857, 1
  store i8 %858, i8* %21, align 1
  %859 = xor i32 %848, %847
  %860 = lshr i32 %859, 4
  %861 = trunc i32 %860 to i8
  %862 = and i8 %861, 1
  store i8 %862, i8* %26, align 1
  %863 = zext i1 %851 to i8
  store i8 %863, i8* %29, align 1
  %864 = lshr i32 %848, 31
  %865 = trunc i32 %864 to i8
  store i8 %865, i8* %32, align 1
  %866 = lshr i32 %847, 31
  %867 = xor i32 %864, %866
  %868 = add nuw nsw i32 %867, %864
  %869 = icmp eq i32 %868, 2
  %870 = zext i1 %869 to i8
  store i8 %870, i8* %38, align 1
  %871 = add i64 %844, 15
  store i64 %871, i64* %3, align 8
  store i32 %848, i32* %846, align 4
  %872 = load i64, i64* %3, align 8
  %873 = add i64 %872, 112
  br label %block_.L_46e405

block_.L_46e39a:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit705
  store <4 x i32> zeroinitializer, <4 x i32>* %171, align 1
  %874 = load i64, i64* %RBP.i, align 8
  %875 = add i64 %874, -1644
  %876 = add i64 %768, 10
  store i64 %876, i64* %3, align 8
  %877 = inttoptr i64 %875 to i32*
  %878 = load i32, i32* %877, align 4
  %879 = sext i32 %878 to i64
  store i64 %879, i64* %RAX.i656, align 8
  %880 = shl nsw i64 %879, 2
  %881 = add i64 %874, -1616
  %882 = add i64 %881, %880
  %883 = add i64 %768, 19
  store i64 %883, i64* %3, align 8
  %884 = inttoptr i64 %882 to i32*
  %885 = load i32, i32* %884, align 4
  %886 = sitofp i32 %885 to double
  store double %886, double* %149, align 1
  %887 = add i64 %768, 23
  store i64 %887, i64* %3, align 8
  %888 = load double, double* %150, align 1
  %889 = fcmp uno double %888, %886
  br i1 %889, label %890, label %900

; <label>:890:                                    ; preds = %block_.L_46e39a
  %891 = fadd double %886, %888
  %892 = bitcast double %891 to i64
  %893 = and i64 %892, 9221120237041090560
  %894 = icmp eq i64 %893, 9218868437227405312
  %895 = and i64 %892, 2251799813685247
  %896 = icmp ne i64 %895, 0
  %897 = and i1 %894, %896
  br i1 %897, label %898, label %906

; <label>:898:                                    ; preds = %890
  %899 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %887, %struct.Memory* %765)
  %.pre78 = load i64, i64* %3, align 8
  %.pre79 = load i8, i8* %14, align 1
  %.pre80 = load i8, i8* %29, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit654

; <label>:900:                                    ; preds = %block_.L_46e39a
  %901 = fcmp ogt double %888, %886
  br i1 %901, label %906, label %902

; <label>:902:                                    ; preds = %900
  %903 = fcmp olt double %888, %886
  br i1 %903, label %906, label %904

; <label>:904:                                    ; preds = %902
  %905 = fcmp oeq double %888, %886
  br i1 %905, label %906, label %910

; <label>:906:                                    ; preds = %904, %902, %900, %890
  %907 = phi i8 [ 0, %900 ], [ 0, %902 ], [ 1, %904 ], [ 1, %890 ]
  %908 = phi i8 [ 0, %900 ], [ 0, %902 ], [ 0, %904 ], [ 1, %890 ]
  %909 = phi i8 [ 0, %900 ], [ 1, %902 ], [ 0, %904 ], [ 1, %890 ]
  store i8 %907, i8* %29, align 1
  store i8 %908, i8* %21, align 1
  store i8 %909, i8* %14, align 1
  br label %910

; <label>:910:                                    ; preds = %906, %904
  %911 = phi i8 [ %907, %906 ], [ %762, %904 ]
  %912 = phi i8 [ %909, %906 ], [ %763, %904 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit654

routine_ucomisd__xmm1___xmm0.exit654:             ; preds = %910, %898
  %913 = phi i8 [ %.pre80, %898 ], [ %911, %910 ]
  %914 = phi i8 [ %.pre79, %898 ], [ %912, %910 ]
  %915 = phi i64 [ %.pre78, %898 ], [ %887, %910 ]
  %916 = phi %struct.Memory* [ %899, %898 ], [ %765, %910 ]
  %917 = or i8 %913, %914
  %918 = icmp ne i8 %917, 0
  %.v111 = select i1 %918, i64 79, i64 6
  %919 = add i64 %915, %.v111
  store i64 %919, i64* %3, align 8
  br i1 %918, label %block_.L_46e400, label %block_46e3b7

block_46e3b7:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit654
  %920 = add i64 %919, ptrtoint (%G_0x74d4d__rip__type* @G_0x74d4d__rip_ to i64)
  %921 = add i64 %919, 8
  store i64 %921, i64* %3, align 8
  %922 = inttoptr i64 %920 to i32*
  %923 = load i32, i32* %922, align 4
  store i32 %923, i32* %46, align 1
  store float 0.000000e+00, float* %152, align 1
  store float 0.000000e+00, float* %153, align 1
  store float 0.000000e+00, float* %154, align 1
  %924 = load <2 x i32>, <2 x i32>* %155, align 1
  %925 = load <2 x i32>, <2 x i32>* %156, align 1
  %926 = extractelement <2 x i32> %924, i32 0
  store i32 %926, i32* %157, align 1
  %927 = extractelement <2 x i32> %924, i32 1
  store i32 %927, i32* %159, align 1
  %928 = extractelement <2 x i32> %925, i32 0
  store i32 %928, i32* %161, align 1
  %929 = extractelement <2 x i32> %925, i32 1
  store i32 %929, i32* %163, align 1
  %930 = load i64, i64* %RBP.i, align 8
  %931 = add i64 %930, -1624
  %932 = add i64 %919, 19
  store i64 %932, i64* %3, align 8
  %933 = load <2 x float>, <2 x float>* %164, align 1
  %934 = load <2 x i32>, <2 x i32>* %165, align 1
  %935 = inttoptr i64 %931 to float*
  %936 = load float, float* %935, align 4
  %937 = extractelement <2 x float> %933, i32 0
  %938 = fadd float %937, %936
  store float %938, float* %166, align 1
  %939 = bitcast <2 x float> %933 to <2 x i32>
  %940 = extractelement <2 x i32> %939, i32 1
  store i32 %940, i32* %159, align 1
  %941 = extractelement <2 x i32> %934, i32 0
  store i32 %941, i32* %161, align 1
  %942 = extractelement <2 x i32> %934, i32 1
  store i32 %942, i32* %163, align 1
  %943 = add i64 %919, 27
  store i64 %943, i64* %3, align 8
  %944 = load <2 x float>, <2 x float>* %164, align 1
  %945 = extractelement <2 x float> %944, i32 0
  store float %945, float* %935, align 4
  %946 = load i64, i64* %RBP.i, align 8
  %947 = add i64 %946, -1632
  %948 = load i64, i64* %3, align 8
  %949 = add i64 %948, 8
  store i64 %949, i64* %3, align 8
  %950 = load <2 x float>, <2 x float>* %66, align 1
  %951 = load <2 x i32>, <2 x i32>* %156, align 1
  %952 = inttoptr i64 %947 to float*
  %953 = load float, float* %952, align 4
  %954 = extractelement <2 x float> %950, i32 0
  %955 = fadd float %954, %953
  store float %955, float* %151, align 1
  %956 = bitcast <2 x float> %950 to <2 x i32>
  %957 = extractelement <2 x i32> %956, i32 1
  store i32 %957, i32* %48, align 1
  %958 = extractelement <2 x i32> %951, i32 0
  store i32 %958, i32* %49, align 1
  %959 = extractelement <2 x i32> %951, i32 1
  store i32 %959, i32* %51, align 1
  %960 = add i64 %948, 16
  store i64 %960, i64* %3, align 8
  %961 = load <2 x float>, <2 x float>* %66, align 1
  %962 = extractelement <2 x float> %961, i32 0
  store float %962, float* %952, align 4
  %963 = load i64, i64* %RBP.i, align 8
  %964 = add i64 %963, -1660
  %965 = load i64, i64* %3, align 8
  %966 = add i64 %965, 6
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %964 to i32*
  %968 = load i32, i32* %967, align 4
  %969 = add i32 %968, 1
  %970 = zext i32 %969 to i64
  store i64 %970, i64* %RAX.i656, align 8
  %971 = icmp eq i32 %968, -1
  %972 = icmp eq i32 %969, 0
  %973 = or i1 %971, %972
  %974 = zext i1 %973 to i8
  store i8 %974, i8* %14, align 1
  %975 = and i32 %969, 255
  %976 = tail call i32 @llvm.ctpop.i32(i32 %975)
  %977 = trunc i32 %976 to i8
  %978 = and i8 %977, 1
  %979 = xor i8 %978, 1
  store i8 %979, i8* %21, align 1
  %980 = xor i32 %969, %968
  %981 = lshr i32 %980, 4
  %982 = trunc i32 %981 to i8
  %983 = and i8 %982, 1
  store i8 %983, i8* %26, align 1
  %984 = zext i1 %972 to i8
  store i8 %984, i8* %29, align 1
  %985 = lshr i32 %969, 31
  %986 = trunc i32 %985 to i8
  store i8 %986, i8* %32, align 1
  %987 = lshr i32 %968, 31
  %988 = xor i32 %985, %987
  %989 = add nuw nsw i32 %988, %985
  %990 = icmp eq i32 %989, 2
  %991 = zext i1 %990 to i8
  store i8 %991, i8* %38, align 1
  %992 = add i64 %965, 15
  store i64 %992, i64* %3, align 8
  store i32 %969, i32* %967, align 4
  %993 = load i64, i64* %RBP.i, align 8
  %994 = add i64 %993, -1672
  %995 = load i64, i64* %3, align 8
  %996 = add i64 %995, 6
  store i64 %996, i64* %3, align 8
  %997 = inttoptr i64 %994 to i32*
  %998 = load i32, i32* %997, align 4
  %999 = add i32 %998, 1
  %1000 = zext i32 %999 to i64
  store i64 %1000, i64* %RAX.i656, align 8
  %1001 = icmp eq i32 %998, -1
  %1002 = icmp eq i32 %999, 0
  %1003 = or i1 %1001, %1002
  %1004 = zext i1 %1003 to i8
  store i8 %1004, i8* %14, align 1
  %1005 = and i32 %999, 255
  %1006 = tail call i32 @llvm.ctpop.i32(i32 %1005)
  %1007 = trunc i32 %1006 to i8
  %1008 = and i8 %1007, 1
  %1009 = xor i8 %1008, 1
  store i8 %1009, i8* %21, align 1
  %1010 = xor i32 %999, %998
  %1011 = lshr i32 %1010, 4
  %1012 = trunc i32 %1011 to i8
  %1013 = and i8 %1012, 1
  store i8 %1013, i8* %26, align 1
  %1014 = zext i1 %1002 to i8
  store i8 %1014, i8* %29, align 1
  %1015 = lshr i32 %999, 31
  %1016 = trunc i32 %1015 to i8
  store i8 %1016, i8* %32, align 1
  %1017 = lshr i32 %998, 31
  %1018 = xor i32 %1015, %1017
  %1019 = add nuw nsw i32 %1018, %1015
  %1020 = icmp eq i32 %1019, 2
  %1021 = zext i1 %1020 to i8
  store i8 %1021, i8* %38, align 1
  %1022 = add i64 %995, 15
  store i64 %1022, i64* %3, align 8
  store i32 %999, i32* %997, align 4
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_46e400

block_.L_46e400:                                  ; preds = %block_46e3b7, %routine_ucomisd__xmm1___xmm0.exit654
  %1023 = phi i64 [ %.pre81, %block_46e3b7 ], [ %919, %routine_ucomisd__xmm1___xmm0.exit654 ]
  %1024 = add i64 %1023, 5
  store i64 %1024, i64* %3, align 8
  br label %block_.L_46e405

block_.L_46e405:                                  ; preds = %block_.L_46e400, %block_46e34c
  %storemerge29 = phi i64 [ %873, %block_46e34c ], [ %1024, %block_.L_46e400 ]
  %MEMORY.6 = phi %struct.Memory* [ %765, %block_46e34c ], [ %916, %block_.L_46e400 ]
  %1025 = add i64 %storemerge29, 5
  store i64 %1025, i64* %3, align 8
  br label %block_.L_46e40a

block_.L_46e40a:                                  ; preds = %block_.L_46e405, %block_.L_46e32a
  %storemerge28 = phi i64 [ %725, %block_.L_46e32a ], [ %1025, %block_.L_46e405 ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.2, %block_.L_46e32a ], [ %MEMORY.6, %block_.L_46e405 ]
  %1026 = add i64 %storemerge28, 5
  store i64 %1026, i64* %3, align 8
  br label %block_.L_46e40f

block_.L_46e40f:                                  ; preds = %block_.L_46e40a, %block_.L_46e27a
  %storemerge = phi i64 [ %525, %block_.L_46e27a ], [ %1026, %block_.L_46e40a ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.2, %block_.L_46e27a ], [ %MEMORY.7, %block_.L_46e40a ]
  %1027 = load i64, i64* %RBP.i, align 8
  %1028 = add i64 %1027, -1640
  %1029 = add i64 %storemerge, 11
  store i64 %1029, i64* %3, align 8
  %1030 = inttoptr i64 %1028 to i32*
  %1031 = load i32, i32* %1030, align 4
  %1032 = add i32 %1031, 1
  %1033 = zext i32 %1032 to i64
  store i64 %1033, i64* %RAX.i656, align 8
  %1034 = icmp eq i32 %1031, -1
  %1035 = icmp eq i32 %1032, 0
  %1036 = or i1 %1034, %1035
  %1037 = zext i1 %1036 to i8
  store i8 %1037, i8* %14, align 1
  %1038 = and i32 %1032, 255
  %1039 = tail call i32 @llvm.ctpop.i32(i32 %1038)
  %1040 = trunc i32 %1039 to i8
  %1041 = and i8 %1040, 1
  %1042 = xor i8 %1041, 1
  store i8 %1042, i8* %21, align 1
  %1043 = xor i32 %1032, %1031
  %1044 = lshr i32 %1043, 4
  %1045 = trunc i32 %1044 to i8
  %1046 = and i8 %1045, 1
  store i8 %1046, i8* %26, align 1
  %1047 = zext i1 %1035 to i8
  store i8 %1047, i8* %29, align 1
  %1048 = lshr i32 %1032, 31
  %1049 = trunc i32 %1048 to i8
  store i8 %1049, i8* %32, align 1
  %1050 = lshr i32 %1031, 31
  %1051 = xor i32 %1048, %1050
  %1052 = add nuw nsw i32 %1051, %1048
  %1053 = icmp eq i32 %1052, 2
  %1054 = zext i1 %1053 to i8
  store i8 %1054, i8* %38, align 1
  %1055 = add i64 %storemerge, 20
  store i64 %1055, i64* %3, align 8
  store i32 %1032, i32* %1030, align 4
  %1056 = load i64, i64* %3, align 8
  %1057 = add i64 %1056, -637
  store i64 %1057, i64* %3, align 8
  br label %block_.L_46e1a6

block_.L_46e428:                                  ; preds = %block_.L_46e1a6
  %1058 = load i32, i32* bitcast (%G_0xab0fc0_type* @G_0xab0fc0 to i32*), align 8
  %1059 = icmp eq i32 %1058, 0
  %.v106 = select i1 %1059, i64 95, i64 14
  %1060 = add i64 %264, %.v106
  %1061 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1062 = and i32 %1061, 65536
  %1063 = zext i32 %1062 to i64
  store i64 %1063, i64* %RAX.i656, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit86 = lshr exact i32 %1062, 16
  %1064 = trunc i32 %.lobit86 to i8
  %1065 = xor i8 %1064, 1
  store i8 %1065, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1066 = icmp eq i8 %1065, 0
  %.v107 = select i1 %1066, i64 26, i64 21
  %1067 = add i64 %1060, %.v107
  store i64 %1067, i64* %3, align 8
  br i1 %1059, label %block_.L_46e487, label %block_46e436

block_46e436:                                     ; preds = %block_.L_46e428
  br i1 %1066, label %block_.L_46e450, label %block_46e44b

block_46e44b:                                     ; preds = %block_46e436
  %1068 = add i64 %1067, 55
  store i64 %1068, i64* %3, align 8
  br label %block_.L_46e482

block_.L_46e450:                                  ; preds = %block_46e436
  store i64 ptrtoint (%G__0x58058f_type* @G__0x58058f to i64), i64* %RDI.i937, align 8
  %1069 = zext i32 %237 to i64
  store i64 %1069, i64* %RAX.i656, align 8
  %1070 = add i64 %231, -1636
  %1071 = add i64 %1067, 23
  store i64 %1071, i64* %3, align 8
  %1072 = inttoptr i64 %1070 to i32*
  %1073 = load i32, i32* %1072, align 4
  %1074 = sub i32 %237, %1073
  %1075 = zext i32 %1074 to i64
  store i64 %1075, i64* %RAX.i656, align 8
  %1076 = icmp ult i32 %237, %1073
  %1077 = zext i1 %1076 to i8
  store i8 %1077, i8* %14, align 1
  %1078 = and i32 %1074, 255
  %1079 = tail call i32 @llvm.ctpop.i32(i32 %1078)
  %1080 = trunc i32 %1079 to i8
  %1081 = and i8 %1080, 1
  %1082 = xor i8 %1081, 1
  store i8 %1082, i8* %21, align 1
  %1083 = xor i32 %1073, %237
  %1084 = xor i32 %1083, %1074
  %1085 = lshr i32 %1084, 4
  %1086 = trunc i32 %1085 to i8
  %1087 = and i8 %1086, 1
  store i8 %1087, i8* %26, align 1
  %1088 = icmp eq i32 %1074, 0
  %1089 = zext i1 %1088 to i8
  store i8 %1089, i8* %29, align 1
  %1090 = lshr i32 %1074, 31
  %1091 = trunc i32 %1090 to i8
  store i8 %1091, i8* %32, align 1
  %1092 = lshr i32 %1073, 31
  %1093 = xor i32 %1092, %256
  %1094 = xor i32 %1090, %256
  %1095 = add nuw nsw i32 %1094, %1093
  %1096 = icmp eq i32 %1095, 2
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %38, align 1
  %1098 = add i64 %231, -1668
  %1099 = add i64 %1067, 29
  store i64 %1099, i64* %3, align 8
  %1100 = inttoptr i64 %1098 to i32*
  %1101 = load i32, i32* %1100, align 4
  %1102 = zext i32 %1101 to i64
  store i64 %1102, i64* %RDX.i946, align 8
  %1103 = add i64 %231, -1672
  %1104 = add i64 %1067, 35
  store i64 %1104, i64* %3, align 8
  %1105 = inttoptr i64 %1103 to i32*
  %1106 = load i32, i32* %1105, align 4
  %1107 = zext i32 %1106 to i64
  store i64 %1107, i64* %RCX.i707, align 8
  store i64 %1075, i64* %RSI.i934, align 8
  store i8 0, i8* %AL.i546, align 1
  %1108 = add i64 %1067, -116384
  %1109 = add i64 %1067, 44
  %1110 = load i64, i64* %6, align 8
  %1111 = add i64 %1110, -8
  %1112 = inttoptr i64 %1111 to i64*
  store i64 %1109, i64* %1112, align 8
  store i64 %1111, i64* %6, align 8
  store i64 %1108, i64* %3, align 8
  %call2_46e477 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1108, %struct.Memory* %MEMORY.2)
  %1113 = load i64, i64* %RBP.i, align 8
  %1114 = add i64 %1113, -1696
  %1115 = load i32, i32* %EAX.i919, align 4
  %1116 = load i64, i64* %3, align 8
  %1117 = add i64 %1116, 6
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1114 to i32*
  store i32 %1115, i32* %1118, align 4
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_46e482

block_.L_46e482:                                  ; preds = %block_.L_46e450, %block_46e44b
  %1119 = phi i64 [ %.pre71, %block_.L_46e450 ], [ %1068, %block_46e44b ]
  %MEMORY.9 = phi %struct.Memory* [ %call2_46e477, %block_.L_46e450 ], [ %MEMORY.2, %block_46e44b ]
  %1120 = add i64 %1119, 86
  br label %block_.L_46e4d8

block_.L_46e487:                                  ; preds = %block_.L_46e428
  br i1 %1066, label %block_.L_46e4a1, label %block_46e49c

block_46e49c:                                     ; preds = %block_.L_46e487
  %1121 = add i64 %1067, 55
  store i64 %1121, i64* %3, align 8
  br label %block_.L_46e4d3

block_.L_46e4a1:                                  ; preds = %block_.L_46e487
  store i64 ptrtoint (%G__0x5805b3_type* @G__0x5805b3 to i64), i64* %RDI.i937, align 8
  %1122 = zext i32 %237 to i64
  store i64 %1122, i64* %RAX.i656, align 8
  %1123 = add i64 %231, -1636
  %1124 = add i64 %1067, 23
  store i64 %1124, i64* %3, align 8
  %1125 = inttoptr i64 %1123 to i32*
  %1126 = load i32, i32* %1125, align 4
  %1127 = sub i32 %237, %1126
  %1128 = zext i32 %1127 to i64
  store i64 %1128, i64* %RAX.i656, align 8
  %1129 = icmp ult i32 %237, %1126
  %1130 = zext i1 %1129 to i8
  store i8 %1130, i8* %14, align 1
  %1131 = and i32 %1127, 255
  %1132 = tail call i32 @llvm.ctpop.i32(i32 %1131)
  %1133 = trunc i32 %1132 to i8
  %1134 = and i8 %1133, 1
  %1135 = xor i8 %1134, 1
  store i8 %1135, i8* %21, align 1
  %1136 = xor i32 %1126, %237
  %1137 = xor i32 %1136, %1127
  %1138 = lshr i32 %1137, 4
  %1139 = trunc i32 %1138 to i8
  %1140 = and i8 %1139, 1
  store i8 %1140, i8* %26, align 1
  %1141 = icmp eq i32 %1127, 0
  %1142 = zext i1 %1141 to i8
  store i8 %1142, i8* %29, align 1
  %1143 = lshr i32 %1127, 31
  %1144 = trunc i32 %1143 to i8
  store i8 %1144, i8* %32, align 1
  %1145 = lshr i32 %1126, 31
  %1146 = xor i32 %1145, %256
  %1147 = xor i32 %1143, %256
  %1148 = add nuw nsw i32 %1147, %1146
  %1149 = icmp eq i32 %1148, 2
  %1150 = zext i1 %1149 to i8
  store i8 %1150, i8* %38, align 1
  %1151 = add i64 %231, -1664
  %1152 = add i64 %1067, 29
  store i64 %1152, i64* %3, align 8
  %1153 = inttoptr i64 %1151 to i32*
  %1154 = load i32, i32* %1153, align 4
  %1155 = zext i32 %1154 to i64
  store i64 %1155, i64* %RDX.i946, align 8
  %1156 = add i64 %231, -1660
  %1157 = add i64 %1067, 35
  store i64 %1157, i64* %3, align 8
  %1158 = inttoptr i64 %1156 to i32*
  %1159 = load i32, i32* %1158, align 4
  %1160 = zext i32 %1159 to i64
  store i64 %1160, i64* %RCX.i707, align 8
  store i64 %1128, i64* %RSI.i934, align 8
  store i8 0, i8* %AL.i546, align 1
  %1161 = add i64 %1067, -116465
  %1162 = add i64 %1067, 44
  %1163 = load i64, i64* %6, align 8
  %1164 = add i64 %1163, -8
  %1165 = inttoptr i64 %1164 to i64*
  store i64 %1162, i64* %1165, align 8
  store i64 %1164, i64* %6, align 8
  store i64 %1161, i64* %3, align 8
  %call2_46e4c8 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1161, %struct.Memory* %MEMORY.2)
  %1166 = load i64, i64* %RBP.i, align 8
  %1167 = add i64 %1166, -1700
  %1168 = load i32, i32* %EAX.i919, align 4
  %1169 = load i64, i64* %3, align 8
  %1170 = add i64 %1169, 6
  store i64 %1170, i64* %3, align 8
  %1171 = inttoptr i64 %1167 to i32*
  store i32 %1168, i32* %1171, align 4
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_46e4d3

block_.L_46e4d3:                                  ; preds = %block_.L_46e4a1, %block_46e49c
  %1172 = phi i64 [ %.pre72, %block_.L_46e4a1 ], [ %1121, %block_46e49c ]
  %MEMORY.10 = phi %struct.Memory* [ %call2_46e4c8, %block_.L_46e4a1 ], [ %MEMORY.2, %block_46e49c ]
  %1173 = add i64 %1172, 5
  store i64 %1173, i64* %3, align 8
  br label %block_.L_46e4d8

block_.L_46e4d8:                                  ; preds = %block_.L_46e4d3, %block_.L_46e482
  %storemerge31 = phi i64 [ %1120, %block_.L_46e482 ], [ %1173, %block_.L_46e4d3 ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.9, %block_.L_46e482 ], [ %MEMORY.10, %block_.L_46e4d3 ]
  %1174 = load i64, i64* %RBP.i, align 8
  %1175 = add i64 %1174, -1636
  %1176 = add i64 %storemerge31, 11
  store i64 %1176, i64* %3, align 8
  %1177 = inttoptr i64 %1175 to i32*
  %1178 = load i32, i32* %1177, align 4
  %1179 = add i32 %1178, 1
  %1180 = zext i32 %1179 to i64
  store i64 %1180, i64* %RAX.i656, align 8
  %1181 = icmp eq i32 %1178, -1
  %1182 = icmp eq i32 %1179, 0
  %1183 = or i1 %1181, %1182
  %1184 = zext i1 %1183 to i8
  store i8 %1184, i8* %14, align 1
  %1185 = and i32 %1179, 255
  %1186 = tail call i32 @llvm.ctpop.i32(i32 %1185)
  %1187 = trunc i32 %1186 to i8
  %1188 = and i8 %1187, 1
  %1189 = xor i8 %1188, 1
  store i8 %1189, i8* %21, align 1
  %1190 = xor i32 %1179, %1178
  %1191 = lshr i32 %1190, 4
  %1192 = trunc i32 %1191 to i8
  %1193 = and i8 %1192, 1
  store i8 %1193, i8* %26, align 1
  %1194 = zext i1 %1182 to i8
  store i8 %1194, i8* %29, align 1
  %1195 = lshr i32 %1179, 31
  %1196 = trunc i32 %1195 to i8
  store i8 %1196, i8* %32, align 1
  %1197 = lshr i32 %1178, 31
  %1198 = xor i32 %1195, %1197
  %1199 = add nuw nsw i32 %1198, %1195
  %1200 = icmp eq i32 %1199, 2
  %1201 = zext i1 %1200 to i8
  store i8 %1201, i8* %38, align 1
  %1202 = add i64 %storemerge31, 20
  store i64 %1202, i64* %3, align 8
  store i32 %1179, i32* %1177, align 4
  %1203 = load i64, i64* %3, align 8
  %1204 = add i64 %1203, -907
  store i64 %1204, i64* %3, align 8
  br label %block_.L_46e161

block_.L_46e4f1:                                  ; preds = %block_.L_46e161
  %1205 = load i32, i32* bitcast (%G_0xab0fc0_type* @G_0xab0fc0 to i32*), align 8
  store i8 0, i8* %14, align 1
  %1206 = and i32 %1205, 255
  %1207 = tail call i32 @llvm.ctpop.i32(i32 %1206)
  %1208 = trunc i32 %1207 to i8
  %1209 = and i8 %1208, 1
  %1210 = xor i8 %1209, 1
  store i8 %1210, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1211 = icmp eq i32 %1205, 0
  %1212 = zext i1 %1211 to i8
  store i8 %1212, i8* %29, align 1
  %1213 = lshr i32 %1205, 31
  %1214 = trunc i32 %1213 to i8
  store i8 %1214, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v88 = select i1 %1211, i64 52, i64 14
  %1215 = add i64 %206, %.v88
  store i64 %1215, i64* %3, align 8
  br i1 %1211, label %block_.L_46e525, label %block_46e4ff

block_46e4ff:                                     ; preds = %block_.L_46e4f1
  %1216 = add i64 %173, -1628
  %1217 = add i64 %1215, 8
  store i64 %1217, i64* %3, align 8
  %1218 = inttoptr i64 %1216 to i32*
  %1219 = load i32, i32* %1218, align 4
  store i32 %1219, i32* %46, align 1
  store float 0.000000e+00, float* %152, align 1
  store float 0.000000e+00, float* %153, align 1
  store float 0.000000e+00, float* %154, align 1
  %1220 = add i64 %173, -1632
  %1221 = add i64 %1215, 16
  store i64 %1221, i64* %3, align 8
  %1222 = load <2 x float>, <2 x float>* %66, align 1
  %1223 = load <2 x i32>, <2 x i32>* %156, align 1
  %1224 = inttoptr i64 %1220 to float*
  %1225 = load float, float* %1224, align 4
  %1226 = extractelement <2 x float> %1222, i32 0
  %1227 = fsub float %1226, %1225
  store float %1227, float* %151, align 1
  %1228 = bitcast <2 x float> %1222 to <2 x i32>
  %1229 = extractelement <2 x i32> %1228, i32 1
  store i32 %1229, i32* %48, align 1
  %1230 = extractelement <2 x i32> %1223, i32 0
  store i32 %1230, i32* %49, align 1
  %1231 = extractelement <2 x i32> %1223, i32 1
  store i32 %1231, i32* %51, align 1
  %1232 = load <2 x float>, <2 x float>* %66, align 1
  %1233 = load <2 x i32>, <2 x i32>* %156, align 1
  %1234 = load float, float* bitcast (%G_0xb454f8_type* @G_0xb454f8 to float*), align 8
  %1235 = extractelement <2 x float> %1232, i32 0
  %1236 = fadd float %1235, %1234
  store float %1236, float* %151, align 1
  %1237 = bitcast <2 x float> %1232 to <2 x i32>
  %1238 = extractelement <2 x i32> %1237, i32 1
  store i32 %1238, i32* %48, align 1
  %1239 = extractelement <2 x i32> %1233, i32 0
  store i32 %1239, i32* %49, align 1
  %1240 = extractelement <2 x i32> %1233, i32 1
  store i32 %1240, i32* %51, align 1
  %1241 = add i64 %173, -1648
  %1242 = add i64 %1215, 33
  store i64 %1242, i64* %3, align 8
  %1243 = load <2 x float>, <2 x float>* %66, align 1
  %1244 = extractelement <2 x float> %1243, i32 0
  %1245 = inttoptr i64 %1241 to float*
  store float %1244, float* %1245, align 4
  %1246 = load i64, i64* %3, align 8
  %1247 = add i64 %1246, 136
  store i64 %1247, i64* %3, align 8
  br label %block_.L_46e5a8

block_.L_46e525:                                  ; preds = %block_.L_46e4f1
  %1248 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1249 = and i32 %1248, 65536
  %1250 = zext i32 %1249 to i64
  store i64 %1250, i64* %RAX.i656, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit85 = lshr exact i32 %1249, 16
  %1251 = trunc i32 %.lobit85 to i8
  %1252 = xor i8 %1251, 1
  store i8 %1252, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %1253 = icmp eq i8 %1252, 0
  %.v104 = select i1 %1253, i64 26, i64 21
  %1254 = add i64 %1215, %.v104
  store i64 %1254, i64* %3, align 8
  br i1 %1253, label %block_.L_46e53f, label %block_46e53a

block_46e53a:                                     ; preds = %block_.L_46e525
  %1255 = add i64 %1254, 51
  store i64 %1255, i64* %3, align 8
  br label %block_.L_46e56d

block_.L_46e53f:                                  ; preds = %block_.L_46e525
  store i64 ptrtoint (%G__0x5805dc_type* @G__0x5805dc to i64), i64* %RDI.i937, align 8
  %1256 = load i32, i32* bitcast (%G_0xb8c040_type* @G_0xb8c040 to i32*), align 8
  %1257 = zext i32 %1256 to i64
  store i64 %1257, i64* %RSI.i934, align 8
  %1258 = load i32, i32* bitcast (%G_0xb38cb0_type* @G_0xb38cb0 to i32*), align 8
  %1259 = zext i32 %1258 to i64
  store i64 %1259, i64* %RDX.i946, align 8
  %1260 = load float, float* bitcast (%G_0xb454f8_type* @G_0xb454f8 to float*), align 8
  %1261 = fpext float %1260 to double
  store double %1261, double* %150, align 1
  store i8 1, i8* %AL.i546, align 1
  %1262 = add i64 %1254, -116623
  %1263 = add i64 %1254, 40
  %1264 = load i64, i64* %6, align 8
  %1265 = add i64 %1264, -8
  %1266 = inttoptr i64 %1265 to i64*
  store i64 %1263, i64* %1266, align 8
  store i64 %1265, i64* %6, align 8
  store i64 %1262, i64* %3, align 8
  %call2_46e562 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1262, %struct.Memory* %MEMORY.1)
  %1267 = load i64, i64* %RBP.i, align 8
  %1268 = add i64 %1267, -1704
  %1269 = load i32, i32* %EAX.i919, align 4
  %1270 = load i64, i64* %3, align 8
  %1271 = add i64 %1270, 6
  store i64 %1271, i64* %3, align 8
  %1272 = inttoptr i64 %1268 to i32*
  store i32 %1269, i32* %1272, align 4
  %.pre46 = load i64, i64* %RBP.i, align 8
  %.pre47 = load i64, i64* %3, align 8
  br label %block_.L_46e56d

block_.L_46e56d:                                  ; preds = %block_.L_46e53f, %block_46e53a
  %1273 = phi i64 [ %.pre47, %block_.L_46e53f ], [ %1255, %block_46e53a ]
  %1274 = phi i64 [ %.pre46, %block_.L_46e53f ], [ %173, %block_46e53a ]
  %MEMORY.12 = phi %struct.Memory* [ %call2_46e562, %block_.L_46e53f ], [ %MEMORY.1, %block_46e53a ]
  %1275 = add i64 %1274, -1620
  %1276 = add i64 %1273, 8
  store i64 %1276, i64* %3, align 8
  %1277 = inttoptr i64 %1275 to i32*
  %1278 = load i32, i32* %1277, align 4
  store i32 %1278, i32* %46, align 1
  store float 0.000000e+00, float* %152, align 1
  store float 0.000000e+00, float* %153, align 1
  store float 0.000000e+00, float* %154, align 1
  %1279 = bitcast %union.VectorReg* %147 to <2 x i32>*
  %1280 = load <2 x i32>, <2 x i32>* %1279, align 1
  %1281 = load <2 x i32>, <2 x i32>* %165, align 1
  %1282 = load i32, i32* bitcast (%G_0xb8c040_type* @G_0xb8c040 to i32*), align 8
  %1283 = sitofp i32 %1282 to float
  store float %1283, float* %166, align 1
  %1284 = extractelement <2 x i32> %1280, i32 1
  store i32 %1284, i32* %159, align 1
  %1285 = extractelement <2 x i32> %1281, i32 0
  store i32 %1285, i32* %161, align 1
  %1286 = extractelement <2 x i32> %1281, i32 1
  store i32 %1286, i32* %163, align 1
  %1287 = load <2 x float>, <2 x float>* %66, align 1
  %1288 = load <2 x i32>, <2 x i32>* %156, align 1
  %1289 = load <2 x float>, <2 x float>* %164, align 1
  %1290 = extractelement <2 x float> %1287, i32 0
  %1291 = extractelement <2 x float> %1289, i32 0
  %1292 = fadd float %1290, %1291
  store float %1292, float* %151, align 1
  %1293 = bitcast <2 x float> %1287 to <2 x i32>
  %1294 = extractelement <2 x i32> %1293, i32 1
  store i32 %1294, i32* %48, align 1
  %1295 = extractelement <2 x i32> %1288, i32 0
  store i32 %1295, i32* %49, align 1
  %1296 = extractelement <2 x i32> %1288, i32 1
  store i32 %1296, i32* %51, align 1
  %1297 = add i64 %1274, -1624
  %1298 = add i64 %1273, 29
  store i64 %1298, i64* %3, align 8
  %1299 = load <2 x float>, <2 x float>* %66, align 1
  %1300 = load <2 x i32>, <2 x i32>* %156, align 1
  %1301 = inttoptr i64 %1297 to float*
  %1302 = load float, float* %1301, align 4
  %1303 = extractelement <2 x float> %1299, i32 0
  %1304 = fsub float %1303, %1302
  store float %1304, float* %151, align 1
  %1305 = bitcast <2 x float> %1299 to <2 x i32>
  %1306 = extractelement <2 x i32> %1305, i32 1
  store i32 %1306, i32* %48, align 1
  %1307 = extractelement <2 x i32> %1300, i32 0
  store i32 %1307, i32* %49, align 1
  %1308 = extractelement <2 x i32> %1300, i32 1
  store i32 %1308, i32* %51, align 1
  %1309 = bitcast <2 x float> %1289 to <2 x i32>
  %1310 = load <2 x i32>, <2 x i32>* %165, align 1
  %1311 = load i32, i32* bitcast (%G_0xb38cb0_type* @G_0xb38cb0 to i32*), align 8
  %1312 = sitofp i32 %1311 to float
  store float %1312, float* %166, align 1
  %1313 = extractelement <2 x i32> %1309, i32 1
  store i32 %1313, i32* %159, align 1
  %1314 = extractelement <2 x i32> %1310, i32 0
  store i32 %1314, i32* %161, align 1
  %1315 = extractelement <2 x i32> %1310, i32 1
  store i32 %1315, i32* %163, align 1
  %1316 = load <2 x float>, <2 x float>* %66, align 1
  %1317 = load <2 x i32>, <2 x i32>* %156, align 1
  %1318 = load <2 x float>, <2 x float>* %164, align 1
  %1319 = extractelement <2 x float> %1316, i32 0
  %1320 = extractelement <2 x float> %1318, i32 0
  %1321 = fsub float %1319, %1320
  store float %1321, float* %151, align 1
  %1322 = bitcast <2 x float> %1316 to <2 x i32>
  %1323 = extractelement <2 x i32> %1322, i32 1
  store i32 %1323, i32* %48, align 1
  %1324 = extractelement <2 x i32> %1317, i32 0
  store i32 %1324, i32* %49, align 1
  %1325 = extractelement <2 x i32> %1317, i32 1
  store i32 %1325, i32* %51, align 1
  %1326 = load <2 x float>, <2 x float>* %66, align 1
  %1327 = load <2 x i32>, <2 x i32>* %156, align 1
  %1328 = load float, float* bitcast (%G_0xb454f8_type* @G_0xb454f8 to float*), align 8
  %1329 = extractelement <2 x float> %1326, i32 0
  %1330 = fadd float %1329, %1328
  store float %1330, float* %151, align 1
  %1331 = bitcast <2 x float> %1326 to <2 x i32>
  %1332 = extractelement <2 x i32> %1331, i32 1
  store i32 %1332, i32* %48, align 1
  %1333 = extractelement <2 x i32> %1327, i32 0
  store i32 %1333, i32* %49, align 1
  %1334 = extractelement <2 x i32> %1327, i32 1
  store i32 %1334, i32* %51, align 1
  %1335 = load i64, i64* %RBP.i, align 8
  %1336 = add i64 %1335, -1648
  %1337 = add i64 %1273, 59
  store i64 %1337, i64* %3, align 8
  %1338 = load <2 x float>, <2 x float>* %66, align 1
  %1339 = extractelement <2 x float> %1338, i32 0
  %1340 = inttoptr i64 %1336 to float*
  store float %1339, float* %1340, align 4
  %.pre48 = load i64, i64* %3, align 8
  br label %block_.L_46e5a8

block_.L_46e5a8:                                  ; preds = %block_.L_46e56d, %block_46e4ff
  %1341 = phi i64 [ %.pre48, %block_.L_46e56d ], [ %1247, %block_46e4ff ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.12, %block_.L_46e56d ], [ %MEMORY.1, %block_46e4ff ]
  %1342 = load i64, i64* %RBP.i, align 8
  %1343 = add i64 %1342, -1656
  %1344 = add i64 %1341, 7
  store i64 %1344, i64* %3, align 8
  %1345 = inttoptr i64 %1343 to i32*
  %1346 = load i32, i32* %1345, align 4
  store i8 0, i8* %14, align 1
  %1347 = and i32 %1346, 255
  %1348 = tail call i32 @llvm.ctpop.i32(i32 %1347)
  %1349 = trunc i32 %1348 to i8
  %1350 = and i8 %1349, 1
  %1351 = xor i8 %1350, 1
  store i8 %1351, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1352 = icmp eq i32 %1346, 0
  %1353 = zext i1 %1352 to i8
  store i8 %1353, i8* %29, align 1
  %1354 = lshr i32 %1346, 31
  %1355 = trunc i32 %1354 to i8
  store i8 %1355, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v89 = select i1 %1352, i64 1167, i64 13
  %1356 = add i64 %1341, %.v89
  store i64 %1356, i64* %3, align 8
  br i1 %1352, label %block_.L_46ea37, label %block_46e5b5

block_46e5b5:                                     ; preds = %block_.L_46e5a8
  store i64 5, i64* %RDI.i937, align 8
  store i64 21, i64* %RSI.i934, align 8
  store i64 2, i64* %RCX.i707, align 8
  %1357 = add i64 %1342, -1616
  store i64 %1357, i64* %RDX.i946, align 8
  %1358 = bitcast [32 x %union.VectorReg]* %43 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1358, align 1
  %1359 = add i64 %1342, -1620
  %1360 = add i64 %1356, 33
  store i64 %1360, i64* %3, align 8
  %1361 = load <2 x float>, <2 x float>* %66, align 1
  %1362 = extractelement <2 x float> %1361, i32 0
  %1363 = inttoptr i64 %1359 to float*
  store float %1362, float* %1363, align 4
  %1364 = load i64, i64* %RBP.i, align 8
  %1365 = add i64 %1364, -1624
  %1366 = load i64, i64* %3, align 8
  %1367 = add i64 %1366, 8
  store i64 %1367, i64* %3, align 8
  %1368 = load <2 x float>, <2 x float>* %66, align 1
  %1369 = extractelement <2 x float> %1368, i32 0
  %1370 = inttoptr i64 %1365 to float*
  store float %1369, float* %1370, align 4
  %1371 = load i64, i64* %RBP.i, align 8
  %1372 = add i64 %1371, -1628
  %1373 = load i64, i64* %3, align 8
  %1374 = add i64 %1373, 8
  store i64 %1374, i64* %3, align 8
  %1375 = load <2 x float>, <2 x float>* %66, align 1
  %1376 = extractelement <2 x float> %1375, i32 0
  %1377 = inttoptr i64 %1372 to float*
  store float %1376, float* %1377, align 4
  %1378 = load i64, i64* %RBP.i, align 8
  %1379 = add i64 %1378, -1632
  %1380 = load i64, i64* %3, align 8
  %1381 = add i64 %1380, 8
  store i64 %1381, i64* %3, align 8
  %1382 = load <2 x float>, <2 x float>* %66, align 1
  %1383 = extractelement <2 x float> %1382, i32 0
  %1384 = inttoptr i64 %1379 to float*
  store float %1383, float* %1384, align 4
  %1385 = load i64, i64* %3, align 8
  %1386 = add i64 %1385, -6430
  %1387 = add i64 %1385, 5
  %1388 = load i64, i64* %6, align 8
  %1389 = add i64 %1388, -8
  %1390 = inttoptr i64 %1389 to i64*
  store i64 %1387, i64* %1390, align 8
  store i64 %1389, i64* %6, align 8
  store i64 %1386, i64* %3, align 8
  %call2_46e5ee = tail call %struct.Memory* @sub_46ccd0.dilate_erode(%struct.State* nonnull %0, i64 %1386, %struct.Memory* %MEMORY.13)
  %1391 = load i64, i64* %RBP.i, align 8
  %1392 = add i64 %1391, -1616
  %1393 = load i64, i64* %3, align 8
  store i64 %1392, i64* %RDI.i937, align 8
  %1394 = add i64 %1391, -1708
  %1395 = load i32, i32* %EAX.i919, align 4
  %1396 = add i64 %1393, 13
  store i64 %1396, i64* %3, align 8
  %1397 = inttoptr i64 %1394 to i32*
  store i32 %1395, i32* %1397, align 4
  %1398 = load i64, i64* %3, align 8
  %1399 = add i64 %1398, -4112
  %1400 = add i64 %1398, 5
  %1401 = load i64, i64* %6, align 8
  %1402 = add i64 %1401, -8
  %1403 = inttoptr i64 %1402 to i64*
  store i64 %1400, i64* %1403, align 8
  store i64 %1402, i64* %6, align 8
  store i64 %1399, i64* %3, align 8
  %call2_46e600 = tail call %struct.Memory* @sub_46d5f0.close_bubbles(%struct.State* nonnull %0, i64 %1399, %struct.Memory* %call2_46e5ee)
  %1404 = load i64, i64* %RBP.i, align 8
  %1405 = add i64 %1404, -1636
  %1406 = load i64, i64* %3, align 8
  %1407 = add i64 %1406, 10
  store i64 %1407, i64* %3, align 8
  %1408 = inttoptr i64 %1405 to i32*
  store i32 0, i32* %1408, align 4
  %.pre49 = load i64, i64* %3, align 8
  %1409 = bitcast [32 x %union.VectorReg]* %43 to <4 x i32>*
  %1410 = bitcast [32 x %union.VectorReg]* %43 to <4 x i32>*
  br label %block_.L_46e60f

block_.L_46e60f:                                  ; preds = %block_.L_46e962, %block_46e5b5
  %1411 = phi i64 [ %.pre49, %block_46e5b5 ], [ %2371, %block_.L_46e962 ]
  %MEMORY.14 = phi %struct.Memory* [ %call2_46e600, %block_46e5b5 ], [ %MEMORY.24, %block_.L_46e962 ]
  %1412 = load i64, i64* %RBP.i, align 8
  %1413 = add i64 %1412, -1636
  %1414 = add i64 %1411, 6
  store i64 %1414, i64* %3, align 8
  %1415 = inttoptr i64 %1413 to i32*
  %1416 = load i32, i32* %1415, align 4
  %1417 = zext i32 %1416 to i64
  store i64 %1417, i64* %RAX.i656, align 8
  %1418 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %1419 = sub i32 %1416, %1418
  %1420 = icmp ult i32 %1416, %1418
  %1421 = zext i1 %1420 to i8
  store i8 %1421, i8* %14, align 1
  %1422 = and i32 %1419, 255
  %1423 = tail call i32 @llvm.ctpop.i32(i32 %1422)
  %1424 = trunc i32 %1423 to i8
  %1425 = and i8 %1424, 1
  %1426 = xor i8 %1425, 1
  store i8 %1426, i8* %21, align 1
  %1427 = xor i32 %1418, %1416
  %1428 = xor i32 %1427, %1419
  %1429 = lshr i32 %1428, 4
  %1430 = trunc i32 %1429 to i8
  %1431 = and i8 %1430, 1
  store i8 %1431, i8* %26, align 1
  %1432 = icmp eq i32 %1419, 0
  %1433 = zext i1 %1432 to i8
  store i8 %1433, i8* %29, align 1
  %1434 = lshr i32 %1419, 31
  %1435 = trunc i32 %1434 to i8
  store i8 %1435, i8* %32, align 1
  %1436 = lshr i32 %1416, 31
  %1437 = lshr i32 %1418, 31
  %1438 = xor i32 %1437, %1436
  %1439 = xor i32 %1434, %1436
  %1440 = add nuw nsw i32 %1439, %1438
  %1441 = icmp eq i32 %1440, 2
  %1442 = zext i1 %1441 to i8
  store i8 %1442, i8* %38, align 1
  %1443 = icmp ne i8 %1435, 0
  %1444 = xor i1 %1443, %1441
  %.v90 = select i1 %1444, i64 19, i64 876
  %1445 = add i64 %1411, %.v90
  store i64 %1445, i64* %3, align 8
  br i1 %1444, label %block_46e622, label %block_.L_46e97b

block_46e622:                                     ; preds = %block_.L_46e60f
  %1446 = add i64 %1412, -1676
  %1447 = add i64 %1445, 10
  store i64 %1447, i64* %3, align 8
  %1448 = inttoptr i64 %1446 to i32*
  store i32 0, i32* %1448, align 4
  %1449 = load i64, i64* %RBP.i, align 8
  %1450 = add i64 %1449, -1680
  %1451 = load i64, i64* %3, align 8
  %1452 = add i64 %1451, 10
  store i64 %1452, i64* %3, align 8
  %1453 = inttoptr i64 %1450 to i32*
  store i32 0, i32* %1453, align 4
  %1454 = load i64, i64* %RBP.i, align 8
  %1455 = add i64 %1454, -1684
  %1456 = load i64, i64* %3, align 8
  %1457 = add i64 %1456, 10
  store i64 %1457, i64* %3, align 8
  %1458 = inttoptr i64 %1455 to i32*
  store i32 0, i32* %1458, align 4
  %1459 = load i64, i64* %RBP.i, align 8
  %1460 = add i64 %1459, -1688
  %1461 = load i64, i64* %3, align 8
  %1462 = add i64 %1461, 10
  store i64 %1462, i64* %3, align 8
  %1463 = inttoptr i64 %1460 to i32*
  store i32 0, i32* %1463, align 4
  %1464 = load i64, i64* %RBP.i, align 8
  %1465 = add i64 %1464, -1640
  %1466 = load i64, i64* %3, align 8
  %1467 = add i64 %1466, 10
  store i64 %1467, i64* %3, align 8
  %1468 = inttoptr i64 %1465 to i32*
  store i32 0, i32* %1468, align 4
  %.pre53 = load i64, i64* %3, align 8
  br label %block_.L_46e654

block_.L_46e654:                                  ; preds = %block_.L_46e899, %block_46e622
  %1469 = phi i64 [ %.pre53, %block_46e622 ], [ %2224, %block_.L_46e899 ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.14, %block_46e622 ], [ %MEMORY.21, %block_.L_46e899 ]
  %1470 = load i64, i64* %RBP.i, align 8
  %1471 = add i64 %1470, -1640
  %1472 = add i64 %1469, 6
  store i64 %1472, i64* %3, align 8
  %1473 = inttoptr i64 %1471 to i32*
  %1474 = load i32, i32* %1473, align 4
  %1475 = zext i32 %1474 to i64
  store i64 %1475, i64* %RAX.i656, align 8
  %1476 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %1477 = sub i32 %1474, %1476
  %1478 = icmp ult i32 %1474, %1476
  %1479 = zext i1 %1478 to i8
  store i8 %1479, i8* %14, align 1
  %1480 = and i32 %1477, 255
  %1481 = tail call i32 @llvm.ctpop.i32(i32 %1480)
  %1482 = trunc i32 %1481 to i8
  %1483 = and i8 %1482, 1
  %1484 = xor i8 %1483, 1
  store i8 %1484, i8* %21, align 1
  %1485 = xor i32 %1476, %1474
  %1486 = xor i32 %1485, %1477
  %1487 = lshr i32 %1486, 4
  %1488 = trunc i32 %1487 to i8
  %1489 = and i8 %1488, 1
  store i8 %1489, i8* %26, align 1
  %1490 = icmp eq i32 %1477, 0
  %1491 = zext i1 %1490 to i8
  store i8 %1491, i8* %29, align 1
  %1492 = lshr i32 %1477, 31
  %1493 = trunc i32 %1492 to i8
  store i8 %1493, i8* %32, align 1
  %1494 = lshr i32 %1474, 31
  %1495 = lshr i32 %1476, 31
  %1496 = xor i32 %1495, %1494
  %1497 = xor i32 %1492, %1494
  %1498 = add nuw nsw i32 %1497, %1496
  %1499 = icmp eq i32 %1498, 2
  %1500 = zext i1 %1499 to i8
  store i8 %1500, i8* %38, align 1
  %1501 = icmp ne i8 %1493, 0
  %1502 = xor i1 %1501, %1499
  %.v95 = select i1 %1502, i64 19, i64 606
  %1503 = add i64 %1469, %.v95
  store i64 %1503, i64* %3, align 8
  br i1 %1502, label %block_46e667, label %block_.L_46e8b2

block_46e667:                                     ; preds = %block_.L_46e654
  %1504 = add i64 %1470, -1636
  %1505 = add i64 %1503, 7
  store i64 %1505, i64* %3, align 8
  %1506 = inttoptr i64 %1504 to i32*
  %1507 = load i32, i32* %1506, align 4
  %1508 = mul i32 %1507, 20
  %1509 = add i32 %1508, 21
  %1510 = zext i32 %1509 to i64
  store i64 %1510, i64* %RAX.i656, align 8
  %1511 = icmp ugt i32 %1508, -22
  %1512 = zext i1 %1511 to i8
  store i8 %1512, i8* %14, align 1
  %1513 = and i32 %1509, 253
  %1514 = tail call i32 @llvm.ctpop.i32(i32 %1513)
  %1515 = trunc i32 %1514 to i8
  %1516 = and i8 %1515, 1
  %1517 = xor i8 %1516, 1
  store i8 %1517, i8* %21, align 1
  %1518 = xor i32 %1508, 16
  %1519 = xor i32 %1518, %1509
  %1520 = lshr i32 %1519, 4
  %1521 = trunc i32 %1520 to i8
  %1522 = and i8 %1521, 1
  store i8 %1522, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %1523 = lshr i32 %1509, 31
  %1524 = trunc i32 %1523 to i8
  store i8 %1524, i8* %32, align 1
  %1525 = lshr i32 %1508, 31
  %1526 = xor i32 %1523, %1525
  %1527 = add nuw nsw i32 %1526, %1523
  %1528 = icmp eq i32 %1527, 2
  %1529 = zext i1 %1528 to i8
  store i8 %1529, i8* %38, align 1
  %1530 = add i64 %1503, 16
  store i64 %1530, i64* %3, align 8
  %1531 = load i32, i32* %1473, align 4
  %1532 = add i32 %1531, %1509
  %1533 = zext i32 %1532 to i64
  store i64 %1533, i64* %RAX.i656, align 8
  %1534 = icmp ult i32 %1532, %1509
  %1535 = icmp ult i32 %1532, %1531
  %1536 = or i1 %1534, %1535
  %1537 = zext i1 %1536 to i8
  store i8 %1537, i8* %14, align 1
  %1538 = and i32 %1532, 255
  %1539 = tail call i32 @llvm.ctpop.i32(i32 %1538)
  %1540 = trunc i32 %1539 to i8
  %1541 = and i8 %1540, 1
  %1542 = xor i8 %1541, 1
  store i8 %1542, i8* %21, align 1
  %1543 = xor i32 %1531, %1509
  %1544 = xor i32 %1543, %1532
  %1545 = lshr i32 %1544, 4
  %1546 = trunc i32 %1545 to i8
  %1547 = and i8 %1546, 1
  store i8 %1547, i8* %26, align 1
  %1548 = icmp eq i32 %1532, 0
  %1549 = zext i1 %1548 to i8
  store i8 %1549, i8* %29, align 1
  %1550 = lshr i32 %1532, 31
  %1551 = trunc i32 %1550 to i8
  store i8 %1551, i8* %32, align 1
  %1552 = lshr i32 %1531, 31
  %1553 = xor i32 %1550, %1523
  %1554 = xor i32 %1550, %1552
  %1555 = add nuw nsw i32 %1553, %1554
  %1556 = icmp eq i32 %1555, 2
  %1557 = zext i1 %1556 to i8
  store i8 %1557, i8* %38, align 1
  %1558 = add i64 %1470, -1644
  %1559 = add i64 %1503, 22
  store i64 %1559, i64* %3, align 8
  %1560 = inttoptr i64 %1558 to i32*
  store i32 %1532, i32* %1560, align 4
  %1561 = load i64, i64* %RBP.i, align 8
  %1562 = add i64 %1561, -1644
  %1563 = load i64, i64* %3, align 8
  %1564 = add i64 %1563, 7
  store i64 %1564, i64* %3, align 8
  %1565 = inttoptr i64 %1562 to i32*
  %1566 = load i32, i32* %1565, align 4
  %1567 = sext i32 %1566 to i64
  store i64 %1567, i64* %RCX.i707, align 8
  %1568 = add nsw i64 %1567, 12099168
  %1569 = add i64 %1563, 15
  store i64 %1569, i64* %3, align 8
  %1570 = inttoptr i64 %1568 to i8*
  %1571 = load i8, i8* %1570, align 1
  %1572 = zext i8 %1571 to i64
  store i64 %1572, i64* %RAX.i656, align 8
  %1573 = zext i8 %1571 to i32
  %1574 = add nsw i32 %1573, -2
  %1575 = icmp ult i8 %1571, 2
  %1576 = zext i1 %1575 to i8
  store i8 %1576, i8* %14, align 1
  %1577 = and i32 %1574, 255
  %1578 = tail call i32 @llvm.ctpop.i32(i32 %1577)
  %1579 = trunc i32 %1578 to i8
  %1580 = and i8 %1579, 1
  %1581 = xor i8 %1580, 1
  store i8 %1581, i8* %21, align 1
  %1582 = xor i32 %1574, %1573
  %1583 = lshr i32 %1582, 4
  %1584 = trunc i32 %1583 to i8
  %1585 = and i8 %1584, 1
  store i8 %1585, i8* %26, align 1
  %1586 = icmp eq i32 %1574, 0
  %1587 = zext i1 %1586 to i8
  store i8 %1587, i8* %29, align 1
  %1588 = lshr i32 %1574, 31
  %1589 = trunc i32 %1588 to i8
  store i8 %1589, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v98 = select i1 %1586, i64 24, i64 176
  %1590 = add i64 %1563, %.v98
  store i64 %1590, i64* %3, align 8
  br i1 %1586, label %block_46e695, label %block_.L_46e72d

block_46e695:                                     ; preds = %block_46e667
  store i64 2, i64* %RSI.i934, align 8
  %1591 = add i64 %1590, 11
  store i64 %1591, i64* %3, align 8
  %1592 = load i32, i32* %1565, align 4
  %1593 = zext i32 %1592 to i64
  store i64 %1593, i64* %RDI.i937, align 8
  %1594 = add i64 %1590, -2165
  %1595 = add i64 %1590, 16
  %1596 = load i64, i64* %6, align 8
  %1597 = add i64 %1596, -8
  %1598 = inttoptr i64 %1597 to i64*
  store i64 %1595, i64* %1598, align 8
  store i64 %1597, i64* %6, align 8
  store i64 %1594, i64* %3, align 8
  %call2_46e6a0 = tail call %struct.Memory* @sub_46de20.captured_territory(%struct.State* nonnull %0, i64 %1594, %struct.Memory* %MEMORY.15)
  %1599 = load i32, i32* %EAX.i919, align 4
  %1600 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1601 = and i32 %1599, 255
  %1602 = tail call i32 @llvm.ctpop.i32(i32 %1601)
  %1603 = trunc i32 %1602 to i8
  %1604 = and i8 %1603, 1
  %1605 = xor i8 %1604, 1
  store i8 %1605, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1606 = icmp eq i32 %1599, 0
  %1607 = zext i1 %1606 to i8
  store i8 %1607, i8* %29, align 1
  %1608 = lshr i32 %1599, 31
  %1609 = trunc i32 %1608 to i8
  store i8 %1609, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v103 = select i1 %1606, i64 92, i64 9
  %1610 = add i64 %1600, %.v103
  store i64 %1610, i64* %3, align 8
  br i1 %1606, label %block_.L_46e701, label %block_46e6ae

block_46e6ae:                                     ; preds = %block_46e695
  %1611 = add i64 %1610, ptrtoint (%G_0x74a56__rip__type* @G_0x74a56__rip_ to i64)
  %1612 = add i64 %1610, 8
  store i64 %1612, i64* %3, align 8
  %1613 = inttoptr i64 %1611 to i32*
  %1614 = load i32, i32* %1613, align 4
  store i32 %1614, i32* %46, align 1
  store float 0.000000e+00, float* %152, align 1
  store float 0.000000e+00, float* %153, align 1
  store float 0.000000e+00, float* %154, align 1
  %1615 = add i64 %1610, add (i64 ptrtoint (%G_0x74a76__rip__type* @G_0x74a76__rip_ to i64), i64 8)
  %1616 = add i64 %1610, 16
  store i64 %1616, i64* %3, align 8
  %1617 = inttoptr i64 %1615 to i32*
  %1618 = load i32, i32* %1617, align 4
  store i32 %1618, i32* %157, align 1
  store float 0.000000e+00, float* %167, align 1
  store float 0.000000e+00, float* %168, align 1
  store float 0.000000e+00, float* %169, align 1
  %1619 = load i64, i64* %RBP.i, align 8
  %1620 = add i64 %1619, -1620
  %1621 = add i64 %1610, 24
  store i64 %1621, i64* %3, align 8
  %1622 = load <2 x float>, <2 x float>* %164, align 1
  %1623 = load <2 x i32>, <2 x i32>* %165, align 1
  %1624 = inttoptr i64 %1620 to float*
  %1625 = load float, float* %1624, align 4
  %1626 = extractelement <2 x float> %1622, i32 0
  %1627 = fadd float %1626, %1625
  store float %1627, float* %166, align 1
  %1628 = bitcast <2 x float> %1622 to <2 x i32>
  %1629 = extractelement <2 x i32> %1628, i32 1
  store i32 %1629, i32* %159, align 1
  %1630 = extractelement <2 x i32> %1623, i32 0
  store i32 %1630, i32* %161, align 1
  %1631 = extractelement <2 x i32> %1623, i32 1
  store i32 %1631, i32* %163, align 1
  %1632 = add i64 %1610, 32
  store i64 %1632, i64* %3, align 8
  %1633 = load <2 x float>, <2 x float>* %164, align 1
  %1634 = extractelement <2 x float> %1633, i32 0
  store float %1634, float* %1624, align 4
  %1635 = load i64, i64* %RBP.i, align 8
  %1636 = add i64 %1635, -1680
  %1637 = load i64, i64* %3, align 8
  %1638 = add i64 %1637, 6
  store i64 %1638, i64* %3, align 8
  %1639 = inttoptr i64 %1636 to i32*
  %1640 = load i32, i32* %1639, align 4
  %1641 = add i32 %1640, 2
  %1642 = zext i32 %1641 to i64
  store i64 %1642, i64* %RAX.i656, align 8
  %1643 = icmp ugt i32 %1640, -3
  %1644 = zext i1 %1643 to i8
  store i8 %1644, i8* %14, align 1
  %1645 = and i32 %1641, 255
  %1646 = tail call i32 @llvm.ctpop.i32(i32 %1645)
  %1647 = trunc i32 %1646 to i8
  %1648 = and i8 %1647, 1
  %1649 = xor i8 %1648, 1
  store i8 %1649, i8* %21, align 1
  %1650 = xor i32 %1641, %1640
  %1651 = lshr i32 %1650, 4
  %1652 = trunc i32 %1651 to i8
  %1653 = and i8 %1652, 1
  store i8 %1653, i8* %26, align 1
  %1654 = icmp eq i32 %1641, 0
  %1655 = zext i1 %1654 to i8
  store i8 %1655, i8* %29, align 1
  %1656 = lshr i32 %1641, 31
  %1657 = trunc i32 %1656 to i8
  store i8 %1657, i8* %32, align 1
  %1658 = lshr i32 %1640, 31
  %1659 = xor i32 %1656, %1658
  %1660 = add nuw nsw i32 %1659, %1656
  %1661 = icmp eq i32 %1660, 2
  %1662 = zext i1 %1661 to i8
  store i8 %1662, i8* %38, align 1
  %1663 = add i64 %1637, 15
  store i64 %1663, i64* %3, align 8
  store i32 %1641, i32* %1639, align 4
  %1664 = load i64, i64* %RBP.i, align 8
  %1665 = add i64 %1664, -1628
  %1666 = load i64, i64* %3, align 8
  %1667 = add i64 %1666, 8
  store i64 %1667, i64* %3, align 8
  %1668 = load <2 x float>, <2 x float>* %66, align 1
  %1669 = load <2 x i32>, <2 x i32>* %156, align 1
  %1670 = inttoptr i64 %1665 to float*
  %1671 = load float, float* %1670, align 4
  %1672 = extractelement <2 x float> %1668, i32 0
  %1673 = fadd float %1672, %1671
  store float %1673, float* %151, align 1
  %1674 = bitcast <2 x float> %1668 to <2 x i32>
  %1675 = extractelement <2 x i32> %1674, i32 1
  store i32 %1675, i32* %48, align 1
  %1676 = extractelement <2 x i32> %1669, i32 0
  store i32 %1676, i32* %49, align 1
  %1677 = extractelement <2 x i32> %1669, i32 1
  store i32 %1677, i32* %51, align 1
  %1678 = add i64 %1666, 16
  store i64 %1678, i64* %3, align 8
  %1679 = load <2 x float>, <2 x float>* %66, align 1
  %1680 = extractelement <2 x float> %1679, i32 0
  store float %1680, float* %1670, align 4
  %1681 = load i64, i64* %RBP.i, align 8
  %1682 = add i64 %1681, -1684
  %1683 = load i64, i64* %3, align 8
  %1684 = add i64 %1683, 6
  store i64 %1684, i64* %3, align 8
  %1685 = inttoptr i64 %1682 to i32*
  %1686 = load i32, i32* %1685, align 4
  %1687 = add i32 %1686, 1
  %1688 = zext i32 %1687 to i64
  store i64 %1688, i64* %RAX.i656, align 8
  %1689 = icmp eq i32 %1686, -1
  %1690 = icmp eq i32 %1687, 0
  %1691 = or i1 %1689, %1690
  %1692 = zext i1 %1691 to i8
  store i8 %1692, i8* %14, align 1
  %1693 = and i32 %1687, 255
  %1694 = tail call i32 @llvm.ctpop.i32(i32 %1693)
  %1695 = trunc i32 %1694 to i8
  %1696 = and i8 %1695, 1
  %1697 = xor i8 %1696, 1
  store i8 %1697, i8* %21, align 1
  %1698 = xor i32 %1687, %1686
  %1699 = lshr i32 %1698, 4
  %1700 = trunc i32 %1699 to i8
  %1701 = and i8 %1700, 1
  store i8 %1701, i8* %26, align 1
  %1702 = zext i1 %1690 to i8
  store i8 %1702, i8* %29, align 1
  %1703 = lshr i32 %1687, 31
  %1704 = trunc i32 %1703 to i8
  store i8 %1704, i8* %32, align 1
  %1705 = lshr i32 %1686, 31
  %1706 = xor i32 %1703, %1705
  %1707 = add nuw nsw i32 %1706, %1703
  %1708 = icmp eq i32 %1707, 2
  %1709 = zext i1 %1708 to i8
  store i8 %1709, i8* %38, align 1
  %1710 = add i64 %1683, 15
  store i64 %1710, i64* %3, align 8
  store i32 %1687, i32* %1685, align 4
  %1711 = load i64, i64* %3, align 8
  %1712 = add i64 %1711, 44
  store i64 %1712, i64* %3, align 8
  br label %block_.L_46e728

block_.L_46e701:                                  ; preds = %block_46e695
  %1713 = add i64 %1610, ptrtoint (%G_0x74a03__rip__type* @G_0x74a03__rip_ to i64)
  %1714 = add i64 %1610, 8
  store i64 %1714, i64* %3, align 8
  %1715 = inttoptr i64 %1713 to i32*
  %1716 = load i32, i32* %1715, align 4
  store i32 %1716, i32* %46, align 1
  store float 0.000000e+00, float* %152, align 1
  store float 0.000000e+00, float* %153, align 1
  store float 0.000000e+00, float* %154, align 1
  %1717 = load i64, i64* %RBP.i, align 8
  %1718 = add i64 %1717, -1632
  %1719 = add i64 %1610, 16
  store i64 %1719, i64* %3, align 8
  %1720 = load <2 x float>, <2 x float>* %66, align 1
  %1721 = load <2 x i32>, <2 x i32>* %156, align 1
  %1722 = inttoptr i64 %1718 to float*
  %1723 = load float, float* %1722, align 4
  %1724 = extractelement <2 x float> %1720, i32 0
  %1725 = fadd float %1724, %1723
  store float %1725, float* %151, align 1
  %1726 = bitcast <2 x float> %1720 to <2 x i32>
  %1727 = extractelement <2 x i32> %1726, i32 1
  store i32 %1727, i32* %48, align 1
  %1728 = extractelement <2 x i32> %1721, i32 0
  store i32 %1728, i32* %49, align 1
  %1729 = extractelement <2 x i32> %1721, i32 1
  store i32 %1729, i32* %51, align 1
  %1730 = add i64 %1610, 24
  store i64 %1730, i64* %3, align 8
  %1731 = load <2 x float>, <2 x float>* %66, align 1
  %1732 = extractelement <2 x float> %1731, i32 0
  store float %1732, float* %1722, align 4
  %1733 = load i64, i64* %RBP.i, align 8
  %1734 = add i64 %1733, -1688
  %1735 = load i64, i64* %3, align 8
  %1736 = add i64 %1735, 6
  store i64 %1736, i64* %3, align 8
  %1737 = inttoptr i64 %1734 to i32*
  %1738 = load i32, i32* %1737, align 4
  %1739 = add i32 %1738, 1
  %1740 = zext i32 %1739 to i64
  store i64 %1740, i64* %RAX.i656, align 8
  %1741 = icmp eq i32 %1738, -1
  %1742 = icmp eq i32 %1739, 0
  %1743 = or i1 %1741, %1742
  %1744 = zext i1 %1743 to i8
  store i8 %1744, i8* %14, align 1
  %1745 = and i32 %1739, 255
  %1746 = tail call i32 @llvm.ctpop.i32(i32 %1745)
  %1747 = trunc i32 %1746 to i8
  %1748 = and i8 %1747, 1
  %1749 = xor i8 %1748, 1
  store i8 %1749, i8* %21, align 1
  %1750 = xor i32 %1739, %1738
  %1751 = lshr i32 %1750, 4
  %1752 = trunc i32 %1751 to i8
  %1753 = and i8 %1752, 1
  store i8 %1753, i8* %26, align 1
  %1754 = zext i1 %1742 to i8
  store i8 %1754, i8* %29, align 1
  %1755 = lshr i32 %1739, 31
  %1756 = trunc i32 %1755 to i8
  store i8 %1756, i8* %32, align 1
  %1757 = lshr i32 %1738, 31
  %1758 = xor i32 %1755, %1757
  %1759 = add nuw nsw i32 %1758, %1755
  %1760 = icmp eq i32 %1759, 2
  %1761 = zext i1 %1760 to i8
  store i8 %1761, i8* %38, align 1
  %1762 = add i64 %1735, 15
  store i64 %1762, i64* %3, align 8
  store i32 %1739, i32* %1737, align 4
  %.pre56 = load i64, i64* %3, align 8
  br label %block_.L_46e728

block_.L_46e728:                                  ; preds = %block_.L_46e701, %block_46e6ae
  %1763 = phi i64 [ %.pre56, %block_.L_46e701 ], [ %1712, %block_46e6ae ]
  %1764 = add i64 %1763, 369
  br label %block_.L_46e899

block_.L_46e72d:                                  ; preds = %block_46e667
  %1765 = add i64 %1590, 7
  store i64 %1765, i64* %3, align 8
  %1766 = load i32, i32* %1565, align 4
  %1767 = sext i32 %1766 to i64
  store i64 %1767, i64* %RAX.i656, align 8
  %1768 = add nsw i64 %1767, 12099168
  %1769 = add i64 %1590, 15
  store i64 %1769, i64* %3, align 8
  %1770 = inttoptr i64 %1768 to i8*
  %1771 = load i8, i8* %1770, align 1
  %1772 = zext i8 %1771 to i64
  store i64 %1772, i64* %RCX.i707, align 8
  %1773 = zext i8 %1771 to i32
  %1774 = add nsw i32 %1773, -1
  %1775 = icmp eq i8 %1771, 0
  %1776 = zext i1 %1775 to i8
  store i8 %1776, i8* %14, align 1
  %1777 = and i32 %1774, 255
  %1778 = tail call i32 @llvm.ctpop.i32(i32 %1777)
  %1779 = trunc i32 %1778 to i8
  %1780 = and i8 %1779, 1
  %1781 = xor i8 %1780, 1
  store i8 %1781, i8* %21, align 1
  %1782 = xor i32 %1774, %1773
  %1783 = lshr i32 %1782, 4
  %1784 = trunc i32 %1783 to i8
  %1785 = and i8 %1784, 1
  store i8 %1785, i8* %26, align 1
  %1786 = icmp eq i32 %1774, 0
  %1787 = zext i1 %1786 to i8
  store i8 %1787, i8* %29, align 1
  %1788 = lshr i32 %1774, 31
  %1789 = trunc i32 %1788 to i8
  store i8 %1789, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v99 = select i1 %1786, i64 24, i64 136
  %1790 = add i64 %1590, %.v99
  store i64 %1790, i64* %3, align 8
  br i1 %1786, label %block_46e745, label %block_.L_46e7b5

block_46e745:                                     ; preds = %block_.L_46e72d
  store i64 2, i64* %RSI.i934, align 8
  %1791 = add i64 %1790, 11
  store i64 %1791, i64* %3, align 8
  %1792 = load i32, i32* %1565, align 4
  %1793 = zext i32 %1792 to i64
  store i64 %1793, i64* %RDI.i937, align 8
  %1794 = add i64 %1790, -2341
  %1795 = add i64 %1790, 16
  %1796 = load i64, i64* %6, align 8
  %1797 = add i64 %1796, -8
  %1798 = inttoptr i64 %1797 to i64*
  store i64 %1795, i64* %1798, align 8
  store i64 %1797, i64* %6, align 8
  store i64 %1794, i64* %3, align 8
  %call2_46e750 = tail call %struct.Memory* @sub_46de20.captured_territory(%struct.State* nonnull %0, i64 %1794, %struct.Memory* %MEMORY.15)
  %1799 = load i32, i32* %EAX.i919, align 4
  %1800 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1801 = and i32 %1799, 255
  %1802 = tail call i32 @llvm.ctpop.i32(i32 %1801)
  %1803 = trunc i32 %1802 to i8
  %1804 = and i8 %1803, 1
  %1805 = xor i8 %1804, 1
  store i8 %1805, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1806 = icmp eq i32 %1799, 0
  %1807 = zext i1 %1806 to i8
  store i8 %1807, i8* %29, align 1
  %1808 = lshr i32 %1799, 31
  %1809 = trunc i32 %1808 to i8
  store i8 %1809, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v102 = select i1 %1806, i64 91, i64 9
  %1810 = add i64 %1800, %.v102
  store i64 %1810, i64* %3, align 8
  br i1 %1806, label %block_.L_46e7b0, label %block_46e75e

block_46e75e:                                     ; preds = %block_46e745
  %1811 = add i64 %1810, ptrtoint (%G_0x749a6__rip__type* @G_0x749a6__rip_ to i64)
  %1812 = add i64 %1810, 8
  store i64 %1812, i64* %3, align 8
  %1813 = inttoptr i64 %1811 to i32*
  %1814 = load i32, i32* %1813, align 4
  store i32 %1814, i32* %46, align 1
  store float 0.000000e+00, float* %152, align 1
  store float 0.000000e+00, float* %153, align 1
  store float 0.000000e+00, float* %154, align 1
  %1815 = add i64 %1810, add (i64 ptrtoint (%G_0x749c6__rip__type* @G_0x749c6__rip_ to i64), i64 8)
  %1816 = add i64 %1810, 16
  store i64 %1816, i64* %3, align 8
  %1817 = inttoptr i64 %1815 to i32*
  %1818 = load i32, i32* %1817, align 4
  store i32 %1818, i32* %157, align 1
  store float 0.000000e+00, float* %167, align 1
  store float 0.000000e+00, float* %168, align 1
  store float 0.000000e+00, float* %169, align 1
  %1819 = load i64, i64* %RBP.i, align 8
  %1820 = add i64 %1819, -1624
  %1821 = add i64 %1810, 24
  store i64 %1821, i64* %3, align 8
  %1822 = load <2 x float>, <2 x float>* %164, align 1
  %1823 = inttoptr i64 %1820 to float*
  %1824 = load float, float* %1823, align 4
  %1825 = extractelement <2 x float> %1822, i32 0
  %1826 = fadd float %1825, %1824
  store float %1826, float* %166, align 1
  %1827 = bitcast <2 x float> %1822 to <2 x i32>
  %1828 = extractelement <2 x i32> %1827, i32 1
  store i32 %1828, i32* %159, align 1
  %1829 = add i64 %1810, 32
  store i64 %1829, i64* %3, align 8
  %1830 = load <2 x float>, <2 x float>* %164, align 1
  %1831 = extractelement <2 x float> %1830, i32 0
  store float %1831, float* %1823, align 4
  %1832 = load i64, i64* %3, align 8
  %1833 = load <2 x i32>, <2 x i32>* %155, align 1
  %1834 = load <2 x i32>, <2 x i32>* %156, align 1
  %1835 = extractelement <2 x i32> %1833, i32 0
  store i32 %1835, i32* %157, align 1
  %1836 = extractelement <2 x i32> %1833, i32 1
  store i32 %1836, i32* %159, align 1
  %1837 = extractelement <2 x i32> %1834, i32 0
  store i32 %1837, i32* %161, align 1
  %1838 = extractelement <2 x i32> %1834, i32 1
  store i32 %1838, i32* %163, align 1
  %1839 = load i64, i64* %RBP.i, align 8
  %1840 = add i64 %1839, -1632
  %1841 = add i64 %1832, 11
  store i64 %1841, i64* %3, align 8
  %1842 = load <2 x float>, <2 x float>* %164, align 1
  %1843 = load <2 x i32>, <2 x i32>* %165, align 1
  %1844 = inttoptr i64 %1840 to float*
  %1845 = load float, float* %1844, align 4
  %1846 = extractelement <2 x float> %1842, i32 0
  %1847 = fadd float %1846, %1845
  store float %1847, float* %166, align 1
  %1848 = bitcast <2 x float> %1842 to <2 x i32>
  %1849 = extractelement <2 x i32> %1848, i32 1
  store i32 %1849, i32* %159, align 1
  %1850 = extractelement <2 x i32> %1843, i32 0
  store i32 %1850, i32* %161, align 1
  %1851 = extractelement <2 x i32> %1843, i32 1
  store i32 %1851, i32* %163, align 1
  %1852 = add i64 %1832, 19
  store i64 %1852, i64* %3, align 8
  %1853 = load <2 x float>, <2 x float>* %164, align 1
  %1854 = extractelement <2 x float> %1853, i32 0
  store float %1854, float* %1844, align 4
  %1855 = load i64, i64* %RBP.i, align 8
  %1856 = add i64 %1855, -1676
  %1857 = load i64, i64* %3, align 8
  %1858 = add i64 %1857, 6
  store i64 %1858, i64* %3, align 8
  %1859 = inttoptr i64 %1856 to i32*
  %1860 = load i32, i32* %1859, align 4
  %1861 = add i32 %1860, 2
  %1862 = zext i32 %1861 to i64
  store i64 %1862, i64* %RAX.i656, align 8
  %1863 = icmp ugt i32 %1860, -3
  %1864 = zext i1 %1863 to i8
  store i8 %1864, i8* %14, align 1
  %1865 = and i32 %1861, 255
  %1866 = tail call i32 @llvm.ctpop.i32(i32 %1865)
  %1867 = trunc i32 %1866 to i8
  %1868 = and i8 %1867, 1
  %1869 = xor i8 %1868, 1
  store i8 %1869, i8* %21, align 1
  %1870 = xor i32 %1861, %1860
  %1871 = lshr i32 %1870, 4
  %1872 = trunc i32 %1871 to i8
  %1873 = and i8 %1872, 1
  store i8 %1873, i8* %26, align 1
  %1874 = icmp eq i32 %1861, 0
  %1875 = zext i1 %1874 to i8
  store i8 %1875, i8* %29, align 1
  %1876 = lshr i32 %1861, 31
  %1877 = trunc i32 %1876 to i8
  store i8 %1877, i8* %32, align 1
  %1878 = lshr i32 %1860, 31
  %1879 = xor i32 %1876, %1878
  %1880 = add nuw nsw i32 %1879, %1876
  %1881 = icmp eq i32 %1880, 2
  %1882 = zext i1 %1881 to i8
  store i8 %1882, i8* %38, align 1
  %1883 = add i64 %1857, 15
  store i64 %1883, i64* %3, align 8
  store i32 %1861, i32* %1859, align 4
  %1884 = load i64, i64* %RBP.i, align 8
  %1885 = add i64 %1884, -1632
  %1886 = load i64, i64* %3, align 8
  %1887 = add i64 %1886, 8
  store i64 %1887, i64* %3, align 8
  %1888 = load <2 x float>, <2 x float>* %66, align 1
  %1889 = load <2 x i32>, <2 x i32>* %156, align 1
  %1890 = inttoptr i64 %1885 to float*
  %1891 = load float, float* %1890, align 4
  %1892 = extractelement <2 x float> %1888, i32 0
  %1893 = fadd float %1892, %1891
  store float %1893, float* %151, align 1
  %1894 = bitcast <2 x float> %1888 to <2 x i32>
  %1895 = extractelement <2 x i32> %1894, i32 1
  store i32 %1895, i32* %48, align 1
  %1896 = extractelement <2 x i32> %1889, i32 0
  store i32 %1896, i32* %49, align 1
  %1897 = extractelement <2 x i32> %1889, i32 1
  store i32 %1897, i32* %51, align 1
  %1898 = add i64 %1886, 16
  store i64 %1898, i64* %3, align 8
  %1899 = load <2 x float>, <2 x float>* %66, align 1
  %1900 = extractelement <2 x float> %1899, i32 0
  store float %1900, float* %1890, align 4
  %.pre57 = load i64, i64* %3, align 8
  br label %block_.L_46e7b0

block_.L_46e7b0:                                  ; preds = %block_46e75e, %block_46e745
  %1901 = phi i64 [ %.pre57, %block_46e75e ], [ %1810, %block_46e745 ]
  %1902 = add i64 %1901, 228
  br label %block_.L_46e894

block_.L_46e7b5:                                  ; preds = %block_.L_46e72d
  store <4 x i32> zeroinitializer, <4 x i32>* %1409, align 1
  %1903 = add i64 %1790, 10
  store i64 %1903, i64* %3, align 8
  %1904 = load i32, i32* %1565, align 4
  %1905 = sext i32 %1904 to i64
  store i64 %1905, i64* %RAX.i656, align 8
  %1906 = shl nsw i64 %1905, 2
  %1907 = add i64 %1561, -1616
  %1908 = add i64 %1907, %1906
  %1909 = add i64 %1790, 19
  store i64 %1909, i64* %3, align 8
  %1910 = inttoptr i64 %1908 to i32*
  %1911 = load i32, i32* %1910, align 4
  %1912 = sitofp i32 %1911 to double
  store double %1912, double* %149, align 1
  %1913 = add i64 %1790, 23
  store i64 %1913, i64* %3, align 8
  %1914 = load double, double* %150, align 1
  %1915 = fcmp uno double %1912, %1914
  br i1 %1915, label %1916, label %1926

; <label>:1916:                                   ; preds = %block_.L_46e7b5
  %1917 = fadd double %1912, %1914
  %1918 = bitcast double %1917 to i64
  %1919 = and i64 %1918, 9221120237041090560
  %1920 = icmp eq i64 %1919, 9218868437227405312
  %1921 = and i64 %1918, 2251799813685247
  %1922 = icmp ne i64 %1921, 0
  %1923 = and i1 %1920, %1922
  br i1 %1923, label %1924, label %1932

; <label>:1924:                                   ; preds = %1916
  %1925 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1913, %struct.Memory* %MEMORY.15)
  %.pre58 = load i64, i64* %3, align 8
  %.pre59 = load i8, i8* %14, align 1
  %.pre60 = load i8, i8* %29, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:1926:                                   ; preds = %block_.L_46e7b5
  %1927 = fcmp ogt double %1912, %1914
  br i1 %1927, label %1932, label %1928

; <label>:1928:                                   ; preds = %1926
  %1929 = fcmp olt double %1912, %1914
  br i1 %1929, label %1932, label %1930

; <label>:1930:                                   ; preds = %1928
  %1931 = fcmp oeq double %1912, %1914
  br i1 %1931, label %1932, label %1936

; <label>:1932:                                   ; preds = %1930, %1928, %1926, %1916
  %1933 = phi i8 [ 0, %1926 ], [ 0, %1928 ], [ 1, %1930 ], [ 1, %1916 ]
  %1934 = phi i8 [ 0, %1926 ], [ 0, %1928 ], [ 0, %1930 ], [ 1, %1916 ]
  %1935 = phi i8 [ 0, %1926 ], [ 1, %1928 ], [ 0, %1930 ], [ 1, %1916 ]
  store i8 %1933, i8* %29, align 1
  store i8 %1934, i8* %21, align 1
  store i8 %1935, i8* %14, align 1
  br label %1936

; <label>:1936:                                   ; preds = %1932, %1930
  %1937 = phi i8 [ %1933, %1932 ], [ 0, %1930 ]
  %1938 = phi i8 [ %1935, %1932 ], [ %1776, %1930 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %1936, %1924
  %1939 = phi i8 [ %.pre60, %1924 ], [ %1937, %1936 ]
  %1940 = phi i8 [ %.pre59, %1924 ], [ %1938, %1936 ]
  %1941 = phi i64 [ %.pre58, %1924 ], [ %1913, %1936 ]
  %1942 = phi %struct.Memory* [ %1925, %1924 ], [ %MEMORY.15, %1936 ]
  %1943 = or i8 %1939, %1940
  %1944 = icmp ne i8 %1943, 0
  %.v100 = select i1 %1944, i64 88, i64 6
  %1945 = add i64 %1941, %.v100
  store i64 %1945, i64* %3, align 8
  br i1 %1944, label %block_.L_46e824, label %block_46e7d2

block_46e7d2:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %1946 = add i64 %1945, ptrtoint (%G_0x74932__rip__type* @G_0x74932__rip_ to i64)
  %1947 = add i64 %1945, 8
  store i64 %1947, i64* %3, align 8
  %1948 = inttoptr i64 %1946 to i32*
  %1949 = load i32, i32* %1948, align 4
  store i32 %1949, i32* %46, align 1
  store float 0.000000e+00, float* %152, align 1
  store float 0.000000e+00, float* %153, align 1
  store float 0.000000e+00, float* %154, align 1
  %1950 = load <2 x i32>, <2 x i32>* %155, align 1
  %1951 = load <2 x i32>, <2 x i32>* %156, align 1
  %1952 = extractelement <2 x i32> %1950, i32 0
  store i32 %1952, i32* %157, align 1
  %1953 = extractelement <2 x i32> %1950, i32 1
  store i32 %1953, i32* %159, align 1
  %1954 = extractelement <2 x i32> %1951, i32 0
  store i32 %1954, i32* %161, align 1
  %1955 = extractelement <2 x i32> %1951, i32 1
  store i32 %1955, i32* %163, align 1
  %1956 = load i64, i64* %RBP.i, align 8
  %1957 = add i64 %1956, -1620
  %1958 = add i64 %1945, 19
  store i64 %1958, i64* %3, align 8
  %1959 = load <2 x float>, <2 x float>* %164, align 1
  %1960 = inttoptr i64 %1957 to float*
  %1961 = load float, float* %1960, align 4
  %1962 = extractelement <2 x float> %1959, i32 0
  %1963 = fadd float %1962, %1961
  store float %1963, float* %166, align 1
  %1964 = bitcast <2 x float> %1959 to <2 x i32>
  %1965 = extractelement <2 x i32> %1964, i32 1
  store i32 %1965, i32* %159, align 1
  %1966 = add i64 %1945, 27
  store i64 %1966, i64* %3, align 8
  %1967 = load <2 x float>, <2 x float>* %164, align 1
  %1968 = extractelement <2 x float> %1967, i32 0
  store float %1968, float* %1960, align 4
  %1969 = load i64, i64* %3, align 8
  %1970 = load <2 x i32>, <2 x i32>* %155, align 1
  %1971 = load <2 x i32>, <2 x i32>* %156, align 1
  %1972 = extractelement <2 x i32> %1970, i32 0
  store i32 %1972, i32* %157, align 1
  %1973 = extractelement <2 x i32> %1970, i32 1
  store i32 %1973, i32* %159, align 1
  %1974 = extractelement <2 x i32> %1971, i32 0
  store i32 %1974, i32* %161, align 1
  %1975 = extractelement <2 x i32> %1971, i32 1
  store i32 %1975, i32* %163, align 1
  %1976 = load i64, i64* %RBP.i, align 8
  %1977 = add i64 %1976, -1628
  %1978 = add i64 %1969, 11
  store i64 %1978, i64* %3, align 8
  %1979 = load <2 x float>, <2 x float>* %164, align 1
  %1980 = load <2 x i32>, <2 x i32>* %165, align 1
  %1981 = inttoptr i64 %1977 to float*
  %1982 = load float, float* %1981, align 4
  %1983 = extractelement <2 x float> %1979, i32 0
  %1984 = fadd float %1983, %1982
  store float %1984, float* %166, align 1
  %1985 = bitcast <2 x float> %1979 to <2 x i32>
  %1986 = extractelement <2 x i32> %1985, i32 1
  store i32 %1986, i32* %159, align 1
  %1987 = extractelement <2 x i32> %1980, i32 0
  store i32 %1987, i32* %161, align 1
  %1988 = extractelement <2 x i32> %1980, i32 1
  store i32 %1988, i32* %163, align 1
  %1989 = add i64 %1969, 19
  store i64 %1989, i64* %3, align 8
  %1990 = load <2 x float>, <2 x float>* %164, align 1
  %1991 = extractelement <2 x float> %1990, i32 0
  store float %1991, float* %1981, align 4
  %1992 = load i64, i64* %RBP.i, align 8
  %1993 = add i64 %1992, -1680
  %1994 = load i64, i64* %3, align 8
  %1995 = add i64 %1994, 6
  store i64 %1995, i64* %3, align 8
  %1996 = inttoptr i64 %1993 to i32*
  %1997 = load i32, i32* %1996, align 4
  %1998 = add i32 %1997, 1
  %1999 = zext i32 %1998 to i64
  store i64 %1999, i64* %RAX.i656, align 8
  %2000 = icmp eq i32 %1997, -1
  %2001 = icmp eq i32 %1998, 0
  %2002 = or i1 %2000, %2001
  %2003 = zext i1 %2002 to i8
  store i8 %2003, i8* %14, align 1
  %2004 = and i32 %1998, 255
  %2005 = tail call i32 @llvm.ctpop.i32(i32 %2004)
  %2006 = trunc i32 %2005 to i8
  %2007 = and i8 %2006, 1
  %2008 = xor i8 %2007, 1
  store i8 %2008, i8* %21, align 1
  %2009 = xor i32 %1998, %1997
  %2010 = lshr i32 %2009, 4
  %2011 = trunc i32 %2010 to i8
  %2012 = and i8 %2011, 1
  store i8 %2012, i8* %26, align 1
  %2013 = zext i1 %2001 to i8
  store i8 %2013, i8* %29, align 1
  %2014 = lshr i32 %1998, 31
  %2015 = trunc i32 %2014 to i8
  store i8 %2015, i8* %32, align 1
  %2016 = lshr i32 %1997, 31
  %2017 = xor i32 %2014, %2016
  %2018 = add nuw nsw i32 %2017, %2014
  %2019 = icmp eq i32 %2018, 2
  %2020 = zext i1 %2019 to i8
  store i8 %2020, i8* %38, align 1
  %2021 = add i64 %1994, 15
  store i64 %2021, i64* %3, align 8
  store i32 %1998, i32* %1996, align 4
  %2022 = load i64, i64* %RBP.i, align 8
  %2023 = add i64 %2022, -1628
  %2024 = load i64, i64* %3, align 8
  %2025 = add i64 %2024, 8
  store i64 %2025, i64* %3, align 8
  %2026 = load <2 x float>, <2 x float>* %66, align 1
  %2027 = load <2 x i32>, <2 x i32>* %156, align 1
  %2028 = inttoptr i64 %2023 to float*
  %2029 = load float, float* %2028, align 4
  %2030 = extractelement <2 x float> %2026, i32 0
  %2031 = fadd float %2030, %2029
  store float %2031, float* %151, align 1
  %2032 = bitcast <2 x float> %2026 to <2 x i32>
  %2033 = extractelement <2 x i32> %2032, i32 1
  store i32 %2033, i32* %48, align 1
  %2034 = extractelement <2 x i32> %2027, i32 0
  store i32 %2034, i32* %49, align 1
  %2035 = extractelement <2 x i32> %2027, i32 1
  store i32 %2035, i32* %51, align 1
  %2036 = add i64 %2024, 16
  store i64 %2036, i64* %3, align 8
  %2037 = load <2 x float>, <2 x float>* %66, align 1
  %2038 = extractelement <2 x float> %2037, i32 0
  store float %2038, float* %2028, align 4
  %2039 = load i64, i64* %3, align 8
  %2040 = add i64 %2039, 112
  br label %block_.L_46e88f

block_.L_46e824:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  store <4 x i32> zeroinitializer, <4 x i32>* %1410, align 1
  %2041 = load i64, i64* %RBP.i, align 8
  %2042 = add i64 %2041, -1644
  %2043 = add i64 %1945, 10
  store i64 %2043, i64* %3, align 8
  %2044 = inttoptr i64 %2042 to i32*
  %2045 = load i32, i32* %2044, align 4
  %2046 = sext i32 %2045 to i64
  store i64 %2046, i64* %RAX.i656, align 8
  %2047 = shl nsw i64 %2046, 2
  %2048 = add i64 %2041, -1616
  %2049 = add i64 %2048, %2047
  %2050 = add i64 %1945, 19
  store i64 %2050, i64* %3, align 8
  %2051 = inttoptr i64 %2049 to i32*
  %2052 = load i32, i32* %2051, align 4
  %2053 = sitofp i32 %2052 to double
  store double %2053, double* %149, align 1
  %2054 = add i64 %1945, 23
  store i64 %2054, i64* %3, align 8
  %2055 = load double, double* %150, align 1
  %2056 = fcmp uno double %2055, %2053
  br i1 %2056, label %2057, label %2067

; <label>:2057:                                   ; preds = %block_.L_46e824
  %2058 = fadd double %2053, %2055
  %2059 = bitcast double %2058 to i64
  %2060 = and i64 %2059, 9221120237041090560
  %2061 = icmp eq i64 %2060, 9218868437227405312
  %2062 = and i64 %2059, 2251799813685247
  %2063 = icmp ne i64 %2062, 0
  %2064 = and i1 %2061, %2063
  br i1 %2064, label %2065, label %2073

; <label>:2065:                                   ; preds = %2057
  %2066 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2054, %struct.Memory* %1942)
  %.pre61 = load i64, i64* %3, align 8
  %.pre62 = load i8, i8* %14, align 1
  %.pre63 = load i8, i8* %29, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:2067:                                   ; preds = %block_.L_46e824
  %2068 = fcmp ogt double %2055, %2053
  br i1 %2068, label %2073, label %2069

; <label>:2069:                                   ; preds = %2067
  %2070 = fcmp olt double %2055, %2053
  br i1 %2070, label %2073, label %2071

; <label>:2071:                                   ; preds = %2069
  %2072 = fcmp oeq double %2055, %2053
  br i1 %2072, label %2073, label %2077

; <label>:2073:                                   ; preds = %2071, %2069, %2067, %2057
  %2074 = phi i8 [ 0, %2067 ], [ 0, %2069 ], [ 1, %2071 ], [ 1, %2057 ]
  %2075 = phi i8 [ 0, %2067 ], [ 0, %2069 ], [ 0, %2071 ], [ 1, %2057 ]
  %2076 = phi i8 [ 0, %2067 ], [ 1, %2069 ], [ 0, %2071 ], [ 1, %2057 ]
  store i8 %2074, i8* %29, align 1
  store i8 %2075, i8* %21, align 1
  store i8 %2076, i8* %14, align 1
  br label %2077

; <label>:2077:                                   ; preds = %2073, %2071
  %2078 = phi i8 [ %2074, %2073 ], [ %1939, %2071 ]
  %2079 = phi i8 [ %2076, %2073 ], [ %1940, %2071 ]
  store i8 0, i8* %38, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %26, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %2077, %2065
  %2080 = phi i8 [ %.pre63, %2065 ], [ %2078, %2077 ]
  %2081 = phi i8 [ %.pre62, %2065 ], [ %2079, %2077 ]
  %2082 = phi i64 [ %.pre61, %2065 ], [ %2054, %2077 ]
  %2083 = phi %struct.Memory* [ %2066, %2065 ], [ %1942, %2077 ]
  %2084 = or i8 %2080, %2081
  %2085 = icmp ne i8 %2084, 0
  %.v101 = select i1 %2085, i64 79, i64 6
  %2086 = add i64 %2082, %.v101
  store i64 %2086, i64* %3, align 8
  br i1 %2085, label %block_.L_46e88a, label %block_46e841

block_46e841:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %2087 = add i64 %2086, ptrtoint (%G_0x748c3__rip__type* @G_0x748c3__rip_ to i64)
  %2088 = add i64 %2086, 8
  store i64 %2088, i64* %3, align 8
  %2089 = inttoptr i64 %2087 to i32*
  %2090 = load i32, i32* %2089, align 4
  store i32 %2090, i32* %46, align 1
  store float 0.000000e+00, float* %152, align 1
  store float 0.000000e+00, float* %153, align 1
  store float 0.000000e+00, float* %154, align 1
  %2091 = load <2 x i32>, <2 x i32>* %155, align 1
  %2092 = load <2 x i32>, <2 x i32>* %156, align 1
  %2093 = extractelement <2 x i32> %2091, i32 0
  store i32 %2093, i32* %157, align 1
  %2094 = extractelement <2 x i32> %2091, i32 1
  store i32 %2094, i32* %159, align 1
  %2095 = extractelement <2 x i32> %2092, i32 0
  store i32 %2095, i32* %161, align 1
  %2096 = extractelement <2 x i32> %2092, i32 1
  store i32 %2096, i32* %163, align 1
  %2097 = load i64, i64* %RBP.i, align 8
  %2098 = add i64 %2097, -1624
  %2099 = add i64 %2086, 19
  store i64 %2099, i64* %3, align 8
  %2100 = load <2 x float>, <2 x float>* %164, align 1
  %2101 = load <2 x i32>, <2 x i32>* %165, align 1
  %2102 = inttoptr i64 %2098 to float*
  %2103 = load float, float* %2102, align 4
  %2104 = extractelement <2 x float> %2100, i32 0
  %2105 = fadd float %2104, %2103
  store float %2105, float* %166, align 1
  %2106 = bitcast <2 x float> %2100 to <2 x i32>
  %2107 = extractelement <2 x i32> %2106, i32 1
  store i32 %2107, i32* %159, align 1
  %2108 = extractelement <2 x i32> %2101, i32 0
  store i32 %2108, i32* %161, align 1
  %2109 = extractelement <2 x i32> %2101, i32 1
  store i32 %2109, i32* %163, align 1
  %2110 = add i64 %2086, 27
  store i64 %2110, i64* %3, align 8
  %2111 = load <2 x float>, <2 x float>* %164, align 1
  %2112 = extractelement <2 x float> %2111, i32 0
  store float %2112, float* %2102, align 4
  %2113 = load i64, i64* %RBP.i, align 8
  %2114 = add i64 %2113, -1632
  %2115 = load i64, i64* %3, align 8
  %2116 = add i64 %2115, 8
  store i64 %2116, i64* %3, align 8
  %2117 = load <2 x float>, <2 x float>* %66, align 1
  %2118 = load <2 x i32>, <2 x i32>* %156, align 1
  %2119 = inttoptr i64 %2114 to float*
  %2120 = load float, float* %2119, align 4
  %2121 = extractelement <2 x float> %2117, i32 0
  %2122 = fadd float %2121, %2120
  store float %2122, float* %151, align 1
  %2123 = bitcast <2 x float> %2117 to <2 x i32>
  %2124 = extractelement <2 x i32> %2123, i32 1
  store i32 %2124, i32* %48, align 1
  %2125 = extractelement <2 x i32> %2118, i32 0
  store i32 %2125, i32* %49, align 1
  %2126 = extractelement <2 x i32> %2118, i32 1
  store i32 %2126, i32* %51, align 1
  %2127 = add i64 %2115, 16
  store i64 %2127, i64* %3, align 8
  %2128 = load <2 x float>, <2 x float>* %66, align 1
  %2129 = extractelement <2 x float> %2128, i32 0
  store float %2129, float* %2119, align 4
  %2130 = load i64, i64* %RBP.i, align 8
  %2131 = add i64 %2130, -1676
  %2132 = load i64, i64* %3, align 8
  %2133 = add i64 %2132, 6
  store i64 %2133, i64* %3, align 8
  %2134 = inttoptr i64 %2131 to i32*
  %2135 = load i32, i32* %2134, align 4
  %2136 = add i32 %2135, 1
  %2137 = zext i32 %2136 to i64
  store i64 %2137, i64* %RAX.i656, align 8
  %2138 = icmp eq i32 %2135, -1
  %2139 = icmp eq i32 %2136, 0
  %2140 = or i1 %2138, %2139
  %2141 = zext i1 %2140 to i8
  store i8 %2141, i8* %14, align 1
  %2142 = and i32 %2136, 255
  %2143 = tail call i32 @llvm.ctpop.i32(i32 %2142)
  %2144 = trunc i32 %2143 to i8
  %2145 = and i8 %2144, 1
  %2146 = xor i8 %2145, 1
  store i8 %2146, i8* %21, align 1
  %2147 = xor i32 %2136, %2135
  %2148 = lshr i32 %2147, 4
  %2149 = trunc i32 %2148 to i8
  %2150 = and i8 %2149, 1
  store i8 %2150, i8* %26, align 1
  %2151 = zext i1 %2139 to i8
  store i8 %2151, i8* %29, align 1
  %2152 = lshr i32 %2136, 31
  %2153 = trunc i32 %2152 to i8
  store i8 %2153, i8* %32, align 1
  %2154 = lshr i32 %2135, 31
  %2155 = xor i32 %2152, %2154
  %2156 = add nuw nsw i32 %2155, %2152
  %2157 = icmp eq i32 %2156, 2
  %2158 = zext i1 %2157 to i8
  store i8 %2158, i8* %38, align 1
  %2159 = add i64 %2132, 15
  store i64 %2159, i64* %3, align 8
  store i32 %2136, i32* %2134, align 4
  %2160 = load i64, i64* %RBP.i, align 8
  %2161 = add i64 %2160, -1688
  %2162 = load i64, i64* %3, align 8
  %2163 = add i64 %2162, 6
  store i64 %2163, i64* %3, align 8
  %2164 = inttoptr i64 %2161 to i32*
  %2165 = load i32, i32* %2164, align 4
  %2166 = add i32 %2165, 1
  %2167 = zext i32 %2166 to i64
  store i64 %2167, i64* %RAX.i656, align 8
  %2168 = icmp eq i32 %2165, -1
  %2169 = icmp eq i32 %2166, 0
  %2170 = or i1 %2168, %2169
  %2171 = zext i1 %2170 to i8
  store i8 %2171, i8* %14, align 1
  %2172 = and i32 %2166, 255
  %2173 = tail call i32 @llvm.ctpop.i32(i32 %2172)
  %2174 = trunc i32 %2173 to i8
  %2175 = and i8 %2174, 1
  %2176 = xor i8 %2175, 1
  store i8 %2176, i8* %21, align 1
  %2177 = xor i32 %2166, %2165
  %2178 = lshr i32 %2177, 4
  %2179 = trunc i32 %2178 to i8
  %2180 = and i8 %2179, 1
  store i8 %2180, i8* %26, align 1
  %2181 = zext i1 %2169 to i8
  store i8 %2181, i8* %29, align 1
  %2182 = lshr i32 %2166, 31
  %2183 = trunc i32 %2182 to i8
  store i8 %2183, i8* %32, align 1
  %2184 = lshr i32 %2165, 31
  %2185 = xor i32 %2182, %2184
  %2186 = add nuw nsw i32 %2185, %2182
  %2187 = icmp eq i32 %2186, 2
  %2188 = zext i1 %2187 to i8
  store i8 %2188, i8* %38, align 1
  %2189 = add i64 %2162, 15
  store i64 %2189, i64* %3, align 8
  store i32 %2166, i32* %2164, align 4
  %.pre64 = load i64, i64* %3, align 8
  br label %block_.L_46e88a

block_.L_46e88a:                                  ; preds = %block_46e841, %routine_ucomisd__xmm1___xmm0.exit
  %2190 = phi i64 [ %.pre64, %block_46e841 ], [ %2086, %routine_ucomisd__xmm1___xmm0.exit ]
  %2191 = add i64 %2190, 5
  store i64 %2191, i64* %3, align 8
  br label %block_.L_46e88f

block_.L_46e88f:                                  ; preds = %block_.L_46e88a, %block_46e7d2
  %storemerge34 = phi i64 [ %2040, %block_46e7d2 ], [ %2191, %block_.L_46e88a ]
  %MEMORY.19 = phi %struct.Memory* [ %1942, %block_46e7d2 ], [ %2083, %block_.L_46e88a ]
  %2192 = add i64 %storemerge34, 5
  store i64 %2192, i64* %3, align 8
  br label %block_.L_46e894

block_.L_46e894:                                  ; preds = %block_.L_46e88f, %block_.L_46e7b0
  %storemerge33 = phi i64 [ %1902, %block_.L_46e7b0 ], [ %2192, %block_.L_46e88f ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.15, %block_.L_46e7b0 ], [ %MEMORY.19, %block_.L_46e88f ]
  %2193 = add i64 %storemerge33, 5
  store i64 %2193, i64* %3, align 8
  br label %block_.L_46e899

block_.L_46e899:                                  ; preds = %block_.L_46e894, %block_.L_46e728
  %storemerge32 = phi i64 [ %1764, %block_.L_46e728 ], [ %2193, %block_.L_46e894 ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.15, %block_.L_46e728 ], [ %MEMORY.20, %block_.L_46e894 ]
  %2194 = load i64, i64* %RBP.i, align 8
  %2195 = add i64 %2194, -1640
  %2196 = add i64 %storemerge32, 11
  store i64 %2196, i64* %3, align 8
  %2197 = inttoptr i64 %2195 to i32*
  %2198 = load i32, i32* %2197, align 4
  %2199 = add i32 %2198, 1
  %2200 = zext i32 %2199 to i64
  store i64 %2200, i64* %RAX.i656, align 8
  %2201 = icmp eq i32 %2198, -1
  %2202 = icmp eq i32 %2199, 0
  %2203 = or i1 %2201, %2202
  %2204 = zext i1 %2203 to i8
  store i8 %2204, i8* %14, align 1
  %2205 = and i32 %2199, 255
  %2206 = tail call i32 @llvm.ctpop.i32(i32 %2205)
  %2207 = trunc i32 %2206 to i8
  %2208 = and i8 %2207, 1
  %2209 = xor i8 %2208, 1
  store i8 %2209, i8* %21, align 1
  %2210 = xor i32 %2199, %2198
  %2211 = lshr i32 %2210, 4
  %2212 = trunc i32 %2211 to i8
  %2213 = and i8 %2212, 1
  store i8 %2213, i8* %26, align 1
  %2214 = zext i1 %2202 to i8
  store i8 %2214, i8* %29, align 1
  %2215 = lshr i32 %2199, 31
  %2216 = trunc i32 %2215 to i8
  store i8 %2216, i8* %32, align 1
  %2217 = lshr i32 %2198, 31
  %2218 = xor i32 %2215, %2217
  %2219 = add nuw nsw i32 %2218, %2215
  %2220 = icmp eq i32 %2219, 2
  %2221 = zext i1 %2220 to i8
  store i8 %2221, i8* %38, align 1
  %2222 = add i64 %storemerge32, 20
  store i64 %2222, i64* %3, align 8
  store i32 %2199, i32* %2197, align 4
  %2223 = load i64, i64* %3, align 8
  %2224 = add i64 %2223, -601
  store i64 %2224, i64* %3, align 8
  br label %block_.L_46e654

block_.L_46e8b2:                                  ; preds = %block_.L_46e654
  %2225 = load i32, i32* bitcast (%G_0xab0fc0_type* @G_0xab0fc0 to i32*), align 8
  %2226 = icmp eq i32 %2225, 0
  %.v96 = select i1 %2226, i64 95, i64 14
  %2227 = add i64 %1503, %.v96
  %2228 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %2229 = and i32 %2228, 65536
  %2230 = zext i32 %2229 to i64
  store i64 %2230, i64* %RAX.i656, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit84 = lshr exact i32 %2229, 16
  %2231 = trunc i32 %.lobit84 to i8
  %2232 = xor i8 %2231, 1
  store i8 %2232, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2233 = icmp eq i8 %2232, 0
  %.v97 = select i1 %2233, i64 26, i64 21
  %2234 = add i64 %2227, %.v97
  store i64 %2234, i64* %3, align 8
  br i1 %2226, label %block_.L_46e911, label %block_46e8c0

block_46e8c0:                                     ; preds = %block_.L_46e8b2
  br i1 %2233, label %block_.L_46e8da, label %block_46e8d5

block_46e8d5:                                     ; preds = %block_46e8c0
  %2235 = add i64 %2234, 55
  store i64 %2235, i64* %3, align 8
  br label %block_.L_46e90c

block_.L_46e8da:                                  ; preds = %block_46e8c0
  store i64 ptrtoint (%G__0x58058f_type* @G__0x58058f to i64), i64* %RDI.i937, align 8
  %2236 = zext i32 %1476 to i64
  store i64 %2236, i64* %RAX.i656, align 8
  %2237 = add i64 %1470, -1636
  %2238 = add i64 %2234, 23
  store i64 %2238, i64* %3, align 8
  %2239 = inttoptr i64 %2237 to i32*
  %2240 = load i32, i32* %2239, align 4
  %2241 = sub i32 %1476, %2240
  %2242 = zext i32 %2241 to i64
  store i64 %2242, i64* %RAX.i656, align 8
  %2243 = icmp ult i32 %1476, %2240
  %2244 = zext i1 %2243 to i8
  store i8 %2244, i8* %14, align 1
  %2245 = and i32 %2241, 255
  %2246 = tail call i32 @llvm.ctpop.i32(i32 %2245)
  %2247 = trunc i32 %2246 to i8
  %2248 = and i8 %2247, 1
  %2249 = xor i8 %2248, 1
  store i8 %2249, i8* %21, align 1
  %2250 = xor i32 %2240, %1476
  %2251 = xor i32 %2250, %2241
  %2252 = lshr i32 %2251, 4
  %2253 = trunc i32 %2252 to i8
  %2254 = and i8 %2253, 1
  store i8 %2254, i8* %26, align 1
  %2255 = icmp eq i32 %2241, 0
  %2256 = zext i1 %2255 to i8
  store i8 %2256, i8* %29, align 1
  %2257 = lshr i32 %2241, 31
  %2258 = trunc i32 %2257 to i8
  store i8 %2258, i8* %32, align 1
  %2259 = lshr i32 %2240, 31
  %2260 = xor i32 %2259, %1495
  %2261 = xor i32 %2257, %1495
  %2262 = add nuw nsw i32 %2261, %2260
  %2263 = icmp eq i32 %2262, 2
  %2264 = zext i1 %2263 to i8
  store i8 %2264, i8* %38, align 1
  %2265 = add i64 %1470, -1684
  %2266 = add i64 %2234, 29
  store i64 %2266, i64* %3, align 8
  %2267 = inttoptr i64 %2265 to i32*
  %2268 = load i32, i32* %2267, align 4
  %2269 = zext i32 %2268 to i64
  store i64 %2269, i64* %RDX.i946, align 8
  %2270 = add i64 %1470, -1688
  %2271 = add i64 %2234, 35
  store i64 %2271, i64* %3, align 8
  %2272 = inttoptr i64 %2270 to i32*
  %2273 = load i32, i32* %2272, align 4
  %2274 = zext i32 %2273 to i64
  store i64 %2274, i64* %RCX.i707, align 8
  store i64 %2242, i64* %RSI.i934, align 8
  store i8 0, i8* %AL.i546, align 1
  %2275 = add i64 %2234, -117546
  %2276 = add i64 %2234, 44
  %2277 = load i64, i64* %6, align 8
  %2278 = add i64 %2277, -8
  %2279 = inttoptr i64 %2278 to i64*
  store i64 %2276, i64* %2279, align 8
  store i64 %2278, i64* %6, align 8
  store i64 %2275, i64* %3, align 8
  %call2_46e901 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2275, %struct.Memory* %MEMORY.15)
  %2280 = load i64, i64* %RBP.i, align 8
  %2281 = add i64 %2280, -1712
  %2282 = load i32, i32* %EAX.i919, align 4
  %2283 = load i64, i64* %3, align 8
  %2284 = add i64 %2283, 6
  store i64 %2284, i64* %3, align 8
  %2285 = inttoptr i64 %2281 to i32*
  store i32 %2282, i32* %2285, align 4
  %.pre54 = load i64, i64* %3, align 8
  br label %block_.L_46e90c

block_.L_46e90c:                                  ; preds = %block_.L_46e8da, %block_46e8d5
  %2286 = phi i64 [ %.pre54, %block_.L_46e8da ], [ %2235, %block_46e8d5 ]
  %MEMORY.22 = phi %struct.Memory* [ %call2_46e901, %block_.L_46e8da ], [ %MEMORY.15, %block_46e8d5 ]
  %2287 = add i64 %2286, 86
  br label %block_.L_46e962

block_.L_46e911:                                  ; preds = %block_.L_46e8b2
  br i1 %2233, label %block_.L_46e92b, label %block_46e926

block_46e926:                                     ; preds = %block_.L_46e911
  %2288 = add i64 %2234, 55
  store i64 %2288, i64* %3, align 8
  br label %block_.L_46e95d

block_.L_46e92b:                                  ; preds = %block_.L_46e911
  store i64 ptrtoint (%G__0x5805b3_type* @G__0x5805b3 to i64), i64* %RDI.i937, align 8
  %2289 = zext i32 %1476 to i64
  store i64 %2289, i64* %RAX.i656, align 8
  %2290 = add i64 %1470, -1636
  %2291 = add i64 %2234, 23
  store i64 %2291, i64* %3, align 8
  %2292 = inttoptr i64 %2290 to i32*
  %2293 = load i32, i32* %2292, align 4
  %2294 = sub i32 %1476, %2293
  %2295 = zext i32 %2294 to i64
  store i64 %2295, i64* %RAX.i656, align 8
  %2296 = icmp ult i32 %1476, %2293
  %2297 = zext i1 %2296 to i8
  store i8 %2297, i8* %14, align 1
  %2298 = and i32 %2294, 255
  %2299 = tail call i32 @llvm.ctpop.i32(i32 %2298)
  %2300 = trunc i32 %2299 to i8
  %2301 = and i8 %2300, 1
  %2302 = xor i8 %2301, 1
  store i8 %2302, i8* %21, align 1
  %2303 = xor i32 %2293, %1476
  %2304 = xor i32 %2303, %2294
  %2305 = lshr i32 %2304, 4
  %2306 = trunc i32 %2305 to i8
  %2307 = and i8 %2306, 1
  store i8 %2307, i8* %26, align 1
  %2308 = icmp eq i32 %2294, 0
  %2309 = zext i1 %2308 to i8
  store i8 %2309, i8* %29, align 1
  %2310 = lshr i32 %2294, 31
  %2311 = trunc i32 %2310 to i8
  store i8 %2311, i8* %32, align 1
  %2312 = lshr i32 %2293, 31
  %2313 = xor i32 %2312, %1495
  %2314 = xor i32 %2310, %1495
  %2315 = add nuw nsw i32 %2314, %2313
  %2316 = icmp eq i32 %2315, 2
  %2317 = zext i1 %2316 to i8
  store i8 %2317, i8* %38, align 1
  %2318 = add i64 %1470, -1680
  %2319 = add i64 %2234, 29
  store i64 %2319, i64* %3, align 8
  %2320 = inttoptr i64 %2318 to i32*
  %2321 = load i32, i32* %2320, align 4
  %2322 = zext i32 %2321 to i64
  store i64 %2322, i64* %RDX.i946, align 8
  %2323 = add i64 %1470, -1676
  %2324 = add i64 %2234, 35
  store i64 %2324, i64* %3, align 8
  %2325 = inttoptr i64 %2323 to i32*
  %2326 = load i32, i32* %2325, align 4
  %2327 = zext i32 %2326 to i64
  store i64 %2327, i64* %RCX.i707, align 8
  store i64 %2295, i64* %RSI.i934, align 8
  store i8 0, i8* %AL.i546, align 1
  %2328 = add i64 %2234, -117627
  %2329 = add i64 %2234, 44
  %2330 = load i64, i64* %6, align 8
  %2331 = add i64 %2330, -8
  %2332 = inttoptr i64 %2331 to i64*
  store i64 %2329, i64* %2332, align 8
  store i64 %2331, i64* %6, align 8
  store i64 %2328, i64* %3, align 8
  %call2_46e952 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2328, %struct.Memory* %MEMORY.15)
  %2333 = load i64, i64* %RBP.i, align 8
  %2334 = add i64 %2333, -1716
  %2335 = load i32, i32* %EAX.i919, align 4
  %2336 = load i64, i64* %3, align 8
  %2337 = add i64 %2336, 6
  store i64 %2337, i64* %3, align 8
  %2338 = inttoptr i64 %2334 to i32*
  store i32 %2335, i32* %2338, align 4
  %.pre55 = load i64, i64* %3, align 8
  br label %block_.L_46e95d

block_.L_46e95d:                                  ; preds = %block_.L_46e92b, %block_46e926
  %2339 = phi i64 [ %.pre55, %block_.L_46e92b ], [ %2288, %block_46e926 ]
  %MEMORY.23 = phi %struct.Memory* [ %call2_46e952, %block_.L_46e92b ], [ %MEMORY.15, %block_46e926 ]
  %2340 = add i64 %2339, 5
  store i64 %2340, i64* %3, align 8
  br label %block_.L_46e962

block_.L_46e962:                                  ; preds = %block_.L_46e95d, %block_.L_46e90c
  %storemerge36 = phi i64 [ %2287, %block_.L_46e90c ], [ %2340, %block_.L_46e95d ]
  %MEMORY.24 = phi %struct.Memory* [ %MEMORY.22, %block_.L_46e90c ], [ %MEMORY.23, %block_.L_46e95d ]
  %2341 = load i64, i64* %RBP.i, align 8
  %2342 = add i64 %2341, -1636
  %2343 = add i64 %storemerge36, 11
  store i64 %2343, i64* %3, align 8
  %2344 = inttoptr i64 %2342 to i32*
  %2345 = load i32, i32* %2344, align 4
  %2346 = add i32 %2345, 1
  %2347 = zext i32 %2346 to i64
  store i64 %2347, i64* %RAX.i656, align 8
  %2348 = icmp eq i32 %2345, -1
  %2349 = icmp eq i32 %2346, 0
  %2350 = or i1 %2348, %2349
  %2351 = zext i1 %2350 to i8
  store i8 %2351, i8* %14, align 1
  %2352 = and i32 %2346, 255
  %2353 = tail call i32 @llvm.ctpop.i32(i32 %2352)
  %2354 = trunc i32 %2353 to i8
  %2355 = and i8 %2354, 1
  %2356 = xor i8 %2355, 1
  store i8 %2356, i8* %21, align 1
  %2357 = xor i32 %2346, %2345
  %2358 = lshr i32 %2357, 4
  %2359 = trunc i32 %2358 to i8
  %2360 = and i8 %2359, 1
  store i8 %2360, i8* %26, align 1
  %2361 = zext i1 %2349 to i8
  store i8 %2361, i8* %29, align 1
  %2362 = lshr i32 %2346, 31
  %2363 = trunc i32 %2362 to i8
  store i8 %2363, i8* %32, align 1
  %2364 = lshr i32 %2345, 31
  %2365 = xor i32 %2362, %2364
  %2366 = add nuw nsw i32 %2365, %2362
  %2367 = icmp eq i32 %2366, 2
  %2368 = zext i1 %2367 to i8
  store i8 %2368, i8* %38, align 1
  %2369 = add i64 %storemerge36, 20
  store i64 %2369, i64* %3, align 8
  store i32 %2346, i32* %2344, align 4
  %2370 = load i64, i64* %3, align 8
  %2371 = add i64 %2370, -871
  store i64 %2371, i64* %3, align 8
  br label %block_.L_46e60f

block_.L_46e97b:                                  ; preds = %block_.L_46e60f
  %2372 = load i32, i32* bitcast (%G_0xab0fc0_type* @G_0xab0fc0 to i32*), align 8
  store i8 0, i8* %14, align 1
  %2373 = and i32 %2372, 255
  %2374 = tail call i32 @llvm.ctpop.i32(i32 %2373)
  %2375 = trunc i32 %2374 to i8
  %2376 = and i8 %2375, 1
  %2377 = xor i8 %2376, 1
  store i8 %2377, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2378 = icmp eq i32 %2372, 0
  %2379 = zext i1 %2378 to i8
  store i8 %2379, i8* %29, align 1
  %2380 = lshr i32 %2372, 31
  %2381 = trunc i32 %2380 to i8
  store i8 %2381, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v91 = select i1 %2378, i64 52, i64 14
  %2382 = add i64 %1445, %.v91
  store i64 %2382, i64* %3, align 8
  br i1 %2378, label %block_.L_46e9af, label %block_46e989

block_46e989:                                     ; preds = %block_.L_46e97b
  %2383 = add i64 %1412, -1628
  %2384 = add i64 %2382, 8
  store i64 %2384, i64* %3, align 8
  %2385 = inttoptr i64 %2383 to i32*
  %2386 = load i32, i32* %2385, align 4
  store i32 %2386, i32* %46, align 1
  store float 0.000000e+00, float* %152, align 1
  store float 0.000000e+00, float* %153, align 1
  store float 0.000000e+00, float* %154, align 1
  %2387 = add i64 %1412, -1632
  %2388 = add i64 %2382, 16
  store i64 %2388, i64* %3, align 8
  %2389 = load <2 x float>, <2 x float>* %66, align 1
  %2390 = load <2 x i32>, <2 x i32>* %156, align 1
  %2391 = inttoptr i64 %2387 to float*
  %2392 = load float, float* %2391, align 4
  %2393 = extractelement <2 x float> %2389, i32 0
  %2394 = fsub float %2393, %2392
  store float %2394, float* %151, align 1
  %2395 = bitcast <2 x float> %2389 to <2 x i32>
  %2396 = extractelement <2 x i32> %2395, i32 1
  store i32 %2396, i32* %48, align 1
  %2397 = extractelement <2 x i32> %2390, i32 0
  store i32 %2397, i32* %49, align 1
  %2398 = extractelement <2 x i32> %2390, i32 1
  store i32 %2398, i32* %51, align 1
  %2399 = load <2 x float>, <2 x float>* %66, align 1
  %2400 = load <2 x i32>, <2 x i32>* %156, align 1
  %2401 = load float, float* bitcast (%G_0xb454f8_type* @G_0xb454f8 to float*), align 8
  %2402 = extractelement <2 x float> %2399, i32 0
  %2403 = fadd float %2402, %2401
  store float %2403, float* %151, align 1
  %2404 = bitcast <2 x float> %2399 to <2 x i32>
  %2405 = extractelement <2 x i32> %2404, i32 1
  store i32 %2405, i32* %48, align 1
  %2406 = extractelement <2 x i32> %2400, i32 0
  store i32 %2406, i32* %49, align 1
  %2407 = extractelement <2 x i32> %2400, i32 1
  store i32 %2407, i32* %51, align 1
  %2408 = add i64 %1412, -1652
  %2409 = add i64 %2382, 33
  store i64 %2409, i64* %3, align 8
  %2410 = load <2 x float>, <2 x float>* %66, align 1
  %2411 = extractelement <2 x float> %2410, i32 0
  %2412 = inttoptr i64 %2408 to float*
  store float %2411, float* %2412, align 4
  %2413 = load i64, i64* %3, align 8
  %2414 = add i64 %2413, 136
  store i64 %2414, i64* %3, align 8
  br label %block_.L_46ea32

block_.L_46e9af:                                  ; preds = %block_.L_46e97b
  %2415 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %2416 = and i32 %2415, 65536
  %2417 = zext i32 %2416 to i64
  store i64 %2417, i64* %RAX.i656, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %.lobit83 = lshr exact i32 %2416, 16
  %2418 = trunc i32 %.lobit83 to i8
  %2419 = xor i8 %2418, 1
  store i8 %2419, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %2420 = icmp eq i8 %2419, 0
  %.v94 = select i1 %2420, i64 26, i64 21
  %2421 = add i64 %2382, %.v94
  store i64 %2421, i64* %3, align 8
  br i1 %2420, label %block_.L_46e9c9, label %block_46e9c4

block_46e9c4:                                     ; preds = %block_.L_46e9af
  %2422 = add i64 %2421, 51
  store i64 %2422, i64* %3, align 8
  br label %block_.L_46e9f7

block_.L_46e9c9:                                  ; preds = %block_.L_46e9af
  store i64 ptrtoint (%G__0x5805dc_type* @G__0x5805dc to i64), i64* %RDI.i937, align 8
  %2423 = load i32, i32* bitcast (%G_0xb8c040_type* @G_0xb8c040 to i32*), align 8
  %2424 = zext i32 %2423 to i64
  store i64 %2424, i64* %RSI.i934, align 8
  %2425 = load i32, i32* bitcast (%G_0xb38cb0_type* @G_0xb38cb0 to i32*), align 8
  %2426 = zext i32 %2425 to i64
  store i64 %2426, i64* %RDX.i946, align 8
  %2427 = load float, float* bitcast (%G_0xb454f8_type* @G_0xb454f8 to float*), align 8
  %2428 = fpext float %2427 to double
  store double %2428, double* %150, align 1
  store i8 1, i8* %AL.i546, align 1
  %2429 = add i64 %2421, -117785
  %2430 = add i64 %2421, 40
  %2431 = load i64, i64* %6, align 8
  %2432 = add i64 %2431, -8
  %2433 = inttoptr i64 %2432 to i64*
  store i64 %2430, i64* %2433, align 8
  store i64 %2432, i64* %6, align 8
  store i64 %2429, i64* %3, align 8
  %call2_46e9ec = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2429, %struct.Memory* %MEMORY.14)
  %2434 = load i64, i64* %RBP.i, align 8
  %2435 = add i64 %2434, -1720
  %2436 = load i32, i32* %EAX.i919, align 4
  %2437 = load i64, i64* %3, align 8
  %2438 = add i64 %2437, 6
  store i64 %2438, i64* %3, align 8
  %2439 = inttoptr i64 %2435 to i32*
  store i32 %2436, i32* %2439, align 4
  %.pre50 = load i64, i64* %RBP.i, align 8
  %.pre51 = load i64, i64* %3, align 8
  br label %block_.L_46e9f7

block_.L_46e9f7:                                  ; preds = %block_.L_46e9c9, %block_46e9c4
  %2440 = phi i64 [ %.pre51, %block_.L_46e9c9 ], [ %2422, %block_46e9c4 ]
  %2441 = phi i64 [ %.pre50, %block_.L_46e9c9 ], [ %1412, %block_46e9c4 ]
  %MEMORY.25 = phi %struct.Memory* [ %call2_46e9ec, %block_.L_46e9c9 ], [ %MEMORY.14, %block_46e9c4 ]
  %2442 = add i64 %2441, -1620
  %2443 = add i64 %2440, 8
  store i64 %2443, i64* %3, align 8
  %2444 = inttoptr i64 %2442 to i32*
  %2445 = load i32, i32* %2444, align 4
  store i32 %2445, i32* %46, align 1
  store float 0.000000e+00, float* %152, align 1
  store float 0.000000e+00, float* %153, align 1
  store float 0.000000e+00, float* %154, align 1
  %2446 = bitcast %union.VectorReg* %147 to <2 x i32>*
  %2447 = load <2 x i32>, <2 x i32>* %2446, align 1
  %2448 = load <2 x i32>, <2 x i32>* %165, align 1
  %2449 = load i32, i32* bitcast (%G_0xb8c040_type* @G_0xb8c040 to i32*), align 8
  %2450 = sitofp i32 %2449 to float
  store float %2450, float* %166, align 1
  %2451 = extractelement <2 x i32> %2447, i32 1
  store i32 %2451, i32* %159, align 1
  %2452 = extractelement <2 x i32> %2448, i32 0
  store i32 %2452, i32* %161, align 1
  %2453 = extractelement <2 x i32> %2448, i32 1
  store i32 %2453, i32* %163, align 1
  %2454 = load <2 x float>, <2 x float>* %66, align 1
  %2455 = load <2 x i32>, <2 x i32>* %156, align 1
  %2456 = load <2 x float>, <2 x float>* %164, align 1
  %2457 = extractelement <2 x float> %2454, i32 0
  %2458 = extractelement <2 x float> %2456, i32 0
  %2459 = fadd float %2457, %2458
  store float %2459, float* %151, align 1
  %2460 = bitcast <2 x float> %2454 to <2 x i32>
  %2461 = extractelement <2 x i32> %2460, i32 1
  store i32 %2461, i32* %48, align 1
  %2462 = extractelement <2 x i32> %2455, i32 0
  store i32 %2462, i32* %49, align 1
  %2463 = extractelement <2 x i32> %2455, i32 1
  store i32 %2463, i32* %51, align 1
  %2464 = add i64 %2441, -1624
  %2465 = add i64 %2440, 29
  store i64 %2465, i64* %3, align 8
  %2466 = load <2 x float>, <2 x float>* %66, align 1
  %2467 = load <2 x i32>, <2 x i32>* %156, align 1
  %2468 = inttoptr i64 %2464 to float*
  %2469 = load float, float* %2468, align 4
  %2470 = extractelement <2 x float> %2466, i32 0
  %2471 = fsub float %2470, %2469
  store float %2471, float* %151, align 1
  %2472 = bitcast <2 x float> %2466 to <2 x i32>
  %2473 = extractelement <2 x i32> %2472, i32 1
  store i32 %2473, i32* %48, align 1
  %2474 = extractelement <2 x i32> %2467, i32 0
  store i32 %2474, i32* %49, align 1
  %2475 = extractelement <2 x i32> %2467, i32 1
  store i32 %2475, i32* %51, align 1
  %2476 = bitcast <2 x float> %2456 to <2 x i32>
  %2477 = load <2 x i32>, <2 x i32>* %165, align 1
  %2478 = load i32, i32* bitcast (%G_0xb38cb0_type* @G_0xb38cb0 to i32*), align 8
  %2479 = sitofp i32 %2478 to float
  store float %2479, float* %166, align 1
  %2480 = extractelement <2 x i32> %2476, i32 1
  store i32 %2480, i32* %159, align 1
  %2481 = extractelement <2 x i32> %2477, i32 0
  store i32 %2481, i32* %161, align 1
  %2482 = extractelement <2 x i32> %2477, i32 1
  store i32 %2482, i32* %163, align 1
  %2483 = load <2 x float>, <2 x float>* %66, align 1
  %2484 = load <2 x i32>, <2 x i32>* %156, align 1
  %2485 = load <2 x float>, <2 x float>* %164, align 1
  %2486 = extractelement <2 x float> %2483, i32 0
  %2487 = extractelement <2 x float> %2485, i32 0
  %2488 = fsub float %2486, %2487
  store float %2488, float* %151, align 1
  %2489 = bitcast <2 x float> %2483 to <2 x i32>
  %2490 = extractelement <2 x i32> %2489, i32 1
  store i32 %2490, i32* %48, align 1
  %2491 = extractelement <2 x i32> %2484, i32 0
  store i32 %2491, i32* %49, align 1
  %2492 = extractelement <2 x i32> %2484, i32 1
  store i32 %2492, i32* %51, align 1
  %2493 = load <2 x float>, <2 x float>* %66, align 1
  %2494 = load <2 x i32>, <2 x i32>* %156, align 1
  %2495 = load float, float* bitcast (%G_0xb454f8_type* @G_0xb454f8 to float*), align 8
  %2496 = extractelement <2 x float> %2493, i32 0
  %2497 = fadd float %2496, %2495
  store float %2497, float* %151, align 1
  %2498 = bitcast <2 x float> %2493 to <2 x i32>
  %2499 = extractelement <2 x i32> %2498, i32 1
  store i32 %2499, i32* %48, align 1
  %2500 = extractelement <2 x i32> %2494, i32 0
  store i32 %2500, i32* %49, align 1
  %2501 = extractelement <2 x i32> %2494, i32 1
  store i32 %2501, i32* %51, align 1
  %2502 = load i64, i64* %RBP.i, align 8
  %2503 = add i64 %2502, -1652
  %2504 = add i64 %2440, 59
  store i64 %2504, i64* %3, align 8
  %2505 = load <2 x float>, <2 x float>* %66, align 1
  %2506 = extractelement <2 x float> %2505, i32 0
  %2507 = inttoptr i64 %2503 to float*
  store float %2506, float* %2507, align 4
  %.pre52 = load i64, i64* %3, align 8
  br label %block_.L_46ea32

block_.L_46ea32:                                  ; preds = %block_.L_46e9f7, %block_46e989
  %2508 = phi i64 [ %.pre52, %block_.L_46e9f7 ], [ %2414, %block_46e989 ]
  %MEMORY.26 = phi %struct.Memory* [ %MEMORY.25, %block_.L_46e9f7 ], [ %MEMORY.14, %block_46e989 ]
  %2509 = add i64 %2508, 21
  store i64 %2509, i64* %3, align 8
  br label %block_.L_46ea47

block_.L_46ea37:                                  ; preds = %block_.L_46e5a8
  %2510 = add i64 %1342, -1648
  %2511 = add i64 %1356, 8
  store i64 %2511, i64* %3, align 8
  %2512 = inttoptr i64 %2510 to i32*
  %2513 = load i32, i32* %2512, align 4
  store i32 %2513, i32* %46, align 1
  store float 0.000000e+00, float* %152, align 1
  store float 0.000000e+00, float* %153, align 1
  store float 0.000000e+00, float* %154, align 1
  %2514 = add i64 %1342, -1652
  %2515 = add i64 %1356, 16
  store i64 %2515, i64* %3, align 8
  %2516 = load <2 x float>, <2 x float>* %66, align 1
  %2517 = extractelement <2 x float> %2516, i32 0
  %2518 = inttoptr i64 %2514 to float*
  store float %2517, float* %2518, align 4
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_46ea47

block_.L_46ea47:                                  ; preds = %block_.L_46ea37, %block_.L_46ea32
  %2519 = phi i64 [ %.pre65, %block_.L_46ea37 ], [ %2509, %block_.L_46ea32 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.13, %block_.L_46ea37 ], [ %MEMORY.26, %block_.L_46ea32 ]
  %2520 = load i64, i64* %RBP.i, align 8
  %2521 = add i64 %2520, -8
  %2522 = add i64 %2519, 5
  store i64 %2522, i64* %3, align 8
  %2523 = inttoptr i64 %2521 to i64*
  %2524 = load i64, i64* %2523, align 8
  store i8 0, i8* %14, align 1
  %2525 = trunc i64 %2524 to i32
  %2526 = and i32 %2525, 255
  %2527 = tail call i32 @llvm.ctpop.i32(i32 %2526)
  %2528 = trunc i32 %2527 to i8
  %2529 = and i8 %2528, 1
  %2530 = xor i8 %2529, 1
  store i8 %2530, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2531 = icmp eq i64 %2524, 0
  %2532 = zext i1 %2531 to i8
  store i8 %2532, i8* %29, align 1
  %2533 = lshr i64 %2524, 63
  %2534 = trunc i64 %2533 to i8
  store i8 %2534, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v92 = select i1 %2531, i64 27, i64 11
  %2535 = add i64 %2519, %.v92
  store i64 %2535, i64* %3, align 8
  br i1 %2531, label %block_.L_46ea62, label %block_46ea52

block_46ea52:                                     ; preds = %block_.L_46ea47
  %2536 = add i64 %2520, -1648
  %2537 = add i64 %2535, 8
  store i64 %2537, i64* %3, align 8
  %2538 = inttoptr i64 %2536 to i32*
  %2539 = load i32, i32* %2538, align 4
  store i32 %2539, i32* %46, align 1
  store float 0.000000e+00, float* %152, align 1
  store float 0.000000e+00, float* %153, align 1
  store float 0.000000e+00, float* %154, align 1
  %2540 = add i64 %2535, 12
  store i64 %2540, i64* %3, align 8
  %2541 = load i64, i64* %2523, align 8
  store i64 %2541, i64* %RAX.i656, align 8
  %2542 = add i64 %2535, 16
  store i64 %2542, i64* %3, align 8
  %2543 = load <2 x float>, <2 x float>* %66, align 1
  %2544 = extractelement <2 x float> %2543, i32 0
  %2545 = inttoptr i64 %2541 to float*
  store float %2544, float* %2545, align 4
  %.pre66 = load i64, i64* %RBP.i, align 8
  %.pre67 = load i64, i64* %3, align 8
  br label %block_.L_46ea62

block_.L_46ea62:                                  ; preds = %block_46ea52, %block_.L_46ea47
  %2546 = phi i64 [ %.pre67, %block_46ea52 ], [ %2535, %block_.L_46ea47 ]
  %2547 = phi i64 [ %.pre66, %block_46ea52 ], [ %2520, %block_.L_46ea47 ]
  %2548 = add i64 %2547, -16
  %2549 = add i64 %2546, 5
  store i64 %2549, i64* %3, align 8
  %2550 = inttoptr i64 %2548 to i64*
  %2551 = load i64, i64* %2550, align 8
  store i8 0, i8* %14, align 1
  %2552 = trunc i64 %2551 to i32
  %2553 = and i32 %2552, 255
  %2554 = tail call i32 @llvm.ctpop.i32(i32 %2553)
  %2555 = trunc i32 %2554 to i8
  %2556 = and i8 %2555, 1
  %2557 = xor i8 %2556, 1
  store i8 %2557, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2558 = icmp eq i64 %2551, 0
  %2559 = zext i1 %2558 to i8
  store i8 %2559, i8* %29, align 1
  %2560 = lshr i64 %2551, 63
  %2561 = trunc i64 %2560 to i8
  store i8 %2561, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v93 = select i1 %2558, i64 27, i64 11
  %2562 = add i64 %2546, %.v93
  store i64 %2562, i64* %3, align 8
  br i1 %2558, label %block_.L_46ea7d, label %block_46ea6d

block_46ea6d:                                     ; preds = %block_.L_46ea62
  %2563 = add i64 %2547, -1652
  %2564 = add i64 %2562, 8
  store i64 %2564, i64* %3, align 8
  %2565 = inttoptr i64 %2563 to i32*
  %2566 = load i32, i32* %2565, align 4
  store i32 %2566, i32* %46, align 1
  store float 0.000000e+00, float* %152, align 1
  store float 0.000000e+00, float* %153, align 1
  store float 0.000000e+00, float* %154, align 1
  %2567 = add i64 %2562, 12
  store i64 %2567, i64* %3, align 8
  %2568 = load i64, i64* %2550, align 8
  store i64 %2568, i64* %RAX.i656, align 8
  %2569 = add i64 %2562, 16
  store i64 %2569, i64* %3, align 8
  %2570 = load <2 x float>, <2 x float>* %66, align 1
  %2571 = extractelement <2 x float> %2570, i32 0
  %2572 = inttoptr i64 %2568 to float*
  store float %2571, float* %2572, align 4
  %.pre68 = load i64, i64* %3, align 8
  %.pre69 = load i64, i64* %RBP.i, align 8
  br label %block_.L_46ea7d

block_.L_46ea7d:                                  ; preds = %block_46ea6d, %block_.L_46ea62
  %2573 = phi i64 [ %.pre69, %block_46ea6d ], [ %2547, %block_.L_46ea62 ]
  %2574 = phi i64 [ %.pre68, %block_46ea6d ], [ %2562, %block_.L_46ea62 ]
  %2575 = add i64 %2574, ptrtoint (%G_0x746af__rip__type* @G_0x746af__rip_ to i64)
  %2576 = add i64 %2574, 8
  store i64 %2576, i64* %3, align 8
  %2577 = inttoptr i64 %2575 to i32*
  %2578 = load i32, i32* %2577, align 4
  store i32 %2578, i32* %46, align 1
  store float 0.000000e+00, float* %152, align 1
  store float 0.000000e+00, float* %153, align 1
  store float 0.000000e+00, float* %154, align 1
  %2579 = add i64 %2573, -1648
  %2580 = add i64 %2574, 16
  store i64 %2580, i64* %3, align 8
  %2581 = inttoptr i64 %2579 to i32*
  %2582 = load i32, i32* %2581, align 4
  store i32 %2582, i32* %157, align 1
  store float 0.000000e+00, float* %167, align 1
  store float 0.000000e+00, float* %168, align 1
  store float 0.000000e+00, float* %169, align 1
  %2583 = add i64 %2573, -1652
  %2584 = add i64 %2574, 24
  store i64 %2584, i64* %3, align 8
  %2585 = load <2 x float>, <2 x float>* %164, align 1
  %2586 = load <2 x i32>, <2 x i32>* %165, align 1
  %2587 = inttoptr i64 %2583 to float*
  %2588 = load float, float* %2587, align 4
  %2589 = extractelement <2 x float> %2585, i32 0
  %2590 = fadd float %2589, %2588
  store float %2590, float* %166, align 1
  %2591 = bitcast <2 x float> %2585 to <2 x i32>
  %2592 = extractelement <2 x i32> %2591, i32 1
  store i32 %2592, i32* %159, align 1
  %2593 = extractelement <2 x i32> %2586, i32 0
  store i32 %2593, i32* %161, align 1
  %2594 = extractelement <2 x i32> %2586, i32 1
  store i32 %2594, i32* %163, align 1
  %2595 = load <2 x float>, <2 x float>* %164, align 1
  %2596 = load <2 x i32>, <2 x i32>* %165, align 1
  %2597 = load <2 x float>, <2 x float>* %66, align 1
  %2598 = extractelement <2 x float> %2595, i32 0
  %2599 = extractelement <2 x float> %2597, i32 0
  %2600 = fdiv float %2598, %2599
  store float %2600, float* %166, align 1
  %2601 = bitcast <2 x float> %2595 to <2 x i32>
  %2602 = extractelement <2 x i32> %2601, i32 1
  store i32 %2602, i32* %159, align 1
  %2603 = extractelement <2 x i32> %2596, i32 0
  store i32 %2603, i32* %161, align 1
  %2604 = extractelement <2 x i32> %2596, i32 1
  store i32 %2604, i32* %163, align 1
  %2605 = bitcast %union.VectorReg* %147 to <2 x i32>*
  %2606 = load <2 x i32>, <2 x i32>* %2605, align 1
  %2607 = load <2 x i32>, <2 x i32>* %165, align 1
  %2608 = extractelement <2 x i32> %2606, i32 0
  store i32 %2608, i32* %46, align 1
  %2609 = extractelement <2 x i32> %2606, i32 1
  store i32 %2609, i32* %48, align 1
  %2610 = extractelement <2 x i32> %2607, i32 0
  store i32 %2610, i32* %49, align 1
  %2611 = extractelement <2 x i32> %2607, i32 1
  store i32 %2611, i32* %51, align 1
  %2612 = load i64, i64* %6, align 8
  %2613 = add i64 %2612, 1728
  store i64 %2613, i64* %6, align 8
  %2614 = icmp ugt i64 %2612, -1729
  %2615 = zext i1 %2614 to i8
  store i8 %2615, i8* %14, align 1
  %2616 = trunc i64 %2613 to i32
  %2617 = and i32 %2616, 255
  %2618 = tail call i32 @llvm.ctpop.i32(i32 %2617)
  %2619 = trunc i32 %2618 to i8
  %2620 = and i8 %2619, 1
  %2621 = xor i8 %2620, 1
  store i8 %2621, i8* %21, align 1
  %2622 = xor i64 %2613, %2612
  %2623 = lshr i64 %2622, 4
  %2624 = trunc i64 %2623 to i8
  %2625 = and i8 %2624, 1
  store i8 %2625, i8* %26, align 1
  %2626 = icmp eq i64 %2613, 0
  %2627 = zext i1 %2626 to i8
  store i8 %2627, i8* %29, align 1
  %2628 = lshr i64 %2613, 63
  %2629 = trunc i64 %2628 to i8
  store i8 %2629, i8* %32, align 1
  %2630 = lshr i64 %2612, 63
  %2631 = xor i64 %2628, %2630
  %2632 = add nuw nsw i64 %2631, %2628
  %2633 = icmp eq i64 %2632, 2
  %2634 = zext i1 %2633 to i8
  store i8 %2634, i8* %38, align 1
  %2635 = add i64 %2574, 39
  store i64 %2635, i64* %3, align 8
  %2636 = add i64 %2612, 1736
  %2637 = inttoptr i64 %2613 to i64*
  %2638 = load i64, i64* %2637, align 8
  store i64 %2638, i64* %RBP.i, align 8
  store i64 %2636, i64* %6, align 8
  %2639 = add i64 %2574, 40
  store i64 %2639, i64* %3, align 8
  %2640 = inttoptr i64 %2636 to i64*
  %2641 = load i64, i64* %2640, align 8
  store i64 %2641, i64* %3, align 8
  %2642 = add i64 %2612, 1744
  store i64 %2642, i64* %6, align 8
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
define %struct.Memory* @routine_subq__0x6c0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1728
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 1728
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
define %struct.Memory* @routine_movl__0x5___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x15___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 21, i64* %RCX, align 8
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
define %struct.Memory* @routine_leaq_MINUS0x650__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1616
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x654__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1620
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x658__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1624
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x65c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1628
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x660__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1632
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
define %struct.Memory* @routine_movl__edx__MINUS0x69c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1692
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x69c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1692
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
define %struct.Memory* @routine_callq_.dilate_erode(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x650__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1616
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x678__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1656
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.close_bubbles(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x10000___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 65536
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 16
  %9 = trunc i64 %.lobit to i8
  %10 = xor i8 %9, 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %10, i8* %11, align 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
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
define %struct.Memory* @routine_je_.L_46e157(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.print_regions(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x664__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1636
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x664__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1636
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
define %struct.Memory* @routine_cmpl_0x7ae438___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_46e4f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x67c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1660
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x680__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1664
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x684__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1668
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x688__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1672
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x668__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1640
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x668__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1640
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
define %struct.Memory* @routine_jge_.L_46e428(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_imull__0x14__MINUS0x664__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1636
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 20
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967292
  store i64 %12, i64* %RAX, align 8
  %13 = mul i64 %9, 85899345920
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %11, 252
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x15___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 21
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -22
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x668__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1640
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
define %struct.Memory* @routine_movl__eax__MINUS0x66c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1644
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x66c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1644
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
define %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -2
  %8 = icmp ult i32 %4, 2
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
define %struct.Memory* @routine_jne_.L_46e27f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x66c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1644
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
define %struct.Memory* @routine_callq_.captured_territory(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46e253(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x74f04__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x74f04__rip__type* @G_0x74f04__rip_ to i64)
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
define %struct.Memory* @routine_movss_0x74f24__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x74f24__rip__type* @G_0x74f24__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_MINUS0x654__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1620
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fadd float %16, %15
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
define %struct.Memory* @routine_movss__xmm1__MINUS0x654__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1620
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
define %struct.Memory* @routine_addss_MINUS0x65c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1628
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fadd float %16, %15
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
define %struct.Memory* @routine_movl_MINUS0x680__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1664
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
define %struct.Memory* @routine_addl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 2
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -3
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
define %struct.Memory* @routine_movl__eax__MINUS0x680__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1664
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x684__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1668
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
define %struct.Memory* @routine_movl__eax__MINUS0x684__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1668
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46e27a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x74eb1__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x74eb1__rip__type* @G_0x74eb1__rip_ to i64)
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
define %struct.Memory* @routine_addss_MINUS0x660__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1632
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fadd float %16, %15
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
define %struct.Memory* @routine_movl_MINUS0x688__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1672
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
define %struct.Memory* @routine_movl__eax__MINUS0x688__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1672
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46e40f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x66c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1644
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -1
  %8 = icmp eq i32 %4, 0
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
define %struct.Memory* @routine_jne_.L_46e32f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46e303(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x74e54__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x74e54__rip__type* @G_0x74e54__rip_ to i64)
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
define %struct.Memory* @routine_movss_0x74e74__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x74e74__rip__type* @G_0x74e74__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_MINUS0x658__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1624
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fadd float %16, %15
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
define %struct.Memory* @routine_movss__xmm1__MINUS0x658__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1624
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
define %struct.Memory* @routine_movl_MINUS0x67c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1660
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
define %struct.Memory* @routine_movl__eax__MINUS0x67c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1660
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46e32a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x74e01__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x74e01__rip__type* @G_0x74e01__rip_ to i64)
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
define %struct.Memory* @routine_jmpq_.L_46e40a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2sdl_MINUS0x650__rbp__rax_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1616
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = sitofp i32 %12 to double
  %14 = bitcast %union.VectorReg* %3 to double*
  store double %13, double* %14, align 1
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
define %struct.Memory* @routine_jbe_.L_46e39a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x74db8__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x74db8__rip__type* @G_0x74db8__rip_ to i64)
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
define %struct.Memory* @routine_jmpq_.L_46e405(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
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
define %struct.Memory* @routine_jbe_.L_46e400(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x74d4d__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x74d4d__rip__type* @G_0x74d4d__rip_ to i64)
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
define %struct.Memory* @routine_jmpq_.L_46e414(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x668__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1640
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46e1a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xab0fc0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0fc0_type* @G_0xab0fc0 to i32*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = and i32 %5, 255
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i32 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i32 %5, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46e487(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46e450(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46e482(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x58058f___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58058f_type* @G__0x58058f to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7ae438___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x664__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1636
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
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
define %struct.Memory* @routine_movl_MINUS0x684__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1668
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
define %struct.Memory* @routine_movl_MINUS0x688__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1672
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
define %struct.Memory* @routine_movl__eax___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
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
define %struct.Memory* @routine_callq_.gprintf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x6a0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1696
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46e4d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_46e4a1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46e4d3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5805b3___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5805b3_type* @G__0x5805b3 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x680__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1664
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
define %struct.Memory* @routine_movl_MINUS0x67c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1660
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
define %struct.Memory* @routine_movl__eax__MINUS0x6a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1700
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46e4dd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x664__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1636
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46e161(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46e525(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_MINUS0x65c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1628
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
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
define %struct.Memory* @routine_subss_MINUS0x660__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1632
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_addss_0xb454f8___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load float, float* bitcast (%G_0xb454f8_type* @G_0xb454f8 to float*), align 8
  %13 = extractelement <2 x float> %8, i32 0
  %14 = fadd float %13, %12
  %15 = bitcast %union.VectorReg* %3 to float*
  store float %14, float* %15, align 1
  %16 = bitcast <2 x float> %8 to <2 x i32>
  %17 = extractelement <2 x i32> %16, i32 1
  %18 = getelementptr inbounds i8, i8* %4, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 0
  %21 = bitcast i64* %9 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %11, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x670__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1648
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
define %struct.Memory* @routine_jmpq_.L_46e5a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_46e53f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46e56d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5805dc___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5805dc_type* @G__0x5805dc to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb8c040___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb8c040_type* @G_0xb8c040 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb38cb0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb38cb0_type* @G_0xb38cb0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0xb454f8___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = load float, float* bitcast (%G_0xb454f8_type* @G_0xb454f8 to float*), align 8
  %7 = fpext float %6 to double
  %8 = bitcast %union.VectorReg* %3 to double*
  store double %7, double* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 1, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1704
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x654__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1620
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
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
define %struct.Memory* @routine_cvtsi2ssl_0xb8c040___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load i32, i32* bitcast (%G_0xb8c040_type* @G_0xb8c040 to i32*), align 8
  %13 = sitofp i32 %12 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %8, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %11, i32 0
  %19 = bitcast i64* %9 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subss_MINUS0x658__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1624
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_cvtsi2ssl_0xb38cb0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 9
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %12 = load i32, i32* bitcast (%G_0xb38cb0_type* @G_0xb38cb0 to i32*), align 8
  %13 = sitofp i32 %12 to float
  %14 = bitcast %union.VectorReg* %3 to float*
  store float %13, float* %14, align 1
  %15 = extractelement <2 x i32> %8, i32 1
  %16 = getelementptr inbounds i8, i8* %4, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %11, i32 0
  %19 = bitcast i64* %9 to i32*
  store i32 %18, i32* %19, align 1
  %20 = extractelement <2 x i32> %11, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 12
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_subss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %17 = fsub float %15, %16
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x678__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1656
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
define %struct.Memory* @routine_je_.L_46ea37(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x5___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x15___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 21, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x650__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1616
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6ac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1708
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_46e97b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x68c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1676
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x690__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1680
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x694__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1684
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x698__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1688
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_46e8b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46e72d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46e701(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x74a56__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x74a56__rip__type* @G_0x74a56__rip_ to i64)
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
define %struct.Memory* @routine_movss_0x74a76__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x74a76__rip__type* @G_0x74a76__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x690__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1680
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
define %struct.Memory* @routine_movl__eax__MINUS0x690__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1680
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x694__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1684
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
define %struct.Memory* @routine_movl__eax__MINUS0x694__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1684
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46e728(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x74a03__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x74a03__rip__type* @G_0x74a03__rip_ to i64)
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
define %struct.Memory* @routine_movl_MINUS0x698__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1688
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
define %struct.Memory* @routine_movl__eax__MINUS0x698__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1688
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46e899(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_46e7b5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46e7b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x749a6__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x749a6__rip__type* @G_0x749a6__rip_ to i64)
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
define %struct.Memory* @routine_movss_0x749c6__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x749c6__rip__type* @G_0x749c6__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss_MINUS0x660__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1632
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fadd float %16, %15
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
define %struct.Memory* @routine_movss__xmm1__MINUS0x660__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1632
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
define %struct.Memory* @routine_movl_MINUS0x68c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1676
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
define %struct.Memory* @routine_movl__eax__MINUS0x68c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1676
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46e894(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_46e824(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x74932__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x74932__rip__type* @G_0x74932__rip_ to i64)
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
define %struct.Memory* @routine_addss_MINUS0x65c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1628
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fadd float %16, %15
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
define %struct.Memory* @routine_movss__xmm1__MINUS0x65c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1628
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
define %struct.Memory* @routine_jmpq_.L_46e88f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_46e88a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0x748c3__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x748c3__rip__type* @G_0x748c3__rip_ to i64)
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
define %struct.Memory* @routine_jmpq_.L_46e89e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46e654(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46e911(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46e8da(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46e90c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x694__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1684
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
define %struct.Memory* @routine_movl_MINUS0x698__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1688
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
define %struct.Memory* @routine_movl__eax__MINUS0x6b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1712
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46e962(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_46e92b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46e95d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x690__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1680
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
define %struct.Memory* @routine_movl_MINUS0x68c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1676
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
define %struct.Memory* @routine_movl__eax__MINUS0x6b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1716
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46e967(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46e60f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46e9af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x674__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1652
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
define %struct.Memory* @routine_jmpq_.L_46ea32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_46e9c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46e9f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1720
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46ea47(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x670__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1648
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_je_.L_46ea62(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46ea7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_MINUS0x674__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1652
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
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
define %struct.Memory* @routine_movss_0x746af__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x746af__rip__type* @G_0x746af__rip_ to i64)
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
define %struct.Memory* @routine_movss_MINUS0x670__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1648
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
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
define %struct.Memory* @routine_addss_MINUS0x674__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1652
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fadd float %16, %15
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
define %struct.Memory* @routine_divss__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %17 = fdiv float %15, %16
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
define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x6c0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1728
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -1729
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
