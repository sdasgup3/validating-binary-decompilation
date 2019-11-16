; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6cb8f8_type = type <{ [8 x i8] }>
%G_0x6cb900_type = type <{ [8 x i8] }>
%G_0x6d4690_type = type <{ [8 x i8] }>
%G_0x722cb0_type = type <{ [8 x i8] }>
%G__0x4c16f1_type = type <{ [8 x i8] }>
%G__0x4c1705_type = type <{ [8 x i8] }>
%G__0x4c171c_type = type <{ [8 x i8] }>
%G__0x6cd878_type = type <{ [8 x i8] }>
%G__0x6d2198_type = type <{ [8 x i8] }>
%G__0x710a60_type = type <{ [8 x i8] }>
%G__0x721e00_type = type <{ [8 x i8] }>
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
@G_0x6cb8f8 = local_unnamed_addr global %G_0x6cb8f8_type zeroinitializer
@G_0x6cb900 = local_unnamed_addr global %G_0x6cb900_type zeroinitializer
@G_0x6d4690 = local_unnamed_addr global %G_0x6d4690_type zeroinitializer
@G_0x722cb0 = local_unnamed_addr global %G_0x722cb0_type zeroinitializer
@G__0x4c16f1 = global %G__0x4c16f1_type zeroinitializer
@G__0x4c1705 = global %G__0x4c1705_type zeroinitializer
@G__0x4c171c = global %G__0x4c171c_type zeroinitializer
@G__0x6cd878 = global %G__0x6cd878_type zeroinitializer
@G__0x6d2198 = global %G__0x6d2198_type zeroinitializer
@G__0x710a60 = global %G__0x710a60_type zeroinitializer
@G__0x721e00 = global %G__0x721e00_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @calloc(i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_4382e0.get_mem_mv(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_438580.get_mem_ACcoeff(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_438730.get_mem_DCcoeff(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_459800.get_mem2Dint(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_459a80.get_mem3Dint(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_438850.CAVLC_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_431960.RandomIntraInit(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_49ee80.InitSEIMessages(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @init_img(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %R15.i83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %11 = load i64, i64* %R15.i83, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0
  %R14.i163 = getelementptr inbounds %union.anon, %union.anon* %15, i64 0, i32 0
  %16 = load i64, i64* %R14.i163, align 8
  %17 = load i64, i64* %3, align 8
  %18 = add i64 %17, 2
  store i64 %18, i64* %3, align 8
  %19 = add i64 %7, -24
  %20 = inttoptr i64 %19 to i64*
  store i64 %16, i64* %20, align 8
  %RBX.i194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %21 = load i64, i64* %RBX.i194, align 8
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %3, align 8
  %24 = add i64 %7, -32
  %25 = inttoptr i64 %24 to i64*
  store i64 %21, i64* %25, align 8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %7, -328
  store i64 %27, i64* %6, align 8
  %28 = icmp ult i64 %24, 296
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %29, i8* %30, align 1
  %31 = trunc i64 %27 to i32
  %32 = and i32 %31, 255
  %33 = tail call i32 @llvm.ctpop.i32(i32 %32)
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %36 = xor i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %36, i8* %37, align 1
  %38 = xor i64 %24, %27
  %39 = lshr i64 %38, 4
  %40 = trunc i64 %39 to i8
  %41 = and i8 %40, 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %41, i8* %42, align 1
  %43 = icmp eq i64 %27, 0
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %44, i8* %45, align 1
  %46 = lshr i64 %27, 63
  %47 = trunc i64 %46 to i8
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %47, i8* %48, align 1
  %49 = lshr i64 %24, 63
  %50 = xor i64 %46, %49
  %51 = add nuw nsw i64 %50, %49
  %52 = icmp eq i64 %51, 2
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %53, i8* %54, align 1
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i278 = getelementptr inbounds %union.anon, %union.anon* %55, i64 0, i32 0
  %56 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %56, i64* %RAX.i278, align 8
  %57 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i309 = getelementptr inbounds %union.anon, %union.anon* %57, i64 0, i32 0
  %58 = add i64 %56, 72
  %59 = add i64 %26, 18
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %58 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = zext i32 %61 to i64
  store i64 %62, i64* %RCX.i309, align 8
  %63 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %ECX.i359 = bitcast %union.anon* %57 to i32*
  %64 = add i64 %63, 72700
  %65 = add i64 %26, 32
  store i64 %65, i64* %3, align 8
  %66 = inttoptr i64 %64 to i32*
  store i32 %61, i32* %66, align 4
  %67 = load i64, i64* %3, align 8
  %68 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %68, i64* %RAX.i278, align 8
  %69 = add i64 %68, 3296
  %70 = add i64 %67, 14
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %69 to i32*
  %72 = load i32, i32* %71, align 4
  %73 = zext i32 %72 to i64
  store i64 %73, i64* %RCX.i309, align 8
  %74 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %75 = add i64 %74, 72660
  %76 = add i64 %67, 28
  store i64 %76, i64* %3, align 8
  %77 = inttoptr i64 %75 to i32*
  store i32 %72, i32* %77, align 4
  %78 = load i64, i64* %3, align 8
  %79 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %79, i64* %RAX.i278, align 8
  %80 = add i64 %79, 72660
  %81 = add i64 %78, 14
  store i64 %81, i64* %3, align 8
  %82 = inttoptr i64 %80 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = zext i32 %83 to i64
  store i64 %84, i64* %RCX.i309, align 8
  store i64 %79, i64* %RAX.i278, align 8
  %85 = add i64 %79, 72664
  %86 = add i64 %78, 28
  store i64 %86, i64* %3, align 8
  %87 = inttoptr i64 %85 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = sub i32 %83, %88
  %90 = icmp ult i32 %83, %88
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %30, align 1
  %92 = and i32 %89, 255
  %93 = tail call i32 @llvm.ctpop.i32(i32 %92)
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  %96 = xor i8 %95, 1
  store i8 %96, i8* %37, align 1
  %97 = xor i32 %88, %83
  %98 = xor i32 %97, %89
  %99 = lshr i32 %98, 4
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  store i8 %101, i8* %42, align 1
  %102 = icmp eq i32 %89, 0
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %45, align 1
  %104 = lshr i32 %89, 31
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %48, align 1
  %106 = lshr i32 %83, 31
  %107 = lshr i32 %88, 31
  %108 = xor i32 %107, %106
  %109 = xor i32 %104, %106
  %110 = add nuw nsw i32 %109, %108
  %111 = icmp eq i32 %110, 2
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %54, align 1
  %113 = icmp ne i8 %105, 0
  %114 = xor i1 %113, %111
  %.demorgan = or i1 %102, %114
  %.v = select i1 %.demorgan, i64 34, i64 55
  %115 = add i64 %78, %.v
  store i64 %115, i64* %3, align 8
  br i1 %.demorgan, label %block_433587, label %block_.L_43359c

block_433587:                                     ; preds = %entry
  store i64 %79, i64* %RAX.i278, align 8
  %116 = add i64 %79, 72700
  %117 = add i64 %115, 15
  store i64 %117, i64* %3, align 8
  %118 = inttoptr i64 %116 to i32*
  %119 = load i32, i32* %118, align 4
  store i8 0, i8* %30, align 1
  %120 = and i32 %119, 255
  %121 = tail call i32 @llvm.ctpop.i32(i32 %120)
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 1
  %124 = xor i8 %123, 1
  store i8 %124, i8* %37, align 1
  store i8 0, i8* %42, align 1
  %125 = icmp eq i32 %119, 0
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %45, align 1
  %127 = lshr i32 %119, 31
  %128 = trunc i32 %127 to i8
  store i8 %128, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %.v137 = select i1 %125, i64 21, i64 68
  %129 = add i64 %115, %.v137
  store i64 %129, i64* %3, align 8
  br i1 %125, label %block_.L_43359c, label %block_.L_4335cb

block_.L_43359c:                                  ; preds = %block_433587, %entry
  %130 = phi i64 [ %129, %block_433587 ], [ %115, %entry ]
  store i64 8, i64* %RAX.i278, align 8
  store i64 16, i64* %RCX.i309, align 8
  %RDX.i821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 %79, i64* %RDX.i821, align 8
  %131 = add i64 %130, 25
  store i64 %131, i64* %3, align 8
  %132 = load i32, i32* %82, align 4
  %133 = add i32 %132, -8
  %134 = icmp ult i32 %132, 8
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %30, align 1
  %136 = and i32 %133, 255
  %137 = tail call i32 @llvm.ctpop.i32(i32 %136)
  %138 = trunc i32 %137 to i8
  %139 = and i8 %138, 1
  %140 = xor i8 %139, 1
  store i8 %140, i8* %37, align 1
  %141 = xor i32 %133, %132
  %142 = lshr i32 %141, 4
  %143 = trunc i32 %142 to i8
  %144 = and i8 %143, 1
  store i8 %144, i8* %42, align 1
  %145 = icmp eq i32 %133, 0
  %146 = zext i1 %145 to i8
  store i8 %146, i8* %45, align 1
  %147 = lshr i32 %133, 31
  %148 = trunc i32 %147 to i8
  store i8 %148, i8* %48, align 1
  %149 = lshr i32 %132, 31
  %150 = xor i32 %147, %149
  %151 = add nuw nsw i32 %150, %149
  %152 = icmp eq i32 %151, 2
  %153 = zext i1 %152 to i8
  store i8 %153, i8* %54, align 1
  %154 = icmp ne i8 %148, 0
  %155 = xor i1 %154, %152
  %.demorgan121 = or i1 %145, %155
  %156 = select i1 %.demorgan121, i64 8, i64 16
  store i64 %156, i64* %RAX.i278, align 8
  store i64 %79, i64* %RDX.i821, align 8
  %157 = add i64 %79, 72656
  %158 = trunc i64 %156 to i32
  %159 = add i64 %130, 42
  store i64 %159, i64* %3, align 8
  %160 = inttoptr i64 %157 to i32*
  store i32 %158, i32* %160, align 4
  %161 = load i64, i64* %3, align 8
  %162 = add i64 %161, 47
  store i64 %162, i64* %3, align 8
  br label %block_.L_4335f5

block_.L_4335cb:                                  ; preds = %block_433587
  store i64 8, i64* %RAX.i278, align 8
  store i64 16, i64* %RCX.i309, align 8
  %RDX.i1781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 %79, i64* %RDX.i1781, align 8
  %163 = add i64 %129, 25
  store i64 %163, i64* %3, align 8
  %164 = load i32, i32* %87, align 4
  %165 = add i32 %164, -8
  %166 = icmp ult i32 %164, 8
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %30, align 1
  %168 = and i32 %165, 255
  %169 = tail call i32 @llvm.ctpop.i32(i32 %168)
  %170 = trunc i32 %169 to i8
  %171 = and i8 %170, 1
  %172 = xor i8 %171, 1
  store i8 %172, i8* %37, align 1
  %173 = xor i32 %165, %164
  %174 = lshr i32 %173, 4
  %175 = trunc i32 %174 to i8
  %176 = and i8 %175, 1
  store i8 %176, i8* %42, align 1
  %177 = icmp eq i32 %165, 0
  %178 = zext i1 %177 to i8
  store i8 %178, i8* %45, align 1
  %179 = lshr i32 %165, 31
  %180 = trunc i32 %179 to i8
  store i8 %180, i8* %48, align 1
  %181 = lshr i32 %164, 31
  %182 = xor i32 %179, %181
  %183 = add nuw nsw i32 %182, %181
  %184 = icmp eq i32 %183, 2
  %185 = zext i1 %184 to i8
  store i8 %185, i8* %54, align 1
  %186 = icmp ne i8 %180, 0
  %187 = xor i1 %186, %184
  %.demorgan122 = or i1 %177, %187
  %188 = select i1 %.demorgan122, i64 8, i64 16
  store i64 %188, i64* %RAX.i278, align 8
  store i64 %79, i64* %RDX.i1781, align 8
  %189 = add i64 %79, 72656
  %190 = trunc i64 %188 to i32
  %191 = add i64 %129, 42
  store i64 %191, i64* %3, align 8
  %192 = inttoptr i64 %189 to i32*
  store i32 %190, i32* %192, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4335f5

block_.L_4335f5:                                  ; preds = %block_.L_4335cb, %block_.L_43359c
  %193 = phi i64 [ %.pre, %block_.L_4335cb ], [ %162, %block_.L_43359c ]
  %EAX.i1727.pre-phi = bitcast %union.anon* %55 to i32*
  store i64 1, i64* %RAX.i278, align 8
  %194 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %194, i64* %RCX.i309, align 8
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i1765 = getelementptr inbounds %union.anon, %union.anon* %195, i64 0, i32 0
  %196 = add i64 %194, 72660
  %197 = add i64 %193, 19
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %196 to i32*
  %199 = load i32, i32* %198, align 4
  %200 = add i32 %199, -8
  %EDX.i1759 = bitcast %union.anon* %195 to i32*
  %201 = sext i32 %200 to i64
  %202 = mul nsw i64 %201, 6
  %203 = trunc i64 %202 to i32
  %204 = and i64 %202, 4294967294
  store i64 %204, i64* %RDX.i1765, align 8
  %205 = mul i64 %201, 25769803776
  %206 = ashr exact i64 %205, 32
  %207 = icmp ne i64 %206, %202
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %30, align 1
  %209 = and i32 %203, 254
  %210 = tail call i32 @llvm.ctpop.i32(i32 %209)
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  %213 = xor i8 %212, 1
  store i8 %213, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  %214 = lshr i32 %203, 31
  %215 = trunc i32 %214 to i8
  store i8 %215, i8* %48, align 1
  store i8 %208, i8* %54, align 1
  %216 = add i64 %194, 72668
  %217 = trunc i64 %202 to i32
  %218 = add i64 %193, 39
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %216 to i32*
  store i32 %217, i32* %219, align 4
  %220 = load i64, i64* %3, align 8
  %221 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %221, i64* %RCX.i309, align 8
  %222 = add i64 %221, 72660
  %223 = add i64 %220, 14
  store i64 %223, i64* %3, align 8
  %224 = inttoptr i64 %222 to i32*
  %225 = load i32, i32* %224, align 4
  %226 = add i32 %225, -8
  %227 = lshr i32 %226, 31
  %228 = trunc i32 %227 to i8
  %229 = shl i32 %226, 1
  %230 = icmp slt i32 %226, 0
  %231 = icmp slt i32 %229, 0
  %232 = xor i1 %230, %231
  %233 = zext i32 %229 to i64
  store i64 %233, i64* %RDX.i1765, align 8
  store i8 %228, i8* %30, align 1
  %234 = and i32 %229, 254
  %235 = tail call i32 @llvm.ctpop.i32(i32 %234)
  %236 = trunc i32 %235 to i8
  %237 = and i8 %236, 1
  %238 = xor i8 %237, 1
  store i8 %238, i8* %37, align 1
  store i8 0, i8* %42, align 1
  %239 = icmp eq i32 %229, 0
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %45, align 1
  %241 = lshr i32 %226, 30
  %242 = trunc i32 %241 to i8
  %243 = and i8 %242, 1
  store i8 %243, i8* %48, align 1
  %244 = zext i1 %232 to i8
  store i8 %244, i8* %54, align 1
  %245 = add i64 %221, 72676
  %246 = add i64 %220, 33
  store i64 %246, i64* %3, align 8
  %247 = inttoptr i64 %245 to i32*
  store i32 %229, i32* %247, align 4
  %248 = load i64, i64* %3, align 8
  %249 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %249, i64* %RCX.i309, align 8
  %250 = add i64 %249, 72660
  %251 = add i64 %248, 14
  store i64 %251, i64* %3, align 8
  %252 = inttoptr i64 %250 to i32*
  %253 = load i32, i32* %252, align 4
  %254 = add i32 %253, -1
  %255 = zext i32 %254 to i64
  %256 = icmp eq i32 %253, 0
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %30, align 1
  %258 = and i32 %254, 255
  %259 = tail call i32 @llvm.ctpop.i32(i32 %258)
  %260 = trunc i32 %259 to i8
  %261 = and i8 %260, 1
  %262 = xor i8 %261, 1
  store i8 %262, i8* %37, align 1
  %263 = xor i32 %254, %253
  %264 = lshr i32 %263, 4
  %265 = trunc i32 %264 to i8
  %266 = and i8 %265, 1
  store i8 %266, i8* %42, align 1
  %267 = icmp eq i32 %254, 0
  %268 = zext i1 %267 to i8
  store i8 %268, i8* %45, align 1
  %269 = lshr i32 %254, 31
  %270 = trunc i32 %269 to i8
  store i8 %270, i8* %48, align 1
  %271 = lshr i32 %253, 31
  %272 = xor i32 %269, %271
  %273 = add nuw nsw i32 %272, %271
  %274 = icmp eq i32 %273, 2
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %54, align 1
  store i64 %255, i64* %RCX.i309, align 8
  %276 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %277 = zext i32 %276 to i64
  store i64 %277, i64* %RDX.i1765, align 8
  %CL.i1724 = bitcast %union.anon* %57 to i8*
  %278 = add i64 %248, 23
  store i64 %278, i64* %3, align 8
  %279 = trunc i32 %254 to i5
  switch i5 %279, label %285 [
    i5 0, label %routine_shll__cl___edx.exit
    i5 1, label %280
  ]

; <label>:280:                                    ; preds = %block_.L_4335f5
  %281 = shl i32 %276, 1
  %282 = icmp slt i32 %276, 0
  %283 = icmp slt i32 %281, 0
  %284 = xor i1 %282, %283
  br label %294

; <label>:285:                                    ; preds = %block_.L_4335f5
  %286 = and i32 %254, 31
  %287 = zext i32 %286 to i64
  %288 = add nuw nsw i64 %287, 4294967295
  %289 = and i64 %288, 4294967295
  %290 = shl i64 %277, %289
  %291 = trunc i64 %290 to i32
  %292 = icmp slt i32 %291, 0
  %293 = shl i32 %291, 1
  br label %294

; <label>:294:                                    ; preds = %285, %280
  %295 = phi i1 [ %282, %280 ], [ %292, %285 ]
  %296 = phi i1 [ %284, %280 ], [ false, %285 ]
  %297 = phi i32 [ %281, %280 ], [ %293, %285 ]
  %298 = zext i32 %297 to i64
  store i64 %298, i64* %RDX.i1765, align 8
  %299 = zext i1 %295 to i8
  store i8 %299, i8* %30, align 1
  %300 = and i32 %297, 254
  %301 = tail call i32 @llvm.ctpop.i32(i32 %300)
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  %304 = xor i8 %303, 1
  store i8 %304, i8* %37, align 1
  store i8 0, i8* %42, align 1
  %305 = icmp eq i32 %297, 0
  %306 = zext i1 %305 to i8
  store i8 %306, i8* %45, align 1
  %307 = lshr i32 %297, 31
  %308 = trunc i32 %307 to i8
  store i8 %308, i8* %48, align 1
  %309 = zext i1 %296 to i8
  store i8 %309, i8* %54, align 1
  br label %routine_shll__cl___edx.exit

routine_shll__cl___edx.exit:                      ; preds = %294, %block_.L_4335f5
  %310 = phi i32 [ %297, %294 ], [ %276, %block_.L_4335f5 ]
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i1722 = getelementptr inbounds %union.anon, %union.anon* %311, i64 0, i32 0
  %312 = add i64 %249, 72680
  %313 = add i64 %248, 37
  store i64 %313, i64* %3, align 8
  %314 = inttoptr i64 %312 to i32*
  store i32 %310, i32* %314, align 4
  %315 = load i64, i64* %3, align 8
  %316 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %316, i64* %RSI.i1722, align 8
  %317 = add i64 %316, 72660
  %318 = add i64 %315, 14
  store i64 %318, i64* %3, align 8
  %319 = inttoptr i64 %317 to i32*
  %320 = load i32, i32* %319, align 4
  %321 = zext i32 %320 to i64
  store i64 %321, i64* %RCX.i309, align 8
  %322 = load i64, i64* %RAX.i278, align 8
  %323 = add i64 %315, 16
  store i64 %323, i64* %3, align 8
  %324 = trunc i32 %320 to i5
  switch i5 %324, label %331 [
    i5 0, label %routine_shll__cl___eax.exit
    i5 1, label %325
  ]

; <label>:325:                                    ; preds = %routine_shll__cl___edx.exit
  %326 = trunc i64 %322 to i32
  %327 = shl i32 %326, 1
  %328 = icmp slt i32 %326, 0
  %329 = icmp slt i32 %327, 0
  %330 = xor i1 %328, %329
  br label %341

; <label>:331:                                    ; preds = %routine_shll__cl___edx.exit
  %332 = and i32 %320, 31
  %333 = zext i32 %332 to i64
  %334 = add nuw nsw i64 %333, 4294967295
  %335 = and i64 %322, 4294967295
  %336 = and i64 %334, 4294967295
  %337 = shl i64 %335, %336
  %338 = trunc i64 %337 to i32
  %339 = icmp slt i32 %338, 0
  %340 = shl i32 %338, 1
  br label %341

; <label>:341:                                    ; preds = %331, %325
  %342 = phi i1 [ %328, %325 ], [ %339, %331 ]
  %343 = phi i1 [ %330, %325 ], [ false, %331 ]
  %344 = phi i32 [ %327, %325 ], [ %340, %331 ]
  %345 = zext i32 %344 to i64
  store i64 %345, i64* %RAX.i278, align 8
  %346 = zext i1 %342 to i8
  store i8 %346, i8* %30, align 1
  %347 = and i32 %344, 254
  %348 = tail call i32 @llvm.ctpop.i32(i32 %347)
  %349 = trunc i32 %348 to i8
  %350 = and i8 %349, 1
  %351 = xor i8 %350, 1
  store i8 %351, i8* %37, align 1
  store i8 0, i8* %42, align 1
  %352 = icmp eq i32 %344, 0
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %45, align 1
  %354 = lshr i32 %344, 31
  %355 = trunc i32 %354 to i8
  store i8 %355, i8* %48, align 1
  %356 = zext i1 %343 to i8
  store i8 %356, i8* %54, align 1
  br label %routine_shll__cl___eax.exit

routine_shll__cl___eax.exit:                      ; preds = %341, %routine_shll__cl___edx.exit
  %357 = phi i64 [ %345, %341 ], [ %322, %routine_shll__cl___edx.exit ]
  %358 = trunc i64 %357 to i32
  %359 = add i32 %358, -1
  %360 = zext i32 %359 to i64
  store i64 %360, i64* %RAX.i278, align 8
  %361 = icmp eq i32 %358, 0
  %362 = zext i1 %361 to i8
  store i8 %362, i8* %30, align 1
  %363 = and i32 %359, 255
  %364 = tail call i32 @llvm.ctpop.i32(i32 %363)
  %365 = trunc i32 %364 to i8
  %366 = and i8 %365, 1
  %367 = xor i8 %366, 1
  store i8 %367, i8* %37, align 1
  %368 = xor i32 %359, %358
  %369 = lshr i32 %368, 4
  %370 = trunc i32 %369 to i8
  %371 = and i8 %370, 1
  store i8 %371, i8* %42, align 1
  %372 = icmp eq i32 %359, 0
  %373 = zext i1 %372 to i8
  store i8 %373, i8* %45, align 1
  %374 = lshr i32 %359, 31
  %375 = trunc i32 %374 to i8
  store i8 %375, i8* %48, align 1
  %376 = lshr i32 %358, 31
  %377 = xor i32 %374, %376
  %378 = add nuw nsw i32 %377, %376
  %379 = icmp eq i32 %378, 2
  %380 = zext i1 %379 to i8
  store i8 %380, i8* %54, align 1
  %381 = add i64 %316, 72684
  %382 = add i64 %315, 33
  store i64 %382, i64* %3, align 8
  %383 = inttoptr i64 %381 to i32*
  store i32 %359, i32* %383, align 4
  %384 = load i64, i64* %3, align 8
  %385 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %385, i64* %RSI.i1722, align 8
  %386 = add i64 %385, 72700
  %387 = add i64 %384, 15
  store i64 %387, i64* %3, align 8
  %388 = inttoptr i64 %386 to i32*
  %389 = load i32, i32* %388, align 4
  store i8 0, i8* %30, align 1
  %390 = and i32 %389, 255
  %391 = tail call i32 @llvm.ctpop.i32(i32 %390)
  %392 = trunc i32 %391 to i8
  %393 = and i8 %392, 1
  %394 = xor i8 %393, 1
  store i8 %394, i8* %37, align 1
  store i8 0, i8* %42, align 1
  %395 = icmp eq i32 %389, 0
  %396 = zext i1 %395 to i8
  store i8 %396, i8* %45, align 1
  %397 = lshr i32 %389, 31
  %398 = trunc i32 %397 to i8
  store i8 %398, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %.v123 = select i1 %395, i64 459, i64 21
  %399 = add i64 %384, %.v123
  store i64 %399, i64* %3, align 8
  br i1 %395, label %block_.L_43384f, label %block_433699

block_433699:                                     ; preds = %routine_shll__cl___eax.exit
  %AL.i1697 = bitcast %union.anon* %55 to i8*
  store i8 1, i8* %AL.i1697, align 1
  store i64 1, i64* %RCX.i309, align 8
  %400 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %400, i64* %RDX.i1765, align 8
  %401 = add i64 %400, 3300
  %402 = add i64 %399, 21
  store i64 %402, i64* %3, align 8
  %403 = inttoptr i64 %401 to i32*
  %404 = load i32, i32* %403, align 4
  %405 = zext i32 %404 to i64
  store i64 %405, i64* %RSI.i1722, align 8
  %ESI.i1685 = bitcast %union.anon* %311 to i32*
  %406 = add i64 %385, 72664
  %407 = add i64 %399, 35
  store i64 %407, i64* %3, align 8
  %408 = inttoptr i64 %406 to i32*
  store i32 %404, i32* %408, align 4
  %409 = load i64, i64* %3, align 8
  %410 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %410, i64* %RDX.i1765, align 8
  %411 = add i64 %410, 72664
  %412 = add i64 %409, 14
  store i64 %412, i64* %3, align 8
  %413 = inttoptr i64 %411 to i32*
  %414 = load i32, i32* %413, align 4
  %415 = zext i32 %414 to i64
  store i64 %415, i64* %RSI.i1722, align 8
  %416 = load i64, i64* %RBP.i, align 8
  %417 = add i64 %416, -40
  %418 = load i32, i32* %ECX.i359, align 4
  %419 = add i64 %409, 17
  store i64 %419, i64* %3, align 8
  %420 = inttoptr i64 %417 to i32*
  store i32 %418, i32* %420, align 4
  %421 = load i32, i32* %ESI.i1685, align 4
  %422 = zext i32 %421 to i64
  %423 = load i64, i64* %3, align 8
  store i64 %422, i64* %RCX.i309, align 8
  %424 = load i64, i64* %RBP.i, align 8
  %425 = add i64 %424, -40
  %426 = add i64 %423, 5
  store i64 %426, i64* %3, align 8
  %427 = inttoptr i64 %425 to i32*
  %428 = load i32, i32* %427, align 4
  %429 = zext i32 %428 to i64
  store i64 %429, i64* %RSI.i1722, align 8
  %430 = add i64 %423, 7
  store i64 %430, i64* %3, align 8
  %431 = trunc i32 %421 to i5
  switch i5 %431, label %437 [
    i5 0, label %routine_shll__cl___esi.exit1669
    i5 1, label %432
  ]

; <label>:432:                                    ; preds = %block_433699
  %433 = shl i32 %428, 1
  %434 = icmp slt i32 %428, 0
  %435 = icmp slt i32 %433, 0
  %436 = xor i1 %434, %435
  br label %446

; <label>:437:                                    ; preds = %block_433699
  %438 = and i32 %421, 31
  %439 = zext i32 %438 to i64
  %440 = add nuw nsw i64 %439, 4294967295
  %441 = and i64 %440, 4294967295
  %442 = shl i64 %429, %441
  %443 = trunc i64 %442 to i32
  %444 = icmp slt i32 %443, 0
  %445 = shl i32 %443, 1
  br label %446

; <label>:446:                                    ; preds = %437, %432
  %447 = phi i1 [ %434, %432 ], [ %444, %437 ]
  %448 = phi i1 [ %436, %432 ], [ false, %437 ]
  %449 = phi i32 [ %433, %432 ], [ %445, %437 ]
  %450 = zext i32 %449 to i64
  store i64 %450, i64* %RSI.i1722, align 8
  %451 = zext i1 %447 to i8
  store i8 %451, i8* %30, align 1
  %452 = and i32 %449, 254
  %453 = tail call i32 @llvm.ctpop.i32(i32 %452)
  %454 = trunc i32 %453 to i8
  %455 = and i8 %454, 1
  %456 = xor i8 %455, 1
  store i8 %456, i8* %37, align 1
  store i8 0, i8* %42, align 1
  %457 = icmp eq i32 %449, 0
  %458 = zext i1 %457 to i8
  store i8 %458, i8* %45, align 1
  %459 = lshr i32 %449, 31
  %460 = trunc i32 %459 to i8
  store i8 %460, i8* %48, align 1
  %461 = zext i1 %448 to i8
  store i8 %461, i8* %54, align 1
  br label %routine_shll__cl___esi.exit1669

routine_shll__cl___esi.exit1669:                  ; preds = %446, %block_433699
  %462 = phi i32 [ %449, %446 ], [ %428, %block_433699 ]
  %463 = add i32 %462, -1
  %464 = zext i32 %463 to i64
  store i64 %464, i64* %RSI.i1722, align 8
  %465 = icmp eq i32 %462, 0
  %466 = zext i1 %465 to i8
  store i8 %466, i8* %30, align 1
  %467 = and i32 %463, 255
  %468 = tail call i32 @llvm.ctpop.i32(i32 %467)
  %469 = trunc i32 %468 to i8
  %470 = and i8 %469, 1
  %471 = xor i8 %470, 1
  store i8 %471, i8* %37, align 1
  %472 = xor i32 %463, %462
  %473 = lshr i32 %472, 4
  %474 = trunc i32 %473 to i8
  %475 = and i8 %474, 1
  store i8 %475, i8* %42, align 1
  %476 = icmp eq i32 %463, 0
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %45, align 1
  %478 = lshr i32 %463, 31
  %479 = trunc i32 %478 to i8
  store i8 %479, i8* %48, align 1
  %480 = lshr i32 %462, 31
  %481 = xor i32 %478, %480
  %482 = add nuw nsw i32 %481, %480
  %483 = icmp eq i32 %482, 2
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %54, align 1
  %485 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %486 = add i64 %485, 72688
  %487 = add i64 %423, 24
  store i64 %487, i64* %3, align 8
  %488 = inttoptr i64 %486 to i32*
  store i32 %463, i32* %488, align 4
  %489 = load i64, i64* %3, align 8
  %490 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %490, i64* %RDX.i1765, align 8
  %491 = add i64 %490, 72700
  %492 = add i64 %489, 14
  store i64 %492, i64* %3, align 8
  %493 = inttoptr i64 %491 to i32*
  %494 = load i32, i32* %493, align 4
  %495 = zext i32 %494 to i64
  store i64 %495, i64* %RCX.i309, align 8
  %496 = load i64, i64* %RBP.i, align 8
  %497 = add i64 %496, -40
  %498 = add i64 %489, 17
  store i64 %498, i64* %3, align 8
  %499 = inttoptr i64 %497 to i32*
  %500 = load i32, i32* %499, align 4
  %501 = zext i32 %500 to i64
  store i64 %501, i64* %RSI.i1722, align 8
  %502 = add i64 %489, 19
  store i64 %502, i64* %3, align 8
  %503 = trunc i32 %494 to i5
  switch i5 %503, label %509 [
    i5 0, label %routine_shll__cl___esi.exit
    i5 1, label %504
  ]

; <label>:504:                                    ; preds = %routine_shll__cl___esi.exit1669
  %505 = shl i32 %500, 1
  %506 = icmp slt i32 %500, 0
  %507 = icmp slt i32 %505, 0
  %508 = xor i1 %506, %507
  br label %518

; <label>:509:                                    ; preds = %routine_shll__cl___esi.exit1669
  %510 = and i32 %494, 31
  %511 = zext i32 %510 to i64
  %512 = add nuw nsw i64 %511, 4294967295
  %513 = and i64 %512, 4294967295
  %514 = shl i64 %501, %513
  %515 = trunc i64 %514 to i32
  %516 = icmp slt i32 %515, 0
  %517 = shl i32 %515, 1
  br label %518

; <label>:518:                                    ; preds = %509, %504
  %519 = phi i1 [ %506, %504 ], [ %516, %509 ]
  %520 = phi i1 [ %508, %504 ], [ false, %509 ]
  %521 = phi i32 [ %505, %504 ], [ %517, %509 ]
  %522 = zext i32 %521 to i64
  store i64 %522, i64* %RSI.i1722, align 8
  %523 = zext i1 %519 to i8
  store i8 %523, i8* %30, align 1
  %524 = and i32 %521, 254
  %525 = tail call i32 @llvm.ctpop.i32(i32 %524)
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  %528 = xor i8 %527, 1
  store i8 %528, i8* %37, align 1
  store i8 0, i8* %42, align 1
  %529 = icmp eq i32 %521, 0
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %45, align 1
  %531 = lshr i32 %521, 31
  %532 = trunc i32 %531 to i8
  store i8 %532, i8* %48, align 1
  %533 = zext i1 %520 to i8
  store i8 %533, i8* %54, align 1
  br label %routine_shll__cl___esi.exit

routine_shll__cl___esi.exit:                      ; preds = %518, %routine_shll__cl___esi.exit1669
  %534 = phi i64 [ %522, %518 ], [ %501, %routine_shll__cl___esi.exit1669 ]
  %535 = trunc i64 %534 to i32
  %536 = and i64 %534, 4294967294
  store i64 %536, i64* %RSI.i1722, align 8
  store i8 0, i8* %30, align 1
  %537 = and i32 %535, 254
  %538 = tail call i32 @llvm.ctpop.i32(i32 %537)
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  %541 = xor i8 %540, 1
  store i8 %541, i8* %37, align 1
  %542 = icmp ult i32 %535, 2
  %543 = zext i1 %542 to i8
  store i8 %543, i8* %45, align 1
  %544 = lshr i32 %535, 31
  %545 = trunc i32 %544 to i8
  store i8 %545, i8* %48, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %42, align 1
  %546 = add i64 %490, 72692
  %547 = trunc i64 %536 to i32
  %548 = add i64 %489, 36
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %546 to i32*
  store i32 %547, i32* %549, align 4
  %550 = load i64, i64* %3, align 8
  %551 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %551, i64* %RDX.i1765, align 8
  %552 = add i64 %551, 72692
  %553 = add i64 %550, 14
  store i64 %553, i64* %3, align 8
  %554 = inttoptr i64 %552 to i32*
  %555 = load i32, i32* %554, align 4
  %556 = shl i32 %555, 1
  %557 = icmp slt i32 %555, 0
  %558 = icmp slt i32 %556, 0
  %559 = xor i1 %557, %558
  %560 = zext i32 %556 to i64
  store i64 %560, i64* %RSI.i1722, align 8
  %.lobit22 = lshr i32 %555, 31
  %561 = trunc i32 %.lobit22 to i8
  store i8 %561, i8* %30, align 1
  %562 = and i32 %556, 254
  %563 = tail call i32 @llvm.ctpop.i32(i32 %562)
  %564 = trunc i32 %563 to i8
  %565 = and i8 %564, 1
  %566 = xor i8 %565, 1
  store i8 %566, i8* %37, align 1
  store i8 0, i8* %42, align 1
  %567 = icmp eq i32 %556, 0
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %45, align 1
  %569 = lshr i32 %555, 30
  %570 = trunc i32 %569 to i8
  %571 = and i8 %570, 1
  store i8 %571, i8* %48, align 1
  %572 = zext i1 %559 to i8
  store i8 %572, i8* %54, align 1
  %573 = add i64 %551, 72696
  %574 = add i64 %550, 30
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %573 to i32*
  store i32 %556, i32* %575, align 4
  %576 = load i64, i64* %3, align 8
  %577 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %577, i64* %RDX.i1765, align 8
  %578 = add i64 %577, 72700
  %579 = add i64 %576, 15
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %578 to i32*
  %581 = load i32, i32* %580, align 4
  %582 = add i32 %581, -1
  %583 = icmp eq i32 %581, 0
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %30, align 1
  %585 = and i32 %582, 255
  %586 = tail call i32 @llvm.ctpop.i32(i32 %585)
  %587 = trunc i32 %586 to i8
  %588 = and i8 %587, 1
  %589 = xor i8 %588, 1
  store i8 %589, i8* %37, align 1
  %590 = xor i32 %582, %581
  %591 = lshr i32 %590, 4
  %592 = trunc i32 %591 to i8
  %593 = and i8 %592, 1
  store i8 %593, i8* %42, align 1
  %594 = icmp eq i32 %582, 0
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %45, align 1
  %596 = lshr i32 %582, 31
  %597 = trunc i32 %596 to i8
  store i8 %597, i8* %48, align 1
  %598 = lshr i32 %581, 31
  %599 = xor i32 %596, %598
  %600 = add nuw nsw i32 %599, %598
  %601 = icmp eq i32 %600, 2
  %602 = zext i1 %601 to i8
  store i8 %602, i8* %54, align 1
  %603 = load i64, i64* %RBP.i, align 8
  %604 = add i64 %603, -41
  %605 = load i8, i8* %AL.i1697, align 1
  %606 = add i64 %576, 18
  store i64 %606, i64* %3, align 8
  %607 = inttoptr i64 %604 to i8*
  store i8 %605, i8* %607, align 1
  %608 = load i64, i64* %3, align 8
  %609 = load i8, i8* %45, align 1
  %610 = icmp ne i8 %609, 0
  %.v143 = select i1 %610, i64 27, i64 6
  %611 = add i64 %608, %.v143
  store i64 %611, i64* %3, align 8
  %cmpBr_43373a = icmp eq i8 %609, 1
  br i1 %cmpBr_43373a, label %block_.L_433755, label %block_433740

block_433740:                                     ; preds = %routine_shll__cl___esi.exit
  %612 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %612, i64* %RAX.i278, align 8
  %613 = add i64 %612, 72700
  %614 = add i64 %611, 15
  store i64 %614, i64* %3, align 8
  %615 = inttoptr i64 %613 to i32*
  %616 = load i32, i32* %615, align 4
  %617 = add i32 %616, -2
  %618 = icmp ult i32 %616, 2
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %30, align 1
  %620 = and i32 %617, 255
  %621 = tail call i32 @llvm.ctpop.i32(i32 %620)
  %622 = trunc i32 %621 to i8
  %623 = and i8 %622, 1
  %624 = xor i8 %623, 1
  store i8 %624, i8* %37, align 1
  %625 = xor i32 %617, %616
  %626 = lshr i32 %625, 4
  %627 = trunc i32 %626 to i8
  %628 = and i8 %627, 1
  store i8 %628, i8* %42, align 1
  %629 = icmp eq i32 %617, 0
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %45, align 1
  %631 = lshr i32 %617, 31
  %632 = trunc i32 %631 to i8
  store i8 %632, i8* %48, align 1
  %633 = lshr i32 %616, 31
  %634 = xor i32 %631, %633
  %635 = add nuw nsw i32 %634, %633
  %636 = icmp eq i32 %635, 2
  %637 = zext i1 %636 to i8
  store i8 %637, i8* %54, align 1
  store i8 %630, i8* %CL.i1724, align 1
  %638 = load i64, i64* %RBP.i, align 8
  %639 = add i64 %638, -41
  %640 = add i64 %611, 21
  store i64 %640, i64* %3, align 8
  %641 = inttoptr i64 %639 to i8*
  store i8 %630, i8* %641, align 1
  %.pre41 = load i64, i64* %3, align 8
  br label %block_.L_433755

block_.L_433755:                                  ; preds = %block_433740, %routine_shll__cl___esi.exit
  %642 = phi i64 [ %.pre41, %block_433740 ], [ %611, %routine_shll__cl___esi.exit ]
  %643 = load i64, i64* %RBP.i, align 8
  %644 = add i64 %643, -41
  %645 = add i64 %642, 3
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %644 to i8*
  %647 = load i8, i8* %646, align 1
  store i8 %647, i8* %AL.i1697, align 1
  store i8 1, i8* %CL.i1724, align 1
  store i64 8, i64* %RSI.i1722, align 8
  %648 = and i8 %647, 1
  store i8 0, i8* %30, align 1
  %649 = zext i8 %648 to i32
  %650 = tail call i32 @llvm.ctpop.i32(i32 %649)
  %651 = trunc i32 %650 to i8
  %652 = xor i8 %651, 1
  store i8 %652, i8* %37, align 1
  %653 = xor i8 %648, 1
  store i8 %653, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %42, align 1
  %654 = icmp eq i8 %653, 0
  %655 = select i1 %654, i64 8, i64 16
  store i64 %655, i64* %RDX.i1765, align 8
  %RDI.i1597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %656 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %657 = add i64 %656, 72708
  %658 = trunc i64 %655 to i32
  %659 = add i64 %642, 34
  store i64 %659, i64* %3, align 8
  %660 = inttoptr i64 %657 to i32*
  store i32 %658, i32* %660, align 4
  %661 = load i64, i64* %3, align 8
  %662 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %662, i64* %RDI.i1597, align 8
  %663 = add i64 %662, 72700
  %664 = add i64 %661, 15
  store i64 %664, i64* %3, align 8
  %665 = inttoptr i64 %663 to i32*
  %666 = load i32, i32* %665, align 4
  %667 = add i32 %666, -3
  %668 = icmp ult i32 %666, 3
  %669 = zext i1 %668 to i8
  store i8 %669, i8* %30, align 1
  %670 = and i32 %667, 255
  %671 = tail call i32 @llvm.ctpop.i32(i32 %670)
  %672 = trunc i32 %671 to i8
  %673 = and i8 %672, 1
  %674 = xor i8 %673, 1
  store i8 %674, i8* %37, align 1
  %675 = xor i32 %667, %666
  %676 = lshr i32 %675, 4
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  store i8 %678, i8* %42, align 1
  %679 = icmp eq i32 %667, 0
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %45, align 1
  %681 = lshr i32 %667, 31
  %682 = trunc i32 %681 to i8
  store i8 %682, i8* %48, align 1
  %683 = lshr i32 %666, 31
  %684 = xor i32 %681, %683
  %685 = add nuw nsw i32 %684, %683
  %686 = icmp eq i32 %685, 2
  %687 = zext i1 %686 to i8
  store i8 %687, i8* %54, align 1
  %688 = load i64, i64* %RBP.i, align 8
  %689 = add i64 %688, -42
  %690 = load i8, i8* %CL.i1724, align 1
  %691 = add i64 %661, 18
  store i64 %691, i64* %3, align 8
  %692 = inttoptr i64 %689 to i8*
  store i8 %690, i8* %692, align 1
  %693 = load i64, i64* %3, align 8
  %694 = load i8, i8* %45, align 1
  %695 = icmp ne i8 %694, 0
  %.v144 = select i1 %695, i64 27, i64 6
  %696 = add i64 %693, %.v144
  store i64 %696, i64* %3, align 8
  %cmpBr_433789 = icmp eq i8 %694, 1
  br i1 %cmpBr_433789, label %block_.L_4337a4, label %block_43378f

block_43378f:                                     ; preds = %block_.L_433755
  %697 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %697, i64* %RAX.i278, align 8
  %698 = add i64 %697, 72700
  %699 = add i64 %696, 15
  store i64 %699, i64* %3, align 8
  %700 = inttoptr i64 %698 to i32*
  %701 = load i32, i32* %700, align 4
  %702 = add i32 %701, -2
  %703 = icmp ult i32 %701, 2
  %704 = zext i1 %703 to i8
  store i8 %704, i8* %30, align 1
  %705 = and i32 %702, 255
  %706 = tail call i32 @llvm.ctpop.i32(i32 %705)
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  %709 = xor i8 %708, 1
  store i8 %709, i8* %37, align 1
  %710 = xor i32 %702, %701
  %711 = lshr i32 %710, 4
  %712 = trunc i32 %711 to i8
  %713 = and i8 %712, 1
  store i8 %713, i8* %42, align 1
  %714 = icmp eq i32 %702, 0
  %715 = zext i1 %714 to i8
  store i8 %715, i8* %45, align 1
  %716 = lshr i32 %702, 31
  %717 = trunc i32 %716 to i8
  store i8 %717, i8* %48, align 1
  %718 = lshr i32 %701, 31
  %719 = xor i32 %716, %718
  %720 = add nuw nsw i32 %719, %718
  %721 = icmp eq i32 %720, 2
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %54, align 1
  store i8 %715, i8* %CL.i1724, align 1
  %723 = load i64, i64* %RBP.i, align 8
  %724 = add i64 %723, -42
  %725 = add i64 %696, 21
  store i64 %725, i64* %3, align 8
  %726 = inttoptr i64 %724 to i8*
  store i8 %715, i8* %726, align 1
  %.pre42 = load i64, i64* %3, align 8
  br label %block_.L_4337a4

block_.L_4337a4:                                  ; preds = %block_43378f, %block_.L_433755
  %727 = phi i64 [ %.pre42, %block_43378f ], [ %696, %block_.L_433755 ]
  %728 = load i64, i64* %RBP.i, align 8
  %729 = add i64 %728, -42
  %730 = add i64 %727, 3
  store i64 %730, i64* %3, align 8
  %731 = inttoptr i64 %729 to i8*
  %732 = load i8, i8* %731, align 1
  store i8 %732, i8* %AL.i1697, align 1
  store i64 16, i64* %RDX.i1765, align 8
  %733 = and i8 %732, 1
  store i8 0, i8* %30, align 1
  %734 = zext i8 %733 to i32
  %735 = tail call i32 @llvm.ctpop.i32(i32 %734)
  %736 = trunc i32 %735 to i8
  %737 = xor i8 %736, 1
  store i8 %737, i8* %37, align 1
  %738 = xor i8 %733, 1
  store i8 %738, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %42, align 1
  %739 = icmp eq i8 %738, 0
  %740 = select i1 %739, i64 16, i64 8
  store i64 %740, i64* %RCX.i309, align 8
  %741 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %742 = add i64 %741, 72712
  %743 = trunc i64 %740 to i32
  %744 = add i64 %727, 32
  store i64 %744, i64* %3, align 8
  %745 = inttoptr i64 %742 to i32*
  store i32 %743, i32* %745, align 4
  %746 = load i64, i64* %3, align 8
  %747 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %747, i64* %RSI.i1722, align 8
  %748 = add i64 %747, 72664
  %749 = add i64 %746, 14
  store i64 %749, i64* %3, align 8
  %750 = inttoptr i64 %748 to i32*
  %751 = load i32, i32* %750, align 4
  %752 = add i32 %751, -8
  %753 = sext i32 %752 to i64
  %754 = mul nsw i64 %753, 6
  %755 = trunc i64 %754 to i32
  %756 = and i64 %754, 4294967294
  store i64 %756, i64* %RCX.i309, align 8
  %757 = mul i64 %753, 25769803776
  %758 = ashr exact i64 %757, 32
  %759 = icmp ne i64 %758, %754
  %760 = zext i1 %759 to i8
  store i8 %760, i8* %30, align 1
  %761 = and i32 %755, 254
  %762 = tail call i32 @llvm.ctpop.i32(i32 %761)
  %763 = trunc i32 %762 to i8
  %764 = and i8 %763, 1
  %765 = xor i8 %764, 1
  store i8 %765, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  %766 = lshr i32 %755, 31
  %767 = trunc i32 %766 to i8
  store i8 %767, i8* %48, align 1
  store i8 %760, i8* %54, align 1
  %768 = add i64 %747, 72672
  %769 = trunc i64 %754 to i32
  %770 = add i64 %746, 34
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %768 to i32*
  store i32 %769, i32* %771, align 4
  %772 = load i64, i64* %3, align 8
  %773 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %773, i64* %RSI.i1722, align 8
  %774 = add i64 %773, 72724
  %775 = add i64 %772, 15
  store i64 %775, i64* %3, align 8
  %776 = inttoptr i64 %774 to i32*
  %777 = load i32, i32* %776, align 4
  store i8 0, i8* %30, align 1
  %778 = and i32 %777, 255
  %779 = tail call i32 @llvm.ctpop.i32(i32 %778)
  %780 = trunc i32 %779 to i8
  %781 = and i8 %780, 1
  %782 = xor i8 %781, 1
  store i8 %782, i8* %37, align 1
  store i8 0, i8* %42, align 1
  %783 = icmp eq i32 %777, 0
  %784 = zext i1 %783 to i8
  store i8 %784, i8* %45, align 1
  %785 = lshr i32 %777, 31
  %786 = trunc i32 %785 to i8
  store i8 %786, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %.v124 = select i1 %783, i64 44, i64 21
  %787 = add i64 %772, %.v124
  store i64 %787, i64* %3, align 8
  br i1 %783, label %block_.L_433812, label %block_4337fb

block_4337fb:                                     ; preds = %block_.L_4337a4
  store i64 %773, i64* %RAX.i278, align 8
  %788 = add i64 %773, 72672
  %789 = add i64 %787, 14
  store i64 %789, i64* %3, align 8
  %790 = inttoptr i64 %788 to i32*
  %791 = load i32, i32* %790, align 4
  %792 = add i32 %791, 6
  %793 = zext i32 %792 to i64
  store i64 %793, i64* %RCX.i309, align 8
  %794 = icmp ugt i32 %791, -7
  %795 = zext i1 %794 to i8
  store i8 %795, i8* %30, align 1
  %796 = and i32 %792, 255
  %797 = tail call i32 @llvm.ctpop.i32(i32 %796)
  %798 = trunc i32 %797 to i8
  %799 = and i8 %798, 1
  %800 = xor i8 %799, 1
  store i8 %800, i8* %37, align 1
  %801 = xor i32 %792, %791
  %802 = lshr i32 %801, 4
  %803 = trunc i32 %802 to i8
  %804 = and i8 %803, 1
  store i8 %804, i8* %42, align 1
  %805 = icmp eq i32 %792, 0
  %806 = zext i1 %805 to i8
  store i8 %806, i8* %45, align 1
  %807 = lshr i32 %792, 31
  %808 = trunc i32 %807 to i8
  store i8 %808, i8* %48, align 1
  %809 = lshr i32 %791, 31
  %810 = xor i32 %807, %809
  %811 = add nuw nsw i32 %810, %807
  %812 = icmp eq i32 %811, 2
  %813 = zext i1 %812 to i8
  store i8 %813, i8* %54, align 1
  %814 = add i64 %787, 23
  store i64 %814, i64* %3, align 8
  store i32 %792, i32* %790, align 4
  %.pre43 = load i64, i64* %3, align 8
  %.pre44 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  br label %block_.L_433812

block_.L_433812:                                  ; preds = %block_4337fb, %block_.L_4337a4
  %815 = phi i64 [ %.pre44, %block_4337fb ], [ %773, %block_.L_4337a4 ]
  %816 = phi i64 [ %.pre43, %block_4337fb ], [ %787, %block_.L_4337a4 ]
  %817 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %817, i64* %RAX.i278, align 8
  %818 = add i64 %817, 212
  %819 = add i64 %816, 14
  store i64 %819, i64* %3, align 8
  %820 = inttoptr i64 %818 to i32*
  %821 = load i32, i32* %820, align 4
  %822 = zext i32 %821 to i64
  store i64 %822, i64* %RCX.i309, align 8
  %823 = add i64 %815, 72716
  %824 = add i64 %816, 28
  store i64 %824, i64* %3, align 8
  %825 = inttoptr i64 %823 to i32*
  store i32 %821, i32* %825, align 4
  %826 = load i64, i64* %3, align 8
  %827 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %827, i64* %RAX.i278, align 8
  %828 = add i64 %827, 216
  %829 = add i64 %826, 14
  store i64 %829, i64* %3, align 8
  %830 = inttoptr i64 %828 to i32*
  %831 = load i32, i32* %830, align 4
  %832 = zext i32 %831 to i64
  store i64 %832, i64* %RCX.i309, align 8
  %833 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %833, i64* %RAX.i278, align 8
  %834 = add i64 %833, 72720
  %835 = add i64 %826, 28
  store i64 %835, i64* %3, align 8
  %836 = inttoptr i64 %834 to i32*
  store i32 %831, i32* %836, align 4
  %837 = load i64, i64* %3, align 8
  %838 = add i64 %837, 185
  store i64 %838, i64* %3, align 8
  br label %block_.L_433903

block_.L_43384f:                                  ; preds = %routine_shll__cl___eax.exit
  %839 = add i64 %385, 72664
  %840 = add i64 %399, 18
  store i64 %840, i64* %3, align 8
  %841 = inttoptr i64 %839 to i32*
  store i32 0, i32* %841, align 4
  %842 = load i64, i64* %3, align 8
  %843 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %844 = add i64 %843, 72688
  %845 = add i64 %842, 18
  store i64 %845, i64* %3, align 8
  %846 = inttoptr i64 %844 to i32*
  store i32 0, i32* %846, align 4
  %847 = load i64, i64* %3, align 8
  %848 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %849 = add i64 %848, 72692
  %850 = add i64 %847, 18
  store i64 %850, i64* %3, align 8
  %851 = inttoptr i64 %849 to i32*
  store i32 0, i32* %851, align 4
  %852 = load i64, i64* %3, align 8
  %853 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %854 = add i64 %853, 72696
  %855 = add i64 %852, 18
  store i64 %855, i64* %3, align 8
  %856 = inttoptr i64 %854 to i32*
  store i32 0, i32* %856, align 4
  %857 = load i64, i64* %3, align 8
  %858 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %859 = add i64 %858, 72708
  %860 = add i64 %857, 18
  store i64 %860, i64* %3, align 8
  %861 = inttoptr i64 %859 to i32*
  store i32 0, i32* %861, align 4
  %862 = load i64, i64* %3, align 8
  %863 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %864 = add i64 %863, 72712
  %865 = add i64 %862, 18
  store i64 %865, i64* %3, align 8
  %866 = inttoptr i64 %864 to i32*
  store i32 0, i32* %866, align 4
  %867 = load i64, i64* %3, align 8
  %868 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %869 = add i64 %868, 72672
  %870 = add i64 %867, 18
  store i64 %870, i64* %3, align 8
  %871 = inttoptr i64 %869 to i32*
  store i32 0, i32* %871, align 4
  %872 = load i64, i64* %3, align 8
  %873 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %874 = add i64 %873, 72672
  %875 = add i64 %872, 18
  store i64 %875, i64* %3, align 8
  %876 = inttoptr i64 %874 to i32*
  store i32 0, i32* %876, align 4
  %877 = load i64, i64* %3, align 8
  %878 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %879 = add i64 %878, 72716
  %880 = add i64 %877, 18
  store i64 %880, i64* %3, align 8
  %881 = inttoptr i64 %879 to i32*
  store i32 0, i32* %881, align 4
  %882 = load i64, i64* %3, align 8
  %883 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %883, i64* %RAX.i278, align 8
  %884 = add i64 %883, 72720
  %885 = add i64 %882, 18
  store i64 %885, i64* %3, align 8
  %886 = inttoptr i64 %884 to i32*
  store i32 0, i32* %886, align 4
  %.pre45 = load i64, i64* %3, align 8
  br label %block_.L_433903

block_.L_433903:                                  ; preds = %block_.L_43384f, %block_.L_433812
  %887 = phi i64 [ %.pre45, %block_.L_43384f ], [ %838, %block_.L_433812 ]
  %888 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*), align 8
  store i64 %888, i64* %RAX.i278, align 8
  %889 = add i64 %888, 1132
  %890 = add i64 %887, 14
  store i64 %890, i64* %3, align 8
  %891 = inttoptr i64 %889 to i32*
  %892 = load i32, i32* %891, align 4
  %893 = zext i32 %892 to i64
  store i64 %893, i64* %RCX.i309, align 8
  %894 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %895 = add i64 %894, 32
  %896 = add i64 %887, 25
  store i64 %896, i64* %3, align 8
  %897 = inttoptr i64 %895 to i32*
  store i32 %892, i32* %897, align 4
  %898 = load i64, i64* %3, align 8
  %899 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*), align 8
  store i64 %899, i64* %RAX.i278, align 8
  %900 = add i64 %899, 1148
  %901 = add i64 %898, 15
  store i64 %901, i64* %3, align 8
  %902 = inttoptr i64 %900 to i32*
  %903 = load i32, i32* %902, align 4
  store i8 0, i8* %30, align 1
  %904 = and i32 %903, 255
  %905 = tail call i32 @llvm.ctpop.i32(i32 %904)
  %906 = trunc i32 %905 to i8
  %907 = and i8 %906, 1
  %908 = xor i8 %907, 1
  store i8 %908, i8* %37, align 1
  store i8 0, i8* %42, align 1
  %909 = icmp eq i32 %903, 0
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %45, align 1
  %911 = lshr i32 %903, 31
  %912 = trunc i32 %911 to i8
  store i8 %912, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %.v125 = select i1 %909, i64 43, i64 21
  %913 = add i64 %898, %.v125
  store i64 %899, i64* %RAX.i278, align 8
  %914 = add i64 %899, 1132
  %915 = add i64 %913, 14
  store i64 %915, i64* %3, align 8
  %916 = inttoptr i64 %914 to i32*
  %917 = load i32, i32* %916, align 4
  %918 = zext i32 %917 to i64
  store i64 %918, i64* %RCX.i309, align 8
  br i1 %909, label %block_.L_433947, label %block_433931

block_433931:                                     ; preds = %block_.L_433903
  %919 = load i64, i64* %RBP.i, align 8
  %920 = add i64 %919, -48
  %921 = add i64 %913, 17
  store i64 %921, i64* %3, align 8
  %922 = inttoptr i64 %920 to i32*
  store i32 %917, i32* %922, align 4
  %923 = load i64, i64* %3, align 8
  %924 = add i64 %923, 25
  store i64 %924, i64* %3, align 8
  br label %block_.L_43395b

block_.L_433947:                                  ; preds = %block_.L_433903
  %925 = shl i32 %917, 1
  %926 = icmp slt i32 %917, 0
  %927 = icmp slt i32 %925, 0
  %928 = xor i1 %926, %927
  %929 = zext i32 %925 to i64
  store i64 %929, i64* %RCX.i309, align 8
  %.lobit28 = lshr i32 %917, 31
  %930 = trunc i32 %.lobit28 to i8
  store i8 %930, i8* %30, align 1
  %931 = and i32 %925, 254
  %932 = tail call i32 @llvm.ctpop.i32(i32 %931)
  %933 = trunc i32 %932 to i8
  %934 = and i8 %933, 1
  %935 = xor i8 %934, 1
  store i8 %935, i8* %37, align 1
  store i8 0, i8* %42, align 1
  %936 = icmp eq i32 %925, 0
  %937 = zext i1 %936 to i8
  store i8 %937, i8* %45, align 1
  %938 = lshr i32 %917, 30
  %939 = trunc i32 %938 to i8
  %940 = and i8 %939, 1
  store i8 %940, i8* %48, align 1
  %941 = zext i1 %928 to i8
  store i8 %941, i8* %54, align 1
  %942 = load i64, i64* %RBP.i, align 8
  %943 = add i64 %942, -48
  %944 = add i64 %913, 19
  store i64 %944, i64* %3, align 8
  %945 = inttoptr i64 %943 to i32*
  store i32 %925, i32* %945, align 4
  %.pre46 = load i64, i64* %3, align 8
  br label %block_.L_43395b

block_.L_43395b:                                  ; preds = %block_.L_433947, %block_433931
  %946 = phi i64 [ %.pre46, %block_.L_433947 ], [ %924, %block_433931 ]
  %947 = load i64, i64* %RBP.i, align 8
  %948 = add i64 %947, -48
  %949 = add i64 %946, 3
  store i64 %949, i64* %3, align 8
  %950 = inttoptr i64 %948 to i32*
  %951 = load i32, i32* %950, align 4
  %952 = zext i32 %951 to i64
  store i64 %952, i64* %RAX.i278, align 8
  %953 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %954 = add i64 %953, 36
  %955 = add i64 %946, 14
  store i64 %955, i64* %3, align 8
  %956 = inttoptr i64 %954 to i32*
  store i32 %951, i32* %956, align 4
  %957 = load i64, i64* %3, align 8
  %958 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %958, i64* %RCX.i309, align 8
  %959 = add i64 %958, 36
  %960 = add i64 %957, 11
  store i64 %960, i64* %3, align 8
  %961 = inttoptr i64 %959 to i32*
  %962 = load i32, i32* %961, align 4
  %963 = zext i32 %962 to i64
  store i64 %963, i64* %RAX.i278, align 8
  %964 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %965 = add i64 %964, 72376
  %966 = add i64 %957, 25
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %965 to i32*
  store i32 %962, i32* %967, align 4
  %968 = load i64, i64* %3, align 8
  %969 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %970 = add i64 %969, 72636
  %971 = add i64 %968, 18
  store i64 %971, i64* %3, align 8
  %972 = inttoptr i64 %970 to i32*
  store i32 0, i32* %972, align 4
  %973 = load i64, i64* %3, align 8
  %974 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %974, i64* %RCX.i309, align 8
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %976 = bitcast %union.VectorReg* %975 to i8*
  %977 = add i64 %974, 2424
  %978 = add i64 %973, 16
  store i64 %978, i64* %3, align 8
  %979 = bitcast %union.VectorReg* %975 to <2 x i32>*
  %980 = load <2 x i32>, <2 x i32>* %979, align 1
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %982 = bitcast i64* %981 to <2 x i32>*
  %983 = load <2 x i32>, <2 x i32>* %982, align 1
  %984 = inttoptr i64 %977 to double*
  %985 = load double, double* %984, align 8
  %986 = fptrunc double %985 to float
  %987 = bitcast %union.VectorReg* %975 to float*
  store float %986, float* %987, align 1
  %988 = extractelement <2 x i32> %980, i32 1
  %989 = getelementptr inbounds i8, i8* %976, i64 4
  %990 = bitcast i8* %989 to i32*
  store i32 %988, i32* %990, align 1
  %991 = extractelement <2 x i32> %983, i32 0
  %992 = bitcast i64* %981 to i32*
  store i32 %991, i32* %992, align 1
  %993 = extractelement <2 x i32> %983, i32 1
  %994 = getelementptr inbounds i8, i8* %976, i64 12
  %995 = bitcast i8* %994 to i32*
  store i32 %993, i32* %995, align 1
  %996 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %997 = add i64 %996, 48
  %998 = add i64 %973, 29
  store i64 %998, i64* %3, align 8
  %999 = bitcast %union.VectorReg* %975 to <2 x float>*
  %1000 = load <2 x float>, <2 x float>* %999, align 1
  %1001 = extractelement <2 x float> %1000, i32 0
  %1002 = inttoptr i64 %997 to float*
  store float %1001, float* %1002, align 4
  %1003 = load i64, i64* %3, align 8
  %1004 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1005 = add i64 %1004, 71920
  store i64 %1005, i64* %RCX.i309, align 8
  %1006 = icmp ugt i64 %1004, -71921
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %30, align 1
  %1008 = trunc i64 %1005 to i32
  %1009 = and i32 %1008, 255
  %1010 = tail call i32 @llvm.ctpop.i32(i32 %1009)
  %1011 = trunc i32 %1010 to i8
  %1012 = and i8 %1011, 1
  %1013 = xor i8 %1012, 1
  store i8 %1013, i8* %37, align 1
  %1014 = xor i64 %1004, 16
  %1015 = xor i64 %1014, %1005
  %1016 = lshr i64 %1015, 4
  %1017 = trunc i64 %1016 to i8
  %1018 = and i8 %1017, 1
  store i8 %1018, i8* %42, align 1
  %1019 = icmp eq i64 %1005, 0
  %1020 = zext i1 %1019 to i8
  store i8 %1020, i8* %45, align 1
  %1021 = lshr i64 %1005, 63
  %1022 = trunc i64 %1021 to i8
  store i8 %1022, i8* %48, align 1
  %1023 = lshr i64 %1004, 63
  %1024 = xor i64 %1021, %1023
  %1025 = add nuw nsw i64 %1024, %1021
  %1026 = icmp eq i64 %1025, 2
  %1027 = zext i1 %1026 to i8
  store i8 %1027, i8* %54, align 1
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %RDI.i1400 = getelementptr inbounds %union.anon, %union.anon* %1028, i64 0, i32 0
  store i64 %1005, i64* %RDI.i1400, align 8
  %1029 = add i64 %1003, 18735
  %1030 = add i64 %1003, 23
  %1031 = load i64, i64* %6, align 8
  %1032 = add i64 %1031, -8
  %1033 = inttoptr i64 %1032 to i64*
  store i64 %1030, i64* %1033, align 8
  store i64 %1032, i64* %6, align 8
  store i64 %1029, i64* %3, align 8
  %call2_4339c3 = tail call %struct.Memory* @sub_4382e0.get_mem_mv(%struct.State* nonnull %0, i64 %1029, %struct.Memory* %2)
  %1034 = load i64, i64* %3, align 8
  %1035 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1036 = add i64 %1035, 71928
  store i64 %1036, i64* %RCX.i309, align 8
  %1037 = icmp ugt i64 %1035, -71929
  %1038 = zext i1 %1037 to i8
  store i8 %1038, i8* %30, align 1
  %1039 = trunc i64 %1036 to i32
  %1040 = and i32 %1039, 255
  %1041 = tail call i32 @llvm.ctpop.i32(i32 %1040)
  %1042 = trunc i32 %1041 to i8
  %1043 = and i8 %1042, 1
  %1044 = xor i8 %1043, 1
  store i8 %1044, i8* %37, align 1
  %1045 = xor i64 %1035, 16
  %1046 = xor i64 %1045, %1036
  %1047 = lshr i64 %1046, 4
  %1048 = trunc i64 %1047 to i8
  %1049 = and i8 %1048, 1
  store i8 %1049, i8* %42, align 1
  %1050 = icmp eq i64 %1036, 0
  %1051 = zext i1 %1050 to i8
  store i8 %1051, i8* %45, align 1
  %1052 = lshr i64 %1036, 63
  %1053 = trunc i64 %1052 to i8
  store i8 %1053, i8* %48, align 1
  %1054 = lshr i64 %1035, 63
  %1055 = xor i64 %1052, %1054
  %1056 = add nuw nsw i64 %1055, %1052
  %1057 = icmp eq i64 %1056, 2
  %1058 = zext i1 %1057 to i8
  store i8 %1058, i8* %54, align 1
  store i64 %1036, i64* %RDI.i1400, align 8
  %1059 = load i64, i64* %RBP.i, align 8
  %1060 = add i64 %1059, -52
  %1061 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1062 = add i64 %1034, 21
  store i64 %1062, i64* %3, align 8
  %1063 = inttoptr i64 %1060 to i32*
  store i32 %1061, i32* %1063, align 4
  %1064 = load i64, i64* %3, align 8
  %1065 = add i64 %1064, 18691
  %1066 = add i64 %1064, 5
  %1067 = load i64, i64* %6, align 8
  %1068 = add i64 %1067, -8
  %1069 = inttoptr i64 %1068 to i64*
  store i64 %1066, i64* %1069, align 8
  store i64 %1068, i64* %6, align 8
  store i64 %1065, i64* %3, align 8
  %call2_4339dd = tail call %struct.Memory* @sub_4382e0.get_mem_mv(%struct.State* nonnull %0, i64 %1065, %struct.Memory* %call2_4339c3)
  %1070 = load i64, i64* %3, align 8
  %1071 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1071, i64* %RCX.i309, align 8
  %1072 = add i64 %1071, 1256
  %1073 = add i64 %1070, 15
  store i64 %1073, i64* %3, align 8
  %1074 = inttoptr i64 %1072 to i32*
  %1075 = load i32, i32* %1074, align 4
  store i8 0, i8* %30, align 1
  %1076 = and i32 %1075, 255
  %1077 = tail call i32 @llvm.ctpop.i32(i32 %1076)
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  %1080 = xor i8 %1079, 1
  store i8 %1080, i8* %37, align 1
  store i8 0, i8* %42, align 1
  %1081 = icmp eq i32 %1075, 0
  %1082 = zext i1 %1081 to i8
  store i8 %1082, i8* %45, align 1
  %1083 = lshr i32 %1075, 31
  %1084 = trunc i32 %1083 to i8
  store i8 %1084, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %1085 = load i64, i64* %RBP.i, align 8
  %1086 = add i64 %1085, -56
  %1087 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1088 = add i64 %1070, 18
  store i64 %1088, i64* %3, align 8
  %1089 = inttoptr i64 %1086 to i32*
  store i32 %1087, i32* %1089, align 4
  %1090 = load i64, i64* %3, align 8
  %1091 = load i8, i8* %45, align 1
  %1092 = icmp ne i8 %1091, 0
  %.v145 = select i1 %1092, i64 54, i64 6
  %1093 = add i64 %1090, %.v145
  store i64 %1093, i64* %3, align 8
  %cmpBr_4339f4 = icmp eq i8 %1091, 1
  br i1 %cmpBr_4339f4, label %block_.L_433a2a, label %block_4339fa

block_4339fa:                                     ; preds = %block_.L_43395b
  %1094 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1095 = add i64 %1094, 71936
  store i64 %1095, i64* %RAX.i278, align 8
  %1096 = icmp ugt i64 %1094, -71937
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %30, align 1
  %1098 = trunc i64 %1095 to i32
  %1099 = and i32 %1098, 255
  %1100 = tail call i32 @llvm.ctpop.i32(i32 %1099)
  %1101 = trunc i32 %1100 to i8
  %1102 = and i8 %1101, 1
  %1103 = xor i8 %1102, 1
  store i8 %1103, i8* %37, align 1
  %1104 = xor i64 %1095, %1094
  %1105 = lshr i64 %1104, 4
  %1106 = trunc i64 %1105 to i8
  %1107 = and i8 %1106, 1
  store i8 %1107, i8* %42, align 1
  %1108 = icmp eq i64 %1095, 0
  %1109 = zext i1 %1108 to i8
  store i8 %1109, i8* %45, align 1
  %1110 = lshr i64 %1095, 63
  %1111 = trunc i64 %1110 to i8
  store i8 %1111, i8* %48, align 1
  %1112 = lshr i64 %1094, 63
  %1113 = xor i64 %1110, %1112
  %1114 = add nuw nsw i64 %1113, %1110
  %1115 = icmp eq i64 %1114, 2
  %1116 = zext i1 %1115 to i8
  store i8 %1116, i8* %54, align 1
  store i64 %1095, i64* %RDI.i1400, align 8
  %1117 = add i64 %1093, 18662
  %1118 = add i64 %1093, 22
  %1119 = load i64, i64* %6, align 8
  %1120 = add i64 %1119, -8
  %1121 = inttoptr i64 %1120 to i64*
  store i64 %1118, i64* %1121, align 8
  store i64 %1120, i64* %6, align 8
  store i64 %1117, i64* %3, align 8
  %call2_433a0b = tail call %struct.Memory* @sub_4382e0.get_mem_mv(%struct.State* nonnull %0, i64 %1117, %struct.Memory* %call2_4339dd)
  %1122 = load i64, i64* %3, align 8
  %1123 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1124 = add i64 %1123, 71944
  store i64 %1124, i64* %RDI.i1400, align 8
  %1125 = icmp ugt i64 %1123, -71945
  %1126 = zext i1 %1125 to i8
  store i8 %1126, i8* %30, align 1
  %1127 = trunc i64 %1124 to i32
  %1128 = and i32 %1127, 255
  %1129 = tail call i32 @llvm.ctpop.i32(i32 %1128)
  %1130 = trunc i32 %1129 to i8
  %1131 = and i8 %1130, 1
  %1132 = xor i8 %1131, 1
  store i8 %1132, i8* %37, align 1
  %1133 = xor i64 %1124, %1123
  %1134 = lshr i64 %1133, 4
  %1135 = trunc i64 %1134 to i8
  %1136 = and i8 %1135, 1
  store i8 %1136, i8* %42, align 1
  %1137 = icmp eq i64 %1124, 0
  %1138 = zext i1 %1137 to i8
  store i8 %1138, i8* %45, align 1
  %1139 = lshr i64 %1124, 63
  %1140 = trunc i64 %1139 to i8
  store i8 %1140, i8* %48, align 1
  %1141 = lshr i64 %1123, 63
  %1142 = xor i64 %1139, %1141
  %1143 = add nuw nsw i64 %1142, %1139
  %1144 = icmp eq i64 %1143, 2
  %1145 = zext i1 %1144 to i8
  store i8 %1145, i8* %54, align 1
  %1146 = load i64, i64* %RBP.i, align 8
  %1147 = add i64 %1146, -60
  %1148 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1149 = add i64 %1122, 18
  store i64 %1149, i64* %3, align 8
  %1150 = inttoptr i64 %1147 to i32*
  store i32 %1148, i32* %1150, align 4
  %1151 = load i64, i64* %3, align 8
  %1152 = add i64 %1151, 18622
  %1153 = add i64 %1151, 5
  %1154 = load i64, i64* %6, align 8
  %1155 = add i64 %1154, -8
  %1156 = inttoptr i64 %1155 to i64*
  store i64 %1153, i64* %1156, align 8
  store i64 %1155, i64* %6, align 8
  store i64 %1152, i64* %3, align 8
  %call2_433a22 = tail call %struct.Memory* @sub_4382e0.get_mem_mv(%struct.State* nonnull %0, i64 %1152, %struct.Memory* %call2_433a0b)
  %1157 = load i64, i64* %RBP.i, align 8
  %1158 = add i64 %1157, -64
  %1159 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1160 = load i64, i64* %3, align 8
  %1161 = add i64 %1160, 3
  store i64 %1161, i64* %3, align 8
  %1162 = inttoptr i64 %1158 to i32*
  store i32 %1159, i32* %1162, align 4
  %.pre47 = load i64, i64* %3, align 8
  br label %block_.L_433a2a

block_.L_433a2a:                                  ; preds = %block_4339fa, %block_.L_43395b
  %1163 = phi i64 [ %1093, %block_.L_43395b ], [ %.pre47, %block_4339fa ]
  %MEMORY.7 = phi %struct.Memory* [ %call2_4339dd, %block_.L_43395b ], [ %call2_433a22, %block_4339fa ]
  %1164 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1165 = add i64 %1164, 14136
  store i64 %1165, i64* %RAX.i278, align 8
  %1166 = icmp ugt i64 %1164, -14137
  %1167 = zext i1 %1166 to i8
  store i8 %1167, i8* %30, align 1
  %1168 = trunc i64 %1165 to i32
  %1169 = and i32 %1168, 255
  %1170 = tail call i32 @llvm.ctpop.i32(i32 %1169)
  %1171 = trunc i32 %1170 to i8
  %1172 = and i8 %1171, 1
  %1173 = xor i8 %1172, 1
  store i8 %1173, i8* %37, align 1
  %1174 = xor i64 %1164, 16
  %1175 = xor i64 %1174, %1165
  %1176 = lshr i64 %1175, 4
  %1177 = trunc i64 %1176 to i8
  %1178 = and i8 %1177, 1
  store i8 %1178, i8* %42, align 1
  %1179 = icmp eq i64 %1165, 0
  %1180 = zext i1 %1179 to i8
  store i8 %1180, i8* %45, align 1
  %1181 = lshr i64 %1165, 63
  %1182 = trunc i64 %1181 to i8
  store i8 %1182, i8* %48, align 1
  %1183 = lshr i64 %1164, 63
  %1184 = xor i64 %1181, %1183
  %1185 = add nuw nsw i64 %1184, %1181
  %1186 = icmp eq i64 %1185, 2
  %1187 = zext i1 %1186 to i8
  store i8 %1187, i8* %54, align 1
  store i64 %1165, i64* %RDI.i1400, align 8
  %1188 = add i64 %1163, 19286
  %1189 = add i64 %1163, 22
  %1190 = load i64, i64* %6, align 8
  %1191 = add i64 %1190, -8
  %1192 = inttoptr i64 %1191 to i64*
  store i64 %1189, i64* %1192, align 8
  store i64 %1191, i64* %6, align 8
  store i64 %1188, i64* %3, align 8
  %call2_433a3b = tail call %struct.Memory* @sub_438580.get_mem_ACcoeff(%struct.State* nonnull %0, i64 %1188, %struct.Memory* %MEMORY.7)
  %1193 = load i64, i64* %3, align 8
  %1194 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %1195 = add i64 %1194, 14144
  store i64 %1195, i64* %RDI.i1400, align 8
  %1196 = icmp ugt i64 %1194, -14145
  %1197 = zext i1 %1196 to i8
  store i8 %1197, i8* %30, align 1
  %1198 = trunc i64 %1195 to i32
  %1199 = and i32 %1198, 255
  %1200 = tail call i32 @llvm.ctpop.i32(i32 %1199)
  %1201 = trunc i32 %1200 to i8
  %1202 = and i8 %1201, 1
  %1203 = xor i8 %1202, 1
  store i8 %1203, i8* %37, align 1
  %1204 = xor i64 %1195, %1194
  %1205 = lshr i64 %1204, 4
  %1206 = trunc i64 %1205 to i8
  %1207 = and i8 %1206, 1
  store i8 %1207, i8* %42, align 1
  %1208 = icmp eq i64 %1195, 0
  %1209 = zext i1 %1208 to i8
  store i8 %1209, i8* %45, align 1
  %1210 = lshr i64 %1195, 63
  %1211 = trunc i64 %1210 to i8
  store i8 %1211, i8* %48, align 1
  %1212 = lshr i64 %1194, 63
  %1213 = xor i64 %1210, %1212
  %1214 = add nuw nsw i64 %1213, %1210
  %1215 = icmp eq i64 %1214, 2
  %1216 = zext i1 %1215 to i8
  store i8 %1216, i8* %54, align 1
  %1217 = load i64, i64* %RBP.i, align 8
  %1218 = add i64 %1217, -68
  %1219 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1220 = add i64 %1193, 18
  store i64 %1220, i64* %3, align 8
  %1221 = inttoptr i64 %1218 to i32*
  store i32 %1219, i32* %1221, align 4
  %1222 = load i64, i64* %3, align 8
  %1223 = add i64 %1222, 19678
  %1224 = add i64 %1222, 5
  %1225 = load i64, i64* %6, align 8
  %1226 = add i64 %1225, -8
  %1227 = inttoptr i64 %1226 to i64*
  store i64 %1224, i64* %1227, align 8
  store i64 %1226, i64* %6, align 8
  store i64 %1223, i64* %3, align 8
  %call2_433a52 = tail call %struct.Memory* @sub_438730.get_mem_DCcoeff(%struct.State* nonnull %0, i64 %1223, %struct.Memory* %call2_433a3b)
  %1228 = load i64, i64* %3, align 8
  %1229 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1229, i64* %RDI.i1400, align 8
  %1230 = add i64 %1229, 2884
  %1231 = add i64 %1228, 15
  store i64 %1231, i64* %3, align 8
  %1232 = inttoptr i64 %1230 to i32*
  %1233 = load i32, i32* %1232, align 4
  store i8 0, i8* %30, align 1
  %1234 = and i32 %1233, 255
  %1235 = tail call i32 @llvm.ctpop.i32(i32 %1234)
  %1236 = trunc i32 %1235 to i8
  %1237 = and i8 %1236, 1
  %1238 = xor i8 %1237, 1
  store i8 %1238, i8* %37, align 1
  store i8 0, i8* %42, align 1
  %1239 = icmp eq i32 %1233, 0
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %45, align 1
  %1241 = lshr i32 %1233, 31
  %1242 = trunc i32 %1241 to i8
  store i8 %1242, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %1243 = load i64, i64* %RBP.i, align 8
  %1244 = add i64 %1243, -72
  %1245 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1246 = add i64 %1228, 18
  store i64 %1246, i64* %3, align 8
  %1247 = inttoptr i64 %1244 to i32*
  store i32 %1245, i32* %1247, align 4
  %1248 = load i64, i64* %3, align 8
  %1249 = load i8, i8* %45, align 1
  %1250 = icmp ne i8 %1249, 0
  %.v146 = select i1 %1250, i64 663, i64 6
  %1251 = add i64 %1248, %.v146
  store i64 %1251, i64* %3, align 8
  %cmpBr_433a69 = icmp eq i8 %1249, 1
  br i1 %cmpBr_433a69, label %block_.L_433d00, label %block_433a6f

block_433a6f:                                     ; preds = %block_.L_433a2a
  store i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3232), i64* %RAX.i278, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3232), i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3232), i64 3232)) to i8), i8* %30, align 1
  %1252 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3232) to i32), i32 255))
  %1253 = trunc i32 %1252 to i8
  %1254 = and i8 %1253, 1
  %1255 = xor i8 %1254, 1
  store i8 %1255, i8* %37, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3232), i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3232)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3232), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3232), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3232), i64 63), i64 lshr (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3232), i64 63)), i64 2) to i8), i8* %54, align 1
  store i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3232), i64* %RDI.i1400, align 8
  %1256 = add i64 %1251, 18545
  %1257 = add i64 %1251, 24
  %1258 = load i64, i64* %6, align 8
  %1259 = add i64 %1258, -8
  %1260 = inttoptr i64 %1259 to i64*
  store i64 %1257, i64* %1260, align 8
  store i64 %1259, i64* %6, align 8
  store i64 %1256, i64* %3, align 8
  %call2_433a82 = tail call %struct.Memory* @sub_4382e0.get_mem_mv(%struct.State* nonnull %0, i64 %1256, %struct.Memory* %call2_433a52)
  %1261 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3240), i64* %RDI.i1400, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3240), i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3240), i64 3240)) to i8), i8* %30, align 1
  %1262 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3240) to i32), i32 255))
  %1263 = trunc i32 %1262 to i8
  %1264 = and i8 %1263, 1
  %1265 = xor i8 %1264, 1
  store i8 %1265, i8* %37, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3240), i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3240)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3240), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3240), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3240), i64 63), i64 lshr (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3240), i64 63)), i64 2) to i8), i8* %54, align 1
  %1266 = load i64, i64* %RBP.i, align 8
  %1267 = add i64 %1266, -76
  %1268 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1269 = add i64 %1261, 20
  store i64 %1269, i64* %3, align 8
  %1270 = inttoptr i64 %1267 to i32*
  store i32 %1268, i32* %1270, align 4
  %1271 = load i64, i64* %3, align 8
  %1272 = add i64 %1271, 18501
  %1273 = add i64 %1271, 5
  %1274 = load i64, i64* %6, align 8
  %1275 = add i64 %1274, -8
  %1276 = inttoptr i64 %1275 to i64*
  store i64 %1273, i64* %1276, align 8
  store i64 %1275, i64* %6, align 8
  store i64 %1272, i64* %3, align 8
  %call2_433a9b = tail call %struct.Memory* @sub_4382e0.get_mem_mv(%struct.State* nonnull %0, i64 %1272, %struct.Memory* %call2_433a82)
  %1277 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3232), i64* %RDI.i1400, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3232), i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3232), i64 3232)) to i8), i8* %30, align 1
  %1278 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3232) to i32), i32 255))
  %1279 = trunc i32 %1278 to i8
  %1280 = and i8 %1279, 1
  %1281 = xor i8 %1280, 1
  store i8 %1281, i8* %37, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3232), i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3232)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3232), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3232), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3232), i64 63), i64 lshr (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3232), i64 63)), i64 2) to i8), i8* %54, align 1
  %1282 = load i64, i64* %RBP.i, align 8
  %1283 = add i64 %1282, -80
  %1284 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1285 = add i64 %1277, 20
  store i64 %1285, i64* %3, align 8
  %1286 = inttoptr i64 %1283 to i32*
  store i32 %1284, i32* %1286, align 4
  %1287 = load i64, i64* %3, align 8
  %1288 = add i64 %1287, 18476
  %1289 = add i64 %1287, 5
  %1290 = load i64, i64* %6, align 8
  %1291 = add i64 %1290, -8
  %1292 = inttoptr i64 %1291 to i64*
  store i64 %1289, i64* %1292, align 8
  store i64 %1291, i64* %6, align 8
  store i64 %1288, i64* %3, align 8
  %call2_433ab4 = tail call %struct.Memory* @sub_4382e0.get_mem_mv(%struct.State* nonnull %0, i64 %1288, %struct.Memory* %call2_433a9b)
  %1293 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3240), i64* %RDI.i1400, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3240), i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3240), i64 3240)) to i8), i8* %30, align 1
  %1294 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3240) to i32), i32 255))
  %1295 = trunc i32 %1294 to i8
  %1296 = and i8 %1295, 1
  %1297 = xor i8 %1296, 1
  store i8 %1297, i8* %37, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3240), i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3240)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3240), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3240), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3240), i64 63), i64 lshr (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3240), i64 63)), i64 2) to i8), i8* %54, align 1
  %1298 = load i64, i64* %RBP.i, align 8
  %1299 = add i64 %1298, -84
  %1300 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1301 = add i64 %1293, 20
  store i64 %1301, i64* %3, align 8
  %1302 = inttoptr i64 %1299 to i32*
  store i32 %1300, i32* %1302, align 4
  %1303 = load i64, i64* %3, align 8
  %1304 = add i64 %1303, 18451
  %1305 = add i64 %1303, 5
  %1306 = load i64, i64* %6, align 8
  %1307 = add i64 %1306, -8
  %1308 = inttoptr i64 %1307 to i64*
  store i64 %1305, i64* %1308, align 8
  store i64 %1307, i64* %6, align 8
  store i64 %1304, i64* %3, align 8
  %call2_433acd = tail call %struct.Memory* @sub_4382e0.get_mem_mv(%struct.State* nonnull %0, i64 %1304, %struct.Memory* %call2_433ab4)
  %1309 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3232), i64* %RDI.i1400, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3232), i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3232), i64 3232)) to i8), i8* %30, align 1
  %1310 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3232) to i32), i32 255))
  %1311 = trunc i32 %1310 to i8
  %1312 = and i8 %1311, 1
  %1313 = xor i8 %1312, 1
  store i8 %1313, i8* %37, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3232), i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3232)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3232), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3232), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3232), i64 63), i64 lshr (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3232), i64 63)), i64 2) to i8), i8* %54, align 1
  %1314 = load i64, i64* %RBP.i, align 8
  %1315 = add i64 %1314, -88
  %1316 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1317 = add i64 %1309, 20
  store i64 %1317, i64* %3, align 8
  %1318 = inttoptr i64 %1315 to i32*
  store i32 %1316, i32* %1318, align 4
  %1319 = load i64, i64* %3, align 8
  %1320 = add i64 %1319, 18426
  %1321 = add i64 %1319, 5
  %1322 = load i64, i64* %6, align 8
  %1323 = add i64 %1322, -8
  %1324 = inttoptr i64 %1323 to i64*
  store i64 %1321, i64* %1324, align 8
  store i64 %1323, i64* %6, align 8
  store i64 %1320, i64* %3, align 8
  %call2_433ae6 = tail call %struct.Memory* @sub_4382e0.get_mem_mv(%struct.State* nonnull %0, i64 %1320, %struct.Memory* %call2_433acd)
  %1325 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3240), i64* %RDI.i1400, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3240), i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3240), i64 3240)) to i8), i8* %30, align 1
  %1326 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3240) to i32), i32 255))
  %1327 = trunc i32 %1326 to i8
  %1328 = and i8 %1327, 1
  %1329 = xor i8 %1328, 1
  store i8 %1329, i8* %37, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3240), i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3240)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3240), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3240), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3240), i64 63), i64 lshr (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3240), i64 63)), i64 2) to i8), i8* %54, align 1
  %1330 = load i64, i64* %RBP.i, align 8
  %1331 = add i64 %1330, -92
  %1332 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1333 = add i64 %1325, 20
  store i64 %1333, i64* %3, align 8
  %1334 = inttoptr i64 %1331 to i32*
  store i32 %1332, i32* %1334, align 4
  %1335 = load i64, i64* %3, align 8
  %1336 = add i64 %1335, 18401
  %1337 = add i64 %1335, 5
  %1338 = load i64, i64* %6, align 8
  %1339 = add i64 %1338, -8
  %1340 = inttoptr i64 %1339 to i64*
  store i64 %1337, i64* %1340, align 8
  store i64 %1339, i64* %6, align 8
  store i64 %1336, i64* %3, align 8
  %call2_433aff = tail call %struct.Memory* @sub_4382e0.get_mem_mv(%struct.State* nonnull %0, i64 %1336, %struct.Memory* %call2_433ae6)
  %1341 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3232), i64* %RDI.i1400, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3232), i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3232), i64 3232)) to i8), i8* %30, align 1
  %1342 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3232) to i32), i32 255))
  %1343 = trunc i32 %1342 to i8
  %1344 = and i8 %1343, 1
  %1345 = xor i8 %1344, 1
  store i8 %1345, i8* %37, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3232), i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3232)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3232), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3232), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3232), i64 63), i64 lshr (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3232), i64 63)), i64 2) to i8), i8* %54, align 1
  %1346 = load i64, i64* %RBP.i, align 8
  %1347 = add i64 %1346, -96
  %1348 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1349 = add i64 %1341, 20
  store i64 %1349, i64* %3, align 8
  %1350 = inttoptr i64 %1347 to i32*
  store i32 %1348, i32* %1350, align 4
  %1351 = load i64, i64* %3, align 8
  %1352 = add i64 %1351, 18376
  %1353 = add i64 %1351, 5
  %1354 = load i64, i64* %6, align 8
  %1355 = add i64 %1354, -8
  %1356 = inttoptr i64 %1355 to i64*
  store i64 %1353, i64* %1356, align 8
  store i64 %1355, i64* %6, align 8
  store i64 %1352, i64* %3, align 8
  %call2_433b18 = tail call %struct.Memory* @sub_4382e0.get_mem_mv(%struct.State* nonnull %0, i64 %1352, %struct.Memory* %call2_433aff)
  %1357 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3240), i64* %RDI.i1400, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3240), i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3240), i64 3240)) to i8), i8* %30, align 1
  %1358 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3240) to i32), i32 255))
  %1359 = trunc i32 %1358 to i8
  %1360 = and i8 %1359, 1
  %1361 = xor i8 %1360, 1
  store i8 %1361, i8* %37, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3240), i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3240)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3240), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3240), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3240), i64 63), i64 lshr (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3240), i64 63)), i64 2) to i8), i8* %54, align 1
  %1362 = load i64, i64* %RBP.i, align 8
  %1363 = add i64 %1362, -100
  %1364 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1365 = add i64 %1357, 20
  store i64 %1365, i64* %3, align 8
  %1366 = inttoptr i64 %1363 to i32*
  store i32 %1364, i32* %1366, align 4
  %1367 = load i64, i64* %3, align 8
  %1368 = add i64 %1367, 18351
  %1369 = add i64 %1367, 5
  %1370 = load i64, i64* %6, align 8
  %1371 = add i64 %1370, -8
  %1372 = inttoptr i64 %1371 to i64*
  store i64 %1369, i64* %1372, align 8
  store i64 %1371, i64* %6, align 8
  store i64 %1368, i64* %3, align 8
  %call2_433b31 = tail call %struct.Memory* @sub_4382e0.get_mem_mv(%struct.State* nonnull %0, i64 %1368, %struct.Memory* %call2_433b18)
  %1373 = load i64, i64* %3, align 8
  %1374 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %1374, i64* %RDI.i1400, align 8
  %1375 = add i64 %1374, 1256
  %1376 = add i64 %1373, 15
  store i64 %1376, i64* %3, align 8
  %1377 = inttoptr i64 %1375 to i32*
  %1378 = load i32, i32* %1377, align 4
  store i8 0, i8* %30, align 1
  %1379 = and i32 %1378, 255
  %1380 = tail call i32 @llvm.ctpop.i32(i32 %1379)
  %1381 = trunc i32 %1380 to i8
  %1382 = and i8 %1381, 1
  %1383 = xor i8 %1382, 1
  store i8 %1383, i8* %37, align 1
  store i8 0, i8* %42, align 1
  %1384 = icmp eq i32 %1378, 0
  %1385 = zext i1 %1384 to i8
  store i8 %1385, i8* %45, align 1
  %1386 = lshr i32 %1378, 31
  %1387 = trunc i32 %1386 to i8
  store i8 %1387, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %1388 = load i64, i64* %RBP.i, align 8
  %1389 = add i64 %1388, -104
  %1390 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1391 = add i64 %1373, 18
  store i64 %1391, i64* %3, align 8
  %1392 = inttoptr i64 %1389 to i32*
  store i32 %1390, i32* %1392, align 4
  %1393 = load i64, i64* %3, align 8
  %1394 = load i8, i8* %45, align 1
  %1395 = icmp ne i8 %1394, 0
  %.v147 = select i1 %1395, i64 214, i64 6
  %1396 = add i64 %1393, %.v147
  store i64 %1396, i64* %3, align 8
  %cmpBr_433b48 = icmp eq i8 %1394, 1
  br i1 %cmpBr_433b48, label %block_.L_433c1e, label %block_433b4e

block_433b4e:                                     ; preds = %block_433a6f
  store i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3248), i64* %RAX.i278, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3248), i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3248), i64 3248)) to i8), i8* %30, align 1
  %1397 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3248) to i32), i32 255))
  %1398 = trunc i32 %1397 to i8
  %1399 = and i8 %1398, 1
  %1400 = xor i8 %1399, 1
  store i8 %1400, i8* %37, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3248), i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3248)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3248), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3248), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3248), i64 63), i64 lshr (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3248), i64 63)), i64 2) to i8), i8* %54, align 1
  store i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3248), i64* %RDI.i1400, align 8
  %1401 = add i64 %1396, 18322
  %1402 = add i64 %1396, 24
  %1403 = load i64, i64* %6, align 8
  %1404 = add i64 %1403, -8
  %1405 = inttoptr i64 %1404 to i64*
  store i64 %1402, i64* %1405, align 8
  store i64 %1404, i64* %6, align 8
  store i64 %1401, i64* %3, align 8
  %call2_433b61 = tail call %struct.Memory* @sub_4382e0.get_mem_mv(%struct.State* nonnull %0, i64 %1401, %struct.Memory* %call2_433b31)
  %1406 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3256), i64* %RDI.i1400, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3256), i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3256), i64 3256)) to i8), i8* %30, align 1
  %1407 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3256) to i32), i32 255))
  %1408 = trunc i32 %1407 to i8
  %1409 = and i8 %1408, 1
  %1410 = xor i8 %1409, 1
  store i8 %1410, i8* %37, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3256), i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3256)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3256), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3256), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3256), i64 63), i64 lshr (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3256), i64 63)), i64 2) to i8), i8* %54, align 1
  %1411 = load i64, i64* %RBP.i, align 8
  %1412 = add i64 %1411, -108
  %1413 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1414 = add i64 %1406, 20
  store i64 %1414, i64* %3, align 8
  %1415 = inttoptr i64 %1412 to i32*
  store i32 %1413, i32* %1415, align 4
  %1416 = load i64, i64* %3, align 8
  %1417 = add i64 %1416, 18278
  %1418 = add i64 %1416, 5
  %1419 = load i64, i64* %6, align 8
  %1420 = add i64 %1419, -8
  %1421 = inttoptr i64 %1420 to i64*
  store i64 %1418, i64* %1421, align 8
  store i64 %1420, i64* %6, align 8
  store i64 %1417, i64* %3, align 8
  %call2_433b7a = tail call %struct.Memory* @sub_4382e0.get_mem_mv(%struct.State* nonnull %0, i64 %1417, %struct.Memory* %call2_433b61)
  %1422 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3248), i64* %RDI.i1400, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3248), i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3248), i64 3248)) to i8), i8* %30, align 1
  %1423 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3248) to i32), i32 255))
  %1424 = trunc i32 %1423 to i8
  %1425 = and i8 %1424, 1
  %1426 = xor i8 %1425, 1
  store i8 %1426, i8* %37, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3248), i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3248)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3248), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3248), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3248), i64 63), i64 lshr (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3248), i64 63)), i64 2) to i8), i8* %54, align 1
  %1427 = load i64, i64* %RBP.i, align 8
  %1428 = add i64 %1427, -112
  %1429 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1430 = add i64 %1422, 20
  store i64 %1430, i64* %3, align 8
  %1431 = inttoptr i64 %1428 to i32*
  store i32 %1429, i32* %1431, align 4
  %1432 = load i64, i64* %3, align 8
  %1433 = add i64 %1432, 18253
  %1434 = add i64 %1432, 5
  %1435 = load i64, i64* %6, align 8
  %1436 = add i64 %1435, -8
  %1437 = inttoptr i64 %1436 to i64*
  store i64 %1434, i64* %1437, align 8
  store i64 %1436, i64* %6, align 8
  store i64 %1433, i64* %3, align 8
  %call2_433b93 = tail call %struct.Memory* @sub_4382e0.get_mem_mv(%struct.State* nonnull %0, i64 %1433, %struct.Memory* %call2_433b7a)
  %1438 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3256), i64* %RDI.i1400, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3256), i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3256), i64 3256)) to i8), i8* %30, align 1
  %1439 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3256) to i32), i32 255))
  %1440 = trunc i32 %1439 to i8
  %1441 = and i8 %1440, 1
  %1442 = xor i8 %1441, 1
  store i8 %1442, i8* %37, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3256), i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3256)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3256), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3256), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3256), i64 63), i64 lshr (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3256), i64 63)), i64 2) to i8), i8* %54, align 1
  %1443 = load i64, i64* %RBP.i, align 8
  %1444 = add i64 %1443, -116
  %1445 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1446 = add i64 %1438, 20
  store i64 %1446, i64* %3, align 8
  %1447 = inttoptr i64 %1444 to i32*
  store i32 %1445, i32* %1447, align 4
  %1448 = load i64, i64* %3, align 8
  %1449 = add i64 %1448, 18228
  %1450 = add i64 %1448, 5
  %1451 = load i64, i64* %6, align 8
  %1452 = add i64 %1451, -8
  %1453 = inttoptr i64 %1452 to i64*
  store i64 %1450, i64* %1453, align 8
  store i64 %1452, i64* %6, align 8
  store i64 %1449, i64* %3, align 8
  %call2_433bac = tail call %struct.Memory* @sub_4382e0.get_mem_mv(%struct.State* nonnull %0, i64 %1449, %struct.Memory* %call2_433b93)
  %1454 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3248), i64* %RDI.i1400, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3248), i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3248), i64 3248)) to i8), i8* %30, align 1
  %1455 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3248) to i32), i32 255))
  %1456 = trunc i32 %1455 to i8
  %1457 = and i8 %1456, 1
  %1458 = xor i8 %1457, 1
  store i8 %1458, i8* %37, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3248), i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3248)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3248), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3248), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3248), i64 63), i64 lshr (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3248), i64 63)), i64 2) to i8), i8* %54, align 1
  %1459 = load i64, i64* %RBP.i, align 8
  %1460 = add i64 %1459, -120
  %1461 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1462 = add i64 %1454, 20
  store i64 %1462, i64* %3, align 8
  %1463 = inttoptr i64 %1460 to i32*
  store i32 %1461, i32* %1463, align 4
  %1464 = load i64, i64* %3, align 8
  %1465 = add i64 %1464, 18203
  %1466 = add i64 %1464, 5
  %1467 = load i64, i64* %6, align 8
  %1468 = add i64 %1467, -8
  %1469 = inttoptr i64 %1468 to i64*
  store i64 %1466, i64* %1469, align 8
  store i64 %1468, i64* %6, align 8
  store i64 %1465, i64* %3, align 8
  %call2_433bc5 = tail call %struct.Memory* @sub_4382e0.get_mem_mv(%struct.State* nonnull %0, i64 %1465, %struct.Memory* %call2_433bac)
  %1470 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3256), i64* %RDI.i1400, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3256), i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3256), i64 3256)) to i8), i8* %30, align 1
  %1471 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3256) to i32), i32 255))
  %1472 = trunc i32 %1471 to i8
  %1473 = and i8 %1472, 1
  %1474 = xor i8 %1473, 1
  store i8 %1474, i8* %37, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3256), i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3256)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3256), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3256), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3256), i64 63), i64 lshr (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3256), i64 63)), i64 2) to i8), i8* %54, align 1
  %1475 = load i64, i64* %RBP.i, align 8
  %1476 = add i64 %1475, -124
  %1477 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1478 = add i64 %1470, 20
  store i64 %1478, i64* %3, align 8
  %1479 = inttoptr i64 %1476 to i32*
  store i32 %1477, i32* %1479, align 4
  %1480 = load i64, i64* %3, align 8
  %1481 = add i64 %1480, 18178
  %1482 = add i64 %1480, 5
  %1483 = load i64, i64* %6, align 8
  %1484 = add i64 %1483, -8
  %1485 = inttoptr i64 %1484 to i64*
  store i64 %1482, i64* %1485, align 8
  store i64 %1484, i64* %6, align 8
  store i64 %1481, i64* %3, align 8
  %call2_433bde = tail call %struct.Memory* @sub_4382e0.get_mem_mv(%struct.State* nonnull %0, i64 %1481, %struct.Memory* %call2_433bc5)
  %1486 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3248), i64* %RDI.i1400, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3248), i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3248), i64 3248)) to i8), i8* %30, align 1
  %1487 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3248) to i32), i32 255))
  %1488 = trunc i32 %1487 to i8
  %1489 = and i8 %1488, 1
  %1490 = xor i8 %1489, 1
  store i8 %1490, i8* %37, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3248), i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3248)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3248), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3248), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3248), i64 63), i64 lshr (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3248), i64 63)), i64 2) to i8), i8* %54, align 1
  %1491 = load i64, i64* %RBP.i, align 8
  %1492 = add i64 %1491, -128
  %1493 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1494 = add i64 %1486, 20
  store i64 %1494, i64* %3, align 8
  %1495 = inttoptr i64 %1492 to i32*
  store i32 %1493, i32* %1495, align 4
  %1496 = load i64, i64* %3, align 8
  %1497 = add i64 %1496, 18153
  %1498 = add i64 %1496, 5
  %1499 = load i64, i64* %6, align 8
  %1500 = add i64 %1499, -8
  %1501 = inttoptr i64 %1500 to i64*
  store i64 %1498, i64* %1501, align 8
  store i64 %1500, i64* %6, align 8
  store i64 %1497, i64* %3, align 8
  %call2_433bf7 = tail call %struct.Memory* @sub_4382e0.get_mem_mv(%struct.State* nonnull %0, i64 %1497, %struct.Memory* %call2_433bde)
  %1502 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3256), i64* %RDI.i1400, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3256), i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3256), i64 3256)) to i8), i8* %30, align 1
  %1503 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3256) to i32), i32 255))
  %1504 = trunc i32 %1503 to i8
  %1505 = and i8 %1504, 1
  %1506 = xor i8 %1505, 1
  store i8 %1506, i8* %37, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3256), i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3256)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3256), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3256), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3256), i64 63), i64 lshr (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3256), i64 63)), i64 2) to i8), i8* %54, align 1
  %1507 = load i64, i64* %RBP.i, align 8
  %1508 = add i64 %1507, -132
  %1509 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1510 = add i64 %1502, 23
  store i64 %1510, i64* %3, align 8
  %1511 = inttoptr i64 %1508 to i32*
  store i32 %1509, i32* %1511, align 4
  %1512 = load i64, i64* %3, align 8
  %1513 = add i64 %1512, 18125
  %1514 = add i64 %1512, 5
  %1515 = load i64, i64* %6, align 8
  %1516 = add i64 %1515, -8
  %1517 = inttoptr i64 %1516 to i64*
  store i64 %1514, i64* %1517, align 8
  store i64 %1516, i64* %6, align 8
  store i64 %1513, i64* %3, align 8
  %call2_433c13 = tail call %struct.Memory* @sub_4382e0.get_mem_mv(%struct.State* nonnull %0, i64 %1513, %struct.Memory* %call2_433bf7)
  %1518 = load i64, i64* %RBP.i, align 8
  %1519 = add i64 %1518, -136
  %1520 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1521 = load i64, i64* %3, align 8
  %1522 = add i64 %1521, 6
  store i64 %1522, i64* %3, align 8
  %1523 = inttoptr i64 %1519 to i32*
  store i32 %1520, i32* %1523, align 4
  %.pre48 = load i64, i64* %3, align 8
  br label %block_.L_433c1e

block_.L_433c1e:                                  ; preds = %block_433b4e, %block_433a6f
  %1524 = phi i64 [ %1396, %block_433a6f ], [ %.pre48, %block_433b4e ]
  %MEMORY.8 = phi %struct.Memory* [ %call2_433b31, %block_433a6f ], [ %call2_433c13, %block_433b4e ]
  store i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3080), i64* %RAX.i278, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3080), i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3080), i64 3080)) to i8), i8* %30, align 1
  %1525 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3080) to i32), i32 255))
  %1526 = trunc i32 %1525 to i8
  %1527 = and i8 %1526, 1
  %1528 = xor i8 %1527, 1
  store i8 %1528, i8* %37, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3080), i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3080)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3080), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3080), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3080), i64 63), i64 lshr (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3080), i64 63)), i64 2) to i8), i8* %54, align 1
  store i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3080), i64* %RDI.i1400, align 8
  %1529 = add i64 %1524, 18786
  %1530 = add i64 %1524, 24
  %1531 = load i64, i64* %6, align 8
  %1532 = add i64 %1531, -8
  %1533 = inttoptr i64 %1532 to i64*
  store i64 %1530, i64* %1533, align 8
  store i64 %1532, i64* %6, align 8
  store i64 %1529, i64* %3, align 8
  %call2_433c31 = tail call %struct.Memory* @sub_438580.get_mem_ACcoeff(%struct.State* nonnull %0, i64 %1529, %struct.Memory* %MEMORY.8)
  %1534 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3088), i64* %RDI.i1400, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3088), i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3088), i64 3088)) to i8), i8* %30, align 1
  %1535 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3088) to i32), i32 255))
  %1536 = trunc i32 %1535 to i8
  %1537 = and i8 %1536, 1
  %1538 = xor i8 %1537, 1
  store i8 %1538, i8* %37, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3088), i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3088)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3088), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3088), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3088), i64 63), i64 lshr (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3088), i64 63)), i64 2) to i8), i8* %54, align 1
  %1539 = load i64, i64* %RBP.i, align 8
  %1540 = add i64 %1539, -140
  %1541 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1542 = add i64 %1534, 23
  store i64 %1542, i64* %3, align 8
  %1543 = inttoptr i64 %1540 to i32*
  store i32 %1541, i32* %1543, align 4
  %1544 = load i64, i64* %3, align 8
  %1545 = add i64 %1544, 19171
  %1546 = add i64 %1544, 5
  %1547 = load i64, i64* %6, align 8
  %1548 = add i64 %1547, -8
  %1549 = inttoptr i64 %1548 to i64*
  store i64 %1546, i64* %1549, align 8
  store i64 %1548, i64* %6, align 8
  store i64 %1545, i64* %3, align 8
  %call2_433c4d = tail call %struct.Memory* @sub_438730.get_mem_DCcoeff(%struct.State* nonnull %0, i64 %1545, %struct.Memory* %call2_433c31)
  %1550 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3080), i64* %RDI.i1400, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3080), i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3080), i64 3080)) to i8), i8* %30, align 1
  %1551 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3080) to i32), i32 255))
  %1552 = trunc i32 %1551 to i8
  %1553 = and i8 %1552, 1
  %1554 = xor i8 %1553, 1
  store i8 %1554, i8* %37, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3080), i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3080)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3080), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3080), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3080), i64 63), i64 lshr (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3080), i64 63)), i64 2) to i8), i8* %54, align 1
  %1555 = load i64, i64* %RBP.i, align 8
  %1556 = add i64 %1555, -144
  %1557 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1558 = add i64 %1550, 23
  store i64 %1558, i64* %3, align 8
  %1559 = inttoptr i64 %1556 to i32*
  store i32 %1557, i32* %1559, align 4
  %1560 = load i64, i64* %3, align 8
  %1561 = add i64 %1560, 18711
  %1562 = add i64 %1560, 5
  %1563 = load i64, i64* %6, align 8
  %1564 = add i64 %1563, -8
  %1565 = inttoptr i64 %1564 to i64*
  store i64 %1562, i64* %1565, align 8
  store i64 %1564, i64* %6, align 8
  store i64 %1561, i64* %3, align 8
  %call2_433c69 = tail call %struct.Memory* @sub_438580.get_mem_ACcoeff(%struct.State* nonnull %0, i64 %1561, %struct.Memory* %call2_433c4d)
  %1566 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3088), i64* %RDI.i1400, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3088), i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3088), i64 3088)) to i8), i8* %30, align 1
  %1567 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3088) to i32), i32 255))
  %1568 = trunc i32 %1567 to i8
  %1569 = and i8 %1568, 1
  %1570 = xor i8 %1569, 1
  store i8 %1570, i8* %37, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3088), i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3088)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3088), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3088), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3088), i64 63), i64 lshr (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3088), i64 63)), i64 2) to i8), i8* %54, align 1
  %1571 = load i64, i64* %RBP.i, align 8
  %1572 = add i64 %1571, -148
  %1573 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1574 = add i64 %1566, 23
  store i64 %1574, i64* %3, align 8
  %1575 = inttoptr i64 %1572 to i32*
  store i32 %1573, i32* %1575, align 4
  %1576 = load i64, i64* %3, align 8
  %1577 = add i64 %1576, 19115
  %1578 = add i64 %1576, 5
  %1579 = load i64, i64* %6, align 8
  %1580 = add i64 %1579, -8
  %1581 = inttoptr i64 %1580 to i64*
  store i64 %1578, i64* %1581, align 8
  store i64 %1580, i64* %6, align 8
  store i64 %1577, i64* %3, align 8
  %call2_433c85 = tail call %struct.Memory* @sub_438730.get_mem_DCcoeff(%struct.State* nonnull %0, i64 %1577, %struct.Memory* %call2_433c69)
  %1582 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3080), i64* %RDI.i1400, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3080), i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3080), i64 3080)) to i8), i8* %30, align 1
  %1583 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3080) to i32), i32 255))
  %1584 = trunc i32 %1583 to i8
  %1585 = and i8 %1584, 1
  %1586 = xor i8 %1585, 1
  store i8 %1586, i8* %37, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3080), i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3080)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3080), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3080), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3080), i64 63), i64 lshr (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3080), i64 63)), i64 2) to i8), i8* %54, align 1
  %1587 = load i64, i64* %RBP.i, align 8
  %1588 = add i64 %1587, -152
  %1589 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1590 = add i64 %1582, 23
  store i64 %1590, i64* %3, align 8
  %1591 = inttoptr i64 %1588 to i32*
  store i32 %1589, i32* %1591, align 4
  %1592 = load i64, i64* %3, align 8
  %1593 = add i64 %1592, 18655
  %1594 = add i64 %1592, 5
  %1595 = load i64, i64* %6, align 8
  %1596 = add i64 %1595, -8
  %1597 = inttoptr i64 %1596 to i64*
  store i64 %1594, i64* %1597, align 8
  store i64 %1596, i64* %6, align 8
  store i64 %1593, i64* %3, align 8
  %call2_433ca1 = tail call %struct.Memory* @sub_438580.get_mem_ACcoeff(%struct.State* nonnull %0, i64 %1593, %struct.Memory* %call2_433c85)
  %1598 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3088), i64* %RDI.i1400, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3088), i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3088), i64 3088)) to i8), i8* %30, align 1
  %1599 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3088) to i32), i32 255))
  %1600 = trunc i32 %1599 to i8
  %1601 = and i8 %1600, 1
  %1602 = xor i8 %1601, 1
  store i8 %1602, i8* %37, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3088), i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3088)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3088), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3088), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3088), i64 63), i64 lshr (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3088), i64 63)), i64 2) to i8), i8* %54, align 1
  %1603 = load i64, i64* %RBP.i, align 8
  %1604 = add i64 %1603, -156
  %1605 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1606 = add i64 %1598, 23
  store i64 %1606, i64* %3, align 8
  %1607 = inttoptr i64 %1604 to i32*
  store i32 %1605, i32* %1607, align 4
  %1608 = load i64, i64* %3, align 8
  %1609 = add i64 %1608, 19059
  %1610 = add i64 %1608, 5
  %1611 = load i64, i64* %6, align 8
  %1612 = add i64 %1611, -8
  %1613 = inttoptr i64 %1612 to i64*
  store i64 %1610, i64* %1613, align 8
  store i64 %1612, i64* %6, align 8
  store i64 %1609, i64* %3, align 8
  %call2_433cbd = tail call %struct.Memory* @sub_438730.get_mem_DCcoeff(%struct.State* nonnull %0, i64 %1609, %struct.Memory* %call2_433ca1)
  %1614 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3080), i64* %RDI.i1400, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3080), i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3080), i64 3080)) to i8), i8* %30, align 1
  %1615 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3080) to i32), i32 255))
  %1616 = trunc i32 %1615 to i8
  %1617 = and i8 %1616, 1
  %1618 = xor i8 %1617, 1
  store i8 %1618, i8* %37, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3080), i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3080)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3080), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3080), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3080), i64 63), i64 lshr (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3080), i64 63)), i64 2) to i8), i8* %54, align 1
  %1619 = load i64, i64* %RBP.i, align 8
  %1620 = add i64 %1619, -160
  %1621 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1622 = add i64 %1614, 23
  store i64 %1622, i64* %3, align 8
  %1623 = inttoptr i64 %1620 to i32*
  store i32 %1621, i32* %1623, align 4
  %1624 = load i64, i64* %3, align 8
  %1625 = add i64 %1624, 18599
  %1626 = add i64 %1624, 5
  %1627 = load i64, i64* %6, align 8
  %1628 = add i64 %1627, -8
  %1629 = inttoptr i64 %1628 to i64*
  store i64 %1626, i64* %1629, align 8
  store i64 %1628, i64* %6, align 8
  store i64 %1625, i64* %3, align 8
  %call2_433cd9 = tail call %struct.Memory* @sub_438580.get_mem_ACcoeff(%struct.State* nonnull %0, i64 %1625, %struct.Memory* %call2_433cbd)
  %1630 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3088), i64* %RDI.i1400, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3088), i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3088), i64 3088)) to i8), i8* %30, align 1
  %1631 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3088) to i32), i32 255))
  %1632 = trunc i32 %1631 to i8
  %1633 = and i8 %1632, 1
  %1634 = xor i8 %1633, 1
  store i8 %1634, i8* %37, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3088), i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3088)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3088), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3088), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3088), i64 63), i64 lshr (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3088), i64 63)), i64 2) to i8), i8* %54, align 1
  %1635 = load i64, i64* %RBP.i, align 8
  %1636 = add i64 %1635, -164
  %1637 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1638 = add i64 %1630, 23
  store i64 %1638, i64* %3, align 8
  %1639 = inttoptr i64 %1636 to i32*
  store i32 %1637, i32* %1639, align 4
  %1640 = load i64, i64* %3, align 8
  %1641 = add i64 %1640, 19003
  %1642 = add i64 %1640, 5
  %1643 = load i64, i64* %6, align 8
  %1644 = add i64 %1643, -8
  %1645 = inttoptr i64 %1644 to i64*
  store i64 %1642, i64* %1645, align 8
  store i64 %1644, i64* %6, align 8
  store i64 %1641, i64* %3, align 8
  %call2_433cf5 = tail call %struct.Memory* @sub_438730.get_mem_DCcoeff(%struct.State* nonnull %0, i64 %1641, %struct.Memory* %call2_433cd9)
  %1646 = load i64, i64* %RBP.i, align 8
  %1647 = add i64 %1646, -168
  %1648 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %1649 = load i64, i64* %3, align 8
  %1650 = add i64 %1649, 6
  store i64 %1650, i64* %3, align 8
  %1651 = inttoptr i64 %1647 to i32*
  store i32 %1648, i32* %1651, align 4
  %.pre49 = load i64, i64* %3, align 8
  br label %block_.L_433d00

block_.L_433d00:                                  ; preds = %block_.L_433c1e, %block_.L_433a2a
  %1652 = phi i64 [ %1251, %block_.L_433a2a ], [ %.pre49, %block_.L_433c1e ]
  %MEMORY.9 = phi %struct.Memory* [ %call2_433a52, %block_.L_433a2a ], [ %call2_433cf5, %block_.L_433c1e ]
  %1653 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1653, i64* %RAX.i278, align 8
  %1654 = add i64 %1653, 72684
  %1655 = add i64 %1652, 14
  store i64 %1655, i64* %3, align 8
  %1656 = inttoptr i64 %1654 to i32*
  %1657 = load i32, i32* %1656, align 4
  %1658 = zext i32 %1657 to i64
  store i64 %1658, i64* %RCX.i309, align 8
  store i64 %1653, i64* %RAX.i278, align 8
  %1659 = add i64 %1653, 72688
  %1660 = add i64 %1652, 28
  store i64 %1660, i64* %3, align 8
  %1661 = inttoptr i64 %1659 to i32*
  %1662 = load i32, i32* %1661, align 4
  %1663 = sub i32 %1657, %1662
  %1664 = icmp ult i32 %1657, %1662
  %1665 = zext i1 %1664 to i8
  store i8 %1665, i8* %30, align 1
  %1666 = and i32 %1663, 255
  %1667 = tail call i32 @llvm.ctpop.i32(i32 %1666)
  %1668 = trunc i32 %1667 to i8
  %1669 = and i8 %1668, 1
  %1670 = xor i8 %1669, 1
  store i8 %1670, i8* %37, align 1
  %1671 = xor i32 %1662, %1657
  %1672 = xor i32 %1671, %1663
  %1673 = lshr i32 %1672, 4
  %1674 = trunc i32 %1673 to i8
  %1675 = and i8 %1674, 1
  store i8 %1675, i8* %42, align 1
  %1676 = icmp eq i32 %1663, 0
  %1677 = zext i1 %1676 to i8
  store i8 %1677, i8* %45, align 1
  %1678 = lshr i32 %1663, 31
  %1679 = trunc i32 %1678 to i8
  store i8 %1679, i8* %48, align 1
  %1680 = lshr i32 %1657, 31
  %1681 = lshr i32 %1662, 31
  %1682 = xor i32 %1681, %1680
  %1683 = xor i32 %1678, %1680
  %1684 = add nuw nsw i32 %1683, %1682
  %1685 = icmp eq i32 %1684, 2
  %1686 = zext i1 %1685 to i8
  store i8 %1686, i8* %54, align 1
  %1687 = icmp ne i8 %1679, 0
  %1688 = xor i1 %1687, %1685
  %1689 = or i1 %1676, %1688
  %.v126 = select i1 %1689, i64 62, i64 34
  %1690 = add i64 %1652, %.v126
  %1691 = add i64 %1690, 8
  store i64 %1691, i64* %3, align 8
  store i64 %1653, i64* %RAX.i278, align 8
  %1692 = add i64 %1690, 14
  store i64 %1692, i64* %3, align 8
  br i1 %1689, label %block_.L_433d3e, label %block_433d22

block_433d22:                                     ; preds = %block_.L_433d00
  %1693 = load i32, i32* %1656, align 4
  %1694 = add i32 %1693, 1
  %1695 = lshr i32 %1694, 31
  %1696 = trunc i32 %1695 to i8
  %1697 = shl i32 %1694, 1
  %1698 = icmp slt i32 %1694, 0
  %1699 = icmp slt i32 %1697, 0
  %1700 = xor i1 %1698, %1699
  %1701 = zext i32 %1697 to i64
  store i64 %1701, i64* %RCX.i309, align 8
  store i8 %1696, i8* %30, align 1
  %1702 = and i32 %1697, 254
  %1703 = tail call i32 @llvm.ctpop.i32(i32 %1702)
  %1704 = trunc i32 %1703 to i8
  %1705 = and i8 %1704, 1
  %1706 = xor i8 %1705, 1
  store i8 %1706, i8* %37, align 1
  store i8 0, i8* %42, align 1
  %1707 = icmp eq i32 %1697, 0
  %1708 = zext i1 %1707 to i8
  store i8 %1708, i8* %45, align 1
  %1709 = lshr i32 %1694, 30
  %1710 = trunc i32 %1709 to i8
  %1711 = and i8 %1710, 1
  store i8 %1711, i8* %48, align 1
  %1712 = zext i1 %1700 to i8
  store i8 %1712, i8* %54, align 1
  %1713 = load i64, i64* %RBP.i, align 8
  %1714 = add i64 %1713, -36
  %1715 = add i64 %1690, 22
  store i64 %1715, i64* %3, align 8
  %1716 = inttoptr i64 %1714 to i32*
  store i32 %1697, i32* %1716, align 4
  %1717 = load i64, i64* %3, align 8
  %1718 = add i64 %1717, 28
  store i64 %1718, i64* %3, align 8
  br label %block_.L_433d55

block_.L_433d3e:                                  ; preds = %block_.L_433d00
  %1719 = load i32, i32* %1661, align 4
  %1720 = add i32 %1719, 1
  %1721 = lshr i32 %1720, 31
  %1722 = trunc i32 %1721 to i8
  %1723 = shl i32 %1720, 1
  %1724 = icmp slt i32 %1720, 0
  %1725 = icmp slt i32 %1723, 0
  %1726 = xor i1 %1724, %1725
  %1727 = zext i32 %1723 to i64
  store i64 %1727, i64* %RCX.i309, align 8
  store i8 %1722, i8* %30, align 1
  %1728 = and i32 %1723, 254
  %1729 = tail call i32 @llvm.ctpop.i32(i32 %1728)
  %1730 = trunc i32 %1729 to i8
  %1731 = and i8 %1730, 1
  %1732 = xor i8 %1731, 1
  store i8 %1732, i8* %37, align 1
  store i8 0, i8* %42, align 1
  %1733 = icmp eq i32 %1723, 0
  %1734 = zext i1 %1733 to i8
  store i8 %1734, i8* %45, align 1
  %1735 = lshr i32 %1720, 30
  %1736 = trunc i32 %1735 to i8
  %1737 = and i8 %1736, 1
  store i8 %1737, i8* %48, align 1
  %1738 = zext i1 %1726 to i8
  store i8 %1738, i8* %54, align 1
  %1739 = load i64, i64* %RBP.i, align 8
  %1740 = add i64 %1739, -36
  %1741 = add i64 %1690, 22
  store i64 %1741, i64* %3, align 8
  %1742 = inttoptr i64 %1740 to i32*
  store i32 %1723, i32* %1742, align 4
  %.pre50 = load i64, i64* %3, align 8
  br label %block_.L_433d55

block_.L_433d55:                                  ; preds = %block_.L_433d3e, %block_433d22
  %1743 = phi i64 [ %.pre50, %block_.L_433d3e ], [ %1718, %block_433d22 ]
  store i64 4, i64* %RAX.i278, align 8
  store i64 4, i64* %RSI.i1722, align 8
  %1744 = load i64, i64* %RBP.i, align 8
  %1745 = add i64 %1744, -36
  %1746 = add i64 %1743, 11
  store i64 %1746, i64* %3, align 8
  %1747 = inttoptr i64 %1745 to i32*
  %1748 = load i32, i32* %1747, align 4
  %1749 = sext i32 %1748 to i64
  store i64 %1749, i64* %RDI.i1400, align 8
  %1750 = add i64 %1743, -207989
  %1751 = add i64 %1743, 16
  %1752 = load i64, i64* %6, align 8
  %1753 = add i64 %1752, -8
  %1754 = inttoptr i64 %1753 to i64*
  store i64 %1751, i64* %1754, align 8
  store i64 %1753, i64* %6, align 8
  store i64 %1750, i64* %3, align 8
  %1755 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %MEMORY.9)
  %1756 = load i64, i64* %3, align 8
  %1757 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1757, i64* %RSI.i1722, align 8
  %1758 = add i64 %1757, 71776
  %1759 = load i64, i64* %RAX.i278, align 8
  %1760 = add i64 %1756, 15
  store i64 %1760, i64* %3, align 8
  %1761 = inttoptr i64 %1758 to i64*
  store i64 %1759, i64* %1761, align 8
  %1762 = load i64, i64* %RAX.i278, align 8
  %1763 = load i64, i64* %3, align 8
  store i8 0, i8* %30, align 1
  %1764 = trunc i64 %1762 to i32
  %1765 = and i32 %1764, 255
  %1766 = tail call i32 @llvm.ctpop.i32(i32 %1765)
  %1767 = trunc i32 %1766 to i8
  %1768 = and i8 %1767, 1
  %1769 = xor i8 %1768, 1
  store i8 %1769, i8* %37, align 1
  store i8 0, i8* %42, align 1
  %1770 = icmp eq i64 %1762, 0
  %1771 = zext i1 %1770 to i8
  store i8 %1771, i8* %45, align 1
  %1772 = lshr i64 %1762, 63
  %1773 = trunc i64 %1772 to i8
  store i8 %1773, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %.v127 = select i1 %1770, i64 10, i64 25
  %1774 = add i64 %1763, %.v127
  store i64 %1774, i64* %3, align 8
  br i1 %1770, label %block_433d7e, label %block_.L_433d8d

block_433d7e:                                     ; preds = %block_.L_433d55
  store i64 ptrtoint (%G__0x4c16f1_type* @G__0x4c16f1 to i64), i64* %RDI.i1400, align 8
  %1775 = add i64 %1774, 153202
  %1776 = add i64 %1774, 15
  %1777 = load i64, i64* %6, align 8
  %1778 = add i64 %1777, -8
  %1779 = inttoptr i64 %1778 to i64*
  store i64 %1776, i64* %1779, align 8
  store i64 %1778, i64* %6, align 8
  store i64 %1775, i64* %3, align 8
  %call2_433d88 = tail call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* nonnull %0, i64 %1775, %struct.Memory* %1755)
  %.pre51 = load i64, i64* %3, align 8
  br label %block_.L_433d8d

block_.L_433d8d:                                  ; preds = %block_.L_433d55, %block_433d7e
  %1780 = phi i64 [ %1774, %block_.L_433d55 ], [ %.pre51, %block_433d7e ]
  %MEMORY.11 = phi %struct.Memory* [ %1755, %block_.L_433d55 ], [ %call2_433d88, %block_433d7e ]
  store i64 2, i64* %RAX.i278, align 8
  %1781 = load i64, i64* %RBP.i, align 8
  %1782 = add i64 %1781, -36
  %1783 = add i64 %1780, 8
  store i64 %1783, i64* %3, align 8
  %1784 = inttoptr i64 %1782 to i32*
  %1785 = load i32, i32* %1784, align 4
  %1786 = zext i32 %1785 to i64
  store i64 %1786, i64* %RCX.i309, align 8
  %1787 = add i64 %1781, -172
  %1788 = add i64 %1780, 14
  store i64 %1788, i64* %3, align 8
  %1789 = inttoptr i64 %1787 to i32*
  store i32 2, i32* %1789, align 4
  %1790 = load i32, i32* %ECX.i359, align 4
  %1791 = zext i32 %1790 to i64
  %1792 = load i64, i64* %3, align 8
  store i64 %1791, i64* %RAX.i278, align 8
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1794 = sext i32 %1790 to i64
  %1795 = lshr i64 %1794, 32
  store i64 %1795, i64* %1793, align 8
  %1796 = load i64, i64* %RBP.i, align 8
  %1797 = add i64 %1796, -172
  %1798 = add i64 %1792, 9
  store i64 %1798, i64* %3, align 8
  %1799 = inttoptr i64 %1797 to i32*
  %1800 = load i32, i32* %1799, align 4
  %1801 = zext i32 %1800 to i64
  store i64 %1801, i64* %RCX.i309, align 8
  %1802 = add i64 %1792, 11
  store i64 %1802, i64* %3, align 8
  %1803 = sext i32 %1800 to i64
  %1804 = shl nuw i64 %1795, 32
  %1805 = or i64 %1804, %1791
  %1806 = sdiv i64 %1805, %1803
  %1807 = shl i64 %1806, 32
  %1808 = ashr exact i64 %1807, 32
  %1809 = icmp eq i64 %1806, %1808
  br i1 %1809, label %1812, label %1810

; <label>:1810:                                   ; preds = %block_.L_433d8d
  %1811 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1802, %struct.Memory* %MEMORY.11)
  %.pre52 = load i64, i64* %3, align 8
  %.pre53 = load i32, i32* %EAX.i1727.pre-phi, align 4
  br label %routine_idivl__ecx.exit1053

; <label>:1812:                                   ; preds = %block_.L_433d8d
  %1813 = srem i64 %1805, %1803
  %1814 = and i64 %1806, 4294967295
  store i64 %1814, i64* %RAX.i278, align 8
  %1815 = and i64 %1813, 4294967295
  store i64 %1815, i64* %RDX.i1765, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %1816 = trunc i64 %1806 to i32
  br label %routine_idivl__ecx.exit1053

routine_idivl__ecx.exit1053:                      ; preds = %1812, %1810
  %1817 = phi i32 [ %.pre53, %1810 ], [ %1816, %1812 ]
  %1818 = phi i64 [ %.pre52, %1810 ], [ %1802, %1812 ]
  %1819 = phi %struct.Memory* [ %1811, %1810 ], [ %MEMORY.11, %1812 ]
  %1820 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1820, i64* %RSI.i1722, align 8
  %1821 = add i64 %1820, 71776
  %1822 = add i64 %1818, 15
  store i64 %1822, i64* %3, align 8
  %1823 = inttoptr i64 %1821 to i64*
  %1824 = load i64, i64* %1823, align 8
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8.i1045 = getelementptr inbounds %union.anon, %union.anon* %1825, i64 0, i32 0
  %1826 = sext i32 %1817 to i64
  %1827 = shl nsw i64 %1826, 2
  store i64 %1827, i64* %R8.i1045, align 8
  %1828 = add i64 %1827, %1824
  store i64 %1828, i64* %RDI.i1400, align 8
  %1829 = icmp ult i64 %1828, %1824
  %1830 = icmp ult i64 %1828, %1827
  %1831 = or i1 %1829, %1830
  %1832 = zext i1 %1831 to i8
  store i8 %1832, i8* %30, align 1
  %1833 = trunc i64 %1828 to i32
  %1834 = and i32 %1833, 255
  %1835 = tail call i32 @llvm.ctpop.i32(i32 %1834)
  %1836 = trunc i32 %1835 to i8
  %1837 = and i8 %1836, 1
  %1838 = xor i8 %1837, 1
  store i8 %1838, i8* %37, align 1
  %1839 = xor i64 %1827, %1824
  %1840 = xor i64 %1839, %1828
  %1841 = lshr i64 %1840, 4
  %1842 = trunc i64 %1841 to i8
  %1843 = and i8 %1842, 1
  store i8 %1843, i8* %42, align 1
  %1844 = icmp eq i64 %1828, 0
  %1845 = zext i1 %1844 to i8
  store i8 %1845, i8* %45, align 1
  %1846 = lshr i64 %1828, 63
  %1847 = trunc i64 %1846 to i8
  store i8 %1847, i8* %48, align 1
  %1848 = lshr i64 %1824, 63
  %1849 = lshr i64 %1826, 61
  %1850 = and i64 %1849, 1
  %1851 = xor i64 %1846, %1848
  %1852 = xor i64 %1846, %1850
  %1853 = add nuw nsw i64 %1851, %1852
  %1854 = icmp eq i64 %1853, 2
  %1855 = zext i1 %1854 to i8
  store i8 %1855, i8* %54, align 1
  %1856 = add i64 %1818, 32
  store i64 %1856, i64* %3, align 8
  store i64 %1828, i64* %1823, align 8
  %1857 = load i64, i64* %RBP.i, align 8
  %1858 = add i64 %1857, -28
  %1859 = load i64, i64* %3, align 8
  %1860 = add i64 %1859, 7
  store i64 %1860, i64* %3, align 8
  %1861 = inttoptr i64 %1858 to i32*
  store i32 0, i32* %1861, align 4
  %ESI.i1012 = bitcast %union.anon* %311 to i32*
  %.pre54 = load i64, i64* %3, align 8
  br label %block_.L_433dcd

block_.L_433dcd:                                  ; preds = %block_433df1, %routine_idivl__ecx.exit1053
  %1862 = phi i64 [ %.pre54, %routine_idivl__ecx.exit1053 ], [ %2040, %block_433df1 ]
  %MEMORY.12 = phi %struct.Memory* [ %1819, %routine_idivl__ecx.exit1053 ], [ %1905, %block_433df1 ]
  store i64 2, i64* %RAX.i278, align 8
  %1863 = load i64, i64* %RBP.i, align 8
  %1864 = add i64 %1863, -28
  %1865 = add i64 %1862, 8
  store i64 %1865, i64* %3, align 8
  %1866 = inttoptr i64 %1864 to i32*
  %1867 = load i32, i32* %1866, align 4
  %1868 = zext i32 %1867 to i64
  store i64 %1868, i64* %RCX.i309, align 8
  %1869 = add i64 %1863, -36
  %1870 = add i64 %1862, 11
  store i64 %1870, i64* %3, align 8
  %1871 = inttoptr i64 %1869 to i32*
  %1872 = load i32, i32* %1871, align 4
  %1873 = zext i32 %1872 to i64
  store i64 %1873, i64* %RDX.i1765, align 8
  %1874 = add i64 %1863, -176
  %1875 = add i64 %1862, 17
  store i64 %1875, i64* %3, align 8
  %1876 = inttoptr i64 %1874 to i32*
  store i32 2, i32* %1876, align 4
  %1877 = load i32, i32* %EDX.i1759, align 4
  %1878 = zext i32 %1877 to i64
  %1879 = load i64, i64* %3, align 8
  store i64 %1878, i64* %RAX.i278, align 8
  %1880 = sext i32 %1877 to i64
  %1881 = lshr i64 %1880, 32
  store i64 %1881, i64* %1793, align 8
  %1882 = load i64, i64* %RBP.i, align 8
  %1883 = add i64 %1882, -176
  %1884 = add i64 %1879, 9
  store i64 %1884, i64* %3, align 8
  %1885 = inttoptr i64 %1883 to i32*
  %1886 = load i32, i32* %1885, align 4
  %1887 = zext i32 %1886 to i64
  store i64 %1887, i64* %RSI.i1722, align 8
  %1888 = add i64 %1879, 11
  store i64 %1888, i64* %3, align 8
  %1889 = sext i32 %1886 to i64
  %1890 = shl nuw i64 %1881, 32
  %1891 = or i64 %1890, %1878
  %1892 = sdiv i64 %1891, %1889
  %1893 = shl i64 %1892, 32
  %1894 = ashr exact i64 %1893, 32
  %1895 = icmp eq i64 %1892, %1894
  br i1 %1895, label %1898, label %1896

; <label>:1896:                                   ; preds = %block_.L_433dcd
  %1897 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1888, %struct.Memory* %MEMORY.12)
  %.pre55 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %.pre56 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit1013

; <label>:1898:                                   ; preds = %block_.L_433dcd
  %1899 = srem i64 %1891, %1889
  %1900 = and i64 %1892, 4294967295
  store i64 %1900, i64* %RAX.i278, align 8
  %1901 = and i64 %1899, 4294967295
  store i64 %1901, i64* %RDX.i1765, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %1902 = trunc i64 %1892 to i32
  br label %routine_idivl__esi.exit1013

routine_idivl__esi.exit1013:                      ; preds = %1898, %1896
  %1903 = phi i64 [ %.pre56, %1896 ], [ %1888, %1898 ]
  %1904 = phi i32 [ %.pre55, %1896 ], [ %1902, %1898 ]
  %1905 = phi %struct.Memory* [ %1897, %1896 ], [ %MEMORY.12, %1898 ]
  %1906 = load i32, i32* %ECX.i359, align 4
  %1907 = sub i32 %1906, %1904
  %1908 = icmp ult i32 %1906, %1904
  %1909 = zext i1 %1908 to i8
  store i8 %1909, i8* %30, align 1
  %1910 = and i32 %1907, 255
  %1911 = tail call i32 @llvm.ctpop.i32(i32 %1910)
  %1912 = trunc i32 %1911 to i8
  %1913 = and i8 %1912, 1
  %1914 = xor i8 %1913, 1
  store i8 %1914, i8* %37, align 1
  %1915 = xor i32 %1904, %1906
  %1916 = xor i32 %1915, %1907
  %1917 = lshr i32 %1916, 4
  %1918 = trunc i32 %1917 to i8
  %1919 = and i8 %1918, 1
  store i8 %1919, i8* %42, align 1
  %1920 = icmp eq i32 %1907, 0
  %1921 = zext i1 %1920 to i8
  store i8 %1921, i8* %45, align 1
  %1922 = lshr i32 %1907, 31
  %1923 = trunc i32 %1922 to i8
  store i8 %1923, i8* %48, align 1
  %1924 = lshr i32 %1906, 31
  %1925 = lshr i32 %1904, 31
  %1926 = xor i32 %1925, %1924
  %1927 = xor i32 %1922, %1924
  %1928 = add nuw nsw i32 %1927, %1926
  %1929 = icmp eq i32 %1928, 2
  %1930 = zext i1 %1929 to i8
  store i8 %1930, i8* %54, align 1
  %1931 = icmp ne i8 %1923, 0
  %1932 = xor i1 %1931, %1929
  %.v128 = select i1 %1932, i64 8, i64 77
  %1933 = add i64 %1903, %.v128
  store i64 %1933, i64* %3, align 8
  br i1 %1932, label %block_433df1, label %block_.L_433e36

block_433df1:                                     ; preds = %routine_idivl__esi.exit1013
  store i64 0, i64* %RAX.i278, align 8
  store i8 0, i8* %30, align 1
  store i8 1, i8* %37, align 1
  store i8 1, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  store i8 0, i8* %42, align 1
  %1934 = load i64, i64* %RBP.i, align 8
  %1935 = add i64 %1934, -28
  %1936 = add i64 %1933, 5
  store i64 %1936, i64* %3, align 8
  %1937 = inttoptr i64 %1935 to i32*
  %1938 = load i32, i32* %1937, align 4
  %1939 = zext i32 %1938 to i64
  store i64 %1939, i64* %RCX.i309, align 8
  %1940 = add i64 %1933, 9
  store i64 %1940, i64* %3, align 8
  %1941 = load i32, i32* %1937, align 4
  %1942 = sext i32 %1938 to i64
  %1943 = sext i32 %1941 to i64
  %1944 = mul nsw i64 %1943, %1942
  %1945 = trunc i64 %1944 to i32
  %1946 = and i64 %1944, 4294967295
  store i64 %1946, i64* %RCX.i309, align 8
  %1947 = shl i64 %1944, 32
  %1948 = ashr exact i64 %1947, 32
  %1949 = icmp ne i64 %1948, %1944
  %1950 = zext i1 %1949 to i8
  store i8 %1950, i8* %30, align 1
  %1951 = and i32 %1945, 255
  %1952 = tail call i32 @llvm.ctpop.i32(i32 %1951)
  %1953 = trunc i32 %1952 to i8
  %1954 = and i8 %1953, 1
  %1955 = xor i8 %1954, 1
  store i8 %1955, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  %1956 = lshr i32 %1945, 31
  %1957 = trunc i32 %1956 to i8
  store i8 %1957, i8* %48, align 1
  store i8 %1950, i8* %54, align 1
  %1958 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1958, i64* %RDX.i1765, align 8
  %1959 = add i64 %1958, 71776
  %1960 = add i64 %1933, 24
  store i64 %1960, i64* %3, align 8
  %1961 = inttoptr i64 %1959 to i64*
  %1962 = load i64, i64* %1961, align 8
  store i64 %1962, i64* %RDX.i1765, align 8
  %1963 = add i64 %1933, 27
  store i64 %1963, i64* %3, align 8
  %1964 = load i32, i32* %1937, align 4
  %1965 = sub i32 0, %1964
  %1966 = zext i32 %1965 to i64
  store i64 %1966, i64* %RAX.i278, align 8
  %1967 = icmp ne i32 %1964, 0
  %1968 = zext i1 %1967 to i8
  store i8 %1968, i8* %30, align 1
  %1969 = and i32 %1965, 255
  %1970 = tail call i32 @llvm.ctpop.i32(i32 %1969)
  %1971 = trunc i32 %1970 to i8
  %1972 = and i8 %1971, 1
  %1973 = xor i8 %1972, 1
  store i8 %1973, i8* %37, align 1
  %1974 = xor i32 %1964, %1965
  %1975 = lshr i32 %1974, 4
  %1976 = trunc i32 %1975 to i8
  %1977 = and i8 %1976, 1
  store i8 %1977, i8* %42, align 1
  %1978 = icmp eq i32 %1964, 0
  %1979 = zext i1 %1978 to i8
  store i8 %1979, i8* %45, align 1
  %1980 = lshr i32 %1965, 31
  %1981 = trunc i32 %1980 to i8
  store i8 %1981, i8* %48, align 1
  %1982 = lshr i32 %1964, 31
  %1983 = add nuw nsw i32 %1980, %1982
  %1984 = icmp eq i32 %1983, 2
  %1985 = zext i1 %1984 to i8
  store i8 %1985, i8* %54, align 1
  %1986 = sext i32 %1965 to i64
  store i64 %1986, i64* %RSI.i1722, align 8
  %1987 = shl nsw i64 %1986, 2
  %1988 = add i64 %1962, %1987
  %1989 = trunc i64 %1944 to i32
  %1990 = add i64 %1933, 33
  store i64 %1990, i64* %3, align 8
  %1991 = inttoptr i64 %1988 to i32*
  store i32 %1989, i32* %1991, align 4
  %1992 = load i64, i64* %3, align 8
  %1993 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %1993, i64* %RDX.i1765, align 8
  %1994 = add i64 %1993, 71776
  %1995 = add i64 %1992, 15
  store i64 %1995, i64* %3, align 8
  %1996 = inttoptr i64 %1994 to i64*
  %1997 = load i64, i64* %1996, align 8
  store i64 %1997, i64* %RDX.i1765, align 8
  %1998 = load i64, i64* %RBP.i, align 8
  %1999 = add i64 %1998, -28
  %2000 = add i64 %1992, 19
  store i64 %2000, i64* %3, align 8
  %2001 = inttoptr i64 %1999 to i32*
  %2002 = load i32, i32* %2001, align 4
  %2003 = sext i32 %2002 to i64
  store i64 %2003, i64* %RSI.i1722, align 8
  %2004 = shl nsw i64 %2003, 2
  %2005 = add i64 %2004, %1997
  %2006 = load i32, i32* %ECX.i359, align 4
  %2007 = add i64 %1992, 22
  store i64 %2007, i64* %3, align 8
  %2008 = inttoptr i64 %2005 to i32*
  store i32 %2006, i32* %2008, align 4
  %2009 = load i64, i64* %RBP.i, align 8
  %2010 = add i64 %2009, -28
  %2011 = load i64, i64* %3, align 8
  %2012 = add i64 %2011, 3
  store i64 %2012, i64* %3, align 8
  %2013 = inttoptr i64 %2010 to i32*
  %2014 = load i32, i32* %2013, align 4
  %2015 = add i32 %2014, 1
  %2016 = zext i32 %2015 to i64
  store i64 %2016, i64* %RAX.i278, align 8
  %2017 = icmp eq i32 %2014, -1
  %2018 = icmp eq i32 %2015, 0
  %2019 = or i1 %2017, %2018
  %2020 = zext i1 %2019 to i8
  store i8 %2020, i8* %30, align 1
  %2021 = and i32 %2015, 255
  %2022 = tail call i32 @llvm.ctpop.i32(i32 %2021)
  %2023 = trunc i32 %2022 to i8
  %2024 = and i8 %2023, 1
  %2025 = xor i8 %2024, 1
  store i8 %2025, i8* %37, align 1
  %2026 = xor i32 %2015, %2014
  %2027 = lshr i32 %2026, 4
  %2028 = trunc i32 %2027 to i8
  %2029 = and i8 %2028, 1
  store i8 %2029, i8* %42, align 1
  %2030 = zext i1 %2018 to i8
  store i8 %2030, i8* %45, align 1
  %2031 = lshr i32 %2015, 31
  %2032 = trunc i32 %2031 to i8
  store i8 %2032, i8* %48, align 1
  %2033 = lshr i32 %2014, 31
  %2034 = xor i32 %2031, %2033
  %2035 = add nuw nsw i32 %2034, %2031
  %2036 = icmp eq i32 %2035, 2
  %2037 = zext i1 %2036 to i8
  store i8 %2037, i8* %54, align 1
  %2038 = add i64 %2011, 9
  store i64 %2038, i64* %3, align 8
  store i32 %2015, i32* %2013, align 4
  %2039 = load i64, i64* %3, align 8
  %2040 = add i64 %2039, -100
  store i64 %2040, i64* %3, align 8
  br label %block_.L_433dcd

block_.L_433e36:                                  ; preds = %routine_idivl__esi.exit1013
  %2041 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %2041, i64* %RAX.i278, align 8
  %2042 = add i64 %2041, 64
  %2043 = add i64 %1933, 11
  store i64 %2043, i64* %3, align 8
  %2044 = inttoptr i64 %2042 to i32*
  %2045 = load i32, i32* %2044, align 4
  %2046 = zext i32 %2045 to i64
  store i64 %2046, i64* %RCX.i309, align 8
  %2047 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2047, i64* %RAX.i278, align 8
  %2048 = add i64 %2047, 72728
  %2049 = add i64 %1933, 25
  store i64 %2049, i64* %3, align 8
  %2050 = inttoptr i64 %2048 to i32*
  %2051 = load i32, i32* %2050, align 4
  %2052 = add i32 %2051, %2045
  %2053 = zext i32 %2052 to i64
  store i64 %2053, i64* %RCX.i309, align 8
  %2054 = icmp ult i32 %2052, %2045
  %2055 = icmp ult i32 %2052, %2051
  %2056 = or i1 %2054, %2055
  %2057 = zext i1 %2056 to i8
  store i8 %2057, i8* %30, align 1
  %2058 = and i32 %2052, 255
  %2059 = tail call i32 @llvm.ctpop.i32(i32 %2058)
  %2060 = trunc i32 %2059 to i8
  %2061 = and i8 %2060, 1
  %2062 = xor i8 %2061, 1
  store i8 %2062, i8* %37, align 1
  %2063 = xor i32 %2051, %2045
  %2064 = xor i32 %2063, %2052
  %2065 = lshr i32 %2064, 4
  %2066 = trunc i32 %2065 to i8
  %2067 = and i8 %2066, 1
  store i8 %2067, i8* %42, align 1
  %2068 = icmp eq i32 %2052, 0
  %2069 = zext i1 %2068 to i8
  store i8 %2069, i8* %45, align 1
  %2070 = lshr i32 %2052, 31
  %2071 = trunc i32 %2070 to i8
  store i8 %2071, i8* %48, align 1
  %2072 = lshr i32 %2045, 31
  %2073 = lshr i32 %2051, 31
  %2074 = xor i32 %2070, %2072
  %2075 = xor i32 %2070, %2073
  %2076 = add nuw nsw i32 %2074, %2075
  %2077 = icmp eq i32 %2076, 2
  %2078 = zext i1 %2077 to i8
  store i8 %2078, i8* %54, align 1
  %2079 = add i64 %2047, 52
  %2080 = add i64 %1933, 36
  store i64 %2080, i64* %3, align 8
  %2081 = inttoptr i64 %2079 to i32*
  store i32 %2052, i32* %2081, align 4
  %2082 = load i64, i64* %3, align 8
  %2083 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %2083, i64* %RAX.i278, align 8
  %2084 = add i64 %2083, 68
  %2085 = add i64 %2082, 11
  store i64 %2085, i64* %3, align 8
  %2086 = inttoptr i64 %2084 to i32*
  %2087 = load i32, i32* %2086, align 4
  %2088 = zext i32 %2087 to i64
  store i64 %2088, i64* %RCX.i309, align 8
  %2089 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2089, i64* %RAX.i278, align 8
  %2090 = add i64 %2089, 72732
  %2091 = add i64 %2082, 25
  store i64 %2091, i64* %3, align 8
  %2092 = inttoptr i64 %2090 to i32*
  %2093 = load i32, i32* %2092, align 4
  %2094 = add i32 %2093, %2087
  %2095 = zext i32 %2094 to i64
  store i64 %2095, i64* %RCX.i309, align 8
  %2096 = icmp ult i32 %2094, %2087
  %2097 = icmp ult i32 %2094, %2093
  %2098 = or i1 %2096, %2097
  %2099 = zext i1 %2098 to i8
  store i8 %2099, i8* %30, align 1
  %2100 = and i32 %2094, 255
  %2101 = tail call i32 @llvm.ctpop.i32(i32 %2100)
  %2102 = trunc i32 %2101 to i8
  %2103 = and i8 %2102, 1
  %2104 = xor i8 %2103, 1
  store i8 %2104, i8* %37, align 1
  %2105 = xor i32 %2093, %2087
  %2106 = xor i32 %2105, %2094
  %2107 = lshr i32 %2106, 4
  %2108 = trunc i32 %2107 to i8
  %2109 = and i8 %2108, 1
  store i8 %2109, i8* %42, align 1
  %2110 = icmp eq i32 %2094, 0
  %2111 = zext i1 %2110 to i8
  store i8 %2111, i8* %45, align 1
  %2112 = lshr i32 %2094, 31
  %2113 = trunc i32 %2112 to i8
  store i8 %2113, i8* %48, align 1
  %2114 = lshr i32 %2087, 31
  %2115 = lshr i32 %2093, 31
  %2116 = xor i32 %2112, %2114
  %2117 = xor i32 %2112, %2115
  %2118 = add nuw nsw i32 %2116, %2117
  %2119 = icmp eq i32 %2118, 2
  %2120 = zext i1 %2119 to i8
  store i8 %2120, i8* %54, align 1
  %2121 = add i64 %2089, 60
  %2122 = add i64 %2082, 36
  store i64 %2122, i64* %3, align 8
  %2123 = inttoptr i64 %2121 to i32*
  store i32 %2094, i32* %2123, align 4
  %2124 = load i64, i64* %3, align 8
  %2125 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2125, i64* %RAX.i278, align 8
  %2126 = add i64 %2125, 72700
  %2127 = add i64 %2124, 15
  store i64 %2127, i64* %3, align 8
  %2128 = inttoptr i64 %2126 to i32*
  %2129 = load i32, i32* %2128, align 4
  store i8 0, i8* %30, align 1
  %2130 = and i32 %2129, 255
  %2131 = tail call i32 @llvm.ctpop.i32(i32 %2130)
  %2132 = trunc i32 %2131 to i8
  %2133 = and i8 %2132, 1
  %2134 = xor i8 %2133, 1
  store i8 %2134, i8* %37, align 1
  store i8 0, i8* %42, align 1
  %2135 = icmp eq i32 %2129, 0
  %2136 = zext i1 %2135 to i8
  store i8 %2136, i8* %45, align 1
  %2137 = lshr i32 %2129, 31
  %2138 = trunc i32 %2137 to i8
  store i8 %2138, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %.v129 = select i1 %2135, i64 365, i64 21
  %2139 = add i64 %2124, %.v129
  store i64 %2139, i64* %3, align 8
  br i1 %2135, label %block_.L_433feb, label %block_433e93

block_433e93:                                     ; preds = %block_.L_433e36
  store i64 16, i64* %RAX.i278, align 8
  store i64 %2125, i64* %RCX.i309, align 8
  %2140 = add i64 %2125, 52
  %2141 = add i64 %2139, 16
  store i64 %2141, i64* %3, align 8
  %2142 = inttoptr i64 %2140 to i32*
  %2143 = load i32, i32* %2142, align 4
  %2144 = zext i32 %2143 to i64
  store i64 %2144, i64* %RDX.i1765, align 8
  store i64 %2125, i64* %RCX.i309, align 8
  %2145 = add i64 %2139, 31
  store i64 %2145, i64* %3, align 8
  %2146 = load i32, i32* %2128, align 4
  %2147 = sext i32 %2146 to i64
  store i64 %2147, i64* %RCX.i309, align 8
  %2148 = load i64, i64* %RBP.i, align 8
  %2149 = add i64 %2148, -180
  %2150 = add i64 %2139, 37
  store i64 %2150, i64* %3, align 8
  %2151 = inttoptr i64 %2149 to i32*
  store i32 16, i32* %2151, align 4
  %2152 = load i64, i64* %RBP.i, align 8
  %2153 = add i64 %2152, -184
  %2154 = load i32, i32* %EDX.i1759, align 4
  %2155 = load i64, i64* %3, align 8
  %2156 = add i64 %2155, 6
  store i64 %2156, i64* %3, align 8
  %2157 = inttoptr i64 %2153 to i32*
  store i32 %2154, i32* %2157, align 4
  %2158 = load i64, i64* %3, align 8
  %2159 = load i32, i32* %EAX.i1727.pre-phi, align 8
  %2160 = sext i32 %2159 to i64
  %2161 = lshr i64 %2160, 32
  store i64 %2161, i64* %1793, align 8
  %2162 = load i64, i64* %RCX.i309, align 8
  %2163 = shl i64 %2162, 2
  %2164 = add i64 %2163, 7125280
  %2165 = add i64 %2158, 8
  store i64 %2165, i64* %3, align 8
  %2166 = zext i32 %2159 to i64
  %2167 = inttoptr i64 %2164 to i32*
  %2168 = load i32, i32* %2167, align 4
  %2169 = sext i32 %2168 to i64
  %2170 = shl nuw i64 %2161, 32
  %2171 = or i64 %2170, %2166
  %2172 = sdiv i64 %2171, %2169
  %2173 = shl i64 %2172, 32
  %2174 = ashr exact i64 %2173, 32
  %2175 = icmp eq i64 %2172, %2174
  br i1 %2175, label %2178, label %2176

; <label>:2176:                                   ; preds = %block_433e93
  %2177 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2165, %struct.Memory* %1905)
  %.pre57 = load i64, i64* %3, align 8
  %.pre58 = load i32, i32* %EAX.i1727.pre-phi, align 4
  br label %routine_idivl_0x6cb920___rcx_4_.exit907

; <label>:2178:                                   ; preds = %block_433e93
  %2179 = srem i64 %2171, %2169
  %2180 = and i64 %2172, 4294967295
  store i64 %2180, i64* %RAX.i278, align 8
  %2181 = and i64 %2179, 4294967295
  store i64 %2181, i64* %RDX.i1765, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %2182 = trunc i64 %2172 to i32
  br label %routine_idivl_0x6cb920___rcx_4_.exit907

routine_idivl_0x6cb920___rcx_4_.exit907:          ; preds = %2178, %2176
  %2183 = phi i32 [ %.pre58, %2176 ], [ %2182, %2178 ]
  %2184 = phi i64 [ %.pre57, %2176 ], [ %2165, %2178 ]
  %2185 = phi %struct.Memory* [ %2177, %2176 ], [ %1905, %2178 ]
  %2186 = load i64, i64* %RBP.i, align 8
  %2187 = add i64 %2186, -184
  %2188 = add i64 %2184, 6
  store i64 %2188, i64* %3, align 8
  %2189 = inttoptr i64 %2187 to i32*
  %2190 = load i32, i32* %2189, align 4
  %2191 = zext i32 %2190 to i64
  store i64 %2191, i64* %RSI.i1722, align 8
  %2192 = add i64 %2186, -188
  %2193 = add i64 %2184, 12
  store i64 %2193, i64* %3, align 8
  %2194 = inttoptr i64 %2192 to i32*
  store i32 %2183, i32* %2194, align 4
  %2195 = load i32, i32* %ESI.i1012, align 4
  %2196 = zext i32 %2195 to i64
  %2197 = load i64, i64* %3, align 8
  store i64 %2196, i64* %RAX.i278, align 8
  %2198 = sext i32 %2195 to i64
  %2199 = lshr i64 %2198, 32
  store i64 %2199, i64* %1793, align 8
  %2200 = load i64, i64* %RBP.i, align 8
  %2201 = add i64 %2200, -188
  %2202 = add i64 %2197, 9
  store i64 %2202, i64* %3, align 8
  %2203 = inttoptr i64 %2201 to i32*
  %2204 = load i32, i32* %2203, align 4
  %2205 = zext i32 %2204 to i64
  store i64 %2205, i64* %RDI.i1400, align 8
  %2206 = add i64 %2197, 11
  store i64 %2206, i64* %3, align 8
  %2207 = sext i32 %2204 to i64
  %2208 = shl nuw i64 %2199, 32
  %2209 = or i64 %2208, %2196
  %2210 = sdiv i64 %2209, %2207
  %2211 = shl i64 %2210, 32
  %2212 = ashr exact i64 %2211, 32
  %2213 = icmp eq i64 %2210, %2212
  br i1 %2213, label %2216, label %2214

; <label>:2214:                                   ; preds = %routine_idivl_0x6cb920___rcx_4_.exit907
  %2215 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2206, %struct.Memory* %2185)
  %.pre59 = load i64, i64* %3, align 8
  %.pre60 = load i32, i32* %EAX.i1727.pre-phi, align 4
  br label %routine_idivl__edi.exit

; <label>:2216:                                   ; preds = %routine_idivl_0x6cb920___rcx_4_.exit907
  %2217 = srem i64 %2209, %2207
  %2218 = and i64 %2210, 4294967295
  store i64 %2218, i64* %RAX.i278, align 8
  %2219 = and i64 %2217, 4294967295
  store i64 %2219, i64* %RDX.i1765, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %2220 = trunc i64 %2210 to i32
  br label %routine_idivl__edi.exit

routine_idivl__edi.exit:                          ; preds = %2216, %2214
  %2221 = phi i32 [ %.pre60, %2214 ], [ %2220, %2216 ]
  %2222 = phi i64 [ %.pre59, %2214 ], [ %2206, %2216 ]
  %2223 = phi %struct.Memory* [ %2215, %2214 ], [ %2185, %2216 ]
  %2224 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2225 = add i64 %2224, 56
  %2226 = add i64 %2222, 11
  store i64 %2226, i64* %3, align 8
  %2227 = inttoptr i64 %2225 to i32*
  store i32 %2221, i32* %2227, align 4
  %2228 = load i64, i64* %3, align 8
  %2229 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2229, i64* %RCX.i309, align 8
  %2230 = add i64 %2229, 60
  %2231 = add i64 %2228, 11
  store i64 %2231, i64* %3, align 8
  %2232 = inttoptr i64 %2230 to i32*
  %2233 = load i32, i32* %2232, align 4
  %2234 = zext i32 %2233 to i64
  store i64 %2234, i64* %RAX.i278, align 8
  store i64 %2229, i64* %RCX.i309, align 8
  %2235 = add i64 %2229, 72700
  %2236 = add i64 %2228, 26
  store i64 %2236, i64* %3, align 8
  %2237 = inttoptr i64 %2235 to i32*
  %2238 = load i32, i32* %2237, align 4
  %2239 = sext i32 %2238 to i64
  store i64 %2239, i64* %RCX.i309, align 8
  %R8D.i872 = bitcast %union.anon* %1825 to i32*
  %2240 = load i64, i64* %RBP.i, align 8
  %2241 = add i64 %2240, -180
  %2242 = add i64 %2228, 33
  store i64 %2242, i64* %3, align 8
  %2243 = inttoptr i64 %2241 to i32*
  %2244 = load i32, i32* %2243, align 4
  %2245 = zext i32 %2244 to i64
  store i64 %2245, i64* %R8.i1045, align 8
  %2246 = add i64 %2240, -192
  %2247 = add i64 %2228, 39
  store i64 %2247, i64* %3, align 8
  %2248 = inttoptr i64 %2246 to i32*
  store i32 %2233, i32* %2248, align 4
  %2249 = load i32, i32* %R8D.i872, align 4
  %2250 = zext i32 %2249 to i64
  %2251 = load i64, i64* %3, align 8
  store i64 %2250, i64* %RAX.i278, align 8
  %2252 = sext i32 %2249 to i64
  %2253 = lshr i64 %2252, 32
  store i64 %2253, i64* %1793, align 8
  %2254 = load i64, i64* %RCX.i309, align 8
  %2255 = shl i64 %2254, 2
  %2256 = add i64 %2255, 7125296
  %2257 = add i64 %2251, 11
  store i64 %2257, i64* %3, align 8
  %2258 = inttoptr i64 %2256 to i32*
  %2259 = load i32, i32* %2258, align 4
  %2260 = sext i32 %2259 to i64
  %2261 = shl nuw i64 %2253, 32
  %2262 = or i64 %2261, %2250
  %2263 = sdiv i64 %2262, %2260
  %2264 = shl i64 %2263, 32
  %2265 = ashr exact i64 %2264, 32
  %2266 = icmp eq i64 %2263, %2265
  br i1 %2266, label %2269, label %2267

; <label>:2267:                                   ; preds = %routine_idivl__edi.exit
  %2268 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2257, %struct.Memory* %2223)
  %.pre61 = load i64, i64* %3, align 8
  %.pre62 = load i32, i32* %EAX.i1727.pre-phi, align 4
  br label %routine_idivl_0x6cb930___rcx_4_.exit860

; <label>:2269:                                   ; preds = %routine_idivl__edi.exit
  %2270 = srem i64 %2262, %2260
  %2271 = and i64 %2263, 4294967295
  store i64 %2271, i64* %RAX.i278, align 8
  %2272 = and i64 %2270, 4294967295
  store i64 %2272, i64* %RDX.i1765, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %2273 = trunc i64 %2263 to i32
  br label %routine_idivl_0x6cb930___rcx_4_.exit860

routine_idivl_0x6cb930___rcx_4_.exit860:          ; preds = %2269, %2267
  %2274 = phi i32 [ %.pre62, %2267 ], [ %2273, %2269 ]
  %2275 = phi i64 [ %.pre61, %2267 ], [ %2257, %2269 ]
  %2276 = phi %struct.Memory* [ %2268, %2267 ], [ %2223, %2269 ]
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i856 = bitcast %union.anon* %2277 to i32*
  %2278 = getelementptr inbounds %union.anon, %union.anon* %2277, i64 0, i32 0
  %2279 = load i64, i64* %RBP.i, align 8
  %2280 = add i64 %2279, -192
  %2281 = add i64 %2275, 7
  store i64 %2281, i64* %3, align 8
  %2282 = inttoptr i64 %2280 to i32*
  %2283 = load i32, i32* %2282, align 4
  %2284 = zext i32 %2283 to i64
  store i64 %2284, i64* %2278, align 8
  %2285 = add i64 %2279, -196
  %2286 = add i64 %2275, 13
  store i64 %2286, i64* %3, align 8
  %2287 = inttoptr i64 %2285 to i32*
  store i32 %2274, i32* %2287, align 4
  %2288 = load i32, i32* %R9D.i856, align 4
  %2289 = zext i32 %2288 to i64
  %2290 = load i64, i64* %3, align 8
  store i64 %2289, i64* %RAX.i278, align 8
  %2291 = sext i32 %2288 to i64
  %2292 = lshr i64 %2291, 32
  store i64 %2292, i64* %1793, align 8
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %2294 = load i64, i64* %RBP.i, align 8
  %2295 = add i64 %2294, -196
  %2296 = add i64 %2290, 11
  store i64 %2296, i64* %3, align 8
  %2297 = inttoptr i64 %2295 to i32*
  %2298 = load i32, i32* %2297, align 4
  %2299 = zext i32 %2298 to i64
  store i64 %2299, i64* %2293, align 8
  %2300 = add i64 %2290, 14
  store i64 %2300, i64* %3, align 8
  %2301 = sext i32 %2298 to i64
  %2302 = shl nuw i64 %2292, 32
  %2303 = or i64 %2302, %2289
  %2304 = sdiv i64 %2303, %2301
  %2305 = shl i64 %2304, 32
  %2306 = ashr exact i64 %2305, 32
  %2307 = icmp eq i64 %2304, %2306
  br i1 %2307, label %2310, label %2308

; <label>:2308:                                   ; preds = %routine_idivl_0x6cb930___rcx_4_.exit860
  %2309 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2300, %struct.Memory* %2276)
  %.pre63 = load i64, i64* %3, align 8
  %.pre64 = load i32, i32* %EAX.i1727.pre-phi, align 4
  br label %routine_idivl__r10d.exit

; <label>:2310:                                   ; preds = %routine_idivl_0x6cb930___rcx_4_.exit860
  %2311 = srem i64 %2303, %2301
  %2312 = and i64 %2304, 4294967295
  store i64 %2312, i64* %RAX.i278, align 8
  %2313 = and i64 %2311, 4294967295
  store i64 %2313, i64* %RDX.i1765, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %2314 = trunc i64 %2304 to i32
  br label %routine_idivl__r10d.exit

routine_idivl__r10d.exit:                         ; preds = %2310, %2308
  %2315 = phi i32 [ %.pre64, %2308 ], [ %2314, %2310 ]
  %2316 = phi i64 [ %.pre63, %2308 ], [ %2300, %2310 ]
  %2317 = phi %struct.Memory* [ %2309, %2308 ], [ %2276, %2310 ]
  %2318 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2319 = add i64 %2318, 64
  %2320 = add i64 %2316, 11
  store i64 %2320, i64* %3, align 8
  %2321 = inttoptr i64 %2319 to i32*
  store i32 %2315, i32* %2321, align 4
  %2322 = load i64, i64* %3, align 8
  %2323 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %2323, i64* %RCX.i309, align 8
  %2324 = add i64 %2323, 64
  %2325 = add i64 %2322, 11
  store i64 %2325, i64* %3, align 8
  %2326 = inttoptr i64 %2324 to i32*
  %2327 = load i32, i32* %2326, align 4
  %2328 = zext i32 %2327 to i64
  store i64 %2328, i64* %RAX.i278, align 8
  %2329 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2329, i64* %RCX.i309, align 8
  %2330 = add i64 %2329, 72700
  %2331 = add i64 %2322, 26
  store i64 %2331, i64* %3, align 8
  %2332 = inttoptr i64 %2330 to i32*
  %2333 = load i32, i32* %2332, align 4
  %2334 = sext i32 %2333 to i64
  store i64 %2334, i64* %RCX.i309, align 8
  %2335 = load i64, i64* %RBP.i, align 8
  %2336 = add i64 %2335, -200
  %2337 = add i64 %2322, 32
  store i64 %2337, i64* %3, align 8
  %2338 = inttoptr i64 %2336 to i32*
  store i32 %2327, i32* %2338, align 4
  %2339 = load i32, i32* %R8D.i872, align 4
  %2340 = zext i32 %2339 to i64
  %2341 = load i64, i64* %3, align 8
  store i64 %2340, i64* %RAX.i278, align 8
  %2342 = sext i32 %2339 to i64
  %2343 = lshr i64 %2342, 32
  store i64 %2343, i64* %1793, align 8
  %2344 = load i64, i64* %RCX.i309, align 8
  %2345 = shl i64 %2344, 2
  %2346 = add i64 %2345, 7125280
  %2347 = add i64 %2341, 11
  store i64 %2347, i64* %3, align 8
  %2348 = inttoptr i64 %2346 to i32*
  %2349 = load i32, i32* %2348, align 4
  %2350 = sext i32 %2349 to i64
  %2351 = shl nuw i64 %2343, 32
  %2352 = or i64 %2351, %2340
  %2353 = sdiv i64 %2352, %2350
  %2354 = shl i64 %2353, 32
  %2355 = ashr exact i64 %2354, 32
  %2356 = icmp eq i64 %2353, %2355
  br i1 %2356, label %2359, label %2357

; <label>:2357:                                   ; preds = %routine_idivl__r10d.exit
  %2358 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2347, %struct.Memory* %2317)
  %.pre65 = load i64, i64* %3, align 8
  %.pre66 = load i32, i32* %EAX.i1727.pre-phi, align 4
  br label %routine_idivl_0x6cb920___rcx_4_.exit

; <label>:2359:                                   ; preds = %routine_idivl__r10d.exit
  %2360 = srem i64 %2352, %2350
  %2361 = and i64 %2353, 4294967295
  store i64 %2361, i64* %RAX.i278, align 8
  %2362 = and i64 %2360, 4294967295
  store i64 %2362, i64* %RDX.i1765, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %2363 = trunc i64 %2353 to i32
  br label %routine_idivl_0x6cb920___rcx_4_.exit

routine_idivl_0x6cb920___rcx_4_.exit:             ; preds = %2359, %2357
  %2364 = phi i32 [ %.pre66, %2357 ], [ %2363, %2359 ]
  %2365 = phi i64 [ %.pre65, %2357 ], [ %2347, %2359 ]
  %2366 = phi %struct.Memory* [ %2358, %2357 ], [ %2317, %2359 ]
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D.i816 = bitcast %union.anon* %2367 to i32*
  %2368 = getelementptr inbounds %union.anon, %union.anon* %2367, i64 0, i32 0
  %2369 = load i64, i64* %RBP.i, align 8
  %2370 = add i64 %2369, -200
  %2371 = add i64 %2365, 7
  store i64 %2371, i64* %3, align 8
  %2372 = inttoptr i64 %2370 to i32*
  %2373 = load i32, i32* %2372, align 4
  %2374 = zext i32 %2373 to i64
  store i64 %2374, i64* %2368, align 8
  %2375 = add i64 %2369, -204
  %2376 = add i64 %2365, 13
  store i64 %2376, i64* %3, align 8
  %2377 = inttoptr i64 %2375 to i32*
  store i32 %2364, i32* %2377, align 4
  %2378 = load i32, i32* %R11D.i816, align 4
  %2379 = zext i32 %2378 to i64
  %2380 = load i64, i64* %3, align 8
  store i64 %2379, i64* %RAX.i278, align 8
  %2381 = sext i32 %2378 to i64
  %2382 = lshr i64 %2381, 32
  store i64 %2382, i64* %1793, align 8
  %2383 = load i64, i64* %RBP.i, align 8
  %2384 = add i64 %2383, -204
  %2385 = add i64 %2380, 10
  store i64 %2385, i64* %3, align 8
  %2386 = inttoptr i64 %2384 to i32*
  %2387 = load i32, i32* %2386, align 4
  %2388 = zext i32 %2387 to i64
  store i64 %2388, i64* %RBX.i194, align 8
  %2389 = add i64 %2380, 12
  store i64 %2389, i64* %3, align 8
  %2390 = sext i32 %2387 to i64
  %2391 = shl nuw i64 %2382, 32
  %2392 = or i64 %2391, %2379
  %2393 = sdiv i64 %2392, %2390
  %2394 = shl i64 %2393, 32
  %2395 = ashr exact i64 %2394, 32
  %2396 = icmp eq i64 %2393, %2395
  br i1 %2396, label %2399, label %2397

; <label>:2397:                                   ; preds = %routine_idivl_0x6cb920___rcx_4_.exit
  %2398 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2389, %struct.Memory* %2366)
  %.pre67 = load i64, i64* %3, align 8
  %.pre68 = load i32, i32* %EAX.i1727.pre-phi, align 4
  br label %routine_idivl__ebx.exit

; <label>:2399:                                   ; preds = %routine_idivl_0x6cb920___rcx_4_.exit
  %2400 = srem i64 %2392, %2390
  %2401 = and i64 %2393, 4294967295
  store i64 %2401, i64* %RAX.i278, align 8
  %2402 = and i64 %2400, 4294967295
  store i64 %2402, i64* %RDX.i1765, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %2403 = trunc i64 %2393 to i32
  br label %routine_idivl__ebx.exit

routine_idivl__ebx.exit:                          ; preds = %2399, %2397
  %2404 = phi i32 [ %.pre68, %2397 ], [ %2403, %2399 ]
  %2405 = phi i64 [ %.pre67, %2397 ], [ %2389, %2399 ]
  %2406 = phi %struct.Memory* [ %2398, %2397 ], [ %2366, %2399 ]
  %2407 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  %2408 = add i64 %2407, 3308
  %2409 = add i64 %2405, 14
  store i64 %2409, i64* %3, align 8
  %2410 = inttoptr i64 %2408 to i32*
  store i32 %2404, i32* %2410, align 4
  %2411 = load i64, i64* %3, align 8
  %2412 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %2412, i64* %RCX.i309, align 8
  %2413 = add i64 %2412, 68
  %2414 = add i64 %2411, 11
  store i64 %2414, i64* %3, align 8
  %2415 = inttoptr i64 %2413 to i32*
  %2416 = load i32, i32* %2415, align 4
  %2417 = zext i32 %2416 to i64
  store i64 %2417, i64* %RAX.i278, align 8
  %2418 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2418, i64* %RCX.i309, align 8
  %2419 = add i64 %2418, 72700
  %2420 = add i64 %2411, 26
  store i64 %2420, i64* %3, align 8
  %2421 = inttoptr i64 %2419 to i32*
  %2422 = load i32, i32* %2421, align 4
  %2423 = sext i32 %2422 to i64
  store i64 %2423, i64* %RCX.i309, align 8
  %2424 = load i64, i64* %RBP.i, align 8
  %2425 = add i64 %2424, -208
  %2426 = add i64 %2411, 32
  store i64 %2426, i64* %3, align 8
  %2427 = inttoptr i64 %2425 to i32*
  store i32 %2416, i32* %2427, align 4
  %2428 = load i32, i32* %R8D.i872, align 4
  %2429 = zext i32 %2428 to i64
  %2430 = load i64, i64* %3, align 8
  store i64 %2429, i64* %RAX.i278, align 8
  %2431 = sext i32 %2428 to i64
  %2432 = lshr i64 %2431, 32
  store i64 %2432, i64* %1793, align 8
  %2433 = load i64, i64* %RCX.i309, align 8
  %2434 = shl i64 %2433, 2
  %2435 = add i64 %2434, 7125296
  %2436 = add i64 %2430, 11
  store i64 %2436, i64* %3, align 8
  %2437 = inttoptr i64 %2435 to i32*
  %2438 = load i32, i32* %2437, align 4
  %2439 = sext i32 %2438 to i64
  %2440 = shl nuw i64 %2432, 32
  %2441 = or i64 %2440, %2429
  %2442 = sdiv i64 %2441, %2439
  %2443 = shl i64 %2442, 32
  %2444 = ashr exact i64 %2443, 32
  %2445 = icmp eq i64 %2442, %2444
  br i1 %2445, label %2448, label %2446

; <label>:2446:                                   ; preds = %routine_idivl__ebx.exit
  %2447 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2436, %struct.Memory* %2406)
  %.pre69 = load i64, i64* %3, align 8
  %.pre70 = load i32, i32* %EAX.i1727.pre-phi, align 4
  br label %routine_idivl_0x6cb930___rcx_4_.exit

; <label>:2448:                                   ; preds = %routine_idivl__ebx.exit
  %2449 = srem i64 %2441, %2439
  %2450 = and i64 %2442, 4294967295
  store i64 %2450, i64* %RAX.i278, align 8
  %2451 = and i64 %2449, 4294967295
  store i64 %2451, i64* %RDX.i1765, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %2452 = trunc i64 %2442 to i32
  br label %routine_idivl_0x6cb930___rcx_4_.exit

routine_idivl_0x6cb930___rcx_4_.exit:             ; preds = %2448, %2446
  %2453 = phi i32 [ %.pre70, %2446 ], [ %2452, %2448 ]
  %2454 = phi i64 [ %.pre69, %2446 ], [ %2436, %2448 ]
  %2455 = phi %struct.Memory* [ %2447, %2446 ], [ %2406, %2448 ]
  %R14D.i776 = bitcast %union.anon* %15 to i32*
  %2456 = load i64, i64* %RBP.i, align 8
  %2457 = add i64 %2456, -208
  %2458 = add i64 %2454, 7
  store i64 %2458, i64* %3, align 8
  %2459 = inttoptr i64 %2457 to i32*
  %2460 = load i32, i32* %2459, align 4
  %2461 = zext i32 %2460 to i64
  store i64 %2461, i64* %R14.i163, align 8
  %2462 = add i64 %2456, -212
  %2463 = add i64 %2454, 13
  store i64 %2463, i64* %3, align 8
  %2464 = inttoptr i64 %2462 to i32*
  store i32 %2453, i32* %2464, align 4
  %2465 = load i32, i32* %R14D.i776, align 4
  %2466 = zext i32 %2465 to i64
  %2467 = load i64, i64* %3, align 8
  store i64 %2466, i64* %RAX.i278, align 8
  %2468 = sext i32 %2465 to i64
  %2469 = lshr i64 %2468, 32
  store i64 %2469, i64* %1793, align 8
  %2470 = load i64, i64* %RBP.i, align 8
  %2471 = add i64 %2470, -212
  %2472 = add i64 %2467, 11
  store i64 %2472, i64* %3, align 8
  %2473 = inttoptr i64 %2471 to i32*
  %2474 = load i32, i32* %2473, align 4
  %2475 = zext i32 %2474 to i64
  store i64 %2475, i64* %R15.i83, align 8
  %2476 = add i64 %2467, 14
  store i64 %2476, i64* %3, align 8
  %2477 = sext i32 %2474 to i64
  %2478 = shl nuw i64 %2469, 32
  %2479 = or i64 %2478, %2466
  %2480 = sdiv i64 %2479, %2477
  %2481 = shl i64 %2480, 32
  %2482 = ashr exact i64 %2481, 32
  %2483 = icmp eq i64 %2480, %2482
  br i1 %2483, label %2486, label %2484

; <label>:2484:                                   ; preds = %routine_idivl_0x6cb930___rcx_4_.exit
  %2485 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2476, %struct.Memory* %2455)
  %.pre71 = load i64, i64* %3, align 8
  %.pre72 = load i32, i32* %EAX.i1727.pre-phi, align 4
  br label %routine_idivl__r15d.exit

; <label>:2486:                                   ; preds = %routine_idivl_0x6cb930___rcx_4_.exit
  %2487 = srem i64 %2479, %2477
  %2488 = and i64 %2480, 4294967295
  store i64 %2488, i64* %RAX.i278, align 8
  %2489 = and i64 %2487, 4294967295
  store i64 %2489, i64* %RDX.i1765, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %2490 = trunc i64 %2480 to i32
  br label %routine_idivl__r15d.exit

routine_idivl__r15d.exit:                         ; preds = %2486, %2484
  %2491 = phi i32 [ %.pre72, %2484 ], [ %2490, %2486 ]
  %2492 = phi i64 [ %.pre71, %2484 ], [ %2476, %2486 ]
  %2493 = phi %struct.Memory* [ %2485, %2484 ], [ %2455, %2486 ]
  %2494 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %2494, i64* %RCX.i309, align 8
  %2495 = add i64 %2494, 3304
  %2496 = add i64 %2492, 14
  store i64 %2496, i64* %3, align 8
  %2497 = inttoptr i64 %2495 to i32*
  store i32 %2491, i32* %2497, align 4
  %2498 = load i64, i64* %3, align 8
  %2499 = add i64 %2498, 71
  store i64 %2499, i64* %3, align 8
  br label %block_.L_43402d

block_.L_433feb:                                  ; preds = %block_.L_433e36
  %2500 = add i64 %2125, 56
  %2501 = add i64 %2139, 15
  store i64 %2501, i64* %3, align 8
  %2502 = inttoptr i64 %2500 to i32*
  store i32 0, i32* %2502, align 4
  %2503 = load i64, i64* %3, align 8
  %2504 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2505 = add i64 %2504, 64
  %2506 = add i64 %2503, 15
  store i64 %2506, i64* %3, align 8
  %2507 = inttoptr i64 %2505 to i32*
  store i32 0, i32* %2507, align 4
  %2508 = load i64, i64* %3, align 8
  %2509 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  %2510 = add i64 %2509, 3308
  %2511 = add i64 %2508, 18
  store i64 %2511, i64* %3, align 8
  %2512 = inttoptr i64 %2510 to i32*
  store i32 0, i32* %2512, align 4
  %2513 = load i64, i64* %3, align 8
  %2514 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %2514, i64* %RAX.i278, align 8
  %2515 = add i64 %2514, 3304
  %2516 = add i64 %2513, 18
  store i64 %2516, i64* %3, align 8
  %2517 = inttoptr i64 %2515 to i32*
  store i32 0, i32* %2517, align 4
  %.pre73 = load i64, i64* %3, align 8
  br label %block_.L_43402d

block_.L_43402d:                                  ; preds = %block_.L_433feb, %routine_idivl__r15d.exit
  %2518 = phi i64 [ %.pre73, %block_.L_433feb ], [ %2499, %routine_idivl__r15d.exit ]
  %MEMORY.13 = phi %struct.Memory* [ %1905, %block_.L_433feb ], [ %2493, %routine_idivl__r15d.exit ]
  store i64 16, i64* %RAX.i278, align 8
  %2519 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2519, i64* %RCX.i309, align 8
  %2520 = add i64 %2519, 64
  %2521 = add i64 %2518, 16
  store i64 %2521, i64* %3, align 8
  %2522 = inttoptr i64 %2520 to i32*
  %2523 = load i32, i32* %2522, align 4
  %2524 = zext i32 %2523 to i64
  store i64 %2524, i64* %RDX.i1765, align 8
  %2525 = add i64 %2519, 68
  %2526 = add i64 %2518, 27
  store i64 %2526, i64* %3, align 8
  %2527 = inttoptr i64 %2525 to i32*
  store i32 %2523, i32* %2527, align 4
  %2528 = load i64, i64* %3, align 8
  %2529 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %2529, i64* %RCX.i309, align 8
  %2530 = add i64 %2529, 64
  %2531 = add i64 %2528, 11
  store i64 %2531, i64* %3, align 8
  %2532 = inttoptr i64 %2530 to i32*
  %2533 = load i32, i32* %2532, align 4
  %2534 = zext i32 %2533 to i64
  store i64 %2534, i64* %RDX.i1765, align 8
  %2535 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2535, i64* %RCX.i309, align 8
  %2536 = add i64 %2535, 72728
  %2537 = add i64 %2528, 25
  store i64 %2537, i64* %3, align 8
  %2538 = inttoptr i64 %2536 to i32*
  %2539 = load i32, i32* %2538, align 4
  %2540 = add i32 %2539, %2533
  %2541 = zext i32 %2540 to i64
  store i64 %2541, i64* %RDX.i1765, align 8
  %2542 = icmp ult i32 %2540, %2533
  %2543 = icmp ult i32 %2540, %2539
  %2544 = or i1 %2542, %2543
  %2545 = zext i1 %2544 to i8
  store i8 %2545, i8* %30, align 1
  %2546 = and i32 %2540, 255
  %2547 = tail call i32 @llvm.ctpop.i32(i32 %2546)
  %2548 = trunc i32 %2547 to i8
  %2549 = and i8 %2548, 1
  %2550 = xor i8 %2549, 1
  store i8 %2550, i8* %37, align 1
  %2551 = xor i32 %2539, %2533
  %2552 = xor i32 %2551, %2540
  %2553 = lshr i32 %2552, 4
  %2554 = trunc i32 %2553 to i8
  %2555 = and i8 %2554, 1
  store i8 %2555, i8* %42, align 1
  %2556 = icmp eq i32 %2540, 0
  %2557 = zext i1 %2556 to i8
  store i8 %2557, i8* %45, align 1
  %2558 = lshr i32 %2540, 31
  %2559 = trunc i32 %2558 to i8
  store i8 %2559, i8* %48, align 1
  %2560 = lshr i32 %2533, 31
  %2561 = lshr i32 %2539, 31
  %2562 = xor i32 %2558, %2560
  %2563 = xor i32 %2558, %2561
  %2564 = add nuw nsw i32 %2562, %2563
  %2565 = icmp eq i32 %2564, 2
  %2566 = zext i1 %2565 to i8
  store i8 %2566, i8* %54, align 1
  %2567 = load i64, i64* %RBP.i, align 8
  %2568 = add i64 %2567, -216
  %2569 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %2570 = add i64 %2528, 31
  store i64 %2570, i64* %3, align 8
  %2571 = inttoptr i64 %2568 to i32*
  store i32 %2569, i32* %2571, align 4
  %2572 = load i32, i32* %EDX.i1759, align 4
  %2573 = zext i32 %2572 to i64
  %2574 = load i64, i64* %3, align 8
  store i64 %2573, i64* %RAX.i278, align 8
  %2575 = sext i32 %2572 to i64
  %2576 = lshr i64 %2575, 32
  store i64 %2576, i64* %1793, align 8
  %2577 = load i64, i64* %RBP.i, align 8
  %2578 = add i64 %2577, -216
  %2579 = add i64 %2574, 9
  store i64 %2579, i64* %3, align 8
  %2580 = inttoptr i64 %2578 to i32*
  %2581 = load i32, i32* %2580, align 4
  %2582 = zext i32 %2581 to i64
  store i64 %2582, i64* %RSI.i1722, align 8
  %2583 = add i64 %2574, 11
  store i64 %2583, i64* %3, align 8
  %2584 = sext i32 %2581 to i64
  %2585 = shl nuw i64 %2576, 32
  %2586 = or i64 %2585, %2573
  %2587 = sdiv i64 %2586, %2584
  %2588 = shl i64 %2587, 32
  %2589 = ashr exact i64 %2588, 32
  %2590 = icmp eq i64 %2587, %2589
  br i1 %2590, label %2593, label %2591

; <label>:2591:                                   ; preds = %block_.L_43402d
  %2592 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2583, %struct.Memory* %MEMORY.13)
  %.pre74 = load i64, i64* %3, align 8
  %.pre75 = load i32, i32* %EAX.i1727.pre-phi, align 4
  br label %routine_idivl__esi.exit707

; <label>:2593:                                   ; preds = %block_.L_43402d
  %2594 = srem i64 %2586, %2584
  %2595 = and i64 %2587, 4294967295
  store i64 %2595, i64* %RAX.i278, align 8
  %2596 = and i64 %2594, 4294967295
  store i64 %2596, i64* %RDX.i1765, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %2597 = trunc i64 %2587 to i32
  br label %routine_idivl__esi.exit707

routine_idivl__esi.exit707:                       ; preds = %2593, %2591
  %2598 = phi i32 [ %.pre75, %2591 ], [ %2597, %2593 ]
  %2599 = phi i64 [ %.pre74, %2591 ], [ %2583, %2593 ]
  %2600 = phi %struct.Memory* [ %2592, %2591 ], [ %MEMORY.13, %2593 ]
  %2601 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2602 = add i64 %2601, 72468
  %2603 = add i64 %2599, 14
  store i64 %2603, i64* %3, align 8
  %2604 = inttoptr i64 %2602 to i32*
  store i32 %2598, i32* %2604, align 4
  %2605 = load i64, i64* %3, align 8
  %2606 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %2606, i64* %RCX.i309, align 8
  %2607 = add i64 %2606, 68
  %2608 = add i64 %2605, 11
  store i64 %2608, i64* %3, align 8
  %2609 = inttoptr i64 %2607 to i32*
  %2610 = load i32, i32* %2609, align 4
  %2611 = zext i32 %2610 to i64
  store i64 %2611, i64* %RAX.i278, align 8
  %2612 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2612, i64* %RCX.i309, align 8
  %2613 = add i64 %2612, 72732
  %2614 = add i64 %2605, 25
  store i64 %2614, i64* %3, align 8
  %2615 = inttoptr i64 %2613 to i32*
  %2616 = load i32, i32* %2615, align 4
  %2617 = add i32 %2616, %2610
  %2618 = zext i32 %2617 to i64
  store i64 %2618, i64* %RAX.i278, align 8
  %2619 = icmp ult i32 %2617, %2610
  %2620 = icmp ult i32 %2617, %2616
  %2621 = or i1 %2619, %2620
  %2622 = zext i1 %2621 to i8
  store i8 %2622, i8* %30, align 1
  %2623 = and i32 %2617, 255
  %2624 = tail call i32 @llvm.ctpop.i32(i32 %2623)
  %2625 = trunc i32 %2624 to i8
  %2626 = and i8 %2625, 1
  %2627 = xor i8 %2626, 1
  store i8 %2627, i8* %37, align 1
  %2628 = xor i32 %2616, %2610
  %2629 = xor i32 %2628, %2617
  %2630 = lshr i32 %2629, 4
  %2631 = trunc i32 %2630 to i8
  %2632 = and i8 %2631, 1
  store i8 %2632, i8* %42, align 1
  %2633 = icmp eq i32 %2617, 0
  %2634 = zext i1 %2633 to i8
  store i8 %2634, i8* %45, align 1
  %2635 = lshr i32 %2617, 31
  %2636 = trunc i32 %2635 to i8
  store i8 %2636, i8* %48, align 1
  %2637 = lshr i32 %2610, 31
  %2638 = lshr i32 %2616, 31
  %2639 = xor i32 %2635, %2637
  %2640 = xor i32 %2635, %2638
  %2641 = add nuw nsw i32 %2639, %2640
  %2642 = icmp eq i32 %2641, 2
  %2643 = zext i1 %2642 to i8
  store i8 %2643, i8* %54, align 1
  %2644 = sext i32 %2617 to i64
  %2645 = lshr i64 %2644, 32
  store i64 %2645, i64* %1793, align 8
  %2646 = load i32, i32* %ESI.i1012, align 4
  %2647 = add i64 %2605, 28
  store i64 %2647, i64* %3, align 8
  %2648 = sext i32 %2646 to i64
  %2649 = shl nuw i64 %2645, 32
  %2650 = or i64 %2649, %2618
  %2651 = sdiv i64 %2650, %2648
  %2652 = shl i64 %2651, 32
  %2653 = ashr exact i64 %2652, 32
  %2654 = icmp eq i64 %2651, %2653
  br i1 %2654, label %2657, label %2655

; <label>:2655:                                   ; preds = %routine_idivl__esi.exit707
  %2656 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2647, %struct.Memory* %2600)
  %.pre76 = load i64, i64* %3, align 8
  %.pre77 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %.pre78 = load i32, i32* %EAX.i1727.pre-phi, align 4
  br label %routine_idivl__esi.exit686

; <label>:2657:                                   ; preds = %routine_idivl__esi.exit707
  %2658 = srem i64 %2650, %2648
  %2659 = and i64 %2651, 4294967295
  store i64 %2659, i64* %RAX.i278, align 8
  %2660 = and i64 %2658, 4294967295
  store i64 %2660, i64* %RDX.i1765, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %2661 = trunc i64 %2651 to i32
  br label %routine_idivl__esi.exit686

routine_idivl__esi.exit686:                       ; preds = %2657, %2655
  %2662 = phi i32 [ %.pre78, %2655 ], [ %2661, %2657 ]
  %2663 = phi i64 [ %.pre77, %2655 ], [ %2612, %2657 ]
  %2664 = phi i64 [ %.pre76, %2655 ], [ %2647, %2657 ]
  %2665 = phi %struct.Memory* [ %2656, %2655 ], [ %2600, %2657 ]
  %2666 = add i64 %2663, 72476
  %2667 = add i64 %2664, 14
  store i64 %2667, i64* %3, align 8
  %2668 = inttoptr i64 %2666 to i32*
  store i32 %2662, i32* %2668, align 4
  %2669 = load i64, i64* %3, align 8
  %2670 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2670, i64* %RCX.i309, align 8
  %2671 = add i64 %2670, 72468
  %2672 = add i64 %2669, 14
  store i64 %2672, i64* %3, align 8
  %2673 = inttoptr i64 %2671 to i32*
  %2674 = load i32, i32* %2673, align 4
  %2675 = zext i32 %2674 to i64
  store i64 %2675, i64* %RAX.i278, align 8
  store i64 %2670, i64* %RCX.i309, align 8
  %2676 = add i64 %2670, 72476
  %2677 = add i64 %2669, 29
  store i64 %2677, i64* %3, align 8
  %2678 = inttoptr i64 %2676 to i32*
  %2679 = load i32, i32* %2678, align 4
  %2680 = sext i32 %2674 to i64
  %2681 = sext i32 %2679 to i64
  %2682 = mul nsw i64 %2681, %2680
  %2683 = trunc i64 %2682 to i32
  %2684 = and i64 %2682, 4294967295
  store i64 %2684, i64* %RAX.i278, align 8
  %2685 = shl i64 %2682, 32
  %2686 = ashr exact i64 %2685, 32
  %2687 = icmp ne i64 %2686, %2682
  %2688 = zext i1 %2687 to i8
  store i8 %2688, i8* %30, align 1
  %2689 = and i32 %2683, 255
  %2690 = tail call i32 @llvm.ctpop.i32(i32 %2689)
  %2691 = trunc i32 %2690 to i8
  %2692 = and i8 %2691, 1
  %2693 = xor i8 %2692, 1
  store i8 %2693, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  %2694 = lshr i32 %2683, 31
  %2695 = trunc i32 %2694 to i8
  store i8 %2695, i8* %48, align 1
  store i8 %2688, i8* %54, align 1
  %2696 = add i64 %2670, 72488
  %2697 = trunc i64 %2682 to i32
  %2698 = add i64 %2669, 43
  store i64 %2698, i64* %3, align 8
  %2699 = inttoptr i64 %2696 to i32*
  store i32 %2697, i32* %2699, align 4
  %2700 = load i64, i64* %3, align 8
  %2701 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*), align 8
  store i64 %2701, i64* %RCX.i309, align 8
  %2702 = add i64 %2701, 1148
  %2703 = add i64 %2700, 15
  store i64 %2703, i64* %3, align 8
  %2704 = inttoptr i64 %2702 to i32*
  %2705 = load i32, i32* %2704, align 4
  store i8 0, i8* %30, align 1
  %2706 = and i32 %2705, 255
  %2707 = tail call i32 @llvm.ctpop.i32(i32 %2706)
  %2708 = trunc i32 %2707 to i8
  %2709 = and i8 %2708, 1
  %2710 = xor i8 %2709, 1
  store i8 %2710, i8* %37, align 1
  store i8 0, i8* %42, align 1
  %2711 = icmp eq i32 %2705, 0
  %2712 = zext i1 %2711 to i8
  store i8 %2712, i8* %45, align 1
  %2713 = lshr i32 %2705, 31
  %2714 = trunc i32 %2713 to i8
  store i8 %2714, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %.v130 = select i1 %2711, i64 46, i64 21
  %2715 = add i64 %2700, %.v130
  %2716 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2716, i64* %RAX.i278, align 8
  %2717 = add i64 %2716, 72476
  %2718 = add i64 %2715, 14
  store i64 %2718, i64* %3, align 8
  %2719 = inttoptr i64 %2717 to i32*
  %2720 = load i32, i32* %2719, align 4
  %2721 = zext i32 %2720 to i64
  store i64 %2721, i64* %RCX.i309, align 8
  br i1 %2711, label %block_.L_434103, label %block_4340ea

block_4340ea:                                     ; preds = %routine_idivl__esi.exit686
  %2722 = load i64, i64* %RBP.i, align 8
  %2723 = add i64 %2722, -220
  %2724 = add i64 %2715, 20
  store i64 %2724, i64* %3, align 8
  %2725 = inttoptr i64 %2723 to i32*
  store i32 %2720, i32* %2725, align 4
  %2726 = load i64, i64* %3, align 8
  %2727 = add i64 %2726, 28
  store i64 %2727, i64* %3, align 8
  br label %block_.L_43411a

block_.L_434103:                                  ; preds = %routine_idivl__esi.exit686
  %2728 = lshr i32 %2720, 31
  %2729 = trunc i32 %2728 to i8
  %2730 = trunc i32 %2720 to i8
  %2731 = and i8 %2730, 1
  %2732 = lshr i32 %2720, 1
  %2733 = zext i32 %2732 to i64
  store i64 %2733, i64* %RCX.i309, align 8
  store i8 %2731, i8* %30, align 1
  %2734 = and i32 %2732, 255
  %2735 = tail call i32 @llvm.ctpop.i32(i32 %2734)
  %2736 = trunc i32 %2735 to i8
  %2737 = and i8 %2736, 1
  %2738 = xor i8 %2737, 1
  store i8 %2738, i8* %37, align 1
  store i8 0, i8* %42, align 1
  %2739 = icmp eq i32 %2732, 0
  %2740 = zext i1 %2739 to i8
  store i8 %2740, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 %2729, i8* %54, align 1
  %2741 = load i64, i64* %RBP.i, align 8
  %2742 = add i64 %2741, -220
  %2743 = add i64 %2715, 22
  store i64 %2743, i64* %3, align 8
  %2744 = inttoptr i64 %2742 to i32*
  store i32 %2732, i32* %2744, align 4
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_43411a

block_.L_43411a:                                  ; preds = %block_.L_434103, %block_4340ea
  %2745 = phi i64 [ %.pre79, %block_.L_434103 ], [ %2727, %block_4340ea ]
  %2746 = load i64, i64* %RBP.i, align 8
  %2747 = add i64 %2746, -220
  %2748 = add i64 %2745, 6
  store i64 %2748, i64* %3, align 8
  %2749 = inttoptr i64 %2747 to i32*
  %2750 = load i32, i32* %2749, align 4
  %2751 = zext i32 %2750 to i64
  store i64 %2751, i64* %RAX.i278, align 8
  store i64 632, i64* %RCX.i309, align 8
  store i64 632, i64* %RSI.i1722, align 8
  %2752 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2753 = add i64 %2752, 72472
  %2754 = add i64 %2745, 27
  store i64 %2754, i64* %3, align 8
  %2755 = inttoptr i64 %2753 to i32*
  store i32 %2750, i32* %2755, align 4
  %2756 = load i64, i64* %3, align 8
  %2757 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2757, i64* %RDX.i1765, align 8
  %2758 = add i64 %2757, 72488
  %2759 = add i64 %2756, 14
  store i64 %2759, i64* %3, align 8
  %2760 = inttoptr i64 %2758 to i32*
  %2761 = load i32, i32* %2760, align 4
  %2762 = zext i32 %2761 to i64
  store i64 %2762, i64* %RAX.i278, align 8
  store i64 %2762, i64* %RDI.i1400, align 8
  %2763 = add i64 %2756, -208981
  %2764 = add i64 %2756, 21
  %2765 = load i64, i64* %6, align 8
  %2766 = add i64 %2765, -8
  %2767 = inttoptr i64 %2766 to i64*
  store i64 %2764, i64* %2767, align 8
  store i64 %2766, i64* %6, align 8
  store i64 %2763, i64* %3, align 8
  %2768 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %2665)
  %2769 = load i64, i64* %3, align 8
  %2770 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2770, i64* %RDX.i1765, align 8
  %2771 = add i64 %2770, 14168
  %2772 = load i64, i64* %RAX.i278, align 8
  %2773 = add i64 %2769, 15
  store i64 %2773, i64* %3, align 8
  %2774 = inttoptr i64 %2771 to i64*
  store i64 %2772, i64* %2774, align 8
  %2775 = load i64, i64* %RAX.i278, align 8
  %2776 = load i64, i64* %3, align 8
  store i8 0, i8* %30, align 1
  %2777 = trunc i64 %2775 to i32
  %2778 = and i32 %2777, 255
  %2779 = tail call i32 @llvm.ctpop.i32(i32 %2778)
  %2780 = trunc i32 %2779 to i8
  %2781 = and i8 %2780, 1
  %2782 = xor i8 %2781, 1
  store i8 %2782, i8* %37, align 1
  store i8 0, i8* %42, align 1
  %2783 = icmp eq i64 %2775, 0
  %2784 = zext i1 %2783 to i8
  store i8 %2784, i8* %45, align 1
  %2785 = lshr i64 %2775, 63
  %2786 = trunc i64 %2785 to i8
  store i8 %2786, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %.v131 = select i1 %2783, i64 10, i64 25
  %2787 = add i64 %2776, %.v131
  store i64 %2787, i64* %3, align 8
  br i1 %2783, label %block_434163, label %block_.L_434172

block_434163:                                     ; preds = %block_.L_43411a
  store i64 ptrtoint (%G__0x4c1705_type* @G__0x4c1705 to i64), i64* %RDI.i1400, align 8
  %2788 = add i64 %2787, 152205
  %2789 = add i64 %2787, 15
  %2790 = load i64, i64* %6, align 8
  %2791 = add i64 %2790, -8
  %2792 = inttoptr i64 %2791 to i64*
  store i64 %2789, i64* %2792, align 8
  store i64 %2791, i64* %6, align 8
  store i64 %2788, i64* %3, align 8
  %call2_43416d = tail call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* nonnull %0, i64 %2788, %struct.Memory* %2768)
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_434172

block_.L_434172:                                  ; preds = %block_.L_43411a, %block_434163
  %2793 = phi i64 [ %2787, %block_.L_43411a ], [ %.pre80, %block_434163 ]
  %MEMORY.15 = phi %struct.Memory* [ %2768, %block_.L_43411a ], [ %call2_43416d, %block_434163 ]
  %2794 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %2794, i64* %RAX.i278, align 8
  %2795 = add i64 %2794, 216
  %2796 = add i64 %2793, 15
  store i64 %2796, i64* %3, align 8
  %2797 = inttoptr i64 %2795 to i32*
  %2798 = load i32, i32* %2797, align 4
  store i8 0, i8* %30, align 1
  %2799 = and i32 %2798, 255
  %2800 = tail call i32 @llvm.ctpop.i32(i32 %2799)
  %2801 = trunc i32 %2800 to i8
  %2802 = and i8 %2801, 1
  %2803 = xor i8 %2802, 1
  store i8 %2803, i8* %37, align 1
  store i8 0, i8* %42, align 1
  %2804 = icmp eq i32 %2798, 0
  %2805 = zext i1 %2804 to i8
  store i8 %2805, i8* %45, align 1
  %2806 = lshr i32 %2798, 31
  %2807 = trunc i32 %2806 to i8
  store i8 %2807, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %.v132 = select i1 %2804, i64 94, i64 21
  %2808 = add i64 %2793, %.v132
  store i64 %2808, i64* %3, align 8
  br i1 %2804, label %block_.L_4341d0, label %block_434187

block_434187:                                     ; preds = %block_.L_434172
  store i64 4, i64* %RAX.i278, align 8
  store i64 4, i64* %RSI.i1722, align 8
  %2809 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2809, i64* %RCX.i309, align 8
  %2810 = add i64 %2809, 72488
  %2811 = add i64 %2808, 21
  store i64 %2811, i64* %3, align 8
  %2812 = inttoptr i64 %2810 to i32*
  %2813 = load i32, i32* %2812, align 4
  %2814 = zext i32 %2813 to i64
  store i64 %2814, i64* %RAX.i278, align 8
  store i64 %2814, i64* %RDI.i1400, align 8
  %2815 = add i64 %2808, -209063
  %2816 = add i64 %2808, 28
  %2817 = load i64, i64* %6, align 8
  %2818 = add i64 %2817, -8
  %2819 = inttoptr i64 %2818 to i64*
  store i64 %2816, i64* %2819, align 8
  store i64 %2818, i64* %6, align 8
  store i64 %2815, i64* %3, align 8
  %2820 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64)* @calloc to i64), %struct.Memory* %MEMORY.15)
  %2821 = load i64, i64* %3, align 8
  %2822 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2822, i64* %RCX.i309, align 8
  %2823 = add i64 %2822, 71784
  %2824 = load i64, i64* %RAX.i278, align 8
  %2825 = add i64 %2821, 15
  store i64 %2825, i64* %3, align 8
  %2826 = inttoptr i64 %2823 to i64*
  store i64 %2824, i64* %2826, align 8
  %2827 = load i64, i64* %RAX.i278, align 8
  %2828 = load i64, i64* %3, align 8
  store i8 0, i8* %30, align 1
  %2829 = trunc i64 %2827 to i32
  %2830 = and i32 %2829, 255
  %2831 = tail call i32 @llvm.ctpop.i32(i32 %2830)
  %2832 = trunc i32 %2831 to i8
  %2833 = and i8 %2832, 1
  %2834 = xor i8 %2833, 1
  store i8 %2834, i8* %37, align 1
  store i8 0, i8* %42, align 1
  %2835 = icmp eq i64 %2827, 0
  %2836 = zext i1 %2835 to i8
  store i8 %2836, i8* %45, align 1
  %2837 = lshr i64 %2827, 63
  %2838 = trunc i64 %2837 to i8
  store i8 %2838, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %.v133 = select i1 %2835, i64 10, i64 25
  %2839 = add i64 %2828, %.v133
  store i64 %2839, i64* %3, align 8
  br i1 %2835, label %block_4341bc, label %block_.L_4341cb

block_4341bc:                                     ; preds = %block_434187
  store i64 ptrtoint (%G__0x4c171c_type* @G__0x4c171c to i64), i64* %RDI.i1400, align 8
  %2840 = add i64 %2839, 152116
  %2841 = add i64 %2839, 15
  %2842 = load i64, i64* %6, align 8
  %2843 = add i64 %2842, -8
  %2844 = inttoptr i64 %2843 to i64*
  store i64 %2841, i64* %2844, align 8
  store i64 %2843, i64* %6, align 8
  store i64 %2840, i64* %3, align 8
  %call2_4341c6 = tail call %struct.Memory* @sub_4593f0.no_mem_exit(%struct.State* nonnull %0, i64 %2840, %struct.Memory* %2820)
  %.pre81 = load i64, i64* %3, align 8
  br label %block_.L_4341cb

block_.L_4341cb:                                  ; preds = %block_434187, %block_4341bc
  %2845 = phi i64 [ %2839, %block_434187 ], [ %.pre81, %block_4341bc ]
  %MEMORY.16 = phi %struct.Memory* [ %2820, %block_434187 ], [ %call2_4341c6, %block_4341bc ]
  %2846 = add i64 %2845, 5
  store i64 %2846, i64* %3, align 8
  br label %block_.L_4341d0

block_.L_4341d0:                                  ; preds = %block_.L_4341cb, %block_.L_434172
  %2847 = phi i64 [ %2808, %block_.L_434172 ], [ %2846, %block_.L_4341cb ]
  %MEMORY.17 = phi %struct.Memory* [ %MEMORY.15, %block_.L_434172 ], [ %MEMORY.16, %block_.L_4341cb ]
  store i64 4, i64* %RAX.i278, align 8
  %2848 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2849 = add i64 %2848, 104
  store i64 %2849, i64* %RCX.i309, align 8
  %2850 = icmp ugt i64 %2848, -105
  %2851 = zext i1 %2850 to i8
  store i8 %2851, i8* %30, align 1
  %2852 = trunc i64 %2849 to i32
  %2853 = and i32 %2852, 255
  %2854 = tail call i32 @llvm.ctpop.i32(i32 %2853)
  %2855 = trunc i32 %2854 to i8
  %2856 = and i8 %2855, 1
  %2857 = xor i8 %2856, 1
  store i8 %2857, i8* %37, align 1
  %2858 = xor i64 %2849, %2848
  %2859 = lshr i64 %2858, 4
  %2860 = trunc i64 %2859 to i8
  %2861 = and i8 %2860, 1
  store i8 %2861, i8* %42, align 1
  %2862 = icmp eq i64 %2849, 0
  %2863 = zext i1 %2862 to i8
  store i8 %2863, i8* %45, align 1
  %2864 = lshr i64 %2849, 63
  %2865 = trunc i64 %2864 to i8
  store i8 %2865, i8* %48, align 1
  %2866 = lshr i64 %2848, 63
  %2867 = xor i64 %2864, %2866
  %2868 = add nuw nsw i64 %2867, %2864
  %2869 = icmp eq i64 %2868, 2
  %2870 = zext i1 %2869 to i8
  store i8 %2870, i8* %54, align 1
  store i64 %2848, i64* %RDX.i1765, align 8
  %2871 = add i64 %2848, 52
  %2872 = add i64 %2847, 28
  store i64 %2872, i64* %3, align 8
  %2873 = inttoptr i64 %2871 to i32*
  %2874 = load i32, i32* %2873, align 4
  %2875 = zext i32 %2874 to i64
  store i64 %2875, i64* %RSI.i1722, align 8
  %2876 = load i64, i64* %RBP.i, align 8
  %2877 = add i64 %2876, -224
  %2878 = add i64 %2847, 34
  store i64 %2878, i64* %3, align 8
  %2879 = inttoptr i64 %2877 to i32*
  store i32 4, i32* %2879, align 4
  %2880 = load i32, i32* %ESI.i1012, align 4
  %2881 = zext i32 %2880 to i64
  %2882 = load i64, i64* %3, align 8
  store i64 %2881, i64* %RAX.i278, align 8
  %2883 = sext i32 %2880 to i64
  %2884 = lshr i64 %2883, 32
  store i64 %2884, i64* %1793, align 8
  %2885 = load i64, i64* %RBP.i, align 8
  %2886 = add i64 %2885, -224
  %2887 = add i64 %2882, 9
  store i64 %2887, i64* %3, align 8
  %2888 = inttoptr i64 %2886 to i32*
  %2889 = load i32, i32* %2888, align 4
  %2890 = zext i32 %2889 to i64
  store i64 %2890, i64* %RSI.i1722, align 8
  %2891 = add i64 %2882, 11
  store i64 %2891, i64* %3, align 8
  %2892 = sext i32 %2889 to i64
  %2893 = shl nuw i64 %2884, 32
  %2894 = or i64 %2893, %2881
  %2895 = sdiv i64 %2894, %2892
  %2896 = shl i64 %2895, 32
  %2897 = ashr exact i64 %2896, 32
  %2898 = icmp eq i64 %2895, %2897
  br i1 %2898, label %2901, label %2899

; <label>:2899:                                   ; preds = %block_.L_4341d0
  %2900 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2891, %struct.Memory* %MEMORY.17)
  %.pre82 = load i64, i64* %3, align 8
  %.pre83 = load i64, i64* %RBP.i, align 8
  %.pre84 = load i32, i32* %EAX.i1727.pre-phi, align 4
  br label %routine_idivl__esi.exit548

; <label>:2901:                                   ; preds = %block_.L_4341d0
  %2902 = srem i64 %2894, %2892
  %2903 = and i64 %2895, 4294967295
  store i64 %2903, i64* %RAX.i278, align 8
  %2904 = and i64 %2902, 4294967295
  store i64 %2904, i64* %RDX.i1765, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %2905 = trunc i64 %2895 to i32
  br label %routine_idivl__esi.exit548

routine_idivl__esi.exit548:                       ; preds = %2901, %2899
  %2906 = phi i32 [ %.pre84, %2899 ], [ %2905, %2901 ]
  %2907 = phi i64 [ %.pre83, %2899 ], [ %2885, %2901 ]
  %2908 = phi i64 [ %.pre82, %2899 ], [ %2891, %2901 ]
  %2909 = phi %struct.Memory* [ %2900, %2899 ], [ %MEMORY.17, %2901 ]
  %2910 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %2910, i64* %RDI.i1400, align 8
  %R8D.i542 = bitcast %union.anon* %1825 to i32*
  %2911 = add i64 %2910, 60
  %2912 = add i64 %2908, 12
  store i64 %2912, i64* %3, align 8
  %2913 = inttoptr i64 %2911 to i32*
  %2914 = load i32, i32* %2913, align 4
  %2915 = zext i32 %2914 to i64
  store i64 %2915, i64* %R8.i1045, align 8
  %2916 = add i64 %2907, -228
  %2917 = add i64 %2908, 18
  store i64 %2917, i64* %3, align 8
  %2918 = inttoptr i64 %2916 to i32*
  store i32 %2906, i32* %2918, align 4
  %2919 = load i32, i32* %R8D.i542, align 4
  %2920 = zext i32 %2919 to i64
  %2921 = load i64, i64* %3, align 8
  store i64 %2920, i64* %RAX.i278, align 8
  %2922 = sext i32 %2919 to i64
  %2923 = lshr i64 %2922, 32
  store i64 %2923, i64* %1793, align 8
  %2924 = load i32, i32* %ESI.i1012, align 4
  %2925 = add i64 %2921, 6
  store i64 %2925, i64* %3, align 8
  %2926 = sext i32 %2924 to i64
  %2927 = shl nuw i64 %2923, 32
  %2928 = or i64 %2927, %2920
  %2929 = sdiv i64 %2928, %2926
  %2930 = shl i64 %2929, 32
  %2931 = ashr exact i64 %2930, 32
  %2932 = icmp eq i64 %2929, %2931
  br i1 %2932, label %2935, label %2933

; <label>:2933:                                   ; preds = %routine_idivl__esi.exit548
  %2934 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2925, %struct.Memory* %2909)
  %.pre85 = load i64, i64* %3, align 8
  %.pre86 = load i32, i32* %EAX.i1727.pre-phi, align 4
  br label %routine_idivl__esi.exit530

; <label>:2935:                                   ; preds = %routine_idivl__esi.exit548
  %2936 = srem i64 %2928, %2926
  %2937 = and i64 %2929, 4294967295
  store i64 %2937, i64* %RAX.i278, align 8
  %2938 = and i64 %2936, 4294967295
  store i64 %2938, i64* %RDX.i1765, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %2939 = trunc i64 %2929 to i32
  br label %routine_idivl__esi.exit530

routine_idivl__esi.exit530:                       ; preds = %2935, %2933
  %2940 = phi i32 [ %.pre86, %2933 ], [ %2939, %2935 ]
  %2941 = phi i64 [ %.pre85, %2933 ], [ %2925, %2935 ]
  %2942 = phi %struct.Memory* [ %2934, %2933 ], [ %2909, %2935 ]
  %2943 = load i64, i64* %RCX.i309, align 8
  store i64 %2943, i64* %RDI.i1400, align 8
  %2944 = load i64, i64* %RBP.i, align 8
  %2945 = add i64 %2944, -228
  %2946 = add i64 %2941, 9
  store i64 %2946, i64* %3, align 8
  %2947 = inttoptr i64 %2945 to i32*
  %2948 = load i32, i32* %2947, align 4
  %2949 = zext i32 %2948 to i64
  store i64 %2949, i64* %RSI.i1722, align 8
  %2950 = zext i32 %2940 to i64
  store i64 %2950, i64* %RDX.i1765, align 8
  %2951 = add i64 %2941, 153067
  %2952 = add i64 %2941, 16
  %2953 = load i64, i64* %6, align 8
  %2954 = add i64 %2953, -8
  %2955 = inttoptr i64 %2954 to i64*
  store i64 %2952, i64* %2955, align 8
  store i64 %2954, i64* %6, align 8
  store i64 %2951, i64* %3, align 8
  %call2_434220 = tail call %struct.Memory* @sub_459800.get_mem2Dint(%struct.State* nonnull %0, i64 %2951, %struct.Memory* %2942)
  %2956 = load i64, i64* %3, align 8
  store i64 4, i64* %RDX.i1765, align 8
  %2957 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %2958 = add i64 %2957, 112
  store i64 %2958, i64* %RCX.i309, align 8
  %2959 = icmp ugt i64 %2957, -113
  %2960 = zext i1 %2959 to i8
  store i8 %2960, i8* %30, align 1
  %2961 = trunc i64 %2958 to i32
  %2962 = and i32 %2961, 255
  %2963 = tail call i32 @llvm.ctpop.i32(i32 %2962)
  %2964 = trunc i32 %2963 to i8
  %2965 = and i8 %2964, 1
  %2966 = xor i8 %2965, 1
  store i8 %2966, i8* %37, align 1
  %2967 = xor i64 %2957, 16
  %2968 = xor i64 %2967, %2958
  %2969 = lshr i64 %2968, 4
  %2970 = trunc i64 %2969 to i8
  %2971 = and i8 %2970, 1
  store i8 %2971, i8* %42, align 1
  %2972 = icmp eq i64 %2958, 0
  %2973 = zext i1 %2972 to i8
  store i8 %2973, i8* %45, align 1
  %2974 = lshr i64 %2958, 63
  %2975 = trunc i64 %2974 to i8
  store i8 %2975, i8* %48, align 1
  %2976 = lshr i64 %2957, 63
  %2977 = xor i64 %2974, %2976
  %2978 = add nuw nsw i64 %2977, %2974
  %2979 = icmp eq i64 %2978, 2
  %2980 = zext i1 %2979 to i8
  store i8 %2980, i8* %54, align 1
  store i64 %2957, i64* %RDI.i1400, align 8
  %2981 = add i64 %2957, 52
  %2982 = add i64 %2956, 28
  store i64 %2982, i64* %3, align 8
  %2983 = inttoptr i64 %2981 to i32*
  %2984 = load i32, i32* %2983, align 4
  %2985 = zext i32 %2984 to i64
  store i64 %2985, i64* %RSI.i1722, align 8
  %2986 = load i64, i64* %RBP.i, align 8
  %2987 = add i64 %2986, -232
  %2988 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %2989 = add i64 %2956, 34
  store i64 %2989, i64* %3, align 8
  %2990 = inttoptr i64 %2987 to i32*
  store i32 %2988, i32* %2990, align 4
  %2991 = load i32, i32* %ESI.i1012, align 4
  %2992 = zext i32 %2991 to i64
  %2993 = load i64, i64* %3, align 8
  store i64 %2992, i64* %RAX.i278, align 8
  %2994 = load i64, i64* %RBP.i, align 8
  %2995 = add i64 %2994, -236
  %2996 = load i32, i32* %EDX.i1759, align 4
  %2997 = add i64 %2993, 8
  store i64 %2997, i64* %3, align 8
  %2998 = inttoptr i64 %2995 to i32*
  store i32 %2996, i32* %2998, align 4
  %2999 = load i64, i64* %3, align 8
  %3000 = load i32, i32* %EAX.i1727.pre-phi, align 8
  %3001 = sext i32 %3000 to i64
  %3002 = lshr i64 %3001, 32
  store i64 %3002, i64* %1793, align 8
  %3003 = load i64, i64* %RBP.i, align 8
  %3004 = add i64 %3003, -236
  %3005 = add i64 %2999, 7
  store i64 %3005, i64* %3, align 8
  %3006 = inttoptr i64 %3004 to i32*
  %3007 = load i32, i32* %3006, align 4
  %3008 = zext i32 %3007 to i64
  store i64 %3008, i64* %RSI.i1722, align 8
  %3009 = add i64 %2999, 9
  store i64 %3009, i64* %3, align 8
  %3010 = zext i32 %3000 to i64
  %3011 = sext i32 %3007 to i64
  %3012 = shl nuw i64 %3002, 32
  %3013 = or i64 %3012, %3010
  %3014 = sdiv i64 %3013, %3011
  %3015 = shl i64 %3014, 32
  %3016 = ashr exact i64 %3015, 32
  %3017 = icmp eq i64 %3014, %3016
  br i1 %3017, label %3020, label %3018

; <label>:3018:                                   ; preds = %routine_idivl__esi.exit530
  %3019 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3009, %struct.Memory* %call2_434220)
  %.pre87 = load i64, i64* %3, align 8
  %.pre88 = load i64, i64* %RBP.i, align 8
  %.pre89 = load i32, i32* %EAX.i1727.pre-phi, align 4
  br label %routine_idivl__esi.exit491

; <label>:3020:                                   ; preds = %routine_idivl__esi.exit530
  %3021 = srem i64 %3013, %3011
  %3022 = and i64 %3014, 4294967295
  store i64 %3022, i64* %RAX.i278, align 8
  %3023 = and i64 %3021, 4294967295
  store i64 %3023, i64* %RDX.i1765, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %3024 = trunc i64 %3014 to i32
  br label %routine_idivl__esi.exit491

routine_idivl__esi.exit491:                       ; preds = %3020, %3018
  %3025 = phi i32 [ %.pre89, %3018 ], [ %3024, %3020 ]
  %3026 = phi i64 [ %.pre88, %3018 ], [ %3003, %3020 ]
  %3027 = phi i64 [ %.pre87, %3018 ], [ %3009, %3020 ]
  %3028 = phi %struct.Memory* [ %3019, %3018 ], [ %call2_434220, %3020 ]
  %3029 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3029, i64* %RDI.i1400, align 8
  %3030 = add i64 %3029, 60
  %3031 = add i64 %3027, 12
  store i64 %3031, i64* %3, align 8
  %3032 = inttoptr i64 %3030 to i32*
  %3033 = load i32, i32* %3032, align 4
  %3034 = zext i32 %3033 to i64
  store i64 %3034, i64* %R8.i1045, align 8
  %3035 = add i64 %3026, -240
  %3036 = add i64 %3027, 18
  store i64 %3036, i64* %3, align 8
  %3037 = inttoptr i64 %3035 to i32*
  store i32 %3025, i32* %3037, align 4
  %3038 = load i32, i32* %R8D.i542, align 4
  %3039 = zext i32 %3038 to i64
  %3040 = load i64, i64* %3, align 8
  store i64 %3039, i64* %RAX.i278, align 8
  %3041 = sext i32 %3038 to i64
  %3042 = lshr i64 %3041, 32
  store i64 %3042, i64* %1793, align 8
  %3043 = load i32, i32* %ESI.i1012, align 4
  %3044 = add i64 %3040, 6
  store i64 %3044, i64* %3, align 8
  %3045 = sext i32 %3043 to i64
  %3046 = shl nuw i64 %3042, 32
  %3047 = or i64 %3046, %3039
  %3048 = sdiv i64 %3047, %3045
  %3049 = shl i64 %3048, 32
  %3050 = ashr exact i64 %3049, 32
  %3051 = icmp eq i64 %3048, %3050
  br i1 %3051, label %3054, label %3052

; <label>:3052:                                   ; preds = %routine_idivl__esi.exit491
  %3053 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3044, %struct.Memory* %3028)
  %.pre90 = load i64, i64* %3, align 8
  %.pre91 = load i32, i32* %EAX.i1727.pre-phi, align 4
  br label %routine_idivl__esi.exit473

; <label>:3054:                                   ; preds = %routine_idivl__esi.exit491
  %3055 = srem i64 %3047, %3045
  %3056 = and i64 %3048, 4294967295
  store i64 %3056, i64* %RAX.i278, align 8
  %3057 = and i64 %3055, 4294967295
  store i64 %3057, i64* %RDX.i1765, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %3058 = trunc i64 %3048 to i32
  br label %routine_idivl__esi.exit473

routine_idivl__esi.exit473:                       ; preds = %3054, %3052
  %3059 = phi i32 [ %.pre91, %3052 ], [ %3058, %3054 ]
  %3060 = phi i64 [ %.pre90, %3052 ], [ %3044, %3054 ]
  %3061 = phi %struct.Memory* [ %3053, %3052 ], [ %3028, %3054 ]
  %3062 = load i64, i64* %RCX.i309, align 8
  store i64 %3062, i64* %RDI.i1400, align 8
  %3063 = load i64, i64* %RBP.i, align 8
  %3064 = add i64 %3063, -240
  %3065 = add i64 %3060, 9
  store i64 %3065, i64* %3, align 8
  %3066 = inttoptr i64 %3064 to i32*
  %3067 = load i32, i32* %3066, align 4
  %3068 = zext i32 %3067 to i64
  store i64 %3068, i64* %RSI.i1722, align 8
  %3069 = zext i32 %3059 to i64
  store i64 %3069, i64* %RDX.i1765, align 8
  %3070 = add i64 %3060, 152976
  %3071 = add i64 %3060, 16
  %3072 = load i64, i64* %6, align 8
  %3073 = add i64 %3072, -8
  %3074 = inttoptr i64 %3073 to i64*
  store i64 %3071, i64* %3074, align 8
  store i64 %3073, i64* %6, align 8
  store i64 %3070, i64* %3, align 8
  %call2_43427b = tail call %struct.Memory* @sub_459800.get_mem2Dint(%struct.State* nonnull %0, i64 %3070, %struct.Memory* %3061)
  %3075 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3136), i64* %RCX.i309, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3136), i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3136), i64 3136)) to i8), i8* %30, align 1
  %3076 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3136) to i32), i32 255))
  %3077 = trunc i32 %3076 to i8
  %3078 = and i8 %3077, 1
  %3079 = xor i8 %3078, 1
  store i8 %3079, i8* %37, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3136), i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3136)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3136), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3136), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3136), i64 63), i64 lshr (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64 3136), i64 63)), i64 2) to i8), i8* %54, align 1
  store i64 4, i64* %RDX.i1765, align 8
  %3080 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3080, i64* %RDI.i1400, align 8
  %3081 = add i64 %3080, 52
  %3082 = add i64 %3075, 33
  store i64 %3082, i64* %3, align 8
  %3083 = inttoptr i64 %3081 to i32*
  %3084 = load i32, i32* %3083, align 4
  %3085 = zext i32 %3084 to i64
  store i64 %3085, i64* %RSI.i1722, align 8
  %3086 = load i64, i64* %RBP.i, align 8
  %3087 = add i64 %3086, -244
  %3088 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %3089 = add i64 %3075, 39
  store i64 %3089, i64* %3, align 8
  %3090 = inttoptr i64 %3087 to i32*
  store i32 %3088, i32* %3090, align 4
  %3091 = load i32, i32* %ESI.i1012, align 4
  %3092 = zext i32 %3091 to i64
  %3093 = load i64, i64* %3, align 8
  store i64 %3092, i64* %RAX.i278, align 8
  %3094 = load i64, i64* %RBP.i, align 8
  %3095 = add i64 %3094, -248
  %3096 = load i32, i32* %EDX.i1759, align 4
  %3097 = add i64 %3093, 8
  store i64 %3097, i64* %3, align 8
  %3098 = inttoptr i64 %3095 to i32*
  store i32 %3096, i32* %3098, align 4
  %3099 = load i64, i64* %3, align 8
  %3100 = load i32, i32* %EAX.i1727.pre-phi, align 8
  %3101 = sext i32 %3100 to i64
  %3102 = lshr i64 %3101, 32
  store i64 %3102, i64* %1793, align 8
  %3103 = load i64, i64* %RBP.i, align 8
  %3104 = add i64 %3103, -248
  %3105 = add i64 %3099, 7
  store i64 %3105, i64* %3, align 8
  %3106 = inttoptr i64 %3104 to i32*
  %3107 = load i32, i32* %3106, align 4
  %3108 = zext i32 %3107 to i64
  store i64 %3108, i64* %RSI.i1722, align 8
  %3109 = add i64 %3099, 9
  store i64 %3109, i64* %3, align 8
  %3110 = zext i32 %3100 to i64
  %3111 = sext i32 %3107 to i64
  %3112 = shl nuw i64 %3102, 32
  %3113 = or i64 %3112, %3110
  %3114 = sdiv i64 %3113, %3111
  %3115 = shl i64 %3114, 32
  %3116 = ashr exact i64 %3115, 32
  %3117 = icmp eq i64 %3114, %3116
  br i1 %3117, label %3120, label %3118

; <label>:3118:                                   ; preds = %routine_idivl__esi.exit473
  %3119 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3109, %struct.Memory* %call2_43427b)
  %.pre92 = load i64, i64* %3, align 8
  %.pre93 = load i64, i64* %RBP.i, align 8
  %.pre94 = load i32, i32* %EAX.i1727.pre-phi, align 4
  br label %routine_idivl__esi.exit434

; <label>:3120:                                   ; preds = %routine_idivl__esi.exit473
  %3121 = srem i64 %3113, %3111
  %3122 = and i64 %3114, 4294967295
  store i64 %3122, i64* %RAX.i278, align 8
  %3123 = and i64 %3121, 4294967295
  store i64 %3123, i64* %RDX.i1765, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %3124 = trunc i64 %3114 to i32
  br label %routine_idivl__esi.exit434

routine_idivl__esi.exit434:                       ; preds = %3120, %3118
  %3125 = phi i32 [ %.pre94, %3118 ], [ %3124, %3120 ]
  %3126 = phi i64 [ %.pre93, %3118 ], [ %3103, %3120 ]
  %3127 = phi i64 [ %.pre92, %3118 ], [ %3109, %3120 ]
  %3128 = phi %struct.Memory* [ %3119, %3118 ], [ %call2_43427b, %3120 ]
  %3129 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3129, i64* %RDI.i1400, align 8
  %3130 = add i64 %3129, 60
  %3131 = add i64 %3127, 12
  store i64 %3131, i64* %3, align 8
  %3132 = inttoptr i64 %3130 to i32*
  %3133 = load i32, i32* %3132, align 4
  %3134 = zext i32 %3133 to i64
  store i64 %3134, i64* %R8.i1045, align 8
  %3135 = add i64 %3126, -252
  %3136 = add i64 %3127, 18
  store i64 %3136, i64* %3, align 8
  %3137 = inttoptr i64 %3135 to i32*
  store i32 %3125, i32* %3137, align 4
  %3138 = load i32, i32* %R8D.i542, align 4
  %3139 = zext i32 %3138 to i64
  %3140 = load i64, i64* %3, align 8
  store i64 %3139, i64* %RAX.i278, align 8
  %3141 = sext i32 %3138 to i64
  %3142 = lshr i64 %3141, 32
  store i64 %3142, i64* %1793, align 8
  %3143 = load i32, i32* %ESI.i1012, align 4
  %3144 = add i64 %3140, 6
  store i64 %3144, i64* %3, align 8
  %3145 = sext i32 %3143 to i64
  %3146 = shl nuw i64 %3142, 32
  %3147 = or i64 %3146, %3139
  %3148 = sdiv i64 %3147, %3145
  %3149 = shl i64 %3148, 32
  %3150 = ashr exact i64 %3149, 32
  %3151 = icmp eq i64 %3148, %3150
  br i1 %3151, label %3154, label %3152

; <label>:3152:                                   ; preds = %routine_idivl__esi.exit434
  %3153 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3144, %struct.Memory* %3128)
  %.pre95 = load i64, i64* %3, align 8
  %.pre96 = load i32, i32* %EAX.i1727.pre-phi, align 4
  br label %routine_idivl__esi.exit416

; <label>:3154:                                   ; preds = %routine_idivl__esi.exit434
  %3155 = srem i64 %3147, %3145
  %3156 = and i64 %3148, 4294967295
  store i64 %3156, i64* %RAX.i278, align 8
  %3157 = and i64 %3155, 4294967295
  store i64 %3157, i64* %RDX.i1765, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %3158 = trunc i64 %3148 to i32
  br label %routine_idivl__esi.exit416

routine_idivl__esi.exit416:                       ; preds = %3154, %3152
  %3159 = phi i32 [ %.pre96, %3152 ], [ %3158, %3154 ]
  %3160 = phi i64 [ %.pre95, %3152 ], [ %3144, %3154 ]
  %3161 = phi %struct.Memory* [ %3153, %3152 ], [ %3128, %3154 ]
  %3162 = load i64, i64* %RCX.i309, align 8
  store i64 %3162, i64* %RDI.i1400, align 8
  %3163 = load i64, i64* %RBP.i, align 8
  %3164 = add i64 %3163, -252
  %3165 = add i64 %3160, 9
  store i64 %3165, i64* %3, align 8
  %3166 = inttoptr i64 %3164 to i32*
  %3167 = load i32, i32* %3166, align 4
  %3168 = zext i32 %3167 to i64
  store i64 %3168, i64* %RSI.i1722, align 8
  %3169 = zext i32 %3159 to i64
  store i64 %3169, i64* %RDX.i1765, align 8
  %3170 = add i64 %3160, 152880
  %3171 = add i64 %3160, 16
  %3172 = load i64, i64* %6, align 8
  %3173 = add i64 %3172, -8
  %3174 = inttoptr i64 %3173 to i64*
  store i64 %3171, i64* %3174, align 8
  store i64 %3173, i64* %6, align 8
  store i64 %3170, i64* %3, align 8
  %call2_4342db = tail call %struct.Memory* @sub_459800.get_mem2Dint(%struct.State* nonnull %0, i64 %3170, %struct.Memory* %3161)
  %3175 = load i64, i64* %3, align 8
  %3176 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %3176, i64* %RCX.i309, align 8
  %3177 = add i64 %3176, 2884
  %3178 = add i64 %3175, 15
  store i64 %3178, i64* %3, align 8
  %3179 = inttoptr i64 %3177 to i32*
  %3180 = load i32, i32* %3179, align 4
  store i8 0, i8* %30, align 1
  %3181 = and i32 %3180, 255
  %3182 = tail call i32 @llvm.ctpop.i32(i32 %3181)
  %3183 = trunc i32 %3182 to i8
  %3184 = and i8 %3183, 1
  %3185 = xor i8 %3184, 1
  store i8 %3185, i8* %37, align 1
  store i8 0, i8* %42, align 1
  %3186 = icmp eq i32 %3180, 0
  %3187 = zext i1 %3186 to i8
  store i8 %3187, i8* %45, align 1
  %3188 = lshr i32 %3180, 31
  %3189 = trunc i32 %3188 to i8
  store i8 %3189, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %3190 = load i64, i64* %RBP.i, align 8
  %3191 = add i64 %3190, -256
  %3192 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %3193 = add i64 %3175, 21
  store i64 %3193, i64* %3, align 8
  %3194 = inttoptr i64 %3191 to i32*
  store i32 %3192, i32* %3194, align 4
  %3195 = load i64, i64* %3, align 8
  %3196 = load i8, i8* %45, align 1
  %3197 = icmp ne i8 %3196, 0
  %.v148 = select i1 %3197, i64 260, i64 6
  %3198 = add i64 %3195, %.v148
  store i64 %3198, i64* %3, align 8
  %cmpBr_4342f5 = icmp eq i8 %3196, 1
  br i1 %cmpBr_4342f5, label %block_.L_4343f9, label %block_4342fb

block_4342fb:                                     ; preds = %routine_idivl__esi.exit416
  store i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3136), i64* %RAX.i278, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3136), i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3136), i64 3136)) to i8), i8* %30, align 1
  %3199 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3136) to i32), i32 255))
  %3200 = trunc i32 %3199 to i8
  %3201 = and i8 %3200, 1
  %3202 = xor i8 %3201, 1
  store i8 %3202, i8* %37, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3136), i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3136)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3136), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3136), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3136), i64 63), i64 lshr (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3136), i64 63)), i64 2) to i8), i8* %54, align 1
  store i64 4, i64* %RCX.i309, align 8
  %3203 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3203, i64* %RDX.i1765, align 8
  %3204 = add i64 %3203, 52
  %3205 = add i64 %3198, 32
  store i64 %3205, i64* %3, align 8
  %3206 = inttoptr i64 %3204 to i32*
  %3207 = load i32, i32* %3206, align 4
  %3208 = zext i32 %3207 to i64
  store i64 %3208, i64* %RSI.i1722, align 8
  %3209 = load i64, i64* %RBP.i, align 8
  %3210 = add i64 %3209, -264
  %3211 = add i64 %3198, 39
  store i64 %3211, i64* %3, align 8
  %3212 = inttoptr i64 %3210 to i64*
  store i64 add (i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64 3136), i64* %3212, align 8
  %3213 = load i32, i32* %ESI.i1012, align 4
  %3214 = zext i32 %3213 to i64
  %3215 = load i64, i64* %3, align 8
  store i64 %3214, i64* %RAX.i278, align 8
  %3216 = sext i32 %3213 to i64
  %3217 = lshr i64 %3216, 32
  store i64 %3217, i64* %1793, align 8
  %3218 = load i32, i32* %ECX.i359, align 4
  %3219 = add i64 %3215, 5
  store i64 %3219, i64* %3, align 8
  %3220 = sext i32 %3218 to i64
  %3221 = shl nuw i64 %3217, 32
  %3222 = or i64 %3221, %3214
  %3223 = sdiv i64 %3222, %3220
  %3224 = shl i64 %3223, 32
  %3225 = ashr exact i64 %3224, 32
  %3226 = icmp eq i64 %3223, %3225
  br i1 %3226, label %3229, label %3227

; <label>:3227:                                   ; preds = %block_4342fb
  %3228 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3219, %struct.Memory* %call2_4342db)
  %.pre97 = load i64, i64* %3, align 8
  %.pre98 = load i32, i32* %EAX.i1727.pre-phi, align 4
  br label %routine_idivl__ecx.exit375

; <label>:3229:                                   ; preds = %block_4342fb
  %3230 = srem i64 %3222, %3220
  %3231 = and i64 %3223, 4294967295
  store i64 %3231, i64* %RAX.i278, align 8
  %3232 = and i64 %3230, 4294967295
  store i64 %3232, i64* %RDX.i1765, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %3233 = trunc i64 %3223 to i32
  br label %routine_idivl__ecx.exit375

routine_idivl__ecx.exit375:                       ; preds = %3229, %3227
  %3234 = phi i32 [ %.pre98, %3227 ], [ %3233, %3229 ]
  %3235 = phi i64 [ %.pre97, %3227 ], [ %3219, %3229 ]
  %3236 = phi %struct.Memory* [ %3228, %3227 ], [ %call2_4342db, %3229 ]
  %3237 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3237, i64* %RDI.i1400, align 8
  %3238 = add i64 %3237, 60
  %3239 = add i64 %3235, 11
  store i64 %3239, i64* %3, align 8
  %3240 = inttoptr i64 %3238 to i32*
  %3241 = load i32, i32* %3240, align 4
  %3242 = zext i32 %3241 to i64
  store i64 %3242, i64* %RSI.i1722, align 8
  %3243 = load i64, i64* %RBP.i, align 8
  %3244 = add i64 %3243, -268
  %3245 = add i64 %3235, 17
  store i64 %3245, i64* %3, align 8
  %3246 = inttoptr i64 %3244 to i32*
  store i32 %3234, i32* %3246, align 4
  %3247 = load i32, i32* %ESI.i1012, align 4
  %3248 = zext i32 %3247 to i64
  %3249 = load i64, i64* %3, align 8
  store i64 %3248, i64* %RAX.i278, align 8
  %3250 = sext i32 %3247 to i64
  %3251 = lshr i64 %3250, 32
  store i64 %3251, i64* %1793, align 8
  %3252 = load i32, i32* %ECX.i359, align 4
  %3253 = add i64 %3249, 5
  store i64 %3253, i64* %3, align 8
  %3254 = sext i32 %3252 to i64
  %3255 = shl nuw i64 %3251, 32
  %3256 = or i64 %3255, %3248
  %3257 = sdiv i64 %3256, %3254
  %3258 = shl i64 %3257, 32
  %3259 = ashr exact i64 %3258, 32
  %3260 = icmp eq i64 %3257, %3259
  br i1 %3260, label %3263, label %3261

; <label>:3261:                                   ; preds = %routine_idivl__ecx.exit375
  %3262 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3253, %struct.Memory* %3236)
  %.pre99 = load i64, i64* %3, align 8
  %.pre100 = load i32, i32* %EAX.i1727.pre-phi, align 4
  br label %routine_idivl__ecx.exit357

; <label>:3263:                                   ; preds = %routine_idivl__ecx.exit375
  %3264 = srem i64 %3256, %3254
  %3265 = and i64 %3257, 4294967295
  store i64 %3265, i64* %RAX.i278, align 8
  %3266 = and i64 %3264, 4294967295
  store i64 %3266, i64* %RDX.i1765, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %3267 = trunc i64 %3257 to i32
  br label %routine_idivl__ecx.exit357

routine_idivl__ecx.exit357:                       ; preds = %3263, %3261
  %3268 = phi i32 [ %.pre100, %3261 ], [ %3267, %3263 ]
  %3269 = phi i64 [ %.pre99, %3261 ], [ %3253, %3263 ]
  %3270 = phi %struct.Memory* [ %3262, %3261 ], [ %3236, %3263 ]
  %3271 = load i64, i64* %RBP.i, align 8
  %3272 = add i64 %3271, -264
  %3273 = add i64 %3269, 7
  store i64 %3273, i64* %3, align 8
  %3274 = inttoptr i64 %3272 to i64*
  %3275 = load i64, i64* %3274, align 8
  store i64 %3275, i64* %RDI.i1400, align 8
  %3276 = add i64 %3271, -268
  %3277 = add i64 %3269, 13
  store i64 %3277, i64* %3, align 8
  %3278 = inttoptr i64 %3276 to i32*
  %3279 = load i32, i32* %3278, align 4
  %3280 = zext i32 %3279 to i64
  store i64 %3280, i64* %RSI.i1722, align 8
  %3281 = zext i32 %3268 to i64
  store i64 %3281, i64* %RDX.i1765, align 8
  %3282 = add i64 %3269, 152771
  %3283 = add i64 %3269, 20
  %3284 = load i64, i64* %6, align 8
  %3285 = add i64 %3284, -8
  %3286 = inttoptr i64 %3285 to i64*
  store i64 %3283, i64* %3286, align 8
  store i64 %3285, i64* %6, align 8
  store i64 %3282, i64* %3, align 8
  %call2_43434c = tail call %struct.Memory* @sub_459800.get_mem2Dint(%struct.State* nonnull %0, i64 %3282, %struct.Memory* %3270)
  %3287 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3136), i64* %RDI.i1400, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3136), i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3136), i64 3136)) to i8), i8* %30, align 1
  %3288 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3136) to i32), i32 255))
  %3289 = trunc i32 %3288 to i8
  %3290 = and i8 %3289, 1
  %3291 = xor i8 %3290, 1
  store i8 %3291, i8* %37, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3136), i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3136)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3136), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3136), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3136), i64 63), i64 lshr (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64 3136), i64 63)), i64 2) to i8), i8* %54, align 1
  store i64 4, i64* %RCX.i309, align 8
  %3292 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3292, i64* %R8.i1045, align 8
  %3293 = add i64 %3292, 52
  %3294 = add i64 %3287, 34
  store i64 %3294, i64* %3, align 8
  %3295 = inttoptr i64 %3293 to i32*
  %3296 = load i32, i32* %3295, align 4
  %3297 = zext i32 %3296 to i64
  store i64 %3297, i64* %RDX.i1765, align 8
  %3298 = load i64, i64* %RBP.i, align 8
  %3299 = add i64 %3298, -272
  %3300 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %3301 = add i64 %3287, 40
  store i64 %3301, i64* %3, align 8
  %3302 = inttoptr i64 %3299 to i32*
  store i32 %3300, i32* %3302, align 4
  %3303 = load i32, i32* %EDX.i1759, align 4
  %3304 = zext i32 %3303 to i64
  %3305 = load i64, i64* %3, align 8
  store i64 %3304, i64* %RAX.i278, align 8
  %3306 = sext i32 %3303 to i64
  %3307 = lshr i64 %3306, 32
  store i64 %3307, i64* %1793, align 8
  %3308 = load i32, i32* %ECX.i359, align 4
  %3309 = add i64 %3305, 5
  store i64 %3309, i64* %3, align 8
  %3310 = sext i32 %3308 to i64
  %3311 = shl nuw i64 %3307, 32
  %3312 = or i64 %3311, %3304
  %3313 = sdiv i64 %3312, %3310
  %3314 = shl i64 %3313, 32
  %3315 = ashr exact i64 %3314, 32
  %3316 = icmp eq i64 %3313, %3315
  br i1 %3316, label %3319, label %3317

; <label>:3317:                                   ; preds = %routine_idivl__ecx.exit357
  %3318 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3309, %struct.Memory* %call2_43434c)
  %.pre101 = load i64, i64* %3, align 8
  %.pre102 = load i32, i32* %EAX.i1727.pre-phi, align 4
  br label %routine_idivl__ecx.exit324

; <label>:3319:                                   ; preds = %routine_idivl__ecx.exit357
  %3320 = srem i64 %3312, %3310
  %3321 = and i64 %3313, 4294967295
  store i64 %3321, i64* %RAX.i278, align 8
  %3322 = and i64 %3320, 4294967295
  store i64 %3322, i64* %RDX.i1765, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %3323 = trunc i64 %3313 to i32
  br label %routine_idivl__ecx.exit324

routine_idivl__ecx.exit324:                       ; preds = %3319, %3317
  %3324 = phi i32 [ %.pre102, %3317 ], [ %3323, %3319 ]
  %3325 = phi i64 [ %.pre101, %3317 ], [ %3309, %3319 ]
  %3326 = phi %struct.Memory* [ %3318, %3317 ], [ %call2_43434c, %3319 ]
  %3327 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3327, i64* %R8.i1045, align 8
  %3328 = add i64 %3327, 60
  %3329 = add i64 %3325, 12
  store i64 %3329, i64* %3, align 8
  %3330 = inttoptr i64 %3328 to i32*
  %3331 = load i32, i32* %3330, align 4
  %3332 = zext i32 %3331 to i64
  store i64 %3332, i64* %RSI.i1722, align 8
  %3333 = load i64, i64* %RBP.i, align 8
  %3334 = add i64 %3333, -276
  %3335 = add i64 %3325, 18
  store i64 %3335, i64* %3, align 8
  %3336 = inttoptr i64 %3334 to i32*
  store i32 %3324, i32* %3336, align 4
  %3337 = load i32, i32* %ESI.i1012, align 4
  %3338 = zext i32 %3337 to i64
  %3339 = load i64, i64* %3, align 8
  store i64 %3338, i64* %RAX.i278, align 8
  %3340 = sext i32 %3337 to i64
  %3341 = lshr i64 %3340, 32
  store i64 %3341, i64* %1793, align 8
  %3342 = load i32, i32* %ECX.i359, align 4
  %3343 = add i64 %3339, 5
  store i64 %3343, i64* %3, align 8
  %3344 = sext i32 %3342 to i64
  %3345 = shl nuw i64 %3341, 32
  %3346 = or i64 %3345, %3338
  %3347 = sdiv i64 %3346, %3344
  %3348 = shl i64 %3347, 32
  %3349 = ashr exact i64 %3348, 32
  %3350 = icmp eq i64 %3347, %3349
  br i1 %3350, label %3353, label %3351

; <label>:3351:                                   ; preds = %routine_idivl__ecx.exit324
  %3352 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3343, %struct.Memory* %3326)
  %.pre103 = load i64, i64* %3, align 8
  %.pre104 = load i32, i32* %EAX.i1727.pre-phi, align 4
  br label %routine_idivl__ecx.exit306

; <label>:3353:                                   ; preds = %routine_idivl__ecx.exit324
  %3354 = srem i64 %3346, %3344
  %3355 = and i64 %3347, 4294967295
  store i64 %3355, i64* %RAX.i278, align 8
  %3356 = and i64 %3354, 4294967295
  store i64 %3356, i64* %RDX.i1765, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %3357 = trunc i64 %3347 to i32
  br label %routine_idivl__ecx.exit306

routine_idivl__ecx.exit306:                       ; preds = %3353, %3351
  %3358 = phi i32 [ %.pre104, %3351 ], [ %3357, %3353 ]
  %3359 = phi i64 [ %.pre103, %3351 ], [ %3343, %3353 ]
  %3360 = phi %struct.Memory* [ %3352, %3351 ], [ %3326, %3353 ]
  %3361 = load i64, i64* %RBP.i, align 8
  %3362 = add i64 %3361, -276
  %3363 = add i64 %3359, 6
  store i64 %3363, i64* %3, align 8
  %3364 = inttoptr i64 %3362 to i32*
  %3365 = load i32, i32* %3364, align 4
  %3366 = zext i32 %3365 to i64
  store i64 %3366, i64* %RSI.i1722, align 8
  %3367 = zext i32 %3358 to i64
  store i64 %3367, i64* %RDX.i1765, align 8
  %3368 = add i64 %3359, 152683
  %3369 = add i64 %3359, 13
  %3370 = load i64, i64* %6, align 8
  %3371 = add i64 %3370, -8
  %3372 = inttoptr i64 %3371 to i64*
  store i64 %3369, i64* %3372, align 8
  store i64 %3371, i64* %6, align 8
  store i64 %3368, i64* %3, align 8
  %call2_43439d = tail call %struct.Memory* @sub_459800.get_mem2Dint(%struct.State* nonnull %0, i64 %3368, %struct.Memory* %3360)
  %3373 = load i64, i64* %3, align 8
  store i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3136), i64* %RDI.i1400, align 8
  store i8 zext (i1 or (i1 icmp ult (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3136), i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64)), i1 icmp ult (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3136), i64 3136)) to i8), i8* %30, align 1
  %3374 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3136) to i32), i32 255))
  %3375 = trunc i32 %3374 to i8
  %3376 = and i8 %3375, 1
  %3377 = xor i8 %3376, 1
  store i8 %3377, i8* %37, align 1
  store i8 and (i8 trunc (i64 lshr (i64 xor (i64 xor (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3136), i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3136)), i64 4) to i8), i8 1), i8* %42, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3136), i64 0) to i8), i8* %45, align 1
  store i8 trunc (i64 lshr (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3136), i64 63) to i8), i8* %48, align 1
  store i8 zext (i1 icmp eq (i64 add (i64 xor (i64 lshr (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3136), i64 63), i64 lshr (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 63)), i64 lshr (i64 add (i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64 3136), i64 63)), i64 2) to i8), i8* %54, align 1
  store i64 4, i64* %RCX.i309, align 8
  %3378 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3378, i64* %R8.i1045, align 8
  %3379 = add i64 %3378, 52
  %3380 = add i64 %3373, 34
  store i64 %3380, i64* %3, align 8
  %3381 = inttoptr i64 %3379 to i32*
  %3382 = load i32, i32* %3381, align 4
  %3383 = zext i32 %3382 to i64
  store i64 %3383, i64* %RDX.i1765, align 8
  %3384 = load i64, i64* %RBP.i, align 8
  %3385 = add i64 %3384, -280
  %3386 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %3387 = add i64 %3373, 40
  store i64 %3387, i64* %3, align 8
  %3388 = inttoptr i64 %3385 to i32*
  store i32 %3386, i32* %3388, align 4
  %3389 = load i32, i32* %EDX.i1759, align 4
  %3390 = zext i32 %3389 to i64
  %3391 = load i64, i64* %3, align 8
  store i64 %3390, i64* %RAX.i278, align 8
  %3392 = sext i32 %3389 to i64
  %3393 = lshr i64 %3392, 32
  store i64 %3393, i64* %1793, align 8
  %3394 = load i32, i32* %ECX.i359, align 4
  %3395 = add i64 %3391, 5
  store i64 %3395, i64* %3, align 8
  %3396 = sext i32 %3394 to i64
  %3397 = shl nuw i64 %3393, 32
  %3398 = or i64 %3397, %3390
  %3399 = sdiv i64 %3398, %3396
  %3400 = shl i64 %3399, 32
  %3401 = ashr exact i64 %3400, 32
  %3402 = icmp eq i64 %3399, %3401
  br i1 %3402, label %3405, label %3403

; <label>:3403:                                   ; preds = %routine_idivl__ecx.exit306
  %3404 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3395, %struct.Memory* %call2_43439d)
  %.pre105 = load i64, i64* %3, align 8
  %.pre106 = load i32, i32* %EAX.i1727.pre-phi, align 4
  br label %routine_idivl__ecx.exit276

; <label>:3405:                                   ; preds = %routine_idivl__ecx.exit306
  %3406 = srem i64 %3398, %3396
  %3407 = and i64 %3399, 4294967295
  store i64 %3407, i64* %RAX.i278, align 8
  %3408 = and i64 %3406, 4294967295
  store i64 %3408, i64* %RDX.i1765, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %3409 = trunc i64 %3399 to i32
  br label %routine_idivl__ecx.exit276

routine_idivl__ecx.exit276:                       ; preds = %3405, %3403
  %3410 = phi i32 [ %.pre106, %3403 ], [ %3409, %3405 ]
  %3411 = phi i64 [ %.pre105, %3403 ], [ %3395, %3405 ]
  %3412 = phi %struct.Memory* [ %3404, %3403 ], [ %call2_43439d, %3405 ]
  %3413 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3413, i64* %R8.i1045, align 8
  %3414 = add i64 %3413, 60
  %3415 = add i64 %3411, 12
  store i64 %3415, i64* %3, align 8
  %3416 = inttoptr i64 %3414 to i32*
  %3417 = load i32, i32* %3416, align 4
  %3418 = zext i32 %3417 to i64
  store i64 %3418, i64* %RSI.i1722, align 8
  %3419 = load i64, i64* %RBP.i, align 8
  %3420 = add i64 %3419, -284
  %3421 = add i64 %3411, 18
  store i64 %3421, i64* %3, align 8
  %3422 = inttoptr i64 %3420 to i32*
  store i32 %3410, i32* %3422, align 4
  %3423 = load i32, i32* %ESI.i1012, align 4
  %3424 = zext i32 %3423 to i64
  %3425 = load i64, i64* %3, align 8
  store i64 %3424, i64* %RAX.i278, align 8
  %3426 = sext i32 %3423 to i64
  %3427 = lshr i64 %3426, 32
  store i64 %3427, i64* %1793, align 8
  %3428 = load i32, i32* %ECX.i359, align 4
  %3429 = add i64 %3425, 5
  store i64 %3429, i64* %3, align 8
  %3430 = sext i32 %3428 to i64
  %3431 = shl nuw i64 %3427, 32
  %3432 = or i64 %3431, %3424
  %3433 = sdiv i64 %3432, %3430
  %3434 = shl i64 %3433, 32
  %3435 = ashr exact i64 %3434, 32
  %3436 = icmp eq i64 %3433, %3435
  br i1 %3436, label %3439, label %3437

; <label>:3437:                                   ; preds = %routine_idivl__ecx.exit276
  %3438 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3429, %struct.Memory* %3412)
  %.pre107 = load i64, i64* %3, align 8
  %.pre108 = load i32, i32* %EAX.i1727.pre-phi, align 4
  br label %routine_idivl__ecx.exit

; <label>:3439:                                   ; preds = %routine_idivl__ecx.exit276
  %3440 = srem i64 %3432, %3430
  %3441 = and i64 %3433, 4294967295
  store i64 %3441, i64* %RAX.i278, align 8
  %3442 = and i64 %3440, 4294967295
  store i64 %3442, i64* %RDX.i1765, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %3443 = trunc i64 %3433 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %3439, %3437
  %3444 = phi i32 [ %.pre108, %3437 ], [ %3443, %3439 ]
  %3445 = phi i64 [ %.pre107, %3437 ], [ %3429, %3439 ]
  %3446 = phi %struct.Memory* [ %3438, %3437 ], [ %3412, %3439 ]
  %3447 = load i64, i64* %RBP.i, align 8
  %3448 = add i64 %3447, -284
  %3449 = add i64 %3445, 6
  store i64 %3449, i64* %3, align 8
  %3450 = inttoptr i64 %3448 to i32*
  %3451 = load i32, i32* %3450, align 4
  %3452 = zext i32 %3451 to i64
  store i64 %3452, i64* %RSI.i1722, align 8
  %3453 = zext i32 %3444 to i64
  store i64 %3453, i64* %RDX.i1765, align 8
  %3454 = add i64 %3445, 152602
  %3455 = add i64 %3445, 13
  %3456 = load i64, i64* %6, align 8
  %3457 = add i64 %3456, -8
  %3458 = inttoptr i64 %3457 to i64*
  store i64 %3455, i64* %3458, align 8
  store i64 %3457, i64* %6, align 8
  store i64 %3454, i64* %3, align 8
  %call2_4343ee = tail call %struct.Memory* @sub_459800.get_mem2Dint(%struct.State* nonnull %0, i64 %3454, %struct.Memory* %3446)
  %3459 = load i64, i64* %RBP.i, align 8
  %3460 = add i64 %3459, -288
  %3461 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %3462 = load i64, i64* %3, align 8
  %3463 = add i64 %3462, 6
  store i64 %3463, i64* %3, align 8
  %3464 = inttoptr i64 %3460 to i32*
  store i32 %3461, i32* %3464, align 4
  %.pre109 = load i64, i64* %3, align 8
  br label %block_.L_4343f9

block_.L_4343f9:                                  ; preds = %routine_idivl__ecx.exit, %routine_idivl__esi.exit416
  %3465 = phi i64 [ %3198, %routine_idivl__esi.exit416 ], [ %.pre109, %routine_idivl__ecx.exit ]
  %MEMORY.18 = phi %struct.Memory* [ %call2_4342db, %routine_idivl__esi.exit416 ], [ %call2_4343ee, %routine_idivl__ecx.exit ]
  store i64 4, i64* %RDX.i1765, align 8
  %3466 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %3467 = add i64 %3466, 128
  store i64 %3467, i64* %RAX.i278, align 8
  %3468 = icmp ugt i64 %3466, -129
  %3469 = zext i1 %3468 to i8
  store i8 %3469, i8* %30, align 1
  %3470 = trunc i64 %3467 to i32
  %3471 = and i32 %3470, 255
  %3472 = tail call i32 @llvm.ctpop.i32(i32 %3471)
  %3473 = trunc i32 %3472 to i8
  %3474 = and i8 %3473, 1
  %3475 = xor i8 %3474, 1
  store i8 %3475, i8* %37, align 1
  %3476 = xor i64 %3467, %3466
  %3477 = lshr i64 %3476, 4
  %3478 = trunc i64 %3477 to i8
  %3479 = and i8 %3478, 1
  store i8 %3479, i8* %42, align 1
  %3480 = icmp eq i64 %3467, 0
  %3481 = zext i1 %3480 to i8
  store i8 %3481, i8* %45, align 1
  %3482 = lshr i64 %3467, 63
  %3483 = trunc i64 %3482 to i8
  store i8 %3483, i8* %48, align 1
  %3484 = lshr i64 %3466, 63
  %3485 = xor i64 %3482, %3484
  %3486 = add nuw nsw i64 %3485, %3482
  %3487 = icmp eq i64 %3486, 2
  %3488 = zext i1 %3487 to i8
  store i8 %3488, i8* %54, align 1
  store i64 %3466, i64* %RCX.i309, align 8
  %3489 = add i64 %3466, 72488
  %3490 = add i64 %3465, 33
  store i64 %3490, i64* %3, align 8
  %3491 = inttoptr i64 %3489 to i32*
  %3492 = load i32, i32* %3491, align 4
  %3493 = zext i32 %3492 to i64
  store i64 %3493, i64* %RSI.i1722, align 8
  store i64 %3466, i64* %RCX.i309, align 8
  %3494 = add i64 %3466, 72692
  %3495 = add i64 %3465, 47
  store i64 %3495, i64* %3, align 8
  %3496 = inttoptr i64 %3494 to i32*
  %3497 = load i32, i32* %3496, align 4
  %3498 = add i32 %3497, 4
  %3499 = icmp ugt i32 %3497, -5
  %3500 = zext i1 %3499 to i8
  store i8 %3500, i8* %30, align 1
  %3501 = and i32 %3498, 255
  %3502 = tail call i32 @llvm.ctpop.i32(i32 %3501)
  %3503 = trunc i32 %3502 to i8
  %3504 = and i8 %3503, 1
  %3505 = xor i8 %3504, 1
  store i8 %3505, i8* %37, align 1
  %3506 = xor i32 %3498, %3497
  %3507 = lshr i32 %3506, 4
  %3508 = trunc i32 %3507 to i8
  %3509 = and i8 %3508, 1
  store i8 %3509, i8* %42, align 1
  %3510 = icmp eq i32 %3498, 0
  %3511 = zext i1 %3510 to i8
  store i8 %3511, i8* %45, align 1
  %3512 = lshr i32 %3498, 31
  %3513 = trunc i32 %3512 to i8
  store i8 %3513, i8* %48, align 1
  %3514 = lshr i32 %3497, 31
  %3515 = xor i32 %3512, %3514
  %3516 = add nuw nsw i32 %3515, %3512
  %3517 = icmp eq i32 %3516, 2
  %3518 = zext i1 %3517 to i8
  store i8 %3518, i8* %54, align 1
  %EDI.i229 = bitcast %union.anon* %1028 to i32*
  %3519 = load i64, i64* %RBP.i, align 8
  %3520 = add i64 %3519, -292
  %3521 = add i64 %3465, 56
  store i64 %3521, i64* %3, align 8
  %3522 = inttoptr i64 %3520 to i32*
  store i32 %3498, i32* %3522, align 4
  %3523 = load i64, i64* %RAX.i278, align 8
  %3524 = load i64, i64* %3, align 8
  store i64 %3523, i64* %RDI.i1400, align 8
  %3525 = load i64, i64* %RBP.i, align 8
  %3526 = add i64 %3525, -292
  %3527 = add i64 %3524, 9
  store i64 %3527, i64* %3, align 8
  %3528 = inttoptr i64 %3526 to i32*
  %3529 = load i32, i32* %3528, align 4
  %3530 = zext i32 %3529 to i64
  store i64 %3530, i64* %RCX.i309, align 8
  %3531 = add i64 %3524, 153167
  %3532 = add i64 %3524, 14
  %3533 = load i64, i64* %6, align 8
  %3534 = add i64 %3533, -8
  %3535 = inttoptr i64 %3534 to i64*
  store i64 %3532, i64* %3535, align 8
  store i64 %3534, i64* %6, align 8
  store i64 %3531, i64* %3, align 8
  %call2_43443a = tail call %struct.Memory* @sub_459a80.get_mem3Dint(%struct.State* nonnull %0, i64 %3531, %struct.Memory* %MEMORY.18)
  %3536 = load i64, i64* %RBP.i, align 8
  %3537 = add i64 %3536, -296
  %3538 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %3539 = load i64, i64* %3, align 8
  %3540 = add i64 %3539, 6
  store i64 %3540, i64* %3, align 8
  %3541 = inttoptr i64 %3537 to i32*
  store i32 %3538, i32* %3541, align 4
  %3542 = load i64, i64* %3, align 8
  %3543 = add i64 %3542, 17419
  %3544 = add i64 %3542, 5
  %3545 = load i64, i64* %6, align 8
  %3546 = add i64 %3545, -8
  %3547 = inttoptr i64 %3546 to i64*
  store i64 %3544, i64* %3547, align 8
  store i64 %3546, i64* %6, align 8
  store i64 %3543, i64* %3, align 8
  %call2_434445 = tail call %struct.Memory* @sub_438850.CAVLC_init(%struct.State* nonnull %0, i64 %3543, %struct.Memory* %call2_43443a)
  %3548 = load i64, i64* %RBP.i, align 8
  %3549 = add i64 %3548, -28
  %3550 = load i64, i64* %3, align 8
  %3551 = add i64 %3550, 7
  store i64 %3551, i64* %3, align 8
  %3552 = inttoptr i64 %3549 to i32*
  store i32 0, i32* %3552, align 4
  %.pre110 = load i64, i64* %3, align 8
  br label %block_.L_434451

block_.L_434451:                                  ; preds = %block_.L_4344fc, %block_.L_4343f9
  %3553 = phi i64 [ %.pre110, %block_.L_4343f9 ], [ %3816, %block_.L_4344fc ]
  %MEMORY.19 = phi %struct.Memory* [ %call2_434445, %block_.L_4343f9 ], [ %3674, %block_.L_4344fc ]
  store i64 4, i64* %RAX.i278, align 8
  %3554 = load i64, i64* %RBP.i, align 8
  %3555 = add i64 %3554, -28
  %3556 = add i64 %3553, 8
  store i64 %3556, i64* %3, align 8
  %3557 = inttoptr i64 %3555 to i32*
  %3558 = load i32, i32* %3557, align 4
  %3559 = zext i32 %3558 to i64
  store i64 %3559, i64* %RCX.i309, align 8
  %3560 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3560, i64* %RDX.i1765, align 8
  %3561 = add i64 %3560, 52
  %3562 = add i64 %3553, 19
  store i64 %3562, i64* %3, align 8
  %3563 = inttoptr i64 %3561 to i32*
  %3564 = load i32, i32* %3563, align 4
  %3565 = zext i32 %3564 to i64
  store i64 %3565, i64* %RSI.i1722, align 8
  %3566 = add i64 %3554, -300
  %3567 = add i64 %3553, 25
  store i64 %3567, i64* %3, align 8
  %3568 = inttoptr i64 %3566 to i32*
  store i32 4, i32* %3568, align 4
  %3569 = load i32, i32* %ESI.i1012, align 4
  %3570 = zext i32 %3569 to i64
  %3571 = load i64, i64* %3, align 8
  store i64 %3570, i64* %RAX.i278, align 8
  %3572 = sext i32 %3569 to i64
  %3573 = lshr i64 %3572, 32
  store i64 %3573, i64* %1793, align 8
  %3574 = load i64, i64* %RBP.i, align 8
  %3575 = add i64 %3574, -300
  %3576 = add i64 %3571, 9
  store i64 %3576, i64* %3, align 8
  %3577 = inttoptr i64 %3575 to i32*
  %3578 = load i32, i32* %3577, align 4
  %3579 = zext i32 %3578 to i64
  store i64 %3579, i64* %RSI.i1722, align 8
  %3580 = add i64 %3571, 11
  store i64 %3580, i64* %3, align 8
  %3581 = sext i32 %3578 to i64
  %3582 = shl nuw i64 %3573, 32
  %3583 = or i64 %3582, %3570
  %3584 = sdiv i64 %3583, %3581
  %3585 = shl i64 %3584, 32
  %3586 = ashr exact i64 %3585, 32
  %3587 = icmp eq i64 %3584, %3586
  br i1 %3587, label %3590, label %3588

; <label>:3588:                                   ; preds = %block_.L_434451
  %3589 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3580, %struct.Memory* %MEMORY.19)
  %.pre111 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %.pre112 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit192

; <label>:3590:                                   ; preds = %block_.L_434451
  %3591 = srem i64 %3583, %3581
  %3592 = and i64 %3584, 4294967295
  store i64 %3592, i64* %RAX.i278, align 8
  %3593 = and i64 %3591, 4294967295
  store i64 %3593, i64* %RDX.i1765, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %3594 = trunc i64 %3584 to i32
  br label %routine_idivl__esi.exit192

routine_idivl__esi.exit192:                       ; preds = %3590, %3588
  %3595 = phi i64 [ %.pre112, %3588 ], [ %3580, %3590 ]
  %3596 = phi i32 [ %.pre111, %3588 ], [ %3594, %3590 ]
  %3597 = phi %struct.Memory* [ %3589, %3588 ], [ %MEMORY.19, %3590 ]
  %3598 = load i32, i32* %ECX.i359, align 4
  %3599 = sub i32 %3598, %3596
  %3600 = icmp ult i32 %3598, %3596
  %3601 = zext i1 %3600 to i8
  store i8 %3601, i8* %30, align 1
  %3602 = and i32 %3599, 255
  %3603 = tail call i32 @llvm.ctpop.i32(i32 %3602)
  %3604 = trunc i32 %3603 to i8
  %3605 = and i8 %3604, 1
  %3606 = xor i8 %3605, 1
  store i8 %3606, i8* %37, align 1
  %3607 = xor i32 %3596, %3598
  %3608 = xor i32 %3607, %3599
  %3609 = lshr i32 %3608, 4
  %3610 = trunc i32 %3609 to i8
  %3611 = and i8 %3610, 1
  store i8 %3611, i8* %42, align 1
  %3612 = icmp eq i32 %3599, 0
  %3613 = zext i1 %3612 to i8
  store i8 %3613, i8* %45, align 1
  %3614 = lshr i32 %3599, 31
  %3615 = trunc i32 %3614 to i8
  store i8 %3615, i8* %48, align 1
  %3616 = lshr i32 %3598, 31
  %3617 = lshr i32 %3596, 31
  %3618 = xor i32 %3617, %3616
  %3619 = xor i32 %3614, %3616
  %3620 = add nuw nsw i32 %3619, %3618
  %3621 = icmp eq i32 %3620, 2
  %3622 = zext i1 %3621 to i8
  store i8 %3622, i8* %54, align 1
  %3623 = icmp ne i8 %3615, 0
  %3624 = xor i1 %3623, %3621
  %.v134 = select i1 %3624, i64 8, i64 154
  %3625 = add i64 %3595, %.v134
  store i64 %3625, i64* %3, align 8
  br i1 %3624, label %block_43447d, label %block_.L_43450f

block_43447d:                                     ; preds = %routine_idivl__esi.exit192
  %3626 = load i64, i64* %RBP.i, align 8
  %3627 = add i64 %3626, -32
  %3628 = add i64 %3625, 7
  store i64 %3628, i64* %3, align 8
  %3629 = inttoptr i64 %3627 to i32*
  store i32 0, i32* %3629, align 4
  %.pre118 = load i64, i64* %3, align 8
  br label %block_.L_434484

block_.L_434484:                                  ; preds = %block_4344b0, %block_43447d
  %3630 = phi i64 [ %.pre118, %block_43447d ], [ %3785, %block_4344b0 ]
  %MEMORY.20 = phi %struct.Memory* [ %3597, %block_43447d ], [ %3674, %block_4344b0 ]
  store i64 4, i64* %RAX.i278, align 8
  %3631 = load i64, i64* %RBP.i, align 8
  %3632 = add i64 %3631, -32
  %3633 = add i64 %3630, 8
  store i64 %3633, i64* %3, align 8
  %3634 = inttoptr i64 %3632 to i32*
  %3635 = load i32, i32* %3634, align 4
  %3636 = zext i32 %3635 to i64
  store i64 %3636, i64* %RCX.i309, align 8
  %3637 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3637, i64* %RDX.i1765, align 8
  %3638 = add i64 %3637, 60
  %3639 = add i64 %3630, 19
  store i64 %3639, i64* %3, align 8
  %3640 = inttoptr i64 %3638 to i32*
  %3641 = load i32, i32* %3640, align 4
  %3642 = zext i32 %3641 to i64
  store i64 %3642, i64* %RSI.i1722, align 8
  %3643 = add i64 %3631, -304
  %3644 = add i64 %3630, 25
  store i64 %3644, i64* %3, align 8
  %3645 = inttoptr i64 %3643 to i32*
  store i32 4, i32* %3645, align 4
  %3646 = load i32, i32* %ESI.i1012, align 4
  %3647 = zext i32 %3646 to i64
  %3648 = load i64, i64* %3, align 8
  store i64 %3647, i64* %RAX.i278, align 8
  %3649 = sext i32 %3646 to i64
  %3650 = lshr i64 %3649, 32
  store i64 %3650, i64* %1793, align 8
  %3651 = load i64, i64* %RBP.i, align 8
  %3652 = add i64 %3651, -304
  %3653 = add i64 %3648, 9
  store i64 %3653, i64* %3, align 8
  %3654 = inttoptr i64 %3652 to i32*
  %3655 = load i32, i32* %3654, align 4
  %3656 = zext i32 %3655 to i64
  store i64 %3656, i64* %RSI.i1722, align 8
  %3657 = add i64 %3648, 11
  store i64 %3657, i64* %3, align 8
  %3658 = sext i32 %3655 to i64
  %3659 = shl nuw i64 %3650, 32
  %3660 = or i64 %3659, %3647
  %3661 = sdiv i64 %3660, %3658
  %3662 = shl i64 %3661, 32
  %3663 = ashr exact i64 %3662, 32
  %3664 = icmp eq i64 %3661, %3663
  br i1 %3664, label %3667, label %3665

; <label>:3665:                                   ; preds = %block_.L_434484
  %3666 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3657, %struct.Memory* %MEMORY.20)
  %.pre119 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %.pre120 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit161

; <label>:3667:                                   ; preds = %block_.L_434484
  %3668 = srem i64 %3660, %3658
  %3669 = and i64 %3661, 4294967295
  store i64 %3669, i64* %RAX.i278, align 8
  %3670 = and i64 %3668, 4294967295
  store i64 %3670, i64* %RDX.i1765, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %3671 = trunc i64 %3661 to i32
  br label %routine_idivl__esi.exit161

routine_idivl__esi.exit161:                       ; preds = %3667, %3665
  %3672 = phi i64 [ %.pre120, %3665 ], [ %3657, %3667 ]
  %3673 = phi i32 [ %.pre119, %3665 ], [ %3671, %3667 ]
  %3674 = phi %struct.Memory* [ %3666, %3665 ], [ %MEMORY.20, %3667 ]
  %3675 = load i32, i32* %ECX.i359, align 4
  %3676 = sub i32 %3675, %3673
  %3677 = icmp ult i32 %3675, %3673
  %3678 = zext i1 %3677 to i8
  store i8 %3678, i8* %30, align 1
  %3679 = and i32 %3676, 255
  %3680 = tail call i32 @llvm.ctpop.i32(i32 %3679)
  %3681 = trunc i32 %3680 to i8
  %3682 = and i8 %3681, 1
  %3683 = xor i8 %3682, 1
  store i8 %3683, i8* %37, align 1
  %3684 = xor i32 %3673, %3675
  %3685 = xor i32 %3684, %3676
  %3686 = lshr i32 %3685, 4
  %3687 = trunc i32 %3686 to i8
  %3688 = and i8 %3687, 1
  store i8 %3688, i8* %42, align 1
  %3689 = icmp eq i32 %3676, 0
  %3690 = zext i1 %3689 to i8
  store i8 %3690, i8* %45, align 1
  %3691 = lshr i32 %3676, 31
  %3692 = trunc i32 %3691 to i8
  store i8 %3692, i8* %48, align 1
  %3693 = lshr i32 %3675, 31
  %3694 = lshr i32 %3673, 31
  %3695 = xor i32 %3694, %3693
  %3696 = xor i32 %3691, %3693
  %3697 = add nuw nsw i32 %3696, %3695
  %3698 = icmp eq i32 %3697, 2
  %3699 = zext i1 %3698 to i8
  store i8 %3699, i8* %54, align 1
  %3700 = icmp ne i8 %3692, 0
  %3701 = xor i1 %3700, %3698
  %.v136 = select i1 %3701, i64 8, i64 84
  %3702 = add i64 %3672, %.v136
  store i64 %3702, i64* %3, align 8
  br i1 %3701, label %block_4344b0, label %block_.L_4344fc

block_4344b0:                                     ; preds = %routine_idivl__esi.exit161
  %3703 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3703, i64* %RAX.i278, align 8
  %3704 = add i64 %3703, 104
  %3705 = add i64 %3702, 12
  store i64 %3705, i64* %3, align 8
  %3706 = inttoptr i64 %3704 to i64*
  %3707 = load i64, i64* %3706, align 8
  store i64 %3707, i64* %RAX.i278, align 8
  %3708 = load i64, i64* %RBP.i, align 8
  %3709 = add i64 %3708, -28
  %3710 = add i64 %3702, 16
  store i64 %3710, i64* %3, align 8
  %3711 = inttoptr i64 %3709 to i32*
  %3712 = load i32, i32* %3711, align 4
  %3713 = sext i32 %3712 to i64
  store i64 %3713, i64* %RCX.i309, align 8
  %3714 = shl nsw i64 %3713, 3
  %3715 = add i64 %3714, %3707
  %3716 = add i64 %3702, 20
  store i64 %3716, i64* %3, align 8
  %3717 = inttoptr i64 %3715 to i64*
  %3718 = load i64, i64* %3717, align 8
  store i64 %3718, i64* %RAX.i278, align 8
  %3719 = add i64 %3708, -32
  %3720 = add i64 %3702, 24
  store i64 %3720, i64* %3, align 8
  %3721 = inttoptr i64 %3719 to i32*
  %3722 = load i32, i32* %3721, align 4
  %3723 = sext i32 %3722 to i64
  store i64 %3723, i64* %RCX.i309, align 8
  %3724 = shl nsw i64 %3723, 2
  %3725 = add i64 %3724, %3718
  %3726 = add i64 %3702, 31
  store i64 %3726, i64* %3, align 8
  %3727 = inttoptr i64 %3725 to i32*
  store i32 -1, i32* %3727, align 4
  %3728 = load i64, i64* %3, align 8
  %3729 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3729, i64* %RAX.i278, align 8
  %3730 = add i64 %3729, 112
  %3731 = add i64 %3728, 12
  store i64 %3731, i64* %3, align 8
  %3732 = inttoptr i64 %3730 to i64*
  %3733 = load i64, i64* %3732, align 8
  store i64 %3733, i64* %RAX.i278, align 8
  %3734 = load i64, i64* %RBP.i, align 8
  %3735 = add i64 %3734, -28
  %3736 = add i64 %3728, 16
  store i64 %3736, i64* %3, align 8
  %3737 = inttoptr i64 %3735 to i32*
  %3738 = load i32, i32* %3737, align 4
  %3739 = sext i32 %3738 to i64
  store i64 %3739, i64* %RCX.i309, align 8
  %3740 = shl nsw i64 %3739, 3
  %3741 = add i64 %3740, %3733
  %3742 = add i64 %3728, 20
  store i64 %3742, i64* %3, align 8
  %3743 = inttoptr i64 %3741 to i64*
  %3744 = load i64, i64* %3743, align 8
  store i64 %3744, i64* %RAX.i278, align 8
  %3745 = add i64 %3734, -32
  %3746 = add i64 %3728, 24
  store i64 %3746, i64* %3, align 8
  %3747 = inttoptr i64 %3745 to i32*
  %3748 = load i32, i32* %3747, align 4
  %3749 = sext i32 %3748 to i64
  store i64 %3749, i64* %RCX.i309, align 8
  %3750 = shl nsw i64 %3749, 2
  %3751 = add i64 %3750, %3744
  %3752 = add i64 %3728, 31
  store i64 %3752, i64* %3, align 8
  %3753 = inttoptr i64 %3751 to i32*
  store i32 -1, i32* %3753, align 4
  %3754 = load i64, i64* %RBP.i, align 8
  %3755 = add i64 %3754, -32
  %3756 = load i64, i64* %3, align 8
  %3757 = add i64 %3756, 3
  store i64 %3757, i64* %3, align 8
  %3758 = inttoptr i64 %3755 to i32*
  %3759 = load i32, i32* %3758, align 4
  %3760 = add i32 %3759, 1
  %3761 = zext i32 %3760 to i64
  store i64 %3761, i64* %RAX.i278, align 8
  %3762 = icmp eq i32 %3759, -1
  %3763 = icmp eq i32 %3760, 0
  %3764 = or i1 %3762, %3763
  %3765 = zext i1 %3764 to i8
  store i8 %3765, i8* %30, align 1
  %3766 = and i32 %3760, 255
  %3767 = tail call i32 @llvm.ctpop.i32(i32 %3766)
  %3768 = trunc i32 %3767 to i8
  %3769 = and i8 %3768, 1
  %3770 = xor i8 %3769, 1
  store i8 %3770, i8* %37, align 1
  %3771 = xor i32 %3760, %3759
  %3772 = lshr i32 %3771, 4
  %3773 = trunc i32 %3772 to i8
  %3774 = and i8 %3773, 1
  store i8 %3774, i8* %42, align 1
  %3775 = zext i1 %3763 to i8
  store i8 %3775, i8* %45, align 1
  %3776 = lshr i32 %3760, 31
  %3777 = trunc i32 %3776 to i8
  store i8 %3777, i8* %48, align 1
  %3778 = lshr i32 %3759, 31
  %3779 = xor i32 %3776, %3778
  %3780 = add nuw nsw i32 %3779, %3776
  %3781 = icmp eq i32 %3780, 2
  %3782 = zext i1 %3781 to i8
  store i8 %3782, i8* %54, align 1
  %3783 = add i64 %3756, 9
  store i64 %3783, i64* %3, align 8
  store i32 %3760, i32* %3758, align 4
  %3784 = load i64, i64* %3, align 8
  %3785 = add i64 %3784, -115
  store i64 %3785, i64* %3, align 8
  br label %block_.L_434484

block_.L_4344fc:                                  ; preds = %routine_idivl__esi.exit161
  %3786 = load i64, i64* %RBP.i, align 8
  %3787 = add i64 %3786, -28
  %3788 = add i64 %3702, 8
  store i64 %3788, i64* %3, align 8
  %3789 = inttoptr i64 %3787 to i32*
  %3790 = load i32, i32* %3789, align 4
  %3791 = add i32 %3790, 1
  %3792 = zext i32 %3791 to i64
  store i64 %3792, i64* %RAX.i278, align 8
  %3793 = icmp eq i32 %3790, -1
  %3794 = icmp eq i32 %3791, 0
  %3795 = or i1 %3793, %3794
  %3796 = zext i1 %3795 to i8
  store i8 %3796, i8* %30, align 1
  %3797 = and i32 %3791, 255
  %3798 = tail call i32 @llvm.ctpop.i32(i32 %3797)
  %3799 = trunc i32 %3798 to i8
  %3800 = and i8 %3799, 1
  %3801 = xor i8 %3800, 1
  store i8 %3801, i8* %37, align 1
  %3802 = xor i32 %3791, %3790
  %3803 = lshr i32 %3802, 4
  %3804 = trunc i32 %3803 to i8
  %3805 = and i8 %3804, 1
  store i8 %3805, i8* %42, align 1
  %3806 = zext i1 %3794 to i8
  store i8 %3806, i8* %45, align 1
  %3807 = lshr i32 %3791, 31
  %3808 = trunc i32 %3807 to i8
  store i8 %3808, i8* %48, align 1
  %3809 = lshr i32 %3790, 31
  %3810 = xor i32 %3807, %3809
  %3811 = add nuw nsw i32 %3810, %3807
  %3812 = icmp eq i32 %3811, 2
  %3813 = zext i1 %3812 to i8
  store i8 %3813, i8* %54, align 1
  %3814 = add i64 %3702, 14
  store i64 %3814, i64* %3, align 8
  store i32 %3791, i32* %3789, align 4
  %3815 = load i64, i64* %3, align 8
  %3816 = add i64 %3815, -185
  store i64 %3816, i64* %3, align 8
  br label %block_.L_434451

block_.L_43450f:                                  ; preds = %routine_idivl__esi.exit192
  store i64 16, i64* %RAX.i278, align 8
  %3817 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  %3818 = add i64 %3817, 88
  %3819 = add i64 %3625, 20
  store i64 %3819, i64* %3, align 8
  %3820 = inttoptr i64 %3818 to i32*
  store i32 0, i32* %3820, align 4
  %3821 = load i64, i64* %3, align 8
  %3822 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3822, i64* %RCX.i309, align 8
  %3823 = add i64 %3822, 52
  %3824 = add i64 %3821, 11
  store i64 %3824, i64* %3, align 8
  %3825 = inttoptr i64 %3823 to i32*
  %3826 = load i32, i32* %3825, align 4
  %3827 = zext i32 %3826 to i64
  store i64 %3827, i64* %RDX.i1765, align 8
  %3828 = load i64, i64* %RBP.i, align 8
  %3829 = add i64 %3828, -308
  %3830 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %3831 = add i64 %3821, 17
  store i64 %3831, i64* %3, align 8
  %3832 = inttoptr i64 %3829 to i32*
  store i32 %3830, i32* %3832, align 4
  %3833 = load i32, i32* %EDX.i1759, align 4
  %3834 = zext i32 %3833 to i64
  %3835 = load i64, i64* %3, align 8
  store i64 %3834, i64* %RAX.i278, align 8
  %3836 = sext i32 %3833 to i64
  %3837 = lshr i64 %3836, 32
  store i64 %3837, i64* %1793, align 8
  %3838 = load i64, i64* %RBP.i, align 8
  %3839 = add i64 %3838, -308
  %3840 = add i64 %3835, 9
  store i64 %3840, i64* %3, align 8
  %3841 = inttoptr i64 %3839 to i32*
  %3842 = load i32, i32* %3841, align 4
  %3843 = zext i32 %3842 to i64
  store i64 %3843, i64* %RSI.i1722, align 8
  %3844 = add i64 %3835, 11
  store i64 %3844, i64* %3, align 8
  %3845 = sext i32 %3842 to i64
  %3846 = shl nuw i64 %3837, 32
  %3847 = or i64 %3846, %3834
  %3848 = sdiv i64 %3847, %3845
  %3849 = shl i64 %3848, 32
  %3850 = ashr exact i64 %3849, 32
  %3851 = icmp eq i64 %3848, %3850
  br i1 %3851, label %3854, label %3852

; <label>:3852:                                   ; preds = %block_.L_43450f
  %3853 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3844, %struct.Memory* %3597)
  %.pre113 = load i64, i64* %3, align 8
  %.pre114 = load i64, i64* %RBP.i, align 8
  %.pre115 = load i32, i32* %EAX.i1727.pre-phi, align 4
  br label %routine_idivl__esi.exit81

; <label>:3854:                                   ; preds = %block_.L_43450f
  %3855 = srem i64 %3847, %3845
  %3856 = and i64 %3848, 4294967295
  store i64 %3856, i64* %RAX.i278, align 8
  %3857 = and i64 %3855, 4294967295
  store i64 %3857, i64* %RDX.i1765, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %3858 = trunc i64 %3848 to i32
  br label %routine_idivl__esi.exit81

routine_idivl__esi.exit81:                        ; preds = %3854, %3852
  %3859 = phi i32 [ %.pre115, %3852 ], [ %3858, %3854 ]
  %3860 = phi i64 [ %.pre114, %3852 ], [ %3838, %3854 ]
  %3861 = phi i64 [ %.pre113, %3852 ], [ %3844, %3854 ]
  %3862 = phi %struct.Memory* [ %3853, %3852 ], [ %3597, %3854 ]
  %3863 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %3863, i64* %RCX.i309, align 8
  %3864 = add i64 %3863, 60
  %3865 = add i64 %3861, 11
  store i64 %3865, i64* %3, align 8
  %3866 = inttoptr i64 %3864 to i32*
  %3867 = load i32, i32* %3866, align 4
  %3868 = zext i32 %3867 to i64
  store i64 %3868, i64* %RDI.i1400, align 8
  %3869 = add i64 %3860, -312
  %3870 = add i64 %3861, 17
  store i64 %3870, i64* %3, align 8
  %3871 = inttoptr i64 %3869 to i32*
  store i32 %3859, i32* %3871, align 4
  %3872 = load i32, i32* %EDI.i229, align 4
  %3873 = zext i32 %3872 to i64
  %3874 = load i64, i64* %3, align 8
  store i64 %3873, i64* %RAX.i278, align 8
  %3875 = sext i32 %3872 to i64
  %3876 = lshr i64 %3875, 32
  store i64 %3876, i64* %1793, align 8
  %3877 = load i32, i32* %ESI.i1012, align 4
  %3878 = add i64 %3874, 5
  store i64 %3878, i64* %3, align 8
  %3879 = sext i32 %3877 to i64
  %3880 = shl nuw i64 %3876, 32
  %3881 = or i64 %3880, %3873
  %3882 = sdiv i64 %3881, %3879
  %3883 = shl i64 %3882, 32
  %3884 = ashr exact i64 %3883, 32
  %3885 = icmp eq i64 %3882, %3884
  br i1 %3885, label %3888, label %3886

; <label>:3886:                                   ; preds = %routine_idivl__esi.exit81
  %3887 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3878, %struct.Memory* %3862)
  %.pre116 = load i64, i64* %3, align 8
  br label %routine_idivl__esi.exit

; <label>:3888:                                   ; preds = %routine_idivl__esi.exit81
  %3889 = srem i64 %3881, %3879
  %3890 = and i64 %3882, 4294967295
  store i64 %3890, i64* %RAX.i278, align 8
  %3891 = and i64 %3889, 4294967295
  store i64 %3891, i64* %RDX.i1765, align 8
  store i8 0, i8* %30, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %42, align 1
  store i8 0, i8* %45, align 1
  store i8 0, i8* %48, align 1
  store i8 0, i8* %54, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %3888, %3886
  %3892 = phi i64 [ %.pre116, %3886 ], [ %3878, %3888 ]
  %3893 = phi %struct.Memory* [ %3887, %3886 ], [ %3862, %3888 ]
  %3894 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %3894, i64* %RCX.i309, align 8
  %3895 = add i64 %3894, 2920
  %3896 = add i64 %3892, 14
  store i64 %3896, i64* %3, align 8
  %3897 = inttoptr i64 %3895 to i32*
  %3898 = load i32, i32* %3897, align 4
  %3899 = zext i32 %3898 to i64
  store i64 %3899, i64* %RDI.i1400, align 8
  %3900 = load i64, i64* %RBP.i, align 8
  %3901 = add i64 %3900, -312
  %3902 = add i64 %3892, 21
  store i64 %3902, i64* %3, align 8
  %3903 = inttoptr i64 %3901 to i32*
  %3904 = load i32, i32* %3903, align 4
  %3905 = zext i32 %3904 to i64
  store i64 %3905, i64* %R8.i1045, align 8
  %3906 = add i64 %3900, -316
  %3907 = add i64 %3892, 27
  store i64 %3907, i64* %3, align 8
  %3908 = inttoptr i64 %3906 to i32*
  store i32 %3898, i32* %3908, align 4
  %3909 = load i32, i32* %R8D.i542, align 4
  %3910 = zext i32 %3909 to i64
  %3911 = load i64, i64* %3, align 8
  store i64 %3910, i64* %RDI.i1400, align 8
  %3912 = load i32, i32* %EAX.i1727.pre-phi, align 4
  %3913 = zext i32 %3912 to i64
  store i64 %3913, i64* %RSI.i1722, align 8
  %3914 = load i64, i64* %RBP.i, align 8
  %3915 = add i64 %3914, -316
  %3916 = add i64 %3911, 11
  store i64 %3916, i64* %3, align 8
  %3917 = inttoptr i64 %3915 to i32*
  %3918 = load i32, i32* %3917, align 4
  %3919 = zext i32 %3918 to i64
  store i64 %3919, i64* %RAX.i278, align 8
  store i64 %3919, i64* %RDX.i1765, align 8
  %3920 = add i64 %3911, -11280
  %3921 = add i64 %3911, 18
  %3922 = load i64, i64* %6, align 8
  %3923 = add i64 %3922, -8
  %3924 = inttoptr i64 %3923 to i64*
  store i64 %3921, i64* %3924, align 8
  store i64 %3923, i64* %6, align 8
  store i64 %3920, i64* %3, align 8
  %call2_43457d = tail call %struct.Memory* @sub_431960.RandomIntraInit(%struct.State* nonnull %0, i64 %3920, %struct.Memory* %3893)
  %AL.i = bitcast %union.anon* %55 to i8*
  %3925 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i, align 1
  %3926 = add i64 %3925, 436478
  %3927 = add i64 %3925, 7
  %3928 = load i64, i64* %6, align 8
  %3929 = add i64 %3928, -8
  %3930 = inttoptr i64 %3929 to i64*
  store i64 %3927, i64* %3930, align 8
  store i64 %3929, i64* %6, align 8
  store i64 %3926, i64* %3, align 8
  %call2_434584 = tail call %struct.Memory* @sub_49ee80.InitSEIMessages(%struct.State* nonnull %0, i64 %3926, %struct.Memory* %call2_43457d)
  %3931 = load i64, i64* %3, align 8
  %3932 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %3932, i64* %RCX.i309, align 8
  %3933 = add i64 %3932, 2924
  %3934 = add i64 %3931, 15
  store i64 %3934, i64* %3, align 8
  %3935 = inttoptr i64 %3933 to i32*
  %3936 = load i32, i32* %3935, align 4
  store i8 0, i8* %30, align 1
  %3937 = and i32 %3936, 255
  %3938 = tail call i32 @llvm.ctpop.i32(i32 %3937)
  %3939 = trunc i32 %3938 to i8
  %3940 = and i8 %3939, 1
  %3941 = xor i8 %3940, 1
  store i8 %3941, i8* %37, align 1
  store i8 0, i8* %42, align 1
  %3942 = icmp eq i32 %3936, 0
  %3943 = zext i1 %3942 to i8
  store i8 %3943, i8* %45, align 1
  %3944 = lshr i32 %3936, 31
  %3945 = trunc i32 %3944 to i8
  store i8 %3945, i8* %48, align 1
  store i8 0, i8* %54, align 1
  %.v135 = select i1 %3942, i64 72, i64 21
  %3946 = add i64 %3931, %.v135
  %3947 = add i64 %3946, 8
  store i64 %3947, i64* %3, align 8
  store i64 %3932, i64* %RAX.i278, align 8
  br i1 %3942, label %block_.L_4345d1, label %block_43459e

block_43459e:                                     ; preds = %routine_idivl__esi.exit
  %3948 = add i64 %3932, 2932
  %3949 = add i64 %3946, 14
  store i64 %3949, i64* %3, align 8
  %3950 = inttoptr i64 %3948 to i32*
  %3951 = load i32, i32* %3950, align 4
  %3952 = shl i32 %3951, 1
  %3953 = icmp slt i32 %3951, 0
  %3954 = icmp slt i32 %3952, 0
  %3955 = xor i1 %3953, %3954
  %3956 = zext i32 %3952 to i64
  store i64 %3956, i64* %RCX.i309, align 8
  %.lobit25 = lshr i32 %3951, 31
  %3957 = trunc i32 %.lobit25 to i8
  store i8 %3957, i8* %30, align 1
  %3958 = and i32 %3952, 254
  %3959 = tail call i32 @llvm.ctpop.i32(i32 %3958)
  %3960 = trunc i32 %3959 to i8
  %3961 = and i8 %3960, 1
  %3962 = xor i8 %3961, 1
  store i8 %3962, i8* %37, align 1
  store i8 0, i8* %42, align 1
  %3963 = icmp eq i32 %3952, 0
  %3964 = zext i1 %3963 to i8
  store i8 %3964, i8* %45, align 1
  %3965 = lshr i32 %3951, 30
  %3966 = trunc i32 %3965 to i8
  %3967 = and i8 %3966, 1
  store i8 %3967, i8* %48, align 1
  %3968 = zext i1 %3955 to i8
  store i8 %3968, i8* %54, align 1
  %3969 = add i64 %3946, 22
  store i64 %3969, i64* %3, align 8
  store i32 %3952, i32* %3950, align 4
  %3970 = load i64, i64* %3, align 8
  %3971 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %3971, i64* %RAX.i278, align 8
  %3972 = add i64 %3971, 2936
  %3973 = add i64 %3970, 14
  store i64 %3973, i64* %3, align 8
  %3974 = inttoptr i64 %3972 to i32*
  %3975 = load i32, i32* %3974, align 4
  %3976 = shl i32 %3975, 1
  %3977 = icmp slt i32 %3975, 0
  %3978 = icmp slt i32 %3976, 0
  %3979 = xor i1 %3977, %3978
  %3980 = zext i32 %3976 to i64
  store i64 %3980, i64* %RCX.i309, align 8
  %.lobit26 = lshr i32 %3975, 31
  %3981 = trunc i32 %.lobit26 to i8
  store i8 %3981, i8* %30, align 1
  %3982 = and i32 %3976, 254
  %3983 = tail call i32 @llvm.ctpop.i32(i32 %3982)
  %3984 = trunc i32 %3983 to i8
  %3985 = and i8 %3984, 1
  %3986 = xor i8 %3985, 1
  store i8 %3986, i8* %37, align 1
  store i8 0, i8* %42, align 1
  %3987 = icmp eq i32 %3976, 0
  %3988 = zext i1 %3987 to i8
  store i8 %3988, i8* %45, align 1
  %3989 = lshr i32 %3975, 30
  %3990 = trunc i32 %3989 to i8
  %3991 = and i8 %3990, 1
  store i8 %3991, i8* %48, align 1
  %3992 = zext i1 %3979 to i8
  store i8 %3992, i8* %54, align 1
  %3993 = add i64 %3970, 22
  store i64 %3993, i64* %3, align 8
  store i32 %3976, i32* %3974, align 4
  %3994 = load i64, i64* %3, align 8
  %3995 = add i64 %3994, 59
  store i64 %3995, i64* %3, align 8
  br label %block_.L_434607

block_.L_4345d1:                                  ; preds = %routine_idivl__esi.exit
  %3996 = add i64 %3932, 2928
  %3997 = add i64 %3946, 18
  store i64 %3997, i64* %3, align 8
  %3998 = inttoptr i64 %3996 to i32*
  store i32 0, i32* %3998, align 4
  %3999 = load i64, i64* %3, align 8
  %4000 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  %4001 = add i64 %4000, 2932
  %4002 = add i64 %3999, 18
  store i64 %4002, i64* %3, align 8
  %4003 = inttoptr i64 %4001 to i32*
  store i32 0, i32* %4003, align 4
  %4004 = load i64, i64* %3, align 8
  %4005 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %4005, i64* %RAX.i278, align 8
  %4006 = add i64 %4005, 2936
  %4007 = add i64 %4004, 18
  store i64 %4007, i64* %3, align 8
  %4008 = inttoptr i64 %4006 to i32*
  store i32 0, i32* %4008, align 4
  %.pre117 = load i64, i64* %3, align 8
  br label %block_.L_434607

block_.L_434607:                                  ; preds = %block_.L_4345d1, %block_43459e
  %4009 = phi i64 [ %.pre117, %block_.L_4345d1 ], [ %3995, %block_43459e ]
  %4010 = load i64, i64* %6, align 8
  %4011 = add i64 %4010, 296
  store i64 %4011, i64* %6, align 8
  %4012 = icmp ugt i64 %4010, -297
  %4013 = zext i1 %4012 to i8
  store i8 %4013, i8* %30, align 1
  %4014 = trunc i64 %4011 to i32
  %4015 = and i32 %4014, 255
  %4016 = tail call i32 @llvm.ctpop.i32(i32 %4015)
  %4017 = trunc i32 %4016 to i8
  %4018 = and i8 %4017, 1
  %4019 = xor i8 %4018, 1
  store i8 %4019, i8* %37, align 1
  %4020 = xor i64 %4011, %4010
  %4021 = lshr i64 %4020, 4
  %4022 = trunc i64 %4021 to i8
  %4023 = and i8 %4022, 1
  store i8 %4023, i8* %42, align 1
  %4024 = icmp eq i64 %4011, 0
  %4025 = zext i1 %4024 to i8
  store i8 %4025, i8* %45, align 1
  %4026 = lshr i64 %4011, 63
  %4027 = trunc i64 %4026 to i8
  store i8 %4027, i8* %48, align 1
  %4028 = lshr i64 %4010, 63
  %4029 = xor i64 %4026, %4028
  %4030 = add nuw nsw i64 %4029, %4026
  %4031 = icmp eq i64 %4030, 2
  %4032 = zext i1 %4031 to i8
  store i8 %4032, i8* %54, align 1
  %4033 = add i64 %4009, 8
  store i64 %4033, i64* %3, align 8
  %4034 = add i64 %4010, 304
  %4035 = inttoptr i64 %4011 to i64*
  %4036 = load i64, i64* %4035, align 8
  store i64 %4036, i64* %RBX.i194, align 8
  store i64 %4034, i64* %6, align 8
  %4037 = add i64 %4009, 10
  store i64 %4037, i64* %3, align 8
  %4038 = add i64 %4010, 312
  %4039 = inttoptr i64 %4034 to i64*
  %4040 = load i64, i64* %4039, align 8
  store i64 %4040, i64* %R14.i163, align 8
  store i64 %4038, i64* %6, align 8
  %4041 = add i64 %4009, 12
  store i64 %4041, i64* %3, align 8
  %4042 = add i64 %4010, 320
  %4043 = inttoptr i64 %4038 to i64*
  %4044 = load i64, i64* %4043, align 8
  store i64 %4044, i64* %R15.i83, align 8
  store i64 %4042, i64* %6, align 8
  %4045 = add i64 %4009, 13
  store i64 %4045, i64* %3, align 8
  %4046 = add i64 %4010, 328
  %4047 = inttoptr i64 %4042 to i64*
  %4048 = load i64, i64* %4047, align 8
  store i64 %4048, i64* %RBP.i, align 8
  store i64 %4046, i64* %6, align 8
  %4049 = add i64 %4009, 14
  store i64 %4049, i64* %3, align 8
  %4050 = inttoptr i64 %4046 to i64*
  %4051 = load i64, i64* %4050, align 8
  store i64 %4051, i64* %3, align 8
  %4052 = add i64 %4010, 336
  store i64 %4052, i64* %6, align 8
  ret %struct.Memory* %call2_434584
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
define %struct.Memory* @routine_subq__0x128___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -296
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 296
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
define %struct.Memory* @routine_movq_0x6cb8f8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x48__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72
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
define %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x11bfc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 72700
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xce0__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3296
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
define %struct.Memory* @routine_movl__ecx__0x11bd4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 72660
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11bd4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72660
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
define %struct.Memory* @routine_cmpl_0x11bd8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 72664
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
define %struct.Memory* @routine_jg_.L_43359c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x11bfc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72700
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
define %struct.Memory* @routine_jne_.L_4335cb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__0x11bd4__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 72660
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -8
  %10 = icmp ult i32 %8, 8
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
define %struct.Memory* @routine_cmovgl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  %17 = xor i1 %13, %16
  %18 = xor i1 %17, true
  %19 = and i1 %10, %18
  %20 = load i64, i64* %RAX, align 8
  %21 = select i1 %19, i64 %5, i64 %20
  %22 = and i64 %21, 4294967295
  store i64 %22, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x11bd0__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 72656
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4335f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__0x11bd8__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 72664
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -8
  %10 = icmp ult i32 %8, 8
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
define %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11bd4__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72660
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
define %struct.Memory* @routine_subl__0x8___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -8
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ult i32 %6, 8
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
define %struct.Memory* @routine_imull__0x6___edx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  %8 = mul nsw i64 %7, 6
  %9 = trunc i64 %8 to i32
  %10 = and i64 %8, 4294967294
  store i64 %10, i64* %RDX, align 8
  %11 = mul i64 %7, 25769803776
  %12 = ashr exact i64 %11, 32
  %13 = icmp ne i64 %12, %8
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %9, 254
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %23, align 1
  %24 = lshr i32 %9, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__0x11bdc__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 72668
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__0x11be4__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 72676
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_shll__cl___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i5
  switch i5 %8, label %15 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = trunc i64 %4 to i32
  %11 = shl i32 %10, 1
  %12 = icmp slt i32 %10, 0
  %13 = icmp slt i32 %11, 0
  %14 = xor i1 %12, %13
  br label %25

; <label>:15:                                     ; preds = %block_400488
  %16 = and i8 %5, 31
  %17 = zext i8 %16 to i64
  %18 = add nuw nsw i64 %17, 4294967295
  %19 = and i64 %4, 4294967295
  %20 = and i64 %18, 4294967295
  %21 = shl i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %22, 0
  %24 = shl i32 %22, 1
  br label %25

; <label>:25:                                     ; preds = %15, %9
  %26 = phi i1 [ %12, %9 ], [ %23, %15 ]
  %27 = phi i1 [ %14, %9 ], [ false, %15 ]
  %28 = phi i32 [ %11, %9 ], [ %24, %15 ]
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %RDX, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %31 = zext i1 %26 to i8
  store i8 %31, i8* %30, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %33 = and i32 %28, 254
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33)
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %32, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %40 = icmp eq i32 %28, 0
  %41 = zext i1 %40 to i8
  store i8 %41, i8* %39, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %43 = lshr i32 %28, 31
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %42, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %46 = zext i1 %27 to i8
  store i8 %46, i8* %45, align 1
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %25, %block_400488
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
define %struct.Memory* @routine_movl__edx__0x11be8__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 72680
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11bd4__rsi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 72660
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
define %struct.Memory* @routine_shll__cl___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i5
  switch i5 %8, label %15 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = trunc i64 %4 to i32
  %11 = shl i32 %10, 1
  %12 = icmp slt i32 %10, 0
  %13 = icmp slt i32 %11, 0
  %14 = xor i1 %12, %13
  br label %25

; <label>:15:                                     ; preds = %block_400488
  %16 = and i8 %5, 31
  %17 = zext i8 %16 to i64
  %18 = add nuw nsw i64 %17, 4294967295
  %19 = and i64 %4, 4294967295
  %20 = and i64 %18, 4294967295
  %21 = shl i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %22, 0
  %24 = shl i32 %22, 1
  br label %25

; <label>:25:                                     ; preds = %15, %9
  %26 = phi i1 [ %12, %9 ], [ %23, %15 ]
  %27 = phi i1 [ %14, %9 ], [ false, %15 ]
  %28 = phi i32 [ %11, %9 ], [ %24, %15 ]
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %RAX, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %31 = zext i1 %26 to i8
  store i8 %31, i8* %30, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %33 = and i32 %28, 254
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33)
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %32, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %40 = icmp eq i32 %28, 0
  %41 = zext i1 %40 to i8
  store i8 %41, i8* %39, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %43 = lshr i32 %28, 31
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %42, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %46 = zext i1 %27 to i8
  store i8 %46, i8* %45, align 1
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %25, %block_400488
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
define %struct.Memory* @routine_movl__eax__0x11bec__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 72684
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x11bfc__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 72700
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
define %struct.Memory* @routine_je_.L_43384f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6cb8f8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xce4__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 3300
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
define %struct.Memory* @routine_movl__esi__0x11bd8__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 72664
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11bd8__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 72664
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
define %struct.Memory* @routine_movl__ecx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
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
define %struct.Memory* @routine_shll__cl___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = load i8, i8* %CL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  %8 = trunc i8 %5 to i5
  switch i5 %8, label %15 [
    i5 0, label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit
    i5 1, label %9
  ]

; <label>:9:                                      ; preds = %block_400488
  %10 = trunc i64 %4 to i32
  %11 = shl i32 %10, 1
  %12 = icmp slt i32 %10, 0
  %13 = icmp slt i32 %11, 0
  %14 = xor i1 %12, %13
  br label %25

; <label>:15:                                     ; preds = %block_400488
  %16 = and i8 %5, 31
  %17 = zext i8 %16 to i64
  %18 = add nuw nsw i64 %17, 4294967295
  %19 = and i64 %4, 4294967295
  %20 = and i64 %18, 4294967295
  %21 = shl i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %22, 0
  %24 = shl i32 %22, 1
  br label %25

; <label>:25:                                     ; preds = %15, %9
  %26 = phi i1 [ %12, %9 ], [ %23, %15 ]
  %27 = phi i1 [ %14, %9 ], [ false, %15 ]
  %28 = phi i32 [ %11, %9 ], [ %24, %15 ]
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %RSI, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %31 = zext i1 %26 to i8
  store i8 %31, i8* %30, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %33 = and i32 %28, 254
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33)
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %32, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %40 = icmp eq i32 %28, 0
  %41 = zext i1 %40 to i8
  store i8 %41, i8* %39, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %43 = lshr i32 %28, 31
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %42, align 1
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %46 = zext i1 %27 to i8
  store i8 %46, i8* %45, align 1
  br label %_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit

_ZN12_GLOBAL__N_1L3SHLI3RnWImE2RnIjES4_EEP6MemoryS6_R5StateT_T0_T1_.exit: ; preds = %25, %block_400488
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
define %struct.Memory* @routine_movl__esi__0x11bf0__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 72688
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11bfc__rdx____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 72700
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
define %struct.Memory* @routine_andl__0xfffffffe___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i64 %3, 4294967294
  store i64 %7, i64* %RSI, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = and i32 %6, 254
  %10 = tail call i32 @llvm.ctpop.i32(i32 %9)
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 1
  %13 = xor i8 %12, 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %13, i8* %14, align 1
  %15 = icmp ult i32 %6, 2
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %16, i8* %17, align 1
  %18 = lshr i32 %6, 31
  %19 = trunc i32 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__0x11bf4__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 72692
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11bf4__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 72692
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
define %struct.Memory* @routine_shll__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi__0x11bf8__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 72696
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__0x11bfc__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 72700
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
define %struct.Memory* @routine_movb__al__MINUS0x29__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -41
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_433755(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__0x11bfc__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72700
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_sete__cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x29__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -41
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x29__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -41
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x1___cl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 1, i8* %CL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x10___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x8___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_testb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
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
define %struct.Memory* @routine_cmovnel__esi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  %11 = load i64, i64* %RDX, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx__0x11c04__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
  %5 = add i64 %4, 72708
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__0x11bfc__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 72700
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %8, 3
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
define %struct.Memory* @routine_movb__cl__MINUS0x2a__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -42
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4337a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb_MINUS0x2a__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -42
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cmovnel__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %9 = load i8, i8* %8, align 1
  %10 = icmp eq i8 %9, 0
  %11 = load i64, i64* %RCX, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x11c08__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 72712
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11bd8__rsi____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 72664
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
define %struct.Memory* @routine_subl__0x8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -8
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 8
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
define %struct.Memory* @routine_imull__0x6___ecx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  %8 = mul nsw i64 %7, 6
  %9 = trunc i64 %8 to i32
  %10 = and i64 %8, 4294967294
  store i64 %10, i64* %RCX, align 8
  %11 = mul i64 %7, 25769803776
  %12 = ashr exact i64 %11, 32
  %13 = icmp ne i64 %12, %8
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %9, 254
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %23, align 1
  %24 = lshr i32 %9, 31
  %25 = trunc i32 %24 to i8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x11be0__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RSI, align 8
  %5 = add i64 %4, 72672
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x11c14__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 72724
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
define %struct.Memory* @routine_je_.L_433812(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x11be0__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72672
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
define %struct.Memory* @routine_addl__0x6___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 6
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x11be0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 72672
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6d4690___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6d4690_type* @G_0x6d4690 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xd4__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 212
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
define %struct.Memory* @routine_movl__ecx__0x11c0c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 72716
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xd8__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 216
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
define %struct.Memory* @routine_movl__ecx__0x11c10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 72720
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_433903(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x11bd8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72664
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x11bf0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72688
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x11bf4__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72692
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x11bf8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72696
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x11c04__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72708
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x11c08__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72712
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x11be0__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72672
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x11c0c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72716
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x11c10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72720
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x722cb0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x46c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1132
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x47c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 1148
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
define %struct.Memory* @routine_je_.L_433947(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43395b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_MINUS0x30__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movl__eax__0x24__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 36
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x6cb8f8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x24__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 36
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
define %struct.Memory* @routine_movl__eax__0x11ab8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 72376
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x11bbc__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72636
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsd2ss_0x978__rcx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 2424
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to double*
  %15 = load double, double* %14, align 8
  %16 = fptrunc double %15 to float
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
define %struct.Memory* @routine_movss__xmm0__0x30__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 48
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
define %struct.Memory* @routine_addq__0x118f0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 71920
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -71921
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.get_mem_mv(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x118f8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 71928
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -71929
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x4e8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 1256
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
define %struct.Memory* @routine_je_.L_433a2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x11900___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 71936
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -71937
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x11908___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 71944
  store i64 %6, i64* %RDI, align 8
  %7 = icmp ugt i64 %3, -71945
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
define %struct.Memory* @routine_addq__0x3738___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 14136
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -14137
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
define %struct.Memory* @routine_callq_.get_mem_ACcoeff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x3740___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 14144
  store i64 %6, i64* %RDI, align 8
  %7 = icmp ugt i64 %3, -14145
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
define %struct.Memory* @routine_callq_.get_mem_DCcoeff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x6cb8f8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb8f8_type* @G_0x6cb8f8 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xb44__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 2884
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
define %struct.Memory* @routine_je_.L_433d00(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x710a60___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xca0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 3232
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -3233
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
define %struct.Memory* @routine_movq__0x710a60___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xca8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 3240
  store i64 %6, i64* %RDI, align 8
  %7 = icmp ugt i64 %3, -3241
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
define %struct.Memory* @routine_movq__0x6cd878___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xca0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 3232
  store i64 %6, i64* %RDI, align 8
  %7 = icmp ugt i64 %3, -3233
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
define %struct.Memory* @routine_movq__0x6d2198___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6d2198_type* @G__0x6d2198 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__0x721e00___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x721e00_type* @G__0x721e00 to i64), i64* %RDI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x4e8__rdi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 1256
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
define %struct.Memory* @routine_je_.L_433c1e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0xcb0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 3248
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -3249
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xcb8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 3256
  store i64 %6, i64* %RDI, align 8
  %7 = icmp ugt i64 %3, -3257
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xcb0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 3248
  store i64 %6, i64* %RDI, align 8
  %7 = icmp ugt i64 %3, -3249
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
define %struct.Memory* @routine_addq__0xc08___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 3080
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -3081
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xc10___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 3088
  store i64 %6, i64* %RDI, align 8
  %7 = icmp ugt i64 %3, -3089
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
define %struct.Memory* @routine_addq__0xc08___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 3080
  store i64 %6, i64* %RDI, align 8
  %7 = icmp ugt i64 %3, -3081
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
define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_0x11bec__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72684
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
define %struct.Memory* @routine_cmpl_0x11bf0__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 72688
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
define %struct.Memory* @routine_jle_.L_433d3e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_433d55(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11bf0__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72688
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
define %struct.Memory* @routine_movl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RAX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x24__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_callq_.calloc_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__0x11860__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 71776
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
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
define %struct.Memory* @routine_jne_.L_433d8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c16f1___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c16f1_type* @G__0x4c16f1 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.no_mem_exit(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movl_MINUS0xac__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -172
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
define %struct.Memory* @routine_movq_0x11860__rsi____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 71776
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__eax___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x2___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %R8, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %R8, align 8
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
define %struct.Memory* @routine_movq__rdi__0x11860__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 71776
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
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
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movl_MINUS0xb0__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
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
define %struct.Memory* @routine_jge_.L_433e36(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imull_MINUS0x1c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RCX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x11860__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 71776
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx____rdx__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_jmpq_.L_433dcd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x40__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
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
define %struct.Memory* @routine_addl_0x11c18__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 72728
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__0x34__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 52
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x44__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 68
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
define %struct.Memory* @routine_addl_0x11c1c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 72732
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__ecx__0x3c__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 60
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_433feb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x34__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 52
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
define %struct.Memory* @routine_movslq_0x11bfc__rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72700
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
define %struct.Memory* @routine_movl__edx__MINUS0xb8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -184
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl_0x6cb920___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 7125280
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %9 = bitcast %union.anon* %8 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %13 = bitcast %union.anon* %12 to i32*
  %14 = load i32, i32* %13, align 8
  %15 = zext i32 %14 to i64
  %16 = inttoptr i64 %5 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = shl nuw i64 %15, 32
  %20 = or i64 %19, %11
  %21 = sdiv i64 %20, %18
  %22 = shl i64 %21, 32
  %23 = ashr exact i64 %22, 32
  %24 = icmp eq i64 %21, %23
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %block_400488
  %26 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:27:                                     ; preds = %block_400488
  %28 = srem i64 %20, %18
  %29 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0
  %30 = and i64 %21, 4294967295
  store i64 %30, i64* %29, align 8
  %31 = getelementptr inbounds %union.anon, %union.anon* %12, i64 0, i32 0
  %32 = and i64 %28, 4294967295
  store i64 %32, i64* %31, align 8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %27, %25
  %39 = phi %struct.Memory* [ %26, %25 ], [ %2, %27 ]
  ret %struct.Memory* %39
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xb8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
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
define %struct.Memory* @routine_movl__eax__MINUS0xbc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -188
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
define %struct.Memory* @routine_movl_MINUS0xbc__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -188
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDI, align 4
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
define %struct.Memory* @routine_movl__eax__0x38__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 56
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x3c__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl_MINUS0xb4__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -180
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
define %struct.Memory* @routine_movl__eax__MINUS0xc0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -192
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

define %struct.Memory* @routine_idivl_0x6cb930___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 7125296
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %9 = bitcast %union.anon* %8 to i32*
  %10 = load i32, i32* %9, align 8
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %13 = bitcast %union.anon* %12 to i32*
  %14 = load i32, i32* %13, align 8
  %15 = zext i32 %14 to i64
  %16 = inttoptr i64 %5 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = shl nuw i64 %15, 32
  %20 = or i64 %19, %11
  %21 = sdiv i64 %20, %18
  %22 = shl i64 %21, 32
  %23 = ashr exact i64 %22, 32
  %24 = icmp eq i64 %21, %23
  br i1 %24, label %27, label %25

; <label>:25:                                     ; preds = %block_400488
  %26 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:27:                                     ; preds = %block_400488
  %28 = srem i64 %20, %18
  %29 = getelementptr inbounds %union.anon, %union.anon* %8, i64 0, i32 0
  %30 = and i64 %21, 4294967295
  store i64 %30, i64* %29, align 8
  %31 = getelementptr inbounds %union.anon, %union.anon* %12, i64 0, i32 0
  %32 = and i64 %28, 4294967295
  store i64 %32, i64* %31, align 8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2MnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %27, %25
  %39 = phi %struct.Memory* [ %26, %25 ], [ %2, %27 ]
  ret %struct.Memory* %39
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc0__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -192
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
define %struct.Memory* @routine_movl__r9d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R9D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc4__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -196
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R10D, align 4
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
define %struct.Memory* @routine_movl__eax__0x40__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 64
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x40__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 64
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
define %struct.Memory* @routine_movl__eax__MINUS0xc8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -200
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc8__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -200
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
define %struct.Memory* @routine_movl__eax__MINUS0xcc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -204
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0xcc__rbp____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -204
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__ebx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %EBX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EBX, align 4
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
define %struct.Memory* @routine_movl__eax__0xcec__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 3308
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x44__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 68
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
define %struct.Memory* @routine_movl__eax__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -208
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd0__rbp____r14d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -208
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
define %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -212
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0xd4__rbp____r15d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -212
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__r15d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0
  %R15D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R15D, align 4
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
define %struct.Memory* @routine_movl__eax__0xce8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 3304
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43402d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x38__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xcec__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3308
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xce8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 3304
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x40__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 64
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
define %struct.Memory* @routine_movl__edx__0x44__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 68
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x11c18__rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 72728
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
define %struct.Memory* @routine_movl__eax__MINUS0xd8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -216
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xd8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -216
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
define %struct.Memory* @routine_movl__eax__0x11b14__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 72468
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x11c1c__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 72732
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
define %struct.Memory* @routine_movl__eax__0x11b1c__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 72476
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11b14__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72468
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
define %struct.Memory* @routine_imull_0x11b1c__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 72476
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = shl i64 %3, 32
  %11 = ashr exact i64 %10, 32
  %12 = sext i32 %9 to i64
  %13 = mul nsw i64 %12, %11
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  store i64 %15, i64* %RAX, align 8
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = icmp ne i64 %17, %13
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
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %28, align 1
  %29 = lshr i32 %14, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %19, i8* %32, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x11b28__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 72488
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x722cb0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x722cb0_type* @G_0x722cb0 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x47c__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 1148
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
define %struct.Memory* @routine_je_.L_434103(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x11b1c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 72476
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
define %struct.Memory* @routine_movl__ecx__MINUS0xdc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -220
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43411a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shrl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = lshr i32 %6, 31
  %8 = trunc i32 %7 to i8
  %9 = trunc i64 %3 to i8
  %10 = and i8 %9, 1
  %11 = lshr i64 %3, 1
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 2147483647
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %17 = and i32 %12, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  store i8 %21, i8* %16, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %24 = icmp eq i32 %13, 0
  %25 = zext i1 %24 to i8
  store i8 %25, i8* %23, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8, i8* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xdc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -220
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
define %struct.Memory* @routine_movl__0x278___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 632, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__eax__0x11b18__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, 72472
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x11b28__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 72488
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
define %struct.Memory* @routine_movq__rax__0x3758__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 14168
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_434172(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c1705___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c1705_type* @G__0x4c1705 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0xd8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 216
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
define %struct.Memory* @routine_je_.L_4341d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x11b28__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72488
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
define %struct.Memory* @routine_movq__rax__0x11868__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 71784
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4341cb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x4c171c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4c171c_type* @G__0x4c171c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4341d0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x68___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 104
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -105
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
define %struct.Memory* @routine_movl__eax__MINUS0xe0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -224
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xe0__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
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
define %struct.Memory* @routine_movl_0x3c__rdi____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0xe4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -228
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xe4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -228
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
define %struct.Memory* @routine_callq_.get_mem2Dint(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x70___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 112
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -113
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
define %struct.Memory* @routine_movl_0x34__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0xe8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -232
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -236
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xec__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -236
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
define %struct.Memory* @routine_movl__eax__MINUS0xf0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -240
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xf0__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
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
define %struct.Memory* @routine_movq__0x710a60___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x710a60_type* @G__0x710a60 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xc40___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 3136
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -3137
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
define %struct.Memory* @routine_movl__eax__MINUS0xf4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -244
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0xf8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -248
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xf8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
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
define %struct.Memory* @routine_movl__eax__MINUS0xfc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -252
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xfc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -252
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
define %struct.Memory* @routine_cmpl__0x0__0xb44__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 2884
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
define %struct.Memory* @routine_movl__eax__MINUS0x100__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -256
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4343f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x6cd878___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x6cd878_type* @G__0x6cd878 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xc40___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 3136
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -3137
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
define %struct.Memory* @routine_movl__0x4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x108__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x3c__rdi____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x10c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -268
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x108__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x10c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -268
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
define %struct.Memory* @routine_addq__0xc40___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 3136
  store i64 %6, i64* %RDI, align 8
  %7 = icmp ugt i64 %3, -3137
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
define %struct.Memory* @routine_movq_0x6cb900___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*), align 8
  store i64 %5, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x34__r8____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 52
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -272
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x3c__r8____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x114__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -276
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x114__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -276
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
define %struct.Memory* @routine_movl__eax__MINUS0x118__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -280
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x11c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -284
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x11c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -284
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
define %struct.Memory* @routine_movl__eax__MINUS0x120__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -288
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x80___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 128
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_0x11b28__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72488
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
define %struct.Memory* @routine_movl_0x11bf4__rcx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 72692
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x4___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
  %9 = icmp ugt i32 %6, -5
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
define %struct.Memory* @routine_movl__edi__MINUS0x124__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -292
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x124__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -292
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
define %struct.Memory* @routine_callq_.get_mem3Dint(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x128__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -296
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.CAVLC_init(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x12c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -300
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
define %struct.Memory* @routine_jge_.L_43450f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl__eax__MINUS0x130__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x130__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -304
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
define %struct.Memory* @routine_jge_.L_4344fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x68__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 104
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_movl__0xffffffff____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  store i32 -1, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x70__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_434484(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_434501(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_434451(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x58__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x134__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x134__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -308
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
define %struct.Memory* @routine_movl_0x3c__rcx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_movl__eax__MINUS0x138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb68__rcx____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 2920
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
define %struct.Memory* @routine_movl_MINUS0x138__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -312
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
define %struct.Memory* @routine_movl__edi__MINUS0x13c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -316
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x13c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -316
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
define %struct.Memory* @routine_callq_.RandomIntraInit(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.InitSEIMessages(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0xb6c__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 2924
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
define %struct.Memory* @routine_je_.L_4345d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xb74__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2932
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
define %struct.Memory* @routine_movl__ecx__0xb74__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 2932
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb78__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2936
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
define %struct.Memory* @routine_movl__ecx__0xb78__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 2936
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_434607(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xb70__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2928
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xb74__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2932
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xb78__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 2936
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x128___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 296
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -297
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
