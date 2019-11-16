; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x20c8f__rip__type = type <{ [4 x i8] }>
%G_0x20d4a__rip__type = type <{ [4 x i8] }>
%G_0x20d6d__rip__type = type <{ [4 x i8] }>
%G_0x20d90__rip__type = type <{ [4 x i8] }>
%G_0x20db8__rip__type = type <{ [8 x i8] }>
%G_0x20edc__rip__type = type <{ [8 x i8] }>
%G_0x20fdb__rip__type = type <{ [8 x i8] }>
%G_0x20fe4__rip__type = type <{ [8 x i8] }>
%G_0x21001__rip__type = type <{ [8 x i8] }>
%G_0x211dd__rip__type = type <{ [8 x i8] }>
%G_0x211f4__rip__type = type <{ [8 x i8] }>
%G_0x211fc__rip__type = type <{ [8 x i8] }>
%G_0x21304__rip__type = type <{ [8 x i8] }>
%G_0x21319__rip__type = type <{ [8 x i8] }>
%G_0x21339__rip__type = type <{ [8 x i8] }>
%G_0x21485__rip__type = type <{ [4 x i8] }>
%G_0x214fa__rip__type = type <{ [8 x i8] }>
%G_0x21524__rip__type = type <{ [8 x i8] }>
%G_0x2157d__rip__type = type <{ [4 x i8] }>
%G_0x215a2__rip__type = type <{ [8 x i8] }>
%G_0x676ffc_type = type <{ [4 x i8] }>
%G_0x677060_type = type <{ [4 x i8] }>
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
@G_0x20c8f__rip_ = global %G_0x20c8f__rip__type zeroinitializer
@G_0x20d4a__rip_ = global %G_0x20d4a__rip__type zeroinitializer
@G_0x20d6d__rip_ = global %G_0x20d6d__rip__type zeroinitializer
@G_0x20d90__rip_ = global %G_0x20d90__rip__type zeroinitializer
@G_0x20db8__rip_ = global %G_0x20db8__rip__type zeroinitializer
@G_0x20edc__rip_ = global %G_0x20edc__rip__type zeroinitializer
@G_0x20fdb__rip_ = global %G_0x20fdb__rip__type zeroinitializer
@G_0x20fe4__rip_ = global %G_0x20fe4__rip__type zeroinitializer
@G_0x21001__rip_ = global %G_0x21001__rip__type zeroinitializer
@G_0x211dd__rip_ = global %G_0x211dd__rip__type zeroinitializer
@G_0x211f4__rip_ = global %G_0x211f4__rip__type zeroinitializer
@G_0x211fc__rip_ = global %G_0x211fc__rip__type zeroinitializer
@G_0x21304__rip_ = global %G_0x21304__rip__type zeroinitializer
@G_0x21319__rip_ = global %G_0x21319__rip__type zeroinitializer
@G_0x21339__rip_ = global %G_0x21339__rip__type zeroinitializer
@G_0x21485__rip_ = global %G_0x21485__rip__type zeroinitializer
@G_0x214fa__rip_ = global %G_0x214fa__rip__type zeroinitializer
@G_0x21524__rip_ = global %G_0x21524__rip__type zeroinitializer
@G_0x2157d__rip_ = global %G_0x2157d__rip__type zeroinitializer
@G_0x215a2__rip_ = global %G_0x215a2__rip__type zeroinitializer
@G_0x676ffc = local_unnamed_addr global %G_0x676ffc_type zeroinitializer
@G_0x677060 = local_unnamed_addr global %G_0x677060_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #0

; Function Attrs: nounwind readnone
declare double @llvm.trunc.f64(double) #0

declare extern_weak x86_64_sysvcc i64 @floor(i64)

declare extern_weak x86_64_sysvcc i64 @log(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_427db0.Prob2Score(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_433ae0.DegenerateSymbolScore(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_428080.LogSum(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @P7Logoddsify(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -216
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 208
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
  %RDI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i, align 8
  %42 = add i64 %10, 14
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %44 to i32*
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -12
  %47 = load i32, i32* %ESI.i, align 4
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -8
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 4
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %52 to i64*
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %RDI.i, align 8
  %RSI.i = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %57 = add i64 %56, 456
  %58 = add i64 %53, 10
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %57 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 1
  %62 = zext i32 %61 to i64
  store i64 %62, i64* %RSI.i, align 8
  store i8 0, i8* %14, align 1
  %63 = tail call i32 @llvm.ctpop.i32(i32 %61)
  %64 = trunc i32 %63 to i8
  %65 = xor i8 %64, 1
  store i8 %65, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %66 = icmp eq i32 %61, 0
  %67 = trunc i32 %61 to i8
  %68 = xor i8 %67, 1
  store i8 %68, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v127 = select i1 %66, i64 27, i64 22
  %69 = add i64 %53, %.v127
  store i64 %69, i64* %3, align 8
  br i1 %66, label %block_.L_432f5d, label %block_432f58

block_432f58:                                     ; preds = %entry
  %70 = add i64 %69, 2937
  store i64 %70, i64* %3, align 8
  br label %block_.L_433ad1

block_.L_432f5d:                                  ; preds = %entry
  %71 = add i64 %51, -16
  %72 = add i64 %69, 7
  store i64 %72, i64* %3, align 8
  %73 = inttoptr i64 %71 to i32*
  store i32 1, i32* %73, align 4
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i525 = getelementptr inbounds %union.anon, %union.anon* %74, i64 0, i32 0
  %RCX.i611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %EAX.i632 = bitcast %union.anon* %74 to i32*
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %76 = bitcast [32 x %union.VectorReg]* %75 to i8*
  %77 = bitcast [32 x %union.VectorReg]* %75 to i32*
  %78 = getelementptr inbounds i8, i8* %76, i64 4
  %79 = bitcast i8* %78 to float*
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %81 = bitcast i64* %80 to float*
  %82 = getelementptr inbounds i8, i8* %76, i64 12
  %83 = bitcast i8* %82 to float*
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %85 = bitcast %union.VectorReg* %84 to i8*
  %86 = bitcast %union.VectorReg* %84 to i32*
  %87 = getelementptr inbounds i8, i8* %85, i64 4
  %88 = bitcast i8* %87 to float*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %90 = bitcast i64* %89 to float*
  %91 = getelementptr inbounds i8, i8* %85, i64 12
  %92 = bitcast i8* %91 to float*
  %RDX.i1538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_432f64

block_.L_432f64:                                  ; preds = %block_.L_433110, %block_.L_432f5d
  %93 = phi i64 [ %.pre, %block_.L_432f5d ], [ %687, %block_.L_433110 ]
  %94 = load i64, i64* %RBP.i, align 8
  %95 = add i64 %94, -16
  %96 = add i64 %93, 3
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %95 to i32*
  %98 = load i32, i32* %97, align 4
  %99 = zext i32 %98 to i64
  store i64 %99, i64* %RAX.i525, align 8
  %100 = add i64 %94, -8
  %101 = add i64 %93, 7
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %100 to i64*
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %RCX.i611, align 8
  %104 = add i64 %103, 136
  %105 = add i64 %93, 13
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %104 to i32*
  %107 = load i32, i32* %106, align 4
  %108 = sub i32 %98, %107
  %109 = icmp ult i32 %98, %107
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %14, align 1
  %111 = and i32 %108, 255
  %112 = tail call i32 @llvm.ctpop.i32(i32 %111)
  %113 = trunc i32 %112 to i8
  %114 = and i8 %113, 1
  %115 = xor i8 %114, 1
  store i8 %115, i8* %21, align 1
  %116 = xor i32 %107, %98
  %117 = xor i32 %116, %108
  %118 = lshr i32 %117, 4
  %119 = trunc i32 %118 to i8
  %120 = and i8 %119, 1
  store i8 %120, i8* %27, align 1
  %121 = icmp eq i32 %108, 0
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %30, align 1
  %123 = lshr i32 %108, 31
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %33, align 1
  %125 = lshr i32 %98, 31
  %126 = lshr i32 %107, 31
  %127 = xor i32 %126, %125
  %128 = xor i32 %123, %125
  %129 = add nuw nsw i32 %128, %127
  %130 = icmp eq i32 %129, 2
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %39, align 1
  %132 = icmp ne i8 %124, 0
  %133 = xor i1 %132, %130
  %.demorgan = or i1 %121, %133
  %.v128 = select i1 %.demorgan, i64 19, i64 447
  %134 = add i64 %93, %.v128
  store i64 %134, i64* %3, align 8
  br i1 %.demorgan, label %block_432f77, label %block_.L_433123

block_432f77:                                     ; preds = %block_.L_432f64
  %135 = add i64 %94, -20
  %136 = add i64 %134, 7
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %135 to i32*
  store i32 0, i32* %137, align 4
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_432f7e

block_.L_432f7e:                                  ; preds = %block_.L_433039, %block_432f77
  %138 = phi i64 [ %.pre73, %block_432f77 ], [ %388, %block_.L_433039 ]
  %139 = load i64, i64* %RBP.i, align 8
  %140 = add i64 %139, -20
  %141 = add i64 %138, 3
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %140 to i32*
  %143 = load i32, i32* %142, align 4
  %144 = zext i32 %143 to i64
  store i64 %144, i64* %RAX.i525, align 8
  %145 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %146 = sub i32 %143, %145
  %147 = icmp ult i32 %143, %145
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %14, align 1
  %149 = and i32 %146, 255
  %150 = tail call i32 @llvm.ctpop.i32(i32 %149)
  %151 = trunc i32 %150 to i8
  %152 = and i8 %151, 1
  %153 = xor i8 %152, 1
  store i8 %153, i8* %21, align 1
  %154 = xor i32 %145, %143
  %155 = xor i32 %154, %146
  %156 = lshr i32 %155, 4
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  store i8 %158, i8* %27, align 1
  %159 = icmp eq i32 %146, 0
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %30, align 1
  %161 = lshr i32 %146, 31
  %162 = trunc i32 %161 to i8
  store i8 %162, i8* %33, align 1
  %163 = lshr i32 %143, 31
  %164 = lshr i32 %145, 31
  %165 = xor i32 %164, %163
  %166 = xor i32 %161, %163
  %167 = add nuw nsw i32 %166, %165
  %168 = icmp eq i32 %167, 2
  %169 = zext i1 %168 to i8
  store i8 %169, i8* %39, align 1
  %170 = icmp ne i8 %162, 0
  %171 = xor i1 %170, %168
  %.v137 = select i1 %171, i64 16, i64 206
  %172 = add i64 %138, %.v137
  store i64 %172, i64* %3, align 8
  br i1 %171, label %block_432f8e, label %block_.L_43304c

block_432f8e:                                     ; preds = %block_.L_432f7e
  %173 = add i64 %139, -8
  %174 = add i64 %172, 4
  store i64 %174, i64* %3, align 8
  %175 = inttoptr i64 %173 to i64*
  %176 = load i64, i64* %175, align 8
  store i64 %176, i64* %RAX.i525, align 8
  %177 = add i64 %176, 152
  %178 = add i64 %172, 11
  store i64 %178, i64* %3, align 8
  %179 = inttoptr i64 %177 to i64*
  %180 = load i64, i64* %179, align 8
  store i64 %180, i64* %RAX.i525, align 8
  %181 = add i64 %139, -16
  %182 = add i64 %172, 15
  store i64 %182, i64* %3, align 8
  %183 = inttoptr i64 %181 to i32*
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  store i64 %185, i64* %RCX.i611, align 8
  %186 = shl nsw i64 %185, 3
  %187 = add i64 %186, %180
  %188 = add i64 %172, 19
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %187 to i64*
  %190 = load i64, i64* %189, align 8
  store i64 %190, i64* %RAX.i525, align 8
  %191 = add i64 %172, 23
  store i64 %191, i64* %3, align 8
  %192 = load i32, i32* %142, align 4
  %193 = sext i32 %192 to i64
  store i64 %193, i64* %RCX.i611, align 8
  %194 = shl nsw i64 %193, 2
  %195 = add i64 %194, %190
  %196 = add i64 %172, 28
  store i64 %196, i64* %3, align 8
  %197 = inttoptr i64 %195 to i32*
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %77, align 1
  store float 0.000000e+00, float* %79, align 1
  store float 0.000000e+00, float* %81, align 1
  store float 0.000000e+00, float* %83, align 1
  %199 = add i64 %172, 32
  store i64 %199, i64* %3, align 8
  %200 = load i64, i64* %175, align 8
  store i64 %200, i64* %RAX.i525, align 8
  %201 = add i64 %172, 36
  store i64 %201, i64* %3, align 8
  %202 = load i32, i32* %142, align 4
  %203 = sext i32 %202 to i64
  store i64 %203, i64* %RCX.i611, align 8
  %204 = shl nsw i64 %203, 2
  %205 = add i64 %200, 224
  %206 = add i64 %205, %204
  %207 = add i64 %172, 45
  store i64 %207, i64* %3, align 8
  %208 = inttoptr i64 %206 to i32*
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %86, align 1
  store float 0.000000e+00, float* %88, align 1
  store float 0.000000e+00, float* %90, align 1
  store float 0.000000e+00, float* %92, align 1
  %210 = add i64 %172, -45534
  %211 = add i64 %172, 50
  %212 = load i64, i64* %6, align 8
  %213 = add i64 %212, -8
  %214 = inttoptr i64 %213 to i64*
  store i64 %211, i64* %214, align 8
  store i64 %213, i64* %6, align 8
  store i64 %210, i64* %3, align 8
  %call2_432fbb = tail call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* nonnull %0, i64 %210, %struct.Memory* %2)
  %215 = load i64, i64* %RBP.i, align 8
  %216 = add i64 %215, -8
  %217 = load i64, i64* %3, align 8
  %218 = add i64 %217, 4
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %216 to i64*
  %220 = load i64, i64* %219, align 8
  store i64 %220, i64* %RCX.i611, align 8
  %221 = add i64 %220, 320
  %222 = add i64 %217, 11
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %221 to i64*
  %224 = load i64, i64* %223, align 8
  store i64 %224, i64* %RCX.i611, align 8
  %225 = add i64 %215, -20
  %226 = add i64 %217, 15
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %225 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  store i64 %229, i64* %RDX.i1538, align 8
  %230 = shl nsw i64 %229, 3
  %231 = add i64 %230, %224
  %232 = add i64 %217, 19
  store i64 %232, i64* %3, align 8
  %233 = inttoptr i64 %231 to i64*
  %234 = load i64, i64* %233, align 8
  store i64 %234, i64* %RCX.i611, align 8
  %235 = add i64 %215, -16
  %236 = add i64 %217, 23
  store i64 %236, i64* %3, align 8
  %237 = inttoptr i64 %235 to i32*
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  store i64 %239, i64* %RDX.i1538, align 8
  %240 = shl nsw i64 %239, 2
  %241 = add i64 %240, %234
  %242 = load i32, i32* %EAX.i632, align 4
  %243 = add i64 %217, 26
  store i64 %243, i64* %3, align 8
  %244 = inttoptr i64 %241 to i32*
  store i32 %242, i32* %244, align 4
  %245 = load i64, i64* %RBP.i, align 8
  %246 = add i64 %245, -16
  %247 = load i64, i64* %3, align 8
  %248 = add i64 %247, 3
  store i64 %248, i64* %3, align 8
  %249 = inttoptr i64 %246 to i32*
  %250 = load i32, i32* %249, align 4
  %251 = zext i32 %250 to i64
  store i64 %251, i64* %RAX.i525, align 8
  %252 = add i64 %245, -8
  %253 = add i64 %247, 7
  store i64 %253, i64* %3, align 8
  %254 = inttoptr i64 %252 to i64*
  %255 = load i64, i64* %254, align 8
  store i64 %255, i64* %RCX.i611, align 8
  %256 = add i64 %255, 136
  %257 = add i64 %247, 13
  store i64 %257, i64* %3, align 8
  %258 = inttoptr i64 %256 to i32*
  %259 = load i32, i32* %258, align 4
  %260 = sub i32 %250, %259
  %261 = icmp ult i32 %250, %259
  %262 = zext i1 %261 to i8
  store i8 %262, i8* %14, align 1
  %263 = and i32 %260, 255
  %264 = tail call i32 @llvm.ctpop.i32(i32 %263)
  %265 = trunc i32 %264 to i8
  %266 = and i8 %265, 1
  %267 = xor i8 %266, 1
  store i8 %267, i8* %21, align 1
  %268 = xor i32 %259, %250
  %269 = xor i32 %268, %260
  %270 = lshr i32 %269, 4
  %271 = trunc i32 %270 to i8
  %272 = and i8 %271, 1
  store i8 %272, i8* %27, align 1
  %273 = icmp eq i32 %260, 0
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %30, align 1
  %275 = lshr i32 %260, 31
  %276 = trunc i32 %275 to i8
  store i8 %276, i8* %33, align 1
  %277 = lshr i32 %250, 31
  %278 = lshr i32 %259, 31
  %279 = xor i32 %278, %277
  %280 = xor i32 %275, %277
  %281 = add nuw nsw i32 %280, %279
  %282 = icmp eq i32 %281, 2
  %283 = zext i1 %282 to i8
  store i8 %283, i8* %39, align 1
  %284 = icmp ne i8 %276, 0
  %285 = xor i1 %284, %282
  %.v139 = select i1 %285, i64 19, i64 95
  %286 = add i64 %247, %.v139
  store i64 %286, i64* %3, align 8
  br i1 %285, label %block_432fed, label %block_.L_433039

block_432fed:                                     ; preds = %block_432f8e
  %287 = add i64 %286, 4
  store i64 %287, i64* %3, align 8
  %288 = load i64, i64* %254, align 8
  store i64 %288, i64* %RAX.i525, align 8
  %289 = add i64 %288, 160
  %290 = add i64 %286, 11
  store i64 %290, i64* %3, align 8
  %291 = inttoptr i64 %289 to i64*
  %292 = load i64, i64* %291, align 8
  store i64 %292, i64* %RAX.i525, align 8
  %293 = add i64 %286, 15
  store i64 %293, i64* %3, align 8
  %294 = load i32, i32* %249, align 4
  %295 = sext i32 %294 to i64
  store i64 %295, i64* %RCX.i611, align 8
  %296 = shl nsw i64 %295, 3
  %297 = add i64 %296, %292
  %298 = add i64 %286, 19
  store i64 %298, i64* %3, align 8
  %299 = inttoptr i64 %297 to i64*
  %300 = load i64, i64* %299, align 8
  store i64 %300, i64* %RAX.i525, align 8
  %301 = add i64 %245, -20
  %302 = add i64 %286, 23
  store i64 %302, i64* %3, align 8
  %303 = inttoptr i64 %301 to i32*
  %304 = load i32, i32* %303, align 4
  %305 = sext i32 %304 to i64
  store i64 %305, i64* %RCX.i611, align 8
  %306 = shl nsw i64 %305, 2
  %307 = add i64 %306, %300
  %308 = add i64 %286, 28
  store i64 %308, i64* %3, align 8
  %309 = inttoptr i64 %307 to i32*
  %310 = load i32, i32* %309, align 4
  store i32 %310, i32* %77, align 1
  store float 0.000000e+00, float* %79, align 1
  store float 0.000000e+00, float* %81, align 1
  store float 0.000000e+00, float* %83, align 1
  %311 = add i64 %286, 32
  store i64 %311, i64* %3, align 8
  %312 = load i64, i64* %254, align 8
  store i64 %312, i64* %RAX.i525, align 8
  %313 = add i64 %286, 36
  store i64 %313, i64* %3, align 8
  %314 = load i32, i32* %303, align 4
  %315 = sext i32 %314 to i64
  store i64 %315, i64* %RCX.i611, align 8
  %316 = shl nsw i64 %315, 2
  %317 = add i64 %312, 224
  %318 = add i64 %317, %316
  %319 = add i64 %286, 45
  store i64 %319, i64* %3, align 8
  %320 = inttoptr i64 %318 to i32*
  %321 = load i32, i32* %320, align 4
  store i32 %321, i32* %86, align 1
  store float 0.000000e+00, float* %88, align 1
  store float 0.000000e+00, float* %90, align 1
  store float 0.000000e+00, float* %92, align 1
  %322 = add i64 %286, -45629
  %323 = add i64 %286, 50
  %324 = load i64, i64* %6, align 8
  %325 = add i64 %324, -8
  %326 = inttoptr i64 %325 to i64*
  store i64 %323, i64* %326, align 8
  store i64 %325, i64* %6, align 8
  store i64 %322, i64* %3, align 8
  %call2_43301a = tail call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* nonnull %0, i64 %322, %struct.Memory* %2)
  %327 = load i64, i64* %RBP.i, align 8
  %328 = add i64 %327, -8
  %329 = load i64, i64* %3, align 8
  %330 = add i64 %329, 4
  store i64 %330, i64* %3, align 8
  %331 = inttoptr i64 %328 to i64*
  %332 = load i64, i64* %331, align 8
  store i64 %332, i64* %RCX.i611, align 8
  %333 = add i64 %332, 328
  %334 = add i64 %329, 11
  store i64 %334, i64* %3, align 8
  %335 = inttoptr i64 %333 to i64*
  %336 = load i64, i64* %335, align 8
  store i64 %336, i64* %RCX.i611, align 8
  %337 = add i64 %327, -20
  %338 = add i64 %329, 15
  store i64 %338, i64* %3, align 8
  %339 = inttoptr i64 %337 to i32*
  %340 = load i32, i32* %339, align 4
  %341 = sext i32 %340 to i64
  store i64 %341, i64* %RDX.i1538, align 8
  %342 = shl nsw i64 %341, 3
  %343 = add i64 %342, %336
  %344 = add i64 %329, 19
  store i64 %344, i64* %3, align 8
  %345 = inttoptr i64 %343 to i64*
  %346 = load i64, i64* %345, align 8
  store i64 %346, i64* %RCX.i611, align 8
  %347 = add i64 %327, -16
  %348 = add i64 %329, 23
  store i64 %348, i64* %3, align 8
  %349 = inttoptr i64 %347 to i32*
  %350 = load i32, i32* %349, align 4
  %351 = sext i32 %350 to i64
  store i64 %351, i64* %RDX.i1538, align 8
  %352 = shl nsw i64 %351, 2
  %353 = add i64 %352, %346
  %354 = load i32, i32* %EAX.i632, align 4
  %355 = add i64 %329, 26
  store i64 %355, i64* %3, align 8
  %356 = inttoptr i64 %353 to i32*
  store i32 %354, i32* %356, align 4
  %.pre77 = load i64, i64* %3, align 8
  %.pre78 = load i64, i64* %RBP.i, align 8
  br label %block_.L_433039

block_.L_433039:                                  ; preds = %block_432f8e, %block_432fed
  %357 = phi i64 [ %245, %block_432f8e ], [ %.pre78, %block_432fed ]
  %358 = phi i64 [ %286, %block_432f8e ], [ %.pre77, %block_432fed ]
  %359 = add i64 %357, -20
  %360 = add i64 %358, 8
  store i64 %360, i64* %3, align 8
  %361 = inttoptr i64 %359 to i32*
  %362 = load i32, i32* %361, align 4
  %363 = add i32 %362, 1
  %364 = zext i32 %363 to i64
  store i64 %364, i64* %RAX.i525, align 8
  %365 = icmp eq i32 %362, -1
  %366 = icmp eq i32 %363, 0
  %367 = or i1 %365, %366
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %14, align 1
  %369 = and i32 %363, 255
  %370 = tail call i32 @llvm.ctpop.i32(i32 %369)
  %371 = trunc i32 %370 to i8
  %372 = and i8 %371, 1
  %373 = xor i8 %372, 1
  store i8 %373, i8* %21, align 1
  %374 = xor i32 %363, %362
  %375 = lshr i32 %374, 4
  %376 = trunc i32 %375 to i8
  %377 = and i8 %376, 1
  store i8 %377, i8* %27, align 1
  %378 = zext i1 %366 to i8
  store i8 %378, i8* %30, align 1
  %379 = lshr i32 %363, 31
  %380 = trunc i32 %379 to i8
  store i8 %380, i8* %33, align 1
  %381 = lshr i32 %362, 31
  %382 = xor i32 %379, %381
  %383 = add nuw nsw i32 %382, %379
  %384 = icmp eq i32 %383, 2
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %39, align 1
  %386 = add i64 %358, 14
  store i64 %386, i64* %3, align 8
  store i32 %363, i32* %361, align 4
  %387 = load i64, i64* %3, align 8
  %388 = add i64 %387, -201
  store i64 %388, i64* %3, align 8
  br label %block_.L_432f7e

block_.L_43304c:                                  ; preds = %block_.L_432f7e
  %389 = zext i32 %145 to i64
  store i64 %389, i64* %RAX.i525, align 8
  %390 = add i64 %172, 10
  store i64 %390, i64* %3, align 8
  store i32 %145, i32* %142, align 4
  %.pre74 = load i64, i64* %3, align 8
  br label %block_.L_433056

block_.L_433056:                                  ; preds = %block_.L_4330fd, %block_.L_43304c
  %391 = phi i64 [ %.pre74, %block_.L_43304c ], [ %657, %block_.L_4330fd ]
  %392 = load i64, i64* %RBP.i, align 8
  %393 = add i64 %392, -20
  %394 = add i64 %391, 3
  store i64 %394, i64* %3, align 8
  %395 = inttoptr i64 %393 to i32*
  %396 = load i32, i32* %395, align 4
  %397 = zext i32 %396 to i64
  store i64 %397, i64* %RAX.i525, align 8
  %398 = load i32, i32* bitcast (%G_0x676ffc_type* @G_0x676ffc to i32*), align 8
  %399 = sub i32 %396, %398
  %400 = icmp ult i32 %396, %398
  %401 = zext i1 %400 to i8
  store i8 %401, i8* %14, align 1
  %402 = and i32 %399, 255
  %403 = tail call i32 @llvm.ctpop.i32(i32 %402)
  %404 = trunc i32 %403 to i8
  %405 = and i8 %404, 1
  %406 = xor i8 %405, 1
  store i8 %406, i8* %21, align 1
  %407 = xor i32 %398, %396
  %408 = xor i32 %407, %399
  %409 = lshr i32 %408, 4
  %410 = trunc i32 %409 to i8
  %411 = and i8 %410, 1
  store i8 %411, i8* %27, align 1
  %412 = icmp eq i32 %399, 0
  %413 = zext i1 %412 to i8
  store i8 %413, i8* %30, align 1
  %414 = lshr i32 %399, 31
  %415 = trunc i32 %414 to i8
  store i8 %415, i8* %33, align 1
  %416 = lshr i32 %396, 31
  %417 = lshr i32 %398, 31
  %418 = xor i32 %417, %416
  %419 = xor i32 %414, %416
  %420 = add nuw nsw i32 %419, %418
  %421 = icmp eq i32 %420, 2
  %422 = zext i1 %421 to i8
  store i8 %422, i8* %39, align 1
  %423 = icmp ne i8 %415, 0
  %424 = xor i1 %423, %421
  %.v = select i1 %424, i64 16, i64 186
  %425 = add i64 %391, %.v
  store i64 %425, i64* %3, align 8
  br i1 %424, label %block_433066, label %block_.L_433110

block_433066:                                     ; preds = %block_.L_433056
  %426 = add i64 %392, -8
  %427 = add i64 %425, 4
  store i64 %427, i64* %3, align 8
  %428 = inttoptr i64 %426 to i64*
  %429 = load i64, i64* %428, align 8
  store i64 %429, i64* %RAX.i525, align 8
  %430 = add i64 %429, 152
  %431 = add i64 %425, 11
  store i64 %431, i64* %3, align 8
  %432 = inttoptr i64 %430 to i64*
  %433 = load i64, i64* %432, align 8
  store i64 %433, i64* %RAX.i525, align 8
  %434 = add i64 %392, -16
  %435 = add i64 %425, 15
  store i64 %435, i64* %3, align 8
  %436 = inttoptr i64 %434 to i32*
  %437 = load i32, i32* %436, align 4
  %438 = sext i32 %437 to i64
  store i64 %438, i64* %RCX.i611, align 8
  %439 = shl nsw i64 %438, 3
  %440 = add i64 %439, %433
  %441 = add i64 %425, 19
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %440 to i64*
  %443 = load i64, i64* %442, align 8
  store i64 %443, i64* %RDI.i, align 8
  %444 = add i64 %425, 23
  store i64 %444, i64* %3, align 8
  %445 = load i64, i64* %428, align 8
  %446 = add i64 %445, 224
  store i64 %446, i64* %RAX.i525, align 8
  %447 = icmp ugt i64 %445, -225
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %14, align 1
  %449 = trunc i64 %446 to i32
  %450 = and i32 %449, 255
  %451 = tail call i32 @llvm.ctpop.i32(i32 %450)
  %452 = trunc i32 %451 to i8
  %453 = and i8 %452, 1
  %454 = xor i8 %453, 1
  store i8 %454, i8* %21, align 1
  %455 = xor i64 %446, %445
  %456 = lshr i64 %455, 4
  %457 = trunc i64 %456 to i8
  %458 = and i8 %457, 1
  store i8 %458, i8* %27, align 1
  %459 = icmp eq i64 %446, 0
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %30, align 1
  %461 = lshr i64 %446, 63
  %462 = trunc i64 %461 to i8
  store i8 %462, i8* %33, align 1
  %463 = lshr i64 %445, 63
  %464 = xor i64 %461, %463
  %465 = add nuw nsw i64 %464, %461
  %466 = icmp eq i64 %465, 2
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %39, align 1
  %468 = add i64 %425, 32
  store i64 %468, i64* %3, align 8
  %469 = load i32, i32* %395, align 4
  %470 = zext i32 %469 to i64
  store i64 %470, i64* %RDX.i1538, align 8
  store i64 %446, i64* %RSI.i, align 8
  %471 = add i64 %425, 2682
  %472 = add i64 %425, 40
  %473 = load i64, i64* %6, align 8
  %474 = add i64 %473, -8
  %475 = inttoptr i64 %474 to i64*
  store i64 %472, i64* %475, align 8
  store i64 %474, i64* %6, align 8
  store i64 %471, i64* %3, align 8
  %call2_433089 = tail call %struct.Memory* @sub_433ae0.DegenerateSymbolScore(%struct.State* nonnull %0, i64 %471, %struct.Memory* %2)
  %476 = load i64, i64* %RBP.i, align 8
  %477 = add i64 %476, -8
  %478 = load i64, i64* %3, align 8
  %479 = add i64 %478, 4
  store i64 %479, i64* %3, align 8
  %480 = inttoptr i64 %477 to i64*
  %481 = load i64, i64* %480, align 8
  store i64 %481, i64* %RCX.i611, align 8
  %482 = add i64 %481, 320
  %483 = add i64 %478, 11
  store i64 %483, i64* %3, align 8
  %484 = inttoptr i64 %482 to i64*
  %485 = load i64, i64* %484, align 8
  store i64 %485, i64* %RCX.i611, align 8
  %486 = add i64 %476, -20
  %487 = add i64 %478, 15
  store i64 %487, i64* %3, align 8
  %488 = inttoptr i64 %486 to i32*
  %489 = load i32, i32* %488, align 4
  %490 = sext i32 %489 to i64
  store i64 %490, i64* %RSI.i, align 8
  %491 = shl nsw i64 %490, 3
  %492 = add i64 %491, %485
  %493 = add i64 %478, 19
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %492 to i64*
  %495 = load i64, i64* %494, align 8
  store i64 %495, i64* %RCX.i611, align 8
  %496 = add i64 %476, -16
  %497 = add i64 %478, 23
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %496 to i32*
  %499 = load i32, i32* %498, align 4
  %500 = sext i32 %499 to i64
  store i64 %500, i64* %RSI.i, align 8
  %501 = shl nsw i64 %500, 2
  %502 = add i64 %501, %495
  %503 = load i32, i32* %EAX.i632, align 4
  %504 = add i64 %478, 26
  store i64 %504, i64* %3, align 8
  %505 = inttoptr i64 %502 to i32*
  store i32 %503, i32* %505, align 4
  %506 = load i64, i64* %RBP.i, align 8
  %507 = add i64 %506, -16
  %508 = load i64, i64* %3, align 8
  %509 = add i64 %508, 3
  store i64 %509, i64* %3, align 8
  %510 = inttoptr i64 %507 to i32*
  %511 = load i32, i32* %510, align 4
  %512 = zext i32 %511 to i64
  store i64 %512, i64* %RAX.i525, align 8
  %513 = add i64 %506, -8
  %514 = add i64 %508, 7
  store i64 %514, i64* %3, align 8
  %515 = inttoptr i64 %513 to i64*
  %516 = load i64, i64* %515, align 8
  store i64 %516, i64* %RCX.i611, align 8
  %517 = add i64 %516, 136
  %518 = add i64 %508, 13
  store i64 %518, i64* %3, align 8
  %519 = inttoptr i64 %517 to i32*
  %520 = load i32, i32* %519, align 4
  %521 = sub i32 %511, %520
  %522 = icmp ult i32 %511, %520
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %14, align 1
  %524 = and i32 %521, 255
  %525 = tail call i32 @llvm.ctpop.i32(i32 %524)
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  %528 = xor i8 %527, 1
  store i8 %528, i8* %21, align 1
  %529 = xor i32 %520, %511
  %530 = xor i32 %529, %521
  %531 = lshr i32 %530, 4
  %532 = trunc i32 %531 to i8
  %533 = and i8 %532, 1
  store i8 %533, i8* %27, align 1
  %534 = icmp eq i32 %521, 0
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %30, align 1
  %536 = lshr i32 %521, 31
  %537 = trunc i32 %536 to i8
  store i8 %537, i8* %33, align 1
  %538 = lshr i32 %511, 31
  %539 = lshr i32 %520, 31
  %540 = xor i32 %539, %538
  %541 = xor i32 %536, %538
  %542 = add nuw nsw i32 %541, %540
  %543 = icmp eq i32 %542, 2
  %544 = zext i1 %543 to i8
  store i8 %544, i8* %39, align 1
  %545 = icmp ne i8 %537, 0
  %546 = xor i1 %545, %543
  %.v138 = select i1 %546, i64 19, i64 85
  %547 = add i64 %508, %.v138
  store i64 %547, i64* %3, align 8
  br i1 %546, label %block_4330bb, label %block_.L_4330fd

block_4330bb:                                     ; preds = %block_433066
  %548 = add i64 %547, 4
  store i64 %548, i64* %3, align 8
  %549 = load i64, i64* %515, align 8
  store i64 %549, i64* %RAX.i525, align 8
  %550 = add i64 %549, 160
  %551 = add i64 %547, 11
  store i64 %551, i64* %3, align 8
  %552 = inttoptr i64 %550 to i64*
  %553 = load i64, i64* %552, align 8
  store i64 %553, i64* %RAX.i525, align 8
  %554 = add i64 %547, 15
  store i64 %554, i64* %3, align 8
  %555 = load i32, i32* %510, align 4
  %556 = sext i32 %555 to i64
  store i64 %556, i64* %RCX.i611, align 8
  %557 = shl nsw i64 %556, 3
  %558 = add i64 %557, %553
  %559 = add i64 %547, 19
  store i64 %559, i64* %3, align 8
  %560 = inttoptr i64 %558 to i64*
  %561 = load i64, i64* %560, align 8
  store i64 %561, i64* %RDI.i, align 8
  %562 = add i64 %547, 23
  store i64 %562, i64* %3, align 8
  %563 = load i64, i64* %515, align 8
  %564 = add i64 %563, 224
  store i64 %564, i64* %RAX.i525, align 8
  %565 = icmp ugt i64 %563, -225
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %14, align 1
  %567 = trunc i64 %564 to i32
  %568 = and i32 %567, 255
  %569 = tail call i32 @llvm.ctpop.i32(i32 %568)
  %570 = trunc i32 %569 to i8
  %571 = and i8 %570, 1
  %572 = xor i8 %571, 1
  store i8 %572, i8* %21, align 1
  %573 = xor i64 %564, %563
  %574 = lshr i64 %573, 4
  %575 = trunc i64 %574 to i8
  %576 = and i8 %575, 1
  store i8 %576, i8* %27, align 1
  %577 = icmp eq i64 %564, 0
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %30, align 1
  %579 = lshr i64 %564, 63
  %580 = trunc i64 %579 to i8
  store i8 %580, i8* %33, align 1
  %581 = lshr i64 %563, 63
  %582 = xor i64 %579, %581
  %583 = add nuw nsw i64 %582, %579
  %584 = icmp eq i64 %583, 2
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %39, align 1
  %586 = add i64 %506, -20
  %587 = add i64 %547, 32
  store i64 %587, i64* %3, align 8
  %588 = inttoptr i64 %586 to i32*
  %589 = load i32, i32* %588, align 4
  %590 = zext i32 %589 to i64
  store i64 %590, i64* %RDX.i1538, align 8
  store i64 %564, i64* %RSI.i, align 8
  %591 = add i64 %547, 2597
  %592 = add i64 %547, 40
  %593 = load i64, i64* %6, align 8
  %594 = add i64 %593, -8
  %595 = inttoptr i64 %594 to i64*
  store i64 %592, i64* %595, align 8
  store i64 %594, i64* %6, align 8
  store i64 %591, i64* %3, align 8
  %call2_4330de = tail call %struct.Memory* @sub_433ae0.DegenerateSymbolScore(%struct.State* nonnull %0, i64 %591, %struct.Memory* %2)
  %596 = load i64, i64* %RBP.i, align 8
  %597 = add i64 %596, -8
  %598 = load i64, i64* %3, align 8
  %599 = add i64 %598, 4
  store i64 %599, i64* %3, align 8
  %600 = inttoptr i64 %597 to i64*
  %601 = load i64, i64* %600, align 8
  store i64 %601, i64* %RCX.i611, align 8
  %602 = add i64 %601, 328
  %603 = add i64 %598, 11
  store i64 %603, i64* %3, align 8
  %604 = inttoptr i64 %602 to i64*
  %605 = load i64, i64* %604, align 8
  store i64 %605, i64* %RCX.i611, align 8
  %606 = add i64 %596, -20
  %607 = add i64 %598, 15
  store i64 %607, i64* %3, align 8
  %608 = inttoptr i64 %606 to i32*
  %609 = load i32, i32* %608, align 4
  %610 = sext i32 %609 to i64
  store i64 %610, i64* %RSI.i, align 8
  %611 = shl nsw i64 %610, 3
  %612 = add i64 %611, %605
  %613 = add i64 %598, 19
  store i64 %613, i64* %3, align 8
  %614 = inttoptr i64 %612 to i64*
  %615 = load i64, i64* %614, align 8
  store i64 %615, i64* %RCX.i611, align 8
  %616 = add i64 %596, -16
  %617 = add i64 %598, 23
  store i64 %617, i64* %3, align 8
  %618 = inttoptr i64 %616 to i32*
  %619 = load i32, i32* %618, align 4
  %620 = sext i32 %619 to i64
  store i64 %620, i64* %RSI.i, align 8
  %621 = shl nsw i64 %620, 2
  %622 = add i64 %621, %615
  %623 = load i32, i32* %EAX.i632, align 4
  %624 = add i64 %598, 26
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %622 to i32*
  store i32 %623, i32* %625, align 4
  %.pre75 = load i64, i64* %3, align 8
  %.pre76 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4330fd

block_.L_4330fd:                                  ; preds = %block_433066, %block_4330bb
  %626 = phi i64 [ %506, %block_433066 ], [ %.pre76, %block_4330bb ]
  %627 = phi i64 [ %547, %block_433066 ], [ %.pre75, %block_4330bb ]
  %628 = add i64 %626, -20
  %629 = add i64 %627, 8
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %628 to i32*
  %631 = load i32, i32* %630, align 4
  %632 = add i32 %631, 1
  %633 = zext i32 %632 to i64
  store i64 %633, i64* %RAX.i525, align 8
  %634 = icmp eq i32 %631, -1
  %635 = icmp eq i32 %632, 0
  %636 = or i1 %634, %635
  %637 = zext i1 %636 to i8
  store i8 %637, i8* %14, align 1
  %638 = and i32 %632, 255
  %639 = tail call i32 @llvm.ctpop.i32(i32 %638)
  %640 = trunc i32 %639 to i8
  %641 = and i8 %640, 1
  %642 = xor i8 %641, 1
  store i8 %642, i8* %21, align 1
  %643 = xor i32 %632, %631
  %644 = lshr i32 %643, 4
  %645 = trunc i32 %644 to i8
  %646 = and i8 %645, 1
  store i8 %646, i8* %27, align 1
  %647 = zext i1 %635 to i8
  store i8 %647, i8* %30, align 1
  %648 = lshr i32 %632, 31
  %649 = trunc i32 %648 to i8
  store i8 %649, i8* %33, align 1
  %650 = lshr i32 %631, 31
  %651 = xor i32 %648, %650
  %652 = add nuw nsw i32 %651, %648
  %653 = icmp eq i32 %652, 2
  %654 = zext i1 %653 to i8
  store i8 %654, i8* %39, align 1
  %655 = add i64 %627, 14
  store i64 %655, i64* %3, align 8
  store i32 %632, i32* %630, align 4
  %656 = load i64, i64* %3, align 8
  %657 = add i64 %656, -181
  store i64 %657, i64* %3, align 8
  br label %block_.L_433056

block_.L_433110:                                  ; preds = %block_.L_433056
  %658 = add i64 %392, -16
  %659 = add i64 %425, 8
  store i64 %659, i64* %3, align 8
  %660 = inttoptr i64 %658 to i32*
  %661 = load i32, i32* %660, align 4
  %662 = add i32 %661, 1
  %663 = zext i32 %662 to i64
  store i64 %663, i64* %RAX.i525, align 8
  %664 = icmp eq i32 %661, -1
  %665 = icmp eq i32 %662, 0
  %666 = or i1 %664, %665
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %14, align 1
  %668 = and i32 %662, 255
  %669 = tail call i32 @llvm.ctpop.i32(i32 %668)
  %670 = trunc i32 %669 to i8
  %671 = and i8 %670, 1
  %672 = xor i8 %671, 1
  store i8 %672, i8* %21, align 1
  %673 = xor i32 %662, %661
  %674 = lshr i32 %673, 4
  %675 = trunc i32 %674 to i8
  %676 = and i8 %675, 1
  store i8 %676, i8* %27, align 1
  %677 = zext i1 %665 to i8
  store i8 %677, i8* %30, align 1
  %678 = lshr i32 %662, 31
  %679 = trunc i32 %678 to i8
  store i8 %679, i8* %33, align 1
  %680 = lshr i32 %661, 31
  %681 = xor i32 %678, %680
  %682 = add nuw nsw i32 %681, %678
  %683 = icmp eq i32 %682, 2
  %684 = zext i1 %683 to i8
  store i8 %684, i8* %39, align 1
  %685 = add i64 %425, 14
  store i64 %685, i64* %3, align 8
  store i32 %662, i32* %660, align 4
  %686 = load i64, i64* %3, align 8
  %687 = add i64 %686, -442
  store i64 %687, i64* %3, align 8
  br label %block_.L_432f64

block_.L_433123:                                  ; preds = %block_.L_432f64
  %688 = add i64 %134, 7
  store i64 %688, i64* %3, align 8
  store i32 1, i32* %97, align 4
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_43312a

block_.L_43312a:                                  ; preds = %block_43313d, %block_.L_433123
  %689 = phi i64 [ %1163, %block_43313d ], [ %.pre79, %block_.L_433123 ]
  %690 = load i64, i64* %RBP.i, align 8
  %691 = add i64 %690, -16
  %692 = add i64 %689, 3
  store i64 %692, i64* %3, align 8
  %693 = inttoptr i64 %691 to i32*
  %694 = load i32, i32* %693, align 4
  %695 = zext i32 %694 to i64
  store i64 %695, i64* %RAX.i525, align 8
  %696 = add i64 %690, -8
  %697 = add i64 %689, 7
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %696 to i64*
  %699 = load i64, i64* %698, align 8
  store i64 %699, i64* %RCX.i611, align 8
  %700 = add i64 %699, 136
  %701 = add i64 %689, 13
  store i64 %701, i64* %3, align 8
  %702 = inttoptr i64 %700 to i32*
  %703 = load i32, i32* %702, align 4
  %704 = sub i32 %694, %703
  %705 = icmp ult i32 %694, %703
  %706 = zext i1 %705 to i8
  store i8 %706, i8* %14, align 1
  %707 = and i32 %704, 255
  %708 = tail call i32 @llvm.ctpop.i32(i32 %707)
  %709 = trunc i32 %708 to i8
  %710 = and i8 %709, 1
  %711 = xor i8 %710, 1
  store i8 %711, i8* %21, align 1
  %712 = xor i32 %703, %694
  %713 = xor i32 %712, %704
  %714 = lshr i32 %713, 4
  %715 = trunc i32 %714 to i8
  %716 = and i8 %715, 1
  store i8 %716, i8* %27, align 1
  %717 = icmp eq i32 %704, 0
  %718 = zext i1 %717 to i8
  store i8 %718, i8* %30, align 1
  %719 = lshr i32 %704, 31
  %720 = trunc i32 %719 to i8
  store i8 %720, i8* %33, align 1
  %721 = lshr i32 %694, 31
  %722 = lshr i32 %703, 31
  %723 = xor i32 %722, %721
  %724 = xor i32 %719, %721
  %725 = add nuw nsw i32 %724, %723
  %726 = icmp eq i32 %725, 2
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %39, align 1
  %728 = icmp ne i8 %720, 0
  %729 = xor i1 %728, %726
  %.v129 = select i1 %729, i64 19, i64 464
  %730 = add i64 %689, %.v129
  store i64 %730, i64* %3, align 8
  br i1 %729, label %block_43313d, label %block_.L_4332fa

block_43313d:                                     ; preds = %block_.L_43312a
  %731 = add i64 %730, 4
  store i64 %731, i64* %3, align 8
  %732 = load i64, i64* %698, align 8
  store i64 %732, i64* %RAX.i525, align 8
  %733 = add i64 %732, 144
  %734 = add i64 %730, 11
  store i64 %734, i64* %3, align 8
  %735 = inttoptr i64 %733 to i64*
  %736 = load i64, i64* %735, align 8
  store i64 %736, i64* %RAX.i525, align 8
  %737 = add i64 %730, 15
  store i64 %737, i64* %3, align 8
  %738 = load i32, i32* %693, align 4
  %739 = sext i32 %738 to i64
  store i64 %739, i64* %RCX.i611, align 8
  %740 = shl nsw i64 %739, 3
  %741 = add i64 %740, %736
  %742 = add i64 %730, 19
  store i64 %742, i64* %3, align 8
  %743 = inttoptr i64 %741 to i64*
  %744 = load i64, i64* %743, align 8
  store i64 %744, i64* %RAX.i525, align 8
  %745 = add i64 %730, 23
  store i64 %745, i64* %3, align 8
  %746 = inttoptr i64 %744 to i32*
  %747 = load i32, i32* %746, align 4
  store i32 %747, i32* %77, align 1
  store float 0.000000e+00, float* %79, align 1
  store float 0.000000e+00, float* %81, align 1
  store float 0.000000e+00, float* %83, align 1
  %748 = add i64 %730, 27
  store i64 %748, i64* %3, align 8
  %749 = load i64, i64* %698, align 8
  store i64 %749, i64* %RAX.i525, align 8
  %750 = add i64 %749, 304
  %751 = add i64 %730, 35
  store i64 %751, i64* %3, align 8
  %752 = inttoptr i64 %750 to i32*
  %753 = load i32, i32* %752, align 4
  store i32 %753, i32* %86, align 1
  store float 0.000000e+00, float* %88, align 1
  store float 0.000000e+00, float* %90, align 1
  store float 0.000000e+00, float* %92, align 1
  %754 = add i64 %730, -45965
  %755 = add i64 %730, 40
  %756 = load i64, i64* %6, align 8
  %757 = add i64 %756, -8
  %758 = inttoptr i64 %757 to i64*
  store i64 %755, i64* %758, align 8
  store i64 %757, i64* %6, align 8
  store i64 %754, i64* %3, align 8
  %call2_433160 = tail call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* nonnull %0, i64 %754, %struct.Memory* %2)
  %759 = load i64, i64* %RBP.i, align 8
  %760 = add i64 %759, -8
  %761 = load i64, i64* %3, align 8
  %762 = add i64 %761, 4
  store i64 %762, i64* %3, align 8
  %763 = inttoptr i64 %760 to i64*
  %764 = load i64, i64* %763, align 8
  store i64 %764, i64* %RCX.i611, align 8
  %765 = add i64 %764, 312
  %766 = add i64 %761, 11
  store i64 %766, i64* %3, align 8
  %767 = inttoptr i64 %765 to i64*
  %768 = load i64, i64* %767, align 8
  store i64 %768, i64* %RCX.i611, align 8
  %769 = add i64 %761, 14
  store i64 %769, i64* %3, align 8
  %770 = inttoptr i64 %768 to i64*
  %771 = load i64, i64* %770, align 8
  store i64 %771, i64* %RCX.i611, align 8
  %772 = add i64 %759, -16
  %773 = add i64 %761, 18
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %772 to i32*
  %775 = load i32, i32* %774, align 4
  %776 = sext i32 %775 to i64
  store i64 %776, i64* %RDX.i1538, align 8
  %777 = shl nsw i64 %776, 2
  %778 = add i64 %777, %771
  %779 = load i32, i32* %EAX.i632, align 4
  %780 = add i64 %761, 21
  store i64 %780, i64* %3, align 8
  %781 = inttoptr i64 %778 to i32*
  store i32 %779, i32* %781, align 4
  %782 = load i64, i64* %RBP.i, align 8
  %783 = add i64 %782, -8
  %784 = load i64, i64* %3, align 8
  %785 = add i64 %784, 4
  store i64 %785, i64* %3, align 8
  %786 = inttoptr i64 %783 to i64*
  %787 = load i64, i64* %786, align 8
  store i64 %787, i64* %RCX.i611, align 8
  %788 = add i64 %787, 144
  %789 = add i64 %784, 11
  store i64 %789, i64* %3, align 8
  %790 = inttoptr i64 %788 to i64*
  %791 = load i64, i64* %790, align 8
  store i64 %791, i64* %RCX.i611, align 8
  %792 = add i64 %782, -16
  %793 = add i64 %784, 15
  store i64 %793, i64* %3, align 8
  %794 = inttoptr i64 %792 to i32*
  %795 = load i32, i32* %794, align 4
  %796 = sext i32 %795 to i64
  store i64 %796, i64* %RDX.i1538, align 8
  %797 = shl nsw i64 %796, 3
  %798 = add i64 %797, %791
  %799 = add i64 %784, 19
  store i64 %799, i64* %3, align 8
  %800 = inttoptr i64 %798 to i64*
  %801 = load i64, i64* %800, align 8
  store i64 %801, i64* %RCX.i611, align 8
  %802 = add i64 %801, 4
  %803 = add i64 %784, 24
  store i64 %803, i64* %3, align 8
  %804 = inttoptr i64 %802 to i32*
  %805 = load i32, i32* %804, align 4
  store i32 %805, i32* %77, align 1
  store float 0.000000e+00, float* %79, align 1
  store float 0.000000e+00, float* %81, align 1
  store float 0.000000e+00, float* %83, align 1
  %806 = add i64 %784, 28
  store i64 %806, i64* %3, align 8
  %807 = load i64, i64* %786, align 8
  store i64 %807, i64* %RCX.i611, align 8
  %808 = add i64 %807, 304
  %809 = add i64 %784, 36
  store i64 %809, i64* %3, align 8
  %810 = inttoptr i64 %808 to i32*
  %811 = load i32, i32* %810, align 4
  store i32 %811, i32* %86, align 1
  store float 0.000000e+00, float* %88, align 1
  store float 0.000000e+00, float* %90, align 1
  store float 0.000000e+00, float* %92, align 1
  %812 = add i64 %784, -46026
  %813 = add i64 %784, 41
  %814 = load i64, i64* %6, align 8
  %815 = add i64 %814, -8
  %816 = inttoptr i64 %815 to i64*
  store i64 %813, i64* %816, align 8
  store i64 %815, i64* %6, align 8
  store i64 %812, i64* %3, align 8
  %call2_43319e = tail call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* nonnull %0, i64 %812, %struct.Memory* %2)
  %817 = load i64, i64* %3, align 8
  %818 = add i64 %817, ptrtoint (%G_0x2157d__rip__type* @G_0x2157d__rip_ to i64)
  %819 = add i64 %817, 8
  store i64 %819, i64* %3, align 8
  %820 = inttoptr i64 %818 to i32*
  %821 = load i32, i32* %820, align 4
  store i32 %821, i32* %86, align 1
  store float 0.000000e+00, float* %88, align 1
  store float 0.000000e+00, float* %90, align 1
  store float 0.000000e+00, float* %92, align 1
  %822 = load i64, i64* %RBP.i, align 8
  %823 = add i64 %822, -8
  %824 = add i64 %817, 12
  store i64 %824, i64* %3, align 8
  %825 = inttoptr i64 %823 to i64*
  %826 = load i64, i64* %825, align 8
  store i64 %826, i64* %RCX.i611, align 8
  %827 = add i64 %826, 312
  %828 = add i64 %817, 19
  store i64 %828, i64* %3, align 8
  %829 = inttoptr i64 %827 to i64*
  %830 = load i64, i64* %829, align 8
  store i64 %830, i64* %RCX.i611, align 8
  %831 = add i64 %830, 8
  %832 = add i64 %817, 23
  store i64 %832, i64* %3, align 8
  %833 = inttoptr i64 %831 to i64*
  %834 = load i64, i64* %833, align 8
  store i64 %834, i64* %RCX.i611, align 8
  %835 = add i64 %822, -16
  %836 = add i64 %817, 27
  store i64 %836, i64* %3, align 8
  %837 = inttoptr i64 %835 to i32*
  %838 = load i32, i32* %837, align 4
  %839 = sext i32 %838 to i64
  store i64 %839, i64* %RDX.i1538, align 8
  %840 = shl nsw i64 %839, 2
  %841 = add i64 %840, %834
  %842 = load i32, i32* %EAX.i632, align 4
  %843 = add i64 %817, 30
  store i64 %843, i64* %3, align 8
  %844 = inttoptr i64 %841 to i32*
  store i32 %842, i32* %844, align 4
  %845 = load i64, i64* %RBP.i, align 8
  %846 = add i64 %845, -8
  %847 = load i64, i64* %3, align 8
  %848 = add i64 %847, 4
  store i64 %848, i64* %3, align 8
  %849 = inttoptr i64 %846 to i64*
  %850 = load i64, i64* %849, align 8
  store i64 %850, i64* %RCX.i611, align 8
  %851 = add i64 %850, 144
  %852 = add i64 %847, 11
  store i64 %852, i64* %3, align 8
  %853 = inttoptr i64 %851 to i64*
  %854 = load i64, i64* %853, align 8
  store i64 %854, i64* %RCX.i611, align 8
  %855 = add i64 %845, -16
  %856 = add i64 %847, 15
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %855 to i32*
  %858 = load i32, i32* %857, align 4
  %859 = sext i32 %858 to i64
  store i64 %859, i64* %RDX.i1538, align 8
  %860 = shl nsw i64 %859, 3
  %861 = add i64 %860, %854
  %862 = add i64 %847, 19
  store i64 %862, i64* %3, align 8
  %863 = inttoptr i64 %861 to i64*
  %864 = load i64, i64* %863, align 8
  store i64 %864, i64* %RCX.i611, align 8
  %865 = add i64 %864, 8
  %866 = add i64 %847, 24
  store i64 %866, i64* %3, align 8
  %867 = inttoptr i64 %865 to i32*
  %868 = load i32, i32* %867, align 4
  store i32 %868, i32* %77, align 1
  store float 0.000000e+00, float* %79, align 1
  store float 0.000000e+00, float* %81, align 1
  store float 0.000000e+00, float* %83, align 1
  %869 = add i64 %847, -46097
  %870 = add i64 %847, 29
  %871 = load i64, i64* %6, align 8
  %872 = add i64 %871, -8
  %873 = inttoptr i64 %872 to i64*
  store i64 %870, i64* %873, align 8
  store i64 %872, i64* %6, align 8
  store i64 %869, i64* %3, align 8
  %call2_4331d9 = tail call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* nonnull %0, i64 %869, %struct.Memory* %2)
  %874 = load i64, i64* %RBP.i, align 8
  %875 = add i64 %874, -8
  %876 = load i64, i64* %3, align 8
  %877 = add i64 %876, 4
  store i64 %877, i64* %3, align 8
  %878 = inttoptr i64 %875 to i64*
  %879 = load i64, i64* %878, align 8
  store i64 %879, i64* %RCX.i611, align 8
  %880 = add i64 %879, 312
  %881 = add i64 %876, 11
  store i64 %881, i64* %3, align 8
  %882 = inttoptr i64 %880 to i64*
  %883 = load i64, i64* %882, align 8
  store i64 %883, i64* %RCX.i611, align 8
  %884 = add i64 %883, 16
  %885 = add i64 %876, 15
  store i64 %885, i64* %3, align 8
  %886 = inttoptr i64 %884 to i64*
  %887 = load i64, i64* %886, align 8
  store i64 %887, i64* %RCX.i611, align 8
  %888 = add i64 %874, -16
  %889 = add i64 %876, 19
  store i64 %889, i64* %3, align 8
  %890 = inttoptr i64 %888 to i32*
  %891 = load i32, i32* %890, align 4
  %892 = sext i32 %891 to i64
  store i64 %892, i64* %RDX.i1538, align 8
  %893 = shl nsw i64 %892, 2
  %894 = add i64 %893, %887
  %895 = load i32, i32* %EAX.i632, align 4
  %896 = add i64 %876, 22
  store i64 %896, i64* %3, align 8
  %897 = inttoptr i64 %894 to i32*
  store i32 %895, i32* %897, align 4
  %898 = load i64, i64* %RBP.i, align 8
  %899 = add i64 %898, -8
  %900 = load i64, i64* %3, align 8
  %901 = add i64 %900, 4
  store i64 %901, i64* %3, align 8
  %902 = inttoptr i64 %899 to i64*
  %903 = load i64, i64* %902, align 8
  store i64 %903, i64* %RCX.i611, align 8
  %904 = add i64 %903, 144
  %905 = add i64 %900, 11
  store i64 %905, i64* %3, align 8
  %906 = inttoptr i64 %904 to i64*
  %907 = load i64, i64* %906, align 8
  store i64 %907, i64* %RCX.i611, align 8
  %908 = add i64 %898, -16
  %909 = add i64 %900, 15
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %908 to i32*
  %911 = load i32, i32* %910, align 4
  %912 = sext i32 %911 to i64
  store i64 %912, i64* %RDX.i1538, align 8
  %913 = shl nsw i64 %912, 3
  %914 = add i64 %913, %907
  %915 = add i64 %900, 19
  store i64 %915, i64* %3, align 8
  %916 = inttoptr i64 %914 to i64*
  %917 = load i64, i64* %916, align 8
  store i64 %917, i64* %RCX.i611, align 8
  %918 = add i64 %917, 12
  %919 = add i64 %900, 24
  store i64 %919, i64* %3, align 8
  %920 = inttoptr i64 %918 to i32*
  %921 = load i32, i32* %920, align 4
  store i32 %921, i32* %77, align 1
  store float 0.000000e+00, float* %79, align 1
  store float 0.000000e+00, float* %81, align 1
  store float 0.000000e+00, float* %83, align 1
  %922 = add i64 %900, 28
  store i64 %922, i64* %3, align 8
  %923 = load i64, i64* %902, align 8
  store i64 %923, i64* %RCX.i611, align 8
  %924 = add i64 %923, 304
  %925 = add i64 %900, 36
  store i64 %925, i64* %3, align 8
  %926 = inttoptr i64 %924 to i32*
  %927 = load i32, i32* %926, align 4
  store i32 %927, i32* %86, align 1
  store float 0.000000e+00, float* %88, align 1
  store float 0.000000e+00, float* %90, align 1
  store float 0.000000e+00, float* %92, align 1
  %928 = add i64 %900, -46148
  %929 = add i64 %900, 41
  %930 = load i64, i64* %6, align 8
  %931 = add i64 %930, -8
  %932 = inttoptr i64 %931 to i64*
  store i64 %929, i64* %932, align 8
  store i64 %931, i64* %6, align 8
  store i64 %928, i64* %3, align 8
  %call2_433218 = tail call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* nonnull %0, i64 %928, %struct.Memory* %2)
  %933 = load i64, i64* %RBP.i, align 8
  %934 = add i64 %933, -8
  %935 = load i64, i64* %3, align 8
  %936 = add i64 %935, 4
  store i64 %936, i64* %3, align 8
  %937 = inttoptr i64 %934 to i64*
  %938 = load i64, i64* %937, align 8
  store i64 %938, i64* %RCX.i611, align 8
  %939 = add i64 %938, 312
  %940 = add i64 %935, 11
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %939 to i64*
  %942 = load i64, i64* %941, align 8
  store i64 %942, i64* %RCX.i611, align 8
  %943 = add i64 %942, 24
  %944 = add i64 %935, 15
  store i64 %944, i64* %3, align 8
  %945 = inttoptr i64 %943 to i64*
  %946 = load i64, i64* %945, align 8
  store i64 %946, i64* %RCX.i611, align 8
  %947 = add i64 %933, -16
  %948 = add i64 %935, 19
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to i32*
  %950 = load i32, i32* %949, align 4
  %951 = sext i32 %950 to i64
  store i64 %951, i64* %RDX.i1538, align 8
  %952 = shl nsw i64 %951, 2
  %953 = add i64 %952, %946
  %954 = load i32, i32* %EAX.i632, align 4
  %955 = add i64 %935, 22
  store i64 %955, i64* %3, align 8
  %956 = inttoptr i64 %953 to i32*
  store i32 %954, i32* %956, align 4
  %957 = load i64, i64* %RBP.i, align 8
  %958 = add i64 %957, -8
  %959 = load i64, i64* %3, align 8
  %960 = add i64 %959, 4
  store i64 %960, i64* %3, align 8
  %961 = inttoptr i64 %958 to i64*
  %962 = load i64, i64* %961, align 8
  store i64 %962, i64* %RCX.i611, align 8
  %963 = add i64 %962, 144
  %964 = add i64 %959, 11
  store i64 %964, i64* %3, align 8
  %965 = inttoptr i64 %963 to i64*
  %966 = load i64, i64* %965, align 8
  store i64 %966, i64* %RCX.i611, align 8
  %967 = add i64 %957, -16
  %968 = add i64 %959, 15
  store i64 %968, i64* %3, align 8
  %969 = inttoptr i64 %967 to i32*
  %970 = load i32, i32* %969, align 4
  %971 = sext i32 %970 to i64
  store i64 %971, i64* %RDX.i1538, align 8
  %972 = shl nsw i64 %971, 3
  %973 = add i64 %972, %966
  %974 = add i64 %959, 19
  store i64 %974, i64* %3, align 8
  %975 = inttoptr i64 %973 to i64*
  %976 = load i64, i64* %975, align 8
  store i64 %976, i64* %RCX.i611, align 8
  %977 = add i64 %976, 16
  %978 = add i64 %959, 24
  store i64 %978, i64* %3, align 8
  %979 = inttoptr i64 %977 to i32*
  %980 = load i32, i32* %979, align 4
  store i32 %980, i32* %77, align 1
  store float 0.000000e+00, float* %79, align 1
  store float 0.000000e+00, float* %81, align 1
  store float 0.000000e+00, float* %83, align 1
  %981 = add i64 %959, 28
  store i64 %981, i64* %3, align 8
  %982 = load i64, i64* %961, align 8
  store i64 %982, i64* %RCX.i611, align 8
  %983 = add i64 %982, 304
  %984 = add i64 %959, 36
  store i64 %984, i64* %3, align 8
  %985 = inttoptr i64 %983 to i32*
  %986 = load i32, i32* %985, align 4
  store i32 %986, i32* %86, align 1
  store float 0.000000e+00, float* %88, align 1
  store float 0.000000e+00, float* %90, align 1
  store float 0.000000e+00, float* %92, align 1
  %987 = add i64 %959, -46211
  %988 = add i64 %959, 41
  %989 = load i64, i64* %6, align 8
  %990 = add i64 %989, -8
  %991 = inttoptr i64 %990 to i64*
  store i64 %988, i64* %991, align 8
  store i64 %990, i64* %6, align 8
  store i64 %987, i64* %3, align 8
  %call2_433257 = tail call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* nonnull %0, i64 %987, %struct.Memory* %2)
  %992 = load i64, i64* %RBP.i, align 8
  %993 = add i64 %992, -8
  %994 = load i64, i64* %3, align 8
  %995 = add i64 %994, 4
  store i64 %995, i64* %3, align 8
  %996 = inttoptr i64 %993 to i64*
  %997 = load i64, i64* %996, align 8
  store i64 %997, i64* %RCX.i611, align 8
  %998 = add i64 %997, 312
  %999 = add i64 %994, 11
  store i64 %999, i64* %3, align 8
  %1000 = inttoptr i64 %998 to i64*
  %1001 = load i64, i64* %1000, align 8
  store i64 %1001, i64* %RCX.i611, align 8
  %1002 = add i64 %1001, 32
  %1003 = add i64 %994, 15
  store i64 %1003, i64* %3, align 8
  %1004 = inttoptr i64 %1002 to i64*
  %1005 = load i64, i64* %1004, align 8
  store i64 %1005, i64* %RCX.i611, align 8
  %1006 = add i64 %992, -16
  %1007 = add i64 %994, 19
  store i64 %1007, i64* %3, align 8
  %1008 = inttoptr i64 %1006 to i32*
  %1009 = load i32, i32* %1008, align 4
  %1010 = sext i32 %1009 to i64
  store i64 %1010, i64* %RDX.i1538, align 8
  %1011 = shl nsw i64 %1010, 2
  %1012 = add i64 %1011, %1005
  %1013 = load i32, i32* %EAX.i632, align 4
  %1014 = add i64 %994, 22
  store i64 %1014, i64* %3, align 8
  %1015 = inttoptr i64 %1012 to i32*
  store i32 %1013, i32* %1015, align 4
  %1016 = load i64, i64* %RBP.i, align 8
  %1017 = add i64 %1016, -8
  %1018 = load i64, i64* %3, align 8
  %1019 = add i64 %1018, 4
  store i64 %1019, i64* %3, align 8
  %1020 = inttoptr i64 %1017 to i64*
  %1021 = load i64, i64* %1020, align 8
  store i64 %1021, i64* %RCX.i611, align 8
  %1022 = add i64 %1021, 144
  %1023 = add i64 %1018, 11
  store i64 %1023, i64* %3, align 8
  %1024 = inttoptr i64 %1022 to i64*
  %1025 = load i64, i64* %1024, align 8
  store i64 %1025, i64* %RCX.i611, align 8
  %1026 = add i64 %1016, -16
  %1027 = add i64 %1018, 15
  store i64 %1027, i64* %3, align 8
  %1028 = inttoptr i64 %1026 to i32*
  %1029 = load i32, i32* %1028, align 4
  %1030 = sext i32 %1029 to i64
  store i64 %1030, i64* %RDX.i1538, align 8
  %1031 = shl nsw i64 %1030, 3
  %1032 = add i64 %1031, %1025
  %1033 = add i64 %1018, 19
  store i64 %1033, i64* %3, align 8
  %1034 = inttoptr i64 %1032 to i64*
  %1035 = load i64, i64* %1034, align 8
  store i64 %1035, i64* %RCX.i611, align 8
  %1036 = add i64 %1035, 20
  %1037 = add i64 %1018, 24
  store i64 %1037, i64* %3, align 8
  %1038 = inttoptr i64 %1036 to i32*
  %1039 = load i32, i32* %1038, align 4
  store i32 %1039, i32* %77, align 1
  store float 0.000000e+00, float* %79, align 1
  store float 0.000000e+00, float* %81, align 1
  store float 0.000000e+00, float* %83, align 1
  %1040 = add i64 %1018, 28
  store i64 %1040, i64* %3, align 8
  %1041 = load i64, i64* %1020, align 8
  store i64 %1041, i64* %RCX.i611, align 8
  %1042 = add i64 %1041, 304
  %1043 = add i64 %1018, 36
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1042 to i32*
  %1045 = load i32, i32* %1044, align 4
  store i32 %1045, i32* %86, align 1
  store float 0.000000e+00, float* %88, align 1
  store float 0.000000e+00, float* %90, align 1
  store float 0.000000e+00, float* %92, align 1
  %1046 = add i64 %1018, -46274
  %1047 = add i64 %1018, 41
  %1048 = load i64, i64* %6, align 8
  %1049 = add i64 %1048, -8
  %1050 = inttoptr i64 %1049 to i64*
  store i64 %1047, i64* %1050, align 8
  store i64 %1049, i64* %6, align 8
  store i64 %1046, i64* %3, align 8
  %call2_433296 = tail call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* nonnull %0, i64 %1046, %struct.Memory* %2)
  %1051 = load i64, i64* %3, align 8
  %1052 = add i64 %1051, ptrtoint (%G_0x21485__rip__type* @G_0x21485__rip_ to i64)
  %1053 = add i64 %1051, 8
  store i64 %1053, i64* %3, align 8
  %1054 = inttoptr i64 %1052 to i32*
  %1055 = load i32, i32* %1054, align 4
  store i32 %1055, i32* %86, align 1
  store float 0.000000e+00, float* %88, align 1
  store float 0.000000e+00, float* %90, align 1
  store float 0.000000e+00, float* %92, align 1
  %1056 = load i64, i64* %RBP.i, align 8
  %1057 = add i64 %1056, -8
  %1058 = add i64 %1051, 12
  store i64 %1058, i64* %3, align 8
  %1059 = inttoptr i64 %1057 to i64*
  %1060 = load i64, i64* %1059, align 8
  store i64 %1060, i64* %RCX.i611, align 8
  %1061 = add i64 %1060, 312
  %1062 = add i64 %1051, 19
  store i64 %1062, i64* %3, align 8
  %1063 = inttoptr i64 %1061 to i64*
  %1064 = load i64, i64* %1063, align 8
  store i64 %1064, i64* %RCX.i611, align 8
  %1065 = add i64 %1064, 40
  %1066 = add i64 %1051, 23
  store i64 %1066, i64* %3, align 8
  %1067 = inttoptr i64 %1065 to i64*
  %1068 = load i64, i64* %1067, align 8
  store i64 %1068, i64* %RCX.i611, align 8
  %1069 = add i64 %1056, -16
  %1070 = add i64 %1051, 27
  store i64 %1070, i64* %3, align 8
  %1071 = inttoptr i64 %1069 to i32*
  %1072 = load i32, i32* %1071, align 4
  %1073 = sext i32 %1072 to i64
  store i64 %1073, i64* %RDX.i1538, align 8
  %1074 = shl nsw i64 %1073, 2
  %1075 = add i64 %1074, %1068
  %1076 = load i32, i32* %EAX.i632, align 4
  %1077 = add i64 %1051, 30
  store i64 %1077, i64* %3, align 8
  %1078 = inttoptr i64 %1075 to i32*
  store i32 %1076, i32* %1078, align 4
  %1079 = load i64, i64* %RBP.i, align 8
  %1080 = add i64 %1079, -8
  %1081 = load i64, i64* %3, align 8
  %1082 = add i64 %1081, 4
  store i64 %1082, i64* %3, align 8
  %1083 = inttoptr i64 %1080 to i64*
  %1084 = load i64, i64* %1083, align 8
  store i64 %1084, i64* %RCX.i611, align 8
  %1085 = add i64 %1084, 144
  %1086 = add i64 %1081, 11
  store i64 %1086, i64* %3, align 8
  %1087 = inttoptr i64 %1085 to i64*
  %1088 = load i64, i64* %1087, align 8
  store i64 %1088, i64* %RCX.i611, align 8
  %1089 = add i64 %1079, -16
  %1090 = add i64 %1081, 15
  store i64 %1090, i64* %3, align 8
  %1091 = inttoptr i64 %1089 to i32*
  %1092 = load i32, i32* %1091, align 4
  %1093 = sext i32 %1092 to i64
  store i64 %1093, i64* %RDX.i1538, align 8
  %1094 = shl nsw i64 %1093, 3
  %1095 = add i64 %1094, %1088
  %1096 = add i64 %1081, 19
  store i64 %1096, i64* %3, align 8
  %1097 = inttoptr i64 %1095 to i64*
  %1098 = load i64, i64* %1097, align 8
  store i64 %1098, i64* %RCX.i611, align 8
  %1099 = add i64 %1098, 24
  %1100 = add i64 %1081, 24
  store i64 %1100, i64* %3, align 8
  %1101 = inttoptr i64 %1099 to i32*
  %1102 = load i32, i32* %1101, align 4
  store i32 %1102, i32* %77, align 1
  store float 0.000000e+00, float* %79, align 1
  store float 0.000000e+00, float* %81, align 1
  store float 0.000000e+00, float* %83, align 1
  %1103 = add i64 %1081, -46345
  %1104 = add i64 %1081, 29
  %1105 = load i64, i64* %6, align 8
  %1106 = add i64 %1105, -8
  %1107 = inttoptr i64 %1106 to i64*
  store i64 %1104, i64* %1107, align 8
  store i64 %1106, i64* %6, align 8
  store i64 %1103, i64* %3, align 8
  %call2_4332d1 = tail call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* nonnull %0, i64 %1103, %struct.Memory* %2)
  %1108 = load i64, i64* %RBP.i, align 8
  %1109 = add i64 %1108, -8
  %1110 = load i64, i64* %3, align 8
  %1111 = add i64 %1110, 4
  store i64 %1111, i64* %3, align 8
  %1112 = inttoptr i64 %1109 to i64*
  %1113 = load i64, i64* %1112, align 8
  store i64 %1113, i64* %RCX.i611, align 8
  %1114 = add i64 %1113, 312
  %1115 = add i64 %1110, 11
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1114 to i64*
  %1117 = load i64, i64* %1116, align 8
  store i64 %1117, i64* %RCX.i611, align 8
  %1118 = add i64 %1117, 48
  %1119 = add i64 %1110, 15
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1118 to i64*
  %1121 = load i64, i64* %1120, align 8
  store i64 %1121, i64* %RCX.i611, align 8
  %1122 = add i64 %1108, -16
  %1123 = add i64 %1110, 19
  store i64 %1123, i64* %3, align 8
  %1124 = inttoptr i64 %1122 to i32*
  %1125 = load i32, i32* %1124, align 4
  %1126 = sext i32 %1125 to i64
  store i64 %1126, i64* %RDX.i1538, align 8
  %1127 = shl nsw i64 %1126, 2
  %1128 = add i64 %1127, %1121
  %1129 = load i32, i32* %EAX.i632, align 4
  %1130 = add i64 %1110, 22
  store i64 %1130, i64* %3, align 8
  %1131 = inttoptr i64 %1128 to i32*
  store i32 %1129, i32* %1131, align 4
  %1132 = load i64, i64* %RBP.i, align 8
  %1133 = add i64 %1132, -16
  %1134 = load i64, i64* %3, align 8
  %1135 = add i64 %1134, 3
  store i64 %1135, i64* %3, align 8
  %1136 = inttoptr i64 %1133 to i32*
  %1137 = load i32, i32* %1136, align 4
  %1138 = add i32 %1137, 1
  %1139 = zext i32 %1138 to i64
  store i64 %1139, i64* %RAX.i525, align 8
  %1140 = icmp eq i32 %1137, -1
  %1141 = icmp eq i32 %1138, 0
  %1142 = or i1 %1140, %1141
  %1143 = zext i1 %1142 to i8
  store i8 %1143, i8* %14, align 1
  %1144 = and i32 %1138, 255
  %1145 = tail call i32 @llvm.ctpop.i32(i32 %1144)
  %1146 = trunc i32 %1145 to i8
  %1147 = and i8 %1146, 1
  %1148 = xor i8 %1147, 1
  store i8 %1148, i8* %21, align 1
  %1149 = xor i32 %1138, %1137
  %1150 = lshr i32 %1149, 4
  %1151 = trunc i32 %1150 to i8
  %1152 = and i8 %1151, 1
  store i8 %1152, i8* %27, align 1
  %1153 = zext i1 %1141 to i8
  store i8 %1153, i8* %30, align 1
  %1154 = lshr i32 %1138, 31
  %1155 = trunc i32 %1154 to i8
  store i8 %1155, i8* %33, align 1
  %1156 = lshr i32 %1137, 31
  %1157 = xor i32 %1154, %1156
  %1158 = add nuw nsw i32 %1157, %1154
  %1159 = icmp eq i32 %1158, 2
  %1160 = zext i1 %1159 to i8
  store i8 %1160, i8* %39, align 1
  %1161 = add i64 %1134, 9
  store i64 %1161, i64* %3, align 8
  store i32 %1138, i32* %1136, align 4
  %1162 = load i64, i64* %3, align 8
  %1163 = add i64 %1162, -459
  store i64 %1163, i64* %3, align 8
  br label %block_.L_43312a

block_.L_4332fa:                                  ; preds = %block_.L_43312a
  %1164 = bitcast i8* %78 to i32*
  %1165 = bitcast i64* %80 to i32*
  %1166 = bitcast i8* %82 to i32*
  %1167 = bitcast [32 x %union.VectorReg]* %75 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1167, align 1
  %1168 = add i64 %730, 7
  store i64 %1168, i64* %3, align 8
  %1169 = load i64, i64* %698, align 8
  store i64 %1169, i64* %RAX.i525, align 8
  %1170 = add i64 %1169, 168
  %1171 = add i64 %730, 15
  store i64 %1171, i64* %3, align 8
  %1172 = inttoptr i64 %1170 to float*
  %1173 = load float, float* %1172, align 4
  %1174 = fpext float %1173 to double
  %1175 = bitcast %union.VectorReg* %84 to double*
  store double %1174, double* %1175, align 1
  %1176 = add i64 %730, 19
  store i64 %1176, i64* %3, align 8
  %1177 = bitcast [32 x %union.VectorReg]* %75 to double*
  %1178 = load double, double* %1177, align 1
  %1179 = fcmp uno double %1174, %1178
  br i1 %1179, label %1180, label %1190

; <label>:1180:                                   ; preds = %block_.L_4332fa
  %1181 = fadd double %1174, %1178
  %1182 = bitcast double %1181 to i64
  %1183 = and i64 %1182, 9221120237041090560
  %1184 = icmp eq i64 %1183, 9218868437227405312
  %1185 = and i64 %1182, 2251799813685247
  %1186 = icmp ne i64 %1185, 0
  %1187 = and i1 %1184, %1186
  br i1 %1187, label %1188, label %1196

; <label>:1188:                                   ; preds = %1180
  %1189 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1176, %struct.Memory* %2)
  %.pre80 = load i64, i64* %3, align 8
  %.pre81 = load i8, i8* %14, align 1
  %.pre82 = load i8, i8* %30, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit1064

; <label>:1190:                                   ; preds = %block_.L_4332fa
  %1191 = fcmp ogt double %1174, %1178
  br i1 %1191, label %1196, label %1192

; <label>:1192:                                   ; preds = %1190
  %1193 = fcmp olt double %1174, %1178
  br i1 %1193, label %1196, label %1194

; <label>:1194:                                   ; preds = %1192
  %1195 = fcmp oeq double %1174, %1178
  br i1 %1195, label %1196, label %1200

; <label>:1196:                                   ; preds = %1194, %1192, %1190, %1180
  %1197 = phi i8 [ 0, %1190 ], [ 0, %1192 ], [ 1, %1194 ], [ 1, %1180 ]
  %1198 = phi i8 [ 0, %1190 ], [ 0, %1192 ], [ 0, %1194 ], [ 1, %1180 ]
  %1199 = phi i8 [ 0, %1190 ], [ 1, %1192 ], [ 0, %1194 ], [ 1, %1180 ]
  store i8 %1197, i8* %30, align 1
  store i8 %1198, i8* %21, align 1
  store i8 %1199, i8* %14, align 1
  br label %1200

; <label>:1200:                                   ; preds = %1196, %1194
  %1201 = phi i8 [ %1197, %1196 ], [ %718, %1194 ]
  %1202 = phi i8 [ %1199, %1196 ], [ %706, %1194 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit1064

routine_ucomisd__xmm0___xmm1.exit1064:            ; preds = %1200, %1188
  %1203 = phi i8 [ %.pre82, %1188 ], [ %1201, %1200 ]
  %1204 = phi i8 [ %.pre81, %1188 ], [ %1202, %1200 ]
  %1205 = phi i64 [ %.pre80, %1188 ], [ %1176, %1200 ]
  %1206 = phi %struct.Memory* [ %1189, %1188 ], [ %2, %1200 ]
  %1207 = or i8 %1203, %1204
  %1208 = icmp ne i8 %1207, 0
  %.v130 = select i1 %1208, i64 33, i64 6
  %1209 = add i64 %1205, %.v130
  store i64 %1209, i64* %3, align 8
  br i1 %1208, label %block_.L_43332e, label %block_433313

block_433313:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit1064
  %1210 = load i64, i64* %RBP.i, align 8
  %1211 = add i64 %1210, -8
  %1212 = add i64 %1209, 4
  store i64 %1212, i64* %3, align 8
  %1213 = inttoptr i64 %1211 to i64*
  %1214 = load i64, i64* %1213, align 8
  store i64 %1214, i64* %RAX.i525, align 8
  %1215 = add i64 %1214, 168
  %1216 = add i64 %1209, 12
  store i64 %1216, i64* %3, align 8
  %1217 = inttoptr i64 %1215 to float*
  %1218 = load float, float* %1217, align 4
  %1219 = fpext float %1218 to double
  store double %1219, double* %1177, align 1
  %1220 = add i64 %1209, -204323
  %1221 = add i64 %1209, 17
  %1222 = load i64, i64* %6, align 8
  %1223 = add i64 %1222, -8
  %1224 = inttoptr i64 %1223 to i64*
  store i64 %1221, i64* %1224, align 8
  store i64 %1223, i64* %6, align 8
  store i64 %1220, i64* %3, align 8
  %1225 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %1206)
  %1226 = load i64, i64* %RBP.i, align 8
  %1227 = add i64 %1226, -40
  %1228 = load i64, i64* %3, align 8
  %1229 = add i64 %1228, 5
  store i64 %1229, i64* %3, align 8
  %1230 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %75, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1231 = load i64, i64* %1230, align 1
  %1232 = inttoptr i64 %1227 to i64*
  store i64 %1231, i64* %1232, align 8
  %1233 = load i64, i64* %3, align 8
  %1234 = add i64 %1233, 23
  %.pre120 = bitcast i64* %80 to double*
  br label %block_.L_433340

block_.L_43332e:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit1064
  %1235 = add i64 %1209, ptrtoint (%G_0x215a2__rip__type* @G_0x215a2__rip_ to i64)
  %1236 = add i64 %1209, 8
  store i64 %1236, i64* %3, align 8
  %1237 = inttoptr i64 %1235 to i64*
  %1238 = load i64, i64* %1237, align 8
  %1239 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %75, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1238, i64* %1239, align 1
  %1240 = bitcast i64* %80 to double*
  store double 0.000000e+00, double* %1240, align 1
  %1241 = load i64, i64* %RBP.i, align 8
  %1242 = add i64 %1241, -40
  %1243 = add i64 %1209, 13
  store i64 %1243, i64* %3, align 8
  %1244 = inttoptr i64 %1242 to i64*
  store i64 %1238, i64* %1244, align 8
  %1245 = load i64, i64* %3, align 8
  %1246 = add i64 %1245, 5
  store i64 %1246, i64* %3, align 8
  br label %block_.L_433340

block_.L_433340:                                  ; preds = %block_.L_43332e, %block_433313
  %.pre-phi121 = phi double* [ %1240, %block_.L_43332e ], [ %.pre120, %block_433313 ]
  %.pre-phi = phi i64* [ %1239, %block_.L_43332e ], [ %1230, %block_433313 ]
  %storemerge = phi i64 [ %1246, %block_.L_43332e ], [ %1234, %block_433313 ]
  %MEMORY.6 = phi %struct.Memory* [ %1206, %block_.L_43332e ], [ %1225, %block_433313 ]
  %1247 = load i64, i64* %RBP.i, align 8
  %1248 = add i64 %1247, -40
  %1249 = add i64 %storemerge, 5
  store i64 %1249, i64* %3, align 8
  %1250 = inttoptr i64 %1248 to i64*
  %1251 = load i64, i64* %1250, align 8
  store i64 %1251, i64* %.pre-phi, align 1
  store double 0.000000e+00, double* %.pre-phi121, align 1
  %1252 = bitcast i64 %1251 to <2 x i32>
  %.cast = bitcast i64 %1251 to double
  %1253 = fptrunc double %.cast to float
  %1254 = bitcast [32 x %union.VectorReg]* %75 to float*
  store float %1253, float* %1254, align 1
  %1255 = extractelement <2 x i32> %1252, i32 1
  store i32 %1255, i32* %1164, align 1
  store i32 0, i32* %1165, align 1
  store i32 0, i32* %1166, align 1
  %1256 = add i64 %1247, -24
  %1257 = add i64 %storemerge, 14
  store i64 %1257, i64* %3, align 8
  %1258 = bitcast [32 x %union.VectorReg]* %75 to <2 x float>*
  %1259 = load <2 x float>, <2 x float>* %1258, align 1
  %1260 = extractelement <2 x float> %1259, i32 0
  %1261 = inttoptr i64 %1256 to float*
  store float %1260, float* %1261, align 4
  %1262 = load i64, i64* %RBP.i, align 8
  %1263 = add i64 %1262, -16
  %1264 = load i64, i64* %3, align 8
  %1265 = add i64 %1264, 7
  store i64 %1265, i64* %3, align 8
  %1266 = inttoptr i64 %1263 to i32*
  store i32 1, i32* %1266, align 4
  %1267 = bitcast %union.VectorReg* %84 to <2 x i32>*
  %1268 = bitcast i64* %89 to <2 x i32>*
  %1269 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %84, i64 0, i32 0, i32 0, i32 0, i64 0
  %1270 = bitcast i64* %89 to double*
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %1272 = bitcast %union.VectorReg* %1271 to double*
  %1273 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %1271, i64 0, i32 0, i32 0, i32 0, i64 0
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %1275 = bitcast i64* %1274 to double*
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %1277 = bitcast %union.VectorReg* %1276 to double*
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %1279 = bitcast %union.VectorReg* %1271 to <2 x i32>*
  %1280 = bitcast i64* %1274 to <2 x i32>*
  %1281 = bitcast %union.VectorReg* %84 to float*
  %1282 = bitcast i8* %87 to i32*
  %1283 = bitcast i64* %89 to i32*
  %1284 = bitcast i8* %91 to i32*
  %.pre83 = load i64, i64* %3, align 8
  %1285 = bitcast [32 x %union.VectorReg]* %75 to <4 x i32>*
  %1286 = bitcast [32 x %union.VectorReg]* %75 to <4 x i32>*
  %1287 = bitcast [32 x %union.VectorReg]* %75 to <4 x i32>*
  br label %block_.L_433355

block_.L_433355:                                  ; preds = %block_.L_433646, %block_.L_433340
  %1288 = phi i64 [ %.pre83, %block_.L_433340 ], [ %2285, %block_.L_433646 ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.6, %block_.L_433340 ], [ %MEMORY.14, %block_.L_433646 ]
  %1289 = load i64, i64* %RBP.i, align 8
  %1290 = add i64 %1289, -16
  %1291 = add i64 %1288, 3
  store i64 %1291, i64* %3, align 8
  %1292 = inttoptr i64 %1290 to i32*
  %1293 = load i32, i32* %1292, align 4
  %1294 = zext i32 %1293 to i64
  store i64 %1294, i64* %RAX.i525, align 8
  %1295 = add i64 %1289, -8
  %1296 = add i64 %1288, 7
  store i64 %1296, i64* %3, align 8
  %1297 = inttoptr i64 %1295 to i64*
  %1298 = load i64, i64* %1297, align 8
  store i64 %1298, i64* %RCX.i611, align 8
  %1299 = add i64 %1298, 136
  %1300 = add i64 %1288, 13
  store i64 %1300, i64* %3, align 8
  %1301 = inttoptr i64 %1299 to i32*
  %1302 = load i32, i32* %1301, align 4
  %1303 = sub i32 %1293, %1302
  %1304 = icmp ult i32 %1293, %1302
  %1305 = zext i1 %1304 to i8
  store i8 %1305, i8* %14, align 1
  %1306 = and i32 %1303, 255
  %1307 = tail call i32 @llvm.ctpop.i32(i32 %1306)
  %1308 = trunc i32 %1307 to i8
  %1309 = and i8 %1308, 1
  %1310 = xor i8 %1309, 1
  store i8 %1310, i8* %21, align 1
  %1311 = xor i32 %1302, %1293
  %1312 = xor i32 %1311, %1303
  %1313 = lshr i32 %1312, 4
  %1314 = trunc i32 %1313 to i8
  %1315 = and i8 %1314, 1
  store i8 %1315, i8* %27, align 1
  %1316 = icmp eq i32 %1303, 0
  %1317 = zext i1 %1316 to i8
  store i8 %1317, i8* %30, align 1
  %1318 = lshr i32 %1303, 31
  %1319 = trunc i32 %1318 to i8
  store i8 %1319, i8* %33, align 1
  %1320 = lshr i32 %1293, 31
  %1321 = lshr i32 %1302, 31
  %1322 = xor i32 %1321, %1320
  %1323 = xor i32 %1318, %1320
  %1324 = add nuw nsw i32 %1323, %1322
  %1325 = icmp eq i32 %1324, 2
  %1326 = zext i1 %1325 to i8
  store i8 %1326, i8* %39, align 1
  %1327 = icmp ne i8 %1319, 0
  %1328 = xor i1 %1327, %1325
  %.demorgan122 = or i1 %1316, %1328
  %.v140 = select i1 %.demorgan122, i64 19, i64 772
  %1329 = add i64 %1288, %.v140
  store <4 x i32> zeroinitializer, <4 x i32>* %1285, align 1
  %1330 = add i64 %1329, 7
  store i64 %1330, i64* %3, align 8
  %1331 = load i64, i64* %1297, align 8
  store i64 %1331, i64* %RAX.i525, align 8
  br i1 %.demorgan122, label %block_433368, label %block_.L_433659

block_433368:                                     ; preds = %block_.L_433355
  %1332 = add i64 %1331, 208
  %1333 = add i64 %1329, 14
  store i64 %1333, i64* %3, align 8
  %1334 = inttoptr i64 %1332 to i64*
  %1335 = load i64, i64* %1334, align 8
  store i64 %1335, i64* %RAX.i525, align 8
  %1336 = add i64 %1329, 18
  store i64 %1336, i64* %3, align 8
  %1337 = load i32, i32* %1292, align 4
  %1338 = sext i32 %1337 to i64
  store i64 %1338, i64* %RCX.i611, align 8
  %1339 = shl nsw i64 %1338, 2
  %1340 = add i64 %1339, %1335
  %1341 = add i64 %1329, 23
  store i64 %1341, i64* %3, align 8
  %1342 = inttoptr i64 %1340 to float*
  %1343 = load float, float* %1342, align 4
  %1344 = fpext float %1343 to double
  store double %1344, double* %1175, align 1
  %1345 = add i64 %1329, 27
  store i64 %1345, i64* %3, align 8
  %1346 = load double, double* %1177, align 1
  %1347 = fcmp uno double %1344, %1346
  br i1 %1347, label %1348, label %1358

; <label>:1348:                                   ; preds = %block_433368
  %1349 = fadd double %1344, %1346
  %1350 = bitcast double %1349 to i64
  %1351 = and i64 %1350, 9221120237041090560
  %1352 = icmp eq i64 %1351, 9218868437227405312
  %1353 = and i64 %1350, 2251799813685247
  %1354 = icmp ne i64 %1353, 0
  %1355 = and i1 %1352, %1354
  br i1 %1355, label %1356, label %1364

; <label>:1356:                                   ; preds = %1348
  %1357 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1345, %struct.Memory* %MEMORY.7)
  %.pre84 = load i64, i64* %3, align 8
  %.pre85 = load i8, i8* %14, align 1
  %.pre86 = load i8, i8* %30, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit999

; <label>:1358:                                   ; preds = %block_433368
  %1359 = fcmp ogt double %1344, %1346
  br i1 %1359, label %1364, label %1360

; <label>:1360:                                   ; preds = %1358
  %1361 = fcmp olt double %1344, %1346
  br i1 %1361, label %1364, label %1362

; <label>:1362:                                   ; preds = %1360
  %1363 = fcmp oeq double %1344, %1346
  br i1 %1363, label %1364, label %1368

; <label>:1364:                                   ; preds = %1362, %1360, %1358, %1348
  %1365 = phi i8 [ 0, %1358 ], [ 0, %1360 ], [ 1, %1362 ], [ 1, %1348 ]
  %1366 = phi i8 [ 0, %1358 ], [ 0, %1360 ], [ 0, %1362 ], [ 1, %1348 ]
  %1367 = phi i8 [ 0, %1358 ], [ 1, %1360 ], [ 0, %1362 ], [ 1, %1348 ]
  store i8 %1365, i8* %30, align 1
  store i8 %1366, i8* %21, align 1
  store i8 %1367, i8* %14, align 1
  br label %1368

; <label>:1368:                                   ; preds = %1364, %1362
  %1369 = phi i8 [ %1365, %1364 ], [ %1317, %1362 ]
  %1370 = phi i8 [ %1367, %1364 ], [ %1305, %1362 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit999

routine_ucomisd__xmm0___xmm1.exit999:             ; preds = %1368, %1356
  %1371 = phi i8 [ %.pre86, %1356 ], [ %1369, %1368 ]
  %1372 = phi i8 [ %.pre85, %1356 ], [ %1370, %1368 ]
  %1373 = phi i64 [ %.pre84, %1356 ], [ %1345, %1368 ]
  %1374 = phi %struct.Memory* [ %1357, %1356 ], [ %MEMORY.7, %1368 ]
  %1375 = or i8 %1371, %1372
  %1376 = icmp ne i8 %1375, 0
  %.v133 = select i1 %1376, i64 41, i64 6
  %1377 = add i64 %1373, %.v133
  store i64 %1377, i64* %3, align 8
  br i1 %1376, label %block_.L_4333ac, label %block_433389

block_433389:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit999
  %1378 = load i64, i64* %RBP.i, align 8
  %1379 = add i64 %1378, -8
  %1380 = add i64 %1377, 4
  store i64 %1380, i64* %3, align 8
  %1381 = inttoptr i64 %1379 to i64*
  %1382 = load i64, i64* %1381, align 8
  store i64 %1382, i64* %RAX.i525, align 8
  %1383 = add i64 %1382, 208
  %1384 = add i64 %1377, 11
  store i64 %1384, i64* %3, align 8
  %1385 = inttoptr i64 %1383 to i64*
  %1386 = load i64, i64* %1385, align 8
  store i64 %1386, i64* %RAX.i525, align 8
  %1387 = add i64 %1378, -16
  %1388 = add i64 %1377, 15
  store i64 %1388, i64* %3, align 8
  %1389 = inttoptr i64 %1387 to i32*
  %1390 = load i32, i32* %1389, align 4
  %1391 = sext i32 %1390 to i64
  store i64 %1391, i64* %RCX.i611, align 8
  %1392 = shl nsw i64 %1391, 2
  %1393 = add i64 %1392, %1386
  %1394 = add i64 %1377, 20
  store i64 %1394, i64* %3, align 8
  %1395 = inttoptr i64 %1393 to float*
  %1396 = load float, float* %1395, align 4
  %1397 = fpext float %1396 to double
  store double %1397, double* %1177, align 1
  %1398 = add i64 %1377, -204441
  %1399 = add i64 %1377, 25
  %1400 = load i64, i64* %6, align 8
  %1401 = add i64 %1400, -8
  %1402 = inttoptr i64 %1401 to i64*
  store i64 %1399, i64* %1402, align 8
  store i64 %1401, i64* %6, align 8
  store i64 %1398, i64* %3, align 8
  %1403 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %1374)
  %1404 = load i64, i64* %RBP.i, align 8
  %1405 = add i64 %1404, -48
  %1406 = load i64, i64* %3, align 8
  %1407 = add i64 %1406, 5
  store i64 %1407, i64* %3, align 8
  %1408 = load i64, i64* %.pre-phi, align 1
  %1409 = inttoptr i64 %1405 to i64*
  store i64 %1408, i64* %1409, align 8
  %1410 = load i64, i64* %3, align 8
  %1411 = add i64 %1410, 23
  br label %block_.L_4333be

block_.L_4333ac:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit999
  %1412 = add i64 %1377, ptrtoint (%G_0x21524__rip__type* @G_0x21524__rip_ to i64)
  %1413 = add i64 %1377, 8
  store i64 %1413, i64* %3, align 8
  %1414 = inttoptr i64 %1412 to i64*
  %1415 = load i64, i64* %1414, align 8
  store i64 %1415, i64* %.pre-phi, align 1
  store double 0.000000e+00, double* %.pre-phi121, align 1
  %1416 = load i64, i64* %RBP.i, align 8
  %1417 = add i64 %1416, -48
  %1418 = add i64 %1377, 13
  store i64 %1418, i64* %3, align 8
  %1419 = inttoptr i64 %1417 to i64*
  store i64 %1415, i64* %1419, align 8
  %1420 = load i64, i64* %3, align 8
  %1421 = add i64 %1420, 5
  store i64 %1421, i64* %3, align 8
  br label %block_.L_4333be

block_.L_4333be:                                  ; preds = %block_.L_4333ac, %block_433389
  %storemerge25 = phi i64 [ %1411, %block_433389 ], [ %1421, %block_.L_4333ac ]
  %MEMORY.8 = phi %struct.Memory* [ %1403, %block_433389 ], [ %1374, %block_.L_4333ac ]
  %1422 = load i64, i64* %RBP.i, align 8
  %1423 = add i64 %1422, -48
  %1424 = add i64 %storemerge25, 5
  store i64 %1424, i64* %3, align 8
  %1425 = inttoptr i64 %1423 to i64*
  %1426 = load i64, i64* %1425, align 8
  store i64 %1426, i64* %.pre-phi, align 1
  store double 0.000000e+00, double* %.pre-phi121, align 1
  %.cast26 = bitcast i64 %1426 to <2 x i32>
  %.cast27 = bitcast i64 %1426 to double
  %1427 = fptrunc double %.cast27 to float
  store float %1427, float* %1254, align 1
  %1428 = extractelement <2 x i32> %.cast26, i32 1
  store i32 %1428, i32* %1164, align 1
  store i32 0, i32* %1165, align 1
  store i32 0, i32* %1166, align 1
  %1429 = add i64 %1422, -28
  %1430 = add i64 %storemerge25, 14
  store i64 %1430, i64* %3, align 8
  %1431 = load <2 x float>, <2 x float>* %1258, align 1
  %1432 = extractelement <2 x float> %1431, i32 0
  %1433 = inttoptr i64 %1429 to float*
  store float %1432, float* %1433, align 4
  %1434 = load i64, i64* %RBP.i, align 8
  %1435 = add i64 %1434, -16
  %1436 = load i64, i64* %3, align 8
  %1437 = add i64 %1436, 4
  store i64 %1437, i64* %3, align 8
  %1438 = inttoptr i64 %1435 to i32*
  %1439 = load i32, i32* %1438, align 4
  %1440 = add i32 %1439, -1
  %1441 = icmp eq i32 %1439, 0
  %1442 = zext i1 %1441 to i8
  store i8 %1442, i8* %14, align 1
  %1443 = and i32 %1440, 255
  %1444 = tail call i32 @llvm.ctpop.i32(i32 %1443)
  %1445 = trunc i32 %1444 to i8
  %1446 = and i8 %1445, 1
  %1447 = xor i8 %1446, 1
  store i8 %1447, i8* %21, align 1
  %1448 = xor i32 %1440, %1439
  %1449 = lshr i32 %1448, 4
  %1450 = trunc i32 %1449 to i8
  %1451 = and i8 %1450, 1
  store i8 %1451, i8* %27, align 1
  %1452 = icmp eq i32 %1440, 0
  %1453 = zext i1 %1452 to i8
  store i8 %1453, i8* %30, align 1
  %1454 = lshr i32 %1440, 31
  %1455 = trunc i32 %1454 to i8
  store i8 %1455, i8* %33, align 1
  %1456 = lshr i32 %1439, 31
  %1457 = xor i32 %1454, %1456
  %1458 = add nuw nsw i32 %1457, %1456
  %1459 = icmp eq i32 %1458, 2
  %1460 = zext i1 %1459 to i8
  store i8 %1460, i8* %39, align 1
  %1461 = icmp ne i8 %1455, 0
  %1462 = xor i1 %1461, %1459
  %1463 = or i1 %1452, %1462
  %.v134 = select i1 %1463, i64 491, i64 10
  %1464 = add i64 %1436, %.v134
  store i64 %1464, i64* %3, align 8
  br i1 %1463, label %block_.L_4335b7, label %block_4333d6

block_4333d6:                                     ; preds = %block_.L_4333be
  %1465 = add i64 %1464, ptrtoint (%G_0x214fa__rip__type* @G_0x214fa__rip_ to i64)
  %1466 = add i64 %1464, 8
  store i64 %1466, i64* %3, align 8
  %1467 = inttoptr i64 %1465 to i64*
  %1468 = load i64, i64* %1467, align 8
  store i64 %1468, i64* %.pre-phi, align 1
  store double 0.000000e+00, double* %.pre-phi121, align 1
  %1469 = add i64 %1434, -24
  %1470 = add i64 %1464, 13
  store i64 %1470, i64* %3, align 8
  %1471 = inttoptr i64 %1469 to float*
  %1472 = load float, float* %1471, align 4
  %1473 = fpext float %1472 to double
  store double %1473, double* %1175, align 1
  %1474 = add i64 %1464, 17
  store i64 %1474, i64* %3, align 8
  %1475 = bitcast i64 %1468 to double
  %1476 = fcmp uno double %1473, %1475
  br i1 %1476, label %1477, label %1487

; <label>:1477:                                   ; preds = %block_4333d6
  %1478 = fadd double %1473, %1475
  %1479 = bitcast double %1478 to i64
  %1480 = and i64 %1479, 9221120237041090560
  %1481 = icmp eq i64 %1480, 9218868437227405312
  %1482 = and i64 %1479, 2251799813685247
  %1483 = icmp ne i64 %1482, 0
  %1484 = and i1 %1481, %1483
  br i1 %1484, label %1485, label %1493

; <label>:1485:                                   ; preds = %1477
  %1486 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1474, %struct.Memory* %MEMORY.8)
  %.pre87 = load i64, i64* %3, align 8
  %.pre88 = load i8, i8* %14, align 1
  %.pre89 = load i8, i8* %30, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit948

; <label>:1487:                                   ; preds = %block_4333d6
  %1488 = fcmp ogt double %1473, %1475
  br i1 %1488, label %1493, label %1489

; <label>:1489:                                   ; preds = %1487
  %1490 = fcmp olt double %1473, %1475
  br i1 %1490, label %1493, label %1491

; <label>:1491:                                   ; preds = %1489
  %1492 = fcmp oeq double %1473, %1475
  br i1 %1492, label %1493, label %1497

; <label>:1493:                                   ; preds = %1491, %1489, %1487, %1477
  %1494 = phi i8 [ 0, %1487 ], [ 0, %1489 ], [ 1, %1491 ], [ 1, %1477 ]
  %1495 = phi i8 [ 0, %1487 ], [ 0, %1489 ], [ 0, %1491 ], [ 1, %1477 ]
  %1496 = phi i8 [ 0, %1487 ], [ 1, %1489 ], [ 0, %1491 ], [ 1, %1477 ]
  store i8 %1494, i8* %30, align 1
  store i8 %1495, i8* %21, align 1
  store i8 %1496, i8* %14, align 1
  br label %1497

; <label>:1497:                                   ; preds = %1493, %1491
  %1498 = phi i8 [ %1494, %1493 ], [ %1453, %1491 ]
  %1499 = phi i8 [ %1496, %1493 ], [ %1442, %1491 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit948

routine_ucomisd__xmm0___xmm1.exit948:             ; preds = %1497, %1485
  %1500 = phi i8 [ %.pre89, %1485 ], [ %1498, %1497 ]
  %1501 = phi i8 [ %.pre88, %1485 ], [ %1499, %1497 ]
  %1502 = phi i64 [ %.pre87, %1485 ], [ %1474, %1497 ]
  %1503 = phi %struct.Memory* [ %1486, %1485 ], [ %MEMORY.8, %1497 ]
  %1504 = or i8 %1500, %1501
  %1505 = icmp ne i8 %1504, 0
  %.v135 = select i1 %1505, i64 464, i64 6
  %1506 = add i64 %1502, %.v135
  store i64 %1506, i64* %3, align 8
  br i1 %1505, label %block_.L_4335b7, label %block_4333ed

block_4333ed:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit948
  store <4 x i32> zeroinitializer, <4 x i32>* %1286, align 1
  %1507 = load i64, i64* %RBP.i, align 8
  %1508 = add i64 %1507, -8
  %1509 = add i64 %1506, 7
  store i64 %1509, i64* %3, align 8
  %1510 = inttoptr i64 %1508 to i64*
  %1511 = load i64, i64* %1510, align 8
  store i64 %1511, i64* %RAX.i525, align 8
  %1512 = add i64 %1511, 144
  %1513 = add i64 %1506, 14
  store i64 %1513, i64* %3, align 8
  %1514 = inttoptr i64 %1512 to i64*
  %1515 = load i64, i64* %1514, align 8
  store i64 %1515, i64* %RAX.i525, align 8
  %1516 = add i64 %1507, -16
  %1517 = add i64 %1506, 17
  store i64 %1517, i64* %3, align 8
  %1518 = inttoptr i64 %1516 to i32*
  %1519 = load i32, i32* %1518, align 4
  %1520 = add i32 %1519, -1
  %1521 = zext i32 %1520 to i64
  store i64 %1521, i64* %RCX.i611, align 8
  %1522 = icmp eq i32 %1519, 0
  %1523 = zext i1 %1522 to i8
  store i8 %1523, i8* %14, align 1
  %1524 = and i32 %1520, 255
  %1525 = tail call i32 @llvm.ctpop.i32(i32 %1524)
  %1526 = trunc i32 %1525 to i8
  %1527 = and i8 %1526, 1
  %1528 = xor i8 %1527, 1
  store i8 %1528, i8* %21, align 1
  %1529 = xor i32 %1520, %1519
  %1530 = lshr i32 %1529, 4
  %1531 = trunc i32 %1530 to i8
  %1532 = and i8 %1531, 1
  store i8 %1532, i8* %27, align 1
  %1533 = icmp eq i32 %1520, 0
  %1534 = zext i1 %1533 to i8
  store i8 %1534, i8* %30, align 1
  %1535 = lshr i32 %1520, 31
  %1536 = trunc i32 %1535 to i8
  store i8 %1536, i8* %33, align 1
  %1537 = lshr i32 %1519, 31
  %1538 = xor i32 %1535, %1537
  %1539 = add nuw nsw i32 %1538, %1537
  %1540 = icmp eq i32 %1539, 2
  %1541 = zext i1 %1540 to i8
  store i8 %1541, i8* %39, align 1
  %1542 = sext i32 %1520 to i64
  store i64 %1542, i64* %RDX.i1538, align 8
  %1543 = shl nsw i64 %1542, 3
  %1544 = add i64 %1515, %1543
  %1545 = add i64 %1506, 27
  store i64 %1545, i64* %3, align 8
  %1546 = inttoptr i64 %1544 to i64*
  %1547 = load i64, i64* %1546, align 8
  store i64 %1547, i64* %RAX.i525, align 8
  %1548 = add i64 %1547, 20
  %1549 = add i64 %1506, 32
  store i64 %1549, i64* %3, align 8
  %1550 = inttoptr i64 %1548 to float*
  %1551 = load float, float* %1550, align 4
  %1552 = fpext float %1551 to double
  store double %1552, double* %1175, align 1
  %1553 = add i64 %1506, 36
  store i64 %1553, i64* %3, align 8
  %1554 = load double, double* %1177, align 1
  %1555 = fcmp uno double %1552, %1554
  br i1 %1555, label %1556, label %1566

; <label>:1556:                                   ; preds = %block_4333ed
  %1557 = fadd double %1552, %1554
  %1558 = bitcast double %1557 to i64
  %1559 = and i64 %1558, 9221120237041090560
  %1560 = icmp eq i64 %1559, 9218868437227405312
  %1561 = and i64 %1558, 2251799813685247
  %1562 = icmp ne i64 %1561, 0
  %1563 = and i1 %1560, %1562
  br i1 %1563, label %1564, label %1572

; <label>:1564:                                   ; preds = %1556
  %1565 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1553, %struct.Memory* %1503)
  %.pre90 = load i64, i64* %3, align 8
  %.pre91 = load i8, i8* %14, align 1
  %.pre92 = load i8, i8* %30, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit918

; <label>:1566:                                   ; preds = %block_4333ed
  %1567 = fcmp ogt double %1552, %1554
  br i1 %1567, label %1572, label %1568

; <label>:1568:                                   ; preds = %1566
  %1569 = fcmp olt double %1552, %1554
  br i1 %1569, label %1572, label %1570

; <label>:1570:                                   ; preds = %1568
  %1571 = fcmp oeq double %1552, %1554
  br i1 %1571, label %1572, label %1576

; <label>:1572:                                   ; preds = %1570, %1568, %1566, %1556
  %1573 = phi i8 [ 0, %1566 ], [ 0, %1568 ], [ 1, %1570 ], [ 1, %1556 ]
  %1574 = phi i8 [ 0, %1566 ], [ 0, %1568 ], [ 0, %1570 ], [ 1, %1556 ]
  %1575 = phi i8 [ 0, %1566 ], [ 1, %1568 ], [ 0, %1570 ], [ 1, %1556 ]
  store i8 %1573, i8* %30, align 1
  store i8 %1574, i8* %21, align 1
  store i8 %1575, i8* %14, align 1
  br label %1576

; <label>:1576:                                   ; preds = %1572, %1570
  %1577 = phi i8 [ %1573, %1572 ], [ %1534, %1570 ]
  %1578 = phi i8 [ %1575, %1572 ], [ %1523, %1570 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit918

routine_ucomisd__xmm0___xmm1.exit918:             ; preds = %1576, %1564
  %1579 = phi i8 [ %.pre92, %1564 ], [ %1577, %1576 ]
  %1580 = phi i8 [ %.pre91, %1564 ], [ %1578, %1576 ]
  %1581 = phi i64 [ %.pre90, %1564 ], [ %1553, %1576 ]
  %1582 = phi %struct.Memory* [ %1565, %1564 ], [ %1503, %1576 ]
  %1583 = or i8 %1579, %1580
  %1584 = icmp ne i8 %1583, 0
  %.v124 = select i1 %1584, i64 282, i64 6
  %1585 = add i64 %1581, %.v124
  store i64 %1585, i64* %3, align 8
  br i1 %1584, label %block_.L_43352b, label %block_433417

block_433417:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit918
  %1586 = load i64, i64* %RBP.i, align 8
  %1587 = add i64 %1586, -12
  %1588 = add i64 %1585, 4
  store i64 %1588, i64* %3, align 8
  %1589 = inttoptr i64 %1587 to i32*
  %1590 = load i32, i32* %1589, align 4
  store i8 0, i8* %14, align 1
  %1591 = and i32 %1590, 255
  %1592 = tail call i32 @llvm.ctpop.i32(i32 %1591)
  %1593 = trunc i32 %1592 to i8
  %1594 = and i8 %1593, 1
  %1595 = xor i8 %1594, 1
  store i8 %1595, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1596 = icmp eq i32 %1590, 0
  %1597 = zext i1 %1596 to i8
  store i8 %1597, i8* %30, align 1
  %1598 = lshr i32 %1590, 31
  %1599 = trunc i32 %1598 to i8
  store i8 %1599, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v123 = select i1 %1596, i64 186, i64 10
  %1600 = add i64 %1585, %.v123
  %1601 = add i64 %1586, -28
  %1602 = add i64 %1600, 5
  store i64 %1602, i64* %3, align 8
  %1603 = inttoptr i64 %1601 to float*
  %1604 = load float, float* %1603, align 4
  br i1 %1596, label %block_.L_4334d1, label %block_433421

block_433421:                                     ; preds = %block_433417
  %1605 = fpext float %1604 to double
  store double %1605, double* %1177, align 1
  %1606 = add i64 %1586, -24
  %1607 = add i64 %1600, 10
  store i64 %1607, i64* %3, align 8
  %1608 = inttoptr i64 %1606 to float*
  %1609 = load float, float* %1608, align 4
  %1610 = fpext float %1609 to double
  store double %1610, double* %1175, align 1
  %1611 = add i64 %1586, -8
  %1612 = add i64 %1600, 14
  store i64 %1612, i64* %3, align 8
  %1613 = inttoptr i64 %1611 to i64*
  %1614 = load i64, i64* %1613, align 8
  store i64 %1614, i64* %RAX.i525, align 8
  %1615 = add i64 %1614, 144
  %1616 = add i64 %1600, 21
  store i64 %1616, i64* %3, align 8
  %1617 = inttoptr i64 %1615 to i64*
  %1618 = load i64, i64* %1617, align 8
  store i64 %1618, i64* %RAX.i525, align 8
  %1619 = add i64 %1586, -16
  %1620 = add i64 %1600, 24
  store i64 %1620, i64* %3, align 8
  %1621 = inttoptr i64 %1619 to i32*
  %1622 = load i32, i32* %1621, align 4
  %1623 = add i32 %1622, -1
  %1624 = zext i32 %1623 to i64
  store i64 %1624, i64* %RCX.i611, align 8
  %1625 = icmp eq i32 %1622, 0
  %1626 = zext i1 %1625 to i8
  store i8 %1626, i8* %14, align 1
  %1627 = and i32 %1623, 255
  %1628 = tail call i32 @llvm.ctpop.i32(i32 %1627)
  %1629 = trunc i32 %1628 to i8
  %1630 = and i8 %1629, 1
  %1631 = xor i8 %1630, 1
  store i8 %1631, i8* %21, align 1
  %1632 = xor i32 %1623, %1622
  %1633 = lshr i32 %1632, 4
  %1634 = trunc i32 %1633 to i8
  %1635 = and i8 %1634, 1
  store i8 %1635, i8* %27, align 1
  %1636 = icmp eq i32 %1623, 0
  %1637 = zext i1 %1636 to i8
  store i8 %1637, i8* %30, align 1
  %1638 = lshr i32 %1623, 31
  %1639 = trunc i32 %1638 to i8
  store i8 %1639, i8* %33, align 1
  %1640 = lshr i32 %1622, 31
  %1641 = xor i32 %1638, %1640
  %1642 = add nuw nsw i32 %1641, %1640
  %1643 = icmp eq i32 %1642, 2
  %1644 = zext i1 %1643 to i8
  store i8 %1644, i8* %39, align 1
  %1645 = sext i32 %1623 to i64
  store i64 %1645, i64* %RDX.i1538, align 8
  %1646 = shl nsw i64 %1645, 3
  %1647 = add i64 %1618, %1646
  %1648 = add i64 %1600, 34
  store i64 %1648, i64* %3, align 8
  %1649 = inttoptr i64 %1647 to i64*
  %1650 = load i64, i64* %1649, align 8
  store i64 %1650, i64* %RAX.i525, align 8
  %1651 = add i64 %1650, 20
  %1652 = add i64 %1600, 39
  store i64 %1652, i64* %3, align 8
  %1653 = inttoptr i64 %1651 to float*
  %1654 = load float, float* %1653, align 4
  %1655 = fpext float %1654 to double
  store double %1655, double* %1272, align 1
  %1656 = add i64 %1586, -56
  %1657 = add i64 %1600, 44
  store i64 %1657, i64* %3, align 8
  %1658 = inttoptr i64 %1656 to double*
  store double %1605, double* %1658, align 8
  %1659 = load i64, i64* %3, align 8
  %1660 = load <2 x i32>, <2 x i32>* %1279, align 1
  %1661 = load <2 x i32>, <2 x i32>* %1280, align 1
  %1662 = extractelement <2 x i32> %1660, i32 0
  store i32 %1662, i32* %77, align 1
  %1663 = extractelement <2 x i32> %1660, i32 1
  store i32 %1663, i32* %1164, align 1
  %1664 = extractelement <2 x i32> %1661, i32 0
  store i32 %1664, i32* %1165, align 1
  %1665 = extractelement <2 x i32> %1661, i32 1
  store i32 %1665, i32* %1166, align 1
  %1666 = load i64, i64* %RBP.i, align 8
  %1667 = add i64 %1666, -64
  %1668 = add i64 %1659, 8
  store i64 %1668, i64* %3, align 8
  %1669 = load i64, i64* %1269, align 1
  %1670 = inttoptr i64 %1667 to i64*
  store i64 %1669, i64* %1670, align 8
  %1671 = load i64, i64* %3, align 8
  %1672 = add i64 %1671, -204645
  %1673 = add i64 %1671, 5
  %1674 = load i64, i64* %6, align 8
  %1675 = add i64 %1674, -8
  %1676 = inttoptr i64 %1675 to i64*
  store i64 %1673, i64* %1676, align 8
  store i64 %1675, i64* %6, align 8
  store i64 %1672, i64* %3, align 8
  %1677 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %1582)
  %1678 = load i64, i64* %RBP.i, align 8
  %1679 = add i64 %1678, -64
  %1680 = load i64, i64* %3, align 8
  %1681 = add i64 %1680, 5
  store i64 %1681, i64* %3, align 8
  %1682 = inttoptr i64 %1679 to double*
  %1683 = load double, double* %1682, align 8
  %1684 = load double, double* %1177, align 1
  %1685 = fadd double %1683, %1684
  store double %1685, double* %1175, align 1
  store i64 0, i64* %89, align 1
  %1686 = add i64 %1678, -56
  %1687 = add i64 %1680, 14
  store i64 %1687, i64* %3, align 8
  %1688 = inttoptr i64 %1686 to i64*
  %1689 = load i64, i64* %1688, align 8
  store i64 %1689, i64* %.pre-phi, align 1
  store double 0.000000e+00, double* %.pre-phi121, align 1
  %1690 = add i64 %1680, 18
  store i64 %1690, i64* %3, align 8
  %.cast28 = bitcast i64 %1689 to double
  %1691 = fcmp uno double %.cast28, %1685
  br i1 %1691, label %1692, label %1702

; <label>:1692:                                   ; preds = %block_433421
  %1693 = fadd double %.cast28, %1685
  %1694 = bitcast double %1693 to i64
  %1695 = and i64 %1694, 9221120237041090560
  %1696 = icmp eq i64 %1695, 9218868437227405312
  %1697 = and i64 %1694, 2251799813685247
  %1698 = icmp ne i64 %1697, 0
  %1699 = and i1 %1696, %1698
  br i1 %1699, label %1700, label %1708

; <label>:1700:                                   ; preds = %1692
  %1701 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1690, %struct.Memory* %1677)
  %.pre93 = load i64, i64* %3, align 8
  %.pre94 = load i64, i64* %RBP.i, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit861

; <label>:1702:                                   ; preds = %block_433421
  %1703 = fcmp ogt double %.cast28, %1685
  br i1 %1703, label %1708, label %1704

; <label>:1704:                                   ; preds = %1702
  %1705 = fcmp olt double %.cast28, %1685
  br i1 %1705, label %1708, label %1706

; <label>:1706:                                   ; preds = %1704
  %1707 = fcmp oeq double %.cast28, %1685
  br i1 %1707, label %1708, label %1712

; <label>:1708:                                   ; preds = %1706, %1704, %1702, %1692
  %1709 = phi i8 [ 0, %1702 ], [ 0, %1704 ], [ 1, %1706 ], [ 1, %1692 ]
  %1710 = phi i8 [ 0, %1702 ], [ 0, %1704 ], [ 0, %1706 ], [ 1, %1692 ]
  %1711 = phi i8 [ 0, %1702 ], [ 1, %1704 ], [ 0, %1706 ], [ 1, %1692 ]
  store i8 %1709, i8* %30, align 1
  store i8 %1710, i8* %21, align 1
  store i8 %1711, i8* %14, align 1
  br label %1712

; <label>:1712:                                   ; preds = %1708, %1706
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit861

routine_ucomisd__xmm1___xmm0.exit861:             ; preds = %1712, %1700
  %1713 = phi i64 [ %.pre94, %1700 ], [ %1678, %1712 ]
  %1714 = phi i64 [ %.pre93, %1700 ], [ %1690, %1712 ]
  %1715 = phi %struct.Memory* [ %1701, %1700 ], [ %1677, %1712 ]
  %1716 = load i8, i8* %14, align 1
  %1717 = load i8, i8* %30, align 1
  %1718 = or i8 %1717, %1716
  %1719 = icmp ne i8 %1718, 0
  %.v159 = select i1 %1719, i64 21, i64 6
  %1720 = add i64 %1714, %.v159
  store i64 %1720, i64* %3, align 8
  br i1 %1719, label %block_.L_433481, label %block_433472

block_433472:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit861
  %1721 = add i64 %1713, -28
  %1722 = add i64 %1720, 5
  store i64 %1722, i64* %3, align 8
  %1723 = inttoptr i64 %1721 to float*
  %1724 = load float, float* %1723, align 4
  %1725 = fpext float %1724 to double
  store double %1725, double* %1177, align 1
  %1726 = add i64 %1713, -72
  %1727 = add i64 %1720, 10
  store i64 %1727, i64* %3, align 8
  %1728 = inttoptr i64 %1726 to double*
  store double %1725, double* %1728, align 8
  %1729 = load i64, i64* %3, align 8
  %1730 = add i64 %1729, 66
  store i64 %1730, i64* %3, align 8
  br label %block_.L_4334be

block_.L_433481:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit861
  %1731 = add i64 %1713, -24
  %1732 = add i64 %1720, 5
  store i64 %1732, i64* %3, align 8
  %1733 = inttoptr i64 %1731 to float*
  %1734 = load float, float* %1733, align 4
  %1735 = fpext float %1734 to double
  store double %1735, double* %1177, align 1
  %1736 = add i64 %1713, -8
  %1737 = add i64 %1720, 9
  store i64 %1737, i64* %3, align 8
  %1738 = inttoptr i64 %1736 to i64*
  %1739 = load i64, i64* %1738, align 8
  store i64 %1739, i64* %RAX.i525, align 8
  %1740 = add i64 %1739, 144
  %1741 = add i64 %1720, 16
  store i64 %1741, i64* %3, align 8
  %1742 = inttoptr i64 %1740 to i64*
  %1743 = load i64, i64* %1742, align 8
  store i64 %1743, i64* %RAX.i525, align 8
  %1744 = add i64 %1713, -16
  %1745 = add i64 %1720, 19
  store i64 %1745, i64* %3, align 8
  %1746 = inttoptr i64 %1744 to i32*
  %1747 = load i32, i32* %1746, align 4
  %1748 = add i32 %1747, -1
  %1749 = zext i32 %1748 to i64
  store i64 %1749, i64* %RCX.i611, align 8
  %1750 = icmp eq i32 %1747, 0
  %1751 = zext i1 %1750 to i8
  store i8 %1751, i8* %14, align 1
  %1752 = and i32 %1748, 255
  %1753 = tail call i32 @llvm.ctpop.i32(i32 %1752)
  %1754 = trunc i32 %1753 to i8
  %1755 = and i8 %1754, 1
  %1756 = xor i8 %1755, 1
  store i8 %1756, i8* %21, align 1
  %1757 = xor i32 %1748, %1747
  %1758 = lshr i32 %1757, 4
  %1759 = trunc i32 %1758 to i8
  %1760 = and i8 %1759, 1
  store i8 %1760, i8* %27, align 1
  %1761 = icmp eq i32 %1748, 0
  %1762 = zext i1 %1761 to i8
  store i8 %1762, i8* %30, align 1
  %1763 = lshr i32 %1748, 31
  %1764 = trunc i32 %1763 to i8
  store i8 %1764, i8* %33, align 1
  %1765 = lshr i32 %1747, 31
  %1766 = xor i32 %1763, %1765
  %1767 = add nuw nsw i32 %1766, %1765
  %1768 = icmp eq i32 %1767, 2
  %1769 = zext i1 %1768 to i8
  store i8 %1769, i8* %39, align 1
  %1770 = sext i32 %1748 to i64
  store i64 %1770, i64* %RDX.i1538, align 8
  %1771 = shl nsw i64 %1770, 3
  %1772 = add i64 %1743, %1771
  %1773 = add i64 %1720, 29
  store i64 %1773, i64* %3, align 8
  %1774 = inttoptr i64 %1772 to i64*
  %1775 = load i64, i64* %1774, align 8
  store i64 %1775, i64* %RAX.i525, align 8
  %1776 = add i64 %1775, 20
  %1777 = add i64 %1720, 34
  store i64 %1777, i64* %3, align 8
  %1778 = inttoptr i64 %1776 to float*
  %1779 = load float, float* %1778, align 4
  %1780 = fpext float %1779 to double
  store double %1780, double* %1175, align 1
  %1781 = add i64 %1713, -80
  %1782 = add i64 %1720, 39
  store i64 %1782, i64* %3, align 8
  %1783 = inttoptr i64 %1781 to double*
  store double %1735, double* %1783, align 8
  %1784 = load i64, i64* %3, align 8
  %1785 = load <2 x i32>, <2 x i32>* %1267, align 1
  %1786 = load <2 x i32>, <2 x i32>* %1268, align 1
  %1787 = extractelement <2 x i32> %1785, i32 0
  store i32 %1787, i32* %77, align 1
  %1788 = extractelement <2 x i32> %1785, i32 1
  store i32 %1788, i32* %1164, align 1
  %1789 = extractelement <2 x i32> %1786, i32 0
  store i32 %1789, i32* %1165, align 1
  %1790 = extractelement <2 x i32> %1786, i32 1
  store i32 %1790, i32* %1166, align 1
  %1791 = add i64 %1784, -204728
  %1792 = add i64 %1784, 8
  %1793 = load i64, i64* %6, align 8
  %1794 = add i64 %1793, -8
  %1795 = inttoptr i64 %1794 to i64*
  store i64 %1792, i64* %1795, align 8
  store i64 %1794, i64* %6, align 8
  store i64 %1791, i64* %3, align 8
  %1796 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %1715)
  %1797 = load i64, i64* %RBP.i, align 8
  %1798 = add i64 %1797, -80
  %1799 = load i64, i64* %3, align 8
  %1800 = add i64 %1799, 5
  store i64 %1800, i64* %3, align 8
  %1801 = inttoptr i64 %1798 to double*
  %1802 = load double, double* %1801, align 8
  %1803 = load double, double* %1177, align 1
  %1804 = fadd double %1802, %1803
  store double %1804, double* %1175, align 1
  store i64 0, i64* %89, align 1
  %1805 = add i64 %1797, -72
  %1806 = add i64 %1799, 14
  store i64 %1806, i64* %3, align 8
  %1807 = inttoptr i64 %1805 to double*
  store double %1804, double* %1807, align 8
  %.pre95 = load i64, i64* %3, align 8
  br label %block_.L_4334be

block_.L_4334be:                                  ; preds = %block_.L_433481, %block_433472
  %1808 = phi i64 [ %.pre95, %block_.L_433481 ], [ %1730, %block_433472 ]
  %MEMORY.9 = phi %struct.Memory* [ %1796, %block_.L_433481 ], [ %1715, %block_433472 ]
  %1809 = load i64, i64* %RBP.i, align 8
  %1810 = add i64 %1809, -72
  %1811 = add i64 %1808, 5
  store i64 %1811, i64* %3, align 8
  %1812 = inttoptr i64 %1810 to i64*
  %1813 = load i64, i64* %1812, align 8
  store i64 %1813, i64* %.pre-phi, align 1
  store double 0.000000e+00, double* %.pre-phi121, align 1
  %.cast29 = bitcast i64 %1813 to <2 x i32>
  %.cast30 = bitcast i64 %1813 to double
  %1814 = fptrunc double %.cast30 to float
  store float %1814, float* %1254, align 1
  %1815 = extractelement <2 x i32> %.cast29, i32 1
  store i32 %1815, i32* %1164, align 1
  store i32 0, i32* %1165, align 1
  store i32 0, i32* %1166, align 1
  %1816 = add i64 %1809, -28
  %1817 = add i64 %1808, 14
  store i64 %1817, i64* %3, align 8
  %1818 = load <2 x float>, <2 x float>* %1258, align 1
  %1819 = extractelement <2 x float> %1818, i32 0
  %1820 = inttoptr i64 %1816 to float*
  store float %1819, float* %1820, align 4
  %1821 = load i64, i64* %3, align 8
  %1822 = add i64 %1821, 90
  store i64 %1822, i64* %3, align 8
  br label %block_.L_433526

block_.L_4334d1:                                  ; preds = %block_433417
  store float %1604, float* %1254, align 1
  store float 0.000000e+00, float* %79, align 1
  store float 0.000000e+00, float* %81, align 1
  store float 0.000000e+00, float* %83, align 1
  %1823 = add i64 %1586, -24
  %1824 = add i64 %1600, 10
  store i64 %1824, i64* %3, align 8
  %1825 = inttoptr i64 %1823 to float*
  %1826 = load float, float* %1825, align 4
  %1827 = fpext float %1826 to double
  store double %1827, double* %1175, align 1
  %1828 = add i64 %1586, -8
  %1829 = add i64 %1600, 14
  store i64 %1829, i64* %3, align 8
  %1830 = inttoptr i64 %1828 to i64*
  %1831 = load i64, i64* %1830, align 8
  store i64 %1831, i64* %RAX.i525, align 8
  %1832 = add i64 %1831, 144
  %1833 = add i64 %1600, 21
  store i64 %1833, i64* %3, align 8
  %1834 = inttoptr i64 %1832 to i64*
  %1835 = load i64, i64* %1834, align 8
  store i64 %1835, i64* %RAX.i525, align 8
  %1836 = add i64 %1586, -16
  %1837 = add i64 %1600, 24
  store i64 %1837, i64* %3, align 8
  %1838 = inttoptr i64 %1836 to i32*
  %1839 = load i32, i32* %1838, align 4
  %1840 = add i32 %1839, -1
  %1841 = zext i32 %1840 to i64
  store i64 %1841, i64* %RCX.i611, align 8
  %1842 = icmp eq i32 %1839, 0
  %1843 = zext i1 %1842 to i8
  store i8 %1843, i8* %14, align 1
  %1844 = and i32 %1840, 255
  %1845 = tail call i32 @llvm.ctpop.i32(i32 %1844)
  %1846 = trunc i32 %1845 to i8
  %1847 = and i8 %1846, 1
  %1848 = xor i8 %1847, 1
  store i8 %1848, i8* %21, align 1
  %1849 = xor i32 %1840, %1839
  %1850 = lshr i32 %1849, 4
  %1851 = trunc i32 %1850 to i8
  %1852 = and i8 %1851, 1
  store i8 %1852, i8* %27, align 1
  %1853 = icmp eq i32 %1840, 0
  %1854 = zext i1 %1853 to i8
  store i8 %1854, i8* %30, align 1
  %1855 = lshr i32 %1840, 31
  %1856 = trunc i32 %1855 to i8
  store i8 %1856, i8* %33, align 1
  %1857 = lshr i32 %1839, 31
  %1858 = xor i32 %1855, %1857
  %1859 = add nuw nsw i32 %1858, %1857
  %1860 = icmp eq i32 %1859, 2
  %1861 = zext i1 %1860 to i8
  store i8 %1861, i8* %39, align 1
  %1862 = sext i32 %1840 to i64
  store i64 %1862, i64* %RDX.i1538, align 8
  %1863 = shl nsw i64 %1862, 3
  %1864 = add i64 %1835, %1863
  %1865 = add i64 %1600, 34
  store i64 %1865, i64* %3, align 8
  %1866 = inttoptr i64 %1864 to i64*
  %1867 = load i64, i64* %1866, align 8
  store i64 %1867, i64* %RAX.i525, align 8
  %1868 = add i64 %1867, 20
  %1869 = add i64 %1600, 39
  store i64 %1869, i64* %3, align 8
  %1870 = inttoptr i64 %1868 to float*
  %1871 = load float, float* %1870, align 4
  %1872 = fpext float %1871 to double
  store double %1872, double* %1272, align 1
  %1873 = add i64 %1586, -84
  %1874 = add i64 %1600, 44
  store i64 %1874, i64* %3, align 8
  %1875 = load <2 x float>, <2 x float>* %1258, align 1
  %1876 = extractelement <2 x float> %1875, i32 0
  %1877 = inttoptr i64 %1873 to float*
  store float %1876, float* %1877, align 4
  %1878 = load i64, i64* %3, align 8
  %1879 = load <2 x i32>, <2 x i32>* %1279, align 1
  %1880 = load <2 x i32>, <2 x i32>* %1280, align 1
  %1881 = extractelement <2 x i32> %1879, i32 0
  store i32 %1881, i32* %77, align 1
  %1882 = extractelement <2 x i32> %1879, i32 1
  store i32 %1882, i32* %1164, align 1
  %1883 = extractelement <2 x i32> %1880, i32 0
  store i32 %1883, i32* %1165, align 1
  %1884 = extractelement <2 x i32> %1880, i32 1
  store i32 %1884, i32* %1166, align 1
  %1885 = load i64, i64* %RBP.i, align 8
  %1886 = add i64 %1885, -96
  %1887 = add i64 %1878, 8
  store i64 %1887, i64* %3, align 8
  %1888 = load i64, i64* %1269, align 1
  %1889 = inttoptr i64 %1886 to i64*
  store i64 %1888, i64* %1889, align 8
  %1890 = load i64, i64* %3, align 8
  %1891 = add i64 %1890, -204821
  %1892 = add i64 %1890, 5
  %1893 = load i64, i64* %6, align 8
  %1894 = add i64 %1893, -8
  %1895 = inttoptr i64 %1894 to i64*
  store i64 %1892, i64* %1895, align 8
  store i64 %1894, i64* %6, align 8
  store i64 %1891, i64* %3, align 8
  %1896 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %1582)
  %1897 = load i64, i64* %RBP.i, align 8
  %1898 = add i64 %1897, -96
  %1899 = load i64, i64* %3, align 8
  %1900 = add i64 %1899, 5
  store i64 %1900, i64* %3, align 8
  %1901 = inttoptr i64 %1898 to double*
  %1902 = load double, double* %1901, align 8
  %1903 = load double, double* %1177, align 1
  %1904 = fadd double %1902, %1903
  %.cast37 = bitcast double %1904 to <2 x i32>
  %1905 = fptrunc double %1904 to float
  store float %1905, float* %1281, align 1
  %1906 = extractelement <2 x i32> %.cast37, i32 1
  store i32 %1906, i32* %1282, align 1
  store i32 0, i32* %1283, align 1
  store i32 0, i32* %1284, align 1
  %1907 = add i64 %1897, -84
  %1908 = add i64 %1899, 18
  store i64 %1908, i64* %3, align 8
  %1909 = inttoptr i64 %1907 to i32*
  %1910 = load i32, i32* %1909, align 4
  store i32 %1910, i32* %77, align 1
  store float 0.000000e+00, float* %79, align 1
  store float 0.000000e+00, float* %81, align 1
  store float 0.000000e+00, float* %83, align 1
  %1911 = add i64 %1899, -46218
  %1912 = add i64 %1899, 23
  %1913 = load i64, i64* %6, align 8
  %1914 = add i64 %1913, -8
  %1915 = inttoptr i64 %1914 to i64*
  store i64 %1912, i64* %1915, align 8
  store i64 %1914, i64* %6, align 8
  store i64 %1911, i64* %3, align 8
  %call2_43351c = tail call %struct.Memory* @sub_428080.LogSum(%struct.State* nonnull %0, i64 %1911, %struct.Memory* %1896)
  %1916 = load i64, i64* %RBP.i, align 8
  %1917 = add i64 %1916, -28
  %1918 = load i64, i64* %3, align 8
  %1919 = add i64 %1918, 5
  store i64 %1919, i64* %3, align 8
  %1920 = load <2 x float>, <2 x float>* %1258, align 1
  %1921 = extractelement <2 x float> %1920, i32 0
  %1922 = inttoptr i64 %1917 to float*
  store float %1921, float* %1922, align 4
  %.pre96 = load i64, i64* %3, align 8
  br label %block_.L_433526

block_.L_433526:                                  ; preds = %block_.L_4334d1, %block_.L_4334be
  %1923 = phi i64 [ %.pre96, %block_.L_4334d1 ], [ %1822, %block_.L_4334be ]
  %MEMORY.10 = phi %struct.Memory* [ %call2_43351c, %block_.L_4334d1 ], [ %MEMORY.9, %block_.L_4334be ]
  %1924 = add i64 %1923, 5
  store i64 %1924, i64* %3, align 8
  br label %block_.L_43352b

block_.L_43352b:                                  ; preds = %block_.L_433526, %routine_ucomisd__xmm0___xmm1.exit918
  %1925 = phi i64 [ %1585, %routine_ucomisd__xmm0___xmm1.exit918 ], [ %1924, %block_.L_433526 ]
  %MEMORY.11 = phi %struct.Memory* [ %1582, %routine_ucomisd__xmm0___xmm1.exit918 ], [ %MEMORY.10, %block_.L_433526 ]
  store <4 x i32> zeroinitializer, <4 x i32>* %1287, align 1
  %1926 = load i64, i64* %RBP.i, align 8
  %1927 = add i64 %1926, -8
  %1928 = add i64 %1925, 7
  store i64 %1928, i64* %3, align 8
  %1929 = inttoptr i64 %1927 to i64*
  %1930 = load i64, i64* %1929, align 8
  store i64 %1930, i64* %RAX.i525, align 8
  %1931 = add i64 %1930, 144
  %1932 = add i64 %1925, 14
  store i64 %1932, i64* %3, align 8
  %1933 = inttoptr i64 %1931 to i64*
  %1934 = load i64, i64* %1933, align 8
  store i64 %1934, i64* %RAX.i525, align 8
  %1935 = add i64 %1926, -16
  %1936 = add i64 %1925, 17
  store i64 %1936, i64* %3, align 8
  %1937 = inttoptr i64 %1935 to i32*
  %1938 = load i32, i32* %1937, align 4
  %1939 = add i32 %1938, -1
  %1940 = zext i32 %1939 to i64
  store i64 %1940, i64* %RCX.i611, align 8
  %1941 = icmp eq i32 %1938, 0
  %1942 = zext i1 %1941 to i8
  store i8 %1942, i8* %14, align 1
  %1943 = and i32 %1939, 255
  %1944 = tail call i32 @llvm.ctpop.i32(i32 %1943)
  %1945 = trunc i32 %1944 to i8
  %1946 = and i8 %1945, 1
  %1947 = xor i8 %1946, 1
  store i8 %1947, i8* %21, align 1
  %1948 = xor i32 %1939, %1938
  %1949 = lshr i32 %1948, 4
  %1950 = trunc i32 %1949 to i8
  %1951 = and i8 %1950, 1
  store i8 %1951, i8* %27, align 1
  %1952 = icmp eq i32 %1939, 0
  %1953 = zext i1 %1952 to i8
  store i8 %1953, i8* %30, align 1
  %1954 = lshr i32 %1939, 31
  %1955 = trunc i32 %1954 to i8
  store i8 %1955, i8* %33, align 1
  %1956 = lshr i32 %1938, 31
  %1957 = xor i32 %1954, %1956
  %1958 = add nuw nsw i32 %1957, %1956
  %1959 = icmp eq i32 %1958, 2
  %1960 = zext i1 %1959 to i8
  store i8 %1960, i8* %39, align 1
  %1961 = sext i32 %1939 to i64
  store i64 %1961, i64* %RDX.i1538, align 8
  %1962 = shl nsw i64 %1961, 3
  %1963 = add i64 %1934, %1962
  %1964 = add i64 %1925, 27
  store i64 %1964, i64* %3, align 8
  %1965 = inttoptr i64 %1963 to i64*
  %1966 = load i64, i64* %1965, align 8
  store i64 %1966, i64* %RAX.i525, align 8
  %1967 = add i64 %1966, 24
  %1968 = add i64 %1925, 32
  store i64 %1968, i64* %3, align 8
  %1969 = inttoptr i64 %1967 to float*
  %1970 = load float, float* %1969, align 4
  %1971 = fpext float %1970 to double
  store double %1971, double* %1175, align 1
  %1972 = add i64 %1925, 36
  store i64 %1972, i64* %3, align 8
  %1973 = load double, double* %1177, align 1
  %1974 = fcmp uno double %1971, %1973
  br i1 %1974, label %1975, label %1985

; <label>:1975:                                   ; preds = %block_.L_43352b
  %1976 = fadd double %1971, %1973
  %1977 = bitcast double %1976 to i64
  %1978 = and i64 %1977, 9221120237041090560
  %1979 = icmp eq i64 %1978, 9218868437227405312
  %1980 = and i64 %1977, 2251799813685247
  %1981 = icmp ne i64 %1980, 0
  %1982 = and i1 %1979, %1981
  br i1 %1982, label %1983, label %1991

; <label>:1983:                                   ; preds = %1975
  %1984 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1972, %struct.Memory* %MEMORY.11)
  %.pre97 = load i64, i64* %3, align 8
  %.pre98 = load i8, i8* %14, align 1
  %.pre99 = load i8, i8* %30, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit721

; <label>:1985:                                   ; preds = %block_.L_43352b
  %1986 = fcmp ogt double %1971, %1973
  br i1 %1986, label %1991, label %1987

; <label>:1987:                                   ; preds = %1985
  %1988 = fcmp olt double %1971, %1973
  br i1 %1988, label %1991, label %1989

; <label>:1989:                                   ; preds = %1987
  %1990 = fcmp oeq double %1971, %1973
  br i1 %1990, label %1991, label %1995

; <label>:1991:                                   ; preds = %1989, %1987, %1985, %1975
  %1992 = phi i8 [ 0, %1985 ], [ 0, %1987 ], [ 1, %1989 ], [ 1, %1975 ]
  %1993 = phi i8 [ 0, %1985 ], [ 0, %1987 ], [ 0, %1989 ], [ 1, %1975 ]
  %1994 = phi i8 [ 0, %1985 ], [ 1, %1987 ], [ 0, %1989 ], [ 1, %1975 ]
  store i8 %1992, i8* %30, align 1
  store i8 %1993, i8* %21, align 1
  store i8 %1994, i8* %14, align 1
  br label %1995

; <label>:1995:                                   ; preds = %1991, %1989
  %1996 = phi i8 [ %1992, %1991 ], [ %1953, %1989 ]
  %1997 = phi i8 [ %1994, %1991 ], [ %1942, %1989 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit721

routine_ucomisd__xmm0___xmm1.exit721:             ; preds = %1995, %1983
  %1998 = phi i8 [ %.pre99, %1983 ], [ %1996, %1995 ]
  %1999 = phi i8 [ %.pre98, %1983 ], [ %1997, %1995 ]
  %2000 = phi i64 [ %.pre97, %1983 ], [ %1972, %1995 ]
  %2001 = phi %struct.Memory* [ %1984, %1983 ], [ %MEMORY.11, %1995 ]
  %2002 = or i8 %1998, %1999
  %2003 = icmp ne i8 %2002, 0
  %.v136 = select i1 %2003, i64 72, i64 6
  %2004 = add i64 %2000, %.v136
  store i64 %2004, i64* %3, align 8
  br i1 %2003, label %block_.L_433597, label %block_433555

block_433555:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit721
  %2005 = load i64, i64* %RBP.i, align 8
  %2006 = add i64 %2005, -24
  %2007 = add i64 %2004, 5
  store i64 %2007, i64* %3, align 8
  %2008 = inttoptr i64 %2006 to float*
  %2009 = load float, float* %2008, align 4
  %2010 = fpext float %2009 to double
  store double %2010, double* %1177, align 1
  %2011 = add i64 %2005, -8
  %2012 = add i64 %2004, 9
  store i64 %2012, i64* %3, align 8
  %2013 = inttoptr i64 %2011 to i64*
  %2014 = load i64, i64* %2013, align 8
  store i64 %2014, i64* %RAX.i525, align 8
  %2015 = add i64 %2014, 144
  %2016 = add i64 %2004, 16
  store i64 %2016, i64* %3, align 8
  %2017 = inttoptr i64 %2015 to i64*
  %2018 = load i64, i64* %2017, align 8
  store i64 %2018, i64* %RAX.i525, align 8
  %2019 = add i64 %2005, -16
  %2020 = add i64 %2004, 19
  store i64 %2020, i64* %3, align 8
  %2021 = inttoptr i64 %2019 to i32*
  %2022 = load i32, i32* %2021, align 4
  %2023 = add i32 %2022, -1
  %2024 = zext i32 %2023 to i64
  store i64 %2024, i64* %RCX.i611, align 8
  %2025 = icmp eq i32 %2022, 0
  %2026 = zext i1 %2025 to i8
  store i8 %2026, i8* %14, align 1
  %2027 = and i32 %2023, 255
  %2028 = tail call i32 @llvm.ctpop.i32(i32 %2027)
  %2029 = trunc i32 %2028 to i8
  %2030 = and i8 %2029, 1
  %2031 = xor i8 %2030, 1
  store i8 %2031, i8* %21, align 1
  %2032 = xor i32 %2023, %2022
  %2033 = lshr i32 %2032, 4
  %2034 = trunc i32 %2033 to i8
  %2035 = and i8 %2034, 1
  store i8 %2035, i8* %27, align 1
  %2036 = icmp eq i32 %2023, 0
  %2037 = zext i1 %2036 to i8
  store i8 %2037, i8* %30, align 1
  %2038 = lshr i32 %2023, 31
  %2039 = trunc i32 %2038 to i8
  store i8 %2039, i8* %33, align 1
  %2040 = lshr i32 %2022, 31
  %2041 = xor i32 %2038, %2040
  %2042 = add nuw nsw i32 %2041, %2040
  %2043 = icmp eq i32 %2042, 2
  %2044 = zext i1 %2043 to i8
  store i8 %2044, i8* %39, align 1
  %2045 = sext i32 %2023 to i64
  store i64 %2045, i64* %RDX.i1538, align 8
  %2046 = shl nsw i64 %2045, 3
  %2047 = add i64 %2018, %2046
  %2048 = add i64 %2004, 29
  store i64 %2048, i64* %3, align 8
  %2049 = inttoptr i64 %2047 to i64*
  %2050 = load i64, i64* %2049, align 8
  store i64 %2050, i64* %RAX.i525, align 8
  %2051 = add i64 %2050, 24
  %2052 = add i64 %2004, 34
  store i64 %2052, i64* %3, align 8
  %2053 = inttoptr i64 %2051 to float*
  %2054 = load float, float* %2053, align 4
  %2055 = fpext float %2054 to double
  store double %2055, double* %1175, align 1
  %2056 = add i64 %2005, -104
  %2057 = add i64 %2004, 39
  store i64 %2057, i64* %3, align 8
  %2058 = inttoptr i64 %2056 to double*
  store double %2010, double* %2058, align 8
  %2059 = load i64, i64* %3, align 8
  %2060 = load <2 x i32>, <2 x i32>* %1267, align 1
  %2061 = load <2 x i32>, <2 x i32>* %1268, align 1
  %2062 = extractelement <2 x i32> %2060, i32 0
  store i32 %2062, i32* %77, align 1
  %2063 = extractelement <2 x i32> %2060, i32 1
  store i32 %2063, i32* %1164, align 1
  %2064 = extractelement <2 x i32> %2061, i32 0
  store i32 %2064, i32* %1165, align 1
  %2065 = extractelement <2 x i32> %2061, i32 1
  store i32 %2065, i32* %1166, align 1
  %2066 = add i64 %2059, -204940
  %2067 = add i64 %2059, 8
  %2068 = load i64, i64* %6, align 8
  %2069 = add i64 %2068, -8
  %2070 = inttoptr i64 %2069 to i64*
  store i64 %2067, i64* %2070, align 8
  store i64 %2069, i64* %6, align 8
  store i64 %2066, i64* %3, align 8
  %2071 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %2001)
  %2072 = load i64, i64* %RBP.i, align 8
  %2073 = add i64 %2072, -104
  %2074 = load i64, i64* %3, align 8
  %2075 = add i64 %2074, 5
  store i64 %2075, i64* %3, align 8
  %2076 = inttoptr i64 %2073 to double*
  %2077 = load double, double* %2076, align 8
  %2078 = load double, double* %1177, align 1
  %2079 = fadd double %2077, %2078
  store double %2079, double* %1175, align 1
  store i64 0, i64* %89, align 1
  %2080 = add i64 %2072, -112
  %2081 = add i64 %2074, 14
  store i64 %2081, i64* %3, align 8
  %2082 = inttoptr i64 %2080 to double*
  store double %2079, double* %2082, align 8
  %2083 = load i64, i64* %3, align 8
  %2084 = add i64 %2083, 23
  br label %block_.L_4335a9

block_.L_433597:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit721
  %2085 = add i64 %2004, ptrtoint (%G_0x21339__rip__type* @G_0x21339__rip_ to i64)
  %2086 = add i64 %2004, 8
  store i64 %2086, i64* %3, align 8
  %2087 = inttoptr i64 %2085 to i64*
  %2088 = load i64, i64* %2087, align 8
  store i64 %2088, i64* %.pre-phi, align 1
  store double 0.000000e+00, double* %.pre-phi121, align 1
  %2089 = load i64, i64* %RBP.i, align 8
  %2090 = add i64 %2089, -112
  %2091 = add i64 %2004, 13
  store i64 %2091, i64* %3, align 8
  %2092 = inttoptr i64 %2090 to i64*
  store i64 %2088, i64* %2092, align 8
  %2093 = load i64, i64* %3, align 8
  %2094 = add i64 %2093, 5
  store i64 %2094, i64* %3, align 8
  br label %block_.L_4335a9

block_.L_4335a9:                                  ; preds = %block_.L_433597, %block_433555
  %storemerge31 = phi i64 [ %2084, %block_433555 ], [ %2094, %block_.L_433597 ]
  %MEMORY.12 = phi %struct.Memory* [ %2071, %block_433555 ], [ %2001, %block_.L_433597 ]
  %2095 = load i64, i64* %RBP.i, align 8
  %2096 = add i64 %2095, -112
  %2097 = add i64 %storemerge31, 5
  store i64 %2097, i64* %3, align 8
  %2098 = inttoptr i64 %2096 to i64*
  %2099 = load i64, i64* %2098, align 8
  store i64 %2099, i64* %.pre-phi, align 1
  store double 0.000000e+00, double* %.pre-phi121, align 1
  %.cast32 = bitcast i64 %2099 to <2 x i32>
  %.cast33 = bitcast i64 %2099 to double
  %2100 = fptrunc double %.cast33 to float
  store float %2100, float* %1254, align 1
  %2101 = extractelement <2 x i32> %.cast32, i32 1
  store i32 %2101, i32* %1164, align 1
  store i32 0, i32* %1165, align 1
  store i32 0, i32* %1166, align 1
  %2102 = add i64 %2095, -24
  %2103 = add i64 %storemerge31, 14
  store i64 %2103, i64* %3, align 8
  %2104 = load <2 x float>, <2 x float>* %1258, align 1
  %2105 = extractelement <2 x float> %2104, i32 0
  %2106 = inttoptr i64 %2102 to float*
  store float %2105, float* %2106, align 4
  %.pre100 = load i64, i64* %3, align 8
  br label %block_.L_4335b7

block_.L_4335b7:                                  ; preds = %block_.L_4335a9, %routine_ucomisd__xmm0___xmm1.exit948, %block_.L_4333be
  %2107 = phi i64 [ %1464, %block_.L_4333be ], [ %1506, %routine_ucomisd__xmm0___xmm1.exit948 ], [ %.pre100, %block_.L_4335a9 ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.8, %block_.L_4333be ], [ %1503, %routine_ucomisd__xmm0___xmm1.exit948 ], [ %MEMORY.12, %block_.L_4335a9 ]
  %2108 = add i64 %2107, ptrtoint (%G_0x21319__rip__type* @G_0x21319__rip_ to i64)
  %2109 = add i64 %2107, 8
  store i64 %2109, i64* %3, align 8
  %2110 = inttoptr i64 %2108 to i64*
  %2111 = load i64, i64* %2110, align 8
  store i64 %2111, i64* %.pre-phi, align 1
  store double 0.000000e+00, double* %.pre-phi121, align 1
  %2112 = load i64, i64* %RBP.i, align 8
  %2113 = add i64 %2112, -28
  %2114 = add i64 %2107, 13
  store i64 %2114, i64* %3, align 8
  %2115 = inttoptr i64 %2113 to float*
  %2116 = load float, float* %2115, align 4
  %2117 = fpext float %2116 to double
  store double %2117, double* %1175, align 1
  %2118 = add i64 %2107, 17
  store i64 %2118, i64* %3, align 8
  %2119 = bitcast i64 %2111 to double
  %2120 = fcmp uno double %2117, %2119
  br i1 %2120, label %2121, label %2131

; <label>:2121:                                   ; preds = %block_.L_4335b7
  %2122 = fadd double %2117, %2119
  %2123 = bitcast double %2122 to i64
  %2124 = and i64 %2123, 9221120237041090560
  %2125 = icmp eq i64 %2124, 9218868437227405312
  %2126 = and i64 %2123, 2251799813685247
  %2127 = icmp ne i64 %2126, 0
  %2128 = and i1 %2125, %2127
  br i1 %2128, label %2129, label %2137

; <label>:2129:                                   ; preds = %2121
  %2130 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2118, %struct.Memory* %MEMORY.13)
  %.pre101 = load i64, i64* %3, align 8
  %.pre102 = load i64, i64* %RBP.i, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit654

; <label>:2131:                                   ; preds = %block_.L_4335b7
  %2132 = fcmp ogt double %2117, %2119
  br i1 %2132, label %2137, label %2133

; <label>:2133:                                   ; preds = %2131
  %2134 = fcmp olt double %2117, %2119
  br i1 %2134, label %2137, label %2135

; <label>:2135:                                   ; preds = %2133
  %2136 = fcmp oeq double %2117, %2119
  br i1 %2136, label %2137, label %2141

; <label>:2137:                                   ; preds = %2135, %2133, %2131, %2121
  %2138 = phi i8 [ 0, %2131 ], [ 0, %2133 ], [ 1, %2135 ], [ 1, %2121 ]
  %2139 = phi i8 [ 0, %2131 ], [ 0, %2133 ], [ 0, %2135 ], [ 1, %2121 ]
  %2140 = phi i8 [ 0, %2131 ], [ 1, %2133 ], [ 0, %2135 ], [ 1, %2121 ]
  store i8 %2138, i8* %30, align 1
  store i8 %2139, i8* %21, align 1
  store i8 %2140, i8* %14, align 1
  br label %2141

; <label>:2141:                                   ; preds = %2137, %2135
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit654

routine_ucomisd__xmm0___xmm1.exit654:             ; preds = %2141, %2129
  %2142 = phi i64 [ %.pre102, %2129 ], [ %2112, %2141 ]
  %2143 = phi i64 [ %.pre101, %2129 ], [ %2118, %2141 ]
  %2144 = phi %struct.Memory* [ %2130, %2129 ], [ %MEMORY.13, %2141 ]
  %2145 = load i8, i8* %14, align 1
  %2146 = load i8, i8* %30, align 1
  %2147 = or i8 %2146, %2145
  %2148 = icmp ne i8 %2147, 0
  %.v160 = select i1 %2148, i64 104, i64 6
  %2149 = add i64 %2143, %.v160
  store i64 %2149, i64* %3, align 8
  br i1 %2148, label %block_.L_433630, label %block_4335ce

block_4335ce:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit654
  %2150 = add i64 %2142, -28
  %2151 = add i64 %2149, 5
  store i64 %2151, i64* %3, align 8
  %2152 = inttoptr i64 %2150 to float*
  %2153 = load float, float* %2152, align 4
  %2154 = fpext float %2153 to double
  store double %2154, double* %1177, align 1
  %2155 = add i64 %2142, -8
  %2156 = add i64 %2149, 9
  store i64 %2156, i64* %3, align 8
  %2157 = inttoptr i64 %2155 to i64*
  %2158 = load i64, i64* %2157, align 8
  store i64 %2158, i64* %RAX.i525, align 8
  %2159 = add i64 %2158, 304
  %2160 = add i64 %2149, 17
  store i64 %2160, i64* %3, align 8
  %2161 = inttoptr i64 %2159 to float*
  %2162 = load float, float* %2161, align 4
  %2163 = fpext float %2162 to double
  store double %2163, double* %1175, align 1
  %2164 = add i64 %2142, -120
  %2165 = add i64 %2149, 22
  store i64 %2165, i64* %3, align 8
  %2166 = inttoptr i64 %2164 to double*
  store double %2154, double* %2166, align 8
  %2167 = load i64, i64* %3, align 8
  %2168 = load <2 x i32>, <2 x i32>* %1267, align 1
  %2169 = load <2 x i32>, <2 x i32>* %1268, align 1
  %2170 = extractelement <2 x i32> %2168, i32 0
  store i32 %2170, i32* %77, align 1
  %2171 = extractelement <2 x i32> %2168, i32 1
  store i32 %2171, i32* %1164, align 1
  %2172 = extractelement <2 x i32> %2169, i32 0
  store i32 %2172, i32* %1165, align 1
  %2173 = extractelement <2 x i32> %2169, i32 1
  store i32 %2173, i32* %1166, align 1
  %2174 = add i64 %2167, -205044
  %2175 = add i64 %2167, 8
  %2176 = load i64, i64* %6, align 8
  %2177 = add i64 %2176, -8
  %2178 = inttoptr i64 %2177 to i64*
  store i64 %2175, i64* %2178, align 8
  store i64 %2177, i64* %6, align 8
  store i64 %2174, i64* %3, align 8
  %2179 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %2144)
  %2180 = load i64, i64* %3, align 8
  %2181 = add i64 %2180, ptrtoint (%G_0x211fc__rip__type* @G_0x211fc__rip_ to i64)
  %2182 = add i64 %2180, 8
  store i64 %2182, i64* %3, align 8
  %2183 = inttoptr i64 %2181 to i64*
  %2184 = load i64, i64* %2183, align 8
  store i64 %2184, i64* %1269, align 1
  store double 0.000000e+00, double* %1270, align 1
  %2185 = add i64 %2180, add (i64 ptrtoint (%G_0x21304__rip__type* @G_0x21304__rip_ to i64), i64 8)
  %2186 = add i64 %2180, 16
  store i64 %2186, i64* %3, align 8
  %2187 = inttoptr i64 %2185 to i64*
  %2188 = load i64, i64* %2187, align 8
  store i64 %2188, i64* %1273, align 1
  store double 0.000000e+00, double* %1275, align 1
  %2189 = load i64, i64* %RBP.i, align 8
  %2190 = add i64 %2189, -120
  %2191 = add i64 %2180, 21
  store i64 %2191, i64* %3, align 8
  %2192 = inttoptr i64 %2190 to double*
  %2193 = load double, double* %2192, align 8
  %2194 = load double, double* %1177, align 1
  %2195 = fsub double %2193, %2194
  store double %2195, double* %1277, align 1
  store i64 0, i64* %1278, align 1
  %2196 = bitcast i64 %2188 to double
  %2197 = fmul double %2195, %2196
  store double %2197, double* %1272, align 1
  store i64 0, i64* %1274, align 1
  %2198 = bitcast i64 %2184 to double
  %2199 = fadd double %2197, %2198
  store double %2199, double* %1175, align 1
  store i64 0, i64* %89, align 1
  %.cast34 = bitcast double %2199 to <2 x i32>
  %2200 = extractelement <2 x i32> %.cast34, i32 0
  store i32 %2200, i32* %77, align 1
  %2201 = extractelement <2 x i32> %.cast34, i32 1
  store i32 %2201, i32* %1164, align 1
  store i32 0, i32* %1165, align 1
  store i32 0, i32* %1166, align 1
  %2202 = add i64 %2180, -204636
  %2203 = add i64 %2180, 41
  %2204 = load i64, i64* %6, align 8
  %2205 = add i64 %2204, -8
  %2206 = inttoptr i64 %2205 to i64*
  store i64 %2203, i64* %2206, align 8
  store i64 %2205, i64* %6, align 8
  store i64 %2202, i64* %3, align 8
  %2207 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %2179)
  %2208 = load i64, i64* %3, align 8
  %2209 = load double, double* %1177, align 1
  %2210 = tail call double @llvm.trunc.f64(double %2209)
  %2211 = tail call double @llvm.fabs.f64(double %2210)
  %2212 = fcmp ogt double %2211, 0x41DFFFFFFFC00000
  %2213 = fptosi double %2210 to i32
  %2214 = zext i32 %2213 to i64
  %2215 = select i1 %2212, i64 2147483648, i64 %2214
  store i64 %2215, i64* %RCX.i611, align 8
  %2216 = load i64, i64* %RBP.i, align 8
  %2217 = add i64 %2216, -8
  %2218 = add i64 %2208, 8
  store i64 %2218, i64* %3, align 8
  %2219 = inttoptr i64 %2217 to i64*
  %2220 = load i64, i64* %2219, align 8
  store i64 %2220, i64* %RAX.i525, align 8
  %2221 = add i64 %2220, 368
  %2222 = add i64 %2208, 15
  store i64 %2222, i64* %3, align 8
  %2223 = inttoptr i64 %2221 to i64*
  %2224 = load i64, i64* %2223, align 8
  store i64 %2224, i64* %RAX.i525, align 8
  %2225 = add i64 %2216, -16
  %2226 = add i64 %2208, 19
  store i64 %2226, i64* %3, align 8
  %2227 = inttoptr i64 %2225 to i32*
  %2228 = load i32, i32* %2227, align 4
  %2229 = sext i32 %2228 to i64
  store i64 %2229, i64* %RDX.i1538, align 8
  %2230 = shl nsw i64 %2229, 2
  %2231 = add i64 %2230, %2224
  %2232 = trunc i64 %2215 to i32
  %2233 = add i64 %2208, 22
  store i64 %2233, i64* %3, align 8
  %2234 = inttoptr i64 %2231 to i32*
  store i32 %2232, i32* %2234, align 4
  %2235 = load i64, i64* %3, align 8
  %2236 = add i64 %2235, 27
  store i64 %2236, i64* %3, align 8
  br label %block_.L_433646

block_.L_433630:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit654
  %2237 = add i64 %2142, -8
  %2238 = add i64 %2149, 4
  store i64 %2238, i64* %3, align 8
  %2239 = inttoptr i64 %2237 to i64*
  %2240 = load i64, i64* %2239, align 8
  store i64 %2240, i64* %RAX.i525, align 8
  %2241 = add i64 %2240, 368
  %2242 = add i64 %2149, 11
  store i64 %2242, i64* %3, align 8
  %2243 = inttoptr i64 %2241 to i64*
  %2244 = load i64, i64* %2243, align 8
  store i64 %2244, i64* %RAX.i525, align 8
  %2245 = add i64 %2142, -16
  %2246 = add i64 %2149, 15
  store i64 %2246, i64* %3, align 8
  %2247 = inttoptr i64 %2245 to i32*
  %2248 = load i32, i32* %2247, align 4
  %2249 = sext i32 %2248 to i64
  store i64 %2249, i64* %RCX.i611, align 8
  %2250 = shl nsw i64 %2249, 2
  %2251 = add i64 %2250, %2244
  %2252 = add i64 %2149, 22
  store i64 %2252, i64* %3, align 8
  %2253 = inttoptr i64 %2251 to i32*
  store i32 -987654321, i32* %2253, align 4
  %.pre103 = load i64, i64* %3, align 8
  br label %block_.L_433646

block_.L_433646:                                  ; preds = %block_.L_433630, %block_4335ce
  %2254 = phi i64 [ %.pre103, %block_.L_433630 ], [ %2236, %block_4335ce ]
  %MEMORY.14 = phi %struct.Memory* [ %2144, %block_.L_433630 ], [ %2207, %block_4335ce ]
  %2255 = load i64, i64* %RBP.i, align 8
  %2256 = add i64 %2255, -16
  %2257 = add i64 %2254, 8
  store i64 %2257, i64* %3, align 8
  %2258 = inttoptr i64 %2256 to i32*
  %2259 = load i32, i32* %2258, align 4
  %2260 = add i32 %2259, 1
  %2261 = zext i32 %2260 to i64
  store i64 %2261, i64* %RAX.i525, align 8
  %2262 = icmp eq i32 %2259, -1
  %2263 = icmp eq i32 %2260, 0
  %2264 = or i1 %2262, %2263
  %2265 = zext i1 %2264 to i8
  store i8 %2265, i8* %14, align 1
  %2266 = and i32 %2260, 255
  %2267 = tail call i32 @llvm.ctpop.i32(i32 %2266)
  %2268 = trunc i32 %2267 to i8
  %2269 = and i8 %2268, 1
  %2270 = xor i8 %2269, 1
  store i8 %2270, i8* %21, align 1
  %2271 = xor i32 %2260, %2259
  %2272 = lshr i32 %2271, 4
  %2273 = trunc i32 %2272 to i8
  %2274 = and i8 %2273, 1
  store i8 %2274, i8* %27, align 1
  %2275 = zext i1 %2263 to i8
  store i8 %2275, i8* %30, align 1
  %2276 = lshr i32 %2260, 31
  %2277 = trunc i32 %2276 to i8
  store i8 %2277, i8* %33, align 1
  %2278 = lshr i32 %2259, 31
  %2279 = xor i32 %2276, %2278
  %2280 = add nuw nsw i32 %2279, %2276
  %2281 = icmp eq i32 %2280, 2
  %2282 = zext i1 %2281 to i8
  store i8 %2282, i8* %39, align 1
  %2283 = add i64 %2254, 14
  store i64 %2283, i64* %3, align 8
  store i32 %2260, i32* %2258, align 4
  %2284 = load i64, i64* %3, align 8
  %2285 = add i64 %2284, -767
  store i64 %2285, i64* %3, align 8
  br label %block_.L_433355

block_.L_433659:                                  ; preds = %block_.L_433355
  %2286 = add i64 %1331, 376
  %2287 = add i64 %1329, 14
  store i64 %2287, i64* %3, align 8
  %2288 = inttoptr i64 %2286 to i64*
  %2289 = load i64, i64* %2288, align 8
  store i64 %2289, i64* %RAX.i525, align 8
  %2290 = add i64 %1329, 18
  store i64 %2290, i64* %3, align 8
  %2291 = load i64, i64* %1297, align 8
  store i64 %2291, i64* %RCX.i611, align 8
  %2292 = add i64 %2291, 136
  %2293 = add i64 %1329, 25
  store i64 %2293, i64* %3, align 8
  %2294 = inttoptr i64 %2292 to i32*
  %2295 = load i32, i32* %2294, align 4
  %2296 = sext i32 %2295 to i64
  store i64 %2296, i64* %RCX.i611, align 8
  %2297 = shl nsw i64 %2296, 2
  %2298 = add i64 %2297, %2289
  %2299 = add i64 %1329, 32
  store i64 %2299, i64* %3, align 8
  %2300 = inttoptr i64 %2298 to i32*
  store i32 0, i32* %2300, align 4
  %2301 = load i64, i64* %RBP.i, align 8
  %2302 = add i64 %2301, -24
  %2303 = load i64, i64* %3, align 8
  %2304 = add i64 %2303, 5
  store i64 %2304, i64* %3, align 8
  %2305 = load <2 x float>, <2 x float>* %1258, align 1
  %2306 = extractelement <2 x float> %2305, i32 0
  %2307 = inttoptr i64 %2302 to float*
  store float %2306, float* %2307, align 4
  %2308 = load i64, i64* %RBP.i, align 8
  %2309 = add i64 %2308, -8
  %2310 = load i64, i64* %3, align 8
  %2311 = add i64 %2310, 4
  store i64 %2311, i64* %3, align 8
  %2312 = inttoptr i64 %2309 to i64*
  %2313 = load i64, i64* %2312, align 8
  store i64 %2313, i64* %RAX.i525, align 8
  %RDX.i551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %2314 = add i64 %2313, 136
  %2315 = add i64 %2310, 10
  store i64 %2315, i64* %3, align 8
  %2316 = inttoptr i64 %2314 to i32*
  %2317 = load i32, i32* %2316, align 4
  %2318 = add i32 %2317, -1
  %2319 = zext i32 %2318 to i64
  store i64 %2319, i64* %RDX.i551, align 8
  %2320 = icmp eq i32 %2317, 0
  %2321 = zext i1 %2320 to i8
  store i8 %2321, i8* %14, align 1
  %2322 = and i32 %2318, 255
  %2323 = tail call i32 @llvm.ctpop.i32(i32 %2322)
  %2324 = trunc i32 %2323 to i8
  %2325 = and i8 %2324, 1
  %2326 = xor i8 %2325, 1
  store i8 %2326, i8* %21, align 1
  %2327 = xor i32 %2318, %2317
  %2328 = lshr i32 %2327, 4
  %2329 = trunc i32 %2328 to i8
  %2330 = and i8 %2329, 1
  store i8 %2330, i8* %27, align 1
  %2331 = icmp eq i32 %2318, 0
  %2332 = zext i1 %2331 to i8
  store i8 %2332, i8* %30, align 1
  %2333 = lshr i32 %2318, 31
  %2334 = trunc i32 %2333 to i8
  store i8 %2334, i8* %33, align 1
  %2335 = lshr i32 %2317, 31
  %2336 = xor i32 %2333, %2335
  %2337 = add nuw nsw i32 %2336, %2335
  %2338 = icmp eq i32 %2337, 2
  %2339 = zext i1 %2338 to i8
  store i8 %2339, i8* %39, align 1
  %2340 = add i64 %2308, -16
  %2341 = add i64 %2310, 16
  store i64 %2341, i64* %3, align 8
  %2342 = inttoptr i64 %2340 to i32*
  store i32 %2318, i32* %2342, align 4
  %.pre104 = load i64, i64* %3, align 8
  %2343 = bitcast [32 x %union.VectorReg]* %75 to <4 x i32>*
  %2344 = bitcast [32 x %union.VectorReg]* %75 to <4 x i32>*
  %2345 = bitcast [32 x %union.VectorReg]* %75 to <4 x i32>*
  br label %block_.L_43368e

block_.L_43368e:                                  ; preds = %block_.L_43394d, %block_.L_433659
  %2346 = phi i64 [ %.pre104, %block_.L_433659 ], [ %3135, %block_.L_43394d ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.7, %block_.L_433659 ], [ %MEMORY.22, %block_.L_43394d ]
  %2347 = load i64, i64* %RBP.i, align 8
  %2348 = add i64 %2347, -16
  %2349 = add i64 %2346, 4
  store i64 %2349, i64* %3, align 8
  %2350 = inttoptr i64 %2348 to i32*
  %2351 = load i32, i32* %2350, align 4
  %2352 = add i32 %2351, -1
  %2353 = icmp eq i32 %2351, 0
  %2354 = zext i1 %2353 to i8
  store i8 %2354, i8* %14, align 1
  %2355 = and i32 %2352, 255
  %2356 = tail call i32 @llvm.ctpop.i32(i32 %2355)
  %2357 = trunc i32 %2356 to i8
  %2358 = and i8 %2357, 1
  %2359 = xor i8 %2358, 1
  store i8 %2359, i8* %21, align 1
  %2360 = xor i32 %2352, %2351
  %2361 = lshr i32 %2360, 4
  %2362 = trunc i32 %2361 to i8
  %2363 = and i8 %2362, 1
  store i8 %2363, i8* %27, align 1
  %2364 = icmp eq i32 %2352, 0
  %2365 = zext i1 %2364 to i8
  store i8 %2365, i8* %30, align 1
  %2366 = lshr i32 %2352, 31
  %2367 = trunc i32 %2366 to i8
  store i8 %2367, i8* %33, align 1
  %2368 = lshr i32 %2351, 31
  %2369 = xor i32 %2366, %2368
  %2370 = add nuw nsw i32 %2369, %2368
  %2371 = icmp eq i32 %2370, 2
  %2372 = zext i1 %2371 to i8
  store i8 %2372, i8* %39, align 1
  %2373 = icmp ne i8 %2367, 0
  %2374 = xor i1 %2373, %2371
  %.v131 = select i1 %2374, i64 741, i64 10
  %2375 = add i64 %2346, %.v131
  store i64 %2375, i64* %3, align 8
  br i1 %2374, label %block_.L_433973, label %block_433698

block_433698:                                     ; preds = %block_.L_43368e
  store <4 x i32> zeroinitializer, <4 x i32>* %2343, align 1
  %2376 = add i64 %2347, -8
  %2377 = add i64 %2375, 7
  store i64 %2377, i64* %3, align 8
  %2378 = inttoptr i64 %2376 to i64*
  %2379 = load i64, i64* %2378, align 8
  store i64 %2379, i64* %RAX.i525, align 8
  %2380 = add i64 %2379, 216
  %2381 = add i64 %2375, 14
  store i64 %2381, i64* %3, align 8
  %2382 = inttoptr i64 %2380 to i64*
  %2383 = load i64, i64* %2382, align 8
  store i64 %2383, i64* %RAX.i525, align 8
  %2384 = add i64 %2375, 18
  store i64 %2384, i64* %3, align 8
  %2385 = load i32, i32* %2350, align 4
  %2386 = sext i32 %2385 to i64
  store i64 %2386, i64* %RCX.i611, align 8
  %2387 = shl nsw i64 %2386, 2
  %2388 = add i64 %2387, %2383
  %2389 = add i64 %2375, 23
  store i64 %2389, i64* %3, align 8
  %2390 = inttoptr i64 %2388 to float*
  %2391 = load float, float* %2390, align 4
  %2392 = fpext float %2391 to double
  store double %2392, double* %1175, align 1
  %2393 = add i64 %2375, 27
  store i64 %2393, i64* %3, align 8
  %2394 = load double, double* %1177, align 1
  %2395 = fcmp uno double %2392, %2394
  br i1 %2395, label %2396, label %2406

; <label>:2396:                                   ; preds = %block_433698
  %2397 = fadd double %2392, %2394
  %2398 = bitcast double %2397 to i64
  %2399 = and i64 %2398, 9221120237041090560
  %2400 = icmp eq i64 %2399, 9218868437227405312
  %2401 = and i64 %2398, 2251799813685247
  %2402 = icmp ne i64 %2401, 0
  %2403 = and i1 %2400, %2402
  br i1 %2403, label %2404, label %2412

; <label>:2404:                                   ; preds = %2396
  %2405 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2393, %struct.Memory* %MEMORY.15)
  %.pre105 = load i64, i64* %3, align 8
  %.pre106 = load i8, i8* %14, align 1
  %.pre107 = load i8, i8* %30, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit523

; <label>:2406:                                   ; preds = %block_433698
  %2407 = fcmp ogt double %2392, %2394
  br i1 %2407, label %2412, label %2408

; <label>:2408:                                   ; preds = %2406
  %2409 = fcmp olt double %2392, %2394
  br i1 %2409, label %2412, label %2410

; <label>:2410:                                   ; preds = %2408
  %2411 = fcmp oeq double %2392, %2394
  br i1 %2411, label %2412, label %2416

; <label>:2412:                                   ; preds = %2410, %2408, %2406, %2396
  %2413 = phi i8 [ 0, %2406 ], [ 0, %2408 ], [ 1, %2410 ], [ 1, %2396 ]
  %2414 = phi i8 [ 0, %2406 ], [ 0, %2408 ], [ 0, %2410 ], [ 1, %2396 ]
  %2415 = phi i8 [ 0, %2406 ], [ 1, %2408 ], [ 0, %2410 ], [ 1, %2396 ]
  store i8 %2413, i8* %30, align 1
  store i8 %2414, i8* %21, align 1
  store i8 %2415, i8* %14, align 1
  br label %2416

; <label>:2416:                                   ; preds = %2412, %2410
  %2417 = phi i8 [ %2413, %2412 ], [ %2365, %2410 ]
  %2418 = phi i8 [ %2415, %2412 ], [ %2354, %2410 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit523

routine_ucomisd__xmm0___xmm1.exit523:             ; preds = %2416, %2404
  %2419 = phi i8 [ %.pre107, %2404 ], [ %2417, %2416 ]
  %2420 = phi i8 [ %.pre106, %2404 ], [ %2418, %2416 ]
  %2421 = phi i64 [ %.pre105, %2404 ], [ %2393, %2416 ]
  %2422 = phi %struct.Memory* [ %2405, %2404 ], [ %MEMORY.15, %2416 ]
  %2423 = or i8 %2419, %2420
  %2424 = icmp ne i8 %2423, 0
  %.v132 = select i1 %2424, i64 41, i64 6
  %2425 = add i64 %2421, %.v132
  store i64 %2425, i64* %3, align 8
  br i1 %2424, label %block_.L_4336dc, label %block_4336b9

block_4336b9:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit523
  %2426 = load i64, i64* %RBP.i, align 8
  %2427 = add i64 %2426, -8
  %2428 = add i64 %2425, 4
  store i64 %2428, i64* %3, align 8
  %2429 = inttoptr i64 %2427 to i64*
  %2430 = load i64, i64* %2429, align 8
  store i64 %2430, i64* %RAX.i525, align 8
  %2431 = add i64 %2430, 216
  %2432 = add i64 %2425, 11
  store i64 %2432, i64* %3, align 8
  %2433 = inttoptr i64 %2431 to i64*
  %2434 = load i64, i64* %2433, align 8
  store i64 %2434, i64* %RAX.i525, align 8
  %2435 = add i64 %2426, -16
  %2436 = add i64 %2425, 15
  store i64 %2436, i64* %3, align 8
  %2437 = inttoptr i64 %2435 to i32*
  %2438 = load i32, i32* %2437, align 4
  %2439 = sext i32 %2438 to i64
  store i64 %2439, i64* %RCX.i611, align 8
  %2440 = shl nsw i64 %2439, 2
  %2441 = add i64 %2440, %2434
  %2442 = add i64 %2425, 20
  store i64 %2442, i64* %3, align 8
  %2443 = inttoptr i64 %2441 to float*
  %2444 = load float, float* %2443, align 4
  %2445 = fpext float %2444 to double
  store double %2445, double* %1177, align 1
  %2446 = add i64 %2425, -205257
  %2447 = add i64 %2425, 25
  %2448 = load i64, i64* %6, align 8
  %2449 = add i64 %2448, -8
  %2450 = inttoptr i64 %2449 to i64*
  store i64 %2447, i64* %2450, align 8
  store i64 %2449, i64* %6, align 8
  store i64 %2446, i64* %3, align 8
  %2451 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %2422)
  %2452 = load i64, i64* %RBP.i, align 8
  %2453 = add i64 %2452, -128
  %2454 = load i64, i64* %3, align 8
  %2455 = add i64 %2454, 5
  store i64 %2455, i64* %3, align 8
  %2456 = load i64, i64* %.pre-phi, align 1
  %2457 = inttoptr i64 %2453 to i64*
  store i64 %2456, i64* %2457, align 8
  %2458 = load i64, i64* %3, align 8
  %2459 = add i64 %2458, 23
  br label %block_.L_4336ee

block_.L_4336dc:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit523
  %2460 = add i64 %2425, ptrtoint (%G_0x211f4__rip__type* @G_0x211f4__rip_ to i64)
  %2461 = add i64 %2425, 8
  store i64 %2461, i64* %3, align 8
  %2462 = inttoptr i64 %2460 to i64*
  %2463 = load i64, i64* %2462, align 8
  store i64 %2463, i64* %.pre-phi, align 1
  store double 0.000000e+00, double* %.pre-phi121, align 1
  %2464 = load i64, i64* %RBP.i, align 8
  %2465 = add i64 %2464, -128
  %2466 = add i64 %2425, 13
  store i64 %2466, i64* %3, align 8
  %2467 = inttoptr i64 %2465 to i64*
  store i64 %2463, i64* %2467, align 8
  %2468 = load i64, i64* %3, align 8
  %2469 = add i64 %2468, 5
  store i64 %2469, i64* %3, align 8
  br label %block_.L_4336ee

block_.L_4336ee:                                  ; preds = %block_.L_4336dc, %block_4336b9
  %storemerge38 = phi i64 [ %2459, %block_4336b9 ], [ %2469, %block_.L_4336dc ]
  %MEMORY.16 = phi %struct.Memory* [ %2451, %block_4336b9 ], [ %2422, %block_.L_4336dc ]
  %2470 = load i64, i64* %RBP.i, align 8
  %2471 = add i64 %2470, -128
  %2472 = add i64 %storemerge38, 5
  store i64 %2472, i64* %3, align 8
  %2473 = inttoptr i64 %2471 to i64*
  %2474 = load i64, i64* %2473, align 8
  store i64 %2474, i64* %.pre-phi, align 1
  store double 0.000000e+00, double* %.pre-phi121, align 1
  %2475 = add i64 %storemerge38, add (i64 ptrtoint (%G_0x211dd__rip__type* @G_0x211dd__rip_ to i64), i64 5)
  %2476 = add i64 %storemerge38, 13
  store i64 %2476, i64* %3, align 8
  %2477 = inttoptr i64 %2475 to i64*
  %2478 = load i64, i64* %2477, align 8
  store i64 %2478, i64* %1269, align 1
  store double 0.000000e+00, double* %1270, align 1
  %2479 = bitcast i64 %2474 to <2 x i32>
  %.cast39 = bitcast i64 %2474 to double
  %2480 = fptrunc double %.cast39 to float
  store float %2480, float* %1254, align 1
  %2481 = extractelement <2 x i32> %2479, i32 1
  store i32 %2481, i32* %1164, align 1
  store i32 0, i32* %1165, align 1
  store i32 0, i32* %1166, align 1
  %2482 = add i64 %2470, -32
  %2483 = add i64 %storemerge38, 22
  store i64 %2483, i64* %3, align 8
  %2484 = load <2 x float>, <2 x float>* %1258, align 1
  %2485 = extractelement <2 x float> %2484, i32 0
  %2486 = inttoptr i64 %2482 to float*
  store float %2485, float* %2486, align 4
  %2487 = load i64, i64* %RBP.i, align 8
  %2488 = add i64 %2487, -24
  %2489 = load i64, i64* %3, align 8
  %2490 = add i64 %2489, 5
  store i64 %2490, i64* %3, align 8
  %2491 = inttoptr i64 %2488 to float*
  %2492 = load float, float* %2491, align 4
  %2493 = fpext float %2492 to double
  store double %2493, double* %1177, align 1
  %2494 = add i64 %2489, 9
  store i64 %2494, i64* %3, align 8
  %2495 = load double, double* %1175, align 1
  %2496 = fcmp uno double %2493, %2495
  br i1 %2496, label %2497, label %2507

; <label>:2497:                                   ; preds = %block_.L_4336ee
  %2498 = fadd double %2493, %2495
  %2499 = bitcast double %2498 to i64
  %2500 = and i64 %2499, 9221120237041090560
  %2501 = icmp eq i64 %2500, 9218868437227405312
  %2502 = and i64 %2499, 2251799813685247
  %2503 = icmp ne i64 %2502, 0
  %2504 = and i1 %2501, %2503
  br i1 %2504, label %2505, label %2513

; <label>:2505:                                   ; preds = %2497
  %2506 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2494, %struct.Memory* %MEMORY.16)
  %.pre108 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit478

; <label>:2507:                                   ; preds = %block_.L_4336ee
  %2508 = fcmp ogt double %2493, %2495
  br i1 %2508, label %2513, label %2509

; <label>:2509:                                   ; preds = %2507
  %2510 = fcmp olt double %2493, %2495
  br i1 %2510, label %2513, label %2511

; <label>:2511:                                   ; preds = %2509
  %2512 = fcmp oeq double %2493, %2495
  br i1 %2512, label %2513, label %2517

; <label>:2513:                                   ; preds = %2511, %2509, %2507, %2497
  %2514 = phi i8 [ 0, %2507 ], [ 0, %2509 ], [ 1, %2511 ], [ 1, %2497 ]
  %2515 = phi i8 [ 0, %2507 ], [ 0, %2509 ], [ 0, %2511 ], [ 1, %2497 ]
  %2516 = phi i8 [ 0, %2507 ], [ 1, %2509 ], [ 0, %2511 ], [ 1, %2497 ]
  store i8 %2514, i8* %30, align 1
  store i8 %2515, i8* %21, align 1
  store i8 %2516, i8* %14, align 1
  br label %2517

; <label>:2517:                                   ; preds = %2513, %2511
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit478

routine_ucomisd__xmm1___xmm0.exit478:             ; preds = %2517, %2505
  %2518 = phi i64 [ %.pre108, %2505 ], [ %2494, %2517 ]
  %2519 = phi %struct.Memory* [ %2506, %2505 ], [ %MEMORY.16, %2517 ]
  %2520 = add i64 %2518, 488
  %2521 = add i64 %2518, 6
  %2522 = load i8, i8* %14, align 1
  %2523 = load i8, i8* %30, align 1
  %2524 = or i8 %2523, %2522
  %2525 = icmp ne i8 %2524, 0
  %2526 = select i1 %2525, i64 %2520, i64 %2521
  store i64 %2526, i64* %3, align 8
  br i1 %2525, label %block_.L_4338f5, label %block_433713

block_433713:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit478
  store <4 x i32> zeroinitializer, <4 x i32>* %2344, align 1
  %2527 = load i64, i64* %RBP.i, align 8
  %2528 = add i64 %2527, -8
  %2529 = add i64 %2526, 7
  store i64 %2529, i64* %3, align 8
  %2530 = inttoptr i64 %2528 to i64*
  %2531 = load i64, i64* %2530, align 8
  store i64 %2531, i64* %RAX.i525, align 8
  %2532 = add i64 %2531, 144
  %2533 = add i64 %2526, 14
  store i64 %2533, i64* %3, align 8
  %2534 = inttoptr i64 %2532 to i64*
  %2535 = load i64, i64* %2534, align 8
  store i64 %2535, i64* %RAX.i525, align 8
  %2536 = add i64 %2527, -16
  %2537 = add i64 %2526, 18
  store i64 %2537, i64* %3, align 8
  %2538 = inttoptr i64 %2536 to i32*
  %2539 = load i32, i32* %2538, align 4
  %2540 = sext i32 %2539 to i64
  store i64 %2540, i64* %RCX.i611, align 8
  %2541 = shl nsw i64 %2540, 3
  %2542 = add i64 %2541, %2535
  %2543 = add i64 %2526, 22
  store i64 %2543, i64* %3, align 8
  %2544 = inttoptr i64 %2542 to i64*
  %2545 = load i64, i64* %2544, align 8
  store i64 %2545, i64* %RAX.i525, align 8
  %2546 = add i64 %2545, 8
  %2547 = add i64 %2526, 27
  store i64 %2547, i64* %3, align 8
  %2548 = inttoptr i64 %2546 to float*
  %2549 = load float, float* %2548, align 4
  %2550 = fpext float %2549 to double
  store double %2550, double* %1175, align 1
  %2551 = add i64 %2526, 31
  store i64 %2551, i64* %3, align 8
  %2552 = load double, double* %1177, align 1
  %2553 = fcmp uno double %2550, %2552
  br i1 %2553, label %2554, label %2564

; <label>:2554:                                   ; preds = %block_433713
  %2555 = fadd double %2550, %2552
  %2556 = bitcast double %2555 to i64
  %2557 = and i64 %2556, 9221120237041090560
  %2558 = icmp eq i64 %2557, 9218868437227405312
  %2559 = and i64 %2556, 2251799813685247
  %2560 = icmp ne i64 %2559, 0
  %2561 = and i1 %2558, %2560
  br i1 %2561, label %2562, label %2570

; <label>:2562:                                   ; preds = %2554
  %2563 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2551, %struct.Memory* %2519)
  %.pre109 = load i64, i64* %3, align 8
  %.pre110 = load i8, i8* %14, align 1
  %.pre111 = load i8, i8* %30, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit455

; <label>:2564:                                   ; preds = %block_433713
  %2565 = fcmp ogt double %2550, %2552
  br i1 %2565, label %2570, label %2566

; <label>:2566:                                   ; preds = %2564
  %2567 = fcmp olt double %2550, %2552
  br i1 %2567, label %2570, label %2568

; <label>:2568:                                   ; preds = %2566
  %2569 = fcmp oeq double %2550, %2552
  br i1 %2569, label %2570, label %2574

; <label>:2570:                                   ; preds = %2568, %2566, %2564, %2554
  %2571 = phi i8 [ 0, %2564 ], [ 0, %2566 ], [ 1, %2568 ], [ 1, %2554 ]
  %2572 = phi i8 [ 0, %2564 ], [ 0, %2566 ], [ 0, %2568 ], [ 1, %2554 ]
  %2573 = phi i8 [ 0, %2564 ], [ 1, %2566 ], [ 0, %2568 ], [ 1, %2554 ]
  store i8 %2571, i8* %30, align 1
  store i8 %2572, i8* %21, align 1
  store i8 %2573, i8* %14, align 1
  br label %2574

; <label>:2574:                                   ; preds = %2570, %2568
  %2575 = phi i8 [ %2571, %2570 ], [ %2523, %2568 ]
  %2576 = phi i8 [ %2573, %2570 ], [ %2522, %2568 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit455

routine_ucomisd__xmm0___xmm1.exit455:             ; preds = %2574, %2562
  %2577 = phi i8 [ %.pre111, %2562 ], [ %2575, %2574 ]
  %2578 = phi i8 [ %.pre110, %2562 ], [ %2576, %2574 ]
  %2579 = phi i64 [ %.pre109, %2562 ], [ %2551, %2574 ]
  %2580 = phi %struct.Memory* [ %2563, %2562 ], [ %2519, %2574 ]
  %2581 = or i8 %2577, %2578
  %2582 = icmp ne i8 %2581, 0
  %.v126 = select i1 %2582, i64 306, i64 6
  %2583 = add i64 %2579, %.v126
  store i64 %2583, i64* %3, align 8
  br i1 %2582, label %block_.L_433864, label %block_433738

block_433738:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit455
  %2584 = load i64, i64* %RBP.i, align 8
  %2585 = add i64 %2584, -12
  %2586 = add i64 %2583, 4
  store i64 %2586, i64* %3, align 8
  %2587 = inttoptr i64 %2585 to i32*
  %2588 = load i32, i32* %2587, align 4
  store i8 0, i8* %14, align 1
  %2589 = and i32 %2588, 255
  %2590 = tail call i32 @llvm.ctpop.i32(i32 %2589)
  %2591 = trunc i32 %2590 to i8
  %2592 = and i8 %2591, 1
  %2593 = xor i8 %2592, 1
  store i8 %2593, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2594 = icmp eq i32 %2588, 0
  %2595 = zext i1 %2594 to i8
  store i8 %2595, i8* %30, align 1
  %2596 = lshr i32 %2588, 31
  %2597 = trunc i32 %2596 to i8
  store i8 %2597, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v125 = select i1 %2594, i64 203, i64 10
  %2598 = add i64 %2583, %.v125
  %2599 = add i64 %2584, -32
  %2600 = add i64 %2598, 5
  store i64 %2600, i64* %3, align 8
  %2601 = inttoptr i64 %2599 to float*
  %2602 = load float, float* %2601, align 4
  br i1 %2594, label %block_.L_433803, label %block_433742

block_433742:                                     ; preds = %block_433738
  %2603 = fpext float %2602 to double
  store double %2603, double* %1177, align 1
  %2604 = add i64 %2584, -24
  %2605 = add i64 %2598, 10
  store i64 %2605, i64* %3, align 8
  %2606 = inttoptr i64 %2604 to float*
  %2607 = load float, float* %2606, align 4
  %2608 = fpext float %2607 to double
  store double %2608, double* %1175, align 1
  %2609 = add i64 %2584, -8
  %2610 = add i64 %2598, 14
  store i64 %2610, i64* %3, align 8
  %2611 = inttoptr i64 %2609 to i64*
  %2612 = load i64, i64* %2611, align 8
  store i64 %2612, i64* %RAX.i525, align 8
  %2613 = add i64 %2612, 144
  %2614 = add i64 %2598, 21
  store i64 %2614, i64* %3, align 8
  %2615 = inttoptr i64 %2613 to i64*
  %2616 = load i64, i64* %2615, align 8
  store i64 %2616, i64* %RAX.i525, align 8
  %2617 = add i64 %2584, -16
  %2618 = add i64 %2598, 25
  store i64 %2618, i64* %3, align 8
  %2619 = inttoptr i64 %2617 to i32*
  %2620 = load i32, i32* %2619, align 4
  %2621 = sext i32 %2620 to i64
  store i64 %2621, i64* %RCX.i611, align 8
  %2622 = shl nsw i64 %2621, 3
  %2623 = add i64 %2622, %2616
  %2624 = add i64 %2598, 29
  store i64 %2624, i64* %3, align 8
  %2625 = inttoptr i64 %2623 to i64*
  %2626 = load i64, i64* %2625, align 8
  store i64 %2626, i64* %RAX.i525, align 8
  %2627 = add i64 %2626, 8
  %2628 = add i64 %2598, 34
  store i64 %2628, i64* %3, align 8
  %2629 = inttoptr i64 %2627 to float*
  %2630 = load float, float* %2629, align 4
  %2631 = fpext float %2630 to double
  store double %2631, double* %1272, align 1
  %2632 = add i64 %2584, -136
  %2633 = add i64 %2598, 42
  store i64 %2633, i64* %3, align 8
  %2634 = inttoptr i64 %2632 to double*
  store double %2603, double* %2634, align 8
  %2635 = load i64, i64* %3, align 8
  %2636 = load <2 x i32>, <2 x i32>* %1279, align 1
  %2637 = load <2 x i32>, <2 x i32>* %1280, align 1
  %2638 = extractelement <2 x i32> %2636, i32 0
  store i32 %2638, i32* %77, align 1
  %2639 = extractelement <2 x i32> %2636, i32 1
  store i32 %2639, i32* %1164, align 1
  %2640 = extractelement <2 x i32> %2637, i32 0
  store i32 %2640, i32* %1165, align 1
  %2641 = extractelement <2 x i32> %2637, i32 1
  store i32 %2641, i32* %1166, align 1
  %2642 = load i64, i64* %RBP.i, align 8
  %2643 = add i64 %2642, -144
  %2644 = add i64 %2635, 11
  store i64 %2644, i64* %3, align 8
  %2645 = load i64, i64* %1269, align 1
  %2646 = inttoptr i64 %2643 to i64*
  store i64 %2645, i64* %2646, align 8
  %2647 = load i64, i64* %3, align 8
  %2648 = add i64 %2647, -205447
  %2649 = add i64 %2647, 5
  %2650 = load i64, i64* %6, align 8
  %2651 = add i64 %2650, -8
  %2652 = inttoptr i64 %2651 to i64*
  store i64 %2649, i64* %2652, align 8
  store i64 %2651, i64* %6, align 8
  store i64 %2648, i64* %3, align 8
  %2653 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %2580)
  %2654 = load i64, i64* %RBP.i, align 8
  %2655 = add i64 %2654, -144
  %2656 = load i64, i64* %3, align 8
  %2657 = add i64 %2656, 8
  store i64 %2657, i64* %3, align 8
  %2658 = inttoptr i64 %2655 to double*
  %2659 = load double, double* %2658, align 8
  %2660 = load double, double* %1177, align 1
  %2661 = fadd double %2659, %2660
  store double %2661, double* %1175, align 1
  store i64 0, i64* %89, align 1
  %2662 = add i64 %2654, -136
  %2663 = add i64 %2656, 20
  store i64 %2663, i64* %3, align 8
  %2664 = inttoptr i64 %2662 to i64*
  %2665 = load i64, i64* %2664, align 8
  store i64 %2665, i64* %.pre-phi, align 1
  store double 0.000000e+00, double* %.pre-phi121, align 1
  %2666 = add i64 %2656, 24
  store i64 %2666, i64* %3, align 8
  %.cast41 = bitcast i64 %2665 to double
  %2667 = fcmp uno double %.cast41, %2661
  br i1 %2667, label %2668, label %2678

; <label>:2668:                                   ; preds = %block_433742
  %2669 = fadd double %.cast41, %2661
  %2670 = bitcast double %2669 to i64
  %2671 = and i64 %2670, 9221120237041090560
  %2672 = icmp eq i64 %2671, 9218868437227405312
  %2673 = and i64 %2670, 2251799813685247
  %2674 = icmp ne i64 %2673, 0
  %2675 = and i1 %2672, %2674
  br i1 %2675, label %2676, label %2684

; <label>:2676:                                   ; preds = %2668
  %2677 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2666, %struct.Memory* %2653)
  %.pre112 = load i64, i64* %3, align 8
  %.pre113 = load i64, i64* %RBP.i, align 8
  br label %routine_ucomisd__xmm1___xmm0.exit

; <label>:2678:                                   ; preds = %block_433742
  %2679 = fcmp ogt double %.cast41, %2661
  br i1 %2679, label %2684, label %2680

; <label>:2680:                                   ; preds = %2678
  %2681 = fcmp olt double %.cast41, %2661
  br i1 %2681, label %2684, label %2682

; <label>:2682:                                   ; preds = %2680
  %2683 = fcmp oeq double %.cast41, %2661
  br i1 %2683, label %2684, label %2688

; <label>:2684:                                   ; preds = %2682, %2680, %2678, %2668
  %2685 = phi i8 [ 0, %2678 ], [ 0, %2680 ], [ 1, %2682 ], [ 1, %2668 ]
  %2686 = phi i8 [ 0, %2678 ], [ 0, %2680 ], [ 0, %2682 ], [ 1, %2668 ]
  %2687 = phi i8 [ 0, %2678 ], [ 1, %2680 ], [ 0, %2682 ], [ 1, %2668 ]
  store i8 %2685, i8* %30, align 1
  store i8 %2686, i8* %21, align 1
  store i8 %2687, i8* %14, align 1
  br label %2688

; <label>:2688:                                   ; preds = %2684, %2682
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm1___xmm0.exit

routine_ucomisd__xmm1___xmm0.exit:                ; preds = %2688, %2676
  %2689 = phi i64 [ %.pre113, %2676 ], [ %2654, %2688 ]
  %2690 = phi i64 [ %.pre112, %2676 ], [ %2666, %2688 ]
  %2691 = phi %struct.Memory* [ %2677, %2676 ], [ %2653, %2688 ]
  %2692 = load i8, i8* %14, align 1
  %2693 = load i8, i8* %30, align 1
  %2694 = or i8 %2693, %2692
  %2695 = icmp ne i8 %2694, 0
  %.v156 = select i1 %2695, i64 24, i64 6
  %2696 = add i64 %2690, %.v156
  store i64 %2696, i64* %3, align 8
  br i1 %2695, label %block_.L_4337ac, label %block_43379a

block_43379a:                                     ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %2697 = add i64 %2689, -32
  %2698 = add i64 %2696, 5
  store i64 %2698, i64* %3, align 8
  %2699 = inttoptr i64 %2697 to float*
  %2700 = load float, float* %2699, align 4
  %2701 = fpext float %2700 to double
  store double %2701, double* %1177, align 1
  %2702 = add i64 %2689, -152
  %2703 = add i64 %2696, 13
  store i64 %2703, i64* %3, align 8
  %2704 = inttoptr i64 %2702 to double*
  store double %2701, double* %2704, align 8
  %2705 = load i64, i64* %3, align 8
  %2706 = add i64 %2705, 70
  store i64 %2706, i64* %3, align 8
  br label %block_.L_4337ed

block_.L_4337ac:                                  ; preds = %routine_ucomisd__xmm1___xmm0.exit
  %2707 = add i64 %2689, -24
  %2708 = add i64 %2696, 5
  store i64 %2708, i64* %3, align 8
  %2709 = inttoptr i64 %2707 to float*
  %2710 = load float, float* %2709, align 4
  %2711 = fpext float %2710 to double
  store double %2711, double* %1177, align 1
  %2712 = add i64 %2689, -8
  %2713 = add i64 %2696, 9
  store i64 %2713, i64* %3, align 8
  %2714 = inttoptr i64 %2712 to i64*
  %2715 = load i64, i64* %2714, align 8
  store i64 %2715, i64* %RAX.i525, align 8
  %2716 = add i64 %2715, 144
  %2717 = add i64 %2696, 16
  store i64 %2717, i64* %3, align 8
  %2718 = inttoptr i64 %2716 to i64*
  %2719 = load i64, i64* %2718, align 8
  store i64 %2719, i64* %RAX.i525, align 8
  %2720 = add i64 %2689, -16
  %2721 = add i64 %2696, 20
  store i64 %2721, i64* %3, align 8
  %2722 = inttoptr i64 %2720 to i32*
  %2723 = load i32, i32* %2722, align 4
  %2724 = sext i32 %2723 to i64
  store i64 %2724, i64* %RCX.i611, align 8
  %2725 = shl nsw i64 %2724, 3
  %2726 = add i64 %2725, %2719
  %2727 = add i64 %2696, 24
  store i64 %2727, i64* %3, align 8
  %2728 = inttoptr i64 %2726 to i64*
  %2729 = load i64, i64* %2728, align 8
  store i64 %2729, i64* %RAX.i525, align 8
  %2730 = add i64 %2729, 8
  %2731 = add i64 %2696, 29
  store i64 %2731, i64* %3, align 8
  %2732 = inttoptr i64 %2730 to float*
  %2733 = load float, float* %2732, align 4
  %2734 = fpext float %2733 to double
  store double %2734, double* %1175, align 1
  %2735 = add i64 %2689, -160
  %2736 = add i64 %2696, 37
  store i64 %2736, i64* %3, align 8
  %2737 = inttoptr i64 %2735 to double*
  store double %2711, double* %2737, align 8
  %2738 = load i64, i64* %3, align 8
  %2739 = load <2 x i32>, <2 x i32>* %1267, align 1
  %2740 = load <2 x i32>, <2 x i32>* %1268, align 1
  %2741 = extractelement <2 x i32> %2739, i32 0
  store i32 %2741, i32* %77, align 1
  %2742 = extractelement <2 x i32> %2739, i32 1
  store i32 %2742, i32* %1164, align 1
  %2743 = extractelement <2 x i32> %2740, i32 0
  store i32 %2743, i32* %1165, align 1
  %2744 = extractelement <2 x i32> %2740, i32 1
  store i32 %2744, i32* %1166, align 1
  %2745 = add i64 %2738, -205537
  %2746 = add i64 %2738, 8
  %2747 = load i64, i64* %6, align 8
  %2748 = add i64 %2747, -8
  %2749 = inttoptr i64 %2748 to i64*
  store i64 %2746, i64* %2749, align 8
  store i64 %2748, i64* %6, align 8
  store i64 %2745, i64* %3, align 8
  %2750 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %2691)
  %2751 = load i64, i64* %RBP.i, align 8
  %2752 = add i64 %2751, -160
  %2753 = load i64, i64* %3, align 8
  %2754 = add i64 %2753, 8
  store i64 %2754, i64* %3, align 8
  %2755 = inttoptr i64 %2752 to double*
  %2756 = load double, double* %2755, align 8
  %2757 = load double, double* %1177, align 1
  %2758 = fadd double %2756, %2757
  store double %2758, double* %1175, align 1
  store i64 0, i64* %89, align 1
  %2759 = add i64 %2751, -152
  %2760 = add i64 %2753, 20
  store i64 %2760, i64* %3, align 8
  %2761 = inttoptr i64 %2759 to double*
  store double %2758, double* %2761, align 8
  %.pre114 = load i64, i64* %3, align 8
  br label %block_.L_4337ed

block_.L_4337ed:                                  ; preds = %block_.L_4337ac, %block_43379a
  %2762 = phi i64 [ %.pre114, %block_.L_4337ac ], [ %2706, %block_43379a ]
  %MEMORY.17 = phi %struct.Memory* [ %2750, %block_.L_4337ac ], [ %2691, %block_43379a ]
  %2763 = load i64, i64* %RBP.i, align 8
  %2764 = add i64 %2763, -152
  %2765 = add i64 %2762, 8
  store i64 %2765, i64* %3, align 8
  %2766 = inttoptr i64 %2764 to i64*
  %2767 = load i64, i64* %2766, align 8
  store i64 %2767, i64* %.pre-phi, align 1
  store double 0.000000e+00, double* %.pre-phi121, align 1
  %.cast42 = bitcast i64 %2767 to <2 x i32>
  %.cast43 = bitcast i64 %2767 to double
  %2768 = fptrunc double %.cast43 to float
  store float %2768, float* %1254, align 1
  %2769 = extractelement <2 x i32> %.cast42, i32 1
  store i32 %2769, i32* %1164, align 1
  store i32 0, i32* %1165, align 1
  store i32 0, i32* %1166, align 1
  %2770 = add i64 %2763, -32
  %2771 = add i64 %2762, 17
  store i64 %2771, i64* %3, align 8
  %2772 = load <2 x float>, <2 x float>* %1258, align 1
  %2773 = extractelement <2 x float> %2772, i32 0
  %2774 = inttoptr i64 %2770 to float*
  store float %2773, float* %2774, align 4
  %2775 = load i64, i64* %3, align 8
  %2776 = add i64 %2775, 97
  store i64 %2776, i64* %3, align 8
  br label %block_.L_43385f

block_.L_433803:                                  ; preds = %block_433738
  store float %2602, float* %1254, align 1
  store float 0.000000e+00, float* %79, align 1
  store float 0.000000e+00, float* %81, align 1
  store float 0.000000e+00, float* %83, align 1
  %2777 = add i64 %2584, -24
  %2778 = add i64 %2598, 10
  store i64 %2778, i64* %3, align 8
  %2779 = inttoptr i64 %2777 to float*
  %2780 = load float, float* %2779, align 4
  %2781 = fpext float %2780 to double
  store double %2781, double* %1175, align 1
  %2782 = add i64 %2584, -8
  %2783 = add i64 %2598, 14
  store i64 %2783, i64* %3, align 8
  %2784 = inttoptr i64 %2782 to i64*
  %2785 = load i64, i64* %2784, align 8
  store i64 %2785, i64* %RAX.i525, align 8
  %2786 = add i64 %2785, 144
  %2787 = add i64 %2598, 21
  store i64 %2787, i64* %3, align 8
  %2788 = inttoptr i64 %2786 to i64*
  %2789 = load i64, i64* %2788, align 8
  store i64 %2789, i64* %RAX.i525, align 8
  %2790 = add i64 %2584, -16
  %2791 = add i64 %2598, 25
  store i64 %2791, i64* %3, align 8
  %2792 = inttoptr i64 %2790 to i32*
  %2793 = load i32, i32* %2792, align 4
  %2794 = sext i32 %2793 to i64
  store i64 %2794, i64* %RCX.i611, align 8
  %2795 = shl nsw i64 %2794, 3
  %2796 = add i64 %2795, %2789
  %2797 = add i64 %2598, 29
  store i64 %2797, i64* %3, align 8
  %2798 = inttoptr i64 %2796 to i64*
  %2799 = load i64, i64* %2798, align 8
  store i64 %2799, i64* %RAX.i525, align 8
  %2800 = add i64 %2799, 8
  %2801 = add i64 %2598, 34
  store i64 %2801, i64* %3, align 8
  %2802 = inttoptr i64 %2800 to float*
  %2803 = load float, float* %2802, align 4
  %2804 = fpext float %2803 to double
  store double %2804, double* %1272, align 1
  %2805 = add i64 %2584, -164
  %2806 = add i64 %2598, 42
  store i64 %2806, i64* %3, align 8
  %2807 = load <2 x float>, <2 x float>* %1258, align 1
  %2808 = extractelement <2 x float> %2807, i32 0
  %2809 = inttoptr i64 %2805 to float*
  store float %2808, float* %2809, align 4
  %2810 = load i64, i64* %3, align 8
  %2811 = load <2 x i32>, <2 x i32>* %1279, align 1
  %2812 = load <2 x i32>, <2 x i32>* %1280, align 1
  %2813 = extractelement <2 x i32> %2811, i32 0
  store i32 %2813, i32* %77, align 1
  %2814 = extractelement <2 x i32> %2811, i32 1
  store i32 %2814, i32* %1164, align 1
  %2815 = extractelement <2 x i32> %2812, i32 0
  store i32 %2815, i32* %1165, align 1
  %2816 = extractelement <2 x i32> %2812, i32 1
  store i32 %2816, i32* %1166, align 1
  %2817 = load i64, i64* %RBP.i, align 8
  %2818 = add i64 %2817, -176
  %2819 = add i64 %2810, 11
  store i64 %2819, i64* %3, align 8
  %2820 = load i64, i64* %1269, align 1
  %2821 = inttoptr i64 %2818 to i64*
  store i64 %2820, i64* %2821, align 8
  %2822 = load i64, i64* %3, align 8
  %2823 = add i64 %2822, -205640
  %2824 = add i64 %2822, 5
  %2825 = load i64, i64* %6, align 8
  %2826 = add i64 %2825, -8
  %2827 = inttoptr i64 %2826 to i64*
  store i64 %2824, i64* %2827, align 8
  store i64 %2826, i64* %6, align 8
  store i64 %2823, i64* %3, align 8
  %2828 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %2580)
  %2829 = load i64, i64* %RBP.i, align 8
  %2830 = add i64 %2829, -176
  %2831 = load i64, i64* %3, align 8
  %2832 = add i64 %2831, 8
  store i64 %2832, i64* %3, align 8
  %2833 = inttoptr i64 %2830 to double*
  %2834 = load double, double* %2833, align 8
  %2835 = load double, double* %1177, align 1
  %2836 = fadd double %2834, %2835
  %.cast51 = bitcast double %2836 to <2 x i32>
  %2837 = fptrunc double %2836 to float
  store float %2837, float* %1281, align 1
  %2838 = extractelement <2 x i32> %.cast51, i32 1
  store i32 %2838, i32* %1282, align 1
  store i32 0, i32* %1283, align 1
  store i32 0, i32* %1284, align 1
  %2839 = add i64 %2829, -164
  %2840 = add i64 %2831, 24
  store i64 %2840, i64* %3, align 8
  %2841 = inttoptr i64 %2839 to i32*
  %2842 = load i32, i32* %2841, align 4
  store i32 %2842, i32* %77, align 1
  store float 0.000000e+00, float* %79, align 1
  store float 0.000000e+00, float* %81, align 1
  store float 0.000000e+00, float* %83, align 1
  %2843 = add i64 %2831, -47037
  %2844 = add i64 %2831, 29
  %2845 = load i64, i64* %6, align 8
  %2846 = add i64 %2845, -8
  %2847 = inttoptr i64 %2846 to i64*
  store i64 %2844, i64* %2847, align 8
  store i64 %2846, i64* %6, align 8
  store i64 %2843, i64* %3, align 8
  %call2_433855 = tail call %struct.Memory* @sub_428080.LogSum(%struct.State* nonnull %0, i64 %2843, %struct.Memory* %2828)
  %2848 = load i64, i64* %RBP.i, align 8
  %2849 = add i64 %2848, -32
  %2850 = load i64, i64* %3, align 8
  %2851 = add i64 %2850, 5
  store i64 %2851, i64* %3, align 8
  %2852 = load <2 x float>, <2 x float>* %1258, align 1
  %2853 = extractelement <2 x float> %2852, i32 0
  %2854 = inttoptr i64 %2849 to float*
  store float %2853, float* %2854, align 4
  %.pre115 = load i64, i64* %3, align 8
  br label %block_.L_43385f

block_.L_43385f:                                  ; preds = %block_.L_433803, %block_.L_4337ed
  %2855 = phi i64 [ %.pre115, %block_.L_433803 ], [ %2776, %block_.L_4337ed ]
  %MEMORY.18 = phi %struct.Memory* [ %call2_433855, %block_.L_433803 ], [ %MEMORY.17, %block_.L_4337ed ]
  %2856 = add i64 %2855, 5
  store i64 %2856, i64* %3, align 8
  br label %block_.L_433864

block_.L_433864:                                  ; preds = %block_.L_43385f, %routine_ucomisd__xmm0___xmm1.exit455
  %2857 = phi i64 [ %2583, %routine_ucomisd__xmm0___xmm1.exit455 ], [ %2856, %block_.L_43385f ]
  %MEMORY.19 = phi %struct.Memory* [ %2580, %routine_ucomisd__xmm0___xmm1.exit455 ], [ %MEMORY.18, %block_.L_43385f ]
  store <4 x i32> zeroinitializer, <4 x i32>* %2345, align 1
  %2858 = load i64, i64* %RBP.i, align 8
  %2859 = add i64 %2858, -8
  %2860 = add i64 %2857, 7
  store i64 %2860, i64* %3, align 8
  %2861 = inttoptr i64 %2859 to i64*
  %2862 = load i64, i64* %2861, align 8
  store i64 %2862, i64* %RAX.i525, align 8
  %2863 = add i64 %2862, 144
  %2864 = add i64 %2857, 14
  store i64 %2864, i64* %3, align 8
  %2865 = inttoptr i64 %2863 to i64*
  %2866 = load i64, i64* %2865, align 8
  store i64 %2866, i64* %RAX.i525, align 8
  %2867 = add i64 %2858, -16
  %2868 = add i64 %2857, 18
  store i64 %2868, i64* %3, align 8
  %2869 = inttoptr i64 %2867 to i32*
  %2870 = load i32, i32* %2869, align 4
  %2871 = sext i32 %2870 to i64
  store i64 %2871, i64* %RCX.i611, align 8
  %2872 = shl nsw i64 %2871, 3
  %2873 = add i64 %2872, %2866
  %2874 = add i64 %2857, 22
  store i64 %2874, i64* %3, align 8
  %2875 = inttoptr i64 %2873 to i64*
  %2876 = load i64, i64* %2875, align 8
  store i64 %2876, i64* %RAX.i525, align 8
  %2877 = add i64 %2876, 24
  %2878 = add i64 %2857, 27
  store i64 %2878, i64* %3, align 8
  %2879 = inttoptr i64 %2877 to float*
  %2880 = load float, float* %2879, align 4
  %2881 = fpext float %2880 to double
  store double %2881, double* %1175, align 1
  %2882 = add i64 %2857, 31
  store i64 %2882, i64* %3, align 8
  %2883 = load double, double* %1177, align 1
  %2884 = fcmp uno double %2881, %2883
  br i1 %2884, label %2885, label %2895

; <label>:2885:                                   ; preds = %block_.L_433864
  %2886 = fadd double %2881, %2883
  %2887 = bitcast double %2886 to i64
  %2888 = and i64 %2887, 9221120237041090560
  %2889 = icmp eq i64 %2888, 9218868437227405312
  %2890 = and i64 %2887, 2251799813685247
  %2891 = icmp ne i64 %2890, 0
  %2892 = and i1 %2889, %2891
  br i1 %2892, label %2893, label %2901

; <label>:2893:                                   ; preds = %2885
  %2894 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2882, %struct.Memory* %MEMORY.19)
  %.pre116 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit279

; <label>:2895:                                   ; preds = %block_.L_433864
  %2896 = fcmp ogt double %2881, %2883
  br i1 %2896, label %2901, label %2897

; <label>:2897:                                   ; preds = %2895
  %2898 = fcmp olt double %2881, %2883
  br i1 %2898, label %2901, label %2899

; <label>:2899:                                   ; preds = %2897
  %2900 = fcmp oeq double %2881, %2883
  br i1 %2900, label %2901, label %2905

; <label>:2901:                                   ; preds = %2899, %2897, %2895, %2885
  %2902 = phi i8 [ 0, %2895 ], [ 0, %2897 ], [ 1, %2899 ], [ 1, %2885 ]
  %2903 = phi i8 [ 0, %2895 ], [ 0, %2897 ], [ 0, %2899 ], [ 1, %2885 ]
  %2904 = phi i8 [ 0, %2895 ], [ 1, %2897 ], [ 0, %2899 ], [ 1, %2885 ]
  store i8 %2902, i8* %30, align 1
  store i8 %2903, i8* %21, align 1
  store i8 %2904, i8* %14, align 1
  br label %2905

; <label>:2905:                                   ; preds = %2901, %2899
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit279

routine_ucomisd__xmm0___xmm1.exit279:             ; preds = %2905, %2893
  %2906 = phi i64 [ %.pre116, %2893 ], [ %2882, %2905 ]
  %2907 = phi %struct.Memory* [ %2894, %2893 ], [ %MEMORY.19, %2905 ]
  %2908 = load i8, i8* %14, align 1
  %2909 = load i8, i8* %30, align 1
  %2910 = or i8 %2909, %2908
  %2911 = icmp ne i8 %2910, 0
  %.v157 = select i1 %2911, i64 76, i64 6
  %2912 = add i64 %2906, %.v157
  store i64 %2912, i64* %3, align 8
  br i1 %2911, label %block_.L_4338cf, label %block_433889

block_433889:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit279
  %2913 = load i64, i64* %RBP.i, align 8
  %2914 = add i64 %2913, -24
  %2915 = add i64 %2912, 5
  store i64 %2915, i64* %3, align 8
  %2916 = inttoptr i64 %2914 to float*
  %2917 = load float, float* %2916, align 4
  %2918 = fpext float %2917 to double
  store double %2918, double* %1177, align 1
  %2919 = add i64 %2913, -8
  %2920 = add i64 %2912, 9
  store i64 %2920, i64* %3, align 8
  %2921 = inttoptr i64 %2919 to i64*
  %2922 = load i64, i64* %2921, align 8
  store i64 %2922, i64* %RAX.i525, align 8
  %2923 = add i64 %2922, 144
  %2924 = add i64 %2912, 16
  store i64 %2924, i64* %3, align 8
  %2925 = inttoptr i64 %2923 to i64*
  %2926 = load i64, i64* %2925, align 8
  store i64 %2926, i64* %RAX.i525, align 8
  %2927 = add i64 %2913, -16
  %2928 = add i64 %2912, 20
  store i64 %2928, i64* %3, align 8
  %2929 = inttoptr i64 %2927 to i32*
  %2930 = load i32, i32* %2929, align 4
  %2931 = sext i32 %2930 to i64
  store i64 %2931, i64* %RCX.i611, align 8
  %2932 = shl nsw i64 %2931, 3
  %2933 = add i64 %2932, %2926
  %2934 = add i64 %2912, 24
  store i64 %2934, i64* %3, align 8
  %2935 = inttoptr i64 %2933 to i64*
  %2936 = load i64, i64* %2935, align 8
  store i64 %2936, i64* %RAX.i525, align 8
  %2937 = add i64 %2936, 24
  %2938 = add i64 %2912, 29
  store i64 %2938, i64* %3, align 8
  %2939 = inttoptr i64 %2937 to float*
  %2940 = load float, float* %2939, align 4
  %2941 = fpext float %2940 to double
  store double %2941, double* %1175, align 1
  %2942 = add i64 %2913, -184
  %2943 = add i64 %2912, 37
  store i64 %2943, i64* %3, align 8
  %2944 = inttoptr i64 %2942 to double*
  store double %2918, double* %2944, align 8
  %2945 = load i64, i64* %3, align 8
  %2946 = load <2 x i32>, <2 x i32>* %1267, align 1
  %2947 = load <2 x i32>, <2 x i32>* %1268, align 1
  %2948 = extractelement <2 x i32> %2946, i32 0
  store i32 %2948, i32* %77, align 1
  %2949 = extractelement <2 x i32> %2946, i32 1
  store i32 %2949, i32* %1164, align 1
  %2950 = extractelement <2 x i32> %2947, i32 0
  store i32 %2950, i32* %1165, align 1
  %2951 = extractelement <2 x i32> %2947, i32 1
  store i32 %2951, i32* %1166, align 1
  %2952 = add i64 %2945, -205758
  %2953 = add i64 %2945, 8
  %2954 = load i64, i64* %6, align 8
  %2955 = add i64 %2954, -8
  %2956 = inttoptr i64 %2955 to i64*
  store i64 %2953, i64* %2956, align 8
  store i64 %2955, i64* %6, align 8
  store i64 %2952, i64* %3, align 8
  %2957 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %2907)
  %2958 = load i64, i64* %RBP.i, align 8
  %2959 = add i64 %2958, -184
  %2960 = load i64, i64* %3, align 8
  %2961 = add i64 %2960, 8
  store i64 %2961, i64* %3, align 8
  %2962 = inttoptr i64 %2959 to double*
  %2963 = load double, double* %2962, align 8
  %2964 = load double, double* %1177, align 1
  %2965 = fadd double %2963, %2964
  store double %2965, double* %1175, align 1
  store i64 0, i64* %89, align 1
  %2966 = add i64 %2958, -192
  %2967 = add i64 %2960, 20
  store i64 %2967, i64* %3, align 8
  %2968 = inttoptr i64 %2966 to double*
  store double %2965, double* %2968, align 8
  %2969 = load i64, i64* %3, align 8
  %2970 = add i64 %2969, 26
  br label %block_.L_4338e4

block_.L_4338cf:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit279
  %2971 = add i64 %2912, ptrtoint (%G_0x21001__rip__type* @G_0x21001__rip_ to i64)
  %2972 = add i64 %2912, 8
  store i64 %2972, i64* %3, align 8
  %2973 = inttoptr i64 %2971 to i64*
  %2974 = load i64, i64* %2973, align 8
  store i64 %2974, i64* %.pre-phi, align 1
  store double 0.000000e+00, double* %.pre-phi121, align 1
  %2975 = load i64, i64* %RBP.i, align 8
  %2976 = add i64 %2975, -192
  %2977 = add i64 %2912, 16
  store i64 %2977, i64* %3, align 8
  %2978 = inttoptr i64 %2976 to i64*
  store i64 %2974, i64* %2978, align 8
  %2979 = load i64, i64* %3, align 8
  %2980 = add i64 %2979, 5
  store i64 %2980, i64* %3, align 8
  br label %block_.L_4338e4

block_.L_4338e4:                                  ; preds = %block_.L_4338cf, %block_433889
  %storemerge45 = phi i64 [ %2970, %block_433889 ], [ %2980, %block_.L_4338cf ]
  %MEMORY.20 = phi %struct.Memory* [ %2957, %block_433889 ], [ %2907, %block_.L_4338cf ]
  %2981 = load i64, i64* %RBP.i, align 8
  %2982 = add i64 %2981, -192
  %2983 = add i64 %storemerge45, 8
  store i64 %2983, i64* %3, align 8
  %2984 = inttoptr i64 %2982 to i64*
  %2985 = load i64, i64* %2984, align 8
  store i64 %2985, i64* %.pre-phi, align 1
  store double 0.000000e+00, double* %.pre-phi121, align 1
  %.cast46 = bitcast i64 %2985 to <2 x i32>
  %.cast47 = bitcast i64 %2985 to double
  %2986 = fptrunc double %.cast47 to float
  store float %2986, float* %1254, align 1
  %2987 = extractelement <2 x i32> %.cast46, i32 1
  store i32 %2987, i32* %1164, align 1
  store i32 0, i32* %1165, align 1
  store i32 0, i32* %1166, align 1
  %2988 = add i64 %2981, -24
  %2989 = add i64 %storemerge45, 17
  store i64 %2989, i64* %3, align 8
  %2990 = load <2 x float>, <2 x float>* %1258, align 1
  %2991 = extractelement <2 x float> %2990, i32 0
  %2992 = inttoptr i64 %2988 to float*
  store float %2991, float* %2992, align 4
  %.pre117 = load i64, i64* %3, align 8
  br label %block_.L_4338f5

block_.L_4338f5:                                  ; preds = %block_.L_4338e4, %routine_ucomisd__xmm1___xmm0.exit478
  %2993 = phi i64 [ %2520, %routine_ucomisd__xmm1___xmm0.exit478 ], [ %.pre117, %block_.L_4338e4 ]
  %MEMORY.21 = phi %struct.Memory* [ %2519, %routine_ucomisd__xmm1___xmm0.exit478 ], [ %MEMORY.20, %block_.L_4338e4 ]
  %2994 = add i64 %2993, ptrtoint (%G_0x20fdb__rip__type* @G_0x20fdb__rip_ to i64)
  %2995 = add i64 %2993, 8
  store i64 %2995, i64* %3, align 8
  %2996 = inttoptr i64 %2994 to i64*
  %2997 = load i64, i64* %2996, align 8
  store i64 %2997, i64* %.pre-phi, align 1
  store double 0.000000e+00, double* %.pre-phi121, align 1
  %2998 = load i64, i64* %RBP.i, align 8
  %2999 = add i64 %2998, -32
  %3000 = add i64 %2993, 13
  store i64 %3000, i64* %3, align 8
  %3001 = inttoptr i64 %2999 to float*
  %3002 = load float, float* %3001, align 4
  %3003 = fpext float %3002 to double
  store double %3003, double* %1175, align 1
  %3004 = add i64 %2993, 17
  store i64 %3004, i64* %3, align 8
  %3005 = bitcast i64 %2997 to double
  %3006 = fcmp uno double %3003, %3005
  br i1 %3006, label %3007, label %3017

; <label>:3007:                                   ; preds = %block_.L_4338f5
  %3008 = fadd double %3003, %3005
  %3009 = bitcast double %3008 to i64
  %3010 = and i64 %3009, 9221120237041090560
  %3011 = icmp eq i64 %3010, 9218868437227405312
  %3012 = and i64 %3009, 2251799813685247
  %3013 = icmp ne i64 %3012, 0
  %3014 = and i1 %3011, %3013
  br i1 %3014, label %3015, label %3023

; <label>:3015:                                   ; preds = %3007
  %3016 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3004, %struct.Memory* %MEMORY.21)
  %.pre118 = load i64, i64* %3, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:3017:                                   ; preds = %block_.L_4338f5
  %3018 = fcmp ogt double %3003, %3005
  br i1 %3018, label %3023, label %3019

; <label>:3019:                                   ; preds = %3017
  %3020 = fcmp olt double %3003, %3005
  br i1 %3020, label %3023, label %3021

; <label>:3021:                                   ; preds = %3019
  %3022 = fcmp oeq double %3003, %3005
  br i1 %3022, label %3023, label %3027

; <label>:3023:                                   ; preds = %3021, %3019, %3017, %3007
  %3024 = phi i8 [ 0, %3017 ], [ 0, %3019 ], [ 1, %3021 ], [ 1, %3007 ]
  %3025 = phi i8 [ 0, %3017 ], [ 0, %3019 ], [ 0, %3021 ], [ 1, %3007 ]
  %3026 = phi i8 [ 0, %3017 ], [ 1, %3019 ], [ 0, %3021 ], [ 1, %3007 ]
  store i8 %3024, i8* %30, align 1
  store i8 %3025, i8* %21, align 1
  store i8 %3026, i8* %14, align 1
  br label %3027

; <label>:3027:                                   ; preds = %3023, %3021
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %3027, %3015
  %3028 = phi i64 [ %.pre118, %3015 ], [ %3004, %3027 ]
  %3029 = phi %struct.Memory* [ %3016, %3015 ], [ %MEMORY.21, %3027 ]
  %3030 = load i8, i8* %14, align 1
  %3031 = load i8, i8* %30, align 1
  %3032 = or i8 %3031, %3030
  %3033 = icmp ne i8 %3032, 0
  %.v158 = select i1 %3033, i64 55, i64 6
  %3034 = add i64 %3028, %.v158
  store i64 %3034, i64* %3, align 8
  br i1 %3033, label %block_.L_43393d, label %block_43390c

block_43390c:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %3035 = add i64 %3034, ptrtoint (%G_0x20edc__rip__type* @G_0x20edc__rip_ to i64)
  %3036 = add i64 %3034, 8
  store i64 %3036, i64* %3, align 8
  %3037 = inttoptr i64 %3035 to i64*
  %3038 = load i64, i64* %3037, align 8
  store i64 %3038, i64* %.pre-phi, align 1
  store double 0.000000e+00, double* %.pre-phi121, align 1
  %3039 = add i64 %3034, add (i64 ptrtoint (%G_0x20fe4__rip__type* @G_0x20fe4__rip_ to i64), i64 8)
  %3040 = add i64 %3034, 16
  store i64 %3040, i64* %3, align 8
  %3041 = inttoptr i64 %3039 to i64*
  %3042 = load i64, i64* %3041, align 8
  store i64 %3042, i64* %1269, align 1
  store double 0.000000e+00, double* %1270, align 1
  %3043 = load i64, i64* %RBP.i, align 8
  %3044 = add i64 %3043, -32
  %3045 = add i64 %3034, 21
  store i64 %3045, i64* %3, align 8
  %3046 = inttoptr i64 %3044 to float*
  %3047 = load float, float* %3046, align 4
  %3048 = fpext float %3047 to double
  store double %3048, double* %1272, align 1
  %3049 = bitcast i64 %3042 to double
  %3050 = fmul double %3048, %3049
  store double %3050, double* %1175, align 1
  store i64 0, i64* %89, align 1
  %3051 = bitcast i64 %3038 to double
  %3052 = fadd double %3050, %3051
  store double %3052, double* %1177, align 1
  store i64 0, i64* %80, align 1
  %3053 = add i64 %3034, -205436
  %3054 = add i64 %3034, 34
  %3055 = load i64, i64* %6, align 8
  %3056 = add i64 %3055, -8
  %3057 = inttoptr i64 %3056 to i64*
  store i64 %3054, i64* %3057, align 8
  store i64 %3056, i64* %6, align 8
  store i64 %3053, i64* %3, align 8
  %3058 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @floor to i64), %struct.Memory* %3029)
  %3059 = load i64, i64* %3, align 8
  %3060 = load double, double* %1177, align 1
  %3061 = tail call double @llvm.trunc.f64(double %3060)
  %3062 = tail call double @llvm.fabs.f64(double %3061)
  %3063 = fcmp ogt double %3062, 0x41DFFFFFFFC00000
  %3064 = fptosi double %3061 to i32
  %3065 = zext i32 %3064 to i64
  %3066 = select i1 %3063, i64 2147483648, i64 %3065
  store i64 %3066, i64* %RAX.i525, align 8
  %3067 = load i64, i64* %RBP.i, align 8
  %3068 = add i64 %3067, -196
  %3069 = trunc i64 %3066 to i32
  %3070 = add i64 %3059, 10
  store i64 %3070, i64* %3, align 8
  %3071 = inttoptr i64 %3068 to i32*
  store i32 %3069, i32* %3071, align 4
  %3072 = load i64, i64* %3, align 8
  %3073 = add i64 %3072, 21
  br label %block_.L_43394d

block_.L_43393d:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  store i64 3307312975, i64* %RAX.i525, align 8
  %3074 = load i64, i64* %RBP.i, align 8
  %3075 = add i64 %3074, -196
  %3076 = add i64 %3034, 11
  store i64 %3076, i64* %3, align 8
  %3077 = inttoptr i64 %3075 to i32*
  store i32 -987654321, i32* %3077, align 4
  %3078 = load i64, i64* %3, align 8
  %3079 = add i64 %3078, 5
  store i64 %3079, i64* %3, align 8
  br label %block_.L_43394d

block_.L_43394d:                                  ; preds = %block_.L_43393d, %block_43390c
  %storemerge48 = phi i64 [ %3073, %block_43390c ], [ %3079, %block_.L_43393d ]
  %MEMORY.22 = phi %struct.Memory* [ %3058, %block_43390c ], [ %3029, %block_.L_43393d ]
  %3080 = load i64, i64* %RBP.i, align 8
  %3081 = add i64 %3080, -196
  %3082 = add i64 %storemerge48, 6
  store i64 %3082, i64* %3, align 8
  %3083 = inttoptr i64 %3081 to i32*
  %3084 = load i32, i32* %3083, align 4
  %3085 = zext i32 %3084 to i64
  store i64 %3085, i64* %RAX.i525, align 8
  %3086 = add i64 %3080, -8
  %3087 = add i64 %storemerge48, 10
  store i64 %3087, i64* %3, align 8
  %3088 = inttoptr i64 %3086 to i64*
  %3089 = load i64, i64* %3088, align 8
  store i64 %3089, i64* %RCX.i611, align 8
  %3090 = add i64 %3089, 376
  %3091 = add i64 %storemerge48, 17
  store i64 %3091, i64* %3, align 8
  %3092 = inttoptr i64 %3090 to i64*
  %3093 = load i64, i64* %3092, align 8
  store i64 %3093, i64* %RCX.i611, align 8
  %3094 = add i64 %3080, -16
  %3095 = add i64 %storemerge48, 21
  store i64 %3095, i64* %3, align 8
  %3096 = inttoptr i64 %3094 to i32*
  %3097 = load i32, i32* %3096, align 4
  %3098 = sext i32 %3097 to i64
  store i64 %3098, i64* %RDX.i551, align 8
  %3099 = shl nsw i64 %3098, 2
  %3100 = add i64 %3099, %3093
  %3101 = add i64 %storemerge48, 24
  store i64 %3101, i64* %3, align 8
  %3102 = inttoptr i64 %3100 to i32*
  store i32 %3084, i32* %3102, align 4
  %3103 = load i64, i64* %RBP.i, align 8
  %3104 = add i64 %3103, -16
  %3105 = load i64, i64* %3, align 8
  %3106 = add i64 %3105, 3
  store i64 %3106, i64* %3, align 8
  %3107 = inttoptr i64 %3104 to i32*
  %3108 = load i32, i32* %3107, align 4
  %3109 = add i32 %3108, -1
  %3110 = zext i32 %3109 to i64
  store i64 %3110, i64* %RAX.i525, align 8
  %3111 = icmp ne i32 %3108, 0
  %3112 = zext i1 %3111 to i8
  store i8 %3112, i8* %14, align 1
  %3113 = and i32 %3109, 255
  %3114 = tail call i32 @llvm.ctpop.i32(i32 %3113)
  %3115 = trunc i32 %3114 to i8
  %3116 = and i8 %3115, 1
  %3117 = xor i8 %3116, 1
  store i8 %3117, i8* %21, align 1
  %3118 = xor i32 %3108, 16
  %3119 = xor i32 %3118, %3109
  %3120 = lshr i32 %3119, 4
  %3121 = trunc i32 %3120 to i8
  %3122 = and i8 %3121, 1
  store i8 %3122, i8* %27, align 1
  %3123 = icmp eq i32 %3109, 0
  %3124 = zext i1 %3123 to i8
  store i8 %3124, i8* %30, align 1
  %3125 = lshr i32 %3109, 31
  %3126 = trunc i32 %3125 to i8
  store i8 %3126, i8* %33, align 1
  %3127 = lshr i32 %3108, 31
  %3128 = xor i32 %3125, %3127
  %3129 = xor i32 %3125, 1
  %3130 = add nuw nsw i32 %3128, %3129
  %3131 = icmp eq i32 %3130, 2
  %3132 = zext i1 %3131 to i8
  store i8 %3132, i8* %39, align 1
  %3133 = add i64 %3105, 9
  store i64 %3133, i64* %3, align 8
  store i32 %3109, i32* %3107, align 4
  %3134 = load i64, i64* %3, align 8
  %3135 = add i64 %3134, -736
  store i64 %3135, i64* %3, align 8
  br label %block_.L_43368e

block_.L_433973:                                  ; preds = %block_.L_43368e
  %3136 = add i64 %2347, -8
  %3137 = add i64 %2375, 4
  store i64 %3137, i64* %3, align 8
  %3138 = inttoptr i64 %3136 to i64*
  %3139 = load i64, i64* %3138, align 8
  store i64 %3139, i64* %RAX.i525, align 8
  %3140 = add i64 %3139, 176
  %3141 = add i64 %2375, 12
  store i64 %3141, i64* %3, align 8
  %3142 = inttoptr i64 %3140 to i32*
  %3143 = load i32, i32* %3142, align 4
  store i32 %3143, i32* %77, align 1
  store float 0.000000e+00, float* %79, align 1
  store float 0.000000e+00, float* %81, align 1
  store float 0.000000e+00, float* %83, align 1
  %3144 = add i64 %2375, 16
  store i64 %3144, i64* %3, align 8
  %3145 = load i64, i64* %3138, align 8
  store i64 %3145, i64* %RAX.i525, align 8
  %3146 = add i64 %3145, 304
  %3147 = add i64 %2375, 24
  store i64 %3147, i64* %3, align 8
  %3148 = inttoptr i64 %3146 to i32*
  %3149 = load i32, i32* %3148, align 4
  store i32 %3149, i32* %86, align 1
  store float 0.000000e+00, float* %88, align 1
  store float 0.000000e+00, float* %90, align 1
  store float 0.000000e+00, float* %92, align 1
  %3150 = add i64 %2375, -48067
  %3151 = add i64 %2375, 29
  %3152 = load i64, i64* %6, align 8
  %3153 = add i64 %3152, -8
  %3154 = inttoptr i64 %3153 to i64*
  store i64 %3151, i64* %3154, align 8
  store i64 %3153, i64* %6, align 8
  store i64 %3150, i64* %3, align 8
  %call2_43398b = tail call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* nonnull %0, i64 %3150, %struct.Memory* %MEMORY.15)
  %3155 = load i64, i64* %3, align 8
  %3156 = add i64 %3155, ptrtoint (%G_0x20d90__rip__type* @G_0x20d90__rip_ to i64)
  %3157 = add i64 %3155, 8
  store i64 %3157, i64* %3, align 8
  %3158 = inttoptr i64 %3156 to i32*
  %3159 = load i32, i32* %3158, align 4
  store i32 %3159, i32* %86, align 1
  store float 0.000000e+00, float* %88, align 1
  store float 0.000000e+00, float* %90, align 1
  store float 0.000000e+00, float* %92, align 1
  %3160 = load i64, i64* %RBP.i, align 8
  %3161 = add i64 %3160, -8
  %3162 = add i64 %3155, 12
  store i64 %3162, i64* %3, align 8
  %3163 = inttoptr i64 %3161 to i64*
  %3164 = load i64, i64* %3163, align 8
  store i64 %3164, i64* %RCX.i611, align 8
  %3165 = add i64 %3164, 340
  %3166 = load i32, i32* %EAX.i632, align 4
  %3167 = add i64 %3155, 18
  store i64 %3167, i64* %3, align 8
  %3168 = inttoptr i64 %3165 to i32*
  store i32 %3166, i32* %3168, align 4
  %3169 = load i64, i64* %RBP.i, align 8
  %3170 = add i64 %3169, -8
  %3171 = load i64, i64* %3, align 8
  %3172 = add i64 %3171, 4
  store i64 %3172, i64* %3, align 8
  %3173 = inttoptr i64 %3170 to i64*
  %3174 = load i64, i64* %3173, align 8
  store i64 %3174, i64* %RCX.i611, align 8
  %3175 = add i64 %3174, 172
  %3176 = add i64 %3171, 12
  store i64 %3176, i64* %3, align 8
  %3177 = inttoptr i64 %3175 to i32*
  %3178 = load i32, i32* %3177, align 4
  store i32 %3178, i32* %77, align 1
  store float 0.000000e+00, float* %79, align 1
  store float 0.000000e+00, float* %81, align 1
  store float 0.000000e+00, float* %83, align 1
  %3179 = add i64 %3171, -48114
  %3180 = add i64 %3171, 17
  %3181 = load i64, i64* %6, align 8
  %3182 = add i64 %3181, -8
  %3183 = inttoptr i64 %3182 to i64*
  store i64 %3180, i64* %3183, align 8
  store i64 %3182, i64* %6, align 8
  store i64 %3179, i64* %3, align 8
  %call2_4339ae = tail call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* nonnull %0, i64 %3179, %struct.Memory* %call2_43398b)
  %3184 = load i64, i64* %3, align 8
  %3185 = add i64 %3184, ptrtoint (%G_0x20d6d__rip__type* @G_0x20d6d__rip_ to i64)
  %3186 = add i64 %3184, 8
  store i64 %3186, i64* %3, align 8
  %3187 = inttoptr i64 %3185 to i32*
  %3188 = load i32, i32* %3187, align 4
  store i32 %3188, i32* %86, align 1
  store float 0.000000e+00, float* %88, align 1
  store float 0.000000e+00, float* %90, align 1
  store float 0.000000e+00, float* %92, align 1
  %3189 = load i64, i64* %RBP.i, align 8
  %3190 = add i64 %3189, -8
  %3191 = add i64 %3184, 12
  store i64 %3191, i64* %3, align 8
  %3192 = inttoptr i64 %3190 to i64*
  %3193 = load i64, i64* %3192, align 8
  store i64 %3193, i64* %RCX.i611, align 8
  %3194 = add i64 %3193, 336
  %3195 = load i32, i32* %EAX.i632, align 4
  %3196 = add i64 %3184, 18
  store i64 %3196, i64* %3, align 8
  %3197 = inttoptr i64 %3194 to i32*
  store i32 %3195, i32* %3197, align 4
  %3198 = load i64, i64* %RBP.i, align 8
  %3199 = add i64 %3198, -8
  %3200 = load i64, i64* %3, align 8
  %3201 = add i64 %3200, 4
  store i64 %3201, i64* %3, align 8
  %3202 = inttoptr i64 %3199 to i64*
  %3203 = load i64, i64* %3202, align 8
  store i64 %3203, i64* %RCX.i611, align 8
  %3204 = add i64 %3203, 184
  %3205 = add i64 %3200, 12
  store i64 %3205, i64* %3, align 8
  %3206 = inttoptr i64 %3204 to i32*
  %3207 = load i32, i32* %3206, align 4
  store i32 %3207, i32* %77, align 1
  store float 0.000000e+00, float* %79, align 1
  store float 0.000000e+00, float* %81, align 1
  store float 0.000000e+00, float* %83, align 1
  %3208 = add i64 %3200, -48149
  %3209 = add i64 %3200, 17
  %3210 = load i64, i64* %6, align 8
  %3211 = add i64 %3210, -8
  %3212 = inttoptr i64 %3211 to i64*
  store i64 %3209, i64* %3212, align 8
  store i64 %3211, i64* %6, align 8
  store i64 %3208, i64* %3, align 8
  %call2_4339d1 = tail call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* nonnull %0, i64 %3208, %struct.Memory* %call2_4339ae)
  %3213 = load i64, i64* %3, align 8
  %3214 = add i64 %3213, ptrtoint (%G_0x20d4a__rip__type* @G_0x20d4a__rip_ to i64)
  %3215 = add i64 %3213, 8
  store i64 %3215, i64* %3, align 8
  %3216 = inttoptr i64 %3214 to i32*
  %3217 = load i32, i32* %3216, align 4
  store i32 %3217, i32* %86, align 1
  store float 0.000000e+00, float* %88, align 1
  store float 0.000000e+00, float* %90, align 1
  store float 0.000000e+00, float* %92, align 1
  %3218 = load i64, i64* %RBP.i, align 8
  %3219 = add i64 %3218, -8
  %3220 = add i64 %3213, 12
  store i64 %3220, i64* %3, align 8
  %3221 = inttoptr i64 %3219 to i64*
  %3222 = load i64, i64* %3221, align 8
  store i64 %3222, i64* %RCX.i611, align 8
  %3223 = add i64 %3222, 348
  %3224 = load i32, i32* %EAX.i632, align 4
  %3225 = add i64 %3213, 18
  store i64 %3225, i64* %3, align 8
  %3226 = inttoptr i64 %3223 to i32*
  store i32 %3224, i32* %3226, align 4
  %3227 = load i64, i64* %RBP.i, align 8
  %3228 = add i64 %3227, -8
  %3229 = load i64, i64* %3, align 8
  %3230 = add i64 %3229, 4
  store i64 %3230, i64* %3, align 8
  %3231 = inttoptr i64 %3228 to i64*
  %3232 = load i64, i64* %3231, align 8
  store i64 %3232, i64* %RCX.i611, align 8
  %3233 = add i64 %3232, 180
  %3234 = add i64 %3229, 12
  store i64 %3234, i64* %3, align 8
  %3235 = inttoptr i64 %3233 to i32*
  %3236 = load i32, i32* %3235, align 4
  store i32 %3236, i32* %77, align 1
  store float 0.000000e+00, float* %79, align 1
  store float 0.000000e+00, float* %81, align 1
  store float 0.000000e+00, float* %83, align 1
  %3237 = add i64 %3229, -48184
  %3238 = add i64 %3229, 17
  %3239 = load i64, i64* %6, align 8
  %3240 = add i64 %3239, -8
  %3241 = inttoptr i64 %3240 to i64*
  store i64 %3238, i64* %3241, align 8
  store i64 %3240, i64* %6, align 8
  store i64 %3237, i64* %3, align 8
  %call2_4339f4 = tail call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* nonnull %0, i64 %3237, %struct.Memory* %call2_4339d1)
  %3242 = load i64, i64* %RBP.i, align 8
  %3243 = add i64 %3242, -8
  %3244 = load i64, i64* %3, align 8
  %3245 = add i64 %3244, 4
  store i64 %3245, i64* %3, align 8
  %3246 = inttoptr i64 %3243 to i64*
  %3247 = load i64, i64* %3246, align 8
  store i64 %3247, i64* %RCX.i611, align 8
  %3248 = add i64 %3247, 344
  %3249 = load i32, i32* %EAX.i632, align 4
  %3250 = add i64 %3244, 10
  store i64 %3250, i64* %3, align 8
  %3251 = inttoptr i64 %3248 to i32*
  store i32 %3249, i32* %3251, align 4
  %3252 = load i64, i64* %RBP.i, align 8
  %3253 = add i64 %3252, -8
  %3254 = load i64, i64* %3, align 8
  %3255 = add i64 %3254, 4
  store i64 %3255, i64* %3, align 8
  %3256 = inttoptr i64 %3253 to i64*
  %3257 = load i64, i64* %3256, align 8
  store i64 %3257, i64* %RCX.i611, align 8
  %3258 = add i64 %3257, 192
  %3259 = add i64 %3254, 12
  store i64 %3259, i64* %3, align 8
  %3260 = inttoptr i64 %3258 to i32*
  %3261 = load i32, i32* %3260, align 4
  store i32 %3261, i32* %77, align 1
  store float 0.000000e+00, float* %79, align 1
  store float 0.000000e+00, float* %81, align 1
  store float 0.000000e+00, float* %83, align 1
  %3262 = add i64 %3254, 16
  store i64 %3262, i64* %3, align 8
  %3263 = load i64, i64* %3256, align 8
  store i64 %3263, i64* %RCX.i611, align 8
  %3264 = add i64 %3263, 304
  %3265 = add i64 %3254, 24
  store i64 %3265, i64* %3, align 8
  %3266 = inttoptr i64 %3264 to i32*
  %3267 = load i32, i32* %3266, align 4
  store i32 %3267, i32* %86, align 1
  store float 0.000000e+00, float* %88, align 1
  store float 0.000000e+00, float* %90, align 1
  store float 0.000000e+00, float* %92, align 1
  %3268 = add i64 %3254, -48211
  %3269 = add i64 %3254, 29
  %3270 = load i64, i64* %6, align 8
  %3271 = add i64 %3270, -8
  %3272 = inttoptr i64 %3271 to i64*
  store i64 %3269, i64* %3272, align 8
  store i64 %3271, i64* %6, align 8
  store i64 %3268, i64* %3, align 8
  %call2_433a1b = tail call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* nonnull %0, i64 %3268, %struct.Memory* %call2_4339f4)
  %3273 = load i64, i64* %3, align 8
  %3274 = add i64 %3273, ptrtoint (%G_0x20db8__rip__type* @G_0x20db8__rip_ to i64)
  %3275 = add i64 %3273, 8
  store i64 %3275, i64* %3, align 8
  %3276 = inttoptr i64 %3274 to i64*
  %3277 = load i64, i64* %3276, align 8
  store i64 %3277, i64* %.pre-phi, align 1
  store double 0.000000e+00, double* %.pre-phi121, align 1
  %3278 = load i64, i64* %RBP.i, align 8
  %3279 = add i64 %3278, -8
  %3280 = add i64 %3273, 12
  store i64 %3280, i64* %3, align 8
  %3281 = inttoptr i64 %3279 to i64*
  %3282 = load i64, i64* %3281, align 8
  store i64 %3282, i64* %RCX.i611, align 8
  %3283 = add i64 %3282, 356
  %3284 = load i32, i32* %EAX.i632, align 4
  %3285 = add i64 %3273, 18
  store i64 %3285, i64* %3, align 8
  %3286 = inttoptr i64 %3283 to i32*
  store i32 %3284, i32* %3286, align 4
  %3287 = load i64, i64* %RBP.i, align 8
  %3288 = add i64 %3287, -8
  %3289 = load i64, i64* %3, align 8
  %3290 = add i64 %3289, 4
  store i64 %3290, i64* %3, align 8
  %3291 = inttoptr i64 %3288 to i64*
  %3292 = load i64, i64* %3291, align 8
  store i64 %3292, i64* %RCX.i611, align 8
  %3293 = add i64 %3292, 188
  %3294 = add i64 %3289, 12
  store i64 %3294, i64* %3, align 8
  %3295 = inttoptr i64 %3293 to i32*
  %3296 = load i32, i32* %3295, align 4
  store i32 %3296, i32* %86, align 1
  store float 0.000000e+00, float* %88, align 1
  store float 0.000000e+00, float* %90, align 1
  store float 0.000000e+00, float* %92, align 1
  %3297 = add i64 %3289, 16
  store i64 %3297, i64* %3, align 8
  %3298 = load i64, i64* %3291, align 8
  store i64 %3298, i64* %RCX.i611, align 8
  %3299 = add i64 %3298, 304
  %3300 = add i64 %3289, 24
  store i64 %3300, i64* %3, align 8
  %3301 = inttoptr i64 %3299 to float*
  %3302 = load float, float* %3301, align 4
  %3303 = fpext float %3302 to double
  store double %3303, double* %1272, align 1
  %3304 = load double, double* %1177, align 1
  %3305 = fsub double %3304, %3303
  %.cast52 = bitcast double %3305 to <2 x i32>
  %3306 = fptrunc double %3305 to float
  store float %3306, float* %1254, align 1
  %3307 = extractelement <2 x i32> %.cast52, i32 1
  store i32 %3307, i32* %1164, align 1
  %3308 = add i64 %3287, -200
  %3309 = add i64 %3289, 40
  store i64 %3309, i64* %3, align 8
  %3310 = load <2 x float>, <2 x float>* %1258, align 1
  %3311 = extractelement <2 x float> %3310, i32 0
  %3312 = inttoptr i64 %3308 to float*
  store float %3311, float* %3312, align 4
  %3313 = load i64, i64* %3, align 8
  %3314 = load <2 x i32>, <2 x i32>* %1267, align 1
  %3315 = load <2 x i32>, <2 x i32>* %1268, align 1
  %3316 = extractelement <2 x i32> %3314, i32 0
  store i32 %3316, i32* %77, align 1
  %3317 = extractelement <2 x i32> %3314, i32 1
  store i32 %3317, i32* %1164, align 1
  %3318 = extractelement <2 x i32> %3315, i32 0
  store i32 %3318, i32* %1165, align 1
  %3319 = extractelement <2 x i32> %3315, i32 1
  store i32 %3319, i32* %1166, align 1
  %3320 = load i64, i64* %RBP.i, align 8
  %3321 = add i64 %3320, -200
  %3322 = add i64 %3313, 11
  store i64 %3322, i64* %3, align 8
  %3323 = inttoptr i64 %3321 to i32*
  %3324 = load i32, i32* %3323, align 4
  store i32 %3324, i32* %86, align 1
  store float 0.000000e+00, float* %88, align 1
  store float 0.000000e+00, float* %90, align 1
  store float 0.000000e+00, float* %92, align 1
  %3325 = add i64 %3313, -48298
  %3326 = add i64 %3313, 16
  %3327 = load i64, i64* %6, align 8
  %3328 = add i64 %3327, -8
  %3329 = inttoptr i64 %3328 to i64*
  store i64 %3326, i64* %3329, align 8
  store i64 %3328, i64* %6, align 8
  store i64 %3325, i64* %3, align 8
  %call2_433a65 = tail call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* nonnull %0, i64 %3325, %struct.Memory* %call2_433a1b)
  %3330 = load i64, i64* %RBP.i, align 8
  %3331 = add i64 %3330, -8
  %3332 = load i64, i64* %3, align 8
  %3333 = add i64 %3332, 4
  store i64 %3333, i64* %3, align 8
  %3334 = inttoptr i64 %3331 to i64*
  %3335 = load i64, i64* %3334, align 8
  store i64 %3335, i64* %RCX.i611, align 8
  %3336 = add i64 %3335, 352
  %3337 = load i32, i32* %EAX.i632, align 4
  %3338 = add i64 %3332, 10
  store i64 %3338, i64* %3, align 8
  %3339 = inttoptr i64 %3336 to i32*
  store i32 %3337, i32* %3339, align 4
  %3340 = load i64, i64* %RBP.i, align 8
  %3341 = add i64 %3340, -8
  %3342 = load i64, i64* %3, align 8
  %3343 = add i64 %3342, 4
  store i64 %3343, i64* %3, align 8
  %3344 = inttoptr i64 %3341 to i64*
  %3345 = load i64, i64* %3344, align 8
  store i64 %3345, i64* %RCX.i611, align 8
  %3346 = add i64 %3345, 200
  %3347 = add i64 %3342, 12
  store i64 %3347, i64* %3, align 8
  %3348 = inttoptr i64 %3346 to i32*
  %3349 = load i32, i32* %3348, align 4
  store i32 %3349, i32* %77, align 1
  store float 0.000000e+00, float* %79, align 1
  store float 0.000000e+00, float* %81, align 1
  store float 0.000000e+00, float* %83, align 1
  %3350 = add i64 %3342, 16
  store i64 %3350, i64* %3, align 8
  %3351 = load i64, i64* %3344, align 8
  store i64 %3351, i64* %RCX.i611, align 8
  %3352 = add i64 %3351, 304
  %3353 = add i64 %3342, 24
  store i64 %3353, i64* %3, align 8
  %3354 = inttoptr i64 %3352 to i32*
  %3355 = load i32, i32* %3354, align 4
  store i32 %3355, i32* %86, align 1
  store float 0.000000e+00, float* %88, align 1
  store float 0.000000e+00, float* %90, align 1
  store float 0.000000e+00, float* %92, align 1
  %3356 = add i64 %3342, -48324
  %3357 = add i64 %3342, 29
  %3358 = load i64, i64* %6, align 8
  %3359 = add i64 %3358, -8
  %3360 = inttoptr i64 %3359 to i64*
  store i64 %3357, i64* %3360, align 8
  store i64 %3359, i64* %6, align 8
  store i64 %3356, i64* %3, align 8
  %call2_433a8c = tail call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* nonnull %0, i64 %3356, %struct.Memory* %call2_433a65)
  %3361 = load i64, i64* %3, align 8
  %3362 = add i64 %3361, ptrtoint (%G_0x20c8f__rip__type* @G_0x20c8f__rip_ to i64)
  %3363 = add i64 %3361, 8
  store i64 %3363, i64* %3, align 8
  %3364 = inttoptr i64 %3362 to i32*
  %3365 = load i32, i32* %3364, align 4
  store i32 %3365, i32* %86, align 1
  store float 0.000000e+00, float* %88, align 1
  store float 0.000000e+00, float* %90, align 1
  store float 0.000000e+00, float* %92, align 1
  %3366 = load i64, i64* %RBP.i, align 8
  %3367 = add i64 %3366, -8
  %3368 = add i64 %3361, 12
  store i64 %3368, i64* %3, align 8
  %3369 = inttoptr i64 %3367 to i64*
  %3370 = load i64, i64* %3369, align 8
  store i64 %3370, i64* %RCX.i611, align 8
  %3371 = add i64 %3370, 364
  %3372 = load i32, i32* %EAX.i632, align 4
  %3373 = add i64 %3361, 18
  store i64 %3373, i64* %3, align 8
  %3374 = inttoptr i64 %3371 to i32*
  store i32 %3372, i32* %3374, align 4
  %3375 = load i64, i64* %RBP.i, align 8
  %3376 = add i64 %3375, -8
  %3377 = load i64, i64* %3, align 8
  %3378 = add i64 %3377, 4
  store i64 %3378, i64* %3, align 8
  %3379 = inttoptr i64 %3376 to i64*
  %3380 = load i64, i64* %3379, align 8
  store i64 %3380, i64* %RCX.i611, align 8
  %3381 = add i64 %3380, 196
  %3382 = add i64 %3377, 12
  store i64 %3382, i64* %3, align 8
  %3383 = inttoptr i64 %3381 to i32*
  %3384 = load i32, i32* %3383, align 4
  store i32 %3384, i32* %77, align 1
  store float 0.000000e+00, float* %79, align 1
  store float 0.000000e+00, float* %81, align 1
  store float 0.000000e+00, float* %83, align 1
  %3385 = add i64 %3377, -48371
  %3386 = add i64 %3377, 17
  %3387 = load i64, i64* %6, align 8
  %3388 = add i64 %3387, -8
  %3389 = inttoptr i64 %3388 to i64*
  store i64 %3386, i64* %3389, align 8
  store i64 %3388, i64* %6, align 8
  store i64 %3385, i64* %3, align 8
  %call2_433aaf = tail call %struct.Memory* @sub_427db0.Prob2Score(%struct.State* nonnull %0, i64 %3385, %struct.Memory* %call2_433a8c)
  %3390 = load i64, i64* %RBP.i, align 8
  %3391 = add i64 %3390, -8
  %3392 = load i64, i64* %3, align 8
  %3393 = add i64 %3392, 4
  store i64 %3393, i64* %3, align 8
  %3394 = inttoptr i64 %3391 to i64*
  %3395 = load i64, i64* %3394, align 8
  store i64 %3395, i64* %RCX.i611, align 8
  %3396 = add i64 %3395, 360
  %3397 = load i32, i32* %EAX.i632, align 4
  %3398 = add i64 %3392, 10
  store i64 %3398, i64* %3, align 8
  %3399 = inttoptr i64 %3396 to i32*
  store i32 %3397, i32* %3399, align 4
  %3400 = load i64, i64* %RBP.i, align 8
  %3401 = add i64 %3400, -8
  %3402 = load i64, i64* %3, align 8
  %3403 = add i64 %3402, 4
  store i64 %3403, i64* %3, align 8
  %3404 = inttoptr i64 %3401 to i64*
  %3405 = load i64, i64* %3404, align 8
  store i64 %3405, i64* %RCX.i611, align 8
  %3406 = add i64 %3405, 456
  %3407 = add i64 %3402, 10
  store i64 %3407, i64* %3, align 8
  %3408 = inttoptr i64 %3406 to i32*
  %3409 = load i32, i32* %3408, align 4
  %3410 = or i32 %3409, 1
  %3411 = zext i32 %3410 to i64
  store i64 %3411, i64* %RAX.i525, align 8
  store i8 0, i8* %14, align 1
  %3412 = and i32 %3410, 255
  %3413 = tail call i32 @llvm.ctpop.i32(i32 %3412)
  %3414 = trunc i32 %3413 to i8
  %3415 = and i8 %3414, 1
  %3416 = xor i8 %3415, 1
  store i8 %3416, i8* %21, align 1
  store i8 0, i8* %30, align 1
  %3417 = lshr i32 %3409, 31
  %3418 = trunc i32 %3417 to i8
  store i8 %3418, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %3419 = add i64 %3402, 19
  store i64 %3419, i64* %3, align 8
  store i32 %3410, i32* %3408, align 4
  %.pre119 = load i64, i64* %3, align 8
  br label %block_.L_433ad1

block_.L_433ad1:                                  ; preds = %block_.L_433973, %block_432f58
  %3420 = phi i64 [ %.pre119, %block_.L_433973 ], [ %70, %block_432f58 ]
  %MEMORY.23 = phi %struct.Memory* [ %call2_433aaf, %block_.L_433973 ], [ %2, %block_432f58 ]
  %3421 = load i64, i64* %6, align 8
  %3422 = add i64 %3421, 208
  store i64 %3422, i64* %6, align 8
  %3423 = icmp ugt i64 %3421, -209
  %3424 = zext i1 %3423 to i8
  store i8 %3424, i8* %14, align 1
  %3425 = trunc i64 %3422 to i32
  %3426 = and i32 %3425, 255
  %3427 = tail call i32 @llvm.ctpop.i32(i32 %3426)
  %3428 = trunc i32 %3427 to i8
  %3429 = and i8 %3428, 1
  %3430 = xor i8 %3429, 1
  store i8 %3430, i8* %21, align 1
  %3431 = xor i64 %3421, 16
  %3432 = xor i64 %3431, %3422
  %3433 = lshr i64 %3432, 4
  %3434 = trunc i64 %3433 to i8
  %3435 = and i8 %3434, 1
  store i8 %3435, i8* %27, align 1
  %3436 = icmp eq i64 %3422, 0
  %3437 = zext i1 %3436 to i8
  store i8 %3437, i8* %30, align 1
  %3438 = lshr i64 %3422, 63
  %3439 = trunc i64 %3438 to i8
  store i8 %3439, i8* %33, align 1
  %3440 = lshr i64 %3421, 63
  %3441 = xor i64 %3438, %3440
  %3442 = add nuw nsw i64 %3441, %3438
  %3443 = icmp eq i64 %3442, 2
  %3444 = zext i1 %3443 to i8
  store i8 %3444, i8* %39, align 1
  %3445 = add i64 %3420, 8
  store i64 %3445, i64* %3, align 8
  %3446 = add i64 %3421, 216
  %3447 = inttoptr i64 %3422 to i64*
  %3448 = load i64, i64* %3447, align 8
  store i64 %3448, i64* %RBP.i, align 8
  store i64 %3446, i64* %6, align 8
  %3449 = add i64 %3420, 9
  store i64 %3449, i64* %3, align 8
  %3450 = inttoptr i64 %3446 to i64*
  %3451 = load i64, i64* %3450, align 8
  store i64 %3451, i64* %3, align 8
  %3452 = add i64 %3421, 224
  store i64 %3452, i64* %6, align 8
  ret %struct.Memory* %MEMORY.23
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
define %struct.Memory* @routine_subq__0xd0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -208
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 208
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
define %struct.Memory* @routine_movl_0x1c8__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 456
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 1
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RSI, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
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
define %struct.Memory* @routine_je_.L_432f5d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_433ad1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_jg_.L_433123(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43304c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_0xe0__rax__rcx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, 224
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %18 = bitcast i64* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %4, i64 12
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.Prob2Score(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x140__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 320
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_jge_.L_433039(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0xa0__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x148__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43303e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
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
define %struct.Memory* @routine_jmpq_.L_432f7e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x677060___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x676ffc___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x676ffc_type* @G_0x676ffc to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_433110(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xe0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 224
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x14__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.DegenerateSymbolScore(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq___rcx__rsi_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4330fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_433102(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_433056(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_433115(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_432f64(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4332fa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss___rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = bitcast i64* %RAX to i32**
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = load i32, i32* %6, align 4
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
define %struct.Memory* @routine_movss_0x130__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 304
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
define %struct.Memory* @routine_movq_0x138__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq_0x90__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x4__rcx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_movss_0x130__rcx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 304
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
define %struct.Memory* @routine_movss_0x2157d__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x2157d__rip__type* @G_0x2157d__rip_ to i64)
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
define %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x8__rcx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 8
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
define %struct.Memory* @routine_movq_0x10__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xc__rcx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 12
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
define %struct.Memory* @routine_movq_0x18__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x10__rcx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
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
define %struct.Memory* @routine_movss_0x14__rcx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
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
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x21485__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x21485__rip__type* @G_0x21485__rip_ to i64)
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
define %struct.Memory* @routine_movq_0x28__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x18__rcx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 24
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
define %struct.Memory* @routine_movq_0x30__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43312a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_cvtss2sd_0xa8__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 168
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
define %struct.Memory* @routine_jbe_.L_43332e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtss2sd_0xa8__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 168
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
define %struct.Memory* @routine_callq_.log_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_433340(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x215a2__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x215a2__rip__type* @G_0x215a2__rip_ to i64)
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
define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
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
define %struct.Memory* @routine_jg_.L_433659(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0xd0__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_4333ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtss2sd___rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %10 = inttoptr i64 %7 to float*
  %11 = load float, float* %10, align 4
  %12 = fpext float %11 to double
  %13 = bitcast %union.VectorReg* %3 to double*
  store double %12, double* %13, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4333be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x21524__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x21524__rip__type* @G_0x21524__rip_ to i64)
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
define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jle_.L_4335b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x214fa__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x214fa__rip__type* @G_0x214fa__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_4335b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
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
define %struct.Memory* @routine_cvtss2sd_0x14__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_43352b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_4334d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x14__rax____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_jbe_.L_433481(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4334be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x50__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_433526(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x1c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x60__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
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
define %struct.Memory* @routine_movss_MINUS0x54__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -84
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
define %struct.Memory* @routine_callq_.LogSum(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43352b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x18__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_433597(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4335a9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x21339__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x21339__rip__type* @G_0x21339__rip_ to i64)
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x21319__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x21319__rip__type* @G_0x21319__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x1c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_433630(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtss2sd_0x130__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 304
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x211fc__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x211fc__rip__type* @G_0x211fc__rip_ to i64)
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x21304__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x21304__rip__type* @G_0x21304__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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

; Function Attrs: norecurse nounwind
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

; Function Attrs: norecurse nounwind
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

; Function Attrs: norecurse nounwind
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.floor_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvttsd2si__xmm0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x41DFFFFFFFC00000
  %11 = fptosi double %8 to i32
  %12 = zext i32 %11 to i64
  %13 = select i1 %10, i64 2147483648, i64 %12
  store i64 %13, i64* %RCX, align 8
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
define %struct.Memory* @routine_jmpq_.L_433646(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_43364b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_433355(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x88__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 136
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
define %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i32 0, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x88__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 136
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
define %struct.Memory* @routine_jl_.L_433973(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0xd8__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_4336dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4336ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x211f4__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x211f4__rip__type* @G_0x211f4__rip_ to i64)
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
define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x211dd__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x211dd__rip__type* @G_0x211dd__rip_ to i64)
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
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
define %struct.Memory* @routine_jbe_.L_4338f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtss2sd_0x8__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_433864(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_433803(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x20__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x8__rax____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x90__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x88__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_4337ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4337ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xa0__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x98__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43385f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x20__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -32
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
define %struct.Memory* @routine_movss__xmm0__MINUS0xa4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -164
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
define %struct.Memory* @routine_movsd__xmm1__MINUS0xb0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xb0__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0xa4__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -164
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
define %struct.Memory* @routine_jmpq_.L_433864(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_4338cf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xb8__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm1__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4338e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x21001__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x21001__rip__type* @G_0x21001__rip_ to i64)
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
define %struct.Memory* @routine_movsd__xmm0__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0xc0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x20fdb__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x20fdb__rip__type* @G_0x20fdb__rip_ to i64)
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
define %struct.Memory* @routine_cvtss2sd_MINUS0x20__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_43393d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x20edc__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x20edc__rip__type* @G_0x20edc__rip_ to i64)
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
define %struct.Memory* @routine_movsd_0x20fe4__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x20fe4__rip__type* @G_0x20fe4__rip_ to i64)
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x20__rbp____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = fadd double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cvttsd2si__xmm0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to double*
  %7 = load double, double* %6, align 1
  %8 = tail call double @llvm.trunc.f64(double %7)
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp ogt double %9, 0x41DFFFFFFFC00000
  %11 = fptosi double %8 to i32
  %12 = zext i32 %11 to i64
  %13 = select i1 %10, i64 2147483648, i64 %12
  store i64 %13, i64* %RAX, align 8
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
define %struct.Memory* @routine_jmpq_.L_43394d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc521974f___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3307312975, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x178__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 376
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_jmpq_.L_43368e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xb0__rax____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 176
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
define %struct.Memory* @routine_movss_0x20d90__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x20d90__rip__type* @G_0x20d90__rip_ to i64)
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
define %struct.Memory* @routine_movl__eax__0x154__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 340
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xac__rcx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 172
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
define %struct.Memory* @routine_movss_0x20d6d__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x20d6d__rip__type* @G_0x20d6d__rip_ to i64)
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
define %struct.Memory* @routine_movl__eax__0x150__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 336
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xb8__rcx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 184
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
define %struct.Memory* @routine_movss_0x20d4a__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x20d4a__rip__type* @G_0x20d4a__rip_ to i64)
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
define %struct.Memory* @routine_movl__eax__0x15c__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 348
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xb4__rcx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 180
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
define %struct.Memory* @routine_movl__eax__0x158__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 344
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xc0__rcx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 192
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
define %struct.Memory* @routine_movsd_0x20db8__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x20db8__rip__type* @G_0x20db8__rip_ to i64)
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
define %struct.Memory* @routine_movl__eax__0x164__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 356
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xbc__rcx____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 188
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
define %struct.Memory* @routine_cvtss2sd_0x130__rcx____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 304
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
define %struct.Memory* @routine_subsd__xmm2___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -200
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
define %struct.Memory* @routine_movss_MINUS0xc8__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -200
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
define %struct.Memory* @routine_movl__eax__0x160__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 352
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xc8__rcx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 200
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
define %struct.Memory* @routine_movss_0x20c8f__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x20c8f__rip__type* @G_0x20c8f__rip_ to i64)
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
define %struct.Memory* @routine_movl__eax__0x16c__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 364
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0xc4__rcx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 196
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
define %struct.Memory* @routine_movl__eax__0x168__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 360
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1c8__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 456
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
define %struct.Memory* @routine_orl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 1
  %7 = trunc i64 %6 to i32
  %8 = and i64 %6, 4294967295
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__0x1c8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 456
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xd0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 208
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -209
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
