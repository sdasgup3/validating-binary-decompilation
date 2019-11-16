; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x7ae438_type = type <{ [4 x i8] }>
%G_0x7afc74_type = type <{ [4 x i8] }>
%G_0x7afc90_type = type <{ [4 x i8] }>
%G_0x7afcb4_type = type <{ [4 x i8] }>
%G_0x7afcd4_type = type <{ [4 x i8] }>
%G_0x7afcf4_type = type <{ [4 x i8] }>
%G_0x7afd14_type = type <{ [4 x i8] }>
%G_0x7afd34_type = type <{ [4 x i8] }>
%G_0x7afd58_type = type <{ [4 x i8] }>
%G_0x7afd5c_type = type <{ [4 x i8] }>
%G_0x7afd74_type = type <{ [4 x i8] }>
%G_0x7afd94_type = type <{ [4 x i8] }>
%G_0x7afdb4_type = type <{ [4 x i8] }>
%G_0xab0ef8_type = type <{ [8 x i8] }>
%G_0xb54ce0_type = type <{ [4 x i8] }>
%G_0xb54ce4_type = type <{ [4 x i8] }>
%G__0x57f9a0_type = type <{ [8 x i8] }>
%G__0x57fb0d_type = type <{ [8 x i8] }>
%G__0x57fdbf_type = type <{ [8 x i8] }>
%G__0x57fdd0_type = type <{ [8 x i8] }>
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
@G_0x7ae438 = local_unnamed_addr global %G_0x7ae438_type zeroinitializer
@G_0x7afc74 = local_unnamed_addr global %G_0x7afc74_type zeroinitializer
@G_0x7afc90 = local_unnamed_addr global %G_0x7afc90_type zeroinitializer
@G_0x7afcb4 = local_unnamed_addr global %G_0x7afcb4_type zeroinitializer
@G_0x7afcd4 = local_unnamed_addr global %G_0x7afcd4_type zeroinitializer
@G_0x7afcf4 = local_unnamed_addr global %G_0x7afcf4_type zeroinitializer
@G_0x7afd14 = local_unnamed_addr global %G_0x7afd14_type zeroinitializer
@G_0x7afd34 = local_unnamed_addr global %G_0x7afd34_type zeroinitializer
@G_0x7afd58 = local_unnamed_addr global %G_0x7afd58_type zeroinitializer
@G_0x7afd5c = local_unnamed_addr global %G_0x7afd5c_type zeroinitializer
@G_0x7afd74 = local_unnamed_addr global %G_0x7afd74_type zeroinitializer
@G_0x7afd94 = local_unnamed_addr global %G_0x7afd94_type zeroinitializer
@G_0x7afdb4 = local_unnamed_addr global %G_0x7afdb4_type zeroinitializer
@G_0xab0ef8 = local_unnamed_addr global %G_0xab0ef8_type zeroinitializer
@G_0xb54ce0 = local_unnamed_addr global %G_0xb54ce0_type zeroinitializer
@G_0xb54ce4 = local_unnamed_addr global %G_0xb54ce4_type zeroinitializer
@G__0x57f9a0 = global %G__0x57f9a0_type zeroinitializer
@G__0x57fb0d = global %G__0x57fb0d_type zeroinitializer
@G__0x57fdbf = global %G__0x57fdbf_type zeroinitializer
@G__0x57fdd0 = global %G__0x57fdd0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @sprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_40f780.countlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_416010.incremental_order_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4115b0.approxlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4046f0.sgftreeAddComment(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @order_moves(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0
  %R15.i63 = getelementptr inbounds %union.anon, %union.anon* %11, i64 0, i32 0
  %12 = load i64, i64* %R15.i63, align 8
  %13 = add i64 %10, 5
  store i64 %13, i64* %3, align 8
  %14 = add i64 %7, -16
  %15 = inttoptr i64 %14 to i64*
  store i64 %12, i64* %15, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14.i102 = getelementptr inbounds %union.anon, %union.anon* %16, i64 0, i32 0
  %17 = load i64, i64* %R14.i102, align 8
  %18 = load i64, i64* %3, align 8
  %19 = add i64 %18, 2
  store i64 %19, i64* %3, align 8
  %20 = add i64 %7, -24
  %21 = inttoptr i64 %20 to i64*
  store i64 %17, i64* %21, align 8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0
  %R12.i128 = getelementptr inbounds %union.anon, %union.anon* %22, i64 0, i32 0
  %23 = load i64, i64* %R12.i128, align 8
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, 2
  store i64 %25, i64* %3, align 8
  %26 = add i64 %7, -32
  %27 = inttoptr i64 %26 to i64*
  store i64 %23, i64* %27, align 8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %RBX.i190 = getelementptr inbounds %union.anon, %union.anon* %28, i64 0, i32 0
  %29 = load i64, i64* %RBX.i190, align 8
  %30 = load i64, i64* %3, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %3, align 8
  %32 = add i64 %7, -40
  %33 = inttoptr i64 %32 to i64*
  store i64 %29, i64* %33, align 8
  %34 = load i64, i64* %3, align 8
  %35 = add i64 %7, -776
  store i64 %35, i64* %6, align 8
  %36 = icmp ult i64 %32, 736
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %37, i8* %38, align 1
  %39 = trunc i64 %35 to i32
  %40 = and i32 %39, 255
  %41 = tail call i32 @llvm.ctpop.i32(i32 %40)
  %42 = trunc i32 %41 to i8
  %43 = and i8 %42, 1
  %44 = xor i8 %43, 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %44, i8* %45, align 1
  %46 = xor i64 %32, %35
  %47 = lshr i64 %46, 4
  %48 = trunc i64 %47 to i8
  %49 = and i8 %48, 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %49, i8* %50, align 1
  %51 = icmp eq i64 %35, 0
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %52, i8* %53, align 1
  %54 = lshr i64 %35, 63
  %55 = trunc i64 %54 to i8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %55, i8* %56, align 1
  %57 = lshr i64 %32, 63
  %58 = xor i64 %54, %57
  %59 = add nuw nsw i64 %58, %57
  %60 = icmp eq i64 %59, 2
  %61 = zext i1 %60 to i8
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %61, i8* %62, align 1
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %63 to i32*
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -36
  %66 = load i32, i32* %EDI.i, align 4
  %67 = add i64 %34, 10
  store i64 %67, i64* %3, align 8
  %68 = inttoptr i64 %65 to i32*
  store i32 %66, i32* %68, align 4
  %RSI.i1239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %69 = load i64, i64* %RBP.i, align 8
  %70 = add i64 %69, -48
  %71 = load i64, i64* %RSI.i1239, align 8
  %72 = load i64, i64* %3, align 8
  %73 = add i64 %72, 4
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %70 to i64*
  store i64 %71, i64* %74, align 8
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i1236 = bitcast %union.anon* %75 to i32*
  %76 = load i64, i64* %RBP.i, align 8
  %77 = add i64 %76, -52
  %78 = load i32, i32* %EDX.i1236, align 4
  %79 = load i64, i64* %3, align 8
  %80 = add i64 %79, 3
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %77 to i32*
  store i32 %78, i32* %81, align 4
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1233 = getelementptr inbounds %union.anon, %union.anon* %82, i64 0, i32 0
  %83 = load i64, i64* %RBP.i, align 8
  %84 = add i64 %83, -64
  %85 = load i64, i64* %RCX.i1233, align 8
  %86 = load i64, i64* %3, align 8
  %87 = add i64 %86, 4
  store i64 %87, i64* %3, align 8
  %88 = inttoptr i64 %84 to i64*
  store i64 %85, i64* %88, align 8
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i1230 = bitcast %union.anon* %89 to i32*
  %90 = load i64, i64* %RBP.i, align 8
  %91 = add i64 %90, -68
  %92 = load i32, i32* %R8D.i1230, align 4
  %93 = load i64, i64* %3, align 8
  %94 = add i64 %93, 4
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %91 to i32*
  store i32 %92, i32* %95, align 4
  %96 = load i64, i64* %RBP.i, align 8
  %97 = add i64 %96, -36
  %98 = load i64, i64* %3, align 8
  %99 = add i64 %98, 4
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %97 to i32*
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %RCX.i1233, align 8
  %RDX.i1225 = getelementptr inbounds %union.anon, %union.anon* %75, i64 0, i32 0
  %103 = add nsw i64 %102, 12099168
  %104 = add i64 %98, 12
  store i64 %104, i64* %3, align 8
  %105 = inttoptr i64 %103 to i8*
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i64
  store i64 %107, i64* %RDX.i1225, align 8
  %108 = add i64 %96, -72
  %109 = zext i8 %106 to i32
  %110 = add i64 %98, 15
  store i64 %110, i64* %3, align 8
  %111 = inttoptr i64 %108 to i32*
  store i32 %109, i32* %111, align 4
  %RDI.i1218 = getelementptr inbounds %union.anon, %union.anon* %63, i64 0, i32 0
  %112 = load i64, i64* %RBP.i, align 8
  %113 = add i64 %112, -36
  %114 = load i64, i64* %3, align 8
  %115 = add i64 %114, 3
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %113 to i32*
  %117 = load i32, i32* %116, align 4
  %118 = zext i32 %117 to i64
  store i64 %118, i64* %RDI.i1218, align 8
  %119 = add i64 %114, -341315
  %120 = add i64 %114, 8
  %121 = load i64, i64* %6, align 8
  %122 = add i64 %121, -8
  %123 = inttoptr i64 %122 to i64*
  store i64 %120, i64* %123, align 8
  store i64 %122, i64* %6, align 8
  store i64 %119, i64* %3, align 8
  %call2_462cc6 = tail call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64 %119, %struct.Memory* %2)
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX.i1214 = bitcast %union.anon* %124 to i32*
  %125 = load i64, i64* %RBP.i, align 8
  %126 = add i64 %125, -76
  %127 = load i32, i32* %EAX.i1214, align 4
  %128 = load i64, i64* %3, align 8
  %129 = add i64 %128, 3
  store i64 %129, i64* %3, align 8
  %130 = inttoptr i64 %126 to i32*
  store i32 %127, i32* %130, align 4
  %131 = load i64, i64* %RBP.i, align 8
  %132 = add i64 %131, -48
  %133 = load i64, i64* %3, align 8
  %134 = add i64 %133, 4
  store i64 %134, i64* %3, align 8
  %135 = inttoptr i64 %132 to i64*
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %RCX.i1233, align 8
  %RAX.i1208 = getelementptr inbounds %union.anon, %union.anon* %124, i64 0, i32 0
  %137 = add i64 %136, 400
  %138 = add i64 %133, 10
  store i64 %138, i64* %3, align 8
  %139 = inttoptr i64 %137 to i32*
  %140 = load i32, i32* %139, align 4
  %141 = zext i32 %140 to i64
  store i64 %141, i64* %RAX.i1208, align 8
  %142 = add i64 %131, -68
  %143 = add i64 %133, 13
  store i64 %143, i64* %3, align 8
  %144 = inttoptr i64 %142 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = sub i32 %140, %145
  %147 = zext i32 %146 to i64
  store i64 %147, i64* %RAX.i1208, align 8
  %148 = lshr i32 %146, 31
  %149 = add i32 %146, -2
  %150 = icmp ult i32 %146, 2
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %38, align 1
  %152 = and i32 %149, 255
  %153 = tail call i32 @llvm.ctpop.i32(i32 %152)
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = xor i8 %155, 1
  store i8 %156, i8* %45, align 1
  %157 = xor i32 %149, %146
  %158 = lshr i32 %157, 4
  %159 = trunc i32 %158 to i8
  %160 = and i8 %159, 1
  store i8 %160, i8* %50, align 1
  %161 = icmp eq i32 %149, 0
  %162 = zext i1 %161 to i8
  store i8 %162, i8* %53, align 1
  %163 = lshr i32 %149, 31
  %164 = trunc i32 %163 to i8
  store i8 %164, i8* %56, align 1
  %165 = xor i32 %163, %148
  %166 = add nuw nsw i32 %165, %148
  %167 = icmp eq i32 %166, 2
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %62, align 1
  %169 = icmp ne i8 %164, 0
  %170 = xor i1 %169, %167
  %.v105 = select i1 %170, i64 22, i64 27
  %171 = add i64 %133, %.v105
  store i64 %171, i64* %3, align 8
  br i1 %170, label %block_462ce4, label %block_.L_462ce9

block_462ce4:                                     ; preds = %entry
  %172 = add i64 %171, 2339
  store i64 %172, i64* %3, align 8
  br label %block_.L_463607

block_.L_462ce9:                                  ; preds = %entry
  %173 = add i64 %171, 3
  store i64 %173, i64* %3, align 8
  %174 = load i32, i32* %144, align 4
  %175 = zext i32 %174 to i64
  store i64 %175, i64* %RAX.i1208, align 8
  %176 = add i64 %131, -80
  %177 = add i64 %171, 6
  store i64 %177, i64* %3, align 8
  %178 = inttoptr i64 %176 to i32*
  store i32 %174, i32* %178, align 4
  %R8.i = getelementptr inbounds %union.anon, %union.anon* %89, i64 0, i32 0
  %R9.i1178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %R10.i1163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %R11.i1160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %R14D.i1152 = bitcast %union.anon* %16 to i32*
  %R15D.i1127 = bitcast %union.anon* %11 to i32*
  %R12D.i1124 = bitcast %union.anon* %22 to i32*
  %179 = bitcast i64* %6 to i64**
  %AL.i640 = bitcast %union.anon* %124 to i8*
  %CL.i641 = bitcast %union.anon* %82 to i8*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_462cef

block_.L_462cef:                                  ; preds = %block_.L_46336d, %block_.L_462ce9
  %180 = phi i64 [ %.pre, %block_.L_462ce9 ], [ %2668, %block_.L_46336d ]
  %181 = load i64, i64* %RBP.i, align 8
  %182 = add i64 %181, -80
  %183 = add i64 %180, 3
  store i64 %183, i64* %3, align 8
  %184 = inttoptr i64 %182 to i32*
  %185 = load i32, i32* %184, align 4
  %186 = zext i32 %185 to i64
  store i64 %186, i64* %RAX.i1208, align 8
  %187 = add i64 %181, -48
  %188 = add i64 %180, 7
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %187 to i64*
  %190 = load i64, i64* %189, align 8
  store i64 %190, i64* %RCX.i1233, align 8
  %191 = add i64 %190, 400
  %192 = add i64 %180, 13
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %191 to i32*
  %194 = load i32, i32* %193, align 4
  %195 = sub i32 %185, %194
  %196 = icmp ult i32 %185, %194
  %197 = zext i1 %196 to i8
  store i8 %197, i8* %38, align 1
  %198 = and i32 %195, 255
  %199 = tail call i32 @llvm.ctpop.i32(i32 %198)
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  %202 = xor i8 %201, 1
  store i8 %202, i8* %45, align 1
  %203 = xor i32 %194, %185
  %204 = xor i32 %203, %195
  %205 = lshr i32 %204, 4
  %206 = trunc i32 %205 to i8
  %207 = and i8 %206, 1
  store i8 %207, i8* %50, align 1
  %208 = icmp eq i32 %195, 0
  %209 = zext i1 %208 to i8
  store i8 %209, i8* %53, align 1
  %210 = lshr i32 %195, 31
  %211 = trunc i32 %210 to i8
  store i8 %211, i8* %56, align 1
  %212 = lshr i32 %185, 31
  %213 = lshr i32 %194, 31
  %214 = xor i32 %213, %212
  %215 = xor i32 %210, %212
  %216 = add nuw nsw i32 %215, %214
  %217 = icmp eq i32 %216, 2
  %218 = zext i1 %217 to i8
  store i8 %218, i8* %62, align 1
  %219 = icmp ne i8 %211, 0
  %220 = xor i1 %219, %217
  %.v106 = select i1 %220, i64 19, i64 1681
  %221 = add i64 %180, %.v106
  store i64 %221, i64* %3, align 8
  br i1 %220, label %block_462d02, label %block_.L_463380

block_462d02:                                     ; preds = %block_.L_462cef
  %222 = add i64 %181, -104
  store i64 %222, i64* %RCX.i1233, align 8
  %223 = add i64 %181, -108
  store i64 %223, i64* %R8.i, align 8
  %224 = add i64 %181, -112
  store i64 %224, i64* %R9.i1178, align 8
  %225 = add i64 %181, -116
  store i64 %225, i64* %RAX.i1208, align 8
  %226 = add i64 %181, -120
  store i64 %226, i64* %RDX.i1225, align 8
  %227 = add i64 %181, -124
  store i64 %227, i64* %RSI.i1239, align 8
  %228 = add i64 %181, -128
  store i64 %228, i64* %RDI.i1218, align 8
  %229 = add i64 %181, -132
  store i64 %229, i64* %R10.i1163, align 8
  %230 = add i64 %221, 39
  store i64 %230, i64* %3, align 8
  %231 = load i64, i64* %189, align 8
  store i64 %231, i64* %R11.i1160, align 8
  %232 = add i64 %221, 43
  store i64 %232, i64* %3, align 8
  %233 = load i32, i32* %184, align 4
  %234 = sext i32 %233 to i64
  store i64 %234, i64* %RBX.i190, align 8
  %235 = shl nsw i64 %234, 2
  %236 = add i64 %235, %231
  %237 = add i64 %221, 47
  store i64 %237, i64* %3, align 8
  %238 = inttoptr i64 %236 to i32*
  %239 = load i32, i32* %238, align 4
  %240 = zext i32 %239 to i64
  store i64 %240, i64* %R14.i102, align 8
  %241 = add i64 %181, -100
  %242 = add i64 %221, 51
  store i64 %242, i64* %3, align 8
  %243 = inttoptr i64 %241 to i32*
  store i32 %239, i32* %243, align 4
  %244 = load i64, i64* %RBP.i, align 8
  %245 = add i64 %244, -104
  %246 = load i64, i64* %3, align 8
  %247 = add i64 %246, 7
  store i64 %247, i64* %3, align 8
  %248 = inttoptr i64 %245 to i32*
  store i32 0, i32* %248, align 4
  %249 = load i64, i64* %RBP.i, align 8
  %250 = add i64 %249, -108
  %251 = load i64, i64* %3, align 8
  %252 = add i64 %251, 7
  store i64 %252, i64* %3, align 8
  %253 = inttoptr i64 %250 to i32*
  store i32 0, i32* %253, align 4
  %254 = load i64, i64* %RBP.i, align 8
  %255 = add i64 %254, -112
  %256 = load i64, i64* %3, align 8
  %257 = add i64 %256, 7
  store i64 %257, i64* %3, align 8
  %258 = inttoptr i64 %255 to i32*
  store i32 0, i32* %258, align 4
  %259 = load i64, i64* %RBP.i, align 8
  %260 = add i64 %259, -116
  %261 = load i64, i64* %3, align 8
  %262 = add i64 %261, 7
  store i64 %262, i64* %3, align 8
  %263 = inttoptr i64 %260 to i32*
  store i32 0, i32* %263, align 4
  %264 = load i64, i64* %RBP.i, align 8
  %265 = add i64 %264, -120
  %266 = load i64, i64* %3, align 8
  %267 = add i64 %266, 7
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %265 to i32*
  store i32 0, i32* %268, align 4
  %269 = load i64, i64* %RBP.i, align 8
  %270 = add i64 %269, -124
  %271 = load i64, i64* %3, align 8
  %272 = add i64 %271, 7
  store i64 %272, i64* %3, align 8
  %273 = inttoptr i64 %270 to i32*
  store i32 0, i32* %273, align 4
  %274 = load i64, i64* %RBP.i, align 8
  %275 = add i64 %274, -128
  %276 = load i64, i64* %3, align 8
  %277 = add i64 %276, 7
  store i64 %277, i64* %3, align 8
  %278 = inttoptr i64 %275 to i32*
  store i32 0, i32* %278, align 4
  %279 = load i64, i64* %RBP.i, align 8
  %280 = add i64 %279, -132
  %281 = load i64, i64* %3, align 8
  %282 = add i64 %281, 10
  store i64 %282, i64* %3, align 8
  %283 = inttoptr i64 %280 to i32*
  store i32 0, i32* %283, align 4
  %284 = load i64, i64* %RBP.i, align 8
  %285 = add i64 %284, -100
  %286 = load i64, i64* %3, align 8
  %287 = add i64 %286, 4
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %285 to i32*
  %289 = load i32, i32* %288, align 4
  %290 = zext i32 %289 to i64
  store i64 %290, i64* %R14.i102, align 8
  %291 = add i64 %284, -52
  %292 = add i64 %286, 8
  store i64 %292, i64* %3, align 8
  %293 = inttoptr i64 %291 to i32*
  %294 = load i32, i32* %293, align 4
  %295 = zext i32 %294 to i64
  store i64 %295, i64* %R15.i63, align 8
  %296 = add i64 %284, -36
  %297 = add i64 %286, 12
  store i64 %297, i64* %3, align 8
  %298 = inttoptr i64 %296 to i32*
  %299 = load i32, i32* %298, align 4
  %300 = zext i32 %299 to i64
  store i64 %300, i64* %R12.i128, align 8
  %301 = add i64 %284, -680
  %302 = load i64, i64* %RDI.i1218, align 8
  %303 = add i64 %286, 19
  store i64 %303, i64* %3, align 8
  %304 = inttoptr i64 %301 to i64*
  store i64 %302, i64* %304, align 8
  %305 = load i32, i32* %R14D.i1152, align 4
  %306 = zext i32 %305 to i64
  %307 = load i64, i64* %3, align 8
  store i64 %306, i64* %RDI.i1218, align 8
  %308 = load i64, i64* %RBP.i, align 8
  %309 = add i64 %308, -688
  %310 = load i64, i64* %RSI.i1239, align 8
  %311 = add i64 %307, 10
  store i64 %311, i64* %3, align 8
  %312 = inttoptr i64 %309 to i64*
  store i64 %310, i64* %312, align 8
  %313 = load i32, i32* %R15D.i1127, align 4
  %314 = zext i32 %313 to i64
  %315 = load i64, i64* %3, align 8
  store i64 %314, i64* %RSI.i1239, align 8
  %316 = load i64, i64* %RBP.i, align 8
  %317 = add i64 %316, -696
  %318 = load i64, i64* %RDX.i1225, align 8
  %319 = add i64 %315, 10
  store i64 %319, i64* %3, align 8
  %320 = inttoptr i64 %317 to i64*
  store i64 %318, i64* %320, align 8
  %321 = load i32, i32* %R12D.i1124, align 4
  %322 = zext i32 %321 to i64
  %323 = load i64, i64* %3, align 8
  store i64 %322, i64* %RDX.i1225, align 8
  %324 = load i64*, i64** %179, align 8
  %325 = load i64, i64* %RAX.i1208, align 8
  %326 = add i64 %323, 7
  store i64 %326, i64* %3, align 8
  store i64 %325, i64* %324, align 8
  %327 = load i64, i64* %RBP.i, align 8
  %328 = add i64 %327, -696
  %329 = load i64, i64* %3, align 8
  %330 = add i64 %329, 7
  store i64 %330, i64* %3, align 8
  %331 = inttoptr i64 %328 to i64*
  %332 = load i64, i64* %331, align 8
  store i64 %332, i64* %RAX.i1208, align 8
  %333 = load i64, i64* %6, align 8
  %334 = add i64 %333, 8
  %335 = add i64 %329, 12
  store i64 %335, i64* %3, align 8
  %336 = inttoptr i64 %334 to i64*
  store i64 %332, i64* %336, align 8
  %337 = load i64, i64* %RBP.i, align 8
  %338 = add i64 %337, -688
  %339 = load i64, i64* %3, align 8
  %340 = add i64 %339, 7
  store i64 %340, i64* %3, align 8
  %341 = inttoptr i64 %338 to i64*
  %342 = load i64, i64* %341, align 8
  store i64 %342, i64* %R11.i1160, align 8
  %343 = load i64, i64* %6, align 8
  %344 = add i64 %343, 16
  %345 = add i64 %339, 12
  store i64 %345, i64* %3, align 8
  %346 = inttoptr i64 %344 to i64*
  store i64 %342, i64* %346, align 8
  %347 = load i64, i64* %RBP.i, align 8
  %348 = add i64 %347, -680
  %349 = load i64, i64* %3, align 8
  %350 = add i64 %349, 7
  store i64 %350, i64* %3, align 8
  %351 = inttoptr i64 %348 to i64*
  %352 = load i64, i64* %351, align 8
  store i64 %352, i64* %RBX.i190, align 8
  %353 = load i64, i64* %6, align 8
  %354 = add i64 %353, 24
  %355 = add i64 %349, 12
  store i64 %355, i64* %3, align 8
  %356 = inttoptr i64 %354 to i64*
  store i64 %352, i64* %356, align 8
  %357 = load i64, i64* %6, align 8
  %358 = add i64 %357, 32
  %359 = load i64, i64* %R10.i1163, align 8
  %360 = load i64, i64* %3, align 8
  %361 = add i64 %360, 5
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %358 to i64*
  store i64 %359, i64* %362, align 8
  %363 = load i64, i64* %3, align 8
  %364 = add i64 %363, -314807
  %365 = add i64 %363, 5
  %366 = load i64, i64* %6, align 8
  %367 = add i64 %366, -8
  %368 = inttoptr i64 %367 to i64*
  store i64 %365, i64* %368, align 8
  store i64 %367, i64* %6, align 8
  store i64 %364, i64* %3, align 8
  %call2_462dc7 = tail call %struct.Memory* @sub_416010.incremental_order_moves(%struct.State* nonnull %0, i64 %364, %struct.Memory* %call2_462cc6)
  %369 = load i64, i64* %RBP.i, align 8
  %370 = add i64 %369, -52
  %371 = load i64, i64* %3, align 8
  %372 = add i64 %371, 3
  store i64 %372, i64* %3, align 8
  %373 = inttoptr i64 %370 to i32*
  %374 = load i32, i32* %373, align 4
  %375 = zext i32 %374 to i64
  store i64 %375, i64* %RDX.i1225, align 8
  %376 = add i64 %369, -72
  %377 = add i64 %371, 6
  store i64 %377, i64* %3, align 8
  %378 = inttoptr i64 %376 to i32*
  %379 = load i32, i32* %378, align 4
  %380 = sub i32 %374, %379
  %381 = icmp ult i32 %374, %379
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %38, align 1
  %383 = and i32 %380, 255
  %384 = tail call i32 @llvm.ctpop.i32(i32 %383)
  %385 = trunc i32 %384 to i8
  %386 = and i8 %385, 1
  %387 = xor i8 %386, 1
  store i8 %387, i8* %45, align 1
  %388 = xor i32 %379, %374
  %389 = xor i32 %388, %380
  %390 = lshr i32 %389, 4
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  store i8 %392, i8* %50, align 1
  %393 = icmp eq i32 %380, 0
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %53, align 1
  %395 = lshr i32 %380, 31
  %396 = trunc i32 %395 to i8
  store i8 %396, i8* %56, align 1
  %397 = lshr i32 %374, 31
  %398 = lshr i32 %379, 31
  %399 = xor i32 %398, %397
  %400 = xor i32 %395, %397
  %401 = add nuw nsw i32 %400, %399
  %402 = icmp eq i32 %401, 2
  %403 = zext i1 %402 to i8
  store i8 %403, i8* %62, align 1
  %.v113 = select i1 %393, i64 12, i64 676
  %404 = add i64 %371, %.v113
  %405 = add i64 %404, 5
  store i64 %405, i64* %3, align 8
  br i1 %393, label %block_462dd8, label %block_.L_463070

block_462dd8:                                     ; preds = %block_462d02
  store i64 10, i64* %RDX.i1225, align 8
  store i64 0, i64* %RAX.i1208, align 8
  store i8 0, i8* %38, align 1
  store i8 1, i8* %45, align 1
  store i8 1, i8* %53, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %62, align 1
  store i8 0, i8* %50, align 1
  store i64 0, i64* %RCX.i1233, align 8
  %406 = add i64 %369, -100
  %407 = add i64 %404, 12
  store i64 %407, i64* %3, align 8
  %408 = inttoptr i64 %406 to i32*
  %409 = load i32, i32* %408, align 4
  %410 = zext i32 %409 to i64
  store i64 %410, i64* %RDI.i1218, align 8
  %411 = add i64 %404, 15
  store i64 %411, i64* %3, align 8
  %412 = load i32, i32* %373, align 4
  %413 = zext i32 %412 to i64
  store i64 %413, i64* %RSI.i1239, align 8
  %414 = add i64 %404, -333864
  %415 = add i64 %404, 20
  %416 = load i64, i64* %6, align 8
  %417 = add i64 %416, -8
  %418 = inttoptr i64 %417 to i64*
  store i64 %415, i64* %418, align 8
  store i64 %417, i64* %6, align 8
  store i64 %414, i64* %3, align 8
  %call2_462de7 = tail call %struct.Memory* @sub_4115b0.approxlib(%struct.State* nonnull %0, i64 %414, %struct.Memory* %call2_462cc6)
  %419 = load i64, i64* %RBP.i, align 8
  %420 = add i64 %419, -136
  %421 = load i32, i32* %EAX.i1214, align 4
  %422 = load i64, i64* %3, align 8
  %423 = add i64 %422, 6
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %420 to i32*
  store i32 %421, i32* %424, align 4
  %425 = load i64, i64* %RBP.i, align 8
  %426 = add i64 %425, -108
  %427 = load i64, i64* %3, align 8
  %428 = add i64 %427, 4
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %426 to i32*
  %430 = load i32, i32* %429, align 4
  store i8 0, i8* %38, align 1
  %431 = and i32 %430, 255
  %432 = tail call i32 @llvm.ctpop.i32(i32 %431)
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  %435 = xor i8 %434, 1
  store i8 %435, i8* %45, align 1
  store i8 0, i8* %50, align 1
  %436 = icmp eq i32 %430, 0
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %53, align 1
  %438 = lshr i32 %430, 31
  %439 = trunc i32 %438 to i8
  store i8 %439, i8* %56, align 1
  store i8 0, i8* %62, align 1
  %440 = icmp ne i8 %439, 0
  %441 = or i1 %436, %440
  %.v = select i1 %441, i64 142, i64 10
  %442 = add i64 %427, %.v
  %443 = add i64 %425, -136
  %444 = add i64 %442, 7
  store i64 %444, i64* %3, align 8
  %445 = inttoptr i64 %443 to i32*
  %446 = load i32, i32* %445, align 4
  br i1 %441, label %block_.L_462e80, label %block_462dfc

block_462dfc:                                     ; preds = %block_462dd8
  %447 = add i32 %446, -5
  %448 = icmp ult i32 %446, 5
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %38, align 1
  %450 = and i32 %447, 255
  %451 = tail call i32 @llvm.ctpop.i32(i32 %450)
  %452 = trunc i32 %451 to i8
  %453 = and i8 %452, 1
  %454 = xor i8 %453, 1
  store i8 %454, i8* %45, align 1
  %455 = xor i32 %447, %446
  %456 = lshr i32 %455, 4
  %457 = trunc i32 %456 to i8
  %458 = and i8 %457, 1
  store i8 %458, i8* %50, align 1
  %459 = icmp eq i32 %447, 0
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %53, align 1
  %461 = lshr i32 %447, 31
  %462 = trunc i32 %461 to i8
  store i8 %462, i8* %56, align 1
  %463 = lshr i32 %446, 31
  %464 = xor i32 %461, %463
  %465 = add nuw nsw i32 %464, %463
  %466 = icmp eq i32 %465, 2
  %467 = zext i1 %466 to i8
  store i8 %467, i8* %62, align 1
  %468 = icmp ne i8 %462, 0
  %469 = xor i1 %468, %466
  %.demorgan = or i1 %459, %469
  %.v132 = select i1 %.demorgan, i64 13, i64 46
  %470 = add i64 %442, %.v132
  store i64 %470, i64* %3, align 8
  br i1 %.demorgan, label %block_462e09, label %block_.L_462e2a

block_462e09:                                     ; preds = %block_462dfc
  %471 = add i64 %470, 7
  store i64 %471, i64* %3, align 8
  %472 = load i32, i32* %445, align 4
  %473 = add i32 %472, -4
  %474 = icmp ult i32 %472, 4
  %475 = zext i1 %474 to i8
  store i8 %475, i8* %38, align 1
  %476 = and i32 %473, 255
  %477 = tail call i32 @llvm.ctpop.i32(i32 %476)
  %478 = trunc i32 %477 to i8
  %479 = and i8 %478, 1
  %480 = xor i8 %479, 1
  store i8 %480, i8* %45, align 1
  %481 = xor i32 %473, %472
  %482 = lshr i32 %481, 4
  %483 = trunc i32 %482 to i8
  %484 = and i8 %483, 1
  store i8 %484, i8* %50, align 1
  %485 = icmp eq i32 %473, 0
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %53, align 1
  %487 = lshr i32 %473, 31
  %488 = trunc i32 %487 to i8
  store i8 %488, i8* %56, align 1
  %489 = lshr i32 %472, 31
  %490 = xor i32 %487, %489
  %491 = add nuw nsw i32 %490, %489
  %492 = icmp eq i32 %491, 2
  %493 = zext i1 %492 to i8
  store i8 %493, i8* %62, align 1
  %.v140 = select i1 %485, i64 13, i64 78
  %494 = add i64 %470, %.v140
  store i64 %494, i64* %3, align 8
  br i1 %485, label %block_462e16, label %block_.L_462e57

block_462e16:                                     ; preds = %block_462e09
  %495 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %496 = zext i32 %495 to i64
  store i64 %496, i64* %RAX.i1208, align 8
  %497 = load i32, i32* bitcast (%G_0xb54ce0_type* @G_0xb54ce0 to i32*), align 8
  %498 = sub i32 %495, %497
  %499 = icmp ult i32 %495, %497
  %500 = zext i1 %499 to i8
  store i8 %500, i8* %38, align 1
  %501 = and i32 %498, 255
  %502 = tail call i32 @llvm.ctpop.i32(i32 %501)
  %503 = trunc i32 %502 to i8
  %504 = and i8 %503, 1
  %505 = xor i8 %504, 1
  store i8 %505, i8* %45, align 1
  %506 = xor i32 %497, %495
  %507 = xor i32 %506, %498
  %508 = lshr i32 %507, 4
  %509 = trunc i32 %508 to i8
  %510 = and i8 %509, 1
  store i8 %510, i8* %50, align 1
  %511 = icmp eq i32 %498, 0
  %512 = zext i1 %511 to i8
  store i8 %512, i8* %53, align 1
  %513 = lshr i32 %498, 31
  %514 = trunc i32 %513 to i8
  store i8 %514, i8* %56, align 1
  %515 = lshr i32 %495, 31
  %516 = lshr i32 %497, 31
  %517 = xor i32 %516, %515
  %518 = xor i32 %513, %515
  %519 = add nuw nsw i32 %518, %517
  %520 = icmp eq i32 %519, 2
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %62, align 1
  %522 = icmp ne i8 %514, 0
  %523 = xor i1 %522, %520
  %524 = or i1 %511, %523
  %.v141 = select i1 %524, i64 65, i64 20
  %525 = add i64 %494, %.v141
  store i64 %525, i64* %3, align 8
  br i1 %524, label %block_.L_462e57, label %block_.L_462e2a

block_.L_462e2a:                                  ; preds = %block_462dfc, %block_462e16
  %526 = phi i64 [ %525, %block_462e16 ], [ %470, %block_462dfc ]
  %527 = load i32, i32* bitcast (%G_0x7afc74_type* @G_0x7afc74 to i32*), align 8
  %528 = zext i32 %527 to i64
  store i64 %528, i64* %RAX.i1208, align 8
  %529 = add i64 %526, 13
  store i64 %529, i64* %3, align 8
  %530 = load i32, i32* %445, align 4
  %531 = add i32 %530, -4
  %532 = zext i32 %531 to i64
  store i64 %532, i64* %RCX.i1233, align 8
  %533 = lshr i32 %531, 31
  %534 = add i32 %531, %527
  %535 = zext i32 %534 to i64
  store i64 %535, i64* %RAX.i1208, align 8
  %536 = icmp ult i32 %534, %527
  %537 = icmp ult i32 %534, %531
  %538 = or i1 %536, %537
  %539 = zext i1 %538 to i8
  store i8 %539, i8* %38, align 1
  %540 = and i32 %534, 255
  %541 = tail call i32 @llvm.ctpop.i32(i32 %540)
  %542 = trunc i32 %541 to i8
  %543 = and i8 %542, 1
  %544 = xor i8 %543, 1
  store i8 %544, i8* %45, align 1
  %545 = xor i32 %531, %527
  %546 = xor i32 %545, %534
  %547 = lshr i32 %546, 4
  %548 = trunc i32 %547 to i8
  %549 = and i8 %548, 1
  store i8 %549, i8* %50, align 1
  %550 = icmp eq i32 %534, 0
  %551 = zext i1 %550 to i8
  store i8 %551, i8* %53, align 1
  %552 = lshr i32 %534, 31
  %553 = trunc i32 %552 to i8
  store i8 %553, i8* %56, align 1
  %554 = lshr i32 %527, 31
  %555 = xor i32 %552, %554
  %556 = xor i32 %552, %533
  %557 = add nuw nsw i32 %555, %556
  %558 = icmp eq i32 %557, 2
  %559 = zext i1 %558 to i8
  store i8 %559, i8* %62, align 1
  %560 = add i64 %425, -48
  %561 = add i64 %526, 22
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %560 to i64*
  %563 = load i64, i64* %562, align 8
  store i64 %563, i64* %RDX.i1225, align 8
  %564 = add i64 %425, -80
  %565 = add i64 %526, 26
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %564 to i32*
  %567 = load i32, i32* %566, align 4
  %568 = sext i32 %567 to i64
  store i64 %568, i64* %RSI.i1239, align 8
  %569 = shl nsw i64 %568, 2
  %570 = add nsw i64 %569, 200
  %571 = add i64 %570, %563
  %572 = add i64 %526, 33
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %571 to i32*
  %574 = load i32, i32* %573, align 4
  %575 = add i32 %574, %534
  %576 = zext i32 %575 to i64
  store i64 %576, i64* %RAX.i1208, align 8
  %577 = icmp ult i32 %575, %534
  %578 = icmp ult i32 %575, %574
  %579 = or i1 %577, %578
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %38, align 1
  %581 = and i32 %575, 255
  %582 = tail call i32 @llvm.ctpop.i32(i32 %581)
  %583 = trunc i32 %582 to i8
  %584 = and i8 %583, 1
  %585 = xor i8 %584, 1
  store i8 %585, i8* %45, align 1
  %586 = xor i32 %574, %534
  %587 = xor i32 %586, %575
  %588 = lshr i32 %587, 4
  %589 = trunc i32 %588 to i8
  %590 = and i8 %589, 1
  store i8 %590, i8* %50, align 1
  %591 = icmp eq i32 %575, 0
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %53, align 1
  %593 = lshr i32 %575, 31
  %594 = trunc i32 %593 to i8
  store i8 %594, i8* %56, align 1
  %595 = lshr i32 %574, 31
  %596 = xor i32 %593, %552
  %597 = xor i32 %593, %595
  %598 = add nuw nsw i32 %596, %597
  %599 = icmp eq i32 %598, 2
  %600 = zext i1 %599 to i8
  store i8 %600, i8* %62, align 1
  %601 = add i64 %563, 200
  %602 = add i64 %601, %569
  %603 = add i64 %526, 40
  store i64 %603, i64* %3, align 8
  %604 = inttoptr i64 %602 to i32*
  store i32 %575, i32* %604, align 4
  %605 = load i64, i64* %3, align 8
  %606 = add i64 %605, 41
  store i64 %606, i64* %3, align 8
  br label %block_.L_462e7b

block_.L_462e57:                                  ; preds = %block_462e09, %block_462e16
  %607 = phi i64 [ %525, %block_462e16 ], [ %494, %block_462e09 ]
  %608 = add i64 %607, 7
  store i64 %608, i64* %3, align 8
  %609 = load i32, i32* %445, align 4
  %610 = sext i32 %609 to i64
  store i64 %610, i64* %RAX.i1208, align 8
  %611 = shl nsw i64 %610, 2
  %612 = add nsw i64 %611, 8060000
  %613 = add i64 %607, 14
  store i64 %613, i64* %3, align 8
  %614 = inttoptr i64 %612 to i32*
  %615 = load i32, i32* %614, align 4
  %616 = zext i32 %615 to i64
  store i64 %616, i64* %RCX.i1233, align 8
  %617 = add i64 %425, -48
  %618 = add i64 %607, 18
  store i64 %618, i64* %3, align 8
  %619 = inttoptr i64 %617 to i64*
  %620 = load i64, i64* %619, align 8
  store i64 %620, i64* %RAX.i1208, align 8
  %621 = add i64 %425, -80
  %622 = add i64 %607, 22
  store i64 %622, i64* %3, align 8
  %623 = inttoptr i64 %621 to i32*
  %624 = load i32, i32* %623, align 4
  %625 = sext i32 %624 to i64
  store i64 %625, i64* %RDX.i1225, align 8
  %626 = shl nsw i64 %625, 2
  %627 = add nsw i64 %626, 200
  %628 = add i64 %627, %620
  %629 = add i64 %607, 29
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %628 to i32*
  %631 = load i32, i32* %630, align 4
  %632 = add i32 %631, %615
  %633 = zext i32 %632 to i64
  store i64 %633, i64* %RCX.i1233, align 8
  %634 = icmp ult i32 %632, %615
  %635 = icmp ult i32 %632, %631
  %636 = or i1 %634, %635
  %637 = zext i1 %636 to i8
  store i8 %637, i8* %38, align 1
  %638 = and i32 %632, 255
  %639 = tail call i32 @llvm.ctpop.i32(i32 %638)
  %640 = trunc i32 %639 to i8
  %641 = and i8 %640, 1
  %642 = xor i8 %641, 1
  store i8 %642, i8* %45, align 1
  %643 = xor i32 %631, %615
  %644 = xor i32 %643, %632
  %645 = lshr i32 %644, 4
  %646 = trunc i32 %645 to i8
  %647 = and i8 %646, 1
  store i8 %647, i8* %50, align 1
  %648 = icmp eq i32 %632, 0
  %649 = zext i1 %648 to i8
  store i8 %649, i8* %53, align 1
  %650 = lshr i32 %632, 31
  %651 = trunc i32 %650 to i8
  store i8 %651, i8* %56, align 1
  %652 = lshr i32 %615, 31
  %653 = lshr i32 %631, 31
  %654 = xor i32 %650, %652
  %655 = xor i32 %650, %653
  %656 = add nuw nsw i32 %654, %655
  %657 = icmp eq i32 %656, 2
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %62, align 1
  %659 = add i64 %620, 200
  %660 = add i64 %659, %626
  %661 = add i64 %607, 36
  store i64 %661, i64* %3, align 8
  %662 = inttoptr i64 %660 to i32*
  store i32 %632, i32* %662, align 4
  %.pre65 = load i64, i64* %3, align 8
  br label %block_.L_462e7b

block_.L_462e7b:                                  ; preds = %block_.L_462e57, %block_.L_462e2a
  %663 = phi i64 [ %.pre65, %block_.L_462e57 ], [ %606, %block_.L_462e2a ]
  %664 = add i64 %663, 93
  br label %block_.L_462ed8

block_.L_462e80:                                  ; preds = %block_462dd8
  %665 = add i32 %446, -4
  %666 = icmp ult i32 %446, 4
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %38, align 1
  %668 = and i32 %665, 255
  %669 = tail call i32 @llvm.ctpop.i32(i32 %668)
  %670 = trunc i32 %669 to i8
  %671 = and i8 %670, 1
  %672 = xor i8 %671, 1
  store i8 %672, i8* %45, align 1
  %673 = xor i32 %665, %446
  %674 = lshr i32 %673, 4
  %675 = trunc i32 %674 to i8
  %676 = and i8 %675, 1
  store i8 %676, i8* %50, align 1
  %677 = icmp eq i32 %665, 0
  %678 = zext i1 %677 to i8
  store i8 %678, i8* %53, align 1
  %679 = lshr i32 %665, 31
  %680 = trunc i32 %679 to i8
  store i8 %680, i8* %56, align 1
  %681 = lshr i32 %446, 31
  %682 = xor i32 %679, %681
  %683 = add nuw nsw i32 %682, %681
  %684 = icmp eq i32 %683, 2
  %685 = zext i1 %684 to i8
  store i8 %685, i8* %62, align 1
  %686 = icmp ne i8 %680, 0
  %687 = xor i1 %686, %684
  %688 = or i1 %677, %687
  %.v142 = select i1 %688, i64 47, i64 13
  %689 = add i64 %442, %.v142
  store i64 %689, i64* %3, align 8
  br i1 %688, label %block_.L_462eaf, label %block_462e8d

block_462e8d:                                     ; preds = %block_.L_462e80
  %690 = load i32, i32* bitcast (%G_0x7afc90_type* @G_0x7afc90 to i32*), align 8
  %691 = zext i32 %690 to i64
  store i64 %691, i64* %RAX.i1208, align 8
  %692 = add i64 %425, -48
  %693 = add i64 %689, 11
  store i64 %693, i64* %3, align 8
  %694 = inttoptr i64 %692 to i64*
  %695 = load i64, i64* %694, align 8
  store i64 %695, i64* %RCX.i1233, align 8
  %696 = add i64 %425, -80
  %697 = add i64 %689, 15
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %696 to i32*
  %699 = load i32, i32* %698, align 4
  %700 = sext i32 %699 to i64
  store i64 %700, i64* %RDX.i1225, align 8
  %701 = shl nsw i64 %700, 2
  %702 = add nsw i64 %701, 200
  %703 = add i64 %702, %695
  %704 = add i64 %689, 22
  store i64 %704, i64* %3, align 8
  %705 = inttoptr i64 %703 to i32*
  %706 = load i32, i32* %705, align 4
  %707 = add i32 %706, %690
  %708 = zext i32 %707 to i64
  store i64 %708, i64* %RAX.i1208, align 8
  %709 = icmp ult i32 %707, %690
  %710 = icmp ult i32 %707, %706
  %711 = or i1 %709, %710
  %712 = zext i1 %711 to i8
  store i8 %712, i8* %38, align 1
  %713 = and i32 %707, 255
  %714 = tail call i32 @llvm.ctpop.i32(i32 %713)
  %715 = trunc i32 %714 to i8
  %716 = and i8 %715, 1
  %717 = xor i8 %716, 1
  store i8 %717, i8* %45, align 1
  %718 = xor i32 %706, %690
  %719 = xor i32 %718, %707
  %720 = lshr i32 %719, 4
  %721 = trunc i32 %720 to i8
  %722 = and i8 %721, 1
  store i8 %722, i8* %50, align 1
  %723 = icmp eq i32 %707, 0
  %724 = zext i1 %723 to i8
  store i8 %724, i8* %53, align 1
  %725 = lshr i32 %707, 31
  %726 = trunc i32 %725 to i8
  store i8 %726, i8* %56, align 1
  %727 = lshr i32 %690, 31
  %728 = lshr i32 %706, 31
  %729 = xor i32 %725, %727
  %730 = xor i32 %725, %728
  %731 = add nuw nsw i32 %729, %730
  %732 = icmp eq i32 %731, 2
  %733 = zext i1 %732 to i8
  store i8 %733, i8* %62, align 1
  %734 = add i64 %695, 200
  %735 = add i64 %734, %701
  %736 = add i64 %689, 29
  store i64 %736, i64* %3, align 8
  %737 = inttoptr i64 %735 to i32*
  store i32 %707, i32* %737, align 4
  %738 = load i64, i64* %3, align 8
  %739 = add i64 %738, 41
  store i64 %739, i64* %3, align 8
  br label %block_.L_462ed3

block_.L_462eaf:                                  ; preds = %block_.L_462e80
  %740 = add i64 %689, 7
  store i64 %740, i64* %3, align 8
  %741 = load i32, i32* %445, align 4
  %742 = sext i32 %741 to i64
  store i64 %742, i64* %RAX.i1208, align 8
  %743 = shl nsw i64 %742, 2
  %744 = add nsw i64 %743, 8060032
  %745 = add i64 %689, 14
  store i64 %745, i64* %3, align 8
  %746 = inttoptr i64 %744 to i32*
  %747 = load i32, i32* %746, align 4
  %748 = zext i32 %747 to i64
  store i64 %748, i64* %RCX.i1233, align 8
  %749 = add i64 %425, -48
  %750 = add i64 %689, 18
  store i64 %750, i64* %3, align 8
  %751 = inttoptr i64 %749 to i64*
  %752 = load i64, i64* %751, align 8
  store i64 %752, i64* %RAX.i1208, align 8
  %753 = add i64 %425, -80
  %754 = add i64 %689, 22
  store i64 %754, i64* %3, align 8
  %755 = inttoptr i64 %753 to i32*
  %756 = load i32, i32* %755, align 4
  %757 = sext i32 %756 to i64
  store i64 %757, i64* %RDX.i1225, align 8
  %758 = shl nsw i64 %757, 2
  %759 = add nsw i64 %758, 200
  %760 = add i64 %759, %752
  %761 = add i64 %689, 29
  store i64 %761, i64* %3, align 8
  %762 = inttoptr i64 %760 to i32*
  %763 = load i32, i32* %762, align 4
  %764 = add i32 %763, %747
  %765 = zext i32 %764 to i64
  store i64 %765, i64* %RCX.i1233, align 8
  %766 = icmp ult i32 %764, %747
  %767 = icmp ult i32 %764, %763
  %768 = or i1 %766, %767
  %769 = zext i1 %768 to i8
  store i8 %769, i8* %38, align 1
  %770 = and i32 %764, 255
  %771 = tail call i32 @llvm.ctpop.i32(i32 %770)
  %772 = trunc i32 %771 to i8
  %773 = and i8 %772, 1
  %774 = xor i8 %773, 1
  store i8 %774, i8* %45, align 1
  %775 = xor i32 %763, %747
  %776 = xor i32 %775, %764
  %777 = lshr i32 %776, 4
  %778 = trunc i32 %777 to i8
  %779 = and i8 %778, 1
  store i8 %779, i8* %50, align 1
  %780 = icmp eq i32 %764, 0
  %781 = zext i1 %780 to i8
  store i8 %781, i8* %53, align 1
  %782 = lshr i32 %764, 31
  %783 = trunc i32 %782 to i8
  store i8 %783, i8* %56, align 1
  %784 = lshr i32 %747, 31
  %785 = lshr i32 %763, 31
  %786 = xor i32 %782, %784
  %787 = xor i32 %782, %785
  %788 = add nuw nsw i32 %786, %787
  %789 = icmp eq i32 %788, 2
  %790 = zext i1 %789 to i8
  store i8 %790, i8* %62, align 1
  %791 = add i64 %752, 200
  %792 = add i64 %791, %758
  %793 = add i64 %689, 36
  store i64 %793, i64* %3, align 8
  %794 = inttoptr i64 %792 to i32*
  store i32 %764, i32* %794, align 4
  %.pre66 = load i64, i64* %3, align 8
  br label %block_.L_462ed3

block_.L_462ed3:                                  ; preds = %block_.L_462eaf, %block_462e8d
  %795 = phi i64 [ %.pre66, %block_.L_462eaf ], [ %739, %block_462e8d ]
  %796 = add i64 %795, 5
  store i64 %796, i64* %3, align 8
  br label %block_.L_462ed8

block_.L_462ed8:                                  ; preds = %block_.L_462ed3, %block_.L_462e7b
  %storemerge = phi i64 [ %664, %block_.L_462e7b ], [ %796, %block_.L_462ed3 ]
  %797 = load i64, i64* %RBP.i, align 8
  %798 = add i64 %797, -132
  %799 = add i64 %storemerge, 7
  store i64 %799, i64* %3, align 8
  %800 = inttoptr i64 %798 to i32*
  %801 = load i32, i32* %800, align 4
  %802 = add i32 %801, -4
  %803 = icmp ult i32 %801, 4
  %804 = zext i1 %803 to i8
  store i8 %804, i8* %38, align 1
  %805 = and i32 %802, 255
  %806 = tail call i32 @llvm.ctpop.i32(i32 %805)
  %807 = trunc i32 %806 to i8
  %808 = and i8 %807, 1
  %809 = xor i8 %808, 1
  store i8 %809, i8* %45, align 1
  %810 = xor i32 %802, %801
  %811 = lshr i32 %810, 4
  %812 = trunc i32 %811 to i8
  %813 = and i8 %812, 1
  store i8 %813, i8* %50, align 1
  %814 = icmp eq i32 %802, 0
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %53, align 1
  %816 = lshr i32 %802, 31
  %817 = trunc i32 %816 to i8
  store i8 %817, i8* %56, align 1
  %818 = lshr i32 %801, 31
  %819 = xor i32 %816, %818
  %820 = add nuw nsw i32 %819, %818
  %821 = icmp eq i32 %820, 2
  %822 = zext i1 %821 to i8
  store i8 %822, i8* %62, align 1
  %823 = icmp ne i8 %817, 0
  %824 = xor i1 %823, %821
  %.demorgan94 = or i1 %814, %824
  %.v133 = select i1 %.demorgan94, i64 13, i64 18
  %825 = add i64 %storemerge, %.v133
  store i64 %825, i64* %3, align 8
  br i1 %.demorgan94, label %block_462ee5, label %block_.L_462eea

block_462ee5:                                     ; preds = %block_.L_462ed8
  %826 = add i64 %825, 45
  store i64 %826, i64* %3, align 8
  br label %block_.L_462f12

block_.L_462eea:                                  ; preds = %block_.L_462ed8
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i1218, align 8
  store i64 4227, i64* %RSI.i1239, align 8
  store i64 ptrtoint (%G__0x57fdbf_type* @G__0x57fdbf to i64), i64* %RDX.i1225, align 8
  store i64 4294967295, i64* %RAX.i1208, align 8
  store i64 4294967295, i64* %RCX.i1233, align 8
  store i64 4294967295, i64* %R8.i, align 8
  %827 = add i64 %825, -69210
  %828 = add i64 %825, 40
  %829 = load i64, i64* %6, align 8
  %830 = add i64 %829, -8
  %831 = inttoptr i64 %830 to i64*
  store i64 %828, i64* %831, align 8
  store i64 %830, i64* %6, align 8
  store i64 %827, i64* %3, align 8
  %call2_462f0d = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %827, %struct.Memory* %call2_462cc6)
  %.pre67 = load i64, i64* %RBP.i, align 8
  %.pre68 = load i64, i64* %3, align 8
  br label %block_.L_462f12

block_.L_462f12:                                  ; preds = %block_.L_462eea, %block_462ee5
  %832 = phi i64 [ %.pre68, %block_.L_462eea ], [ %826, %block_462ee5 ]
  %833 = phi i64 [ %.pre67, %block_.L_462eea ], [ %797, %block_462ee5 ]
  %834 = add i64 %833, -132
  %835 = add i64 %832, 7
  store i64 %835, i64* %3, align 8
  %836 = inttoptr i64 %834 to i32*
  %837 = load i32, i32* %836, align 4
  %838 = sext i32 %837 to i64
  store i64 %838, i64* %RAX.i1208, align 8
  %839 = shl nsw i64 %838, 2
  %840 = add nsw i64 %839, 8060064
  %841 = add i64 %832, 14
  store i64 %841, i64* %3, align 8
  %842 = inttoptr i64 %840 to i32*
  %843 = load i32, i32* %842, align 4
  %844 = zext i32 %843 to i64
  store i64 %844, i64* %RCX.i1233, align 8
  %845 = add i64 %833, -48
  %846 = add i64 %832, 18
  store i64 %846, i64* %3, align 8
  %847 = inttoptr i64 %845 to i64*
  %848 = load i64, i64* %847, align 8
  store i64 %848, i64* %RAX.i1208, align 8
  %849 = add i64 %833, -80
  %850 = add i64 %832, 22
  store i64 %850, i64* %3, align 8
  %851 = inttoptr i64 %849 to i32*
  %852 = load i32, i32* %851, align 4
  %853 = sext i32 %852 to i64
  store i64 %853, i64* %RDX.i1225, align 8
  %854 = shl nsw i64 %853, 2
  %855 = add nsw i64 %854, 200
  %856 = add i64 %855, %848
  %857 = add i64 %832, 29
  store i64 %857, i64* %3, align 8
  %858 = inttoptr i64 %856 to i32*
  %859 = load i32, i32* %858, align 4
  %860 = add i32 %859, %843
  %861 = zext i32 %860 to i64
  store i64 %861, i64* %RCX.i1233, align 8
  %862 = icmp ult i32 %860, %843
  %863 = icmp ult i32 %860, %859
  %864 = or i1 %862, %863
  %865 = zext i1 %864 to i8
  store i8 %865, i8* %38, align 1
  %866 = and i32 %860, 255
  %867 = tail call i32 @llvm.ctpop.i32(i32 %866)
  %868 = trunc i32 %867 to i8
  %869 = and i8 %868, 1
  %870 = xor i8 %869, 1
  store i8 %870, i8* %45, align 1
  %871 = xor i32 %859, %843
  %872 = xor i32 %871, %860
  %873 = lshr i32 %872, 4
  %874 = trunc i32 %873 to i8
  %875 = and i8 %874, 1
  store i8 %875, i8* %50, align 1
  %876 = icmp eq i32 %860, 0
  %877 = zext i1 %876 to i8
  store i8 %877, i8* %53, align 1
  %878 = lshr i32 %860, 31
  %879 = trunc i32 %878 to i8
  store i8 %879, i8* %56, align 1
  %880 = lshr i32 %843, 31
  %881 = lshr i32 %859, 31
  %882 = xor i32 %878, %880
  %883 = xor i32 %878, %881
  %884 = add nuw nsw i32 %882, %883
  %885 = icmp eq i32 %884, 2
  %886 = zext i1 %885 to i8
  store i8 %886, i8* %62, align 1
  %887 = add i64 %848, 200
  %888 = add i64 %887, %854
  %889 = add i64 %832, 36
  store i64 %889, i64* %3, align 8
  %890 = inttoptr i64 %888 to i32*
  store i32 %860, i32* %890, align 4
  %891 = load i64, i64* %RBP.i, align 8
  %892 = add i64 %891, -104
  %893 = load i64, i64* %3, align 8
  %894 = add i64 %893, 4
  store i64 %894, i64* %3, align 8
  %895 = inttoptr i64 %892 to i32*
  %896 = load i32, i32* %895, align 4
  store i8 0, i8* %38, align 1
  %897 = and i32 %896, 255
  %898 = tail call i32 @llvm.ctpop.i32(i32 %897)
  %899 = trunc i32 %898 to i8
  %900 = and i8 %899, 1
  %901 = xor i8 %900, 1
  store i8 %901, i8* %45, align 1
  store i8 0, i8* %50, align 1
  %902 = icmp eq i32 %896, 0
  %903 = zext i1 %902 to i8
  store i8 %903, i8* %53, align 1
  %904 = lshr i32 %896, 31
  %905 = trunc i32 %904 to i8
  store i8 %905, i8* %56, align 1
  store i8 0, i8* %62, align 1
  %.v134 = select i1 %902, i64 20, i64 10
  %906 = add i64 %893, %.v134
  store i64 %906, i64* %3, align 8
  br i1 %902, label %block_.L_462f4a, label %block_462f40

block_462f40:                                     ; preds = %block_.L_462f12
  %907 = add i64 %891, -120
  %908 = add i64 %906, 4
  store i64 %908, i64* %3, align 8
  %909 = inttoptr i64 %907 to i32*
  %910 = load i32, i32* %909, align 4
  store i8 0, i8* %38, align 1
  %911 = and i32 %910, 255
  %912 = tail call i32 @llvm.ctpop.i32(i32 %911)
  %913 = trunc i32 %912 to i8
  %914 = and i8 %913, 1
  %915 = xor i8 %914, 1
  store i8 %915, i8* %45, align 1
  store i8 0, i8* %50, align 1
  %916 = icmp eq i32 %910, 0
  %917 = zext i1 %916 to i8
  store i8 %917, i8* %53, align 1
  %918 = lshr i32 %910, 31
  %919 = trunc i32 %918 to i8
  store i8 %919, i8* %56, align 1
  store i8 0, i8* %62, align 1
  %920 = icmp ne i8 %919, 0
  %921 = or i1 %916, %920
  %.v135 = select i1 %921, i64 39, i64 10
  %922 = add i64 %906, %.v135
  store i64 %922, i64* %3, align 8
  br i1 %921, label %block_.L_462f67, label %block_.L_462f4a

block_.L_462f4a:                                  ; preds = %block_462f40, %block_.L_462f12
  %923 = phi i64 [ %922, %block_462f40 ], [ %906, %block_.L_462f12 ]
  %924 = load i32, i32* bitcast (%G_0x7afcb4_type* @G_0x7afcb4 to i32*), align 8
  %925 = zext i32 %924 to i64
  store i64 %925, i64* %RAX.i1208, align 8
  %926 = add i64 %891, -48
  %927 = add i64 %923, 11
  store i64 %927, i64* %3, align 8
  %928 = inttoptr i64 %926 to i64*
  %929 = load i64, i64* %928, align 8
  store i64 %929, i64* %RCX.i1233, align 8
  %930 = add i64 %891, -80
  %931 = add i64 %923, 15
  store i64 %931, i64* %3, align 8
  %932 = inttoptr i64 %930 to i32*
  %933 = load i32, i32* %932, align 4
  %934 = sext i32 %933 to i64
  store i64 %934, i64* %RDX.i1225, align 8
  %935 = shl nsw i64 %934, 2
  %936 = add nsw i64 %935, 200
  %937 = add i64 %936, %929
  %938 = add i64 %923, 22
  store i64 %938, i64* %3, align 8
  %939 = inttoptr i64 %937 to i32*
  %940 = load i32, i32* %939, align 4
  %941 = add i32 %940, %924
  %942 = zext i32 %941 to i64
  store i64 %942, i64* %RAX.i1208, align 8
  %943 = icmp ult i32 %941, %924
  %944 = icmp ult i32 %941, %940
  %945 = or i1 %943, %944
  %946 = zext i1 %945 to i8
  store i8 %946, i8* %38, align 1
  %947 = and i32 %941, 255
  %948 = tail call i32 @llvm.ctpop.i32(i32 %947)
  %949 = trunc i32 %948 to i8
  %950 = and i8 %949, 1
  %951 = xor i8 %950, 1
  store i8 %951, i8* %45, align 1
  %952 = xor i32 %940, %924
  %953 = xor i32 %952, %941
  %954 = lshr i32 %953, 4
  %955 = trunc i32 %954 to i8
  %956 = and i8 %955, 1
  store i8 %956, i8* %50, align 1
  %957 = icmp eq i32 %941, 0
  %958 = zext i1 %957 to i8
  store i8 %958, i8* %53, align 1
  %959 = lshr i32 %941, 31
  %960 = trunc i32 %959 to i8
  store i8 %960, i8* %56, align 1
  %961 = lshr i32 %924, 31
  %962 = lshr i32 %940, 31
  %963 = xor i32 %959, %961
  %964 = xor i32 %959, %962
  %965 = add nuw nsw i32 %963, %964
  %966 = icmp eq i32 %965, 2
  %967 = zext i1 %966 to i8
  store i8 %967, i8* %62, align 1
  %968 = add i64 %929, 200
  %969 = add i64 %968, %935
  %970 = add i64 %923, 29
  store i64 %970, i64* %3, align 8
  %971 = inttoptr i64 %969 to i32*
  store i32 %941, i32* %971, align 4
  %.pre69 = load i64, i64* %RBP.i, align 8
  %.pre70 = load i64, i64* %3, align 8
  br label %block_.L_462f67

block_.L_462f67:                                  ; preds = %block_.L_462f4a, %block_462f40
  %972 = phi i64 [ %.pre70, %block_.L_462f4a ], [ %922, %block_462f40 ]
  %973 = phi i64 [ %.pre69, %block_.L_462f4a ], [ %891, %block_462f40 ]
  %974 = add i64 %973, -120
  %975 = add i64 %972, 4
  store i64 %975, i64* %3, align 8
  %976 = inttoptr i64 %974 to i32*
  %977 = load i32, i32* %976, align 4
  %978 = add i32 %977, -5
  %979 = icmp ult i32 %977, 5
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %38, align 1
  %981 = and i32 %978, 255
  %982 = tail call i32 @llvm.ctpop.i32(i32 %981)
  %983 = trunc i32 %982 to i8
  %984 = and i8 %983, 1
  %985 = xor i8 %984, 1
  store i8 %985, i8* %45, align 1
  %986 = xor i32 %978, %977
  %987 = lshr i32 %986, 4
  %988 = trunc i32 %987 to i8
  %989 = and i8 %988, 1
  store i8 %989, i8* %50, align 1
  %990 = icmp eq i32 %978, 0
  %991 = zext i1 %990 to i8
  store i8 %991, i8* %53, align 1
  %992 = lshr i32 %978, 31
  %993 = trunc i32 %992 to i8
  store i8 %993, i8* %56, align 1
  %994 = lshr i32 %977, 31
  %995 = xor i32 %992, %994
  %996 = add nuw nsw i32 %995, %994
  %997 = icmp eq i32 %996, 2
  %998 = zext i1 %997 to i8
  store i8 %998, i8* %62, align 1
  %999 = icmp ne i8 %993, 0
  %1000 = xor i1 %999, %997
  %.demorgan95 = or i1 %990, %1000
  %.v136 = select i1 %.demorgan95, i64 10, i64 48
  %1001 = add i64 %972, %.v136
  store i64 %1001, i64* %3, align 8
  br i1 %.demorgan95, label %block_462f71, label %block_.L_462f97

block_462f71:                                     ; preds = %block_.L_462f67
  %1002 = add i64 %1001, 4
  store i64 %1002, i64* %3, align 8
  %1003 = load i32, i32* %976, align 4
  %1004 = sext i32 %1003 to i64
  store i64 %1004, i64* %RAX.i1208, align 8
  %1005 = shl nsw i64 %1004, 2
  %1006 = add nsw i64 %1005, 8060096
  %1007 = add i64 %1001, 11
  store i64 %1007, i64* %3, align 8
  %1008 = inttoptr i64 %1006 to i32*
  %1009 = load i32, i32* %1008, align 4
  %1010 = zext i32 %1009 to i64
  store i64 %1010, i64* %RCX.i1233, align 8
  %1011 = add i64 %973, -48
  %1012 = add i64 %1001, 15
  store i64 %1012, i64* %3, align 8
  %1013 = inttoptr i64 %1011 to i64*
  %1014 = load i64, i64* %1013, align 8
  store i64 %1014, i64* %RAX.i1208, align 8
  %1015 = add i64 %973, -80
  %1016 = add i64 %1001, 19
  store i64 %1016, i64* %3, align 8
  %1017 = inttoptr i64 %1015 to i32*
  %1018 = load i32, i32* %1017, align 4
  %1019 = sext i32 %1018 to i64
  store i64 %1019, i64* %RDX.i1225, align 8
  %1020 = shl nsw i64 %1019, 2
  %1021 = add nsw i64 %1020, 200
  %1022 = add i64 %1021, %1014
  %1023 = add i64 %1001, 26
  store i64 %1023, i64* %3, align 8
  %1024 = inttoptr i64 %1022 to i32*
  %1025 = load i32, i32* %1024, align 4
  %1026 = add i32 %1025, %1009
  %1027 = zext i32 %1026 to i64
  store i64 %1027, i64* %RCX.i1233, align 8
  %1028 = icmp ult i32 %1026, %1009
  %1029 = icmp ult i32 %1026, %1025
  %1030 = or i1 %1028, %1029
  %1031 = zext i1 %1030 to i8
  store i8 %1031, i8* %38, align 1
  %1032 = and i32 %1026, 255
  %1033 = tail call i32 @llvm.ctpop.i32(i32 %1032)
  %1034 = trunc i32 %1033 to i8
  %1035 = and i8 %1034, 1
  %1036 = xor i8 %1035, 1
  store i8 %1036, i8* %45, align 1
  %1037 = xor i32 %1025, %1009
  %1038 = xor i32 %1037, %1026
  %1039 = lshr i32 %1038, 4
  %1040 = trunc i32 %1039 to i8
  %1041 = and i8 %1040, 1
  store i8 %1041, i8* %50, align 1
  %1042 = icmp eq i32 %1026, 0
  %1043 = zext i1 %1042 to i8
  store i8 %1043, i8* %53, align 1
  %1044 = lshr i32 %1026, 31
  %1045 = trunc i32 %1044 to i8
  store i8 %1045, i8* %56, align 1
  %1046 = lshr i32 %1009, 31
  %1047 = lshr i32 %1025, 31
  %1048 = xor i32 %1044, %1046
  %1049 = xor i32 %1044, %1047
  %1050 = add nuw nsw i32 %1048, %1049
  %1051 = icmp eq i32 %1050, 2
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %62, align 1
  %1053 = add i64 %1014, 200
  %1054 = add i64 %1053, %1020
  %1055 = add i64 %1001, 33
  store i64 %1055, i64* %3, align 8
  %1056 = inttoptr i64 %1054 to i32*
  store i32 %1026, i32* %1056, align 4
  %1057 = load i64, i64* %3, align 8
  %1058 = add i64 %1057, 37
  store i64 %1058, i64* %3, align 8
  br label %block_.L_462fb7

block_.L_462f97:                                  ; preds = %block_.L_462f67
  %1059 = load i32, i32* bitcast (%G_0x7afcd4_type* @G_0x7afcd4 to i32*), align 8
  %1060 = zext i32 %1059 to i64
  store i64 %1060, i64* %RAX.i1208, align 8
  %1061 = add i64 %1001, 10
  store i64 %1061, i64* %3, align 8
  %1062 = load i32, i32* %976, align 4
  %1063 = add i32 %1062, %1059
  %1064 = zext i32 %1063 to i64
  store i64 %1064, i64* %RAX.i1208, align 8
  %1065 = icmp ult i32 %1063, %1059
  %1066 = icmp ult i32 %1063, %1062
  %1067 = or i1 %1065, %1066
  %1068 = zext i1 %1067 to i8
  store i8 %1068, i8* %38, align 1
  %1069 = and i32 %1063, 255
  %1070 = tail call i32 @llvm.ctpop.i32(i32 %1069)
  %1071 = trunc i32 %1070 to i8
  %1072 = and i8 %1071, 1
  %1073 = xor i8 %1072, 1
  store i8 %1073, i8* %45, align 1
  %1074 = xor i32 %1062, %1059
  %1075 = xor i32 %1074, %1063
  %1076 = lshr i32 %1075, 4
  %1077 = trunc i32 %1076 to i8
  %1078 = and i8 %1077, 1
  store i8 %1078, i8* %50, align 1
  %1079 = icmp eq i32 %1063, 0
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %53, align 1
  %1081 = lshr i32 %1063, 31
  %1082 = trunc i32 %1081 to i8
  store i8 %1082, i8* %56, align 1
  %1083 = lshr i32 %1059, 31
  %1084 = lshr i32 %1062, 31
  %1085 = xor i32 %1081, %1083
  %1086 = xor i32 %1081, %1084
  %1087 = add nuw nsw i32 %1085, %1086
  %1088 = icmp eq i32 %1087, 2
  %1089 = zext i1 %1088 to i8
  store i8 %1089, i8* %62, align 1
  %1090 = add i64 %973, -48
  %1091 = add i64 %1001, 14
  store i64 %1091, i64* %3, align 8
  %1092 = inttoptr i64 %1090 to i64*
  %1093 = load i64, i64* %1092, align 8
  store i64 %1093, i64* %RCX.i1233, align 8
  %1094 = add i64 %973, -80
  %1095 = add i64 %1001, 18
  store i64 %1095, i64* %3, align 8
  %1096 = inttoptr i64 %1094 to i32*
  %1097 = load i32, i32* %1096, align 4
  %1098 = sext i32 %1097 to i64
  store i64 %1098, i64* %RDX.i1225, align 8
  %1099 = shl nsw i64 %1098, 2
  %1100 = add nsw i64 %1099, 200
  %1101 = add i64 %1100, %1093
  %1102 = add i64 %1001, 25
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1101 to i32*
  %1104 = load i32, i32* %1103, align 4
  %1105 = add i32 %1104, %1063
  %1106 = zext i32 %1105 to i64
  store i64 %1106, i64* %RAX.i1208, align 8
  %1107 = icmp ult i32 %1105, %1063
  %1108 = icmp ult i32 %1105, %1104
  %1109 = or i1 %1107, %1108
  %1110 = zext i1 %1109 to i8
  store i8 %1110, i8* %38, align 1
  %1111 = and i32 %1105, 255
  %1112 = tail call i32 @llvm.ctpop.i32(i32 %1111)
  %1113 = trunc i32 %1112 to i8
  %1114 = and i8 %1113, 1
  %1115 = xor i8 %1114, 1
  store i8 %1115, i8* %45, align 1
  %1116 = xor i32 %1104, %1063
  %1117 = xor i32 %1116, %1105
  %1118 = lshr i32 %1117, 4
  %1119 = trunc i32 %1118 to i8
  %1120 = and i8 %1119, 1
  store i8 %1120, i8* %50, align 1
  %1121 = icmp eq i32 %1105, 0
  %1122 = zext i1 %1121 to i8
  store i8 %1122, i8* %53, align 1
  %1123 = lshr i32 %1105, 31
  %1124 = trunc i32 %1123 to i8
  store i8 %1124, i8* %56, align 1
  %1125 = lshr i32 %1104, 31
  %1126 = xor i32 %1123, %1081
  %1127 = xor i32 %1123, %1125
  %1128 = add nuw nsw i32 %1126, %1127
  %1129 = icmp eq i32 %1128, 2
  %1130 = zext i1 %1129 to i8
  store i8 %1130, i8* %62, align 1
  %1131 = add i64 %1093, 200
  %1132 = add i64 %1131, %1099
  %1133 = add i64 %1001, 32
  store i64 %1133, i64* %3, align 8
  %1134 = inttoptr i64 %1132 to i32*
  store i32 %1105, i32* %1134, align 4
  %.pre71 = load i64, i64* %3, align 8
  br label %block_.L_462fb7

block_.L_462fb7:                                  ; preds = %block_.L_462f97, %block_462f71
  %1135 = phi i64 [ %.pre71, %block_.L_462f97 ], [ %1058, %block_462f71 ]
  %1136 = load i64, i64* %RBP.i, align 8
  %1137 = add i64 %1136, -136
  %1138 = add i64 %1135, 6
  store i64 %1138, i64* %3, align 8
  %1139 = inttoptr i64 %1137 to i32*
  %1140 = load i32, i32* %1139, align 4
  %1141 = zext i32 %1140 to i64
  store i64 %1141, i64* %RAX.i1208, align 8
  %1142 = add i64 %1136, -120
  %1143 = add i64 %1135, 9
  store i64 %1143, i64* %3, align 8
  %1144 = inttoptr i64 %1142 to i32*
  %1145 = load i32, i32* %1144, align 4
  %1146 = add i32 %1145, %1140
  %1147 = zext i32 %1146 to i64
  store i64 %1147, i64* %RAX.i1208, align 8
  %1148 = icmp eq i32 %1146, 0
  %1149 = zext i1 %1148 to i8
  %1150 = lshr i32 %1146, 31
  %1151 = add i32 %1146, -1
  store i8 %1149, i8* %38, align 1
  %1152 = and i32 %1151, 255
  %1153 = tail call i32 @llvm.ctpop.i32(i32 %1152)
  %1154 = trunc i32 %1153 to i8
  %1155 = and i8 %1154, 1
  %1156 = xor i8 %1155, 1
  store i8 %1156, i8* %45, align 1
  %1157 = xor i32 %1151, %1146
  %1158 = lshr i32 %1157, 4
  %1159 = trunc i32 %1158 to i8
  %1160 = and i8 %1159, 1
  store i8 %1160, i8* %50, align 1
  %1161 = icmp eq i32 %1151, 0
  %1162 = zext i1 %1161 to i8
  store i8 %1162, i8* %53, align 1
  %1163 = lshr i32 %1151, 31
  %1164 = trunc i32 %1163 to i8
  store i8 %1164, i8* %56, align 1
  %1165 = xor i32 %1163, %1150
  %1166 = add nuw nsw i32 %1165, %1150
  %1167 = icmp eq i32 %1166, 2
  %1168 = zext i1 %1167 to i8
  store i8 %1168, i8* %62, align 1
  %1169 = icmp ne i8 %1164, 0
  %1170 = xor i1 %1169, %1167
  %1171 = or i1 %1161, %1170
  %.v137 = select i1 %1171, i64 103, i64 18
  %1172 = add i64 %1135, %.v137
  store i64 %1172, i64* %3, align 8
  br i1 %1171, label %block_.L_46301e, label %block_462fc9

block_462fc9:                                     ; preds = %block_.L_462fb7
  %1173 = add i64 %1136, -124
  %1174 = add i64 %1172, 4
  store i64 %1174, i64* %3, align 8
  %1175 = inttoptr i64 %1173 to i32*
  %1176 = load i32, i32* %1175, align 4
  %1177 = add i32 %1176, -5
  %1178 = icmp ult i32 %1176, 5
  %1179 = zext i1 %1178 to i8
  store i8 %1179, i8* %38, align 1
  %1180 = and i32 %1177, 255
  %1181 = tail call i32 @llvm.ctpop.i32(i32 %1180)
  %1182 = trunc i32 %1181 to i8
  %1183 = and i8 %1182, 1
  %1184 = xor i8 %1183, 1
  store i8 %1184, i8* %45, align 1
  %1185 = xor i32 %1177, %1176
  %1186 = lshr i32 %1185, 4
  %1187 = trunc i32 %1186 to i8
  %1188 = and i8 %1187, 1
  store i8 %1188, i8* %50, align 1
  %1189 = icmp eq i32 %1177, 0
  %1190 = zext i1 %1189 to i8
  store i8 %1190, i8* %53, align 1
  %1191 = lshr i32 %1177, 31
  %1192 = trunc i32 %1191 to i8
  store i8 %1192, i8* %56, align 1
  %1193 = lshr i32 %1176, 31
  %1194 = xor i32 %1191, %1193
  %1195 = add nuw nsw i32 %1194, %1193
  %1196 = icmp eq i32 %1195, 2
  %1197 = zext i1 %1196 to i8
  store i8 %1197, i8* %62, align 1
  %1198 = icmp ne i8 %1192, 0
  %1199 = xor i1 %1198, %1196
  %.demorgan96 = or i1 %1189, %1199
  %.v138 = select i1 %.demorgan96, i64 10, i64 48
  %1200 = add i64 %1172, %.v138
  store i64 %1200, i64* %3, align 8
  br i1 %.demorgan96, label %block_462fd3, label %block_.L_462ff9

block_462fd3:                                     ; preds = %block_462fc9
  %1201 = add i64 %1200, 4
  store i64 %1201, i64* %3, align 8
  %1202 = load i32, i32* %1175, align 4
  %1203 = sext i32 %1202 to i64
  store i64 %1203, i64* %RAX.i1208, align 8
  %1204 = shl nsw i64 %1203, 2
  %1205 = add nsw i64 %1204, 8060128
  %1206 = add i64 %1200, 11
  store i64 %1206, i64* %3, align 8
  %1207 = inttoptr i64 %1205 to i32*
  %1208 = load i32, i32* %1207, align 4
  %1209 = zext i32 %1208 to i64
  store i64 %1209, i64* %RCX.i1233, align 8
  %1210 = add i64 %1136, -48
  %1211 = add i64 %1200, 15
  store i64 %1211, i64* %3, align 8
  %1212 = inttoptr i64 %1210 to i64*
  %1213 = load i64, i64* %1212, align 8
  store i64 %1213, i64* %RAX.i1208, align 8
  %1214 = add i64 %1136, -80
  %1215 = add i64 %1200, 19
  store i64 %1215, i64* %3, align 8
  %1216 = inttoptr i64 %1214 to i32*
  %1217 = load i32, i32* %1216, align 4
  %1218 = sext i32 %1217 to i64
  store i64 %1218, i64* %RDX.i1225, align 8
  %1219 = shl nsw i64 %1218, 2
  %1220 = add nsw i64 %1219, 200
  %1221 = add i64 %1220, %1213
  %1222 = add i64 %1200, 26
  store i64 %1222, i64* %3, align 8
  %1223 = inttoptr i64 %1221 to i32*
  %1224 = load i32, i32* %1223, align 4
  %1225 = add i32 %1224, %1208
  %1226 = zext i32 %1225 to i64
  store i64 %1226, i64* %RCX.i1233, align 8
  %1227 = icmp ult i32 %1225, %1208
  %1228 = icmp ult i32 %1225, %1224
  %1229 = or i1 %1227, %1228
  %1230 = zext i1 %1229 to i8
  store i8 %1230, i8* %38, align 1
  %1231 = and i32 %1225, 255
  %1232 = tail call i32 @llvm.ctpop.i32(i32 %1231)
  %1233 = trunc i32 %1232 to i8
  %1234 = and i8 %1233, 1
  %1235 = xor i8 %1234, 1
  store i8 %1235, i8* %45, align 1
  %1236 = xor i32 %1224, %1208
  %1237 = xor i32 %1236, %1225
  %1238 = lshr i32 %1237, 4
  %1239 = trunc i32 %1238 to i8
  %1240 = and i8 %1239, 1
  store i8 %1240, i8* %50, align 1
  %1241 = icmp eq i32 %1225, 0
  %1242 = zext i1 %1241 to i8
  store i8 %1242, i8* %53, align 1
  %1243 = lshr i32 %1225, 31
  %1244 = trunc i32 %1243 to i8
  store i8 %1244, i8* %56, align 1
  %1245 = lshr i32 %1208, 31
  %1246 = lshr i32 %1224, 31
  %1247 = xor i32 %1243, %1245
  %1248 = xor i32 %1243, %1246
  %1249 = add nuw nsw i32 %1247, %1248
  %1250 = icmp eq i32 %1249, 2
  %1251 = zext i1 %1250 to i8
  store i8 %1251, i8* %62, align 1
  %1252 = add i64 %1213, 200
  %1253 = add i64 %1252, %1219
  %1254 = add i64 %1200, 33
  store i64 %1254, i64* %3, align 8
  %1255 = inttoptr i64 %1253 to i32*
  store i32 %1225, i32* %1255, align 4
  %1256 = load i64, i64* %3, align 8
  %1257 = add i64 %1256, 37
  store i64 %1257, i64* %3, align 8
  br label %block_.L_463019

block_.L_462ff9:                                  ; preds = %block_462fc9
  %1258 = load i32, i32* bitcast (%G_0x7afcf4_type* @G_0x7afcf4 to i32*), align 8
  %1259 = zext i32 %1258 to i64
  store i64 %1259, i64* %RAX.i1208, align 8
  %1260 = add i64 %1200, 10
  store i64 %1260, i64* %3, align 8
  %1261 = load i32, i32* %1175, align 4
  %1262 = add i32 %1261, %1258
  %1263 = zext i32 %1262 to i64
  store i64 %1263, i64* %RAX.i1208, align 8
  %1264 = icmp ult i32 %1262, %1258
  %1265 = icmp ult i32 %1262, %1261
  %1266 = or i1 %1264, %1265
  %1267 = zext i1 %1266 to i8
  store i8 %1267, i8* %38, align 1
  %1268 = and i32 %1262, 255
  %1269 = tail call i32 @llvm.ctpop.i32(i32 %1268)
  %1270 = trunc i32 %1269 to i8
  %1271 = and i8 %1270, 1
  %1272 = xor i8 %1271, 1
  store i8 %1272, i8* %45, align 1
  %1273 = xor i32 %1261, %1258
  %1274 = xor i32 %1273, %1262
  %1275 = lshr i32 %1274, 4
  %1276 = trunc i32 %1275 to i8
  %1277 = and i8 %1276, 1
  store i8 %1277, i8* %50, align 1
  %1278 = icmp eq i32 %1262, 0
  %1279 = zext i1 %1278 to i8
  store i8 %1279, i8* %53, align 1
  %1280 = lshr i32 %1262, 31
  %1281 = trunc i32 %1280 to i8
  store i8 %1281, i8* %56, align 1
  %1282 = lshr i32 %1258, 31
  %1283 = lshr i32 %1261, 31
  %1284 = xor i32 %1280, %1282
  %1285 = xor i32 %1280, %1283
  %1286 = add nuw nsw i32 %1284, %1285
  %1287 = icmp eq i32 %1286, 2
  %1288 = zext i1 %1287 to i8
  store i8 %1288, i8* %62, align 1
  %1289 = add i64 %1136, -48
  %1290 = add i64 %1200, 14
  store i64 %1290, i64* %3, align 8
  %1291 = inttoptr i64 %1289 to i64*
  %1292 = load i64, i64* %1291, align 8
  store i64 %1292, i64* %RCX.i1233, align 8
  %1293 = add i64 %1136, -80
  %1294 = add i64 %1200, 18
  store i64 %1294, i64* %3, align 8
  %1295 = inttoptr i64 %1293 to i32*
  %1296 = load i32, i32* %1295, align 4
  %1297 = sext i32 %1296 to i64
  store i64 %1297, i64* %RDX.i1225, align 8
  %1298 = shl nsw i64 %1297, 2
  %1299 = add nsw i64 %1298, 200
  %1300 = add i64 %1299, %1292
  %1301 = add i64 %1200, 25
  store i64 %1301, i64* %3, align 8
  %1302 = inttoptr i64 %1300 to i32*
  %1303 = load i32, i32* %1302, align 4
  %1304 = add i32 %1303, %1262
  %1305 = zext i32 %1304 to i64
  store i64 %1305, i64* %RAX.i1208, align 8
  %1306 = icmp ult i32 %1304, %1262
  %1307 = icmp ult i32 %1304, %1303
  %1308 = or i1 %1306, %1307
  %1309 = zext i1 %1308 to i8
  store i8 %1309, i8* %38, align 1
  %1310 = and i32 %1304, 255
  %1311 = tail call i32 @llvm.ctpop.i32(i32 %1310)
  %1312 = trunc i32 %1311 to i8
  %1313 = and i8 %1312, 1
  %1314 = xor i8 %1313, 1
  store i8 %1314, i8* %45, align 1
  %1315 = xor i32 %1303, %1262
  %1316 = xor i32 %1315, %1304
  %1317 = lshr i32 %1316, 4
  %1318 = trunc i32 %1317 to i8
  %1319 = and i8 %1318, 1
  store i8 %1319, i8* %50, align 1
  %1320 = icmp eq i32 %1304, 0
  %1321 = zext i1 %1320 to i8
  store i8 %1321, i8* %53, align 1
  %1322 = lshr i32 %1304, 31
  %1323 = trunc i32 %1322 to i8
  store i8 %1323, i8* %56, align 1
  %1324 = lshr i32 %1303, 31
  %1325 = xor i32 %1322, %1280
  %1326 = xor i32 %1322, %1324
  %1327 = add nuw nsw i32 %1325, %1326
  %1328 = icmp eq i32 %1327, 2
  %1329 = zext i1 %1328 to i8
  store i8 %1329, i8* %62, align 1
  %1330 = add i64 %1292, 200
  %1331 = add i64 %1330, %1298
  %1332 = add i64 %1200, 32
  store i64 %1332, i64* %3, align 8
  %1333 = inttoptr i64 %1331 to i32*
  store i32 %1304, i32* %1333, align 4
  %.pre72 = load i64, i64* %3, align 8
  br label %block_.L_463019

block_.L_463019:                                  ; preds = %block_.L_462ff9, %block_462fd3
  %1334 = phi i64 [ %.pre72, %block_.L_462ff9 ], [ %1257, %block_462fd3 ]
  %1335 = add i64 %1334, 5
  store i64 %1335, i64* %3, align 8
  %.pre73 = load i64, i64* %RBP.i, align 8
  br label %block_.L_46301e

block_.L_46301e:                                  ; preds = %block_.L_463019, %block_.L_462fb7
  %1336 = phi i64 [ %1335, %block_.L_463019 ], [ %1172, %block_.L_462fb7 ]
  %1337 = phi i64 [ %.pre73, %block_.L_463019 ], [ %1136, %block_.L_462fb7 ]
  %1338 = add i64 %1337, -128
  %1339 = add i64 %1336, 4
  store i64 %1339, i64* %3, align 8
  %1340 = inttoptr i64 %1338 to i32*
  %1341 = load i32, i32* %1340, align 4
  %1342 = add i32 %1341, -5
  %1343 = icmp ult i32 %1341, 5
  %1344 = zext i1 %1343 to i8
  store i8 %1344, i8* %38, align 1
  %1345 = and i32 %1342, 255
  %1346 = tail call i32 @llvm.ctpop.i32(i32 %1345)
  %1347 = trunc i32 %1346 to i8
  %1348 = and i8 %1347, 1
  %1349 = xor i8 %1348, 1
  store i8 %1349, i8* %45, align 1
  %1350 = xor i32 %1342, %1341
  %1351 = lshr i32 %1350, 4
  %1352 = trunc i32 %1351 to i8
  %1353 = and i8 %1352, 1
  store i8 %1353, i8* %50, align 1
  %1354 = icmp eq i32 %1342, 0
  %1355 = zext i1 %1354 to i8
  store i8 %1355, i8* %53, align 1
  %1356 = lshr i32 %1342, 31
  %1357 = trunc i32 %1356 to i8
  store i8 %1357, i8* %56, align 1
  %1358 = lshr i32 %1341, 31
  %1359 = xor i32 %1356, %1358
  %1360 = add nuw nsw i32 %1359, %1358
  %1361 = icmp eq i32 %1360, 2
  %1362 = zext i1 %1361 to i8
  store i8 %1362, i8* %62, align 1
  %1363 = icmp ne i8 %1357, 0
  %1364 = xor i1 %1363, %1361
  %.demorgan97 = or i1 %1354, %1364
  %.v139 = select i1 %.demorgan97, i64 10, i64 48
  %1365 = add i64 %1336, %.v139
  store i64 %1365, i64* %3, align 8
  br i1 %.demorgan97, label %block_463028, label %block_.L_46304e

block_463028:                                     ; preds = %block_.L_46301e
  %1366 = add i64 %1365, 4
  store i64 %1366, i64* %3, align 8
  %1367 = load i32, i32* %1340, align 4
  %1368 = sext i32 %1367 to i64
  store i64 %1368, i64* %RAX.i1208, align 8
  %1369 = shl nsw i64 %1368, 2
  %1370 = add nsw i64 %1369, 8060160
  %1371 = add i64 %1365, 11
  store i64 %1371, i64* %3, align 8
  %1372 = inttoptr i64 %1370 to i32*
  %1373 = load i32, i32* %1372, align 4
  %1374 = zext i32 %1373 to i64
  store i64 %1374, i64* %RCX.i1233, align 8
  %1375 = add i64 %1337, -48
  %1376 = add i64 %1365, 15
  store i64 %1376, i64* %3, align 8
  %1377 = inttoptr i64 %1375 to i64*
  %1378 = load i64, i64* %1377, align 8
  store i64 %1378, i64* %RAX.i1208, align 8
  %1379 = add i64 %1337, -80
  %1380 = add i64 %1365, 19
  store i64 %1380, i64* %3, align 8
  %1381 = inttoptr i64 %1379 to i32*
  %1382 = load i32, i32* %1381, align 4
  %1383 = sext i32 %1382 to i64
  store i64 %1383, i64* %RDX.i1225, align 8
  %1384 = shl nsw i64 %1383, 2
  %1385 = add nsw i64 %1384, 200
  %1386 = add i64 %1385, %1378
  %1387 = add i64 %1365, 26
  store i64 %1387, i64* %3, align 8
  %1388 = inttoptr i64 %1386 to i32*
  %1389 = load i32, i32* %1388, align 4
  %1390 = add i32 %1389, %1373
  %1391 = zext i32 %1390 to i64
  store i64 %1391, i64* %RCX.i1233, align 8
  %1392 = icmp ult i32 %1390, %1373
  %1393 = icmp ult i32 %1390, %1389
  %1394 = or i1 %1392, %1393
  %1395 = zext i1 %1394 to i8
  store i8 %1395, i8* %38, align 1
  %1396 = and i32 %1390, 255
  %1397 = tail call i32 @llvm.ctpop.i32(i32 %1396)
  %1398 = trunc i32 %1397 to i8
  %1399 = and i8 %1398, 1
  %1400 = xor i8 %1399, 1
  store i8 %1400, i8* %45, align 1
  %1401 = xor i32 %1389, %1373
  %1402 = xor i32 %1401, %1390
  %1403 = lshr i32 %1402, 4
  %1404 = trunc i32 %1403 to i8
  %1405 = and i8 %1404, 1
  store i8 %1405, i8* %50, align 1
  %1406 = icmp eq i32 %1390, 0
  %1407 = zext i1 %1406 to i8
  store i8 %1407, i8* %53, align 1
  %1408 = lshr i32 %1390, 31
  %1409 = trunc i32 %1408 to i8
  store i8 %1409, i8* %56, align 1
  %1410 = lshr i32 %1373, 31
  %1411 = lshr i32 %1389, 31
  %1412 = xor i32 %1408, %1410
  %1413 = xor i32 %1408, %1411
  %1414 = add nuw nsw i32 %1412, %1413
  %1415 = icmp eq i32 %1414, 2
  %1416 = zext i1 %1415 to i8
  store i8 %1416, i8* %62, align 1
  %1417 = add i64 %1378, 200
  %1418 = add i64 %1417, %1384
  %1419 = add i64 %1365, 33
  store i64 %1419, i64* %3, align 8
  %1420 = inttoptr i64 %1418 to i32*
  store i32 %1390, i32* %1420, align 4
  %1421 = load i64, i64* %3, align 8
  %1422 = add i64 %1421, 34
  store i64 %1422, i64* %3, align 8
  br label %block_.L_46306b

block_.L_46304e:                                  ; preds = %block_.L_46301e
  %1423 = load i32, i32* bitcast (%G_0x7afd14_type* @G_0x7afd14 to i32*), align 8
  %1424 = zext i32 %1423 to i64
  store i64 %1424, i64* %RAX.i1208, align 8
  %1425 = add i64 %1337, -48
  %1426 = add i64 %1365, 11
  store i64 %1426, i64* %3, align 8
  %1427 = inttoptr i64 %1425 to i64*
  %1428 = load i64, i64* %1427, align 8
  store i64 %1428, i64* %RCX.i1233, align 8
  %1429 = add i64 %1337, -80
  %1430 = add i64 %1365, 15
  store i64 %1430, i64* %3, align 8
  %1431 = inttoptr i64 %1429 to i32*
  %1432 = load i32, i32* %1431, align 4
  %1433 = sext i32 %1432 to i64
  store i64 %1433, i64* %RDX.i1225, align 8
  %1434 = shl nsw i64 %1433, 2
  %1435 = add nsw i64 %1434, 200
  %1436 = add i64 %1435, %1428
  %1437 = add i64 %1365, 22
  store i64 %1437, i64* %3, align 8
  %1438 = inttoptr i64 %1436 to i32*
  %1439 = load i32, i32* %1438, align 4
  %1440 = add i32 %1439, %1423
  %1441 = zext i32 %1440 to i64
  store i64 %1441, i64* %RAX.i1208, align 8
  %1442 = icmp ult i32 %1440, %1423
  %1443 = icmp ult i32 %1440, %1439
  %1444 = or i1 %1442, %1443
  %1445 = zext i1 %1444 to i8
  store i8 %1445, i8* %38, align 1
  %1446 = and i32 %1440, 255
  %1447 = tail call i32 @llvm.ctpop.i32(i32 %1446)
  %1448 = trunc i32 %1447 to i8
  %1449 = and i8 %1448, 1
  %1450 = xor i8 %1449, 1
  store i8 %1450, i8* %45, align 1
  %1451 = xor i32 %1439, %1423
  %1452 = xor i32 %1451, %1440
  %1453 = lshr i32 %1452, 4
  %1454 = trunc i32 %1453 to i8
  %1455 = and i8 %1454, 1
  store i8 %1455, i8* %50, align 1
  %1456 = icmp eq i32 %1440, 0
  %1457 = zext i1 %1456 to i8
  store i8 %1457, i8* %53, align 1
  %1458 = lshr i32 %1440, 31
  %1459 = trunc i32 %1458 to i8
  store i8 %1459, i8* %56, align 1
  %1460 = lshr i32 %1423, 31
  %1461 = lshr i32 %1439, 31
  %1462 = xor i32 %1458, %1460
  %1463 = xor i32 %1458, %1461
  %1464 = add nuw nsw i32 %1462, %1463
  %1465 = icmp eq i32 %1464, 2
  %1466 = zext i1 %1465 to i8
  store i8 %1466, i8* %62, align 1
  %1467 = add i64 %1428, 200
  %1468 = add i64 %1467, %1434
  %1469 = add i64 %1365, 29
  store i64 %1469, i64* %3, align 8
  %1470 = inttoptr i64 %1468 to i32*
  store i32 %1440, i32* %1470, align 4
  %.pre74 = load i64, i64* %3, align 8
  br label %block_.L_46306b

block_.L_46306b:                                  ; preds = %block_.L_46304e, %block_463028
  %1471 = phi i64 [ %.pre74, %block_.L_46304e ], [ %1422, %block_463028 ]
  %1472 = add i64 %1471, 770
  br label %block_.L_46336d

block_.L_463070:                                  ; preds = %block_462d02
  store i64 4, i64* %RDX.i1225, align 8
  store i64 0, i64* %RAX.i1208, align 8
  store i8 0, i8* %38, align 1
  store i8 1, i8* %45, align 1
  store i8 1, i8* %53, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %62, align 1
  store i8 0, i8* %50, align 1
  store i64 0, i64* %RCX.i1233, align 8
  %1473 = add i64 %369, -100
  %1474 = add i64 %404, 12
  store i64 %1474, i64* %3, align 8
  %1475 = inttoptr i64 %1473 to i32*
  %1476 = load i32, i32* %1475, align 4
  %1477 = zext i32 %1476 to i64
  store i64 %1477, i64* %RDI.i1218, align 8
  %1478 = add i64 %404, 15
  store i64 %1478, i64* %3, align 8
  %1479 = load i32, i32* %373, align 4
  %1480 = zext i32 %1479 to i64
  store i64 %1480, i64* %RSI.i1239, align 8
  %1481 = add i64 %404, -334528
  %1482 = add i64 %404, 20
  %1483 = load i64, i64* %6, align 8
  %1484 = add i64 %1483, -8
  %1485 = inttoptr i64 %1484 to i64*
  store i64 %1482, i64* %1485, align 8
  store i64 %1484, i64* %6, align 8
  store i64 %1481, i64* %3, align 8
  %call2_46307f = tail call %struct.Memory* @sub_4115b0.approxlib(%struct.State* nonnull %0, i64 %1481, %struct.Memory* %call2_462cc6)
  %1486 = load i64, i64* %RBP.i, align 8
  %1487 = add i64 %1486, -140
  %1488 = load i32, i32* %EAX.i1214, align 4
  %1489 = load i64, i64* %3, align 8
  %1490 = add i64 %1489, 6
  store i64 %1490, i64* %3, align 8
  %1491 = inttoptr i64 %1487 to i32*
  store i32 %1488, i32* %1491, align 4
  %1492 = load i64, i64* %RBP.i, align 8
  %1493 = add i64 %1492, -140
  %1494 = load i64, i64* %3, align 8
  %1495 = add i64 %1494, 7
  store i64 %1495, i64* %3, align 8
  %1496 = inttoptr i64 %1493 to i32*
  %1497 = load i32, i32* %1496, align 4
  %1498 = add i32 %1497, -4
  %1499 = icmp ult i32 %1497, 4
  %1500 = zext i1 %1499 to i8
  store i8 %1500, i8* %38, align 1
  %1501 = and i32 %1498, 255
  %1502 = tail call i32 @llvm.ctpop.i32(i32 %1501)
  %1503 = trunc i32 %1502 to i8
  %1504 = and i8 %1503, 1
  %1505 = xor i8 %1504, 1
  store i8 %1505, i8* %45, align 1
  %1506 = xor i32 %1498, %1497
  %1507 = lshr i32 %1506, 4
  %1508 = trunc i32 %1507 to i8
  %1509 = and i8 %1508, 1
  store i8 %1509, i8* %50, align 1
  %1510 = icmp eq i32 %1498, 0
  %1511 = zext i1 %1510 to i8
  store i8 %1511, i8* %53, align 1
  %1512 = lshr i32 %1498, 31
  %1513 = trunc i32 %1512 to i8
  store i8 %1513, i8* %56, align 1
  %1514 = lshr i32 %1497, 31
  %1515 = xor i32 %1512, %1514
  %1516 = add nuw nsw i32 %1515, %1514
  %1517 = icmp eq i32 %1516, 2
  %1518 = zext i1 %1517 to i8
  store i8 %1518, i8* %62, align 1
  %1519 = icmp ne i8 %1513, 0
  %1520 = xor i1 %1519, %1517
  %1521 = or i1 %1510, %1520
  %.v114 = select i1 %1521, i64 23, i64 13
  %1522 = add i64 %1494, %.v114
  store i64 %1522, i64* %3, align 8
  br i1 %1521, label %block_.L_4630a1, label %block_463097

block_463097:                                     ; preds = %block_.L_463070
  %1523 = add i64 %1522, 10
  store i64 %1523, i64* %3, align 8
  store i32 4, i32* %1496, align 4
  %.pre75 = load i64, i64* %RBP.i, align 8
  %.pre76 = load i64, i64* %3, align 8
  br label %block_.L_4630a1

block_.L_4630a1:                                  ; preds = %block_463097, %block_.L_463070
  %1524 = phi i64 [ %.pre76, %block_463097 ], [ %1522, %block_.L_463070 ]
  %1525 = phi i64 [ %.pre75, %block_463097 ], [ %1492, %block_.L_463070 ]
  %1526 = add i64 %1525, -140
  %1527 = add i64 %1524, 7
  store i64 %1527, i64* %3, align 8
  %1528 = inttoptr i64 %1526 to i32*
  %1529 = load i32, i32* %1528, align 4
  %1530 = sext i32 %1529 to i64
  store i64 %1530, i64* %RAX.i1208, align 8
  %1531 = shl nsw i64 %1530, 2
  %1532 = add nsw i64 %1531, 8060192
  %1533 = add i64 %1524, 14
  store i64 %1533, i64* %3, align 8
  %1534 = inttoptr i64 %1532 to i32*
  %1535 = load i32, i32* %1534, align 4
  %1536 = zext i32 %1535 to i64
  store i64 %1536, i64* %RCX.i1233, align 8
  %1537 = add i64 %1525, -48
  %1538 = add i64 %1524, 18
  store i64 %1538, i64* %3, align 8
  %1539 = inttoptr i64 %1537 to i64*
  %1540 = load i64, i64* %1539, align 8
  store i64 %1540, i64* %RAX.i1208, align 8
  %1541 = add i64 %1525, -80
  %1542 = add i64 %1524, 22
  store i64 %1542, i64* %3, align 8
  %1543 = inttoptr i64 %1541 to i32*
  %1544 = load i32, i32* %1543, align 4
  %1545 = sext i32 %1544 to i64
  store i64 %1545, i64* %RDX.i1225, align 8
  %1546 = shl nsw i64 %1545, 2
  %1547 = add nsw i64 %1546, 200
  %1548 = add i64 %1547, %1540
  %1549 = add i64 %1524, 29
  store i64 %1549, i64* %3, align 8
  %1550 = inttoptr i64 %1548 to i32*
  %1551 = load i32, i32* %1550, align 4
  %1552 = add i32 %1551, %1535
  %1553 = zext i32 %1552 to i64
  store i64 %1553, i64* %RCX.i1233, align 8
  %1554 = icmp ult i32 %1552, %1535
  %1555 = icmp ult i32 %1552, %1551
  %1556 = or i1 %1554, %1555
  %1557 = zext i1 %1556 to i8
  store i8 %1557, i8* %38, align 1
  %1558 = and i32 %1552, 255
  %1559 = tail call i32 @llvm.ctpop.i32(i32 %1558)
  %1560 = trunc i32 %1559 to i8
  %1561 = and i8 %1560, 1
  %1562 = xor i8 %1561, 1
  store i8 %1562, i8* %45, align 1
  %1563 = xor i32 %1551, %1535
  %1564 = xor i32 %1563, %1552
  %1565 = lshr i32 %1564, 4
  %1566 = trunc i32 %1565 to i8
  %1567 = and i8 %1566, 1
  store i8 %1567, i8* %50, align 1
  %1568 = icmp eq i32 %1552, 0
  %1569 = zext i1 %1568 to i8
  store i8 %1569, i8* %53, align 1
  %1570 = lshr i32 %1552, 31
  %1571 = trunc i32 %1570 to i8
  store i8 %1571, i8* %56, align 1
  %1572 = lshr i32 %1535, 31
  %1573 = lshr i32 %1551, 31
  %1574 = xor i32 %1570, %1572
  %1575 = xor i32 %1570, %1573
  %1576 = add nuw nsw i32 %1574, %1575
  %1577 = icmp eq i32 %1576, 2
  %1578 = zext i1 %1577 to i8
  store i8 %1578, i8* %62, align 1
  %1579 = add i64 %1540, 200
  %1580 = add i64 %1579, %1546
  %1581 = add i64 %1524, 36
  store i64 %1581, i64* %3, align 8
  %1582 = inttoptr i64 %1580 to i32*
  store i32 %1552, i32* %1582, align 4
  %1583 = load i64, i64* %RBP.i, align 8
  %1584 = add i64 %1583, -140
  %1585 = load i64, i64* %3, align 8
  %1586 = add i64 %1585, 7
  store i64 %1586, i64* %3, align 8
  %1587 = inttoptr i64 %1584 to i32*
  %1588 = load i32, i32* %1587, align 4
  store i8 0, i8* %38, align 1
  %1589 = and i32 %1588, 255
  %1590 = tail call i32 @llvm.ctpop.i32(i32 %1589)
  %1591 = trunc i32 %1590 to i8
  %1592 = and i8 %1591, 1
  %1593 = xor i8 %1592, 1
  store i8 %1593, i8* %45, align 1
  store i8 0, i8* %50, align 1
  %1594 = icmp eq i32 %1588, 0
  %1595 = zext i1 %1594 to i8
  store i8 %1595, i8* %53, align 1
  %1596 = lshr i32 %1588, 31
  %1597 = trunc i32 %1596 to i8
  store i8 %1597, i8* %56, align 1
  store i8 0, i8* %62, align 1
  %.v115 = select i1 %1594, i64 13, i64 52
  %1598 = add i64 %1585, %.v115
  store i64 %1598, i64* %3, align 8
  br i1 %1594, label %block_4630d2, label %block_.L_4630f9

block_4630d2:                                     ; preds = %block_.L_4630a1
  %1599 = add i64 %1583, -120
  %1600 = add i64 %1598, 4
  store i64 %1600, i64* %3, align 8
  %1601 = inttoptr i64 %1599 to i32*
  %1602 = load i32, i32* %1601, align 4
  %1603 = add i32 %1602, -1
  %1604 = icmp eq i32 %1602, 0
  %1605 = zext i1 %1604 to i8
  store i8 %1605, i8* %38, align 1
  %1606 = and i32 %1603, 255
  %1607 = tail call i32 @llvm.ctpop.i32(i32 %1606)
  %1608 = trunc i32 %1607 to i8
  %1609 = and i8 %1608, 1
  %1610 = xor i8 %1609, 1
  store i8 %1610, i8* %45, align 1
  %1611 = xor i32 %1603, %1602
  %1612 = lshr i32 %1611, 4
  %1613 = trunc i32 %1612 to i8
  %1614 = and i8 %1613, 1
  store i8 %1614, i8* %50, align 1
  %1615 = icmp eq i32 %1603, 0
  %1616 = zext i1 %1615 to i8
  store i8 %1616, i8* %53, align 1
  %1617 = lshr i32 %1603, 31
  %1618 = trunc i32 %1617 to i8
  store i8 %1618, i8* %56, align 1
  %1619 = lshr i32 %1602, 31
  %1620 = xor i32 %1617, %1619
  %1621 = add nuw nsw i32 %1620, %1619
  %1622 = icmp eq i32 %1621, 2
  %1623 = zext i1 %1622 to i8
  store i8 %1623, i8* %62, align 1
  %.v131 = select i1 %1615, i64 10, i64 39
  %1624 = add i64 %1598, %.v131
  store i64 %1624, i64* %3, align 8
  br i1 %1615, label %block_4630dc, label %block_.L_4630f9

block_4630dc:                                     ; preds = %block_4630d2
  %1625 = load i32, i32* bitcast (%G_0x7afd34_type* @G_0x7afd34 to i32*), align 8
  %1626 = zext i32 %1625 to i64
  store i64 %1626, i64* %RAX.i1208, align 8
  %1627 = add i64 %1583, -48
  %1628 = add i64 %1624, 11
  store i64 %1628, i64* %3, align 8
  %1629 = inttoptr i64 %1627 to i64*
  %1630 = load i64, i64* %1629, align 8
  store i64 %1630, i64* %RCX.i1233, align 8
  %1631 = add i64 %1583, -80
  %1632 = add i64 %1624, 15
  store i64 %1632, i64* %3, align 8
  %1633 = inttoptr i64 %1631 to i32*
  %1634 = load i32, i32* %1633, align 4
  %1635 = sext i32 %1634 to i64
  store i64 %1635, i64* %RDX.i1225, align 8
  %1636 = shl nsw i64 %1635, 2
  %1637 = add nsw i64 %1636, 200
  %1638 = add i64 %1637, %1630
  %1639 = add i64 %1624, 22
  store i64 %1639, i64* %3, align 8
  %1640 = inttoptr i64 %1638 to i32*
  %1641 = load i32, i32* %1640, align 4
  %1642 = add i32 %1641, %1625
  %1643 = zext i32 %1642 to i64
  store i64 %1643, i64* %RAX.i1208, align 8
  %1644 = icmp ult i32 %1642, %1625
  %1645 = icmp ult i32 %1642, %1641
  %1646 = or i1 %1644, %1645
  %1647 = zext i1 %1646 to i8
  store i8 %1647, i8* %38, align 1
  %1648 = and i32 %1642, 255
  %1649 = tail call i32 @llvm.ctpop.i32(i32 %1648)
  %1650 = trunc i32 %1649 to i8
  %1651 = and i8 %1650, 1
  %1652 = xor i8 %1651, 1
  store i8 %1652, i8* %45, align 1
  %1653 = xor i32 %1641, %1625
  %1654 = xor i32 %1653, %1642
  %1655 = lshr i32 %1654, 4
  %1656 = trunc i32 %1655 to i8
  %1657 = and i8 %1656, 1
  store i8 %1657, i8* %50, align 1
  %1658 = icmp eq i32 %1642, 0
  %1659 = zext i1 %1658 to i8
  store i8 %1659, i8* %53, align 1
  %1660 = lshr i32 %1642, 31
  %1661 = trunc i32 %1660 to i8
  store i8 %1661, i8* %56, align 1
  %1662 = lshr i32 %1625, 31
  %1663 = lshr i32 %1641, 31
  %1664 = xor i32 %1660, %1662
  %1665 = xor i32 %1660, %1663
  %1666 = add nuw nsw i32 %1664, %1665
  %1667 = icmp eq i32 %1666, 2
  %1668 = zext i1 %1667 to i8
  store i8 %1668, i8* %62, align 1
  %1669 = add i64 %1630, 200
  %1670 = add i64 %1669, %1636
  %1671 = add i64 %1624, 29
  store i64 %1671, i64* %3, align 8
  %1672 = inttoptr i64 %1670 to i32*
  store i32 %1642, i32* %1672, align 4
  %.pre77 = load i64, i64* %RBP.i, align 8
  %.pre78 = load i64, i64* %3, align 8
  br label %block_.L_4630f9

block_.L_4630f9:                                  ; preds = %block_4630d2, %block_.L_4630a1, %block_4630dc
  %1673 = phi i64 [ %.pre78, %block_4630dc ], [ %1624, %block_4630d2 ], [ %1598, %block_.L_4630a1 ]
  %1674 = phi i64 [ %.pre77, %block_4630dc ], [ %1583, %block_4630d2 ], [ %1583, %block_.L_4630a1 ]
  %1675 = add i64 %1674, -140
  %1676 = add i64 %1673, 6
  store i64 %1676, i64* %3, align 8
  %1677 = inttoptr i64 %1675 to i32*
  %1678 = load i32, i32* %1677, align 4
  %1679 = zext i32 %1678 to i64
  store i64 %1679, i64* %RAX.i1208, align 8
  %1680 = add i64 %1674, -120
  %1681 = add i64 %1673, 9
  store i64 %1681, i64* %3, align 8
  %1682 = inttoptr i64 %1680 to i32*
  %1683 = load i32, i32* %1682, align 4
  %1684 = add i32 %1683, %1678
  %1685 = zext i32 %1684 to i64
  store i64 %1685, i64* %RAX.i1208, align 8
  %1686 = icmp eq i32 %1684, 0
  %1687 = zext i1 %1686 to i8
  %1688 = lshr i32 %1684, 31
  %1689 = add i32 %1684, -1
  store i8 %1687, i8* %38, align 1
  %1690 = and i32 %1689, 255
  %1691 = tail call i32 @llvm.ctpop.i32(i32 %1690)
  %1692 = trunc i32 %1691 to i8
  %1693 = and i8 %1692, 1
  %1694 = xor i8 %1693, 1
  store i8 %1694, i8* %45, align 1
  %1695 = xor i32 %1689, %1684
  %1696 = lshr i32 %1695, 4
  %1697 = trunc i32 %1696 to i8
  %1698 = and i8 %1697, 1
  store i8 %1698, i8* %50, align 1
  %1699 = icmp eq i32 %1689, 0
  %1700 = zext i1 %1699 to i8
  store i8 %1700, i8* %53, align 1
  %1701 = lshr i32 %1689, 31
  %1702 = trunc i32 %1701 to i8
  store i8 %1702, i8* %56, align 1
  %1703 = xor i32 %1701, %1688
  %1704 = add nuw nsw i32 %1703, %1688
  %1705 = icmp eq i32 %1704, 2
  %1706 = zext i1 %1705 to i8
  store i8 %1706, i8* %62, align 1
  %1707 = icmp ne i8 %1702, 0
  %1708 = xor i1 %1707, %1705
  %.demorgan98 = or i1 %1699, %1708
  %.v116 = select i1 %.demorgan98, i64 18, i64 38
  %1709 = add i64 %1673, %.v116
  store i64 %1709, i64* %3, align 8
  br i1 %.demorgan98, label %block_46310b, label %block_.L_46311f

block_46310b:                                     ; preds = %block_.L_4630f9
  %1710 = add i64 %1674, -76
  %1711 = add i64 %1709, 4
  store i64 %1711, i64* %3, align 8
  %1712 = inttoptr i64 %1710 to i32*
  %1713 = load i32, i32* %1712, align 4
  %1714 = add i32 %1713, -2
  %1715 = icmp ult i32 %1713, 2
  %1716 = zext i1 %1715 to i8
  store i8 %1716, i8* %38, align 1
  %1717 = and i32 %1714, 255
  %1718 = tail call i32 @llvm.ctpop.i32(i32 %1717)
  %1719 = trunc i32 %1718 to i8
  %1720 = and i8 %1719, 1
  %1721 = xor i8 %1720, 1
  store i8 %1721, i8* %45, align 1
  %1722 = xor i32 %1714, %1713
  %1723 = lshr i32 %1722, 4
  %1724 = trunc i32 %1723 to i8
  %1725 = and i8 %1724, 1
  store i8 %1725, i8* %50, align 1
  %1726 = icmp eq i32 %1714, 0
  %1727 = zext i1 %1726 to i8
  store i8 %1727, i8* %53, align 1
  %1728 = lshr i32 %1714, 31
  %1729 = trunc i32 %1728 to i8
  store i8 %1729, i8* %56, align 1
  %1730 = lshr i32 %1713, 31
  %1731 = xor i32 %1728, %1730
  %1732 = add nuw nsw i32 %1731, %1730
  %1733 = icmp eq i32 %1732, 2
  %1734 = zext i1 %1733 to i8
  store i8 %1734, i8* %62, align 1
  %1735 = icmp ne i8 %1729, 0
  %1736 = xor i1 %1735, %1733
  %.demorgan99 = or i1 %1726, %1736
  %.v129 = select i1 %.demorgan99, i64 10, i64 318
  %1737 = add i64 %1709, %.v129
  store i64 %1737, i64* %3, align 8
  br i1 %.demorgan99, label %block_463115, label %block_.L_463249

block_463115:                                     ; preds = %block_46310b
  %1738 = add i64 %1674, -112
  %1739 = add i64 %1737, 4
  store i64 %1739, i64* %3, align 8
  %1740 = inttoptr i64 %1738 to i32*
  %1741 = load i32, i32* %1740, align 4
  store i8 0, i8* %38, align 1
  %1742 = and i32 %1741, 255
  %1743 = tail call i32 @llvm.ctpop.i32(i32 %1742)
  %1744 = trunc i32 %1743 to i8
  %1745 = and i8 %1744, 1
  %1746 = xor i8 %1745, 1
  store i8 %1746, i8* %45, align 1
  store i8 0, i8* %50, align 1
  %1747 = icmp eq i32 %1741, 0
  %1748 = zext i1 %1747 to i8
  store i8 %1748, i8* %53, align 1
  %1749 = lshr i32 %1741, 31
  %1750 = trunc i32 %1749 to i8
  store i8 %1750, i8* %56, align 1
  store i8 0, i8* %62, align 1
  %.v130 = select i1 %1747, i64 10, i64 308
  %1751 = add i64 %1737, %.v130
  store i64 %1751, i64* %3, align 8
  br i1 %1747, label %block_.L_46311f, label %block_.L_463249

block_.L_46311f:                                  ; preds = %block_463115, %block_.L_4630f9
  %1752 = phi i64 [ %1751, %block_463115 ], [ %1709, %block_.L_4630f9 ]
  %1753 = add i64 %1674, -108
  %1754 = add i64 %1752, 4
  store i64 %1754, i64* %3, align 8
  %1755 = inttoptr i64 %1753 to i32*
  %1756 = load i32, i32* %1755, align 4
  store i8 0, i8* %38, align 1
  %1757 = and i32 %1756, 255
  %1758 = tail call i32 @llvm.ctpop.i32(i32 %1757)
  %1759 = trunc i32 %1758 to i8
  %1760 = and i8 %1759, 1
  %1761 = xor i8 %1760, 1
  store i8 %1761, i8* %45, align 1
  store i8 0, i8* %50, align 1
  %1762 = icmp eq i32 %1756, 0
  %1763 = zext i1 %1762 to i8
  store i8 %1763, i8* %53, align 1
  %1764 = lshr i32 %1756, 31
  %1765 = trunc i32 %1764 to i8
  store i8 %1765, i8* %56, align 1
  store i8 0, i8* %62, align 1
  %1766 = icmp ne i8 %1765, 0
  %1767 = or i1 %1762, %1766
  %.v117 = select i1 %1767, i64 298, i64 10
  %1768 = add i64 %1752, %.v117
  store i64 %1768, i64* %3, align 8
  br i1 %1767, label %block_.L_463249, label %block_463129

block_463129:                                     ; preds = %block_.L_46311f
  store i64 5, i64* %RDX.i1225, align 8
  store i64 0, i64* %RAX.i1208, align 8
  store i8 0, i8* %38, align 1
  store i8 1, i8* %45, align 1
  store i8 1, i8* %53, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %62, align 1
  store i8 0, i8* %50, align 1
  store i64 0, i64* %RCX.i1233, align 8
  %1769 = add i64 %1674, -100
  %1770 = add i64 %1768, 12
  store i64 %1770, i64* %3, align 8
  %1771 = inttoptr i64 %1769 to i32*
  %1772 = load i32, i32* %1771, align 4
  %1773 = zext i32 %1772 to i64
  store i64 %1773, i64* %RDI.i1218, align 8
  %1774 = add i64 %1674, -72
  %1775 = add i64 %1768, 15
  store i64 %1775, i64* %3, align 8
  %1776 = inttoptr i64 %1774 to i32*
  %1777 = load i32, i32* %1776, align 4
  %1778 = zext i32 %1777 to i64
  store i64 %1778, i64* %RSI.i1239, align 8
  %1779 = add i64 %1768, -334713
  %1780 = add i64 %1768, 20
  %1781 = load i64, i64* %6, align 8
  %1782 = add i64 %1781, -8
  %1783 = inttoptr i64 %1782 to i64*
  store i64 %1780, i64* %1783, align 8
  store i64 %1782, i64* %6, align 8
  store i64 %1779, i64* %3, align 8
  %call2_463138 = tail call %struct.Memory* @sub_4115b0.approxlib(%struct.State* nonnull %0, i64 %1779, %struct.Memory* %call2_462cc6)
  %1784 = load i64, i64* %RBP.i, align 8
  %1785 = add i64 %1784, -148
  %1786 = load i32, i32* %EAX.i1214, align 4
  %1787 = load i64, i64* %3, align 8
  %1788 = add i64 %1787, 6
  store i64 %1788, i64* %3, align 8
  %1789 = inttoptr i64 %1785 to i32*
  store i32 %1786, i32* %1789, align 4
  %1790 = load i64, i64* %RBP.i, align 8
  %1791 = add i64 %1790, -148
  %1792 = load i64, i64* %3, align 8
  %1793 = add i64 %1792, 7
  store i64 %1793, i64* %3, align 8
  %1794 = inttoptr i64 %1791 to i32*
  %1795 = load i32, i32* %1794, align 4
  %1796 = add i32 %1795, -5
  %1797 = icmp ult i32 %1795, 5
  %1798 = zext i1 %1797 to i8
  store i8 %1798, i8* %38, align 1
  %1799 = and i32 %1796, 255
  %1800 = tail call i32 @llvm.ctpop.i32(i32 %1799)
  %1801 = trunc i32 %1800 to i8
  %1802 = and i8 %1801, 1
  %1803 = xor i8 %1802, 1
  store i8 %1803, i8* %45, align 1
  %1804 = xor i32 %1796, %1795
  %1805 = lshr i32 %1804, 4
  %1806 = trunc i32 %1805 to i8
  %1807 = and i8 %1806, 1
  store i8 %1807, i8* %50, align 1
  %1808 = icmp eq i32 %1796, 0
  %1809 = zext i1 %1808 to i8
  store i8 %1809, i8* %53, align 1
  %1810 = lshr i32 %1796, 31
  %1811 = trunc i32 %1810 to i8
  store i8 %1811, i8* %56, align 1
  %1812 = lshr i32 %1795, 31
  %1813 = xor i32 %1810, %1812
  %1814 = add nuw nsw i32 %1813, %1812
  %1815 = icmp eq i32 %1814, 2
  %1816 = zext i1 %1815 to i8
  store i8 %1816, i8* %62, align 1
  %1817 = icmp ne i8 %1811, 0
  %1818 = xor i1 %1817, %1815
  %.demorgan100 = or i1 %1808, %1818
  %.v118 = select i1 %.demorgan100, i64 13, i64 46
  %1819 = add i64 %1792, %.v118
  store i64 %1819, i64* %3, align 8
  br i1 %.demorgan100, label %block_463150, label %block_.L_463171

block_463150:                                     ; preds = %block_463129
  %1820 = add i64 %1819, 7
  store i64 %1820, i64* %3, align 8
  %1821 = load i32, i32* %1794, align 4
  %1822 = add i32 %1821, -4
  %1823 = icmp ult i32 %1821, 4
  %1824 = zext i1 %1823 to i8
  store i8 %1824, i8* %38, align 1
  %1825 = and i32 %1822, 255
  %1826 = tail call i32 @llvm.ctpop.i32(i32 %1825)
  %1827 = trunc i32 %1826 to i8
  %1828 = and i8 %1827, 1
  %1829 = xor i8 %1828, 1
  store i8 %1829, i8* %45, align 1
  %1830 = xor i32 %1822, %1821
  %1831 = lshr i32 %1830, 4
  %1832 = trunc i32 %1831 to i8
  %1833 = and i8 %1832, 1
  store i8 %1833, i8* %50, align 1
  %1834 = icmp eq i32 %1822, 0
  %1835 = zext i1 %1834 to i8
  store i8 %1835, i8* %53, align 1
  %1836 = lshr i32 %1822, 31
  %1837 = trunc i32 %1836 to i8
  store i8 %1837, i8* %56, align 1
  %1838 = lshr i32 %1821, 31
  %1839 = xor i32 %1836, %1838
  %1840 = add nuw nsw i32 %1839, %1838
  %1841 = icmp eq i32 %1840, 2
  %1842 = zext i1 %1841 to i8
  store i8 %1842, i8* %62, align 1
  %.v127 = select i1 %1834, i64 13, i64 43
  %1843 = add i64 %1819, %.v127
  store i64 %1843, i64* %3, align 8
  br i1 %1834, label %block_46315d, label %block_.L_46317b

block_46315d:                                     ; preds = %block_463150
  %1844 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %1845 = zext i32 %1844 to i64
  store i64 %1845, i64* %RAX.i1208, align 8
  %1846 = load i32, i32* bitcast (%G_0xb54ce0_type* @G_0xb54ce0 to i32*), align 8
  %1847 = sub i32 %1844, %1846
  %1848 = icmp ult i32 %1844, %1846
  %1849 = zext i1 %1848 to i8
  store i8 %1849, i8* %38, align 1
  %1850 = and i32 %1847, 255
  %1851 = tail call i32 @llvm.ctpop.i32(i32 %1850)
  %1852 = trunc i32 %1851 to i8
  %1853 = and i8 %1852, 1
  %1854 = xor i8 %1853, 1
  store i8 %1854, i8* %45, align 1
  %1855 = xor i32 %1846, %1844
  %1856 = xor i32 %1855, %1847
  %1857 = lshr i32 %1856, 4
  %1858 = trunc i32 %1857 to i8
  %1859 = and i8 %1858, 1
  store i8 %1859, i8* %50, align 1
  %1860 = icmp eq i32 %1847, 0
  %1861 = zext i1 %1860 to i8
  store i8 %1861, i8* %53, align 1
  %1862 = lshr i32 %1847, 31
  %1863 = trunc i32 %1862 to i8
  store i8 %1863, i8* %56, align 1
  %1864 = lshr i32 %1844, 31
  %1865 = lshr i32 %1846, 31
  %1866 = xor i32 %1865, %1864
  %1867 = xor i32 %1862, %1864
  %1868 = add nuw nsw i32 %1867, %1866
  %1869 = icmp eq i32 %1868, 2
  %1870 = zext i1 %1869 to i8
  store i8 %1870, i8* %62, align 1
  %1871 = icmp ne i8 %1863, 0
  %1872 = xor i1 %1871, %1869
  %1873 = or i1 %1860, %1872
  %.v128 = select i1 %1873, i64 30, i64 20
  %1874 = add i64 %1843, %.v128
  store i64 %1874, i64* %3, align 8
  br i1 %1873, label %block_.L_46317b, label %block_.L_463171

block_.L_463171:                                  ; preds = %block_463129, %block_46315d
  %1875 = phi i64 [ %1874, %block_46315d ], [ %1819, %block_463129 ]
  %1876 = add i64 %1875, 10
  store i64 %1876, i64* %3, align 8
  store i32 5, i32* %1794, align 4
  %.pre79 = load i64, i64* %3, align 8
  %.pre80 = load i64, i64* %RBP.i, align 8
  br label %block_.L_46317b

block_.L_46317b:                                  ; preds = %block_463150, %block_.L_463171, %block_46315d
  %1877 = phi i64 [ %.pre80, %block_.L_463171 ], [ %1790, %block_46315d ], [ %1790, %block_463150 ]
  %1878 = phi i64 [ %.pre79, %block_.L_463171 ], [ %1874, %block_46315d ], [ %1843, %block_463150 ]
  store i64 0, i64* %RAX.i1208, align 8
  store i8 0, i8* %38, align 1
  store i8 1, i8* %45, align 1
  store i8 1, i8* %53, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %62, align 1
  store i8 0, i8* %50, align 1
  store i8 0, i8* %CL.i641, align 1
  %1879 = add i64 %1877, -148
  %1880 = add i64 %1878, 11
  store i64 %1880, i64* %3, align 8
  %1881 = inttoptr i64 %1879 to i32*
  %1882 = load i32, i32* %1881, align 4
  %1883 = sext i32 %1882 to i64
  store i64 %1883, i64* %RDX.i1225, align 8
  %1884 = shl nsw i64 %1883, 2
  %1885 = add nsw i64 %1884, 8060224
  %1886 = add i64 %1878, 18
  store i64 %1886, i64* %3, align 8
  %1887 = inttoptr i64 %1885 to i32*
  %1888 = load i32, i32* %1887, align 4
  %1889 = zext i32 %1888 to i64
  store i64 %1889, i64* %RAX.i1208, align 8
  %1890 = add i64 %1877, -48
  %1891 = add i64 %1878, 22
  store i64 %1891, i64* %3, align 8
  %1892 = inttoptr i64 %1890 to i64*
  %1893 = load i64, i64* %1892, align 8
  store i64 %1893, i64* %RDX.i1225, align 8
  %1894 = add i64 %1877, -80
  %1895 = add i64 %1878, 26
  store i64 %1895, i64* %3, align 8
  %1896 = inttoptr i64 %1894 to i32*
  %1897 = load i32, i32* %1896, align 4
  %1898 = sext i32 %1897 to i64
  store i64 %1898, i64* %RSI.i1239, align 8
  %1899 = shl nsw i64 %1898, 2
  %1900 = add nsw i64 %1899, 200
  %1901 = add i64 %1900, %1893
  %1902 = add i64 %1878, 33
  store i64 %1902, i64* %3, align 8
  %1903 = inttoptr i64 %1901 to i32*
  %1904 = load i32, i32* %1903, align 4
  %1905 = add i32 %1904, %1888
  %1906 = zext i32 %1905 to i64
  store i64 %1906, i64* %RAX.i1208, align 8
  %1907 = icmp ult i32 %1905, %1888
  %1908 = icmp ult i32 %1905, %1904
  %1909 = or i1 %1907, %1908
  %1910 = zext i1 %1909 to i8
  store i8 %1910, i8* %38, align 1
  %1911 = and i32 %1905, 255
  %1912 = tail call i32 @llvm.ctpop.i32(i32 %1911)
  %1913 = trunc i32 %1912 to i8
  %1914 = and i8 %1913, 1
  %1915 = xor i8 %1914, 1
  store i8 %1915, i8* %45, align 1
  %1916 = xor i32 %1904, %1888
  %1917 = xor i32 %1916, %1905
  %1918 = lshr i32 %1917, 4
  %1919 = trunc i32 %1918 to i8
  %1920 = and i8 %1919, 1
  store i8 %1920, i8* %50, align 1
  %1921 = icmp eq i32 %1905, 0
  %1922 = zext i1 %1921 to i8
  store i8 %1922, i8* %53, align 1
  %1923 = lshr i32 %1905, 31
  %1924 = trunc i32 %1923 to i8
  store i8 %1924, i8* %56, align 1
  %1925 = lshr i32 %1888, 31
  %1926 = lshr i32 %1904, 31
  %1927 = xor i32 %1923, %1925
  %1928 = xor i32 %1923, %1926
  %1929 = add nuw nsw i32 %1927, %1928
  %1930 = icmp eq i32 %1929, 2
  %1931 = zext i1 %1930 to i8
  store i8 %1931, i8* %62, align 1
  %1932 = add i64 %1893, 200
  %1933 = add i64 %1932, %1899
  %1934 = add i64 %1878, 40
  store i64 %1934, i64* %3, align 8
  %1935 = inttoptr i64 %1933 to i32*
  store i32 %1905, i32* %1935, align 4
  %1936 = load i64, i64* %RBP.i, align 8
  %1937 = add i64 %1936, -76
  %1938 = load i64, i64* %3, align 8
  %1939 = add i64 %1938, 4
  store i64 %1939, i64* %3, align 8
  %1940 = inttoptr i64 %1937 to i32*
  %1941 = load i32, i32* %1940, align 4
  %1942 = add i32 %1941, -2
  %1943 = icmp ult i32 %1941, 2
  %1944 = zext i1 %1943 to i8
  store i8 %1944, i8* %38, align 1
  %1945 = and i32 %1942, 255
  %1946 = tail call i32 @llvm.ctpop.i32(i32 %1945)
  %1947 = trunc i32 %1946 to i8
  %1948 = and i8 %1947, 1
  %1949 = xor i8 %1948, 1
  store i8 %1949, i8* %45, align 1
  %1950 = xor i32 %1942, %1941
  %1951 = lshr i32 %1950, 4
  %1952 = trunc i32 %1951 to i8
  %1953 = and i8 %1952, 1
  store i8 %1953, i8* %50, align 1
  %1954 = icmp eq i32 %1942, 0
  %1955 = zext i1 %1954 to i8
  store i8 %1955, i8* %53, align 1
  %1956 = lshr i32 %1942, 31
  %1957 = trunc i32 %1956 to i8
  store i8 %1957, i8* %56, align 1
  %1958 = lshr i32 %1941, 31
  %1959 = xor i32 %1956, %1958
  %1960 = add nuw nsw i32 %1959, %1958
  %1961 = icmp eq i32 %1960, 2
  %1962 = zext i1 %1961 to i8
  store i8 %1962, i8* %62, align 1
  %1963 = add i64 %1936, -697
  %1964 = load i8, i8* %CL.i641, align 1
  %1965 = add i64 %1938, 10
  store i64 %1965, i64* %3, align 8
  %1966 = inttoptr i64 %1963 to i8*
  store i8 %1964, i8* %1966, align 1
  %1967 = load i64, i64* %3, align 8
  %1968 = add i64 %1967, 27
  %1969 = add i64 %1967, 6
  %1970 = load i8, i8* %53, align 1
  %1971 = icmp eq i8 %1970, 0
  %1972 = load i8, i8* %56, align 1
  %1973 = icmp ne i8 %1972, 0
  %1974 = load i8, i8* %62, align 1
  %1975 = icmp ne i8 %1974, 0
  %1976 = xor i1 %1973, %1975
  %1977 = xor i1 %1976, true
  %1978 = and i1 %1971, %1977
  %1979 = select i1 %1978, i64 %1968, i64 %1969
  store i64 %1979, i64* %3, align 8
  br i1 %1978, label %block_.L_4631c8, label %block_4631b3

block_4631b3:                                     ; preds = %block_.L_46317b
  %1980 = load i64, i64* %RBP.i, align 8
  %1981 = add i64 %1980, -140
  %1982 = add i64 %1979, 6
  store i64 %1982, i64* %3, align 8
  %1983 = inttoptr i64 %1981 to i32*
  %1984 = load i32, i32* %1983, align 4
  %1985 = zext i32 %1984 to i64
  store i64 %1985, i64* %RAX.i1208, align 8
  %1986 = add i64 %1980, -120
  %1987 = add i64 %1979, 9
  store i64 %1987, i64* %3, align 8
  %1988 = inttoptr i64 %1986 to i32*
  %1989 = load i32, i32* %1988, align 4
  %1990 = add i32 %1989, %1984
  %1991 = zext i32 %1990 to i64
  store i64 %1991, i64* %RAX.i1208, align 8
  %1992 = icmp eq i32 %1990, 0
  %1993 = zext i1 %1992 to i8
  %1994 = lshr i32 %1990, 31
  %1995 = add i32 %1990, -1
  store i8 %1993, i8* %38, align 1
  %1996 = and i32 %1995, 255
  %1997 = tail call i32 @llvm.ctpop.i32(i32 %1996)
  %1998 = trunc i32 %1997 to i8
  %1999 = and i8 %1998, 1
  %2000 = xor i8 %1999, 1
  store i8 %2000, i8* %45, align 1
  %2001 = xor i32 %1995, %1990
  %2002 = lshr i32 %2001, 4
  %2003 = trunc i32 %2002 to i8
  %2004 = and i8 %2003, 1
  store i8 %2004, i8* %50, align 1
  %2005 = icmp eq i32 %1995, 0
  %2006 = zext i1 %2005 to i8
  store i8 %2006, i8* %53, align 1
  %2007 = lshr i32 %1995, 31
  %2008 = trunc i32 %2007 to i8
  store i8 %2008, i8* %56, align 1
  %2009 = xor i32 %2007, %1994
  %2010 = add nuw nsw i32 %2009, %1994
  %2011 = icmp eq i32 %2010, 2
  %2012 = zext i1 %2011 to i8
  store i8 %2012, i8* %62, align 1
  %2013 = icmp ne i8 %2008, 0
  %2014 = xor i1 %2013, %2011
  %.demorgan101 = or i1 %2005, %2014
  %2015 = xor i1 %.demorgan101, true
  %2016 = zext i1 %2015 to i8
  store i8 %2016, i8* %CL.i641, align 1
  %2017 = add i64 %1980, -697
  %2018 = add i64 %1979, 21
  store i64 %2018, i64* %3, align 8
  %2019 = inttoptr i64 %2017 to i8*
  store i8 %2016, i8* %2019, align 1
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_4631c8

block_.L_4631c8:                                  ; preds = %block_4631b3, %block_.L_46317b
  %2020 = phi i64 [ %.pre81, %block_4631b3 ], [ %1968, %block_.L_46317b ]
  %2021 = load i64, i64* %RBP.i, align 8
  %2022 = add i64 %2021, -697
  %2023 = add i64 %2020, 6
  store i64 %2023, i64* %3, align 8
  %2024 = inttoptr i64 %2022 to i8*
  %2025 = load i8, i8* %2024, align 1
  %2026 = and i8 %2025, 1
  store i8 %2026, i8* %AL.i640, align 1
  store i8 0, i8* %38, align 1
  %2027 = zext i8 %2026 to i32
  %2028 = tail call i32 @llvm.ctpop.i32(i32 %2027)
  %2029 = trunc i32 %2028 to i8
  %2030 = xor i8 %2029, 1
  store i8 %2030, i8* %45, align 1
  %2031 = xor i8 %2026, 1
  store i8 %2031, i8* %53, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %62, align 1
  store i8 0, i8* %50, align 1
  %2032 = zext i8 %2026 to i64
  store i64 %2032, i64* %RCX.i1233, align 8
  %2033 = add i64 %2021, -144
  %2034 = zext i8 %2026 to i32
  %2035 = add i64 %2020, 17
  store i64 %2035, i64* %3, align 8
  %2036 = inttoptr i64 %2033 to i32*
  store i32 %2034, i32* %2036, align 4
  %2037 = load i64, i64* %RBP.i, align 8
  %2038 = add i64 %2037, -148
  %2039 = load i64, i64* %3, align 8
  %2040 = add i64 %2039, 7
  store i64 %2040, i64* %3, align 8
  %2041 = inttoptr i64 %2038 to i32*
  %2042 = load i32, i32* %2041, align 4
  %2043 = add i32 %2042, -1
  %2044 = icmp eq i32 %2042, 0
  %2045 = zext i1 %2044 to i8
  store i8 %2045, i8* %38, align 1
  %2046 = and i32 %2043, 255
  %2047 = tail call i32 @llvm.ctpop.i32(i32 %2046)
  %2048 = trunc i32 %2047 to i8
  %2049 = and i8 %2048, 1
  %2050 = xor i8 %2049, 1
  store i8 %2050, i8* %45, align 1
  %2051 = xor i32 %2043, %2042
  %2052 = lshr i32 %2051, 4
  %2053 = trunc i32 %2052 to i8
  %2054 = and i8 %2053, 1
  store i8 %2054, i8* %50, align 1
  %2055 = icmp eq i32 %2043, 0
  %2056 = zext i1 %2055 to i8
  store i8 %2056, i8* %53, align 1
  %2057 = lshr i32 %2043, 31
  %2058 = trunc i32 %2057 to i8
  store i8 %2058, i8* %56, align 1
  %2059 = lshr i32 %2042, 31
  %2060 = xor i32 %2057, %2059
  %2061 = add nuw nsw i32 %2060, %2059
  %2062 = icmp eq i32 %2061, 2
  %2063 = zext i1 %2062 to i8
  store i8 %2063, i8* %62, align 1
  %.v119 = select i1 %2055, i64 13, i64 65
  %2064 = add i64 %2039, %.v119
  store i64 %2064, i64* %3, align 8
  br i1 %2055, label %block_4631e6, label %block_.L_46321a

block_4631e6:                                     ; preds = %block_.L_4631c8
  %2065 = add i64 %2037, -128
  %2066 = add i64 %2064, 4
  store i64 %2066, i64* %3, align 8
  %2067 = inttoptr i64 %2065 to i32*
  %2068 = load i32, i32* %2067, align 4
  store i8 0, i8* %38, align 1
  %2069 = and i32 %2068, 255
  %2070 = tail call i32 @llvm.ctpop.i32(i32 %2069)
  %2071 = trunc i32 %2070 to i8
  %2072 = and i8 %2071, 1
  %2073 = xor i8 %2072, 1
  store i8 %2073, i8* %45, align 1
  store i8 0, i8* %50, align 1
  %2074 = icmp eq i32 %2068, 0
  %2075 = zext i1 %2074 to i8
  store i8 %2075, i8* %53, align 1
  %2076 = lshr i32 %2068, 31
  %2077 = trunc i32 %2076 to i8
  store i8 %2077, i8* %56, align 1
  store i8 0, i8* %62, align 1
  %.v125 = select i1 %2074, i64 10, i64 52
  %2078 = add i64 %2064, %.v125
  store i64 %2078, i64* %3, align 8
  br i1 %2074, label %block_4631f0, label %block_.L_46321a

block_4631f0:                                     ; preds = %block_4631e6
  %2079 = add i64 %2037, -144
  %2080 = add i64 %2078, 7
  store i64 %2080, i64* %3, align 8
  %2081 = inttoptr i64 %2079 to i32*
  %2082 = load i32, i32* %2081, align 4
  store i8 0, i8* %38, align 1
  %2083 = and i32 %2082, 255
  %2084 = tail call i32 @llvm.ctpop.i32(i32 %2083)
  %2085 = trunc i32 %2084 to i8
  %2086 = and i8 %2085, 1
  %2087 = xor i8 %2086, 1
  store i8 %2087, i8* %45, align 1
  store i8 0, i8* %50, align 1
  %2088 = icmp eq i32 %2082, 0
  %2089 = zext i1 %2088 to i8
  store i8 %2089, i8* %53, align 1
  %2090 = lshr i32 %2082, 31
  %2091 = trunc i32 %2090 to i8
  store i8 %2091, i8* %56, align 1
  store i8 0, i8* %62, align 1
  %.v126 = select i1 %2088, i64 13, i64 42
  %2092 = add i64 %2078, %.v126
  store i64 %2092, i64* %3, align 8
  br i1 %2088, label %block_4631fd, label %block_.L_46321a

block_4631fd:                                     ; preds = %block_4631f0
  %2093 = load i32, i32* bitcast (%G_0x7afd58_type* @G_0x7afd58 to i32*), align 8
  %2094 = zext i32 %2093 to i64
  store i64 %2094, i64* %RAX.i1208, align 8
  %2095 = add i64 %2037, -48
  %2096 = add i64 %2092, 11
  store i64 %2096, i64* %3, align 8
  %2097 = inttoptr i64 %2095 to i64*
  %2098 = load i64, i64* %2097, align 8
  store i64 %2098, i64* %RCX.i1233, align 8
  %2099 = add i64 %2037, -80
  %2100 = add i64 %2092, 15
  store i64 %2100, i64* %3, align 8
  %2101 = inttoptr i64 %2099 to i32*
  %2102 = load i32, i32* %2101, align 4
  %2103 = sext i32 %2102 to i64
  store i64 %2103, i64* %RDX.i1225, align 8
  %2104 = shl nsw i64 %2103, 2
  %2105 = add nsw i64 %2104, 200
  %2106 = add i64 %2105, %2098
  %2107 = add i64 %2092, 22
  store i64 %2107, i64* %3, align 8
  %2108 = inttoptr i64 %2106 to i32*
  %2109 = load i32, i32* %2108, align 4
  %2110 = add i32 %2109, %2093
  %2111 = zext i32 %2110 to i64
  store i64 %2111, i64* %RAX.i1208, align 8
  %2112 = icmp ult i32 %2110, %2093
  %2113 = icmp ult i32 %2110, %2109
  %2114 = or i1 %2112, %2113
  %2115 = zext i1 %2114 to i8
  store i8 %2115, i8* %38, align 1
  %2116 = and i32 %2110, 255
  %2117 = tail call i32 @llvm.ctpop.i32(i32 %2116)
  %2118 = trunc i32 %2117 to i8
  %2119 = and i8 %2118, 1
  %2120 = xor i8 %2119, 1
  store i8 %2120, i8* %45, align 1
  %2121 = xor i32 %2109, %2093
  %2122 = xor i32 %2121, %2110
  %2123 = lshr i32 %2122, 4
  %2124 = trunc i32 %2123 to i8
  %2125 = and i8 %2124, 1
  store i8 %2125, i8* %50, align 1
  %2126 = icmp eq i32 %2110, 0
  %2127 = zext i1 %2126 to i8
  store i8 %2127, i8* %53, align 1
  %2128 = lshr i32 %2110, 31
  %2129 = trunc i32 %2128 to i8
  store i8 %2129, i8* %56, align 1
  %2130 = lshr i32 %2093, 31
  %2131 = lshr i32 %2109, 31
  %2132 = xor i32 %2128, %2130
  %2133 = xor i32 %2128, %2131
  %2134 = add nuw nsw i32 %2132, %2133
  %2135 = icmp eq i32 %2134, 2
  %2136 = zext i1 %2135 to i8
  store i8 %2136, i8* %62, align 1
  %2137 = add i64 %2098, 200
  %2138 = add i64 %2137, %2104
  %2139 = add i64 %2092, 29
  store i64 %2139, i64* %3, align 8
  %2140 = inttoptr i64 %2138 to i32*
  store i32 %2110, i32* %2140, align 4
  %.pre82 = load i64, i64* %RBP.i, align 8
  %.pre83 = load i64, i64* %3, align 8
  br label %block_.L_46321a

block_.L_46321a:                                  ; preds = %block_4631f0, %block_4631e6, %block_.L_4631c8, %block_4631fd
  %2141 = phi i64 [ %.pre83, %block_4631fd ], [ %2092, %block_4631f0 ], [ %2078, %block_4631e6 ], [ %2064, %block_.L_4631c8 ]
  %2142 = phi i64 [ %.pre82, %block_4631fd ], [ %2037, %block_4631f0 ], [ %2037, %block_4631e6 ], [ %2037, %block_.L_4631c8 ]
  %2143 = add i64 %2142, -144
  %2144 = add i64 %2141, 7
  store i64 %2144, i64* %3, align 8
  %2145 = inttoptr i64 %2143 to i32*
  %2146 = load i32, i32* %2145, align 4
  store i8 0, i8* %38, align 1
  %2147 = and i32 %2146, 255
  %2148 = tail call i32 @llvm.ctpop.i32(i32 %2147)
  %2149 = trunc i32 %2148 to i8
  %2150 = and i8 %2149, 1
  %2151 = xor i8 %2150, 1
  store i8 %2151, i8* %45, align 1
  store i8 0, i8* %50, align 1
  %2152 = icmp eq i32 %2146, 0
  %2153 = zext i1 %2152 to i8
  store i8 %2153, i8* %53, align 1
  %2154 = lshr i32 %2146, 31
  %2155 = trunc i32 %2154 to i8
  store i8 %2155, i8* %56, align 1
  store i8 0, i8* %62, align 1
  %.v120 = select i1 %2152, i64 42, i64 13
  %2156 = add i64 %2141, %.v120
  store i64 %2156, i64* %3, align 8
  br i1 %2152, label %block_.L_463244, label %block_463227

block_463227:                                     ; preds = %block_.L_46321a
  %2157 = load i32, i32* bitcast (%G_0x7afd5c_type* @G_0x7afd5c to i32*), align 8
  %2158 = zext i32 %2157 to i64
  store i64 %2158, i64* %RAX.i1208, align 8
  %2159 = add i64 %2142, -48
  %2160 = add i64 %2156, 11
  store i64 %2160, i64* %3, align 8
  %2161 = inttoptr i64 %2159 to i64*
  %2162 = load i64, i64* %2161, align 8
  store i64 %2162, i64* %RCX.i1233, align 8
  %2163 = add i64 %2142, -80
  %2164 = add i64 %2156, 15
  store i64 %2164, i64* %3, align 8
  %2165 = inttoptr i64 %2163 to i32*
  %2166 = load i32, i32* %2165, align 4
  %2167 = sext i32 %2166 to i64
  store i64 %2167, i64* %RDX.i1225, align 8
  %2168 = shl nsw i64 %2167, 2
  %2169 = add nsw i64 %2168, 200
  %2170 = add i64 %2169, %2162
  %2171 = add i64 %2156, 22
  store i64 %2171, i64* %3, align 8
  %2172 = inttoptr i64 %2170 to i32*
  %2173 = load i32, i32* %2172, align 4
  %2174 = add i32 %2173, %2157
  %2175 = zext i32 %2174 to i64
  store i64 %2175, i64* %RAX.i1208, align 8
  %2176 = icmp ult i32 %2174, %2157
  %2177 = icmp ult i32 %2174, %2173
  %2178 = or i1 %2176, %2177
  %2179 = zext i1 %2178 to i8
  store i8 %2179, i8* %38, align 1
  %2180 = and i32 %2174, 255
  %2181 = tail call i32 @llvm.ctpop.i32(i32 %2180)
  %2182 = trunc i32 %2181 to i8
  %2183 = and i8 %2182, 1
  %2184 = xor i8 %2183, 1
  store i8 %2184, i8* %45, align 1
  %2185 = xor i32 %2173, %2157
  %2186 = xor i32 %2185, %2174
  %2187 = lshr i32 %2186, 4
  %2188 = trunc i32 %2187 to i8
  %2189 = and i8 %2188, 1
  store i8 %2189, i8* %50, align 1
  %2190 = icmp eq i32 %2174, 0
  %2191 = zext i1 %2190 to i8
  store i8 %2191, i8* %53, align 1
  %2192 = lshr i32 %2174, 31
  %2193 = trunc i32 %2192 to i8
  store i8 %2193, i8* %56, align 1
  %2194 = lshr i32 %2157, 31
  %2195 = lshr i32 %2173, 31
  %2196 = xor i32 %2192, %2194
  %2197 = xor i32 %2192, %2195
  %2198 = add nuw nsw i32 %2196, %2197
  %2199 = icmp eq i32 %2198, 2
  %2200 = zext i1 %2199 to i8
  store i8 %2200, i8* %62, align 1
  %2201 = add i64 %2162, 200
  %2202 = add i64 %2201, %2168
  %2203 = add i64 %2156, 29
  store i64 %2203, i64* %3, align 8
  %2204 = inttoptr i64 %2202 to i32*
  store i32 %2174, i32* %2204, align 4
  %.pre84 = load i64, i64* %3, align 8
  %.pre85.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_463244

block_.L_463244:                                  ; preds = %block_463227, %block_.L_46321a
  %.pre85 = phi i64 [ %.pre85.pre, %block_463227 ], [ %2142, %block_.L_46321a ]
  %2205 = phi i64 [ %.pre84, %block_463227 ], [ %2156, %block_.L_46321a ]
  %2206 = add i64 %2205, 5
  store i64 %2206, i64* %3, align 8
  br label %block_.L_463249

block_.L_463249:                                  ; preds = %block_463115, %block_46310b, %block_.L_463244, %block_.L_46311f
  %2207 = phi i64 [ %2206, %block_.L_463244 ], [ %1768, %block_.L_46311f ], [ %1751, %block_463115 ], [ %1737, %block_46310b ]
  %2208 = phi i64 [ %.pre85, %block_.L_463244 ], [ %1674, %block_.L_46311f ], [ %1674, %block_463115 ], [ %1674, %block_46310b ]
  %2209 = add i64 %2208, -132
  %2210 = add i64 %2207, 7
  store i64 %2210, i64* %3, align 8
  %2211 = inttoptr i64 %2209 to i32*
  %2212 = load i32, i32* %2211, align 4
  %2213 = add i32 %2212, -4
  %2214 = icmp ult i32 %2212, 4
  %2215 = zext i1 %2214 to i8
  store i8 %2215, i8* %38, align 1
  %2216 = and i32 %2213, 255
  %2217 = tail call i32 @llvm.ctpop.i32(i32 %2216)
  %2218 = trunc i32 %2217 to i8
  %2219 = and i8 %2218, 1
  %2220 = xor i8 %2219, 1
  store i8 %2220, i8* %45, align 1
  %2221 = xor i32 %2213, %2212
  %2222 = lshr i32 %2221, 4
  %2223 = trunc i32 %2222 to i8
  %2224 = and i8 %2223, 1
  store i8 %2224, i8* %50, align 1
  %2225 = icmp eq i32 %2213, 0
  %2226 = zext i1 %2225 to i8
  store i8 %2226, i8* %53, align 1
  %2227 = lshr i32 %2213, 31
  %2228 = trunc i32 %2227 to i8
  store i8 %2228, i8* %56, align 1
  %2229 = lshr i32 %2212, 31
  %2230 = xor i32 %2227, %2229
  %2231 = add nuw nsw i32 %2230, %2229
  %2232 = icmp eq i32 %2231, 2
  %2233 = zext i1 %2232 to i8
  store i8 %2233, i8* %62, align 1
  %2234 = icmp ne i8 %2228, 0
  %2235 = xor i1 %2234, %2232
  %.demorgan102 = or i1 %2225, %2235
  %.v121 = select i1 %.demorgan102, i64 13, i64 18
  %2236 = add i64 %2207, %.v121
  store i64 %2236, i64* %3, align 8
  br i1 %.demorgan102, label %block_463256, label %block_.L_46325b

block_463256:                                     ; preds = %block_.L_463249
  %2237 = add i64 %2236, 45
  store i64 %2237, i64* %3, align 8
  br label %block_.L_463283

block_.L_46325b:                                  ; preds = %block_.L_463249
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i1218, align 8
  store i64 4300, i64* %RSI.i1239, align 8
  store i64 ptrtoint (%G__0x57fdbf_type* @G__0x57fdbf to i64), i64* %RDX.i1225, align 8
  store i64 4294967295, i64* %RAX.i1208, align 8
  store i64 4294967295, i64* %RCX.i1233, align 8
  store i64 4294967295, i64* %R8.i, align 8
  %2238 = add i64 %2236, -70091
  %2239 = add i64 %2236, 40
  %2240 = load i64, i64* %6, align 8
  %2241 = add i64 %2240, -8
  %2242 = inttoptr i64 %2241 to i64*
  store i64 %2239, i64* %2242, align 8
  store i64 %2241, i64* %6, align 8
  store i64 %2238, i64* %3, align 8
  %call2_46327e = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %2238, %struct.Memory* %call2_462cc6)
  %.pre86 = load i64, i64* %RBP.i, align 8
  %.pre87 = load i64, i64* %3, align 8
  br label %block_.L_463283

block_.L_463283:                                  ; preds = %block_.L_46325b, %block_463256
  %2243 = phi i64 [ %.pre87, %block_.L_46325b ], [ %2237, %block_463256 ]
  %2244 = phi i64 [ %.pre86, %block_.L_46325b ], [ %2208, %block_463256 ]
  %2245 = add i64 %2244, -132
  %2246 = add i64 %2243, 7
  store i64 %2246, i64* %3, align 8
  %2247 = inttoptr i64 %2245 to i32*
  %2248 = load i32, i32* %2247, align 4
  %2249 = sext i32 %2248 to i64
  store i64 %2249, i64* %RAX.i1208, align 8
  %2250 = shl nsw i64 %2249, 2
  %2251 = add nsw i64 %2250, 8060256
  %2252 = add i64 %2243, 14
  store i64 %2252, i64* %3, align 8
  %2253 = inttoptr i64 %2251 to i32*
  %2254 = load i32, i32* %2253, align 4
  %2255 = zext i32 %2254 to i64
  store i64 %2255, i64* %RCX.i1233, align 8
  %2256 = add i64 %2244, -48
  %2257 = add i64 %2243, 18
  store i64 %2257, i64* %3, align 8
  %2258 = inttoptr i64 %2256 to i64*
  %2259 = load i64, i64* %2258, align 8
  store i64 %2259, i64* %RAX.i1208, align 8
  %2260 = add i64 %2244, -80
  %2261 = add i64 %2243, 22
  store i64 %2261, i64* %3, align 8
  %2262 = inttoptr i64 %2260 to i32*
  %2263 = load i32, i32* %2262, align 4
  %2264 = sext i32 %2263 to i64
  store i64 %2264, i64* %RDX.i1225, align 8
  %2265 = shl nsw i64 %2264, 2
  %2266 = add nsw i64 %2265, 200
  %2267 = add i64 %2266, %2259
  %2268 = add i64 %2243, 29
  store i64 %2268, i64* %3, align 8
  %2269 = inttoptr i64 %2267 to i32*
  %2270 = load i32, i32* %2269, align 4
  %2271 = add i32 %2270, %2254
  %2272 = zext i32 %2271 to i64
  store i64 %2272, i64* %RCX.i1233, align 8
  %2273 = icmp ult i32 %2271, %2254
  %2274 = icmp ult i32 %2271, %2270
  %2275 = or i1 %2273, %2274
  %2276 = zext i1 %2275 to i8
  store i8 %2276, i8* %38, align 1
  %2277 = and i32 %2271, 255
  %2278 = tail call i32 @llvm.ctpop.i32(i32 %2277)
  %2279 = trunc i32 %2278 to i8
  %2280 = and i8 %2279, 1
  %2281 = xor i8 %2280, 1
  store i8 %2281, i8* %45, align 1
  %2282 = xor i32 %2270, %2254
  %2283 = xor i32 %2282, %2271
  %2284 = lshr i32 %2283, 4
  %2285 = trunc i32 %2284 to i8
  %2286 = and i8 %2285, 1
  store i8 %2286, i8* %50, align 1
  %2287 = icmp eq i32 %2271, 0
  %2288 = zext i1 %2287 to i8
  store i8 %2288, i8* %53, align 1
  %2289 = lshr i32 %2271, 31
  %2290 = trunc i32 %2289 to i8
  store i8 %2290, i8* %56, align 1
  %2291 = lshr i32 %2254, 31
  %2292 = lshr i32 %2270, 31
  %2293 = xor i32 %2289, %2291
  %2294 = xor i32 %2289, %2292
  %2295 = add nuw nsw i32 %2293, %2294
  %2296 = icmp eq i32 %2295, 2
  %2297 = zext i1 %2296 to i8
  store i8 %2297, i8* %62, align 1
  %2298 = add i64 %2259, 200
  %2299 = add i64 %2298, %2265
  %2300 = add i64 %2243, 36
  store i64 %2300, i64* %3, align 8
  %2301 = inttoptr i64 %2299 to i32*
  store i32 %2271, i32* %2301, align 4
  %2302 = load i64, i64* %RBP.i, align 8
  %2303 = add i64 %2302, -104
  %2304 = load i64, i64* %3, align 8
  %2305 = add i64 %2304, 4
  store i64 %2305, i64* %3, align 8
  %2306 = inttoptr i64 %2303 to i32*
  %2307 = load i32, i32* %2306, align 4
  store i8 0, i8* %38, align 1
  %2308 = and i32 %2307, 255
  %2309 = tail call i32 @llvm.ctpop.i32(i32 %2308)
  %2310 = trunc i32 %2309 to i8
  %2311 = and i8 %2310, 1
  %2312 = xor i8 %2311, 1
  store i8 %2312, i8* %45, align 1
  store i8 0, i8* %50, align 1
  %2313 = icmp eq i32 %2307, 0
  %2314 = zext i1 %2313 to i8
  store i8 %2314, i8* %53, align 1
  %2315 = lshr i32 %2307, 31
  %2316 = trunc i32 %2315 to i8
  store i8 %2316, i8* %56, align 1
  store i8 0, i8* %62, align 1
  %.v122 = select i1 %2313, i64 10, i64 39
  %2317 = add i64 %2304, %.v122
  store i64 %2317, i64* %3, align 8
  br i1 %2313, label %block_4632b1, label %block_.L_4632ce

block_4632b1:                                     ; preds = %block_.L_463283
  %2318 = load i32, i32* bitcast (%G_0x7afd74_type* @G_0x7afd74 to i32*), align 8
  %2319 = zext i32 %2318 to i64
  store i64 %2319, i64* %RAX.i1208, align 8
  %2320 = add i64 %2302, -48
  %2321 = add i64 %2317, 11
  store i64 %2321, i64* %3, align 8
  %2322 = inttoptr i64 %2320 to i64*
  %2323 = load i64, i64* %2322, align 8
  store i64 %2323, i64* %RCX.i1233, align 8
  %2324 = add i64 %2302, -80
  %2325 = add i64 %2317, 15
  store i64 %2325, i64* %3, align 8
  %2326 = inttoptr i64 %2324 to i32*
  %2327 = load i32, i32* %2326, align 4
  %2328 = sext i32 %2327 to i64
  store i64 %2328, i64* %RDX.i1225, align 8
  %2329 = shl nsw i64 %2328, 2
  %2330 = add nsw i64 %2329, 200
  %2331 = add i64 %2330, %2323
  %2332 = add i64 %2317, 22
  store i64 %2332, i64* %3, align 8
  %2333 = inttoptr i64 %2331 to i32*
  %2334 = load i32, i32* %2333, align 4
  %2335 = add i32 %2334, %2318
  %2336 = zext i32 %2335 to i64
  store i64 %2336, i64* %RAX.i1208, align 8
  %2337 = icmp ult i32 %2335, %2318
  %2338 = icmp ult i32 %2335, %2334
  %2339 = or i1 %2337, %2338
  %2340 = zext i1 %2339 to i8
  store i8 %2340, i8* %38, align 1
  %2341 = and i32 %2335, 255
  %2342 = tail call i32 @llvm.ctpop.i32(i32 %2341)
  %2343 = trunc i32 %2342 to i8
  %2344 = and i8 %2343, 1
  %2345 = xor i8 %2344, 1
  store i8 %2345, i8* %45, align 1
  %2346 = xor i32 %2334, %2318
  %2347 = xor i32 %2346, %2335
  %2348 = lshr i32 %2347, 4
  %2349 = trunc i32 %2348 to i8
  %2350 = and i8 %2349, 1
  store i8 %2350, i8* %50, align 1
  %2351 = icmp eq i32 %2335, 0
  %2352 = zext i1 %2351 to i8
  store i8 %2352, i8* %53, align 1
  %2353 = lshr i32 %2335, 31
  %2354 = trunc i32 %2353 to i8
  store i8 %2354, i8* %56, align 1
  %2355 = lshr i32 %2318, 31
  %2356 = lshr i32 %2334, 31
  %2357 = xor i32 %2353, %2355
  %2358 = xor i32 %2353, %2356
  %2359 = add nuw nsw i32 %2357, %2358
  %2360 = icmp eq i32 %2359, 2
  %2361 = zext i1 %2360 to i8
  store i8 %2361, i8* %62, align 1
  %2362 = add i64 %2323, 200
  %2363 = add i64 %2362, %2329
  %2364 = add i64 %2317, 29
  store i64 %2364, i64* %3, align 8
  %2365 = inttoptr i64 %2363 to i32*
  store i32 %2335, i32* %2365, align 4
  %.pre88 = load i64, i64* %RBP.i, align 8
  %.pre89 = load i64, i64* %3, align 8
  br label %block_.L_4632ce

block_.L_4632ce:                                  ; preds = %block_.L_463283, %block_4632b1
  %2366 = phi i64 [ %.pre89, %block_4632b1 ], [ %2317, %block_.L_463283 ]
  %2367 = phi i64 [ %.pre88, %block_4632b1 ], [ %2302, %block_.L_463283 ]
  %2368 = add i64 %2367, -120
  %2369 = add i64 %2366, 4
  store i64 %2369, i64* %3, align 8
  %2370 = inttoptr i64 %2368 to i32*
  %2371 = load i32, i32* %2370, align 4
  %2372 = add i32 %2371, -5
  %2373 = icmp ult i32 %2371, 5
  %2374 = zext i1 %2373 to i8
  store i8 %2374, i8* %38, align 1
  %2375 = and i32 %2372, 255
  %2376 = tail call i32 @llvm.ctpop.i32(i32 %2375)
  %2377 = trunc i32 %2376 to i8
  %2378 = and i8 %2377, 1
  %2379 = xor i8 %2378, 1
  store i8 %2379, i8* %45, align 1
  %2380 = xor i32 %2372, %2371
  %2381 = lshr i32 %2380, 4
  %2382 = trunc i32 %2381 to i8
  %2383 = and i8 %2382, 1
  store i8 %2383, i8* %50, align 1
  %2384 = icmp eq i32 %2372, 0
  %2385 = zext i1 %2384 to i8
  store i8 %2385, i8* %53, align 1
  %2386 = lshr i32 %2372, 31
  %2387 = trunc i32 %2386 to i8
  store i8 %2387, i8* %56, align 1
  %2388 = lshr i32 %2371, 31
  %2389 = xor i32 %2386, %2388
  %2390 = add nuw nsw i32 %2389, %2388
  %2391 = icmp eq i32 %2390, 2
  %2392 = zext i1 %2391 to i8
  store i8 %2392, i8* %62, align 1
  %2393 = icmp ne i8 %2387, 0
  %2394 = xor i1 %2393, %2391
  %.demorgan103 = or i1 %2384, %2394
  %.v123 = select i1 %.demorgan103, i64 10, i64 48
  %2395 = add i64 %2366, %.v123
  store i64 %2395, i64* %3, align 8
  br i1 %.demorgan103, label %block_4632d8, label %block_.L_4632fe

block_4632d8:                                     ; preds = %block_.L_4632ce
  %2396 = add i64 %2395, 4
  store i64 %2396, i64* %3, align 8
  %2397 = load i32, i32* %2370, align 4
  %2398 = sext i32 %2397 to i64
  store i64 %2398, i64* %RAX.i1208, align 8
  %2399 = shl nsw i64 %2398, 2
  %2400 = add nsw i64 %2399, 8060288
  %2401 = add i64 %2395, 11
  store i64 %2401, i64* %3, align 8
  %2402 = inttoptr i64 %2400 to i32*
  %2403 = load i32, i32* %2402, align 4
  %2404 = zext i32 %2403 to i64
  store i64 %2404, i64* %RCX.i1233, align 8
  %2405 = add i64 %2367, -48
  %2406 = add i64 %2395, 15
  store i64 %2406, i64* %3, align 8
  %2407 = inttoptr i64 %2405 to i64*
  %2408 = load i64, i64* %2407, align 8
  store i64 %2408, i64* %RAX.i1208, align 8
  %2409 = add i64 %2367, -80
  %2410 = add i64 %2395, 19
  store i64 %2410, i64* %3, align 8
  %2411 = inttoptr i64 %2409 to i32*
  %2412 = load i32, i32* %2411, align 4
  %2413 = sext i32 %2412 to i64
  store i64 %2413, i64* %RDX.i1225, align 8
  %2414 = shl nsw i64 %2413, 2
  %2415 = add nsw i64 %2414, 200
  %2416 = add i64 %2415, %2408
  %2417 = add i64 %2395, 26
  store i64 %2417, i64* %3, align 8
  %2418 = inttoptr i64 %2416 to i32*
  %2419 = load i32, i32* %2418, align 4
  %2420 = add i32 %2419, %2403
  %2421 = zext i32 %2420 to i64
  store i64 %2421, i64* %RCX.i1233, align 8
  %2422 = icmp ult i32 %2420, %2403
  %2423 = icmp ult i32 %2420, %2419
  %2424 = or i1 %2422, %2423
  %2425 = zext i1 %2424 to i8
  store i8 %2425, i8* %38, align 1
  %2426 = and i32 %2420, 255
  %2427 = tail call i32 @llvm.ctpop.i32(i32 %2426)
  %2428 = trunc i32 %2427 to i8
  %2429 = and i8 %2428, 1
  %2430 = xor i8 %2429, 1
  store i8 %2430, i8* %45, align 1
  %2431 = xor i32 %2419, %2403
  %2432 = xor i32 %2431, %2420
  %2433 = lshr i32 %2432, 4
  %2434 = trunc i32 %2433 to i8
  %2435 = and i8 %2434, 1
  store i8 %2435, i8* %50, align 1
  %2436 = icmp eq i32 %2420, 0
  %2437 = zext i1 %2436 to i8
  store i8 %2437, i8* %53, align 1
  %2438 = lshr i32 %2420, 31
  %2439 = trunc i32 %2438 to i8
  store i8 %2439, i8* %56, align 1
  %2440 = lshr i32 %2403, 31
  %2441 = lshr i32 %2419, 31
  %2442 = xor i32 %2438, %2440
  %2443 = xor i32 %2438, %2441
  %2444 = add nuw nsw i32 %2442, %2443
  %2445 = icmp eq i32 %2444, 2
  %2446 = zext i1 %2445 to i8
  store i8 %2446, i8* %62, align 1
  %2447 = add i64 %2408, 200
  %2448 = add i64 %2447, %2414
  %2449 = add i64 %2395, 33
  store i64 %2449, i64* %3, align 8
  %2450 = inttoptr i64 %2448 to i32*
  store i32 %2420, i32* %2450, align 4
  %2451 = load i64, i64* %3, align 8
  %2452 = add i64 %2451, 34
  store i64 %2452, i64* %3, align 8
  br label %block_.L_46331b

block_.L_4632fe:                                  ; preds = %block_.L_4632ce
  %2453 = load i32, i32* bitcast (%G_0x7afd94_type* @G_0x7afd94 to i32*), align 8
  %2454 = zext i32 %2453 to i64
  store i64 %2454, i64* %RAX.i1208, align 8
  %2455 = add i64 %2367, -48
  %2456 = add i64 %2395, 11
  store i64 %2456, i64* %3, align 8
  %2457 = inttoptr i64 %2455 to i64*
  %2458 = load i64, i64* %2457, align 8
  store i64 %2458, i64* %RCX.i1233, align 8
  %2459 = add i64 %2367, -80
  %2460 = add i64 %2395, 15
  store i64 %2460, i64* %3, align 8
  %2461 = inttoptr i64 %2459 to i32*
  %2462 = load i32, i32* %2461, align 4
  %2463 = sext i32 %2462 to i64
  store i64 %2463, i64* %RDX.i1225, align 8
  %2464 = shl nsw i64 %2463, 2
  %2465 = add nsw i64 %2464, 200
  %2466 = add i64 %2465, %2458
  %2467 = add i64 %2395, 22
  store i64 %2467, i64* %3, align 8
  %2468 = inttoptr i64 %2466 to i32*
  %2469 = load i32, i32* %2468, align 4
  %2470 = add i32 %2469, %2453
  %2471 = zext i32 %2470 to i64
  store i64 %2471, i64* %RAX.i1208, align 8
  %2472 = icmp ult i32 %2470, %2453
  %2473 = icmp ult i32 %2470, %2469
  %2474 = or i1 %2472, %2473
  %2475 = zext i1 %2474 to i8
  store i8 %2475, i8* %38, align 1
  %2476 = and i32 %2470, 255
  %2477 = tail call i32 @llvm.ctpop.i32(i32 %2476)
  %2478 = trunc i32 %2477 to i8
  %2479 = and i8 %2478, 1
  %2480 = xor i8 %2479, 1
  store i8 %2480, i8* %45, align 1
  %2481 = xor i32 %2469, %2453
  %2482 = xor i32 %2481, %2470
  %2483 = lshr i32 %2482, 4
  %2484 = trunc i32 %2483 to i8
  %2485 = and i8 %2484, 1
  store i8 %2485, i8* %50, align 1
  %2486 = icmp eq i32 %2470, 0
  %2487 = zext i1 %2486 to i8
  store i8 %2487, i8* %53, align 1
  %2488 = lshr i32 %2470, 31
  %2489 = trunc i32 %2488 to i8
  store i8 %2489, i8* %56, align 1
  %2490 = lshr i32 %2453, 31
  %2491 = lshr i32 %2469, 31
  %2492 = xor i32 %2488, %2490
  %2493 = xor i32 %2488, %2491
  %2494 = add nuw nsw i32 %2492, %2493
  %2495 = icmp eq i32 %2494, 2
  %2496 = zext i1 %2495 to i8
  store i8 %2496, i8* %62, align 1
  %2497 = add i64 %2458, 200
  %2498 = add i64 %2497, %2464
  %2499 = add i64 %2395, 29
  store i64 %2499, i64* %3, align 8
  %2500 = inttoptr i64 %2498 to i32*
  store i32 %2470, i32* %2500, align 4
  %.pre90 = load i64, i64* %3, align 8
  br label %block_.L_46331b

block_.L_46331b:                                  ; preds = %block_.L_4632fe, %block_4632d8
  %2501 = phi i64 [ %.pre90, %block_.L_4632fe ], [ %2452, %block_4632d8 ]
  %2502 = load i64, i64* %RBP.i, align 8
  %2503 = add i64 %2502, -128
  %2504 = add i64 %2501, 4
  store i64 %2504, i64* %3, align 8
  %2505 = inttoptr i64 %2503 to i32*
  %2506 = load i32, i32* %2505, align 4
  %2507 = add i32 %2506, -5
  %2508 = icmp ult i32 %2506, 5
  %2509 = zext i1 %2508 to i8
  store i8 %2509, i8* %38, align 1
  %2510 = and i32 %2507, 255
  %2511 = tail call i32 @llvm.ctpop.i32(i32 %2510)
  %2512 = trunc i32 %2511 to i8
  %2513 = and i8 %2512, 1
  %2514 = xor i8 %2513, 1
  store i8 %2514, i8* %45, align 1
  %2515 = xor i32 %2507, %2506
  %2516 = lshr i32 %2515, 4
  %2517 = trunc i32 %2516 to i8
  %2518 = and i8 %2517, 1
  store i8 %2518, i8* %50, align 1
  %2519 = icmp eq i32 %2507, 0
  %2520 = zext i1 %2519 to i8
  store i8 %2520, i8* %53, align 1
  %2521 = lshr i32 %2507, 31
  %2522 = trunc i32 %2521 to i8
  store i8 %2522, i8* %56, align 1
  %2523 = lshr i32 %2506, 31
  %2524 = xor i32 %2521, %2523
  %2525 = add nuw nsw i32 %2524, %2523
  %2526 = icmp eq i32 %2525, 2
  %2527 = zext i1 %2526 to i8
  store i8 %2527, i8* %62, align 1
  %2528 = icmp ne i8 %2522, 0
  %2529 = xor i1 %2528, %2526
  %.demorgan104 = or i1 %2519, %2529
  %.v124 = select i1 %.demorgan104, i64 10, i64 48
  %2530 = add i64 %2501, %.v124
  store i64 %2530, i64* %3, align 8
  br i1 %.demorgan104, label %block_463325, label %block_.L_46334b

block_463325:                                     ; preds = %block_.L_46331b
  %2531 = add i64 %2530, 4
  store i64 %2531, i64* %3, align 8
  %2532 = load i32, i32* %2505, align 4
  %2533 = sext i32 %2532 to i64
  store i64 %2533, i64* %RAX.i1208, align 8
  %2534 = shl nsw i64 %2533, 2
  %2535 = add nsw i64 %2534, 8060320
  %2536 = add i64 %2530, 11
  store i64 %2536, i64* %3, align 8
  %2537 = inttoptr i64 %2535 to i32*
  %2538 = load i32, i32* %2537, align 4
  %2539 = zext i32 %2538 to i64
  store i64 %2539, i64* %RCX.i1233, align 8
  %2540 = add i64 %2502, -48
  %2541 = add i64 %2530, 15
  store i64 %2541, i64* %3, align 8
  %2542 = inttoptr i64 %2540 to i64*
  %2543 = load i64, i64* %2542, align 8
  store i64 %2543, i64* %RAX.i1208, align 8
  %2544 = add i64 %2502, -80
  %2545 = add i64 %2530, 19
  store i64 %2545, i64* %3, align 8
  %2546 = inttoptr i64 %2544 to i32*
  %2547 = load i32, i32* %2546, align 4
  %2548 = sext i32 %2547 to i64
  store i64 %2548, i64* %RDX.i1225, align 8
  %2549 = shl nsw i64 %2548, 2
  %2550 = add nsw i64 %2549, 200
  %2551 = add i64 %2550, %2543
  %2552 = add i64 %2530, 26
  store i64 %2552, i64* %3, align 8
  %2553 = inttoptr i64 %2551 to i32*
  %2554 = load i32, i32* %2553, align 4
  %2555 = add i32 %2554, %2538
  %2556 = zext i32 %2555 to i64
  store i64 %2556, i64* %RCX.i1233, align 8
  %2557 = icmp ult i32 %2555, %2538
  %2558 = icmp ult i32 %2555, %2554
  %2559 = or i1 %2557, %2558
  %2560 = zext i1 %2559 to i8
  store i8 %2560, i8* %38, align 1
  %2561 = and i32 %2555, 255
  %2562 = tail call i32 @llvm.ctpop.i32(i32 %2561)
  %2563 = trunc i32 %2562 to i8
  %2564 = and i8 %2563, 1
  %2565 = xor i8 %2564, 1
  store i8 %2565, i8* %45, align 1
  %2566 = xor i32 %2554, %2538
  %2567 = xor i32 %2566, %2555
  %2568 = lshr i32 %2567, 4
  %2569 = trunc i32 %2568 to i8
  %2570 = and i8 %2569, 1
  store i8 %2570, i8* %50, align 1
  %2571 = icmp eq i32 %2555, 0
  %2572 = zext i1 %2571 to i8
  store i8 %2572, i8* %53, align 1
  %2573 = lshr i32 %2555, 31
  %2574 = trunc i32 %2573 to i8
  store i8 %2574, i8* %56, align 1
  %2575 = lshr i32 %2538, 31
  %2576 = lshr i32 %2554, 31
  %2577 = xor i32 %2573, %2575
  %2578 = xor i32 %2573, %2576
  %2579 = add nuw nsw i32 %2577, %2578
  %2580 = icmp eq i32 %2579, 2
  %2581 = zext i1 %2580 to i8
  store i8 %2581, i8* %62, align 1
  %2582 = add i64 %2543, 200
  %2583 = add i64 %2582, %2549
  %2584 = add i64 %2530, 33
  store i64 %2584, i64* %3, align 8
  %2585 = inttoptr i64 %2583 to i32*
  store i32 %2555, i32* %2585, align 4
  %2586 = load i64, i64* %3, align 8
  %2587 = add i64 %2586, 34
  store i64 %2587, i64* %3, align 8
  br label %block_.L_463368

block_.L_46334b:                                  ; preds = %block_.L_46331b
  %2588 = load i32, i32* bitcast (%G_0x7afdb4_type* @G_0x7afdb4 to i32*), align 8
  %2589 = zext i32 %2588 to i64
  store i64 %2589, i64* %RAX.i1208, align 8
  %2590 = add i64 %2502, -48
  %2591 = add i64 %2530, 11
  store i64 %2591, i64* %3, align 8
  %2592 = inttoptr i64 %2590 to i64*
  %2593 = load i64, i64* %2592, align 8
  store i64 %2593, i64* %RCX.i1233, align 8
  %2594 = add i64 %2502, -80
  %2595 = add i64 %2530, 15
  store i64 %2595, i64* %3, align 8
  %2596 = inttoptr i64 %2594 to i32*
  %2597 = load i32, i32* %2596, align 4
  %2598 = sext i32 %2597 to i64
  store i64 %2598, i64* %RDX.i1225, align 8
  %2599 = shl nsw i64 %2598, 2
  %2600 = add nsw i64 %2599, 200
  %2601 = add i64 %2600, %2593
  %2602 = add i64 %2530, 22
  store i64 %2602, i64* %3, align 8
  %2603 = inttoptr i64 %2601 to i32*
  %2604 = load i32, i32* %2603, align 4
  %2605 = add i32 %2604, %2588
  %2606 = zext i32 %2605 to i64
  store i64 %2606, i64* %RAX.i1208, align 8
  %2607 = icmp ult i32 %2605, %2588
  %2608 = icmp ult i32 %2605, %2604
  %2609 = or i1 %2607, %2608
  %2610 = zext i1 %2609 to i8
  store i8 %2610, i8* %38, align 1
  %2611 = and i32 %2605, 255
  %2612 = tail call i32 @llvm.ctpop.i32(i32 %2611)
  %2613 = trunc i32 %2612 to i8
  %2614 = and i8 %2613, 1
  %2615 = xor i8 %2614, 1
  store i8 %2615, i8* %45, align 1
  %2616 = xor i32 %2604, %2588
  %2617 = xor i32 %2616, %2605
  %2618 = lshr i32 %2617, 4
  %2619 = trunc i32 %2618 to i8
  %2620 = and i8 %2619, 1
  store i8 %2620, i8* %50, align 1
  %2621 = icmp eq i32 %2605, 0
  %2622 = zext i1 %2621 to i8
  store i8 %2622, i8* %53, align 1
  %2623 = lshr i32 %2605, 31
  %2624 = trunc i32 %2623 to i8
  store i8 %2624, i8* %56, align 1
  %2625 = lshr i32 %2588, 31
  %2626 = lshr i32 %2604, 31
  %2627 = xor i32 %2623, %2625
  %2628 = xor i32 %2623, %2626
  %2629 = add nuw nsw i32 %2627, %2628
  %2630 = icmp eq i32 %2629, 2
  %2631 = zext i1 %2630 to i8
  store i8 %2631, i8* %62, align 1
  %2632 = add i64 %2593, 200
  %2633 = add i64 %2632, %2599
  %2634 = add i64 %2530, 29
  store i64 %2634, i64* %3, align 8
  %2635 = inttoptr i64 %2633 to i32*
  store i32 %2605, i32* %2635, align 4
  %.pre91 = load i64, i64* %3, align 8
  br label %block_.L_463368

block_.L_463368:                                  ; preds = %block_.L_46334b, %block_463325
  %2636 = phi i64 [ %.pre91, %block_.L_46334b ], [ %2587, %block_463325 ]
  %2637 = add i64 %2636, 5
  store i64 %2637, i64* %3, align 8
  br label %block_.L_46336d

block_.L_46336d:                                  ; preds = %block_.L_463368, %block_.L_46306b
  %storemerge40 = phi i64 [ %1472, %block_.L_46306b ], [ %2637, %block_.L_463368 ]
  %2638 = load i64, i64* %RBP.i, align 8
  %2639 = add i64 %2638, -80
  %2640 = add i64 %storemerge40, 8
  store i64 %2640, i64* %3, align 8
  %2641 = inttoptr i64 %2639 to i32*
  %2642 = load i32, i32* %2641, align 4
  %2643 = add i32 %2642, 1
  %2644 = zext i32 %2643 to i64
  store i64 %2644, i64* %RAX.i1208, align 8
  %2645 = icmp eq i32 %2642, -1
  %2646 = icmp eq i32 %2643, 0
  %2647 = or i1 %2645, %2646
  %2648 = zext i1 %2647 to i8
  store i8 %2648, i8* %38, align 1
  %2649 = and i32 %2643, 255
  %2650 = tail call i32 @llvm.ctpop.i32(i32 %2649)
  %2651 = trunc i32 %2650 to i8
  %2652 = and i8 %2651, 1
  %2653 = xor i8 %2652, 1
  store i8 %2653, i8* %45, align 1
  %2654 = xor i32 %2643, %2642
  %2655 = lshr i32 %2654, 4
  %2656 = trunc i32 %2655 to i8
  %2657 = and i8 %2656, 1
  store i8 %2657, i8* %50, align 1
  %2658 = zext i1 %2646 to i8
  store i8 %2658, i8* %53, align 1
  %2659 = lshr i32 %2643, 31
  %2660 = trunc i32 %2659 to i8
  store i8 %2660, i8* %56, align 1
  %2661 = lshr i32 %2642, 31
  %2662 = xor i32 %2659, %2661
  %2663 = add nuw nsw i32 %2662, %2659
  %2664 = icmp eq i32 %2663, 2
  %2665 = zext i1 %2664 to i8
  store i8 %2665, i8* %62, align 1
  %2666 = add i64 %storemerge40, 14
  store i64 %2666, i64* %3, align 8
  store i32 %2643, i32* %2641, align 4
  %2667 = load i64, i64* %3, align 8
  %2668 = add i64 %2667, -1676
  store i64 %2668, i64* %3, align 8
  br label %block_.L_462cef

block_.L_463380:                                  ; preds = %block_.L_462cef
  %2669 = add i64 %181, -68
  %2670 = add i64 %221, 3
  store i64 %2670, i64* %3, align 8
  %2671 = inttoptr i64 %2669 to i32*
  %2672 = load i32, i32* %2671, align 4
  %2673 = zext i32 %2672 to i64
  store i64 %2673, i64* %RAX.i1208, align 8
  %2674 = add i64 %181, -84
  %2675 = add i64 %221, 6
  store i64 %2675, i64* %3, align 8
  %2676 = inttoptr i64 %2674 to i32*
  store i32 %2672, i32* %2676, align 4
  %.pre51 = load i64, i64* %3, align 8
  br label %block_.L_463386

block_.L_463386:                                  ; preds = %block_.L_463488, %block_.L_463380
  %2677 = phi i64 [ %3072, %block_.L_463488 ], [ %.pre51, %block_.L_463380 ]
  %2678 = load i64, i64* %RBP.i, align 8
  %2679 = add i64 %2678, -84
  %2680 = add i64 %2677, 3
  store i64 %2680, i64* %3, align 8
  %2681 = inttoptr i64 %2679 to i32*
  %2682 = load i32, i32* %2681, align 4
  %2683 = zext i32 %2682 to i64
  store i64 %2683, i64* %RAX.i1208, align 8
  %2684 = add i64 %2678, -48
  %2685 = add i64 %2677, 7
  store i64 %2685, i64* %3, align 8
  %2686 = inttoptr i64 %2684 to i64*
  %2687 = load i64, i64* %2686, align 8
  store i64 %2687, i64* %RCX.i1233, align 8
  %2688 = add i64 %2687, 400
  %2689 = add i64 %2677, 13
  store i64 %2689, i64* %3, align 8
  %2690 = inttoptr i64 %2688 to i32*
  %2691 = load i32, i32* %2690, align 4
  %2692 = add i32 %2691, -1
  %2693 = zext i32 %2692 to i64
  store i64 %2693, i64* %RDX.i1225, align 8
  %2694 = lshr i32 %2692, 31
  %2695 = sub i32 %2682, %2692
  %2696 = icmp ult i32 %2682, %2692
  %2697 = zext i1 %2696 to i8
  store i8 %2697, i8* %38, align 1
  %2698 = and i32 %2695, 255
  %2699 = tail call i32 @llvm.ctpop.i32(i32 %2698)
  %2700 = trunc i32 %2699 to i8
  %2701 = and i8 %2700, 1
  %2702 = xor i8 %2701, 1
  store i8 %2702, i8* %45, align 1
  %2703 = xor i32 %2692, %2682
  %2704 = xor i32 %2703, %2695
  %2705 = lshr i32 %2704, 4
  %2706 = trunc i32 %2705 to i8
  %2707 = and i8 %2706, 1
  store i8 %2707, i8* %50, align 1
  %2708 = icmp eq i32 %2695, 0
  %2709 = zext i1 %2708 to i8
  store i8 %2709, i8* %53, align 1
  %2710 = lshr i32 %2695, 31
  %2711 = trunc i32 %2710 to i8
  store i8 %2711, i8* %56, align 1
  %2712 = lshr i32 %2682, 31
  %2713 = xor i32 %2694, %2712
  %2714 = xor i32 %2710, %2712
  %2715 = add nuw nsw i32 %2714, %2713
  %2716 = icmp eq i32 %2715, 2
  %2717 = zext i1 %2716 to i8
  store i8 %2717, i8* %62, align 1
  %2718 = icmp ne i8 %2711, 0
  %2719 = xor i1 %2718, %2716
  %.v107 = select i1 %2719, i64 24, i64 277
  %2720 = add i64 %2677, %.v107
  store i64 %2720, i64* %3, align 8
  br i1 %2719, label %block_46339e, label %block_.L_46349b

block_46339e:                                     ; preds = %block_.L_463386
  %2721 = add i64 %2720, 4
  store i64 %2721, i64* %3, align 8
  %2722 = load i64, i64* %2686, align 8
  store i64 %2722, i64* %RAX.i1208, align 8
  %2723 = add i64 %2720, 8
  store i64 %2723, i64* %3, align 8
  %2724 = load i32, i32* %2681, align 4
  %2725 = sext i32 %2724 to i64
  store i64 %2725, i64* %RCX.i1233, align 8
  %2726 = shl nsw i64 %2725, 2
  %2727 = add i64 %2722, 200
  %2728 = add i64 %2727, %2726
  %2729 = add i64 %2720, 15
  store i64 %2729, i64* %3, align 8
  %2730 = inttoptr i64 %2728 to i32*
  %2731 = load i32, i32* %2730, align 4
  %2732 = zext i32 %2731 to i64
  store i64 %2732, i64* %RDX.i1225, align 8
  %2733 = add i64 %2678, -92
  %2734 = add i64 %2720, 18
  store i64 %2734, i64* %3, align 8
  %2735 = inttoptr i64 %2733 to i32*
  store i32 %2731, i32* %2735, align 4
  %2736 = load i64, i64* %RBP.i, align 8
  %2737 = add i64 %2736, -96
  %2738 = load i64, i64* %3, align 8
  %2739 = add i64 %2738, 7
  store i64 %2739, i64* %3, align 8
  %2740 = inttoptr i64 %2737 to i32*
  store i32 0, i32* %2740, align 4
  %2741 = load i64, i64* %RBP.i, align 8
  %2742 = add i64 %2741, -84
  %2743 = load i64, i64* %3, align 8
  %2744 = add i64 %2743, 3
  store i64 %2744, i64* %3, align 8
  %2745 = inttoptr i64 %2742 to i32*
  %2746 = load i32, i32* %2745, align 4
  %2747 = add i32 %2746, 1
  %2748 = zext i32 %2747 to i64
  store i64 %2748, i64* %RDX.i1225, align 8
  %2749 = icmp eq i32 %2746, -1
  %2750 = icmp eq i32 %2747, 0
  %2751 = or i1 %2749, %2750
  %2752 = zext i1 %2751 to i8
  store i8 %2752, i8* %38, align 1
  %2753 = and i32 %2747, 255
  %2754 = tail call i32 @llvm.ctpop.i32(i32 %2753)
  %2755 = trunc i32 %2754 to i8
  %2756 = and i8 %2755, 1
  %2757 = xor i8 %2756, 1
  store i8 %2757, i8* %45, align 1
  %2758 = xor i32 %2747, %2746
  %2759 = lshr i32 %2758, 4
  %2760 = trunc i32 %2759 to i8
  %2761 = and i8 %2760, 1
  store i8 %2761, i8* %50, align 1
  %2762 = zext i1 %2750 to i8
  store i8 %2762, i8* %53, align 1
  %2763 = lshr i32 %2747, 31
  %2764 = trunc i32 %2763 to i8
  store i8 %2764, i8* %56, align 1
  %2765 = lshr i32 %2746, 31
  %2766 = xor i32 %2763, %2765
  %2767 = add nuw nsw i32 %2766, %2763
  %2768 = icmp eq i32 %2767, 2
  %2769 = zext i1 %2768 to i8
  store i8 %2769, i8* %62, align 1
  %2770 = add i64 %2741, -88
  %2771 = add i64 %2743, 9
  store i64 %2771, i64* %3, align 8
  %2772 = inttoptr i64 %2770 to i32*
  store i32 %2747, i32* %2772, align 4
  %.pre60 = load i64, i64* %3, align 8
  br label %block_.L_4633c0

block_.L_4633c0:                                  ; preds = %block_.L_463403, %block_46339e
  %2773 = phi i64 [ %2913, %block_.L_463403 ], [ %.pre60, %block_46339e ]
  %2774 = load i64, i64* %RBP.i, align 8
  %2775 = add i64 %2774, -88
  %2776 = add i64 %2773, 3
  store i64 %2776, i64* %3, align 8
  %2777 = inttoptr i64 %2775 to i32*
  %2778 = load i32, i32* %2777, align 4
  %2779 = zext i32 %2778 to i64
  store i64 %2779, i64* %RAX.i1208, align 8
  %2780 = add i64 %2774, -48
  %2781 = add i64 %2773, 7
  store i64 %2781, i64* %3, align 8
  %2782 = inttoptr i64 %2780 to i64*
  %2783 = load i64, i64* %2782, align 8
  store i64 %2783, i64* %RCX.i1233, align 8
  %2784 = add i64 %2783, 400
  %2785 = add i64 %2773, 13
  store i64 %2785, i64* %3, align 8
  %2786 = inttoptr i64 %2784 to i32*
  %2787 = load i32, i32* %2786, align 4
  %2788 = sub i32 %2778, %2787
  %2789 = icmp ult i32 %2778, %2787
  %2790 = zext i1 %2789 to i8
  store i8 %2790, i8* %38, align 1
  %2791 = and i32 %2788, 255
  %2792 = tail call i32 @llvm.ctpop.i32(i32 %2791)
  %2793 = trunc i32 %2792 to i8
  %2794 = and i8 %2793, 1
  %2795 = xor i8 %2794, 1
  store i8 %2795, i8* %45, align 1
  %2796 = xor i32 %2787, %2778
  %2797 = xor i32 %2796, %2788
  %2798 = lshr i32 %2797, 4
  %2799 = trunc i32 %2798 to i8
  %2800 = and i8 %2799, 1
  store i8 %2800, i8* %50, align 1
  %2801 = icmp eq i32 %2788, 0
  %2802 = zext i1 %2801 to i8
  store i8 %2802, i8* %53, align 1
  %2803 = lshr i32 %2788, 31
  %2804 = trunc i32 %2803 to i8
  store i8 %2804, i8* %56, align 1
  %2805 = lshr i32 %2778, 31
  %2806 = lshr i32 %2787, 31
  %2807 = xor i32 %2806, %2805
  %2808 = xor i32 %2803, %2805
  %2809 = add nuw nsw i32 %2808, %2807
  %2810 = icmp eq i32 %2809, 2
  %2811 = zext i1 %2810 to i8
  store i8 %2811, i8* %62, align 1
  %2812 = icmp ne i8 %2804, 0
  %2813 = xor i1 %2812, %2810
  %.v110 = select i1 %2813, i64 19, i64 86
  %2814 = add i64 %2773, %.v110
  store i64 %2814, i64* %3, align 8
  br i1 %2813, label %block_4633d3, label %block_.L_463416

block_4633d3:                                     ; preds = %block_.L_4633c0
  %2815 = add i64 %2814, 4
  store i64 %2815, i64* %3, align 8
  %2816 = load i64, i64* %2782, align 8
  store i64 %2816, i64* %RAX.i1208, align 8
  %2817 = add i64 %2814, 8
  store i64 %2817, i64* %3, align 8
  %2818 = load i32, i32* %2777, align 4
  %2819 = sext i32 %2818 to i64
  store i64 %2819, i64* %RCX.i1233, align 8
  %2820 = shl nsw i64 %2819, 2
  %2821 = add i64 %2816, 200
  %2822 = add i64 %2821, %2820
  %2823 = add i64 %2814, 15
  store i64 %2823, i64* %3, align 8
  %2824 = inttoptr i64 %2822 to i32*
  %2825 = load i32, i32* %2824, align 4
  %2826 = zext i32 %2825 to i64
  store i64 %2826, i64* %RDX.i1225, align 8
  %2827 = add i64 %2774, -92
  %2828 = add i64 %2814, 18
  store i64 %2828, i64* %3, align 8
  %2829 = inttoptr i64 %2827 to i32*
  %2830 = load i32, i32* %2829, align 4
  %2831 = sub i32 %2825, %2830
  %2832 = icmp ult i32 %2825, %2830
  %2833 = zext i1 %2832 to i8
  store i8 %2833, i8* %38, align 1
  %2834 = and i32 %2831, 255
  %2835 = tail call i32 @llvm.ctpop.i32(i32 %2834)
  %2836 = trunc i32 %2835 to i8
  %2837 = and i8 %2836, 1
  %2838 = xor i8 %2837, 1
  store i8 %2838, i8* %45, align 1
  %2839 = xor i32 %2830, %2825
  %2840 = xor i32 %2839, %2831
  %2841 = lshr i32 %2840, 4
  %2842 = trunc i32 %2841 to i8
  %2843 = and i8 %2842, 1
  store i8 %2843, i8* %50, align 1
  %2844 = icmp eq i32 %2831, 0
  %2845 = zext i1 %2844 to i8
  store i8 %2845, i8* %53, align 1
  %2846 = lshr i32 %2831, 31
  %2847 = trunc i32 %2846 to i8
  store i8 %2847, i8* %56, align 1
  %2848 = lshr i32 %2825, 31
  %2849 = lshr i32 %2830, 31
  %2850 = xor i32 %2849, %2848
  %2851 = xor i32 %2846, %2848
  %2852 = add nuw nsw i32 %2851, %2850
  %2853 = icmp eq i32 %2852, 2
  %2854 = zext i1 %2853 to i8
  store i8 %2854, i8* %62, align 1
  %2855 = icmp ne i8 %2847, 0
  %2856 = xor i1 %2855, %2853
  %2857 = or i1 %2844, %2856
  %.v112 = select i1 %2857, i64 48, i64 24
  %2858 = add i64 %2814, %.v112
  store i64 %2858, i64* %3, align 8
  br i1 %2857, label %block_.L_463403, label %block_4633eb

block_4633eb:                                     ; preds = %block_4633d3
  %2859 = add i64 %2858, 4
  store i64 %2859, i64* %3, align 8
  %2860 = load i64, i64* %2782, align 8
  store i64 %2860, i64* %RAX.i1208, align 8
  %2861 = add i64 %2858, 8
  store i64 %2861, i64* %3, align 8
  %2862 = load i32, i32* %2777, align 4
  %2863 = sext i32 %2862 to i64
  store i64 %2863, i64* %RCX.i1233, align 8
  %2864 = shl nsw i64 %2863, 2
  %2865 = add i64 %2860, 200
  %2866 = add i64 %2865, %2864
  %2867 = add i64 %2858, 15
  store i64 %2867, i64* %3, align 8
  %2868 = inttoptr i64 %2866 to i32*
  %2869 = load i32, i32* %2868, align 4
  %2870 = zext i32 %2869 to i64
  store i64 %2870, i64* %RDX.i1225, align 8
  %2871 = add i64 %2858, 18
  store i64 %2871, i64* %3, align 8
  store i32 %2869, i32* %2829, align 4
  %2872 = load i64, i64* %RBP.i, align 8
  %2873 = add i64 %2872, -88
  %2874 = load i64, i64* %3, align 8
  %2875 = add i64 %2874, 3
  store i64 %2875, i64* %3, align 8
  %2876 = inttoptr i64 %2873 to i32*
  %2877 = load i32, i32* %2876, align 4
  %2878 = zext i32 %2877 to i64
  store i64 %2878, i64* %RDX.i1225, align 8
  %2879 = add i64 %2872, -96
  %2880 = add i64 %2874, 6
  store i64 %2880, i64* %3, align 8
  %2881 = inttoptr i64 %2879 to i32*
  store i32 %2877, i32* %2881, align 4
  %.pre63 = load i64, i64* %3, align 8
  %.pre64 = load i64, i64* %RBP.i, align 8
  br label %block_.L_463403

block_.L_463403:                                  ; preds = %block_4633eb, %block_4633d3
  %2882 = phi i64 [ %.pre64, %block_4633eb ], [ %2774, %block_4633d3 ]
  %2883 = phi i64 [ %.pre63, %block_4633eb ], [ %2858, %block_4633d3 ]
  %2884 = add i64 %2882, -88
  %2885 = add i64 %2883, 8
  store i64 %2885, i64* %3, align 8
  %2886 = inttoptr i64 %2884 to i32*
  %2887 = load i32, i32* %2886, align 4
  %2888 = add i32 %2887, 1
  %2889 = zext i32 %2888 to i64
  store i64 %2889, i64* %RAX.i1208, align 8
  %2890 = icmp eq i32 %2887, -1
  %2891 = icmp eq i32 %2888, 0
  %2892 = or i1 %2890, %2891
  %2893 = zext i1 %2892 to i8
  store i8 %2893, i8* %38, align 1
  %2894 = and i32 %2888, 255
  %2895 = tail call i32 @llvm.ctpop.i32(i32 %2894)
  %2896 = trunc i32 %2895 to i8
  %2897 = and i8 %2896, 1
  %2898 = xor i8 %2897, 1
  store i8 %2898, i8* %45, align 1
  %2899 = xor i32 %2888, %2887
  %2900 = lshr i32 %2899, 4
  %2901 = trunc i32 %2900 to i8
  %2902 = and i8 %2901, 1
  store i8 %2902, i8* %50, align 1
  %2903 = zext i1 %2891 to i8
  store i8 %2903, i8* %53, align 1
  %2904 = lshr i32 %2888, 31
  %2905 = trunc i32 %2904 to i8
  store i8 %2905, i8* %56, align 1
  %2906 = lshr i32 %2887, 31
  %2907 = xor i32 %2904, %2906
  %2908 = add nuw nsw i32 %2907, %2904
  %2909 = icmp eq i32 %2908, 2
  %2910 = zext i1 %2909 to i8
  store i8 %2910, i8* %62, align 1
  %2911 = add i64 %2883, 14
  store i64 %2911, i64* %3, align 8
  store i32 %2888, i32* %2886, align 4
  %2912 = load i64, i64* %3, align 8
  %2913 = add i64 %2912, -81
  store i64 %2913, i64* %3, align 8
  br label %block_.L_4633c0

block_.L_463416:                                  ; preds = %block_.L_4633c0
  %2914 = add i64 %2774, -96
  %2915 = add i64 %2814, 4
  store i64 %2915, i64* %3, align 8
  %2916 = inttoptr i64 %2914 to i32*
  %2917 = load i32, i32* %2916, align 4
  store i8 0, i8* %38, align 1
  %2918 = and i32 %2917, 255
  %2919 = tail call i32 @llvm.ctpop.i32(i32 %2918)
  %2920 = trunc i32 %2919 to i8
  %2921 = and i8 %2920, 1
  %2922 = xor i8 %2921, 1
  store i8 %2922, i8* %45, align 1
  store i8 0, i8* %50, align 1
  %2923 = icmp eq i32 %2917, 0
  %2924 = zext i1 %2923 to i8
  store i8 %2924, i8* %53, align 1
  %2925 = lshr i32 %2917, 31
  %2926 = trunc i32 %2925 to i8
  store i8 %2926, i8* %56, align 1
  store i8 0, i8* %62, align 1
  %.v111 = select i1 %2923, i64 114, i64 10
  %2927 = add i64 %2814, %.v111
  store i64 %2927, i64* %3, align 8
  br i1 %2923, label %block_.L_463488, label %block_463420

block_463420:                                     ; preds = %block_.L_463416
  %2928 = add i64 %2927, 4
  store i64 %2928, i64* %3, align 8
  %2929 = load i64, i64* %2782, align 8
  store i64 %2929, i64* %RAX.i1208, align 8
  %2930 = add i64 %2927, 8
  store i64 %2930, i64* %3, align 8
  %2931 = load i32, i32* %2916, align 4
  %2932 = sext i32 %2931 to i64
  store i64 %2932, i64* %RCX.i1233, align 8
  %2933 = shl nsw i64 %2932, 2
  %2934 = add i64 %2933, %2929
  %2935 = add i64 %2927, 11
  store i64 %2935, i64* %3, align 8
  %2936 = inttoptr i64 %2934 to i32*
  %2937 = load i32, i32* %2936, align 4
  %2938 = zext i32 %2937 to i64
  store i64 %2938, i64* %RDX.i1225, align 8
  %2939 = add i64 %2774, -152
  %2940 = add i64 %2927, 17
  store i64 %2940, i64* %3, align 8
  %2941 = inttoptr i64 %2939 to i32*
  store i32 %2937, i32* %2941, align 4
  %2942 = load i64, i64* %RBP.i, align 8
  %2943 = add i64 %2942, -48
  %2944 = load i64, i64* %3, align 8
  %2945 = add i64 %2944, 4
  store i64 %2945, i64* %3, align 8
  %2946 = inttoptr i64 %2943 to i64*
  %2947 = load i64, i64* %2946, align 8
  store i64 %2947, i64* %RAX.i1208, align 8
  %2948 = add i64 %2942, -84
  %2949 = add i64 %2944, 8
  store i64 %2949, i64* %3, align 8
  %2950 = inttoptr i64 %2948 to i32*
  %2951 = load i32, i32* %2950, align 4
  %2952 = sext i32 %2951 to i64
  store i64 %2952, i64* %RCX.i1233, align 8
  %2953 = shl nsw i64 %2952, 2
  %2954 = add i64 %2953, %2947
  %2955 = add i64 %2944, 11
  store i64 %2955, i64* %3, align 8
  %2956 = inttoptr i64 %2954 to i32*
  %2957 = load i32, i32* %2956, align 4
  %2958 = zext i32 %2957 to i64
  store i64 %2958, i64* %RDX.i1225, align 8
  %2959 = add i64 %2944, 15
  store i64 %2959, i64* %3, align 8
  %2960 = load i64, i64* %2946, align 8
  store i64 %2960, i64* %RAX.i1208, align 8
  %2961 = add i64 %2942, -96
  %2962 = add i64 %2944, 19
  store i64 %2962, i64* %3, align 8
  %2963 = inttoptr i64 %2961 to i32*
  %2964 = load i32, i32* %2963, align 4
  %2965 = sext i32 %2964 to i64
  store i64 %2965, i64* %RCX.i1233, align 8
  %2966 = shl nsw i64 %2965, 2
  %2967 = add i64 %2966, %2960
  %2968 = add i64 %2944, 22
  store i64 %2968, i64* %3, align 8
  %2969 = inttoptr i64 %2967 to i32*
  store i32 %2957, i32* %2969, align 4
  %2970 = load i64, i64* %RBP.i, align 8
  %2971 = add i64 %2970, -48
  %2972 = load i64, i64* %3, align 8
  %2973 = add i64 %2972, 4
  store i64 %2973, i64* %3, align 8
  %2974 = inttoptr i64 %2971 to i64*
  %2975 = load i64, i64* %2974, align 8
  store i64 %2975, i64* %RAX.i1208, align 8
  %2976 = add i64 %2970, -84
  %2977 = add i64 %2972, 8
  store i64 %2977, i64* %3, align 8
  %2978 = inttoptr i64 %2976 to i32*
  %2979 = load i32, i32* %2978, align 4
  %2980 = sext i32 %2979 to i64
  store i64 %2980, i64* %RCX.i1233, align 8
  %2981 = shl nsw i64 %2980, 2
  %2982 = add i64 %2975, 200
  %2983 = add i64 %2982, %2981
  %2984 = add i64 %2972, 15
  store i64 %2984, i64* %3, align 8
  %2985 = inttoptr i64 %2983 to i32*
  %2986 = load i32, i32* %2985, align 4
  %2987 = zext i32 %2986 to i64
  store i64 %2987, i64* %RDX.i1225, align 8
  %2988 = add i64 %2972, 19
  store i64 %2988, i64* %3, align 8
  %2989 = load i64, i64* %2974, align 8
  store i64 %2989, i64* %RAX.i1208, align 8
  %2990 = add i64 %2970, -96
  %2991 = add i64 %2972, 23
  store i64 %2991, i64* %3, align 8
  %2992 = inttoptr i64 %2990 to i32*
  %2993 = load i32, i32* %2992, align 4
  %2994 = sext i32 %2993 to i64
  store i64 %2994, i64* %RCX.i1233, align 8
  %2995 = shl nsw i64 %2994, 2
  %2996 = add i64 %2989, 200
  %2997 = add i64 %2996, %2995
  %2998 = add i64 %2972, 30
  store i64 %2998, i64* %3, align 8
  %2999 = inttoptr i64 %2997 to i32*
  store i32 %2986, i32* %2999, align 4
  %3000 = load i64, i64* %RBP.i, align 8
  %3001 = add i64 %3000, -152
  %3002 = load i64, i64* %3, align 8
  %3003 = add i64 %3002, 6
  store i64 %3003, i64* %3, align 8
  %3004 = inttoptr i64 %3001 to i32*
  %3005 = load i32, i32* %3004, align 4
  %3006 = zext i32 %3005 to i64
  store i64 %3006, i64* %RDX.i1225, align 8
  %3007 = add i64 %3000, -48
  %3008 = add i64 %3002, 10
  store i64 %3008, i64* %3, align 8
  %3009 = inttoptr i64 %3007 to i64*
  %3010 = load i64, i64* %3009, align 8
  store i64 %3010, i64* %RAX.i1208, align 8
  %3011 = add i64 %3000, -84
  %3012 = add i64 %3002, 14
  store i64 %3012, i64* %3, align 8
  %3013 = inttoptr i64 %3011 to i32*
  %3014 = load i32, i32* %3013, align 4
  %3015 = sext i32 %3014 to i64
  store i64 %3015, i64* %RCX.i1233, align 8
  %3016 = shl nsw i64 %3015, 2
  %3017 = add i64 %3016, %3010
  %3018 = add i64 %3002, 17
  store i64 %3018, i64* %3, align 8
  %3019 = inttoptr i64 %3017 to i32*
  store i32 %3005, i32* %3019, align 4
  %3020 = load i64, i64* %RBP.i, align 8
  %3021 = add i64 %3020, -92
  %3022 = load i64, i64* %3, align 8
  %3023 = add i64 %3022, 3
  store i64 %3023, i64* %3, align 8
  %3024 = inttoptr i64 %3021 to i32*
  %3025 = load i32, i32* %3024, align 4
  %3026 = zext i32 %3025 to i64
  store i64 %3026, i64* %RDX.i1225, align 8
  %3027 = add i64 %3020, -48
  %3028 = add i64 %3022, 7
  store i64 %3028, i64* %3, align 8
  %3029 = inttoptr i64 %3027 to i64*
  %3030 = load i64, i64* %3029, align 8
  store i64 %3030, i64* %RAX.i1208, align 8
  %3031 = add i64 %3020, -84
  %3032 = add i64 %3022, 11
  store i64 %3032, i64* %3, align 8
  %3033 = inttoptr i64 %3031 to i32*
  %3034 = load i32, i32* %3033, align 4
  %3035 = sext i32 %3034 to i64
  store i64 %3035, i64* %RCX.i1233, align 8
  %3036 = shl nsw i64 %3035, 2
  %3037 = add i64 %3030, 200
  %3038 = add i64 %3037, %3036
  %3039 = add i64 %3022, 18
  store i64 %3039, i64* %3, align 8
  %3040 = inttoptr i64 %3038 to i32*
  store i32 %3025, i32* %3040, align 4
  %.pre61 = load i64, i64* %3, align 8
  %.pre62 = load i64, i64* %RBP.i, align 8
  br label %block_.L_463488

block_.L_463488:                                  ; preds = %block_463420, %block_.L_463416
  %3041 = phi i64 [ %.pre62, %block_463420 ], [ %2774, %block_.L_463416 ]
  %3042 = phi i64 [ %.pre61, %block_463420 ], [ %2927, %block_.L_463416 ]
  %3043 = add i64 %3041, -84
  %3044 = add i64 %3042, 8
  store i64 %3044, i64* %3, align 8
  %3045 = inttoptr i64 %3043 to i32*
  %3046 = load i32, i32* %3045, align 4
  %3047 = add i32 %3046, 1
  %3048 = zext i32 %3047 to i64
  store i64 %3048, i64* %RAX.i1208, align 8
  %3049 = icmp eq i32 %3046, -1
  %3050 = icmp eq i32 %3047, 0
  %3051 = or i1 %3049, %3050
  %3052 = zext i1 %3051 to i8
  store i8 %3052, i8* %38, align 1
  %3053 = and i32 %3047, 255
  %3054 = tail call i32 @llvm.ctpop.i32(i32 %3053)
  %3055 = trunc i32 %3054 to i8
  %3056 = and i8 %3055, 1
  %3057 = xor i8 %3056, 1
  store i8 %3057, i8* %45, align 1
  %3058 = xor i32 %3047, %3046
  %3059 = lshr i32 %3058, 4
  %3060 = trunc i32 %3059 to i8
  %3061 = and i8 %3060, 1
  store i8 %3061, i8* %50, align 1
  %3062 = zext i1 %3050 to i8
  store i8 %3062, i8* %53, align 1
  %3063 = lshr i32 %3047, 31
  %3064 = trunc i32 %3063 to i8
  store i8 %3064, i8* %56, align 1
  %3065 = lshr i32 %3046, 31
  %3066 = xor i32 %3063, %3065
  %3067 = add nuw nsw i32 %3066, %3063
  %3068 = icmp eq i32 %3067, 2
  %3069 = zext i1 %3068 to i8
  store i8 %3069, i8* %62, align 1
  %3070 = add i64 %3042, 14
  store i64 %3070, i64* %3, align 8
  store i32 %3047, i32* %3045, align 4
  %3071 = load i64, i64* %3, align 8
  %3072 = add i64 %3071, -272
  store i64 %3072, i64* %3, align 8
  br label %block_.L_463386

block_.L_46349b:                                  ; preds = %block_.L_463386
  %3073 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %38, align 1
  %3074 = trunc i64 %3073 to i32
  %3075 = and i32 %3074, 255
  %3076 = tail call i32 @llvm.ctpop.i32(i32 %3075)
  %3077 = trunc i32 %3076 to i8
  %3078 = and i8 %3077, 1
  %3079 = xor i8 %3078, 1
  store i8 %3079, i8* %45, align 1
  store i8 0, i8* %50, align 1
  %3080 = icmp eq i64 %3073, 0
  %3081 = zext i1 %3080 to i8
  store i8 %3081, i8* %53, align 1
  %3082 = lshr i64 %3073, 63
  %3083 = trunc i64 %3082 to i8
  store i8 %3083, i8* %56, align 1
  store i8 0, i8* %62, align 1
  %.v108 = select i1 %3080, i64 364, i64 15
  %3084 = add i64 %2720, %.v108
  store i64 %3084, i64* %3, align 8
  br i1 %3080, label %block_.L_463607, label %block_4634aa

block_4634aa:                                     ; preds = %block_.L_46349b
  store i64 ptrtoint (%G__0x57fdd0_type* @G__0x57fdd0 to i64), i64* %RSI.i1239, align 8
  %3085 = add i64 %2678, -668
  store i64 %3085, i64* %RCX.i1233, align 8
  %3086 = add i64 %2678, -656
  store i64 %3086, i64* %RDI.i1218, align 8
  %3087 = add i64 %2678, -64
  %3088 = add i64 %3084, 28
  store i64 %3088, i64* %3, align 8
  %3089 = inttoptr i64 %3087 to i64*
  %3090 = load i64, i64* %3089, align 8
  store i64 %3090, i64* %RDX.i1225, align 8
  store i8 0, i8* %AL.i640, align 1
  %3091 = add i64 %3084, -402138
  %3092 = add i64 %3084, 35
  %3093 = load i64, i64* %6, align 8
  %3094 = add i64 %3093, -8
  %3095 = inttoptr i64 %3094 to i64*
  store i64 %3092, i64* %3095, align 8
  store i64 %3094, i64* %6, align 8
  store i64 %3091, i64* %3, align 8
  %3096 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %call2_462cc6)
  %3097 = load i64, i64* %RBP.i, align 8
  %3098 = add i64 %3097, -656
  %3099 = load i64, i64* %3, align 8
  store i64 %3098, i64* %RCX.i1233, align 8
  %3100 = add i64 %3097, -668
  %3101 = add i64 %3099, 14
  store i64 %3101, i64* %3, align 8
  %3102 = inttoptr i64 %3100 to i32*
  %3103 = load i32, i32* %3102, align 4
  %3104 = sext i32 %3103 to i64
  store i64 %3104, i64* %RDX.i1225, align 8
  %3105 = add i64 %3098, %3104
  store i64 %3105, i64* %RCX.i1233, align 8
  %3106 = icmp ult i64 %3105, %3098
  %3107 = icmp ult i64 %3105, %3104
  %3108 = or i1 %3106, %3107
  %3109 = zext i1 %3108 to i8
  store i8 %3109, i8* %38, align 1
  %3110 = trunc i64 %3105 to i32
  %3111 = and i32 %3110, 255
  %3112 = tail call i32 @llvm.ctpop.i32(i32 %3111)
  %3113 = trunc i32 %3112 to i8
  %3114 = and i8 %3113, 1
  %3115 = xor i8 %3114, 1
  store i8 %3115, i8* %45, align 1
  %3116 = xor i64 %3098, %3104
  %3117 = xor i64 %3116, %3105
  %3118 = lshr i64 %3117, 4
  %3119 = trunc i64 %3118 to i8
  %3120 = and i8 %3119, 1
  store i8 %3120, i8* %50, align 1
  %3121 = icmp eq i64 %3105, 0
  %3122 = zext i1 %3121 to i8
  store i8 %3122, i8* %53, align 1
  %3123 = lshr i64 %3105, 63
  %3124 = trunc i64 %3123 to i8
  store i8 %3124, i8* %56, align 1
  %3125 = lshr i64 %3098, 63
  %3126 = lshr i64 %3104, 63
  %3127 = xor i64 %3123, %3125
  %3128 = xor i64 %3123, %3126
  %3129 = add nuw nsw i64 %3127, %3128
  %3130 = icmp eq i64 %3129, 2
  %3131 = zext i1 %3130 to i8
  store i8 %3131, i8* %62, align 1
  %3132 = add i64 %3097, -664
  %3133 = add i64 %3099, 24
  store i64 %3133, i64* %3, align 8
  %3134 = inttoptr i64 %3132 to i64*
  store i64 %3105, i64* %3134, align 8
  %3135 = load i64, i64* %RBP.i, align 8
  %3136 = add i64 %3135, -68
  %3137 = load i64, i64* %3, align 8
  %3138 = add i64 %3137, 4
  store i64 %3138, i64* %3, align 8
  %3139 = inttoptr i64 %3136 to i32*
  %3140 = load i32, i32* %3139, align 4
  %3141 = zext i32 %3140 to i64
  store i64 %3141, i64* %R8.i, align 8
  %3142 = add i64 %3135, -84
  %3143 = add i64 %3137, 8
  store i64 %3143, i64* %3, align 8
  %3144 = inttoptr i64 %3142 to i32*
  store i32 %3140, i32* %3144, align 4
  %3145 = load i64, i64* %RBP.i, align 8
  %3146 = add i64 %3145, -704
  %3147 = load i32, i32* %EAX.i1214, align 4
  %3148 = load i64, i64* %3, align 8
  %3149 = add i64 %3148, 6
  store i64 %3149, i64* %3, align 8
  %3150 = inttoptr i64 %3146 to i32*
  store i32 %3147, i32* %3150, align 4
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D.i111 = bitcast %union.anon* %3152 to i32*
  %3153 = getelementptr inbounds %union.anon, %union.anon* %3152, i64 0, i32 0
  %BL.i93 = bitcast %union.anon* %28 to i8*
  %.pre52 = load i64, i64* %3, align 8
  br label %block_.L_4634f3

block_.L_4634f3:                                  ; preds = %routine_idivl__r8d.exit, %block_4634aa
  %3154 = phi i64 [ %.pre52, %block_4634aa ], [ %3553, %routine_idivl__r8d.exit ]
  %MEMORY.31 = phi %struct.Memory* [ %3096, %block_4634aa ], [ %3475, %routine_idivl__r8d.exit ]
  %3155 = load i64, i64* %RBP.i, align 8
  %3156 = add i64 %3155, -84
  %3157 = add i64 %3154, 3
  store i64 %3157, i64* %3, align 8
  %3158 = inttoptr i64 %3156 to i32*
  %3159 = load i32, i32* %3158, align 4
  %3160 = zext i32 %3159 to i64
  store i64 %3160, i64* %RAX.i1208, align 8
  %3161 = add i64 %3155, -48
  %3162 = add i64 %3154, 7
  store i64 %3162, i64* %3, align 8
  %3163 = inttoptr i64 %3161 to i64*
  %3164 = load i64, i64* %3163, align 8
  store i64 %3164, i64* %RCX.i1233, align 8
  %3165 = add i64 %3164, 400
  %3166 = add i64 %3154, 13
  store i64 %3166, i64* %3, align 8
  %3167 = inttoptr i64 %3165 to i32*
  %3168 = load i32, i32* %3167, align 4
  %3169 = sub i32 %3159, %3168
  %3170 = icmp ult i32 %3159, %3168
  %3171 = zext i1 %3170 to i8
  store i8 %3171, i8* %38, align 1
  %3172 = and i32 %3169, 255
  %3173 = tail call i32 @llvm.ctpop.i32(i32 %3172)
  %3174 = trunc i32 %3173 to i8
  %3175 = and i8 %3174, 1
  %3176 = xor i8 %3175, 1
  store i8 %3176, i8* %45, align 1
  %3177 = xor i32 %3168, %3159
  %3178 = xor i32 %3177, %3169
  %3179 = lshr i32 %3178, 4
  %3180 = trunc i32 %3179 to i8
  %3181 = and i8 %3180, 1
  store i8 %3181, i8* %50, align 1
  %3182 = icmp eq i32 %3169, 0
  %3183 = zext i1 %3182 to i8
  store i8 %3183, i8* %53, align 1
  %3184 = lshr i32 %3169, 31
  %3185 = trunc i32 %3184 to i8
  store i8 %3185, i8* %56, align 1
  %3186 = lshr i32 %3159, 31
  %3187 = lshr i32 %3168, 31
  %3188 = xor i32 %3187, %3186
  %3189 = xor i32 %3184, %3186
  %3190 = add nuw nsw i32 %3189, %3188
  %3191 = icmp eq i32 %3190, 2
  %3192 = zext i1 %3191 to i8
  store i8 %3192, i8* %62, align 1
  %3193 = icmp ne i8 %3185, 0
  %3194 = xor i1 %3193, %3191
  %.v109 = select i1 %3194, i64 19, i64 256
  %3195 = add i64 %3154, %.v109
  store i64 %3195, i64* %3, align 8
  br i1 %3194, label %block_463506, label %block_.L_4635f3

block_463506:                                     ; preds = %block_.L_4634f3
  store i64 ptrtoint (%G__0x57f9a0_type* @G__0x57f9a0 to i64), i64* %RSI.i1239, align 8
  %3196 = add i64 %3155, -668
  store i64 %3196, i64* %R9.i1178, align 8
  store i64 20, i64* %RAX.i1208, align 8
  %3197 = add i64 %3155, -664
  %3198 = add i64 %3195, 29
  store i64 %3198, i64* %3, align 8
  %3199 = inttoptr i64 %3197 to i64*
  %3200 = load i64, i64* %3199, align 8
  store i64 %3200, i64* %RDI.i1218, align 8
  %3201 = add i64 %3195, 33
  store i64 %3201, i64* %3, align 8
  %3202 = load i64, i64* %3163, align 8
  store i64 %3202, i64* %RCX.i1233, align 8
  %3203 = add i64 %3195, 37
  store i64 %3203, i64* %3, align 8
  %3204 = load i32, i32* %3158, align 4
  %3205 = sext i32 %3204 to i64
  store i64 %3205, i64* %RDX.i1225, align 8
  %3206 = shl nsw i64 %3205, 2
  %3207 = add i64 %3206, %3202
  %3208 = add i64 %3195, 41
  store i64 %3208, i64* %3, align 8
  %3209 = inttoptr i64 %3207 to i32*
  %3210 = load i32, i32* %3209, align 4
  %3211 = zext i32 %3210 to i64
  store i64 %3211, i64* %R8.i, align 8
  %3212 = add i64 %3155, -708
  %3213 = add i64 %3195, 47
  store i64 %3213, i64* %3, align 8
  %3214 = inttoptr i64 %3212 to i32*
  store i32 20, i32* %3214, align 4
  %3215 = load i32, i32* %R8D.i1230, align 4
  %3216 = zext i32 %3215 to i64
  %3217 = load i64, i64* %3, align 8
  store i64 %3216, i64* %RAX.i1208, align 8
  %3218 = sext i32 %3215 to i64
  %3219 = lshr i64 %3218, 32
  store i64 %3219, i64* %3151, align 8
  %3220 = load i64, i64* %RBP.i, align 8
  %3221 = add i64 %3220, -708
  %3222 = add i64 %3217, 11
  store i64 %3222, i64* %3, align 8
  %3223 = inttoptr i64 %3221 to i32*
  %3224 = load i32, i32* %3223, align 4
  %3225 = zext i32 %3224 to i64
  store i64 %3225, i64* %R8.i, align 8
  %3226 = add i64 %3217, 14
  store i64 %3226, i64* %3, align 8
  %3227 = sext i32 %3224 to i64
  %3228 = shl nuw i64 %3219, 32
  %3229 = or i64 %3228, %3216
  %3230 = sdiv i64 %3229, %3227
  %3231 = shl i64 %3230, 32
  %3232 = ashr exact i64 %3231, 32
  %3233 = icmp eq i64 %3230, %3232
  br i1 %3233, label %3236, label %3234

; <label>:3234:                                   ; preds = %block_463506
  %3235 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3226, %struct.Memory* %MEMORY.31)
  %.pre53 = load i64, i64* %RDX.i1225, align 8
  %.pre54 = load i64, i64* %3, align 8
  %.pre55 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__r8d.exit126

; <label>:3236:                                   ; preds = %block_463506
  %3237 = srem i64 %3229, %3227
  %3238 = and i64 %3230, 4294967295
  store i64 %3238, i64* %RAX.i1208, align 8
  %3239 = and i64 %3237, 4294967295
  store i64 %3239, i64* %RDX.i1225, align 8
  store i8 0, i8* %38, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %50, align 1
  store i8 0, i8* %53, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %62, align 1
  br label %routine_idivl__r8d.exit126

routine_idivl__r8d.exit126:                       ; preds = %3236, %3234
  %3240 = phi i64 [ %.pre55, %3234 ], [ %3220, %3236 ]
  %3241 = phi i64 [ %.pre54, %3234 ], [ %3226, %3236 ]
  %3242 = phi i64 [ %.pre53, %3234 ], [ %3239, %3236 ]
  %3243 = phi %struct.Memory* [ %3235, %3234 ], [ %MEMORY.31, %3236 ]
  %3244 = trunc i64 %3242 to i32
  %3245 = add i32 %3244, -1
  %3246 = lshr i32 %3245, 31
  %3247 = add i32 %3244, 64
  %3248 = zext i32 %3247 to i64
  store i64 %3248, i64* %RDX.i1225, align 8
  %3249 = icmp ugt i32 %3245, -66
  %3250 = zext i1 %3249 to i8
  store i8 %3250, i8* %38, align 1
  %3251 = and i32 %3247, 255
  %3252 = tail call i32 @llvm.ctpop.i32(i32 %3251)
  %3253 = trunc i32 %3252 to i8
  %3254 = and i8 %3253, 1
  %3255 = xor i8 %3254, 1
  store i8 %3255, i8* %45, align 1
  %3256 = xor i32 %3247, %3245
  %3257 = lshr i32 %3256, 4
  %3258 = trunc i32 %3257 to i8
  %3259 = and i8 %3258, 1
  store i8 %3259, i8* %50, align 1
  %3260 = icmp eq i32 %3247, 0
  %3261 = zext i1 %3260 to i8
  store i8 %3261, i8* %53, align 1
  %3262 = lshr i32 %3247, 31
  %3263 = trunc i32 %3262 to i8
  store i8 %3263, i8* %56, align 1
  %3264 = xor i32 %3262, %3246
  %3265 = add nuw nsw i32 %3264, %3262
  %3266 = icmp eq i32 %3265, 2
  %3267 = zext i1 %3266 to i8
  store i8 %3267, i8* %62, align 1
  %3268 = add i64 %3240, -48
  %3269 = add i64 %3241, 10
  store i64 %3269, i64* %3, align 8
  %3270 = inttoptr i64 %3268 to i64*
  %3271 = load i64, i64* %3270, align 8
  store i64 %3271, i64* %RCX.i1233, align 8
  %3272 = add i64 %3240, -84
  %3273 = add i64 %3241, 14
  store i64 %3273, i64* %3, align 8
  %3274 = inttoptr i64 %3272 to i32*
  %3275 = load i32, i32* %3274, align 4
  %3276 = sext i32 %3275 to i64
  store i64 %3276, i64* %R10.i1163, align 8
  %3277 = shl nsw i64 %3276, 2
  %3278 = add i64 %3277, %3271
  %3279 = add i64 %3241, 18
  store i64 %3279, i64* %3, align 8
  %3280 = inttoptr i64 %3278 to i32*
  %3281 = load i32, i32* %3280, align 4
  %3282 = zext i32 %3281 to i64
  store i64 %3282, i64* %3153, align 8
  store i64 %3282, i64* %RAX.i1208, align 8
  %3283 = add i64 %3240, -712
  %3284 = add i64 %3241, 27
  store i64 %3284, i64* %3, align 8
  %3285 = inttoptr i64 %3283 to i32*
  store i32 %3247, i32* %3285, align 4
  %3286 = load i64, i64* %3, align 8
  %3287 = load i32, i32* %EAX.i1214, align 8
  %3288 = sext i32 %3287 to i64
  %3289 = lshr i64 %3288, 32
  store i64 %3289, i64* %3151, align 8
  %3290 = load i32, i32* %R8D.i1230, align 4
  %3291 = add i64 %3286, 4
  store i64 %3291, i64* %3, align 8
  %3292 = zext i32 %3287 to i64
  %3293 = sext i32 %3290 to i64
  %3294 = shl nuw i64 %3289, 32
  %3295 = or i64 %3294, %3292
  %3296 = sdiv i64 %3295, %3293
  %3297 = shl i64 %3296, 32
  %3298 = ashr exact i64 %3297, 32
  %3299 = icmp eq i64 %3296, %3298
  br i1 %3299, label %3302, label %3300

; <label>:3300:                                   ; preds = %routine_idivl__r8d.exit126
  %3301 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3291, %struct.Memory* %3243)
  %.pre56 = load i64, i64* %RDX.i1225, align 8
  %.pre57 = load i64, i64* %3, align 8
  br label %routine_idivl__r8d.exit100

; <label>:3302:                                   ; preds = %routine_idivl__r8d.exit126
  %3303 = srem i64 %3295, %3293
  %3304 = and i64 %3296, 4294967295
  store i64 %3304, i64* %RAX.i1208, align 8
  %3305 = and i64 %3303, 4294967295
  store i64 %3305, i64* %RDX.i1225, align 8
  store i8 0, i8* %38, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %50, align 1
  store i8 0, i8* %53, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %62, align 1
  br label %routine_idivl__r8d.exit100

routine_idivl__r8d.exit100:                       ; preds = %3302, %3300
  %3306 = phi i64 [ %.pre57, %3300 ], [ %3291, %3302 ]
  %3307 = phi i64 [ %.pre56, %3300 ], [ %3305, %3302 ]
  %3308 = phi %struct.Memory* [ %3301, %3300 ], [ %3243, %3302 ]
  %3309 = trunc i64 %3307 to i32
  %3310 = add i32 %3309, -1
  %3311 = lshr i32 %3310, 31
  %3312 = add i32 %3309, -9
  %3313 = lshr i32 %3312, 31
  %3314 = xor i32 %3313, %3311
  %3315 = add nuw nsw i32 %3314, %3311
  %3316 = icmp eq i32 %3315, 2
  %3317 = icmp ne i32 %3313, 0
  %3318 = xor i1 %3317, %3316
  %3319 = xor i1 %3318, true
  %3320 = zext i1 %3319 to i8
  store i8 %3320, i8* %BL.i93, align 1
  store i8 0, i8* %38, align 1
  %3321 = zext i1 %3319 to i32
  %3322 = tail call i32 @llvm.ctpop.i32(i32 %3321)
  %3323 = trunc i32 %3322 to i8
  %3324 = xor i8 %3323, 1
  store i8 %3324, i8* %45, align 1
  %3325 = zext i1 %3318 to i8
  store i8 %3325, i8* %53, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %62, align 1
  store i8 0, i8* %50, align 1
  %3326 = zext i1 %3319 to i64
  store i64 %3326, i64* %RDX.i1225, align 8
  %3327 = load i64, i64* %RBP.i, align 8
  %3328 = add i64 %3327, -712
  %3329 = add i64 %3306, 22
  store i64 %3329, i64* %3, align 8
  %3330 = inttoptr i64 %3328 to i32*
  %3331 = load i32, i32* %3330, align 4
  %3332 = zext i1 %3319 to i32
  %3333 = add i32 %3332, %3331
  %3334 = zext i32 %3333 to i64
  store i64 %3334, i64* %3153, align 8
  %3335 = icmp ult i32 %3333, %3331
  %3336 = icmp ult i32 %3333, %3332
  %3337 = or i1 %3335, %3336
  %3338 = zext i1 %3337 to i8
  store i8 %3338, i8* %38, align 1
  %3339 = and i32 %3333, 255
  %3340 = tail call i32 @llvm.ctpop.i32(i32 %3339)
  %3341 = trunc i32 %3340 to i8
  %3342 = and i8 %3341, 1
  %3343 = xor i8 %3342, 1
  store i8 %3343, i8* %45, align 1
  %3344 = xor i32 %3331, %3333
  %3345 = lshr i32 %3344, 4
  %3346 = trunc i32 %3345 to i8
  %3347 = and i8 %3346, 1
  store i8 %3347, i8* %50, align 1
  %3348 = icmp eq i32 %3333, 0
  %3349 = zext i1 %3348 to i8
  store i8 %3349, i8* %53, align 1
  %3350 = lshr i32 %3333, 31
  %3351 = trunc i32 %3350 to i8
  store i8 %3351, i8* %56, align 1
  %3352 = lshr i32 %3331, 31
  %3353 = xor i32 %3350, %3352
  %3354 = add nuw nsw i32 %3353, %3350
  %3355 = icmp eq i32 %3354, 2
  %3356 = zext i1 %3355 to i8
  store i8 %3356, i8* %62, align 1
  %3357 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %3358 = zext i32 %3357 to i64
  store i64 %3358, i64* %RDX.i1225, align 8
  %3359 = add i64 %3327, -48
  %3360 = add i64 %3306, 36
  store i64 %3360, i64* %3, align 8
  %3361 = inttoptr i64 %3359 to i64*
  %3362 = load i64, i64* %3361, align 8
  store i64 %3362, i64* %RCX.i1233, align 8
  %3363 = add i64 %3327, -84
  %3364 = add i64 %3306, 40
  store i64 %3364, i64* %3, align 8
  %3365 = inttoptr i64 %3363 to i32*
  %3366 = load i32, i32* %3365, align 4
  %3367 = sext i32 %3366 to i64
  store i64 %3367, i64* %R10.i1163, align 8
  %3368 = shl nsw i64 %3367, 2
  %3369 = add i64 %3368, %3362
  %3370 = add i64 %3306, 44
  store i64 %3370, i64* %3, align 8
  %3371 = inttoptr i64 %3369 to i32*
  %3372 = load i32, i32* %3371, align 4
  %3373 = zext i32 %3372 to i64
  store i64 %3373, i64* %R14.i102, align 8
  store i64 %3373, i64* %RAX.i1208, align 8
  %3374 = add i64 %3327, -716
  %3375 = add i64 %3306, 53
  store i64 %3375, i64* %3, align 8
  %3376 = inttoptr i64 %3374 to i32*
  store i32 %3357, i32* %3376, align 4
  %3377 = load i64, i64* %3, align 8
  %3378 = load i32, i32* %EAX.i1214, align 8
  %3379 = sext i32 %3378 to i64
  %3380 = lshr i64 %3379, 32
  store i64 %3380, i64* %3151, align 8
  %3381 = load i32, i32* %R8D.i1230, align 4
  %3382 = add i64 %3377, 4
  store i64 %3382, i64* %3, align 8
  %3383 = zext i32 %3378 to i64
  %3384 = sext i32 %3381 to i64
  %3385 = shl nuw i64 %3380, 32
  %3386 = or i64 %3385, %3383
  %3387 = sdiv i64 %3386, %3384
  %3388 = shl i64 %3387, 32
  %3389 = ashr exact i64 %3388, 32
  %3390 = icmp eq i64 %3387, %3389
  br i1 %3390, label %3393, label %3391

; <label>:3391:                                   ; preds = %routine_idivl__r8d.exit100
  %3392 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3382, %struct.Memory* %3308)
  %.pre58 = load i64, i64* %RAX.i1208, align 8
  %.pre59 = load i64, i64* %3, align 8
  br label %routine_idivl__r8d.exit

; <label>:3393:                                   ; preds = %routine_idivl__r8d.exit100
  %3394 = srem i64 %3386, %3384
  %3395 = and i64 %3387, 4294967295
  store i64 %3395, i64* %RAX.i1208, align 8
  %3396 = and i64 %3394, 4294967295
  store i64 %3396, i64* %RDX.i1225, align 8
  store i8 0, i8* %38, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %50, align 1
  store i8 0, i8* %53, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %62, align 1
  br label %routine_idivl__r8d.exit

routine_idivl__r8d.exit:                          ; preds = %3393, %3391
  %3397 = phi i64 [ %.pre59, %3391 ], [ %3382, %3393 ]
  %3398 = phi i64 [ %.pre58, %3391 ], [ %3395, %3393 ]
  %3399 = phi %struct.Memory* [ %3392, %3391 ], [ %3308, %3393 ]
  %3400 = trunc i64 %3398 to i32
  %3401 = add i32 %3400, -1
  %3402 = zext i32 %3401 to i64
  store i64 %3402, i64* %RAX.i1208, align 8
  %3403 = icmp eq i32 %3400, 0
  %3404 = zext i1 %3403 to i8
  store i8 %3404, i8* %38, align 1
  %3405 = and i32 %3401, 255
  %3406 = tail call i32 @llvm.ctpop.i32(i32 %3405)
  %3407 = trunc i32 %3406 to i8
  %3408 = and i8 %3407, 1
  %3409 = xor i8 %3408, 1
  store i8 %3409, i8* %45, align 1
  %3410 = xor i32 %3401, %3400
  %3411 = lshr i32 %3410, 4
  %3412 = trunc i32 %3411 to i8
  %3413 = and i8 %3412, 1
  store i8 %3413, i8* %50, align 1
  %3414 = icmp eq i32 %3401, 0
  %3415 = zext i1 %3414 to i8
  store i8 %3415, i8* %53, align 1
  %3416 = lshr i32 %3401, 31
  %3417 = trunc i32 %3416 to i8
  store i8 %3417, i8* %56, align 1
  %3418 = lshr i32 %3400, 31
  %3419 = xor i32 %3416, %3418
  %3420 = add nuw nsw i32 %3419, %3418
  %3421 = icmp eq i32 %3420, 2
  %3422 = zext i1 %3421 to i8
  store i8 %3422, i8* %62, align 1
  %3423 = load i64, i64* %RBP.i, align 8
  %3424 = add i64 %3423, -716
  %3425 = add i64 %3397, 10
  store i64 %3425, i64* %3, align 8
  %3426 = inttoptr i64 %3424 to i32*
  %3427 = load i32, i32* %3426, align 4
  %3428 = sub i32 %3427, %3401
  %3429 = zext i32 %3428 to i64
  store i64 %3429, i64* %R14.i102, align 8
  %3430 = icmp ult i32 %3427, %3401
  %3431 = zext i1 %3430 to i8
  store i8 %3431, i8* %38, align 1
  %3432 = and i32 %3428, 255
  %3433 = tail call i32 @llvm.ctpop.i32(i32 %3432)
  %3434 = trunc i32 %3433 to i8
  %3435 = and i8 %3434, 1
  %3436 = xor i8 %3435, 1
  store i8 %3436, i8* %45, align 1
  %3437 = xor i32 %3401, %3427
  %3438 = xor i32 %3437, %3428
  %3439 = lshr i32 %3438, 4
  %3440 = trunc i32 %3439 to i8
  %3441 = and i8 %3440, 1
  store i8 %3441, i8* %50, align 1
  %3442 = icmp eq i32 %3428, 0
  %3443 = zext i1 %3442 to i8
  store i8 %3443, i8* %53, align 1
  %3444 = lshr i32 %3428, 31
  %3445 = trunc i32 %3444 to i8
  store i8 %3445, i8* %56, align 1
  %3446 = lshr i32 %3427, 31
  %3447 = xor i32 %3416, %3446
  %3448 = xor i32 %3444, %3446
  %3449 = add nuw nsw i32 %3448, %3447
  %3450 = icmp eq i32 %3449, 2
  %3451 = zext i1 %3450 to i8
  store i8 %3451, i8* %62, align 1
  %3452 = add i64 %3423, -48
  %3453 = add i64 %3397, 17
  store i64 %3453, i64* %3, align 8
  %3454 = inttoptr i64 %3452 to i64*
  %3455 = load i64, i64* %3454, align 8
  store i64 %3455, i64* %RCX.i1233, align 8
  %3456 = add i64 %3423, -84
  %3457 = add i64 %3397, 21
  store i64 %3457, i64* %3, align 8
  %3458 = inttoptr i64 %3456 to i32*
  %3459 = load i32, i32* %3458, align 4
  %3460 = sext i32 %3459 to i64
  store i64 %3460, i64* %R10.i1163, align 8
  %3461 = shl nsw i64 %3460, 2
  %3462 = add i64 %3455, 200
  %3463 = add i64 %3462, %3461
  %3464 = add i64 %3397, 29
  store i64 %3464, i64* %3, align 8
  %3465 = inttoptr i64 %3463 to i32*
  %3466 = load i32, i32* %3465, align 4
  %3467 = zext i32 %3466 to i64
  store i64 %3467, i64* %R8.i, align 8
  %3468 = load i32, i32* %R11D.i111, align 4
  %3469 = zext i32 %3468 to i64
  store i64 %3469, i64* %RDX.i1225, align 8
  store i64 %3429, i64* %RCX.i1233, align 8
  store i8 0, i8* %AL.i640, align 1
  %3470 = add i64 %3397, -402379
  %3471 = add i64 %3397, 42
  %3472 = load i64, i64* %6, align 8
  %3473 = add i64 %3472, -8
  %3474 = inttoptr i64 %3473 to i64*
  store i64 %3471, i64* %3474, align 8
  store i64 %3473, i64* %6, align 8
  store i64 %3470, i64* %3, align 8
  %3475 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %3399)
  %3476 = load i64, i64* %RBP.i, align 8
  %3477 = add i64 %3476, -668
  %3478 = load i64, i64* %3, align 8
  %3479 = add i64 %3478, 6
  store i64 %3479, i64* %3, align 8
  %3480 = inttoptr i64 %3477 to i32*
  %3481 = load i32, i32* %3480, align 4
  %3482 = zext i32 %3481 to i64
  store i64 %3482, i64* %RCX.i1233, align 8
  %3483 = add i64 %3476, -664
  %3484 = add i64 %3478, 13
  store i64 %3484, i64* %3, align 8
  %3485 = inttoptr i64 %3483 to i64*
  %3486 = load i64, i64* %3485, align 8
  %3487 = sext i32 %3481 to i64
  store i64 %3487, i64* %RDI.i1218, align 8
  %3488 = add i64 %3486, %3487
  store i64 %3488, i64* %RSI.i1239, align 8
  %3489 = icmp ult i64 %3488, %3486
  %3490 = icmp ult i64 %3488, %3487
  %3491 = or i1 %3489, %3490
  %3492 = zext i1 %3491 to i8
  store i8 %3492, i8* %38, align 1
  %3493 = trunc i64 %3488 to i32
  %3494 = and i32 %3493, 255
  %3495 = tail call i32 @llvm.ctpop.i32(i32 %3494)
  %3496 = trunc i32 %3495 to i8
  %3497 = and i8 %3496, 1
  %3498 = xor i8 %3497, 1
  store i8 %3498, i8* %45, align 1
  %3499 = xor i64 %3486, %3487
  %3500 = xor i64 %3499, %3488
  %3501 = lshr i64 %3500, 4
  %3502 = trunc i64 %3501 to i8
  %3503 = and i8 %3502, 1
  store i8 %3503, i8* %50, align 1
  %3504 = icmp eq i64 %3488, 0
  %3505 = zext i1 %3504 to i8
  store i8 %3505, i8* %53, align 1
  %3506 = lshr i64 %3488, 63
  %3507 = trunc i64 %3506 to i8
  store i8 %3507, i8* %56, align 1
  %3508 = lshr i64 %3486, 63
  %3509 = lshr i64 %3487, 63
  %3510 = xor i64 %3506, %3508
  %3511 = xor i64 %3506, %3509
  %3512 = add nuw nsw i64 %3510, %3511
  %3513 = icmp eq i64 %3512, 2
  %3514 = zext i1 %3513 to i8
  store i8 %3514, i8* %62, align 1
  %3515 = add i64 %3478, 26
  store i64 %3515, i64* %3, align 8
  store i64 %3488, i64* %3485, align 8
  %3516 = load i64, i64* %RBP.i, align 8
  %3517 = add i64 %3516, -720
  %3518 = load i32, i32* %EAX.i1214, align 4
  %3519 = load i64, i64* %3, align 8
  %3520 = add i64 %3519, 6
  store i64 %3520, i64* %3, align 8
  %3521 = inttoptr i64 %3517 to i32*
  store i32 %3518, i32* %3521, align 4
  %3522 = load i64, i64* %RBP.i, align 8
  %3523 = add i64 %3522, -84
  %3524 = load i64, i64* %3, align 8
  %3525 = add i64 %3524, 3
  store i64 %3525, i64* %3, align 8
  %3526 = inttoptr i64 %3523 to i32*
  %3527 = load i32, i32* %3526, align 4
  %3528 = add i32 %3527, 1
  %3529 = zext i32 %3528 to i64
  store i64 %3529, i64* %RAX.i1208, align 8
  %3530 = icmp eq i32 %3527, -1
  %3531 = icmp eq i32 %3528, 0
  %3532 = or i1 %3530, %3531
  %3533 = zext i1 %3532 to i8
  store i8 %3533, i8* %38, align 1
  %3534 = and i32 %3528, 255
  %3535 = tail call i32 @llvm.ctpop.i32(i32 %3534)
  %3536 = trunc i32 %3535 to i8
  %3537 = and i8 %3536, 1
  %3538 = xor i8 %3537, 1
  store i8 %3538, i8* %45, align 1
  %3539 = xor i32 %3528, %3527
  %3540 = lshr i32 %3539, 4
  %3541 = trunc i32 %3540 to i8
  %3542 = and i8 %3541, 1
  store i8 %3542, i8* %50, align 1
  %3543 = zext i1 %3531 to i8
  store i8 %3543, i8* %53, align 1
  %3544 = lshr i32 %3528, 31
  %3545 = trunc i32 %3544 to i8
  store i8 %3545, i8* %56, align 1
  %3546 = lshr i32 %3527, 31
  %3547 = xor i32 %3544, %3546
  %3548 = add nuw nsw i32 %3547, %3544
  %3549 = icmp eq i32 %3548, 2
  %3550 = zext i1 %3549 to i8
  store i8 %3550, i8* %62, align 1
  %3551 = add i64 %3524, 9
  store i64 %3551, i64* %3, align 8
  store i32 %3528, i32* %3526, align 4
  %3552 = load i64, i64* %3, align 8
  %3553 = add i64 %3552, -251
  store i64 %3553, i64* %3, align 8
  br label %block_.L_4634f3

block_.L_4635f3:                                  ; preds = %block_.L_4634f3
  %3554 = add i64 %3155, -656
  store i64 %3554, i64* %RSI.i1239, align 8
  %3555 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i64 %3555, i64* %RDI.i1218, align 8
  %3556 = add i64 %3195, -388867
  %3557 = add i64 %3195, 20
  %3558 = load i64, i64* %6, align 8
  %3559 = add i64 %3558, -8
  %3560 = inttoptr i64 %3559 to i64*
  store i64 %3557, i64* %3560, align 8
  store i64 %3559, i64* %6, align 8
  store i64 %3556, i64* %3, align 8
  %call2_463602 = tail call %struct.Memory* @sub_4046f0.sgftreeAddComment(%struct.State* nonnull %0, i64 %3556, %struct.Memory* %MEMORY.31)
  %.pre92 = load i64, i64* %3, align 8
  br label %block_.L_463607

block_.L_463607:                                  ; preds = %block_.L_4635f3, %block_.L_46349b, %block_462ce4
  %3561 = phi i64 [ %3084, %block_.L_46349b ], [ %.pre92, %block_.L_4635f3 ], [ %172, %block_462ce4 ]
  %MEMORY.32 = phi %struct.Memory* [ %call2_462cc6, %block_.L_46349b ], [ %call2_463602, %block_.L_4635f3 ], [ %call2_462cc6, %block_462ce4 ]
  %3562 = load i64, i64* %6, align 8
  %3563 = add i64 %3562, 736
  store i64 %3563, i64* %6, align 8
  %3564 = icmp ugt i64 %3562, -737
  %3565 = zext i1 %3564 to i8
  store i8 %3565, i8* %38, align 1
  %3566 = trunc i64 %3563 to i32
  %3567 = and i32 %3566, 255
  %3568 = tail call i32 @llvm.ctpop.i32(i32 %3567)
  %3569 = trunc i32 %3568 to i8
  %3570 = and i8 %3569, 1
  %3571 = xor i8 %3570, 1
  store i8 %3571, i8* %45, align 1
  %3572 = xor i64 %3563, %3562
  %3573 = lshr i64 %3572, 4
  %3574 = trunc i64 %3573 to i8
  %3575 = and i8 %3574, 1
  store i8 %3575, i8* %50, align 1
  %3576 = icmp eq i64 %3563, 0
  %3577 = zext i1 %3576 to i8
  store i8 %3577, i8* %53, align 1
  %3578 = lshr i64 %3563, 63
  %3579 = trunc i64 %3578 to i8
  store i8 %3579, i8* %56, align 1
  %3580 = lshr i64 %3562, 63
  %3581 = xor i64 %3578, %3580
  %3582 = add nuw nsw i64 %3581, %3578
  %3583 = icmp eq i64 %3582, 2
  %3584 = zext i1 %3583 to i8
  store i8 %3584, i8* %62, align 1
  %3585 = add i64 %3561, 8
  store i64 %3585, i64* %3, align 8
  %3586 = add i64 %3562, 744
  %3587 = inttoptr i64 %3563 to i64*
  %3588 = load i64, i64* %3587, align 8
  store i64 %3588, i64* %RBX.i190, align 8
  store i64 %3586, i64* %6, align 8
  %3589 = add i64 %3561, 10
  store i64 %3589, i64* %3, align 8
  %3590 = add i64 %3562, 752
  %3591 = inttoptr i64 %3586 to i64*
  %3592 = load i64, i64* %3591, align 8
  store i64 %3592, i64* %R12.i128, align 8
  store i64 %3590, i64* %6, align 8
  %3593 = add i64 %3561, 12
  store i64 %3593, i64* %3, align 8
  %3594 = add i64 %3562, 760
  %3595 = inttoptr i64 %3590 to i64*
  %3596 = load i64, i64* %3595, align 8
  store i64 %3596, i64* %R14.i102, align 8
  store i64 %3594, i64* %6, align 8
  %3597 = add i64 %3561, 14
  store i64 %3597, i64* %3, align 8
  %3598 = add i64 %3562, 768
  %3599 = inttoptr i64 %3594 to i64*
  %3600 = load i64, i64* %3599, align 8
  store i64 %3600, i64* %R15.i63, align 8
  store i64 %3598, i64* %6, align 8
  %3601 = add i64 %3561, 15
  store i64 %3601, i64* %3, align 8
  %3602 = add i64 %3562, 776
  %3603 = inttoptr i64 %3598 to i64*
  %3604 = load i64, i64* %3603, align 8
  store i64 %3604, i64* %RBP.i, align 8
  store i64 %3602, i64* %6, align 8
  %3605 = add i64 %3561, 16
  store i64 %3605, i64* %3, align 8
  %3606 = inttoptr i64 %3602 to i64*
  %3607 = load i64, i64* %3606, align 8
  store i64 %3607, i64* %3, align 8
  %3608 = add i64 %3562, 784
  store i64 %3608, i64* %6, align 8
  ret %struct.Memory* %MEMORY.32
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %R15, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
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
define %struct.Memory* @routine_pushq__r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %R14, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
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
define %struct.Memory* @routine_pushq__r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %R12, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
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
define %struct.Memory* @routine_pushq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subq__0x2e0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -736
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 736
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
define %struct.Memory* @routine_movl__edi__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq__rcx__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 12099168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_callq_.countlib(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_0x190__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 400
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
define %struct.Memory* @routine_subl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
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
define %struct.Memory* @routine_jge_.L_462ce9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_463607(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_cmpl_0x190__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 400
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
define %struct.Memory* @routine_jge_.L_463380(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x68__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x6c__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x70__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x74__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -116
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x78__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x7c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x80__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x84__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x30__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___r11__rbx_4____r14d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %4 = load i64, i64* %R11, align 8
  %5 = load i64, i64* %RBX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r14d__MINUS0x64__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
  %6 = load i32, i32* %R14D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movl__0x0__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movl_MINUS0x64__rbp____r14d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -100
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____r15d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -52
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
define %struct.Memory* @routine_movl_MINUS0x24__rbp____r12d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
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
define %struct.Memory* @routine_movq__rdi__MINUS0x2a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -680
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r14d___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14D = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %R14D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x2b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -688
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r15d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0
  %R15D = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %R15D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x2b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -696
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r12d___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0
  %R12D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %R12D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = bitcast i64* %RSP to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x2b8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -696
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x8__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x2b0__rbp____r11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -688
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R11, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r11__0x10__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %R11, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x2a8__rbp____rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -680
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rbx__0x18__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %RBX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10__0x20__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.incremental_order_moves(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_cmpl_MINUS0x48__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -72
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
define %struct.Memory* @routine_jne_.L_463070(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xa___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 10, i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x64__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -100
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
define %struct.Memory* @routine_movl_MINUS0x34__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_callq_.approxlib(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -108
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
define %struct.Memory* @routine_jle_.L_462e80(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x5__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jg_.L_462e2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jne_.L_462e57(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xb54ce4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xb54ce0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xb54ce0_type* @G_0xb54ce0 to i32*), align 8
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
define %struct.Memory* @routine_jle_.L_462e57(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x7afc74___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7afc74_type* @G_0x7afc74 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x88__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
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
define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_addl_0xc8__rdx__rsi_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 200
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0xc8__rdx__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 200
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_462e7b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x88__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
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
define %struct.Memory* @routine_movl_0x7afc60___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8060000
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_addl_0xc8__rax__rdx_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 200
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0xc8__rax__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 200
  %8 = add i64 %7, %6
  %9 = load i32, i32* %ECX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_462ed8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_462eaf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x7afc90___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7afc90_type* @G_0x7afc90 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0xc8__rcx__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 200
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0xc8__rcx__rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 200
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EAX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_462ed3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7afc80___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8060032
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x84__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jg_.L_462eea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_462f12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57fb0d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1083___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4227, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57fdbf___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fdbf_type* @G__0x57fdbf to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4294967295, i64* %RAX, align 8
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
define %struct.Memory* @routine_callq_.abortgo(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x84__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -132
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
define %struct.Memory* @routine_movl_0x7afca0___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8060064
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x68__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_je_.L_462f4a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_462f67(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x7afcb4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7afcb4_type* @G_0x7afcb4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__MINUS0x78__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jg_.L_462f97(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x78__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -120
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
define %struct.Memory* @routine_movl_0x7afcc0___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8060096
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_462fb7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7afcd4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7afcd4_type* @G_0x7afcd4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x78__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -120
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
define %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jle_.L_46301e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x5__MINUS0x7c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
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
define %struct.Memory* @routine_jg_.L_462ff9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x7c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -124
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
define %struct.Memory* @routine_movl_0x7afce0___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8060128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_463019(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7afcf4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7afcf4_type* @G_0x7afcf4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x7c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -124
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
define %struct.Memory* @routine_jmpq_.L_46301e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_jg_.L_46304e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x80__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_movl_0x7afd00___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8060160
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46306b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7afd14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7afd14_type* @G_0x7afd14 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46336d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jle_.L_4630a1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x4__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 4, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x8c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
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
define %struct.Memory* @routine_movl_0x7afd20___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8060192
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -140
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
define %struct.Memory* @routine_jne_.L_4630f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7afd34___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7afd34_type* @G_0x7afd34 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_jg_.L_46311f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_jg_.L_463249(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x70__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
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
define %struct.Memory* @routine_jne_.L_463249(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_463249(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jg_.L_463171(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_46317b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_46317b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x5__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -148
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 5, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %CL, align 1
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
define %struct.Memory* @routine_movl_0x7afd40___rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8060224
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x2b9__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -697
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_4631c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_setg__cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %13 = load i8, i8* %12, align 1
  %14 = icmp ne i8 %13, 0
  %15 = xor i1 %11, %14
  %16 = xor i1 %15, true
  %17 = and i1 %8, %16
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x2b9__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -697
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %AL, align 1
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
define %struct.Memory* @routine_movzbl__al___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i8, i8* %AL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_46321a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x80__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
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
define %struct.Memory* @routine_movl_0x7afd58___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7afd58_type* @G_0x7afd58 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_463244(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x7afd5c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7afd5c_type* @G_0x7afd5c to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_463249(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_46325b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_463283(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x10cc___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4300, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7afd60___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8060256
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4632ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x7afd74___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7afd74_type* @G_0x7afd74 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_4632fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x7afd80___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8060288
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46331b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7afd94___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7afd94_type* @G_0x7afd94 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_46334b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x7afda0___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8060320
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_463368(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7afdb4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7afdb4_type* @G_0x7afdb4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_463372(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_462cef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movl_0x190__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 400
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
define %struct.Memory* @routine_jge_.L_46349b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movl_0xc8__rax__rcx_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, 200
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0x54__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movl__edx__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_jge_.L_463416(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x58__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_cmpl_MINUS0x5c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -92
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
define %struct.Memory* @routine_jle_.L_463403(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x58__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movl__edx__MINUS0x60__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_463408(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4633c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_463488(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__edx__0xc8__rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 200
  %8 = add i64 %7, %6
  %9 = load i32, i32* %EDX, align 4
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %8 to i32*
  store i32 %9, i32* %12, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x98__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -152
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
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_jmpq_.L_46348d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_463386(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__0xab0ef8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 9
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = trunc i64 %5 to i32
  %8 = and i32 %7, 255
  %9 = tail call i32 @llvm.ctpop.i32(i32 %8)
  %10 = trunc i32 %9 to i8
  %11 = and i8 %10, 1
  %12 = xor i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %12, i8* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %14, align 1
  %15 = icmp eq i64 %5, 0
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i64 %5, 63
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_463607(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57fdd0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fdd0_type* @G__0x57fdd0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x29c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -668
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x290__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -656
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_callq_.sprintf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x290__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -656
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x29c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -668
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__rcx__MINUS0x298__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -664
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
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
define %struct.Memory* @routine_movl__r8d__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -704
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4635f3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57f9a0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f9a0_type* @G__0x57f9a0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x29c__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -668
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 20, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x298__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -664
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movl___rcx__rdx_4____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2c4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -708
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
define %struct.Memory* @routine_movl_MINUS0x2c4__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -708
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x41___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 65
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ugt i32 %6, -66
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
define %struct.Memory* @routine_movslq_MINUS0x54__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movl___rcx__r10_4____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %R10, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r11d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R11D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x2c8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -712
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -8
  %8 = icmp ult i32 %4, 8
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
define %struct.Memory* @routine_setge__bl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %BL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  %12 = xor i1 %8, %11
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i8
  store i8 %14, i8* %BL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___bl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %BL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %BL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %BL, align 1
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
define %struct.Memory* @routine_movzbl__bl___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %BL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i8, i8* %BL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c8__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -712
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
define %struct.Memory* @routine_addl__edx___r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %6 = load i32, i32* %R11D, align 4
  %7 = load i32, i32* %EDX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = add i32 %7, %6
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %5, align 8
  %12 = icmp ult i32 %10, %6
  %13 = icmp ult i32 %10, %7
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
  %23 = xor i32 %7, %6
  %24 = xor i32 %23, %10
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %10, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %6, 31
  %36 = lshr i32 %7, 31
  %37 = xor i32 %32, %35
  %38 = xor i32 %32, %36
  %39 = add nuw nsw i32 %37, %38
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7ae438___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rcx__r10_4____r14d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %R10, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r14d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R14D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x2cc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -716
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0x2cc__rbp____r14d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -716
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
define %struct.Memory* @routine_subl__eax___r14d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14D = bitcast %union.anon* %4 to i32*
  %5 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %6 = load i32, i32* %R14D, align 4
  %7 = load i32, i32* %EAX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 3
  store i64 %9, i64* %PC, align 8
  %10 = sub i32 %6, %7
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %5, align 8
  %12 = icmp ult i32 %6, %7
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
  %21 = xor i32 %7, %6
  %22 = xor i32 %21, %10
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %10, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %10, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %6, 31
  %34 = lshr i32 %7, 31
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
define %struct.Memory* @routine_movl_0xc8__rcx__r10_4____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %R10, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, 200
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r11d___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %R11D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r14d___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14D = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %R14D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x29c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -668
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
define %struct.Memory* @routine_movq_MINUS0x298__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -664
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__ecx___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__rsi__MINUS0x298__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -664
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2d0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -720
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4634f3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x290__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -656
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xab0ef8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sgftreeAddComment(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x2e0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 736
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -737
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
define %struct.Memory* @routine_popq__rbx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %RBX, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R12, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R14, align 8
  store i64 %7, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_popq__r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, 8
  %8 = inttoptr i64 %6 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %R15, align 8
  store i64 %7, i64* %5, align 8
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
