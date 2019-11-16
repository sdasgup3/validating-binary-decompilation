; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x57a760_type = type <{ [8 x i8] }>
%G__0x57a763_type = type <{ [8 x i8] }>
%G__0x57a92d_type = type <{ [8 x i8] }>
%G__0x57b705_type = type <{ [8 x i8] }>
%G__0x57c0a9_type = type <{ [8 x i8] }>
%G__0x57f610_type = type <{ [8 x i8] }>
%G__0x57fc64_type = type <{ [8 x i8] }>
%G__0x57fdf5_type = type <{ [8 x i8] }>
%G__0x5835e4_type = type <{ [8 x i8] }>
%G__0x585698_type = type <{ [8 x i8] }>
%G__0x5856fa_type = type <{ [8 x i8] }>
%G__0x5857db_type = type <{ [8 x i8] }>
%G__0x585d71_type = type <{ [8 x i8] }>
%G__0x585f74_type = type <{ [8 x i8] }>
%G__0x5861b6_type = type <{ [8 x i8] }>
%G__0x586a9a_type = type <{ [8 x i8] }>
%G__0x586aa4_type = type <{ [8 x i8] }>
%G__0x586aae_type = type <{ [8 x i8] }>
%G__0x586ab8_type = type <{ [8 x i8] }>
%G__0x586ac4_type = type <{ [8 x i8] }>
%G__0x586ad0_type = type <{ [8 x i8] }>
%G__0x586add_type = type <{ [8 x i8] }>
%G__0x586ae5_type = type <{ [8 x i8] }>
%G__0x586aef_type = type <{ [8 x i8] }>
%G__0x586af6_type = type <{ [8 x i8] }>
%G__0x586aff_type = type <{ [8 x i8] }>
%G__0x586b09_type = type <{ [8 x i8] }>
%G__0x586b12_type = type <{ [8 x i8] }>
%G__0x586b19_type = type <{ [8 x i8] }>
%G__0x586b1e_type = type <{ [8 x i8] }>
%G__0x586b24_type = type <{ [8 x i8] }>
%G__0x586b2a_type = type <{ [8 x i8] }>
%G__0x586b2f_type = type <{ [8 x i8] }>
%G__0x586b34_type = type <{ [8 x i8] }>
%G__0x586b3c_type = type <{ [8 x i8] }>
%G__0x586b44_type = type <{ [8 x i8] }>
%G__0x586b49_type = type <{ [8 x i8] }>
%G__0x586b51_type = type <{ [8 x i8] }>
%G__0x586b56_type = type <{ [8 x i8] }>
%G__0x586eef_type = type <{ [8 x i8] }>
%G__0x58730e_type = type <{ [8 x i8] }>
%G__0x58742a_type = type <{ [8 x i8] }>
%G__0x5877c3_type = type <{ [8 x i8] }>
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
@G__0x57a760 = global %G__0x57a760_type zeroinitializer
@G__0x57a763 = global %G__0x57a763_type zeroinitializer
@G__0x57a92d = global %G__0x57a92d_type zeroinitializer
@G__0x57b705 = global %G__0x57b705_type zeroinitializer
@G__0x57c0a9 = global %G__0x57c0a9_type zeroinitializer
@G__0x57f610 = global %G__0x57f610_type zeroinitializer
@G__0x57fc64 = global %G__0x57fc64_type zeroinitializer
@G__0x57fdf5 = global %G__0x57fdf5_type zeroinitializer
@G__0x5835e4 = global %G__0x5835e4_type zeroinitializer
@G__0x585698 = global %G__0x585698_type zeroinitializer
@G__0x5856fa = global %G__0x5856fa_type zeroinitializer
@G__0x5857db = global %G__0x5857db_type zeroinitializer
@G__0x585d71 = global %G__0x585d71_type zeroinitializer
@G__0x585f74 = global %G__0x585f74_type zeroinitializer
@G__0x5861b6 = global %G__0x5861b6_type zeroinitializer
@G__0x586a9a = global %G__0x586a9a_type zeroinitializer
@G__0x586aa4 = global %G__0x586aa4_type zeroinitializer
@G__0x586aae = global %G__0x586aae_type zeroinitializer
@G__0x586ab8 = global %G__0x586ab8_type zeroinitializer
@G__0x586ac4 = global %G__0x586ac4_type zeroinitializer
@G__0x586ad0 = global %G__0x586ad0_type zeroinitializer
@G__0x586add = global %G__0x586add_type zeroinitializer
@G__0x586ae5 = global %G__0x586ae5_type zeroinitializer
@G__0x586aef = global %G__0x586aef_type zeroinitializer
@G__0x586af6 = global %G__0x586af6_type zeroinitializer
@G__0x586aff = global %G__0x586aff_type zeroinitializer
@G__0x586b09 = global %G__0x586b09_type zeroinitializer
@G__0x586b12 = global %G__0x586b12_type zeroinitializer
@G__0x586b19 = global %G__0x586b19_type zeroinitializer
@G__0x586b1e = global %G__0x586b1e_type zeroinitializer
@G__0x586b24 = global %G__0x586b24_type zeroinitializer
@G__0x586b2a = global %G__0x586b2a_type zeroinitializer
@G__0x586b2f = global %G__0x586b2f_type zeroinitializer
@G__0x586b34 = global %G__0x586b34_type zeroinitializer
@G__0x586b3c = global %G__0x586b3c_type zeroinitializer
@G__0x586b44 = global %G__0x586b44_type zeroinitializer
@G__0x586b49 = global %G__0x586b49_type zeroinitializer
@G__0x586b51 = global %G__0x586b51_type zeroinitializer
@G__0x586b56 = global %G__0x586b56_type zeroinitializer
@G__0x586eef = global %G__0x586eef_type zeroinitializer
@G__0x58730e = global %G__0x58730e_type zeroinitializer
@G__0x58742a = global %G__0x58742a_type zeroinitializer
@G__0x5877c3 = global %G__0x5877c3_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @__isoc99_sscanf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare extern_weak x86_64_sysvcc i64 @strncmp(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400fd0.toupper_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @get_command(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RSI.i51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 ptrtoint (%G__0x57a92d_type* @G__0x57a92d to i64), i64* %RSI.i51, align 8
  %RDX.i70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %39 = add i64 %7, -25
  store i64 %39, i64* %RDX.i70, align 8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %41 = add i64 %7, -32
  store i64 %41, i64* %RCX.i, align 8
  %RDI.i109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %42 = add i64 %7, -24
  %43 = load i64, i64* %RDI.i109, align 8
  %44 = add i64 %10, 29
  store i64 %44, i64* %3, align 8
  %45 = inttoptr i64 %42 to i64*
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %RBP.i, align 8
  %47 = add i64 %46, -16
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %47 to i64*
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %RDI.i109, align 8
  %52 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL.i = bitcast %union.anon* %52 to i8*
  store i8 0, i8* %AL.i, align 1
  %53 = add i64 %48, -587966
  %54 = add i64 %48, 11
  %55 = load i64, i64* %6, align 8
  %56 = add i64 %55, -8
  %57 = inttoptr i64 %56 to i64*
  store i64 %54, i64* %57, align 8
  store i64 %56, i64* %6, align 8
  store i64 %53, i64* %3, align 8
  %58 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @__isoc99_sscanf to i64), %struct.Memory* %2)
  %EAX.i185 = bitcast %union.anon* %52 to i32*
  %59 = load i32, i32* %EAX.i185, align 4
  %60 = load i64, i64* %3, align 8
  %61 = add i32 %59, -2
  %62 = icmp ult i32 %59, 2
  %63 = zext i1 %62 to i8
  store i8 %63, i8* %14, align 1
  %64 = and i32 %61, 255
  %65 = tail call i32 @llvm.ctpop.i32(i32 %64)
  %66 = trunc i32 %65 to i8
  %67 = and i8 %66, 1
  %68 = xor i8 %67, 1
  store i8 %68, i8* %21, align 1
  %69 = xor i32 %61, %59
  %70 = lshr i32 %69, 4
  %71 = trunc i32 %70 to i8
  %72 = and i8 %71, 1
  store i8 %72, i8* %26, align 1
  %73 = icmp eq i32 %61, 0
  %74 = zext i1 %73 to i8
  store i8 %74, i8* %29, align 1
  %75 = lshr i32 %61, 31
  %76 = trunc i32 %75 to i8
  store i8 %76, i8* %32, align 1
  %77 = lshr i32 %59, 31
  %78 = xor i32 %75, %77
  %79 = add nuw nsw i32 %78, %77
  %80 = icmp eq i32 %79, 2
  %81 = zext i1 %80 to i8
  store i8 %81, i8* %38, align 1
  %.v = select i1 %73, i64 9, i64 86
  %82 = add i64 %60, %.v
  store i64 %82, i64* %3, align 8
  br i1 %73, label %block_490a12, label %entry.block_.L_490a5f_crit_edge

entry.block_.L_490a5f_crit_edge:                  ; preds = %entry
  %.pre49 = getelementptr inbounds %union.anon, %union.anon* %52, i64 0, i32 0
  br label %block_.L_490a5f

block_490a12:                                     ; preds = %entry
  %83 = load i64, i64* %RBP.i, align 8
  %84 = add i64 %83, -17
  %85 = add i64 %82, 4
  store i64 %85, i64* %3, align 8
  %86 = inttoptr i64 %84 to i8*
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i64
  %89 = and i64 %88, 4294967295
  store i64 %89, i64* %RDI.i109, align 8
  %90 = add i64 %82, -588354
  %91 = add i64 %82, 9
  %92 = load i64, i64* %6, align 8
  %93 = add i64 %92, -8
  %94 = inttoptr i64 %93 to i64*
  store i64 %91, i64* %94, align 8
  store i64 %93, i64* %6, align 8
  store i64 %90, i64* %3, align 8
  %call2_490a16 = tail call %struct.Memory* @sub_400fd0.toupper_plt(%struct.State* nonnull %0, i64 %90, %struct.Memory* %58)
  %CL.i = bitcast %union.anon* %40 to i8*
  %95 = load i8, i8* %AL.i, align 1
  %96 = load i64, i64* %3, align 8
  store i8 %95, i8* %CL.i, align 1
  %97 = load i64, i64* %RBP.i, align 8
  %98 = add i64 %97, -17
  %99 = add i64 %96, 5
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %98 to i8*
  store i8 %95, i8* %100, align 1
  %RAX.i300 = getelementptr inbounds %union.anon, %union.anon* %52, i64 0, i32 0
  %101 = load i8, i8* %CL.i, align 1
  %102 = load i64, i64* %3, align 8
  %103 = sext i8 %101 to i64
  %104 = and i64 %103, 4294967295
  store i64 %104, i64* %RAX.i300, align 8
  %105 = sext i8 %101 to i32
  %106 = add nsw i32 %105, -65
  %107 = icmp ult i8 %101, 65
  %108 = zext i1 %107 to i8
  store i8 %108, i8* %14, align 1
  %109 = and i32 %106, 255
  %110 = tail call i32 @llvm.ctpop.i32(i32 %109)
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  %113 = xor i8 %112, 1
  store i8 %113, i8* %21, align 1
  %114 = xor i32 %106, %105
  %115 = lshr i32 %114, 4
  %116 = trunc i32 %115 to i8
  %117 = and i8 %116, 1
  store i8 %117, i8* %26, align 1
  %118 = icmp eq i32 %106, 0
  %119 = zext i1 %118 to i8
  store i8 %119, i8* %29, align 1
  %120 = lshr i32 %106, 31
  %121 = trunc i32 %120 to i8
  store i8 %121, i8* %32, align 1
  %122 = lshr i32 %105, 31
  %123 = xor i32 %120, %122
  %124 = add nuw nsw i32 %123, %122
  %125 = icmp eq i32 %124, 2
  %126 = zext i1 %125 to i8
  store i8 %126, i8* %38, align 1
  %127 = icmp ne i8 %121, 0
  %128 = xor i1 %127, %125
  %.v94 = select i1 %128, i64 63, i64 12
  %129 = add i64 %102, %.v94
  store i64 %129, i64* %3, align 8
  br i1 %128, label %block_.L_490a5f, label %block_490a2c

block_490a2c:                                     ; preds = %block_490a12
  %130 = load i64, i64* %RBP.i, align 8
  %131 = add i64 %130, -17
  %132 = add i64 %129, 4
  store i64 %132, i64* %3, align 8
  %133 = inttoptr i64 %131 to i8*
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i64
  %136 = and i64 %135, 4294967295
  store i64 %136, i64* %RDI.i109, align 8
  %137 = add i64 %129, -588380
  %138 = add i64 %129, 9
  %139 = load i64, i64* %6, align 8
  %140 = add i64 %139, -8
  %141 = inttoptr i64 %140 to i64*
  store i64 %138, i64* %141, align 8
  store i64 %140, i64* %6, align 8
  store i64 %137, i64* %3, align 8
  %call2_490a30 = tail call %struct.Memory* @sub_400fd0.toupper_plt(%struct.State* nonnull %0, i64 %137, %struct.Memory* %call2_490a16)
  %142 = load i8, i8* %AL.i, align 1
  %143 = load i64, i64* %3, align 8
  store i8 %142, i8* %CL.i, align 1
  %144 = load i64, i64* %RBP.i, align 8
  %145 = add i64 %144, -17
  %146 = add i64 %143, 5
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %145 to i8*
  store i8 %142, i8* %147, align 1
  %148 = load i8, i8* %CL.i, align 1
  %149 = load i64, i64* %3, align 8
  %150 = sext i8 %148 to i64
  %151 = and i64 %150, 4294967295
  store i64 %151, i64* %RAX.i300, align 8
  %152 = sext i8 %148 to i32
  %153 = add nsw i32 %152, -90
  %154 = icmp ult i8 %148, 90
  %155 = zext i1 %154 to i8
  store i8 %155, i8* %14, align 1
  %156 = and i32 %153, 255
  %157 = tail call i32 @llvm.ctpop.i32(i32 %156)
  %158 = trunc i32 %157 to i8
  %159 = and i8 %158, 1
  %160 = xor i8 %159, 1
  store i8 %160, i8* %21, align 1
  %161 = xor i32 %152, 16
  %162 = xor i32 %161, %153
  %163 = lshr i32 %162, 4
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  store i8 %165, i8* %26, align 1
  %166 = icmp eq i32 %153, 0
  %167 = zext i1 %166 to i8
  store i8 %167, i8* %29, align 1
  %168 = lshr i32 %153, 31
  %169 = trunc i32 %168 to i8
  store i8 %169, i8* %32, align 1
  %170 = lshr i32 %152, 31
  %171 = xor i32 %168, %170
  %172 = add nuw nsw i32 %171, %170
  %173 = icmp eq i32 %172, 2
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %38, align 1
  %175 = icmp ne i8 %169, 0
  %176 = xor i1 %175, %173
  %.demorgan = or i1 %166, %176
  %.v95 = select i1 %.demorgan, i64 12, i64 37
  %177 = add i64 %149, %.v95
  store i64 %177, i64* %3, align 8
  br i1 %.demorgan, label %block_490a46, label %block_.L_490a5f

block_490a46:                                     ; preds = %block_490a2c
  %178 = load i64, i64* %RBP.i, align 8
  %179 = add i64 %178, -17
  %180 = add i64 %177, 4
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %179 to i8*
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i64
  %184 = and i64 %183, 4294967295
  store i64 %184, i64* %RAX.i300, align 8
  %185 = sext i8 %182 to i32
  %186 = add nsw i32 %185, -73
  %187 = icmp ult i8 %182, 73
  %188 = zext i1 %187 to i8
  store i8 %188, i8* %14, align 1
  %189 = and i32 %186, 255
  %190 = tail call i32 @llvm.ctpop.i32(i32 %189)
  %191 = trunc i32 %190 to i8
  %192 = and i8 %191, 1
  %193 = xor i8 %192, 1
  store i8 %193, i8* %21, align 1
  %194 = xor i32 %186, %185
  %195 = lshr i32 %194, 4
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  store i8 %197, i8* %26, align 1
  %198 = icmp eq i32 %186, 0
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %29, align 1
  %200 = lshr i32 %186, 31
  %201 = trunc i32 %200 to i8
  store i8 %201, i8* %32, align 1
  %202 = lshr i32 %185, 31
  %203 = xor i32 %200, %202
  %204 = add nuw nsw i32 %203, %202
  %205 = icmp eq i32 %204, 2
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %38, align 1
  %.v96 = select i1 %198, i64 25, i64 13
  %207 = add i64 %177, %.v96
  store i64 %207, i64* %3, align 8
  br i1 %198, label %block_.L_490a5f, label %block_490a53

block_490a53:                                     ; preds = %block_490a46
  %208 = add i64 %178, -4
  %209 = add i64 %207, 7
  store i64 %209, i64* %3, align 8
  %210 = inttoptr i64 %208 to i32*
  store i32 5, i32* %210, align 4
  %211 = load i64, i64* %3, align 8
  %212 = add i64 %211, 2052
  store i64 %212, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490a5f:                                  ; preds = %block_490a2c, %entry.block_.L_490a5f_crit_edge, %block_490a46, %block_490a12
  %RAX.i585.pre-phi = phi i64* [ %.pre49, %entry.block_.L_490a5f_crit_edge ], [ %RAX.i300, %block_490a46 ], [ %RAX.i300, %block_490a2c ], [ %RAX.i300, %block_490a12 ]
  %213 = phi i64 [ %82, %entry.block_.L_490a5f_crit_edge ], [ %207, %block_490a46 ], [ %177, %block_490a2c ], [ %129, %block_490a12 ]
  %MEMORY.0 = phi %struct.Memory* [ %58, %entry.block_.L_490a5f_crit_edge ], [ %call2_490a30, %block_490a46 ], [ %call2_490a30, %block_490a2c ], [ %call2_490a16, %block_490a12 ]
  %214 = load i64, i64* %RBP.i, align 8
  %215 = add i64 %214, -16
  %216 = add i64 %213, 4
  store i64 %216, i64* %3, align 8
  %217 = inttoptr i64 %215 to i64*
  %218 = load i64, i64* %217, align 8
  store i64 %218, i64* %RAX.i585.pre-phi, align 8
  %219 = add i64 %213, 7
  store i64 %219, i64* %3, align 8
  %220 = inttoptr i64 %218 to i8*
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i64
  %223 = and i64 %222, 4294967295
  store i64 %223, i64* %RCX.i, align 8
  %224 = sext i8 %221 to i32
  %225 = add nsw i32 %224, -63
  %226 = icmp ult i8 %221, 63
  %227 = zext i1 %226 to i8
  store i8 %227, i8* %14, align 1
  %228 = and i32 %225, 255
  %229 = tail call i32 @llvm.ctpop.i32(i32 %228)
  %230 = trunc i32 %229 to i8
  %231 = and i8 %230, 1
  %232 = xor i8 %231, 1
  store i8 %232, i8* %21, align 1
  %233 = xor i32 %224, 16
  %234 = xor i32 %233, %225
  %235 = lshr i32 %234, 4
  %236 = trunc i32 %235 to i8
  %237 = and i8 %236, 1
  store i8 %237, i8* %26, align 1
  %238 = icmp eq i32 %225, 0
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %29, align 1
  %240 = lshr i32 %225, 31
  %241 = trunc i32 %240 to i8
  store i8 %241, i8* %32, align 1
  %242 = lshr i32 %224, 31
  %243 = xor i32 %240, %242
  %244 = add nuw nsw i32 %243, %242
  %245 = icmp eq i32 %244, 2
  %246 = zext i1 %245 to i8
  store i8 %246, i8* %38, align 1
  %.v50 = select i1 %238, i64 16, i64 28
  %247 = add i64 %213, %.v50
  store i64 %247, i64* %3, align 8
  br i1 %238, label %block_490a6f, label %block_.L_490a7b

block_490a6f:                                     ; preds = %block_.L_490a5f
  %248 = add i64 %214, -4
  %249 = add i64 %247, 7
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %248 to i32*
  store i32 18, i32* %250, align 4
  %251 = load i64, i64* %3, align 8
  %252 = add i64 %251, 2024
  store i64 %252, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490a7b:                                  ; preds = %block_.L_490a5f
  %253 = add i64 %247, 5
  br label %block_.L_490a80

block_.L_490a80:                                  ; preds = %block_490a90, %block_.L_490a7b
  %254 = phi i64 [ %214, %block_.L_490a7b ], [ %.pre, %block_490a90 ]
  %storemerge = phi i64 [ %253, %block_.L_490a7b ], [ %314, %block_490a90 ]
  %255 = add i64 %254, -16
  %256 = add i64 %storemerge, 4
  store i64 %256, i64* %3, align 8
  %257 = inttoptr i64 %255 to i64*
  %258 = load i64, i64* %257, align 8
  store i64 %258, i64* %RAX.i585.pre-phi, align 8
  %259 = add i64 %storemerge, 7
  store i64 %259, i64* %3, align 8
  %260 = inttoptr i64 %258 to i8*
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i64
  %263 = and i64 %262, 4294967295
  store i64 %263, i64* %RCX.i, align 8
  %264 = sext i8 %261 to i32
  %265 = add nsw i32 %264, -32
  %266 = icmp ult i8 %261, 32
  %267 = zext i1 %266 to i8
  store i8 %267, i8* %14, align 1
  %268 = and i32 %265, 255
  %269 = tail call i32 @llvm.ctpop.i32(i32 %268)
  %270 = trunc i32 %269 to i8
  %271 = and i8 %270, 1
  %272 = xor i8 %271, 1
  store i8 %272, i8* %21, align 1
  %273 = xor i32 %265, %264
  %274 = lshr i32 %273, 4
  %275 = trunc i32 %274 to i8
  %276 = and i8 %275, 1
  store i8 %276, i8* %26, align 1
  %277 = icmp eq i32 %265, 0
  %278 = zext i1 %277 to i8
  store i8 %278, i8* %29, align 1
  %279 = lshr i32 %265, 31
  %280 = trunc i32 %279 to i8
  store i8 %280, i8* %32, align 1
  %281 = lshr i32 %264, 31
  %282 = xor i32 %279, %281
  %283 = add nuw nsw i32 %282, %281
  %284 = icmp eq i32 %283, 2
  %285 = zext i1 %284 to i8
  store i8 %285, i8* %38, align 1
  %.v51 = select i1 %277, i64 16, i64 33
  %286 = add i64 %storemerge, %.v51
  store i64 %286, i64* %3, align 8
  br i1 %277, label %block_490a90, label %block_.L_490aa1

block_490a90:                                     ; preds = %block_.L_490a80
  %287 = add i64 %286, 4
  store i64 %287, i64* %3, align 8
  %288 = load i64, i64* %257, align 8
  %289 = add i64 %288, 1
  store i64 %289, i64* %RAX.i585.pre-phi, align 8
  %290 = icmp eq i64 %288, -1
  %291 = icmp eq i64 %289, 0
  %292 = or i1 %290, %291
  %293 = zext i1 %292 to i8
  store i8 %293, i8* %14, align 1
  %294 = trunc i64 %289 to i32
  %295 = and i32 %294, 255
  %296 = tail call i32 @llvm.ctpop.i32(i32 %295)
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  %299 = xor i8 %298, 1
  store i8 %299, i8* %21, align 1
  %300 = xor i64 %289, %288
  %301 = lshr i64 %300, 4
  %302 = trunc i64 %301 to i8
  %303 = and i8 %302, 1
  store i8 %303, i8* %26, align 1
  %304 = zext i1 %291 to i8
  store i8 %304, i8* %29, align 1
  %305 = lshr i64 %289, 63
  %306 = trunc i64 %305 to i8
  store i8 %306, i8* %32, align 1
  %307 = lshr i64 %288, 63
  %308 = xor i64 %305, %307
  %309 = add nuw nsw i64 %308, %305
  %310 = icmp eq i64 %309, 2
  %311 = zext i1 %310 to i8
  store i8 %311, i8* %38, align 1
  %312 = add i64 %286, 12
  store i64 %312, i64* %3, align 8
  store i64 %289, i64* %257, align 8
  %313 = load i64, i64* %3, align 8
  %314 = add i64 %313, -28
  %315 = add i64 %313, 5
  store i64 %315, i64* %3, align 8
  %.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_490a80

block_.L_490aa1:                                  ; preds = %block_.L_490a80
  store i64 ptrtoint (%G__0x586a9a_type* @G__0x586a9a to i64), i64* %RSI.i51, align 8
  store i64 9, i64* %RAX.i585.pre-phi, align 8
  store i64 9, i64* %RDX.i70, align 8
  %316 = add i64 %286, 21
  store i64 %316, i64* %3, align 8
  %317 = load i64, i64* %257, align 8
  store i64 %317, i64* %RDI.i109, align 8
  %318 = add i64 %286, -588529
  %319 = add i64 %286, 26
  %320 = load i64, i64* %6, align 8
  %321 = add i64 %320, -8
  %322 = inttoptr i64 %321 to i64*
  store i64 %319, i64* %322, align 8
  store i64 %321, i64* %6, align 8
  store i64 %318, i64* %3, align 8
  %323 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %MEMORY.0)
  %324 = load i32, i32* %EAX.i185, align 4
  %325 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %326 = and i32 %324, 255
  %327 = tail call i32 @llvm.ctpop.i32(i32 %326)
  %328 = trunc i32 %327 to i8
  %329 = and i8 %328, 1
  %330 = xor i8 %329, 1
  store i8 %330, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %331 = icmp eq i32 %324, 0
  %332 = zext i1 %331 to i8
  store i8 %332, i8* %29, align 1
  %333 = lshr i32 %324, 31
  %334 = trunc i32 %333 to i8
  store i8 %334, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v52 = select i1 %331, i64 9, i64 21
  %335 = add i64 %325, %.v52
  store i64 %335, i64* %3, align 8
  br i1 %331, label %block_490ac4, label %block_.L_490ad0

block_490ac4:                                     ; preds = %block_.L_490aa1
  %336 = load i64, i64* %RBP.i, align 8
  %337 = add i64 %336, -4
  %338 = add i64 %335, 7
  store i64 %338, i64* %3, align 8
  %339 = inttoptr i64 %337 to i32*
  store i32 9, i32* %339, align 4
  %340 = load i64, i64* %3, align 8
  %341 = add i64 %340, 1939
  store i64 %341, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490ad0:                                  ; preds = %block_.L_490aa1
  store i64 ptrtoint (%G__0x586aa4_type* @G__0x586aa4 to i64), i64* %RSI.i51, align 8
  store i64 9, i64* %RAX.i585.pre-phi, align 8
  store i64 9, i64* %RDX.i70, align 8
  %342 = load i64, i64* %RBP.i, align 8
  %343 = add i64 %342, -16
  %344 = add i64 %335, 21
  store i64 %344, i64* %3, align 8
  %345 = inttoptr i64 %343 to i64*
  %346 = load i64, i64* %345, align 8
  store i64 %346, i64* %RDI.i109, align 8
  %347 = add i64 %335, -588576
  %348 = add i64 %335, 26
  %349 = load i64, i64* %6, align 8
  %350 = add i64 %349, -8
  %351 = inttoptr i64 %350 to i64*
  store i64 %348, i64* %351, align 8
  store i64 %350, i64* %6, align 8
  store i64 %347, i64* %3, align 8
  %352 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %323)
  %353 = load i32, i32* %EAX.i185, align 4
  %354 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %355 = and i32 %353, 255
  %356 = tail call i32 @llvm.ctpop.i32(i32 %355)
  %357 = trunc i32 %356 to i8
  %358 = and i8 %357, 1
  %359 = xor i8 %358, 1
  store i8 %359, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %360 = icmp eq i32 %353, 0
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %29, align 1
  %362 = lshr i32 %353, 31
  %363 = trunc i32 %362 to i8
  store i8 %363, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v53 = select i1 %360, i64 9, i64 21
  %364 = add i64 %354, %.v53
  store i64 %364, i64* %3, align 8
  br i1 %360, label %block_490af3, label %block_.L_490aff

block_490af3:                                     ; preds = %block_.L_490ad0
  %365 = load i64, i64* %RBP.i, align 8
  %366 = add i64 %365, -4
  %367 = add i64 %364, 7
  store i64 %367, i64* %3, align 8
  %368 = inttoptr i64 %366 to i32*
  store i32 10, i32* %368, align 4
  %369 = load i64, i64* %3, align 8
  %370 = add i64 %369, 1892
  store i64 %370, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490aff:                                  ; preds = %block_.L_490ad0
  store i64 ptrtoint (%G__0x586aae_type* @G__0x586aae to i64), i64* %RSI.i51, align 8
  store i64 9, i64* %RAX.i585.pre-phi, align 8
  store i64 9, i64* %RDX.i70, align 8
  %371 = load i64, i64* %RBP.i, align 8
  %372 = add i64 %371, -16
  %373 = add i64 %364, 21
  store i64 %373, i64* %3, align 8
  %374 = inttoptr i64 %372 to i64*
  %375 = load i64, i64* %374, align 8
  store i64 %375, i64* %RDI.i109, align 8
  %376 = add i64 %364, -588623
  %377 = add i64 %364, 26
  %378 = load i64, i64* %6, align 8
  %379 = add i64 %378, -8
  %380 = inttoptr i64 %379 to i64*
  store i64 %377, i64* %380, align 8
  store i64 %379, i64* %6, align 8
  store i64 %376, i64* %3, align 8
  %381 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %352)
  %382 = load i32, i32* %EAX.i185, align 4
  %383 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %384 = and i32 %382, 255
  %385 = tail call i32 @llvm.ctpop.i32(i32 %384)
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 1
  %388 = xor i8 %387, 1
  store i8 %388, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %389 = icmp eq i32 %382, 0
  %390 = zext i1 %389 to i8
  store i8 %390, i8* %29, align 1
  %391 = lshr i32 %382, 31
  %392 = trunc i32 %391 to i8
  store i8 %392, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v54 = select i1 %389, i64 9, i64 21
  %393 = add i64 %383, %.v54
  store i64 %393, i64* %3, align 8
  br i1 %389, label %block_490b22, label %block_.L_490b2e

block_490b22:                                     ; preds = %block_.L_490aff
  %394 = load i64, i64* %RBP.i, align 8
  %395 = add i64 %394, -4
  %396 = add i64 %393, 7
  store i64 %396, i64* %3, align 8
  %397 = inttoptr i64 %395 to i32*
  store i32 17, i32* %397, align 4
  %398 = load i64, i64* %3, align 8
  %399 = add i64 %398, 1845
  store i64 %399, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490b2e:                                  ; preds = %block_.L_490aff
  store i64 ptrtoint (%G__0x586ab8_type* @G__0x586ab8 to i64), i64* %RSI.i51, align 8
  store i64 9, i64* %RAX.i585.pre-phi, align 8
  store i64 9, i64* %RDX.i70, align 8
  %400 = load i64, i64* %RBP.i, align 8
  %401 = add i64 %400, -16
  %402 = add i64 %393, 21
  store i64 %402, i64* %3, align 8
  %403 = inttoptr i64 %401 to i64*
  %404 = load i64, i64* %403, align 8
  store i64 %404, i64* %RDI.i109, align 8
  %405 = add i64 %393, -588670
  %406 = add i64 %393, 26
  %407 = load i64, i64* %6, align 8
  %408 = add i64 %407, -8
  %409 = inttoptr i64 %408 to i64*
  store i64 %406, i64* %409, align 8
  store i64 %408, i64* %6, align 8
  store i64 %405, i64* %3, align 8
  %410 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %381)
  %411 = load i32, i32* %EAX.i185, align 4
  %412 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %413 = and i32 %411, 255
  %414 = tail call i32 @llvm.ctpop.i32(i32 %413)
  %415 = trunc i32 %414 to i8
  %416 = and i8 %415, 1
  %417 = xor i8 %416, 1
  store i8 %417, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %418 = icmp eq i32 %411, 0
  %419 = zext i1 %418 to i8
  store i8 %419, i8* %29, align 1
  %420 = lshr i32 %411, 31
  %421 = trunc i32 %420 to i8
  store i8 %421, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v55 = select i1 %418, i64 9, i64 21
  %422 = add i64 %412, %.v55
  store i64 %422, i64* %3, align 8
  br i1 %418, label %block_490b51, label %block_.L_490b5d

block_490b51:                                     ; preds = %block_.L_490b2e
  %423 = load i64, i64* %RBP.i, align 8
  %424 = add i64 %423, -4
  %425 = add i64 %422, 7
  store i64 %425, i64* %3, align 8
  %426 = inttoptr i64 %424 to i32*
  store i32 35, i32* %426, align 4
  %427 = load i64, i64* %3, align 8
  %428 = add i64 %427, 1798
  store i64 %428, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490b5d:                                  ; preds = %block_.L_490b2e
  store i64 ptrtoint (%G__0x586ac4_type* @G__0x586ac4 to i64), i64* %RSI.i51, align 8
  store i64 9, i64* %RAX.i585.pre-phi, align 8
  store i64 9, i64* %RDX.i70, align 8
  %429 = load i64, i64* %RBP.i, align 8
  %430 = add i64 %429, -16
  %431 = add i64 %422, 21
  store i64 %431, i64* %3, align 8
  %432 = inttoptr i64 %430 to i64*
  %433 = load i64, i64* %432, align 8
  store i64 %433, i64* %RDI.i109, align 8
  %434 = add i64 %422, -588717
  %435 = add i64 %422, 26
  %436 = load i64, i64* %6, align 8
  %437 = add i64 %436, -8
  %438 = inttoptr i64 %437 to i64*
  store i64 %435, i64* %438, align 8
  store i64 %437, i64* %6, align 8
  store i64 %434, i64* %3, align 8
  %439 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %410)
  %440 = load i32, i32* %EAX.i185, align 4
  %441 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %442 = and i32 %440, 255
  %443 = tail call i32 @llvm.ctpop.i32(i32 %442)
  %444 = trunc i32 %443 to i8
  %445 = and i8 %444, 1
  %446 = xor i8 %445, 1
  store i8 %446, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %447 = icmp eq i32 %440, 0
  %448 = zext i1 %447 to i8
  store i8 %448, i8* %29, align 1
  %449 = lshr i32 %440, 31
  %450 = trunc i32 %449 to i8
  store i8 %450, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v56 = select i1 %447, i64 9, i64 21
  %451 = add i64 %441, %.v56
  store i64 %451, i64* %3, align 8
  br i1 %447, label %block_490b80, label %block_.L_490b8c

block_490b80:                                     ; preds = %block_.L_490b5d
  %452 = load i64, i64* %RBP.i, align 8
  %453 = add i64 %452, -4
  %454 = add i64 %451, 7
  store i64 %454, i64* %3, align 8
  %455 = inttoptr i64 %453 to i32*
  store i32 36, i32* %455, align 4
  %456 = load i64, i64* %3, align 8
  %457 = add i64 %456, 1751
  store i64 %457, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490b8c:                                  ; preds = %block_.L_490b5d
  store i64 ptrtoint (%G__0x5877c3_type* @G__0x5877c3 to i64), i64* %RSI.i51, align 8
  store i64 9, i64* %RAX.i585.pre-phi, align 8
  store i64 9, i64* %RDX.i70, align 8
  %458 = load i64, i64* %RBP.i, align 8
  %459 = add i64 %458, -16
  %460 = add i64 %451, 21
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %459 to i64*
  %462 = load i64, i64* %461, align 8
  store i64 %462, i64* %RDI.i109, align 8
  %463 = add i64 %451, -588764
  %464 = add i64 %451, 26
  %465 = load i64, i64* %6, align 8
  %466 = add i64 %465, -8
  %467 = inttoptr i64 %466 to i64*
  store i64 %464, i64* %467, align 8
  store i64 %466, i64* %6, align 8
  store i64 %463, i64* %3, align 8
  %468 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %439)
  %469 = load i32, i32* %EAX.i185, align 4
  %470 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %471 = and i32 %469, 255
  %472 = tail call i32 @llvm.ctpop.i32(i32 %471)
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  %475 = xor i8 %474, 1
  store i8 %475, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %476 = icmp eq i32 %469, 0
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %29, align 1
  %478 = lshr i32 %469, 31
  %479 = trunc i32 %478 to i8
  store i8 %479, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v57 = select i1 %476, i64 9, i64 21
  %480 = add i64 %470, %.v57
  store i64 %480, i64* %3, align 8
  br i1 %476, label %block_490baf, label %block_.L_490bbb

block_490baf:                                     ; preds = %block_.L_490b8c
  %481 = load i64, i64* %RBP.i, align 8
  %482 = add i64 %481, -4
  %483 = add i64 %480, 7
  store i64 %483, i64* %3, align 8
  %484 = inttoptr i64 %482 to i32*
  store i32 12, i32* %484, align 4
  %485 = load i64, i64* %3, align 8
  %486 = add i64 %485, 1704
  store i64 %486, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490bbb:                                  ; preds = %block_.L_490b8c
  store i64 ptrtoint (%G__0x586ad0_type* @G__0x586ad0 to i64), i64* %RSI.i51, align 8
  store i64 9, i64* %RAX.i585.pre-phi, align 8
  store i64 9, i64* %RDX.i70, align 8
  %487 = load i64, i64* %RBP.i, align 8
  %488 = add i64 %487, -16
  %489 = add i64 %480, 21
  store i64 %489, i64* %3, align 8
  %490 = inttoptr i64 %488 to i64*
  %491 = load i64, i64* %490, align 8
  store i64 %491, i64* %RDI.i109, align 8
  %492 = add i64 %480, -588811
  %493 = add i64 %480, 26
  %494 = load i64, i64* %6, align 8
  %495 = add i64 %494, -8
  %496 = inttoptr i64 %495 to i64*
  store i64 %493, i64* %496, align 8
  store i64 %495, i64* %6, align 8
  store i64 %492, i64* %3, align 8
  %497 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %468)
  %498 = load i32, i32* %EAX.i185, align 4
  %499 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %500 = and i32 %498, 255
  %501 = tail call i32 @llvm.ctpop.i32(i32 %500)
  %502 = trunc i32 %501 to i8
  %503 = and i8 %502, 1
  %504 = xor i8 %503, 1
  store i8 %504, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %505 = icmp eq i32 %498, 0
  %506 = zext i1 %505 to i8
  store i8 %506, i8* %29, align 1
  %507 = lshr i32 %498, 31
  %508 = trunc i32 %507 to i8
  store i8 %508, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v58 = select i1 %505, i64 9, i64 21
  %509 = add i64 %499, %.v58
  store i64 %509, i64* %3, align 8
  br i1 %505, label %block_490bde, label %block_.L_490bea

block_490bde:                                     ; preds = %block_.L_490bbb
  %510 = load i64, i64* %RBP.i, align 8
  %511 = add i64 %510, -4
  %512 = add i64 %509, 7
  store i64 %512, i64* %3, align 8
  %513 = inttoptr i64 %511 to i32*
  store i32 41, i32* %513, align 4
  %514 = load i64, i64* %3, align 8
  %515 = add i64 %514, 1657
  store i64 %515, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490bea:                                  ; preds = %block_.L_490bbb
  store i64 ptrtoint (%G__0x58742a_type* @G__0x58742a to i64), i64* %RSI.i51, align 8
  store i64 5, i64* %RAX.i585.pre-phi, align 8
  store i64 5, i64* %RDX.i70, align 8
  %516 = load i64, i64* %RBP.i, align 8
  %517 = add i64 %516, -16
  %518 = add i64 %509, 21
  store i64 %518, i64* %3, align 8
  %519 = inttoptr i64 %517 to i64*
  %520 = load i64, i64* %519, align 8
  store i64 %520, i64* %RDI.i109, align 8
  %521 = add i64 %509, -588858
  %522 = add i64 %509, 26
  %523 = load i64, i64* %6, align 8
  %524 = add i64 %523, -8
  %525 = inttoptr i64 %524 to i64*
  store i64 %522, i64* %525, align 8
  store i64 %524, i64* %6, align 8
  store i64 %521, i64* %3, align 8
  %526 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %497)
  %527 = load i32, i32* %EAX.i185, align 4
  %528 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %529 = and i32 %527, 255
  %530 = tail call i32 @llvm.ctpop.i32(i32 %529)
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  %533 = xor i8 %532, 1
  store i8 %533, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %534 = icmp eq i32 %527, 0
  %535 = zext i1 %534 to i8
  store i8 %535, i8* %29, align 1
  %536 = lshr i32 %527, 31
  %537 = trunc i32 %536 to i8
  store i8 %537, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v59 = select i1 %534, i64 9, i64 21
  %538 = add i64 %528, %.v59
  store i64 %538, i64* %3, align 8
  br i1 %534, label %block_490c0d, label %block_.L_490c19

block_490c0d:                                     ; preds = %block_.L_490bea
  %539 = load i64, i64* %RBP.i, align 8
  %540 = add i64 %539, -4
  %541 = add i64 %538, 7
  store i64 %541, i64* %3, align 8
  %542 = inttoptr i64 %540 to i32*
  store i32 11, i32* %542, align 4
  %543 = load i64, i64* %3, align 8
  %544 = add i64 %543, 1610
  store i64 %544, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490c19:                                  ; preds = %block_.L_490bea
  store i64 ptrtoint (%G__0x586add_type* @G__0x586add to i64), i64* %RSI.i51, align 8
  store i64 7, i64* %RAX.i585.pre-phi, align 8
  store i64 7, i64* %RDX.i70, align 8
  %545 = load i64, i64* %RBP.i, align 8
  %546 = add i64 %545, -16
  %547 = add i64 %538, 21
  store i64 %547, i64* %3, align 8
  %548 = inttoptr i64 %546 to i64*
  %549 = load i64, i64* %548, align 8
  store i64 %549, i64* %RDI.i109, align 8
  %550 = add i64 %538, -588905
  %551 = add i64 %538, 26
  %552 = load i64, i64* %6, align 8
  %553 = add i64 %552, -8
  %554 = inttoptr i64 %553 to i64*
  store i64 %551, i64* %554, align 8
  store i64 %553, i64* %6, align 8
  store i64 %550, i64* %3, align 8
  %555 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %526)
  %556 = load i32, i32* %EAX.i185, align 4
  %557 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %558 = and i32 %556, 255
  %559 = tail call i32 @llvm.ctpop.i32(i32 %558)
  %560 = trunc i32 %559 to i8
  %561 = and i8 %560, 1
  %562 = xor i8 %561, 1
  store i8 %562, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %563 = icmp eq i32 %556, 0
  %564 = zext i1 %563 to i8
  store i8 %564, i8* %29, align 1
  %565 = lshr i32 %556, 31
  %566 = trunc i32 %565 to i8
  store i8 %566, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v60 = select i1 %563, i64 9, i64 21
  %567 = add i64 %557, %.v60
  store i64 %567, i64* %3, align 8
  br i1 %563, label %block_490c3c, label %block_.L_490c48

block_490c3c:                                     ; preds = %block_.L_490c19
  %568 = load i64, i64* %RBP.i, align 8
  %569 = add i64 %568, -4
  %570 = add i64 %567, 7
  store i64 %570, i64* %3, align 8
  %571 = inttoptr i64 %569 to i32*
  store i32 16, i32* %571, align 4
  %572 = load i64, i64* %3, align 8
  %573 = add i64 %572, 1563
  store i64 %573, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490c48:                                  ; preds = %block_.L_490c19
  store i64 ptrtoint (%G__0x586ae5_type* @G__0x586ae5 to i64), i64* %RSI.i51, align 8
  store i64 7, i64* %RAX.i585.pre-phi, align 8
  store i64 7, i64* %RDX.i70, align 8
  %574 = load i64, i64* %RBP.i, align 8
  %575 = add i64 %574, -16
  %576 = add i64 %567, 21
  store i64 %576, i64* %3, align 8
  %577 = inttoptr i64 %575 to i64*
  %578 = load i64, i64* %577, align 8
  store i64 %578, i64* %RDI.i109, align 8
  %579 = add i64 %567, -588952
  %580 = add i64 %567, 26
  %581 = load i64, i64* %6, align 8
  %582 = add i64 %581, -8
  %583 = inttoptr i64 %582 to i64*
  store i64 %580, i64* %583, align 8
  store i64 %582, i64* %6, align 8
  store i64 %579, i64* %3, align 8
  %584 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %555)
  %585 = load i32, i32* %EAX.i185, align 4
  %586 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %587 = and i32 %585, 255
  %588 = tail call i32 @llvm.ctpop.i32(i32 %587)
  %589 = trunc i32 %588 to i8
  %590 = and i8 %589, 1
  %591 = xor i8 %590, 1
  store i8 %591, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %592 = icmp eq i32 %585, 0
  %593 = zext i1 %592 to i8
  store i8 %593, i8* %29, align 1
  %594 = lshr i32 %585, 31
  %595 = trunc i32 %594 to i8
  store i8 %595, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v61 = select i1 %592, i64 9, i64 21
  %596 = add i64 %586, %.v61
  store i64 %596, i64* %3, align 8
  br i1 %592, label %block_490c6b, label %block_.L_490c77

block_490c6b:                                     ; preds = %block_.L_490c48
  %597 = load i64, i64* %RBP.i, align 8
  %598 = add i64 %597, -4
  %599 = add i64 %596, 7
  store i64 %599, i64* %3, align 8
  %600 = inttoptr i64 %598 to i32*
  store i32 28, i32* %600, align 4
  %601 = load i64, i64* %3, align 8
  %602 = add i64 %601, 1516
  store i64 %602, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490c77:                                  ; preds = %block_.L_490c48
  store i64 ptrtoint (%G__0x586aef_type* @G__0x586aef to i64), i64* %RSI.i51, align 8
  store i64 6, i64* %RAX.i585.pre-phi, align 8
  store i64 6, i64* %RDX.i70, align 8
  %603 = load i64, i64* %RBP.i, align 8
  %604 = add i64 %603, -16
  %605 = add i64 %596, 21
  store i64 %605, i64* %3, align 8
  %606 = inttoptr i64 %604 to i64*
  %607 = load i64, i64* %606, align 8
  store i64 %607, i64* %RDI.i109, align 8
  %608 = add i64 %596, -588999
  %609 = add i64 %596, 26
  %610 = load i64, i64* %6, align 8
  %611 = add i64 %610, -8
  %612 = inttoptr i64 %611 to i64*
  store i64 %609, i64* %612, align 8
  store i64 %611, i64* %6, align 8
  store i64 %608, i64* %3, align 8
  %613 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %584)
  %614 = load i32, i32* %EAX.i185, align 4
  %615 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %616 = and i32 %614, 255
  %617 = tail call i32 @llvm.ctpop.i32(i32 %616)
  %618 = trunc i32 %617 to i8
  %619 = and i8 %618, 1
  %620 = xor i8 %619, 1
  store i8 %620, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %621 = icmp eq i32 %614, 0
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %29, align 1
  %623 = lshr i32 %614, 31
  %624 = trunc i32 %623 to i8
  store i8 %624, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v62 = select i1 %621, i64 9, i64 21
  %625 = add i64 %615, %.v62
  store i64 %625, i64* %3, align 8
  br i1 %621, label %block_490c9a, label %block_.L_490ca6

block_490c9a:                                     ; preds = %block_.L_490c77
  %626 = load i64, i64* %RBP.i, align 8
  %627 = add i64 %626, -4
  %628 = add i64 %625, 7
  store i64 %628, i64* %3, align 8
  %629 = inttoptr i64 %627 to i32*
  store i32 3, i32* %629, align 4
  %630 = load i64, i64* %3, align 8
  %631 = add i64 %630, 1469
  store i64 %631, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490ca6:                                  ; preds = %block_.L_490c77
  store i64 ptrtoint (%G__0x586af6_type* @G__0x586af6 to i64), i64* %RSI.i51, align 8
  store i64 6, i64* %RAX.i585.pre-phi, align 8
  store i64 6, i64* %RDX.i70, align 8
  %632 = load i64, i64* %RBP.i, align 8
  %633 = add i64 %632, -16
  %634 = add i64 %625, 21
  store i64 %634, i64* %3, align 8
  %635 = inttoptr i64 %633 to i64*
  %636 = load i64, i64* %635, align 8
  store i64 %636, i64* %RDI.i109, align 8
  %637 = add i64 %625, -589046
  %638 = add i64 %625, 26
  %639 = load i64, i64* %6, align 8
  %640 = add i64 %639, -8
  %641 = inttoptr i64 %640 to i64*
  store i64 %638, i64* %641, align 8
  store i64 %640, i64* %6, align 8
  store i64 %637, i64* %3, align 8
  %642 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %613)
  %643 = load i32, i32* %EAX.i185, align 4
  %644 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %645 = and i32 %643, 255
  %646 = tail call i32 @llvm.ctpop.i32(i32 %645)
  %647 = trunc i32 %646 to i8
  %648 = and i8 %647, 1
  %649 = xor i8 %648, 1
  store i8 %649, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %650 = icmp eq i32 %643, 0
  %651 = zext i1 %650 to i8
  store i8 %651, i8* %29, align 1
  %652 = lshr i32 %643, 31
  %653 = trunc i32 %652 to i8
  store i8 %653, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v63 = select i1 %650, i64 9, i64 21
  %654 = add i64 %644, %.v63
  store i64 %654, i64* %3, align 8
  br i1 %650, label %block_490cc9, label %block_.L_490cd5

block_490cc9:                                     ; preds = %block_.L_490ca6
  %655 = load i64, i64* %RBP.i, align 8
  %656 = add i64 %655, -4
  %657 = add i64 %654, 7
  store i64 %657, i64* %3, align 8
  %658 = inttoptr i64 %656 to i32*
  store i32 30, i32* %658, align 4
  %659 = load i64, i64* %3, align 8
  %660 = add i64 %659, 1422
  store i64 %660, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490cd5:                                  ; preds = %block_.L_490ca6
  store i64 ptrtoint (%G__0x586aff_type* @G__0x586aff to i64), i64* %RSI.i51, align 8
  store i64 6, i64* %RAX.i585.pre-phi, align 8
  store i64 6, i64* %RDX.i70, align 8
  %661 = load i64, i64* %RBP.i, align 8
  %662 = add i64 %661, -16
  %663 = add i64 %654, 21
  store i64 %663, i64* %3, align 8
  %664 = inttoptr i64 %662 to i64*
  %665 = load i64, i64* %664, align 8
  store i64 %665, i64* %RDI.i109, align 8
  %666 = add i64 %654, -589093
  %667 = add i64 %654, 26
  %668 = load i64, i64* %6, align 8
  %669 = add i64 %668, -8
  %670 = inttoptr i64 %669 to i64*
  store i64 %667, i64* %670, align 8
  store i64 %669, i64* %6, align 8
  store i64 %666, i64* %3, align 8
  %671 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %642)
  %672 = load i32, i32* %EAX.i185, align 4
  %673 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %674 = and i32 %672, 255
  %675 = tail call i32 @llvm.ctpop.i32(i32 %674)
  %676 = trunc i32 %675 to i8
  %677 = and i8 %676, 1
  %678 = xor i8 %677, 1
  store i8 %678, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %679 = icmp eq i32 %672, 0
  %680 = zext i1 %679 to i8
  store i8 %680, i8* %29, align 1
  %681 = lshr i32 %672, 31
  %682 = trunc i32 %681 to i8
  store i8 %682, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v64 = select i1 %679, i64 9, i64 21
  %683 = add i64 %673, %.v64
  store i64 %683, i64* %3, align 8
  br i1 %679, label %block_490cf8, label %block_.L_490d04

block_490cf8:                                     ; preds = %block_.L_490cd5
  %684 = load i64, i64* %RBP.i, align 8
  %685 = add i64 %684, -4
  %686 = add i64 %683, 7
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %685 to i32*
  store i32 31, i32* %687, align 4
  %688 = load i64, i64* %3, align 8
  %689 = add i64 %688, 1375
  store i64 %689, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490d04:                                  ; preds = %block_.L_490cd5
  store i64 ptrtoint (%G__0x586b09_type* @G__0x586b09 to i64), i64* %RSI.i51, align 8
  store i64 6, i64* %RAX.i585.pre-phi, align 8
  store i64 6, i64* %RDX.i70, align 8
  %690 = load i64, i64* %RBP.i, align 8
  %691 = add i64 %690, -16
  %692 = add i64 %683, 21
  store i64 %692, i64* %3, align 8
  %693 = inttoptr i64 %691 to i64*
  %694 = load i64, i64* %693, align 8
  store i64 %694, i64* %RDI.i109, align 8
  %695 = add i64 %683, -589140
  %696 = add i64 %683, 26
  %697 = load i64, i64* %6, align 8
  %698 = add i64 %697, -8
  %699 = inttoptr i64 %698 to i64*
  store i64 %696, i64* %699, align 8
  store i64 %698, i64* %6, align 8
  store i64 %695, i64* %3, align 8
  %700 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %671)
  %701 = load i32, i32* %EAX.i185, align 4
  %702 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %703 = and i32 %701, 255
  %704 = tail call i32 @llvm.ctpop.i32(i32 %703)
  %705 = trunc i32 %704 to i8
  %706 = and i8 %705, 1
  %707 = xor i8 %706, 1
  store i8 %707, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %708 = icmp eq i32 %701, 0
  %709 = zext i1 %708 to i8
  store i8 %709, i8* %29, align 1
  %710 = lshr i32 %701, 31
  %711 = trunc i32 %710 to i8
  store i8 %711, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v65 = select i1 %708, i64 9, i64 21
  %712 = add i64 %702, %.v65
  store i64 %712, i64* %3, align 8
  br i1 %708, label %block_490d27, label %block_.L_490d33

block_490d27:                                     ; preds = %block_.L_490d04
  %713 = load i64, i64* %RBP.i, align 8
  %714 = add i64 %713, -4
  %715 = add i64 %712, 7
  store i64 %715, i64* %3, align 8
  %716 = inttoptr i64 %714 to i32*
  store i32 29, i32* %716, align 4
  %717 = load i64, i64* %3, align 8
  %718 = add i64 %717, 1328
  store i64 %718, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490d33:                                  ; preds = %block_.L_490d04
  store i64 ptrtoint (%G__0x57fc64_type* @G__0x57fc64 to i64), i64* %RSI.i51, align 8
  store i64 5, i64* %RAX.i585.pre-phi, align 8
  store i64 5, i64* %RDX.i70, align 8
  %719 = load i64, i64* %RBP.i, align 8
  %720 = add i64 %719, -16
  %721 = add i64 %712, 21
  store i64 %721, i64* %3, align 8
  %722 = inttoptr i64 %720 to i64*
  %723 = load i64, i64* %722, align 8
  store i64 %723, i64* %RDI.i109, align 8
  %724 = add i64 %712, -589187
  %725 = add i64 %712, 26
  %726 = load i64, i64* %6, align 8
  %727 = add i64 %726, -8
  %728 = inttoptr i64 %727 to i64*
  store i64 %725, i64* %728, align 8
  store i64 %727, i64* %6, align 8
  store i64 %724, i64* %3, align 8
  %729 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %700)
  %730 = load i32, i32* %EAX.i185, align 4
  %731 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %732 = and i32 %730, 255
  %733 = tail call i32 @llvm.ctpop.i32(i32 %732)
  %734 = trunc i32 %733 to i8
  %735 = and i8 %734, 1
  %736 = xor i8 %735, 1
  store i8 %736, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %737 = icmp eq i32 %730, 0
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %29, align 1
  %739 = lshr i32 %730, 31
  %740 = trunc i32 %739 to i8
  store i8 %740, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v66 = select i1 %737, i64 9, i64 21
  %741 = add i64 %731, %.v66
  store i64 %741, i64* %3, align 8
  br i1 %737, label %block_490d56, label %block_.L_490d62

block_490d56:                                     ; preds = %block_.L_490d33
  %742 = load i64, i64* %RBP.i, align 8
  %743 = add i64 %742, -4
  %744 = add i64 %741, 7
  store i64 %744, i64* %3, align 8
  %745 = inttoptr i64 %743 to i32*
  store i32 14, i32* %745, align 4
  %746 = load i64, i64* %3, align 8
  %747 = add i64 %746, 1281
  store i64 %747, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490d62:                                  ; preds = %block_.L_490d33
  store i64 ptrtoint (%G__0x586b12_type* @G__0x586b12 to i64), i64* %RSI.i51, align 8
  store i64 5, i64* %RAX.i585.pre-phi, align 8
  store i64 5, i64* %RDX.i70, align 8
  %748 = load i64, i64* %RBP.i, align 8
  %749 = add i64 %748, -16
  %750 = add i64 %741, 21
  store i64 %750, i64* %3, align 8
  %751 = inttoptr i64 %749 to i64*
  %752 = load i64, i64* %751, align 8
  store i64 %752, i64* %RDI.i109, align 8
  %753 = add i64 %741, -589234
  %754 = add i64 %741, 26
  %755 = load i64, i64* %6, align 8
  %756 = add i64 %755, -8
  %757 = inttoptr i64 %756 to i64*
  store i64 %754, i64* %757, align 8
  store i64 %756, i64* %6, align 8
  store i64 %753, i64* %3, align 8
  %758 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %729)
  %759 = load i32, i32* %EAX.i185, align 4
  %760 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %761 = and i32 %759, 255
  %762 = tail call i32 @llvm.ctpop.i32(i32 %761)
  %763 = trunc i32 %762 to i8
  %764 = and i8 %763, 1
  %765 = xor i8 %764, 1
  store i8 %765, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %766 = icmp eq i32 %759, 0
  %767 = zext i1 %766 to i8
  store i8 %767, i8* %29, align 1
  %768 = lshr i32 %759, 31
  %769 = trunc i32 %768 to i8
  store i8 %769, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v67 = select i1 %766, i64 9, i64 21
  %770 = add i64 %760, %.v67
  store i64 %770, i64* %3, align 8
  br i1 %766, label %block_490d85, label %block_.L_490d91

block_490d85:                                     ; preds = %block_.L_490d62
  %771 = load i64, i64* %RBP.i, align 8
  %772 = add i64 %771, -4
  %773 = add i64 %770, 7
  store i64 %773, i64* %3, align 8
  %774 = inttoptr i64 %772 to i32*
  store i32 7, i32* %774, align 4
  %775 = load i64, i64* %3, align 8
  %776 = add i64 %775, 1234
  store i64 %776, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490d91:                                  ; preds = %block_.L_490d62
  store i64 ptrtoint (%G__0x586eef_type* @G__0x586eef to i64), i64* %RSI.i51, align 8
  store i64 4, i64* %RAX.i585.pre-phi, align 8
  store i64 4, i64* %RDX.i70, align 8
  %777 = load i64, i64* %RBP.i, align 8
  %778 = add i64 %777, -16
  %779 = add i64 %770, 21
  store i64 %779, i64* %3, align 8
  %780 = inttoptr i64 %778 to i64*
  %781 = load i64, i64* %780, align 8
  store i64 %781, i64* %RDI.i109, align 8
  %782 = add i64 %770, -589281
  %783 = add i64 %770, 26
  %784 = load i64, i64* %6, align 8
  %785 = add i64 %784, -8
  %786 = inttoptr i64 %785 to i64*
  store i64 %783, i64* %786, align 8
  store i64 %785, i64* %6, align 8
  store i64 %782, i64* %3, align 8
  %787 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %758)
  %788 = load i32, i32* %EAX.i185, align 4
  %789 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %790 = and i32 %788, 255
  %791 = tail call i32 @llvm.ctpop.i32(i32 %790)
  %792 = trunc i32 %791 to i8
  %793 = and i8 %792, 1
  %794 = xor i8 %793, 1
  store i8 %794, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %795 = icmp eq i32 %788, 0
  %796 = zext i1 %795 to i8
  store i8 %796, i8* %29, align 1
  %797 = lshr i32 %788, 31
  %798 = trunc i32 %797 to i8
  store i8 %798, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v68 = select i1 %795, i64 9, i64 21
  %799 = add i64 %789, %.v68
  store i64 %799, i64* %3, align 8
  br i1 %795, label %block_490db4, label %block_.L_490dc0

block_490db4:                                     ; preds = %block_.L_490d91
  %800 = load i64, i64* %RBP.i, align 8
  %801 = add i64 %800, -4
  %802 = add i64 %799, 7
  store i64 %802, i64* %3, align 8
  %803 = inttoptr i64 %801 to i32*
  store i32 13, i32* %803, align 4
  %804 = load i64, i64* %3, align 8
  %805 = add i64 %804, 1187
  store i64 %805, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490dc0:                                  ; preds = %block_.L_490d91
  store i64 ptrtoint (%G__0x585698_type* @G__0x585698 to i64), i64* %RSI.i51, align 8
  store i64 4, i64* %RAX.i585.pre-phi, align 8
  store i64 4, i64* %RDX.i70, align 8
  %806 = load i64, i64* %RBP.i, align 8
  %807 = add i64 %806, -16
  %808 = add i64 %799, 21
  store i64 %808, i64* %3, align 8
  %809 = inttoptr i64 %807 to i64*
  %810 = load i64, i64* %809, align 8
  store i64 %810, i64* %RDI.i109, align 8
  %811 = add i64 %799, -589328
  %812 = add i64 %799, 26
  %813 = load i64, i64* %6, align 8
  %814 = add i64 %813, -8
  %815 = inttoptr i64 %814 to i64*
  store i64 %812, i64* %815, align 8
  store i64 %814, i64* %6, align 8
  store i64 %811, i64* %3, align 8
  %816 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %787)
  %817 = load i32, i32* %EAX.i185, align 4
  %818 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %819 = and i32 %817, 255
  %820 = tail call i32 @llvm.ctpop.i32(i32 %819)
  %821 = trunc i32 %820 to i8
  %822 = and i8 %821, 1
  %823 = xor i8 %822, 1
  store i8 %823, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %824 = icmp eq i32 %817, 0
  %825 = zext i1 %824 to i8
  store i8 %825, i8* %29, align 1
  %826 = lshr i32 %817, 31
  %827 = trunc i32 %826 to i8
  store i8 %827, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v69 = select i1 %824, i64 9, i64 21
  %828 = add i64 %818, %.v69
  store i64 %828, i64* %3, align 8
  br i1 %824, label %block_490de3, label %block_.L_490def

block_490de3:                                     ; preds = %block_.L_490dc0
  %829 = load i64, i64* %RBP.i, align 8
  %830 = add i64 %829, -4
  %831 = add i64 %828, 7
  store i64 %831, i64* %3, align 8
  %832 = inttoptr i64 %830 to i32*
  store i32 8, i32* %832, align 4
  %833 = load i64, i64* %3, align 8
  %834 = add i64 %833, 1140
  store i64 %834, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490def:                                  ; preds = %block_.L_490dc0
  store i64 ptrtoint (%G__0x586b19_type* @G__0x586b19 to i64), i64* %RSI.i51, align 8
  store i64 4, i64* %RAX.i585.pre-phi, align 8
  store i64 4, i64* %RDX.i70, align 8
  %835 = load i64, i64* %RBP.i, align 8
  %836 = add i64 %835, -16
  %837 = add i64 %828, 21
  store i64 %837, i64* %3, align 8
  %838 = inttoptr i64 %836 to i64*
  %839 = load i64, i64* %838, align 8
  store i64 %839, i64* %RDI.i109, align 8
  %840 = add i64 %828, -589375
  %841 = add i64 %828, 26
  %842 = load i64, i64* %6, align 8
  %843 = add i64 %842, -8
  %844 = inttoptr i64 %843 to i64*
  store i64 %841, i64* %844, align 8
  store i64 %843, i64* %6, align 8
  store i64 %840, i64* %3, align 8
  %845 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %816)
  %846 = load i32, i32* %EAX.i185, align 4
  %847 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %848 = and i32 %846, 255
  %849 = tail call i32 @llvm.ctpop.i32(i32 %848)
  %850 = trunc i32 %849 to i8
  %851 = and i8 %850, 1
  %852 = xor i8 %851, 1
  store i8 %852, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %853 = icmp eq i32 %846, 0
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %29, align 1
  %855 = lshr i32 %846, 31
  %856 = trunc i32 %855 to i8
  store i8 %856, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v70 = select i1 %853, i64 9, i64 21
  %857 = add i64 %847, %.v70
  store i64 %857, i64* %3, align 8
  br i1 %853, label %block_490e12, label %block_.L_490e1e

block_490e12:                                     ; preds = %block_.L_490def
  %858 = load i64, i64* %RBP.i, align 8
  %859 = add i64 %858, -4
  %860 = add i64 %857, 7
  store i64 %860, i64* %3, align 8
  %861 = inttoptr i64 %859 to i32*
  store i32 15, i32* %861, align 4
  %862 = load i64, i64* %3, align 8
  %863 = add i64 %862, 1093
  store i64 %863, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490e1e:                                  ; preds = %block_.L_490def
  store i64 ptrtoint (%G__0x586b1e_type* @G__0x586b1e to i64), i64* %RSI.i51, align 8
  store i64 4, i64* %RAX.i585.pre-phi, align 8
  store i64 4, i64* %RDX.i70, align 8
  %864 = load i64, i64* %RBP.i, align 8
  %865 = add i64 %864, -16
  %866 = add i64 %857, 21
  store i64 %866, i64* %3, align 8
  %867 = inttoptr i64 %865 to i64*
  %868 = load i64, i64* %867, align 8
  store i64 %868, i64* %RDI.i109, align 8
  %869 = add i64 %857, -589422
  %870 = add i64 %857, 26
  %871 = load i64, i64* %6, align 8
  %872 = add i64 %871, -8
  %873 = inttoptr i64 %872 to i64*
  store i64 %870, i64* %873, align 8
  store i64 %872, i64* %6, align 8
  store i64 %869, i64* %3, align 8
  %874 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %845)
  %875 = load i32, i32* %EAX.i185, align 4
  %876 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %877 = and i32 %875, 255
  %878 = tail call i32 @llvm.ctpop.i32(i32 %877)
  %879 = trunc i32 %878 to i8
  %880 = and i8 %879, 1
  %881 = xor i8 %880, 1
  store i8 %881, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %882 = icmp eq i32 %875, 0
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %29, align 1
  %884 = lshr i32 %875, 31
  %885 = trunc i32 %884 to i8
  store i8 %885, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v71 = select i1 %882, i64 9, i64 21
  %886 = add i64 %876, %.v71
  store i64 %886, i64* %3, align 8
  br i1 %882, label %block_490e41, label %block_.L_490e4d

block_490e41:                                     ; preds = %block_.L_490e1e
  %887 = load i64, i64* %RBP.i, align 8
  %888 = add i64 %887, -4
  %889 = add i64 %886, 7
  store i64 %889, i64* %3, align 8
  %890 = inttoptr i64 %888 to i32*
  store i32 6, i32* %890, align 4
  %891 = load i64, i64* %3, align 8
  %892 = add i64 %891, 1046
  store i64 %892, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490e4d:                                  ; preds = %block_.L_490e1e
  store i64 ptrtoint (%G__0x586b24_type* @G__0x586b24 to i64), i64* %RSI.i51, align 8
  store i64 5, i64* %RAX.i585.pre-phi, align 8
  store i64 5, i64* %RDX.i70, align 8
  %893 = load i64, i64* %RBP.i, align 8
  %894 = add i64 %893, -16
  %895 = add i64 %886, 21
  store i64 %895, i64* %3, align 8
  %896 = inttoptr i64 %894 to i64*
  %897 = load i64, i64* %896, align 8
  store i64 %897, i64* %RDI.i109, align 8
  %898 = add i64 %886, -589469
  %899 = add i64 %886, 26
  %900 = load i64, i64* %6, align 8
  %901 = add i64 %900, -8
  %902 = inttoptr i64 %901 to i64*
  store i64 %899, i64* %902, align 8
  store i64 %901, i64* %6, align 8
  store i64 %898, i64* %3, align 8
  %903 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %874)
  %904 = load i32, i32* %EAX.i185, align 4
  %905 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %906 = and i32 %904, 255
  %907 = tail call i32 @llvm.ctpop.i32(i32 %906)
  %908 = trunc i32 %907 to i8
  %909 = and i8 %908, 1
  %910 = xor i8 %909, 1
  store i8 %910, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %911 = icmp eq i32 %904, 0
  %912 = zext i1 %911 to i8
  store i8 %912, i8* %29, align 1
  %913 = lshr i32 %904, 31
  %914 = trunc i32 %913 to i8
  store i8 %914, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v72 = select i1 %911, i64 9, i64 21
  %915 = add i64 %905, %.v72
  store i64 %915, i64* %3, align 8
  br i1 %911, label %block_490e70, label %block_.L_490e7c

block_490e70:                                     ; preds = %block_.L_490e4d
  %916 = load i64, i64* %RBP.i, align 8
  %917 = add i64 %916, -4
  %918 = add i64 %915, 7
  store i64 %918, i64* %3, align 8
  %919 = inttoptr i64 %917 to i32*
  store i32 37, i32* %919, align 4
  %920 = load i64, i64* %3, align 8
  %921 = add i64 %920, 999
  store i64 %921, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490e7c:                                  ; preds = %block_.L_490e4d
  store i64 ptrtoint (%G__0x5857db_type* @G__0x5857db to i64), i64* %RSI.i51, align 8
  store i64 5, i64* %RAX.i585.pre-phi, align 8
  store i64 5, i64* %RDX.i70, align 8
  %922 = load i64, i64* %RBP.i, align 8
  %923 = add i64 %922, -16
  %924 = add i64 %915, 21
  store i64 %924, i64* %3, align 8
  %925 = inttoptr i64 %923 to i64*
  %926 = load i64, i64* %925, align 8
  store i64 %926, i64* %RDI.i109, align 8
  %927 = add i64 %915, -589516
  %928 = add i64 %915, 26
  %929 = load i64, i64* %6, align 8
  %930 = add i64 %929, -8
  %931 = inttoptr i64 %930 to i64*
  store i64 %928, i64* %931, align 8
  store i64 %930, i64* %6, align 8
  store i64 %927, i64* %3, align 8
  %932 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %903)
  %933 = load i32, i32* %EAX.i185, align 4
  %934 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %935 = and i32 %933, 255
  %936 = tail call i32 @llvm.ctpop.i32(i32 %935)
  %937 = trunc i32 %936 to i8
  %938 = and i8 %937, 1
  %939 = xor i8 %938, 1
  store i8 %939, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %940 = icmp eq i32 %933, 0
  %941 = zext i1 %940 to i8
  store i8 %941, i8* %29, align 1
  %942 = lshr i32 %933, 31
  %943 = trunc i32 %942 to i8
  store i8 %943, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v73 = select i1 %940, i64 9, i64 21
  %944 = add i64 %934, %.v73
  store i64 %944, i64* %3, align 8
  br i1 %940, label %block_490e9f, label %block_.L_490eab

block_490e9f:                                     ; preds = %block_.L_490e7c
  %945 = load i64, i64* %RBP.i, align 8
  %946 = add i64 %945, -4
  %947 = add i64 %944, 7
  store i64 %947, i64* %3, align 8
  %948 = inttoptr i64 %946 to i32*
  store i32 38, i32* %948, align 4
  %949 = load i64, i64* %3, align 8
  %950 = add i64 %949, 952
  store i64 %950, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490eab:                                  ; preds = %block_.L_490e7c
  store i64 ptrtoint (%G__0x5835e4_type* @G__0x5835e4 to i64), i64* %RSI.i51, align 8
  store i64 4, i64* %RAX.i585.pre-phi, align 8
  store i64 4, i64* %RDX.i70, align 8
  %951 = load i64, i64* %RBP.i, align 8
  %952 = add i64 %951, -16
  %953 = add i64 %944, 21
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %952 to i64*
  %955 = load i64, i64* %954, align 8
  store i64 %955, i64* %RDI.i109, align 8
  %956 = add i64 %944, -589563
  %957 = add i64 %944, 26
  %958 = load i64, i64* %6, align 8
  %959 = add i64 %958, -8
  %960 = inttoptr i64 %959 to i64*
  store i64 %957, i64* %960, align 8
  store i64 %959, i64* %6, align 8
  store i64 %956, i64* %3, align 8
  %961 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %932)
  %962 = load i32, i32* %EAX.i185, align 4
  %963 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %964 = and i32 %962, 255
  %965 = tail call i32 @llvm.ctpop.i32(i32 %964)
  %966 = trunc i32 %965 to i8
  %967 = and i8 %966, 1
  %968 = xor i8 %967, 1
  store i8 %968, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %969 = icmp eq i32 %962, 0
  %970 = zext i1 %969 to i8
  store i8 %970, i8* %29, align 1
  %971 = lshr i32 %962, 31
  %972 = trunc i32 %971 to i8
  store i8 %972, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v74 = select i1 %969, i64 9, i64 21
  %973 = add i64 %963, %.v74
  store i64 %973, i64* %3, align 8
  br i1 %969, label %block_490ece, label %block_.L_490eda

block_490ece:                                     ; preds = %block_.L_490eab
  %974 = load i64, i64* %RBP.i, align 8
  %975 = add i64 %974, -4
  %976 = add i64 %973, 7
  store i64 %976, i64* %3, align 8
  %977 = inttoptr i64 %975 to i32*
  store i32 4, i32* %977, align 4
  %978 = load i64, i64* %3, align 8
  %979 = add i64 %978, 905
  store i64 %979, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490eda:                                  ; preds = %block_.L_490eab
  store i64 ptrtoint (%G__0x586b2a_type* @G__0x586b2a to i64), i64* %RSI.i51, align 8
  store i64 3, i64* %RAX.i585.pre-phi, align 8
  store i64 3, i64* %RDX.i70, align 8
  %980 = load i64, i64* %RBP.i, align 8
  %981 = add i64 %980, -16
  %982 = add i64 %973, 21
  store i64 %982, i64* %3, align 8
  %983 = inttoptr i64 %981 to i64*
  %984 = load i64, i64* %983, align 8
  store i64 %984, i64* %RDI.i109, align 8
  %985 = add i64 %973, -589610
  %986 = add i64 %973, 26
  %987 = load i64, i64* %6, align 8
  %988 = add i64 %987, -8
  %989 = inttoptr i64 %988 to i64*
  store i64 %986, i64* %989, align 8
  store i64 %988, i64* %6, align 8
  store i64 %985, i64* %3, align 8
  %990 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %961)
  %991 = load i32, i32* %EAX.i185, align 4
  %992 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %993 = and i32 %991, 255
  %994 = tail call i32 @llvm.ctpop.i32(i32 %993)
  %995 = trunc i32 %994 to i8
  %996 = and i8 %995, 1
  %997 = xor i8 %996, 1
  store i8 %997, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %998 = icmp eq i32 %991, 0
  %999 = zext i1 %998 to i8
  store i8 %999, i8* %29, align 1
  %1000 = lshr i32 %991, 31
  %1001 = trunc i32 %1000 to i8
  store i8 %1001, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v75 = select i1 %998, i64 9, i64 21
  %1002 = add i64 %992, %.v75
  store i64 %1002, i64* %3, align 8
  br i1 %998, label %block_490efd, label %block_.L_490f09

block_490efd:                                     ; preds = %block_.L_490eda
  %1003 = load i64, i64* %RBP.i, align 8
  %1004 = add i64 %1003, -4
  %1005 = add i64 %1002, 7
  store i64 %1005, i64* %3, align 8
  %1006 = inttoptr i64 %1004 to i32*
  store i32 33, i32* %1006, align 4
  %1007 = load i64, i64* %3, align 8
  %1008 = add i64 %1007, 858
  store i64 %1008, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490f09:                                  ; preds = %block_.L_490eda
  store i64 ptrtoint (%G__0x586b2f_type* @G__0x586b2f to i64), i64* %RSI.i51, align 8
  store i64 3, i64* %RAX.i585.pre-phi, align 8
  store i64 3, i64* %RDX.i70, align 8
  %1009 = load i64, i64* %RBP.i, align 8
  %1010 = add i64 %1009, -16
  %1011 = add i64 %1002, 21
  store i64 %1011, i64* %3, align 8
  %1012 = inttoptr i64 %1010 to i64*
  %1013 = load i64, i64* %1012, align 8
  store i64 %1013, i64* %RDI.i109, align 8
  %1014 = add i64 %1002, -589657
  %1015 = add i64 %1002, 26
  %1016 = load i64, i64* %6, align 8
  %1017 = add i64 %1016, -8
  %1018 = inttoptr i64 %1017 to i64*
  store i64 %1015, i64* %1018, align 8
  store i64 %1017, i64* %6, align 8
  store i64 %1014, i64* %3, align 8
  %1019 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %990)
  %1020 = load i32, i32* %EAX.i185, align 4
  %1021 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1022 = and i32 %1020, 255
  %1023 = tail call i32 @llvm.ctpop.i32(i32 %1022)
  %1024 = trunc i32 %1023 to i8
  %1025 = and i8 %1024, 1
  %1026 = xor i8 %1025, 1
  store i8 %1026, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1027 = icmp eq i32 %1020, 0
  %1028 = zext i1 %1027 to i8
  store i8 %1028, i8* %29, align 1
  %1029 = lshr i32 %1020, 31
  %1030 = trunc i32 %1029 to i8
  store i8 %1030, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v76 = select i1 %1027, i64 9, i64 21
  %1031 = add i64 %1021, %.v76
  store i64 %1031, i64* %3, align 8
  br i1 %1027, label %block_490f2c, label %block_.L_490f38

block_490f2c:                                     ; preds = %block_.L_490f09
  %1032 = load i64, i64* %RBP.i, align 8
  %1033 = add i64 %1032, -4
  %1034 = add i64 %1031, 7
  store i64 %1034, i64* %3, align 8
  %1035 = inttoptr i64 %1033 to i32*
  store i32 34, i32* %1035, align 4
  %1036 = load i64, i64* %3, align 8
  %1037 = add i64 %1036, 811
  store i64 %1037, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490f38:                                  ; preds = %block_.L_490f09
  store i64 ptrtoint (%G__0x57a763_type* @G__0x57a763 to i64), i64* %RSI.i51, align 8
  store i64 3, i64* %RAX.i585.pre-phi, align 8
  store i64 3, i64* %RDX.i70, align 8
  %1038 = load i64, i64* %RBP.i, align 8
  %1039 = add i64 %1038, -16
  %1040 = add i64 %1031, 21
  store i64 %1040, i64* %3, align 8
  %1041 = inttoptr i64 %1039 to i64*
  %1042 = load i64, i64* %1041, align 8
  store i64 %1042, i64* %RDI.i109, align 8
  %1043 = add i64 %1031, -589704
  %1044 = add i64 %1031, 26
  %1045 = load i64, i64* %6, align 8
  %1046 = add i64 %1045, -8
  %1047 = inttoptr i64 %1046 to i64*
  store i64 %1044, i64* %1047, align 8
  store i64 %1046, i64* %6, align 8
  store i64 %1043, i64* %3, align 8
  %1048 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1019)
  %1049 = load i32, i32* %EAX.i185, align 4
  %1050 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1051 = and i32 %1049, 255
  %1052 = tail call i32 @llvm.ctpop.i32(i32 %1051)
  %1053 = trunc i32 %1052 to i8
  %1054 = and i8 %1053, 1
  %1055 = xor i8 %1054, 1
  store i8 %1055, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1056 = icmp eq i32 %1049, 0
  %1057 = zext i1 %1056 to i8
  store i8 %1057, i8* %29, align 1
  %1058 = lshr i32 %1049, 31
  %1059 = trunc i32 %1058 to i8
  store i8 %1059, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v77 = select i1 %1056, i64 9, i64 21
  %1060 = add i64 %1050, %.v77
  store i64 %1060, i64* %3, align 8
  br i1 %1056, label %block_490f5b, label %block_.L_490f67

block_490f5b:                                     ; preds = %block_.L_490f38
  %1061 = load i64, i64* %RBP.i, align 8
  %1062 = add i64 %1061, -4
  %1063 = add i64 %1060, 7
  store i64 %1063, i64* %3, align 8
  %1064 = inttoptr i64 %1062 to i32*
  store i32 0, i32* %1064, align 4
  %1065 = load i64, i64* %3, align 8
  %1066 = add i64 %1065, 764
  store i64 %1066, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490f67:                                  ; preds = %block_.L_490f38
  store i64 ptrtoint (%G__0x57f610_type* @G__0x57f610 to i64), i64* %RSI.i51, align 8
  store i64 3, i64* %RAX.i585.pre-phi, align 8
  store i64 3, i64* %RDX.i70, align 8
  %1067 = load i64, i64* %RBP.i, align 8
  %1068 = add i64 %1067, -16
  %1069 = add i64 %1060, 21
  store i64 %1069, i64* %3, align 8
  %1070 = inttoptr i64 %1068 to i64*
  %1071 = load i64, i64* %1070, align 8
  store i64 %1071, i64* %RDI.i109, align 8
  %1072 = add i64 %1060, -589751
  %1073 = add i64 %1060, 26
  %1074 = load i64, i64* %6, align 8
  %1075 = add i64 %1074, -8
  %1076 = inttoptr i64 %1075 to i64*
  store i64 %1073, i64* %1076, align 8
  store i64 %1075, i64* %6, align 8
  store i64 %1072, i64* %3, align 8
  %1077 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1048)
  %1078 = load i32, i32* %EAX.i185, align 4
  %1079 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1080 = and i32 %1078, 255
  %1081 = tail call i32 @llvm.ctpop.i32(i32 %1080)
  %1082 = trunc i32 %1081 to i8
  %1083 = and i8 %1082, 1
  %1084 = xor i8 %1083, 1
  store i8 %1084, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1085 = icmp eq i32 %1078, 0
  %1086 = zext i1 %1085 to i8
  store i8 %1086, i8* %29, align 1
  %1087 = lshr i32 %1078, 31
  %1088 = trunc i32 %1087 to i8
  store i8 %1088, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v78 = select i1 %1085, i64 9, i64 21
  %1089 = add i64 %1079, %.v78
  store i64 %1089, i64* %3, align 8
  br i1 %1085, label %block_490f8a, label %block_.L_490f96

block_490f8a:                                     ; preds = %block_.L_490f67
  %1090 = load i64, i64* %RBP.i, align 8
  %1091 = add i64 %1090, -4
  %1092 = add i64 %1089, 7
  store i64 %1092, i64* %3, align 8
  %1093 = inttoptr i64 %1091 to i32*
  store i32 5, i32* %1093, align 4
  %1094 = load i64, i64* %3, align 8
  %1095 = add i64 %1094, 717
  store i64 %1095, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490f96:                                  ; preds = %block_.L_490f67
  store i64 ptrtoint (%G__0x58730e_type* @G__0x58730e to i64), i64* %RSI.i51, align 8
  store i64 3, i64* %RAX.i585.pre-phi, align 8
  store i64 3, i64* %RDX.i70, align 8
  %1096 = load i64, i64* %RBP.i, align 8
  %1097 = add i64 %1096, -16
  %1098 = add i64 %1089, 21
  store i64 %1098, i64* %3, align 8
  %1099 = inttoptr i64 %1097 to i64*
  %1100 = load i64, i64* %1099, align 8
  store i64 %1100, i64* %RDI.i109, align 8
  %1101 = add i64 %1089, -589798
  %1102 = add i64 %1089, 26
  %1103 = load i64, i64* %6, align 8
  %1104 = add i64 %1103, -8
  %1105 = inttoptr i64 %1104 to i64*
  store i64 %1102, i64* %1105, align 8
  store i64 %1104, i64* %6, align 8
  store i64 %1101, i64* %3, align 8
  %1106 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1077)
  %1107 = load i32, i32* %EAX.i185, align 4
  %1108 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1109 = and i32 %1107, 255
  %1110 = tail call i32 @llvm.ctpop.i32(i32 %1109)
  %1111 = trunc i32 %1110 to i8
  %1112 = and i8 %1111, 1
  %1113 = xor i8 %1112, 1
  store i8 %1113, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1114 = icmp eq i32 %1107, 0
  %1115 = zext i1 %1114 to i8
  store i8 %1115, i8* %29, align 1
  %1116 = lshr i32 %1107, 31
  %1117 = trunc i32 %1116 to i8
  store i8 %1117, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v79 = select i1 %1114, i64 9, i64 21
  %1118 = add i64 %1108, %.v79
  store i64 %1118, i64* %3, align 8
  br i1 %1114, label %block_490fb9, label %block_.L_490fc5

block_490fb9:                                     ; preds = %block_.L_490f96
  %1119 = load i64, i64* %RBP.i, align 8
  %1120 = add i64 %1119, -4
  %1121 = add i64 %1118, 7
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1120 to i32*
  store i32 19, i32* %1122, align 4
  %1123 = load i64, i64* %3, align 8
  %1124 = add i64 %1123, 670
  store i64 %1124, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490fc5:                                  ; preds = %block_.L_490f96
  store i64 ptrtoint (%G__0x586b34_type* @G__0x586b34 to i64), i64* %RSI.i51, align 8
  store i64 3, i64* %RAX.i585.pre-phi, align 8
  store i64 3, i64* %RDX.i70, align 8
  %1125 = load i64, i64* %RBP.i, align 8
  %1126 = add i64 %1125, -16
  %1127 = add i64 %1118, 21
  store i64 %1127, i64* %3, align 8
  %1128 = inttoptr i64 %1126 to i64*
  %1129 = load i64, i64* %1128, align 8
  store i64 %1129, i64* %RDI.i109, align 8
  %1130 = add i64 %1118, -589845
  %1131 = add i64 %1118, 26
  %1132 = load i64, i64* %6, align 8
  %1133 = add i64 %1132, -8
  %1134 = inttoptr i64 %1133 to i64*
  store i64 %1131, i64* %1134, align 8
  store i64 %1133, i64* %6, align 8
  store i64 %1130, i64* %3, align 8
  %1135 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1106)
  %1136 = load i32, i32* %EAX.i185, align 4
  %1137 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1138 = and i32 %1136, 255
  %1139 = tail call i32 @llvm.ctpop.i32(i32 %1138)
  %1140 = trunc i32 %1139 to i8
  %1141 = and i8 %1140, 1
  %1142 = xor i8 %1141, 1
  store i8 %1142, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1143 = icmp eq i32 %1136, 0
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %29, align 1
  %1145 = lshr i32 %1136, 31
  %1146 = trunc i32 %1145 to i8
  store i8 %1146, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v80 = select i1 %1143, i64 9, i64 21
  %1147 = add i64 %1137, %.v80
  store i64 %1147, i64* %3, align 8
  br i1 %1143, label %block_490fe8, label %block_.L_490ff4

block_490fe8:                                     ; preds = %block_.L_490fc5
  %1148 = load i64, i64* %RBP.i, align 8
  %1149 = add i64 %1148, -4
  %1150 = add i64 %1147, 7
  store i64 %1150, i64* %3, align 8
  %1151 = inttoptr i64 %1149 to i32*
  store i32 20, i32* %1151, align 4
  %1152 = load i64, i64* %3, align 8
  %1153 = add i64 %1152, 623
  store i64 %1153, i64* %3, align 8
  br label %block_.L_49125e

block_.L_490ff4:                                  ; preds = %block_.L_490fc5
  store i64 ptrtoint (%G__0x57c0a9_type* @G__0x57c0a9 to i64), i64* %RSI.i51, align 8
  store i64 3, i64* %RAX.i585.pre-phi, align 8
  store i64 3, i64* %RDX.i70, align 8
  %1154 = load i64, i64* %RBP.i, align 8
  %1155 = add i64 %1154, -16
  %1156 = add i64 %1147, 21
  store i64 %1156, i64* %3, align 8
  %1157 = inttoptr i64 %1155 to i64*
  %1158 = load i64, i64* %1157, align 8
  store i64 %1158, i64* %RDI.i109, align 8
  %1159 = add i64 %1147, -589892
  %1160 = add i64 %1147, 26
  %1161 = load i64, i64* %6, align 8
  %1162 = add i64 %1161, -8
  %1163 = inttoptr i64 %1162 to i64*
  store i64 %1160, i64* %1163, align 8
  store i64 %1162, i64* %6, align 8
  store i64 %1159, i64* %3, align 8
  %1164 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1135)
  %1165 = load i32, i32* %EAX.i185, align 4
  %1166 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1167 = and i32 %1165, 255
  %1168 = tail call i32 @llvm.ctpop.i32(i32 %1167)
  %1169 = trunc i32 %1168 to i8
  %1170 = and i8 %1169, 1
  %1171 = xor i8 %1170, 1
  store i8 %1171, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1172 = icmp eq i32 %1165, 0
  %1173 = zext i1 %1172 to i8
  store i8 %1173, i8* %29, align 1
  %1174 = lshr i32 %1165, 31
  %1175 = trunc i32 %1174 to i8
  store i8 %1175, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v81 = select i1 %1172, i64 9, i64 21
  %1176 = add i64 %1166, %.v81
  store i64 %1176, i64* %3, align 8
  br i1 %1172, label %block_491017, label %block_.L_491023

block_491017:                                     ; preds = %block_.L_490ff4
  %1177 = load i64, i64* %RBP.i, align 8
  %1178 = add i64 %1177, -4
  %1179 = add i64 %1176, 7
  store i64 %1179, i64* %3, align 8
  %1180 = inttoptr i64 %1178 to i32*
  store i32 21, i32* %1180, align 4
  %1181 = load i64, i64* %3, align 8
  %1182 = add i64 %1181, 576
  store i64 %1182, i64* %3, align 8
  br label %block_.L_49125e

block_.L_491023:                                  ; preds = %block_.L_490ff4
  store i64 ptrtoint (%G__0x57b705_type* @G__0x57b705 to i64), i64* %RSI.i51, align 8
  store i64 3, i64* %RAX.i585.pre-phi, align 8
  store i64 3, i64* %RDX.i70, align 8
  %1183 = load i64, i64* %RBP.i, align 8
  %1184 = add i64 %1183, -16
  %1185 = add i64 %1176, 21
  store i64 %1185, i64* %3, align 8
  %1186 = inttoptr i64 %1184 to i64*
  %1187 = load i64, i64* %1186, align 8
  store i64 %1187, i64* %RDI.i109, align 8
  %1188 = add i64 %1176, -589939
  %1189 = add i64 %1176, 26
  %1190 = load i64, i64* %6, align 8
  %1191 = add i64 %1190, -8
  %1192 = inttoptr i64 %1191 to i64*
  store i64 %1189, i64* %1192, align 8
  store i64 %1191, i64* %6, align 8
  store i64 %1188, i64* %3, align 8
  %1193 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1164)
  %1194 = load i32, i32* %EAX.i185, align 4
  %1195 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1196 = and i32 %1194, 255
  %1197 = tail call i32 @llvm.ctpop.i32(i32 %1196)
  %1198 = trunc i32 %1197 to i8
  %1199 = and i8 %1198, 1
  %1200 = xor i8 %1199, 1
  store i8 %1200, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1201 = icmp eq i32 %1194, 0
  %1202 = zext i1 %1201 to i8
  store i8 %1202, i8* %29, align 1
  %1203 = lshr i32 %1194, 31
  %1204 = trunc i32 %1203 to i8
  store i8 %1204, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v82 = select i1 %1201, i64 9, i64 21
  %1205 = add i64 %1195, %.v82
  store i64 %1205, i64* %3, align 8
  br i1 %1201, label %block_491046, label %block_.L_491052

block_491046:                                     ; preds = %block_.L_491023
  %1206 = load i64, i64* %RBP.i, align 8
  %1207 = add i64 %1206, -4
  %1208 = add i64 %1205, 7
  store i64 %1208, i64* %3, align 8
  %1209 = inttoptr i64 %1207 to i32*
  store i32 22, i32* %1209, align 4
  %1210 = load i64, i64* %3, align 8
  %1211 = add i64 %1210, 529
  store i64 %1211, i64* %3, align 8
  br label %block_.L_49125e

block_.L_491052:                                  ; preds = %block_.L_491023
  store i64 ptrtoint (%G__0x586b3c_type* @G__0x586b3c to i64), i64* %RSI.i51, align 8
  store i64 3, i64* %RAX.i585.pre-phi, align 8
  store i64 3, i64* %RDX.i70, align 8
  %1212 = load i64, i64* %RBP.i, align 8
  %1213 = add i64 %1212, -16
  %1214 = add i64 %1205, 21
  store i64 %1214, i64* %3, align 8
  %1215 = inttoptr i64 %1213 to i64*
  %1216 = load i64, i64* %1215, align 8
  store i64 %1216, i64* %RDI.i109, align 8
  %1217 = add i64 %1205, -589986
  %1218 = add i64 %1205, 26
  %1219 = load i64, i64* %6, align 8
  %1220 = add i64 %1219, -8
  %1221 = inttoptr i64 %1220 to i64*
  store i64 %1218, i64* %1221, align 8
  store i64 %1220, i64* %6, align 8
  store i64 %1217, i64* %3, align 8
  %1222 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1193)
  %1223 = load i32, i32* %EAX.i185, align 4
  %1224 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1225 = and i32 %1223, 255
  %1226 = tail call i32 @llvm.ctpop.i32(i32 %1225)
  %1227 = trunc i32 %1226 to i8
  %1228 = and i8 %1227, 1
  %1229 = xor i8 %1228, 1
  store i8 %1229, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1230 = icmp eq i32 %1223, 0
  %1231 = zext i1 %1230 to i8
  store i8 %1231, i8* %29, align 1
  %1232 = lshr i32 %1223, 31
  %1233 = trunc i32 %1232 to i8
  store i8 %1233, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v83 = select i1 %1230, i64 9, i64 21
  %1234 = add i64 %1224, %.v83
  store i64 %1234, i64* %3, align 8
  br i1 %1230, label %block_491075, label %block_.L_491081

block_491075:                                     ; preds = %block_.L_491052
  %1235 = load i64, i64* %RBP.i, align 8
  %1236 = add i64 %1235, -4
  %1237 = add i64 %1234, 7
  store i64 %1237, i64* %3, align 8
  %1238 = inttoptr i64 %1236 to i32*
  store i32 26, i32* %1238, align 4
  %1239 = load i64, i64* %3, align 8
  %1240 = add i64 %1239, 482
  store i64 %1240, i64* %3, align 8
  br label %block_.L_49125e

block_.L_491081:                                  ; preds = %block_.L_491052
  store i64 ptrtoint (%G__0x57a760_type* @G__0x57a760 to i64), i64* %RSI.i51, align 8
  store i64 3, i64* %RAX.i585.pre-phi, align 8
  store i64 3, i64* %RDX.i70, align 8
  %1241 = load i64, i64* %RBP.i, align 8
  %1242 = add i64 %1241, -16
  %1243 = add i64 %1234, 21
  store i64 %1243, i64* %3, align 8
  %1244 = inttoptr i64 %1242 to i64*
  %1245 = load i64, i64* %1244, align 8
  store i64 %1245, i64* %RDI.i109, align 8
  %1246 = add i64 %1234, -590033
  %1247 = add i64 %1234, 26
  %1248 = load i64, i64* %6, align 8
  %1249 = add i64 %1248, -8
  %1250 = inttoptr i64 %1249 to i64*
  store i64 %1247, i64* %1250, align 8
  store i64 %1249, i64* %6, align 8
  store i64 %1246, i64* %3, align 8
  %1251 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1222)
  %1252 = load i32, i32* %EAX.i185, align 4
  %1253 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1254 = and i32 %1252, 255
  %1255 = tail call i32 @llvm.ctpop.i32(i32 %1254)
  %1256 = trunc i32 %1255 to i8
  %1257 = and i8 %1256, 1
  %1258 = xor i8 %1257, 1
  store i8 %1258, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1259 = icmp eq i32 %1252, 0
  %1260 = zext i1 %1259 to i8
  store i8 %1260, i8* %29, align 1
  %1261 = lshr i32 %1252, 31
  %1262 = trunc i32 %1261 to i8
  store i8 %1262, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v84 = select i1 %1259, i64 9, i64 21
  %1263 = add i64 %1253, %.v84
  store i64 %1263, i64* %3, align 8
  br i1 %1259, label %block_4910a4, label %block_.L_4910b0

block_4910a4:                                     ; preds = %block_.L_491081
  %1264 = load i64, i64* %RBP.i, align 8
  %1265 = add i64 %1264, -4
  %1266 = add i64 %1263, 7
  store i64 %1266, i64* %3, align 8
  %1267 = inttoptr i64 %1265 to i32*
  store i32 27, i32* %1267, align 4
  %1268 = load i64, i64* %3, align 8
  %1269 = add i64 %1268, 435
  store i64 %1269, i64* %3, align 8
  br label %block_.L_49125e

block_.L_4910b0:                                  ; preds = %block_.L_491081
  store i64 ptrtoint (%G__0x586b44_type* @G__0x586b44 to i64), i64* %RSI.i51, align 8
  store i64 4, i64* %RAX.i585.pre-phi, align 8
  store i64 4, i64* %RDX.i70, align 8
  %1270 = load i64, i64* %RBP.i, align 8
  %1271 = add i64 %1270, -16
  %1272 = add i64 %1263, 21
  store i64 %1272, i64* %3, align 8
  %1273 = inttoptr i64 %1271 to i64*
  %1274 = load i64, i64* %1273, align 8
  store i64 %1274, i64* %RDI.i109, align 8
  %1275 = add i64 %1263, -590080
  %1276 = add i64 %1263, 26
  %1277 = load i64, i64* %6, align 8
  %1278 = add i64 %1277, -8
  %1279 = inttoptr i64 %1278 to i64*
  store i64 %1276, i64* %1279, align 8
  store i64 %1278, i64* %6, align 8
  store i64 %1275, i64* %3, align 8
  %1280 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1251)
  %1281 = load i32, i32* %EAX.i185, align 4
  %1282 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1283 = and i32 %1281, 255
  %1284 = tail call i32 @llvm.ctpop.i32(i32 %1283)
  %1285 = trunc i32 %1284 to i8
  %1286 = and i8 %1285, 1
  %1287 = xor i8 %1286, 1
  store i8 %1287, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1288 = icmp eq i32 %1281, 0
  %1289 = zext i1 %1288 to i8
  store i8 %1289, i8* %29, align 1
  %1290 = lshr i32 %1281, 31
  %1291 = trunc i32 %1290 to i8
  store i8 %1291, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v85 = select i1 %1288, i64 9, i64 21
  %1292 = add i64 %1282, %.v85
  store i64 %1292, i64* %3, align 8
  br i1 %1288, label %block_4910d3, label %block_.L_4910df

block_4910d3:                                     ; preds = %block_.L_4910b0
  %1293 = load i64, i64* %RBP.i, align 8
  %1294 = add i64 %1293, -4
  %1295 = add i64 %1292, 7
  store i64 %1295, i64* %3, align 8
  %1296 = inttoptr i64 %1294 to i32*
  store i32 1, i32* %1296, align 4
  %1297 = load i64, i64* %3, align 8
  %1298 = add i64 %1297, 388
  store i64 %1298, i64* %3, align 8
  br label %block_.L_49125e

block_.L_4910df:                                  ; preds = %block_.L_4910b0
  store i64 ptrtoint (%G__0x585f74_type* @G__0x585f74 to i64), i64* %RSI.i51, align 8
  store i64 4, i64* %RAX.i585.pre-phi, align 8
  store i64 4, i64* %RDX.i70, align 8
  %1299 = load i64, i64* %RBP.i, align 8
  %1300 = add i64 %1299, -16
  %1301 = add i64 %1292, 21
  store i64 %1301, i64* %3, align 8
  %1302 = inttoptr i64 %1300 to i64*
  %1303 = load i64, i64* %1302, align 8
  store i64 %1303, i64* %RDI.i109, align 8
  %1304 = add i64 %1292, -590127
  %1305 = add i64 %1292, 26
  %1306 = load i64, i64* %6, align 8
  %1307 = add i64 %1306, -8
  %1308 = inttoptr i64 %1307 to i64*
  store i64 %1305, i64* %1308, align 8
  store i64 %1307, i64* %6, align 8
  store i64 %1304, i64* %3, align 8
  %1309 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1280)
  %1310 = load i32, i32* %EAX.i185, align 4
  %1311 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1312 = and i32 %1310, 255
  %1313 = tail call i32 @llvm.ctpop.i32(i32 %1312)
  %1314 = trunc i32 %1313 to i8
  %1315 = and i8 %1314, 1
  %1316 = xor i8 %1315, 1
  store i8 %1316, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1317 = icmp eq i32 %1310, 0
  %1318 = zext i1 %1317 to i8
  store i8 %1318, i8* %29, align 1
  %1319 = lshr i32 %1310, 31
  %1320 = trunc i32 %1319 to i8
  store i8 %1320, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v86 = select i1 %1317, i64 9, i64 21
  %1321 = add i64 %1311, %.v86
  store i64 %1321, i64* %3, align 8
  br i1 %1317, label %block_491102, label %block_.L_49110e

block_491102:                                     ; preds = %block_.L_4910df
  %1322 = load i64, i64* %RBP.i, align 8
  %1323 = add i64 %1322, -4
  %1324 = add i64 %1321, 7
  store i64 %1324, i64* %3, align 8
  %1325 = inttoptr i64 %1323 to i32*
  store i32 2, i32* %1325, align 4
  %1326 = load i64, i64* %3, align 8
  %1327 = add i64 %1326, 341
  store i64 %1327, i64* %3, align 8
  br label %block_.L_49125e

block_.L_49110e:                                  ; preds = %block_.L_4910df
  store i64 ptrtoint (%G__0x5856fa_type* @G__0x5856fa to i64), i64* %RSI.i51, align 8
  store i64 1, i64* %RAX.i585.pre-phi, align 8
  store i64 1, i64* %RDX.i70, align 8
  %1328 = load i64, i64* %RBP.i, align 8
  %1329 = add i64 %1328, -16
  %1330 = add i64 %1321, 21
  store i64 %1330, i64* %3, align 8
  %1331 = inttoptr i64 %1329 to i64*
  %1332 = load i64, i64* %1331, align 8
  store i64 %1332, i64* %RDI.i109, align 8
  %1333 = add i64 %1321, -590174
  %1334 = add i64 %1321, 26
  %1335 = load i64, i64* %6, align 8
  %1336 = add i64 %1335, -8
  %1337 = inttoptr i64 %1336 to i64*
  store i64 %1334, i64* %1337, align 8
  store i64 %1336, i64* %6, align 8
  store i64 %1333, i64* %3, align 8
  %1338 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1309)
  %1339 = load i32, i32* %EAX.i185, align 4
  %1340 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1341 = and i32 %1339, 255
  %1342 = tail call i32 @llvm.ctpop.i32(i32 %1341)
  %1343 = trunc i32 %1342 to i8
  %1344 = and i8 %1343, 1
  %1345 = xor i8 %1344, 1
  store i8 %1345, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1346 = icmp eq i32 %1339, 0
  %1347 = zext i1 %1346 to i8
  store i8 %1347, i8* %29, align 1
  %1348 = lshr i32 %1339, 31
  %1349 = trunc i32 %1348 to i8
  store i8 %1349, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v87 = select i1 %1346, i64 9, i64 21
  %1350 = add i64 %1340, %.v87
  store i64 %1350, i64* %3, align 8
  br i1 %1346, label %block_491131, label %block_.L_49113d

block_491131:                                     ; preds = %block_.L_49110e
  %1351 = load i64, i64* %RBP.i, align 8
  %1352 = add i64 %1351, -4
  %1353 = add i64 %1350, 7
  store i64 %1353, i64* %3, align 8
  %1354 = inttoptr i64 %1352 to i32*
  store i32 18, i32* %1354, align 4
  %1355 = load i64, i64* %3, align 8
  %1356 = add i64 %1355, 294
  store i64 %1356, i64* %3, align 8
  br label %block_.L_49125e

block_.L_49113d:                                  ; preds = %block_.L_49110e
  store i64 ptrtoint (%G__0x57fdf5_type* @G__0x57fdf5 to i64), i64* %RSI.i51, align 8
  store i64 2, i64* %RAX.i585.pre-phi, align 8
  store i64 2, i64* %RDX.i70, align 8
  %1357 = load i64, i64* %RBP.i, align 8
  %1358 = add i64 %1357, -16
  %1359 = add i64 %1350, 21
  store i64 %1359, i64* %3, align 8
  %1360 = inttoptr i64 %1358 to i64*
  %1361 = load i64, i64* %1360, align 8
  store i64 %1361, i64* %RDI.i109, align 8
  %1362 = add i64 %1350, -590221
  %1363 = add i64 %1350, 26
  %1364 = load i64, i64* %6, align 8
  %1365 = add i64 %1364, -8
  %1366 = inttoptr i64 %1365 to i64*
  store i64 %1363, i64* %1366, align 8
  store i64 %1365, i64* %6, align 8
  store i64 %1362, i64* %3, align 8
  %1367 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1338)
  %1368 = load i32, i32* %EAX.i185, align 4
  %1369 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1370 = and i32 %1368, 255
  %1371 = tail call i32 @llvm.ctpop.i32(i32 %1370)
  %1372 = trunc i32 %1371 to i8
  %1373 = and i8 %1372, 1
  %1374 = xor i8 %1373, 1
  store i8 %1374, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1375 = icmp eq i32 %1368, 0
  %1376 = zext i1 %1375 to i8
  store i8 %1376, i8* %29, align 1
  %1377 = lshr i32 %1368, 31
  %1378 = trunc i32 %1377 to i8
  store i8 %1378, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v88 = select i1 %1375, i64 9, i64 21
  %1379 = add i64 %1369, %.v88
  store i64 %1379, i64* %3, align 8
  br i1 %1375, label %block_491160, label %block_.L_49116c

block_491160:                                     ; preds = %block_.L_49113d
  %1380 = load i64, i64* %RBP.i, align 8
  %1381 = add i64 %1380, -4
  %1382 = add i64 %1379, 7
  store i64 %1382, i64* %3, align 8
  %1383 = inttoptr i64 %1381 to i32*
  store i32 23, i32* %1383, align 4
  %1384 = load i64, i64* %3, align 8
  %1385 = add i64 %1384, 247
  store i64 %1385, i64* %3, align 8
  br label %block_.L_49125e

block_.L_49116c:                                  ; preds = %block_.L_49113d
  store i64 ptrtoint (%G__0x586b49_type* @G__0x586b49 to i64), i64* %RSI.i51, align 8
  store i64 2, i64* %RAX.i585.pre-phi, align 8
  store i64 2, i64* %RDX.i70, align 8
  %1386 = load i64, i64* %RBP.i, align 8
  %1387 = add i64 %1386, -16
  %1388 = add i64 %1379, 21
  store i64 %1388, i64* %3, align 8
  %1389 = inttoptr i64 %1387 to i64*
  %1390 = load i64, i64* %1389, align 8
  store i64 %1390, i64* %RDI.i109, align 8
  %1391 = add i64 %1379, -590268
  %1392 = add i64 %1379, 26
  %1393 = load i64, i64* %6, align 8
  %1394 = add i64 %1393, -8
  %1395 = inttoptr i64 %1394 to i64*
  store i64 %1392, i64* %1395, align 8
  store i64 %1394, i64* %6, align 8
  store i64 %1391, i64* %3, align 8
  %1396 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1367)
  %1397 = load i32, i32* %EAX.i185, align 4
  %1398 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1399 = and i32 %1397, 255
  %1400 = tail call i32 @llvm.ctpop.i32(i32 %1399)
  %1401 = trunc i32 %1400 to i8
  %1402 = and i8 %1401, 1
  %1403 = xor i8 %1402, 1
  store i8 %1403, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1404 = icmp eq i32 %1397, 0
  %1405 = zext i1 %1404 to i8
  store i8 %1405, i8* %29, align 1
  %1406 = lshr i32 %1397, 31
  %1407 = trunc i32 %1406 to i8
  store i8 %1407, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v89 = select i1 %1404, i64 9, i64 21
  %1408 = add i64 %1398, %.v89
  store i64 %1408, i64* %3, align 8
  br i1 %1404, label %block_49118f, label %block_.L_49119b

block_49118f:                                     ; preds = %block_.L_49116c
  %1409 = load i64, i64* %RBP.i, align 8
  %1410 = add i64 %1409, -4
  %1411 = add i64 %1408, 7
  store i64 %1411, i64* %3, align 8
  %1412 = inttoptr i64 %1410 to i32*
  store i32 24, i32* %1412, align 4
  %1413 = load i64, i64* %3, align 8
  %1414 = add i64 %1413, 200
  store i64 %1414, i64* %3, align 8
  br label %block_.L_49125e

block_.L_49119b:                                  ; preds = %block_.L_49116c
  store i64 ptrtoint (%G__0x5861b6_type* @G__0x5861b6 to i64), i64* %RSI.i51, align 8
  store i64 2, i64* %RAX.i585.pre-phi, align 8
  store i64 2, i64* %RDX.i70, align 8
  %1415 = load i64, i64* %RBP.i, align 8
  %1416 = add i64 %1415, -16
  %1417 = add i64 %1408, 21
  store i64 %1417, i64* %3, align 8
  %1418 = inttoptr i64 %1416 to i64*
  %1419 = load i64, i64* %1418, align 8
  store i64 %1419, i64* %RDI.i109, align 8
  %1420 = add i64 %1408, -590315
  %1421 = add i64 %1408, 26
  %1422 = load i64, i64* %6, align 8
  %1423 = add i64 %1422, -8
  %1424 = inttoptr i64 %1423 to i64*
  store i64 %1421, i64* %1424, align 8
  store i64 %1423, i64* %6, align 8
  store i64 %1420, i64* %3, align 8
  %1425 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1396)
  %1426 = load i32, i32* %EAX.i185, align 4
  %1427 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1428 = and i32 %1426, 255
  %1429 = tail call i32 @llvm.ctpop.i32(i32 %1428)
  %1430 = trunc i32 %1429 to i8
  %1431 = and i8 %1430, 1
  %1432 = xor i8 %1431, 1
  store i8 %1432, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1433 = icmp eq i32 %1426, 0
  %1434 = zext i1 %1433 to i8
  store i8 %1434, i8* %29, align 1
  %1435 = lshr i32 %1426, 31
  %1436 = trunc i32 %1435 to i8
  store i8 %1436, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v90 = select i1 %1433, i64 9, i64 21
  %1437 = add i64 %1427, %.v90
  store i64 %1437, i64* %3, align 8
  br i1 %1433, label %block_4911be, label %block_.L_4911ca

block_4911be:                                     ; preds = %block_.L_49119b
  %1438 = load i64, i64* %RBP.i, align 8
  %1439 = add i64 %1438, -4
  %1440 = add i64 %1437, 7
  store i64 %1440, i64* %3, align 8
  %1441 = inttoptr i64 %1439 to i32*
  store i32 25, i32* %1441, align 4
  %1442 = load i64, i64* %3, align 8
  %1443 = add i64 %1442, 153
  store i64 %1443, i64* %3, align 8
  br label %block_.L_49125e

block_.L_4911ca:                                  ; preds = %block_.L_49119b
  store i64 ptrtoint (%G__0x586b51_type* @G__0x586b51 to i64), i64* %RSI.i51, align 8
  store i64 2, i64* %RAX.i585.pre-phi, align 8
  store i64 2, i64* %RDX.i70, align 8
  %1444 = load i64, i64* %RBP.i, align 8
  %1445 = add i64 %1444, -16
  %1446 = add i64 %1437, 21
  store i64 %1446, i64* %3, align 8
  %1447 = inttoptr i64 %1445 to i64*
  %1448 = load i64, i64* %1447, align 8
  store i64 %1448, i64* %RDI.i109, align 8
  %1449 = add i64 %1437, -590362
  %1450 = add i64 %1437, 26
  %1451 = load i64, i64* %6, align 8
  %1452 = add i64 %1451, -8
  %1453 = inttoptr i64 %1452 to i64*
  store i64 %1450, i64* %1453, align 8
  store i64 %1452, i64* %6, align 8
  store i64 %1449, i64* %3, align 8
  %1454 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1425)
  %1455 = load i32, i32* %EAX.i185, align 4
  %1456 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1457 = and i32 %1455, 255
  %1458 = tail call i32 @llvm.ctpop.i32(i32 %1457)
  %1459 = trunc i32 %1458 to i8
  %1460 = and i8 %1459, 1
  %1461 = xor i8 %1460, 1
  store i8 %1461, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1462 = icmp eq i32 %1455, 0
  %1463 = zext i1 %1462 to i8
  store i8 %1463, i8* %29, align 1
  %1464 = lshr i32 %1455, 31
  %1465 = trunc i32 %1464 to i8
  store i8 %1465, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v91 = select i1 %1462, i64 9, i64 21
  %1466 = add i64 %1456, %.v91
  store i64 %1466, i64* %3, align 8
  br i1 %1462, label %block_4911ed, label %block_.L_4911f9

block_4911ed:                                     ; preds = %block_.L_4911ca
  %1467 = load i64, i64* %RBP.i, align 8
  %1468 = add i64 %1467, -4
  %1469 = add i64 %1466, 7
  store i64 %1469, i64* %3, align 8
  %1470 = inttoptr i64 %1468 to i32*
  store i32 32, i32* %1470, align 4
  %1471 = load i64, i64* %3, align 8
  %1472 = add i64 %1471, 106
  store i64 %1472, i64* %3, align 8
  br label %block_.L_49125e

block_.L_4911f9:                                  ; preds = %block_.L_4911ca
  store i64 ptrtoint (%G__0x585d71_type* @G__0x585d71 to i64), i64* %RSI.i51, align 8
  store i64 2, i64* %RAX.i585.pre-phi, align 8
  store i64 2, i64* %RDX.i70, align 8
  %1473 = load i64, i64* %RBP.i, align 8
  %1474 = add i64 %1473, -16
  %1475 = add i64 %1466, 21
  store i64 %1475, i64* %3, align 8
  %1476 = inttoptr i64 %1474 to i64*
  %1477 = load i64, i64* %1476, align 8
  store i64 %1477, i64* %RDI.i109, align 8
  %1478 = add i64 %1466, -590409
  %1479 = add i64 %1466, 26
  %1480 = load i64, i64* %6, align 8
  %1481 = add i64 %1480, -8
  %1482 = inttoptr i64 %1481 to i64*
  store i64 %1479, i64* %1482, align 8
  store i64 %1481, i64* %6, align 8
  store i64 %1478, i64* %3, align 8
  %1483 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1454)
  %1484 = load i32, i32* %EAX.i185, align 4
  %1485 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1486 = and i32 %1484, 255
  %1487 = tail call i32 @llvm.ctpop.i32(i32 %1486)
  %1488 = trunc i32 %1487 to i8
  %1489 = and i8 %1488, 1
  %1490 = xor i8 %1489, 1
  store i8 %1490, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1491 = icmp eq i32 %1484, 0
  %1492 = zext i1 %1491 to i8
  store i8 %1492, i8* %29, align 1
  %1493 = lshr i32 %1484, 31
  %1494 = trunc i32 %1493 to i8
  store i8 %1494, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v92 = select i1 %1491, i64 9, i64 21
  %1495 = add i64 %1485, %.v92
  store i64 %1495, i64* %3, align 8
  br i1 %1491, label %block_49121c, label %block_.L_491228

block_49121c:                                     ; preds = %block_.L_4911f9
  %1496 = load i64, i64* %RBP.i, align 8
  %1497 = add i64 %1496, -4
  %1498 = add i64 %1495, 7
  store i64 %1498, i64* %3, align 8
  %1499 = inttoptr i64 %1497 to i32*
  store i32 39, i32* %1499, align 4
  %1500 = load i64, i64* %3, align 8
  %1501 = add i64 %1500, 59
  store i64 %1501, i64* %3, align 8
  br label %block_.L_49125e

block_.L_491228:                                  ; preds = %block_.L_4911f9
  store i64 ptrtoint (%G__0x586b56_type* @G__0x586b56 to i64), i64* %RSI.i51, align 8
  store i64 2, i64* %RAX.i585.pre-phi, align 8
  store i64 2, i64* %RDX.i70, align 8
  %1502 = load i64, i64* %RBP.i, align 8
  %1503 = add i64 %1502, -16
  %1504 = add i64 %1495, 21
  store i64 %1504, i64* %3, align 8
  %1505 = inttoptr i64 %1503 to i64*
  %1506 = load i64, i64* %1505, align 8
  store i64 %1506, i64* %RDI.i109, align 8
  %1507 = add i64 %1495, -590456
  %1508 = add i64 %1495, 26
  %1509 = load i64, i64* %6, align 8
  %1510 = add i64 %1509, -8
  %1511 = inttoptr i64 %1510 to i64*
  store i64 %1508, i64* %1511, align 8
  store i64 %1510, i64* %6, align 8
  store i64 %1507, i64* %3, align 8
  %1512 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1483)
  %1513 = load i32, i32* %EAX.i185, align 4
  %1514 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1515 = and i32 %1513, 255
  %1516 = tail call i32 @llvm.ctpop.i32(i32 %1515)
  %1517 = trunc i32 %1516 to i8
  %1518 = and i8 %1517, 1
  %1519 = xor i8 %1518, 1
  store i8 %1519, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1520 = icmp eq i32 %1513, 0
  %1521 = zext i1 %1520 to i8
  store i8 %1521, i8* %29, align 1
  %1522 = lshr i32 %1513, 31
  %1523 = trunc i32 %1522 to i8
  store i8 %1523, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v93 = select i1 %1520, i64 9, i64 21
  %1524 = add i64 %1514, %.v93
  %1525 = load i64, i64* %RBP.i, align 8
  %1526 = add i64 %1525, -4
  %1527 = add i64 %1524, 7
  store i64 %1527, i64* %3, align 8
  %1528 = inttoptr i64 %1526 to i32*
  br i1 %1520, label %block_49124b, label %block_.L_491257

block_49124b:                                     ; preds = %block_.L_491228
  store i32 40, i32* %1528, align 4
  %1529 = load i64, i64* %3, align 8
  %1530 = add i64 %1529, 12
  store i64 %1530, i64* %3, align 8
  br label %block_.L_49125e

block_.L_491257:                                  ; preds = %block_.L_491228
  store i32 -1, i32* %1528, align 4
  %.pre48 = load i64, i64* %3, align 8
  br label %block_.L_49125e

block_.L_49125e:                                  ; preds = %block_.L_491257, %block_49124b, %block_49121c, %block_4911ed, %block_4911be, %block_49118f, %block_491160, %block_491131, %block_491102, %block_4910d3, %block_4910a4, %block_491075, %block_491046, %block_491017, %block_490fe8, %block_490fb9, %block_490f8a, %block_490f5b, %block_490f2c, %block_490efd, %block_490ece, %block_490e9f, %block_490e70, %block_490e41, %block_490e12, %block_490de3, %block_490db4, %block_490d85, %block_490d56, %block_490d27, %block_490cf8, %block_490cc9, %block_490c9a, %block_490c6b, %block_490c3c, %block_490c0d, %block_490bde, %block_490baf, %block_490b80, %block_490b51, %block_490b22, %block_490af3, %block_490ac4, %block_490a6f, %block_490a53
  %RAX.i.pre-phi = phi i64* [ %RAX.i585.pre-phi, %block_.L_491257 ], [ %RAX.i585.pre-phi, %block_49124b ], [ %RAX.i585.pre-phi, %block_49121c ], [ %RAX.i585.pre-phi, %block_4911ed ], [ %RAX.i585.pre-phi, %block_4911be ], [ %RAX.i585.pre-phi, %block_49118f ], [ %RAX.i585.pre-phi, %block_491160 ], [ %RAX.i585.pre-phi, %block_491131 ], [ %RAX.i585.pre-phi, %block_491102 ], [ %RAX.i585.pre-phi, %block_4910d3 ], [ %RAX.i585.pre-phi, %block_4910a4 ], [ %RAX.i585.pre-phi, %block_491075 ], [ %RAX.i585.pre-phi, %block_491046 ], [ %RAX.i585.pre-phi, %block_491017 ], [ %RAX.i585.pre-phi, %block_490fe8 ], [ %RAX.i585.pre-phi, %block_490fb9 ], [ %RAX.i585.pre-phi, %block_490f8a ], [ %RAX.i585.pre-phi, %block_490f5b ], [ %RAX.i585.pre-phi, %block_490f2c ], [ %RAX.i585.pre-phi, %block_490efd ], [ %RAX.i585.pre-phi, %block_490ece ], [ %RAX.i585.pre-phi, %block_490e9f ], [ %RAX.i585.pre-phi, %block_490e70 ], [ %RAX.i585.pre-phi, %block_490e41 ], [ %RAX.i585.pre-phi, %block_490e12 ], [ %RAX.i585.pre-phi, %block_490de3 ], [ %RAX.i585.pre-phi, %block_490db4 ], [ %RAX.i585.pre-phi, %block_490d85 ], [ %RAX.i585.pre-phi, %block_490d56 ], [ %RAX.i585.pre-phi, %block_490d27 ], [ %RAX.i585.pre-phi, %block_490cf8 ], [ %RAX.i585.pre-phi, %block_490cc9 ], [ %RAX.i585.pre-phi, %block_490c9a ], [ %RAX.i585.pre-phi, %block_490c6b ], [ %RAX.i585.pre-phi, %block_490c3c ], [ %RAX.i585.pre-phi, %block_490c0d ], [ %RAX.i585.pre-phi, %block_490bde ], [ %RAX.i585.pre-phi, %block_490baf ], [ %RAX.i585.pre-phi, %block_490b80 ], [ %RAX.i585.pre-phi, %block_490b51 ], [ %RAX.i585.pre-phi, %block_490b22 ], [ %RAX.i585.pre-phi, %block_490af3 ], [ %RAX.i585.pre-phi, %block_490ac4 ], [ %RAX.i585.pre-phi, %block_490a6f ], [ %RAX.i300, %block_490a53 ]
  %1531 = phi i64 [ %.pre48, %block_.L_491257 ], [ %1530, %block_49124b ], [ %1501, %block_49121c ], [ %1472, %block_4911ed ], [ %1443, %block_4911be ], [ %1414, %block_49118f ], [ %1385, %block_491160 ], [ %1356, %block_491131 ], [ %1327, %block_491102 ], [ %1298, %block_4910d3 ], [ %1269, %block_4910a4 ], [ %1240, %block_491075 ], [ %1211, %block_491046 ], [ %1182, %block_491017 ], [ %1153, %block_490fe8 ], [ %1124, %block_490fb9 ], [ %1095, %block_490f8a ], [ %1066, %block_490f5b ], [ %1037, %block_490f2c ], [ %1008, %block_490efd ], [ %979, %block_490ece ], [ %950, %block_490e9f ], [ %921, %block_490e70 ], [ %892, %block_490e41 ], [ %863, %block_490e12 ], [ %834, %block_490de3 ], [ %805, %block_490db4 ], [ %776, %block_490d85 ], [ %747, %block_490d56 ], [ %718, %block_490d27 ], [ %689, %block_490cf8 ], [ %660, %block_490cc9 ], [ %631, %block_490c9a ], [ %602, %block_490c6b ], [ %573, %block_490c3c ], [ %544, %block_490c0d ], [ %515, %block_490bde ], [ %486, %block_490baf ], [ %457, %block_490b80 ], [ %428, %block_490b51 ], [ %399, %block_490b22 ], [ %370, %block_490af3 ], [ %341, %block_490ac4 ], [ %252, %block_490a6f ], [ %212, %block_490a53 ]
  %MEMORY.2 = phi %struct.Memory* [ %1512, %block_.L_491257 ], [ %1512, %block_49124b ], [ %1483, %block_49121c ], [ %1454, %block_4911ed ], [ %1425, %block_4911be ], [ %1396, %block_49118f ], [ %1367, %block_491160 ], [ %1338, %block_491131 ], [ %1309, %block_491102 ], [ %1280, %block_4910d3 ], [ %1251, %block_4910a4 ], [ %1222, %block_491075 ], [ %1193, %block_491046 ], [ %1164, %block_491017 ], [ %1135, %block_490fe8 ], [ %1106, %block_490fb9 ], [ %1077, %block_490f8a ], [ %1048, %block_490f5b ], [ %1019, %block_490f2c ], [ %990, %block_490efd ], [ %961, %block_490ece ], [ %932, %block_490e9f ], [ %903, %block_490e70 ], [ %874, %block_490e41 ], [ %845, %block_490e12 ], [ %816, %block_490de3 ], [ %787, %block_490db4 ], [ %758, %block_490d85 ], [ %729, %block_490d56 ], [ %700, %block_490d27 ], [ %671, %block_490cf8 ], [ %642, %block_490cc9 ], [ %613, %block_490c9a ], [ %584, %block_490c6b ], [ %555, %block_490c3c ], [ %526, %block_490c0d ], [ %497, %block_490bde ], [ %468, %block_490baf ], [ %439, %block_490b80 ], [ %410, %block_490b51 ], [ %381, %block_490b22 ], [ %352, %block_490af3 ], [ %323, %block_490ac4 ], [ %MEMORY.0, %block_490a6f ], [ %call2_490a30, %block_490a53 ]
  %1532 = load i64, i64* %RBP.i, align 8
  %1533 = add i64 %1532, -4
  %1534 = add i64 %1531, 3
  store i64 %1534, i64* %3, align 8
  %1535 = inttoptr i64 %1533 to i32*
  %1536 = load i32, i32* %1535, align 4
  %1537 = zext i32 %1536 to i64
  store i64 %1537, i64* %RAX.i.pre-phi, align 8
  %1538 = load i64, i64* %6, align 8
  %1539 = add i64 %1538, 32
  store i64 %1539, i64* %6, align 8
  %1540 = icmp ugt i64 %1538, -33
  %1541 = zext i1 %1540 to i8
  store i8 %1541, i8* %14, align 1
  %1542 = trunc i64 %1539 to i32
  %1543 = and i32 %1542, 255
  %1544 = tail call i32 @llvm.ctpop.i32(i32 %1543)
  %1545 = trunc i32 %1544 to i8
  %1546 = and i8 %1545, 1
  %1547 = xor i8 %1546, 1
  store i8 %1547, i8* %21, align 1
  %1548 = xor i64 %1539, %1538
  %1549 = lshr i64 %1548, 4
  %1550 = trunc i64 %1549 to i8
  %1551 = and i8 %1550, 1
  store i8 %1551, i8* %26, align 1
  %1552 = icmp eq i64 %1539, 0
  %1553 = zext i1 %1552 to i8
  store i8 %1553, i8* %29, align 1
  %1554 = lshr i64 %1539, 63
  %1555 = trunc i64 %1554 to i8
  store i8 %1555, i8* %32, align 1
  %1556 = lshr i64 %1538, 63
  %1557 = xor i64 %1554, %1556
  %1558 = add nuw nsw i64 %1557, %1554
  %1559 = icmp eq i64 %1558, 2
  %1560 = zext i1 %1559 to i8
  store i8 %1560, i8* %38, align 1
  %1561 = add i64 %1531, 8
  store i64 %1561, i64* %3, align 8
  %1562 = add i64 %1538, 40
  %1563 = inttoptr i64 %1539 to i64*
  %1564 = load i64, i64* %1563, align 8
  store i64 %1564, i64* %RBP.i, align 8
  store i64 %1562, i64* %6, align 8
  %1565 = add i64 %1531, 9
  store i64 %1565, i64* %3, align 8
  %1566 = inttoptr i64 %1562 to i64*
  %1567 = load i64, i64* %1566, align 8
  store i64 %1567, i64* %3, align 8
  %1568 = add i64 %1538, 48
  store i64 %1568, i64* %6, align 8
  ret %struct.Memory* %MEMORY.2
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a92d___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a92d_type* @G__0x57a92d to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x11__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -17
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.__isoc99_sscanf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_490a5f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsbl_MINUS0x11__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -17
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.toupper_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__cl__MINUS0x11__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -17
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl__cl___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i8, i8* %CL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i8 %4 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x41___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -65
  %8 = icmp ult i32 %4, 65
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
define %struct.Memory* @routine_jl_.L_490a5f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x5a___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -90
  %8 = icmp ult i32 %4, 90
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
define %struct.Memory* @routine_jg_.L_490a5f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsbl_MINUS0x11__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -17
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i8*
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i64
  %10 = and i64 %9, 4294967295
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x49___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -73
  %8 = icmp ult i32 %4, 73
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
define %struct.Memory* @routine_je_.L_490a5f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x5__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 5, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_49125e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movsbl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3f___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -63
  %8 = icmp ult i32 %4, 63
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
define %struct.Memory* @routine_jne_.L_490a7b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x12__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 18, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_490a80(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x20___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jne_.L_490aa1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x1___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1
  store i64 %6, i64* %RAX, align 8
  %7 = icmp eq i64 %3, -1
  %8 = icmp eq i64 %6, 0
  %9 = or i1 %7, %8
  %10 = zext i1 %9 to i8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %10, i8* %11, align 1
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i64 %6, %3
  %20 = lshr i64 %19, 4
  %21 = trunc i64 %20 to i8
  %22 = and i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %22, i8* %23, align 1
  %24 = zext i1 %8 to i8
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
define %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586a9a___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586a9a_type* @G__0x586a9a to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x9___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 9, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strncmp_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_490ad0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x9__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 9, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586aa4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586aa4_type* @G__0x586aa4 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_490aff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xa__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 10, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586aae___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586aae_type* @G__0x586aae to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_490b2e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x11__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 17, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586ab8___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586ab8_type* @G__0x586ab8 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_490b5d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x23__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 35, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586ac4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586ac4_type* @G__0x586ac4 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_490b8c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x24__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 36, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5877c3___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5877c3_type* @G__0x5877c3 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_490bbb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xc__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 12, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586ad0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586ad0_type* @G__0x586ad0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_490bea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x29__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 41, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x58742a___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58742a_type* @G__0x58742a to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_jne_.L_490c19(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xb__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 11, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586add___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586add_type* @G__0x586add to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x7___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_490c48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x10__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 16, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586ae5___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586ae5_type* @G__0x586ae5 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_490c77(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1c__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 28, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586aef___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586aef_type* @G__0x586aef to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x6___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_490ca6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586af6___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586af6_type* @G__0x586af6 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_490cd5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1e__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 30, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586aff___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586aff_type* @G__0x586aff to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_490d04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1f__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 31, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586b09___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586b09_type* @G__0x586b09 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_490d33(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1d__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 29, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57fc64___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fc64_type* @G__0x57fc64 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_490d62(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xe__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 14, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586b12___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586b12_type* @G__0x586b12 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_490d91(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x7__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 7, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586eef___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586eef_type* @G__0x586eef to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_jne_.L_490dc0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xd__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 13, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x585698___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x585698_type* @G__0x585698 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_490def(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x8__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 8, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586b19___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586b19_type* @G__0x586b19 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_490e1e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xf__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 15, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586b1e___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586b1e_type* @G__0x586b1e to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_490e4d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x6__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 6, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586b24___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586b24_type* @G__0x586b24 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_490e7c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x25__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 37, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5857db___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5857db_type* @G__0x5857db to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_490eab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x26__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 38, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5835e4___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5835e4_type* @G__0x5835e4 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_490eda(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x4__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 4, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586b2a___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586b2a_type* @G__0x586b2a to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_490f09(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x21__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 33, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586b2f___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586b2f_type* @G__0x586b2f to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_490f38(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x22__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 34, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a763___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a763_type* @G__0x57a763 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_490f67(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57f610___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f610_type* @G__0x57f610 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_490f96(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x58730e___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58730e_type* @G__0x58730e to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_490fc5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x13__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 19, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586b34___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586b34_type* @G__0x586b34 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_490ff4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x14__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 20, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57c0a9___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c0a9_type* @G__0x57c0a9 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_491023(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x15__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57b705___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57b705_type* @G__0x57b705 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_491052(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x16__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 22, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586b3c___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586b3c_type* @G__0x586b3c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_491081(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1a__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 26, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a760___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a760_type* @G__0x57a760 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4910b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1b__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 27, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586b44___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586b44_type* @G__0x586b44 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4910df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x585f74___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x585f74_type* @G__0x585f74 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_49110e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5856fa___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5856fa_type* @G__0x5856fa to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_jne_.L_49113d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57fdf5___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fdf5_type* @G__0x57fdf5 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_jne_.L_49116c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x17__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 23, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586b49___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586b49_type* @G__0x586b49 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_49119b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x18__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 24, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5861b6___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5861b6_type* @G__0x5861b6 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4911ca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x19__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 25, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586b51___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586b51_type* @G__0x586b51 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4911f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x20__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 32, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x585d71___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x585d71_type* @G__0x585d71 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_491228(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x27__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 39, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586b56___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586b56_type* @G__0x586b56 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_491257(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x28__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 40, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
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

; Function Attrs: nounwind
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
