; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x7ae438_type = type <{ [4 x i8] }>
%G_0xab0eec_type = type <{ [4 x i8] }>
%G_0xab0ef8_type = type <{ [8 x i8] }>
%G_0xab0f28_type = type <{ [1 x i8] }>
%G__0x57f693_type = type <{ [8 x i8] }>
%G__0x57f6a3_type = type <{ [8 x i8] }>
%G__0x57f6c1_type = type <{ [8 x i8] }>
%G__0x57f6db_type = type <{ [8 x i8] }>
%G__0x57f6f4_type = type <{ [8 x i8] }>
%G__0x57f718_type = type <{ [8 x i8] }>
%G__0x57f733_type = type <{ [8 x i8] }>
%G__0x57f770_type = type <{ [8 x i8] }>
%G__0x57f786_type = type <{ [8 x i8] }>
%G__0x57f7b3_type = type <{ [8 x i8] }>
%G__0x57f7d8_type = type <{ [8 x i8] }>
%G__0x57f7fd_type = type <{ [8 x i8] }>
%G__0x57f81b_type = type <{ [8 x i8] }>
%G__0x57f844_type = type <{ [8 x i8] }>
%G__0x57f888_type = type <{ [8 x i8] }>
%G__0x57f8c7_type = type <{ [8 x i8] }>
%G__0x57f90b_type = type <{ [8 x i8] }>
%G__0x57f930_type = type <{ [8 x i8] }>
%G__0x57f964_type = type <{ [8 x i8] }>
%G__0x57f975_type = type <{ [8 x i8] }>
%G__0x57f97f_type = type <{ [8 x i8] }>
%G__0x57f983_type = type <{ [8 x i8] }>
%G__0x57f9a0_type = type <{ [8 x i8] }>
%G__0x58898d_type = type <{ [8 x i8] }>
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
@G_0xab0eec = local_unnamed_addr global %G_0xab0eec_type zeroinitializer
@G_0xab0ef8 = local_unnamed_addr global %G_0xab0ef8_type zeroinitializer
@G_0xab0f28 = local_unnamed_addr global %G_0xab0f28_type zeroinitializer
@G__0x57f693 = global %G__0x57f693_type zeroinitializer
@G__0x57f6a3 = global %G__0x57f6a3_type zeroinitializer
@G__0x57f6c1 = global %G__0x57f6c1_type zeroinitializer
@G__0x57f6db = global %G__0x57f6db_type zeroinitializer
@G__0x57f6f4 = global %G__0x57f6f4_type zeroinitializer
@G__0x57f718 = global %G__0x57f718_type zeroinitializer
@G__0x57f733 = global %G__0x57f733_type zeroinitializer
@G__0x57f770 = global %G__0x57f770_type zeroinitializer
@G__0x57f786 = global %G__0x57f786_type zeroinitializer
@G__0x57f7b3 = global %G__0x57f7b3_type zeroinitializer
@G__0x57f7d8 = global %G__0x57f7d8_type zeroinitializer
@G__0x57f7fd = global %G__0x57f7fd_type zeroinitializer
@G__0x57f81b = global %G__0x57f81b_type zeroinitializer
@G__0x57f844 = global %G__0x57f844_type zeroinitializer
@G__0x57f888 = global %G__0x57f888_type zeroinitializer
@G__0x57f8c7 = global %G__0x57f8c7_type zeroinitializer
@G__0x57f90b = global %G__0x57f90b_type zeroinitializer
@G__0x57f930 = global %G__0x57f930_type zeroinitializer
@G__0x57f964 = global %G__0x57f964_type zeroinitializer
@G__0x57f975 = global %G__0x57f975_type zeroinitializer
@G__0x57f97f = global %G__0x57f97f_type zeroinitializer
@G__0x57f983 = global %G__0x57f983_type zeroinitializer
@G__0x57f9a0 = global %G__0x57f9a0_type zeroinitializer
@G__0x58898d = global %G__0x58898d_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @sprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_455460.compute_connection_distances(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409930.dump_stack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_474e00.showboard(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_45d150.print_connection_distances(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4141e0.find_origin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_45d4c0.check_self_atari(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_46a930.attack_and_defend(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_45d530.common_vulnerability(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f780.countlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f690.is_edge_vertex(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4046f0.sgftreeAddComment(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @find_connection_moves(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %R14.i103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %11 = load i64, i64* %R14.i103, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %RBX.i142 = getelementptr inbounds %union.anon, %union.anon* %15, i64 0, i32 0
  %16 = load i64, i64* %RBX.i142, align 8
  %17 = load i64, i64* %3, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* %3, align 8
  %19 = add i64 %7, -24
  %20 = inttoptr i64 %19 to i64*
  store i64 %16, i64* %20, align 8
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %7, -21528
  store i64 %22, i64* %6, align 8
  %23 = icmp ult i64 %19, 21504
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %25, align 1
  %26 = trunc i64 %22 to i32
  %27 = and i32 %26, 255
  %28 = tail call i32 @llvm.ctpop.i32(i32 %27)
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = xor i8 %30, 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %31, i8* %32, align 1
  %33 = xor i64 %19, %22
  %34 = lshr i64 %33, 4
  %35 = trunc i64 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i64 %22, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i64 %22, 63
  %42 = trunc i64 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i64 %19, 63
  %45 = xor i64 %41, %44
  %46 = add nuw nsw i64 %45, %44
  %47 = icmp eq i64 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i223 = getelementptr inbounds %union.anon, %union.anon* %50, i64 0, i32 0
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -9672
  store i64 %52, i64* %RAX.i223, align 8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i2277 = bitcast %union.anon* %53 to i32*
  %54 = getelementptr inbounds %union.anon, %union.anon* %53, i64 0, i32 0
  store i64 3, i64* %54, align 8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i2274 = bitcast %union.anon* %55 to i32*
  %56 = add i64 %51, -20
  %57 = load i32, i32* %EDI.i2274, align 4
  %58 = add i64 %21, 23
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %56 to i32*
  store i32 %57, i32* %59, align 4
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %60 to i32*
  %61 = load i64, i64* %RBP.i, align 8
  %62 = add i64 %61, -24
  %63 = load i32, i32* %ESI.i, align 4
  %64 = load i64, i64* %3, align 8
  %65 = add i64 %64, 3
  store i64 %65, i64* %3, align 8
  %66 = inttoptr i64 %62 to i32*
  store i32 %63, i32* %66, align 4
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i2269 = bitcast %union.anon* %67 to i32*
  %68 = load i64, i64* %RBP.i, align 8
  %69 = add i64 %68, -28
  %70 = load i32, i32* %EDX.i2269, align 4
  %71 = load i64, i64* %3, align 8
  %72 = add i64 %71, 3
  store i64 %72, i64* %3, align 8
  %73 = inttoptr i64 %69 to i32*
  store i32 %70, i32* %73, align 4
  %RCX.i2266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %74 = load i64, i64* %RBP.i, align 8
  %75 = add i64 %74, -40
  %76 = load i64, i64* %RCX.i2266, align 8
  %77 = load i64, i64* %3, align 8
  %78 = add i64 %77, 4
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %75 to i64*
  store i64 %76, i64* %79, align 8
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8.i2264 = getelementptr inbounds %union.anon, %union.anon* %80, i64 0, i32 0
  %81 = load i64, i64* %RBP.i, align 8
  %82 = add i64 %81, -48
  %83 = load i64, i64* %R8.i2264, align 8
  %84 = load i64, i64* %3, align 8
  %85 = add i64 %84, 4
  store i64 %85, i64* %3, align 8
  %86 = inttoptr i64 %82 to i64*
  store i64 %83, i64* %86, align 8
  %87 = load i64, i64* %RBP.i, align 8
  %88 = add i64 %87, -20
  %89 = load i64, i64* %3, align 8
  %90 = add i64 %89, 4
  store i64 %90, i64* %3, align 8
  %91 = inttoptr i64 %88 to i32*
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  store i64 %93, i64* %RCX.i2266, align 8
  %RDX.i2258 = getelementptr inbounds %union.anon, %union.anon* %67, i64 0, i32 0
  %94 = add nsw i64 %93, 12099168
  %95 = add i64 %89, 12
  store i64 %95, i64* %3, align 8
  %96 = inttoptr i64 %94 to i8*
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i64
  store i64 %98, i64* %RDX.i2258, align 8
  %99 = add i64 %87, -52
  %100 = zext i8 %97 to i32
  %101 = add i64 %89, 15
  store i64 %101, i64* %3, align 8
  %102 = inttoptr i64 %99 to i32*
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %R9D.i2277, align 4
  %104 = load i64, i64* %RBP.i, align 8
  %105 = add i64 %104, -52
  %106 = load i64, i64* %3, align 8
  %107 = add i64 %106, 4
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %105 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = sub i32 %103, %109
  %111 = zext i32 %110 to i64
  store i64 %111, i64* %54, align 8
  %112 = icmp ult i32 %103, %109
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %25, align 1
  %114 = and i32 %110, 255
  %115 = tail call i32 @llvm.ctpop.i32(i32 %114)
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  %118 = xor i8 %117, 1
  store i8 %118, i8* %32, align 1
  %119 = xor i32 %109, %103
  %120 = xor i32 %119, %110
  %121 = lshr i32 %120, 4
  %122 = trunc i32 %121 to i8
  %123 = and i8 %122, 1
  store i8 %123, i8* %37, align 1
  %124 = icmp eq i32 %110, 0
  %125 = zext i1 %124 to i8
  store i8 %125, i8* %40, align 1
  %126 = lshr i32 %110, 31
  %127 = trunc i32 %126 to i8
  store i8 %127, i8* %43, align 1
  %128 = lshr i32 %103, 31
  %129 = lshr i32 %109, 31
  %130 = xor i32 %129, %128
  %131 = xor i32 %126, %128
  %132 = add nuw nsw i32 %131, %130
  %133 = icmp eq i32 %132, 2
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %49, align 1
  %135 = add i64 %104, -56
  %136 = add i64 %106, 8
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %135 to i32*
  store i32 %110, i32* %137, align 4
  %138 = load i64, i64* %RBP.i, align 8
  %139 = add i64 %138, -28
  %140 = load i64, i64* %3, align 8
  %141 = add i64 %140, 3
  store i64 %141, i64* %3, align 8
  %142 = inttoptr i64 %139 to i32*
  %143 = load i32, i32* %142, align 4
  %144 = zext i32 %143 to i64
  store i64 %144, i64* %RDX.i2258, align 8
  %145 = add i64 %138, -52
  %146 = add i64 %140, 6
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %145 to i32*
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %143, %148
  %150 = zext i1 %149 to i8
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10B.i2240 = bitcast %union.anon* %151 to i8*
  store i8 %150, i8* %R10B.i2240, align 1
  store i8 0, i8* %25, align 1
  %152 = zext i1 %149 to i32
  %153 = tail call i32 @llvm.ctpop.i32(i32 %152)
  %154 = trunc i32 %153 to i8
  %155 = xor i8 %154, 1
  store i8 %155, i8* %32, align 1
  %156 = xor i8 %150, 1
  store i8 %156, i8* %40, align 1
  store i8 0, i8* %43, align 1
  store i8 0, i8* %49, align 1
  store i8 0, i8* %37, align 1
  %157 = add i64 %138, -60
  %158 = zext i1 %149 to i32
  %159 = add i64 %140, 21
  store i64 %159, i64* %3, align 8
  %160 = inttoptr i64 %157 to i32*
  store i32 %158, i32* %160, align 4
  %161 = load i64, i64* %RBP.i, align 8
  %162 = add i64 %161, -20740
  %163 = load i64, i64* %3, align 8
  %164 = add i64 %163, 10
  store i64 %164, i64* %3, align 8
  %165 = inttoptr i64 %162 to i32*
  store i32 0, i32* %165, align 4
  %166 = load i64, i64* %3, align 8
  %167 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i64 %167, i64* %RCX.i2266, align 8
  %168 = load i64, i64* %RBP.i, align 8
  %169 = add i64 %168, -20752
  %170 = add i64 %166, 15
  store i64 %170, i64* %3, align 8
  %171 = inttoptr i64 %169 to i64*
  store i64 %167, i64* %171, align 8
  %172 = load i64, i64* %3, align 8
  %173 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %174 = zext i32 %173 to i64
  store i64 %174, i64* %RDX.i2258, align 8
  %175 = load i64, i64* %RBP.i, align 8
  %176 = add i64 %175, -20756
  %177 = add i64 %172, 13
  store i64 %177, i64* %3, align 8
  %178 = inttoptr i64 %176 to i32*
  store i32 %173, i32* %178, align 4
  %179 = load i64, i64* %RBP.i, align 8
  %180 = add i64 %179, -20760
  %181 = load i64, i64* %3, align 8
  %182 = add i64 %181, 10
  store i64 %182, i64* %3, align 8
  %183 = inttoptr i64 %180 to i32*
  store i32 0, i32* %183, align 4
  %184 = load i64, i64* %RBP.i, align 8
  %185 = add i64 %184, -20764
  %186 = load i64, i64* %3, align 8
  %187 = add i64 %186, 10
  store i64 %187, i64* %3, align 8
  %188 = inttoptr i64 %185 to i32*
  store i32 0, i32* %188, align 4
  %189 = load i64, i64* %RBP.i, align 8
  %190 = add i64 %189, -20768
  %191 = load i64, i64* %3, align 8
  %192 = add i64 %191, 10
  store i64 %192, i64* %3, align 8
  %193 = inttoptr i64 %190 to i32*
  store i32 0, i32* %193, align 4
  %194 = load i64, i64* %RBP.i, align 8
  %195 = add i64 %194, -20772
  %196 = load i64, i64* %3, align 8
  %197 = add i64 %196, 10
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %195 to i32*
  store i32 0, i32* %198, align 4
  %199 = load i64, i64* %3, align 8
  store i64 0, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i32 0, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %RDI.i2208 = getelementptr inbounds %union.anon, %union.anon* %55, i64 0, i32 0
  %200 = load i64, i64* %RBP.i, align 8
  %201 = add i64 %200, -20
  %202 = add i64 %199, 26
  store i64 %202, i64* %3, align 8
  %203 = inttoptr i64 %201 to i32*
  %204 = load i32, i32* %203, align 4
  %205 = zext i32 %204 to i64
  store i64 %205, i64* %RDI.i2208, align 8
  %RSI.i2205 = getelementptr inbounds %union.anon, %union.anon* %60, i64 0, i32 0
  %206 = add i64 %200, -24
  %207 = add i64 %199, 29
  store i64 %207, i64* %3, align 8
  %208 = inttoptr i64 %206 to i32*
  %209 = load i32, i32* %208, align 4
  %210 = zext i32 %209 to i64
  store i64 %210, i64* %RSI.i2205, align 8
  %211 = load i64, i64* %RAX.i223, align 8
  store i64 %211, i64* %RDX.i2258, align 8
  %212 = add i64 %199, 8058
  %213 = add i64 %199, 37
  %214 = load i64, i64* %6, align 8
  %215 = add i64 %214, -8
  %216 = inttoptr i64 %215 to i64*
  store i64 %213, i64* %216, align 8
  store i64 %215, i64* %6, align 8
  store i64 %212, i64* %3, align 8
  %call2_453506 = tail call %struct.Memory* @sub_455460.compute_connection_distances(%struct.State* %0, i64 %212, %struct.Memory* %2)
  %217 = load i64, i64* %RBP.i, align 8
  %218 = add i64 %217, -19280
  %219 = load i64, i64* %3, align 8
  store i64 %218, i64* %RDX.i2258, align 8
  %220 = add i64 %217, -24
  %221 = add i64 %219, 10
  store i64 %221, i64* %3, align 8
  %222 = inttoptr i64 %220 to i32*
  %223 = load i32, i32* %222, align 4
  %224 = zext i32 %223 to i64
  store i64 %224, i64* %RDI.i2208, align 8
  %225 = add i64 %217, -20
  %226 = add i64 %219, 13
  store i64 %226, i64* %3, align 8
  %227 = inttoptr i64 %225 to i32*
  %228 = load i32, i32* %227, align 4
  %229 = zext i32 %228 to i64
  store i64 %229, i64* %RSI.i2205, align 8
  %230 = add i64 %219, 8021
  %231 = add i64 %219, 18
  %232 = load i64, i64* %6, align 8
  %233 = add i64 %232, -8
  %234 = inttoptr i64 %233 to i64*
  store i64 %231, i64* %234, align 8
  store i64 %233, i64* %6, align 8
  store i64 %230, i64* %3, align 8
  %call2_453518 = tail call %struct.Memory* @sub_455460.compute_connection_distances(%struct.State* %0, i64 %230, %struct.Memory* %call2_453506)
  %235 = load i64, i64* %3, align 8
  store i64 1, i64* %RSI.i2205, align 8
  %236 = load i64, i64* %RBP.i, align 8
  %237 = add i64 %236, -20784
  store i64 %237, i64* %RDX.i2258, align 8
  %238 = add i64 %236, -20
  %239 = add i64 %235, 15
  store i64 %239, i64* %3, align 8
  %240 = inttoptr i64 %238 to i32*
  %241 = load i32, i32* %240, align 4
  %242 = zext i32 %241 to i64
  store i64 %242, i64* %RDI.i2208, align 8
  %243 = add i64 %235, -277725
  %244 = add i64 %235, 20
  %245 = load i64, i64* %6, align 8
  %246 = add i64 %245, -8
  %247 = inttoptr i64 %246 to i64*
  store i64 %244, i64* %247, align 8
  store i64 %246, i64* %6, align 8
  store i64 %243, i64* %3, align 8
  %call2_45352c = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64 %243, %struct.Memory* %call2_453518)
  %EAX.i2180 = bitcast %union.anon* %50 to i32*
  %248 = load i32, i32* %EAX.i2180, align 4
  %249 = load i64, i64* %3, align 8
  %250 = add i32 %248, -1
  %251 = icmp eq i32 %248, 0
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %25, align 1
  %253 = and i32 %250, 255
  %254 = tail call i32 @llvm.ctpop.i32(i32 %253)
  %255 = trunc i32 %254 to i8
  %256 = and i8 %255, 1
  %257 = xor i8 %256, 1
  store i8 %257, i8* %32, align 1
  %258 = xor i32 %250, %248
  %259 = lshr i32 %258, 4
  %260 = trunc i32 %259 to i8
  %261 = and i8 %260, 1
  store i8 %261, i8* %37, align 1
  %262 = icmp eq i32 %250, 0
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %40, align 1
  %264 = lshr i32 %250, 31
  %265 = trunc i32 %264 to i8
  store i8 %265, i8* %43, align 1
  %266 = lshr i32 %248, 31
  %267 = xor i32 %264, %266
  %268 = add nuw nsw i32 %267, %266
  %269 = icmp eq i32 %268, 2
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %49, align 1
  %.v245 = select i1 %262, i64 9, i64 95
  %271 = add i64 %249, %.v245
  store i64 %271, i64* %3, align 8
  br i1 %262, label %block_45353a, label %block_.L_453590

block_45353a:                                     ; preds = %entry
  %272 = load i64, i64* %RBP.i, align 8
  %273 = add i64 %272, -20784
  %274 = add i64 %271, 7
  store i64 %274, i64* %3, align 8
  %275 = inttoptr i64 %273 to i32*
  %276 = load i32, i32* %275, align 4
  %277 = sext i32 %276 to i64
  store i64 %277, i64* %RAX.i223, align 8
  %278 = shl nsw i64 %277, 2
  %279 = add i64 %272, -9672
  %280 = add i64 %279, %278
  %281 = add i64 %271, 18
  store i64 %281, i64* %3, align 8
  %282 = inttoptr i64 %280 to i32*
  store i32 0, i32* %282, align 4
  %283 = load i64, i64* %RBP.i, align 8
  %284 = add i64 %283, -20784
  %285 = load i64, i64* %3, align 8
  %286 = add i64 %285, 7
  store i64 %286, i64* %3, align 8
  %287 = inttoptr i64 %284 to i32*
  %288 = load i32, i32* %287, align 4
  %289 = sext i32 %288 to i64
  store i64 %289, i64* %RAX.i223, align 8
  %290 = shl nsw i64 %289, 2
  %291 = add i64 %283, -6472
  %292 = add i64 %291, %290
  %293 = add i64 %285, 18
  store i64 %293, i64* %3, align 8
  %294 = inttoptr i64 %292 to i32*
  store i32 0, i32* %294, align 4
  %295 = load i64, i64* %RBP.i, align 8
  %296 = add i64 %295, -20
  %297 = load i64, i64* %3, align 8
  %298 = add i64 %297, 4
  store i64 %298, i64* %3, align 8
  %299 = inttoptr i64 %296 to i32*
  %300 = load i32, i32* %299, align 4
  %301 = sext i32 %300 to i64
  store i64 %301, i64* %RAX.i223, align 8
  %302 = shl nsw i64 %301, 2
  %303 = add i64 %295, -19280
  %304 = add i64 %303, %302
  %305 = add i64 %297, 11
  store i64 %305, i64* %3, align 8
  %306 = inttoptr i64 %304 to i32*
  %307 = load i32, i32* %306, align 4
  %308 = zext i32 %307 to i64
  store i64 %308, i64* %RCX.i2266, align 8
  %309 = add i64 %295, -20784
  %310 = add i64 %297, 18
  store i64 %310, i64* %3, align 8
  %311 = inttoptr i64 %309 to i32*
  %312 = load i32, i32* %311, align 4
  %313 = sext i32 %312 to i64
  store i64 %313, i64* %RAX.i223, align 8
  %314 = shl nsw i64 %313, 2
  %315 = add i64 %303, %314
  %316 = add i64 %297, 25
  store i64 %316, i64* %3, align 8
  %317 = inttoptr i64 %315 to i32*
  store i32 %307, i32* %317, align 4
  %318 = load i64, i64* %RBP.i, align 8
  %319 = add i64 %318, -20
  %320 = load i64, i64* %3, align 8
  %321 = add i64 %320, 4
  store i64 %321, i64* %3, align 8
  %322 = inttoptr i64 %319 to i32*
  %323 = load i32, i32* %322, align 4
  %324 = sext i32 %323 to i64
  store i64 %324, i64* %RAX.i223, align 8
  %325 = shl nsw i64 %324, 2
  %326 = add i64 %318, -6472
  %327 = add i64 %326, %325
  %328 = add i64 %320, 11
  store i64 %328, i64* %3, align 8
  %329 = inttoptr i64 %327 to i32*
  %330 = load i32, i32* %329, align 4
  %331 = zext i32 %330 to i64
  store i64 %331, i64* %RCX.i2266, align 8
  %332 = add i64 %318, -20784
  %333 = add i64 %320, 18
  store i64 %333, i64* %3, align 8
  %334 = inttoptr i64 %332 to i32*
  %335 = load i32, i32* %334, align 4
  %336 = sext i32 %335 to i64
  store i64 %336, i64* %RAX.i223, align 8
  %337 = shl nsw i64 %336, 2
  %338 = add i64 %318, -16080
  %339 = add i64 %338, %337
  %340 = add i64 %320, 25
  store i64 %340, i64* %3, align 8
  %341 = inttoptr i64 %339 to i32*
  store i32 %330, i32* %341, align 4
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_453590

block_.L_453590:                                  ; preds = %entry, %block_45353a
  %342 = phi i64 [ %.pre, %block_45353a ], [ %271, %entry ]
  store i64 1, i64* %RSI.i2205, align 8
  %343 = load i64, i64* %RBP.i, align 8
  %344 = add i64 %343, -20784
  store i64 %344, i64* %RDX.i2258, align 8
  %345 = add i64 %343, -24
  %346 = add i64 %342, 15
  store i64 %346, i64* %3, align 8
  %347 = inttoptr i64 %345 to i32*
  %348 = load i32, i32* %347, align 4
  %349 = zext i32 %348 to i64
  store i64 %349, i64* %RDI.i2208, align 8
  %350 = add i64 %342, -277840
  %351 = add i64 %342, 20
  %352 = load i64, i64* %6, align 8
  %353 = add i64 %352, -8
  %354 = inttoptr i64 %353 to i64*
  store i64 %351, i64* %354, align 8
  store i64 %353, i64* %6, align 8
  store i64 %350, i64* %3, align 8
  %call2_45359f = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* nonnull %0, i64 %350, %struct.Memory* %call2_45352c)
  %355 = load i32, i32* %EAX.i2180, align 4
  %356 = load i64, i64* %3, align 8
  %357 = add i32 %355, -1
  %358 = icmp eq i32 %355, 0
  %359 = zext i1 %358 to i8
  store i8 %359, i8* %25, align 1
  %360 = and i32 %357, 255
  %361 = tail call i32 @llvm.ctpop.i32(i32 %360)
  %362 = trunc i32 %361 to i8
  %363 = and i8 %362, 1
  %364 = xor i8 %363, 1
  store i8 %364, i8* %32, align 1
  %365 = xor i32 %357, %355
  %366 = lshr i32 %365, 4
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  store i8 %368, i8* %37, align 1
  %369 = icmp eq i32 %357, 0
  %370 = zext i1 %369 to i8
  store i8 %370, i8* %40, align 1
  %371 = lshr i32 %357, 31
  %372 = trunc i32 %371 to i8
  store i8 %372, i8* %43, align 1
  %373 = lshr i32 %355, 31
  %374 = xor i32 %371, %373
  %375 = add nuw nsw i32 %374, %373
  %376 = icmp eq i32 %375, 2
  %377 = zext i1 %376 to i8
  store i8 %377, i8* %49, align 1
  %.v246 = select i1 %369, i64 9, i64 52
  %378 = add i64 %356, %.v246
  store i64 %378, i64* %3, align 8
  br i1 %369, label %block_4535ad, label %block_.L_4535d8

block_4535ad:                                     ; preds = %block_.L_453590
  %379 = load i64, i64* %RBP.i, align 8
  %380 = add i64 %379, -20784
  %381 = add i64 %378, 7
  store i64 %381, i64* %3, align 8
  %382 = inttoptr i64 %380 to i32*
  %383 = load i32, i32* %382, align 4
  %384 = sext i32 %383 to i64
  store i64 %384, i64* %RAX.i223, align 8
  %385 = shl nsw i64 %384, 2
  %386 = add i64 %379, -19280
  %387 = add i64 %386, %385
  %388 = add i64 %378, 18
  store i64 %388, i64* %3, align 8
  %389 = inttoptr i64 %387 to i32*
  store i32 0, i32* %389, align 4
  %390 = load i64, i64* %RBP.i, align 8
  %391 = add i64 %390, -24
  %392 = load i64, i64* %3, align 8
  %393 = add i64 %392, 4
  store i64 %393, i64* %3, align 8
  %394 = inttoptr i64 %391 to i32*
  %395 = load i32, i32* %394, align 4
  %396 = sext i32 %395 to i64
  store i64 %396, i64* %RAX.i223, align 8
  %397 = shl nsw i64 %396, 2
  %398 = add i64 %390, -9672
  %399 = add i64 %398, %397
  %400 = add i64 %392, 11
  store i64 %400, i64* %3, align 8
  %401 = inttoptr i64 %399 to i32*
  %402 = load i32, i32* %401, align 4
  %403 = zext i32 %402 to i64
  store i64 %403, i64* %RCX.i2266, align 8
  %404 = add i64 %390, -20784
  %405 = add i64 %392, 18
  store i64 %405, i64* %3, align 8
  %406 = inttoptr i64 %404 to i32*
  %407 = load i32, i32* %406, align 4
  %408 = sext i32 %407 to i64
  store i64 %408, i64* %RAX.i223, align 8
  %409 = shl nsw i64 %408, 2
  %410 = add i64 %398, %409
  %411 = add i64 %392, 25
  store i64 %411, i64* %3, align 8
  %412 = inttoptr i64 %410 to i32*
  store i32 %402, i32* %412, align 4
  %.pre146 = load i64, i64* %3, align 8
  br label %block_.L_4535d8

block_.L_4535d8:                                  ; preds = %block_.L_453590, %block_4535ad
  %413 = phi i64 [ %.pre146, %block_4535ad ], [ %378, %block_.L_453590 ]
  %414 = load i64, i64* %RBP.i, align 8
  %415 = add i64 %414, -24
  %416 = add i64 %413, 4
  store i64 %416, i64* %3, align 8
  %417 = inttoptr i64 %415 to i32*
  %418 = load i32, i32* %417, align 4
  %419 = sext i32 %418 to i64
  store i64 %419, i64* %RAX.i223, align 8
  %420 = shl nsw i64 %419, 2
  %421 = add i64 %414, -9672
  %422 = add i64 %421, %420
  %423 = add i64 %413, 11
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %422 to i32*
  %425 = load i32, i32* %424, align 4
  %426 = zext i32 %425 to i64
  store i64 %426, i64* %RCX.i2266, align 8
  %427 = add i64 %414, -20776
  %428 = add i64 %413, 17
  store i64 %428, i64* %3, align 8
  %429 = inttoptr i64 %427 to i32*
  store i32 %425, i32* %429, align 4
  %430 = load i64, i64* %RBP.i, align 8
  %431 = add i64 %430, -20
  %432 = load i64, i64* %3, align 8
  %433 = add i64 %432, 4
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %431 to i32*
  %435 = load i32, i32* %434, align 4
  %436 = sext i32 %435 to i64
  store i64 %436, i64* %RAX.i223, align 8
  %437 = shl nsw i64 %436, 2
  %438 = add i64 %430, -19280
  %439 = add i64 %438, %437
  %440 = add i64 %432, 11
  store i64 %440, i64* %3, align 8
  %441 = inttoptr i64 %439 to i32*
  %442 = load i32, i32* %441, align 4
  %443 = zext i32 %442 to i64
  store i64 %443, i64* %RCX.i2266, align 8
  %444 = add i64 %430, -20780
  %445 = add i64 %432, 17
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %444 to i32*
  store i32 %442, i32* %446, align 4
  %447 = load i64, i64* %RBP.i, align 8
  %448 = add i64 %447, -20776
  %449 = load i64, i64* %3, align 8
  %450 = add i64 %449, 6
  store i64 %450, i64* %3, align 8
  %451 = inttoptr i64 %448 to i32*
  %452 = load i32, i32* %451, align 4
  %453 = zext i32 %452 to i64
  store i64 %453, i64* %RCX.i2266, align 8
  %454 = add i64 %447, -20780
  %455 = add i64 %449, 12
  store i64 %455, i64* %3, align 8
  %456 = inttoptr i64 %454 to i32*
  %457 = load i32, i32* %456, align 4
  %458 = sub i32 %452, %457
  %459 = icmp ult i32 %452, %457
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %25, align 1
  %461 = and i32 %458, 255
  %462 = tail call i32 @llvm.ctpop.i32(i32 %461)
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 1
  %465 = xor i8 %464, 1
  store i8 %465, i8* %32, align 1
  %466 = xor i32 %457, %452
  %467 = xor i32 %466, %458
  %468 = lshr i32 %467, 4
  %469 = trunc i32 %468 to i8
  %470 = and i8 %469, 1
  store i8 %470, i8* %37, align 1
  %471 = icmp eq i32 %458, 0
  %472 = zext i1 %471 to i8
  store i8 %472, i8* %40, align 1
  %473 = lshr i32 %458, 31
  %474 = trunc i32 %473 to i8
  store i8 %474, i8* %43, align 1
  %475 = lshr i32 %452, 31
  %476 = lshr i32 %457, 31
  %477 = xor i32 %476, %475
  %478 = xor i32 %473, %475
  %479 = add nuw nsw i32 %478, %477
  %480 = icmp eq i32 %479, 2
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %49, align 1
  %482 = icmp ne i8 %474, 0
  %483 = xor i1 %482, %480
  %.v247 = select i1 %483, i64 18, i64 35
  %484 = add i64 %449, %.v247
  %485 = add i64 %484, 6
  store i64 %485, i64* %3, align 8
  br i1 %483, label %block_45360c, label %block_.L_45361d

block_45360c:                                     ; preds = %block_.L_4535d8
  %486 = load i32, i32* %451, align 4
  %487 = zext i32 %486 to i64
  store i64 %487, i64* %RAX.i223, align 8
  %488 = add i64 %447, -21408
  %489 = add i64 %484, 12
  store i64 %489, i64* %3, align 8
  %490 = inttoptr i64 %488 to i32*
  store i32 %486, i32* %490, align 4
  %491 = load i64, i64* %3, align 8
  %492 = add i64 %491, 17
  store i64 %492, i64* %3, align 8
  br label %block_.L_453629

block_.L_45361d:                                  ; preds = %block_.L_4535d8
  %493 = load i32, i32* %456, align 4
  %494 = zext i32 %493 to i64
  store i64 %494, i64* %RAX.i223, align 8
  %495 = add i64 %447, -21408
  %496 = add i64 %484, 12
  store i64 %496, i64* %3, align 8
  %497 = inttoptr i64 %495 to i32*
  store i32 %493, i32* %497, align 4
  %.pre147 = load i64, i64* %3, align 8
  br label %block_.L_453629

block_.L_453629:                                  ; preds = %block_.L_45361d, %block_45360c
  %498 = phi i64 [ %.pre147, %block_.L_45361d ], [ %492, %block_45360c ]
  %499 = load i64, i64* %RBP.i, align 8
  %500 = add i64 %499, -21408
  %501 = add i64 %498, 6
  store i64 %501, i64* %3, align 8
  %502 = inttoptr i64 %500 to i32*
  %503 = load i32, i32* %502, align 4
  %504 = zext i32 %503 to i64
  store i64 %504, i64* %RAX.i223, align 8
  %505 = add i64 %499, -48
  %506 = add i64 %498, 10
  store i64 %506, i64* %3, align 8
  %507 = inttoptr i64 %505 to i64*
  %508 = load i64, i64* %507, align 8
  store i64 %508, i64* %RCX.i2266, align 8
  %509 = add i64 %498, 12
  store i64 %509, i64* %3, align 8
  %510 = inttoptr i64 %508 to i32*
  store i32 %503, i32* %510, align 4
  %511 = load i64, i64* %3, align 8
  %512 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %25, align 1
  %513 = and i32 %512, 255
  %514 = tail call i32 @llvm.ctpop.i32(i32 %513)
  %515 = trunc i32 %514 to i8
  %516 = and i8 %515, 1
  %517 = xor i8 %516, 1
  store i8 %517, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %518 = icmp eq i32 %512, 0
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %40, align 1
  %520 = lshr i32 %512, 31
  %521 = trunc i32 %520 to i8
  store i8 %521, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %522 = icmp ne i8 %521, 0
  %523 = or i1 %518, %522
  %.v248 = select i1 %523, i64 79, i64 14
  %524 = add i64 %511, %.v248
  store i64 %524, i64* %3, align 8
  br i1 %523, label %block_.L_453629.block_.L_453684_crit_edge, label %block_453643

block_.L_453629.block_.L_453684_crit_edge:        ; preds = %block_.L_453629
  %.pre218 = bitcast %union.anon* %50 to i8*
  br label %block_.L_453684

block_453643:                                     ; preds = %block_.L_453629
  store i64 ptrtoint (%G__0x57f693_type* @G__0x57f693 to i64), i64* %RDI.i2208, align 8
  %525 = load i64, i64* %RBP.i, align 8
  %526 = add i64 %525, -20756
  %527 = add i64 %524, 16
  store i64 %527, i64* %3, align 8
  %528 = inttoptr i64 %526 to i32*
  %529 = load i32, i32* %528, align 4
  %530 = zext i32 %529 to i64
  store i64 %530, i64* %RSI.i2205, align 8
  %AL.i2049 = bitcast %union.anon* %50 to i8*
  store i8 0, i8* %AL.i2049, align 1
  %531 = add i64 %524, -6291
  %532 = add i64 %524, 23
  %533 = load i64, i64* %6, align 8
  %534 = add i64 %533, -8
  %535 = inttoptr i64 %534 to i64*
  store i64 %532, i64* %535, align 8
  store i64 %534, i64* %6, align 8
  store i64 %531, i64* %3, align 8
  %call2_453655 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %531, %struct.Memory* %call2_45359f)
  %536 = load i64, i64* %RBP.i, align 8
  %537 = add i64 %536, -21412
  %538 = load i32, i32* %EAX.i2180, align 4
  %539 = load i64, i64* %3, align 8
  %540 = add i64 %539, 6
  store i64 %540, i64* %3, align 8
  %541 = inttoptr i64 %537 to i32*
  store i32 %538, i32* %541, align 4
  %542 = load i64, i64* %3, align 8
  %543 = add i64 %542, -302384
  %544 = add i64 %542, 5
  %545 = load i64, i64* %6, align 8
  %546 = add i64 %545, -8
  %547 = inttoptr i64 %546 to i64*
  store i64 %544, i64* %547, align 8
  store i64 %546, i64* %6, align 8
  store i64 %543, i64* %3, align 8
  %call2_453660 = tail call %struct.Memory* @sub_409930.dump_stack(%struct.State* nonnull %0, i64 %543, %struct.Memory* %call2_453655)
  %548 = load i64, i64* %3, align 8
  store i64 0, i64* %RDI.i2208, align 8
  store i8 0, i8* %25, align 1
  store i8 1, i8* %32, align 1
  store i8 1, i8* %40, align 1
  store i8 0, i8* %43, align 1
  store i8 0, i8* %49, align 1
  store i8 0, i8* %37, align 1
  %549 = add i64 %548, 137115
  %550 = add i64 %548, 7
  %551 = load i64, i64* %6, align 8
  %552 = add i64 %551, -8
  %553 = inttoptr i64 %552 to i64*
  store i64 %550, i64* %553, align 8
  store i64 %552, i64* %6, align 8
  store i64 %549, i64* %3, align 8
  %call2_453667 = tail call %struct.Memory* @sub_474e00.showboard(%struct.State* nonnull %0, i64 %549, %struct.Memory* %call2_453660)
  %554 = load i64, i64* %RBP.i, align 8
  %555 = add i64 %554, -9672
  %556 = load i64, i64* %3, align 8
  store i64 %555, i64* %RDI.i2208, align 8
  %557 = add i64 %556, 39652
  %558 = add i64 %556, 12
  %559 = load i64, i64* %6, align 8
  %560 = add i64 %559, -8
  %561 = inttoptr i64 %560 to i64*
  store i64 %558, i64* %561, align 8
  store i64 %560, i64* %6, align 8
  store i64 %557, i64* %3, align 8
  %call2_453673 = tail call %struct.Memory* @sub_45d150.print_connection_distances(%struct.State* nonnull %0, i64 %557, %struct.Memory* %call2_453667)
  %562 = load i64, i64* %RBP.i, align 8
  %563 = add i64 %562, -19280
  %564 = load i64, i64* %3, align 8
  store i64 %563, i64* %RDI.i2208, align 8
  %565 = add i64 %564, 39640
  %566 = add i64 %564, 12
  %567 = load i64, i64* %6, align 8
  %568 = add i64 %567, -8
  %569 = inttoptr i64 %568 to i64*
  store i64 %566, i64* %569, align 8
  store i64 %568, i64* %6, align 8
  store i64 %565, i64* %3, align 8
  %call2_45367f = tail call %struct.Memory* @sub_45d150.print_connection_distances(%struct.State* nonnull %0, i64 %565, %struct.Memory* %call2_453673)
  %.pre148 = load i64, i64* %3, align 8
  br label %block_.L_453684

block_.L_453684:                                  ; preds = %block_.L_453629.block_.L_453684_crit_edge, %block_453643
  %AL.i930.pre-phi = phi i8* [ %.pre218, %block_.L_453629.block_.L_453684_crit_edge ], [ %AL.i2049, %block_453643 ]
  %570 = phi i64 [ %524, %block_.L_453629.block_.L_453684_crit_edge ], [ %.pre148, %block_453643 ]
  %MEMORY.3 = phi %struct.Memory* [ %call2_45359f, %block_.L_453629.block_.L_453684_crit_edge ], [ %call2_45367f, %block_453643 ]
  %571 = load i64, i64* %RBP.i, align 8
  %572 = add i64 %571, -64
  %573 = add i64 %570, 7
  store i64 %573, i64* %3, align 8
  %574 = inttoptr i64 %572 to i32*
  store i32 0, i32* %574, align 4
  %.pre149 = load i64, i64* %3, align 8
  br label %block_.L_45368b

block_.L_45368b:                                  ; preds = %block_.L_45418d, %block_.L_453684
  %575 = phi i64 [ %.pre149, %block_.L_453684 ], [ %3821, %block_.L_45418d ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.3, %block_.L_453684 ], [ %MEMORY.57, %block_.L_45418d ]
  %576 = load i64, i64* %RBP.i, align 8
  %577 = add i64 %576, -64
  %578 = add i64 %575, 3
  store i64 %578, i64* %3, align 8
  %579 = inttoptr i64 %577 to i32*
  %580 = load i32, i32* %579, align 4
  %581 = zext i32 %580 to i64
  store i64 %581, i64* %RAX.i223, align 8
  %582 = add i64 %576, -68
  %583 = add i64 %575, 6
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %582 to i32*
  %585 = load i32, i32* %584, align 4
  %586 = sub i32 %580, %585
  %587 = icmp ult i32 %580, %585
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %25, align 1
  %589 = and i32 %586, 255
  %590 = tail call i32 @llvm.ctpop.i32(i32 %589)
  %591 = trunc i32 %590 to i8
  %592 = and i8 %591, 1
  %593 = xor i8 %592, 1
  store i8 %593, i8* %32, align 1
  %594 = xor i32 %585, %580
  %595 = xor i32 %594, %586
  %596 = lshr i32 %595, 4
  %597 = trunc i32 %596 to i8
  %598 = and i8 %597, 1
  store i8 %598, i8* %37, align 1
  %599 = icmp eq i32 %586, 0
  %600 = zext i1 %599 to i8
  store i8 %600, i8* %40, align 1
  %601 = lshr i32 %586, 31
  %602 = trunc i32 %601 to i8
  store i8 %602, i8* %43, align 1
  %603 = lshr i32 %580, 31
  %604 = lshr i32 %585, 31
  %605 = xor i32 %604, %603
  %606 = xor i32 %601, %603
  %607 = add nuw nsw i32 %606, %605
  %608 = icmp eq i32 %607, 2
  %609 = zext i1 %608 to i8
  store i8 %609, i8* %49, align 1
  %610 = icmp ne i8 %602, 0
  %611 = xor i1 %610, %608
  %.v249 = select i1 %611, i64 12, i64 2832
  %612 = add i64 %575, %.v249
  store i64 %612, i64* %3, align 8
  br i1 %611, label %block_453697, label %block_.L_45419b

block_453697:                                     ; preds = %block_.L_45368b
  %613 = add i64 %612, 4
  store i64 %613, i64* %3, align 8
  %614 = load i32, i32* %579, align 4
  %615 = sext i32 %614 to i64
  store i64 %615, i64* %RAX.i223, align 8
  %616 = shl nsw i64 %615, 2
  %617 = add i64 %576, -1672
  %618 = add i64 %617, %616
  %619 = add i64 %612, 11
  store i64 %619, i64* %3, align 8
  %620 = inttoptr i64 %618 to i32*
  %621 = load i32, i32* %620, align 4
  %622 = zext i32 %621 to i64
  store i64 %622, i64* %RCX.i2266, align 8
  %623 = add i64 %576, -20800
  %624 = add i64 %612, 17
  store i64 %624, i64* %3, align 8
  %625 = inttoptr i64 %623 to i32*
  store i32 %621, i32* %625, align 4
  %626 = load i64, i64* %RBP.i, align 8
  %627 = add i64 %626, -20800
  %628 = load i64, i64* %3, align 8
  %629 = add i64 %628, 7
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %627 to i32*
  %631 = load i32, i32* %630, align 4
  %632 = sext i32 %631 to i64
  store i64 %632, i64* %RAX.i223, align 8
  %633 = shl nsw i64 %632, 2
  %634 = add i64 %626, -9672
  %635 = add i64 %634, %633
  %636 = add i64 %628, 14
  store i64 %636, i64* %3, align 8
  %637 = inttoptr i64 %635 to i32*
  %638 = load i32, i32* %637, align 4
  %639 = zext i32 %638 to i64
  store i64 %639, i64* %RCX.i2266, align 8
  %640 = add i64 %626, -20804
  %641 = add i64 %628, 20
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %640 to i32*
  store i32 %638, i32* %642, align 4
  %643 = load i64, i64* %RBP.i, align 8
  %644 = add i64 %643, -20800
  %645 = load i64, i64* %3, align 8
  %646 = add i64 %645, 7
  store i64 %646, i64* %3, align 8
  %647 = inttoptr i64 %644 to i32*
  %648 = load i32, i32* %647, align 4
  %649 = sext i32 %648 to i64
  store i64 %649, i64* %RAX.i223, align 8
  %650 = shl nsw i64 %649, 2
  %651 = add i64 %643, -8072
  %652 = add i64 %651, %650
  %653 = add i64 %645, 14
  store i64 %653, i64* %3, align 8
  %654 = inttoptr i64 %652 to i32*
  %655 = load i32, i32* %654, align 4
  %656 = zext i32 %655 to i64
  store i64 %656, i64* %RCX.i2266, align 8
  %657 = add i64 %643, -20808
  %658 = add i64 %645, 20
  store i64 %658, i64* %3, align 8
  %659 = inttoptr i64 %657 to i32*
  store i32 %655, i32* %659, align 4
  %660 = load i64, i64* %RBP.i, align 8
  %661 = add i64 %660, -20800
  %662 = load i64, i64* %3, align 8
  %663 = add i64 %662, 7
  store i64 %663, i64* %3, align 8
  %664 = inttoptr i64 %661 to i32*
  %665 = load i32, i32* %664, align 4
  %666 = sext i32 %665 to i64
  store i64 %666, i64* %RAX.i223, align 8
  %667 = shl nsw i64 %666, 2
  %668 = add i64 %660, -19280
  %669 = add i64 %668, %667
  %670 = add i64 %662, 14
  store i64 %670, i64* %3, align 8
  %671 = inttoptr i64 %669 to i32*
  %672 = load i32, i32* %671, align 4
  %673 = zext i32 %672 to i64
  store i64 %673, i64* %RCX.i2266, align 8
  %674 = add i64 %660, -20812
  %675 = add i64 %662, 20
  store i64 %675, i64* %3, align 8
  %676 = inttoptr i64 %674 to i32*
  store i32 %672, i32* %676, align 4
  %677 = load i64, i64* %RBP.i, align 8
  %678 = add i64 %677, -20800
  %679 = load i64, i64* %3, align 8
  %680 = add i64 %679, 7
  store i64 %680, i64* %3, align 8
  %681 = inttoptr i64 %678 to i32*
  %682 = load i32, i32* %681, align 4
  %683 = sext i32 %682 to i64
  store i64 %683, i64* %RAX.i223, align 8
  %684 = shl nsw i64 %683, 2
  %685 = add i64 %677, -17680
  %686 = add i64 %685, %684
  %687 = add i64 %679, 14
  store i64 %687, i64* %3, align 8
  %688 = inttoptr i64 %686 to i32*
  %689 = load i32, i32* %688, align 4
  %690 = zext i32 %689 to i64
  store i64 %690, i64* %RCX.i2266, align 8
  %691 = add i64 %677, -20816
  %692 = add i64 %679, 20
  store i64 %692, i64* %3, align 8
  %693 = inttoptr i64 %691 to i32*
  store i32 %689, i32* %693, align 4
  %694 = load i64, i64* %RBP.i, align 8
  %695 = add i64 %694, -20804
  %696 = load i64, i64* %3, align 8
  %697 = add i64 %696, 6
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %695 to i32*
  %699 = load i32, i32* %698, align 4
  %700 = zext i32 %699 to i64
  store i64 %700, i64* %RCX.i2266, align 8
  %701 = add i64 %694, -20808
  %702 = add i64 %696, 12
  store i64 %702, i64* %3, align 8
  %703 = inttoptr i64 %701 to i32*
  %704 = load i32, i32* %703, align 4
  %705 = sub i32 %699, %704
  %706 = zext i32 %705 to i64
  store i64 %706, i64* %RCX.i2266, align 8
  %707 = icmp ult i32 %699, %704
  %708 = zext i1 %707 to i8
  store i8 %708, i8* %25, align 1
  %709 = and i32 %705, 255
  %710 = tail call i32 @llvm.ctpop.i32(i32 %709)
  %711 = trunc i32 %710 to i8
  %712 = and i8 %711, 1
  %713 = xor i8 %712, 1
  store i8 %713, i8* %32, align 1
  %714 = xor i32 %704, %699
  %715 = xor i32 %714, %705
  %716 = lshr i32 %715, 4
  %717 = trunc i32 %716 to i8
  %718 = and i8 %717, 1
  store i8 %718, i8* %37, align 1
  %719 = icmp eq i32 %705, 0
  %720 = zext i1 %719 to i8
  store i8 %720, i8* %40, align 1
  %721 = lshr i32 %705, 31
  %722 = trunc i32 %721 to i8
  store i8 %722, i8* %43, align 1
  %723 = lshr i32 %699, 31
  %724 = lshr i32 %704, 31
  %725 = xor i32 %724, %723
  %726 = xor i32 %721, %723
  %727 = add nuw nsw i32 %726, %725
  %728 = icmp eq i32 %727, 2
  %729 = zext i1 %728 to i8
  store i8 %729, i8* %49, align 1
  %730 = add i64 %694, -20812
  %731 = add i64 %696, 18
  store i64 %731, i64* %3, align 8
  %732 = inttoptr i64 %730 to i32*
  %733 = load i32, i32* %732, align 4
  %734 = add i32 %733, %705
  %735 = zext i32 %734 to i64
  store i64 %735, i64* %RCX.i2266, align 8
  %736 = icmp ult i32 %734, %705
  %737 = icmp ult i32 %734, %733
  %738 = or i1 %736, %737
  %739 = zext i1 %738 to i8
  store i8 %739, i8* %25, align 1
  %740 = and i32 %734, 255
  %741 = tail call i32 @llvm.ctpop.i32(i32 %740)
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  %744 = xor i8 %743, 1
  store i8 %744, i8* %32, align 1
  %745 = xor i32 %733, %705
  %746 = xor i32 %745, %734
  %747 = lshr i32 %746, 4
  %748 = trunc i32 %747 to i8
  %749 = and i8 %748, 1
  store i8 %749, i8* %37, align 1
  %750 = icmp eq i32 %734, 0
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %40, align 1
  %752 = lshr i32 %734, 31
  %753 = trunc i32 %752 to i8
  store i8 %753, i8* %43, align 1
  %754 = lshr i32 %733, 31
  %755 = xor i32 %752, %721
  %756 = xor i32 %752, %754
  %757 = add nuw nsw i32 %755, %756
  %758 = icmp eq i32 %757, 2
  %759 = zext i1 %758 to i8
  store i8 %759, i8* %49, align 1
  %760 = add i64 %694, -20816
  %761 = add i64 %696, 24
  store i64 %761, i64* %3, align 8
  %762 = inttoptr i64 %760 to i32*
  %763 = load i32, i32* %762, align 4
  %764 = sub i32 %734, %763
  %765 = zext i32 %764 to i64
  store i64 %765, i64* %RCX.i2266, align 8
  %766 = lshr i32 %764, 31
  %767 = add i32 %764, -2500
  %768 = icmp ult i32 %764, 2500
  %769 = zext i1 %768 to i8
  store i8 %769, i8* %25, align 1
  %770 = and i32 %767, 255
  %771 = tail call i32 @llvm.ctpop.i32(i32 %770)
  %772 = trunc i32 %771 to i8
  %773 = and i8 %772, 1
  %774 = xor i8 %773, 1
  store i8 %774, i8* %32, align 1
  %775 = xor i32 %767, %764
  %776 = lshr i32 %775, 4
  %777 = trunc i32 %776 to i8
  %778 = and i8 %777, 1
  store i8 %778, i8* %37, align 1
  %779 = icmp eq i32 %767, 0
  %780 = zext i1 %779 to i8
  store i8 %780, i8* %40, align 1
  %781 = lshr i32 %767, 31
  %782 = trunc i32 %781 to i8
  store i8 %782, i8* %43, align 1
  %783 = xor i32 %781, %766
  %784 = add nuw nsw i32 %783, %766
  %785 = icmp eq i32 %784, 2
  %786 = zext i1 %785 to i8
  store i8 %786, i8* %49, align 1
  %787 = icmp ne i8 %782, 0
  %788 = xor i1 %787, %785
  %.demorgan226 = or i1 %779, %788
  %.v283 = select i1 %.demorgan226, i64 36, i64 88
  %789 = add i64 %696, %.v283
  store i64 %789, i64* %3, align 8
  br i1 %.demorgan226, label %block_45371c, label %block_.L_453750

block_45371c:                                     ; preds = %block_453697
  %790 = load i64, i64* %RBP.i, align 8
  %791 = add i64 %790, -20804
  %792 = add i64 %789, 6
  store i64 %792, i64* %3, align 8
  %793 = inttoptr i64 %791 to i32*
  %794 = load i32, i32* %793, align 4
  %795 = zext i32 %794 to i64
  store i64 %795, i64* %RAX.i223, align 8
  %796 = add i64 %790, -20776
  %797 = add i64 %789, 12
  store i64 %797, i64* %3, align 8
  %798 = inttoptr i64 %796 to i32*
  %799 = load i32, i32* %798, align 4
  %800 = add i32 %799, 200
  %801 = zext i32 %800 to i64
  store i64 %801, i64* %RCX.i2266, align 8
  %802 = lshr i32 %800, 31
  %803 = sub i32 %794, %800
  %804 = icmp ult i32 %794, %800
  %805 = zext i1 %804 to i8
  store i8 %805, i8* %25, align 1
  %806 = and i32 %803, 255
  %807 = tail call i32 @llvm.ctpop.i32(i32 %806)
  %808 = trunc i32 %807 to i8
  %809 = and i8 %808, 1
  %810 = xor i8 %809, 1
  store i8 %810, i8* %32, align 1
  %811 = xor i32 %800, %794
  %812 = xor i32 %811, %803
  %813 = lshr i32 %812, 4
  %814 = trunc i32 %813 to i8
  %815 = and i8 %814, 1
  store i8 %815, i8* %37, align 1
  %816 = icmp eq i32 %803, 0
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %40, align 1
  %818 = lshr i32 %803, 31
  %819 = trunc i32 %818 to i8
  store i8 %819, i8* %43, align 1
  %820 = lshr i32 %794, 31
  %821 = xor i32 %802, %820
  %822 = xor i32 %818, %820
  %823 = add nuw nsw i32 %822, %821
  %824 = icmp eq i32 %823, 2
  %825 = zext i1 %824 to i8
  store i8 %825, i8* %49, align 1
  %826 = icmp ne i8 %819, 0
  %827 = xor i1 %826, %824
  %.demorgan227 = or i1 %816, %827
  %.v284 = select i1 %.demorgan227, i64 26, i64 52
  %828 = add i64 %789, %.v284
  store i64 %828, i64* %3, align 8
  br i1 %.demorgan227, label %block_453736, label %block_.L_453750

block_453736:                                     ; preds = %block_45371c
  %829 = add i64 %790, -20812
  %830 = add i64 %828, 6
  store i64 %830, i64* %3, align 8
  %831 = inttoptr i64 %829 to i32*
  %832 = load i32, i32* %831, align 4
  %833 = zext i32 %832 to i64
  store i64 %833, i64* %RAX.i223, align 8
  %834 = add i64 %790, -20780
  %835 = add i64 %828, 12
  store i64 %835, i64* %3, align 8
  %836 = inttoptr i64 %834 to i32*
  %837 = load i32, i32* %836, align 4
  %838 = add i32 %837, 200
  %839 = zext i32 %838 to i64
  store i64 %839, i64* %RCX.i2266, align 8
  %840 = lshr i32 %838, 31
  %841 = sub i32 %832, %838
  %842 = icmp ult i32 %832, %838
  %843 = zext i1 %842 to i8
  store i8 %843, i8* %25, align 1
  %844 = and i32 %841, 255
  %845 = tail call i32 @llvm.ctpop.i32(i32 %844)
  %846 = trunc i32 %845 to i8
  %847 = and i8 %846, 1
  %848 = xor i8 %847, 1
  store i8 %848, i8* %32, align 1
  %849 = xor i32 %838, %832
  %850 = xor i32 %849, %841
  %851 = lshr i32 %850, 4
  %852 = trunc i32 %851 to i8
  %853 = and i8 %852, 1
  store i8 %853, i8* %37, align 1
  %854 = icmp eq i32 %841, 0
  %855 = zext i1 %854 to i8
  store i8 %855, i8* %40, align 1
  %856 = lshr i32 %841, 31
  %857 = trunc i32 %856 to i8
  store i8 %857, i8* %43, align 1
  %858 = lshr i32 %832, 31
  %859 = xor i32 %840, %858
  %860 = xor i32 %856, %858
  %861 = add nuw nsw i32 %860, %859
  %862 = icmp eq i32 %861, 2
  %863 = zext i1 %862 to i8
  store i8 %863, i8* %49, align 1
  %864 = icmp ne i8 %857, 0
  %865 = xor i1 %864, %862
  %866 = or i1 %854, %865
  %.v285 = select i1 %866, i64 31, i64 26
  %867 = add i64 %828, %.v285
  store i64 %867, i64* %3, align 8
  br i1 %866, label %block_.L_453755, label %block_.L_453750

block_.L_453750:                                  ; preds = %block_45371c, %block_453697, %block_453736
  %868 = phi i64 [ %867, %block_453736 ], [ %828, %block_45371c ], [ %789, %block_453697 ]
  %869 = add i64 %868, 2621
  br label %block_.L_45418d

block_.L_453755:                                  ; preds = %block_453736
  %870 = add i64 %790, -20800
  %871 = add i64 %867, 7
  store i64 %871, i64* %3, align 8
  %872 = inttoptr i64 %870 to i32*
  %873 = load i32, i32* %872, align 4
  %874 = sext i32 %873 to i64
  store i64 %874, i64* %RAX.i223, align 8
  %875 = add nsw i64 %874, 12099168
  %876 = add i64 %867, 15
  store i64 %876, i64* %3, align 8
  %877 = inttoptr i64 %875 to i8*
  %878 = load i8, i8* %877, align 1
  %879 = zext i8 %878 to i64
  store i64 %879, i64* %RCX.i2266, align 8
  %880 = zext i8 %878 to i32
  %881 = add nsw i32 %880, -1
  %882 = icmp eq i8 %878, 0
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %25, align 1
  %884 = and i32 %881, 255
  %885 = tail call i32 @llvm.ctpop.i32(i32 %884)
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  %888 = xor i8 %887, 1
  store i8 %888, i8* %32, align 1
  %889 = xor i32 %881, %880
  %890 = lshr i32 %889, 4
  %891 = trunc i32 %890 to i8
  %892 = and i8 %891, 1
  store i8 %892, i8* %37, align 1
  %893 = icmp eq i32 %881, 0
  %894 = zext i1 %893 to i8
  store i8 %894, i8* %40, align 1
  %895 = lshr i32 %881, 31
  %896 = trunc i32 %895 to i8
  store i8 %896, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v286 = select i1 %893, i64 48, i64 24
  %897 = add i64 %867, %.v286
  store i64 %897, i64* %3, align 8
  br i1 %893, label %block_.L_453785, label %block_45376d

block_45376d:                                     ; preds = %block_.L_453755
  %898 = add i64 %897, 7
  store i64 %898, i64* %3, align 8
  %899 = load i32, i32* %872, align 4
  %900 = sext i32 %899 to i64
  store i64 %900, i64* %RAX.i223, align 8
  %901 = add nsw i64 %900, 12099168
  %902 = add i64 %897, 15
  store i64 %902, i64* %3, align 8
  %903 = inttoptr i64 %901 to i8*
  %904 = load i8, i8* %903, align 1
  %905 = zext i8 %904 to i64
  store i64 %905, i64* %RCX.i2266, align 8
  %906 = zext i8 %904 to i32
  %907 = add nsw i32 %906, -2
  %908 = icmp ult i8 %904, 2
  %909 = zext i1 %908 to i8
  store i8 %909, i8* %25, align 1
  %910 = and i32 %907, 255
  %911 = tail call i32 @llvm.ctpop.i32(i32 %910)
  %912 = trunc i32 %911 to i8
  %913 = and i8 %912, 1
  %914 = xor i8 %913, 1
  store i8 %914, i8* %32, align 1
  %915 = xor i32 %907, %906
  %916 = lshr i32 %915, 4
  %917 = trunc i32 %916 to i8
  %918 = and i8 %917, 1
  store i8 %918, i8* %37, align 1
  %919 = icmp eq i32 %907, 0
  %920 = zext i1 %919 to i8
  store i8 %920, i8* %40, align 1
  %921 = lshr i32 %907, 31
  %922 = trunc i32 %921 to i8
  store i8 %922, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v287 = select i1 %919, i64 24, i64 52
  %923 = add i64 %897, %.v287
  store i64 %923, i64* %3, align 8
  br i1 %919, label %block_.L_453785, label %block_.L_4537a1

block_.L_453785:                                  ; preds = %block_45376d, %block_.L_453755
  %924 = phi i64 [ %923, %block_45376d ], [ %897, %block_.L_453755 ]
  %925 = add i64 %924, 6
  store i64 %925, i64* %3, align 8
  %926 = load i32, i32* %872, align 4
  %927 = zext i32 %926 to i64
  store i64 %927, i64* %RDI.i2208, align 8
  %928 = add i64 %924, -259493
  %929 = add i64 %924, 11
  %930 = load i64, i64* %6, align 8
  %931 = add i64 %930, -8
  %932 = inttoptr i64 %931 to i64*
  store i64 %929, i64* %932, align 8
  store i64 %931, i64* %6, align 8
  store i64 %928, i64* %3, align 8
  %call2_45378b = tail call %struct.Memory* @sub_4141e0.find_origin(%struct.State* nonnull %0, i64 %928, %struct.Memory* %MEMORY.4)
  %933 = load i32, i32* %EAX.i2180, align 4
  %934 = load i64, i64* %RBP.i, align 8
  %935 = add i64 %934, -20800
  %936 = load i64, i64* %3, align 8
  %937 = add i64 %936, 6
  store i64 %937, i64* %3, align 8
  %938 = inttoptr i64 %935 to i32*
  %939 = load i32, i32* %938, align 4
  %940 = sub i32 %933, %939
  %941 = icmp ult i32 %933, %939
  %942 = zext i1 %941 to i8
  store i8 %942, i8* %25, align 1
  %943 = and i32 %940, 255
  %944 = tail call i32 @llvm.ctpop.i32(i32 %943)
  %945 = trunc i32 %944 to i8
  %946 = and i8 %945, 1
  %947 = xor i8 %946, 1
  store i8 %947, i8* %32, align 1
  %948 = xor i32 %939, %933
  %949 = xor i32 %948, %940
  %950 = lshr i32 %949, 4
  %951 = trunc i32 %950 to i8
  %952 = and i8 %951, 1
  store i8 %952, i8* %37, align 1
  %953 = icmp eq i32 %940, 0
  %954 = zext i1 %953 to i8
  store i8 %954, i8* %40, align 1
  %955 = lshr i32 %940, 31
  %956 = trunc i32 %955 to i8
  store i8 %956, i8* %43, align 1
  %957 = lshr i32 %933, 31
  %958 = lshr i32 %939, 31
  %959 = xor i32 %958, %957
  %960 = xor i32 %955, %957
  %961 = add nuw nsw i32 %960, %959
  %962 = icmp eq i32 %961, 2
  %963 = zext i1 %962 to i8
  store i8 %963, i8* %49, align 1
  %.v330 = select i1 %953, i64 17, i64 12
  %964 = add i64 %936, %.v330
  store i64 %964, i64* %3, align 8
  br i1 %953, label %block_.L_4537a1, label %block_45379c

block_45379c:                                     ; preds = %block_.L_453785
  %965 = add i64 %964, 2545
  br label %block_.L_45418d

block_.L_4537a1:                                  ; preds = %block_45376d, %block_.L_453785
  %966 = phi i64 [ %934, %block_.L_453785 ], [ %790, %block_45376d ]
  %967 = phi i64 [ %964, %block_.L_453785 ], [ %923, %block_45376d ]
  %968 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %25, align 1
  %969 = and i32 %968, 255
  %970 = tail call i32 @llvm.ctpop.i32(i32 %969)
  %971 = trunc i32 %970 to i8
  %972 = and i8 %971, 1
  %973 = xor i8 %972, 1
  store i8 %973, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %974 = icmp eq i32 %968, 0
  %975 = zext i1 %974 to i8
  store i8 %975, i8* %40, align 1
  %976 = lshr i32 %968, 31
  %977 = trunc i32 %976 to i8
  store i8 %977, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %978 = icmp ne i8 %977, 0
  %979 = or i1 %974, %978
  %.v288 = select i1 %979, i64 69, i64 14
  %980 = add i64 %967, %.v288
  store i64 %980, i64* %3, align 8
  br i1 %979, label %block_.L_4537e6, label %block_4537af

block_4537af:                                     ; preds = %block_.L_4537a1
  store i64 ptrtoint (%G__0x57f6a3_type* @G__0x57f6a3 to i64), i64* %RDI.i2208, align 8
  %981 = add i64 %966, -20800
  %982 = add i64 %980, 16
  store i64 %982, i64* %3, align 8
  %983 = inttoptr i64 %981 to i32*
  %984 = load i32, i32* %983, align 4
  %985 = zext i32 %984 to i64
  store i64 %985, i64* %RSI.i2205, align 8
  %986 = add i64 %966, -20804
  %987 = add i64 %980, 22
  store i64 %987, i64* %3, align 8
  %988 = inttoptr i64 %986 to i32*
  %989 = load i32, i32* %988, align 4
  %990 = zext i32 %989 to i64
  store i64 %990, i64* %RDX.i2258, align 8
  %991 = add i64 %966, -20808
  %992 = add i64 %980, 28
  store i64 %992, i64* %3, align 8
  %993 = inttoptr i64 %991 to i32*
  %994 = load i32, i32* %993, align 4
  %995 = zext i32 %994 to i64
  store i64 %995, i64* %RCX.i2266, align 8
  %996 = add i64 %966, -20812
  %997 = add i64 %980, 35
  store i64 %997, i64* %3, align 8
  %998 = inttoptr i64 %996 to i32*
  %999 = load i32, i32* %998, align 4
  %1000 = zext i32 %999 to i64
  store i64 %1000, i64* %R8.i2264, align 8
  %1001 = add i64 %966, -20816
  %1002 = add i64 %980, 42
  store i64 %1002, i64* %3, align 8
  %1003 = inttoptr i64 %1001 to i32*
  %1004 = load i32, i32* %1003, align 4
  %1005 = zext i32 %1004 to i64
  store i64 %1005, i64* %54, align 8
  store i8 0, i8* %AL.i930.pre-phi, align 1
  %1006 = add i64 %980, -6655
  %1007 = add i64 %980, 49
  %1008 = load i64, i64* %6, align 8
  %1009 = add i64 %1008, -8
  %1010 = inttoptr i64 %1009 to i64*
  store i64 %1007, i64* %1010, align 8
  store i64 %1009, i64* %6, align 8
  store i64 %1006, i64* %3, align 8
  %call2_4537db = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1006, %struct.Memory* %MEMORY.4)
  %1011 = load i64, i64* %RBP.i, align 8
  %1012 = add i64 %1011, -21416
  %1013 = load i32, i32* %EAX.i2180, align 4
  %1014 = load i64, i64* %3, align 8
  %1015 = add i64 %1014, 6
  store i64 %1015, i64* %3, align 8
  %1016 = inttoptr i64 %1012 to i32*
  store i32 %1013, i32* %1016, align 4
  %.pre176 = load i64, i64* %RBP.i, align 8
  %.pre177 = load i64, i64* %3, align 8
  br label %block_.L_4537e6

block_.L_4537e6:                                  ; preds = %block_4537af, %block_.L_4537a1
  %1017 = phi i64 [ %980, %block_.L_4537a1 ], [ %.pre177, %block_4537af ]
  %1018 = phi i64 [ %966, %block_.L_4537a1 ], [ %.pre176, %block_4537af ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.4, %block_.L_4537a1 ], [ %call2_4537db, %block_4537af ]
  %1019 = add i64 %1018, -20804
  %1020 = add i64 %1017, 6
  store i64 %1020, i64* %3, align 8
  %1021 = inttoptr i64 %1019 to i32*
  %1022 = load i32, i32* %1021, align 4
  %1023 = zext i32 %1022 to i64
  store i64 %1023, i64* %RAX.i223, align 8
  %1024 = add i64 %1018, -20808
  %1025 = add i64 %1017, 12
  store i64 %1025, i64* %3, align 8
  %1026 = inttoptr i64 %1024 to i32*
  %1027 = load i32, i32* %1026, align 4
  %1028 = sub i32 %1022, %1027
  %1029 = zext i32 %1028 to i64
  store i64 %1029, i64* %RAX.i223, align 8
  %1030 = icmp ult i32 %1022, %1027
  %1031 = zext i1 %1030 to i8
  store i8 %1031, i8* %25, align 1
  %1032 = and i32 %1028, 255
  %1033 = tail call i32 @llvm.ctpop.i32(i32 %1032)
  %1034 = trunc i32 %1033 to i8
  %1035 = and i8 %1034, 1
  %1036 = xor i8 %1035, 1
  store i8 %1036, i8* %32, align 1
  %1037 = xor i32 %1027, %1022
  %1038 = xor i32 %1037, %1028
  %1039 = lshr i32 %1038, 4
  %1040 = trunc i32 %1039 to i8
  %1041 = and i8 %1040, 1
  store i8 %1041, i8* %37, align 1
  %1042 = icmp eq i32 %1028, 0
  %1043 = zext i1 %1042 to i8
  store i8 %1043, i8* %40, align 1
  %1044 = lshr i32 %1028, 31
  %1045 = trunc i32 %1044 to i8
  store i8 %1045, i8* %43, align 1
  %1046 = lshr i32 %1022, 31
  %1047 = lshr i32 %1027, 31
  %1048 = xor i32 %1047, %1046
  %1049 = xor i32 %1044, %1046
  %1050 = add nuw nsw i32 %1049, %1048
  %1051 = icmp eq i32 %1050, 2
  %1052 = zext i1 %1051 to i8
  store i8 %1052, i8* %49, align 1
  %1053 = add i64 %1018, -20820
  %1054 = add i64 %1017, 18
  store i64 %1054, i64* %3, align 8
  %1055 = inttoptr i64 %1053 to i32*
  store i32 %1028, i32* %1055, align 4
  %1056 = load i64, i64* %RBP.i, align 8
  %1057 = add i64 %1056, -20812
  %1058 = load i64, i64* %3, align 8
  %1059 = add i64 %1058, 6
  store i64 %1059, i64* %3, align 8
  %1060 = inttoptr i64 %1057 to i32*
  %1061 = load i32, i32* %1060, align 4
  %1062 = zext i32 %1061 to i64
  store i64 %1062, i64* %RAX.i223, align 8
  %1063 = add i64 %1056, -20816
  %1064 = add i64 %1058, 12
  store i64 %1064, i64* %3, align 8
  %1065 = inttoptr i64 %1063 to i32*
  %1066 = load i32, i32* %1065, align 4
  %1067 = sub i32 %1061, %1066
  %1068 = zext i32 %1067 to i64
  store i64 %1068, i64* %RAX.i223, align 8
  %1069 = icmp ult i32 %1061, %1066
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %25, align 1
  %1071 = and i32 %1067, 255
  %1072 = tail call i32 @llvm.ctpop.i32(i32 %1071)
  %1073 = trunc i32 %1072 to i8
  %1074 = and i8 %1073, 1
  %1075 = xor i8 %1074, 1
  store i8 %1075, i8* %32, align 1
  %1076 = xor i32 %1066, %1061
  %1077 = xor i32 %1076, %1067
  %1078 = lshr i32 %1077, 4
  %1079 = trunc i32 %1078 to i8
  %1080 = and i8 %1079, 1
  store i8 %1080, i8* %37, align 1
  %1081 = icmp eq i32 %1067, 0
  %1082 = zext i1 %1081 to i8
  store i8 %1082, i8* %40, align 1
  %1083 = lshr i32 %1067, 31
  %1084 = trunc i32 %1083 to i8
  store i8 %1084, i8* %43, align 1
  %1085 = lshr i32 %1061, 31
  %1086 = lshr i32 %1066, 31
  %1087 = xor i32 %1086, %1085
  %1088 = xor i32 %1083, %1085
  %1089 = add nuw nsw i32 %1088, %1087
  %1090 = icmp eq i32 %1089, 2
  %1091 = zext i1 %1090 to i8
  store i8 %1091, i8* %49, align 1
  %1092 = add i64 %1056, -20824
  %1093 = add i64 %1058, 18
  store i64 %1093, i64* %3, align 8
  %1094 = inttoptr i64 %1092 to i32*
  store i32 %1067, i32* %1094, align 4
  %1095 = load i64, i64* %RBP.i, align 8
  %1096 = add i64 %1095, -20820
  %1097 = load i64, i64* %3, align 8
  %1098 = add i64 %1097, 6
  store i64 %1098, i64* %3, align 8
  %1099 = inttoptr i64 %1096 to i32*
  %1100 = load i32, i32* %1099, align 4
  %1101 = zext i32 %1100 to i64
  store i64 %1101, i64* %RAX.i223, align 8
  %1102 = add i64 %1095, -20824
  %1103 = add i64 %1097, 12
  store i64 %1103, i64* %3, align 8
  %1104 = inttoptr i64 %1102 to i32*
  %1105 = load i32, i32* %1104, align 4
  %1106 = add i32 %1105, %1100
  %1107 = zext i32 %1106 to i64
  store i64 %1107, i64* %RAX.i223, align 8
  %1108 = add i64 %1095, -20828
  %1109 = add i64 %1097, 18
  store i64 %1109, i64* %3, align 8
  %1110 = inttoptr i64 %1108 to i32*
  store i32 %1106, i32* %1110, align 4
  %1111 = load i64, i64* %3, align 8
  %1112 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %25, align 1
  %1113 = and i32 %1112, 255
  %1114 = tail call i32 @llvm.ctpop.i32(i32 %1113)
  %1115 = trunc i32 %1114 to i8
  %1116 = and i8 %1115, 1
  %1117 = xor i8 %1116, 1
  store i8 %1117, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %1118 = icmp eq i32 %1112, 0
  %1119 = zext i1 %1118 to i8
  store i8 %1119, i8* %40, align 1
  %1120 = lshr i32 %1112, 31
  %1121 = trunc i32 %1120 to i8
  store i8 %1121, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %1122 = icmp ne i8 %1121, 0
  %1123 = or i1 %1118, %1122
  %.v289 = select i1 %1123, i64 43, i64 14
  %1124 = add i64 %1111, %.v289
  store i64 %1124, i64* %3, align 8
  br i1 %1123, label %block_.L_453847, label %block_45382a

block_45382a:                                     ; preds = %block_.L_4537e6
  store i64 ptrtoint (%G__0x57f6c1_type* @G__0x57f6c1 to i64), i64* %RDI.i2208, align 8
  %1125 = load i64, i64* %RBP.i, align 8
  %1126 = add i64 %1125, -20828
  %1127 = add i64 %1124, 16
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1126 to i32*
  %1129 = load i32, i32* %1128, align 4
  %1130 = zext i32 %1129 to i64
  store i64 %1130, i64* %RSI.i2205, align 8
  store i8 0, i8* %AL.i930.pre-phi, align 1
  %1131 = add i64 %1124, -6778
  %1132 = add i64 %1124, 23
  %1133 = load i64, i64* %6, align 8
  %1134 = add i64 %1133, -8
  %1135 = inttoptr i64 %1134 to i64*
  store i64 %1132, i64* %1135, align 8
  store i64 %1134, i64* %6, align 8
  store i64 %1131, i64* %3, align 8
  %call2_45383c = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1131, %struct.Memory* %MEMORY.8)
  %1136 = load i64, i64* %RBP.i, align 8
  %1137 = add i64 %1136, -21420
  %1138 = load i32, i32* %EAX.i2180, align 4
  %1139 = load i64, i64* %3, align 8
  %1140 = add i64 %1139, 6
  store i64 %1140, i64* %3, align 8
  %1141 = inttoptr i64 %1137 to i32*
  store i32 %1138, i32* %1141, align 4
  %.pre178 = load i64, i64* %3, align 8
  br label %block_.L_453847

block_.L_453847:                                  ; preds = %block_45382a, %block_.L_4537e6
  %1142 = phi i64 [ %1124, %block_.L_4537e6 ], [ %.pre178, %block_45382a ]
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.8, %block_.L_4537e6 ], [ %call2_45383c, %block_45382a ]
  %1143 = load i64, i64* %RBP.i, align 8
  %1144 = add i64 %1143, -20820
  %1145 = add i64 %1142, 7
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1144 to i32*
  %1147 = load i32, i32* %1146, align 4
  %1148 = sext i32 %1147 to i64
  %1149 = mul nsw i64 %1148, 3
  %1150 = trunc i64 %1149 to i32
  %1151 = and i64 %1149, 4294967295
  store i64 %1151, i64* %RAX.i223, align 8
  %1152 = mul i64 %1148, 12884901888
  %1153 = ashr exact i64 %1152, 32
  %1154 = icmp ne i64 %1153, %1149
  %1155 = zext i1 %1154 to i8
  store i8 %1155, i8* %25, align 1
  %1156 = and i32 %1150, 255
  %1157 = tail call i32 @llvm.ctpop.i32(i32 %1156)
  %1158 = trunc i32 %1157 to i8
  %1159 = and i8 %1158, 1
  %1160 = xor i8 %1159, 1
  store i8 %1160, i8* %32, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %40, align 1
  %1161 = lshr i32 %1150, 31
  %1162 = trunc i32 %1161 to i8
  store i8 %1162, i8* %43, align 1
  store i8 %1155, i8* %49, align 1
  %1163 = add i64 %1143, -20824
  %1164 = add i64 %1142, 13
  store i64 %1164, i64* %3, align 8
  %1165 = inttoptr i64 %1163 to i32*
  %1166 = load i32, i32* %1165, align 4
  %1167 = shl i32 %1166, 1
  %1168 = zext i32 %1167 to i64
  store i64 %1168, i64* %RCX.i2266, align 8
  %1169 = trunc i64 %1149 to i32
  %1170 = sub i32 %1169, %1167
  %1171 = icmp ult i32 %1169, %1167
  %1172 = zext i1 %1171 to i8
  store i8 %1172, i8* %25, align 1
  %1173 = and i32 %1170, 255
  %1174 = tail call i32 @llvm.ctpop.i32(i32 %1173)
  %1175 = trunc i32 %1174 to i8
  %1176 = and i8 %1175, 1
  %1177 = xor i8 %1176, 1
  store i8 %1177, i8* %32, align 1
  %1178 = xor i32 %1167, %1169
  %1179 = xor i32 %1178, %1170
  %1180 = lshr i32 %1179, 4
  %1181 = trunc i32 %1180 to i8
  %1182 = and i8 %1181, 1
  store i8 %1182, i8* %37, align 1
  %1183 = icmp eq i32 %1170, 0
  %1184 = zext i1 %1183 to i8
  store i8 %1184, i8* %40, align 1
  %1185 = lshr i32 %1170, 31
  %1186 = trunc i32 %1185 to i8
  store i8 %1186, i8* %43, align 1
  %1187 = lshr i32 %1169, 31
  %1188 = lshr i32 %1166, 30
  %1189 = and i32 %1188, 1
  %1190 = xor i32 %1189, %1187
  %1191 = xor i32 %1185, %1187
  %1192 = add nuw nsw i32 %1191, %1190
  %1193 = icmp eq i32 %1192, 2
  %1194 = zext i1 %1193 to i8
  store i8 %1194, i8* %49, align 1
  %1195 = icmp ne i8 %1186, 0
  %1196 = xor i1 %1195, %1193
  %1197 = or i1 %1183, %1196
  %.v290 = select i1 %1197, i64 104, i64 23
  %1198 = add i64 %1142, %.v290
  store i64 %1198, i64* %3, align 8
  br i1 %1197, label %block_.L_4538b0, label %block_45385f

block_45385f:                                     ; preds = %block_.L_453847
  %1199 = load i64, i64* %RBP.i, align 8
  %1200 = add i64 %1199, -20824
  %1201 = add i64 %1198, 7
  store i64 %1201, i64* %3, align 8
  %1202 = inttoptr i64 %1200 to i32*
  %1203 = load i32, i32* %1202, align 4
  %1204 = sext i32 %1203 to i64
  %1205 = mul nsw i64 %1204, 3
  %1206 = trunc i64 %1205 to i32
  %1207 = and i64 %1205, 4294967295
  store i64 %1207, i64* %RAX.i223, align 8
  %1208 = mul i64 %1204, 12884901888
  %1209 = ashr exact i64 %1208, 32
  %1210 = icmp ne i64 %1209, %1205
  %1211 = zext i1 %1210 to i8
  store i8 %1211, i8* %25, align 1
  %1212 = and i32 %1206, 255
  %1213 = tail call i32 @llvm.ctpop.i32(i32 %1212)
  %1214 = trunc i32 %1213 to i8
  %1215 = and i8 %1214, 1
  %1216 = xor i8 %1215, 1
  store i8 %1216, i8* %32, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %40, align 1
  %1217 = lshr i32 %1206, 31
  %1218 = trunc i32 %1217 to i8
  store i8 %1218, i8* %43, align 1
  store i8 %1211, i8* %49, align 1
  %1219 = add i64 %1199, -20820
  %1220 = add i64 %1198, 13
  store i64 %1220, i64* %3, align 8
  %1221 = inttoptr i64 %1219 to i32*
  %1222 = load i32, i32* %1221, align 4
  %1223 = shl i32 %1222, 1
  %1224 = zext i32 %1223 to i64
  store i64 %1224, i64* %RCX.i2266, align 8
  %1225 = trunc i64 %1205 to i32
  %1226 = sub i32 %1225, %1223
  %1227 = icmp ult i32 %1225, %1223
  %1228 = zext i1 %1227 to i8
  store i8 %1228, i8* %25, align 1
  %1229 = and i32 %1226, 255
  %1230 = tail call i32 @llvm.ctpop.i32(i32 %1229)
  %1231 = trunc i32 %1230 to i8
  %1232 = and i8 %1231, 1
  %1233 = xor i8 %1232, 1
  store i8 %1233, i8* %32, align 1
  %1234 = xor i32 %1223, %1225
  %1235 = xor i32 %1234, %1226
  %1236 = lshr i32 %1235, 4
  %1237 = trunc i32 %1236 to i8
  %1238 = and i8 %1237, 1
  store i8 %1238, i8* %37, align 1
  %1239 = icmp eq i32 %1226, 0
  %1240 = zext i1 %1239 to i8
  store i8 %1240, i8* %40, align 1
  %1241 = lshr i32 %1226, 31
  %1242 = trunc i32 %1241 to i8
  store i8 %1242, i8* %43, align 1
  %1243 = lshr i32 %1225, 31
  %1244 = lshr i32 %1222, 30
  %1245 = and i32 %1244, 1
  %1246 = xor i32 %1245, %1243
  %1247 = xor i32 %1241, %1243
  %1248 = add nuw nsw i32 %1247, %1246
  %1249 = icmp eq i32 %1248, 2
  %1250 = zext i1 %1249 to i8
  store i8 %1250, i8* %49, align 1
  %1251 = icmp ne i8 %1242, 0
  %1252 = xor i1 %1251, %1249
  %1253 = or i1 %1239, %1252
  %.v291 = select i1 %1253, i64 80, i64 23
  %1254 = add i64 %1198, %.v291
  store i64 %1254, i64* %3, align 8
  br i1 %1253, label %block_.L_4538b0, label %block_453877

block_453877:                                     ; preds = %block_45385f
  %1255 = load i64, i64* %RBP.i, align 8
  %1256 = add i64 %1255, -20828
  %1257 = add i64 %1254, 6
  store i64 %1257, i64* %3, align 8
  %1258 = inttoptr i64 %1256 to i32*
  %1259 = load i32, i32* %1258, align 4
  %1260 = add i32 %1259, -100
  %1261 = zext i32 %1260 to i64
  store i64 %1261, i64* %RAX.i223, align 8
  %1262 = add i64 %1254, 15
  store i64 %1262, i64* %3, align 8
  store i32 %1260, i32* %1258, align 4
  %1263 = load i64, i64* %3, align 8
  %1264 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %25, align 1
  %1265 = and i32 %1264, 255
  %1266 = tail call i32 @llvm.ctpop.i32(i32 %1265)
  %1267 = trunc i32 %1266 to i8
  %1268 = and i8 %1267, 1
  %1269 = xor i8 %1268, 1
  store i8 %1269, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %1270 = icmp eq i32 %1264, 0
  %1271 = zext i1 %1270 to i8
  store i8 %1271, i8* %40, align 1
  %1272 = lshr i32 %1264, 31
  %1273 = trunc i32 %1272 to i8
  store i8 %1273, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %1274 = icmp ne i8 %1273, 0
  %1275 = or i1 %1270, %1274
  %.v292 = select i1 %1275, i64 37, i64 14
  %1276 = add i64 %1263, %.v292
  store i64 %1276, i64* %3, align 8
  br i1 %1275, label %block_.L_4538ab, label %block_453894

block_453894:                                     ; preds = %block_453877
  store i64 ptrtoint (%G__0x57f6db_type* @G__0x57f6db to i64), i64* %RDI.i2208, align 8
  store i8 0, i8* %AL.i930.pre-phi, align 1
  %1277 = add i64 %1276, -6884
  %1278 = add i64 %1276, 17
  %1279 = load i64, i64* %6, align 8
  %1280 = add i64 %1279, -8
  %1281 = inttoptr i64 %1280 to i64*
  store i64 %1278, i64* %1281, align 8
  store i64 %1280, i64* %6, align 8
  store i64 %1277, i64* %3, align 8
  %call2_4538a0 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1277, %struct.Memory* %MEMORY.9)
  %1282 = load i64, i64* %RBP.i, align 8
  %1283 = add i64 %1282, -21424
  %1284 = load i32, i32* %EAX.i2180, align 4
  %1285 = load i64, i64* %3, align 8
  %1286 = add i64 %1285, 6
  store i64 %1286, i64* %3, align 8
  %1287 = inttoptr i64 %1283 to i32*
  store i32 %1284, i32* %1287, align 4
  %.pre179 = load i64, i64* %3, align 8
  br label %block_.L_4538ab

block_.L_4538ab:                                  ; preds = %block_453894, %block_453877
  %1288 = phi i64 [ %1276, %block_453877 ], [ %.pre179, %block_453894 ]
  %MEMORY.10 = phi %struct.Memory* [ %MEMORY.9, %block_453877 ], [ %call2_4538a0, %block_453894 ]
  %1289 = add i64 %1288, 5
  store i64 %1289, i64* %3, align 8
  br label %block_.L_4538b0

block_.L_4538b0:                                  ; preds = %block_.L_4538ab, %block_45385f, %block_.L_453847
  %1290 = phi i64 [ %1198, %block_.L_453847 ], [ %1254, %block_45385f ], [ %1289, %block_.L_4538ab ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.9, %block_.L_453847 ], [ %MEMORY.9, %block_45385f ], [ %MEMORY.10, %block_.L_4538ab ]
  %1291 = load i64, i64* %RBP.i, align 8
  %1292 = add i64 %1291, -20800
  %1293 = add i64 %1290, 7
  store i64 %1293, i64* %3, align 8
  %1294 = inttoptr i64 %1292 to i32*
  %1295 = load i32, i32* %1294, align 4
  %1296 = sext i32 %1295 to i64
  store i64 %1296, i64* %RAX.i223, align 8
  %1297 = shl nsw i64 %1296, 2
  %1298 = add i64 %1291, -6472
  %1299 = add i64 %1298, %1297
  %1300 = add i64 %1290, 15
  store i64 %1300, i64* %3, align 8
  %1301 = inttoptr i64 %1299 to i32*
  %1302 = load i32, i32* %1301, align 4
  store i8 0, i8* %25, align 1
  %1303 = and i32 %1302, 255
  %1304 = tail call i32 @llvm.ctpop.i32(i32 %1303)
  %1305 = trunc i32 %1304 to i8
  %1306 = and i8 %1305, 1
  %1307 = xor i8 %1306, 1
  store i8 %1307, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %1308 = icmp eq i32 %1302, 0
  %1309 = zext i1 %1308 to i8
  store i8 %1309, i8* %40, align 1
  %1310 = lshr i32 %1302, 31
  %1311 = trunc i32 %1310 to i8
  store i8 %1311, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v293 = select i1 %1308, i64 97, i64 21
  %1312 = add i64 %1290, %.v293
  store i64 %1312, i64* %3, align 8
  br i1 %1308, label %block_.L_453911, label %block_4538c5

block_4538c5:                                     ; preds = %block_.L_4538b0
  %1313 = add i64 %1312, 7
  store i64 %1313, i64* %3, align 8
  %1314 = load i32, i32* %1294, align 4
  %1315 = sext i32 %1314 to i64
  store i64 %1315, i64* %RAX.i223, align 8
  %1316 = shl nsw i64 %1315, 2
  %1317 = add i64 %1298, %1316
  %1318 = add i64 %1312, 14
  store i64 %1318, i64* %3, align 8
  %1319 = inttoptr i64 %1317 to i32*
  %1320 = load i32, i32* %1319, align 4
  %1321 = zext i32 %1320 to i64
  store i64 %1321, i64* %RCX.i2266, align 8
  %1322 = add i64 %1312, 21
  store i64 %1322, i64* %3, align 8
  %1323 = load i32, i32* %1294, align 4
  %1324 = sext i32 %1323 to i64
  store i64 %1324, i64* %RAX.i223, align 8
  %1325 = shl nsw i64 %1324, 2
  %1326 = add nsw i64 %1325, -16080
  %1327 = add i64 %1326, %1291
  %1328 = add i64 %1312, 28
  store i64 %1328, i64* %3, align 8
  %1329 = inttoptr i64 %1327 to i32*
  %1330 = load i32, i32* %1329, align 4
  %1331 = sub i32 %1320, %1330
  %1332 = icmp ult i32 %1320, %1330
  %1333 = zext i1 %1332 to i8
  store i8 %1333, i8* %25, align 1
  %1334 = and i32 %1331, 255
  %1335 = tail call i32 @llvm.ctpop.i32(i32 %1334)
  %1336 = trunc i32 %1335 to i8
  %1337 = and i8 %1336, 1
  %1338 = xor i8 %1337, 1
  store i8 %1338, i8* %32, align 1
  %1339 = xor i32 %1330, %1320
  %1340 = xor i32 %1339, %1331
  %1341 = lshr i32 %1340, 4
  %1342 = trunc i32 %1341 to i8
  %1343 = and i8 %1342, 1
  store i8 %1343, i8* %37, align 1
  %1344 = icmp eq i32 %1331, 0
  %1345 = zext i1 %1344 to i8
  store i8 %1345, i8* %40, align 1
  %1346 = lshr i32 %1331, 31
  %1347 = trunc i32 %1346 to i8
  store i8 %1347, i8* %43, align 1
  %1348 = lshr i32 %1320, 31
  %1349 = lshr i32 %1330, 31
  %1350 = xor i32 %1349, %1348
  %1351 = xor i32 %1346, %1348
  %1352 = add nuw nsw i32 %1351, %1350
  %1353 = icmp eq i32 %1352, 2
  %1354 = zext i1 %1353 to i8
  store i8 %1354, i8* %49, align 1
  %.v294 = select i1 %1344, i64 34, i64 76
  %1355 = add i64 %1312, %.v294
  store i64 %1355, i64* %3, align 8
  br i1 %1344, label %block_4538e7, label %block_.L_453911

block_4538e7:                                     ; preds = %block_4538c5
  %1356 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %25, align 1
  %1357 = and i32 %1356, 255
  %1358 = tail call i32 @llvm.ctpop.i32(i32 %1357)
  %1359 = trunc i32 %1358 to i8
  %1360 = and i8 %1359, 1
  %1361 = xor i8 %1360, 1
  store i8 %1361, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %1362 = icmp eq i32 %1356, 0
  %1363 = zext i1 %1362 to i8
  store i8 %1363, i8* %40, align 1
  %1364 = lshr i32 %1356, 31
  %1365 = trunc i32 %1364 to i8
  store i8 %1365, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %1366 = icmp ne i8 %1365, 0
  %1367 = or i1 %1362, %1366
  %.v329 = select i1 %1367, i64 37, i64 14
  %1368 = add i64 %1355, %.v329
  store i64 %1368, i64* %3, align 8
  br i1 %1367, label %block_.L_45390c, label %block_4538f5

block_4538f5:                                     ; preds = %block_4538e7
  store i64 ptrtoint (%G__0x57f6f4_type* @G__0x57f6f4 to i64), i64* %RDI.i2208, align 8
  store i8 0, i8* %AL.i930.pre-phi, align 1
  %1369 = add i64 %1368, -6981
  %1370 = add i64 %1368, 17
  %1371 = load i64, i64* %6, align 8
  %1372 = add i64 %1371, -8
  %1373 = inttoptr i64 %1372 to i64*
  store i64 %1370, i64* %1373, align 8
  store i64 %1372, i64* %6, align 8
  store i64 %1369, i64* %3, align 8
  %call2_453901 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1369, %struct.Memory* %MEMORY.11)
  %1374 = load i64, i64* %RBP.i, align 8
  %1375 = add i64 %1374, -21428
  %1376 = load i32, i32* %EAX.i2180, align 4
  %1377 = load i64, i64* %3, align 8
  %1378 = add i64 %1377, 6
  store i64 %1378, i64* %3, align 8
  %1379 = inttoptr i64 %1375 to i32*
  store i32 %1376, i32* %1379, align 4
  %.pre180 = load i64, i64* %3, align 8
  br label %block_.L_45390c

block_.L_45390c:                                  ; preds = %block_4538f5, %block_4538e7
  %1380 = phi i64 [ %1368, %block_4538e7 ], [ %.pre180, %block_4538f5 ]
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.11, %block_4538e7 ], [ %call2_453901, %block_4538f5 ]
  %1381 = add i64 %1380, 2177
  br label %block_.L_45418d

block_.L_453911:                                  ; preds = %block_4538c5, %block_.L_4538b0
  %1382 = phi i64 [ %1355, %block_4538c5 ], [ %1312, %block_.L_4538b0 ]
  %1383 = add i64 %1382, 7
  store i64 %1383, i64* %3, align 8
  %1384 = load i32, i32* %1294, align 4
  %1385 = sext i32 %1384 to i64
  store i64 %1385, i64* %RAX.i223, align 8
  %1386 = add nsw i64 %1385, 12099168
  %1387 = add i64 %1382, 15
  store i64 %1387, i64* %3, align 8
  %1388 = inttoptr i64 %1386 to i8*
  %1389 = load i8, i8* %1388, align 1
  %1390 = zext i8 %1389 to i64
  store i64 %1390, i64* %RCX.i2266, align 8
  %1391 = zext i8 %1389 to i32
  store i8 0, i8* %25, align 1
  %1392 = tail call i32 @llvm.ctpop.i32(i32 %1391)
  %1393 = trunc i32 %1392 to i8
  %1394 = and i8 %1393, 1
  %1395 = xor i8 %1394, 1
  store i8 %1395, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %1396 = icmp eq i8 %1389, 0
  %1397 = zext i1 %1396 to i8
  store i8 %1397, i8* %40, align 1
  store i8 0, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v295 = select i1 %1396, i64 24, i64 328
  %1398 = add i64 %1382, %.v295
  store i64 %1398, i64* %3, align 8
  br i1 %1396, label %block_453929, label %block_.L_453a59

block_453929:                                     ; preds = %block_.L_453911
  %1399 = add i64 %1398, 6
  store i64 %1399, i64* %3, align 8
  %1400 = load i32, i32* %1294, align 4
  %1401 = zext i32 %1400 to i64
  store i64 %1401, i64* %RDI.i2208, align 8
  %1402 = add i64 %1291, -28
  %1403 = add i64 %1398, 9
  store i64 %1403, i64* %3, align 8
  %1404 = inttoptr i64 %1402 to i32*
  %1405 = load i32, i32* %1404, align 4
  %1406 = zext i32 %1405 to i64
  store i64 %1406, i64* %RSI.i2205, align 8
  %1407 = add i64 %1398, 39831
  %1408 = add i64 %1398, 14
  %1409 = load i64, i64* %6, align 8
  %1410 = add i64 %1409, -8
  %1411 = inttoptr i64 %1410 to i64*
  store i64 %1408, i64* %1411, align 8
  store i64 %1410, i64* %6, align 8
  store i64 %1407, i64* %3, align 8
  %call2_453932 = tail call %struct.Memory* @sub_45d4c0.check_self_atari(%struct.State* nonnull %0, i64 %1407, %struct.Memory* %MEMORY.11)
  %1412 = load i32, i32* %EAX.i2180, align 4
  %1413 = load i64, i64* %3, align 8
  store i8 0, i8* %25, align 1
  %1414 = and i32 %1412, 255
  %1415 = tail call i32 @llvm.ctpop.i32(i32 %1414)
  %1416 = trunc i32 %1415 to i8
  %1417 = and i8 %1416, 1
  %1418 = xor i8 %1417, 1
  store i8 %1418, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %1419 = icmp eq i32 %1412, 0
  %1420 = zext i1 %1419 to i8
  store i8 %1420, i8* %40, align 1
  %1421 = lshr i32 %1412, 31
  %1422 = trunc i32 %1421 to i8
  store i8 %1422, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v324 = select i1 %1419, i64 243, i64 9
  %1423 = add i64 %1413, %.v324
  store i64 %1423, i64* %3, align 8
  br i1 %1419, label %block_.L_453a2a, label %block_453940

block_453940:                                     ; preds = %block_453929
  %1424 = load i64, i64* %RBP.i, align 8
  %1425 = add i64 %1424, -20832
  %1426 = add i64 %1423, 15
  store i64 %1426, i64* %3, align 8
  %1427 = inttoptr i64 %1425 to i32*
  store i32 0, i32* %1427, align 4
  %.pre181 = load i64, i64* %3, align 8
  br label %block_.L_45394f

block_.L_45394f:                                  ; preds = %block_.L_4539ae, %block_453940
  %1428 = phi i64 [ %1589, %block_.L_4539ae ], [ %.pre181, %block_453940 ]
  %1429 = load i64, i64* %RBP.i, align 8
  %1430 = add i64 %1429, -20832
  %1431 = add i64 %1428, 6
  store i64 %1431, i64* %3, align 8
  %1432 = inttoptr i64 %1430 to i32*
  %1433 = load i32, i32* %1432, align 4
  %1434 = zext i32 %1433 to i64
  store i64 %1434, i64* %RAX.i223, align 8
  %1435 = add i64 %1429, -20740
  %1436 = add i64 %1428, 12
  store i64 %1436, i64* %3, align 8
  %1437 = inttoptr i64 %1435 to i32*
  %1438 = load i32, i32* %1437, align 4
  %1439 = sub i32 %1433, %1438
  %1440 = icmp ult i32 %1433, %1438
  %1441 = zext i1 %1440 to i8
  store i8 %1441, i8* %25, align 1
  %1442 = and i32 %1439, 255
  %1443 = tail call i32 @llvm.ctpop.i32(i32 %1442)
  %1444 = trunc i32 %1443 to i8
  %1445 = and i8 %1444, 1
  %1446 = xor i8 %1445, 1
  store i8 %1446, i8* %32, align 1
  %1447 = xor i32 %1438, %1433
  %1448 = xor i32 %1447, %1439
  %1449 = lshr i32 %1448, 4
  %1450 = trunc i32 %1449 to i8
  %1451 = and i8 %1450, 1
  store i8 %1451, i8* %37, align 1
  %1452 = icmp eq i32 %1439, 0
  %1453 = zext i1 %1452 to i8
  store i8 %1453, i8* %40, align 1
  %1454 = lshr i32 %1439, 31
  %1455 = trunc i32 %1454 to i8
  store i8 %1455, i8* %43, align 1
  %1456 = lshr i32 %1433, 31
  %1457 = lshr i32 %1438, 31
  %1458 = xor i32 %1457, %1456
  %1459 = xor i32 %1454, %1456
  %1460 = add nuw nsw i32 %1459, %1458
  %1461 = icmp eq i32 %1460, 2
  %1462 = zext i1 %1461 to i8
  store i8 %1462, i8* %49, align 1
  %1463 = icmp ne i8 %1455, 0
  %1464 = xor i1 %1463, %1461
  %.v229 = select i1 %1464, i64 18, i64 120
  %1465 = add i64 %1428, %.v229
  store i64 %1465, i64* %3, align 8
  br i1 %1464, label %block_453961, label %block_.L_4539c7.loopexit

block_453961:                                     ; preds = %block_.L_45394f
  %1466 = add i64 %1429, -40
  %1467 = add i64 %1465, 4
  store i64 %1467, i64* %3, align 8
  %1468 = inttoptr i64 %1466 to i64*
  %1469 = load i64, i64* %1468, align 8
  store i64 %1469, i64* %RAX.i223, align 8
  %1470 = add i64 %1465, 11
  store i64 %1470, i64* %3, align 8
  %1471 = load i32, i32* %1432, align 4
  %1472 = sext i32 %1471 to i64
  store i64 %1472, i64* %RCX.i2266, align 8
  %1473 = shl nsw i64 %1472, 2
  %1474 = add i64 %1473, %1469
  %1475 = add i64 %1465, 14
  store i64 %1475, i64* %3, align 8
  %1476 = inttoptr i64 %1474 to i32*
  %1477 = load i32, i32* %1476, align 4
  %1478 = zext i32 %1477 to i64
  store i64 %1478, i64* %RDX.i2258, align 8
  %1479 = add i64 %1429, -20800
  %1480 = add i64 %1465, 20
  store i64 %1480, i64* %3, align 8
  %1481 = inttoptr i64 %1479 to i32*
  %1482 = load i32, i32* %1481, align 4
  %1483 = sub i32 %1477, %1482
  %1484 = icmp ult i32 %1477, %1482
  %1485 = zext i1 %1484 to i8
  store i8 %1485, i8* %25, align 1
  %1486 = and i32 %1483, 255
  %1487 = tail call i32 @llvm.ctpop.i32(i32 %1486)
  %1488 = trunc i32 %1487 to i8
  %1489 = and i8 %1488, 1
  %1490 = xor i8 %1489, 1
  store i8 %1490, i8* %32, align 1
  %1491 = xor i32 %1482, %1477
  %1492 = xor i32 %1491, %1483
  %1493 = lshr i32 %1492, 4
  %1494 = trunc i32 %1493 to i8
  %1495 = and i8 %1494, 1
  store i8 %1495, i8* %37, align 1
  %1496 = icmp eq i32 %1483, 0
  %1497 = zext i1 %1496 to i8
  store i8 %1497, i8* %40, align 1
  %1498 = lshr i32 %1483, 31
  %1499 = trunc i32 %1498 to i8
  store i8 %1499, i8* %43, align 1
  %1500 = lshr i32 %1477, 31
  %1501 = lshr i32 %1482, 31
  %1502 = xor i32 %1501, %1500
  %1503 = xor i32 %1498, %1500
  %1504 = add nuw nsw i32 %1503, %1502
  %1505 = icmp eq i32 %1504, 2
  %1506 = zext i1 %1505 to i8
  store i8 %1506, i8* %49, align 1
  %.v228 = select i1 %1496, i64 26, i64 77
  %1507 = add i64 %1465, %.v228
  store i64 %1507, i64* %3, align 8
  br i1 %1496, label %block_45397b, label %block_.L_4539ae

block_45397b:                                     ; preds = %block_453961
  %1508 = add i64 %1507, 7
  store i64 %1508, i64* %3, align 8
  %1509 = load i32, i32* %1432, align 4
  %1510 = sext i32 %1509 to i64
  store i64 %1510, i64* %RAX.i223, align 8
  %1511 = shl nsw i64 %1510, 2
  %1512 = add i64 %1429, -20736
  %1513 = add i64 %1512, %1511
  %1514 = add i64 %1507, 14
  store i64 %1514, i64* %3, align 8
  %1515 = inttoptr i64 %1513 to i32*
  %1516 = load i32, i32* %1515, align 4
  %1517 = zext i32 %1516 to i64
  store i64 %1517, i64* %RCX.i2266, align 8
  %1518 = add i64 %1429, -20828
  %1519 = add i64 %1507, 20
  store i64 %1519, i64* %3, align 8
  %1520 = inttoptr i64 %1518 to i32*
  %1521 = load i32, i32* %1520, align 4
  %1522 = sub i32 %1516, %1521
  %1523 = icmp ult i32 %1516, %1521
  %1524 = zext i1 %1523 to i8
  store i8 %1524, i8* %25, align 1
  %1525 = and i32 %1522, 255
  %1526 = tail call i32 @llvm.ctpop.i32(i32 %1525)
  %1527 = trunc i32 %1526 to i8
  %1528 = and i8 %1527, 1
  %1529 = xor i8 %1528, 1
  store i8 %1529, i8* %32, align 1
  %1530 = xor i32 %1521, %1516
  %1531 = xor i32 %1530, %1522
  %1532 = lshr i32 %1531, 4
  %1533 = trunc i32 %1532 to i8
  %1534 = and i8 %1533, 1
  store i8 %1534, i8* %37, align 1
  %1535 = icmp eq i32 %1522, 0
  %1536 = zext i1 %1535 to i8
  store i8 %1536, i8* %40, align 1
  %1537 = lshr i32 %1522, 31
  %1538 = trunc i32 %1537 to i8
  store i8 %1538, i8* %43, align 1
  %1539 = lshr i32 %1516, 31
  %1540 = lshr i32 %1521, 31
  %1541 = xor i32 %1540, %1539
  %1542 = xor i32 %1537, %1539
  %1543 = add nuw nsw i32 %1542, %1541
  %1544 = icmp eq i32 %1543, 2
  %1545 = zext i1 %1544 to i8
  store i8 %1545, i8* %49, align 1
  %1546 = icmp ne i8 %1538, 0
  %1547 = xor i1 %1546, %1544
  %1548 = or i1 %1535, %1547
  %.v327 = select i1 %1548, i64 46, i64 26
  %1549 = add i64 %1507, %.v327
  store i64 %1549, i64* %3, align 8
  br i1 %1548, label %block_.L_4539a9, label %block_453995

block_453995:                                     ; preds = %block_45397b
  %1550 = add i64 %1549, 6
  store i64 %1550, i64* %3, align 8
  %1551 = load i32, i32* %1520, align 4
  %1552 = zext i32 %1551 to i64
  store i64 %1552, i64* %RAX.i223, align 8
  %1553 = add i64 %1549, 13
  store i64 %1553, i64* %3, align 8
  %1554 = load i32, i32* %1432, align 4
  %1555 = sext i32 %1554 to i64
  store i64 %1555, i64* %RCX.i2266, align 8
  %1556 = shl nsw i64 %1555, 2
  %1557 = add i64 %1512, %1556
  %1558 = add i64 %1549, 20
  store i64 %1558, i64* %3, align 8
  %1559 = inttoptr i64 %1557 to i32*
  store i32 %1551, i32* %1559, align 4
  %.pre182 = load i64, i64* %3, align 8
  %.pre183.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_4539a9

block_.L_4539a9:                                  ; preds = %block_453995, %block_45397b
  %.pre183 = phi i64 [ %.pre183.pre, %block_453995 ], [ %1429, %block_45397b ]
  %1560 = phi i64 [ %.pre182, %block_453995 ], [ %1549, %block_45397b ]
  %1561 = add i64 %1560, 30
  store i64 %1561, i64* %3, align 8
  br label %block_.L_4539c7

block_.L_4539ae:                                  ; preds = %block_453961
  %1562 = add i64 %1507, 11
  store i64 %1562, i64* %3, align 8
  %1563 = load i32, i32* %1432, align 4
  %1564 = add i32 %1563, 1
  %1565 = zext i32 %1564 to i64
  store i64 %1565, i64* %RAX.i223, align 8
  %1566 = icmp eq i32 %1563, -1
  %1567 = icmp eq i32 %1564, 0
  %1568 = or i1 %1566, %1567
  %1569 = zext i1 %1568 to i8
  store i8 %1569, i8* %25, align 1
  %1570 = and i32 %1564, 255
  %1571 = tail call i32 @llvm.ctpop.i32(i32 %1570)
  %1572 = trunc i32 %1571 to i8
  %1573 = and i8 %1572, 1
  %1574 = xor i8 %1573, 1
  store i8 %1574, i8* %32, align 1
  %1575 = xor i32 %1564, %1563
  %1576 = lshr i32 %1575, 4
  %1577 = trunc i32 %1576 to i8
  %1578 = and i8 %1577, 1
  store i8 %1578, i8* %37, align 1
  %1579 = zext i1 %1567 to i8
  store i8 %1579, i8* %40, align 1
  %1580 = lshr i32 %1564, 31
  %1581 = trunc i32 %1580 to i8
  store i8 %1581, i8* %43, align 1
  %1582 = lshr i32 %1563, 31
  %1583 = xor i32 %1580, %1582
  %1584 = add nuw nsw i32 %1583, %1580
  %1585 = icmp eq i32 %1584, 2
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %49, align 1
  %1587 = add i64 %1507, 20
  store i64 %1587, i64* %3, align 8
  store i32 %1564, i32* %1432, align 4
  %1588 = load i64, i64* %3, align 8
  %1589 = add i64 %1588, -115
  store i64 %1589, i64* %3, align 8
  br label %block_.L_45394f

block_.L_4539c7.loopexit:                         ; preds = %block_.L_45394f
  br label %block_.L_4539c7

block_.L_4539c7:                                  ; preds = %block_.L_4539c7.loopexit, %block_.L_4539a9
  %1590 = phi i64 [ %1561, %block_.L_4539a9 ], [ %1465, %block_.L_4539c7.loopexit ]
  %1591 = phi i64 [ %.pre183, %block_.L_4539a9 ], [ %1429, %block_.L_4539c7.loopexit ]
  %1592 = add i64 %1591, -20832
  %1593 = add i64 %1590, 6
  store i64 %1593, i64* %3, align 8
  %1594 = inttoptr i64 %1592 to i32*
  %1595 = load i32, i32* %1594, align 4
  %1596 = zext i32 %1595 to i64
  store i64 %1596, i64* %RAX.i223, align 8
  %1597 = add i64 %1591, -20740
  %1598 = add i64 %1590, 12
  store i64 %1598, i64* %3, align 8
  %1599 = inttoptr i64 %1597 to i32*
  %1600 = load i32, i32* %1599, align 4
  %1601 = sub i32 %1595, %1600
  %1602 = icmp ult i32 %1595, %1600
  %1603 = zext i1 %1602 to i8
  store i8 %1603, i8* %25, align 1
  %1604 = and i32 %1601, 255
  %1605 = tail call i32 @llvm.ctpop.i32(i32 %1604)
  %1606 = trunc i32 %1605 to i8
  %1607 = and i8 %1606, 1
  %1608 = xor i8 %1607, 1
  store i8 %1608, i8* %32, align 1
  %1609 = xor i32 %1600, %1595
  %1610 = xor i32 %1609, %1601
  %1611 = lshr i32 %1610, 4
  %1612 = trunc i32 %1611 to i8
  %1613 = and i8 %1612, 1
  store i8 %1613, i8* %37, align 1
  %1614 = icmp eq i32 %1601, 0
  %1615 = zext i1 %1614 to i8
  store i8 %1615, i8* %40, align 1
  %1616 = lshr i32 %1601, 31
  %1617 = trunc i32 %1616 to i8
  store i8 %1617, i8* %43, align 1
  %1618 = lshr i32 %1595, 31
  %1619 = lshr i32 %1600, 31
  %1620 = xor i32 %1619, %1618
  %1621 = xor i32 %1616, %1618
  %1622 = add nuw nsw i32 %1621, %1620
  %1623 = icmp eq i32 %1622, 2
  %1624 = zext i1 %1623 to i8
  store i8 %1624, i8* %49, align 1
  %.v325 = select i1 %1614, i64 18, i64 89
  %1625 = add i64 %1590, %.v325
  store i64 %1625, i64* %3, align 8
  br i1 %1614, label %block_4539d9, label %block_.L_453a20

block_4539d9:                                     ; preds = %block_.L_4539c7
  %1626 = add i64 %1625, 10
  store i64 %1626, i64* %3, align 8
  %1627 = load i32, i32* %1599, align 4
  %1628 = add i32 %1627, -362
  %1629 = icmp ult i32 %1627, 362
  %1630 = zext i1 %1629 to i8
  store i8 %1630, i8* %25, align 1
  %1631 = and i32 %1628, 255
  %1632 = tail call i32 @llvm.ctpop.i32(i32 %1631)
  %1633 = trunc i32 %1632 to i8
  %1634 = and i8 %1633, 1
  %1635 = xor i8 %1634, 1
  store i8 %1635, i8* %32, align 1
  %1636 = xor i32 %1628, %1627
  %1637 = lshr i32 %1636, 4
  %1638 = trunc i32 %1637 to i8
  %1639 = and i8 %1638, 1
  store i8 %1639, i8* %37, align 1
  %1640 = icmp eq i32 %1628, 0
  %1641 = zext i1 %1640 to i8
  store i8 %1641, i8* %40, align 1
  %1642 = lshr i32 %1628, 31
  %1643 = trunc i32 %1642 to i8
  store i8 %1643, i8* %43, align 1
  %1644 = lshr i32 %1627, 31
  %1645 = xor i32 %1642, %1644
  %1646 = add nuw nsw i32 %1645, %1644
  %1647 = icmp eq i32 %1646, 2
  %1648 = zext i1 %1647 to i8
  store i8 %1648, i8* %49, align 1
  %1649 = icmp ne i8 %1643, 0
  %1650 = xor i1 %1649, %1647
  %.v326 = select i1 %1650, i64 16, i64 71
  %1651 = add i64 %1625, %.v326
  store i64 %1651, i64* %3, align 8
  br i1 %1650, label %block_4539e9, label %block_.L_453a20

block_4539e9:                                     ; preds = %block_4539d9
  %1652 = add i64 %1591, -20800
  %1653 = add i64 %1651, 6
  store i64 %1653, i64* %3, align 8
  %1654 = inttoptr i64 %1652 to i32*
  %1655 = load i32, i32* %1654, align 4
  %1656 = zext i32 %1655 to i64
  store i64 %1656, i64* %RAX.i223, align 8
  %1657 = add i64 %1591, -40
  %1658 = add i64 %1651, 10
  store i64 %1658, i64* %3, align 8
  %1659 = inttoptr i64 %1657 to i64*
  %1660 = load i64, i64* %1659, align 8
  store i64 %1660, i64* %RCX.i2266, align 8
  %1661 = add i64 %1651, 17
  store i64 %1661, i64* %3, align 8
  %1662 = load i32, i32* %1599, align 4
  %1663 = sext i32 %1662 to i64
  store i64 %1663, i64* %RDX.i2258, align 8
  %1664 = shl nsw i64 %1663, 2
  %1665 = add i64 %1664, %1660
  %1666 = add i64 %1651, 20
  store i64 %1666, i64* %3, align 8
  %1667 = inttoptr i64 %1665 to i32*
  store i32 %1655, i32* %1667, align 4
  %1668 = load i64, i64* %RBP.i, align 8
  %1669 = add i64 %1668, -20828
  %1670 = load i64, i64* %3, align 8
  %1671 = add i64 %1670, 6
  store i64 %1671, i64* %3, align 8
  %1672 = inttoptr i64 %1669 to i32*
  %1673 = load i32, i32* %1672, align 4
  %1674 = zext i32 %1673 to i64
  store i64 %1674, i64* %RAX.i223, align 8
  %1675 = add i64 %1668, -20740
  %1676 = add i64 %1670, 13
  store i64 %1676, i64* %3, align 8
  %1677 = inttoptr i64 %1675 to i32*
  %1678 = load i32, i32* %1677, align 4
  %1679 = sext i32 %1678 to i64
  store i64 %1679, i64* %RCX.i2266, align 8
  %1680 = shl nsw i64 %1679, 2
  %1681 = add i64 %1668, -20736
  %1682 = add i64 %1681, %1680
  %1683 = add i64 %1670, 20
  store i64 %1683, i64* %3, align 8
  %1684 = inttoptr i64 %1682 to i32*
  store i32 %1673, i32* %1684, align 4
  %1685 = load i64, i64* %RBP.i, align 8
  %1686 = add i64 %1685, -20740
  %1687 = load i64, i64* %3, align 8
  %1688 = add i64 %1687, 6
  store i64 %1688, i64* %3, align 8
  %1689 = inttoptr i64 %1686 to i32*
  %1690 = load i32, i32* %1689, align 4
  %1691 = add i32 %1690, 1
  %1692 = zext i32 %1691 to i64
  store i64 %1692, i64* %RAX.i223, align 8
  %1693 = icmp eq i32 %1690, -1
  %1694 = icmp eq i32 %1691, 0
  %1695 = or i1 %1693, %1694
  %1696 = zext i1 %1695 to i8
  store i8 %1696, i8* %25, align 1
  %1697 = and i32 %1691, 255
  %1698 = tail call i32 @llvm.ctpop.i32(i32 %1697)
  %1699 = trunc i32 %1698 to i8
  %1700 = and i8 %1699, 1
  %1701 = xor i8 %1700, 1
  store i8 %1701, i8* %32, align 1
  %1702 = xor i32 %1691, %1690
  %1703 = lshr i32 %1702, 4
  %1704 = trunc i32 %1703 to i8
  %1705 = and i8 %1704, 1
  store i8 %1705, i8* %37, align 1
  %1706 = zext i1 %1694 to i8
  store i8 %1706, i8* %40, align 1
  %1707 = lshr i32 %1691, 31
  %1708 = trunc i32 %1707 to i8
  store i8 %1708, i8* %43, align 1
  %1709 = lshr i32 %1690, 31
  %1710 = xor i32 %1707, %1709
  %1711 = add nuw nsw i32 %1710, %1707
  %1712 = icmp eq i32 %1711, 2
  %1713 = zext i1 %1712 to i8
  store i8 %1713, i8* %49, align 1
  %1714 = add i64 %1687, 15
  store i64 %1714, i64* %3, align 8
  store i32 %1691, i32* %1689, align 4
  %.pre184 = load i64, i64* %3, align 8
  br label %block_.L_453a20

block_.L_453a20:                                  ; preds = %block_.L_4539c7, %block_4539d9, %block_4539e9
  %1715 = phi i64 [ %1651, %block_4539d9 ], [ %.pre184, %block_4539e9 ], [ %1625, %block_.L_4539c7 ]
  %1716 = add i64 %1715, 52
  br label %block_.L_453a54

block_.L_453a2a:                                  ; preds = %block_453929
  %1717 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %25, align 1
  %1718 = and i32 %1717, 255
  %1719 = tail call i32 @llvm.ctpop.i32(i32 %1718)
  %1720 = trunc i32 %1719 to i8
  %1721 = and i8 %1720, 1
  %1722 = xor i8 %1721, 1
  store i8 %1722, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %1723 = icmp eq i32 %1717, 0
  %1724 = zext i1 %1723 to i8
  store i8 %1724, i8* %40, align 1
  %1725 = lshr i32 %1717, 31
  %1726 = trunc i32 %1725 to i8
  store i8 %1726, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %1727 = icmp ne i8 %1726, 0
  %1728 = or i1 %1723, %1727
  %.v328 = select i1 %1728, i64 37, i64 14
  %1729 = add i64 %1423, %.v328
  store i64 %1729, i64* %3, align 8
  br i1 %1728, label %block_.L_453a4f, label %block_453a38

block_453a38:                                     ; preds = %block_.L_453a2a
  store i64 ptrtoint (%G__0x57f718_type* @G__0x57f718 to i64), i64* %RDI.i2208, align 8
  store i8 0, i8* %AL.i930.pre-phi, align 1
  %1730 = add i64 %1729, -7304
  %1731 = add i64 %1729, 17
  %1732 = load i64, i64* %6, align 8
  %1733 = add i64 %1732, -8
  %1734 = inttoptr i64 %1733 to i64*
  store i64 %1731, i64* %1734, align 8
  store i64 %1733, i64* %6, align 8
  store i64 %1730, i64* %3, align 8
  %call2_453a44 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1730, %struct.Memory* %call2_453932)
  %1735 = load i64, i64* %RBP.i, align 8
  %1736 = add i64 %1735, -21432
  %1737 = load i32, i32* %EAX.i2180, align 4
  %1738 = load i64, i64* %3, align 8
  %1739 = add i64 %1738, 6
  store i64 %1739, i64* %3, align 8
  %1740 = inttoptr i64 %1736 to i32*
  store i32 %1737, i32* %1740, align 4
  %.pre185 = load i64, i64* %3, align 8
  br label %block_.L_453a4f

block_.L_453a4f:                                  ; preds = %block_453a38, %block_.L_453a2a
  %1741 = phi i64 [ %1729, %block_.L_453a2a ], [ %.pre185, %block_453a38 ]
  %MEMORY.18 = phi %struct.Memory* [ %call2_453932, %block_.L_453a2a ], [ %call2_453a44, %block_453a38 ]
  %1742 = add i64 %1741, 5
  store i64 %1742, i64* %3, align 8
  br label %block_.L_453a54

block_.L_453a54:                                  ; preds = %block_.L_453a4f, %block_.L_453a20
  %storemerge = phi i64 [ %1716, %block_.L_453a20 ], [ %1742, %block_.L_453a4f ]
  %MEMORY.19 = phi %struct.Memory* [ %call2_453932, %block_.L_453a20 ], [ %MEMORY.18, %block_.L_453a4f ]
  %1743 = add i64 %storemerge, 1844
  br label %block_.L_454188

block_.L_453a59:                                  ; preds = %block_.L_453911
  %1744 = add i64 %1398, 7
  store i64 %1744, i64* %3, align 8
  %1745 = load i32, i32* %1294, align 4
  %1746 = sext i32 %1745 to i64
  store i64 %1746, i64* %RAX.i223, align 8
  %1747 = add nsw i64 %1746, 12099168
  %1748 = add i64 %1398, 15
  store i64 %1748, i64* %3, align 8
  %1749 = inttoptr i64 %1747 to i8*
  %1750 = load i8, i8* %1749, align 1
  %1751 = zext i8 %1750 to i64
  store i64 %1751, i64* %RCX.i2266, align 8
  %1752 = zext i8 %1750 to i32
  %1753 = add i64 %1291, -56
  %1754 = add i64 %1398, 18
  store i64 %1754, i64* %3, align 8
  %1755 = inttoptr i64 %1753 to i32*
  %1756 = load i32, i32* %1755, align 4
  %1757 = sub i32 %1752, %1756
  %1758 = icmp ult i32 %1752, %1756
  %1759 = zext i1 %1758 to i8
  store i8 %1759, i8* %25, align 1
  %1760 = and i32 %1757, 255
  %1761 = tail call i32 @llvm.ctpop.i32(i32 %1760)
  %1762 = trunc i32 %1761 to i8
  %1763 = and i8 %1762, 1
  %1764 = xor i8 %1763, 1
  store i8 %1764, i8* %32, align 1
  %1765 = xor i32 %1756, %1752
  %1766 = xor i32 %1765, %1757
  %1767 = lshr i32 %1766, 4
  %1768 = trunc i32 %1767 to i8
  %1769 = and i8 %1768, 1
  store i8 %1769, i8* %37, align 1
  %1770 = icmp eq i32 %1757, 0
  %1771 = zext i1 %1770 to i8
  store i8 %1771, i8* %40, align 1
  %1772 = lshr i32 %1757, 31
  %1773 = trunc i32 %1772 to i8
  store i8 %1773, i8* %43, align 1
  %1774 = lshr i32 %1756, 31
  %1775 = add nuw nsw i32 %1772, %1774
  %1776 = icmp eq i32 %1775, 2
  %1777 = zext i1 %1776 to i8
  store i8 %1777, i8* %49, align 1
  %.v296 = select i1 %1770, i64 24, i64 974
  %1778 = add i64 %1398, %.v296
  store i64 %1778, i64* %3, align 8
  br i1 %1770, label %block_453a71, label %block_.L_453e27

block_453a71:                                     ; preds = %block_.L_453a59
  %1779 = add i64 %1291, -20760
  store i64 %1779, i64* %RSI.i2205, align 8
  %1780 = add i64 %1291, -20764
  store i64 %1780, i64* %RDX.i2258, align 8
  %1781 = add i64 %1291, -20768
  store i64 %1781, i64* %RCX.i2266, align 8
  %1782 = add i64 %1291, -20772
  store i64 %1782, i64* %R8.i2264, align 8
  %1783 = add i64 %1778, 34
  store i64 %1783, i64* %3, align 8
  %1784 = load i32, i32* %1294, align 4
  %1785 = zext i32 %1784 to i64
  store i64 %1785, i64* %RDI.i2208, align 8
  %1786 = add i64 %1778, 93887
  %1787 = add i64 %1778, 39
  %1788 = load i64, i64* %6, align 8
  %1789 = add i64 %1788, -8
  %1790 = inttoptr i64 %1789 to i64*
  store i64 %1787, i64* %1790, align 8
  store i64 %1789, i64* %6, align 8
  store i64 %1786, i64* %3, align 8
  %call2_453a93 = tail call %struct.Memory* @sub_46a930.attack_and_defend(%struct.State* nonnull %0, i64 %1786, %struct.Memory* %MEMORY.11)
  %1791 = load i64, i64* %3, align 8
  %1792 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %25, align 1
  %1793 = and i32 %1792, 255
  %1794 = tail call i32 @llvm.ctpop.i32(i32 %1793)
  %1795 = trunc i32 %1794 to i8
  %1796 = and i8 %1795, 1
  %1797 = xor i8 %1796, 1
  store i8 %1797, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %1798 = icmp eq i32 %1792, 0
  %1799 = zext i1 %1798 to i8
  store i8 %1799, i8* %40, align 1
  %1800 = lshr i32 %1792, 31
  %1801 = trunc i32 %1800 to i8
  store i8 %1801, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %1802 = load i64, i64* %RBP.i, align 8
  %1803 = add i64 %1802, -21436
  %1804 = load i32, i32* %EAX.i2180, align 4
  %1805 = add i64 %1791, 14
  store i64 %1805, i64* %3, align 8
  %1806 = inttoptr i64 %1803 to i32*
  store i32 %1804, i32* %1806, align 4
  %1807 = load i64, i64* %3, align 8
  %1808 = add i64 %1807, 54
  %1809 = add i64 %1807, 6
  %1810 = load i8, i8* %40, align 1
  %1811 = icmp ne i8 %1810, 0
  %1812 = load i8, i8* %43, align 1
  %1813 = icmp ne i8 %1812, 0
  %1814 = load i8, i8* %49, align 1
  %1815 = icmp ne i8 %1814, 0
  %1816 = xor i1 %1813, %1815
  %1817 = or i1 %1811, %1816
  %1818 = select i1 %1817, i64 %1808, i64 %1809
  store i64 %1818, i64* %3, align 8
  br i1 %1817, label %block_.L_453adc, label %block_453aac

block_453aac:                                     ; preds = %block_453a71
  store i64 ptrtoint (%G__0x57f733_type* @G__0x57f733 to i64), i64* %RDI.i2208, align 8
  %1819 = load i64, i64* %RBP.i, align 8
  %1820 = add i64 %1819, -20760
  %1821 = add i64 %1818, 16
  store i64 %1821, i64* %3, align 8
  %1822 = inttoptr i64 %1820 to i32*
  %1823 = load i32, i32* %1822, align 4
  %1824 = zext i32 %1823 to i64
  store i64 %1824, i64* %RSI.i2205, align 8
  %1825 = add i64 %1819, -20764
  %1826 = add i64 %1818, 22
  store i64 %1826, i64* %3, align 8
  %1827 = inttoptr i64 %1825 to i32*
  %1828 = load i32, i32* %1827, align 4
  %1829 = zext i32 %1828 to i64
  store i64 %1829, i64* %RDX.i2258, align 8
  %1830 = add i64 %1819, -20768
  %1831 = add i64 %1818, 28
  store i64 %1831, i64* %3, align 8
  %1832 = inttoptr i64 %1830 to i32*
  %1833 = load i32, i32* %1832, align 4
  %1834 = zext i32 %1833 to i64
  store i64 %1834, i64* %RCX.i2266, align 8
  %1835 = add i64 %1819, -20772
  %1836 = add i64 %1818, 35
  store i64 %1836, i64* %3, align 8
  %1837 = inttoptr i64 %1835 to i32*
  %1838 = load i32, i32* %1837, align 4
  %1839 = zext i32 %1838 to i64
  store i64 %1839, i64* %R8.i2264, align 8
  store i8 0, i8* %AL.i930.pre-phi, align 1
  %1840 = add i64 %1818, -7420
  %1841 = add i64 %1818, 42
  %1842 = load i64, i64* %6, align 8
  %1843 = add i64 %1842, -8
  %1844 = inttoptr i64 %1843 to i64*
  store i64 %1841, i64* %1844, align 8
  store i64 %1843, i64* %6, align 8
  store i64 %1840, i64* %3, align 8
  %call2_453ad1 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1840, %struct.Memory* %call2_453a93)
  %1845 = load i64, i64* %RBP.i, align 8
  %1846 = add i64 %1845, -21440
  %1847 = load i32, i32* %EAX.i2180, align 4
  %1848 = load i64, i64* %3, align 8
  %1849 = add i64 %1848, 6
  store i64 %1849, i64* %3, align 8
  %1850 = inttoptr i64 %1846 to i32*
  store i32 %1847, i32* %1850, align 4
  %.pre186 = load i64, i64* %3, align 8
  br label %block_.L_453adc

block_.L_453adc:                                  ; preds = %block_453aac, %block_453a71
  %1851 = phi i64 [ %1808, %block_453a71 ], [ %.pre186, %block_453aac ]
  %MEMORY.20 = phi %struct.Memory* [ %call2_453a93, %block_453a71 ], [ %call2_453ad1, %block_453aac ]
  %1852 = load i64, i64* %RBP.i, align 8
  %1853 = add i64 %1852, -60
  %1854 = add i64 %1851, 4
  store i64 %1854, i64* %3, align 8
  %1855 = inttoptr i64 %1853 to i32*
  %1856 = load i32, i32* %1855, align 4
  store i8 0, i8* %25, align 1
  %1857 = and i32 %1856, 255
  %1858 = tail call i32 @llvm.ctpop.i32(i32 %1857)
  %1859 = trunc i32 %1858 to i8
  %1860 = and i8 %1859, 1
  %1861 = xor i8 %1860, 1
  store i8 %1861, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %1862 = icmp eq i32 %1856, 0
  %1863 = zext i1 %1862 to i8
  store i8 %1863, i8* %40, align 1
  %1864 = lshr i32 %1856, 31
  %1865 = trunc i32 %1864 to i8
  store i8 %1865, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v310 = select i1 %1862, i64 502, i64 10
  %1866 = add i64 %1851, %.v310
  store i64 %1866, i64* %3, align 8
  br i1 %1862, label %block_.L_453cd2, label %block_453ae6

block_453ae6:                                     ; preds = %block_.L_453adc
  %1867 = add i64 %1852, -20760
  %1868 = add i64 %1866, 7
  store i64 %1868, i64* %3, align 8
  %1869 = inttoptr i64 %1867 to i32*
  %1870 = load i32, i32* %1869, align 4
  store i8 0, i8* %25, align 1
  %1871 = and i32 %1870, 255
  %1872 = tail call i32 @llvm.ctpop.i32(i32 %1871)
  %1873 = trunc i32 %1872 to i8
  %1874 = and i8 %1873, 1
  %1875 = xor i8 %1874, 1
  store i8 %1875, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %1876 = icmp eq i32 %1870, 0
  %1877 = zext i1 %1876 to i8
  store i8 %1877, i8* %40, align 1
  %1878 = lshr i32 %1870, 31
  %1879 = trunc i32 %1878 to i8
  store i8 %1879, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v311 = select i1 %1876, i64 492, i64 13
  %1880 = add i64 %1866, %.v311
  store i64 %1880, i64* %3, align 8
  br i1 %1876, label %block_.L_453cd2, label %block_453af3

block_453af3:                                     ; preds = %block_453ae6
  %1881 = add i64 %1852, -20768
  %1882 = add i64 %1880, 7
  store i64 %1882, i64* %3, align 8
  %1883 = inttoptr i64 %1881 to i32*
  %1884 = load i32, i32* %1883, align 4
  store i8 0, i8* %25, align 1
  %1885 = and i32 %1884, 255
  %1886 = tail call i32 @llvm.ctpop.i32(i32 %1885)
  %1887 = trunc i32 %1886 to i8
  %1888 = and i8 %1887, 1
  %1889 = xor i8 %1888, 1
  store i8 %1889, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %1890 = icmp eq i32 %1884, 0
  %1891 = zext i1 %1890 to i8
  store i8 %1891, i8* %40, align 1
  %1892 = lshr i32 %1884, 31
  %1893 = trunc i32 %1892 to i8
  store i8 %1893, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v312 = select i1 %1890, i64 13, i64 72
  %1894 = add i64 %1880, %.v312
  store i64 %1894, i64* %3, align 8
  br i1 %1890, label %block_453b00, label %block_.L_453b3b

block_453b00:                                     ; preds = %block_453af3
  %1895 = add i64 %1852, -20828
  %1896 = add i64 %1894, 6
  store i64 %1896, i64* %3, align 8
  %1897 = inttoptr i64 %1895 to i32*
  %1898 = load i32, i32* %1897, align 4
  %1899 = add i32 %1898, 500
  %1900 = zext i32 %1899 to i64
  store i64 %1900, i64* %RAX.i223, align 8
  %1901 = add i64 %1894, 17
  store i64 %1901, i64* %3, align 8
  store i32 %1899, i32* %1897, align 4
  %1902 = load i64, i64* %3, align 8
  %1903 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %25, align 1
  %1904 = and i32 %1903, 255
  %1905 = tail call i32 @llvm.ctpop.i32(i32 %1904)
  %1906 = trunc i32 %1905 to i8
  %1907 = and i8 %1906, 1
  %1908 = xor i8 %1907, 1
  store i8 %1908, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %1909 = icmp eq i32 %1903, 0
  %1910 = zext i1 %1909 to i8
  store i8 %1910, i8* %40, align 1
  %1911 = lshr i32 %1903, 31
  %1912 = trunc i32 %1911 to i8
  store i8 %1912, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %1913 = icmp ne i8 %1912, 0
  %1914 = or i1 %1909, %1913
  %.v319 = select i1 %1914, i64 37, i64 14
  %1915 = add i64 %1902, %.v319
  store i64 %1915, i64* %3, align 8
  br i1 %1914, label %block_.L_453b36, label %block_453b1f

block_453b1f:                                     ; preds = %block_453b00
  store i64 ptrtoint (%G__0x57f770_type* @G__0x57f770 to i64), i64* %RDI.i2208, align 8
  store i8 0, i8* %AL.i930.pre-phi, align 1
  %1916 = add i64 %1915, -7535
  %1917 = add i64 %1915, 17
  %1918 = load i64, i64* %6, align 8
  %1919 = add i64 %1918, -8
  %1920 = inttoptr i64 %1919 to i64*
  store i64 %1917, i64* %1920, align 8
  store i64 %1919, i64* %6, align 8
  store i64 %1916, i64* %3, align 8
  %call2_453b2b = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1916, %struct.Memory* %MEMORY.20)
  %1921 = load i64, i64* %RBP.i, align 8
  %1922 = add i64 %1921, -21444
  %1923 = load i32, i32* %EAX.i2180, align 4
  %1924 = load i64, i64* %3, align 8
  %1925 = add i64 %1924, 6
  store i64 %1925, i64* %3, align 8
  %1926 = inttoptr i64 %1922 to i32*
  store i32 %1923, i32* %1926, align 4
  %.pre187 = load i64, i64* %3, align 8
  br label %block_.L_453b36

block_.L_453b36:                                  ; preds = %block_453b1f, %block_453b00
  %1927 = phi i64 [ %1915, %block_453b00 ], [ %.pre187, %block_453b1f ]
  %MEMORY.21 = phi %struct.Memory* [ %MEMORY.20, %block_453b00 ], [ %call2_453b2b, %block_453b1f ]
  %1928 = add i64 %1927, 117
  br label %block_.L_453bab

block_.L_453b3b:                                  ; preds = %block_453af3
  %1929 = add i64 %1852, -20764
  %1930 = add i64 %1894, 7
  store i64 %1930, i64* %3, align 8
  %1931 = inttoptr i64 %1929 to i32*
  %1932 = load i32, i32* %1931, align 4
  %1933 = sext i32 %1932 to i64
  store i64 %1933, i64* %RAX.i223, align 8
  %1934 = shl nsw i64 %1933, 2
  %1935 = add i64 %1852, -9672
  %1936 = add i64 %1935, %1934
  %1937 = add i64 %1894, 14
  store i64 %1937, i64* %3, align 8
  %1938 = inttoptr i64 %1936 to i32*
  %1939 = load i32, i32* %1938, align 4
  %1940 = zext i32 %1939 to i64
  store i64 %1940, i64* %RCX.i2266, align 8
  %1941 = add i64 %1894, 21
  store i64 %1941, i64* %3, align 8
  %1942 = load i32, i32* %1931, align 4
  %1943 = sext i32 %1942 to i64
  store i64 %1943, i64* %RAX.i223, align 8
  %1944 = shl nsw i64 %1943, 2
  %1945 = add nsw i64 %1944, -19280
  %1946 = add i64 %1945, %1852
  %1947 = add i64 %1894, 28
  store i64 %1947, i64* %3, align 8
  %1948 = inttoptr i64 %1946 to i32*
  %1949 = load i32, i32* %1948, align 4
  %1950 = add i32 %1949, %1939
  %1951 = zext i32 %1950 to i64
  store i64 %1951, i64* %RCX.i2266, align 8
  %1952 = icmp ult i32 %1950, %1939
  %1953 = icmp ult i32 %1950, %1949
  %1954 = or i1 %1952, %1953
  %1955 = zext i1 %1954 to i8
  store i8 %1955, i8* %25, align 1
  %1956 = and i32 %1950, 255
  %1957 = tail call i32 @llvm.ctpop.i32(i32 %1956)
  %1958 = trunc i32 %1957 to i8
  %1959 = and i8 %1958, 1
  %1960 = xor i8 %1959, 1
  store i8 %1960, i8* %32, align 1
  %1961 = xor i32 %1949, %1939
  %1962 = xor i32 %1961, %1950
  %1963 = lshr i32 %1962, 4
  %1964 = trunc i32 %1963 to i8
  %1965 = and i8 %1964, 1
  store i8 %1965, i8* %37, align 1
  %1966 = icmp eq i32 %1950, 0
  %1967 = zext i1 %1966 to i8
  store i8 %1967, i8* %40, align 1
  %1968 = lshr i32 %1950, 31
  %1969 = trunc i32 %1968 to i8
  store i8 %1969, i8* %43, align 1
  %1970 = lshr i32 %1939, 31
  %1971 = lshr i32 %1949, 31
  %1972 = xor i32 %1968, %1970
  %1973 = xor i32 %1968, %1971
  %1974 = add nuw nsw i32 %1972, %1973
  %1975 = icmp eq i32 %1974, 2
  %1976 = zext i1 %1975 to i8
  store i8 %1976, i8* %49, align 1
  %1977 = add i64 %1852, -20804
  %1978 = add i64 %1894, 34
  store i64 %1978, i64* %3, align 8
  %1979 = inttoptr i64 %1977 to i32*
  %1980 = load i32, i32* %1979, align 4
  %1981 = zext i32 %1980 to i64
  store i64 %1981, i64* %RDX.i2258, align 8
  %1982 = add i64 %1852, -20812
  %1983 = add i64 %1894, 40
  store i64 %1983, i64* %3, align 8
  %1984 = inttoptr i64 %1982 to i32*
  %1985 = load i32, i32* %1984, align 4
  %1986 = add i32 %1985, %1980
  %1987 = zext i32 %1986 to i64
  store i64 %1987, i64* %RDX.i2258, align 8
  %1988 = lshr i32 %1986, 31
  %1989 = sub i32 %1950, %1986
  %1990 = icmp ult i32 %1950, %1986
  %1991 = zext i1 %1990 to i8
  store i8 %1991, i8* %25, align 1
  %1992 = and i32 %1989, 255
  %1993 = tail call i32 @llvm.ctpop.i32(i32 %1992)
  %1994 = trunc i32 %1993 to i8
  %1995 = and i8 %1994, 1
  %1996 = xor i8 %1995, 1
  store i8 %1996, i8* %32, align 1
  %1997 = xor i32 %1986, %1950
  %1998 = xor i32 %1997, %1989
  %1999 = lshr i32 %1998, 4
  %2000 = trunc i32 %1999 to i8
  %2001 = and i8 %2000, 1
  store i8 %2001, i8* %37, align 1
  %2002 = icmp eq i32 %1989, 0
  %2003 = zext i1 %2002 to i8
  store i8 %2003, i8* %40, align 1
  %2004 = lshr i32 %1989, 31
  %2005 = trunc i32 %2004 to i8
  store i8 %2005, i8* %43, align 1
  %2006 = xor i32 %1988, %1968
  %2007 = xor i32 %2004, %1968
  %2008 = add nuw nsw i32 %2007, %2006
  %2009 = icmp eq i32 %2008, 2
  %2010 = zext i1 %2009 to i8
  store i8 %2010, i8* %49, align 1
  %2011 = icmp ne i8 %2005, 0
  %2012 = xor i1 %2011, %2009
  %2013 = or i1 %2002, %2012
  %.v313 = select i1 %2013, i64 107, i64 48
  %2014 = add i64 %1894, %.v313
  store i64 %2014, i64* %3, align 8
  br i1 %2013, label %block_.L_453ba6, label %block_453b6b

block_453b6b:                                     ; preds = %block_.L_453b3b
  %2015 = load i64, i64* %RBP.i, align 8
  %2016 = add i64 %2015, -20828
  %2017 = add i64 %2014, 6
  store i64 %2017, i64* %3, align 8
  %2018 = inttoptr i64 %2016 to i32*
  %2019 = load i32, i32* %2018, align 4
  %2020 = add i32 %2019, 500
  %2021 = zext i32 %2020 to i64
  store i64 %2021, i64* %RAX.i223, align 8
  %2022 = add i64 %2014, 17
  store i64 %2022, i64* %3, align 8
  store i32 %2020, i32* %2018, align 4
  %2023 = load i64, i64* %3, align 8
  %2024 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %25, align 1
  %2025 = and i32 %2024, 255
  %2026 = tail call i32 @llvm.ctpop.i32(i32 %2025)
  %2027 = trunc i32 %2026 to i8
  %2028 = and i8 %2027, 1
  %2029 = xor i8 %2028, 1
  store i8 %2029, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %2030 = icmp eq i32 %2024, 0
  %2031 = zext i1 %2030 to i8
  store i8 %2031, i8* %40, align 1
  %2032 = lshr i32 %2024, 31
  %2033 = trunc i32 %2032 to i8
  store i8 %2033, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %2034 = icmp ne i8 %2033, 0
  %2035 = or i1 %2030, %2034
  %.v314 = select i1 %2035, i64 37, i64 14
  %2036 = add i64 %2023, %.v314
  store i64 %2036, i64* %3, align 8
  br i1 %2035, label %block_.L_453ba1, label %block_453b8a

block_453b8a:                                     ; preds = %block_453b6b
  store i64 ptrtoint (%G__0x57f786_type* @G__0x57f786 to i64), i64* %RDI.i2208, align 8
  store i8 0, i8* %AL.i930.pre-phi, align 1
  %2037 = add i64 %2036, -7642
  %2038 = add i64 %2036, 17
  %2039 = load i64, i64* %6, align 8
  %2040 = add i64 %2039, -8
  %2041 = inttoptr i64 %2040 to i64*
  store i64 %2038, i64* %2041, align 8
  store i64 %2040, i64* %6, align 8
  store i64 %2037, i64* %3, align 8
  %call2_453b96 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2037, %struct.Memory* %MEMORY.20)
  %2042 = load i64, i64* %RBP.i, align 8
  %2043 = add i64 %2042, -21448
  %2044 = load i32, i32* %EAX.i2180, align 4
  %2045 = load i64, i64* %3, align 8
  %2046 = add i64 %2045, 6
  store i64 %2046, i64* %3, align 8
  %2047 = inttoptr i64 %2043 to i32*
  store i32 %2044, i32* %2047, align 4
  %.pre188 = load i64, i64* %3, align 8
  br label %block_.L_453ba1

block_.L_453ba1:                                  ; preds = %block_453b8a, %block_453b6b
  %2048 = phi i64 [ %2036, %block_453b6b ], [ %.pre188, %block_453b8a ]
  %MEMORY.22 = phi %struct.Memory* [ %MEMORY.20, %block_453b6b ], [ %call2_453b96, %block_453b8a ]
  %2049 = add i64 %2048, 5
  store i64 %2049, i64* %3, align 8
  br label %block_.L_453ba6

block_.L_453ba6:                                  ; preds = %block_.L_453ba1, %block_.L_453b3b
  %2050 = phi i64 [ %2014, %block_.L_453b3b ], [ %2049, %block_.L_453ba1 ]
  %MEMORY.23 = phi %struct.Memory* [ %MEMORY.20, %block_.L_453b3b ], [ %MEMORY.22, %block_.L_453ba1 ]
  %2051 = add i64 %2050, 5
  store i64 %2051, i64* %3, align 8
  br label %block_.L_453bab

block_.L_453bab:                                  ; preds = %block_.L_453ba6, %block_.L_453b36
  %storemerge107 = phi i64 [ %1928, %block_.L_453b36 ], [ %2051, %block_.L_453ba6 ]
  %MEMORY.24 = phi %struct.Memory* [ %MEMORY.21, %block_.L_453b36 ], [ %MEMORY.23, %block_.L_453ba6 ]
  %2052 = load i64, i64* %RBP.i, align 8
  %2053 = add i64 %2052, -20836
  %2054 = add i64 %storemerge107, 15
  store i64 %2054, i64* %3, align 8
  %2055 = inttoptr i64 %2053 to i32*
  store i32 0, i32* %2055, align 4
  %.pre189 = load i64, i64* %3, align 8
  br label %block_.L_453bba

block_.L_453bba:                                  ; preds = %block_.L_453c26, %block_.L_453bab
  %2056 = phi i64 [ %2241, %block_.L_453c26 ], [ %.pre189, %block_.L_453bab ]
  %2057 = load i64, i64* %RBP.i, align 8
  %2058 = add i64 %2057, -20836
  %2059 = add i64 %2056, 6
  store i64 %2059, i64* %3, align 8
  %2060 = inttoptr i64 %2058 to i32*
  %2061 = load i32, i32* %2060, align 4
  %2062 = zext i32 %2061 to i64
  store i64 %2062, i64* %RAX.i223, align 8
  %2063 = add i64 %2057, -20740
  %2064 = add i64 %2056, 12
  store i64 %2064, i64* %3, align 8
  %2065 = inttoptr i64 %2063 to i32*
  %2066 = load i32, i32* %2065, align 4
  %2067 = sub i32 %2061, %2066
  %2068 = icmp ult i32 %2061, %2066
  %2069 = zext i1 %2068 to i8
  store i8 %2069, i8* %25, align 1
  %2070 = and i32 %2067, 255
  %2071 = tail call i32 @llvm.ctpop.i32(i32 %2070)
  %2072 = trunc i32 %2071 to i8
  %2073 = and i8 %2072, 1
  %2074 = xor i8 %2073, 1
  store i8 %2074, i8* %32, align 1
  %2075 = xor i32 %2066, %2061
  %2076 = xor i32 %2075, %2067
  %2077 = lshr i32 %2076, 4
  %2078 = trunc i32 %2077 to i8
  %2079 = and i8 %2078, 1
  store i8 %2079, i8* %37, align 1
  %2080 = icmp eq i32 %2067, 0
  %2081 = zext i1 %2080 to i8
  store i8 %2081, i8* %40, align 1
  %2082 = lshr i32 %2067, 31
  %2083 = trunc i32 %2082 to i8
  store i8 %2083, i8* %43, align 1
  %2084 = lshr i32 %2061, 31
  %2085 = lshr i32 %2066, 31
  %2086 = xor i32 %2085, %2084
  %2087 = xor i32 %2082, %2084
  %2088 = add nuw nsw i32 %2087, %2086
  %2089 = icmp eq i32 %2088, 2
  %2090 = zext i1 %2089 to i8
  store i8 %2090, i8* %49, align 1
  %2091 = icmp ne i8 %2083, 0
  %2092 = xor i1 %2091, %2089
  %.v231 = select i1 %2092, i64 18, i64 133
  %2093 = add i64 %2056, %.v231
  store i64 %2093, i64* %3, align 8
  br i1 %2092, label %block_453bcc, label %block_.L_453c3f.loopexit

block_453bcc:                                     ; preds = %block_.L_453bba
  %2094 = add i64 %2057, -40
  %2095 = add i64 %2093, 4
  store i64 %2095, i64* %3, align 8
  %2096 = inttoptr i64 %2094 to i64*
  %2097 = load i64, i64* %2096, align 8
  store i64 %2097, i64* %RAX.i223, align 8
  %2098 = add i64 %2093, 11
  store i64 %2098, i64* %3, align 8
  %2099 = load i32, i32* %2060, align 4
  %2100 = sext i32 %2099 to i64
  store i64 %2100, i64* %RCX.i2266, align 8
  %2101 = shl nsw i64 %2100, 2
  %2102 = add i64 %2101, %2097
  %2103 = add i64 %2093, 14
  store i64 %2103, i64* %3, align 8
  %2104 = inttoptr i64 %2102 to i32*
  %2105 = load i32, i32* %2104, align 4
  %2106 = zext i32 %2105 to i64
  store i64 %2106, i64* %RDX.i2258, align 8
  %2107 = add i64 %2057, -20764
  %2108 = add i64 %2093, 20
  store i64 %2108, i64* %3, align 8
  %2109 = inttoptr i64 %2107 to i32*
  %2110 = load i32, i32* %2109, align 4
  %2111 = sub i32 %2105, %2110
  %2112 = icmp ult i32 %2105, %2110
  %2113 = zext i1 %2112 to i8
  store i8 %2113, i8* %25, align 1
  %2114 = and i32 %2111, 255
  %2115 = tail call i32 @llvm.ctpop.i32(i32 %2114)
  %2116 = trunc i32 %2115 to i8
  %2117 = and i8 %2116, 1
  %2118 = xor i8 %2117, 1
  store i8 %2118, i8* %32, align 1
  %2119 = xor i32 %2110, %2105
  %2120 = xor i32 %2119, %2111
  %2121 = lshr i32 %2120, 4
  %2122 = trunc i32 %2121 to i8
  %2123 = and i8 %2122, 1
  store i8 %2123, i8* %37, align 1
  %2124 = icmp eq i32 %2111, 0
  %2125 = zext i1 %2124 to i8
  store i8 %2125, i8* %40, align 1
  %2126 = lshr i32 %2111, 31
  %2127 = trunc i32 %2126 to i8
  store i8 %2127, i8* %43, align 1
  %2128 = lshr i32 %2105, 31
  %2129 = lshr i32 %2110, 31
  %2130 = xor i32 %2129, %2128
  %2131 = xor i32 %2126, %2128
  %2132 = add nuw nsw i32 %2131, %2130
  %2133 = icmp eq i32 %2132, 2
  %2134 = zext i1 %2133 to i8
  store i8 %2134, i8* %49, align 1
  %.v230 = select i1 %2124, i64 26, i64 90
  %2135 = add i64 %2093, %.v230
  store i64 %2135, i64* %3, align 8
  br i1 %2124, label %block_453be6, label %block_.L_453c26

block_453be6:                                     ; preds = %block_453bcc
  %2136 = add i64 %2135, 7
  store i64 %2136, i64* %3, align 8
  %2137 = load i32, i32* %2060, align 4
  %2138 = sext i32 %2137 to i64
  store i64 %2138, i64* %RAX.i223, align 8
  %2139 = shl nsw i64 %2138, 2
  %2140 = add i64 %2057, -20736
  %2141 = add i64 %2140, %2139
  %2142 = add i64 %2135, 14
  store i64 %2142, i64* %3, align 8
  %2143 = inttoptr i64 %2141 to i32*
  %2144 = load i32, i32* %2143, align 4
  %2145 = zext i32 %2144 to i64
  store i64 %2145, i64* %RCX.i2266, align 8
  %2146 = add i64 %2057, -20828
  %2147 = add i64 %2135, 20
  store i64 %2147, i64* %3, align 8
  %2148 = inttoptr i64 %2146 to i32*
  %2149 = load i32, i32* %2148, align 4
  %2150 = add i32 %2149, -150
  %2151 = zext i32 %2150 to i64
  store i64 %2151, i64* %RDX.i2258, align 8
  %2152 = lshr i32 %2150, 31
  %2153 = sub i32 %2144, %2150
  %2154 = icmp ult i32 %2144, %2150
  %2155 = zext i1 %2154 to i8
  store i8 %2155, i8* %25, align 1
  %2156 = and i32 %2153, 255
  %2157 = tail call i32 @llvm.ctpop.i32(i32 %2156)
  %2158 = trunc i32 %2157 to i8
  %2159 = and i8 %2158, 1
  %2160 = xor i8 %2159, 1
  store i8 %2160, i8* %32, align 1
  %2161 = xor i32 %2150, %2144
  %2162 = xor i32 %2161, %2153
  %2163 = lshr i32 %2162, 4
  %2164 = trunc i32 %2163 to i8
  %2165 = and i8 %2164, 1
  store i8 %2165, i8* %37, align 1
  %2166 = icmp eq i32 %2153, 0
  %2167 = zext i1 %2166 to i8
  store i8 %2167, i8* %40, align 1
  %2168 = lshr i32 %2153, 31
  %2169 = trunc i32 %2168 to i8
  store i8 %2169, i8* %43, align 1
  %2170 = lshr i32 %2144, 31
  %2171 = xor i32 %2152, %2170
  %2172 = xor i32 %2168, %2170
  %2173 = add nuw nsw i32 %2172, %2171
  %2174 = icmp eq i32 %2173, 2
  %2175 = zext i1 %2174 to i8
  store i8 %2175, i8* %49, align 1
  %2176 = icmp ne i8 %2169, 0
  %2177 = xor i1 %2176, %2174
  %2178 = or i1 %2166, %2177
  %.v318 = select i1 %2178, i64 59, i64 34
  %2179 = add i64 %2135, %.v318
  store i64 %2179, i64* %3, align 8
  br i1 %2178, label %block_.L_453c21, label %block_453c08

block_453c08:                                     ; preds = %block_453be6
  %2180 = add i64 %2179, 6
  store i64 %2180, i64* %3, align 8
  %2181 = load i32, i32* %2148, align 4
  %2182 = add i32 %2181, -150
  %2183 = zext i32 %2182 to i64
  store i64 %2183, i64* %RAX.i223, align 8
  %2184 = icmp ult i32 %2181, 150
  %2185 = zext i1 %2184 to i8
  store i8 %2185, i8* %25, align 1
  %2186 = and i32 %2182, 255
  %2187 = tail call i32 @llvm.ctpop.i32(i32 %2186)
  %2188 = trunc i32 %2187 to i8
  %2189 = and i8 %2188, 1
  %2190 = xor i8 %2189, 1
  store i8 %2190, i8* %32, align 1
  %2191 = xor i32 %2181, 16
  %2192 = xor i32 %2191, %2182
  %2193 = lshr i32 %2192, 4
  %2194 = trunc i32 %2193 to i8
  %2195 = and i8 %2194, 1
  store i8 %2195, i8* %37, align 1
  %2196 = icmp eq i32 %2182, 0
  %2197 = zext i1 %2196 to i8
  store i8 %2197, i8* %40, align 1
  %2198 = lshr i32 %2182, 31
  %2199 = trunc i32 %2198 to i8
  store i8 %2199, i8* %43, align 1
  %2200 = lshr i32 %2181, 31
  %2201 = xor i32 %2198, %2200
  %2202 = add nuw nsw i32 %2201, %2200
  %2203 = icmp eq i32 %2202, 2
  %2204 = zext i1 %2203 to i8
  store i8 %2204, i8* %49, align 1
  %2205 = add i64 %2179, 18
  store i64 %2205, i64* %3, align 8
  %2206 = load i32, i32* %2060, align 4
  %2207 = sext i32 %2206 to i64
  store i64 %2207, i64* %RCX.i2266, align 8
  %2208 = shl nsw i64 %2207, 2
  %2209 = add i64 %2140, %2208
  %2210 = add i64 %2179, 25
  store i64 %2210, i64* %3, align 8
  %2211 = inttoptr i64 %2209 to i32*
  store i32 %2182, i32* %2211, align 4
  %.pre190 = load i64, i64* %3, align 8
  %.pre191.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_453c21

block_.L_453c21:                                  ; preds = %block_453c08, %block_453be6
  %.pre191 = phi i64 [ %.pre191.pre, %block_453c08 ], [ %2057, %block_453be6 ]
  %2212 = phi i64 [ %.pre190, %block_453c08 ], [ %2179, %block_453be6 ]
  %2213 = add i64 %2212, 30
  store i64 %2213, i64* %3, align 8
  br label %block_.L_453c3f

block_.L_453c26:                                  ; preds = %block_453bcc
  %2214 = add i64 %2135, 11
  store i64 %2214, i64* %3, align 8
  %2215 = load i32, i32* %2060, align 4
  %2216 = add i32 %2215, 1
  %2217 = zext i32 %2216 to i64
  store i64 %2217, i64* %RAX.i223, align 8
  %2218 = icmp eq i32 %2215, -1
  %2219 = icmp eq i32 %2216, 0
  %2220 = or i1 %2218, %2219
  %2221 = zext i1 %2220 to i8
  store i8 %2221, i8* %25, align 1
  %2222 = and i32 %2216, 255
  %2223 = tail call i32 @llvm.ctpop.i32(i32 %2222)
  %2224 = trunc i32 %2223 to i8
  %2225 = and i8 %2224, 1
  %2226 = xor i8 %2225, 1
  store i8 %2226, i8* %32, align 1
  %2227 = xor i32 %2216, %2215
  %2228 = lshr i32 %2227, 4
  %2229 = trunc i32 %2228 to i8
  %2230 = and i8 %2229, 1
  store i8 %2230, i8* %37, align 1
  %2231 = zext i1 %2219 to i8
  store i8 %2231, i8* %40, align 1
  %2232 = lshr i32 %2216, 31
  %2233 = trunc i32 %2232 to i8
  store i8 %2233, i8* %43, align 1
  %2234 = lshr i32 %2215, 31
  %2235 = xor i32 %2232, %2234
  %2236 = add nuw nsw i32 %2235, %2232
  %2237 = icmp eq i32 %2236, 2
  %2238 = zext i1 %2237 to i8
  store i8 %2238, i8* %49, align 1
  %2239 = add i64 %2135, 20
  store i64 %2239, i64* %3, align 8
  store i32 %2216, i32* %2060, align 4
  %2240 = load i64, i64* %3, align 8
  %2241 = add i64 %2240, -128
  store i64 %2241, i64* %3, align 8
  br label %block_.L_453bba

block_.L_453c3f.loopexit:                         ; preds = %block_.L_453bba
  br label %block_.L_453c3f

block_.L_453c3f:                                  ; preds = %block_.L_453c3f.loopexit, %block_.L_453c21
  %2242 = phi i64 [ %2213, %block_.L_453c21 ], [ %2093, %block_.L_453c3f.loopexit ]
  %2243 = phi i64 [ %.pre191, %block_.L_453c21 ], [ %2057, %block_.L_453c3f.loopexit ]
  %2244 = add i64 %2243, -20836
  %2245 = add i64 %2242, 6
  store i64 %2245, i64* %3, align 8
  %2246 = inttoptr i64 %2244 to i32*
  %2247 = load i32, i32* %2246, align 4
  %2248 = zext i32 %2247 to i64
  store i64 %2248, i64* %RAX.i223, align 8
  %2249 = add i64 %2243, -20740
  %2250 = add i64 %2242, 12
  store i64 %2250, i64* %3, align 8
  %2251 = inttoptr i64 %2249 to i32*
  %2252 = load i32, i32* %2251, align 4
  %2253 = sub i32 %2247, %2252
  %2254 = icmp ult i32 %2247, %2252
  %2255 = zext i1 %2254 to i8
  store i8 %2255, i8* %25, align 1
  %2256 = and i32 %2253, 255
  %2257 = tail call i32 @llvm.ctpop.i32(i32 %2256)
  %2258 = trunc i32 %2257 to i8
  %2259 = and i8 %2258, 1
  %2260 = xor i8 %2259, 1
  store i8 %2260, i8* %32, align 1
  %2261 = xor i32 %2252, %2247
  %2262 = xor i32 %2261, %2253
  %2263 = lshr i32 %2262, 4
  %2264 = trunc i32 %2263 to i8
  %2265 = and i8 %2264, 1
  store i8 %2265, i8* %37, align 1
  %2266 = icmp eq i32 %2253, 0
  %2267 = zext i1 %2266 to i8
  store i8 %2267, i8* %40, align 1
  %2268 = lshr i32 %2253, 31
  %2269 = trunc i32 %2268 to i8
  store i8 %2269, i8* %43, align 1
  %2270 = lshr i32 %2247, 31
  %2271 = lshr i32 %2252, 31
  %2272 = xor i32 %2271, %2270
  %2273 = xor i32 %2268, %2270
  %2274 = add nuw nsw i32 %2273, %2272
  %2275 = icmp eq i32 %2274, 2
  %2276 = zext i1 %2275 to i8
  store i8 %2276, i8* %49, align 1
  %.v315 = select i1 %2266, i64 18, i64 94
  %2277 = add i64 %2242, %.v315
  store i64 %2277, i64* %3, align 8
  br i1 %2266, label %block_453c51, label %block_.L_453c9d

block_453c51:                                     ; preds = %block_.L_453c3f
  %2278 = add i64 %2277, 10
  store i64 %2278, i64* %3, align 8
  %2279 = load i32, i32* %2251, align 4
  %2280 = add i32 %2279, -362
  %2281 = icmp ult i32 %2279, 362
  %2282 = zext i1 %2281 to i8
  store i8 %2282, i8* %25, align 1
  %2283 = and i32 %2280, 255
  %2284 = tail call i32 @llvm.ctpop.i32(i32 %2283)
  %2285 = trunc i32 %2284 to i8
  %2286 = and i8 %2285, 1
  %2287 = xor i8 %2286, 1
  store i8 %2287, i8* %32, align 1
  %2288 = xor i32 %2280, %2279
  %2289 = lshr i32 %2288, 4
  %2290 = trunc i32 %2289 to i8
  %2291 = and i8 %2290, 1
  store i8 %2291, i8* %37, align 1
  %2292 = icmp eq i32 %2280, 0
  %2293 = zext i1 %2292 to i8
  store i8 %2293, i8* %40, align 1
  %2294 = lshr i32 %2280, 31
  %2295 = trunc i32 %2294 to i8
  store i8 %2295, i8* %43, align 1
  %2296 = lshr i32 %2279, 31
  %2297 = xor i32 %2294, %2296
  %2298 = add nuw nsw i32 %2297, %2296
  %2299 = icmp eq i32 %2298, 2
  %2300 = zext i1 %2299 to i8
  store i8 %2300, i8* %49, align 1
  %2301 = icmp ne i8 %2295, 0
  %2302 = xor i1 %2301, %2299
  %.v317 = select i1 %2302, i64 16, i64 76
  %2303 = add i64 %2277, %.v317
  store i64 %2303, i64* %3, align 8
  br i1 %2302, label %block_453c61, label %block_.L_453c9d

block_453c61:                                     ; preds = %block_453c51
  %2304 = add i64 %2243, -20764
  %2305 = add i64 %2303, 6
  store i64 %2305, i64* %3, align 8
  %2306 = inttoptr i64 %2304 to i32*
  %2307 = load i32, i32* %2306, align 4
  %2308 = zext i32 %2307 to i64
  store i64 %2308, i64* %RAX.i223, align 8
  %2309 = add i64 %2243, -40
  %2310 = add i64 %2303, 10
  store i64 %2310, i64* %3, align 8
  %2311 = inttoptr i64 %2309 to i64*
  %2312 = load i64, i64* %2311, align 8
  store i64 %2312, i64* %RCX.i2266, align 8
  %2313 = add i64 %2303, 17
  store i64 %2313, i64* %3, align 8
  %2314 = load i32, i32* %2251, align 4
  %2315 = sext i32 %2314 to i64
  store i64 %2315, i64* %RDX.i2258, align 8
  %2316 = shl nsw i64 %2315, 2
  %2317 = add i64 %2316, %2312
  %2318 = add i64 %2303, 20
  store i64 %2318, i64* %3, align 8
  %2319 = inttoptr i64 %2317 to i32*
  store i32 %2307, i32* %2319, align 4
  %2320 = load i64, i64* %RBP.i, align 8
  %2321 = add i64 %2320, -20828
  %2322 = load i64, i64* %3, align 8
  %2323 = add i64 %2322, 6
  store i64 %2323, i64* %3, align 8
  %2324 = inttoptr i64 %2321 to i32*
  %2325 = load i32, i32* %2324, align 4
  %2326 = add i32 %2325, -150
  %2327 = zext i32 %2326 to i64
  store i64 %2327, i64* %RAX.i223, align 8
  %2328 = icmp ult i32 %2325, 150
  %2329 = zext i1 %2328 to i8
  store i8 %2329, i8* %25, align 1
  %2330 = and i32 %2326, 255
  %2331 = tail call i32 @llvm.ctpop.i32(i32 %2330)
  %2332 = trunc i32 %2331 to i8
  %2333 = and i8 %2332, 1
  %2334 = xor i8 %2333, 1
  store i8 %2334, i8* %32, align 1
  %2335 = xor i32 %2325, 16
  %2336 = xor i32 %2335, %2326
  %2337 = lshr i32 %2336, 4
  %2338 = trunc i32 %2337 to i8
  %2339 = and i8 %2338, 1
  store i8 %2339, i8* %37, align 1
  %2340 = icmp eq i32 %2326, 0
  %2341 = zext i1 %2340 to i8
  store i8 %2341, i8* %40, align 1
  %2342 = lshr i32 %2326, 31
  %2343 = trunc i32 %2342 to i8
  store i8 %2343, i8* %43, align 1
  %2344 = lshr i32 %2325, 31
  %2345 = xor i32 %2342, %2344
  %2346 = add nuw nsw i32 %2345, %2344
  %2347 = icmp eq i32 %2346, 2
  %2348 = zext i1 %2347 to i8
  store i8 %2348, i8* %49, align 1
  %2349 = add i64 %2320, -20740
  %2350 = add i64 %2322, 18
  store i64 %2350, i64* %3, align 8
  %2351 = inttoptr i64 %2349 to i32*
  %2352 = load i32, i32* %2351, align 4
  %2353 = sext i32 %2352 to i64
  store i64 %2353, i64* %RCX.i2266, align 8
  %2354 = shl nsw i64 %2353, 2
  %2355 = add i64 %2320, -20736
  %2356 = add i64 %2355, %2354
  %2357 = add i64 %2322, 25
  store i64 %2357, i64* %3, align 8
  %2358 = inttoptr i64 %2356 to i32*
  store i32 %2326, i32* %2358, align 4
  %2359 = load i64, i64* %RBP.i, align 8
  %2360 = add i64 %2359, -20740
  %2361 = load i64, i64* %3, align 8
  %2362 = add i64 %2361, 6
  store i64 %2362, i64* %3, align 8
  %2363 = inttoptr i64 %2360 to i32*
  %2364 = load i32, i32* %2363, align 4
  %2365 = add i32 %2364, 1
  %2366 = zext i32 %2365 to i64
  store i64 %2366, i64* %RAX.i223, align 8
  %2367 = icmp eq i32 %2364, -1
  %2368 = icmp eq i32 %2365, 0
  %2369 = or i1 %2367, %2368
  %2370 = zext i1 %2369 to i8
  store i8 %2370, i8* %25, align 1
  %2371 = and i32 %2365, 255
  %2372 = tail call i32 @llvm.ctpop.i32(i32 %2371)
  %2373 = trunc i32 %2372 to i8
  %2374 = and i8 %2373, 1
  %2375 = xor i8 %2374, 1
  store i8 %2375, i8* %32, align 1
  %2376 = xor i32 %2365, %2364
  %2377 = lshr i32 %2376, 4
  %2378 = trunc i32 %2377 to i8
  %2379 = and i8 %2378, 1
  store i8 %2379, i8* %37, align 1
  %2380 = zext i1 %2368 to i8
  store i8 %2380, i8* %40, align 1
  %2381 = lshr i32 %2365, 31
  %2382 = trunc i32 %2381 to i8
  store i8 %2382, i8* %43, align 1
  %2383 = lshr i32 %2364, 31
  %2384 = xor i32 %2381, %2383
  %2385 = add nuw nsw i32 %2384, %2381
  %2386 = icmp eq i32 %2385, 2
  %2387 = zext i1 %2386 to i8
  store i8 %2387, i8* %49, align 1
  %2388 = add i64 %2361, 15
  store i64 %2388, i64* %3, align 8
  store i32 %2365, i32* %2363, align 4
  %.pre192 = load i64, i64* %3, align 8
  br label %block_.L_453c9d

block_.L_453c9d:                                  ; preds = %block_.L_453c3f, %block_453c51, %block_453c61
  %2389 = phi i64 [ %2303, %block_453c51 ], [ %.pre192, %block_453c61 ], [ %2277, %block_.L_453c3f ]
  %2390 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %25, align 1
  %2391 = and i32 %2390, 255
  %2392 = tail call i32 @llvm.ctpop.i32(i32 %2391)
  %2393 = trunc i32 %2392 to i8
  %2394 = and i8 %2393, 1
  %2395 = xor i8 %2394, 1
  store i8 %2395, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %2396 = icmp eq i32 %2390, 0
  %2397 = zext i1 %2396 to i8
  store i8 %2397, i8* %40, align 1
  %2398 = lshr i32 %2390, 31
  %2399 = trunc i32 %2398 to i8
  store i8 %2399, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %2400 = icmp ne i8 %2399, 0
  %2401 = or i1 %2396, %2400
  %.v316 = select i1 %2401, i64 48, i64 19
  %2402 = add i64 %2389, %.v316
  store i64 %2402, i64* %3, align 8
  br i1 %2401, label %block_.L_453ccd, label %block_453cb0

block_453cb0:                                     ; preds = %block_.L_453c9d
  store i64 ptrtoint (%G__0x57f7b3_type* @G__0x57f7b3 to i64), i64* %RDI.i2208, align 8
  %2403 = load i64, i64* %RBP.i, align 8
  %2404 = add i64 %2403, -20764
  %2405 = add i64 %2402, 16
  store i64 %2405, i64* %3, align 8
  %2406 = inttoptr i64 %2404 to i32*
  %2407 = load i32, i32* %2406, align 4
  %2408 = zext i32 %2407 to i64
  store i64 %2408, i64* %RSI.i2205, align 8
  store i8 0, i8* %AL.i930.pre-phi, align 1
  %2409 = add i64 %2402, -7936
  %2410 = add i64 %2402, 23
  %2411 = load i64, i64* %6, align 8
  %2412 = add i64 %2411, -8
  %2413 = inttoptr i64 %2412 to i64*
  store i64 %2410, i64* %2413, align 8
  store i64 %2412, i64* %6, align 8
  store i64 %2409, i64* %3, align 8
  %call2_453cc2 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2409, %struct.Memory* %MEMORY.24)
  %2414 = load i64, i64* %RBP.i, align 8
  %2415 = add i64 %2414, -21452
  %2416 = load i32, i32* %EAX.i2180, align 4
  %2417 = load i64, i64* %3, align 8
  %2418 = add i64 %2417, 6
  store i64 %2418, i64* %3, align 8
  %2419 = inttoptr i64 %2415 to i32*
  store i32 %2416, i32* %2419, align 4
  %.pre193 = load i64, i64* %3, align 8
  br label %block_.L_453ccd

block_.L_453ccd:                                  ; preds = %block_453cb0, %block_.L_453c9d
  %2420 = phi i64 [ %2402, %block_.L_453c9d ], [ %.pre193, %block_453cb0 ]
  %MEMORY.29 = phi %struct.Memory* [ %MEMORY.24, %block_.L_453c9d ], [ %call2_453cc2, %block_453cb0 ]
  %2421 = add i64 %2420, 341
  br label %block_.L_453e22

block_.L_453cd2:                                  ; preds = %block_453ae6, %block_.L_453adc
  %2422 = phi i64 [ %1880, %block_453ae6 ], [ %1866, %block_.L_453adc ]
  %2423 = add i64 %2422, 4
  store i64 %2423, i64* %3, align 8
  %2424 = load i32, i32* %1855, align 4
  store i8 0, i8* %25, align 1
  %2425 = and i32 %2424, 255
  %2426 = tail call i32 @llvm.ctpop.i32(i32 %2425)
  %2427 = trunc i32 %2426 to i8
  %2428 = and i8 %2427, 1
  %2429 = xor i8 %2428, 1
  store i8 %2429, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %2430 = icmp eq i32 %2424, 0
  %2431 = zext i1 %2430 to i8
  store i8 %2431, i8* %40, align 1
  %2432 = lshr i32 %2424, 31
  %2433 = trunc i32 %2432 to i8
  store i8 %2433, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v234 = select i1 %2430, i64 10, i64 331
  %2434 = add i64 %2422, %.v234
  store i64 %2434, i64* %3, align 8
  br i1 %2430, label %block_453cdc, label %block_.L_453e1d

block_453cdc:                                     ; preds = %block_.L_453cd2
  %2435 = add i64 %1852, -20760
  %2436 = add i64 %2434, 7
  store i64 %2436, i64* %3, align 8
  %2437 = inttoptr i64 %2435 to i32*
  %2438 = load i32, i32* %2437, align 4
  store i8 0, i8* %25, align 1
  %2439 = and i32 %2438, 255
  %2440 = tail call i32 @llvm.ctpop.i32(i32 %2439)
  %2441 = trunc i32 %2440 to i8
  %2442 = and i8 %2441, 1
  %2443 = xor i8 %2442, 1
  store i8 %2443, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %2444 = icmp eq i32 %2438, 0
  %2445 = zext i1 %2444 to i8
  store i8 %2445, i8* %40, align 1
  %2446 = lshr i32 %2438, 31
  %2447 = trunc i32 %2446 to i8
  store i8 %2447, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v233 = select i1 %2444, i64 321, i64 13
  %2448 = add i64 %2434, %.v233
  store i64 %2448, i64* %3, align 8
  br i1 %2444, label %block_.L_453e1d, label %block_453ce9

block_453ce9:                                     ; preds = %block_453cdc
  %2449 = add i64 %1852, -20768
  %2450 = add i64 %2448, 7
  store i64 %2450, i64* %3, align 8
  %2451 = inttoptr i64 %2449 to i32*
  %2452 = load i32, i32* %2451, align 4
  store i8 0, i8* %25, align 1
  %2453 = and i32 %2452, 255
  %2454 = tail call i32 @llvm.ctpop.i32(i32 %2453)
  %2455 = trunc i32 %2454 to i8
  %2456 = and i8 %2455, 1
  %2457 = xor i8 %2456, 1
  store i8 %2457, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %2458 = icmp eq i32 %2452, 0
  %2459 = zext i1 %2458 to i8
  store i8 %2459, i8* %40, align 1
  %2460 = lshr i32 %2452, 31
  %2461 = trunc i32 %2460 to i8
  store i8 %2461, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v232 = select i1 %2458, i64 308, i64 13
  %2462 = add i64 %2448, %.v232
  store i64 %2462, i64* %3, align 8
  br i1 %2458, label %block_.L_453e1d, label %block_453cf6

block_453cf6:                                     ; preds = %block_453ce9
  %2463 = add i64 %1852, -20840
  %2464 = add i64 %2462, 15
  store i64 %2464, i64* %3, align 8
  %2465 = inttoptr i64 %2463 to i32*
  store i32 0, i32* %2465, align 4
  %.pre194 = load i64, i64* %3, align 8
  br label %block_.L_453d05

block_.L_453d05:                                  ; preds = %block_.L_453d71, %block_453cf6
  %2466 = phi i64 [ %2651, %block_.L_453d71 ], [ %.pre194, %block_453cf6 ]
  %2467 = load i64, i64* %RBP.i, align 8
  %2468 = add i64 %2467, -20840
  %2469 = add i64 %2466, 6
  store i64 %2469, i64* %3, align 8
  %2470 = inttoptr i64 %2468 to i32*
  %2471 = load i32, i32* %2470, align 4
  %2472 = zext i32 %2471 to i64
  store i64 %2472, i64* %RAX.i223, align 8
  %2473 = add i64 %2467, -20740
  %2474 = add i64 %2466, 12
  store i64 %2474, i64* %3, align 8
  %2475 = inttoptr i64 %2473 to i32*
  %2476 = load i32, i32* %2475, align 4
  %2477 = sub i32 %2471, %2476
  %2478 = icmp ult i32 %2471, %2476
  %2479 = zext i1 %2478 to i8
  store i8 %2479, i8* %25, align 1
  %2480 = and i32 %2477, 255
  %2481 = tail call i32 @llvm.ctpop.i32(i32 %2480)
  %2482 = trunc i32 %2481 to i8
  %2483 = and i8 %2482, 1
  %2484 = xor i8 %2483, 1
  store i8 %2484, i8* %32, align 1
  %2485 = xor i32 %2476, %2471
  %2486 = xor i32 %2485, %2477
  %2487 = lshr i32 %2486, 4
  %2488 = trunc i32 %2487 to i8
  %2489 = and i8 %2488, 1
  store i8 %2489, i8* %37, align 1
  %2490 = icmp eq i32 %2477, 0
  %2491 = zext i1 %2490 to i8
  store i8 %2491, i8* %40, align 1
  %2492 = lshr i32 %2477, 31
  %2493 = trunc i32 %2492 to i8
  store i8 %2493, i8* %43, align 1
  %2494 = lshr i32 %2471, 31
  %2495 = lshr i32 %2476, 31
  %2496 = xor i32 %2495, %2494
  %2497 = xor i32 %2492, %2494
  %2498 = add nuw nsw i32 %2497, %2496
  %2499 = icmp eq i32 %2498, 2
  %2500 = zext i1 %2499 to i8
  store i8 %2500, i8* %49, align 1
  %2501 = icmp ne i8 %2493, 0
  %2502 = xor i1 %2501, %2499
  %.v236 = select i1 %2502, i64 18, i64 133
  %2503 = add i64 %2466, %.v236
  store i64 %2503, i64* %3, align 8
  br i1 %2502, label %block_453d17, label %block_.L_453d8a.loopexit

block_453d17:                                     ; preds = %block_.L_453d05
  %2504 = add i64 %2467, -40
  %2505 = add i64 %2503, 4
  store i64 %2505, i64* %3, align 8
  %2506 = inttoptr i64 %2504 to i64*
  %2507 = load i64, i64* %2506, align 8
  store i64 %2507, i64* %RAX.i223, align 8
  %2508 = add i64 %2503, 11
  store i64 %2508, i64* %3, align 8
  %2509 = load i32, i32* %2470, align 4
  %2510 = sext i32 %2509 to i64
  store i64 %2510, i64* %RCX.i2266, align 8
  %2511 = shl nsw i64 %2510, 2
  %2512 = add i64 %2511, %2507
  %2513 = add i64 %2503, 14
  store i64 %2513, i64* %3, align 8
  %2514 = inttoptr i64 %2512 to i32*
  %2515 = load i32, i32* %2514, align 4
  %2516 = zext i32 %2515 to i64
  store i64 %2516, i64* %RDX.i2258, align 8
  %2517 = add i64 %2467, -20772
  %2518 = add i64 %2503, 20
  store i64 %2518, i64* %3, align 8
  %2519 = inttoptr i64 %2517 to i32*
  %2520 = load i32, i32* %2519, align 4
  %2521 = sub i32 %2515, %2520
  %2522 = icmp ult i32 %2515, %2520
  %2523 = zext i1 %2522 to i8
  store i8 %2523, i8* %25, align 1
  %2524 = and i32 %2521, 255
  %2525 = tail call i32 @llvm.ctpop.i32(i32 %2524)
  %2526 = trunc i32 %2525 to i8
  %2527 = and i8 %2526, 1
  %2528 = xor i8 %2527, 1
  store i8 %2528, i8* %32, align 1
  %2529 = xor i32 %2520, %2515
  %2530 = xor i32 %2529, %2521
  %2531 = lshr i32 %2530, 4
  %2532 = trunc i32 %2531 to i8
  %2533 = and i8 %2532, 1
  store i8 %2533, i8* %37, align 1
  %2534 = icmp eq i32 %2521, 0
  %2535 = zext i1 %2534 to i8
  store i8 %2535, i8* %40, align 1
  %2536 = lshr i32 %2521, 31
  %2537 = trunc i32 %2536 to i8
  store i8 %2537, i8* %43, align 1
  %2538 = lshr i32 %2515, 31
  %2539 = lshr i32 %2520, 31
  %2540 = xor i32 %2539, %2538
  %2541 = xor i32 %2536, %2538
  %2542 = add nuw nsw i32 %2541, %2540
  %2543 = icmp eq i32 %2542, 2
  %2544 = zext i1 %2543 to i8
  store i8 %2544, i8* %49, align 1
  %.v235 = select i1 %2534, i64 26, i64 90
  %2545 = add i64 %2503, %.v235
  store i64 %2545, i64* %3, align 8
  br i1 %2534, label %block_453d31, label %block_.L_453d71

block_453d31:                                     ; preds = %block_453d17
  %2546 = add i64 %2545, 7
  store i64 %2546, i64* %3, align 8
  %2547 = load i32, i32* %2470, align 4
  %2548 = sext i32 %2547 to i64
  store i64 %2548, i64* %RAX.i223, align 8
  %2549 = shl nsw i64 %2548, 2
  %2550 = add i64 %2467, -20736
  %2551 = add i64 %2550, %2549
  %2552 = add i64 %2545, 14
  store i64 %2552, i64* %3, align 8
  %2553 = inttoptr i64 %2551 to i32*
  %2554 = load i32, i32* %2553, align 4
  %2555 = zext i32 %2554 to i64
  store i64 %2555, i64* %RCX.i2266, align 8
  %2556 = add i64 %2467, -20828
  %2557 = add i64 %2545, 20
  store i64 %2557, i64* %3, align 8
  %2558 = inttoptr i64 %2556 to i32*
  %2559 = load i32, i32* %2558, align 4
  %2560 = add i32 %2559, -500
  %2561 = zext i32 %2560 to i64
  store i64 %2561, i64* %RDX.i2258, align 8
  %2562 = lshr i32 %2560, 31
  %2563 = sub i32 %2554, %2560
  %2564 = icmp ult i32 %2554, %2560
  %2565 = zext i1 %2564 to i8
  store i8 %2565, i8* %25, align 1
  %2566 = and i32 %2563, 255
  %2567 = tail call i32 @llvm.ctpop.i32(i32 %2566)
  %2568 = trunc i32 %2567 to i8
  %2569 = and i8 %2568, 1
  %2570 = xor i8 %2569, 1
  store i8 %2570, i8* %32, align 1
  %2571 = xor i32 %2560, %2554
  %2572 = xor i32 %2571, %2563
  %2573 = lshr i32 %2572, 4
  %2574 = trunc i32 %2573 to i8
  %2575 = and i8 %2574, 1
  store i8 %2575, i8* %37, align 1
  %2576 = icmp eq i32 %2563, 0
  %2577 = zext i1 %2576 to i8
  store i8 %2577, i8* %40, align 1
  %2578 = lshr i32 %2563, 31
  %2579 = trunc i32 %2578 to i8
  store i8 %2579, i8* %43, align 1
  %2580 = lshr i32 %2554, 31
  %2581 = xor i32 %2562, %2580
  %2582 = xor i32 %2578, %2580
  %2583 = add nuw nsw i32 %2582, %2581
  %2584 = icmp eq i32 %2583, 2
  %2585 = zext i1 %2584 to i8
  store i8 %2585, i8* %49, align 1
  %2586 = icmp ne i8 %2579, 0
  %2587 = xor i1 %2586, %2584
  %2588 = or i1 %2576, %2587
  %.v323 = select i1 %2588, i64 59, i64 34
  %2589 = add i64 %2545, %.v323
  store i64 %2589, i64* %3, align 8
  br i1 %2588, label %block_.L_453d6c, label %block_453d53

block_453d53:                                     ; preds = %block_453d31
  %2590 = add i64 %2589, 6
  store i64 %2590, i64* %3, align 8
  %2591 = load i32, i32* %2558, align 4
  %2592 = add i32 %2591, -500
  %2593 = zext i32 %2592 to i64
  store i64 %2593, i64* %RAX.i223, align 8
  %2594 = icmp ult i32 %2591, 500
  %2595 = zext i1 %2594 to i8
  store i8 %2595, i8* %25, align 1
  %2596 = and i32 %2592, 255
  %2597 = tail call i32 @llvm.ctpop.i32(i32 %2596)
  %2598 = trunc i32 %2597 to i8
  %2599 = and i8 %2598, 1
  %2600 = xor i8 %2599, 1
  store i8 %2600, i8* %32, align 1
  %2601 = xor i32 %2591, 16
  %2602 = xor i32 %2601, %2592
  %2603 = lshr i32 %2602, 4
  %2604 = trunc i32 %2603 to i8
  %2605 = and i8 %2604, 1
  store i8 %2605, i8* %37, align 1
  %2606 = icmp eq i32 %2592, 0
  %2607 = zext i1 %2606 to i8
  store i8 %2607, i8* %40, align 1
  %2608 = lshr i32 %2592, 31
  %2609 = trunc i32 %2608 to i8
  store i8 %2609, i8* %43, align 1
  %2610 = lshr i32 %2591, 31
  %2611 = xor i32 %2608, %2610
  %2612 = add nuw nsw i32 %2611, %2610
  %2613 = icmp eq i32 %2612, 2
  %2614 = zext i1 %2613 to i8
  store i8 %2614, i8* %49, align 1
  %2615 = add i64 %2589, 18
  store i64 %2615, i64* %3, align 8
  %2616 = load i32, i32* %2470, align 4
  %2617 = sext i32 %2616 to i64
  store i64 %2617, i64* %RCX.i2266, align 8
  %2618 = shl nsw i64 %2617, 2
  %2619 = add i64 %2550, %2618
  %2620 = add i64 %2589, 25
  store i64 %2620, i64* %3, align 8
  %2621 = inttoptr i64 %2619 to i32*
  store i32 %2592, i32* %2621, align 4
  %.pre195 = load i64, i64* %3, align 8
  %.pre196.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_453d6c

block_.L_453d6c:                                  ; preds = %block_453d53, %block_453d31
  %.pre196 = phi i64 [ %.pre196.pre, %block_453d53 ], [ %2467, %block_453d31 ]
  %2622 = phi i64 [ %.pre195, %block_453d53 ], [ %2589, %block_453d31 ]
  %2623 = add i64 %2622, 30
  store i64 %2623, i64* %3, align 8
  br label %block_.L_453d8a

block_.L_453d71:                                  ; preds = %block_453d17
  %2624 = add i64 %2545, 11
  store i64 %2624, i64* %3, align 8
  %2625 = load i32, i32* %2470, align 4
  %2626 = add i32 %2625, 1
  %2627 = zext i32 %2626 to i64
  store i64 %2627, i64* %RAX.i223, align 8
  %2628 = icmp eq i32 %2625, -1
  %2629 = icmp eq i32 %2626, 0
  %2630 = or i1 %2628, %2629
  %2631 = zext i1 %2630 to i8
  store i8 %2631, i8* %25, align 1
  %2632 = and i32 %2626, 255
  %2633 = tail call i32 @llvm.ctpop.i32(i32 %2632)
  %2634 = trunc i32 %2633 to i8
  %2635 = and i8 %2634, 1
  %2636 = xor i8 %2635, 1
  store i8 %2636, i8* %32, align 1
  %2637 = xor i32 %2626, %2625
  %2638 = lshr i32 %2637, 4
  %2639 = trunc i32 %2638 to i8
  %2640 = and i8 %2639, 1
  store i8 %2640, i8* %37, align 1
  %2641 = zext i1 %2629 to i8
  store i8 %2641, i8* %40, align 1
  %2642 = lshr i32 %2626, 31
  %2643 = trunc i32 %2642 to i8
  store i8 %2643, i8* %43, align 1
  %2644 = lshr i32 %2625, 31
  %2645 = xor i32 %2642, %2644
  %2646 = add nuw nsw i32 %2645, %2642
  %2647 = icmp eq i32 %2646, 2
  %2648 = zext i1 %2647 to i8
  store i8 %2648, i8* %49, align 1
  %2649 = add i64 %2545, 20
  store i64 %2649, i64* %3, align 8
  store i32 %2626, i32* %2470, align 4
  %2650 = load i64, i64* %3, align 8
  %2651 = add i64 %2650, -128
  store i64 %2651, i64* %3, align 8
  br label %block_.L_453d05

block_.L_453d8a.loopexit:                         ; preds = %block_.L_453d05
  br label %block_.L_453d8a

block_.L_453d8a:                                  ; preds = %block_.L_453d8a.loopexit, %block_.L_453d6c
  %2652 = phi i64 [ %2623, %block_.L_453d6c ], [ %2503, %block_.L_453d8a.loopexit ]
  %2653 = phi i64 [ %.pre196, %block_.L_453d6c ], [ %2467, %block_.L_453d8a.loopexit ]
  %2654 = add i64 %2653, -20840
  %2655 = add i64 %2652, 6
  store i64 %2655, i64* %3, align 8
  %2656 = inttoptr i64 %2654 to i32*
  %2657 = load i32, i32* %2656, align 4
  %2658 = zext i32 %2657 to i64
  store i64 %2658, i64* %RAX.i223, align 8
  %2659 = add i64 %2653, -20740
  %2660 = add i64 %2652, 12
  store i64 %2660, i64* %3, align 8
  %2661 = inttoptr i64 %2659 to i32*
  %2662 = load i32, i32* %2661, align 4
  %2663 = sub i32 %2657, %2662
  %2664 = icmp ult i32 %2657, %2662
  %2665 = zext i1 %2664 to i8
  store i8 %2665, i8* %25, align 1
  %2666 = and i32 %2663, 255
  %2667 = tail call i32 @llvm.ctpop.i32(i32 %2666)
  %2668 = trunc i32 %2667 to i8
  %2669 = and i8 %2668, 1
  %2670 = xor i8 %2669, 1
  store i8 %2670, i8* %32, align 1
  %2671 = xor i32 %2662, %2657
  %2672 = xor i32 %2671, %2663
  %2673 = lshr i32 %2672, 4
  %2674 = trunc i32 %2673 to i8
  %2675 = and i8 %2674, 1
  store i8 %2675, i8* %37, align 1
  %2676 = icmp eq i32 %2663, 0
  %2677 = zext i1 %2676 to i8
  store i8 %2677, i8* %40, align 1
  %2678 = lshr i32 %2663, 31
  %2679 = trunc i32 %2678 to i8
  store i8 %2679, i8* %43, align 1
  %2680 = lshr i32 %2657, 31
  %2681 = lshr i32 %2662, 31
  %2682 = xor i32 %2681, %2680
  %2683 = xor i32 %2678, %2680
  %2684 = add nuw nsw i32 %2683, %2682
  %2685 = icmp eq i32 %2684, 2
  %2686 = zext i1 %2685 to i8
  store i8 %2686, i8* %49, align 1
  %.v320 = select i1 %2676, i64 18, i64 94
  %2687 = add i64 %2652, %.v320
  store i64 %2687, i64* %3, align 8
  br i1 %2676, label %block_453d9c, label %block_.L_453de8

block_453d9c:                                     ; preds = %block_.L_453d8a
  %2688 = add i64 %2687, 10
  store i64 %2688, i64* %3, align 8
  %2689 = load i32, i32* %2661, align 4
  %2690 = add i32 %2689, -362
  %2691 = icmp ult i32 %2689, 362
  %2692 = zext i1 %2691 to i8
  store i8 %2692, i8* %25, align 1
  %2693 = and i32 %2690, 255
  %2694 = tail call i32 @llvm.ctpop.i32(i32 %2693)
  %2695 = trunc i32 %2694 to i8
  %2696 = and i8 %2695, 1
  %2697 = xor i8 %2696, 1
  store i8 %2697, i8* %32, align 1
  %2698 = xor i32 %2690, %2689
  %2699 = lshr i32 %2698, 4
  %2700 = trunc i32 %2699 to i8
  %2701 = and i8 %2700, 1
  store i8 %2701, i8* %37, align 1
  %2702 = icmp eq i32 %2690, 0
  %2703 = zext i1 %2702 to i8
  store i8 %2703, i8* %40, align 1
  %2704 = lshr i32 %2690, 31
  %2705 = trunc i32 %2704 to i8
  store i8 %2705, i8* %43, align 1
  %2706 = lshr i32 %2689, 31
  %2707 = xor i32 %2704, %2706
  %2708 = add nuw nsw i32 %2707, %2706
  %2709 = icmp eq i32 %2708, 2
  %2710 = zext i1 %2709 to i8
  store i8 %2710, i8* %49, align 1
  %2711 = icmp ne i8 %2705, 0
  %2712 = xor i1 %2711, %2709
  %.v322 = select i1 %2712, i64 16, i64 76
  %2713 = add i64 %2687, %.v322
  store i64 %2713, i64* %3, align 8
  br i1 %2712, label %block_453dac, label %block_.L_453de8

block_453dac:                                     ; preds = %block_453d9c
  %2714 = add i64 %2653, -20772
  %2715 = add i64 %2713, 6
  store i64 %2715, i64* %3, align 8
  %2716 = inttoptr i64 %2714 to i32*
  %2717 = load i32, i32* %2716, align 4
  %2718 = zext i32 %2717 to i64
  store i64 %2718, i64* %RAX.i223, align 8
  %2719 = add i64 %2653, -40
  %2720 = add i64 %2713, 10
  store i64 %2720, i64* %3, align 8
  %2721 = inttoptr i64 %2719 to i64*
  %2722 = load i64, i64* %2721, align 8
  store i64 %2722, i64* %RCX.i2266, align 8
  %2723 = add i64 %2713, 17
  store i64 %2723, i64* %3, align 8
  %2724 = load i32, i32* %2661, align 4
  %2725 = sext i32 %2724 to i64
  store i64 %2725, i64* %RDX.i2258, align 8
  %2726 = shl nsw i64 %2725, 2
  %2727 = add i64 %2726, %2722
  %2728 = add i64 %2713, 20
  store i64 %2728, i64* %3, align 8
  %2729 = inttoptr i64 %2727 to i32*
  store i32 %2717, i32* %2729, align 4
  %2730 = load i64, i64* %RBP.i, align 8
  %2731 = add i64 %2730, -20828
  %2732 = load i64, i64* %3, align 8
  %2733 = add i64 %2732, 6
  store i64 %2733, i64* %3, align 8
  %2734 = inttoptr i64 %2731 to i32*
  %2735 = load i32, i32* %2734, align 4
  %2736 = add i32 %2735, -500
  %2737 = zext i32 %2736 to i64
  store i64 %2737, i64* %RAX.i223, align 8
  %2738 = icmp ult i32 %2735, 500
  %2739 = zext i1 %2738 to i8
  store i8 %2739, i8* %25, align 1
  %2740 = and i32 %2736, 255
  %2741 = tail call i32 @llvm.ctpop.i32(i32 %2740)
  %2742 = trunc i32 %2741 to i8
  %2743 = and i8 %2742, 1
  %2744 = xor i8 %2743, 1
  store i8 %2744, i8* %32, align 1
  %2745 = xor i32 %2735, 16
  %2746 = xor i32 %2745, %2736
  %2747 = lshr i32 %2746, 4
  %2748 = trunc i32 %2747 to i8
  %2749 = and i8 %2748, 1
  store i8 %2749, i8* %37, align 1
  %2750 = icmp eq i32 %2736, 0
  %2751 = zext i1 %2750 to i8
  store i8 %2751, i8* %40, align 1
  %2752 = lshr i32 %2736, 31
  %2753 = trunc i32 %2752 to i8
  store i8 %2753, i8* %43, align 1
  %2754 = lshr i32 %2735, 31
  %2755 = xor i32 %2752, %2754
  %2756 = add nuw nsw i32 %2755, %2754
  %2757 = icmp eq i32 %2756, 2
  %2758 = zext i1 %2757 to i8
  store i8 %2758, i8* %49, align 1
  %2759 = add i64 %2730, -20740
  %2760 = add i64 %2732, 18
  store i64 %2760, i64* %3, align 8
  %2761 = inttoptr i64 %2759 to i32*
  %2762 = load i32, i32* %2761, align 4
  %2763 = sext i32 %2762 to i64
  store i64 %2763, i64* %RCX.i2266, align 8
  %2764 = shl nsw i64 %2763, 2
  %2765 = add i64 %2730, -20736
  %2766 = add i64 %2765, %2764
  %2767 = add i64 %2732, 25
  store i64 %2767, i64* %3, align 8
  %2768 = inttoptr i64 %2766 to i32*
  store i32 %2736, i32* %2768, align 4
  %2769 = load i64, i64* %RBP.i, align 8
  %2770 = add i64 %2769, -20740
  %2771 = load i64, i64* %3, align 8
  %2772 = add i64 %2771, 6
  store i64 %2772, i64* %3, align 8
  %2773 = inttoptr i64 %2770 to i32*
  %2774 = load i32, i32* %2773, align 4
  %2775 = add i32 %2774, 1
  %2776 = zext i32 %2775 to i64
  store i64 %2776, i64* %RAX.i223, align 8
  %2777 = icmp eq i32 %2774, -1
  %2778 = icmp eq i32 %2775, 0
  %2779 = or i1 %2777, %2778
  %2780 = zext i1 %2779 to i8
  store i8 %2780, i8* %25, align 1
  %2781 = and i32 %2775, 255
  %2782 = tail call i32 @llvm.ctpop.i32(i32 %2781)
  %2783 = trunc i32 %2782 to i8
  %2784 = and i8 %2783, 1
  %2785 = xor i8 %2784, 1
  store i8 %2785, i8* %32, align 1
  %2786 = xor i32 %2775, %2774
  %2787 = lshr i32 %2786, 4
  %2788 = trunc i32 %2787 to i8
  %2789 = and i8 %2788, 1
  store i8 %2789, i8* %37, align 1
  %2790 = zext i1 %2778 to i8
  store i8 %2790, i8* %40, align 1
  %2791 = lshr i32 %2775, 31
  %2792 = trunc i32 %2791 to i8
  store i8 %2792, i8* %43, align 1
  %2793 = lshr i32 %2774, 31
  %2794 = xor i32 %2791, %2793
  %2795 = add nuw nsw i32 %2794, %2791
  %2796 = icmp eq i32 %2795, 2
  %2797 = zext i1 %2796 to i8
  store i8 %2797, i8* %49, align 1
  %2798 = add i64 %2771, 15
  store i64 %2798, i64* %3, align 8
  store i32 %2775, i32* %2773, align 4
  %.pre197 = load i64, i64* %3, align 8
  br label %block_.L_453de8

block_.L_453de8:                                  ; preds = %block_.L_453d8a, %block_453d9c, %block_453dac
  %2799 = phi i64 [ %2713, %block_453d9c ], [ %.pre197, %block_453dac ], [ %2687, %block_.L_453d8a ]
  %2800 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %25, align 1
  %2801 = and i32 %2800, 255
  %2802 = tail call i32 @llvm.ctpop.i32(i32 %2801)
  %2803 = trunc i32 %2802 to i8
  %2804 = and i8 %2803, 1
  %2805 = xor i8 %2804, 1
  store i8 %2805, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %2806 = icmp eq i32 %2800, 0
  %2807 = zext i1 %2806 to i8
  store i8 %2807, i8* %40, align 1
  %2808 = lshr i32 %2800, 31
  %2809 = trunc i32 %2808 to i8
  store i8 %2809, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %2810 = icmp ne i8 %2809, 0
  %2811 = or i1 %2806, %2810
  %.v321 = select i1 %2811, i64 48, i64 19
  %2812 = add i64 %2799, %.v321
  store i64 %2812, i64* %3, align 8
  br i1 %2811, label %block_.L_453e18, label %block_453dfb

block_453dfb:                                     ; preds = %block_.L_453de8
  store i64 ptrtoint (%G__0x57f7d8_type* @G__0x57f7d8 to i64), i64* %RDI.i2208, align 8
  %2813 = load i64, i64* %RBP.i, align 8
  %2814 = add i64 %2813, -20772
  %2815 = add i64 %2812, 16
  store i64 %2815, i64* %3, align 8
  %2816 = inttoptr i64 %2814 to i32*
  %2817 = load i32, i32* %2816, align 4
  %2818 = zext i32 %2817 to i64
  store i64 %2818, i64* %RSI.i2205, align 8
  store i8 0, i8* %AL.i930.pre-phi, align 1
  %2819 = add i64 %2812, -8267
  %2820 = add i64 %2812, 23
  %2821 = load i64, i64* %6, align 8
  %2822 = add i64 %2821, -8
  %2823 = inttoptr i64 %2822 to i64*
  store i64 %2820, i64* %2823, align 8
  store i64 %2822, i64* %6, align 8
  store i64 %2819, i64* %3, align 8
  %call2_453e0d = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2819, %struct.Memory* %MEMORY.20)
  %2824 = load i64, i64* %RBP.i, align 8
  %2825 = add i64 %2824, -21456
  %2826 = load i32, i32* %EAX.i2180, align 4
  %2827 = load i64, i64* %3, align 8
  %2828 = add i64 %2827, 6
  store i64 %2828, i64* %3, align 8
  %2829 = inttoptr i64 %2825 to i32*
  store i32 %2826, i32* %2829, align 4
  %.pre198 = load i64, i64* %3, align 8
  br label %block_.L_453e18

block_.L_453e18:                                  ; preds = %block_453dfb, %block_.L_453de8
  %2830 = phi i64 [ %2812, %block_.L_453de8 ], [ %.pre198, %block_453dfb ]
  %MEMORY.35 = phi %struct.Memory* [ %MEMORY.20, %block_.L_453de8 ], [ %call2_453e0d, %block_453dfb ]
  %2831 = add i64 %2830, 5
  store i64 %2831, i64* %3, align 8
  br label %block_.L_453e1d

block_.L_453e1d:                                  ; preds = %block_.L_453cd2, %block_.L_453e18, %block_453ce9, %block_453cdc
  %2832 = phi i64 [ %2434, %block_.L_453cd2 ], [ %2448, %block_453cdc ], [ %2462, %block_453ce9 ], [ %2831, %block_.L_453e18 ]
  %MEMORY.36 = phi %struct.Memory* [ %MEMORY.20, %block_.L_453cd2 ], [ %MEMORY.20, %block_453cdc ], [ %MEMORY.20, %block_453ce9 ], [ %MEMORY.35, %block_.L_453e18 ]
  %2833 = add i64 %2832, 5
  store i64 %2833, i64* %3, align 8
  br label %block_.L_453e22

block_.L_453e22:                                  ; preds = %block_.L_453e1d, %block_.L_453ccd
  %storemerge108 = phi i64 [ %2421, %block_.L_453ccd ], [ %2833, %block_.L_453e1d ]
  %MEMORY.37 = phi %struct.Memory* [ %MEMORY.29, %block_.L_453ccd ], [ %MEMORY.36, %block_.L_453e1d ]
  %2834 = add i64 %storemerge108, 865
  br label %block_.L_454183

block_.L_453e27:                                  ; preds = %block_.L_453a59
  %2835 = add i64 %1778, 7
  store i64 %2835, i64* %3, align 8
  %2836 = load i32, i32* %1294, align 4
  %2837 = sext i32 %2836 to i64
  store i64 %2837, i64* %RAX.i223, align 8
  %2838 = add nsw i64 %2837, 12099168
  %2839 = add i64 %1778, 15
  store i64 %2839, i64* %3, align 8
  %2840 = inttoptr i64 %2838 to i8*
  %2841 = load i8, i8* %2840, align 1
  %2842 = zext i8 %2841 to i64
  store i64 %2842, i64* %RCX.i2266, align 8
  %2843 = zext i8 %2841 to i32
  %2844 = add i64 %1291, -52
  %2845 = add i64 %1778, 18
  store i64 %2845, i64* %3, align 8
  %2846 = inttoptr i64 %2844 to i32*
  %2847 = load i32, i32* %2846, align 4
  %2848 = sub i32 %2843, %2847
  %2849 = icmp ult i32 %2843, %2847
  %2850 = zext i1 %2849 to i8
  store i8 %2850, i8* %25, align 1
  %2851 = and i32 %2848, 255
  %2852 = tail call i32 @llvm.ctpop.i32(i32 %2851)
  %2853 = trunc i32 %2852 to i8
  %2854 = and i8 %2853, 1
  %2855 = xor i8 %2854, 1
  store i8 %2855, i8* %32, align 1
  %2856 = xor i32 %2847, %2843
  %2857 = xor i32 %2856, %2848
  %2858 = lshr i32 %2857, 4
  %2859 = trunc i32 %2858 to i8
  %2860 = and i8 %2859, 1
  store i8 %2860, i8* %37, align 1
  %2861 = icmp eq i32 %2848, 0
  %2862 = zext i1 %2861 to i8
  store i8 %2862, i8* %40, align 1
  %2863 = lshr i32 %2848, 31
  %2864 = trunc i32 %2863 to i8
  store i8 %2864, i8* %43, align 1
  %2865 = lshr i32 %2847, 31
  %2866 = add nuw nsw i32 %2863, %2865
  %2867 = icmp eq i32 %2866, 2
  %2868 = zext i1 %2867 to i8
  store i8 %2868, i8* %49, align 1
  %.v297 = select i1 %2861, i64 24, i64 855
  %2869 = add i64 %1778, %.v297
  store i64 %2869, i64* %3, align 8
  br i1 %2861, label %block_453e3f, label %block_.L_45417e

block_453e3f:                                     ; preds = %block_.L_453e27
  %2870 = add i64 %1291, -20788
  %2871 = add i64 %2869, 10
  store i64 %2871, i64* %3, align 8
  %2872 = inttoptr i64 %2870 to i32*
  store i32 0, i32* %2872, align 4
  %.pre199 = load i64, i64* %3, align 8
  br label %block_.L_453e49

block_.L_453e49:                                  ; preds = %block_.L_454160, %block_453e3f
  %2873 = phi i64 [ %.pre199, %block_453e3f ], [ %3785, %block_.L_454160 ]
  %MEMORY.38 = phi %struct.Memory* [ %MEMORY.11, %block_453e3f ], [ %MEMORY.53, %block_.L_454160 ]
  %2874 = load i64, i64* %RBP.i, align 8
  %2875 = add i64 %2874, -20788
  %2876 = add i64 %2873, 7
  store i64 %2876, i64* %3, align 8
  %2877 = inttoptr i64 %2875 to i32*
  %2878 = load i32, i32* %2877, align 4
  %2879 = add i32 %2878, -4
  %2880 = icmp ult i32 %2878, 4
  %2881 = zext i1 %2880 to i8
  store i8 %2881, i8* %25, align 1
  %2882 = and i32 %2879, 255
  %2883 = tail call i32 @llvm.ctpop.i32(i32 %2882)
  %2884 = trunc i32 %2883 to i8
  %2885 = and i8 %2884, 1
  %2886 = xor i8 %2885, 1
  store i8 %2886, i8* %32, align 1
  %2887 = xor i32 %2879, %2878
  %2888 = lshr i32 %2887, 4
  %2889 = trunc i32 %2888 to i8
  %2890 = and i8 %2889, 1
  store i8 %2890, i8* %37, align 1
  %2891 = icmp eq i32 %2879, 0
  %2892 = zext i1 %2891 to i8
  store i8 %2892, i8* %40, align 1
  %2893 = lshr i32 %2879, 31
  %2894 = trunc i32 %2893 to i8
  store i8 %2894, i8* %43, align 1
  %2895 = lshr i32 %2878, 31
  %2896 = xor i32 %2893, %2895
  %2897 = add nuw nsw i32 %2896, %2895
  %2898 = icmp eq i32 %2897, 2
  %2899 = zext i1 %2898 to i8
  store i8 %2899, i8* %49, align 1
  %2900 = icmp ne i8 %2894, 0
  %2901 = xor i1 %2900, %2898
  %.v238 = select i1 %2901, i64 13, i64 816
  %2902 = add i64 %2873, %.v238
  store i64 %2902, i64* %3, align 8
  br i1 %2901, label %block_453e56, label %block_.L_454179

block_453e56:                                     ; preds = %block_.L_453e49
  %2903 = add i64 %2902, 6
  store i64 %2903, i64* %3, align 8
  %2904 = load i32, i32* %2877, align 4
  %2905 = and i32 %2904, 1
  %2906 = zext i32 %2905 to i64
  store i64 %2906, i64* %RAX.i223, align 8
  store i8 0, i8* %25, align 1
  %2907 = tail call i32 @llvm.ctpop.i32(i32 %2905)
  %2908 = trunc i32 %2907 to i8
  %2909 = xor i8 %2908, 1
  store i8 %2909, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %2910 = icmp eq i32 %2905, 0
  %2911 = trunc i32 %2905 to i8
  %2912 = xor i8 %2911, 1
  store i8 %2912, i8* %40, align 1
  store i8 0, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v237 = select i1 %2910, i64 43, i64 18
  %2913 = add i64 %2902, %.v237
  %2914 = add i64 %2874, -20800
  %2915 = add i64 %2913, 7
  store i64 %2915, i64* %3, align 8
  %2916 = inttoptr i64 %2914 to i32*
  %2917 = load i32, i32* %2916, align 4
  %2918 = sext i32 %2917 to i64
  store i64 %2918, i64* %RAX.i223, align 8
  %2919 = shl nsw i64 %2918, 2
  br i1 %2910, label %block_.L_453e81, label %block_453e68

block_453e68:                                     ; preds = %block_453e56
  %2920 = add i64 %2874, -4872
  %2921 = add i64 %2920, %2919
  %2922 = add i64 %2913, 14
  store i64 %2922, i64* %3, align 8
  %2923 = inttoptr i64 %2921 to i32*
  %2924 = load i32, i32* %2923, align 4
  %2925 = zext i32 %2924 to i64
  store i64 %2925, i64* %RCX.i2266, align 8
  %2926 = add i64 %2874, -20844
  %2927 = add i64 %2913, 20
  store i64 %2927, i64* %3, align 8
  %2928 = inttoptr i64 %2926 to i32*
  store i32 %2924, i32* %2928, align 4
  %2929 = load i64, i64* %3, align 8
  %2930 = add i64 %2929, 25
  store i64 %2930, i64* %3, align 8
  br label %block_.L_453e95

block_.L_453e81:                                  ; preds = %block_453e56
  %2931 = add i64 %2874, -3272
  %2932 = add i64 %2931, %2919
  %2933 = add i64 %2913, 14
  store i64 %2933, i64* %3, align 8
  %2934 = inttoptr i64 %2932 to i32*
  %2935 = load i32, i32* %2934, align 4
  %2936 = zext i32 %2935 to i64
  store i64 %2936, i64* %RCX.i2266, align 8
  %2937 = add i64 %2874, -20844
  %2938 = add i64 %2913, 20
  store i64 %2938, i64* %3, align 8
  %2939 = inttoptr i64 %2937 to i32*
  store i32 %2935, i32* %2939, align 4
  %.pre200 = load i64, i64* %3, align 8
  br label %block_.L_453e95

block_.L_453e95:                                  ; preds = %block_.L_453e81, %block_453e68
  %2940 = phi i64 [ %.pre200, %block_.L_453e81 ], [ %2930, %block_453e68 ]
  %2941 = load i64, i64* %RBP.i, align 8
  %2942 = add i64 %2941, -20788
  %2943 = add i64 %2940, 6
  store i64 %2943, i64* %3, align 8
  %2944 = inttoptr i64 %2942 to i32*
  %2945 = load i32, i32* %2944, align 4
  %2946 = and i32 %2945, 2
  %2947 = zext i32 %2946 to i64
  store i64 %2947, i64* %RAX.i223, align 8
  store i8 0, i8* %25, align 1
  %2948 = tail call i32 @llvm.ctpop.i32(i32 %2946)
  %2949 = trunc i32 %2948 to i8
  %2950 = xor i8 %2949, 1
  store i8 %2950, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %2951 = icmp eq i32 %2946, 0
  %.lobit239 = lshr exact i32 %2946, 1
  %2952 = trunc i32 %.lobit239 to i8
  %2953 = xor i8 %2952, 1
  store i8 %2953, i8* %40, align 1
  store i8 0, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v240 = select i1 %2951, i64 43, i64 18
  %2954 = add i64 %2940, %.v240
  %2955 = add i64 %2941, -20800
  %2956 = add i64 %2954, 7
  store i64 %2956, i64* %3, align 8
  %2957 = inttoptr i64 %2955 to i32*
  %2958 = load i32, i32* %2957, align 4
  %2959 = sext i32 %2958 to i64
  store i64 %2959, i64* %RAX.i223, align 8
  %2960 = shl nsw i64 %2959, 2
  br i1 %2951, label %block_.L_453ec0, label %block_453ea7

block_453ea7:                                     ; preds = %block_.L_453e95
  %2961 = add i64 %2941, -14480
  %2962 = add i64 %2961, %2960
  %2963 = add i64 %2954, 14
  store i64 %2963, i64* %3, align 8
  %2964 = inttoptr i64 %2962 to i32*
  %2965 = load i32, i32* %2964, align 4
  %2966 = zext i32 %2965 to i64
  store i64 %2966, i64* %RCX.i2266, align 8
  %2967 = add i64 %2941, -20848
  %2968 = add i64 %2954, 20
  store i64 %2968, i64* %3, align 8
  %2969 = inttoptr i64 %2967 to i32*
  store i32 %2965, i32* %2969, align 4
  %2970 = load i64, i64* %3, align 8
  %2971 = add i64 %2970, 25
  store i64 %2971, i64* %3, align 8
  br label %block_.L_453ed4

block_.L_453ec0:                                  ; preds = %block_.L_453e95
  %2972 = add i64 %2941, -12880
  %2973 = add i64 %2972, %2960
  %2974 = add i64 %2954, 14
  store i64 %2974, i64* %3, align 8
  %2975 = inttoptr i64 %2973 to i32*
  %2976 = load i32, i32* %2975, align 4
  %2977 = zext i32 %2976 to i64
  store i64 %2977, i64* %RCX.i2266, align 8
  %2978 = add i64 %2941, -20848
  %2979 = add i64 %2954, 20
  store i64 %2979, i64* %3, align 8
  %2980 = inttoptr i64 %2978 to i32*
  store i32 %2976, i32* %2980, align 4
  %.pre201 = load i64, i64* %3, align 8
  br label %block_.L_453ed4

block_.L_453ed4:                                  ; preds = %block_.L_453ec0, %block_453ea7
  %2981 = phi i64 [ %.pre201, %block_.L_453ec0 ], [ %2971, %block_453ea7 ]
  %2982 = load i64, i64* %RBP.i, align 8
  %2983 = add i64 %2982, -20844
  %2984 = add i64 %2981, 6
  store i64 %2984, i64* %3, align 8
  %2985 = inttoptr i64 %2983 to i32*
  %2986 = load i32, i32* %2985, align 4
  %2987 = zext i32 %2986 to i64
  store i64 %2987, i64* %RDI.i2208, align 8
  %2988 = add i64 %2982, -20848
  %2989 = add i64 %2981, 12
  store i64 %2989, i64* %3, align 8
  %2990 = inttoptr i64 %2988 to i32*
  %2991 = load i32, i32* %2990, align 4
  %2992 = zext i32 %2991 to i64
  store i64 %2992, i64* %RSI.i2205, align 8
  %2993 = add i64 %2982, -52
  %2994 = add i64 %2981, 15
  store i64 %2994, i64* %3, align 8
  %2995 = inttoptr i64 %2993 to i32*
  %2996 = load i32, i32* %2995, align 4
  %2997 = zext i32 %2996 to i64
  store i64 %2997, i64* %RDX.i2258, align 8
  %2998 = add i64 %2981, 38492
  %2999 = add i64 %2981, 20
  %3000 = load i64, i64* %6, align 8
  %3001 = add i64 %3000, -8
  %3002 = inttoptr i64 %3001 to i64*
  store i64 %2999, i64* %3002, align 8
  store i64 %3001, i64* %6, align 8
  store i64 %2998, i64* %3, align 8
  %call2_453ee3 = tail call %struct.Memory* @sub_45d530.common_vulnerability(%struct.State* nonnull %0, i64 %2998, %struct.Memory* %MEMORY.38)
  %3003 = load i32, i32* %EAX.i2180, align 4
  %3004 = load i64, i64* %3, align 8
  store i8 0, i8* %25, align 1
  %3005 = and i32 %3003, 255
  %3006 = tail call i32 @llvm.ctpop.i32(i32 %3005)
  %3007 = trunc i32 %3006 to i8
  %3008 = and i8 %3007, 1
  %3009 = xor i8 %3008, 1
  store i8 %3009, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %3010 = icmp eq i32 %3003, 0
  %3011 = zext i1 %3010 to i8
  store i8 %3011, i8* %40, align 1
  %3012 = lshr i32 %3003, 31
  %3013 = trunc i32 %3012 to i8
  store i8 %3013, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v298 = select i1 %3010, i64 632, i64 9
  %3014 = add i64 %3004, %.v298
  store i64 %3014, i64* %3, align 8
  br i1 %3010, label %block_.L_454160, label %block_453ef1

block_453ef1:                                     ; preds = %block_.L_453ed4
  %3015 = load i64, i64* %RBP.i, align 8
  %3016 = add i64 %3015, -20844
  %3017 = add i64 %3014, 6
  store i64 %3017, i64* %3, align 8
  %3018 = inttoptr i64 %3016 to i32*
  %3019 = load i32, i32* %3018, align 4
  %3020 = zext i32 %3019 to i64
  store i64 %3020, i64* %RDI.i2208, align 8
  %3021 = add i64 %3015, -28
  %3022 = add i64 %3014, 9
  store i64 %3022, i64* %3, align 8
  %3023 = inttoptr i64 %3021 to i32*
  %3024 = load i32, i32* %3023, align 4
  %3025 = zext i32 %3024 to i64
  store i64 %3025, i64* %RSI.i2205, align 8
  %3026 = add i64 %3014, 38351
  %3027 = add i64 %3014, 14
  %3028 = load i64, i64* %6, align 8
  %3029 = add i64 %3028, -8
  %3030 = inttoptr i64 %3029 to i64*
  store i64 %3027, i64* %3030, align 8
  store i64 %3029, i64* %6, align 8
  store i64 %3026, i64* %3, align 8
  %call2_453efa = tail call %struct.Memory* @sub_45d4c0.check_self_atari(%struct.State* nonnull %0, i64 %3026, %struct.Memory* %MEMORY.38)
  %3031 = load i32, i32* %EAX.i2180, align 4
  %3032 = load i64, i64* %3, align 8
  store i8 0, i8* %25, align 1
  %3033 = and i32 %3031, 255
  %3034 = tail call i32 @llvm.ctpop.i32(i32 %3033)
  %3035 = trunc i32 %3034 to i8
  %3036 = and i8 %3035, 1
  %3037 = xor i8 %3036, 1
  store i8 %3037, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %3038 = icmp eq i32 %3031, 0
  %3039 = zext i1 %3038 to i8
  store i8 %3039, i8* %40, align 1
  %3040 = lshr i32 %3031, 31
  %3041 = trunc i32 %3040 to i8
  store i8 %3041, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v299 = select i1 %3038, i64 286, i64 9
  %3042 = add i64 %3032, %.v299
  store i64 %3042, i64* %3, align 8
  br i1 %3038, label %block_.L_45401d, label %block_453f08

block_453f08:                                     ; preds = %block_453ef1
  %3043 = load i64, i64* %RBP.i, align 8
  %3044 = add i64 %3043, -20852
  %3045 = add i64 %3042, 15
  store i64 %3045, i64* %3, align 8
  %3046 = inttoptr i64 %3044 to i32*
  store i32 0, i32* %3046, align 4
  %.pre202 = load i64, i64* %3, align 8
  br label %block_.L_453f17

block_.L_453f17:                                  ; preds = %block_.L_453f76, %block_453f08
  %3047 = phi i64 [ %3208, %block_.L_453f76 ], [ %.pre202, %block_453f08 ]
  %3048 = load i64, i64* %RBP.i, align 8
  %3049 = add i64 %3048, -20852
  %3050 = add i64 %3047, 6
  store i64 %3050, i64* %3, align 8
  %3051 = inttoptr i64 %3049 to i32*
  %3052 = load i32, i32* %3051, align 4
  %3053 = zext i32 %3052 to i64
  store i64 %3053, i64* %RAX.i223, align 8
  %3054 = add i64 %3048, -20740
  %3055 = add i64 %3047, 12
  store i64 %3055, i64* %3, align 8
  %3056 = inttoptr i64 %3054 to i32*
  %3057 = load i32, i32* %3056, align 4
  %3058 = sub i32 %3052, %3057
  %3059 = icmp ult i32 %3052, %3057
  %3060 = zext i1 %3059 to i8
  store i8 %3060, i8* %25, align 1
  %3061 = and i32 %3058, 255
  %3062 = tail call i32 @llvm.ctpop.i32(i32 %3061)
  %3063 = trunc i32 %3062 to i8
  %3064 = and i8 %3063, 1
  %3065 = xor i8 %3064, 1
  store i8 %3065, i8* %32, align 1
  %3066 = xor i32 %3057, %3052
  %3067 = xor i32 %3066, %3058
  %3068 = lshr i32 %3067, 4
  %3069 = trunc i32 %3068 to i8
  %3070 = and i8 %3069, 1
  store i8 %3070, i8* %37, align 1
  %3071 = icmp eq i32 %3058, 0
  %3072 = zext i1 %3071 to i8
  store i8 %3072, i8* %40, align 1
  %3073 = lshr i32 %3058, 31
  %3074 = trunc i32 %3073 to i8
  store i8 %3074, i8* %43, align 1
  %3075 = lshr i32 %3052, 31
  %3076 = lshr i32 %3057, 31
  %3077 = xor i32 %3076, %3075
  %3078 = xor i32 %3073, %3075
  %3079 = add nuw nsw i32 %3078, %3077
  %3080 = icmp eq i32 %3079, 2
  %3081 = zext i1 %3080 to i8
  store i8 %3081, i8* %49, align 1
  %3082 = icmp ne i8 %3074, 0
  %3083 = xor i1 %3082, %3080
  %.v244 = select i1 %3083, i64 18, i64 120
  %3084 = add i64 %3047, %.v244
  store i64 %3084, i64* %3, align 8
  br i1 %3083, label %block_453f29, label %block_.L_453f8f.loopexit

block_453f29:                                     ; preds = %block_.L_453f17
  %3085 = add i64 %3048, -40
  %3086 = add i64 %3084, 4
  store i64 %3086, i64* %3, align 8
  %3087 = inttoptr i64 %3085 to i64*
  %3088 = load i64, i64* %3087, align 8
  store i64 %3088, i64* %RAX.i223, align 8
  %3089 = add i64 %3084, 11
  store i64 %3089, i64* %3, align 8
  %3090 = load i32, i32* %3051, align 4
  %3091 = sext i32 %3090 to i64
  store i64 %3091, i64* %RCX.i2266, align 8
  %3092 = shl nsw i64 %3091, 2
  %3093 = add i64 %3092, %3088
  %3094 = add i64 %3084, 14
  store i64 %3094, i64* %3, align 8
  %3095 = inttoptr i64 %3093 to i32*
  %3096 = load i32, i32* %3095, align 4
  %3097 = zext i32 %3096 to i64
  store i64 %3097, i64* %RDX.i2258, align 8
  %3098 = add i64 %3048, -20844
  %3099 = add i64 %3084, 20
  store i64 %3099, i64* %3, align 8
  %3100 = inttoptr i64 %3098 to i32*
  %3101 = load i32, i32* %3100, align 4
  %3102 = sub i32 %3096, %3101
  %3103 = icmp ult i32 %3096, %3101
  %3104 = zext i1 %3103 to i8
  store i8 %3104, i8* %25, align 1
  %3105 = and i32 %3102, 255
  %3106 = tail call i32 @llvm.ctpop.i32(i32 %3105)
  %3107 = trunc i32 %3106 to i8
  %3108 = and i8 %3107, 1
  %3109 = xor i8 %3108, 1
  store i8 %3109, i8* %32, align 1
  %3110 = xor i32 %3101, %3096
  %3111 = xor i32 %3110, %3102
  %3112 = lshr i32 %3111, 4
  %3113 = trunc i32 %3112 to i8
  %3114 = and i8 %3113, 1
  store i8 %3114, i8* %37, align 1
  %3115 = icmp eq i32 %3102, 0
  %3116 = zext i1 %3115 to i8
  store i8 %3116, i8* %40, align 1
  %3117 = lshr i32 %3102, 31
  %3118 = trunc i32 %3117 to i8
  store i8 %3118, i8* %43, align 1
  %3119 = lshr i32 %3096, 31
  %3120 = lshr i32 %3101, 31
  %3121 = xor i32 %3120, %3119
  %3122 = xor i32 %3117, %3119
  %3123 = add nuw nsw i32 %3122, %3121
  %3124 = icmp eq i32 %3123, 2
  %3125 = zext i1 %3124 to i8
  store i8 %3125, i8* %49, align 1
  %.v243 = select i1 %3115, i64 26, i64 77
  %3126 = add i64 %3084, %.v243
  store i64 %3126, i64* %3, align 8
  br i1 %3115, label %block_453f43, label %block_.L_453f76

block_453f43:                                     ; preds = %block_453f29
  %3127 = add i64 %3126, 7
  store i64 %3127, i64* %3, align 8
  %3128 = load i32, i32* %3051, align 4
  %3129 = sext i32 %3128 to i64
  store i64 %3129, i64* %RAX.i223, align 8
  %3130 = shl nsw i64 %3129, 2
  %3131 = add i64 %3048, -20736
  %3132 = add i64 %3131, %3130
  %3133 = add i64 %3126, 14
  store i64 %3133, i64* %3, align 8
  %3134 = inttoptr i64 %3132 to i32*
  %3135 = load i32, i32* %3134, align 4
  %3136 = zext i32 %3135 to i64
  store i64 %3136, i64* %RCX.i2266, align 8
  %3137 = add i64 %3048, -20828
  %3138 = add i64 %3126, 20
  store i64 %3138, i64* %3, align 8
  %3139 = inttoptr i64 %3137 to i32*
  %3140 = load i32, i32* %3139, align 4
  %3141 = sub i32 %3135, %3140
  %3142 = icmp ult i32 %3135, %3140
  %3143 = zext i1 %3142 to i8
  store i8 %3143, i8* %25, align 1
  %3144 = and i32 %3141, 255
  %3145 = tail call i32 @llvm.ctpop.i32(i32 %3144)
  %3146 = trunc i32 %3145 to i8
  %3147 = and i8 %3146, 1
  %3148 = xor i8 %3147, 1
  store i8 %3148, i8* %32, align 1
  %3149 = xor i32 %3140, %3135
  %3150 = xor i32 %3149, %3141
  %3151 = lshr i32 %3150, 4
  %3152 = trunc i32 %3151 to i8
  %3153 = and i8 %3152, 1
  store i8 %3153, i8* %37, align 1
  %3154 = icmp eq i32 %3141, 0
  %3155 = zext i1 %3154 to i8
  store i8 %3155, i8* %40, align 1
  %3156 = lshr i32 %3141, 31
  %3157 = trunc i32 %3156 to i8
  store i8 %3157, i8* %43, align 1
  %3158 = lshr i32 %3135, 31
  %3159 = lshr i32 %3140, 31
  %3160 = xor i32 %3159, %3158
  %3161 = xor i32 %3156, %3158
  %3162 = add nuw nsw i32 %3161, %3160
  %3163 = icmp eq i32 %3162, 2
  %3164 = zext i1 %3163 to i8
  store i8 %3164, i8* %49, align 1
  %3165 = icmp ne i8 %3157, 0
  %3166 = xor i1 %3165, %3163
  %3167 = or i1 %3154, %3166
  %.v309 = select i1 %3167, i64 46, i64 26
  %3168 = add i64 %3126, %.v309
  store i64 %3168, i64* %3, align 8
  br i1 %3167, label %block_.L_453f71, label %block_453f5d

block_453f5d:                                     ; preds = %block_453f43
  %3169 = add i64 %3168, 6
  store i64 %3169, i64* %3, align 8
  %3170 = load i32, i32* %3139, align 4
  %3171 = zext i32 %3170 to i64
  store i64 %3171, i64* %RAX.i223, align 8
  %3172 = add i64 %3168, 13
  store i64 %3172, i64* %3, align 8
  %3173 = load i32, i32* %3051, align 4
  %3174 = sext i32 %3173 to i64
  store i64 %3174, i64* %RCX.i2266, align 8
  %3175 = shl nsw i64 %3174, 2
  %3176 = add i64 %3131, %3175
  %3177 = add i64 %3168, 20
  store i64 %3177, i64* %3, align 8
  %3178 = inttoptr i64 %3176 to i32*
  store i32 %3170, i32* %3178, align 4
  %.pre203 = load i64, i64* %3, align 8
  %.pre204.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_453f71

block_.L_453f71:                                  ; preds = %block_453f5d, %block_453f43
  %.pre204 = phi i64 [ %.pre204.pre, %block_453f5d ], [ %3048, %block_453f43 ]
  %3179 = phi i64 [ %.pre203, %block_453f5d ], [ %3168, %block_453f43 ]
  %3180 = add i64 %3179, 30
  store i64 %3180, i64* %3, align 8
  br label %block_.L_453f8f

block_.L_453f76:                                  ; preds = %block_453f29
  %3181 = add i64 %3126, 11
  store i64 %3181, i64* %3, align 8
  %3182 = load i32, i32* %3051, align 4
  %3183 = add i32 %3182, 1
  %3184 = zext i32 %3183 to i64
  store i64 %3184, i64* %RAX.i223, align 8
  %3185 = icmp eq i32 %3182, -1
  %3186 = icmp eq i32 %3183, 0
  %3187 = or i1 %3185, %3186
  %3188 = zext i1 %3187 to i8
  store i8 %3188, i8* %25, align 1
  %3189 = and i32 %3183, 255
  %3190 = tail call i32 @llvm.ctpop.i32(i32 %3189)
  %3191 = trunc i32 %3190 to i8
  %3192 = and i8 %3191, 1
  %3193 = xor i8 %3192, 1
  store i8 %3193, i8* %32, align 1
  %3194 = xor i32 %3183, %3182
  %3195 = lshr i32 %3194, 4
  %3196 = trunc i32 %3195 to i8
  %3197 = and i8 %3196, 1
  store i8 %3197, i8* %37, align 1
  %3198 = zext i1 %3186 to i8
  store i8 %3198, i8* %40, align 1
  %3199 = lshr i32 %3183, 31
  %3200 = trunc i32 %3199 to i8
  store i8 %3200, i8* %43, align 1
  %3201 = lshr i32 %3182, 31
  %3202 = xor i32 %3199, %3201
  %3203 = add nuw nsw i32 %3202, %3199
  %3204 = icmp eq i32 %3203, 2
  %3205 = zext i1 %3204 to i8
  store i8 %3205, i8* %49, align 1
  %3206 = add i64 %3126, 20
  store i64 %3206, i64* %3, align 8
  store i32 %3183, i32* %3051, align 4
  %3207 = load i64, i64* %3, align 8
  %3208 = add i64 %3207, -115
  store i64 %3208, i64* %3, align 8
  br label %block_.L_453f17

block_.L_453f8f.loopexit:                         ; preds = %block_.L_453f17
  br label %block_.L_453f8f

block_.L_453f8f:                                  ; preds = %block_.L_453f8f.loopexit, %block_.L_453f71
  %3209 = phi i64 [ %3180, %block_.L_453f71 ], [ %3084, %block_.L_453f8f.loopexit ]
  %3210 = phi i64 [ %.pre204, %block_.L_453f71 ], [ %3048, %block_.L_453f8f.loopexit ]
  %3211 = add i64 %3210, -20852
  %3212 = add i64 %3209, 6
  store i64 %3212, i64* %3, align 8
  %3213 = inttoptr i64 %3211 to i32*
  %3214 = load i32, i32* %3213, align 4
  %3215 = zext i32 %3214 to i64
  store i64 %3215, i64* %RAX.i223, align 8
  %3216 = add i64 %3210, -20740
  %3217 = add i64 %3209, 12
  store i64 %3217, i64* %3, align 8
  %3218 = inttoptr i64 %3216 to i32*
  %3219 = load i32, i32* %3218, align 4
  %3220 = sub i32 %3214, %3219
  %3221 = icmp ult i32 %3214, %3219
  %3222 = zext i1 %3221 to i8
  store i8 %3222, i8* %25, align 1
  %3223 = and i32 %3220, 255
  %3224 = tail call i32 @llvm.ctpop.i32(i32 %3223)
  %3225 = trunc i32 %3224 to i8
  %3226 = and i8 %3225, 1
  %3227 = xor i8 %3226, 1
  store i8 %3227, i8* %32, align 1
  %3228 = xor i32 %3219, %3214
  %3229 = xor i32 %3228, %3220
  %3230 = lshr i32 %3229, 4
  %3231 = trunc i32 %3230 to i8
  %3232 = and i8 %3231, 1
  store i8 %3232, i8* %37, align 1
  %3233 = icmp eq i32 %3220, 0
  %3234 = zext i1 %3233 to i8
  store i8 %3234, i8* %40, align 1
  %3235 = lshr i32 %3220, 31
  %3236 = trunc i32 %3235 to i8
  store i8 %3236, i8* %43, align 1
  %3237 = lshr i32 %3214, 31
  %3238 = lshr i32 %3219, 31
  %3239 = xor i32 %3238, %3237
  %3240 = xor i32 %3235, %3237
  %3241 = add nuw nsw i32 %3240, %3239
  %3242 = icmp eq i32 %3241, 2
  %3243 = zext i1 %3242 to i8
  store i8 %3243, i8* %49, align 1
  %.v300 = select i1 %3233, i64 18, i64 89
  %3244 = add i64 %3209, %.v300
  store i64 %3244, i64* %3, align 8
  br i1 %3233, label %block_453fa1, label %block_.L_453fe8

block_453fa1:                                     ; preds = %block_.L_453f8f
  %3245 = add i64 %3244, 10
  store i64 %3245, i64* %3, align 8
  %3246 = load i32, i32* %3218, align 4
  %3247 = add i32 %3246, -362
  %3248 = icmp ult i32 %3246, 362
  %3249 = zext i1 %3248 to i8
  store i8 %3249, i8* %25, align 1
  %3250 = and i32 %3247, 255
  %3251 = tail call i32 @llvm.ctpop.i32(i32 %3250)
  %3252 = trunc i32 %3251 to i8
  %3253 = and i8 %3252, 1
  %3254 = xor i8 %3253, 1
  store i8 %3254, i8* %32, align 1
  %3255 = xor i32 %3247, %3246
  %3256 = lshr i32 %3255, 4
  %3257 = trunc i32 %3256 to i8
  %3258 = and i8 %3257, 1
  store i8 %3258, i8* %37, align 1
  %3259 = icmp eq i32 %3247, 0
  %3260 = zext i1 %3259 to i8
  store i8 %3260, i8* %40, align 1
  %3261 = lshr i32 %3247, 31
  %3262 = trunc i32 %3261 to i8
  store i8 %3262, i8* %43, align 1
  %3263 = lshr i32 %3246, 31
  %3264 = xor i32 %3261, %3263
  %3265 = add nuw nsw i32 %3264, %3263
  %3266 = icmp eq i32 %3265, 2
  %3267 = zext i1 %3266 to i8
  store i8 %3267, i8* %49, align 1
  %3268 = icmp ne i8 %3262, 0
  %3269 = xor i1 %3268, %3266
  %.v308 = select i1 %3269, i64 16, i64 71
  %3270 = add i64 %3244, %.v308
  store i64 %3270, i64* %3, align 8
  br i1 %3269, label %block_453fb1, label %block_.L_453fe8

block_453fb1:                                     ; preds = %block_453fa1
  %3271 = add i64 %3210, -20844
  %3272 = add i64 %3270, 6
  store i64 %3272, i64* %3, align 8
  %3273 = inttoptr i64 %3271 to i32*
  %3274 = load i32, i32* %3273, align 4
  %3275 = zext i32 %3274 to i64
  store i64 %3275, i64* %RAX.i223, align 8
  %3276 = add i64 %3210, -40
  %3277 = add i64 %3270, 10
  store i64 %3277, i64* %3, align 8
  %3278 = inttoptr i64 %3276 to i64*
  %3279 = load i64, i64* %3278, align 8
  store i64 %3279, i64* %RCX.i2266, align 8
  %3280 = add i64 %3270, 17
  store i64 %3280, i64* %3, align 8
  %3281 = load i32, i32* %3218, align 4
  %3282 = sext i32 %3281 to i64
  store i64 %3282, i64* %RDX.i2258, align 8
  %3283 = shl nsw i64 %3282, 2
  %3284 = add i64 %3283, %3279
  %3285 = add i64 %3270, 20
  store i64 %3285, i64* %3, align 8
  %3286 = inttoptr i64 %3284 to i32*
  store i32 %3274, i32* %3286, align 4
  %3287 = load i64, i64* %RBP.i, align 8
  %3288 = add i64 %3287, -20828
  %3289 = load i64, i64* %3, align 8
  %3290 = add i64 %3289, 6
  store i64 %3290, i64* %3, align 8
  %3291 = inttoptr i64 %3288 to i32*
  %3292 = load i32, i32* %3291, align 4
  %3293 = zext i32 %3292 to i64
  store i64 %3293, i64* %RAX.i223, align 8
  %3294 = add i64 %3287, -20740
  %3295 = add i64 %3289, 13
  store i64 %3295, i64* %3, align 8
  %3296 = inttoptr i64 %3294 to i32*
  %3297 = load i32, i32* %3296, align 4
  %3298 = sext i32 %3297 to i64
  store i64 %3298, i64* %RCX.i2266, align 8
  %3299 = shl nsw i64 %3298, 2
  %3300 = add i64 %3287, -20736
  %3301 = add i64 %3300, %3299
  %3302 = add i64 %3289, 20
  store i64 %3302, i64* %3, align 8
  %3303 = inttoptr i64 %3301 to i32*
  store i32 %3292, i32* %3303, align 4
  %3304 = load i64, i64* %RBP.i, align 8
  %3305 = add i64 %3304, -20740
  %3306 = load i64, i64* %3, align 8
  %3307 = add i64 %3306, 6
  store i64 %3307, i64* %3, align 8
  %3308 = inttoptr i64 %3305 to i32*
  %3309 = load i32, i32* %3308, align 4
  %3310 = add i32 %3309, 1
  %3311 = zext i32 %3310 to i64
  store i64 %3311, i64* %RAX.i223, align 8
  %3312 = icmp eq i32 %3309, -1
  %3313 = icmp eq i32 %3310, 0
  %3314 = or i1 %3312, %3313
  %3315 = zext i1 %3314 to i8
  store i8 %3315, i8* %25, align 1
  %3316 = and i32 %3310, 255
  %3317 = tail call i32 @llvm.ctpop.i32(i32 %3316)
  %3318 = trunc i32 %3317 to i8
  %3319 = and i8 %3318, 1
  %3320 = xor i8 %3319, 1
  store i8 %3320, i8* %32, align 1
  %3321 = xor i32 %3310, %3309
  %3322 = lshr i32 %3321, 4
  %3323 = trunc i32 %3322 to i8
  %3324 = and i8 %3323, 1
  store i8 %3324, i8* %37, align 1
  %3325 = zext i1 %3313 to i8
  store i8 %3325, i8* %40, align 1
  %3326 = lshr i32 %3310, 31
  %3327 = trunc i32 %3326 to i8
  store i8 %3327, i8* %43, align 1
  %3328 = lshr i32 %3309, 31
  %3329 = xor i32 %3326, %3328
  %3330 = add nuw nsw i32 %3329, %3326
  %3331 = icmp eq i32 %3330, 2
  %3332 = zext i1 %3331 to i8
  store i8 %3332, i8* %49, align 1
  %3333 = add i64 %3306, 15
  store i64 %3333, i64* %3, align 8
  store i32 %3310, i32* %3308, align 4
  %.pre205 = load i64, i64* %3, align 8
  br label %block_.L_453fe8

block_.L_453fe8:                                  ; preds = %block_.L_453f8f, %block_453fa1, %block_453fb1
  %3334 = phi i64 [ %3270, %block_453fa1 ], [ %.pre205, %block_453fb1 ], [ %3244, %block_.L_453f8f ]
  %3335 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %25, align 1
  %3336 = and i32 %3335, 255
  %3337 = tail call i32 @llvm.ctpop.i32(i32 %3336)
  %3338 = trunc i32 %3337 to i8
  %3339 = and i8 %3338, 1
  %3340 = xor i8 %3339, 1
  store i8 %3340, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %3341 = icmp eq i32 %3335, 0
  %3342 = zext i1 %3341 to i8
  store i8 %3342, i8* %40, align 1
  %3343 = lshr i32 %3335, 31
  %3344 = trunc i32 %3343 to i8
  store i8 %3344, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %3345 = icmp ne i8 %3344, 0
  %3346 = or i1 %3341, %3345
  %.v301 = select i1 %3346, i64 48, i64 19
  %3347 = add i64 %3334, %.v301
  store i64 %3347, i64* %3, align 8
  br i1 %3346, label %block_.L_454018, label %block_453ffb

block_453ffb:                                     ; preds = %block_.L_453fe8
  store i64 ptrtoint (%G__0x57f7fd_type* @G__0x57f7fd to i64), i64* %RDI.i2208, align 8
  %3348 = load i64, i64* %RBP.i, align 8
  %3349 = add i64 %3348, -20844
  %3350 = add i64 %3347, 16
  store i64 %3350, i64* %3, align 8
  %3351 = inttoptr i64 %3349 to i32*
  %3352 = load i32, i32* %3351, align 4
  %3353 = zext i32 %3352 to i64
  store i64 %3353, i64* %RSI.i2205, align 8
  store i8 0, i8* %AL.i930.pre-phi, align 1
  %3354 = add i64 %3347, -8779
  %3355 = add i64 %3347, 23
  %3356 = load i64, i64* %6, align 8
  %3357 = add i64 %3356, -8
  %3358 = inttoptr i64 %3357 to i64*
  store i64 %3355, i64* %3358, align 8
  store i64 %3357, i64* %6, align 8
  store i64 %3354, i64* %3, align 8
  %call2_45400d = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %3354, %struct.Memory* %MEMORY.38)
  %3359 = load i64, i64* %RBP.i, align 8
  %3360 = add i64 %3359, -21460
  %3361 = load i32, i32* %EAX.i2180, align 4
  %3362 = load i64, i64* %3, align 8
  %3363 = add i64 %3362, 6
  store i64 %3363, i64* %3, align 8
  %3364 = inttoptr i64 %3360 to i32*
  store i32 %3361, i32* %3364, align 4
  %.pre206 = load i64, i64* %3, align 8
  br label %block_.L_454018

block_.L_454018:                                  ; preds = %block_453ffb, %block_.L_453fe8
  %3365 = phi i64 [ %.pre206, %block_453ffb ], [ %3347, %block_.L_453fe8 ]
  %3366 = add i64 %3365, 5
  store i64 %3366, i64* %3, align 8
  br label %block_.L_45401d

block_.L_45401d:                                  ; preds = %block_.L_454018, %block_453ef1
  %3367 = phi i64 [ %3366, %block_.L_454018 ], [ %3042, %block_453ef1 ]
  %3368 = load i64, i64* %RBP.i, align 8
  %3369 = add i64 %3368, -20848
  %3370 = add i64 %3367, 6
  store i64 %3370, i64* %3, align 8
  %3371 = inttoptr i64 %3369 to i32*
  %3372 = load i32, i32* %3371, align 4
  %3373 = zext i32 %3372 to i64
  store i64 %3373, i64* %RAX.i223, align 8
  %3374 = add i64 %3368, -20844
  %3375 = add i64 %3367, 12
  store i64 %3375, i64* %3, align 8
  %3376 = inttoptr i64 %3374 to i32*
  %3377 = load i32, i32* %3376, align 4
  %3378 = sub i32 %3372, %3377
  %3379 = icmp ult i32 %3372, %3377
  %3380 = zext i1 %3379 to i8
  store i8 %3380, i8* %25, align 1
  %3381 = and i32 %3378, 255
  %3382 = tail call i32 @llvm.ctpop.i32(i32 %3381)
  %3383 = trunc i32 %3382 to i8
  %3384 = and i8 %3383, 1
  %3385 = xor i8 %3384, 1
  store i8 %3385, i8* %32, align 1
  %3386 = xor i32 %3377, %3372
  %3387 = xor i32 %3386, %3378
  %3388 = lshr i32 %3387, 4
  %3389 = trunc i32 %3388 to i8
  %3390 = and i8 %3389, 1
  store i8 %3390, i8* %37, align 1
  %3391 = icmp eq i32 %3378, 0
  %3392 = zext i1 %3391 to i8
  store i8 %3392, i8* %40, align 1
  %3393 = lshr i32 %3378, 31
  %3394 = trunc i32 %3393 to i8
  store i8 %3394, i8* %43, align 1
  %3395 = lshr i32 %3372, 31
  %3396 = lshr i32 %3377, 31
  %3397 = xor i32 %3396, %3395
  %3398 = xor i32 %3393, %3395
  %3399 = add nuw nsw i32 %3398, %3397
  %3400 = icmp eq i32 %3399, 2
  %3401 = zext i1 %3400 to i8
  store i8 %3401, i8* %49, align 1
  %.v302 = select i1 %3391, i64 318, i64 18
  %3402 = add i64 %3367, %.v302
  store i64 %3402, i64* %3, align 8
  br i1 %3391, label %block_.L_45415b, label %block_45402f

block_45402f:                                     ; preds = %block_.L_45401d
  %3403 = add i64 %3402, 6
  store i64 %3403, i64* %3, align 8
  %3404 = load i32, i32* %3371, align 4
  %3405 = zext i32 %3404 to i64
  store i64 %3405, i64* %RDI.i2208, align 8
  %3406 = add i64 %3368, -28
  %3407 = add i64 %3402, 9
  store i64 %3407, i64* %3, align 8
  %3408 = inttoptr i64 %3406 to i32*
  %3409 = load i32, i32* %3408, align 4
  %3410 = zext i32 %3409 to i64
  store i64 %3410, i64* %RSI.i2205, align 8
  %3411 = add i64 %3402, 38033
  %3412 = add i64 %3402, 14
  %3413 = load i64, i64* %6, align 8
  %3414 = add i64 %3413, -8
  %3415 = inttoptr i64 %3414 to i64*
  store i64 %3412, i64* %3415, align 8
  store i64 %3414, i64* %6, align 8
  store i64 %3411, i64* %3, align 8
  %call2_454038 = tail call %struct.Memory* @sub_45d4c0.check_self_atari(%struct.State* nonnull %0, i64 %3411, %struct.Memory* %MEMORY.38)
  %3416 = load i32, i32* %EAX.i2180, align 4
  %3417 = load i64, i64* %3, align 8
  store i8 0, i8* %25, align 1
  %3418 = and i32 %3416, 255
  %3419 = tail call i32 @llvm.ctpop.i32(i32 %3418)
  %3420 = trunc i32 %3419 to i8
  %3421 = and i8 %3420, 1
  %3422 = xor i8 %3421, 1
  store i8 %3422, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %3423 = icmp eq i32 %3416, 0
  %3424 = zext i1 %3423 to i8
  store i8 %3424, i8* %40, align 1
  %3425 = lshr i32 %3416, 31
  %3426 = trunc i32 %3425 to i8
  store i8 %3426, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v303 = select i1 %3423, i64 286, i64 9
  %3427 = add i64 %3417, %.v303
  store i64 %3427, i64* %3, align 8
  br i1 %3423, label %block_.L_45415b, label %block_454046

block_454046:                                     ; preds = %block_45402f
  %3428 = load i64, i64* %RBP.i, align 8
  %3429 = add i64 %3428, -20856
  %3430 = add i64 %3427, 15
  store i64 %3430, i64* %3, align 8
  %3431 = inttoptr i64 %3429 to i32*
  store i32 0, i32* %3431, align 4
  %.pre207 = load i64, i64* %3, align 8
  br label %block_.L_454055

block_.L_454055:                                  ; preds = %block_.L_4540b4, %block_454046
  %3432 = phi i64 [ %3593, %block_.L_4540b4 ], [ %.pre207, %block_454046 ]
  %3433 = load i64, i64* %RBP.i, align 8
  %3434 = add i64 %3433, -20856
  %3435 = add i64 %3432, 6
  store i64 %3435, i64* %3, align 8
  %3436 = inttoptr i64 %3434 to i32*
  %3437 = load i32, i32* %3436, align 4
  %3438 = zext i32 %3437 to i64
  store i64 %3438, i64* %RAX.i223, align 8
  %3439 = add i64 %3433, -20740
  %3440 = add i64 %3432, 12
  store i64 %3440, i64* %3, align 8
  %3441 = inttoptr i64 %3439 to i32*
  %3442 = load i32, i32* %3441, align 4
  %3443 = sub i32 %3437, %3442
  %3444 = icmp ult i32 %3437, %3442
  %3445 = zext i1 %3444 to i8
  store i8 %3445, i8* %25, align 1
  %3446 = and i32 %3443, 255
  %3447 = tail call i32 @llvm.ctpop.i32(i32 %3446)
  %3448 = trunc i32 %3447 to i8
  %3449 = and i8 %3448, 1
  %3450 = xor i8 %3449, 1
  store i8 %3450, i8* %32, align 1
  %3451 = xor i32 %3442, %3437
  %3452 = xor i32 %3451, %3443
  %3453 = lshr i32 %3452, 4
  %3454 = trunc i32 %3453 to i8
  %3455 = and i8 %3454, 1
  store i8 %3455, i8* %37, align 1
  %3456 = icmp eq i32 %3443, 0
  %3457 = zext i1 %3456 to i8
  store i8 %3457, i8* %40, align 1
  %3458 = lshr i32 %3443, 31
  %3459 = trunc i32 %3458 to i8
  store i8 %3459, i8* %43, align 1
  %3460 = lshr i32 %3437, 31
  %3461 = lshr i32 %3442, 31
  %3462 = xor i32 %3461, %3460
  %3463 = xor i32 %3458, %3460
  %3464 = add nuw nsw i32 %3463, %3462
  %3465 = icmp eq i32 %3464, 2
  %3466 = zext i1 %3465 to i8
  store i8 %3466, i8* %49, align 1
  %3467 = icmp ne i8 %3459, 0
  %3468 = xor i1 %3467, %3465
  %.v242 = select i1 %3468, i64 18, i64 120
  %3469 = add i64 %3432, %.v242
  store i64 %3469, i64* %3, align 8
  br i1 %3468, label %block_454067, label %block_.L_4540cd.loopexit

block_454067:                                     ; preds = %block_.L_454055
  %3470 = add i64 %3433, -40
  %3471 = add i64 %3469, 4
  store i64 %3471, i64* %3, align 8
  %3472 = inttoptr i64 %3470 to i64*
  %3473 = load i64, i64* %3472, align 8
  store i64 %3473, i64* %RAX.i223, align 8
  %3474 = add i64 %3469, 11
  store i64 %3474, i64* %3, align 8
  %3475 = load i32, i32* %3436, align 4
  %3476 = sext i32 %3475 to i64
  store i64 %3476, i64* %RCX.i2266, align 8
  %3477 = shl nsw i64 %3476, 2
  %3478 = add i64 %3477, %3473
  %3479 = add i64 %3469, 14
  store i64 %3479, i64* %3, align 8
  %3480 = inttoptr i64 %3478 to i32*
  %3481 = load i32, i32* %3480, align 4
  %3482 = zext i32 %3481 to i64
  store i64 %3482, i64* %RDX.i2258, align 8
  %3483 = add i64 %3433, -20848
  %3484 = add i64 %3469, 20
  store i64 %3484, i64* %3, align 8
  %3485 = inttoptr i64 %3483 to i32*
  %3486 = load i32, i32* %3485, align 4
  %3487 = sub i32 %3481, %3486
  %3488 = icmp ult i32 %3481, %3486
  %3489 = zext i1 %3488 to i8
  store i8 %3489, i8* %25, align 1
  %3490 = and i32 %3487, 255
  %3491 = tail call i32 @llvm.ctpop.i32(i32 %3490)
  %3492 = trunc i32 %3491 to i8
  %3493 = and i8 %3492, 1
  %3494 = xor i8 %3493, 1
  store i8 %3494, i8* %32, align 1
  %3495 = xor i32 %3486, %3481
  %3496 = xor i32 %3495, %3487
  %3497 = lshr i32 %3496, 4
  %3498 = trunc i32 %3497 to i8
  %3499 = and i8 %3498, 1
  store i8 %3499, i8* %37, align 1
  %3500 = icmp eq i32 %3487, 0
  %3501 = zext i1 %3500 to i8
  store i8 %3501, i8* %40, align 1
  %3502 = lshr i32 %3487, 31
  %3503 = trunc i32 %3502 to i8
  store i8 %3503, i8* %43, align 1
  %3504 = lshr i32 %3481, 31
  %3505 = lshr i32 %3486, 31
  %3506 = xor i32 %3505, %3504
  %3507 = xor i32 %3502, %3504
  %3508 = add nuw nsw i32 %3507, %3506
  %3509 = icmp eq i32 %3508, 2
  %3510 = zext i1 %3509 to i8
  store i8 %3510, i8* %49, align 1
  %.v241 = select i1 %3500, i64 26, i64 77
  %3511 = add i64 %3469, %.v241
  store i64 %3511, i64* %3, align 8
  br i1 %3500, label %block_454081, label %block_.L_4540b4

block_454081:                                     ; preds = %block_454067
  %3512 = add i64 %3511, 7
  store i64 %3512, i64* %3, align 8
  %3513 = load i32, i32* %3436, align 4
  %3514 = sext i32 %3513 to i64
  store i64 %3514, i64* %RAX.i223, align 8
  %3515 = shl nsw i64 %3514, 2
  %3516 = add i64 %3433, -20736
  %3517 = add i64 %3516, %3515
  %3518 = add i64 %3511, 14
  store i64 %3518, i64* %3, align 8
  %3519 = inttoptr i64 %3517 to i32*
  %3520 = load i32, i32* %3519, align 4
  %3521 = zext i32 %3520 to i64
  store i64 %3521, i64* %RCX.i2266, align 8
  %3522 = add i64 %3433, -20828
  %3523 = add i64 %3511, 20
  store i64 %3523, i64* %3, align 8
  %3524 = inttoptr i64 %3522 to i32*
  %3525 = load i32, i32* %3524, align 4
  %3526 = sub i32 %3520, %3525
  %3527 = icmp ult i32 %3520, %3525
  %3528 = zext i1 %3527 to i8
  store i8 %3528, i8* %25, align 1
  %3529 = and i32 %3526, 255
  %3530 = tail call i32 @llvm.ctpop.i32(i32 %3529)
  %3531 = trunc i32 %3530 to i8
  %3532 = and i8 %3531, 1
  %3533 = xor i8 %3532, 1
  store i8 %3533, i8* %32, align 1
  %3534 = xor i32 %3525, %3520
  %3535 = xor i32 %3534, %3526
  %3536 = lshr i32 %3535, 4
  %3537 = trunc i32 %3536 to i8
  %3538 = and i8 %3537, 1
  store i8 %3538, i8* %37, align 1
  %3539 = icmp eq i32 %3526, 0
  %3540 = zext i1 %3539 to i8
  store i8 %3540, i8* %40, align 1
  %3541 = lshr i32 %3526, 31
  %3542 = trunc i32 %3541 to i8
  store i8 %3542, i8* %43, align 1
  %3543 = lshr i32 %3520, 31
  %3544 = lshr i32 %3525, 31
  %3545 = xor i32 %3544, %3543
  %3546 = xor i32 %3541, %3543
  %3547 = add nuw nsw i32 %3546, %3545
  %3548 = icmp eq i32 %3547, 2
  %3549 = zext i1 %3548 to i8
  store i8 %3549, i8* %49, align 1
  %3550 = icmp ne i8 %3542, 0
  %3551 = xor i1 %3550, %3548
  %3552 = or i1 %3539, %3551
  %.v307 = select i1 %3552, i64 46, i64 26
  %3553 = add i64 %3511, %.v307
  store i64 %3553, i64* %3, align 8
  br i1 %3552, label %block_.L_4540af, label %block_45409b

block_45409b:                                     ; preds = %block_454081
  %3554 = add i64 %3553, 6
  store i64 %3554, i64* %3, align 8
  %3555 = load i32, i32* %3524, align 4
  %3556 = zext i32 %3555 to i64
  store i64 %3556, i64* %RAX.i223, align 8
  %3557 = add i64 %3553, 13
  store i64 %3557, i64* %3, align 8
  %3558 = load i32, i32* %3436, align 4
  %3559 = sext i32 %3558 to i64
  store i64 %3559, i64* %RCX.i2266, align 8
  %3560 = shl nsw i64 %3559, 2
  %3561 = add i64 %3516, %3560
  %3562 = add i64 %3553, 20
  store i64 %3562, i64* %3, align 8
  %3563 = inttoptr i64 %3561 to i32*
  store i32 %3555, i32* %3563, align 4
  %.pre208 = load i64, i64* %3, align 8
  %.pre209.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_4540af

block_.L_4540af:                                  ; preds = %block_45409b, %block_454081
  %.pre209 = phi i64 [ %.pre209.pre, %block_45409b ], [ %3433, %block_454081 ]
  %3564 = phi i64 [ %.pre208, %block_45409b ], [ %3553, %block_454081 ]
  %3565 = add i64 %3564, 30
  store i64 %3565, i64* %3, align 8
  br label %block_.L_4540cd

block_.L_4540b4:                                  ; preds = %block_454067
  %3566 = add i64 %3511, 11
  store i64 %3566, i64* %3, align 8
  %3567 = load i32, i32* %3436, align 4
  %3568 = add i32 %3567, 1
  %3569 = zext i32 %3568 to i64
  store i64 %3569, i64* %RAX.i223, align 8
  %3570 = icmp eq i32 %3567, -1
  %3571 = icmp eq i32 %3568, 0
  %3572 = or i1 %3570, %3571
  %3573 = zext i1 %3572 to i8
  store i8 %3573, i8* %25, align 1
  %3574 = and i32 %3568, 255
  %3575 = tail call i32 @llvm.ctpop.i32(i32 %3574)
  %3576 = trunc i32 %3575 to i8
  %3577 = and i8 %3576, 1
  %3578 = xor i8 %3577, 1
  store i8 %3578, i8* %32, align 1
  %3579 = xor i32 %3568, %3567
  %3580 = lshr i32 %3579, 4
  %3581 = trunc i32 %3580 to i8
  %3582 = and i8 %3581, 1
  store i8 %3582, i8* %37, align 1
  %3583 = zext i1 %3571 to i8
  store i8 %3583, i8* %40, align 1
  %3584 = lshr i32 %3568, 31
  %3585 = trunc i32 %3584 to i8
  store i8 %3585, i8* %43, align 1
  %3586 = lshr i32 %3567, 31
  %3587 = xor i32 %3584, %3586
  %3588 = add nuw nsw i32 %3587, %3584
  %3589 = icmp eq i32 %3588, 2
  %3590 = zext i1 %3589 to i8
  store i8 %3590, i8* %49, align 1
  %3591 = add i64 %3511, 20
  store i64 %3591, i64* %3, align 8
  store i32 %3568, i32* %3436, align 4
  %3592 = load i64, i64* %3, align 8
  %3593 = add i64 %3592, -115
  store i64 %3593, i64* %3, align 8
  br label %block_.L_454055

block_.L_4540cd.loopexit:                         ; preds = %block_.L_454055
  br label %block_.L_4540cd

block_.L_4540cd:                                  ; preds = %block_.L_4540cd.loopexit, %block_.L_4540af
  %3594 = phi i64 [ %3565, %block_.L_4540af ], [ %3469, %block_.L_4540cd.loopexit ]
  %3595 = phi i64 [ %.pre209, %block_.L_4540af ], [ %3433, %block_.L_4540cd.loopexit ]
  %3596 = add i64 %3595, -20856
  %3597 = add i64 %3594, 6
  store i64 %3597, i64* %3, align 8
  %3598 = inttoptr i64 %3596 to i32*
  %3599 = load i32, i32* %3598, align 4
  %3600 = zext i32 %3599 to i64
  store i64 %3600, i64* %RAX.i223, align 8
  %3601 = add i64 %3595, -20740
  %3602 = add i64 %3594, 12
  store i64 %3602, i64* %3, align 8
  %3603 = inttoptr i64 %3601 to i32*
  %3604 = load i32, i32* %3603, align 4
  %3605 = sub i32 %3599, %3604
  %3606 = icmp ult i32 %3599, %3604
  %3607 = zext i1 %3606 to i8
  store i8 %3607, i8* %25, align 1
  %3608 = and i32 %3605, 255
  %3609 = tail call i32 @llvm.ctpop.i32(i32 %3608)
  %3610 = trunc i32 %3609 to i8
  %3611 = and i8 %3610, 1
  %3612 = xor i8 %3611, 1
  store i8 %3612, i8* %32, align 1
  %3613 = xor i32 %3604, %3599
  %3614 = xor i32 %3613, %3605
  %3615 = lshr i32 %3614, 4
  %3616 = trunc i32 %3615 to i8
  %3617 = and i8 %3616, 1
  store i8 %3617, i8* %37, align 1
  %3618 = icmp eq i32 %3605, 0
  %3619 = zext i1 %3618 to i8
  store i8 %3619, i8* %40, align 1
  %3620 = lshr i32 %3605, 31
  %3621 = trunc i32 %3620 to i8
  store i8 %3621, i8* %43, align 1
  %3622 = lshr i32 %3599, 31
  %3623 = lshr i32 %3604, 31
  %3624 = xor i32 %3623, %3622
  %3625 = xor i32 %3620, %3622
  %3626 = add nuw nsw i32 %3625, %3624
  %3627 = icmp eq i32 %3626, 2
  %3628 = zext i1 %3627 to i8
  store i8 %3628, i8* %49, align 1
  %.v304 = select i1 %3618, i64 18, i64 89
  %3629 = add i64 %3594, %.v304
  store i64 %3629, i64* %3, align 8
  br i1 %3618, label %block_4540df, label %block_.L_454126

block_4540df:                                     ; preds = %block_.L_4540cd
  %3630 = add i64 %3629, 10
  store i64 %3630, i64* %3, align 8
  %3631 = load i32, i32* %3603, align 4
  %3632 = add i32 %3631, -362
  %3633 = icmp ult i32 %3631, 362
  %3634 = zext i1 %3633 to i8
  store i8 %3634, i8* %25, align 1
  %3635 = and i32 %3632, 255
  %3636 = tail call i32 @llvm.ctpop.i32(i32 %3635)
  %3637 = trunc i32 %3636 to i8
  %3638 = and i8 %3637, 1
  %3639 = xor i8 %3638, 1
  store i8 %3639, i8* %32, align 1
  %3640 = xor i32 %3632, %3631
  %3641 = lshr i32 %3640, 4
  %3642 = trunc i32 %3641 to i8
  %3643 = and i8 %3642, 1
  store i8 %3643, i8* %37, align 1
  %3644 = icmp eq i32 %3632, 0
  %3645 = zext i1 %3644 to i8
  store i8 %3645, i8* %40, align 1
  %3646 = lshr i32 %3632, 31
  %3647 = trunc i32 %3646 to i8
  store i8 %3647, i8* %43, align 1
  %3648 = lshr i32 %3631, 31
  %3649 = xor i32 %3646, %3648
  %3650 = add nuw nsw i32 %3649, %3648
  %3651 = icmp eq i32 %3650, 2
  %3652 = zext i1 %3651 to i8
  store i8 %3652, i8* %49, align 1
  %3653 = icmp ne i8 %3647, 0
  %3654 = xor i1 %3653, %3651
  %.v306 = select i1 %3654, i64 16, i64 71
  %3655 = add i64 %3629, %.v306
  store i64 %3655, i64* %3, align 8
  br i1 %3654, label %block_4540ef, label %block_.L_454126

block_4540ef:                                     ; preds = %block_4540df
  %3656 = add i64 %3595, -20848
  %3657 = add i64 %3655, 6
  store i64 %3657, i64* %3, align 8
  %3658 = inttoptr i64 %3656 to i32*
  %3659 = load i32, i32* %3658, align 4
  %3660 = zext i32 %3659 to i64
  store i64 %3660, i64* %RAX.i223, align 8
  %3661 = add i64 %3595, -40
  %3662 = add i64 %3655, 10
  store i64 %3662, i64* %3, align 8
  %3663 = inttoptr i64 %3661 to i64*
  %3664 = load i64, i64* %3663, align 8
  store i64 %3664, i64* %RCX.i2266, align 8
  %3665 = add i64 %3655, 17
  store i64 %3665, i64* %3, align 8
  %3666 = load i32, i32* %3603, align 4
  %3667 = sext i32 %3666 to i64
  store i64 %3667, i64* %RDX.i2258, align 8
  %3668 = shl nsw i64 %3667, 2
  %3669 = add i64 %3668, %3664
  %3670 = add i64 %3655, 20
  store i64 %3670, i64* %3, align 8
  %3671 = inttoptr i64 %3669 to i32*
  store i32 %3659, i32* %3671, align 4
  %3672 = load i64, i64* %RBP.i, align 8
  %3673 = add i64 %3672, -20828
  %3674 = load i64, i64* %3, align 8
  %3675 = add i64 %3674, 6
  store i64 %3675, i64* %3, align 8
  %3676 = inttoptr i64 %3673 to i32*
  %3677 = load i32, i32* %3676, align 4
  %3678 = zext i32 %3677 to i64
  store i64 %3678, i64* %RAX.i223, align 8
  %3679 = add i64 %3672, -20740
  %3680 = add i64 %3674, 13
  store i64 %3680, i64* %3, align 8
  %3681 = inttoptr i64 %3679 to i32*
  %3682 = load i32, i32* %3681, align 4
  %3683 = sext i32 %3682 to i64
  store i64 %3683, i64* %RCX.i2266, align 8
  %3684 = shl nsw i64 %3683, 2
  %3685 = add i64 %3672, -20736
  %3686 = add i64 %3685, %3684
  %3687 = add i64 %3674, 20
  store i64 %3687, i64* %3, align 8
  %3688 = inttoptr i64 %3686 to i32*
  store i32 %3677, i32* %3688, align 4
  %3689 = load i64, i64* %RBP.i, align 8
  %3690 = add i64 %3689, -20740
  %3691 = load i64, i64* %3, align 8
  %3692 = add i64 %3691, 6
  store i64 %3692, i64* %3, align 8
  %3693 = inttoptr i64 %3690 to i32*
  %3694 = load i32, i32* %3693, align 4
  %3695 = add i32 %3694, 1
  %3696 = zext i32 %3695 to i64
  store i64 %3696, i64* %RAX.i223, align 8
  %3697 = icmp eq i32 %3694, -1
  %3698 = icmp eq i32 %3695, 0
  %3699 = or i1 %3697, %3698
  %3700 = zext i1 %3699 to i8
  store i8 %3700, i8* %25, align 1
  %3701 = and i32 %3695, 255
  %3702 = tail call i32 @llvm.ctpop.i32(i32 %3701)
  %3703 = trunc i32 %3702 to i8
  %3704 = and i8 %3703, 1
  %3705 = xor i8 %3704, 1
  store i8 %3705, i8* %32, align 1
  %3706 = xor i32 %3695, %3694
  %3707 = lshr i32 %3706, 4
  %3708 = trunc i32 %3707 to i8
  %3709 = and i8 %3708, 1
  store i8 %3709, i8* %37, align 1
  %3710 = zext i1 %3698 to i8
  store i8 %3710, i8* %40, align 1
  %3711 = lshr i32 %3695, 31
  %3712 = trunc i32 %3711 to i8
  store i8 %3712, i8* %43, align 1
  %3713 = lshr i32 %3694, 31
  %3714 = xor i32 %3711, %3713
  %3715 = add nuw nsw i32 %3714, %3711
  %3716 = icmp eq i32 %3715, 2
  %3717 = zext i1 %3716 to i8
  store i8 %3717, i8* %49, align 1
  %3718 = add i64 %3691, 15
  store i64 %3718, i64* %3, align 8
  store i32 %3695, i32* %3693, align 4
  %.pre210 = load i64, i64* %3, align 8
  br label %block_.L_454126

block_.L_454126:                                  ; preds = %block_.L_4540cd, %block_4540df, %block_4540ef
  %3719 = phi i64 [ %3655, %block_4540df ], [ %.pre210, %block_4540ef ], [ %3629, %block_.L_4540cd ]
  %3720 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %25, align 1
  %3721 = and i32 %3720, 255
  %3722 = tail call i32 @llvm.ctpop.i32(i32 %3721)
  %3723 = trunc i32 %3722 to i8
  %3724 = and i8 %3723, 1
  %3725 = xor i8 %3724, 1
  store i8 %3725, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %3726 = icmp eq i32 %3720, 0
  %3727 = zext i1 %3726 to i8
  store i8 %3727, i8* %40, align 1
  %3728 = lshr i32 %3720, 31
  %3729 = trunc i32 %3728 to i8
  store i8 %3729, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %3730 = icmp ne i8 %3729, 0
  %3731 = or i1 %3726, %3730
  %.v305 = select i1 %3731, i64 48, i64 19
  %3732 = add i64 %3719, %.v305
  store i64 %3732, i64* %3, align 8
  br i1 %3731, label %block_.L_454156, label %block_454139

block_454139:                                     ; preds = %block_.L_454126
  store i64 ptrtoint (%G__0x57f7fd_type* @G__0x57f7fd to i64), i64* %RDI.i2208, align 8
  %3733 = load i64, i64* %RBP.i, align 8
  %3734 = add i64 %3733, -20848
  %3735 = add i64 %3732, 16
  store i64 %3735, i64* %3, align 8
  %3736 = inttoptr i64 %3734 to i32*
  %3737 = load i32, i32* %3736, align 4
  %3738 = zext i32 %3737 to i64
  store i64 %3738, i64* %RSI.i2205, align 8
  store i8 0, i8* %AL.i930.pre-phi, align 1
  %3739 = add i64 %3732, -9097
  %3740 = add i64 %3732, 23
  %3741 = load i64, i64* %6, align 8
  %3742 = add i64 %3741, -8
  %3743 = inttoptr i64 %3742 to i64*
  store i64 %3740, i64* %3743, align 8
  store i64 %3742, i64* %6, align 8
  store i64 %3739, i64* %3, align 8
  %call2_45414b = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %3739, %struct.Memory* %call2_454038)
  %3744 = load i64, i64* %RBP.i, align 8
  %3745 = add i64 %3744, -21464
  %3746 = load i32, i32* %EAX.i2180, align 4
  %3747 = load i64, i64* %3, align 8
  %3748 = add i64 %3747, 6
  store i64 %3748, i64* %3, align 8
  %3749 = inttoptr i64 %3745 to i32*
  store i32 %3746, i32* %3749, align 4
  %.pre211 = load i64, i64* %3, align 8
  br label %block_.L_454156

block_.L_454156:                                  ; preds = %block_454139, %block_.L_454126
  %3750 = phi i64 [ %3732, %block_.L_454126 ], [ %.pre211, %block_454139 ]
  %MEMORY.51 = phi %struct.Memory* [ %call2_454038, %block_.L_454126 ], [ %call2_45414b, %block_454139 ]
  %3751 = add i64 %3750, 5
  store i64 %3751, i64* %3, align 8
  br label %block_.L_45415b

block_.L_45415b:                                  ; preds = %block_.L_454156, %block_45402f, %block_.L_45401d
  %3752 = phi i64 [ %3402, %block_.L_45401d ], [ %3427, %block_45402f ], [ %3751, %block_.L_454156 ]
  %MEMORY.52 = phi %struct.Memory* [ %MEMORY.38, %block_.L_45401d ], [ %call2_454038, %block_45402f ], [ %MEMORY.51, %block_.L_454156 ]
  %3753 = add i64 %3752, 5
  store i64 %3753, i64* %3, align 8
  br label %block_.L_454160

block_.L_454160:                                  ; preds = %block_.L_45415b, %block_.L_453ed4
  %3754 = phi i64 [ %3014, %block_.L_453ed4 ], [ %3753, %block_.L_45415b ]
  %MEMORY.53 = phi %struct.Memory* [ %MEMORY.38, %block_.L_453ed4 ], [ %MEMORY.52, %block_.L_45415b ]
  %3755 = load i64, i64* %RBP.i, align 8
  %3756 = add i64 %3755, -20788
  %3757 = add i64 %3754, 11
  store i64 %3757, i64* %3, align 8
  %3758 = inttoptr i64 %3756 to i32*
  %3759 = load i32, i32* %3758, align 4
  %3760 = add i32 %3759, 1
  %3761 = zext i32 %3760 to i64
  store i64 %3761, i64* %RAX.i223, align 8
  %3762 = icmp eq i32 %3759, -1
  %3763 = icmp eq i32 %3760, 0
  %3764 = or i1 %3762, %3763
  %3765 = zext i1 %3764 to i8
  store i8 %3765, i8* %25, align 1
  %3766 = and i32 %3760, 255
  %3767 = tail call i32 @llvm.ctpop.i32(i32 %3766)
  %3768 = trunc i32 %3767 to i8
  %3769 = and i8 %3768, 1
  %3770 = xor i8 %3769, 1
  store i8 %3770, i8* %32, align 1
  %3771 = xor i32 %3760, %3759
  %3772 = lshr i32 %3771, 4
  %3773 = trunc i32 %3772 to i8
  %3774 = and i8 %3773, 1
  store i8 %3774, i8* %37, align 1
  %3775 = zext i1 %3763 to i8
  store i8 %3775, i8* %40, align 1
  %3776 = lshr i32 %3760, 31
  %3777 = trunc i32 %3776 to i8
  store i8 %3777, i8* %43, align 1
  %3778 = lshr i32 %3759, 31
  %3779 = xor i32 %3776, %3778
  %3780 = add nuw nsw i32 %3779, %3776
  %3781 = icmp eq i32 %3780, 2
  %3782 = zext i1 %3781 to i8
  store i8 %3782, i8* %49, align 1
  %3783 = add i64 %3754, 20
  store i64 %3783, i64* %3, align 8
  store i32 %3760, i32* %3758, align 4
  %3784 = load i64, i64* %3, align 8
  %3785 = add i64 %3784, -811
  store i64 %3785, i64* %3, align 8
  br label %block_.L_453e49

block_.L_454179:                                  ; preds = %block_.L_453e49
  %3786 = add i64 %2902, 5
  store i64 %3786, i64* %3, align 8
  br label %block_.L_45417e

block_.L_45417e:                                  ; preds = %block_.L_453e27, %block_.L_454179
  %3787 = phi i64 [ %2869, %block_.L_453e27 ], [ %3786, %block_.L_454179 ]
  %MEMORY.54 = phi %struct.Memory* [ %MEMORY.11, %block_.L_453e27 ], [ %MEMORY.38, %block_.L_454179 ]
  %3788 = add i64 %3787, 5
  store i64 %3788, i64* %3, align 8
  br label %block_.L_454183

block_.L_454183:                                  ; preds = %block_.L_45417e, %block_.L_453e22
  %storemerge109 = phi i64 [ %2834, %block_.L_453e22 ], [ %3788, %block_.L_45417e ]
  %MEMORY.55 = phi %struct.Memory* [ %MEMORY.37, %block_.L_453e22 ], [ %MEMORY.54, %block_.L_45417e ]
  %3789 = add i64 %storemerge109, 5
  store i64 %3789, i64* %3, align 8
  br label %block_.L_454188

block_.L_454188:                                  ; preds = %block_.L_454183, %block_.L_453a54
  %storemerge106 = phi i64 [ %1743, %block_.L_453a54 ], [ %3789, %block_.L_454183 ]
  %MEMORY.56 = phi %struct.Memory* [ %MEMORY.19, %block_.L_453a54 ], [ %MEMORY.55, %block_.L_454183 ]
  %3790 = add i64 %storemerge106, 5
  br label %block_.L_45418d

block_.L_45418d:                                  ; preds = %block_.L_454188, %block_.L_45390c, %block_45379c, %block_.L_453750
  %.sink = phi i64 [ %3790, %block_.L_454188 ], [ %1381, %block_.L_45390c ], [ %965, %block_45379c ], [ %869, %block_.L_453750 ]
  %MEMORY.57 = phi %struct.Memory* [ %MEMORY.56, %block_.L_454188 ], [ %MEMORY.12, %block_.L_45390c ], [ %MEMORY.4, %block_45379c ], [ %MEMORY.4, %block_.L_453750 ]
  %3791 = load i64, i64* %RBP.i, align 8
  %3792 = add i64 %3791, -64
  %3793 = add i64 %.sink, 3
  store i64 %3793, i64* %3, align 8
  %3794 = inttoptr i64 %3792 to i32*
  %3795 = load i32, i32* %3794, align 4
  %3796 = add i32 %3795, 1
  %3797 = zext i32 %3796 to i64
  store i64 %3797, i64* %RAX.i223, align 8
  %3798 = icmp eq i32 %3795, -1
  %3799 = icmp eq i32 %3796, 0
  %3800 = or i1 %3798, %3799
  %3801 = zext i1 %3800 to i8
  store i8 %3801, i8* %25, align 1
  %3802 = and i32 %3796, 255
  %3803 = tail call i32 @llvm.ctpop.i32(i32 %3802)
  %3804 = trunc i32 %3803 to i8
  %3805 = and i8 %3804, 1
  %3806 = xor i8 %3805, 1
  store i8 %3806, i8* %32, align 1
  %3807 = xor i32 %3796, %3795
  %3808 = lshr i32 %3807, 4
  %3809 = trunc i32 %3808 to i8
  %3810 = and i8 %3809, 1
  store i8 %3810, i8* %37, align 1
  %3811 = zext i1 %3799 to i8
  store i8 %3811, i8* %40, align 1
  %3812 = lshr i32 %3796, 31
  %3813 = trunc i32 %3812 to i8
  store i8 %3813, i8* %43, align 1
  %3814 = lshr i32 %3795, 31
  %3815 = xor i32 %3812, %3814
  %3816 = add nuw nsw i32 %3815, %3812
  %3817 = icmp eq i32 %3816, 2
  %3818 = zext i1 %3817 to i8
  store i8 %3818, i8* %49, align 1
  %3819 = add i64 %.sink, 9
  store i64 %3819, i64* %3, align 8
  store i32 %3796, i32* %3794, align 4
  %3820 = load i64, i64* %3, align 8
  %3821 = add i64 %3820, -2827
  store i64 %3821, i64* %3, align 8
  br label %block_.L_45368b

block_.L_45419b:                                  ; preds = %block_.L_45368b
  %3822 = add i64 %576, -20752
  %3823 = add i64 %612, 7
  store i64 %3823, i64* %3, align 8
  %3824 = inttoptr i64 %3822 to i64*
  %3825 = load i64, i64* %3824, align 8
  store i64 %3825, i64* %RAX.i223, align 8
  store i64 %3825, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  %3826 = add i64 %576, -20756
  %3827 = add i64 %612, 21
  store i64 %3827, i64* %3, align 8
  %3828 = inttoptr i64 %3826 to i32*
  %3829 = load i32, i32* %3828, align 4
  %3830 = zext i32 %3829 to i64
  store i64 %3830, i64* %RCX.i2266, align 8
  store i32 %3829, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %3831 = add i64 %612, 35
  store i64 %3831, i64* %3, align 8
  store i32 0, i32* %579, align 4
  %.pre150 = load i64, i64* %3, align 8
  br label %block_.L_4541be

block_.L_4541be:                                  ; preds = %block_.L_454599, %block_.L_45419b
  %3832 = phi i64 [ %.pre150, %block_.L_45419b ], [ %4948, %block_.L_454599 ]
  %MEMORY.58 = phi %struct.Memory* [ %MEMORY.4, %block_.L_45419b ], [ %MEMORY.76, %block_.L_454599 ]
  %3833 = load i64, i64* %RBP.i, align 8
  %3834 = add i64 %3833, -64
  %3835 = add i64 %3832, 3
  store i64 %3835, i64* %3, align 8
  %3836 = inttoptr i64 %3834 to i32*
  %3837 = load i32, i32* %3836, align 4
  %3838 = zext i32 %3837 to i64
  store i64 %3838, i64* %RAX.i223, align 8
  %3839 = add i64 %3833, -20740
  %3840 = add i64 %3832, 9
  store i64 %3840, i64* %3, align 8
  %3841 = inttoptr i64 %3839 to i32*
  %3842 = load i32, i32* %3841, align 4
  %3843 = sub i32 %3837, %3842
  %3844 = icmp ult i32 %3837, %3842
  %3845 = zext i1 %3844 to i8
  store i8 %3845, i8* %25, align 1
  %3846 = and i32 %3843, 255
  %3847 = tail call i32 @llvm.ctpop.i32(i32 %3846)
  %3848 = trunc i32 %3847 to i8
  %3849 = and i8 %3848, 1
  %3850 = xor i8 %3849, 1
  store i8 %3850, i8* %32, align 1
  %3851 = xor i32 %3842, %3837
  %3852 = xor i32 %3851, %3843
  %3853 = lshr i32 %3852, 4
  %3854 = trunc i32 %3853 to i8
  %3855 = and i8 %3854, 1
  store i8 %3855, i8* %37, align 1
  %3856 = icmp eq i32 %3843, 0
  %3857 = zext i1 %3856 to i8
  store i8 %3857, i8* %40, align 1
  %3858 = lshr i32 %3843, 31
  %3859 = trunc i32 %3858 to i8
  store i8 %3859, i8* %43, align 1
  %3860 = lshr i32 %3837, 31
  %3861 = lshr i32 %3842, 31
  %3862 = xor i32 %3861, %3860
  %3863 = xor i32 %3858, %3860
  %3864 = add nuw nsw i32 %3863, %3862
  %3865 = icmp eq i32 %3864, 2
  %3866 = zext i1 %3865 to i8
  store i8 %3866, i8* %49, align 1
  %3867 = icmp ne i8 %3859, 0
  %3868 = xor i1 %3867, %3865
  %.v250 = select i1 %3868, i64 15, i64 1006
  %3869 = add i64 %3832, %.v250
  store i64 %3869, i64* %3, align 8
  br i1 %3868, label %block_4541cd, label %block_.L_4545ac

block_4541cd:                                     ; preds = %block_.L_4541be
  %3870 = add i64 %3833, -40
  %3871 = add i64 %3869, 4
  store i64 %3871, i64* %3, align 8
  %3872 = inttoptr i64 %3870 to i64*
  %3873 = load i64, i64* %3872, align 8
  store i64 %3873, i64* %RAX.i223, align 8
  %3874 = add i64 %3869, 8
  store i64 %3874, i64* %3, align 8
  %3875 = load i32, i32* %3836, align 4
  %3876 = sext i32 %3875 to i64
  store i64 %3876, i64* %RCX.i2266, align 8
  %3877 = shl nsw i64 %3876, 2
  %3878 = add i64 %3877, %3873
  %3879 = add i64 %3869, 11
  store i64 %3879, i64* %3, align 8
  %3880 = inttoptr i64 %3878 to i32*
  %3881 = load i32, i32* %3880, align 4
  %3882 = zext i32 %3881 to i64
  store i64 %3882, i64* %RDX.i2258, align 8
  %3883 = add i64 %3833, -20860
  %3884 = add i64 %3869, 17
  store i64 %3884, i64* %3, align 8
  %3885 = inttoptr i64 %3883 to i32*
  store i32 %3881, i32* %3885, align 4
  %3886 = load i64, i64* %RBP.i, align 8
  %3887 = add i64 %3886, -20864
  %3888 = load i64, i64* %3, align 8
  %3889 = add i64 %3888, 10
  store i64 %3889, i64* %3, align 8
  %3890 = inttoptr i64 %3887 to i32*
  store i32 0, i32* %3890, align 4
  %3891 = load i64, i64* %RBP.i, align 8
  %3892 = add i64 %3891, -20788
  %3893 = load i64, i64* %3, align 8
  %3894 = add i64 %3893, 10
  store i64 %3894, i64* %3, align 8
  %3895 = inttoptr i64 %3892 to i32*
  store i32 0, i32* %3895, align 4
  %.pre169 = load i64, i64* %3, align 8
  br label %block_.L_4541f2

block_.L_4541f2:                                  ; preds = %block_.L_454479, %block_4541cd
  %3896 = phi i64 [ %.pre169, %block_4541cd ], [ %4621, %block_.L_454479 ]
  %MEMORY.59 = phi %struct.Memory* [ %MEMORY.58, %block_4541cd ], [ %MEMORY.70, %block_.L_454479 ]
  %3897 = load i64, i64* %RBP.i, align 8
  %3898 = add i64 %3897, -20788
  %3899 = add i64 %3896, 7
  store i64 %3899, i64* %3, align 8
  %3900 = inttoptr i64 %3898 to i32*
  %3901 = load i32, i32* %3900, align 4
  %3902 = add i32 %3901, -4
  %3903 = icmp ult i32 %3901, 4
  %3904 = zext i1 %3903 to i8
  store i8 %3904, i8* %25, align 1
  %3905 = and i32 %3902, 255
  %3906 = tail call i32 @llvm.ctpop.i32(i32 %3905)
  %3907 = trunc i32 %3906 to i8
  %3908 = and i8 %3907, 1
  %3909 = xor i8 %3908, 1
  store i8 %3909, i8* %32, align 1
  %3910 = xor i32 %3902, %3901
  %3911 = lshr i32 %3910, 4
  %3912 = trunc i32 %3911 to i8
  %3913 = and i8 %3912, 1
  store i8 %3913, i8* %37, align 1
  %3914 = icmp eq i32 %3902, 0
  %3915 = zext i1 %3914 to i8
  store i8 %3915, i8* %40, align 1
  %3916 = lshr i32 %3902, 31
  %3917 = trunc i32 %3916 to i8
  store i8 %3917, i8* %43, align 1
  %3918 = lshr i32 %3901, 31
  %3919 = xor i32 %3916, %3918
  %3920 = add nuw nsw i32 %3919, %3918
  %3921 = icmp eq i32 %3920, 2
  %3922 = zext i1 %3921 to i8
  store i8 %3922, i8* %49, align 1
  %3923 = icmp ne i8 %3917, 0
  %3924 = xor i1 %3923, %3921
  %.v259 = select i1 %3924, i64 13, i64 672
  %3925 = add i64 %3896, %.v259
  store i64 %3925, i64* %3, align 8
  br i1 %3924, label %block_4541ff, label %block_.L_454492

block_4541ff:                                     ; preds = %block_.L_4541f2
  %3926 = add i64 %3897, -20860
  %3927 = add i64 %3925, 6
  store i64 %3927, i64* %3, align 8
  %3928 = inttoptr i64 %3926 to i32*
  %3929 = load i32, i32* %3928, align 4
  %3930 = zext i32 %3929 to i64
  store i64 %3930, i64* %RAX.i223, align 8
  %3931 = add i64 %3925, 13
  store i64 %3931, i64* %3, align 8
  %3932 = load i32, i32* %3900, align 4
  %3933 = sext i32 %3932 to i64
  store i64 %3933, i64* %RCX.i2266, align 8
  %3934 = shl nsw i64 %3933, 2
  %3935 = add nsw i64 %3934, 8053168
  %3936 = add i64 %3925, 20
  store i64 %3936, i64* %3, align 8
  %3937 = inttoptr i64 %3935 to i32*
  %3938 = load i32, i32* %3937, align 4
  %3939 = add i32 %3938, %3929
  %3940 = zext i32 %3939 to i64
  store i64 %3940, i64* %RAX.i223, align 8
  %3941 = icmp ult i32 %3939, %3929
  %3942 = icmp ult i32 %3939, %3938
  %3943 = or i1 %3941, %3942
  %3944 = zext i1 %3943 to i8
  store i8 %3944, i8* %25, align 1
  %3945 = and i32 %3939, 255
  %3946 = tail call i32 @llvm.ctpop.i32(i32 %3945)
  %3947 = trunc i32 %3946 to i8
  %3948 = and i8 %3947, 1
  %3949 = xor i8 %3948, 1
  store i8 %3949, i8* %32, align 1
  %3950 = xor i32 %3938, %3929
  %3951 = xor i32 %3950, %3939
  %3952 = lshr i32 %3951, 4
  %3953 = trunc i32 %3952 to i8
  %3954 = and i8 %3953, 1
  store i8 %3954, i8* %37, align 1
  %3955 = icmp eq i32 %3939, 0
  %3956 = zext i1 %3955 to i8
  store i8 %3956, i8* %40, align 1
  %3957 = lshr i32 %3939, 31
  %3958 = trunc i32 %3957 to i8
  store i8 %3958, i8* %43, align 1
  %3959 = lshr i32 %3929, 31
  %3960 = lshr i32 %3938, 31
  %3961 = xor i32 %3957, %3959
  %3962 = xor i32 %3957, %3960
  %3963 = add nuw nsw i32 %3961, %3962
  %3964 = icmp eq i32 %3963, 2
  %3965 = zext i1 %3964 to i8
  store i8 %3965, i8* %49, align 1
  %3966 = add i64 %3897, -20868
  %3967 = add i64 %3925, 26
  store i64 %3967, i64* %3, align 8
  %3968 = inttoptr i64 %3966 to i32*
  store i32 %3939, i32* %3968, align 4
  %3969 = load i64, i64* %RBP.i, align 8
  %3970 = add i64 %3969, -20868
  %3971 = load i64, i64* %3, align 8
  %3972 = add i64 %3971, 7
  store i64 %3972, i64* %3, align 8
  %3973 = inttoptr i64 %3970 to i32*
  %3974 = load i32, i32* %3973, align 4
  %3975 = sext i32 %3974 to i64
  store i64 %3975, i64* %RCX.i2266, align 8
  %3976 = add nsw i64 %3975, 12099168
  %3977 = add i64 %3971, 15
  store i64 %3977, i64* %3, align 8
  %3978 = inttoptr i64 %3976 to i8*
  %3979 = load i8, i8* %3978, align 1
  %3980 = zext i8 %3979 to i64
  store i64 %3980, i64* %RAX.i223, align 8
  %3981 = zext i8 %3979 to i32
  %3982 = add i64 %3969, -56
  %3983 = add i64 %3971, 18
  store i64 %3983, i64* %3, align 8
  %3984 = inttoptr i64 %3982 to i32*
  %3985 = load i32, i32* %3984, align 4
  %3986 = sub i32 %3981, %3985
  %3987 = icmp ult i32 %3981, %3985
  %3988 = zext i1 %3987 to i8
  store i8 %3988, i8* %25, align 1
  %3989 = and i32 %3986, 255
  %3990 = tail call i32 @llvm.ctpop.i32(i32 %3989)
  %3991 = trunc i32 %3990 to i8
  %3992 = and i8 %3991, 1
  %3993 = xor i8 %3992, 1
  store i8 %3993, i8* %32, align 1
  %3994 = xor i32 %3985, %3981
  %3995 = xor i32 %3994, %3986
  %3996 = lshr i32 %3995, 4
  %3997 = trunc i32 %3996 to i8
  %3998 = and i8 %3997, 1
  store i8 %3998, i8* %37, align 1
  %3999 = icmp eq i32 %3986, 0
  %4000 = zext i1 %3999 to i8
  store i8 %4000, i8* %40, align 1
  %4001 = lshr i32 %3986, 31
  %4002 = trunc i32 %4001 to i8
  store i8 %4002, i8* %43, align 1
  %4003 = lshr i32 %3985, 31
  %4004 = add nuw nsw i32 %4001, %4003
  %4005 = icmp eq i32 %4004, 2
  %4006 = zext i1 %4005 to i8
  store i8 %4006, i8* %49, align 1
  %.v269 = select i1 %3999, i64 24, i64 482
  %4007 = add i64 %3971, %.v269
  store i64 %4007, i64* %3, align 8
  br i1 %3999, label %block_454231, label %block_.L_4543fb

block_454231:                                     ; preds = %block_4541ff
  %4008 = add i64 %3969, -20864
  %4009 = add i64 %4007, 10
  store i64 %4009, i64* %3, align 8
  %4010 = inttoptr i64 %4008 to i32*
  store i32 1, i32* %4010, align 4
  %4011 = load i64, i64* %RBP.i, align 8
  %4012 = add i64 %4011, -64
  %4013 = load i64, i64* %3, align 8
  %4014 = add i64 %4013, 4
  store i64 %4014, i64* %3, align 8
  %4015 = inttoptr i64 %4012 to i32*
  %4016 = load i32, i32* %4015, align 4
  %4017 = sext i32 %4016 to i64
  store i64 %4017, i64* %RAX.i223, align 8
  %4018 = shl nsw i64 %4017, 2
  %4019 = add i64 %4011, -20736
  %4020 = add i64 %4019, %4018
  %4021 = add i64 %4013, 11
  store i64 %4021, i64* %3, align 8
  %4022 = inttoptr i64 %4020 to i32*
  %4023 = load i32, i32* %4022, align 4
  %4024 = add i32 %4023, -150
  %4025 = zext i32 %4024 to i64
  store i64 %4025, i64* %RCX.i2266, align 8
  %4026 = add i64 %4013, 24
  store i64 %4026, i64* %3, align 8
  store i32 %4024, i32* %4022, align 4
  %4027 = load i64, i64* %3, align 8
  %4028 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %25, align 1
  %4029 = and i32 %4028, 255
  %4030 = tail call i32 @llvm.ctpop.i32(i32 %4029)
  %4031 = trunc i32 %4030 to i8
  %4032 = and i8 %4031, 1
  %4033 = xor i8 %4032, 1
  store i8 %4033, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %4034 = icmp eq i32 %4028, 0
  %4035 = zext i1 %4034 to i8
  store i8 %4035, i8* %40, align 1
  %4036 = lshr i32 %4028, 31
  %4037 = trunc i32 %4036 to i8
  store i8 %4037, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %4038 = icmp ne i8 %4037, 0
  %4039 = or i1 %4034, %4038
  %.v273 = select i1 %4039, i64 43, i64 14
  %4040 = add i64 %4027, %.v273
  store i64 %4040, i64* %3, align 8
  br i1 %4039, label %block_.L_45427e, label %block_454261

block_454261:                                     ; preds = %block_454231
  store i64 ptrtoint (%G__0x57f81b_type* @G__0x57f81b to i64), i64* %RDI.i2208, align 8
  %4041 = load i64, i64* %RBP.i, align 8
  %4042 = add i64 %4041, -20860
  %4043 = add i64 %4040, 16
  store i64 %4043, i64* %3, align 8
  %4044 = inttoptr i64 %4042 to i32*
  %4045 = load i32, i32* %4044, align 4
  %4046 = zext i32 %4045 to i64
  store i64 %4046, i64* %RSI.i2205, align 8
  store i8 0, i8* %AL.i930.pre-phi, align 1
  %4047 = add i64 %4040, -9393
  %4048 = add i64 %4040, 23
  %4049 = load i64, i64* %6, align 8
  %4050 = add i64 %4049, -8
  %4051 = inttoptr i64 %4050 to i64*
  store i64 %4048, i64* %4051, align 8
  store i64 %4050, i64* %6, align 8
  store i64 %4047, i64* %3, align 8
  %call2_454273 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %4047, %struct.Memory* %MEMORY.59)
  %4052 = load i64, i64* %RBP.i, align 8
  %4053 = add i64 %4052, -21468
  %4054 = load i32, i32* %EAX.i2180, align 4
  %4055 = load i64, i64* %3, align 8
  %4056 = add i64 %4055, 6
  store i64 %4056, i64* %3, align 8
  %4057 = inttoptr i64 %4053 to i32*
  store i32 %4054, i32* %4057, align 4
  %.pre172 = load i64, i64* %3, align 8
  br label %block_.L_45427e

block_.L_45427e:                                  ; preds = %block_454261, %block_454231
  %4058 = phi i64 [ %.pre172, %block_454261 ], [ %4040, %block_454231 ]
  %4059 = load i64, i64* %RBP.i, align 8
  %4060 = add i64 %4059, -20868
  %4061 = add i64 %4058, 6
  store i64 %4061, i64* %3, align 8
  %4062 = inttoptr i64 %4060 to i32*
  %4063 = load i32, i32* %4062, align 4
  %4064 = zext i32 %4063 to i64
  store i64 %4064, i64* %RDI.i2208, align 8
  %4065 = add i64 %4058, -281342
  %4066 = add i64 %4058, 11
  %4067 = load i64, i64* %6, align 8
  %4068 = add i64 %4067, -8
  %4069 = inttoptr i64 %4068 to i64*
  store i64 %4066, i64* %4069, align 8
  store i64 %4068, i64* %6, align 8
  store i64 %4065, i64* %3, align 8
  %call2_454284 = tail call %struct.Memory* @sub_40f780.countlib(%struct.State* nonnull %0, i64 %4065, %struct.Memory* %MEMORY.59)
  %4070 = load i32, i32* %EAX.i2180, align 4
  %4071 = load i64, i64* %3, align 8
  %4072 = add i32 %4070, -2
  %4073 = icmp ult i32 %4070, 2
  %4074 = zext i1 %4073 to i8
  store i8 %4074, i8* %25, align 1
  %4075 = and i32 %4072, 255
  %4076 = tail call i32 @llvm.ctpop.i32(i32 %4075)
  %4077 = trunc i32 %4076 to i8
  %4078 = and i8 %4077, 1
  %4079 = xor i8 %4078, 1
  store i8 %4079, i8* %32, align 1
  %4080 = xor i32 %4072, %4070
  %4081 = lshr i32 %4080, 4
  %4082 = trunc i32 %4081 to i8
  %4083 = and i8 %4082, 1
  store i8 %4083, i8* %37, align 1
  %4084 = icmp eq i32 %4072, 0
  %4085 = zext i1 %4084 to i8
  store i8 %4085, i8* %40, align 1
  %4086 = lshr i32 %4072, 31
  %4087 = trunc i32 %4086 to i8
  store i8 %4087, i8* %43, align 1
  %4088 = lshr i32 %4070, 31
  %4089 = xor i32 %4086, %4088
  %4090 = add nuw nsw i32 %4089, %4088
  %4091 = icmp eq i32 %4090, 2
  %4092 = zext i1 %4091 to i8
  store i8 %4092, i8* %49, align 1
  %4093 = icmp ne i8 %4087, 0
  %4094 = xor i1 %4093, %4091
  %.demorgan = or i1 %4084, %4094
  %.v274 = select i1 %.demorgan, i64 9, i64 365
  %4095 = add i64 %4071, %.v274
  store i64 %4095, i64* %3, align 8
  br i1 %.demorgan, label %block_454292, label %block_.L_4543f6

block_454292:                                     ; preds = %block_.L_45427e
  %4096 = load i64, i64* %RBP.i, align 8
  %4097 = add i64 %4096, -64
  %4098 = add i64 %4095, 4
  store i64 %4098, i64* %3, align 8
  %4099 = inttoptr i64 %4097 to i32*
  %4100 = load i32, i32* %4099, align 4
  %4101 = sext i32 %4100 to i64
  store i64 %4101, i64* %RAX.i223, align 8
  %4102 = shl nsw i64 %4101, 2
  %4103 = add i64 %4096, -20736
  %4104 = add i64 %4103, %4102
  %4105 = add i64 %4095, 11
  store i64 %4105, i64* %3, align 8
  %4106 = inttoptr i64 %4104 to i32*
  %4107 = load i32, i32* %4106, align 4
  %4108 = add i32 %4107, -200
  %4109 = zext i32 %4108 to i64
  store i64 %4109, i64* %RCX.i2266, align 8
  %4110 = add i64 %4095, 24
  store i64 %4110, i64* %3, align 8
  store i32 %4108, i32* %4106, align 4
  %4111 = load i64, i64* %3, align 8
  %4112 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %25, align 1
  %4113 = and i32 %4112, 255
  %4114 = tail call i32 @llvm.ctpop.i32(i32 %4113)
  %4115 = trunc i32 %4114 to i8
  %4116 = and i8 %4115, 1
  %4117 = xor i8 %4116, 1
  store i8 %4117, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %4118 = icmp eq i32 %4112, 0
  %4119 = zext i1 %4118 to i8
  store i8 %4119, i8* %40, align 1
  %4120 = lshr i32 %4112, 31
  %4121 = trunc i32 %4120 to i8
  store i8 %4121, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %4122 = icmp ne i8 %4121, 0
  %4123 = or i1 %4118, %4122
  %.v275 = select i1 %4123, i64 43, i64 14
  %4124 = add i64 %4111, %.v275
  store i64 %4124, i64* %3, align 8
  br i1 %4123, label %block_.L_4542d5, label %block_4542b8

block_4542b8:                                     ; preds = %block_454292
  store i64 ptrtoint (%G__0x57f844_type* @G__0x57f844 to i64), i64* %RDI.i2208, align 8
  %4125 = load i64, i64* %RBP.i, align 8
  %4126 = add i64 %4125, -20860
  %4127 = add i64 %4124, 16
  store i64 %4127, i64* %3, align 8
  %4128 = inttoptr i64 %4126 to i32*
  %4129 = load i32, i32* %4128, align 4
  %4130 = zext i32 %4129 to i64
  store i64 %4130, i64* %RSI.i2205, align 8
  store i8 0, i8* %AL.i930.pre-phi, align 1
  %4131 = add i64 %4124, -9480
  %4132 = add i64 %4124, 23
  %4133 = load i64, i64* %6, align 8
  %4134 = add i64 %4133, -8
  %4135 = inttoptr i64 %4134 to i64*
  store i64 %4132, i64* %4135, align 8
  store i64 %4134, i64* %6, align 8
  store i64 %4131, i64* %3, align 8
  %call2_4542ca = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %4131, %struct.Memory* %call2_454284)
  %4136 = load i64, i64* %RBP.i, align 8
  %4137 = add i64 %4136, -21472
  %4138 = load i32, i32* %EAX.i2180, align 4
  %4139 = load i64, i64* %3, align 8
  %4140 = add i64 %4139, 6
  store i64 %4140, i64* %3, align 8
  %4141 = inttoptr i64 %4137 to i32*
  store i32 %4138, i32* %4141, align 4
  %.pre173 = load i64, i64* %3, align 8
  br label %block_.L_4542d5

block_.L_4542d5:                                  ; preds = %block_4542b8, %block_454292
  %4142 = phi i64 [ %4124, %block_454292 ], [ %.pre173, %block_4542b8 ]
  %MEMORY.61 = phi %struct.Memory* [ %call2_454284, %block_454292 ], [ %call2_4542ca, %block_4542b8 ]
  %4143 = load i64, i64* %RBP.i, align 8
  %4144 = add i64 %4143, -20860
  %4145 = add i64 %4142, 7
  store i64 %4145, i64* %3, align 8
  %4146 = inttoptr i64 %4144 to i32*
  %4147 = load i32, i32* %4146, align 4
  %4148 = sext i32 %4147 to i64
  store i64 %4148, i64* %RAX.i223, align 8
  %4149 = shl nsw i64 %4148, 2
  %4150 = add i64 %4143, -9672
  %4151 = add i64 %4150, %4149
  %4152 = add i64 %4142, 14
  store i64 %4152, i64* %3, align 8
  %4153 = inttoptr i64 %4151 to i32*
  %4154 = load i32, i32* %4153, align 4
  %4155 = zext i32 %4154 to i64
  store i64 %4155, i64* %RCX.i2266, align 8
  %4156 = add i64 %4142, 21
  store i64 %4156, i64* %3, align 8
  %4157 = load i32, i32* %4146, align 4
  %4158 = sext i32 %4157 to i64
  store i64 %4158, i64* %RAX.i223, align 8
  %4159 = shl nsw i64 %4158, 2
  %4160 = add nsw i64 %4159, -8072
  %4161 = add i64 %4160, %4143
  %4162 = add i64 %4142, 28
  store i64 %4162, i64* %3, align 8
  %4163 = inttoptr i64 %4161 to i32*
  %4164 = load i32, i32* %4163, align 4
  %4165 = sub i32 %4154, %4164
  %4166 = zext i32 %4165 to i64
  store i64 %4166, i64* %RCX.i2266, align 8
  %4167 = lshr i32 %4165, 31
  %4168 = add i32 %4165, -500
  %4169 = icmp ult i32 %4165, 500
  %4170 = zext i1 %4169 to i8
  store i8 %4170, i8* %25, align 1
  %4171 = and i32 %4168, 255
  %4172 = tail call i32 @llvm.ctpop.i32(i32 %4171)
  %4173 = trunc i32 %4172 to i8
  %4174 = and i8 %4173, 1
  %4175 = xor i8 %4174, 1
  store i8 %4175, i8* %32, align 1
  %4176 = xor i32 %4165, 16
  %4177 = xor i32 %4176, %4168
  %4178 = lshr i32 %4177, 4
  %4179 = trunc i32 %4178 to i8
  %4180 = and i8 %4179, 1
  store i8 %4180, i8* %37, align 1
  %4181 = icmp eq i32 %4168, 0
  %4182 = zext i1 %4181 to i8
  store i8 %4182, i8* %40, align 1
  %4183 = lshr i32 %4168, 31
  %4184 = trunc i32 %4183 to i8
  store i8 %4184, i8* %43, align 1
  %4185 = xor i32 %4183, %4167
  %4186 = add nuw nsw i32 %4185, %4167
  %4187 = icmp eq i32 %4186, 2
  %4188 = zext i1 %4187 to i8
  store i8 %4188, i8* %49, align 1
  %4189 = icmp ne i8 %4184, 0
  %4190 = xor i1 %4189, %4187
  %4191 = or i1 %4181, %4190
  %.v276 = select i1 %4191, i64 80, i64 40
  %4192 = add i64 %4142, %.v276
  store i64 %4192, i64* %3, align 8
  br i1 %4191, label %block_.L_454325, label %block_4542fd

block_4542fd:                                     ; preds = %block_.L_4542d5
  %4193 = add i64 %4143, -20868
  %4194 = add i64 %4192, 7
  store i64 %4194, i64* %3, align 8
  %4195 = inttoptr i64 %4193 to i32*
  %4196 = load i32, i32* %4195, align 4
  %4197 = sext i32 %4196 to i64
  store i64 %4197, i64* %RAX.i223, align 8
  %4198 = shl nsw i64 %4197, 2
  %4199 = add i64 %4150, %4198
  %4200 = add i64 %4192, 14
  store i64 %4200, i64* %3, align 8
  %4201 = inttoptr i64 %4199 to i32*
  %4202 = load i32, i32* %4201, align 4
  %4203 = zext i32 %4202 to i64
  store i64 %4203, i64* %RCX.i2266, align 8
  %4204 = add i64 %4192, 21
  store i64 %4204, i64* %3, align 8
  %4205 = load i32, i32* %4195, align 4
  %4206 = sext i32 %4205 to i64
  store i64 %4206, i64* %RAX.i223, align 8
  %4207 = shl nsw i64 %4206, 2
  %4208 = add nsw i64 %4207, -8072
  %4209 = add i64 %4208, %4143
  %4210 = add i64 %4192, 28
  store i64 %4210, i64* %3, align 8
  %4211 = inttoptr i64 %4209 to i32*
  %4212 = load i32, i32* %4211, align 4
  %4213 = sub i32 %4202, %4212
  %4214 = zext i32 %4213 to i64
  store i64 %4214, i64* %RCX.i2266, align 8
  %4215 = lshr i32 %4213, 31
  %4216 = add i32 %4213, -500
  %4217 = icmp ult i32 %4213, 500
  %4218 = zext i1 %4217 to i8
  store i8 %4218, i8* %25, align 1
  %4219 = and i32 %4216, 255
  %4220 = tail call i32 @llvm.ctpop.i32(i32 %4219)
  %4221 = trunc i32 %4220 to i8
  %4222 = and i8 %4221, 1
  %4223 = xor i8 %4222, 1
  store i8 %4223, i8* %32, align 1
  %4224 = xor i32 %4213, 16
  %4225 = xor i32 %4224, %4216
  %4226 = lshr i32 %4225, 4
  %4227 = trunc i32 %4226 to i8
  %4228 = and i8 %4227, 1
  store i8 %4228, i8* %37, align 1
  %4229 = icmp eq i32 %4216, 0
  %4230 = zext i1 %4229 to i8
  store i8 %4230, i8* %40, align 1
  %4231 = lshr i32 %4216, 31
  %4232 = trunc i32 %4231 to i8
  store i8 %4232, i8* %43, align 1
  %4233 = xor i32 %4231, %4215
  %4234 = add nuw nsw i32 %4233, %4215
  %4235 = icmp eq i32 %4234, 2
  %4236 = zext i1 %4235 to i8
  store i8 %4236, i8* %49, align 1
  %4237 = icmp ne i8 %4232, 0
  %4238 = xor i1 %4237, %4235
  %.demorgan223 = or i1 %4229, %4238
  %.v277 = select i1 %.demorgan223, i64 40, i64 244
  %4239 = add i64 %4192, %.v277
  store i64 %4239, i64* %3, align 8
  br i1 %.demorgan223, label %block_.L_454325, label %block_.L_4543f1

block_.L_454325:                                  ; preds = %block_4542fd, %block_.L_4542d5
  %4240 = phi i64 [ %4239, %block_4542fd ], [ %4192, %block_.L_4542d5 ]
  %4241 = add i64 %4240, 7
  store i64 %4241, i64* %3, align 8
  %4242 = load i32, i32* %4146, align 4
  %4243 = sext i32 %4242 to i64
  store i64 %4243, i64* %RAX.i223, align 8
  %4244 = shl nsw i64 %4243, 2
  %4245 = add i64 %4143, -19280
  %4246 = add i64 %4245, %4244
  %4247 = add i64 %4240, 14
  store i64 %4247, i64* %3, align 8
  %4248 = inttoptr i64 %4246 to i32*
  %4249 = load i32, i32* %4248, align 4
  %4250 = zext i32 %4249 to i64
  store i64 %4250, i64* %RCX.i2266, align 8
  %4251 = add i64 %4240, 21
  store i64 %4251, i64* %3, align 8
  %4252 = load i32, i32* %4146, align 4
  %4253 = sext i32 %4252 to i64
  store i64 %4253, i64* %RAX.i223, align 8
  %4254 = shl nsw i64 %4253, 2
  %4255 = add nsw i64 %4254, -17680
  %4256 = add i64 %4255, %4143
  %4257 = add i64 %4240, 28
  store i64 %4257, i64* %3, align 8
  %4258 = inttoptr i64 %4256 to i32*
  %4259 = load i32, i32* %4258, align 4
  %4260 = sub i32 %4249, %4259
  %4261 = zext i32 %4260 to i64
  store i64 %4261, i64* %RCX.i2266, align 8
  %4262 = lshr i32 %4260, 31
  %4263 = add i32 %4260, -500
  %4264 = icmp ult i32 %4260, 500
  %4265 = zext i1 %4264 to i8
  store i8 %4265, i8* %25, align 1
  %4266 = and i32 %4263, 255
  %4267 = tail call i32 @llvm.ctpop.i32(i32 %4266)
  %4268 = trunc i32 %4267 to i8
  %4269 = and i8 %4268, 1
  %4270 = xor i8 %4269, 1
  store i8 %4270, i8* %32, align 1
  %4271 = xor i32 %4260, 16
  %4272 = xor i32 %4271, %4263
  %4273 = lshr i32 %4272, 4
  %4274 = trunc i32 %4273 to i8
  %4275 = and i8 %4274, 1
  store i8 %4275, i8* %37, align 1
  %4276 = icmp eq i32 %4263, 0
  %4277 = zext i1 %4276 to i8
  store i8 %4277, i8* %40, align 1
  %4278 = lshr i32 %4263, 31
  %4279 = trunc i32 %4278 to i8
  store i8 %4279, i8* %43, align 1
  %4280 = xor i32 %4278, %4262
  %4281 = add nuw nsw i32 %4280, %4262
  %4282 = icmp eq i32 %4281, 2
  %4283 = zext i1 %4282 to i8
  store i8 %4283, i8* %49, align 1
  %4284 = icmp ne i8 %4279, 0
  %4285 = xor i1 %4284, %4282
  %4286 = or i1 %4276, %4285
  %.v278 = select i1 %4286, i64 80, i64 40
  %4287 = add i64 %4240, %.v278
  store i64 %4287, i64* %3, align 8
  %.pre219 = add i64 %4143, -20868
  br i1 %4286, label %block_.L_454325.block_.L_454375_crit_edge, label %block_45434d

block_.L_454325.block_.L_454375_crit_edge:        ; preds = %block_.L_454325
  %.pre220 = inttoptr i64 %.pre219 to i32*
  br label %block_.L_454375

block_45434d:                                     ; preds = %block_.L_454325
  %4288 = add i64 %4287, 7
  store i64 %4288, i64* %3, align 8
  %4289 = inttoptr i64 %.pre219 to i32*
  %4290 = load i32, i32* %4289, align 4
  %4291 = sext i32 %4290 to i64
  store i64 %4291, i64* %RAX.i223, align 8
  %4292 = shl nsw i64 %4291, 2
  %4293 = add i64 %4245, %4292
  %4294 = add i64 %4287, 14
  store i64 %4294, i64* %3, align 8
  %4295 = inttoptr i64 %4293 to i32*
  %4296 = load i32, i32* %4295, align 4
  %4297 = zext i32 %4296 to i64
  store i64 %4297, i64* %RCX.i2266, align 8
  %4298 = add i64 %4287, 21
  store i64 %4298, i64* %3, align 8
  %4299 = load i32, i32* %4289, align 4
  %4300 = sext i32 %4299 to i64
  store i64 %4300, i64* %RAX.i223, align 8
  %4301 = shl nsw i64 %4300, 2
  %4302 = add nsw i64 %4301, -17680
  %4303 = add i64 %4302, %4143
  %4304 = add i64 %4287, 28
  store i64 %4304, i64* %3, align 8
  %4305 = inttoptr i64 %4303 to i32*
  %4306 = load i32, i32* %4305, align 4
  %4307 = sub i32 %4296, %4306
  %4308 = zext i32 %4307 to i64
  store i64 %4308, i64* %RCX.i2266, align 8
  %4309 = lshr i32 %4307, 31
  %4310 = add i32 %4307, -500
  %4311 = icmp ult i32 %4307, 500
  %4312 = zext i1 %4311 to i8
  store i8 %4312, i8* %25, align 1
  %4313 = and i32 %4310, 255
  %4314 = tail call i32 @llvm.ctpop.i32(i32 %4313)
  %4315 = trunc i32 %4314 to i8
  %4316 = and i8 %4315, 1
  %4317 = xor i8 %4316, 1
  store i8 %4317, i8* %32, align 1
  %4318 = xor i32 %4307, 16
  %4319 = xor i32 %4318, %4310
  %4320 = lshr i32 %4319, 4
  %4321 = trunc i32 %4320 to i8
  %4322 = and i8 %4321, 1
  store i8 %4322, i8* %37, align 1
  %4323 = icmp eq i32 %4310, 0
  %4324 = zext i1 %4323 to i8
  store i8 %4324, i8* %40, align 1
  %4325 = lshr i32 %4310, 31
  %4326 = trunc i32 %4325 to i8
  store i8 %4326, i8* %43, align 1
  %4327 = xor i32 %4325, %4309
  %4328 = add nuw nsw i32 %4327, %4309
  %4329 = icmp eq i32 %4328, 2
  %4330 = zext i1 %4329 to i8
  store i8 %4330, i8* %49, align 1
  %4331 = icmp ne i8 %4326, 0
  %4332 = xor i1 %4331, %4329
  %.demorgan224 = or i1 %4323, %4332
  %.v279 = select i1 %.demorgan224, i64 40, i64 164
  %4333 = add i64 %4287, %.v279
  store i64 %4333, i64* %3, align 8
  br i1 %.demorgan224, label %block_.L_454375, label %block_.L_4543f1

block_.L_454375:                                  ; preds = %block_45434d, %block_.L_454325.block_.L_454375_crit_edge
  %.pre-phi221 = phi i32* [ %.pre220, %block_.L_454325.block_.L_454375_crit_edge ], [ %4289, %block_45434d ]
  %4334 = phi i64 [ %4287, %block_.L_454325.block_.L_454375_crit_edge ], [ %4333, %block_45434d ]
  %4335 = add i64 %4334, 7
  store i64 %4335, i64* %3, align 8
  %4336 = load i32, i32* %.pre-phi221, align 4
  %4337 = sext i32 %4336 to i64
  store i64 %4337, i64* %RAX.i223, align 8
  %4338 = shl nsw i64 %4337, 2
  %4339 = add i64 %4150, %4338
  %4340 = add i64 %4334, 14
  store i64 %4340, i64* %3, align 8
  %4341 = inttoptr i64 %4339 to i32*
  %4342 = load i32, i32* %4341, align 4
  %4343 = zext i32 %4342 to i64
  store i64 %4343, i64* %RCX.i2266, align 8
  %4344 = add i64 %4143, -48
  %4345 = add i64 %4334, 18
  store i64 %4345, i64* %3, align 8
  %4346 = inttoptr i64 %4344 to i64*
  %4347 = load i64, i64* %4346, align 8
  store i64 %4347, i64* %RAX.i223, align 8
  %4348 = add i64 %4334, 20
  store i64 %4348, i64* %3, align 8
  %4349 = inttoptr i64 %4347 to i32*
  %4350 = load i32, i32* %4349, align 4
  %4351 = sub i32 %4342, %4350
  %4352 = icmp ult i32 %4342, %4350
  %4353 = zext i1 %4352 to i8
  store i8 %4353, i8* %25, align 1
  %4354 = and i32 %4351, 255
  %4355 = tail call i32 @llvm.ctpop.i32(i32 %4354)
  %4356 = trunc i32 %4355 to i8
  %4357 = and i8 %4356, 1
  %4358 = xor i8 %4357, 1
  store i8 %4358, i8* %32, align 1
  %4359 = xor i32 %4350, %4342
  %4360 = xor i32 %4359, %4351
  %4361 = lshr i32 %4360, 4
  %4362 = trunc i32 %4361 to i8
  %4363 = and i8 %4362, 1
  store i8 %4363, i8* %37, align 1
  %4364 = icmp eq i32 %4351, 0
  %4365 = zext i1 %4364 to i8
  store i8 %4365, i8* %40, align 1
  %4366 = lshr i32 %4351, 31
  %4367 = trunc i32 %4366 to i8
  store i8 %4367, i8* %43, align 1
  %4368 = lshr i32 %4342, 31
  %4369 = lshr i32 %4350, 31
  %4370 = xor i32 %4369, %4368
  %4371 = xor i32 %4366, %4368
  %4372 = add nuw nsw i32 %4371, %4370
  %4373 = icmp eq i32 %4372, 2
  %4374 = zext i1 %4373 to i8
  store i8 %4374, i8* %49, align 1
  %4375 = icmp ne i8 %4367, 0
  %4376 = xor i1 %4375, %4373
  %.v280 = select i1 %4376, i64 26, i64 124
  %4377 = add i64 %4334, %.v280
  store i64 %4377, i64* %3, align 8
  br i1 %4376, label %block_45438f, label %block_.L_4543f1

block_45438f:                                     ; preds = %block_.L_454375
  %4378 = add i64 %4377, 7
  store i64 %4378, i64* %3, align 8
  %4379 = load i32, i32* %.pre-phi221, align 4
  %4380 = sext i32 %4379 to i64
  store i64 %4380, i64* %RAX.i223, align 8
  %4381 = shl nsw i64 %4380, 2
  %4382 = add i64 %4245, %4381
  %4383 = add i64 %4377, 14
  store i64 %4383, i64* %3, align 8
  %4384 = inttoptr i64 %4382 to i32*
  %4385 = load i32, i32* %4384, align 4
  %4386 = zext i32 %4385 to i64
  store i64 %4386, i64* %RCX.i2266, align 8
  %4387 = add i64 %4377, 18
  store i64 %4387, i64* %3, align 8
  %4388 = load i64, i64* %4346, align 8
  store i64 %4388, i64* %RAX.i223, align 8
  %4389 = add i64 %4377, 20
  store i64 %4389, i64* %3, align 8
  %4390 = inttoptr i64 %4388 to i32*
  %4391 = load i32, i32* %4390, align 4
  %4392 = sub i32 %4385, %4391
  %4393 = icmp ult i32 %4385, %4391
  %4394 = zext i1 %4393 to i8
  store i8 %4394, i8* %25, align 1
  %4395 = and i32 %4392, 255
  %4396 = tail call i32 @llvm.ctpop.i32(i32 %4395)
  %4397 = trunc i32 %4396 to i8
  %4398 = and i8 %4397, 1
  %4399 = xor i8 %4398, 1
  store i8 %4399, i8* %32, align 1
  %4400 = xor i32 %4391, %4385
  %4401 = xor i32 %4400, %4392
  %4402 = lshr i32 %4401, 4
  %4403 = trunc i32 %4402 to i8
  %4404 = and i8 %4403, 1
  store i8 %4404, i8* %37, align 1
  %4405 = icmp eq i32 %4392, 0
  %4406 = zext i1 %4405 to i8
  store i8 %4406, i8* %40, align 1
  %4407 = lshr i32 %4392, 31
  %4408 = trunc i32 %4407 to i8
  store i8 %4408, i8* %43, align 1
  %4409 = lshr i32 %4385, 31
  %4410 = lshr i32 %4391, 31
  %4411 = xor i32 %4410, %4409
  %4412 = xor i32 %4407, %4409
  %4413 = add nuw nsw i32 %4412, %4411
  %4414 = icmp eq i32 %4413, 2
  %4415 = zext i1 %4414 to i8
  store i8 %4415, i8* %49, align 1
  %4416 = icmp ne i8 %4408, 0
  %4417 = xor i1 %4416, %4414
  %.v281 = select i1 %4417, i64 26, i64 98
  %4418 = add i64 %4377, %.v281
  store i64 %4418, i64* %3, align 8
  br i1 %4417, label %block_4543a9, label %block_.L_4543f1

block_4543a9:                                     ; preds = %block_45438f
  %4419 = add i64 %4143, -64
  %4420 = add i64 %4418, 4
  store i64 %4420, i64* %3, align 8
  %4421 = inttoptr i64 %4419 to i32*
  %4422 = load i32, i32* %4421, align 4
  %4423 = sext i32 %4422 to i64
  store i64 %4423, i64* %RAX.i223, align 8
  %4424 = shl nsw i64 %4423, 2
  %4425 = add i64 %4143, -20736
  %4426 = add i64 %4425, %4424
  %4427 = add i64 %4418, 11
  store i64 %4427, i64* %3, align 8
  %4428 = inttoptr i64 %4426 to i32*
  %4429 = load i32, i32* %4428, align 4
  %4430 = add i32 %4429, -700
  %4431 = zext i32 %4430 to i64
  store i64 %4431, i64* %RCX.i2266, align 8
  %4432 = add i64 %4418, 24
  store i64 %4432, i64* %3, align 8
  store i32 %4430, i32* %4428, align 4
  %4433 = load i64, i64* %3, align 8
  %4434 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %25, align 1
  %4435 = and i32 %4434, 255
  %4436 = tail call i32 @llvm.ctpop.i32(i32 %4435)
  %4437 = trunc i32 %4436 to i8
  %4438 = and i8 %4437, 1
  %4439 = xor i8 %4438, 1
  store i8 %4439, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %4440 = icmp eq i32 %4434, 0
  %4441 = zext i1 %4440 to i8
  store i8 %4441, i8* %40, align 1
  %4442 = lshr i32 %4434, 31
  %4443 = trunc i32 %4442 to i8
  store i8 %4443, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %4444 = icmp ne i8 %4443, 0
  %4445 = or i1 %4440, %4444
  %.v282 = select i1 %4445, i64 43, i64 14
  %4446 = add i64 %4433, %.v282
  store i64 %4446, i64* %3, align 8
  br i1 %4445, label %block_.L_4543ec, label %block_4543cf

block_4543cf:                                     ; preds = %block_4543a9
  store i64 ptrtoint (%G__0x57f888_type* @G__0x57f888 to i64), i64* %RDI.i2208, align 8
  %4447 = load i64, i64* %RBP.i, align 8
  %4448 = add i64 %4447, -20860
  %4449 = add i64 %4446, 16
  store i64 %4449, i64* %3, align 8
  %4450 = inttoptr i64 %4448 to i32*
  %4451 = load i32, i32* %4450, align 4
  %4452 = zext i32 %4451 to i64
  store i64 %4452, i64* %RSI.i2205, align 8
  store i8 0, i8* %AL.i930.pre-phi, align 1
  %4453 = add i64 %4446, -9759
  %4454 = add i64 %4446, 23
  %4455 = load i64, i64* %6, align 8
  %4456 = add i64 %4455, -8
  %4457 = inttoptr i64 %4456 to i64*
  store i64 %4454, i64* %4457, align 8
  store i64 %4456, i64* %6, align 8
  store i64 %4453, i64* %3, align 8
  %call2_4543e1 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %4453, %struct.Memory* %MEMORY.61)
  %4458 = load i64, i64* %RBP.i, align 8
  %4459 = add i64 %4458, -21476
  %4460 = load i32, i32* %EAX.i2180, align 4
  %4461 = load i64, i64* %3, align 8
  %4462 = add i64 %4461, 6
  store i64 %4462, i64* %3, align 8
  %4463 = inttoptr i64 %4459 to i32*
  store i32 %4460, i32* %4463, align 4
  %.pre174 = load i64, i64* %3, align 8
  br label %block_.L_4543ec

block_.L_4543ec:                                  ; preds = %block_4543cf, %block_4543a9
  %4464 = phi i64 [ %4446, %block_4543a9 ], [ %.pre174, %block_4543cf ]
  %MEMORY.64 = phi %struct.Memory* [ %MEMORY.61, %block_4543a9 ], [ %call2_4543e1, %block_4543cf ]
  %4465 = add i64 %4464, 5
  store i64 %4465, i64* %3, align 8
  br label %block_.L_4543f1

block_.L_4543f1:                                  ; preds = %block_45434d, %block_4542fd, %block_45438f, %block_.L_454375, %block_.L_4543ec
  %4466 = phi i64 [ %4377, %block_.L_454375 ], [ %4418, %block_45438f ], [ %4465, %block_.L_4543ec ], [ %4333, %block_45434d ], [ %4239, %block_4542fd ]
  %MEMORY.65 = phi %struct.Memory* [ %MEMORY.61, %block_.L_454375 ], [ %MEMORY.61, %block_45438f ], [ %MEMORY.64, %block_.L_4543ec ], [ %MEMORY.61, %block_45434d ], [ %MEMORY.61, %block_4542fd ]
  %4467 = add i64 %4466, 5
  store i64 %4467, i64* %3, align 8
  br label %block_.L_4543f6

block_.L_4543f6:                                  ; preds = %block_.L_45427e, %block_.L_4543f1
  %4468 = phi i64 [ %4095, %block_.L_45427e ], [ %4467, %block_.L_4543f1 ]
  %MEMORY.66 = phi %struct.Memory* [ %call2_454284, %block_.L_45427e ], [ %MEMORY.65, %block_.L_4543f1 ]
  %4469 = add i64 %4468, 131
  br label %block_.L_454479

block_.L_4543fb:                                  ; preds = %block_4541ff
  %4470 = add i64 %4007, 7
  store i64 %4470, i64* %3, align 8
  %4471 = load i32, i32* %3973, align 4
  %4472 = sext i32 %4471 to i64
  store i64 %4472, i64* %RAX.i223, align 8
  %4473 = add nsw i64 %4472, 12099168
  %4474 = add i64 %4007, 15
  store i64 %4474, i64* %3, align 8
  %4475 = inttoptr i64 %4473 to i8*
  %4476 = load i8, i8* %4475, align 1
  %4477 = zext i8 %4476 to i64
  store i64 %4477, i64* %RCX.i2266, align 8
  %4478 = zext i8 %4476 to i32
  %4479 = add i64 %3969, -52
  %4480 = add i64 %4007, 18
  store i64 %4480, i64* %3, align 8
  %4481 = inttoptr i64 %4479 to i32*
  %4482 = load i32, i32* %4481, align 4
  %4483 = sub i32 %4478, %4482
  %4484 = icmp ult i32 %4478, %4482
  %4485 = zext i1 %4484 to i8
  store i8 %4485, i8* %25, align 1
  %4486 = and i32 %4483, 255
  %4487 = tail call i32 @llvm.ctpop.i32(i32 %4486)
  %4488 = trunc i32 %4487 to i8
  %4489 = and i8 %4488, 1
  %4490 = xor i8 %4489, 1
  store i8 %4490, i8* %32, align 1
  %4491 = xor i32 %4482, %4478
  %4492 = xor i32 %4491, %4483
  %4493 = lshr i32 %4492, 4
  %4494 = trunc i32 %4493 to i8
  %4495 = and i8 %4494, 1
  store i8 %4495, i8* %37, align 1
  %4496 = icmp eq i32 %4483, 0
  %4497 = zext i1 %4496 to i8
  store i8 %4497, i8* %40, align 1
  %4498 = lshr i32 %4483, 31
  %4499 = trunc i32 %4498 to i8
  store i8 %4499, i8* %43, align 1
  %4500 = lshr i32 %4482, 31
  %4501 = add nuw nsw i32 %4498, %4500
  %4502 = icmp eq i32 %4501, 2
  %4503 = zext i1 %4502 to i8
  store i8 %4503, i8* %49, align 1
  %.v270 = select i1 %4496, i64 24, i64 121
  %4504 = add i64 %4007, %.v270
  store i64 %4504, i64* %3, align 8
  br i1 %4496, label %block_454413, label %block_.L_454474

block_454413:                                     ; preds = %block_.L_4543fb
  %4505 = add i64 %4504, 6
  store i64 %4505, i64* %3, align 8
  %4506 = load i32, i32* %3973, align 4
  %4507 = zext i32 %4506 to i64
  store i64 %4507, i64* %RDI.i2208, align 8
  %4508 = add i64 %4504, -281747
  %4509 = add i64 %4504, 11
  %4510 = load i64, i64* %6, align 8
  %4511 = add i64 %4510, -8
  %4512 = inttoptr i64 %4511 to i64*
  store i64 %4509, i64* %4512, align 8
  store i64 %4511, i64* %6, align 8
  store i64 %4508, i64* %3, align 8
  %call2_454419 = tail call %struct.Memory* @sub_40f780.countlib(%struct.State* nonnull %0, i64 %4508, %struct.Memory* %MEMORY.59)
  %4513 = load i32, i32* %EAX.i2180, align 4
  %4514 = load i64, i64* %3, align 8
  %4515 = add i32 %4513, -2
  %4516 = icmp ult i32 %4513, 2
  %4517 = zext i1 %4516 to i8
  store i8 %4517, i8* %25, align 1
  %4518 = and i32 %4515, 255
  %4519 = tail call i32 @llvm.ctpop.i32(i32 %4518)
  %4520 = trunc i32 %4519 to i8
  %4521 = and i8 %4520, 1
  %4522 = xor i8 %4521, 1
  store i8 %4522, i8* %32, align 1
  %4523 = xor i32 %4515, %4513
  %4524 = lshr i32 %4523, 4
  %4525 = trunc i32 %4524 to i8
  %4526 = and i8 %4525, 1
  store i8 %4526, i8* %37, align 1
  %4527 = icmp eq i32 %4515, 0
  %4528 = zext i1 %4527 to i8
  store i8 %4528, i8* %40, align 1
  %4529 = lshr i32 %4515, 31
  %4530 = trunc i32 %4529 to i8
  store i8 %4530, i8* %43, align 1
  %4531 = lshr i32 %4513, 31
  %4532 = xor i32 %4529, %4531
  %4533 = add nuw nsw i32 %4532, %4531
  %4534 = icmp eq i32 %4533, 2
  %4535 = zext i1 %4534 to i8
  store i8 %4535, i8* %49, align 1
  %4536 = icmp ne i8 %4530, 0
  %4537 = xor i1 %4536, %4534
  %.demorgan225 = or i1 %4527, %4537
  %.v271 = select i1 %.demorgan225, i64 9, i64 81
  %4538 = add i64 %4514, %.v271
  store i64 %4538, i64* %3, align 8
  br i1 %.demorgan225, label %block_454427, label %block_.L_45446f

block_454427:                                     ; preds = %block_454413
  %4539 = load i64, i64* %RBP.i, align 8
  %4540 = add i64 %4539, -64
  %4541 = add i64 %4538, 4
  store i64 %4541, i64* %3, align 8
  %4542 = inttoptr i64 %4540 to i32*
  %4543 = load i32, i32* %4542, align 4
  %4544 = sext i32 %4543 to i64
  store i64 %4544, i64* %RAX.i223, align 8
  %4545 = shl nsw i64 %4544, 2
  %4546 = add i64 %4539, -20736
  %4547 = add i64 %4546, %4545
  %4548 = add i64 %4538, 11
  store i64 %4548, i64* %3, align 8
  %4549 = inttoptr i64 %4547 to i32*
  %4550 = load i32, i32* %4549, align 4
  %4551 = add i32 %4550, -200
  %4552 = zext i32 %4551 to i64
  store i64 %4552, i64* %RCX.i2266, align 8
  %4553 = add i64 %4538, 24
  store i64 %4553, i64* %3, align 8
  store i32 %4551, i32* %4549, align 4
  %4554 = load i64, i64* %3, align 8
  %4555 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %25, align 1
  %4556 = and i32 %4555, 255
  %4557 = tail call i32 @llvm.ctpop.i32(i32 %4556)
  %4558 = trunc i32 %4557 to i8
  %4559 = and i8 %4558, 1
  %4560 = xor i8 %4559, 1
  store i8 %4560, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %4561 = icmp eq i32 %4555, 0
  %4562 = zext i1 %4561 to i8
  store i8 %4562, i8* %40, align 1
  %4563 = lshr i32 %4555, 31
  %4564 = trunc i32 %4563 to i8
  store i8 %4564, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %4565 = icmp ne i8 %4564, 0
  %4566 = or i1 %4561, %4565
  %.v272 = select i1 %4566, i64 43, i64 14
  %4567 = add i64 %4554, %.v272
  store i64 %4567, i64* %3, align 8
  br i1 %4566, label %block_.L_45446a, label %block_45444d

block_45444d:                                     ; preds = %block_454427
  store i64 ptrtoint (%G__0x57f8c7_type* @G__0x57f8c7 to i64), i64* %RDI.i2208, align 8
  %4568 = load i64, i64* %RBP.i, align 8
  %4569 = add i64 %4568, -20860
  %4570 = add i64 %4567, 16
  store i64 %4570, i64* %3, align 8
  %4571 = inttoptr i64 %4569 to i32*
  %4572 = load i32, i32* %4571, align 4
  %4573 = zext i32 %4572 to i64
  store i64 %4573, i64* %RSI.i2205, align 8
  store i8 0, i8* %AL.i930.pre-phi, align 1
  %4574 = add i64 %4567, -9885
  %4575 = add i64 %4567, 23
  %4576 = load i64, i64* %6, align 8
  %4577 = add i64 %4576, -8
  %4578 = inttoptr i64 %4577 to i64*
  store i64 %4575, i64* %4578, align 8
  store i64 %4577, i64* %6, align 8
  store i64 %4574, i64* %3, align 8
  %call2_45445f = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %4574, %struct.Memory* %MEMORY.59)
  %4579 = load i64, i64* %RBP.i, align 8
  %4580 = add i64 %4579, -21480
  %4581 = load i32, i32* %EAX.i2180, align 4
  %4582 = load i64, i64* %3, align 8
  %4583 = add i64 %4582, 6
  store i64 %4583, i64* %3, align 8
  %4584 = inttoptr i64 %4580 to i32*
  store i32 %4581, i32* %4584, align 4
  %.pre175 = load i64, i64* %3, align 8
  br label %block_.L_45446a

block_.L_45446a:                                  ; preds = %block_45444d, %block_454427
  %4585 = phi i64 [ %.pre175, %block_45444d ], [ %4567, %block_454427 ]
  %4586 = add i64 %4585, 5
  store i64 %4586, i64* %3, align 8
  br label %block_.L_45446f

block_.L_45446f:                                  ; preds = %block_454413, %block_.L_45446a
  %4587 = phi i64 [ %4586, %block_.L_45446a ], [ %4538, %block_454413 ]
  %4588 = add i64 %4587, 5
  store i64 %4588, i64* %3, align 8
  br label %block_.L_454474

block_.L_454474:                                  ; preds = %block_.L_4543fb, %block_.L_45446f
  %4589 = phi i64 [ %4588, %block_.L_45446f ], [ %4504, %block_.L_4543fb ]
  %4590 = add i64 %4589, 5
  store i64 %4590, i64* %3, align 8
  br label %block_.L_454479

block_.L_454479:                                  ; preds = %block_.L_454474, %block_.L_4543f6
  %storemerge111 = phi i64 [ %4469, %block_.L_4543f6 ], [ %4590, %block_.L_454474 ]
  %MEMORY.70 = phi %struct.Memory* [ %MEMORY.66, %block_.L_4543f6 ], [ %MEMORY.59, %block_.L_454474 ]
  %4591 = load i64, i64* %RBP.i, align 8
  %4592 = add i64 %4591, -20788
  %4593 = add i64 %storemerge111, 11
  store i64 %4593, i64* %3, align 8
  %4594 = inttoptr i64 %4592 to i32*
  %4595 = load i32, i32* %4594, align 4
  %4596 = add i32 %4595, 1
  %4597 = zext i32 %4596 to i64
  store i64 %4597, i64* %RAX.i223, align 8
  %4598 = icmp eq i32 %4595, -1
  %4599 = icmp eq i32 %4596, 0
  %4600 = or i1 %4598, %4599
  %4601 = zext i1 %4600 to i8
  store i8 %4601, i8* %25, align 1
  %4602 = and i32 %4596, 255
  %4603 = tail call i32 @llvm.ctpop.i32(i32 %4602)
  %4604 = trunc i32 %4603 to i8
  %4605 = and i8 %4604, 1
  %4606 = xor i8 %4605, 1
  store i8 %4606, i8* %32, align 1
  %4607 = xor i32 %4596, %4595
  %4608 = lshr i32 %4607, 4
  %4609 = trunc i32 %4608 to i8
  %4610 = and i8 %4609, 1
  store i8 %4610, i8* %37, align 1
  %4611 = zext i1 %4599 to i8
  store i8 %4611, i8* %40, align 1
  %4612 = lshr i32 %4596, 31
  %4613 = trunc i32 %4612 to i8
  store i8 %4613, i8* %43, align 1
  %4614 = lshr i32 %4595, 31
  %4615 = xor i32 %4612, %4614
  %4616 = add nuw nsw i32 %4615, %4612
  %4617 = icmp eq i32 %4616, 2
  %4618 = zext i1 %4617 to i8
  store i8 %4618, i8* %49, align 1
  %4619 = add i64 %storemerge111, 20
  store i64 %4619, i64* %3, align 8
  store i32 %4596, i32* %4594, align 4
  %4620 = load i64, i64* %3, align 8
  %4621 = add i64 %4620, -667
  store i64 %4621, i64* %3, align 8
  br label %block_.L_4541f2

block_.L_454492:                                  ; preds = %block_.L_4541f2
  %4622 = add i64 %3897, -20864
  %4623 = add i64 %3925, 7
  store i64 %4623, i64* %3, align 8
  %4624 = inttoptr i64 %4622 to i32*
  %4625 = load i32, i32* %4624, align 4
  store i8 0, i8* %25, align 1
  %4626 = and i32 %4625, 255
  %4627 = tail call i32 @llvm.ctpop.i32(i32 %4626)
  %4628 = trunc i32 %4627 to i8
  %4629 = and i8 %4628, 1
  %4630 = xor i8 %4629, 1
  store i8 %4630, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %4631 = icmp eq i32 %4625, 0
  %4632 = zext i1 %4631 to i8
  store i8 %4632, i8* %40, align 1
  %4633 = lshr i32 %4625, 31
  %4634 = trunc i32 %4633 to i8
  store i8 %4634, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v260 = select i1 %4631, i64 114, i64 13
  %4635 = add i64 %3925, %.v260
  store i64 %4635, i64* %3, align 8
  br i1 %4631, label %block_.L_454504, label %block_45449f

block_45449f:                                     ; preds = %block_.L_454492
  %4636 = add i64 %3897, -52
  %4637 = add i64 %4635, 3
  store i64 %4637, i64* %3, align 8
  %4638 = inttoptr i64 %4636 to i32*
  %4639 = load i32, i32* %4638, align 4
  %4640 = zext i32 %4639 to i64
  store i64 %4640, i64* %RAX.i223, align 8
  %4641 = add i64 %3897, -28
  %4642 = add i64 %4635, 6
  store i64 %4642, i64* %3, align 8
  %4643 = inttoptr i64 %4641 to i32*
  %4644 = load i32, i32* %4643, align 4
  %4645 = sub i32 %4639, %4644
  %4646 = icmp ult i32 %4639, %4644
  %4647 = zext i1 %4646 to i8
  store i8 %4647, i8* %25, align 1
  %4648 = and i32 %4645, 255
  %4649 = tail call i32 @llvm.ctpop.i32(i32 %4648)
  %4650 = trunc i32 %4649 to i8
  %4651 = and i8 %4650, 1
  %4652 = xor i8 %4651, 1
  store i8 %4652, i8* %32, align 1
  %4653 = xor i32 %4644, %4639
  %4654 = xor i32 %4653, %4645
  %4655 = lshr i32 %4654, 4
  %4656 = trunc i32 %4655 to i8
  %4657 = and i8 %4656, 1
  store i8 %4657, i8* %37, align 1
  %4658 = icmp eq i32 %4645, 0
  %4659 = zext i1 %4658 to i8
  store i8 %4659, i8* %40, align 1
  %4660 = lshr i32 %4645, 31
  %4661 = trunc i32 %4660 to i8
  store i8 %4661, i8* %43, align 1
  %4662 = lshr i32 %4639, 31
  %4663 = lshr i32 %4644, 31
  %4664 = xor i32 %4663, %4662
  %4665 = xor i32 %4660, %4662
  %4666 = add nuw nsw i32 %4665, %4664
  %4667 = icmp eq i32 %4666, 2
  %4668 = zext i1 %4667 to i8
  store i8 %4668, i8* %49, align 1
  %.v261 = select i1 %4658, i64 101, i64 12
  %4669 = add i64 %4635, %.v261
  store i64 %4669, i64* %3, align 8
  br i1 %4658, label %block_.L_454504, label %block_4544ab

block_4544ab:                                     ; preds = %block_45449f
  %4670 = add i64 %3897, -20860
  %4671 = add i64 %4669, 6
  store i64 %4671, i64* %3, align 8
  %4672 = inttoptr i64 %4670 to i32*
  %4673 = load i32, i32* %4672, align 4
  %4674 = zext i32 %4673 to i64
  store i64 %4674, i64* %RDI.i2208, align 8
  %4675 = add i64 %4669, -282139
  %4676 = add i64 %4669, 11
  %4677 = load i64, i64* %6, align 8
  %4678 = add i64 %4677, -8
  %4679 = inttoptr i64 %4678 to i64*
  store i64 %4676, i64* %4679, align 8
  store i64 %4678, i64* %6, align 8
  store i64 %4675, i64* %3, align 8
  %call2_4544b1 = tail call %struct.Memory* @sub_40f690.is_edge_vertex(%struct.State* nonnull %0, i64 %4675, %struct.Memory* %MEMORY.59)
  %4680 = load i32, i32* %EAX.i2180, align 4
  %4681 = load i64, i64* %3, align 8
  store i8 0, i8* %25, align 1
  %4682 = and i32 %4680, 255
  %4683 = tail call i32 @llvm.ctpop.i32(i32 %4682)
  %4684 = trunc i32 %4683 to i8
  %4685 = and i8 %4684, 1
  %4686 = xor i8 %4685, 1
  store i8 %4686, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %4687 = icmp eq i32 %4680, 0
  %4688 = zext i1 %4687 to i8
  store i8 %4688, i8* %40, align 1
  %4689 = lshr i32 %4680, 31
  %4690 = trunc i32 %4689 to i8
  store i8 %4690, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v262 = select i1 %4687, i64 78, i64 9
  %4691 = add i64 %4681, %.v262
  store i64 %4691, i64* %3, align 8
  br i1 %4687, label %block_.L_454504, label %block_4544bf

block_4544bf:                                     ; preds = %block_4544ab
  %4692 = load i64, i64* %RBP.i, align 8
  %4693 = add i64 %4692, -64
  %4694 = add i64 %4691, 4
  store i64 %4694, i64* %3, align 8
  %4695 = inttoptr i64 %4693 to i32*
  %4696 = load i32, i32* %4695, align 4
  %4697 = sext i32 %4696 to i64
  store i64 %4697, i64* %RAX.i223, align 8
  %4698 = shl nsw i64 %4697, 2
  %4699 = add i64 %4692, -20736
  %4700 = add i64 %4699, %4698
  %4701 = add i64 %4691, 11
  store i64 %4701, i64* %3, align 8
  %4702 = inttoptr i64 %4700 to i32*
  %4703 = load i32, i32* %4702, align 4
  %4704 = add i32 %4703, -100
  %4705 = zext i32 %4704 to i64
  store i64 %4705, i64* %RCX.i2266, align 8
  %4706 = add i64 %4691, 21
  store i64 %4706, i64* %3, align 8
  store i32 %4704, i32* %4702, align 4
  %4707 = load i64, i64* %3, align 8
  %4708 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %25, align 1
  %4709 = and i32 %4708, 255
  %4710 = tail call i32 @llvm.ctpop.i32(i32 %4709)
  %4711 = trunc i32 %4710 to i8
  %4712 = and i8 %4711, 1
  %4713 = xor i8 %4712, 1
  store i8 %4713, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %4714 = icmp eq i32 %4708, 0
  %4715 = zext i1 %4714 to i8
  store i8 %4715, i8* %40, align 1
  %4716 = lshr i32 %4708, 31
  %4717 = trunc i32 %4716 to i8
  store i8 %4717, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %4718 = icmp ne i8 %4717, 0
  %4719 = or i1 %4714, %4718
  %.v263 = select i1 %4719, i64 43, i64 14
  %4720 = add i64 %4707, %.v263
  store i64 %4720, i64* %3, align 8
  br i1 %4719, label %block_.L_4544ff, label %block_4544e2

block_4544e2:                                     ; preds = %block_4544bf
  store i64 ptrtoint (%G__0x57f90b_type* @G__0x57f90b to i64), i64* %RDI.i2208, align 8
  %4721 = load i64, i64* %RBP.i, align 8
  %4722 = add i64 %4721, -20860
  %4723 = add i64 %4720, 16
  store i64 %4723, i64* %3, align 8
  %4724 = inttoptr i64 %4722 to i32*
  %4725 = load i32, i32* %4724, align 4
  %4726 = zext i32 %4725 to i64
  store i64 %4726, i64* %RSI.i2205, align 8
  store i8 0, i8* %AL.i930.pre-phi, align 1
  %4727 = add i64 %4720, -10034
  %4728 = add i64 %4720, 23
  %4729 = load i64, i64* %6, align 8
  %4730 = add i64 %4729, -8
  %4731 = inttoptr i64 %4730 to i64*
  store i64 %4728, i64* %4731, align 8
  store i64 %4730, i64* %6, align 8
  store i64 %4727, i64* %3, align 8
  %call2_4544f4 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %4727, %struct.Memory* %call2_4544b1)
  %4732 = load i64, i64* %RBP.i, align 8
  %4733 = add i64 %4732, -21484
  %4734 = load i32, i32* %EAX.i2180, align 4
  %4735 = load i64, i64* %3, align 8
  %4736 = add i64 %4735, 6
  store i64 %4736, i64* %3, align 8
  %4737 = inttoptr i64 %4733 to i32*
  store i32 %4734, i32* %4737, align 4
  %.pre170 = load i64, i64* %3, align 8
  br label %block_.L_4544ff

block_.L_4544ff:                                  ; preds = %block_4544e2, %block_4544bf
  %4738 = phi i64 [ %4720, %block_4544bf ], [ %.pre170, %block_4544e2 ]
  %MEMORY.71 = phi %struct.Memory* [ %call2_4544b1, %block_4544bf ], [ %call2_4544f4, %block_4544e2 ]
  %4739 = add i64 %4738, 5
  store i64 %4739, i64* %3, align 8
  br label %block_.L_454504

block_.L_454504:                                  ; preds = %block_.L_4544ff, %block_4544ab, %block_45449f, %block_.L_454492
  %4740 = phi i64 [ %4635, %block_.L_454492 ], [ %4669, %block_45449f ], [ %4691, %block_4544ab ], [ %4739, %block_.L_4544ff ]
  %MEMORY.72 = phi %struct.Memory* [ %MEMORY.59, %block_.L_454492 ], [ %MEMORY.59, %block_45449f ], [ %call2_4544b1, %block_4544ab ], [ %MEMORY.71, %block_.L_4544ff ]
  %4741 = load i64, i64* %RBP.i, align 8
  %4742 = add i64 %4741, -20860
  %4743 = add i64 %4740, 6
  store i64 %4743, i64* %3, align 8
  %4744 = inttoptr i64 %4742 to i32*
  %4745 = load i32, i32* %4744, align 4
  %4746 = zext i32 %4745 to i64
  store i64 %4746, i64* %RDI.i2208, align 8
  %4747 = add i64 %4741, -20
  %4748 = add i64 %4740, 9
  store i64 %4748, i64* %3, align 8
  %4749 = inttoptr i64 %4747 to i32*
  %4750 = load i32, i32* %4749, align 4
  %4751 = zext i32 %4750 to i64
  store i64 %4751, i64* %RSI.i2205, align 8
  %4752 = add i64 %4740, -260692
  %4753 = add i64 %4740, 14
  %4754 = load i64, i64* %6, align 8
  %4755 = add i64 %4754, -8
  %4756 = inttoptr i64 %4755 to i64*
  store i64 %4753, i64* %4756, align 8
  store i64 %4755, i64* %6, align 8
  store i64 %4752, i64* %3, align 8
  %call2_45450d = tail call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* nonnull %0, i64 %4752, %struct.Memory* %MEMORY.72)
  %4757 = load i32, i32* %EAX.i2180, align 4
  %4758 = load i64, i64* %3, align 8
  store i8 0, i8* %25, align 1
  %4759 = and i32 %4757, 255
  %4760 = tail call i32 @llvm.ctpop.i32(i32 %4759)
  %4761 = trunc i32 %4760 to i8
  %4762 = and i8 %4761, 1
  %4763 = xor i8 %4762, 1
  store i8 %4763, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %4764 = icmp eq i32 %4757, 0
  %4765 = zext i1 %4764 to i8
  store i8 %4765, i8* %40, align 1
  %4766 = lshr i32 %4757, 31
  %4767 = trunc i32 %4766 to i8
  store i8 %4767, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v264 = select i1 %4764, i64 26, i64 9
  %4768 = add i64 %4758, %.v264
  store i64 %4768, i64* %3, align 8
  br i1 %4764, label %block_.L_45452c, label %block_45451b

block_45451b:                                     ; preds = %block_.L_454504
  %4769 = load i64, i64* %RBP.i, align 8
  %4770 = add i64 %4769, -20
  %4771 = add i64 %4768, 3
  store i64 %4771, i64* %3, align 8
  %4772 = inttoptr i64 %4770 to i32*
  %4773 = load i32, i32* %4772, align 4
  %4774 = zext i32 %4773 to i64
  store i64 %4774, i64* %RDI.i2208, align 8
  %4775 = add i64 %4768, -282011
  %4776 = add i64 %4768, 8
  %4777 = load i64, i64* %6, align 8
  %4778 = add i64 %4777, -8
  %4779 = inttoptr i64 %4778 to i64*
  store i64 %4776, i64* %4779, align 8
  store i64 %4778, i64* %6, align 8
  store i64 %4775, i64* %3, align 8
  %call2_45451e = tail call %struct.Memory* @sub_40f780.countlib(%struct.State* nonnull %0, i64 %4775, %struct.Memory* %call2_45450d)
  %4780 = load i32, i32* %EAX.i2180, align 4
  %4781 = load i64, i64* %3, align 8
  %4782 = add i32 %4780, -3
  %4783 = icmp ult i32 %4780, 3
  %4784 = zext i1 %4783 to i8
  store i8 %4784, i8* %25, align 1
  %4785 = and i32 %4782, 255
  %4786 = tail call i32 @llvm.ctpop.i32(i32 %4785)
  %4787 = trunc i32 %4786 to i8
  %4788 = and i8 %4787, 1
  %4789 = xor i8 %4788, 1
  store i8 %4789, i8* %32, align 1
  %4790 = xor i32 %4782, %4780
  %4791 = lshr i32 %4790, 4
  %4792 = trunc i32 %4791 to i8
  %4793 = and i8 %4792, 1
  store i8 %4793, i8* %37, align 1
  %4794 = icmp eq i32 %4782, 0
  %4795 = zext i1 %4794 to i8
  store i8 %4795, i8* %40, align 1
  %4796 = lshr i32 %4782, 31
  %4797 = trunc i32 %4796 to i8
  store i8 %4797, i8* %43, align 1
  %4798 = lshr i32 %4780, 31
  %4799 = xor i32 %4796, %4798
  %4800 = add nuw nsw i32 %4799, %4798
  %4801 = icmp eq i32 %4800, 2
  %4802 = zext i1 %4801 to i8
  store i8 %4802, i8* %49, align 1
  %.v265 = select i1 %4794, i64 49, i64 9
  %4803 = add i64 %4781, %.v265
  store i64 %4803, i64* %3, align 8
  br i1 %4794, label %block_.L_454554, label %block_.L_45452c

block_.L_45452c:                                  ; preds = %block_45451b, %block_.L_454504
  %4804 = phi i64 [ %4768, %block_.L_454504 ], [ %4803, %block_45451b ]
  %MEMORY.73 = phi %struct.Memory* [ %call2_45450d, %block_.L_454504 ], [ %call2_45451e, %block_45451b ]
  %4805 = load i64, i64* %RBP.i, align 8
  %4806 = add i64 %4805, -20860
  %4807 = add i64 %4804, 6
  store i64 %4807, i64* %3, align 8
  %4808 = inttoptr i64 %4806 to i32*
  %4809 = load i32, i32* %4808, align 4
  %4810 = zext i32 %4809 to i64
  store i64 %4810, i64* %RDI.i2208, align 8
  %4811 = add i64 %4805, -24
  %4812 = add i64 %4804, 9
  store i64 %4812, i64* %3, align 8
  %4813 = inttoptr i64 %4811 to i32*
  %4814 = load i32, i32* %4813, align 4
  %4815 = zext i32 %4814 to i64
  store i64 %4815, i64* %RSI.i2205, align 8
  %4816 = add i64 %4804, -260732
  %4817 = add i64 %4804, 14
  %4818 = load i64, i64* %6, align 8
  %4819 = add i64 %4818, -8
  %4820 = inttoptr i64 %4819 to i64*
  store i64 %4817, i64* %4820, align 8
  store i64 %4819, i64* %6, align 8
  store i64 %4816, i64* %3, align 8
  %call2_454535 = tail call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* nonnull %0, i64 %4816, %struct.Memory* %MEMORY.73)
  %4821 = load i32, i32* %EAX.i2180, align 4
  %4822 = load i64, i64* %3, align 8
  store i8 0, i8* %25, align 1
  %4823 = and i32 %4821, 255
  %4824 = tail call i32 @llvm.ctpop.i32(i32 %4823)
  %4825 = trunc i32 %4824 to i8
  %4826 = and i8 %4825, 1
  %4827 = xor i8 %4826, 1
  store i8 %4827, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %4828 = icmp eq i32 %4821, 0
  %4829 = zext i1 %4828 to i8
  store i8 %4829, i8* %40, align 1
  %4830 = lshr i32 %4821, 31
  %4831 = trunc i32 %4830 to i8
  store i8 %4831, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v266 = select i1 %4828, i64 95, i64 9
  %4832 = add i64 %4822, %.v266
  store i64 %4832, i64* %3, align 8
  br i1 %4828, label %block_.L_454599, label %block_454543

block_454543:                                     ; preds = %block_.L_45452c
  %4833 = load i64, i64* %RBP.i, align 8
  %4834 = add i64 %4833, -24
  %4835 = add i64 %4832, 3
  store i64 %4835, i64* %3, align 8
  %4836 = inttoptr i64 %4834 to i32*
  %4837 = load i32, i32* %4836, align 4
  %4838 = zext i32 %4837 to i64
  store i64 %4838, i64* %RDI.i2208, align 8
  %4839 = add i64 %4832, -282051
  %4840 = add i64 %4832, 8
  %4841 = load i64, i64* %6, align 8
  %4842 = add i64 %4841, -8
  %4843 = inttoptr i64 %4842 to i64*
  store i64 %4840, i64* %4843, align 8
  store i64 %4842, i64* %6, align 8
  store i64 %4839, i64* %3, align 8
  %call2_454546 = tail call %struct.Memory* @sub_40f780.countlib(%struct.State* nonnull %0, i64 %4839, %struct.Memory* %call2_454535)
  %4844 = load i32, i32* %EAX.i2180, align 4
  %4845 = load i64, i64* %3, align 8
  %4846 = add i32 %4844, -3
  %4847 = icmp ult i32 %4844, 3
  %4848 = zext i1 %4847 to i8
  store i8 %4848, i8* %25, align 1
  %4849 = and i32 %4846, 255
  %4850 = tail call i32 @llvm.ctpop.i32(i32 %4849)
  %4851 = trunc i32 %4850 to i8
  %4852 = and i8 %4851, 1
  %4853 = xor i8 %4852, 1
  store i8 %4853, i8* %32, align 1
  %4854 = xor i32 %4846, %4844
  %4855 = lshr i32 %4854, 4
  %4856 = trunc i32 %4855 to i8
  %4857 = and i8 %4856, 1
  store i8 %4857, i8* %37, align 1
  %4858 = icmp eq i32 %4846, 0
  %4859 = zext i1 %4858 to i8
  store i8 %4859, i8* %40, align 1
  %4860 = lshr i32 %4846, 31
  %4861 = trunc i32 %4860 to i8
  store i8 %4861, i8* %43, align 1
  %4862 = lshr i32 %4844, 31
  %4863 = xor i32 %4860, %4862
  %4864 = add nuw nsw i32 %4863, %4862
  %4865 = icmp eq i32 %4864, 2
  %4866 = zext i1 %4865 to i8
  store i8 %4866, i8* %49, align 1
  %.v267 = select i1 %4858, i64 9, i64 78
  %4867 = add i64 %4845, %.v267
  store i64 %4867, i64* %3, align 8
  br i1 %4858, label %block_.L_454554, label %block_.L_454599

block_.L_454554:                                  ; preds = %block_454543, %block_45451b
  %4868 = phi i64 [ %4867, %block_454543 ], [ %4803, %block_45451b ]
  %MEMORY.74 = phi %struct.Memory* [ %call2_454546, %block_454543 ], [ %call2_45451e, %block_45451b ]
  %4869 = load i64, i64* %RBP.i, align 8
  %4870 = add i64 %4869, -64
  %4871 = add i64 %4868, 4
  store i64 %4871, i64* %3, align 8
  %4872 = inttoptr i64 %4870 to i32*
  %4873 = load i32, i32* %4872, align 4
  %4874 = sext i32 %4873 to i64
  store i64 %4874, i64* %RAX.i223, align 8
  %4875 = shl nsw i64 %4874, 2
  %4876 = add i64 %4869, -20736
  %4877 = add i64 %4876, %4875
  %4878 = add i64 %4868, 11
  store i64 %4878, i64* %3, align 8
  %4879 = inttoptr i64 %4877 to i32*
  %4880 = load i32, i32* %4879, align 4
  %4881 = add i32 %4880, -100
  %4882 = zext i32 %4881 to i64
  store i64 %4882, i64* %RCX.i2266, align 8
  %4883 = add i64 %4868, 21
  store i64 %4883, i64* %3, align 8
  store i32 %4881, i32* %4879, align 4
  %4884 = load i64, i64* %3, align 8
  %4885 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %25, align 1
  %4886 = and i32 %4885, 255
  %4887 = tail call i32 @llvm.ctpop.i32(i32 %4886)
  %4888 = trunc i32 %4887 to i8
  %4889 = and i8 %4888, 1
  %4890 = xor i8 %4889, 1
  store i8 %4890, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %4891 = icmp eq i32 %4885, 0
  %4892 = zext i1 %4891 to i8
  store i8 %4892, i8* %40, align 1
  %4893 = lshr i32 %4885, 31
  %4894 = trunc i32 %4893 to i8
  store i8 %4894, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %4895 = icmp ne i8 %4894, 0
  %4896 = or i1 %4891, %4895
  %.v268 = select i1 %4896, i64 43, i64 14
  %4897 = add i64 %4884, %.v268
  store i64 %4897, i64* %3, align 8
  br i1 %4896, label %block_.L_454594, label %block_454577

block_454577:                                     ; preds = %block_.L_454554
  store i64 ptrtoint (%G__0x57f930_type* @G__0x57f930 to i64), i64* %RDI.i2208, align 8
  %4898 = load i64, i64* %RBP.i, align 8
  %4899 = add i64 %4898, -20860
  %4900 = add i64 %4897, 16
  store i64 %4900, i64* %3, align 8
  %4901 = inttoptr i64 %4899 to i32*
  %4902 = load i32, i32* %4901, align 4
  %4903 = zext i32 %4902 to i64
  store i64 %4903, i64* %RSI.i2205, align 8
  store i8 0, i8* %AL.i930.pre-phi, align 1
  %4904 = add i64 %4897, -10183
  %4905 = add i64 %4897, 23
  %4906 = load i64, i64* %6, align 8
  %4907 = add i64 %4906, -8
  %4908 = inttoptr i64 %4907 to i64*
  store i64 %4905, i64* %4908, align 8
  store i64 %4907, i64* %6, align 8
  store i64 %4904, i64* %3, align 8
  %call2_454589 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %4904, %struct.Memory* %MEMORY.74)
  %4909 = load i64, i64* %RBP.i, align 8
  %4910 = add i64 %4909, -21488
  %4911 = load i32, i32* %EAX.i2180, align 4
  %4912 = load i64, i64* %3, align 8
  %4913 = add i64 %4912, 6
  store i64 %4913, i64* %3, align 8
  %4914 = inttoptr i64 %4910 to i32*
  store i32 %4911, i32* %4914, align 4
  %.pre171 = load i64, i64* %3, align 8
  br label %block_.L_454594

block_.L_454594:                                  ; preds = %block_454577, %block_.L_454554
  %4915 = phi i64 [ %4897, %block_.L_454554 ], [ %.pre171, %block_454577 ]
  %MEMORY.75 = phi %struct.Memory* [ %MEMORY.74, %block_.L_454554 ], [ %call2_454589, %block_454577 ]
  %4916 = add i64 %4915, 5
  store i64 %4916, i64* %3, align 8
  br label %block_.L_454599

block_.L_454599:                                  ; preds = %block_454543, %block_.L_454594, %block_.L_45452c
  %4917 = phi i64 [ %4832, %block_.L_45452c ], [ %4867, %block_454543 ], [ %4916, %block_.L_454594 ]
  %MEMORY.76 = phi %struct.Memory* [ %call2_454535, %block_.L_45452c ], [ %call2_454546, %block_454543 ], [ %MEMORY.75, %block_.L_454594 ]
  %4918 = load i64, i64* %RBP.i, align 8
  %4919 = add i64 %4918, -64
  %4920 = add i64 %4917, 8
  store i64 %4920, i64* %3, align 8
  %4921 = inttoptr i64 %4919 to i32*
  %4922 = load i32, i32* %4921, align 4
  %4923 = add i32 %4922, 1
  %4924 = zext i32 %4923 to i64
  store i64 %4924, i64* %RAX.i223, align 8
  %4925 = icmp eq i32 %4922, -1
  %4926 = icmp eq i32 %4923, 0
  %4927 = or i1 %4925, %4926
  %4928 = zext i1 %4927 to i8
  store i8 %4928, i8* %25, align 1
  %4929 = and i32 %4923, 255
  %4930 = tail call i32 @llvm.ctpop.i32(i32 %4929)
  %4931 = trunc i32 %4930 to i8
  %4932 = and i8 %4931, 1
  %4933 = xor i8 %4932, 1
  store i8 %4933, i8* %32, align 1
  %4934 = xor i32 %4923, %4922
  %4935 = lshr i32 %4934, 4
  %4936 = trunc i32 %4935 to i8
  %4937 = and i8 %4936, 1
  store i8 %4937, i8* %37, align 1
  %4938 = zext i1 %4926 to i8
  store i8 %4938, i8* %40, align 1
  %4939 = lshr i32 %4923, 31
  %4940 = trunc i32 %4939 to i8
  store i8 %4940, i8* %43, align 1
  %4941 = lshr i32 %4922, 31
  %4942 = xor i32 %4939, %4941
  %4943 = add nuw nsw i32 %4942, %4939
  %4944 = icmp eq i32 %4943, 2
  %4945 = zext i1 %4944 to i8
  store i8 %4945, i8* %49, align 1
  %4946 = add i64 %4917, 14
  store i64 %4946, i64* %3, align 8
  store i32 %4923, i32* %4921, align 4
  %4947 = load i64, i64* %3, align 8
  %4948 = add i64 %4947, -1001
  store i64 %4948, i64* %3, align 8
  br label %block_.L_4541be

block_.L_4545ac:                                  ; preds = %block_.L_4541be
  %4949 = add i64 %3833, -20792
  %4950 = add i64 %3869, 10
  store i64 %4950, i64* %3, align 8
  %4951 = inttoptr i64 %4949 to i32*
  store i32 0, i32* %4951, align 4
  %.pre151 = load i64, i64* %3, align 8
  br label %block_.L_4545b6

block_.L_4545b6:                                  ; preds = %block_.L_4546f6, %block_.L_4545ac
  %4952 = phi i64 [ %5362, %block_.L_4546f6 ], [ %.pre151, %block_.L_4545ac ]
  %4953 = load i64, i64* %RBP.i, align 8
  %4954 = add i64 %4953, -20792
  %4955 = add i64 %4952, 6
  store i64 %4955, i64* %3, align 8
  %4956 = inttoptr i64 %4954 to i32*
  %4957 = load i32, i32* %4956, align 4
  %4958 = zext i32 %4957 to i64
  store i64 %4958, i64* %RAX.i223, align 8
  %4959 = add i64 %4953, -20740
  %4960 = add i64 %4952, 12
  store i64 %4960, i64* %3, align 8
  %4961 = inttoptr i64 %4959 to i32*
  %4962 = load i32, i32* %4961, align 4
  %4963 = sub i32 %4957, %4962
  %4964 = icmp ult i32 %4957, %4962
  %4965 = zext i1 %4964 to i8
  store i8 %4965, i8* %25, align 1
  %4966 = and i32 %4963, 255
  %4967 = tail call i32 @llvm.ctpop.i32(i32 %4966)
  %4968 = trunc i32 %4967 to i8
  %4969 = and i8 %4968, 1
  %4970 = xor i8 %4969, 1
  store i8 %4970, i8* %32, align 1
  %4971 = xor i32 %4962, %4957
  %4972 = xor i32 %4971, %4963
  %4973 = lshr i32 %4972, 4
  %4974 = trunc i32 %4973 to i8
  %4975 = and i8 %4974, 1
  store i8 %4975, i8* %37, align 1
  %4976 = icmp eq i32 %4963, 0
  %4977 = zext i1 %4976 to i8
  store i8 %4977, i8* %40, align 1
  %4978 = lshr i32 %4963, 31
  %4979 = trunc i32 %4978 to i8
  store i8 %4979, i8* %43, align 1
  %4980 = lshr i32 %4957, 31
  %4981 = lshr i32 %4962, 31
  %4982 = xor i32 %4981, %4980
  %4983 = xor i32 %4978, %4980
  %4984 = add nuw nsw i32 %4983, %4982
  %4985 = icmp eq i32 %4984, 2
  %4986 = zext i1 %4985 to i8
  store i8 %4986, i8* %49, align 1
  %4987 = icmp ne i8 %4979, 0
  %4988 = xor i1 %4987, %4985
  %.v251 = select i1 %4988, i64 18, i64 345
  %4989 = add i64 %4952, %.v251
  store i64 %4989, i64* %3, align 8
  br i1 %4988, label %block_4545c8, label %block_.L_45470f

block_4545c8:                                     ; preds = %block_.L_4545b6
  %4990 = add i64 %4989, 7
  store i64 %4990, i64* %3, align 8
  %4991 = load i32, i32* %4956, align 4
  %4992 = sext i32 %4991 to i64
  store i64 %4992, i64* %RAX.i223, align 8
  %4993 = shl nsw i64 %4992, 2
  %4994 = add i64 %4953, -20736
  %4995 = add i64 %4994, %4993
  %4996 = add i64 %4989, 14
  store i64 %4996, i64* %3, align 8
  %4997 = inttoptr i64 %4995 to i32*
  %4998 = load i32, i32* %4997, align 4
  %4999 = zext i32 %4998 to i64
  store i64 %4999, i64* %RCX.i2266, align 8
  %5000 = add i64 %4953, -20872
  %5001 = add i64 %4989, 20
  store i64 %5001, i64* %3, align 8
  %5002 = inttoptr i64 %5000 to i32*
  store i32 %4998, i32* %5002, align 4
  %5003 = load i64, i64* %RBP.i, align 8
  %5004 = add i64 %5003, -20792
  %5005 = load i64, i64* %3, align 8
  %5006 = add i64 %5005, 6
  store i64 %5006, i64* %3, align 8
  %5007 = inttoptr i64 %5004 to i32*
  %5008 = load i32, i32* %5007, align 4
  %5009 = zext i32 %5008 to i64
  store i64 %5009, i64* %RCX.i2266, align 8
  %5010 = add i64 %5003, -20876
  %5011 = add i64 %5005, 12
  store i64 %5011, i64* %3, align 8
  %5012 = inttoptr i64 %5010 to i32*
  store i32 %5008, i32* %5012, align 4
  %5013 = load i64, i64* %RBP.i, align 8
  %5014 = add i64 %5013, -20792
  %5015 = load i64, i64* %3, align 8
  %5016 = add i64 %5015, 6
  store i64 %5016, i64* %3, align 8
  %5017 = inttoptr i64 %5014 to i32*
  %5018 = load i32, i32* %5017, align 4
  %5019 = add i32 %5018, 1
  %5020 = zext i32 %5019 to i64
  store i64 %5020, i64* %RCX.i2266, align 8
  %5021 = icmp eq i32 %5018, -1
  %5022 = icmp eq i32 %5019, 0
  %5023 = or i1 %5021, %5022
  %5024 = zext i1 %5023 to i8
  store i8 %5024, i8* %25, align 1
  %5025 = and i32 %5019, 255
  %5026 = tail call i32 @llvm.ctpop.i32(i32 %5025)
  %5027 = trunc i32 %5026 to i8
  %5028 = and i8 %5027, 1
  %5029 = xor i8 %5028, 1
  store i8 %5029, i8* %32, align 1
  %5030 = xor i32 %5019, %5018
  %5031 = lshr i32 %5030, 4
  %5032 = trunc i32 %5031 to i8
  %5033 = and i8 %5032, 1
  store i8 %5033, i8* %37, align 1
  %5034 = zext i1 %5022 to i8
  store i8 %5034, i8* %40, align 1
  %5035 = lshr i32 %5019, 31
  %5036 = trunc i32 %5035 to i8
  store i8 %5036, i8* %43, align 1
  %5037 = lshr i32 %5018, 31
  %5038 = xor i32 %5035, %5037
  %5039 = add nuw nsw i32 %5038, %5035
  %5040 = icmp eq i32 %5039, 2
  %5041 = zext i1 %5040 to i8
  store i8 %5041, i8* %49, align 1
  %5042 = add i64 %5013, -20796
  %5043 = add i64 %5015, 15
  store i64 %5043, i64* %3, align 8
  %5044 = inttoptr i64 %5042 to i32*
  store i32 %5019, i32* %5044, align 4
  %.pre164 = load i64, i64* %3, align 8
  br label %block_.L_4545f7

block_.L_4545f7:                                  ; preds = %block_.L_454643, %block_4545c8
  %5045 = phi i64 [ %5175, %block_.L_454643 ], [ %.pre164, %block_4545c8 ]
  %5046 = load i64, i64* %RBP.i, align 8
  %5047 = add i64 %5046, -20796
  %5048 = add i64 %5045, 6
  store i64 %5048, i64* %3, align 8
  %5049 = inttoptr i64 %5047 to i32*
  %5050 = load i32, i32* %5049, align 4
  %5051 = zext i32 %5050 to i64
  store i64 %5051, i64* %RAX.i223, align 8
  %5052 = add i64 %5046, -20740
  %5053 = add i64 %5045, 12
  store i64 %5053, i64* %3, align 8
  %5054 = inttoptr i64 %5052 to i32*
  %5055 = load i32, i32* %5054, align 4
  %5056 = sub i32 %5050, %5055
  %5057 = icmp ult i32 %5050, %5055
  %5058 = zext i1 %5057 to i8
  store i8 %5058, i8* %25, align 1
  %5059 = and i32 %5056, 255
  %5060 = tail call i32 @llvm.ctpop.i32(i32 %5059)
  %5061 = trunc i32 %5060 to i8
  %5062 = and i8 %5061, 1
  %5063 = xor i8 %5062, 1
  store i8 %5063, i8* %32, align 1
  %5064 = xor i32 %5055, %5050
  %5065 = xor i32 %5064, %5056
  %5066 = lshr i32 %5065, 4
  %5067 = trunc i32 %5066 to i8
  %5068 = and i8 %5067, 1
  store i8 %5068, i8* %37, align 1
  %5069 = icmp eq i32 %5056, 0
  %5070 = zext i1 %5069 to i8
  store i8 %5070, i8* %40, align 1
  %5071 = lshr i32 %5056, 31
  %5072 = trunc i32 %5071 to i8
  store i8 %5072, i8* %43, align 1
  %5073 = lshr i32 %5050, 31
  %5074 = lshr i32 %5055, 31
  %5075 = xor i32 %5074, %5073
  %5076 = xor i32 %5071, %5073
  %5077 = add nuw nsw i32 %5076, %5075
  %5078 = icmp eq i32 %5077, 2
  %5079 = zext i1 %5078 to i8
  store i8 %5079, i8* %49, align 1
  %5080 = icmp ne i8 %5072, 0
  %5081 = xor i1 %5080, %5078
  %.v256 = select i1 %5081, i64 18, i64 101
  %5082 = add i64 %5045, %.v256
  store i64 %5082, i64* %3, align 8
  br i1 %5081, label %block_454609, label %block_.L_45465c

block_454609:                                     ; preds = %block_.L_4545f7
  %5083 = add i64 %5082, 7
  store i64 %5083, i64* %3, align 8
  %5084 = load i32, i32* %5049, align 4
  %5085 = sext i32 %5084 to i64
  store i64 %5085, i64* %RAX.i223, align 8
  %5086 = shl nsw i64 %5085, 2
  %5087 = add i64 %5046, -20736
  %5088 = add i64 %5087, %5086
  %5089 = add i64 %5082, 14
  store i64 %5089, i64* %3, align 8
  %5090 = inttoptr i64 %5088 to i32*
  %5091 = load i32, i32* %5090, align 4
  %5092 = zext i32 %5091 to i64
  store i64 %5092, i64* %RCX.i2266, align 8
  %5093 = add i64 %5046, -20872
  %5094 = add i64 %5082, 20
  store i64 %5094, i64* %3, align 8
  %5095 = inttoptr i64 %5093 to i32*
  %5096 = load i32, i32* %5095, align 4
  %5097 = sub i32 %5091, %5096
  %5098 = icmp ult i32 %5091, %5096
  %5099 = zext i1 %5098 to i8
  store i8 %5099, i8* %25, align 1
  %5100 = and i32 %5097, 255
  %5101 = tail call i32 @llvm.ctpop.i32(i32 %5100)
  %5102 = trunc i32 %5101 to i8
  %5103 = and i8 %5102, 1
  %5104 = xor i8 %5103, 1
  store i8 %5104, i8* %32, align 1
  %5105 = xor i32 %5096, %5091
  %5106 = xor i32 %5105, %5097
  %5107 = lshr i32 %5106, 4
  %5108 = trunc i32 %5107 to i8
  %5109 = and i8 %5108, 1
  store i8 %5109, i8* %37, align 1
  %5110 = icmp eq i32 %5097, 0
  %5111 = zext i1 %5110 to i8
  store i8 %5111, i8* %40, align 1
  %5112 = lshr i32 %5097, 31
  %5113 = trunc i32 %5112 to i8
  store i8 %5113, i8* %43, align 1
  %5114 = lshr i32 %5091, 31
  %5115 = lshr i32 %5096, 31
  %5116 = xor i32 %5115, %5114
  %5117 = xor i32 %5112, %5114
  %5118 = add nuw nsw i32 %5117, %5116
  %5119 = icmp eq i32 %5118, 2
  %5120 = zext i1 %5119 to i8
  store i8 %5120, i8* %49, align 1
  %5121 = icmp ne i8 %5113, 0
  %5122 = xor i1 %5121, %5119
  %.v258 = select i1 %5122, i64 26, i64 58
  %5123 = add i64 %5082, %.v258
  store i64 %5123, i64* %3, align 8
  br i1 %5122, label %block_454623, label %block_.L_454643

block_454623:                                     ; preds = %block_454609
  %5124 = add i64 %5123, 7
  store i64 %5124, i64* %3, align 8
  %5125 = load i32, i32* %5049, align 4
  %5126 = sext i32 %5125 to i64
  store i64 %5126, i64* %RAX.i223, align 8
  %5127 = shl nsw i64 %5126, 2
  %5128 = add i64 %5087, %5127
  %5129 = add i64 %5123, 14
  store i64 %5129, i64* %3, align 8
  %5130 = inttoptr i64 %5128 to i32*
  %5131 = load i32, i32* %5130, align 4
  %5132 = zext i32 %5131 to i64
  store i64 %5132, i64* %RCX.i2266, align 8
  %5133 = add i64 %5123, 20
  store i64 %5133, i64* %3, align 8
  store i32 %5131, i32* %5095, align 4
  %5134 = load i64, i64* %RBP.i, align 8
  %5135 = add i64 %5134, -20796
  %5136 = load i64, i64* %3, align 8
  %5137 = add i64 %5136, 6
  store i64 %5137, i64* %3, align 8
  %5138 = inttoptr i64 %5135 to i32*
  %5139 = load i32, i32* %5138, align 4
  %5140 = zext i32 %5139 to i64
  store i64 %5140, i64* %RCX.i2266, align 8
  %5141 = add i64 %5134, -20876
  %5142 = add i64 %5136, 12
  store i64 %5142, i64* %3, align 8
  %5143 = inttoptr i64 %5141 to i32*
  store i32 %5139, i32* %5143, align 4
  %.pre167 = load i64, i64* %3, align 8
  %.pre168 = load i64, i64* %RBP.i, align 8
  br label %block_.L_454643

block_.L_454643:                                  ; preds = %block_454609, %block_454623
  %5144 = phi i64 [ %5046, %block_454609 ], [ %.pre168, %block_454623 ]
  %5145 = phi i64 [ %5123, %block_454609 ], [ %.pre167, %block_454623 ]
  %5146 = add i64 %5144, -20796
  %5147 = add i64 %5145, 11
  store i64 %5147, i64* %3, align 8
  %5148 = inttoptr i64 %5146 to i32*
  %5149 = load i32, i32* %5148, align 4
  %5150 = add i32 %5149, 1
  %5151 = zext i32 %5150 to i64
  store i64 %5151, i64* %RAX.i223, align 8
  %5152 = icmp eq i32 %5149, -1
  %5153 = icmp eq i32 %5150, 0
  %5154 = or i1 %5152, %5153
  %5155 = zext i1 %5154 to i8
  store i8 %5155, i8* %25, align 1
  %5156 = and i32 %5150, 255
  %5157 = tail call i32 @llvm.ctpop.i32(i32 %5156)
  %5158 = trunc i32 %5157 to i8
  %5159 = and i8 %5158, 1
  %5160 = xor i8 %5159, 1
  store i8 %5160, i8* %32, align 1
  %5161 = xor i32 %5150, %5149
  %5162 = lshr i32 %5161, 4
  %5163 = trunc i32 %5162 to i8
  %5164 = and i8 %5163, 1
  store i8 %5164, i8* %37, align 1
  %5165 = zext i1 %5153 to i8
  store i8 %5165, i8* %40, align 1
  %5166 = lshr i32 %5150, 31
  %5167 = trunc i32 %5166 to i8
  store i8 %5167, i8* %43, align 1
  %5168 = lshr i32 %5149, 31
  %5169 = xor i32 %5166, %5168
  %5170 = add nuw nsw i32 %5169, %5166
  %5171 = icmp eq i32 %5170, 2
  %5172 = zext i1 %5171 to i8
  store i8 %5172, i8* %49, align 1
  %5173 = add i64 %5145, 20
  store i64 %5173, i64* %3, align 8
  store i32 %5150, i32* %5148, align 4
  %5174 = load i64, i64* %3, align 8
  %5175 = add i64 %5174, -96
  store i64 %5175, i64* %3, align 8
  br label %block_.L_4545f7

block_.L_45465c:                                  ; preds = %block_.L_4545f7
  %5176 = add i64 %5046, -20876
  %5177 = add i64 %5082, 6
  store i64 %5177, i64* %3, align 8
  %5178 = inttoptr i64 %5176 to i32*
  %5179 = load i32, i32* %5178, align 4
  %5180 = zext i32 %5179 to i64
  store i64 %5180, i64* %RAX.i223, align 8
  %5181 = add i64 %5046, -20792
  %5182 = add i64 %5082, 12
  store i64 %5182, i64* %3, align 8
  %5183 = inttoptr i64 %5181 to i32*
  %5184 = load i32, i32* %5183, align 4
  %5185 = sub i32 %5179, %5184
  %5186 = icmp ult i32 %5179, %5184
  %5187 = zext i1 %5186 to i8
  store i8 %5187, i8* %25, align 1
  %5188 = and i32 %5185, 255
  %5189 = tail call i32 @llvm.ctpop.i32(i32 %5188)
  %5190 = trunc i32 %5189 to i8
  %5191 = and i8 %5190, 1
  %5192 = xor i8 %5191, 1
  store i8 %5192, i8* %32, align 1
  %5193 = xor i32 %5184, %5179
  %5194 = xor i32 %5193, %5185
  %5195 = lshr i32 %5194, 4
  %5196 = trunc i32 %5195 to i8
  %5197 = and i8 %5196, 1
  store i8 %5197, i8* %37, align 1
  %5198 = icmp eq i32 %5185, 0
  %5199 = zext i1 %5198 to i8
  store i8 %5199, i8* %40, align 1
  %5200 = lshr i32 %5185, 31
  %5201 = trunc i32 %5200 to i8
  store i8 %5201, i8* %43, align 1
  %5202 = lshr i32 %5179, 31
  %5203 = lshr i32 %5184, 31
  %5204 = xor i32 %5203, %5202
  %5205 = xor i32 %5200, %5202
  %5206 = add nuw nsw i32 %5205, %5204
  %5207 = icmp eq i32 %5206, 2
  %5208 = zext i1 %5207 to i8
  store i8 %5208, i8* %49, align 1
  %.v257 = select i1 %5198, i64 154, i64 18
  %5209 = add i64 %5082, %.v257
  store i64 %5209, i64* %3, align 8
  br i1 %5198, label %block_.L_4546f6, label %block_45466e

block_45466e:                                     ; preds = %block_.L_45465c
  %5210 = add i64 %5046, -40
  %5211 = add i64 %5209, 4
  store i64 %5211, i64* %3, align 8
  %5212 = inttoptr i64 %5210 to i64*
  %5213 = load i64, i64* %5212, align 8
  store i64 %5213, i64* %RAX.i223, align 8
  %5214 = add i64 %5209, 11
  store i64 %5214, i64* %3, align 8
  %5215 = load i32, i32* %5183, align 4
  %5216 = sext i32 %5215 to i64
  store i64 %5216, i64* %RCX.i2266, align 8
  %5217 = shl nsw i64 %5216, 2
  %5218 = add i64 %5217, %5213
  %5219 = add i64 %5209, 14
  store i64 %5219, i64* %3, align 8
  %5220 = inttoptr i64 %5218 to i32*
  %5221 = load i32, i32* %5220, align 4
  %5222 = zext i32 %5221 to i64
  store i64 %5222, i64* %RDX.i2258, align 8
  %5223 = add i64 %5046, -20880
  %5224 = add i64 %5209, 20
  store i64 %5224, i64* %3, align 8
  %5225 = inttoptr i64 %5223 to i32*
  store i32 %5221, i32* %5225, align 4
  %5226 = load i64, i64* %RBP.i, align 8
  %5227 = add i64 %5226, -20792
  %5228 = load i64, i64* %3, align 8
  %5229 = add i64 %5228, 7
  store i64 %5229, i64* %3, align 8
  %5230 = inttoptr i64 %5227 to i32*
  %5231 = load i32, i32* %5230, align 4
  %5232 = sext i32 %5231 to i64
  store i64 %5232, i64* %RAX.i223, align 8
  %5233 = shl nsw i64 %5232, 2
  %5234 = add i64 %5226, -20736
  %5235 = add i64 %5234, %5233
  %5236 = add i64 %5228, 14
  store i64 %5236, i64* %3, align 8
  %5237 = inttoptr i64 %5235 to i32*
  %5238 = load i32, i32* %5237, align 4
  %5239 = zext i32 %5238 to i64
  store i64 %5239, i64* %RDX.i2258, align 8
  %5240 = add i64 %5226, -20884
  %5241 = add i64 %5228, 20
  store i64 %5241, i64* %3, align 8
  %5242 = inttoptr i64 %5240 to i32*
  store i32 %5238, i32* %5242, align 4
  %5243 = load i64, i64* %RBP.i, align 8
  %5244 = add i64 %5243, -40
  %5245 = load i64, i64* %3, align 8
  %5246 = add i64 %5245, 4
  store i64 %5246, i64* %3, align 8
  %5247 = inttoptr i64 %5244 to i64*
  %5248 = load i64, i64* %5247, align 8
  store i64 %5248, i64* %RAX.i223, align 8
  %5249 = add i64 %5243, -20876
  %5250 = add i64 %5245, 11
  store i64 %5250, i64* %3, align 8
  %5251 = inttoptr i64 %5249 to i32*
  %5252 = load i32, i32* %5251, align 4
  %5253 = sext i32 %5252 to i64
  store i64 %5253, i64* %RCX.i2266, align 8
  %5254 = shl nsw i64 %5253, 2
  %5255 = add i64 %5254, %5248
  %5256 = add i64 %5245, 14
  store i64 %5256, i64* %3, align 8
  %5257 = inttoptr i64 %5255 to i32*
  %5258 = load i32, i32* %5257, align 4
  %5259 = zext i32 %5258 to i64
  store i64 %5259, i64* %RDX.i2258, align 8
  %5260 = add i64 %5245, 18
  store i64 %5260, i64* %3, align 8
  %5261 = load i64, i64* %5247, align 8
  store i64 %5261, i64* %RAX.i223, align 8
  %5262 = add i64 %5243, -20792
  %5263 = add i64 %5245, 25
  store i64 %5263, i64* %3, align 8
  %5264 = inttoptr i64 %5262 to i32*
  %5265 = load i32, i32* %5264, align 4
  %5266 = sext i32 %5265 to i64
  store i64 %5266, i64* %RCX.i2266, align 8
  %5267 = shl nsw i64 %5266, 2
  %5268 = add i64 %5267, %5261
  %5269 = add i64 %5245, 28
  store i64 %5269, i64* %3, align 8
  %5270 = inttoptr i64 %5268 to i32*
  store i32 %5258, i32* %5270, align 4
  %5271 = load i64, i64* %RBP.i, align 8
  %5272 = add i64 %5271, -20876
  %5273 = load i64, i64* %3, align 8
  %5274 = add i64 %5273, 7
  store i64 %5274, i64* %3, align 8
  %5275 = inttoptr i64 %5272 to i32*
  %5276 = load i32, i32* %5275, align 4
  %5277 = sext i32 %5276 to i64
  store i64 %5277, i64* %RAX.i223, align 8
  %5278 = shl nsw i64 %5277, 2
  %5279 = add i64 %5271, -20736
  %5280 = add i64 %5279, %5278
  %5281 = add i64 %5273, 14
  store i64 %5281, i64* %3, align 8
  %5282 = inttoptr i64 %5280 to i32*
  %5283 = load i32, i32* %5282, align 4
  %5284 = zext i32 %5283 to i64
  store i64 %5284, i64* %RDX.i2258, align 8
  %5285 = add i64 %5271, -20792
  %5286 = add i64 %5273, 21
  store i64 %5286, i64* %3, align 8
  %5287 = inttoptr i64 %5285 to i32*
  %5288 = load i32, i32* %5287, align 4
  %5289 = sext i32 %5288 to i64
  store i64 %5289, i64* %RAX.i223, align 8
  %5290 = shl nsw i64 %5289, 2
  %5291 = add i64 %5279, %5290
  %5292 = add i64 %5273, 28
  store i64 %5292, i64* %3, align 8
  %5293 = inttoptr i64 %5291 to i32*
  store i32 %5283, i32* %5293, align 4
  %5294 = load i64, i64* %RBP.i, align 8
  %5295 = add i64 %5294, -20880
  %5296 = load i64, i64* %3, align 8
  %5297 = add i64 %5296, 6
  store i64 %5297, i64* %3, align 8
  %5298 = inttoptr i64 %5295 to i32*
  %5299 = load i32, i32* %5298, align 4
  %5300 = zext i32 %5299 to i64
  store i64 %5300, i64* %RDX.i2258, align 8
  %5301 = add i64 %5294, -40
  %5302 = add i64 %5296, 10
  store i64 %5302, i64* %3, align 8
  %5303 = inttoptr i64 %5301 to i64*
  %5304 = load i64, i64* %5303, align 8
  store i64 %5304, i64* %RAX.i223, align 8
  %5305 = add i64 %5294, -20876
  %5306 = add i64 %5296, 17
  store i64 %5306, i64* %3, align 8
  %5307 = inttoptr i64 %5305 to i32*
  %5308 = load i32, i32* %5307, align 4
  %5309 = sext i32 %5308 to i64
  store i64 %5309, i64* %RCX.i2266, align 8
  %5310 = shl nsw i64 %5309, 2
  %5311 = add i64 %5310, %5304
  %5312 = add i64 %5296, 20
  store i64 %5312, i64* %3, align 8
  %5313 = inttoptr i64 %5311 to i32*
  store i32 %5299, i32* %5313, align 4
  %5314 = load i64, i64* %RBP.i, align 8
  %5315 = add i64 %5314, -20884
  %5316 = load i64, i64* %3, align 8
  %5317 = add i64 %5316, 6
  store i64 %5317, i64* %3, align 8
  %5318 = inttoptr i64 %5315 to i32*
  %5319 = load i32, i32* %5318, align 4
  %5320 = zext i32 %5319 to i64
  store i64 %5320, i64* %RDX.i2258, align 8
  %5321 = add i64 %5314, -20876
  %5322 = add i64 %5316, 13
  store i64 %5322, i64* %3, align 8
  %5323 = inttoptr i64 %5321 to i32*
  %5324 = load i32, i32* %5323, align 4
  %5325 = sext i32 %5324 to i64
  store i64 %5325, i64* %RAX.i223, align 8
  %5326 = shl nsw i64 %5325, 2
  %5327 = add i64 %5314, -20736
  %5328 = add i64 %5327, %5326
  %5329 = add i64 %5316, 20
  store i64 %5329, i64* %3, align 8
  %5330 = inttoptr i64 %5328 to i32*
  store i32 %5319, i32* %5330, align 4
  %.pre165 = load i64, i64* %3, align 8
  %.pre166 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4546f6

block_.L_4546f6:                                  ; preds = %block_45466e, %block_.L_45465c
  %5331 = phi i64 [ %.pre166, %block_45466e ], [ %5046, %block_.L_45465c ]
  %5332 = phi i64 [ %.pre165, %block_45466e ], [ %5209, %block_.L_45465c ]
  %5333 = add i64 %5331, -20792
  %5334 = add i64 %5332, 11
  store i64 %5334, i64* %3, align 8
  %5335 = inttoptr i64 %5333 to i32*
  %5336 = load i32, i32* %5335, align 4
  %5337 = add i32 %5336, 1
  %5338 = zext i32 %5337 to i64
  store i64 %5338, i64* %RAX.i223, align 8
  %5339 = icmp eq i32 %5336, -1
  %5340 = icmp eq i32 %5337, 0
  %5341 = or i1 %5339, %5340
  %5342 = zext i1 %5341 to i8
  store i8 %5342, i8* %25, align 1
  %5343 = and i32 %5337, 255
  %5344 = tail call i32 @llvm.ctpop.i32(i32 %5343)
  %5345 = trunc i32 %5344 to i8
  %5346 = and i8 %5345, 1
  %5347 = xor i8 %5346, 1
  store i8 %5347, i8* %32, align 1
  %5348 = xor i32 %5337, %5336
  %5349 = lshr i32 %5348, 4
  %5350 = trunc i32 %5349 to i8
  %5351 = and i8 %5350, 1
  store i8 %5351, i8* %37, align 1
  %5352 = zext i1 %5340 to i8
  store i8 %5352, i8* %40, align 1
  %5353 = lshr i32 %5337, 31
  %5354 = trunc i32 %5353 to i8
  store i8 %5354, i8* %43, align 1
  %5355 = lshr i32 %5336, 31
  %5356 = xor i32 %5353, %5355
  %5357 = add nuw nsw i32 %5356, %5353
  %5358 = icmp eq i32 %5357, 2
  %5359 = zext i1 %5358 to i8
  store i8 %5359, i8* %49, align 1
  %5360 = add i64 %5332, 20
  store i64 %5360, i64* %3, align 8
  store i32 %5337, i32* %5335, align 4
  %5361 = load i64, i64* %3, align 8
  %5362 = add i64 %5361, -340
  store i64 %5362, i64* %3, align 8
  br label %block_.L_4545b6

block_.L_45470f:                                  ; preds = %block_.L_4545b6
  %5363 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %25, align 1
  %5364 = and i32 %5363, 255
  %5365 = tail call i32 @llvm.ctpop.i32(i32 %5364)
  %5366 = trunc i32 %5365 to i8
  %5367 = and i8 %5366, 1
  %5368 = xor i8 %5367, 1
  store i8 %5368, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %5369 = icmp eq i32 %5363, 0
  %5370 = zext i1 %5369 to i8
  store i8 %5370, i8* %40, align 1
  %5371 = lshr i32 %5363, 31
  %5372 = trunc i32 %5371 to i8
  store i8 %5372, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %5373 = icmp ne i8 %5372, 0
  %5374 = or i1 %5369, %5373
  %.v252 = select i1 %5374, i64 141, i64 14
  %5375 = add i64 %4989, %.v252
  store i64 %5375, i64* %3, align 8
  br i1 %5374, label %block_.L_45479c, label %block_45471d

block_45471d:                                     ; preds = %block_.L_45470f
  store i64 ptrtoint (%G__0x57f964_type* @G__0x57f964 to i64), i64* %RDI.i2208, align 8
  store i8 0, i8* %AL.i930.pre-phi, align 1
  %5376 = add i64 %5375, -10605
  %5377 = add i64 %5375, 17
  %5378 = load i64, i64* %6, align 8
  %5379 = add i64 %5378, -8
  %5380 = inttoptr i64 %5379 to i64*
  store i64 %5377, i64* %5380, align 8
  store i64 %5379, i64* %6, align 8
  store i64 %5376, i64* %3, align 8
  %call2_454729 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %5376, %struct.Memory* %MEMORY.58)
  %5381 = load i64, i64* %RBP.i, align 8
  %5382 = add i64 %5381, -20792
  %5383 = load i64, i64* %3, align 8
  %5384 = add i64 %5383, 10
  store i64 %5384, i64* %3, align 8
  %5385 = inttoptr i64 %5382 to i32*
  store i32 0, i32* %5385, align 4
  %5386 = load i64, i64* %RBP.i, align 8
  %5387 = add i64 %5386, -21492
  %5388 = load i32, i32* %EAX.i2180, align 4
  %5389 = load i64, i64* %3, align 8
  %5390 = add i64 %5389, 6
  store i64 %5390, i64* %3, align 8
  %5391 = inttoptr i64 %5387 to i32*
  store i32 %5388, i32* %5391, align 4
  %.pre152 = load i64, i64* %3, align 8
  br label %block_.L_45473e

block_.L_45473e:                                  ; preds = %block_454750, %block_45471d
  %5392 = phi i64 [ %5495, %block_454750 ], [ %.pre152, %block_45471d ]
  %5393 = load i64, i64* %RBP.i, align 8
  %5394 = add i64 %5393, -20792
  %5395 = add i64 %5392, 6
  store i64 %5395, i64* %3, align 8
  %5396 = inttoptr i64 %5394 to i32*
  %5397 = load i32, i32* %5396, align 4
  %5398 = zext i32 %5397 to i64
  store i64 %5398, i64* %RAX.i223, align 8
  %5399 = add i64 %5393, -20740
  %5400 = add i64 %5392, 12
  store i64 %5400, i64* %3, align 8
  %5401 = inttoptr i64 %5399 to i32*
  %5402 = load i32, i32* %5401, align 4
  %5403 = sub i32 %5397, %5402
  %5404 = icmp ult i32 %5397, %5402
  %5405 = zext i1 %5404 to i8
  store i8 %5405, i8* %25, align 1
  %5406 = and i32 %5403, 255
  %5407 = tail call i32 @llvm.ctpop.i32(i32 %5406)
  %5408 = trunc i32 %5407 to i8
  %5409 = and i8 %5408, 1
  %5410 = xor i8 %5409, 1
  store i8 %5410, i8* %32, align 1
  %5411 = xor i32 %5402, %5397
  %5412 = xor i32 %5411, %5403
  %5413 = lshr i32 %5412, 4
  %5414 = trunc i32 %5413 to i8
  %5415 = and i8 %5414, 1
  store i8 %5415, i8* %37, align 1
  %5416 = icmp eq i32 %5403, 0
  %5417 = zext i1 %5416 to i8
  store i8 %5417, i8* %40, align 1
  %5418 = lshr i32 %5403, 31
  %5419 = trunc i32 %5418 to i8
  store i8 %5419, i8* %43, align 1
  %5420 = lshr i32 %5397, 31
  %5421 = lshr i32 %5402, 31
  %5422 = xor i32 %5421, %5420
  %5423 = xor i32 %5418, %5420
  %5424 = add nuw nsw i32 %5423, %5422
  %5425 = icmp eq i32 %5424, 2
  %5426 = zext i1 %5425 to i8
  store i8 %5426, i8* %49, align 1
  %5427 = icmp ne i8 %5419, 0
  %5428 = xor i1 %5427, %5425
  %.v253 = select i1 %5428, i64 18, i64 89
  %5429 = add i64 %5392, %.v253
  store i64 %5429, i64* %3, align 8
  br i1 %5428, label %block_454750, label %block_.L_454797

block_454750:                                     ; preds = %block_.L_45473e
  store i64 ptrtoint (%G__0x57f975_type* @G__0x57f975 to i64), i64* %RDI.i2208, align 8
  %5430 = add i64 %5393, -40
  %5431 = add i64 %5429, 14
  store i64 %5431, i64* %3, align 8
  %5432 = inttoptr i64 %5430 to i64*
  %5433 = load i64, i64* %5432, align 8
  store i64 %5433, i64* %RAX.i223, align 8
  %5434 = add i64 %5429, 21
  store i64 %5434, i64* %3, align 8
  %5435 = load i32, i32* %5396, align 4
  %5436 = sext i32 %5435 to i64
  store i64 %5436, i64* %RCX.i2266, align 8
  %5437 = shl nsw i64 %5436, 2
  %5438 = add i64 %5437, %5433
  %5439 = add i64 %5429, 24
  store i64 %5439, i64* %3, align 8
  %5440 = inttoptr i64 %5438 to i32*
  %5441 = load i32, i32* %5440, align 4
  %5442 = zext i32 %5441 to i64
  store i64 %5442, i64* %RSI.i2205, align 8
  %5443 = add i64 %5429, 31
  store i64 %5443, i64* %3, align 8
  %5444 = load i32, i32* %5396, align 4
  %5445 = sext i32 %5444 to i64
  store i64 %5445, i64* %RAX.i223, align 8
  %5446 = shl nsw i64 %5445, 2
  %5447 = add i64 %5393, -20736
  %5448 = add i64 %5447, %5446
  %5449 = add i64 %5429, 38
  store i64 %5449, i64* %3, align 8
  %5450 = inttoptr i64 %5448 to i32*
  %5451 = load i32, i32* %5450, align 4
  %5452 = zext i32 %5451 to i64
  store i64 %5452, i64* %RDX.i2258, align 8
  store i8 0, i8* %AL.i930.pre-phi, align 1
  %5453 = add i64 %5429, -10656
  %5454 = add i64 %5429, 45
  %5455 = load i64, i64* %6, align 8
  %5456 = add i64 %5455, -8
  %5457 = inttoptr i64 %5456 to i64*
  store i64 %5454, i64* %5457, align 8
  store i64 %5456, i64* %6, align 8
  store i64 %5453, i64* %3, align 8
  %call2_454778 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %5453, %struct.Memory* %call2_454729)
  %5458 = load i64, i64* %RBP.i, align 8
  %5459 = add i64 %5458, -21496
  %5460 = load i32, i32* %EAX.i2180, align 4
  %5461 = load i64, i64* %3, align 8
  %5462 = add i64 %5461, 6
  store i64 %5462, i64* %3, align 8
  %5463 = inttoptr i64 %5459 to i32*
  store i32 %5460, i32* %5463, align 4
  %5464 = load i64, i64* %RBP.i, align 8
  %5465 = add i64 %5464, -20792
  %5466 = load i64, i64* %3, align 8
  %5467 = add i64 %5466, 6
  store i64 %5467, i64* %3, align 8
  %5468 = inttoptr i64 %5465 to i32*
  %5469 = load i32, i32* %5468, align 4
  %5470 = add i32 %5469, 1
  %5471 = zext i32 %5470 to i64
  store i64 %5471, i64* %RAX.i223, align 8
  %5472 = icmp eq i32 %5469, -1
  %5473 = icmp eq i32 %5470, 0
  %5474 = or i1 %5472, %5473
  %5475 = zext i1 %5474 to i8
  store i8 %5475, i8* %25, align 1
  %5476 = and i32 %5470, 255
  %5477 = tail call i32 @llvm.ctpop.i32(i32 %5476)
  %5478 = trunc i32 %5477 to i8
  %5479 = and i8 %5478, 1
  %5480 = xor i8 %5479, 1
  store i8 %5480, i8* %32, align 1
  %5481 = xor i32 %5470, %5469
  %5482 = lshr i32 %5481, 4
  %5483 = trunc i32 %5482 to i8
  %5484 = and i8 %5483, 1
  store i8 %5484, i8* %37, align 1
  %5485 = zext i1 %5473 to i8
  store i8 %5485, i8* %40, align 1
  %5486 = lshr i32 %5470, 31
  %5487 = trunc i32 %5486 to i8
  store i8 %5487, i8* %43, align 1
  %5488 = lshr i32 %5469, 31
  %5489 = xor i32 %5486, %5488
  %5490 = add nuw nsw i32 %5489, %5486
  %5491 = icmp eq i32 %5490, 2
  %5492 = zext i1 %5491 to i8
  store i8 %5492, i8* %49, align 1
  %5493 = add i64 %5466, 15
  store i64 %5493, i64* %3, align 8
  store i32 %5470, i32* %5468, align 4
  %5494 = load i64, i64* %3, align 8
  %5495 = add i64 %5494, -84
  store i64 %5495, i64* %3, align 8
  br label %block_.L_45473e

block_.L_454797:                                  ; preds = %block_.L_45473e
  %5496 = add i64 %5429, 5
  store i64 %5496, i64* %3, align 8
  br label %block_.L_45479c

block_.L_45479c:                                  ; preds = %block_.L_454797, %block_.L_45470f
  %5497 = phi i64 [ %4953, %block_.L_45470f ], [ %5393, %block_.L_454797 ]
  %5498 = phi i64 [ %5375, %block_.L_45470f ], [ %5496, %block_.L_454797 ]
  %MEMORY.82 = phi %struct.Memory* [ %MEMORY.58, %block_.L_45470f ], [ %call2_454729, %block_.L_454797 ]
  %5499 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %25, align 1
  %5500 = trunc i64 %5499 to i32
  %5501 = and i32 %5500, 255
  %5502 = tail call i32 @llvm.ctpop.i32(i32 %5501)
  %5503 = trunc i32 %5502 to i8
  %5504 = and i8 %5503, 1
  %5505 = xor i8 %5504, 1
  store i8 %5505, i8* %32, align 1
  store i8 0, i8* %37, align 1
  %5506 = icmp eq i64 %5499, 0
  %5507 = zext i1 %5506 to i8
  store i8 %5507, i8* %40, align 1
  %5508 = lshr i64 %5499, 63
  %5509 = trunc i64 %5508 to i8
  store i8 %5509, i8* %43, align 1
  store i8 0, i8* %49, align 1
  %.v254 = select i1 %5506, i64 410, i64 15
  %5510 = add i64 %5498, %.v254
  store i64 %5510, i64* %3, align 8
  br i1 %5506, label %block_.L_454936, label %block_4547ab

block_4547ab:                                     ; preds = %block_.L_45479c
  store i64 ptrtoint (%G__0x57f983_type* @G__0x57f983 to i64), i64* %RSI.i2205, align 8
  %5511 = add i64 %5497, -21404
  store i64 %5511, i64* %RCX.i2266, align 8
  store i64 ptrtoint (%G__0x57f97f_type* @G__0x57f97f to i64), i64* %RAX.i223, align 8
  store i64 ptrtoint (%G__0x58898d_type* @G__0x58898d to i64), i64* %RDX.i2258, align 8
  %5512 = add i64 %5497, -21392
  store i64 %5512, i64* %RDI.i2208, align 8
  %R8D.i238 = bitcast %union.anon* %80 to i32*
  %5513 = add i64 %5497, -28
  %5514 = add i64 %5510, 48
  store i64 %5514, i64* %3, align 8
  %5515 = inttoptr i64 %5513 to i32*
  %5516 = load i32, i32* %5515, align 4
  %5517 = zext i32 %5516 to i64
  store i64 %5517, i64* %R8.i2264, align 8
  %5518 = add i64 %5497, -52
  %5519 = add i64 %5510, 52
  store i64 %5519, i64* %3, align 8
  %5520 = inttoptr i64 %5518 to i32*
  %5521 = load i32, i32* %5520, align 4
  %5522 = sub i32 %5516, %5521
  %5523 = icmp ult i32 %5516, %5521
  %5524 = zext i1 %5523 to i8
  store i8 %5524, i8* %25, align 1
  %5525 = and i32 %5522, 255
  %5526 = tail call i32 @llvm.ctpop.i32(i32 %5525)
  %5527 = trunc i32 %5526 to i8
  %5528 = and i8 %5527, 1
  %5529 = xor i8 %5528, 1
  store i8 %5529, i8* %32, align 1
  %5530 = xor i32 %5521, %5516
  %5531 = xor i32 %5530, %5522
  %5532 = lshr i32 %5531, 4
  %5533 = trunc i32 %5532 to i8
  %5534 = and i8 %5533, 1
  store i8 %5534, i8* %37, align 1
  %5535 = icmp eq i32 %5522, 0
  %5536 = zext i1 %5535 to i8
  store i8 %5536, i8* %40, align 1
  %5537 = lshr i32 %5522, 31
  %5538 = trunc i32 %5537 to i8
  store i8 %5538, i8* %43, align 1
  %5539 = lshr i32 %5516, 31
  %5540 = lshr i32 %5521, 31
  %5541 = xor i32 %5540, %5539
  %5542 = xor i32 %5537, %5539
  %5543 = add nuw nsw i32 %5542, %5541
  %5544 = icmp eq i32 %5543, 2
  %5545 = zext i1 %5544 to i8
  store i8 %5545, i8* %49, align 1
  %5546 = select i1 %5535, i64 ptrtoint (%G__0x58898d_type* @G__0x58898d to i64), i64 ptrtoint (%G__0x57f97f_type* @G__0x57f97f to i64)
  store i64 %5546, i64* %RAX.i223, align 8
  store i64 %5546, i64* %RDX.i2258, align 8
  store i8 0, i8* %AL.i930.pre-phi, align 1
  %5547 = add i64 %5510, -341467
  %5548 = add i64 %5510, 66
  %5549 = load i64, i64* %6, align 8
  %5550 = add i64 %5549, -8
  %5551 = inttoptr i64 %5550 to i64*
  store i64 %5548, i64* %5551, align 8
  store i64 %5550, i64* %6, align 8
  store i64 %5547, i64* %3, align 8
  %5552 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %MEMORY.82)
  %5553 = load i64, i64* %RBP.i, align 8
  %5554 = add i64 %5553, -21392
  %5555 = load i64, i64* %3, align 8
  store i64 %5554, i64* %RCX.i2266, align 8
  %5556 = add i64 %5553, -21404
  %5557 = add i64 %5555, 14
  store i64 %5557, i64* %3, align 8
  %5558 = inttoptr i64 %5556 to i32*
  %5559 = load i32, i32* %5558, align 4
  %5560 = sext i32 %5559 to i64
  store i64 %5560, i64* %RDX.i2258, align 8
  %5561 = add i64 %5554, %5560
  store i64 %5561, i64* %RCX.i2266, align 8
  %5562 = icmp ult i64 %5561, %5554
  %5563 = icmp ult i64 %5561, %5560
  %5564 = or i1 %5562, %5563
  %5565 = zext i1 %5564 to i8
  store i8 %5565, i8* %25, align 1
  %5566 = trunc i64 %5561 to i32
  %5567 = and i32 %5566, 255
  %5568 = tail call i32 @llvm.ctpop.i32(i32 %5567)
  %5569 = trunc i32 %5568 to i8
  %5570 = and i8 %5569, 1
  %5571 = xor i8 %5570, 1
  store i8 %5571, i8* %32, align 1
  %5572 = xor i64 %5554, %5560
  %5573 = xor i64 %5572, %5561
  %5574 = lshr i64 %5573, 4
  %5575 = trunc i64 %5574 to i8
  %5576 = and i8 %5575, 1
  store i8 %5576, i8* %37, align 1
  %5577 = icmp eq i64 %5561, 0
  %5578 = zext i1 %5577 to i8
  store i8 %5578, i8* %40, align 1
  %5579 = lshr i64 %5561, 63
  %5580 = trunc i64 %5579 to i8
  store i8 %5580, i8* %43, align 1
  %5581 = lshr i64 %5554, 63
  %5582 = lshr i64 %5560, 63
  %5583 = xor i64 %5579, %5581
  %5584 = xor i64 %5579, %5582
  %5585 = add nuw nsw i64 %5583, %5584
  %5586 = icmp eq i64 %5585, 2
  %5587 = zext i1 %5586 to i8
  store i8 %5587, i8* %49, align 1
  %5588 = add i64 %5553, -21400
  %5589 = add i64 %5555, 24
  store i64 %5589, i64* %3, align 8
  %5590 = inttoptr i64 %5588 to i64*
  store i64 %5561, i64* %5590, align 8
  %5591 = load i64, i64* %RBP.i, align 8
  %5592 = add i64 %5591, -20792
  %5593 = load i64, i64* %3, align 8
  %5594 = add i64 %5593, 10
  store i64 %5594, i64* %3, align 8
  %5595 = inttoptr i64 %5592 to i32*
  store i32 0, i32* %5595, align 4
  %5596 = load i64, i64* %RBP.i, align 8
  %5597 = add i64 %5596, -21500
  %5598 = load i32, i32* %EAX.i2180, align 4
  %5599 = load i64, i64* %3, align 8
  %5600 = add i64 %5599, 6
  store i64 %5600, i64* %3, align 8
  %5601 = inttoptr i64 %5597 to i32*
  store i32 %5598, i32* %5601, align 4
  %5602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R10.i156 = getelementptr inbounds %union.anon, %union.anon* %151, i64 0, i32 0
  %5603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D.i151 = bitcast %union.anon* %5603 to i32*
  %5604 = getelementptr inbounds %union.anon, %union.anon* %5603, i64 0, i32 0
  %BL.i133 = bitcast %union.anon* %15 to i8*
  %.pre153 = load i64, i64* %3, align 8
  br label %block_.L_454815

block_.L_454815:                                  ; preds = %routine_idivl__r8d.exit, %block_4547ab
  %5605 = phi i64 [ %.pre153, %block_4547ab ], [ %5998, %routine_idivl__r8d.exit ]
  %MEMORY.83 = phi %struct.Memory* [ %5552, %block_4547ab ], [ %5920, %routine_idivl__r8d.exit ]
  %5606 = load i64, i64* %RBP.i, align 8
  %5607 = add i64 %5606, -20792
  %5608 = add i64 %5605, 6
  store i64 %5608, i64* %3, align 8
  %5609 = inttoptr i64 %5607 to i32*
  %5610 = load i32, i32* %5609, align 4
  %5611 = zext i32 %5610 to i64
  store i64 %5611, i64* %RAX.i223, align 8
  %5612 = add i64 %5606, -20740
  %5613 = add i64 %5605, 12
  store i64 %5613, i64* %3, align 8
  %5614 = inttoptr i64 %5612 to i32*
  %5615 = load i32, i32* %5614, align 4
  %5616 = sub i32 %5610, %5615
  %5617 = icmp ult i32 %5610, %5615
  %5618 = zext i1 %5617 to i8
  store i8 %5618, i8* %25, align 1
  %5619 = and i32 %5616, 255
  %5620 = tail call i32 @llvm.ctpop.i32(i32 %5619)
  %5621 = trunc i32 %5620 to i8
  %5622 = and i8 %5621, 1
  %5623 = xor i8 %5622, 1
  store i8 %5623, i8* %32, align 1
  %5624 = xor i32 %5615, %5610
  %5625 = xor i32 %5624, %5616
  %5626 = lshr i32 %5625, 4
  %5627 = trunc i32 %5626 to i8
  %5628 = and i8 %5627, 1
  store i8 %5628, i8* %37, align 1
  %5629 = icmp eq i32 %5616, 0
  %5630 = zext i1 %5629 to i8
  store i8 %5630, i8* %40, align 1
  %5631 = lshr i32 %5616, 31
  %5632 = trunc i32 %5631 to i8
  store i8 %5632, i8* %43, align 1
  %5633 = lshr i32 %5610, 31
  %5634 = lshr i32 %5615, 31
  %5635 = xor i32 %5634, %5633
  %5636 = xor i32 %5631, %5633
  %5637 = add nuw nsw i32 %5636, %5635
  %5638 = icmp eq i32 %5637, 2
  %5639 = zext i1 %5638 to i8
  store i8 %5639, i8* %49, align 1
  %5640 = icmp ne i8 %5632, 0
  %5641 = xor i1 %5640, %5638
  %.v255 = select i1 %5641, i64 18, i64 269
  %5642 = add i64 %5605, %.v255
  store i64 %5642, i64* %3, align 8
  br i1 %5641, label %block_454827, label %block_.L_454922

block_454827:                                     ; preds = %block_.L_454815
  store i64 ptrtoint (%G__0x57f9a0_type* @G__0x57f9a0 to i64), i64* %RSI.i2205, align 8
  %5643 = add i64 %5606, -21404
  store i64 %5643, i64* %54, align 8
  store i64 20, i64* %RAX.i223, align 8
  %5644 = add i64 %5606, -21400
  %5645 = add i64 %5642, 29
  store i64 %5645, i64* %3, align 8
  %5646 = inttoptr i64 %5644 to i64*
  %5647 = load i64, i64* %5646, align 8
  store i64 %5647, i64* %RDI.i2208, align 8
  %5648 = add i64 %5606, -40
  %5649 = add i64 %5642, 33
  store i64 %5649, i64* %3, align 8
  %5650 = inttoptr i64 %5648 to i64*
  %5651 = load i64, i64* %5650, align 8
  store i64 %5651, i64* %RCX.i2266, align 8
  %5652 = add i64 %5642, 40
  store i64 %5652, i64* %3, align 8
  %5653 = load i32, i32* %5609, align 4
  %5654 = sext i32 %5653 to i64
  store i64 %5654, i64* %RDX.i2258, align 8
  %5655 = shl nsw i64 %5654, 2
  %5656 = add i64 %5655, %5651
  %5657 = add i64 %5642, 44
  store i64 %5657, i64* %3, align 8
  %5658 = inttoptr i64 %5656 to i32*
  %5659 = load i32, i32* %5658, align 4
  %5660 = zext i32 %5659 to i64
  store i64 %5660, i64* %R8.i2264, align 8
  %5661 = add i64 %5606, -21504
  %5662 = add i64 %5642, 50
  store i64 %5662, i64* %3, align 8
  %5663 = inttoptr i64 %5661 to i32*
  store i32 20, i32* %5663, align 4
  %5664 = load i32, i32* %R8D.i238, align 4
  %5665 = zext i32 %5664 to i64
  %5666 = load i64, i64* %3, align 8
  store i64 %5665, i64* %RAX.i223, align 8
  %5667 = sext i32 %5664 to i64
  %5668 = lshr i64 %5667, 32
  store i64 %5668, i64* %5602, align 8
  %5669 = load i64, i64* %RBP.i, align 8
  %5670 = add i64 %5669, -21504
  %5671 = add i64 %5666, 11
  store i64 %5671, i64* %3, align 8
  %5672 = inttoptr i64 %5670 to i32*
  %5673 = load i32, i32* %5672, align 4
  %5674 = zext i32 %5673 to i64
  store i64 %5674, i64* %R8.i2264, align 8
  %5675 = add i64 %5666, 14
  store i64 %5675, i64* %3, align 8
  %5676 = sext i32 %5673 to i64
  %5677 = shl nuw i64 %5668, 32
  %5678 = or i64 %5677, %5665
  %5679 = sdiv i64 %5678, %5676
  %5680 = shl i64 %5679, 32
  %5681 = ashr exact i64 %5680, 32
  %5682 = icmp eq i64 %5679, %5681
  br i1 %5682, label %5685, label %5683

; <label>:5683:                                   ; preds = %block_454827
  %5684 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5675, %struct.Memory* %MEMORY.83)
  %.pre154 = load i64, i64* %RDX.i2258, align 8
  %.pre155 = load i64, i64* %3, align 8
  %.pre156 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__r8d.exit166

; <label>:5685:                                   ; preds = %block_454827
  %5686 = srem i64 %5678, %5676
  %5687 = and i64 %5679, 4294967295
  store i64 %5687, i64* %RAX.i223, align 8
  %5688 = and i64 %5686, 4294967295
  store i64 %5688, i64* %RDX.i2258, align 8
  store i8 0, i8* %25, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %40, align 1
  store i8 0, i8* %43, align 1
  store i8 0, i8* %49, align 1
  br label %routine_idivl__r8d.exit166

routine_idivl__r8d.exit166:                       ; preds = %5685, %5683
  %5689 = phi i64 [ %.pre156, %5683 ], [ %5669, %5685 ]
  %5690 = phi i64 [ %.pre155, %5683 ], [ %5675, %5685 ]
  %5691 = phi i64 [ %.pre154, %5683 ], [ %5688, %5685 ]
  %5692 = phi %struct.Memory* [ %5684, %5683 ], [ %MEMORY.83, %5685 ]
  %5693 = trunc i64 %5691 to i32
  %5694 = add i32 %5693, -1
  %5695 = lshr i32 %5694, 31
  %5696 = add i32 %5693, 64
  %5697 = zext i32 %5696 to i64
  store i64 %5697, i64* %RDX.i2258, align 8
  %5698 = icmp ugt i32 %5694, -66
  %5699 = zext i1 %5698 to i8
  store i8 %5699, i8* %25, align 1
  %5700 = and i32 %5696, 255
  %5701 = tail call i32 @llvm.ctpop.i32(i32 %5700)
  %5702 = trunc i32 %5701 to i8
  %5703 = and i8 %5702, 1
  %5704 = xor i8 %5703, 1
  store i8 %5704, i8* %32, align 1
  %5705 = xor i32 %5696, %5694
  %5706 = lshr i32 %5705, 4
  %5707 = trunc i32 %5706 to i8
  %5708 = and i8 %5707, 1
  store i8 %5708, i8* %37, align 1
  %5709 = icmp eq i32 %5696, 0
  %5710 = zext i1 %5709 to i8
  store i8 %5710, i8* %40, align 1
  %5711 = lshr i32 %5696, 31
  %5712 = trunc i32 %5711 to i8
  store i8 %5712, i8* %43, align 1
  %5713 = xor i32 %5711, %5695
  %5714 = add nuw nsw i32 %5713, %5711
  %5715 = icmp eq i32 %5714, 2
  %5716 = zext i1 %5715 to i8
  store i8 %5716, i8* %49, align 1
  %5717 = add i64 %5689, -40
  %5718 = add i64 %5690, 10
  store i64 %5718, i64* %3, align 8
  %5719 = inttoptr i64 %5717 to i64*
  %5720 = load i64, i64* %5719, align 8
  store i64 %5720, i64* %RCX.i2266, align 8
  %5721 = add i64 %5689, -20792
  %5722 = add i64 %5690, 17
  store i64 %5722, i64* %3, align 8
  %5723 = inttoptr i64 %5721 to i32*
  %5724 = load i32, i32* %5723, align 4
  %5725 = sext i32 %5724 to i64
  store i64 %5725, i64* %R10.i156, align 8
  %5726 = shl nsw i64 %5725, 2
  %5727 = add i64 %5726, %5720
  %5728 = add i64 %5690, 21
  store i64 %5728, i64* %3, align 8
  %5729 = inttoptr i64 %5727 to i32*
  %5730 = load i32, i32* %5729, align 4
  %5731 = zext i32 %5730 to i64
  store i64 %5731, i64* %5604, align 8
  store i64 %5731, i64* %RAX.i223, align 8
  %5732 = add i64 %5689, -21508
  %5733 = add i64 %5690, 30
  store i64 %5733, i64* %3, align 8
  %5734 = inttoptr i64 %5732 to i32*
  store i32 %5696, i32* %5734, align 4
  %5735 = load i64, i64* %3, align 8
  %5736 = load i32, i32* %EAX.i2180, align 8
  %5737 = sext i32 %5736 to i64
  %5738 = lshr i64 %5737, 32
  store i64 %5738, i64* %5602, align 8
  %5739 = load i32, i32* %R8D.i238, align 4
  %5740 = add i64 %5735, 4
  store i64 %5740, i64* %3, align 8
  %5741 = zext i32 %5736 to i64
  %5742 = sext i32 %5739 to i64
  %5743 = shl nuw i64 %5738, 32
  %5744 = or i64 %5743, %5741
  %5745 = sdiv i64 %5744, %5742
  %5746 = shl i64 %5745, 32
  %5747 = ashr exact i64 %5746, 32
  %5748 = icmp eq i64 %5745, %5747
  br i1 %5748, label %5751, label %5749

; <label>:5749:                                   ; preds = %routine_idivl__r8d.exit166
  %5750 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5740, %struct.Memory* %5692)
  %.pre157 = load i64, i64* %RDX.i2258, align 8
  %.pre158 = load i64, i64* %3, align 8
  br label %routine_idivl__r8d.exit140

; <label>:5751:                                   ; preds = %routine_idivl__r8d.exit166
  %5752 = srem i64 %5744, %5742
  %5753 = and i64 %5745, 4294967295
  store i64 %5753, i64* %RAX.i223, align 8
  %5754 = and i64 %5752, 4294967295
  store i64 %5754, i64* %RDX.i2258, align 8
  store i8 0, i8* %25, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %40, align 1
  store i8 0, i8* %43, align 1
  store i8 0, i8* %49, align 1
  br label %routine_idivl__r8d.exit140

routine_idivl__r8d.exit140:                       ; preds = %5751, %5749
  %5755 = phi i64 [ %.pre158, %5749 ], [ %5740, %5751 ]
  %5756 = phi i64 [ %.pre157, %5749 ], [ %5754, %5751 ]
  %5757 = phi %struct.Memory* [ %5750, %5749 ], [ %5692, %5751 ]
  %5758 = trunc i64 %5756 to i32
  %5759 = add i32 %5758, -1
  %5760 = lshr i32 %5759, 31
  %5761 = add i32 %5758, -9
  %5762 = lshr i32 %5761, 31
  %5763 = xor i32 %5762, %5760
  %5764 = add nuw nsw i32 %5763, %5760
  %5765 = icmp eq i32 %5764, 2
  %5766 = icmp ne i32 %5762, 0
  %5767 = xor i1 %5766, %5765
  %5768 = xor i1 %5767, true
  %5769 = zext i1 %5768 to i8
  store i8 %5769, i8* %BL.i133, align 1
  store i8 0, i8* %25, align 1
  %5770 = zext i1 %5768 to i32
  %5771 = tail call i32 @llvm.ctpop.i32(i32 %5770)
  %5772 = trunc i32 %5771 to i8
  %5773 = xor i8 %5772, 1
  store i8 %5773, i8* %32, align 1
  %5774 = zext i1 %5767 to i8
  store i8 %5774, i8* %40, align 1
  store i8 0, i8* %43, align 1
  store i8 0, i8* %49, align 1
  store i8 0, i8* %37, align 1
  %5775 = zext i1 %5768 to i64
  store i64 %5775, i64* %RDX.i2258, align 8
  %5776 = load i64, i64* %RBP.i, align 8
  %5777 = add i64 %5776, -21508
  %5778 = add i64 %5755, 22
  store i64 %5778, i64* %3, align 8
  %5779 = inttoptr i64 %5777 to i32*
  %5780 = load i32, i32* %5779, align 4
  %5781 = zext i1 %5768 to i32
  %5782 = add i32 %5781, %5780
  %5783 = zext i32 %5782 to i64
  store i64 %5783, i64* %5604, align 8
  %5784 = icmp ult i32 %5782, %5780
  %5785 = icmp ult i32 %5782, %5781
  %5786 = or i1 %5784, %5785
  %5787 = zext i1 %5786 to i8
  store i8 %5787, i8* %25, align 1
  %5788 = and i32 %5782, 255
  %5789 = tail call i32 @llvm.ctpop.i32(i32 %5788)
  %5790 = trunc i32 %5789 to i8
  %5791 = and i8 %5790, 1
  %5792 = xor i8 %5791, 1
  store i8 %5792, i8* %32, align 1
  %5793 = xor i32 %5780, %5782
  %5794 = lshr i32 %5793, 4
  %5795 = trunc i32 %5794 to i8
  %5796 = and i8 %5795, 1
  store i8 %5796, i8* %37, align 1
  %5797 = icmp eq i32 %5782, 0
  %5798 = zext i1 %5797 to i8
  store i8 %5798, i8* %40, align 1
  %5799 = lshr i32 %5782, 31
  %5800 = trunc i32 %5799 to i8
  store i8 %5800, i8* %43, align 1
  %5801 = lshr i32 %5780, 31
  %5802 = xor i32 %5799, %5801
  %5803 = add nuw nsw i32 %5802, %5799
  %5804 = icmp eq i32 %5803, 2
  %5805 = zext i1 %5804 to i8
  store i8 %5805, i8* %49, align 1
  %5806 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %5807 = zext i32 %5806 to i64
  store i64 %5807, i64* %RDX.i2258, align 8
  %5808 = add i64 %5776, -40
  %5809 = add i64 %5755, 36
  store i64 %5809, i64* %3, align 8
  %5810 = inttoptr i64 %5808 to i64*
  %5811 = load i64, i64* %5810, align 8
  store i64 %5811, i64* %RCX.i2266, align 8
  %5812 = add i64 %5776, -20792
  %5813 = add i64 %5755, 43
  store i64 %5813, i64* %3, align 8
  %5814 = inttoptr i64 %5812 to i32*
  %5815 = load i32, i32* %5814, align 4
  %5816 = sext i32 %5815 to i64
  store i64 %5816, i64* %R10.i156, align 8
  %5817 = shl nsw i64 %5816, 2
  %5818 = add i64 %5817, %5811
  %5819 = add i64 %5755, 47
  store i64 %5819, i64* %3, align 8
  %5820 = inttoptr i64 %5818 to i32*
  %5821 = load i32, i32* %5820, align 4
  %5822 = zext i32 %5821 to i64
  store i64 %5822, i64* %R14.i103, align 8
  store i64 %5822, i64* %RAX.i223, align 8
  %5823 = add i64 %5776, -21512
  %5824 = add i64 %5755, 56
  store i64 %5824, i64* %3, align 8
  %5825 = inttoptr i64 %5823 to i32*
  store i32 %5806, i32* %5825, align 4
  %5826 = load i64, i64* %3, align 8
  %5827 = load i32, i32* %EAX.i2180, align 8
  %5828 = sext i32 %5827 to i64
  %5829 = lshr i64 %5828, 32
  store i64 %5829, i64* %5602, align 8
  %5830 = load i32, i32* %R8D.i238, align 4
  %5831 = add i64 %5826, 4
  store i64 %5831, i64* %3, align 8
  %5832 = zext i32 %5827 to i64
  %5833 = sext i32 %5830 to i64
  %5834 = shl nuw i64 %5829, 32
  %5835 = or i64 %5834, %5832
  %5836 = sdiv i64 %5835, %5833
  %5837 = shl i64 %5836, 32
  %5838 = ashr exact i64 %5837, 32
  %5839 = icmp eq i64 %5836, %5838
  br i1 %5839, label %5842, label %5840

; <label>:5840:                                   ; preds = %routine_idivl__r8d.exit140
  %5841 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5831, %struct.Memory* %5757)
  %.pre159 = load i64, i64* %RAX.i223, align 8
  %.pre160 = load i64, i64* %3, align 8
  br label %routine_idivl__r8d.exit

; <label>:5842:                                   ; preds = %routine_idivl__r8d.exit140
  %5843 = srem i64 %5835, %5833
  %5844 = and i64 %5836, 4294967295
  store i64 %5844, i64* %RAX.i223, align 8
  %5845 = and i64 %5843, 4294967295
  store i64 %5845, i64* %RDX.i2258, align 8
  store i8 0, i8* %25, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %40, align 1
  store i8 0, i8* %43, align 1
  store i8 0, i8* %49, align 1
  br label %routine_idivl__r8d.exit

routine_idivl__r8d.exit:                          ; preds = %5842, %5840
  %5846 = phi i64 [ %.pre160, %5840 ], [ %5831, %5842 ]
  %5847 = phi i64 [ %.pre159, %5840 ], [ %5844, %5842 ]
  %5848 = phi %struct.Memory* [ %5841, %5840 ], [ %5757, %5842 ]
  %5849 = trunc i64 %5847 to i32
  %5850 = add i32 %5849, -1
  %5851 = zext i32 %5850 to i64
  store i64 %5851, i64* %RAX.i223, align 8
  %5852 = icmp eq i32 %5849, 0
  %5853 = zext i1 %5852 to i8
  store i8 %5853, i8* %25, align 1
  %5854 = and i32 %5850, 255
  %5855 = tail call i32 @llvm.ctpop.i32(i32 %5854)
  %5856 = trunc i32 %5855 to i8
  %5857 = and i8 %5856, 1
  %5858 = xor i8 %5857, 1
  store i8 %5858, i8* %32, align 1
  %5859 = xor i32 %5850, %5849
  %5860 = lshr i32 %5859, 4
  %5861 = trunc i32 %5860 to i8
  %5862 = and i8 %5861, 1
  store i8 %5862, i8* %37, align 1
  %5863 = icmp eq i32 %5850, 0
  %5864 = zext i1 %5863 to i8
  store i8 %5864, i8* %40, align 1
  %5865 = lshr i32 %5850, 31
  %5866 = trunc i32 %5865 to i8
  store i8 %5866, i8* %43, align 1
  %5867 = lshr i32 %5849, 31
  %5868 = xor i32 %5865, %5867
  %5869 = add nuw nsw i32 %5868, %5867
  %5870 = icmp eq i32 %5869, 2
  %5871 = zext i1 %5870 to i8
  store i8 %5871, i8* %49, align 1
  %5872 = load i64, i64* %RBP.i, align 8
  %5873 = add i64 %5872, -21512
  %5874 = add i64 %5846, 10
  store i64 %5874, i64* %3, align 8
  %5875 = inttoptr i64 %5873 to i32*
  %5876 = load i32, i32* %5875, align 4
  %5877 = sub i32 %5876, %5850
  %5878 = zext i32 %5877 to i64
  store i64 %5878, i64* %R14.i103, align 8
  %5879 = icmp ult i32 %5876, %5850
  %5880 = zext i1 %5879 to i8
  store i8 %5880, i8* %25, align 1
  %5881 = and i32 %5877, 255
  %5882 = tail call i32 @llvm.ctpop.i32(i32 %5881)
  %5883 = trunc i32 %5882 to i8
  %5884 = and i8 %5883, 1
  %5885 = xor i8 %5884, 1
  store i8 %5885, i8* %32, align 1
  %5886 = xor i32 %5850, %5876
  %5887 = xor i32 %5886, %5877
  %5888 = lshr i32 %5887, 4
  %5889 = trunc i32 %5888 to i8
  %5890 = and i8 %5889, 1
  store i8 %5890, i8* %37, align 1
  %5891 = icmp eq i32 %5877, 0
  %5892 = zext i1 %5891 to i8
  store i8 %5892, i8* %40, align 1
  %5893 = lshr i32 %5877, 31
  %5894 = trunc i32 %5893 to i8
  store i8 %5894, i8* %43, align 1
  %5895 = lshr i32 %5876, 31
  %5896 = xor i32 %5865, %5895
  %5897 = xor i32 %5893, %5895
  %5898 = add nuw nsw i32 %5897, %5896
  %5899 = icmp eq i32 %5898, 2
  %5900 = zext i1 %5899 to i8
  store i8 %5900, i8* %49, align 1
  %5901 = add i64 %5872, -20792
  %5902 = add i64 %5846, 20
  store i64 %5902, i64* %3, align 8
  %5903 = inttoptr i64 %5901 to i32*
  %5904 = load i32, i32* %5903, align 4
  %5905 = sext i32 %5904 to i64
  store i64 %5905, i64* %RCX.i2266, align 8
  %5906 = shl nsw i64 %5905, 2
  %5907 = add i64 %5872, -20736
  %5908 = add i64 %5907, %5906
  %5909 = add i64 %5846, 28
  store i64 %5909, i64* %3, align 8
  %5910 = inttoptr i64 %5908 to i32*
  %5911 = load i32, i32* %5910, align 4
  %5912 = zext i32 %5911 to i64
  store i64 %5912, i64* %R8.i2264, align 8
  %5913 = load i32, i32* %R11D.i151, align 4
  %5914 = zext i32 %5913 to i64
  store i64 %5914, i64* %RDX.i2258, align 8
  store i64 %5878, i64* %RCX.i2266, align 8
  store i8 0, i8* %AL.i930.pre-phi, align 1
  %5915 = add i64 %5846, -341749
  %5916 = add i64 %5846, 41
  %5917 = load i64, i64* %6, align 8
  %5918 = add i64 %5917, -8
  %5919 = inttoptr i64 %5918 to i64*
  store i64 %5916, i64* %5919, align 8
  store i64 %5918, i64* %6, align 8
  store i64 %5915, i64* %3, align 8
  %5920 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @sprintf to i64), %struct.Memory* %5848)
  %5921 = load i64, i64* %RBP.i, align 8
  %5922 = add i64 %5921, -21404
  %5923 = load i64, i64* %3, align 8
  %5924 = add i64 %5923, 6
  store i64 %5924, i64* %3, align 8
  %5925 = inttoptr i64 %5922 to i32*
  %5926 = load i32, i32* %5925, align 4
  %5927 = zext i32 %5926 to i64
  store i64 %5927, i64* %RCX.i2266, align 8
  %5928 = add i64 %5921, -21400
  %5929 = add i64 %5923, 13
  store i64 %5929, i64* %3, align 8
  %5930 = inttoptr i64 %5928 to i64*
  %5931 = load i64, i64* %5930, align 8
  %5932 = sext i32 %5926 to i64
  store i64 %5932, i64* %RDI.i2208, align 8
  %5933 = add i64 %5932, %5931
  store i64 %5933, i64* %RSI.i2205, align 8
  %5934 = icmp ult i64 %5933, %5931
  %5935 = icmp ult i64 %5933, %5932
  %5936 = or i1 %5934, %5935
  %5937 = zext i1 %5936 to i8
  store i8 %5937, i8* %25, align 1
  %5938 = trunc i64 %5933 to i32
  %5939 = and i32 %5938, 255
  %5940 = tail call i32 @llvm.ctpop.i32(i32 %5939)
  %5941 = trunc i32 %5940 to i8
  %5942 = and i8 %5941, 1
  %5943 = xor i8 %5942, 1
  store i8 %5943, i8* %32, align 1
  %5944 = xor i64 %5932, %5931
  %5945 = xor i64 %5944, %5933
  %5946 = lshr i64 %5945, 4
  %5947 = trunc i64 %5946 to i8
  %5948 = and i8 %5947, 1
  store i8 %5948, i8* %37, align 1
  %5949 = icmp eq i64 %5933, 0
  %5950 = zext i1 %5949 to i8
  store i8 %5950, i8* %40, align 1
  %5951 = lshr i64 %5933, 63
  %5952 = trunc i64 %5951 to i8
  store i8 %5952, i8* %43, align 1
  %5953 = lshr i64 %5931, 63
  %5954 = lshr i64 %5932, 63
  %5955 = xor i64 %5951, %5953
  %5956 = xor i64 %5951, %5954
  %5957 = add nuw nsw i64 %5955, %5956
  %5958 = icmp eq i64 %5957, 2
  %5959 = zext i1 %5958 to i8
  store i8 %5959, i8* %49, align 1
  %5960 = add i64 %5923, 26
  store i64 %5960, i64* %3, align 8
  store i64 %5933, i64* %5930, align 8
  %5961 = load i64, i64* %RBP.i, align 8
  %5962 = add i64 %5961, -21516
  %5963 = load i32, i32* %EAX.i2180, align 4
  %5964 = load i64, i64* %3, align 8
  %5965 = add i64 %5964, 6
  store i64 %5965, i64* %3, align 8
  %5966 = inttoptr i64 %5962 to i32*
  store i32 %5963, i32* %5966, align 4
  %5967 = load i64, i64* %RBP.i, align 8
  %5968 = add i64 %5967, -20792
  %5969 = load i64, i64* %3, align 8
  %5970 = add i64 %5969, 6
  store i64 %5970, i64* %3, align 8
  %5971 = inttoptr i64 %5968 to i32*
  %5972 = load i32, i32* %5971, align 4
  %5973 = add i32 %5972, 1
  %5974 = zext i32 %5973 to i64
  store i64 %5974, i64* %RAX.i223, align 8
  %5975 = icmp eq i32 %5972, -1
  %5976 = icmp eq i32 %5973, 0
  %5977 = or i1 %5975, %5976
  %5978 = zext i1 %5977 to i8
  store i8 %5978, i8* %25, align 1
  %5979 = and i32 %5973, 255
  %5980 = tail call i32 @llvm.ctpop.i32(i32 %5979)
  %5981 = trunc i32 %5980 to i8
  %5982 = and i8 %5981, 1
  %5983 = xor i8 %5982, 1
  store i8 %5983, i8* %32, align 1
  %5984 = xor i32 %5973, %5972
  %5985 = lshr i32 %5984, 4
  %5986 = trunc i32 %5985 to i8
  %5987 = and i8 %5986, 1
  store i8 %5987, i8* %37, align 1
  %5988 = zext i1 %5976 to i8
  store i8 %5988, i8* %40, align 1
  %5989 = lshr i32 %5973, 31
  %5990 = trunc i32 %5989 to i8
  store i8 %5990, i8* %43, align 1
  %5991 = lshr i32 %5972, 31
  %5992 = xor i32 %5989, %5991
  %5993 = add nuw nsw i32 %5992, %5989
  %5994 = icmp eq i32 %5993, 2
  %5995 = zext i1 %5994 to i8
  store i8 %5995, i8* %49, align 1
  %5996 = add i64 %5969, 15
  store i64 %5996, i64* %3, align 8
  store i32 %5973, i32* %5971, align 4
  %5997 = load i64, i64* %3, align 8
  %5998 = add i64 %5997, -264
  store i64 %5998, i64* %3, align 8
  br label %block_.L_454815

block_.L_454922:                                  ; preds = %block_.L_454815
  %5999 = add i64 %5606, -21392
  store i64 %5999, i64* %RSI.i2205, align 8
  %6000 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i64 %6000, i64* %RDI.i2208, align 8
  %6001 = add i64 %5642, -328242
  %6002 = add i64 %5642, 20
  %6003 = load i64, i64* %6, align 8
  %6004 = add i64 %6003, -8
  %6005 = inttoptr i64 %6004 to i64*
  store i64 %6002, i64* %6005, align 8
  store i64 %6004, i64* %6, align 8
  store i64 %6001, i64* %3, align 8
  %call2_454931 = tail call %struct.Memory* @sub_4046f0.sgftreeAddComment(%struct.State* nonnull %0, i64 %6001, %struct.Memory* %MEMORY.83)
  %.pre161 = load i64, i64* %RBP.i, align 8
  %.pre162 = load i64, i64* %3, align 8
  br label %block_.L_454936

block_.L_454936:                                  ; preds = %block_.L_454922, %block_.L_45479c
  %6006 = phi i64 [ %5510, %block_.L_45479c ], [ %.pre162, %block_.L_454922 ]
  %6007 = phi i64 [ %5497, %block_.L_45479c ], [ %.pre161, %block_.L_454922 ]
  %MEMORY.84 = phi %struct.Memory* [ %MEMORY.82, %block_.L_45479c ], [ %call2_454931, %block_.L_454922 ]
  %6008 = add i64 %6007, -64
  %6009 = add i64 %6006, 7
  store i64 %6009, i64* %3, align 8
  %6010 = inttoptr i64 %6008 to i32*
  store i32 0, i32* %6010, align 4
  %.pre163 = load i64, i64* %3, align 8
  br label %block_.L_45493d

block_.L_45493d:                                  ; preds = %block_.L_454970, %block_.L_454936
  %6011 = phi i64 [ %6120, %block_.L_454970 ], [ %.pre163, %block_.L_454936 ]
  %6012 = load i64, i64* %RBP.i, align 8
  %6013 = add i64 %6012, -64
  %6014 = add i64 %6011, 3
  store i64 %6014, i64* %3, align 8
  %6015 = inttoptr i64 %6013 to i32*
  %6016 = load i32, i32* %6015, align 4
  %6017 = zext i32 %6016 to i64
  store i64 %6017, i64* %RAX.i223, align 8
  %6018 = add i64 %6012, -20740
  %6019 = add i64 %6011, 9
  store i64 %6019, i64* %3, align 8
  %6020 = inttoptr i64 %6018 to i32*
  %6021 = load i32, i32* %6020, align 4
  %6022 = sub i32 %6016, %6021
  %6023 = icmp ult i32 %6016, %6021
  %6024 = zext i1 %6023 to i8
  store i8 %6024, i8* %25, align 1
  %6025 = and i32 %6022, 255
  %6026 = tail call i32 @llvm.ctpop.i32(i32 %6025)
  %6027 = trunc i32 %6026 to i8
  %6028 = and i8 %6027, 1
  %6029 = xor i8 %6028, 1
  store i8 %6029, i8* %32, align 1
  %6030 = xor i32 %6021, %6016
  %6031 = xor i32 %6030, %6022
  %6032 = lshr i32 %6031, 4
  %6033 = trunc i32 %6032 to i8
  %6034 = and i8 %6033, 1
  store i8 %6034, i8* %37, align 1
  %6035 = icmp eq i32 %6022, 0
  %6036 = zext i1 %6035 to i8
  store i8 %6036, i8* %40, align 1
  %6037 = lshr i32 %6022, 31
  %6038 = trunc i32 %6037 to i8
  store i8 %6038, i8* %43, align 1
  %6039 = lshr i32 %6016, 31
  %6040 = lshr i32 %6021, 31
  %6041 = xor i32 %6040, %6039
  %6042 = xor i32 %6037, %6039
  %6043 = add nuw nsw i32 %6042, %6041
  %6044 = icmp eq i32 %6043, 2
  %6045 = zext i1 %6044 to i8
  store i8 %6045, i8* %49, align 1
  %6046 = icmp ne i8 %6038, 0
  %6047 = xor i1 %6046, %6044
  %.v222 = select i1 %6047, i64 15, i64 70
  %6048 = add i64 %6011, %.v222
  store i64 %6048, i64* %3, align 8
  br i1 %6047, label %block_45494c, label %block_.L_454983.loopexit

block_45494c:                                     ; preds = %block_.L_45493d
  %6049 = add i64 %6048, 4
  store i64 %6049, i64* %3, align 8
  %6050 = load i32, i32* %6015, align 4
  %6051 = sext i32 %6050 to i64
  store i64 %6051, i64* %RAX.i223, align 8
  %6052 = shl nsw i64 %6051, 2
  %6053 = add i64 %6012, -20736
  %6054 = add i64 %6053, %6052
  %6055 = add i64 %6048, 11
  store i64 %6055, i64* %3, align 8
  %6056 = inttoptr i64 %6054 to i32*
  %6057 = load i32, i32* %6056, align 4
  %6058 = zext i32 %6057 to i64
  store i64 %6058, i64* %RCX.i2266, align 8
  %6059 = add i64 %6048, 17
  store i64 %6059, i64* %3, align 8
  %6060 = inttoptr i64 %6053 to i32*
  %6061 = load i32, i32* %6060, align 4
  %6062 = add i32 %6061, 1500
  %6063 = zext i32 %6062 to i64
  store i64 %6063, i64* %RDX.i2258, align 8
  %6064 = lshr i32 %6062, 31
  %6065 = sub i32 %6057, %6062
  %6066 = icmp ult i32 %6057, %6062
  %6067 = zext i1 %6066 to i8
  store i8 %6067, i8* %25, align 1
  %6068 = and i32 %6065, 255
  %6069 = tail call i32 @llvm.ctpop.i32(i32 %6068)
  %6070 = trunc i32 %6069 to i8
  %6071 = and i8 %6070, 1
  %6072 = xor i8 %6071, 1
  store i8 %6072, i8* %32, align 1
  %6073 = xor i32 %6062, %6057
  %6074 = xor i32 %6073, %6065
  %6075 = lshr i32 %6074, 4
  %6076 = trunc i32 %6075 to i8
  %6077 = and i8 %6076, 1
  store i8 %6077, i8* %37, align 1
  %6078 = icmp eq i32 %6065, 0
  %6079 = zext i1 %6078 to i8
  store i8 %6079, i8* %40, align 1
  %6080 = lshr i32 %6065, 31
  %6081 = trunc i32 %6080 to i8
  store i8 %6081, i8* %43, align 1
  %6082 = lshr i32 %6057, 31
  %6083 = xor i32 %6064, %6082
  %6084 = xor i32 %6080, %6082
  %6085 = add nuw nsw i32 %6084, %6083
  %6086 = icmp eq i32 %6085, 2
  %6087 = zext i1 %6086 to i8
  store i8 %6087, i8* %49, align 1
  %6088 = icmp ne i8 %6081, 0
  %6089 = xor i1 %6088, %6086
  %6090 = or i1 %6078, %6089
  %.v = select i1 %6090, i64 36, i64 31
  %6091 = add i64 %6048, %.v
  store i64 %6091, i64* %3, align 8
  br i1 %6090, label %block_.L_454970, label %block_45496b

block_45496b:                                     ; preds = %block_45494c
  %6092 = add i64 %6091, 24
  store i64 %6092, i64* %3, align 8
  br label %block_.L_454983

block_.L_454970:                                  ; preds = %block_45494c
  %6093 = add i64 %6091, 8
  store i64 %6093, i64* %3, align 8
  %6094 = load i32, i32* %6015, align 4
  %6095 = add i32 %6094, 1
  %6096 = zext i32 %6095 to i64
  store i64 %6096, i64* %RAX.i223, align 8
  %6097 = icmp eq i32 %6094, -1
  %6098 = icmp eq i32 %6095, 0
  %6099 = or i1 %6097, %6098
  %6100 = zext i1 %6099 to i8
  store i8 %6100, i8* %25, align 1
  %6101 = and i32 %6095, 255
  %6102 = tail call i32 @llvm.ctpop.i32(i32 %6101)
  %6103 = trunc i32 %6102 to i8
  %6104 = and i8 %6103, 1
  %6105 = xor i8 %6104, 1
  store i8 %6105, i8* %32, align 1
  %6106 = xor i32 %6095, %6094
  %6107 = lshr i32 %6106, 4
  %6108 = trunc i32 %6107 to i8
  %6109 = and i8 %6108, 1
  store i8 %6109, i8* %37, align 1
  %6110 = zext i1 %6098 to i8
  store i8 %6110, i8* %40, align 1
  %6111 = lshr i32 %6095, 31
  %6112 = trunc i32 %6111 to i8
  store i8 %6112, i8* %43, align 1
  %6113 = lshr i32 %6094, 31
  %6114 = xor i32 %6111, %6113
  %6115 = add nuw nsw i32 %6114, %6111
  %6116 = icmp eq i32 %6115, 2
  %6117 = zext i1 %6116 to i8
  store i8 %6117, i8* %49, align 1
  %6118 = add i64 %6091, 14
  store i64 %6118, i64* %3, align 8
  store i32 %6095, i32* %6015, align 4
  %6119 = load i64, i64* %3, align 8
  %6120 = add i64 %6119, -65
  store i64 %6120, i64* %3, align 8
  br label %block_.L_45493d

block_.L_454983.loopexit:                         ; preds = %block_.L_45493d
  br label %block_.L_454983

block_.L_454983:                                  ; preds = %block_.L_454983.loopexit, %block_45496b
  %6121 = phi i64 [ %6092, %block_45496b ], [ %6048, %block_.L_454983.loopexit ]
  %6122 = add i64 %6121, 3
  store i64 %6122, i64* %3, align 8
  %6123 = load i32, i32* %6015, align 4
  %6124 = zext i32 %6123 to i64
  store i64 %6124, i64* %RAX.i223, align 8
  %6125 = add i64 %6121, 9
  store i64 %6125, i64* %3, align 8
  store i32 %6123, i32* %6020, align 4
  %6126 = load i64, i64* %RBP.i, align 8
  %6127 = add i64 %6126, -20740
  %6128 = load i64, i64* %3, align 8
  %6129 = add i64 %6128, 6
  store i64 %6129, i64* %3, align 8
  %6130 = inttoptr i64 %6127 to i32*
  %6131 = load i32, i32* %6130, align 4
  %6132 = zext i32 %6131 to i64
  store i64 %6132, i64* %RAX.i223, align 8
  %6133 = load i64, i64* %6, align 8
  %6134 = add i64 %6133, 21504
  store i64 %6134, i64* %6, align 8
  %6135 = icmp ugt i64 %6133, -21505
  %6136 = zext i1 %6135 to i8
  store i8 %6136, i8* %25, align 1
  %6137 = trunc i64 %6134 to i32
  %6138 = and i32 %6137, 255
  %6139 = tail call i32 @llvm.ctpop.i32(i32 %6138)
  %6140 = trunc i32 %6139 to i8
  %6141 = and i8 %6140, 1
  %6142 = xor i8 %6141, 1
  store i8 %6142, i8* %32, align 1
  %6143 = xor i64 %6134, %6133
  %6144 = lshr i64 %6143, 4
  %6145 = trunc i64 %6144 to i8
  %6146 = and i8 %6145, 1
  store i8 %6146, i8* %37, align 1
  %6147 = icmp eq i64 %6134, 0
  %6148 = zext i1 %6147 to i8
  store i8 %6148, i8* %40, align 1
  %6149 = lshr i64 %6134, 63
  %6150 = trunc i64 %6149 to i8
  store i8 %6150, i8* %43, align 1
  %6151 = lshr i64 %6133, 63
  %6152 = xor i64 %6149, %6151
  %6153 = add nuw nsw i64 %6152, %6149
  %6154 = icmp eq i64 %6153, 2
  %6155 = zext i1 %6154 to i8
  store i8 %6155, i8* %49, align 1
  %6156 = add i64 %6128, 14
  store i64 %6156, i64* %3, align 8
  %6157 = add i64 %6133, 21512
  %6158 = inttoptr i64 %6134 to i64*
  %6159 = load i64, i64* %6158, align 8
  store i64 %6159, i64* %RBX.i142, align 8
  store i64 %6157, i64* %6, align 8
  %6160 = add i64 %6128, 16
  store i64 %6160, i64* %3, align 8
  %6161 = add i64 %6133, 21520
  %6162 = inttoptr i64 %6157 to i64*
  %6163 = load i64, i64* %6162, align 8
  store i64 %6163, i64* %R14.i103, align 8
  store i64 %6161, i64* %6, align 8
  %6164 = add i64 %6128, 17
  store i64 %6164, i64* %3, align 8
  %6165 = add i64 %6133, 21528
  %6166 = inttoptr i64 %6161 to i64*
  %6167 = load i64, i64* %6166, align 8
  store i64 %6167, i64* %RBP.i, align 8
  store i64 %6165, i64* %6, align 8
  %6168 = add i64 %6128, 18
  store i64 %6168, i64* %3, align 8
  %6169 = inttoptr i64 %6165 to i64*
  %6170 = load i64, i64* %6169, align 8
  store i64 %6170, i64* %3, align 8
  %6171 = add i64 %6133, 21536
  store i64 %6171, i64* %6, align 8
  ret %struct.Memory* %MEMORY.84
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
define %struct.Memory* @routine_subq__0x5400___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -21504
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 21504
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
define %struct.Memory* @routine_leaq_MINUS0x25c8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -9672
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 3, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x34__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R9D, align 4
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %6, -52
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %5, %11
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = icmp ult i32 %5, %11
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %12, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %11, %5
  %24 = xor i32 %23, %12
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %12, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %5, 31
  %36 = lshr i32 %11, 31
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
define %struct.Memory* @routine_movl__r9d__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -52
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
define %struct.Memory* @routine_sete__r10b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10B = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %R10B, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andb__0x1___r10b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10B = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %R10B, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %R10B, align 1
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
define %struct.Memory* @routine_movzbl__r10b___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10B = bitcast %union.anon* %3 to i8*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i8, i8* %R10B, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -60
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x5104__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20740
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xab0ef8___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x5110__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20752
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xab0eec___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x5114__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20756
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x5118__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20760
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x511c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20764
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x5120__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20768
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x5124__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20772
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__0xab0ef8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 12
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xab0eec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x14__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_callq_.compute_connection_distances(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x4b50__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -19280
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_leaq_MINUS0x5130__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20784
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.findlib(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_453590(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x5130__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20784
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
define %struct.Memory* @routine_movl__0x0__MINUS0x25c8__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -9672
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x1948__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -6472
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
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
define %struct.Memory* @routine_movl_MINUS0x4b50__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -19280
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x4b50__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -19280
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
define %struct.Memory* @routine_movl_MINUS0x1948__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -6472
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x3ed0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -16080
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
define %struct.Memory* @routine_jne_.L_4535d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x4b50__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -19280
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movl_MINUS0x25c8__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -9672
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x25c8__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -9672
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
define %struct.Memory* @routine_movl__ecx__MINUS0x5128__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20776
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x512c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20780
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5128__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20776
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
define %struct.Memory* @routine_cmpl_MINUS0x512c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20780
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
define %struct.Memory* @routine_jge_.L_45361d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x5128__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20776
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
define %struct.Memory* @routine_movl__eax__MINUS0x53a0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21408
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_453629(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x512c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20780
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
define %struct.Memory* @routine_movl_MINUS0x53a0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -21408
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
define %struct.Memory* @routine_cmpl__0x0__0xab0f28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
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
define %struct.Memory* @routine_jle_.L_453684(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57f693___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f693_type* @G__0x57f693 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5114__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20756
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
define %struct.Memory* @routine_movl__eax__MINUS0x53a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21412
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.dump_stack(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_xorl__edi___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.showboard(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x25c8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -9672
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.print_connection_distances(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x4b50__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -19280
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_cmpl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -68
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
define %struct.Memory* @routine_jge_.L_45419b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movl_MINUS0x688__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1672
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x5140__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20800
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x5140__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20800
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
define %struct.Memory* @routine_movl__ecx__MINUS0x5144__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20804
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1f88__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -8072
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x5148__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20808
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x514c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20812
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4510__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -17680
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x5150__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20816
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5144__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20804
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
define %struct.Memory* @routine_subl_MINUS0x5148__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20808
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_addl_MINUS0x514c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20812
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x5150__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20816
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_cmpl__0x9c4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -2500
  %8 = icmp ult i32 %4, 2500
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
define %struct.Memory* @routine_jg_.L_453750(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x5144__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20804
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
define %struct.Memory* @routine_addl__0xc8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 200
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ugt i32 %6, -201
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
define %struct.Memory* @routine_movl_MINUS0x514c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20812
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
define %struct.Memory* @routine_movl_MINUS0x512c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20780
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
define %struct.Memory* @routine_jle_.L_453755(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45418d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_je_.L_453785(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jne_.L_4537a1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x5140__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20800
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
define %struct.Memory* @routine_callq_.find_origin(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x5140__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20800
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
define %struct.Memory* @routine_je_.L_4537a1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_4537e6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57f6a3___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f6a3_type* @G__0x57f6a3 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5140__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20800
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
define %struct.Memory* @routine_movl_MINUS0x5144__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20804
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
define %struct.Memory* @routine_movl_MINUS0x5148__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20808
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
define %struct.Memory* @routine_movl_MINUS0x514c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20812
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
define %struct.Memory* @routine_movl_MINUS0x5150__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20816
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
define %struct.Memory* @routine_movl__eax__MINUS0x53a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21416
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x5148__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20808
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
define %struct.Memory* @routine_movl__eax__MINUS0x5154__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20820
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x5150__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20816
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
define %struct.Memory* @routine_movl__eax__MINUS0x5158__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20824
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5154__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20820
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
define %struct.Memory* @routine_addl_MINUS0x5158__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20824
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
define %struct.Memory* @routine_movl__eax__MINUS0x515c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20828
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_453847(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57f6c1___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f6c1_type* @G__0x57f6c1 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x515c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20828
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
define %struct.Memory* @routine_movl__eax__MINUS0x53ac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21420
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x3__MINUS0x5154__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20820
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 3
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RAX, align 8
  %13 = mul i64 %9, 12884901888
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5158__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20824
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
define %struct.Memory* @routine_jle_.L_4538b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_imull__0x3__MINUS0x5158__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20824
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = mul nsw i64 %9, 3
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967295
  store i64 %12, i64* %RAX, align 8
  %13 = mul i64 %9, 12884901888
  %14 = ashr exact i64 %13, 32
  %15 = icmp ne i64 %14, %10
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5154__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20820
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
define %struct.Memory* @routine_movl_MINUS0x515c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20828
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
define %struct.Memory* @routine_subl__0x64___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -100
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 100
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
define %struct.Memory* @routine_jle_.L_4538ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57f6db___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f6db_type* @G__0x57f6db to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x53b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21424
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4538b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x1948__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -6472
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %12, align 1
  %13 = and i32 %11, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %19, align 1
  %20 = icmp eq i32 %11, 0
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %11, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_453911(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x3ed0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RAX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -16080
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %4, %13
  %15 = icmp ult i32 %4, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, %4
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %4, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_453911(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_45390c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57f6f4___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f6f4_type* @G__0x57f6f4 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x53b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21428
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jne_.L_453a59(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_callq_.check_self_atari(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_453a2a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_453945(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x5160__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20832
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5160__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20832
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
define %struct.Memory* @routine_cmpl_MINUS0x5104__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20740
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
define %struct.Memory* @routine_jge_.L_4539c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x5160__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20832
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x5140__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20800
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
define %struct.Memory* @routine_jne_.L_4539ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x5160__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20832
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
define %struct.Memory* @routine_movl_MINUS0x5100__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -20736
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x515c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20828
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
define %struct.Memory* @routine_jle_.L_4539a9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x5100__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -20736
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
define %struct.Memory* @routine_jmpq_.L_4539c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4539b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x5160__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20832
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45394f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_453a20(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x16a__MINUS0x5104__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20740
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -362
  %10 = icmp ult i32 %8, 362
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
define %struct.Memory* @routine_jge_.L_453a20(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x5140__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20800
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
define %struct.Memory* @routine_movslq_MINUS0x5104__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20740
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
define %struct.Memory* @routine_movslq_MINUS0x5104__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20740
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
define %struct.Memory* @routine_movl_MINUS0x5104__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20740
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
define %struct.Memory* @routine_movl__eax__MINUS0x5104__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20740
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_453a25(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_453a54(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_453a4f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57f718___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f718_type* @G__0x57f718 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x53b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21432
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_454188(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x38__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -56
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
define %struct.Memory* @routine_jne_.L_453e27(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x5118__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20760
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x511c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20764
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x5120__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20768
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x5124__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20772
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.attack_and_defend(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x53bc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21436
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_453adc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57f733___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f733_type* @G__0x57f733 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5118__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20760
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
define %struct.Memory* @routine_movl_MINUS0x511c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20764
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
define %struct.Memory* @routine_movl_MINUS0x5120__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20768
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
define %struct.Memory* @routine_movl_MINUS0x5124__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20772
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
define %struct.Memory* @routine_movl__eax__MINUS0x53c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21440
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x3c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_je_.L_453cd2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x5118__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20760
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x5120__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20768
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
define %struct.Memory* @routine_jne_.L_453b3b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl__0x1f4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 500
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -501
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_453b36(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57f770___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f770_type* @G__0x57f770 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x53c4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21444
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_453bab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x511c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20764
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x4b50__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -19280
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x514c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20812
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
define %struct.Memory* @routine_cmpl__edx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %4 to i32*
  %5 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jle_.L_453ba6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_453ba1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57f786___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f786_type* @G__0x57f786 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x53c8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21448
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_453ba6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_453bb0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x5164__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20836
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5164__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20836
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
define %struct.Memory* @routine_jge_.L_453c3f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x5164__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20836
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x511c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20764
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
define %struct.Memory* @routine_jne_.L_453c26(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x5164__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20836
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
define %struct.Memory* @routine_movl_MINUS0x515c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20828
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
define %struct.Memory* @routine_subl__0x96___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -150
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ult i32 %6, 150
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_453c21(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x96___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -150
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 150
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_453c3f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_453c2b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5164__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20836
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_453bba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_453c9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_453c9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x511c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20764
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
define %struct.Memory* @routine_jmpq_.L_453ca2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_453ccd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57f7b3___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f7b3_type* @G__0x57f7b3 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x511c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20764
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
define %struct.Memory* @routine_movl__eax__MINUS0x53cc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21452
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_453e22(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_453e1d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_453e1d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_453cfb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x5168__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20840
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5168__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20840
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
define %struct.Memory* @routine_jge_.L_453d8a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x5168__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20840
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x5124__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20772
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
define %struct.Memory* @routine_jne_.L_453d71(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x5168__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20840
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1f4___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -500
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ult i32 %6, 500
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_453d6c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x1f4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -500
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 500
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_453d8a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_453d76(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5168__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20840
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_453d05(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_453de8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_453de8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x5124__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20772
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
define %struct.Memory* @routine_jmpq_.L_453ded(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_453e18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57f7d8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f7d8_type* @G__0x57f7d8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5124__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20772
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
define %struct.Memory* @routine_movl__eax__MINUS0x53d0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21456
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_453e1d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_454183(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -52
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
define %struct.Memory* @routine_jne_.L_45417e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x5134__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20788
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x5134__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20788
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
define %struct.Memory* @routine_jge_.L_454179(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x5134__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20788
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
define %struct.Memory* @routine_andl__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 1
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_453e81(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1308__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -4872
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x516c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20844
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_453e95(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xcc8__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -3272
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 1
  %13 = trunc i32 %.lobit to i8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_453ec0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x3890__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -14480
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x5170__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20848
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_453ed4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3250__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -12880
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x516c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20844
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
define %struct.Memory* @routine_movl_MINUS0x5170__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20848
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.common_vulnerability(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_454160(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_45401d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_453f0d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x5174__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20852
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5174__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20852
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
define %struct.Memory* @routine_jge_.L_453f8f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x5174__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20852
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x516c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20844
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
define %struct.Memory* @routine_jne_.L_453f76(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x5174__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20852
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
define %struct.Memory* @routine_jle_.L_453f71(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_453f8f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_453f7b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5174__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20852
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_453f17(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_453fe8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_453fe8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x516c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20844
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
define %struct.Memory* @routine_jmpq_.L_453fed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_454018(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57f7fd___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f7fd_type* @G__0x57f7fd to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x516c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20844
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
define %struct.Memory* @routine_movl__eax__MINUS0x53d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21460
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45401d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5170__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20848
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
define %struct.Memory* @routine_cmpl_MINUS0x516c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20844
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
define %struct.Memory* @routine_je_.L_45415b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x5170__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20848
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
define %struct.Memory* @routine_jmpq_.L_45404b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x5178__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20856
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5178__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20856
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
define %struct.Memory* @routine_jge_.L_4540cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x5178__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20856
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x5170__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20848
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
define %struct.Memory* @routine_jne_.L_4540b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x5178__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20856
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
define %struct.Memory* @routine_jle_.L_4540af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4540cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4540b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5178__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20856
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_454055(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_454126(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_454126(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45412b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_454156(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x53d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21464
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45415b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_454160(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_454165(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5134__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20788
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_453e49(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45417e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45368b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x5110__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20752
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0xab0ef8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5114__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20756
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
define %struct.Memory* @routine_movl__ecx__0xab0eec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4545ac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_movl__edx__MINUS0x517c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20860
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x5180__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20864
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_454492(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x517c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20860
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
define %struct.Memory* @routine_movslq_MINUS0x5134__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20788
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8053168
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RAX, align 8
  %14 = icmp ult i32 %12, %9
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
  %25 = xor i32 %11, %9
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
  %37 = lshr i32 %9, 31
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5184__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20868
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x5184__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20868
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
define %struct.Memory* @routine_cmpl_MINUS0x38__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -56
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
define %struct.Memory* @routine_jne_.L_4543fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x5180__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20864
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x96___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -150
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 150
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x5100__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -20736
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
define %struct.Memory* @routine_jle_.L_45427e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57f81b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f81b_type* @G__0x57f81b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x517c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20860
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
define %struct.Memory* @routine_movl__eax__MINUS0x53dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21468
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5184__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20868
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
define %struct.Memory* @routine_jg_.L_4543f6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0xc8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -200
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 200
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
define %struct.Memory* @routine_jle_.L_4542d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57f844___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f844_type* @G__0x57f844 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x53e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21472
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x517c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20860
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x1f88__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -8072
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %11, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %11
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %11, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1f4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -500
  %8 = icmp ult i32 %4, 500
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
define %struct.Memory* @routine_jle_.L_454325(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x5184__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20868
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
define %struct.Memory* @routine_jg_.L_4543f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl_MINUS0x4510__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -17680
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %11, %13
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = icmp ult i32 %11, %13
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %14, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %13, %11
  %26 = xor i32 %25, %14
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %14, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %14, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %11, 31
  %38 = lshr i32 %13, 31
  %39 = xor i32 %38, %37
  %40 = xor i32 %34, %37
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_454375(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jge_.L_4543f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x2bc___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -700
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 700
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
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_4543ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57f888___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f888_type* @G__0x57f888 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x53e4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21476
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4543f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4543f6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_454479(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_454474(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_45446f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_45446a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57f8c7___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f8c7_type* @G__0x57f8c7 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x53e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21480
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45446f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_454474(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45447e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4541f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x5180__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20864
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
define %struct.Memory* @routine_je_.L_454504(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -28
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
define %struct.Memory* @routine_movl_MINUS0x517c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20860
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
define %struct.Memory* @routine_callq_.is_edge_vertex(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x64___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -100
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  %9 = icmp ult i32 %6, 100
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
define %struct.Memory* @routine_jle_.L_4544ff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57f90b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f90b_type* @G__0x57f90b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x53ec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21484
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_454504(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.liberty_of_string(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_45452c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -3
  %8 = icmp ult i32 %4, 3
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
define %struct.Memory* @routine_je_.L_454554(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_454599(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_454599(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_454594(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57f930___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f930_type* @G__0x57f930 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x53f0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21488
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_454599(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45459e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4541be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x5138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20792
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5138__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20792
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
define %struct.Memory* @routine_jge_.L_45470f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x5138__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20792
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
define %struct.Memory* @routine_movl__ecx__MINUS0x5188__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20872
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5138__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20792
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
define %struct.Memory* @routine_movl__ecx__MINUS0x518c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20876
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__ecx__MINUS0x513c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20796
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x513c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20796
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
define %struct.Memory* @routine_jge_.L_45465c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x513c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20796
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x5188__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20872
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
define %struct.Memory* @routine_jge_.L_454643(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x513c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20796
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
define %struct.Memory* @routine_jmpq_.L_454648(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x513c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20796
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4545f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x518c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20876
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
define %struct.Memory* @routine_cmpl_MINUS0x5138__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20792
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
define %struct.Memory* @routine_je_.L_4546f6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x5138__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20792
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
define %struct.Memory* @routine_movl__edx__MINUS0x5190__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20880
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5100__rbp__rax_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -20736
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
define %struct.Memory* @routine_movl__edx__MINUS0x5194__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20884
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x518c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20876
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
define %struct.Memory* @routine_movslq_MINUS0x518c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20876
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
define %struct.Memory* @routine_movl__edx__MINUS0x5100__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -20736
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
define %struct.Memory* @routine_movl_MINUS0x5190__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20880
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
define %struct.Memory* @routine_movl_MINUS0x5194__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20884
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
define %struct.Memory* @routine_jmpq_.L_4546fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5138__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20792
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4545b6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_45479c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57f964___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f964_type* @G__0x57f964 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x53f4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21492
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_454797(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57f975___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f975_type* @G__0x57f975 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax__rcx_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
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
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x53f8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21496
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45473e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45479c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_454936(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57f983___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f983_type* @G__0x57f983 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x539c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -21404
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57f97f___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f97f_type* @G__0x57f97f to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x58898d___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58898d_type* @G__0x58898d to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x5390__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -21392
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -28
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
define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -52
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
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
define %struct.Memory* @routine_cmoveq__rdx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  %9 = load i64, i64* %RAX, align 8
  %10 = select i1 %8, i64 %3, i64 %9
  store i64 %10, i64* %RAX, align 8
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
define %struct.Memory* @routine_leaq_MINUS0x5390__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -21392
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x539c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -21404
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
define %struct.Memory* @routine_movq__rcx__MINUS0x5398__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -21400
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x53fc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21500
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_454922(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x539c__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -21404
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
define %struct.Memory* @routine_movq_MINUS0x5398__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -21400
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x5138__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20792
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
define %struct.Memory* @routine_movl__eax__MINUS0x5400__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21504
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
define %struct.Memory* @routine_movl_MINUS0x5400__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21504
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
define %struct.Memory* @routine_movslq_MINUS0x5138__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20792
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_movl__edx__MINUS0x5404__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21508
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
define %struct.Memory* @routine_movl_MINUS0x5404__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21508
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
define %struct.Memory* @routine_movl__edx__MINUS0x5408__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21512
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
define %struct.Memory* @routine_movl_MINUS0x5408__rbp____r14d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21512
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
define %struct.Memory* @routine_movl_MINUS0x5100__rbp__rcx_4____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -20736
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
define %struct.Memory* @routine_movl_MINUS0x539c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -21404
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
define %struct.Memory* @routine_movq_MINUS0x5398__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -21400
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
define %struct.Memory* @routine_movq__rsi__MINUS0x5398__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -21400
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x540c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -21516
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_454815(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x5390__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -21392
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_454983(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x5100__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20736
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
define %struct.Memory* @routine_addl__0x5dc___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1500
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  %9 = icmp ugt i32 %6, -1501
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_454970(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_454983(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_454975(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45493d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x5400___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 21504
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -21505
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
