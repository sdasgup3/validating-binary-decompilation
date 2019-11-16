; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x62daf0_type = type <{ [4 x i8] }>
%G_0x62daf4_type = type <{ [4 x i8] }>
%G_0x62daf8_type = type <{ [4 x i8] }>
%G_0x62dafc_type = type <{ [4 x i8] }>
%G_0x62db00_type = type <{ [4 x i8] }>
%G_0x85f150_type = type <{ [4 x i8] }>
%G_0x8661bc_type = type <{ [1 x i8] }>
%G_0x86bd74_type = type <{ [4 x i8] }>
%G_0x886a60_type = type <{ [4 x i8] }>
%G__0x428cdb_type = type <{ [8 x i8] }>
%G__0x428d04_type = type <{ [8 x i8] }>
%G__0x428d2d_type = type <{ [8 x i8] }>
%G__0x428d56_type = type <{ [8 x i8] }>
%G__0x428d7f_type = type <{ [8 x i8] }>
%G__0x428da8_type = type <{ [8 x i8] }>
%G__0x428dbc_type = type <{ [8 x i8] }>
%G__0x428dd0_type = type <{ [8 x i8] }>
%G__0x428de4_type = type <{ [8 x i8] }>
%G__0x428df8_type = type <{ [8 x i8] }>
%G__0x428e0c_type = type <{ [8 x i8] }>
%G__0x428e1d_type = type <{ [8 x i8] }>
%G__0x85f170_type = type <{ [8 x i8] }>
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
@G_0x62daf0 = local_unnamed_addr global %G_0x62daf0_type zeroinitializer
@G_0x62daf4 = local_unnamed_addr global %G_0x62daf4_type zeroinitializer
@G_0x62daf8 = local_unnamed_addr global %G_0x62daf8_type zeroinitializer
@G_0x62dafc = local_unnamed_addr global %G_0x62dafc_type zeroinitializer
@G_0x62db00 = local_unnamed_addr global %G_0x62db00_type zeroinitializer
@G_0x85f150 = local_unnamed_addr global %G_0x85f150_type zeroinitializer
@G_0x8661bc = local_unnamed_addr global %G_0x8661bc_type zeroinitializer
@G_0x86bd74 = local_unnamed_addr global %G_0x86bd74_type zeroinitializer
@G_0x886a60 = local_unnamed_addr global %G_0x886a60_type zeroinitializer
@G__0x428cdb = global %G__0x428cdb_type zeroinitializer
@G__0x428d04 = global %G__0x428d04_type zeroinitializer
@G__0x428d2d = global %G__0x428d2d_type zeroinitializer
@G__0x428d56 = global %G__0x428d56_type zeroinitializer
@G__0x428d7f = global %G__0x428d7f_type zeroinitializer
@G__0x428da8 = global %G__0x428da8_type zeroinitializer
@G__0x428dbc = global %G__0x428dbc_type zeroinitializer
@G__0x428dd0 = global %G__0x428dd0_type zeroinitializer
@G__0x428de4 = global %G__0x428de4_type zeroinitializer
@G__0x428df8 = global %G__0x428df8_type zeroinitializer
@G__0x428e0c = global %G__0x428e0c_type zeroinitializer
@G__0x428e1d = global %G__0x428e1d_type zeroinitializer
@G__0x85f170 = global %G__0x85f170_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_4098e0.in_check(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4026d0.DropaddHolding(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407e30.gen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b730.make(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406680.check_legal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40c7a0.unmake(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4027b0.DropremoveHolding(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @CheckBadFlow(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -24728
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 24720
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %40 to i32*
  %41 = add i64 %7, -12
  %42 = load i32, i32* %EDI.i, align 4
  %43 = add i64 %10, 13
  store i64 %43, i64* %3, align 8
  %44 = inttoptr i64 %41 to i32*
  store i32 %42, i32* %44, align 4
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -24620
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 10
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %46 to i32*
  store i32 0, i32* %49, align 4
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -24624
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 10
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %51 to i32*
  store i32 0, i32* %54, align 4
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -24628
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, 10
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %56 to i32*
  store i32 0, i32* %59, align 4
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -24632
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, 10
  store i64 %63, i64* %3, align 8
  %64 = inttoptr i64 %61 to i32*
  store i32 0, i32* %64, align 4
  %65 = load i64, i64* %RBP.i, align 8
  %66 = add i64 %65, -24636
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 10
  store i64 %68, i64* %3, align 8
  %69 = inttoptr i64 %66 to i32*
  store i32 0, i32* %69, align 4
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -24640
  %72 = load i64, i64* %3, align 8
  %73 = add i64 %72, 10
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %71 to i32*
  store i32 0, i32* %74, align 4
  %75 = load i64, i64* %RBP.i, align 8
  %76 = add i64 %75, -24644
  %77 = load i64, i64* %3, align 8
  %78 = add i64 %77, 10
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %76 to i32*
  store i32 0, i32* %79, align 4
  %80 = load i64, i64* %RBP.i, align 8
  %81 = add i64 %80, -24648
  %82 = load i64, i64* %3, align 8
  %83 = add i64 %82, 10
  store i64 %83, i64* %3, align 8
  %84 = inttoptr i64 %81 to i32*
  store i32 0, i32* %84, align 4
  %85 = load i64, i64* %RBP.i, align 8
  %86 = add i64 %85, -24652
  %87 = load i64, i64* %3, align 8
  %88 = add i64 %87, 10
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %86 to i32*
  store i32 0, i32* %89, align 4
  %90 = load i64, i64* %RBP.i, align 8
  %91 = add i64 %90, -24656
  %92 = load i64, i64* %3, align 8
  %93 = add i64 %92, 10
  store i64 %93, i64* %3, align 8
  %94 = inttoptr i64 %91 to i32*
  store i32 0, i32* %94, align 4
  %95 = load i64, i64* %RBP.i, align 8
  %96 = add i64 %95, -24660
  %97 = load i64, i64* %3, align 8
  %98 = add i64 %97, 10
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %96 to i32*
  store i32 0, i32* %99, align 4
  %100 = load i64, i64* %RBP.i, align 8
  %101 = add i64 %100, -4
  %102 = load i64, i64* %3, align 8
  %103 = add i64 %102, 4
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %101 to i32*
  %105 = load i32, i32* %104, align 4
  store i8 0, i8* %14, align 1
  %106 = and i32 %105, 255
  %107 = tail call i32 @llvm.ctpop.i32(i32 %106)
  %108 = trunc i32 %107 to i8
  %109 = and i8 %108, 1
  %110 = xor i8 %109, 1
  store i8 %110, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %111 = icmp eq i32 %105, 0
  %112 = zext i1 %111 to i8
  store i8 %112, i8* %30, align 1
  %113 = lshr i32 %105, 31
  %114 = trunc i32 %113 to i8
  store i8 %114, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v = select i1 %111, i64 70, i64 10
  %115 = add i64 %102, %.v
  store i64 %115, i64* %3, align 8
  br i1 %111, label %block_.L_411942, label %block_411906

block_411906:                                     ; preds = %entry
  store i32 0, i32* bitcast (%G_0x62daf0_type* @G_0x62daf0 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x62daf4_type* @G_0x62daf4 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x62daf8_type* @G_0x62daf8 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x62dafc_type* @G_0x62dafc to i32*), align 8
  store i32 0, i32* bitcast (%G_0x62db00_type* @G_0x62db00 to i32*), align 8
  %116 = add i64 %115, 4096
  store i64 %116, i64* %3, align 8
  br label %block_.L_412906

block_.L_411942:                                  ; preds = %entry
  %117 = add i64 %115, -32866
  %118 = add i64 %115, 5
  %119 = load i64, i64* %6, align 8
  %120 = add i64 %119, -8
  %121 = inttoptr i64 %120 to i64*
  store i64 %118, i64* %121, align 8
  store i64 %120, i64* %6, align 8
  store i64 %117, i64* %3, align 8
  %call2_411942 = tail call %struct.Memory* @sub_4098e0.in_check(%struct.State* nonnull %0, i64 %117, %struct.Memory* %2)
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1526 = getelementptr inbounds %union.anon, %union.anon* %122, i64 0, i32 0
  %123 = load i64, i64* %3, align 8
  store i64 2, i64* %RCX.i1526, align 8
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i1524 = getelementptr inbounds %union.anon, %union.anon* %124, i64 0, i32 0
  store i64 1, i64* %RDX.i1524, align 8
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i1522 = getelementptr inbounds %union.anon, %union.anon* %125, i64 0, i32 0
  store i64 ptrtoint (%G__0x85f170_type* @G__0x85f170 to i64), i64* %RSI.i1522, align 8
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX.i1519 = bitcast %union.anon* %126 to i32*
  %127 = load i64, i64* %RBP.i, align 8
  %128 = add i64 %127, -24612
  %129 = load i32, i32* %EAX.i1519, align 4
  %130 = add i64 %123, 26
  store i64 %130, i64* %3, align 8
  %131 = inttoptr i64 %128 to i32*
  store i32 %129, i32* %131, align 4
  %132 = load i64, i64* %3, align 8
  %133 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %DIL.i1516 = bitcast %union.anon* %40 to i8*
  %134 = icmp eq i32 %133, 0
  %135 = zext i1 %134 to i8
  store i8 %135, i8* %DIL.i1516, align 1
  %RAX.i1510 = getelementptr inbounds %union.anon, %union.anon* %126, i64 0, i32 0
  %136 = zext i1 %134 to i64
  store i64 %136, i64* %RAX.i1510, align 8
  %R8.i1508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %137 = shl nuw nsw i8 %135, 6
  %138 = zext i8 %137 to i64
  %139 = load i64, i64* %RSI.i1522, align 8
  %140 = add i64 %138, %139
  store i64 %140, i64* %RSI.i1522, align 8
  %141 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  store i8 0, i8* %14, align 1
  %142 = and i32 %141, 255
  %143 = tail call i32 @llvm.ctpop.i32(i32 %142)
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  %146 = xor i8 %145, 1
  store i8 %146, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %147 = icmp eq i32 %141, 0
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %30, align 1
  %149 = lshr i32 %141, 31
  %150 = trunc i32 %149 to i8
  store i8 %150, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %EDX.i = bitcast %union.anon* %124 to i32*
  %151 = load i32, i32* %EDX.i, align 4
  %152 = zext i32 %151 to i64
  %153 = load i64, i64* %RCX.i1526, align 8
  %154 = select i1 %147, i64 %153, i64 %152
  %155 = and i64 %154, 4294967295
  store i64 %155, i64* %RCX.i1526, align 8
  %ECX.i1496 = bitcast %union.anon* %122 to i32*
  %sext = shl i64 %154, 32
  %156 = ashr exact i64 %sext, 32
  store i64 %156, i64* %R8.i1508, align 8
  %157 = ashr exact i64 %sext, 30
  %158 = add i64 %140, %157
  %159 = add i64 %132, 53
  store i64 %159, i64* %3, align 8
  %160 = inttoptr i64 %158 to i32*
  %161 = load i32, i32* %160, align 4
  store i8 0, i8* %14, align 1
  %162 = and i32 %161, 255
  %163 = tail call i32 @llvm.ctpop.i32(i32 %162)
  %164 = trunc i32 %163 to i8
  %165 = and i8 %164, 1
  %166 = xor i8 %165, 1
  store i8 %166, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %167 = icmp eq i32 %161, 0
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %30, align 1
  %169 = lshr i32 %161, 31
  %170 = trunc i32 %169 to i8
  store i8 %170, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v157 = select i1 %167, i64 59, i64 565
  %171 = add i64 %132, %.v157
  store i64 %171, i64* %3, align 8
  br i1 %167, label %block_41199c, label %block_.L_411942.block_.L_411b96_crit_edge

block_.L_411942.block_.L_411b96_crit_edge:        ; preds = %block_.L_411942
  %.pre152 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  br label %block_.L_411b96

block_41199c:                                     ; preds = %block_.L_411942
  store i64 1, i64* %RCX.i1526, align 8
  %172 = select i1 %147, i64 2, i64 1
  store i64 %172, i64* %RAX.i1510, align 8
  %DL.i1481 = bitcast %union.anon* %124 to i8*
  %173 = zext i1 %147 to i8
  store i8 %173, i8* %DL.i1481, align 1
  store i8 0, i8* %14, align 1
  %174 = zext i1 %147 to i32
  %175 = tail call i32 @llvm.ctpop.i32(i32 %174)
  %176 = trunc i32 %175 to i8
  %177 = xor i8 %176, 1
  store i8 %177, i8* %21, align 1
  %178 = xor i8 %173, 1
  store i8 %178, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %179 = zext i1 %147 to i64
  store i64 %179, i64* %RSI.i1522, align 8
  %RDI.i1472 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 %172, i64* %RDI.i1472, align 8
  %180 = add i64 %171, -62156
  %181 = add i64 %171, 48
  %182 = load i64, i64* %6, align 8
  %183 = add i64 %182, -8
  %184 = inttoptr i64 %183 to i64*
  store i64 %181, i64* %184, align 8
  store i64 %183, i64* %6, align 8
  store i64 %180, i64* %3, align 8
  %call2_4119c7 = tail call %struct.Memory* @sub_4026d0.DropaddHolding(%struct.State* nonnull %0, i64 %180, %struct.Memory* %call2_411942)
  %185 = load i64, i64* %RBP.i, align 8
  %186 = add i64 %185, -12304
  %187 = load i64, i64* %3, align 8
  store i64 %186, i64* %RDI.i1472, align 8
  %188 = add i64 %187, -39836
  %189 = add i64 %187, 12
  %190 = load i64, i64* %6, align 8
  %191 = add i64 %190, -8
  %192 = inttoptr i64 %191 to i64*
  store i64 %189, i64* %192, align 8
  store i64 %191, i64* %6, align 8
  store i64 %188, i64* %3, align 8
  %call2_4119d3 = tail call %struct.Memory* @sub_407e30.gen(%struct.State* nonnull %0, i64 %188, %struct.Memory* %call2_4119c7)
  %193 = load i64, i64* %3, align 8
  %194 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %195 = zext i32 %194 to i64
  store i64 %195, i64* %RAX.i1510, align 8
  %196 = load i64, i64* %RBP.i, align 8
  %197 = add i64 %196, -24596
  %198 = add i64 %193, 13
  store i64 %198, i64* %3, align 8
  %199 = inttoptr i64 %197 to i32*
  store i32 %194, i32* %199, align 4
  %200 = load i64, i64* %RBP.i, align 8
  %201 = add i64 %200, -24608
  %202 = load i64, i64* %3, align 8
  %203 = add i64 %202, 10
  store i64 %203, i64* %3, align 8
  %204 = inttoptr i64 %201 to i32*
  store i32 0, i32* %204, align 4
  %AL.i1453 = bitcast %union.anon* %126 to i8*
  %CL.i1454 = bitcast %union.anon* %122 to i8*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4119ef

block_.L_4119ef:                                  ; preds = %block_.L_411b40, %block_41199c
  %205 = phi i64 [ %.pre, %block_41199c ], [ %588, %block_.L_411b40 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_4119d3, %block_41199c ], [ %call2_411b4d, %block_.L_411b40 ]
  store i64 0, i64* %RAX.i1510, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %CL.i1454, align 1
  %206 = load i64, i64* %RBP.i, align 8
  %207 = add i64 %206, -24608
  %208 = add i64 %205, 10
  store i64 %208, i64* %3, align 8
  %209 = inttoptr i64 %207 to i32*
  %210 = load i32, i32* %209, align 4
  %211 = zext i32 %210 to i64
  store i64 %211, i64* %RAX.i1510, align 8
  %212 = add i64 %206, -24596
  %213 = add i64 %205, 16
  store i64 %213, i64* %3, align 8
  %214 = inttoptr i64 %212 to i32*
  %215 = load i32, i32* %214, align 4
  %216 = sub i32 %210, %215
  %217 = icmp ult i32 %210, %215
  %218 = zext i1 %217 to i8
  store i8 %218, i8* %14, align 1
  %219 = and i32 %216, 255
  %220 = tail call i32 @llvm.ctpop.i32(i32 %219)
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  store i8 %223, i8* %21, align 1
  %224 = xor i32 %215, %210
  %225 = xor i32 %224, %216
  %226 = lshr i32 %225, 4
  %227 = trunc i32 %226 to i8
  %228 = and i8 %227, 1
  store i8 %228, i8* %27, align 1
  %229 = icmp eq i32 %216, 0
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %30, align 1
  %231 = lshr i32 %216, 31
  %232 = trunc i32 %231 to i8
  store i8 %232, i8* %33, align 1
  %233 = lshr i32 %210, 31
  %234 = lshr i32 %215, 31
  %235 = xor i32 %234, %233
  %236 = xor i32 %231, %233
  %237 = add nuw nsw i32 %236, %235
  %238 = icmp eq i32 %237, 2
  %239 = zext i1 %238 to i8
  store i8 %239, i8* %39, align 1
  %240 = add i64 %206, -24661
  %241 = add i64 %205, 22
  store i64 %241, i64* %3, align 8
  %242 = inttoptr i64 %240 to i8*
  store i8 0, i8* %242, align 1
  %243 = load i64, i64* %3, align 8
  %244 = add i64 %243, 22
  %245 = add i64 %243, 6
  %246 = load i8, i8* %33, align 1
  %247 = icmp ne i8 %246, 0
  %248 = load i8, i8* %39, align 1
  %249 = icmp ne i8 %248, 0
  %250 = xor i1 %247, %249
  %251 = select i1 %250, i64 %245, i64 %244
  store i64 %251, i64* %3, align 8
  br i1 %250, label %block_411a0b, label %block_.L_411a1b

block_411a0b:                                     ; preds = %block_.L_4119ef
  %252 = load i64, i64* %RBP.i, align 8
  %253 = add i64 %252, -24624
  %254 = add i64 %251, 7
  store i64 %254, i64* %3, align 8
  %255 = inttoptr i64 %253 to i32*
  %256 = load i32, i32* %255, align 4
  store i8 0, i8* %14, align 1
  %257 = and i32 %256, 255
  %258 = tail call i32 @llvm.ctpop.i32(i32 %257)
  %259 = trunc i32 %258 to i8
  %260 = and i8 %259, 1
  %261 = xor i8 %260, 1
  store i8 %261, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %262 = icmp eq i32 %256, 0
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %30, align 1
  %264 = lshr i32 %256, 31
  %265 = trunc i32 %264 to i8
  store i8 %265, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 %263, i8* %AL.i1453, align 1
  %266 = add i64 %252, -24661
  %267 = add i64 %251, 16
  store i64 %267, i64* %3, align 8
  %268 = inttoptr i64 %266 to i8*
  store i8 %263, i8* %268, align 1
  %.pre94 = load i64, i64* %3, align 8
  br label %block_.L_411a1b

block_.L_411a1b:                                  ; preds = %block_.L_4119ef, %block_411a0b
  %269 = phi i64 [ %244, %block_.L_4119ef ], [ %.pre94, %block_411a0b ]
  %270 = load i64, i64* %RBP.i, align 8
  %271 = add i64 %270, -24661
  %272 = add i64 %269, 6
  store i64 %272, i64* %3, align 8
  %273 = inttoptr i64 %271 to i8*
  %274 = load i8, i8* %273, align 1
  store i8 %274, i8* %AL.i1453, align 1
  %275 = and i8 %274, 1
  store i8 0, i8* %14, align 1
  %276 = zext i8 %275 to i32
  %277 = tail call i32 @llvm.ctpop.i32(i32 %276)
  %278 = trunc i32 %277 to i8
  %279 = xor i8 %278, 1
  store i8 %279, i8* %21, align 1
  %280 = xor i8 %275, 1
  store i8 %280, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %281 = icmp eq i8 %280, 0
  %.v210 = select i1 %281, i64 19, i64 14
  %282 = add i64 %269, %.v210
  store i64 %282, i64* %3, align 8
  br i1 %281, label %block_.L_411a2e, label %block_411a29

block_411a29:                                     ; preds = %block_.L_411a1b
  store i64 1, i64* %RCX.i1526, align 8
  %283 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %284 = icmp eq i32 %283, 0
  %285 = select i1 %284, i64 2, i64 1
  store i64 %285, i64* %RAX.i1510, align 8
  %286 = zext i1 %284 to i8
  store i8 %286, i8* %DL.i1481, align 1
  store i8 0, i8* %14, align 1
  %287 = zext i1 %284 to i32
  %288 = tail call i32 @llvm.ctpop.i32(i32 %287)
  %289 = trunc i32 %288 to i8
  %290 = xor i8 %289, 1
  store i8 %290, i8* %21, align 1
  %291 = xor i8 %286, 1
  store i8 %291, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %292 = zext i1 %284 to i64
  store i64 %292, i64* %RSI.i1522, align 8
  store i64 %285, i64* %RDI.i1472, align 8
  %293 = add i64 %282, -62073
  %294 = add i64 %282, 365
  %295 = load i64, i64* %6, align 8
  %296 = add i64 %295, -8
  %297 = inttoptr i64 %296 to i64*
  store i64 %294, i64* %297, align 8
  store i64 %296, i64* %6, align 8
  store i64 %293, i64* %3, align 8
  %call2_411b91 = tail call %struct.Memory* @sub_4027b0.DropremoveHolding(%struct.State* nonnull %0, i64 %293, %struct.Memory* %MEMORY.0)
  %.pre99 = load i64, i64* %3, align 8
  %.pre100 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  br label %block_.L_411b96

block_.L_411a2e:                                  ; preds = %block_.L_411a1b
  %298 = add i64 %270, -12304
  store i64 %298, i64* %RDI.i1472, align 8
  %299 = add i64 %270, -24608
  %300 = add i64 %282, 13
  store i64 %300, i64* %3, align 8
  %301 = inttoptr i64 %299 to i32*
  %302 = load i32, i32* %301, align 4
  %303 = zext i32 %302 to i64
  store i64 %303, i64* %RSI.i1522, align 8
  %304 = add i64 %282, -25342
  %305 = add i64 %282, 18
  %306 = load i64, i64* %6, align 8
  %307 = add i64 %306, -8
  %308 = inttoptr i64 %307 to i64*
  store i64 %305, i64* %308, align 8
  store i64 %307, i64* %6, align 8
  store i64 %304, i64* %3, align 8
  %call2_411a3b = tail call %struct.Memory* @sub_40b730.make(%struct.State* nonnull %0, i64 %304, %struct.Memory* %MEMORY.0)
  %309 = load i64, i64* %RBP.i, align 8
  %310 = add i64 %309, -12304
  %311 = load i64, i64* %3, align 8
  store i64 %310, i64* %RDI.i1472, align 8
  %312 = add i64 %309, -24608
  %313 = add i64 %311, 13
  store i64 %313, i64* %3, align 8
  %314 = inttoptr i64 %312 to i32*
  %315 = load i32, i32* %314, align 4
  %316 = zext i32 %315 to i64
  store i64 %316, i64* %RSI.i1522, align 8
  %317 = add i64 %309, -24612
  %318 = add i64 %311, 19
  store i64 %318, i64* %3, align 8
  %319 = inttoptr i64 %317 to i32*
  %320 = load i32, i32* %319, align 4
  %321 = zext i32 %320 to i64
  store i64 %321, i64* %RDX.i1524, align 8
  %322 = add i64 %311, -46016
  %323 = add i64 %311, 24
  %324 = load i64, i64* %6, align 8
  %325 = add i64 %324, -8
  %326 = inttoptr i64 %325 to i64*
  store i64 %323, i64* %326, align 8
  store i64 %325, i64* %6, align 8
  store i64 %322, i64* %3, align 8
  %call2_411a53 = tail call %struct.Memory* @sub_406680.check_legal(%struct.State* nonnull %0, i64 %322, %struct.Memory* %MEMORY.0)
  %327 = load i32, i32* %EAX.i1519, align 4
  %328 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %329 = and i32 %327, 255
  %330 = tail call i32 @llvm.ctpop.i32(i32 %329)
  %331 = trunc i32 %330 to i8
  %332 = and i8 %331, 1
  %333 = xor i8 %332, 1
  store i8 %333, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %334 = icmp eq i32 %327, 0
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %30, align 1
  %336 = lshr i32 %327, 31
  %337 = trunc i32 %336 to i8
  store i8 %337, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v211 = select i1 %334, i64 232, i64 9
  %338 = add i64 %328, %.v211
  store i64 %338, i64* %3, align 8
  %.pre98 = load i64, i64* %RBP.i, align 8
  br i1 %334, label %block_.L_411b40, label %block_411a61

block_411a61:                                     ; preds = %block_.L_411a2e
  %339 = add i64 %.pre98, -24624
  %340 = add i64 %338, 10
  store i64 %340, i64* %3, align 8
  %341 = inttoptr i64 %339 to i32*
  store i32 3, i32* %341, align 4
  %342 = load i64, i64* %3, align 8
  %343 = add i64 %342, -33163
  %344 = add i64 %342, 5
  %345 = load i64, i64* %6, align 8
  %346 = add i64 %345, -8
  %347 = inttoptr i64 %346 to i64*
  store i64 %344, i64* %347, align 8
  store i64 %346, i64* %6, align 8
  store i64 %343, i64* %3, align 8
  %call2_411a6b = tail call %struct.Memory* @sub_4098e0.in_check(%struct.State* nonnull %0, i64 %343, %struct.Memory* %MEMORY.0)
  %348 = load i64, i64* %RBP.i, align 8
  %349 = add i64 %348, -24592
  %350 = load i64, i64* %3, align 8
  store i64 %349, i64* %RDI.i1472, align 8
  %351 = add i64 %348, -24616
  %352 = load i32, i32* %EAX.i1519, align 4
  %353 = add i64 %350, 13
  store i64 %353, i64* %3, align 8
  %354 = inttoptr i64 %351 to i32*
  store i32 %352, i32* %354, align 4
  %355 = load i64, i64* %3, align 8
  %356 = add i64 %355, -40013
  %357 = add i64 %355, 5
  %358 = load i64, i64* %6, align 8
  %359 = add i64 %358, -8
  %360 = inttoptr i64 %359 to i64*
  store i64 %357, i64* %360, align 8
  store i64 %359, i64* %6, align 8
  store i64 %356, i64* %3, align 8
  %call2_411a7d = tail call %struct.Memory* @sub_407e30.gen(%struct.State* nonnull %0, i64 %356, %struct.Memory* %MEMORY.0)
  %361 = load i64, i64* %3, align 8
  %362 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %363 = zext i32 %362 to i64
  store i64 %363, i64* %RAX.i1510, align 8
  %364 = load i64, i64* %RBP.i, align 8
  %365 = add i64 %364, -24600
  %366 = add i64 %361, 13
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to i32*
  store i32 %362, i32* %367, align 4
  %368 = load i64, i64* %RBP.i, align 8
  %369 = add i64 %368, -24604
  %370 = load i64, i64* %3, align 8
  %371 = add i64 %370, 10
  store i64 %371, i64* %3, align 8
  %372 = inttoptr i64 %369 to i32*
  store i32 0, i32* %372, align 4
  %.pre95 = load i64, i64* %3, align 8
  br label %block_.L_411a99

block_.L_411a99:                                  ; preds = %block_.L_411b15, %block_411a61
  %373 = phi i64 [ %543, %block_.L_411b15 ], [ %.pre95, %block_411a61 ]
  store i64 0, i64* %RAX.i1510, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %CL.i1454, align 1
  %374 = load i64, i64* %RBP.i, align 8
  %375 = add i64 %374, -24604
  %376 = add i64 %373, 10
  store i64 %376, i64* %3, align 8
  %377 = inttoptr i64 %375 to i32*
  %378 = load i32, i32* %377, align 4
  %379 = zext i32 %378 to i64
  store i64 %379, i64* %RAX.i1510, align 8
  %380 = add i64 %374, -24600
  %381 = add i64 %373, 16
  store i64 %381, i64* %3, align 8
  %382 = inttoptr i64 %380 to i32*
  %383 = load i32, i32* %382, align 4
  %384 = sub i32 %378, %383
  %385 = icmp ult i32 %378, %383
  %386 = zext i1 %385 to i8
  store i8 %386, i8* %14, align 1
  %387 = and i32 %384, 255
  %388 = tail call i32 @llvm.ctpop.i32(i32 %387)
  %389 = trunc i32 %388 to i8
  %390 = and i8 %389, 1
  %391 = xor i8 %390, 1
  store i8 %391, i8* %21, align 1
  %392 = xor i32 %383, %378
  %393 = xor i32 %392, %384
  %394 = lshr i32 %393, 4
  %395 = trunc i32 %394 to i8
  %396 = and i8 %395, 1
  store i8 %396, i8* %27, align 1
  %397 = icmp eq i32 %384, 0
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %30, align 1
  %399 = lshr i32 %384, 31
  %400 = trunc i32 %399 to i8
  store i8 %400, i8* %33, align 1
  %401 = lshr i32 %378, 31
  %402 = lshr i32 %383, 31
  %403 = xor i32 %402, %401
  %404 = xor i32 %399, %401
  %405 = add nuw nsw i32 %404, %403
  %406 = icmp eq i32 %405, 2
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %39, align 1
  %408 = add i64 %374, -24662
  %409 = add i64 %373, 22
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %408 to i8*
  store i8 0, i8* %410, align 1
  %411 = load i64, i64* %3, align 8
  %412 = add i64 %411, 22
  %413 = add i64 %411, 6
  %414 = load i8, i8* %33, align 1
  %415 = icmp ne i8 %414, 0
  %416 = load i8, i8* %39, align 1
  %417 = icmp ne i8 %416, 0
  %418 = xor i1 %415, %417
  %419 = select i1 %418, i64 %413, i64 %412
  store i64 %419, i64* %3, align 8
  br i1 %418, label %block_411ab5, label %block_.L_411ac5

block_411ab5:                                     ; preds = %block_.L_411a99
  %420 = load i64, i64* %RBP.i, align 8
  %421 = add i64 %420, -24624
  %422 = add i64 %419, 7
  store i64 %422, i64* %3, align 8
  %423 = inttoptr i64 %421 to i32*
  %424 = load i32, i32* %423, align 4
  store i8 0, i8* %14, align 1
  %425 = and i32 %424, 255
  %426 = tail call i32 @llvm.ctpop.i32(i32 %425)
  %427 = trunc i32 %426 to i8
  %428 = and i8 %427, 1
  %429 = xor i8 %428, 1
  store i8 %429, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %430 = icmp eq i32 %424, 0
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %30, align 1
  %432 = lshr i32 %424, 31
  %433 = trunc i32 %432 to i8
  store i8 %433, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %434 = xor i1 %430, true
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %AL.i1453, align 1
  %436 = add i64 %420, -24662
  %437 = add i64 %419, 16
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %436 to i8*
  store i8 %435, i8* %438, align 1
  %.pre96 = load i64, i64* %3, align 8
  br label %block_.L_411ac5

block_.L_411ac5:                                  ; preds = %block_.L_411a99, %block_411ab5
  %439 = phi i64 [ %412, %block_.L_411a99 ], [ %.pre96, %block_411ab5 ]
  %440 = load i64, i64* %RBP.i, align 8
  %441 = add i64 %440, -24662
  %442 = add i64 %439, 6
  store i64 %442, i64* %3, align 8
  %443 = inttoptr i64 %441 to i8*
  %444 = load i8, i8* %443, align 1
  store i8 %444, i8* %AL.i1453, align 1
  %445 = and i8 %444, 1
  store i8 0, i8* %14, align 1
  %446 = zext i8 %445 to i32
  %447 = tail call i32 @llvm.ctpop.i32(i32 %446)
  %448 = trunc i32 %447 to i8
  %449 = xor i8 %448, 1
  store i8 %449, i8* %21, align 1
  %450 = xor i8 %445, 1
  store i8 %450, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %451 = icmp eq i8 %450, 0
  %.v212 = select i1 %451, i64 19, i64 14
  %452 = add i64 %439, %.v212
  store i64 %452, i64* %3, align 8
  br i1 %451, label %block_.L_411ad8, label %block_411ad3

block_411ad3:                                     ; preds = %block_.L_411ac5
  %453 = add i64 %452, 109
  store i64 %453, i64* %3, align 8
  br label %block_.L_411b40

block_.L_411ad8:                                  ; preds = %block_.L_411ac5
  %454 = add i64 %440, -24592
  store i64 %454, i64* %RDI.i1472, align 8
  %455 = add i64 %440, -24604
  %456 = add i64 %452, 13
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %455 to i32*
  %458 = load i32, i32* %457, align 4
  %459 = zext i32 %458 to i64
  store i64 %459, i64* %RSI.i1522, align 8
  %460 = add i64 %452, -25512
  %461 = add i64 %452, 18
  %462 = load i64, i64* %6, align 8
  %463 = add i64 %462, -8
  %464 = inttoptr i64 %463 to i64*
  store i64 %461, i64* %464, align 8
  store i64 %463, i64* %6, align 8
  store i64 %460, i64* %3, align 8
  %call2_411ae5 = tail call %struct.Memory* @sub_40b730.make(%struct.State* nonnull %0, i64 %460, %struct.Memory* %MEMORY.0)
  %465 = load i64, i64* %RBP.i, align 8
  %466 = add i64 %465, -24592
  %467 = load i64, i64* %3, align 8
  store i64 %466, i64* %RDI.i1472, align 8
  %468 = add i64 %465, -24604
  %469 = add i64 %467, 13
  store i64 %469, i64* %3, align 8
  %470 = inttoptr i64 %468 to i32*
  %471 = load i32, i32* %470, align 4
  %472 = zext i32 %471 to i64
  store i64 %472, i64* %RSI.i1522, align 8
  %473 = add i64 %465, -24616
  %474 = add i64 %467, 19
  store i64 %474, i64* %3, align 8
  %475 = inttoptr i64 %473 to i32*
  %476 = load i32, i32* %475, align 4
  %477 = zext i32 %476 to i64
  store i64 %477, i64* %RDX.i1524, align 8
  %478 = add i64 %467, -46186
  %479 = add i64 %467, 24
  %480 = load i64, i64* %6, align 8
  %481 = add i64 %480, -8
  %482 = inttoptr i64 %481 to i64*
  store i64 %479, i64* %482, align 8
  store i64 %481, i64* %6, align 8
  store i64 %478, i64* %3, align 8
  %call2_411afd = tail call %struct.Memory* @sub_406680.check_legal(%struct.State* nonnull %0, i64 %478, %struct.Memory* %MEMORY.0)
  %483 = load i32, i32* %EAX.i1519, align 4
  %484 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %485 = and i32 %483, 255
  %486 = tail call i32 @llvm.ctpop.i32(i32 %485)
  %487 = trunc i32 %486 to i8
  %488 = and i8 %487, 1
  %489 = xor i8 %488, 1
  store i8 %489, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %490 = icmp eq i32 %483, 0
  %491 = zext i1 %490 to i8
  store i8 %491, i8* %30, align 1
  %492 = lshr i32 %483, 31
  %493 = trunc i32 %492 to i8
  store i8 %493, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v213 = select i1 %490, i64 19, i64 9
  %494 = add i64 %484, %.v213
  store i64 %494, i64* %3, align 8
  br i1 %490, label %block_.L_411b15, label %block_411b0b

block_411b0b:                                     ; preds = %block_.L_411ad8
  %495 = load i64, i64* %RBP.i, align 8
  %496 = add i64 %495, -24624
  %497 = add i64 %494, 10
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %496 to i32*
  store i32 0, i32* %498, align 4
  %.pre97 = load i64, i64* %3, align 8
  br label %block_.L_411b15

block_.L_411b15:                                  ; preds = %block_411b0b, %block_.L_411ad8
  %499 = phi i64 [ %.pre97, %block_411b0b ], [ %494, %block_.L_411ad8 ]
  %500 = load i64, i64* %RBP.i, align 8
  %501 = add i64 %500, -24592
  store i64 %501, i64* %RDI.i1472, align 8
  %502 = add i64 %500, -24604
  %503 = add i64 %499, 13
  store i64 %503, i64* %3, align 8
  %504 = inttoptr i64 %502 to i32*
  %505 = load i32, i32* %504, align 4
  %506 = zext i32 %505 to i64
  store i64 %506, i64* %RSI.i1522, align 8
  %507 = add i64 %499, -21365
  %508 = add i64 %499, 18
  %509 = load i64, i64* %6, align 8
  %510 = add i64 %509, -8
  %511 = inttoptr i64 %510 to i64*
  store i64 %508, i64* %511, align 8
  store i64 %510, i64* %6, align 8
  store i64 %507, i64* %3, align 8
  %call2_411b22 = tail call %struct.Memory* @sub_40c7a0.unmake(%struct.State* nonnull %0, i64 %507, %struct.Memory* %MEMORY.0)
  %512 = load i64, i64* %RBP.i, align 8
  %513 = add i64 %512, -24604
  %514 = load i64, i64* %3, align 8
  %515 = add i64 %514, 6
  store i64 %515, i64* %3, align 8
  %516 = inttoptr i64 %513 to i32*
  %517 = load i32, i32* %516, align 4
  %518 = add i32 %517, 1
  %519 = zext i32 %518 to i64
  store i64 %519, i64* %RAX.i1510, align 8
  %520 = icmp eq i32 %517, -1
  %521 = icmp eq i32 %518, 0
  %522 = or i1 %520, %521
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %14, align 1
  %524 = and i32 %518, 255
  %525 = tail call i32 @llvm.ctpop.i32(i32 %524)
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  %528 = xor i8 %527, 1
  store i8 %528, i8* %21, align 1
  %529 = xor i32 %518, %517
  %530 = lshr i32 %529, 4
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  store i8 %532, i8* %27, align 1
  %533 = zext i1 %521 to i8
  store i8 %533, i8* %30, align 1
  %534 = lshr i32 %518, 31
  %535 = trunc i32 %534 to i8
  store i8 %535, i8* %33, align 1
  %536 = lshr i32 %517, 31
  %537 = xor i32 %534, %536
  %538 = add nuw nsw i32 %537, %534
  %539 = icmp eq i32 %538, 2
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %39, align 1
  %541 = add i64 %514, 15
  store i64 %541, i64* %3, align 8
  store i32 %518, i32* %516, align 4
  %542 = load i64, i64* %3, align 8
  %543 = add i64 %542, -157
  store i64 %543, i64* %3, align 8
  br label %block_.L_411a99

block_.L_411b40:                                  ; preds = %block_.L_411a2e, %block_411ad3
  %544 = phi i64 [ %453, %block_411ad3 ], [ %338, %block_.L_411a2e ]
  %545 = phi i64 [ %440, %block_411ad3 ], [ %.pre98, %block_.L_411a2e ]
  %546 = add i64 %545, -12304
  store i64 %546, i64* %RDI.i1472, align 8
  %547 = add i64 %545, -24608
  %548 = add i64 %544, 13
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %547 to i32*
  %550 = load i32, i32* %549, align 4
  %551 = zext i32 %550 to i64
  store i64 %551, i64* %RSI.i1522, align 8
  %552 = add i64 %544, -21408
  %553 = add i64 %544, 18
  %554 = load i64, i64* %6, align 8
  %555 = add i64 %554, -8
  %556 = inttoptr i64 %555 to i64*
  store i64 %553, i64* %556, align 8
  store i64 %555, i64* %6, align 8
  store i64 %552, i64* %3, align 8
  %call2_411b4d = tail call %struct.Memory* @sub_40c7a0.unmake(%struct.State* nonnull %0, i64 %552, %struct.Memory* %MEMORY.0)
  %557 = load i64, i64* %RBP.i, align 8
  %558 = add i64 %557, -24608
  %559 = load i64, i64* %3, align 8
  %560 = add i64 %559, 6
  store i64 %560, i64* %3, align 8
  %561 = inttoptr i64 %558 to i32*
  %562 = load i32, i32* %561, align 4
  %563 = add i32 %562, 1
  %564 = zext i32 %563 to i64
  store i64 %564, i64* %RAX.i1510, align 8
  %565 = icmp eq i32 %562, -1
  %566 = icmp eq i32 %563, 0
  %567 = or i1 %565, %566
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %14, align 1
  %569 = and i32 %563, 255
  %570 = tail call i32 @llvm.ctpop.i32(i32 %569)
  %571 = trunc i32 %570 to i8
  %572 = and i8 %571, 1
  %573 = xor i8 %572, 1
  store i8 %573, i8* %21, align 1
  %574 = xor i32 %563, %562
  %575 = lshr i32 %574, 4
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  store i8 %577, i8* %27, align 1
  %578 = zext i1 %566 to i8
  store i8 %578, i8* %30, align 1
  %579 = lshr i32 %563, 31
  %580 = trunc i32 %579 to i8
  store i8 %580, i8* %33, align 1
  %581 = lshr i32 %562, 31
  %582 = xor i32 %579, %581
  %583 = add nuw nsw i32 %582, %579
  %584 = icmp eq i32 %583, 2
  %585 = zext i1 %584 to i8
  store i8 %585, i8* %39, align 1
  %586 = add i64 %559, 15
  store i64 %586, i64* %3, align 8
  store i32 %563, i32* %561, align 4
  %587 = load i64, i64* %3, align 8
  %588 = add i64 %587, -370
  store i64 %588, i64* %3, align 8
  br label %block_.L_4119ef

block_.L_411b96:                                  ; preds = %block_.L_411942.block_.L_411b96_crit_edge, %block_411a29
  %RDI.i1270.pre-phi = phi i64* [ %.pre152, %block_.L_411942.block_.L_411b96_crit_edge ], [ %RDI.i1472, %block_411a29 ]
  %589 = phi i32 [ %141, %block_.L_411942.block_.L_411b96_crit_edge ], [ %.pre100, %block_411a29 ]
  %590 = phi i64 [ %171, %block_.L_411942.block_.L_411b96_crit_edge ], [ %.pre99, %block_411a29 ]
  %MEMORY.6 = phi %struct.Memory* [ %call2_411942, %block_.L_411942.block_.L_411b96_crit_edge ], [ %call2_411b91, %block_411a29 ]
  store i64 4, i64* %RAX.i1510, align 8
  store i64 3, i64* %RCX.i1526, align 8
  %SIL.i1276 = bitcast %union.anon* %125 to i8*
  %591 = icmp eq i32 %589, 0
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %SIL.i1276, align 1
  %593 = zext i1 %591 to i64
  store i64 %593, i64* %RDI.i1270.pre-phi, align 8
  %594 = shl nuw nsw i8 %592, 6
  %595 = zext i8 %594 to i64
  %596 = add i64 %595, ptrtoint (%G__0x85f170_type* @G__0x85f170 to i64)
  store i64 %596, i64* %RDX.i1524, align 8
  %597 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  store i8 0, i8* %14, align 1
  %598 = and i32 %597, 255
  %599 = tail call i32 @llvm.ctpop.i32(i32 %598)
  %600 = trunc i32 %599 to i8
  %601 = and i8 %600, 1
  %602 = xor i8 %601, 1
  store i8 %602, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %603 = icmp eq i32 %597, 0
  %604 = zext i1 %603 to i8
  store i8 %604, i8* %30, align 1
  %605 = lshr i32 %597, 31
  %606 = trunc i32 %605 to i8
  store i8 %606, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %607 = load i32, i32* %ECX.i1496, align 4
  %608 = zext i32 %607 to i64
  %609 = load i64, i64* %RAX.i1510, align 8
  %610 = select i1 %603, i64 %609, i64 %608
  %611 = and i64 %610, 4294967295
  store i64 %611, i64* %RAX.i1510, align 8
  %sext153 = shl i64 %610, 32
  %612 = ashr exact i64 %sext153, 32
  store i64 %612, i64* %R8.i1508, align 8
  %613 = ashr exact i64 %sext153, 30
  %614 = add i64 %596, %613
  %615 = add i64 %590, 73
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %614 to i32*
  %617 = load i32, i32* %616, align 4
  store i8 0, i8* %14, align 1
  %618 = and i32 %617, 255
  %619 = tail call i32 @llvm.ctpop.i32(i32 %618)
  %620 = trunc i32 %619 to i8
  %621 = and i8 %620, 1
  %622 = xor i8 %621, 1
  store i8 %622, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %623 = icmp eq i32 %617, 0
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %30, align 1
  %625 = lshr i32 %617, 31
  %626 = trunc i32 %625 to i8
  store i8 %626, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v158 = select i1 %623, i64 79, i64 585
  %627 = add i64 %590, %.v158
  store i64 %627, i64* %3, align 8
  br i1 %623, label %block_411be5, label %block_.L_411ddf

block_411be5:                                     ; preds = %block_.L_411b96
  store i64 3, i64* %RCX.i1526, align 8
  %628 = select i1 %603, i64 4, i64 3
  store i64 %628, i64* %RAX.i1510, align 8
  %DL.i1239 = bitcast %union.anon* %124 to i8*
  %629 = zext i1 %603 to i8
  store i8 %629, i8* %DL.i1239, align 1
  store i8 0, i8* %14, align 1
  %630 = zext i1 %603 to i32
  %631 = tail call i32 @llvm.ctpop.i32(i32 %630)
  %632 = trunc i32 %631 to i8
  %633 = xor i8 %632, 1
  store i8 %633, i8* %21, align 1
  %634 = xor i8 %629, 1
  store i8 %634, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %635 = zext i1 %603 to i64
  store i64 %635, i64* %RSI.i1522, align 8
  store i64 %628, i64* %RDI.i1270.pre-phi, align 8
  %636 = add i64 %627, -62741
  %637 = add i64 %627, 48
  %638 = load i64, i64* %6, align 8
  %639 = add i64 %638, -8
  %640 = inttoptr i64 %639 to i64*
  store i64 %637, i64* %640, align 8
  store i64 %639, i64* %6, align 8
  store i64 %636, i64* %3, align 8
  %call2_411c10 = tail call %struct.Memory* @sub_4026d0.DropaddHolding(%struct.State* nonnull %0, i64 %636, %struct.Memory* %MEMORY.6)
  %641 = load i64, i64* %RBP.i, align 8
  %642 = add i64 %641, -12304
  %643 = load i64, i64* %3, align 8
  store i64 %642, i64* %RDI.i1270.pre-phi, align 8
  %644 = add i64 %643, -40421
  %645 = add i64 %643, 12
  %646 = load i64, i64* %6, align 8
  %647 = add i64 %646, -8
  %648 = inttoptr i64 %647 to i64*
  store i64 %645, i64* %648, align 8
  store i64 %647, i64* %6, align 8
  store i64 %644, i64* %3, align 8
  %call2_411c1c = tail call %struct.Memory* @sub_407e30.gen(%struct.State* nonnull %0, i64 %644, %struct.Memory* %call2_411c10)
  %649 = load i64, i64* %3, align 8
  %650 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %651 = zext i32 %650 to i64
  store i64 %651, i64* %RAX.i1510, align 8
  %652 = load i64, i64* %RBP.i, align 8
  %653 = add i64 %652, -24596
  %654 = add i64 %649, 13
  store i64 %654, i64* %3, align 8
  %655 = inttoptr i64 %653 to i32*
  store i32 %650, i32* %655, align 4
  %656 = load i64, i64* %RBP.i, align 8
  %657 = add i64 %656, -24608
  %658 = load i64, i64* %3, align 8
  %659 = add i64 %658, 10
  store i64 %659, i64* %3, align 8
  %660 = inttoptr i64 %657 to i32*
  store i32 0, i32* %660, align 4
  %AL.i1211 = bitcast %union.anon* %126 to i8*
  %CL.i1212 = bitcast %union.anon* %122 to i8*
  %.pre101 = load i64, i64* %3, align 8
  br label %block_.L_411c38

block_.L_411c38:                                  ; preds = %block_.L_411d89, %block_411be5
  %661 = phi i64 [ %.pre101, %block_411be5 ], [ %1044, %block_.L_411d89 ]
  %MEMORY.7 = phi %struct.Memory* [ %call2_411c1c, %block_411be5 ], [ %call2_411d96, %block_.L_411d89 ]
  store i64 0, i64* %RAX.i1510, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %CL.i1212, align 1
  %662 = load i64, i64* %RBP.i, align 8
  %663 = add i64 %662, -24608
  %664 = add i64 %661, 10
  store i64 %664, i64* %3, align 8
  %665 = inttoptr i64 %663 to i32*
  %666 = load i32, i32* %665, align 4
  %667 = zext i32 %666 to i64
  store i64 %667, i64* %RAX.i1510, align 8
  %668 = add i64 %662, -24596
  %669 = add i64 %661, 16
  store i64 %669, i64* %3, align 8
  %670 = inttoptr i64 %668 to i32*
  %671 = load i32, i32* %670, align 4
  %672 = sub i32 %666, %671
  %673 = icmp ult i32 %666, %671
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %14, align 1
  %675 = and i32 %672, 255
  %676 = tail call i32 @llvm.ctpop.i32(i32 %675)
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  %679 = xor i8 %678, 1
  store i8 %679, i8* %21, align 1
  %680 = xor i32 %671, %666
  %681 = xor i32 %680, %672
  %682 = lshr i32 %681, 4
  %683 = trunc i32 %682 to i8
  %684 = and i8 %683, 1
  store i8 %684, i8* %27, align 1
  %685 = icmp eq i32 %672, 0
  %686 = zext i1 %685 to i8
  store i8 %686, i8* %30, align 1
  %687 = lshr i32 %672, 31
  %688 = trunc i32 %687 to i8
  store i8 %688, i8* %33, align 1
  %689 = lshr i32 %666, 31
  %690 = lshr i32 %671, 31
  %691 = xor i32 %690, %689
  %692 = xor i32 %687, %689
  %693 = add nuw nsw i32 %692, %691
  %694 = icmp eq i32 %693, 2
  %695 = zext i1 %694 to i8
  store i8 %695, i8* %39, align 1
  %696 = add i64 %662, -24663
  %697 = add i64 %661, 22
  store i64 %697, i64* %3, align 8
  %698 = inttoptr i64 %696 to i8*
  store i8 0, i8* %698, align 1
  %699 = load i64, i64* %3, align 8
  %700 = add i64 %699, 22
  %701 = add i64 %699, 6
  %702 = load i8, i8* %33, align 1
  %703 = icmp ne i8 %702, 0
  %704 = load i8, i8* %39, align 1
  %705 = icmp ne i8 %704, 0
  %706 = xor i1 %703, %705
  %707 = select i1 %706, i64 %701, i64 %700
  store i64 %707, i64* %3, align 8
  br i1 %706, label %block_411c54, label %block_.L_411c64

block_411c54:                                     ; preds = %block_.L_411c38
  %708 = load i64, i64* %RBP.i, align 8
  %709 = add i64 %708, -24628
  %710 = add i64 %707, 7
  store i64 %710, i64* %3, align 8
  %711 = inttoptr i64 %709 to i32*
  %712 = load i32, i32* %711, align 4
  store i8 0, i8* %14, align 1
  %713 = and i32 %712, 255
  %714 = tail call i32 @llvm.ctpop.i32(i32 %713)
  %715 = trunc i32 %714 to i8
  %716 = and i8 %715, 1
  %717 = xor i8 %716, 1
  store i8 %717, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %718 = icmp eq i32 %712, 0
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %30, align 1
  %720 = lshr i32 %712, 31
  %721 = trunc i32 %720 to i8
  store i8 %721, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 %719, i8* %AL.i1211, align 1
  %722 = add i64 %708, -24663
  %723 = add i64 %707, 16
  store i64 %723, i64* %3, align 8
  %724 = inttoptr i64 %722 to i8*
  store i8 %719, i8* %724, align 1
  %.pre102 = load i64, i64* %3, align 8
  br label %block_.L_411c64

block_.L_411c64:                                  ; preds = %block_.L_411c38, %block_411c54
  %725 = phi i64 [ %700, %block_.L_411c38 ], [ %.pre102, %block_411c54 ]
  %726 = load i64, i64* %RBP.i, align 8
  %727 = add i64 %726, -24663
  %728 = add i64 %725, 6
  store i64 %728, i64* %3, align 8
  %729 = inttoptr i64 %727 to i8*
  %730 = load i8, i8* %729, align 1
  store i8 %730, i8* %AL.i1211, align 1
  %731 = and i8 %730, 1
  store i8 0, i8* %14, align 1
  %732 = zext i8 %731 to i32
  %733 = tail call i32 @llvm.ctpop.i32(i32 %732)
  %734 = trunc i32 %733 to i8
  %735 = xor i8 %734, 1
  store i8 %735, i8* %21, align 1
  %736 = xor i8 %731, 1
  store i8 %736, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %737 = icmp eq i8 %736, 0
  %.v206 = select i1 %737, i64 19, i64 14
  %738 = add i64 %725, %.v206
  store i64 %738, i64* %3, align 8
  br i1 %737, label %block_.L_411c77, label %block_411c72

block_411c72:                                     ; preds = %block_.L_411c64
  store i64 3, i64* %RCX.i1526, align 8
  %739 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %740 = icmp eq i32 %739, 0
  %741 = select i1 %740, i64 4, i64 3
  store i64 %741, i64* %RAX.i1510, align 8
  %742 = zext i1 %740 to i8
  store i8 %742, i8* %DL.i1239, align 1
  store i8 0, i8* %14, align 1
  %743 = zext i1 %740 to i32
  %744 = tail call i32 @llvm.ctpop.i32(i32 %743)
  %745 = trunc i32 %744 to i8
  %746 = xor i8 %745, 1
  store i8 %746, i8* %21, align 1
  %747 = xor i8 %742, 1
  store i8 %747, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %748 = zext i1 %740 to i64
  store i64 %748, i64* %RSI.i1522, align 8
  store i64 %741, i64* %RDI.i1270.pre-phi, align 8
  %749 = add i64 %738, -62658
  %750 = add i64 %738, 365
  %751 = load i64, i64* %6, align 8
  %752 = add i64 %751, -8
  %753 = inttoptr i64 %752 to i64*
  store i64 %750, i64* %753, align 8
  store i64 %752, i64* %6, align 8
  store i64 %749, i64* %3, align 8
  %call2_411dda = tail call %struct.Memory* @sub_4027b0.DropremoveHolding(%struct.State* nonnull %0, i64 %749, %struct.Memory* %MEMORY.7)
  %.pre107 = load i64, i64* %3, align 8
  %.pre108 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  br label %block_.L_411ddf

block_.L_411c77:                                  ; preds = %block_.L_411c64
  %754 = add i64 %726, -12304
  store i64 %754, i64* %RDI.i1270.pre-phi, align 8
  %755 = add i64 %726, -24608
  %756 = add i64 %738, 13
  store i64 %756, i64* %3, align 8
  %757 = inttoptr i64 %755 to i32*
  %758 = load i32, i32* %757, align 4
  %759 = zext i32 %758 to i64
  store i64 %759, i64* %RSI.i1522, align 8
  %760 = add i64 %738, -25927
  %761 = add i64 %738, 18
  %762 = load i64, i64* %6, align 8
  %763 = add i64 %762, -8
  %764 = inttoptr i64 %763 to i64*
  store i64 %761, i64* %764, align 8
  store i64 %763, i64* %6, align 8
  store i64 %760, i64* %3, align 8
  %call2_411c84 = tail call %struct.Memory* @sub_40b730.make(%struct.State* nonnull %0, i64 %760, %struct.Memory* %MEMORY.7)
  %765 = load i64, i64* %RBP.i, align 8
  %766 = add i64 %765, -12304
  %767 = load i64, i64* %3, align 8
  store i64 %766, i64* %RDI.i1270.pre-phi, align 8
  %768 = add i64 %765, -24608
  %769 = add i64 %767, 13
  store i64 %769, i64* %3, align 8
  %770 = inttoptr i64 %768 to i32*
  %771 = load i32, i32* %770, align 4
  %772 = zext i32 %771 to i64
  store i64 %772, i64* %RSI.i1522, align 8
  %773 = add i64 %765, -24612
  %774 = add i64 %767, 19
  store i64 %774, i64* %3, align 8
  %775 = inttoptr i64 %773 to i32*
  %776 = load i32, i32* %775, align 4
  %777 = zext i32 %776 to i64
  store i64 %777, i64* %RDX.i1524, align 8
  %778 = add i64 %767, -46601
  %779 = add i64 %767, 24
  %780 = load i64, i64* %6, align 8
  %781 = add i64 %780, -8
  %782 = inttoptr i64 %781 to i64*
  store i64 %779, i64* %782, align 8
  store i64 %781, i64* %6, align 8
  store i64 %778, i64* %3, align 8
  %call2_411c9c = tail call %struct.Memory* @sub_406680.check_legal(%struct.State* nonnull %0, i64 %778, %struct.Memory* %MEMORY.7)
  %783 = load i32, i32* %EAX.i1519, align 4
  %784 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %785 = and i32 %783, 255
  %786 = tail call i32 @llvm.ctpop.i32(i32 %785)
  %787 = trunc i32 %786 to i8
  %788 = and i8 %787, 1
  %789 = xor i8 %788, 1
  store i8 %789, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %790 = icmp eq i32 %783, 0
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %30, align 1
  %792 = lshr i32 %783, 31
  %793 = trunc i32 %792 to i8
  store i8 %793, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v207 = select i1 %790, i64 232, i64 9
  %794 = add i64 %784, %.v207
  store i64 %794, i64* %3, align 8
  %.pre106 = load i64, i64* %RBP.i, align 8
  br i1 %790, label %block_.L_411d89, label %block_411caa

block_411caa:                                     ; preds = %block_.L_411c77
  %795 = add i64 %.pre106, -24628
  %796 = add i64 %794, 10
  store i64 %796, i64* %3, align 8
  %797 = inttoptr i64 %795 to i32*
  store i32 3, i32* %797, align 4
  %798 = load i64, i64* %3, align 8
  %799 = add i64 %798, -33748
  %800 = add i64 %798, 5
  %801 = load i64, i64* %6, align 8
  %802 = add i64 %801, -8
  %803 = inttoptr i64 %802 to i64*
  store i64 %800, i64* %803, align 8
  store i64 %802, i64* %6, align 8
  store i64 %799, i64* %3, align 8
  %call2_411cb4 = tail call %struct.Memory* @sub_4098e0.in_check(%struct.State* nonnull %0, i64 %799, %struct.Memory* %MEMORY.7)
  %804 = load i64, i64* %RBP.i, align 8
  %805 = add i64 %804, -24592
  %806 = load i64, i64* %3, align 8
  store i64 %805, i64* %RDI.i1270.pre-phi, align 8
  %807 = add i64 %804, -24616
  %808 = load i32, i32* %EAX.i1519, align 4
  %809 = add i64 %806, 13
  store i64 %809, i64* %3, align 8
  %810 = inttoptr i64 %807 to i32*
  store i32 %808, i32* %810, align 4
  %811 = load i64, i64* %3, align 8
  %812 = add i64 %811, -40598
  %813 = add i64 %811, 5
  %814 = load i64, i64* %6, align 8
  %815 = add i64 %814, -8
  %816 = inttoptr i64 %815 to i64*
  store i64 %813, i64* %816, align 8
  store i64 %815, i64* %6, align 8
  store i64 %812, i64* %3, align 8
  %call2_411cc6 = tail call %struct.Memory* @sub_407e30.gen(%struct.State* nonnull %0, i64 %812, %struct.Memory* %MEMORY.7)
  %817 = load i64, i64* %3, align 8
  %818 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %819 = zext i32 %818 to i64
  store i64 %819, i64* %RAX.i1510, align 8
  %820 = load i64, i64* %RBP.i, align 8
  %821 = add i64 %820, -24600
  %822 = add i64 %817, 13
  store i64 %822, i64* %3, align 8
  %823 = inttoptr i64 %821 to i32*
  store i32 %818, i32* %823, align 4
  %824 = load i64, i64* %RBP.i, align 8
  %825 = add i64 %824, -24604
  %826 = load i64, i64* %3, align 8
  %827 = add i64 %826, 10
  store i64 %827, i64* %3, align 8
  %828 = inttoptr i64 %825 to i32*
  store i32 0, i32* %828, align 4
  %.pre103 = load i64, i64* %3, align 8
  br label %block_.L_411ce2

block_.L_411ce2:                                  ; preds = %block_.L_411d5e, %block_411caa
  %829 = phi i64 [ %999, %block_.L_411d5e ], [ %.pre103, %block_411caa ]
  store i64 0, i64* %RAX.i1510, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %CL.i1212, align 1
  %830 = load i64, i64* %RBP.i, align 8
  %831 = add i64 %830, -24604
  %832 = add i64 %829, 10
  store i64 %832, i64* %3, align 8
  %833 = inttoptr i64 %831 to i32*
  %834 = load i32, i32* %833, align 4
  %835 = zext i32 %834 to i64
  store i64 %835, i64* %RAX.i1510, align 8
  %836 = add i64 %830, -24600
  %837 = add i64 %829, 16
  store i64 %837, i64* %3, align 8
  %838 = inttoptr i64 %836 to i32*
  %839 = load i32, i32* %838, align 4
  %840 = sub i32 %834, %839
  %841 = icmp ult i32 %834, %839
  %842 = zext i1 %841 to i8
  store i8 %842, i8* %14, align 1
  %843 = and i32 %840, 255
  %844 = tail call i32 @llvm.ctpop.i32(i32 %843)
  %845 = trunc i32 %844 to i8
  %846 = and i8 %845, 1
  %847 = xor i8 %846, 1
  store i8 %847, i8* %21, align 1
  %848 = xor i32 %839, %834
  %849 = xor i32 %848, %840
  %850 = lshr i32 %849, 4
  %851 = trunc i32 %850 to i8
  %852 = and i8 %851, 1
  store i8 %852, i8* %27, align 1
  %853 = icmp eq i32 %840, 0
  %854 = zext i1 %853 to i8
  store i8 %854, i8* %30, align 1
  %855 = lshr i32 %840, 31
  %856 = trunc i32 %855 to i8
  store i8 %856, i8* %33, align 1
  %857 = lshr i32 %834, 31
  %858 = lshr i32 %839, 31
  %859 = xor i32 %858, %857
  %860 = xor i32 %855, %857
  %861 = add nuw nsw i32 %860, %859
  %862 = icmp eq i32 %861, 2
  %863 = zext i1 %862 to i8
  store i8 %863, i8* %39, align 1
  %864 = add i64 %830, -24664
  %865 = add i64 %829, 22
  store i64 %865, i64* %3, align 8
  %866 = inttoptr i64 %864 to i8*
  store i8 0, i8* %866, align 1
  %867 = load i64, i64* %3, align 8
  %868 = add i64 %867, 22
  %869 = add i64 %867, 6
  %870 = load i8, i8* %33, align 1
  %871 = icmp ne i8 %870, 0
  %872 = load i8, i8* %39, align 1
  %873 = icmp ne i8 %872, 0
  %874 = xor i1 %871, %873
  %875 = select i1 %874, i64 %869, i64 %868
  store i64 %875, i64* %3, align 8
  br i1 %874, label %block_411cfe, label %block_.L_411d0e

block_411cfe:                                     ; preds = %block_.L_411ce2
  %876 = load i64, i64* %RBP.i, align 8
  %877 = add i64 %876, -24628
  %878 = add i64 %875, 7
  store i64 %878, i64* %3, align 8
  %879 = inttoptr i64 %877 to i32*
  %880 = load i32, i32* %879, align 4
  store i8 0, i8* %14, align 1
  %881 = and i32 %880, 255
  %882 = tail call i32 @llvm.ctpop.i32(i32 %881)
  %883 = trunc i32 %882 to i8
  %884 = and i8 %883, 1
  %885 = xor i8 %884, 1
  store i8 %885, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %886 = icmp eq i32 %880, 0
  %887 = zext i1 %886 to i8
  store i8 %887, i8* %30, align 1
  %888 = lshr i32 %880, 31
  %889 = trunc i32 %888 to i8
  store i8 %889, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %890 = xor i1 %886, true
  %891 = zext i1 %890 to i8
  store i8 %891, i8* %AL.i1211, align 1
  %892 = add i64 %876, -24664
  %893 = add i64 %875, 16
  store i64 %893, i64* %3, align 8
  %894 = inttoptr i64 %892 to i8*
  store i8 %891, i8* %894, align 1
  %.pre104 = load i64, i64* %3, align 8
  br label %block_.L_411d0e

block_.L_411d0e:                                  ; preds = %block_.L_411ce2, %block_411cfe
  %895 = phi i64 [ %868, %block_.L_411ce2 ], [ %.pre104, %block_411cfe ]
  %896 = load i64, i64* %RBP.i, align 8
  %897 = add i64 %896, -24664
  %898 = add i64 %895, 6
  store i64 %898, i64* %3, align 8
  %899 = inttoptr i64 %897 to i8*
  %900 = load i8, i8* %899, align 1
  store i8 %900, i8* %AL.i1211, align 1
  %901 = and i8 %900, 1
  store i8 0, i8* %14, align 1
  %902 = zext i8 %901 to i32
  %903 = tail call i32 @llvm.ctpop.i32(i32 %902)
  %904 = trunc i32 %903 to i8
  %905 = xor i8 %904, 1
  store i8 %905, i8* %21, align 1
  %906 = xor i8 %901, 1
  store i8 %906, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %907 = icmp eq i8 %906, 0
  %.v208 = select i1 %907, i64 19, i64 14
  %908 = add i64 %895, %.v208
  store i64 %908, i64* %3, align 8
  br i1 %907, label %block_.L_411d21, label %block_411d1c

block_411d1c:                                     ; preds = %block_.L_411d0e
  %909 = add i64 %908, 109
  store i64 %909, i64* %3, align 8
  br label %block_.L_411d89

block_.L_411d21:                                  ; preds = %block_.L_411d0e
  %910 = add i64 %896, -24592
  store i64 %910, i64* %RDI.i1270.pre-phi, align 8
  %911 = add i64 %896, -24604
  %912 = add i64 %908, 13
  store i64 %912, i64* %3, align 8
  %913 = inttoptr i64 %911 to i32*
  %914 = load i32, i32* %913, align 4
  %915 = zext i32 %914 to i64
  store i64 %915, i64* %RSI.i1522, align 8
  %916 = add i64 %908, -26097
  %917 = add i64 %908, 18
  %918 = load i64, i64* %6, align 8
  %919 = add i64 %918, -8
  %920 = inttoptr i64 %919 to i64*
  store i64 %917, i64* %920, align 8
  store i64 %919, i64* %6, align 8
  store i64 %916, i64* %3, align 8
  %call2_411d2e = tail call %struct.Memory* @sub_40b730.make(%struct.State* nonnull %0, i64 %916, %struct.Memory* %MEMORY.7)
  %921 = load i64, i64* %RBP.i, align 8
  %922 = add i64 %921, -24592
  %923 = load i64, i64* %3, align 8
  store i64 %922, i64* %RDI.i1270.pre-phi, align 8
  %924 = add i64 %921, -24604
  %925 = add i64 %923, 13
  store i64 %925, i64* %3, align 8
  %926 = inttoptr i64 %924 to i32*
  %927 = load i32, i32* %926, align 4
  %928 = zext i32 %927 to i64
  store i64 %928, i64* %RSI.i1522, align 8
  %929 = add i64 %921, -24616
  %930 = add i64 %923, 19
  store i64 %930, i64* %3, align 8
  %931 = inttoptr i64 %929 to i32*
  %932 = load i32, i32* %931, align 4
  %933 = zext i32 %932 to i64
  store i64 %933, i64* %RDX.i1524, align 8
  %934 = add i64 %923, -46771
  %935 = add i64 %923, 24
  %936 = load i64, i64* %6, align 8
  %937 = add i64 %936, -8
  %938 = inttoptr i64 %937 to i64*
  store i64 %935, i64* %938, align 8
  store i64 %937, i64* %6, align 8
  store i64 %934, i64* %3, align 8
  %call2_411d46 = tail call %struct.Memory* @sub_406680.check_legal(%struct.State* nonnull %0, i64 %934, %struct.Memory* %MEMORY.7)
  %939 = load i32, i32* %EAX.i1519, align 4
  %940 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %941 = and i32 %939, 255
  %942 = tail call i32 @llvm.ctpop.i32(i32 %941)
  %943 = trunc i32 %942 to i8
  %944 = and i8 %943, 1
  %945 = xor i8 %944, 1
  store i8 %945, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %946 = icmp eq i32 %939, 0
  %947 = zext i1 %946 to i8
  store i8 %947, i8* %30, align 1
  %948 = lshr i32 %939, 31
  %949 = trunc i32 %948 to i8
  store i8 %949, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v209 = select i1 %946, i64 19, i64 9
  %950 = add i64 %940, %.v209
  store i64 %950, i64* %3, align 8
  br i1 %946, label %block_.L_411d5e, label %block_411d54

block_411d54:                                     ; preds = %block_.L_411d21
  %951 = load i64, i64* %RBP.i, align 8
  %952 = add i64 %951, -24628
  %953 = add i64 %950, 10
  store i64 %953, i64* %3, align 8
  %954 = inttoptr i64 %952 to i32*
  store i32 0, i32* %954, align 4
  %.pre105 = load i64, i64* %3, align 8
  br label %block_.L_411d5e

block_.L_411d5e:                                  ; preds = %block_411d54, %block_.L_411d21
  %955 = phi i64 [ %.pre105, %block_411d54 ], [ %950, %block_.L_411d21 ]
  %956 = load i64, i64* %RBP.i, align 8
  %957 = add i64 %956, -24592
  store i64 %957, i64* %RDI.i1270.pre-phi, align 8
  %958 = add i64 %956, -24604
  %959 = add i64 %955, 13
  store i64 %959, i64* %3, align 8
  %960 = inttoptr i64 %958 to i32*
  %961 = load i32, i32* %960, align 4
  %962 = zext i32 %961 to i64
  store i64 %962, i64* %RSI.i1522, align 8
  %963 = add i64 %955, -21950
  %964 = add i64 %955, 18
  %965 = load i64, i64* %6, align 8
  %966 = add i64 %965, -8
  %967 = inttoptr i64 %966 to i64*
  store i64 %964, i64* %967, align 8
  store i64 %966, i64* %6, align 8
  store i64 %963, i64* %3, align 8
  %call2_411d6b = tail call %struct.Memory* @sub_40c7a0.unmake(%struct.State* nonnull %0, i64 %963, %struct.Memory* %MEMORY.7)
  %968 = load i64, i64* %RBP.i, align 8
  %969 = add i64 %968, -24604
  %970 = load i64, i64* %3, align 8
  %971 = add i64 %970, 6
  store i64 %971, i64* %3, align 8
  %972 = inttoptr i64 %969 to i32*
  %973 = load i32, i32* %972, align 4
  %974 = add i32 %973, 1
  %975 = zext i32 %974 to i64
  store i64 %975, i64* %RAX.i1510, align 8
  %976 = icmp eq i32 %973, -1
  %977 = icmp eq i32 %974, 0
  %978 = or i1 %976, %977
  %979 = zext i1 %978 to i8
  store i8 %979, i8* %14, align 1
  %980 = and i32 %974, 255
  %981 = tail call i32 @llvm.ctpop.i32(i32 %980)
  %982 = trunc i32 %981 to i8
  %983 = and i8 %982, 1
  %984 = xor i8 %983, 1
  store i8 %984, i8* %21, align 1
  %985 = xor i32 %974, %973
  %986 = lshr i32 %985, 4
  %987 = trunc i32 %986 to i8
  %988 = and i8 %987, 1
  store i8 %988, i8* %27, align 1
  %989 = zext i1 %977 to i8
  store i8 %989, i8* %30, align 1
  %990 = lshr i32 %974, 31
  %991 = trunc i32 %990 to i8
  store i8 %991, i8* %33, align 1
  %992 = lshr i32 %973, 31
  %993 = xor i32 %990, %992
  %994 = add nuw nsw i32 %993, %990
  %995 = icmp eq i32 %994, 2
  %996 = zext i1 %995 to i8
  store i8 %996, i8* %39, align 1
  %997 = add i64 %970, 15
  store i64 %997, i64* %3, align 8
  store i32 %974, i32* %972, align 4
  %998 = load i64, i64* %3, align 8
  %999 = add i64 %998, -157
  store i64 %999, i64* %3, align 8
  br label %block_.L_411ce2

block_.L_411d89:                                  ; preds = %block_.L_411c77, %block_411d1c
  %1000 = phi i64 [ %909, %block_411d1c ], [ %794, %block_.L_411c77 ]
  %1001 = phi i64 [ %896, %block_411d1c ], [ %.pre106, %block_.L_411c77 ]
  %1002 = add i64 %1001, -12304
  store i64 %1002, i64* %RDI.i1270.pre-phi, align 8
  %1003 = add i64 %1001, -24608
  %1004 = add i64 %1000, 13
  store i64 %1004, i64* %3, align 8
  %1005 = inttoptr i64 %1003 to i32*
  %1006 = load i32, i32* %1005, align 4
  %1007 = zext i32 %1006 to i64
  store i64 %1007, i64* %RSI.i1522, align 8
  %1008 = add i64 %1000, -21993
  %1009 = add i64 %1000, 18
  %1010 = load i64, i64* %6, align 8
  %1011 = add i64 %1010, -8
  %1012 = inttoptr i64 %1011 to i64*
  store i64 %1009, i64* %1012, align 8
  store i64 %1011, i64* %6, align 8
  store i64 %1008, i64* %3, align 8
  %call2_411d96 = tail call %struct.Memory* @sub_40c7a0.unmake(%struct.State* nonnull %0, i64 %1008, %struct.Memory* %MEMORY.7)
  %1013 = load i64, i64* %RBP.i, align 8
  %1014 = add i64 %1013, -24608
  %1015 = load i64, i64* %3, align 8
  %1016 = add i64 %1015, 6
  store i64 %1016, i64* %3, align 8
  %1017 = inttoptr i64 %1014 to i32*
  %1018 = load i32, i32* %1017, align 4
  %1019 = add i32 %1018, 1
  %1020 = zext i32 %1019 to i64
  store i64 %1020, i64* %RAX.i1510, align 8
  %1021 = icmp eq i32 %1018, -1
  %1022 = icmp eq i32 %1019, 0
  %1023 = or i1 %1021, %1022
  %1024 = zext i1 %1023 to i8
  store i8 %1024, i8* %14, align 1
  %1025 = and i32 %1019, 255
  %1026 = tail call i32 @llvm.ctpop.i32(i32 %1025)
  %1027 = trunc i32 %1026 to i8
  %1028 = and i8 %1027, 1
  %1029 = xor i8 %1028, 1
  store i8 %1029, i8* %21, align 1
  %1030 = xor i32 %1019, %1018
  %1031 = lshr i32 %1030, 4
  %1032 = trunc i32 %1031 to i8
  %1033 = and i8 %1032, 1
  store i8 %1033, i8* %27, align 1
  %1034 = zext i1 %1022 to i8
  store i8 %1034, i8* %30, align 1
  %1035 = lshr i32 %1019, 31
  %1036 = trunc i32 %1035 to i8
  store i8 %1036, i8* %33, align 1
  %1037 = lshr i32 %1018, 31
  %1038 = xor i32 %1035, %1037
  %1039 = add nuw nsw i32 %1038, %1035
  %1040 = icmp eq i32 %1039, 2
  %1041 = zext i1 %1040 to i8
  store i8 %1041, i8* %39, align 1
  %1042 = add i64 %1015, 15
  store i64 %1042, i64* %3, align 8
  store i32 %1019, i32* %1017, align 4
  %1043 = load i64, i64* %3, align 8
  %1044 = add i64 %1043, -370
  store i64 %1044, i64* %3, align 8
  br label %block_.L_411c38

block_.L_411ddf:                                  ; preds = %block_.L_411b96, %block_411c72
  %1045 = phi i32 [ %597, %block_.L_411b96 ], [ %.pre108, %block_411c72 ]
  %1046 = phi i64 [ %627, %block_.L_411b96 ], [ %.pre107, %block_411c72 ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.6, %block_.L_411b96 ], [ %call2_411dda, %block_411c72 ]
  store i64 12, i64* %RAX.i1510, align 8
  store i64 11, i64* %RCX.i1526, align 8
  %1047 = icmp eq i32 %1045, 0
  %1048 = zext i1 %1047 to i8
  store i8 %1048, i8* %SIL.i1276, align 1
  %1049 = zext i1 %1047 to i64
  store i64 %1049, i64* %RDI.i1270.pre-phi, align 8
  %1050 = shl nuw nsw i8 %1048, 6
  %1051 = zext i8 %1050 to i64
  %1052 = add i64 %1051, ptrtoint (%G__0x85f170_type* @G__0x85f170 to i64)
  store i64 %1052, i64* %RDX.i1524, align 8
  %1053 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  store i8 0, i8* %14, align 1
  %1054 = and i32 %1053, 255
  %1055 = tail call i32 @llvm.ctpop.i32(i32 %1054)
  %1056 = trunc i32 %1055 to i8
  %1057 = and i8 %1056, 1
  %1058 = xor i8 %1057, 1
  store i8 %1058, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1059 = icmp eq i32 %1053, 0
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %30, align 1
  %1061 = lshr i32 %1053, 31
  %1062 = trunc i32 %1061 to i8
  store i8 %1062, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1063 = load i32, i32* %ECX.i1496, align 4
  %1064 = zext i32 %1063 to i64
  %1065 = load i64, i64* %RAX.i1510, align 8
  %1066 = select i1 %1059, i64 %1065, i64 %1064
  %1067 = and i64 %1066, 4294967295
  store i64 %1067, i64* %RAX.i1510, align 8
  %sext154 = shl i64 %1066, 32
  %1068 = ashr exact i64 %sext154, 32
  store i64 %1068, i64* %R8.i1508, align 8
  %1069 = ashr exact i64 %sext154, 30
  %1070 = add i64 %1052, %1069
  %1071 = add i64 %1046, 73
  store i64 %1071, i64* %3, align 8
  %1072 = inttoptr i64 %1070 to i32*
  %1073 = load i32, i32* %1072, align 4
  store i8 0, i8* %14, align 1
  %1074 = and i32 %1073, 255
  %1075 = tail call i32 @llvm.ctpop.i32(i32 %1074)
  %1076 = trunc i32 %1075 to i8
  %1077 = and i8 %1076, 1
  %1078 = xor i8 %1077, 1
  store i8 %1078, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1079 = icmp eq i32 %1073, 0
  %1080 = zext i1 %1079 to i8
  store i8 %1080, i8* %30, align 1
  %1081 = lshr i32 %1073, 31
  %1082 = trunc i32 %1081 to i8
  store i8 %1082, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v159 = select i1 %1079, i64 79, i64 585
  %1083 = add i64 %1046, %.v159
  store i64 %1083, i64* %3, align 8
  br i1 %1079, label %block_411e2e, label %block_.L_412028

block_411e2e:                                     ; preds = %block_.L_411ddf
  store i64 11, i64* %RCX.i1526, align 8
  %1084 = select i1 %1059, i64 12, i64 11
  store i64 %1084, i64* %RAX.i1510, align 8
  %DL.i997 = bitcast %union.anon* %124 to i8*
  %1085 = zext i1 %1059 to i8
  store i8 %1085, i8* %DL.i997, align 1
  store i8 0, i8* %14, align 1
  %1086 = zext i1 %1059 to i32
  %1087 = tail call i32 @llvm.ctpop.i32(i32 %1086)
  %1088 = trunc i32 %1087 to i8
  %1089 = xor i8 %1088, 1
  store i8 %1089, i8* %21, align 1
  %1090 = xor i8 %1085, 1
  store i8 %1090, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1091 = zext i1 %1059 to i64
  store i64 %1091, i64* %RSI.i1522, align 8
  store i64 %1084, i64* %RDI.i1270.pre-phi, align 8
  %1092 = add i64 %1083, -63326
  %1093 = add i64 %1083, 48
  %1094 = load i64, i64* %6, align 8
  %1095 = add i64 %1094, -8
  %1096 = inttoptr i64 %1095 to i64*
  store i64 %1093, i64* %1096, align 8
  store i64 %1095, i64* %6, align 8
  store i64 %1092, i64* %3, align 8
  %call2_411e59 = tail call %struct.Memory* @sub_4026d0.DropaddHolding(%struct.State* nonnull %0, i64 %1092, %struct.Memory* %MEMORY.13)
  %1097 = load i64, i64* %RBP.i, align 8
  %1098 = add i64 %1097, -12304
  %1099 = load i64, i64* %3, align 8
  store i64 %1098, i64* %RDI.i1270.pre-phi, align 8
  %1100 = add i64 %1099, -41006
  %1101 = add i64 %1099, 12
  %1102 = load i64, i64* %6, align 8
  %1103 = add i64 %1102, -8
  %1104 = inttoptr i64 %1103 to i64*
  store i64 %1101, i64* %1104, align 8
  store i64 %1103, i64* %6, align 8
  store i64 %1100, i64* %3, align 8
  %call2_411e65 = tail call %struct.Memory* @sub_407e30.gen(%struct.State* nonnull %0, i64 %1100, %struct.Memory* %call2_411e59)
  %1105 = load i64, i64* %3, align 8
  %1106 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %1107 = zext i32 %1106 to i64
  store i64 %1107, i64* %RAX.i1510, align 8
  %1108 = load i64, i64* %RBP.i, align 8
  %1109 = add i64 %1108, -24596
  %1110 = add i64 %1105, 13
  store i64 %1110, i64* %3, align 8
  %1111 = inttoptr i64 %1109 to i32*
  store i32 %1106, i32* %1111, align 4
  %1112 = load i64, i64* %RBP.i, align 8
  %1113 = add i64 %1112, -24608
  %1114 = load i64, i64* %3, align 8
  %1115 = add i64 %1114, 10
  store i64 %1115, i64* %3, align 8
  %1116 = inttoptr i64 %1113 to i32*
  store i32 0, i32* %1116, align 4
  %AL.i969 = bitcast %union.anon* %126 to i8*
  %CL.i970 = bitcast %union.anon* %122 to i8*
  %.pre109 = load i64, i64* %3, align 8
  br label %block_.L_411e81

block_.L_411e81:                                  ; preds = %block_.L_411fd2, %block_411e2e
  %1117 = phi i64 [ %.pre109, %block_411e2e ], [ %1500, %block_.L_411fd2 ]
  %MEMORY.14 = phi %struct.Memory* [ %call2_411e65, %block_411e2e ], [ %call2_411fdf, %block_.L_411fd2 ]
  store i64 0, i64* %RAX.i1510, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %CL.i970, align 1
  %1118 = load i64, i64* %RBP.i, align 8
  %1119 = add i64 %1118, -24608
  %1120 = add i64 %1117, 10
  store i64 %1120, i64* %3, align 8
  %1121 = inttoptr i64 %1119 to i32*
  %1122 = load i32, i32* %1121, align 4
  %1123 = zext i32 %1122 to i64
  store i64 %1123, i64* %RAX.i1510, align 8
  %1124 = add i64 %1118, -24596
  %1125 = add i64 %1117, 16
  store i64 %1125, i64* %3, align 8
  %1126 = inttoptr i64 %1124 to i32*
  %1127 = load i32, i32* %1126, align 4
  %1128 = sub i32 %1122, %1127
  %1129 = icmp ult i32 %1122, %1127
  %1130 = zext i1 %1129 to i8
  store i8 %1130, i8* %14, align 1
  %1131 = and i32 %1128, 255
  %1132 = tail call i32 @llvm.ctpop.i32(i32 %1131)
  %1133 = trunc i32 %1132 to i8
  %1134 = and i8 %1133, 1
  %1135 = xor i8 %1134, 1
  store i8 %1135, i8* %21, align 1
  %1136 = xor i32 %1127, %1122
  %1137 = xor i32 %1136, %1128
  %1138 = lshr i32 %1137, 4
  %1139 = trunc i32 %1138 to i8
  %1140 = and i8 %1139, 1
  store i8 %1140, i8* %27, align 1
  %1141 = icmp eq i32 %1128, 0
  %1142 = zext i1 %1141 to i8
  store i8 %1142, i8* %30, align 1
  %1143 = lshr i32 %1128, 31
  %1144 = trunc i32 %1143 to i8
  store i8 %1144, i8* %33, align 1
  %1145 = lshr i32 %1122, 31
  %1146 = lshr i32 %1127, 31
  %1147 = xor i32 %1146, %1145
  %1148 = xor i32 %1143, %1145
  %1149 = add nuw nsw i32 %1148, %1147
  %1150 = icmp eq i32 %1149, 2
  %1151 = zext i1 %1150 to i8
  store i8 %1151, i8* %39, align 1
  %1152 = add i64 %1118, -24665
  %1153 = add i64 %1117, 22
  store i64 %1153, i64* %3, align 8
  %1154 = inttoptr i64 %1152 to i8*
  store i8 0, i8* %1154, align 1
  %1155 = load i64, i64* %3, align 8
  %1156 = add i64 %1155, 22
  %1157 = add i64 %1155, 6
  %1158 = load i8, i8* %33, align 1
  %1159 = icmp ne i8 %1158, 0
  %1160 = load i8, i8* %39, align 1
  %1161 = icmp ne i8 %1160, 0
  %1162 = xor i1 %1159, %1161
  %1163 = select i1 %1162, i64 %1157, i64 %1156
  store i64 %1163, i64* %3, align 8
  br i1 %1162, label %block_411e9d, label %block_.L_411ead

block_411e9d:                                     ; preds = %block_.L_411e81
  %1164 = load i64, i64* %RBP.i, align 8
  %1165 = add i64 %1164, -24632
  %1166 = add i64 %1163, 7
  store i64 %1166, i64* %3, align 8
  %1167 = inttoptr i64 %1165 to i32*
  %1168 = load i32, i32* %1167, align 4
  store i8 0, i8* %14, align 1
  %1169 = and i32 %1168, 255
  %1170 = tail call i32 @llvm.ctpop.i32(i32 %1169)
  %1171 = trunc i32 %1170 to i8
  %1172 = and i8 %1171, 1
  %1173 = xor i8 %1172, 1
  store i8 %1173, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1174 = icmp eq i32 %1168, 0
  %1175 = zext i1 %1174 to i8
  store i8 %1175, i8* %30, align 1
  %1176 = lshr i32 %1168, 31
  %1177 = trunc i32 %1176 to i8
  store i8 %1177, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 %1175, i8* %AL.i969, align 1
  %1178 = add i64 %1164, -24665
  %1179 = add i64 %1163, 16
  store i64 %1179, i64* %3, align 8
  %1180 = inttoptr i64 %1178 to i8*
  store i8 %1175, i8* %1180, align 1
  %.pre110 = load i64, i64* %3, align 8
  br label %block_.L_411ead

block_.L_411ead:                                  ; preds = %block_.L_411e81, %block_411e9d
  %1181 = phi i64 [ %1156, %block_.L_411e81 ], [ %.pre110, %block_411e9d ]
  %1182 = load i64, i64* %RBP.i, align 8
  %1183 = add i64 %1182, -24665
  %1184 = add i64 %1181, 6
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1183 to i8*
  %1186 = load i8, i8* %1185, align 1
  store i8 %1186, i8* %AL.i969, align 1
  %1187 = and i8 %1186, 1
  store i8 0, i8* %14, align 1
  %1188 = zext i8 %1187 to i32
  %1189 = tail call i32 @llvm.ctpop.i32(i32 %1188)
  %1190 = trunc i32 %1189 to i8
  %1191 = xor i8 %1190, 1
  store i8 %1191, i8* %21, align 1
  %1192 = xor i8 %1187, 1
  store i8 %1192, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1193 = icmp eq i8 %1192, 0
  %.v202 = select i1 %1193, i64 19, i64 14
  %1194 = add i64 %1181, %.v202
  store i64 %1194, i64* %3, align 8
  br i1 %1193, label %block_.L_411ec0, label %block_411ebb

block_411ebb:                                     ; preds = %block_.L_411ead
  store i64 11, i64* %RCX.i1526, align 8
  %1195 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %1196 = icmp eq i32 %1195, 0
  %1197 = select i1 %1196, i64 12, i64 11
  store i64 %1197, i64* %RAX.i1510, align 8
  %1198 = zext i1 %1196 to i8
  store i8 %1198, i8* %DL.i997, align 1
  store i8 0, i8* %14, align 1
  %1199 = zext i1 %1196 to i32
  %1200 = tail call i32 @llvm.ctpop.i32(i32 %1199)
  %1201 = trunc i32 %1200 to i8
  %1202 = xor i8 %1201, 1
  store i8 %1202, i8* %21, align 1
  %1203 = xor i8 %1198, 1
  store i8 %1203, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1204 = zext i1 %1196 to i64
  store i64 %1204, i64* %RSI.i1522, align 8
  store i64 %1197, i64* %RDI.i1270.pre-phi, align 8
  %1205 = add i64 %1194, -63243
  %1206 = add i64 %1194, 365
  %1207 = load i64, i64* %6, align 8
  %1208 = add i64 %1207, -8
  %1209 = inttoptr i64 %1208 to i64*
  store i64 %1206, i64* %1209, align 8
  store i64 %1208, i64* %6, align 8
  store i64 %1205, i64* %3, align 8
  %call2_412023 = tail call %struct.Memory* @sub_4027b0.DropremoveHolding(%struct.State* nonnull %0, i64 %1205, %struct.Memory* %MEMORY.14)
  %.pre115 = load i64, i64* %3, align 8
  %.pre116 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  br label %block_.L_412028

block_.L_411ec0:                                  ; preds = %block_.L_411ead
  %1210 = add i64 %1182, -12304
  store i64 %1210, i64* %RDI.i1270.pre-phi, align 8
  %1211 = add i64 %1182, -24608
  %1212 = add i64 %1194, 13
  store i64 %1212, i64* %3, align 8
  %1213 = inttoptr i64 %1211 to i32*
  %1214 = load i32, i32* %1213, align 4
  %1215 = zext i32 %1214 to i64
  store i64 %1215, i64* %RSI.i1522, align 8
  %1216 = add i64 %1194, -26512
  %1217 = add i64 %1194, 18
  %1218 = load i64, i64* %6, align 8
  %1219 = add i64 %1218, -8
  %1220 = inttoptr i64 %1219 to i64*
  store i64 %1217, i64* %1220, align 8
  store i64 %1219, i64* %6, align 8
  store i64 %1216, i64* %3, align 8
  %call2_411ecd = tail call %struct.Memory* @sub_40b730.make(%struct.State* nonnull %0, i64 %1216, %struct.Memory* %MEMORY.14)
  %1221 = load i64, i64* %RBP.i, align 8
  %1222 = add i64 %1221, -12304
  %1223 = load i64, i64* %3, align 8
  store i64 %1222, i64* %RDI.i1270.pre-phi, align 8
  %1224 = add i64 %1221, -24608
  %1225 = add i64 %1223, 13
  store i64 %1225, i64* %3, align 8
  %1226 = inttoptr i64 %1224 to i32*
  %1227 = load i32, i32* %1226, align 4
  %1228 = zext i32 %1227 to i64
  store i64 %1228, i64* %RSI.i1522, align 8
  %1229 = add i64 %1221, -24612
  %1230 = add i64 %1223, 19
  store i64 %1230, i64* %3, align 8
  %1231 = inttoptr i64 %1229 to i32*
  %1232 = load i32, i32* %1231, align 4
  %1233 = zext i32 %1232 to i64
  store i64 %1233, i64* %RDX.i1524, align 8
  %1234 = add i64 %1223, -47186
  %1235 = add i64 %1223, 24
  %1236 = load i64, i64* %6, align 8
  %1237 = add i64 %1236, -8
  %1238 = inttoptr i64 %1237 to i64*
  store i64 %1235, i64* %1238, align 8
  store i64 %1237, i64* %6, align 8
  store i64 %1234, i64* %3, align 8
  %call2_411ee5 = tail call %struct.Memory* @sub_406680.check_legal(%struct.State* nonnull %0, i64 %1234, %struct.Memory* %MEMORY.14)
  %1239 = load i32, i32* %EAX.i1519, align 4
  %1240 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1241 = and i32 %1239, 255
  %1242 = tail call i32 @llvm.ctpop.i32(i32 %1241)
  %1243 = trunc i32 %1242 to i8
  %1244 = and i8 %1243, 1
  %1245 = xor i8 %1244, 1
  store i8 %1245, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1246 = icmp eq i32 %1239, 0
  %1247 = zext i1 %1246 to i8
  store i8 %1247, i8* %30, align 1
  %1248 = lshr i32 %1239, 31
  %1249 = trunc i32 %1248 to i8
  store i8 %1249, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v203 = select i1 %1246, i64 232, i64 9
  %1250 = add i64 %1240, %.v203
  store i64 %1250, i64* %3, align 8
  %.pre114 = load i64, i64* %RBP.i, align 8
  br i1 %1246, label %block_.L_411fd2, label %block_411ef3

block_411ef3:                                     ; preds = %block_.L_411ec0
  %1251 = add i64 %.pre114, -24632
  %1252 = add i64 %1250, 10
  store i64 %1252, i64* %3, align 8
  %1253 = inttoptr i64 %1251 to i32*
  store i32 3, i32* %1253, align 4
  %1254 = load i64, i64* %3, align 8
  %1255 = add i64 %1254, -34333
  %1256 = add i64 %1254, 5
  %1257 = load i64, i64* %6, align 8
  %1258 = add i64 %1257, -8
  %1259 = inttoptr i64 %1258 to i64*
  store i64 %1256, i64* %1259, align 8
  store i64 %1258, i64* %6, align 8
  store i64 %1255, i64* %3, align 8
  %call2_411efd = tail call %struct.Memory* @sub_4098e0.in_check(%struct.State* nonnull %0, i64 %1255, %struct.Memory* %MEMORY.14)
  %1260 = load i64, i64* %RBP.i, align 8
  %1261 = add i64 %1260, -24592
  %1262 = load i64, i64* %3, align 8
  store i64 %1261, i64* %RDI.i1270.pre-phi, align 8
  %1263 = add i64 %1260, -24616
  %1264 = load i32, i32* %EAX.i1519, align 4
  %1265 = add i64 %1262, 13
  store i64 %1265, i64* %3, align 8
  %1266 = inttoptr i64 %1263 to i32*
  store i32 %1264, i32* %1266, align 4
  %1267 = load i64, i64* %3, align 8
  %1268 = add i64 %1267, -41183
  %1269 = add i64 %1267, 5
  %1270 = load i64, i64* %6, align 8
  %1271 = add i64 %1270, -8
  %1272 = inttoptr i64 %1271 to i64*
  store i64 %1269, i64* %1272, align 8
  store i64 %1271, i64* %6, align 8
  store i64 %1268, i64* %3, align 8
  %call2_411f0f = tail call %struct.Memory* @sub_407e30.gen(%struct.State* nonnull %0, i64 %1268, %struct.Memory* %MEMORY.14)
  %1273 = load i64, i64* %3, align 8
  %1274 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %1275 = zext i32 %1274 to i64
  store i64 %1275, i64* %RAX.i1510, align 8
  %1276 = load i64, i64* %RBP.i, align 8
  %1277 = add i64 %1276, -24600
  %1278 = add i64 %1273, 13
  store i64 %1278, i64* %3, align 8
  %1279 = inttoptr i64 %1277 to i32*
  store i32 %1274, i32* %1279, align 4
  %1280 = load i64, i64* %RBP.i, align 8
  %1281 = add i64 %1280, -24604
  %1282 = load i64, i64* %3, align 8
  %1283 = add i64 %1282, 10
  store i64 %1283, i64* %3, align 8
  %1284 = inttoptr i64 %1281 to i32*
  store i32 0, i32* %1284, align 4
  %.pre111 = load i64, i64* %3, align 8
  br label %block_.L_411f2b

block_.L_411f2b:                                  ; preds = %block_.L_411fa7, %block_411ef3
  %1285 = phi i64 [ %1455, %block_.L_411fa7 ], [ %.pre111, %block_411ef3 ]
  store i64 0, i64* %RAX.i1510, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %CL.i970, align 1
  %1286 = load i64, i64* %RBP.i, align 8
  %1287 = add i64 %1286, -24604
  %1288 = add i64 %1285, 10
  store i64 %1288, i64* %3, align 8
  %1289 = inttoptr i64 %1287 to i32*
  %1290 = load i32, i32* %1289, align 4
  %1291 = zext i32 %1290 to i64
  store i64 %1291, i64* %RAX.i1510, align 8
  %1292 = add i64 %1286, -24600
  %1293 = add i64 %1285, 16
  store i64 %1293, i64* %3, align 8
  %1294 = inttoptr i64 %1292 to i32*
  %1295 = load i32, i32* %1294, align 4
  %1296 = sub i32 %1290, %1295
  %1297 = icmp ult i32 %1290, %1295
  %1298 = zext i1 %1297 to i8
  store i8 %1298, i8* %14, align 1
  %1299 = and i32 %1296, 255
  %1300 = tail call i32 @llvm.ctpop.i32(i32 %1299)
  %1301 = trunc i32 %1300 to i8
  %1302 = and i8 %1301, 1
  %1303 = xor i8 %1302, 1
  store i8 %1303, i8* %21, align 1
  %1304 = xor i32 %1295, %1290
  %1305 = xor i32 %1304, %1296
  %1306 = lshr i32 %1305, 4
  %1307 = trunc i32 %1306 to i8
  %1308 = and i8 %1307, 1
  store i8 %1308, i8* %27, align 1
  %1309 = icmp eq i32 %1296, 0
  %1310 = zext i1 %1309 to i8
  store i8 %1310, i8* %30, align 1
  %1311 = lshr i32 %1296, 31
  %1312 = trunc i32 %1311 to i8
  store i8 %1312, i8* %33, align 1
  %1313 = lshr i32 %1290, 31
  %1314 = lshr i32 %1295, 31
  %1315 = xor i32 %1314, %1313
  %1316 = xor i32 %1311, %1313
  %1317 = add nuw nsw i32 %1316, %1315
  %1318 = icmp eq i32 %1317, 2
  %1319 = zext i1 %1318 to i8
  store i8 %1319, i8* %39, align 1
  %1320 = add i64 %1286, -24666
  %1321 = add i64 %1285, 22
  store i64 %1321, i64* %3, align 8
  %1322 = inttoptr i64 %1320 to i8*
  store i8 0, i8* %1322, align 1
  %1323 = load i64, i64* %3, align 8
  %1324 = add i64 %1323, 22
  %1325 = add i64 %1323, 6
  %1326 = load i8, i8* %33, align 1
  %1327 = icmp ne i8 %1326, 0
  %1328 = load i8, i8* %39, align 1
  %1329 = icmp ne i8 %1328, 0
  %1330 = xor i1 %1327, %1329
  %1331 = select i1 %1330, i64 %1325, i64 %1324
  store i64 %1331, i64* %3, align 8
  br i1 %1330, label %block_411f47, label %block_.L_411f57

block_411f47:                                     ; preds = %block_.L_411f2b
  %1332 = load i64, i64* %RBP.i, align 8
  %1333 = add i64 %1332, -24632
  %1334 = add i64 %1331, 7
  store i64 %1334, i64* %3, align 8
  %1335 = inttoptr i64 %1333 to i32*
  %1336 = load i32, i32* %1335, align 4
  store i8 0, i8* %14, align 1
  %1337 = and i32 %1336, 255
  %1338 = tail call i32 @llvm.ctpop.i32(i32 %1337)
  %1339 = trunc i32 %1338 to i8
  %1340 = and i8 %1339, 1
  %1341 = xor i8 %1340, 1
  store i8 %1341, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1342 = icmp eq i32 %1336, 0
  %1343 = zext i1 %1342 to i8
  store i8 %1343, i8* %30, align 1
  %1344 = lshr i32 %1336, 31
  %1345 = trunc i32 %1344 to i8
  store i8 %1345, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1346 = xor i1 %1342, true
  %1347 = zext i1 %1346 to i8
  store i8 %1347, i8* %AL.i969, align 1
  %1348 = add i64 %1332, -24666
  %1349 = add i64 %1331, 16
  store i64 %1349, i64* %3, align 8
  %1350 = inttoptr i64 %1348 to i8*
  store i8 %1347, i8* %1350, align 1
  %.pre112 = load i64, i64* %3, align 8
  br label %block_.L_411f57

block_.L_411f57:                                  ; preds = %block_.L_411f2b, %block_411f47
  %1351 = phi i64 [ %1324, %block_.L_411f2b ], [ %.pre112, %block_411f47 ]
  %1352 = load i64, i64* %RBP.i, align 8
  %1353 = add i64 %1352, -24666
  %1354 = add i64 %1351, 6
  store i64 %1354, i64* %3, align 8
  %1355 = inttoptr i64 %1353 to i8*
  %1356 = load i8, i8* %1355, align 1
  store i8 %1356, i8* %AL.i969, align 1
  %1357 = and i8 %1356, 1
  store i8 0, i8* %14, align 1
  %1358 = zext i8 %1357 to i32
  %1359 = tail call i32 @llvm.ctpop.i32(i32 %1358)
  %1360 = trunc i32 %1359 to i8
  %1361 = xor i8 %1360, 1
  store i8 %1361, i8* %21, align 1
  %1362 = xor i8 %1357, 1
  store i8 %1362, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1363 = icmp eq i8 %1362, 0
  %.v204 = select i1 %1363, i64 19, i64 14
  %1364 = add i64 %1351, %.v204
  store i64 %1364, i64* %3, align 8
  br i1 %1363, label %block_.L_411f6a, label %block_411f65

block_411f65:                                     ; preds = %block_.L_411f57
  %1365 = add i64 %1364, 109
  store i64 %1365, i64* %3, align 8
  br label %block_.L_411fd2

block_.L_411f6a:                                  ; preds = %block_.L_411f57
  %1366 = add i64 %1352, -24592
  store i64 %1366, i64* %RDI.i1270.pre-phi, align 8
  %1367 = add i64 %1352, -24604
  %1368 = add i64 %1364, 13
  store i64 %1368, i64* %3, align 8
  %1369 = inttoptr i64 %1367 to i32*
  %1370 = load i32, i32* %1369, align 4
  %1371 = zext i32 %1370 to i64
  store i64 %1371, i64* %RSI.i1522, align 8
  %1372 = add i64 %1364, -26682
  %1373 = add i64 %1364, 18
  %1374 = load i64, i64* %6, align 8
  %1375 = add i64 %1374, -8
  %1376 = inttoptr i64 %1375 to i64*
  store i64 %1373, i64* %1376, align 8
  store i64 %1375, i64* %6, align 8
  store i64 %1372, i64* %3, align 8
  %call2_411f77 = tail call %struct.Memory* @sub_40b730.make(%struct.State* nonnull %0, i64 %1372, %struct.Memory* %MEMORY.14)
  %1377 = load i64, i64* %RBP.i, align 8
  %1378 = add i64 %1377, -24592
  %1379 = load i64, i64* %3, align 8
  store i64 %1378, i64* %RDI.i1270.pre-phi, align 8
  %1380 = add i64 %1377, -24604
  %1381 = add i64 %1379, 13
  store i64 %1381, i64* %3, align 8
  %1382 = inttoptr i64 %1380 to i32*
  %1383 = load i32, i32* %1382, align 4
  %1384 = zext i32 %1383 to i64
  store i64 %1384, i64* %RSI.i1522, align 8
  %1385 = add i64 %1377, -24616
  %1386 = add i64 %1379, 19
  store i64 %1386, i64* %3, align 8
  %1387 = inttoptr i64 %1385 to i32*
  %1388 = load i32, i32* %1387, align 4
  %1389 = zext i32 %1388 to i64
  store i64 %1389, i64* %RDX.i1524, align 8
  %1390 = add i64 %1379, -47356
  %1391 = add i64 %1379, 24
  %1392 = load i64, i64* %6, align 8
  %1393 = add i64 %1392, -8
  %1394 = inttoptr i64 %1393 to i64*
  store i64 %1391, i64* %1394, align 8
  store i64 %1393, i64* %6, align 8
  store i64 %1390, i64* %3, align 8
  %call2_411f8f = tail call %struct.Memory* @sub_406680.check_legal(%struct.State* nonnull %0, i64 %1390, %struct.Memory* %MEMORY.14)
  %1395 = load i32, i32* %EAX.i1519, align 4
  %1396 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1397 = and i32 %1395, 255
  %1398 = tail call i32 @llvm.ctpop.i32(i32 %1397)
  %1399 = trunc i32 %1398 to i8
  %1400 = and i8 %1399, 1
  %1401 = xor i8 %1400, 1
  store i8 %1401, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1402 = icmp eq i32 %1395, 0
  %1403 = zext i1 %1402 to i8
  store i8 %1403, i8* %30, align 1
  %1404 = lshr i32 %1395, 31
  %1405 = trunc i32 %1404 to i8
  store i8 %1405, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v205 = select i1 %1402, i64 19, i64 9
  %1406 = add i64 %1396, %.v205
  store i64 %1406, i64* %3, align 8
  br i1 %1402, label %block_.L_411fa7, label %block_411f9d

block_411f9d:                                     ; preds = %block_.L_411f6a
  %1407 = load i64, i64* %RBP.i, align 8
  %1408 = add i64 %1407, -24632
  %1409 = add i64 %1406, 10
  store i64 %1409, i64* %3, align 8
  %1410 = inttoptr i64 %1408 to i32*
  store i32 0, i32* %1410, align 4
  %.pre113 = load i64, i64* %3, align 8
  br label %block_.L_411fa7

block_.L_411fa7:                                  ; preds = %block_411f9d, %block_.L_411f6a
  %1411 = phi i64 [ %.pre113, %block_411f9d ], [ %1406, %block_.L_411f6a ]
  %1412 = load i64, i64* %RBP.i, align 8
  %1413 = add i64 %1412, -24592
  store i64 %1413, i64* %RDI.i1270.pre-phi, align 8
  %1414 = add i64 %1412, -24604
  %1415 = add i64 %1411, 13
  store i64 %1415, i64* %3, align 8
  %1416 = inttoptr i64 %1414 to i32*
  %1417 = load i32, i32* %1416, align 4
  %1418 = zext i32 %1417 to i64
  store i64 %1418, i64* %RSI.i1522, align 8
  %1419 = add i64 %1411, -22535
  %1420 = add i64 %1411, 18
  %1421 = load i64, i64* %6, align 8
  %1422 = add i64 %1421, -8
  %1423 = inttoptr i64 %1422 to i64*
  store i64 %1420, i64* %1423, align 8
  store i64 %1422, i64* %6, align 8
  store i64 %1419, i64* %3, align 8
  %call2_411fb4 = tail call %struct.Memory* @sub_40c7a0.unmake(%struct.State* nonnull %0, i64 %1419, %struct.Memory* %MEMORY.14)
  %1424 = load i64, i64* %RBP.i, align 8
  %1425 = add i64 %1424, -24604
  %1426 = load i64, i64* %3, align 8
  %1427 = add i64 %1426, 6
  store i64 %1427, i64* %3, align 8
  %1428 = inttoptr i64 %1425 to i32*
  %1429 = load i32, i32* %1428, align 4
  %1430 = add i32 %1429, 1
  %1431 = zext i32 %1430 to i64
  store i64 %1431, i64* %RAX.i1510, align 8
  %1432 = icmp eq i32 %1429, -1
  %1433 = icmp eq i32 %1430, 0
  %1434 = or i1 %1432, %1433
  %1435 = zext i1 %1434 to i8
  store i8 %1435, i8* %14, align 1
  %1436 = and i32 %1430, 255
  %1437 = tail call i32 @llvm.ctpop.i32(i32 %1436)
  %1438 = trunc i32 %1437 to i8
  %1439 = and i8 %1438, 1
  %1440 = xor i8 %1439, 1
  store i8 %1440, i8* %21, align 1
  %1441 = xor i32 %1430, %1429
  %1442 = lshr i32 %1441, 4
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  store i8 %1444, i8* %27, align 1
  %1445 = zext i1 %1433 to i8
  store i8 %1445, i8* %30, align 1
  %1446 = lshr i32 %1430, 31
  %1447 = trunc i32 %1446 to i8
  store i8 %1447, i8* %33, align 1
  %1448 = lshr i32 %1429, 31
  %1449 = xor i32 %1446, %1448
  %1450 = add nuw nsw i32 %1449, %1446
  %1451 = icmp eq i32 %1450, 2
  %1452 = zext i1 %1451 to i8
  store i8 %1452, i8* %39, align 1
  %1453 = add i64 %1426, 15
  store i64 %1453, i64* %3, align 8
  store i32 %1430, i32* %1428, align 4
  %1454 = load i64, i64* %3, align 8
  %1455 = add i64 %1454, -157
  store i64 %1455, i64* %3, align 8
  br label %block_.L_411f2b

block_.L_411fd2:                                  ; preds = %block_.L_411ec0, %block_411f65
  %1456 = phi i64 [ %1365, %block_411f65 ], [ %1250, %block_.L_411ec0 ]
  %1457 = phi i64 [ %1352, %block_411f65 ], [ %.pre114, %block_.L_411ec0 ]
  %1458 = add i64 %1457, -12304
  store i64 %1458, i64* %RDI.i1270.pre-phi, align 8
  %1459 = add i64 %1457, -24608
  %1460 = add i64 %1456, 13
  store i64 %1460, i64* %3, align 8
  %1461 = inttoptr i64 %1459 to i32*
  %1462 = load i32, i32* %1461, align 4
  %1463 = zext i32 %1462 to i64
  store i64 %1463, i64* %RSI.i1522, align 8
  %1464 = add i64 %1456, -22578
  %1465 = add i64 %1456, 18
  %1466 = load i64, i64* %6, align 8
  %1467 = add i64 %1466, -8
  %1468 = inttoptr i64 %1467 to i64*
  store i64 %1465, i64* %1468, align 8
  store i64 %1467, i64* %6, align 8
  store i64 %1464, i64* %3, align 8
  %call2_411fdf = tail call %struct.Memory* @sub_40c7a0.unmake(%struct.State* nonnull %0, i64 %1464, %struct.Memory* %MEMORY.14)
  %1469 = load i64, i64* %RBP.i, align 8
  %1470 = add i64 %1469, -24608
  %1471 = load i64, i64* %3, align 8
  %1472 = add i64 %1471, 6
  store i64 %1472, i64* %3, align 8
  %1473 = inttoptr i64 %1470 to i32*
  %1474 = load i32, i32* %1473, align 4
  %1475 = add i32 %1474, 1
  %1476 = zext i32 %1475 to i64
  store i64 %1476, i64* %RAX.i1510, align 8
  %1477 = icmp eq i32 %1474, -1
  %1478 = icmp eq i32 %1475, 0
  %1479 = or i1 %1477, %1478
  %1480 = zext i1 %1479 to i8
  store i8 %1480, i8* %14, align 1
  %1481 = and i32 %1475, 255
  %1482 = tail call i32 @llvm.ctpop.i32(i32 %1481)
  %1483 = trunc i32 %1482 to i8
  %1484 = and i8 %1483, 1
  %1485 = xor i8 %1484, 1
  store i8 %1485, i8* %21, align 1
  %1486 = xor i32 %1475, %1474
  %1487 = lshr i32 %1486, 4
  %1488 = trunc i32 %1487 to i8
  %1489 = and i8 %1488, 1
  store i8 %1489, i8* %27, align 1
  %1490 = zext i1 %1478 to i8
  store i8 %1490, i8* %30, align 1
  %1491 = lshr i32 %1475, 31
  %1492 = trunc i32 %1491 to i8
  store i8 %1492, i8* %33, align 1
  %1493 = lshr i32 %1474, 31
  %1494 = xor i32 %1491, %1493
  %1495 = add nuw nsw i32 %1494, %1491
  %1496 = icmp eq i32 %1495, 2
  %1497 = zext i1 %1496 to i8
  store i8 %1497, i8* %39, align 1
  %1498 = add i64 %1471, 15
  store i64 %1498, i64* %3, align 8
  store i32 %1475, i32* %1473, align 4
  %1499 = load i64, i64* %3, align 8
  %1500 = add i64 %1499, -370
  store i64 %1500, i64* %3, align 8
  br label %block_.L_411e81

block_.L_412028:                                  ; preds = %block_.L_411ddf, %block_411ebb
  %1501 = phi i32 [ %1053, %block_.L_411ddf ], [ %.pre116, %block_411ebb ]
  %1502 = phi i64 [ %1083, %block_.L_411ddf ], [ %.pre115, %block_411ebb ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.13, %block_.L_411ddf ], [ %call2_412023, %block_411ebb ]
  store i64 8, i64* %RAX.i1510, align 8
  store i64 7, i64* %RCX.i1526, align 8
  %1503 = icmp eq i32 %1501, 0
  %1504 = zext i1 %1503 to i8
  store i8 %1504, i8* %SIL.i1276, align 1
  %1505 = zext i1 %1503 to i64
  store i64 %1505, i64* %RDI.i1270.pre-phi, align 8
  %1506 = shl nuw nsw i8 %1504, 6
  %1507 = zext i8 %1506 to i64
  %1508 = add i64 %1507, ptrtoint (%G__0x85f170_type* @G__0x85f170 to i64)
  store i64 %1508, i64* %RDX.i1524, align 8
  %1509 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  store i8 0, i8* %14, align 1
  %1510 = and i32 %1509, 255
  %1511 = tail call i32 @llvm.ctpop.i32(i32 %1510)
  %1512 = trunc i32 %1511 to i8
  %1513 = and i8 %1512, 1
  %1514 = xor i8 %1513, 1
  store i8 %1514, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1515 = icmp eq i32 %1509, 0
  %1516 = zext i1 %1515 to i8
  store i8 %1516, i8* %30, align 1
  %1517 = lshr i32 %1509, 31
  %1518 = trunc i32 %1517 to i8
  store i8 %1518, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1519 = load i32, i32* %ECX.i1496, align 4
  %1520 = zext i32 %1519 to i64
  %1521 = load i64, i64* %RAX.i1510, align 8
  %1522 = select i1 %1515, i64 %1521, i64 %1520
  %1523 = and i64 %1522, 4294967295
  store i64 %1523, i64* %RAX.i1510, align 8
  %sext155 = shl i64 %1522, 32
  %1524 = ashr exact i64 %sext155, 32
  store i64 %1524, i64* %R8.i1508, align 8
  %1525 = ashr exact i64 %sext155, 30
  %1526 = add i64 %1508, %1525
  %1527 = add i64 %1502, 73
  store i64 %1527, i64* %3, align 8
  %1528 = inttoptr i64 %1526 to i32*
  %1529 = load i32, i32* %1528, align 4
  store i8 0, i8* %14, align 1
  %1530 = and i32 %1529, 255
  %1531 = tail call i32 @llvm.ctpop.i32(i32 %1530)
  %1532 = trunc i32 %1531 to i8
  %1533 = and i8 %1532, 1
  %1534 = xor i8 %1533, 1
  store i8 %1534, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1535 = icmp eq i32 %1529, 0
  %1536 = zext i1 %1535 to i8
  store i8 %1536, i8* %30, align 1
  %1537 = lshr i32 %1529, 31
  %1538 = trunc i32 %1537 to i8
  store i8 %1538, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v160 = select i1 %1535, i64 79, i64 585
  %1539 = add i64 %1502, %.v160
  store i64 %1539, i64* %3, align 8
  br i1 %1535, label %block_412077, label %block_.L_412271

block_412077:                                     ; preds = %block_.L_412028
  store i64 7, i64* %RCX.i1526, align 8
  %1540 = select i1 %1515, i64 8, i64 7
  store i64 %1540, i64* %RAX.i1510, align 8
  %DL.i755 = bitcast %union.anon* %124 to i8*
  %1541 = zext i1 %1515 to i8
  store i8 %1541, i8* %DL.i755, align 1
  store i8 0, i8* %14, align 1
  %1542 = zext i1 %1515 to i32
  %1543 = tail call i32 @llvm.ctpop.i32(i32 %1542)
  %1544 = trunc i32 %1543 to i8
  %1545 = xor i8 %1544, 1
  store i8 %1545, i8* %21, align 1
  %1546 = xor i8 %1541, 1
  store i8 %1546, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1547 = zext i1 %1515 to i64
  store i64 %1547, i64* %RSI.i1522, align 8
  store i64 %1540, i64* %RDI.i1270.pre-phi, align 8
  %1548 = add i64 %1539, -63911
  %1549 = add i64 %1539, 48
  %1550 = load i64, i64* %6, align 8
  %1551 = add i64 %1550, -8
  %1552 = inttoptr i64 %1551 to i64*
  store i64 %1549, i64* %1552, align 8
  store i64 %1551, i64* %6, align 8
  store i64 %1548, i64* %3, align 8
  %call2_4120a2 = tail call %struct.Memory* @sub_4026d0.DropaddHolding(%struct.State* nonnull %0, i64 %1548, %struct.Memory* %MEMORY.20)
  %1553 = load i64, i64* %RBP.i, align 8
  %1554 = add i64 %1553, -12304
  %1555 = load i64, i64* %3, align 8
  store i64 %1554, i64* %RDI.i1270.pre-phi, align 8
  %1556 = add i64 %1555, -41591
  %1557 = add i64 %1555, 12
  %1558 = load i64, i64* %6, align 8
  %1559 = add i64 %1558, -8
  %1560 = inttoptr i64 %1559 to i64*
  store i64 %1557, i64* %1560, align 8
  store i64 %1559, i64* %6, align 8
  store i64 %1556, i64* %3, align 8
  %call2_4120ae = tail call %struct.Memory* @sub_407e30.gen(%struct.State* nonnull %0, i64 %1556, %struct.Memory* %call2_4120a2)
  %1561 = load i64, i64* %3, align 8
  %1562 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %1563 = zext i32 %1562 to i64
  store i64 %1563, i64* %RAX.i1510, align 8
  %1564 = load i64, i64* %RBP.i, align 8
  %1565 = add i64 %1564, -24596
  %1566 = add i64 %1561, 13
  store i64 %1566, i64* %3, align 8
  %1567 = inttoptr i64 %1565 to i32*
  store i32 %1562, i32* %1567, align 4
  %1568 = load i64, i64* %RBP.i, align 8
  %1569 = add i64 %1568, -24608
  %1570 = load i64, i64* %3, align 8
  %1571 = add i64 %1570, 10
  store i64 %1571, i64* %3, align 8
  %1572 = inttoptr i64 %1569 to i32*
  store i32 0, i32* %1572, align 4
  %AL.i727 = bitcast %union.anon* %126 to i8*
  %CL.i728 = bitcast %union.anon* %122 to i8*
  %.pre117 = load i64, i64* %3, align 8
  br label %block_.L_4120ca

block_.L_4120ca:                                  ; preds = %block_.L_41221b, %block_412077
  %1573 = phi i64 [ %.pre117, %block_412077 ], [ %1956, %block_.L_41221b ]
  %MEMORY.21 = phi %struct.Memory* [ %call2_4120ae, %block_412077 ], [ %call2_412228, %block_.L_41221b ]
  store i64 0, i64* %RAX.i1510, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %CL.i728, align 1
  %1574 = load i64, i64* %RBP.i, align 8
  %1575 = add i64 %1574, -24608
  %1576 = add i64 %1573, 10
  store i64 %1576, i64* %3, align 8
  %1577 = inttoptr i64 %1575 to i32*
  %1578 = load i32, i32* %1577, align 4
  %1579 = zext i32 %1578 to i64
  store i64 %1579, i64* %RAX.i1510, align 8
  %1580 = add i64 %1574, -24596
  %1581 = add i64 %1573, 16
  store i64 %1581, i64* %3, align 8
  %1582 = inttoptr i64 %1580 to i32*
  %1583 = load i32, i32* %1582, align 4
  %1584 = sub i32 %1578, %1583
  %1585 = icmp ult i32 %1578, %1583
  %1586 = zext i1 %1585 to i8
  store i8 %1586, i8* %14, align 1
  %1587 = and i32 %1584, 255
  %1588 = tail call i32 @llvm.ctpop.i32(i32 %1587)
  %1589 = trunc i32 %1588 to i8
  %1590 = and i8 %1589, 1
  %1591 = xor i8 %1590, 1
  store i8 %1591, i8* %21, align 1
  %1592 = xor i32 %1583, %1578
  %1593 = xor i32 %1592, %1584
  %1594 = lshr i32 %1593, 4
  %1595 = trunc i32 %1594 to i8
  %1596 = and i8 %1595, 1
  store i8 %1596, i8* %27, align 1
  %1597 = icmp eq i32 %1584, 0
  %1598 = zext i1 %1597 to i8
  store i8 %1598, i8* %30, align 1
  %1599 = lshr i32 %1584, 31
  %1600 = trunc i32 %1599 to i8
  store i8 %1600, i8* %33, align 1
  %1601 = lshr i32 %1578, 31
  %1602 = lshr i32 %1583, 31
  %1603 = xor i32 %1602, %1601
  %1604 = xor i32 %1599, %1601
  %1605 = add nuw nsw i32 %1604, %1603
  %1606 = icmp eq i32 %1605, 2
  %1607 = zext i1 %1606 to i8
  store i8 %1607, i8* %39, align 1
  %1608 = add i64 %1574, -24667
  %1609 = add i64 %1573, 22
  store i64 %1609, i64* %3, align 8
  %1610 = inttoptr i64 %1608 to i8*
  store i8 0, i8* %1610, align 1
  %1611 = load i64, i64* %3, align 8
  %1612 = add i64 %1611, 22
  %1613 = add i64 %1611, 6
  %1614 = load i8, i8* %33, align 1
  %1615 = icmp ne i8 %1614, 0
  %1616 = load i8, i8* %39, align 1
  %1617 = icmp ne i8 %1616, 0
  %1618 = xor i1 %1615, %1617
  %1619 = select i1 %1618, i64 %1613, i64 %1612
  store i64 %1619, i64* %3, align 8
  br i1 %1618, label %block_4120e6, label %block_.L_4120f6

block_4120e6:                                     ; preds = %block_.L_4120ca
  %1620 = load i64, i64* %RBP.i, align 8
  %1621 = add i64 %1620, -24636
  %1622 = add i64 %1619, 7
  store i64 %1622, i64* %3, align 8
  %1623 = inttoptr i64 %1621 to i32*
  %1624 = load i32, i32* %1623, align 4
  store i8 0, i8* %14, align 1
  %1625 = and i32 %1624, 255
  %1626 = tail call i32 @llvm.ctpop.i32(i32 %1625)
  %1627 = trunc i32 %1626 to i8
  %1628 = and i8 %1627, 1
  %1629 = xor i8 %1628, 1
  store i8 %1629, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1630 = icmp eq i32 %1624, 0
  %1631 = zext i1 %1630 to i8
  store i8 %1631, i8* %30, align 1
  %1632 = lshr i32 %1624, 31
  %1633 = trunc i32 %1632 to i8
  store i8 %1633, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 %1631, i8* %AL.i727, align 1
  %1634 = add i64 %1620, -24667
  %1635 = add i64 %1619, 16
  store i64 %1635, i64* %3, align 8
  %1636 = inttoptr i64 %1634 to i8*
  store i8 %1631, i8* %1636, align 1
  %.pre118 = load i64, i64* %3, align 8
  br label %block_.L_4120f6

block_.L_4120f6:                                  ; preds = %block_.L_4120ca, %block_4120e6
  %1637 = phi i64 [ %1612, %block_.L_4120ca ], [ %.pre118, %block_4120e6 ]
  %1638 = load i64, i64* %RBP.i, align 8
  %1639 = add i64 %1638, -24667
  %1640 = add i64 %1637, 6
  store i64 %1640, i64* %3, align 8
  %1641 = inttoptr i64 %1639 to i8*
  %1642 = load i8, i8* %1641, align 1
  store i8 %1642, i8* %AL.i727, align 1
  %1643 = and i8 %1642, 1
  store i8 0, i8* %14, align 1
  %1644 = zext i8 %1643 to i32
  %1645 = tail call i32 @llvm.ctpop.i32(i32 %1644)
  %1646 = trunc i32 %1645 to i8
  %1647 = xor i8 %1646, 1
  store i8 %1647, i8* %21, align 1
  %1648 = xor i8 %1643, 1
  store i8 %1648, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1649 = icmp eq i8 %1648, 0
  %.v198 = select i1 %1649, i64 19, i64 14
  %1650 = add i64 %1637, %.v198
  store i64 %1650, i64* %3, align 8
  br i1 %1649, label %block_.L_412109, label %block_412104

block_412104:                                     ; preds = %block_.L_4120f6
  store i64 7, i64* %RCX.i1526, align 8
  %1651 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %1652 = icmp eq i32 %1651, 0
  %1653 = select i1 %1652, i64 8, i64 7
  store i64 %1653, i64* %RAX.i1510, align 8
  %1654 = zext i1 %1652 to i8
  store i8 %1654, i8* %DL.i755, align 1
  store i8 0, i8* %14, align 1
  %1655 = zext i1 %1652 to i32
  %1656 = tail call i32 @llvm.ctpop.i32(i32 %1655)
  %1657 = trunc i32 %1656 to i8
  %1658 = xor i8 %1657, 1
  store i8 %1658, i8* %21, align 1
  %1659 = xor i8 %1654, 1
  store i8 %1659, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1660 = zext i1 %1652 to i64
  store i64 %1660, i64* %RSI.i1522, align 8
  store i64 %1653, i64* %RDI.i1270.pre-phi, align 8
  %1661 = add i64 %1650, -63828
  %1662 = add i64 %1650, 365
  %1663 = load i64, i64* %6, align 8
  %1664 = add i64 %1663, -8
  %1665 = inttoptr i64 %1664 to i64*
  store i64 %1662, i64* %1665, align 8
  store i64 %1664, i64* %6, align 8
  store i64 %1661, i64* %3, align 8
  %call2_41226c = tail call %struct.Memory* @sub_4027b0.DropremoveHolding(%struct.State* nonnull %0, i64 %1661, %struct.Memory* %MEMORY.21)
  %.pre123 = load i64, i64* %3, align 8
  %.pre124 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  br label %block_.L_412271

block_.L_412109:                                  ; preds = %block_.L_4120f6
  %1666 = add i64 %1638, -12304
  store i64 %1666, i64* %RDI.i1270.pre-phi, align 8
  %1667 = add i64 %1638, -24608
  %1668 = add i64 %1650, 13
  store i64 %1668, i64* %3, align 8
  %1669 = inttoptr i64 %1667 to i32*
  %1670 = load i32, i32* %1669, align 4
  %1671 = zext i32 %1670 to i64
  store i64 %1671, i64* %RSI.i1522, align 8
  %1672 = add i64 %1650, -27097
  %1673 = add i64 %1650, 18
  %1674 = load i64, i64* %6, align 8
  %1675 = add i64 %1674, -8
  %1676 = inttoptr i64 %1675 to i64*
  store i64 %1673, i64* %1676, align 8
  store i64 %1675, i64* %6, align 8
  store i64 %1672, i64* %3, align 8
  %call2_412116 = tail call %struct.Memory* @sub_40b730.make(%struct.State* nonnull %0, i64 %1672, %struct.Memory* %MEMORY.21)
  %1677 = load i64, i64* %RBP.i, align 8
  %1678 = add i64 %1677, -12304
  %1679 = load i64, i64* %3, align 8
  store i64 %1678, i64* %RDI.i1270.pre-phi, align 8
  %1680 = add i64 %1677, -24608
  %1681 = add i64 %1679, 13
  store i64 %1681, i64* %3, align 8
  %1682 = inttoptr i64 %1680 to i32*
  %1683 = load i32, i32* %1682, align 4
  %1684 = zext i32 %1683 to i64
  store i64 %1684, i64* %RSI.i1522, align 8
  %1685 = add i64 %1677, -24612
  %1686 = add i64 %1679, 19
  store i64 %1686, i64* %3, align 8
  %1687 = inttoptr i64 %1685 to i32*
  %1688 = load i32, i32* %1687, align 4
  %1689 = zext i32 %1688 to i64
  store i64 %1689, i64* %RDX.i1524, align 8
  %1690 = add i64 %1679, -47771
  %1691 = add i64 %1679, 24
  %1692 = load i64, i64* %6, align 8
  %1693 = add i64 %1692, -8
  %1694 = inttoptr i64 %1693 to i64*
  store i64 %1691, i64* %1694, align 8
  store i64 %1693, i64* %6, align 8
  store i64 %1690, i64* %3, align 8
  %call2_41212e = tail call %struct.Memory* @sub_406680.check_legal(%struct.State* nonnull %0, i64 %1690, %struct.Memory* %MEMORY.21)
  %1695 = load i32, i32* %EAX.i1519, align 4
  %1696 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1697 = and i32 %1695, 255
  %1698 = tail call i32 @llvm.ctpop.i32(i32 %1697)
  %1699 = trunc i32 %1698 to i8
  %1700 = and i8 %1699, 1
  %1701 = xor i8 %1700, 1
  store i8 %1701, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1702 = icmp eq i32 %1695, 0
  %1703 = zext i1 %1702 to i8
  store i8 %1703, i8* %30, align 1
  %1704 = lshr i32 %1695, 31
  %1705 = trunc i32 %1704 to i8
  store i8 %1705, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v199 = select i1 %1702, i64 232, i64 9
  %1706 = add i64 %1696, %.v199
  store i64 %1706, i64* %3, align 8
  %.pre122 = load i64, i64* %RBP.i, align 8
  br i1 %1702, label %block_.L_41221b, label %block_41213c

block_41213c:                                     ; preds = %block_.L_412109
  %1707 = add i64 %.pre122, -24636
  %1708 = add i64 %1706, 10
  store i64 %1708, i64* %3, align 8
  %1709 = inttoptr i64 %1707 to i32*
  store i32 3, i32* %1709, align 4
  %1710 = load i64, i64* %3, align 8
  %1711 = add i64 %1710, -34918
  %1712 = add i64 %1710, 5
  %1713 = load i64, i64* %6, align 8
  %1714 = add i64 %1713, -8
  %1715 = inttoptr i64 %1714 to i64*
  store i64 %1712, i64* %1715, align 8
  store i64 %1714, i64* %6, align 8
  store i64 %1711, i64* %3, align 8
  %call2_412146 = tail call %struct.Memory* @sub_4098e0.in_check(%struct.State* nonnull %0, i64 %1711, %struct.Memory* %MEMORY.21)
  %1716 = load i64, i64* %RBP.i, align 8
  %1717 = add i64 %1716, -24592
  %1718 = load i64, i64* %3, align 8
  store i64 %1717, i64* %RDI.i1270.pre-phi, align 8
  %1719 = add i64 %1716, -24616
  %1720 = load i32, i32* %EAX.i1519, align 4
  %1721 = add i64 %1718, 13
  store i64 %1721, i64* %3, align 8
  %1722 = inttoptr i64 %1719 to i32*
  store i32 %1720, i32* %1722, align 4
  %1723 = load i64, i64* %3, align 8
  %1724 = add i64 %1723, -41768
  %1725 = add i64 %1723, 5
  %1726 = load i64, i64* %6, align 8
  %1727 = add i64 %1726, -8
  %1728 = inttoptr i64 %1727 to i64*
  store i64 %1725, i64* %1728, align 8
  store i64 %1727, i64* %6, align 8
  store i64 %1724, i64* %3, align 8
  %call2_412158 = tail call %struct.Memory* @sub_407e30.gen(%struct.State* nonnull %0, i64 %1724, %struct.Memory* %MEMORY.21)
  %1729 = load i64, i64* %3, align 8
  %1730 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %1731 = zext i32 %1730 to i64
  store i64 %1731, i64* %RAX.i1510, align 8
  %1732 = load i64, i64* %RBP.i, align 8
  %1733 = add i64 %1732, -24600
  %1734 = add i64 %1729, 13
  store i64 %1734, i64* %3, align 8
  %1735 = inttoptr i64 %1733 to i32*
  store i32 %1730, i32* %1735, align 4
  %1736 = load i64, i64* %RBP.i, align 8
  %1737 = add i64 %1736, -24604
  %1738 = load i64, i64* %3, align 8
  %1739 = add i64 %1738, 10
  store i64 %1739, i64* %3, align 8
  %1740 = inttoptr i64 %1737 to i32*
  store i32 0, i32* %1740, align 4
  %.pre119 = load i64, i64* %3, align 8
  br label %block_.L_412174

block_.L_412174:                                  ; preds = %block_.L_4121f0, %block_41213c
  %1741 = phi i64 [ %1911, %block_.L_4121f0 ], [ %.pre119, %block_41213c ]
  store i64 0, i64* %RAX.i1510, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %CL.i728, align 1
  %1742 = load i64, i64* %RBP.i, align 8
  %1743 = add i64 %1742, -24604
  %1744 = add i64 %1741, 10
  store i64 %1744, i64* %3, align 8
  %1745 = inttoptr i64 %1743 to i32*
  %1746 = load i32, i32* %1745, align 4
  %1747 = zext i32 %1746 to i64
  store i64 %1747, i64* %RAX.i1510, align 8
  %1748 = add i64 %1742, -24600
  %1749 = add i64 %1741, 16
  store i64 %1749, i64* %3, align 8
  %1750 = inttoptr i64 %1748 to i32*
  %1751 = load i32, i32* %1750, align 4
  %1752 = sub i32 %1746, %1751
  %1753 = icmp ult i32 %1746, %1751
  %1754 = zext i1 %1753 to i8
  store i8 %1754, i8* %14, align 1
  %1755 = and i32 %1752, 255
  %1756 = tail call i32 @llvm.ctpop.i32(i32 %1755)
  %1757 = trunc i32 %1756 to i8
  %1758 = and i8 %1757, 1
  %1759 = xor i8 %1758, 1
  store i8 %1759, i8* %21, align 1
  %1760 = xor i32 %1751, %1746
  %1761 = xor i32 %1760, %1752
  %1762 = lshr i32 %1761, 4
  %1763 = trunc i32 %1762 to i8
  %1764 = and i8 %1763, 1
  store i8 %1764, i8* %27, align 1
  %1765 = icmp eq i32 %1752, 0
  %1766 = zext i1 %1765 to i8
  store i8 %1766, i8* %30, align 1
  %1767 = lshr i32 %1752, 31
  %1768 = trunc i32 %1767 to i8
  store i8 %1768, i8* %33, align 1
  %1769 = lshr i32 %1746, 31
  %1770 = lshr i32 %1751, 31
  %1771 = xor i32 %1770, %1769
  %1772 = xor i32 %1767, %1769
  %1773 = add nuw nsw i32 %1772, %1771
  %1774 = icmp eq i32 %1773, 2
  %1775 = zext i1 %1774 to i8
  store i8 %1775, i8* %39, align 1
  %1776 = add i64 %1742, -24668
  %1777 = add i64 %1741, 22
  store i64 %1777, i64* %3, align 8
  %1778 = inttoptr i64 %1776 to i8*
  store i8 0, i8* %1778, align 1
  %1779 = load i64, i64* %3, align 8
  %1780 = add i64 %1779, 22
  %1781 = add i64 %1779, 6
  %1782 = load i8, i8* %33, align 1
  %1783 = icmp ne i8 %1782, 0
  %1784 = load i8, i8* %39, align 1
  %1785 = icmp ne i8 %1784, 0
  %1786 = xor i1 %1783, %1785
  %1787 = select i1 %1786, i64 %1781, i64 %1780
  store i64 %1787, i64* %3, align 8
  br i1 %1786, label %block_412190, label %block_.L_4121a0

block_412190:                                     ; preds = %block_.L_412174
  %1788 = load i64, i64* %RBP.i, align 8
  %1789 = add i64 %1788, -24636
  %1790 = add i64 %1787, 7
  store i64 %1790, i64* %3, align 8
  %1791 = inttoptr i64 %1789 to i32*
  %1792 = load i32, i32* %1791, align 4
  store i8 0, i8* %14, align 1
  %1793 = and i32 %1792, 255
  %1794 = tail call i32 @llvm.ctpop.i32(i32 %1793)
  %1795 = trunc i32 %1794 to i8
  %1796 = and i8 %1795, 1
  %1797 = xor i8 %1796, 1
  store i8 %1797, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1798 = icmp eq i32 %1792, 0
  %1799 = zext i1 %1798 to i8
  store i8 %1799, i8* %30, align 1
  %1800 = lshr i32 %1792, 31
  %1801 = trunc i32 %1800 to i8
  store i8 %1801, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1802 = xor i1 %1798, true
  %1803 = zext i1 %1802 to i8
  store i8 %1803, i8* %AL.i727, align 1
  %1804 = add i64 %1788, -24668
  %1805 = add i64 %1787, 16
  store i64 %1805, i64* %3, align 8
  %1806 = inttoptr i64 %1804 to i8*
  store i8 %1803, i8* %1806, align 1
  %.pre120 = load i64, i64* %3, align 8
  br label %block_.L_4121a0

block_.L_4121a0:                                  ; preds = %block_.L_412174, %block_412190
  %1807 = phi i64 [ %1780, %block_.L_412174 ], [ %.pre120, %block_412190 ]
  %1808 = load i64, i64* %RBP.i, align 8
  %1809 = add i64 %1808, -24668
  %1810 = add i64 %1807, 6
  store i64 %1810, i64* %3, align 8
  %1811 = inttoptr i64 %1809 to i8*
  %1812 = load i8, i8* %1811, align 1
  store i8 %1812, i8* %AL.i727, align 1
  %1813 = and i8 %1812, 1
  store i8 0, i8* %14, align 1
  %1814 = zext i8 %1813 to i32
  %1815 = tail call i32 @llvm.ctpop.i32(i32 %1814)
  %1816 = trunc i32 %1815 to i8
  %1817 = xor i8 %1816, 1
  store i8 %1817, i8* %21, align 1
  %1818 = xor i8 %1813, 1
  store i8 %1818, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1819 = icmp eq i8 %1818, 0
  %.v200 = select i1 %1819, i64 19, i64 14
  %1820 = add i64 %1807, %.v200
  store i64 %1820, i64* %3, align 8
  br i1 %1819, label %block_.L_4121b3, label %block_4121ae

block_4121ae:                                     ; preds = %block_.L_4121a0
  %1821 = add i64 %1820, 109
  store i64 %1821, i64* %3, align 8
  br label %block_.L_41221b

block_.L_4121b3:                                  ; preds = %block_.L_4121a0
  %1822 = add i64 %1808, -24592
  store i64 %1822, i64* %RDI.i1270.pre-phi, align 8
  %1823 = add i64 %1808, -24604
  %1824 = add i64 %1820, 13
  store i64 %1824, i64* %3, align 8
  %1825 = inttoptr i64 %1823 to i32*
  %1826 = load i32, i32* %1825, align 4
  %1827 = zext i32 %1826 to i64
  store i64 %1827, i64* %RSI.i1522, align 8
  %1828 = add i64 %1820, -27267
  %1829 = add i64 %1820, 18
  %1830 = load i64, i64* %6, align 8
  %1831 = add i64 %1830, -8
  %1832 = inttoptr i64 %1831 to i64*
  store i64 %1829, i64* %1832, align 8
  store i64 %1831, i64* %6, align 8
  store i64 %1828, i64* %3, align 8
  %call2_4121c0 = tail call %struct.Memory* @sub_40b730.make(%struct.State* nonnull %0, i64 %1828, %struct.Memory* %MEMORY.21)
  %1833 = load i64, i64* %RBP.i, align 8
  %1834 = add i64 %1833, -24592
  %1835 = load i64, i64* %3, align 8
  store i64 %1834, i64* %RDI.i1270.pre-phi, align 8
  %1836 = add i64 %1833, -24604
  %1837 = add i64 %1835, 13
  store i64 %1837, i64* %3, align 8
  %1838 = inttoptr i64 %1836 to i32*
  %1839 = load i32, i32* %1838, align 4
  %1840 = zext i32 %1839 to i64
  store i64 %1840, i64* %RSI.i1522, align 8
  %1841 = add i64 %1833, -24616
  %1842 = add i64 %1835, 19
  store i64 %1842, i64* %3, align 8
  %1843 = inttoptr i64 %1841 to i32*
  %1844 = load i32, i32* %1843, align 4
  %1845 = zext i32 %1844 to i64
  store i64 %1845, i64* %RDX.i1524, align 8
  %1846 = add i64 %1835, -47941
  %1847 = add i64 %1835, 24
  %1848 = load i64, i64* %6, align 8
  %1849 = add i64 %1848, -8
  %1850 = inttoptr i64 %1849 to i64*
  store i64 %1847, i64* %1850, align 8
  store i64 %1849, i64* %6, align 8
  store i64 %1846, i64* %3, align 8
  %call2_4121d8 = tail call %struct.Memory* @sub_406680.check_legal(%struct.State* nonnull %0, i64 %1846, %struct.Memory* %MEMORY.21)
  %1851 = load i32, i32* %EAX.i1519, align 4
  %1852 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1853 = and i32 %1851, 255
  %1854 = tail call i32 @llvm.ctpop.i32(i32 %1853)
  %1855 = trunc i32 %1854 to i8
  %1856 = and i8 %1855, 1
  %1857 = xor i8 %1856, 1
  store i8 %1857, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1858 = icmp eq i32 %1851, 0
  %1859 = zext i1 %1858 to i8
  store i8 %1859, i8* %30, align 1
  %1860 = lshr i32 %1851, 31
  %1861 = trunc i32 %1860 to i8
  store i8 %1861, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v201 = select i1 %1858, i64 19, i64 9
  %1862 = add i64 %1852, %.v201
  store i64 %1862, i64* %3, align 8
  br i1 %1858, label %block_.L_4121f0, label %block_4121e6

block_4121e6:                                     ; preds = %block_.L_4121b3
  %1863 = load i64, i64* %RBP.i, align 8
  %1864 = add i64 %1863, -24636
  %1865 = add i64 %1862, 10
  store i64 %1865, i64* %3, align 8
  %1866 = inttoptr i64 %1864 to i32*
  store i32 0, i32* %1866, align 4
  %.pre121 = load i64, i64* %3, align 8
  br label %block_.L_4121f0

block_.L_4121f0:                                  ; preds = %block_4121e6, %block_.L_4121b3
  %1867 = phi i64 [ %.pre121, %block_4121e6 ], [ %1862, %block_.L_4121b3 ]
  %1868 = load i64, i64* %RBP.i, align 8
  %1869 = add i64 %1868, -24592
  store i64 %1869, i64* %RDI.i1270.pre-phi, align 8
  %1870 = add i64 %1868, -24604
  %1871 = add i64 %1867, 13
  store i64 %1871, i64* %3, align 8
  %1872 = inttoptr i64 %1870 to i32*
  %1873 = load i32, i32* %1872, align 4
  %1874 = zext i32 %1873 to i64
  store i64 %1874, i64* %RSI.i1522, align 8
  %1875 = add i64 %1867, -23120
  %1876 = add i64 %1867, 18
  %1877 = load i64, i64* %6, align 8
  %1878 = add i64 %1877, -8
  %1879 = inttoptr i64 %1878 to i64*
  store i64 %1876, i64* %1879, align 8
  store i64 %1878, i64* %6, align 8
  store i64 %1875, i64* %3, align 8
  %call2_4121fd = tail call %struct.Memory* @sub_40c7a0.unmake(%struct.State* nonnull %0, i64 %1875, %struct.Memory* %MEMORY.21)
  %1880 = load i64, i64* %RBP.i, align 8
  %1881 = add i64 %1880, -24604
  %1882 = load i64, i64* %3, align 8
  %1883 = add i64 %1882, 6
  store i64 %1883, i64* %3, align 8
  %1884 = inttoptr i64 %1881 to i32*
  %1885 = load i32, i32* %1884, align 4
  %1886 = add i32 %1885, 1
  %1887 = zext i32 %1886 to i64
  store i64 %1887, i64* %RAX.i1510, align 8
  %1888 = icmp eq i32 %1885, -1
  %1889 = icmp eq i32 %1886, 0
  %1890 = or i1 %1888, %1889
  %1891 = zext i1 %1890 to i8
  store i8 %1891, i8* %14, align 1
  %1892 = and i32 %1886, 255
  %1893 = tail call i32 @llvm.ctpop.i32(i32 %1892)
  %1894 = trunc i32 %1893 to i8
  %1895 = and i8 %1894, 1
  %1896 = xor i8 %1895, 1
  store i8 %1896, i8* %21, align 1
  %1897 = xor i32 %1886, %1885
  %1898 = lshr i32 %1897, 4
  %1899 = trunc i32 %1898 to i8
  %1900 = and i8 %1899, 1
  store i8 %1900, i8* %27, align 1
  %1901 = zext i1 %1889 to i8
  store i8 %1901, i8* %30, align 1
  %1902 = lshr i32 %1886, 31
  %1903 = trunc i32 %1902 to i8
  store i8 %1903, i8* %33, align 1
  %1904 = lshr i32 %1885, 31
  %1905 = xor i32 %1902, %1904
  %1906 = add nuw nsw i32 %1905, %1902
  %1907 = icmp eq i32 %1906, 2
  %1908 = zext i1 %1907 to i8
  store i8 %1908, i8* %39, align 1
  %1909 = add i64 %1882, 15
  store i64 %1909, i64* %3, align 8
  store i32 %1886, i32* %1884, align 4
  %1910 = load i64, i64* %3, align 8
  %1911 = add i64 %1910, -157
  store i64 %1911, i64* %3, align 8
  br label %block_.L_412174

block_.L_41221b:                                  ; preds = %block_.L_412109, %block_4121ae
  %1912 = phi i64 [ %1821, %block_4121ae ], [ %1706, %block_.L_412109 ]
  %1913 = phi i64 [ %1808, %block_4121ae ], [ %.pre122, %block_.L_412109 ]
  %1914 = add i64 %1913, -12304
  store i64 %1914, i64* %RDI.i1270.pre-phi, align 8
  %1915 = add i64 %1913, -24608
  %1916 = add i64 %1912, 13
  store i64 %1916, i64* %3, align 8
  %1917 = inttoptr i64 %1915 to i32*
  %1918 = load i32, i32* %1917, align 4
  %1919 = zext i32 %1918 to i64
  store i64 %1919, i64* %RSI.i1522, align 8
  %1920 = add i64 %1912, -23163
  %1921 = add i64 %1912, 18
  %1922 = load i64, i64* %6, align 8
  %1923 = add i64 %1922, -8
  %1924 = inttoptr i64 %1923 to i64*
  store i64 %1921, i64* %1924, align 8
  store i64 %1923, i64* %6, align 8
  store i64 %1920, i64* %3, align 8
  %call2_412228 = tail call %struct.Memory* @sub_40c7a0.unmake(%struct.State* nonnull %0, i64 %1920, %struct.Memory* %MEMORY.21)
  %1925 = load i64, i64* %RBP.i, align 8
  %1926 = add i64 %1925, -24608
  %1927 = load i64, i64* %3, align 8
  %1928 = add i64 %1927, 6
  store i64 %1928, i64* %3, align 8
  %1929 = inttoptr i64 %1926 to i32*
  %1930 = load i32, i32* %1929, align 4
  %1931 = add i32 %1930, 1
  %1932 = zext i32 %1931 to i64
  store i64 %1932, i64* %RAX.i1510, align 8
  %1933 = icmp eq i32 %1930, -1
  %1934 = icmp eq i32 %1931, 0
  %1935 = or i1 %1933, %1934
  %1936 = zext i1 %1935 to i8
  store i8 %1936, i8* %14, align 1
  %1937 = and i32 %1931, 255
  %1938 = tail call i32 @llvm.ctpop.i32(i32 %1937)
  %1939 = trunc i32 %1938 to i8
  %1940 = and i8 %1939, 1
  %1941 = xor i8 %1940, 1
  store i8 %1941, i8* %21, align 1
  %1942 = xor i32 %1931, %1930
  %1943 = lshr i32 %1942, 4
  %1944 = trunc i32 %1943 to i8
  %1945 = and i8 %1944, 1
  store i8 %1945, i8* %27, align 1
  %1946 = zext i1 %1934 to i8
  store i8 %1946, i8* %30, align 1
  %1947 = lshr i32 %1931, 31
  %1948 = trunc i32 %1947 to i8
  store i8 %1948, i8* %33, align 1
  %1949 = lshr i32 %1930, 31
  %1950 = xor i32 %1947, %1949
  %1951 = add nuw nsw i32 %1950, %1947
  %1952 = icmp eq i32 %1951, 2
  %1953 = zext i1 %1952 to i8
  store i8 %1953, i8* %39, align 1
  %1954 = add i64 %1927, 15
  store i64 %1954, i64* %3, align 8
  store i32 %1931, i32* %1929, align 4
  %1955 = load i64, i64* %3, align 8
  %1956 = add i64 %1955, -370
  store i64 %1956, i64* %3, align 8
  br label %block_.L_4120ca

block_.L_412271:                                  ; preds = %block_.L_412028, %block_412104
  %1957 = phi i32 [ %1509, %block_.L_412028 ], [ %.pre124, %block_412104 ]
  %1958 = phi i64 [ %1539, %block_.L_412028 ], [ %.pre123, %block_412104 ]
  %MEMORY.27 = phi %struct.Memory* [ %MEMORY.20, %block_.L_412028 ], [ %call2_41226c, %block_412104 ]
  store i64 10, i64* %RAX.i1510, align 8
  store i64 9, i64* %RCX.i1526, align 8
  %1959 = icmp eq i32 %1957, 0
  %1960 = zext i1 %1959 to i8
  store i8 %1960, i8* %SIL.i1276, align 1
  %1961 = zext i1 %1959 to i64
  store i64 %1961, i64* %RDI.i1270.pre-phi, align 8
  %1962 = shl nuw nsw i8 %1960, 6
  %1963 = zext i8 %1962 to i64
  %1964 = add i64 %1963, ptrtoint (%G__0x85f170_type* @G__0x85f170 to i64)
  store i64 %1964, i64* %RDX.i1524, align 8
  %1965 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  store i8 0, i8* %14, align 1
  %1966 = and i32 %1965, 255
  %1967 = tail call i32 @llvm.ctpop.i32(i32 %1966)
  %1968 = trunc i32 %1967 to i8
  %1969 = and i8 %1968, 1
  %1970 = xor i8 %1969, 1
  store i8 %1970, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1971 = icmp eq i32 %1965, 0
  %1972 = zext i1 %1971 to i8
  store i8 %1972, i8* %30, align 1
  %1973 = lshr i32 %1965, 31
  %1974 = trunc i32 %1973 to i8
  store i8 %1974, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %1975 = load i32, i32* %ECX.i1496, align 4
  %1976 = zext i32 %1975 to i64
  %1977 = load i64, i64* %RAX.i1510, align 8
  %1978 = select i1 %1971, i64 %1977, i64 %1976
  %1979 = and i64 %1978, 4294967295
  store i64 %1979, i64* %RAX.i1510, align 8
  %sext156 = shl i64 %1978, 32
  %1980 = ashr exact i64 %sext156, 32
  store i64 %1980, i64* %R8.i1508, align 8
  %1981 = ashr exact i64 %sext156, 30
  %1982 = add i64 %1964, %1981
  %1983 = add i64 %1958, 73
  store i64 %1983, i64* %3, align 8
  %1984 = inttoptr i64 %1982 to i32*
  %1985 = load i32, i32* %1984, align 4
  store i8 0, i8* %14, align 1
  %1986 = and i32 %1985, 255
  %1987 = tail call i32 @llvm.ctpop.i32(i32 %1986)
  %1988 = trunc i32 %1987 to i8
  %1989 = and i8 %1988, 1
  %1990 = xor i8 %1989, 1
  store i8 %1990, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1991 = icmp eq i32 %1985, 0
  %1992 = zext i1 %1991 to i8
  store i8 %1992, i8* %30, align 1
  %1993 = lshr i32 %1985, 31
  %1994 = trunc i32 %1993 to i8
  store i8 %1994, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v161 = select i1 %1991, i64 79, i64 585
  %1995 = add i64 %1958, %.v161
  store i64 %1995, i64* %3, align 8
  br i1 %1991, label %block_4122c0, label %block_.L_4124ba

block_4122c0:                                     ; preds = %block_.L_412271
  store i64 9, i64* %RCX.i1526, align 8
  %1996 = select i1 %1971, i64 10, i64 9
  store i64 %1996, i64* %RAX.i1510, align 8
  %DL.i515 = bitcast %union.anon* %124 to i8*
  %1997 = zext i1 %1971 to i8
  store i8 %1997, i8* %DL.i515, align 1
  store i8 0, i8* %14, align 1
  %1998 = zext i1 %1971 to i32
  %1999 = tail call i32 @llvm.ctpop.i32(i32 %1998)
  %2000 = trunc i32 %1999 to i8
  %2001 = xor i8 %2000, 1
  store i8 %2001, i8* %21, align 1
  %2002 = xor i8 %1997, 1
  store i8 %2002, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2003 = zext i1 %1971 to i64
  store i64 %2003, i64* %RSI.i1522, align 8
  store i64 %1996, i64* %RDI.i1270.pre-phi, align 8
  %2004 = add i64 %1995, -64496
  %2005 = add i64 %1995, 48
  %2006 = load i64, i64* %6, align 8
  %2007 = add i64 %2006, -8
  %2008 = inttoptr i64 %2007 to i64*
  store i64 %2005, i64* %2008, align 8
  store i64 %2007, i64* %6, align 8
  store i64 %2004, i64* %3, align 8
  %call2_4122eb = tail call %struct.Memory* @sub_4026d0.DropaddHolding(%struct.State* nonnull %0, i64 %2004, %struct.Memory* %MEMORY.27)
  %2009 = load i64, i64* %RBP.i, align 8
  %2010 = add i64 %2009, -12304
  %2011 = load i64, i64* %3, align 8
  store i64 %2010, i64* %RDI.i1270.pre-phi, align 8
  %2012 = add i64 %2011, -42176
  %2013 = add i64 %2011, 12
  %2014 = load i64, i64* %6, align 8
  %2015 = add i64 %2014, -8
  %2016 = inttoptr i64 %2015 to i64*
  store i64 %2013, i64* %2016, align 8
  store i64 %2015, i64* %6, align 8
  store i64 %2012, i64* %3, align 8
  %call2_4122f7 = tail call %struct.Memory* @sub_407e30.gen(%struct.State* nonnull %0, i64 %2012, %struct.Memory* %call2_4122eb)
  %2017 = load i64, i64* %3, align 8
  %2018 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %2019 = zext i32 %2018 to i64
  store i64 %2019, i64* %RAX.i1510, align 8
  %2020 = load i64, i64* %RBP.i, align 8
  %2021 = add i64 %2020, -24596
  %2022 = add i64 %2017, 13
  store i64 %2022, i64* %3, align 8
  %2023 = inttoptr i64 %2021 to i32*
  store i32 %2018, i32* %2023, align 4
  %2024 = load i64, i64* %RBP.i, align 8
  %2025 = add i64 %2024, -24608
  %2026 = load i64, i64* %3, align 8
  %2027 = add i64 %2026, 10
  store i64 %2027, i64* %3, align 8
  %2028 = inttoptr i64 %2025 to i32*
  store i32 0, i32* %2028, align 4
  %AL.i487 = bitcast %union.anon* %126 to i8*
  %CL.i488 = bitcast %union.anon* %122 to i8*
  %.pre125 = load i64, i64* %3, align 8
  br label %block_.L_412313

block_.L_412313:                                  ; preds = %block_.L_412464, %block_4122c0
  %2029 = phi i64 [ %.pre125, %block_4122c0 ], [ %2412, %block_.L_412464 ]
  %MEMORY.28 = phi %struct.Memory* [ %call2_4122f7, %block_4122c0 ], [ %call2_412471, %block_.L_412464 ]
  store i64 0, i64* %RAX.i1510, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %CL.i488, align 1
  %2030 = load i64, i64* %RBP.i, align 8
  %2031 = add i64 %2030, -24608
  %2032 = add i64 %2029, 10
  store i64 %2032, i64* %3, align 8
  %2033 = inttoptr i64 %2031 to i32*
  %2034 = load i32, i32* %2033, align 4
  %2035 = zext i32 %2034 to i64
  store i64 %2035, i64* %RAX.i1510, align 8
  %2036 = add i64 %2030, -24596
  %2037 = add i64 %2029, 16
  store i64 %2037, i64* %3, align 8
  %2038 = inttoptr i64 %2036 to i32*
  %2039 = load i32, i32* %2038, align 4
  %2040 = sub i32 %2034, %2039
  %2041 = icmp ult i32 %2034, %2039
  %2042 = zext i1 %2041 to i8
  store i8 %2042, i8* %14, align 1
  %2043 = and i32 %2040, 255
  %2044 = tail call i32 @llvm.ctpop.i32(i32 %2043)
  %2045 = trunc i32 %2044 to i8
  %2046 = and i8 %2045, 1
  %2047 = xor i8 %2046, 1
  store i8 %2047, i8* %21, align 1
  %2048 = xor i32 %2039, %2034
  %2049 = xor i32 %2048, %2040
  %2050 = lshr i32 %2049, 4
  %2051 = trunc i32 %2050 to i8
  %2052 = and i8 %2051, 1
  store i8 %2052, i8* %27, align 1
  %2053 = icmp eq i32 %2040, 0
  %2054 = zext i1 %2053 to i8
  store i8 %2054, i8* %30, align 1
  %2055 = lshr i32 %2040, 31
  %2056 = trunc i32 %2055 to i8
  store i8 %2056, i8* %33, align 1
  %2057 = lshr i32 %2034, 31
  %2058 = lshr i32 %2039, 31
  %2059 = xor i32 %2058, %2057
  %2060 = xor i32 %2055, %2057
  %2061 = add nuw nsw i32 %2060, %2059
  %2062 = icmp eq i32 %2061, 2
  %2063 = zext i1 %2062 to i8
  store i8 %2063, i8* %39, align 1
  %2064 = add i64 %2030, -24669
  %2065 = add i64 %2029, 22
  store i64 %2065, i64* %3, align 8
  %2066 = inttoptr i64 %2064 to i8*
  store i8 0, i8* %2066, align 1
  %2067 = load i64, i64* %3, align 8
  %2068 = add i64 %2067, 22
  %2069 = add i64 %2067, 6
  %2070 = load i8, i8* %33, align 1
  %2071 = icmp ne i8 %2070, 0
  %2072 = load i8, i8* %39, align 1
  %2073 = icmp ne i8 %2072, 0
  %2074 = xor i1 %2071, %2073
  %2075 = select i1 %2074, i64 %2069, i64 %2068
  store i64 %2075, i64* %3, align 8
  br i1 %2074, label %block_41232f, label %block_.L_41233f

block_41232f:                                     ; preds = %block_.L_412313
  %2076 = load i64, i64* %RBP.i, align 8
  %2077 = add i64 %2076, -24640
  %2078 = add i64 %2075, 7
  store i64 %2078, i64* %3, align 8
  %2079 = inttoptr i64 %2077 to i32*
  %2080 = load i32, i32* %2079, align 4
  store i8 0, i8* %14, align 1
  %2081 = and i32 %2080, 255
  %2082 = tail call i32 @llvm.ctpop.i32(i32 %2081)
  %2083 = trunc i32 %2082 to i8
  %2084 = and i8 %2083, 1
  %2085 = xor i8 %2084, 1
  store i8 %2085, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2086 = icmp eq i32 %2080, 0
  %2087 = zext i1 %2086 to i8
  store i8 %2087, i8* %30, align 1
  %2088 = lshr i32 %2080, 31
  %2089 = trunc i32 %2088 to i8
  store i8 %2089, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 %2087, i8* %AL.i487, align 1
  %2090 = add i64 %2076, -24669
  %2091 = add i64 %2075, 16
  store i64 %2091, i64* %3, align 8
  %2092 = inttoptr i64 %2090 to i8*
  store i8 %2087, i8* %2092, align 1
  %.pre126 = load i64, i64* %3, align 8
  br label %block_.L_41233f

block_.L_41233f:                                  ; preds = %block_.L_412313, %block_41232f
  %2093 = phi i64 [ %2068, %block_.L_412313 ], [ %.pre126, %block_41232f ]
  %2094 = load i64, i64* %RBP.i, align 8
  %2095 = add i64 %2094, -24669
  %2096 = add i64 %2093, 6
  store i64 %2096, i64* %3, align 8
  %2097 = inttoptr i64 %2095 to i8*
  %2098 = load i8, i8* %2097, align 1
  store i8 %2098, i8* %AL.i487, align 1
  %2099 = and i8 %2098, 1
  store i8 0, i8* %14, align 1
  %2100 = zext i8 %2099 to i32
  %2101 = tail call i32 @llvm.ctpop.i32(i32 %2100)
  %2102 = trunc i32 %2101 to i8
  %2103 = xor i8 %2102, 1
  store i8 %2103, i8* %21, align 1
  %2104 = xor i8 %2099, 1
  store i8 %2104, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2105 = icmp eq i8 %2104, 0
  %.v194 = select i1 %2105, i64 19, i64 14
  %2106 = add i64 %2093, %.v194
  store i64 %2106, i64* %3, align 8
  br i1 %2105, label %block_.L_412352, label %block_41234d

block_41234d:                                     ; preds = %block_.L_41233f
  store i64 9, i64* %RCX.i1526, align 8
  %2107 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %2108 = icmp eq i32 %2107, 0
  %2109 = select i1 %2108, i64 10, i64 9
  store i64 %2109, i64* %RAX.i1510, align 8
  %2110 = zext i1 %2108 to i8
  store i8 %2110, i8* %DL.i515, align 1
  store i8 0, i8* %14, align 1
  %2111 = zext i1 %2108 to i32
  %2112 = tail call i32 @llvm.ctpop.i32(i32 %2111)
  %2113 = trunc i32 %2112 to i8
  %2114 = xor i8 %2113, 1
  store i8 %2114, i8* %21, align 1
  %2115 = xor i8 %2110, 1
  store i8 %2115, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2116 = zext i1 %2108 to i64
  store i64 %2116, i64* %RSI.i1522, align 8
  store i64 %2109, i64* %RDI.i1270.pre-phi, align 8
  %2117 = add i64 %2106, -64413
  %2118 = add i64 %2106, 365
  %2119 = load i64, i64* %6, align 8
  %2120 = add i64 %2119, -8
  %2121 = inttoptr i64 %2120 to i64*
  store i64 %2118, i64* %2121, align 8
  store i64 %2120, i64* %6, align 8
  store i64 %2117, i64* %3, align 8
  %call2_4124b5 = tail call %struct.Memory* @sub_4027b0.DropremoveHolding(%struct.State* nonnull %0, i64 %2117, %struct.Memory* %MEMORY.28)
  %.pre131 = load i64, i64* %3, align 8
  br label %block_.L_4124ba

block_.L_412352:                                  ; preds = %block_.L_41233f
  %2122 = add i64 %2094, -12304
  store i64 %2122, i64* %RDI.i1270.pre-phi, align 8
  %2123 = add i64 %2094, -24608
  %2124 = add i64 %2106, 13
  store i64 %2124, i64* %3, align 8
  %2125 = inttoptr i64 %2123 to i32*
  %2126 = load i32, i32* %2125, align 4
  %2127 = zext i32 %2126 to i64
  store i64 %2127, i64* %RSI.i1522, align 8
  %2128 = add i64 %2106, -27682
  %2129 = add i64 %2106, 18
  %2130 = load i64, i64* %6, align 8
  %2131 = add i64 %2130, -8
  %2132 = inttoptr i64 %2131 to i64*
  store i64 %2129, i64* %2132, align 8
  store i64 %2131, i64* %6, align 8
  store i64 %2128, i64* %3, align 8
  %call2_41235f = tail call %struct.Memory* @sub_40b730.make(%struct.State* nonnull %0, i64 %2128, %struct.Memory* %MEMORY.28)
  %2133 = load i64, i64* %RBP.i, align 8
  %2134 = add i64 %2133, -12304
  %2135 = load i64, i64* %3, align 8
  store i64 %2134, i64* %RDI.i1270.pre-phi, align 8
  %2136 = add i64 %2133, -24608
  %2137 = add i64 %2135, 13
  store i64 %2137, i64* %3, align 8
  %2138 = inttoptr i64 %2136 to i32*
  %2139 = load i32, i32* %2138, align 4
  %2140 = zext i32 %2139 to i64
  store i64 %2140, i64* %RSI.i1522, align 8
  %2141 = add i64 %2133, -24612
  %2142 = add i64 %2135, 19
  store i64 %2142, i64* %3, align 8
  %2143 = inttoptr i64 %2141 to i32*
  %2144 = load i32, i32* %2143, align 4
  %2145 = zext i32 %2144 to i64
  store i64 %2145, i64* %RDX.i1524, align 8
  %2146 = add i64 %2135, -48356
  %2147 = add i64 %2135, 24
  %2148 = load i64, i64* %6, align 8
  %2149 = add i64 %2148, -8
  %2150 = inttoptr i64 %2149 to i64*
  store i64 %2147, i64* %2150, align 8
  store i64 %2149, i64* %6, align 8
  store i64 %2146, i64* %3, align 8
  %call2_412377 = tail call %struct.Memory* @sub_406680.check_legal(%struct.State* nonnull %0, i64 %2146, %struct.Memory* %MEMORY.28)
  %2151 = load i32, i32* %EAX.i1519, align 4
  %2152 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2153 = and i32 %2151, 255
  %2154 = tail call i32 @llvm.ctpop.i32(i32 %2153)
  %2155 = trunc i32 %2154 to i8
  %2156 = and i8 %2155, 1
  %2157 = xor i8 %2156, 1
  store i8 %2157, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2158 = icmp eq i32 %2151, 0
  %2159 = zext i1 %2158 to i8
  store i8 %2159, i8* %30, align 1
  %2160 = lshr i32 %2151, 31
  %2161 = trunc i32 %2160 to i8
  store i8 %2161, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v195 = select i1 %2158, i64 232, i64 9
  %2162 = add i64 %2152, %.v195
  store i64 %2162, i64* %3, align 8
  %.pre130 = load i64, i64* %RBP.i, align 8
  br i1 %2158, label %block_.L_412464, label %block_412385

block_412385:                                     ; preds = %block_.L_412352
  %2163 = add i64 %.pre130, -24640
  %2164 = add i64 %2162, 10
  store i64 %2164, i64* %3, align 8
  %2165 = inttoptr i64 %2163 to i32*
  store i32 3, i32* %2165, align 4
  %2166 = load i64, i64* %3, align 8
  %2167 = add i64 %2166, -35503
  %2168 = add i64 %2166, 5
  %2169 = load i64, i64* %6, align 8
  %2170 = add i64 %2169, -8
  %2171 = inttoptr i64 %2170 to i64*
  store i64 %2168, i64* %2171, align 8
  store i64 %2170, i64* %6, align 8
  store i64 %2167, i64* %3, align 8
  %call2_41238f = tail call %struct.Memory* @sub_4098e0.in_check(%struct.State* nonnull %0, i64 %2167, %struct.Memory* %MEMORY.28)
  %2172 = load i64, i64* %RBP.i, align 8
  %2173 = add i64 %2172, -24592
  %2174 = load i64, i64* %3, align 8
  store i64 %2173, i64* %RDI.i1270.pre-phi, align 8
  %2175 = add i64 %2172, -24616
  %2176 = load i32, i32* %EAX.i1519, align 4
  %2177 = add i64 %2174, 13
  store i64 %2177, i64* %3, align 8
  %2178 = inttoptr i64 %2175 to i32*
  store i32 %2176, i32* %2178, align 4
  %2179 = load i64, i64* %3, align 8
  %2180 = add i64 %2179, -42353
  %2181 = add i64 %2179, 5
  %2182 = load i64, i64* %6, align 8
  %2183 = add i64 %2182, -8
  %2184 = inttoptr i64 %2183 to i64*
  store i64 %2181, i64* %2184, align 8
  store i64 %2183, i64* %6, align 8
  store i64 %2180, i64* %3, align 8
  %call2_4123a1 = tail call %struct.Memory* @sub_407e30.gen(%struct.State* nonnull %0, i64 %2180, %struct.Memory* %MEMORY.28)
  %2185 = load i64, i64* %3, align 8
  %2186 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %2187 = zext i32 %2186 to i64
  store i64 %2187, i64* %RAX.i1510, align 8
  %2188 = load i64, i64* %RBP.i, align 8
  %2189 = add i64 %2188, -24600
  %2190 = add i64 %2185, 13
  store i64 %2190, i64* %3, align 8
  %2191 = inttoptr i64 %2189 to i32*
  store i32 %2186, i32* %2191, align 4
  %2192 = load i64, i64* %RBP.i, align 8
  %2193 = add i64 %2192, -24604
  %2194 = load i64, i64* %3, align 8
  %2195 = add i64 %2194, 10
  store i64 %2195, i64* %3, align 8
  %2196 = inttoptr i64 %2193 to i32*
  store i32 0, i32* %2196, align 4
  %.pre127 = load i64, i64* %3, align 8
  br label %block_.L_4123bd

block_.L_4123bd:                                  ; preds = %block_.L_412439, %block_412385
  %2197 = phi i64 [ %2367, %block_.L_412439 ], [ %.pre127, %block_412385 ]
  store i64 0, i64* %RAX.i1510, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %CL.i488, align 1
  %2198 = load i64, i64* %RBP.i, align 8
  %2199 = add i64 %2198, -24604
  %2200 = add i64 %2197, 10
  store i64 %2200, i64* %3, align 8
  %2201 = inttoptr i64 %2199 to i32*
  %2202 = load i32, i32* %2201, align 4
  %2203 = zext i32 %2202 to i64
  store i64 %2203, i64* %RAX.i1510, align 8
  %2204 = add i64 %2198, -24600
  %2205 = add i64 %2197, 16
  store i64 %2205, i64* %3, align 8
  %2206 = inttoptr i64 %2204 to i32*
  %2207 = load i32, i32* %2206, align 4
  %2208 = sub i32 %2202, %2207
  %2209 = icmp ult i32 %2202, %2207
  %2210 = zext i1 %2209 to i8
  store i8 %2210, i8* %14, align 1
  %2211 = and i32 %2208, 255
  %2212 = tail call i32 @llvm.ctpop.i32(i32 %2211)
  %2213 = trunc i32 %2212 to i8
  %2214 = and i8 %2213, 1
  %2215 = xor i8 %2214, 1
  store i8 %2215, i8* %21, align 1
  %2216 = xor i32 %2207, %2202
  %2217 = xor i32 %2216, %2208
  %2218 = lshr i32 %2217, 4
  %2219 = trunc i32 %2218 to i8
  %2220 = and i8 %2219, 1
  store i8 %2220, i8* %27, align 1
  %2221 = icmp eq i32 %2208, 0
  %2222 = zext i1 %2221 to i8
  store i8 %2222, i8* %30, align 1
  %2223 = lshr i32 %2208, 31
  %2224 = trunc i32 %2223 to i8
  store i8 %2224, i8* %33, align 1
  %2225 = lshr i32 %2202, 31
  %2226 = lshr i32 %2207, 31
  %2227 = xor i32 %2226, %2225
  %2228 = xor i32 %2223, %2225
  %2229 = add nuw nsw i32 %2228, %2227
  %2230 = icmp eq i32 %2229, 2
  %2231 = zext i1 %2230 to i8
  store i8 %2231, i8* %39, align 1
  %2232 = add i64 %2198, -24670
  %2233 = add i64 %2197, 22
  store i64 %2233, i64* %3, align 8
  %2234 = inttoptr i64 %2232 to i8*
  store i8 0, i8* %2234, align 1
  %2235 = load i64, i64* %3, align 8
  %2236 = add i64 %2235, 22
  %2237 = add i64 %2235, 6
  %2238 = load i8, i8* %33, align 1
  %2239 = icmp ne i8 %2238, 0
  %2240 = load i8, i8* %39, align 1
  %2241 = icmp ne i8 %2240, 0
  %2242 = xor i1 %2239, %2241
  %2243 = select i1 %2242, i64 %2237, i64 %2236
  store i64 %2243, i64* %3, align 8
  br i1 %2242, label %block_4123d9, label %block_.L_4123e9

block_4123d9:                                     ; preds = %block_.L_4123bd
  %2244 = load i64, i64* %RBP.i, align 8
  %2245 = add i64 %2244, -24640
  %2246 = add i64 %2243, 7
  store i64 %2246, i64* %3, align 8
  %2247 = inttoptr i64 %2245 to i32*
  %2248 = load i32, i32* %2247, align 4
  store i8 0, i8* %14, align 1
  %2249 = and i32 %2248, 255
  %2250 = tail call i32 @llvm.ctpop.i32(i32 %2249)
  %2251 = trunc i32 %2250 to i8
  %2252 = and i8 %2251, 1
  %2253 = xor i8 %2252, 1
  store i8 %2253, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2254 = icmp eq i32 %2248, 0
  %2255 = zext i1 %2254 to i8
  store i8 %2255, i8* %30, align 1
  %2256 = lshr i32 %2248, 31
  %2257 = trunc i32 %2256 to i8
  store i8 %2257, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2258 = xor i1 %2254, true
  %2259 = zext i1 %2258 to i8
  store i8 %2259, i8* %AL.i487, align 1
  %2260 = add i64 %2244, -24670
  %2261 = add i64 %2243, 16
  store i64 %2261, i64* %3, align 8
  %2262 = inttoptr i64 %2260 to i8*
  store i8 %2259, i8* %2262, align 1
  %.pre128 = load i64, i64* %3, align 8
  br label %block_.L_4123e9

block_.L_4123e9:                                  ; preds = %block_.L_4123bd, %block_4123d9
  %2263 = phi i64 [ %2236, %block_.L_4123bd ], [ %.pre128, %block_4123d9 ]
  %2264 = load i64, i64* %RBP.i, align 8
  %2265 = add i64 %2264, -24670
  %2266 = add i64 %2263, 6
  store i64 %2266, i64* %3, align 8
  %2267 = inttoptr i64 %2265 to i8*
  %2268 = load i8, i8* %2267, align 1
  store i8 %2268, i8* %AL.i487, align 1
  %2269 = and i8 %2268, 1
  store i8 0, i8* %14, align 1
  %2270 = zext i8 %2269 to i32
  %2271 = tail call i32 @llvm.ctpop.i32(i32 %2270)
  %2272 = trunc i32 %2271 to i8
  %2273 = xor i8 %2272, 1
  store i8 %2273, i8* %21, align 1
  %2274 = xor i8 %2269, 1
  store i8 %2274, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2275 = icmp eq i8 %2274, 0
  %.v196 = select i1 %2275, i64 19, i64 14
  %2276 = add i64 %2263, %.v196
  store i64 %2276, i64* %3, align 8
  br i1 %2275, label %block_.L_4123fc, label %block_4123f7

block_4123f7:                                     ; preds = %block_.L_4123e9
  %2277 = add i64 %2276, 109
  store i64 %2277, i64* %3, align 8
  br label %block_.L_412464

block_.L_4123fc:                                  ; preds = %block_.L_4123e9
  %2278 = add i64 %2264, -24592
  store i64 %2278, i64* %RDI.i1270.pre-phi, align 8
  %2279 = add i64 %2264, -24604
  %2280 = add i64 %2276, 13
  store i64 %2280, i64* %3, align 8
  %2281 = inttoptr i64 %2279 to i32*
  %2282 = load i32, i32* %2281, align 4
  %2283 = zext i32 %2282 to i64
  store i64 %2283, i64* %RSI.i1522, align 8
  %2284 = add i64 %2276, -27852
  %2285 = add i64 %2276, 18
  %2286 = load i64, i64* %6, align 8
  %2287 = add i64 %2286, -8
  %2288 = inttoptr i64 %2287 to i64*
  store i64 %2285, i64* %2288, align 8
  store i64 %2287, i64* %6, align 8
  store i64 %2284, i64* %3, align 8
  %call2_412409 = tail call %struct.Memory* @sub_40b730.make(%struct.State* nonnull %0, i64 %2284, %struct.Memory* %MEMORY.28)
  %2289 = load i64, i64* %RBP.i, align 8
  %2290 = add i64 %2289, -24592
  %2291 = load i64, i64* %3, align 8
  store i64 %2290, i64* %RDI.i1270.pre-phi, align 8
  %2292 = add i64 %2289, -24604
  %2293 = add i64 %2291, 13
  store i64 %2293, i64* %3, align 8
  %2294 = inttoptr i64 %2292 to i32*
  %2295 = load i32, i32* %2294, align 4
  %2296 = zext i32 %2295 to i64
  store i64 %2296, i64* %RSI.i1522, align 8
  %2297 = add i64 %2289, -24616
  %2298 = add i64 %2291, 19
  store i64 %2298, i64* %3, align 8
  %2299 = inttoptr i64 %2297 to i32*
  %2300 = load i32, i32* %2299, align 4
  %2301 = zext i32 %2300 to i64
  store i64 %2301, i64* %RDX.i1524, align 8
  %2302 = add i64 %2291, -48526
  %2303 = add i64 %2291, 24
  %2304 = load i64, i64* %6, align 8
  %2305 = add i64 %2304, -8
  %2306 = inttoptr i64 %2305 to i64*
  store i64 %2303, i64* %2306, align 8
  store i64 %2305, i64* %6, align 8
  store i64 %2302, i64* %3, align 8
  %call2_412421 = tail call %struct.Memory* @sub_406680.check_legal(%struct.State* nonnull %0, i64 %2302, %struct.Memory* %MEMORY.28)
  %2307 = load i32, i32* %EAX.i1519, align 4
  %2308 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2309 = and i32 %2307, 255
  %2310 = tail call i32 @llvm.ctpop.i32(i32 %2309)
  %2311 = trunc i32 %2310 to i8
  %2312 = and i8 %2311, 1
  %2313 = xor i8 %2312, 1
  store i8 %2313, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2314 = icmp eq i32 %2307, 0
  %2315 = zext i1 %2314 to i8
  store i8 %2315, i8* %30, align 1
  %2316 = lshr i32 %2307, 31
  %2317 = trunc i32 %2316 to i8
  store i8 %2317, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v197 = select i1 %2314, i64 19, i64 9
  %2318 = add i64 %2308, %.v197
  store i64 %2318, i64* %3, align 8
  br i1 %2314, label %block_.L_412439, label %block_41242f

block_41242f:                                     ; preds = %block_.L_4123fc
  %2319 = load i64, i64* %RBP.i, align 8
  %2320 = add i64 %2319, -24640
  %2321 = add i64 %2318, 10
  store i64 %2321, i64* %3, align 8
  %2322 = inttoptr i64 %2320 to i32*
  store i32 0, i32* %2322, align 4
  %.pre129 = load i64, i64* %3, align 8
  br label %block_.L_412439

block_.L_412439:                                  ; preds = %block_41242f, %block_.L_4123fc
  %2323 = phi i64 [ %.pre129, %block_41242f ], [ %2318, %block_.L_4123fc ]
  %2324 = load i64, i64* %RBP.i, align 8
  %2325 = add i64 %2324, -24592
  store i64 %2325, i64* %RDI.i1270.pre-phi, align 8
  %2326 = add i64 %2324, -24604
  %2327 = add i64 %2323, 13
  store i64 %2327, i64* %3, align 8
  %2328 = inttoptr i64 %2326 to i32*
  %2329 = load i32, i32* %2328, align 4
  %2330 = zext i32 %2329 to i64
  store i64 %2330, i64* %RSI.i1522, align 8
  %2331 = add i64 %2323, -23705
  %2332 = add i64 %2323, 18
  %2333 = load i64, i64* %6, align 8
  %2334 = add i64 %2333, -8
  %2335 = inttoptr i64 %2334 to i64*
  store i64 %2332, i64* %2335, align 8
  store i64 %2334, i64* %6, align 8
  store i64 %2331, i64* %3, align 8
  %call2_412446 = tail call %struct.Memory* @sub_40c7a0.unmake(%struct.State* nonnull %0, i64 %2331, %struct.Memory* %MEMORY.28)
  %2336 = load i64, i64* %RBP.i, align 8
  %2337 = add i64 %2336, -24604
  %2338 = load i64, i64* %3, align 8
  %2339 = add i64 %2338, 6
  store i64 %2339, i64* %3, align 8
  %2340 = inttoptr i64 %2337 to i32*
  %2341 = load i32, i32* %2340, align 4
  %2342 = add i32 %2341, 1
  %2343 = zext i32 %2342 to i64
  store i64 %2343, i64* %RAX.i1510, align 8
  %2344 = icmp eq i32 %2341, -1
  %2345 = icmp eq i32 %2342, 0
  %2346 = or i1 %2344, %2345
  %2347 = zext i1 %2346 to i8
  store i8 %2347, i8* %14, align 1
  %2348 = and i32 %2342, 255
  %2349 = tail call i32 @llvm.ctpop.i32(i32 %2348)
  %2350 = trunc i32 %2349 to i8
  %2351 = and i8 %2350, 1
  %2352 = xor i8 %2351, 1
  store i8 %2352, i8* %21, align 1
  %2353 = xor i32 %2342, %2341
  %2354 = lshr i32 %2353, 4
  %2355 = trunc i32 %2354 to i8
  %2356 = and i8 %2355, 1
  store i8 %2356, i8* %27, align 1
  %2357 = zext i1 %2345 to i8
  store i8 %2357, i8* %30, align 1
  %2358 = lshr i32 %2342, 31
  %2359 = trunc i32 %2358 to i8
  store i8 %2359, i8* %33, align 1
  %2360 = lshr i32 %2341, 31
  %2361 = xor i32 %2358, %2360
  %2362 = add nuw nsw i32 %2361, %2358
  %2363 = icmp eq i32 %2362, 2
  %2364 = zext i1 %2363 to i8
  store i8 %2364, i8* %39, align 1
  %2365 = add i64 %2338, 15
  store i64 %2365, i64* %3, align 8
  store i32 %2342, i32* %2340, align 4
  %2366 = load i64, i64* %3, align 8
  %2367 = add i64 %2366, -157
  store i64 %2367, i64* %3, align 8
  br label %block_.L_4123bd

block_.L_412464:                                  ; preds = %block_.L_412352, %block_4123f7
  %2368 = phi i64 [ %2277, %block_4123f7 ], [ %2162, %block_.L_412352 ]
  %2369 = phi i64 [ %2264, %block_4123f7 ], [ %.pre130, %block_.L_412352 ]
  %2370 = add i64 %2369, -12304
  store i64 %2370, i64* %RDI.i1270.pre-phi, align 8
  %2371 = add i64 %2369, -24608
  %2372 = add i64 %2368, 13
  store i64 %2372, i64* %3, align 8
  %2373 = inttoptr i64 %2371 to i32*
  %2374 = load i32, i32* %2373, align 4
  %2375 = zext i32 %2374 to i64
  store i64 %2375, i64* %RSI.i1522, align 8
  %2376 = add i64 %2368, -23748
  %2377 = add i64 %2368, 18
  %2378 = load i64, i64* %6, align 8
  %2379 = add i64 %2378, -8
  %2380 = inttoptr i64 %2379 to i64*
  store i64 %2377, i64* %2380, align 8
  store i64 %2379, i64* %6, align 8
  store i64 %2376, i64* %3, align 8
  %call2_412471 = tail call %struct.Memory* @sub_40c7a0.unmake(%struct.State* nonnull %0, i64 %2376, %struct.Memory* %MEMORY.28)
  %2381 = load i64, i64* %RBP.i, align 8
  %2382 = add i64 %2381, -24608
  %2383 = load i64, i64* %3, align 8
  %2384 = add i64 %2383, 6
  store i64 %2384, i64* %3, align 8
  %2385 = inttoptr i64 %2382 to i32*
  %2386 = load i32, i32* %2385, align 4
  %2387 = add i32 %2386, 1
  %2388 = zext i32 %2387 to i64
  store i64 %2388, i64* %RAX.i1510, align 8
  %2389 = icmp eq i32 %2386, -1
  %2390 = icmp eq i32 %2387, 0
  %2391 = or i1 %2389, %2390
  %2392 = zext i1 %2391 to i8
  store i8 %2392, i8* %14, align 1
  %2393 = and i32 %2387, 255
  %2394 = tail call i32 @llvm.ctpop.i32(i32 %2393)
  %2395 = trunc i32 %2394 to i8
  %2396 = and i8 %2395, 1
  %2397 = xor i8 %2396, 1
  store i8 %2397, i8* %21, align 1
  %2398 = xor i32 %2387, %2386
  %2399 = lshr i32 %2398, 4
  %2400 = trunc i32 %2399 to i8
  %2401 = and i8 %2400, 1
  store i8 %2401, i8* %27, align 1
  %2402 = zext i1 %2390 to i8
  store i8 %2402, i8* %30, align 1
  %2403 = lshr i32 %2387, 31
  %2404 = trunc i32 %2403 to i8
  store i8 %2404, i8* %33, align 1
  %2405 = lshr i32 %2386, 31
  %2406 = xor i32 %2403, %2405
  %2407 = add nuw nsw i32 %2406, %2403
  %2408 = icmp eq i32 %2407, 2
  %2409 = zext i1 %2408 to i8
  store i8 %2409, i8* %39, align 1
  %2410 = add i64 %2383, 15
  store i64 %2410, i64* %3, align 8
  store i32 %2387, i32* %2385, align 4
  %2411 = load i64, i64* %3, align 8
  %2412 = add i64 %2411, -370
  store i64 %2412, i64* %3, align 8
  br label %block_.L_412313

block_.L_4124ba:                                  ; preds = %block_.L_412271, %block_41234d
  %2413 = phi i64 [ %1995, %block_.L_412271 ], [ %.pre131, %block_41234d ]
  %MEMORY.34 = phi %struct.Memory* [ %MEMORY.27, %block_.L_412271 ], [ %call2_4124b5, %block_41234d ]
  %2414 = load i64, i64* %RBP.i, align 8
  %2415 = add i64 %2414, -24624
  %2416 = add i64 %2413, 6
  store i64 %2416, i64* %3, align 8
  %2417 = inttoptr i64 %2415 to i32*
  %2418 = load i32, i32* %2417, align 4
  %2419 = zext i32 %2418 to i64
  store i64 %2419, i64* %RAX.i1510, align 8
  %2420 = load i32, i32* bitcast (%G_0x62daf0_type* @G_0x62daf0 to i32*), align 8
  %2421 = sub i32 %2418, %2420
  %2422 = icmp ult i32 %2418, %2420
  %2423 = zext i1 %2422 to i8
  store i8 %2423, i8* %14, align 1
  %2424 = and i32 %2421, 255
  %2425 = tail call i32 @llvm.ctpop.i32(i32 %2424)
  %2426 = trunc i32 %2425 to i8
  %2427 = and i8 %2426, 1
  %2428 = xor i8 %2427, 1
  store i8 %2428, i8* %21, align 1
  %2429 = xor i32 %2420, %2418
  %2430 = xor i32 %2429, %2421
  %2431 = lshr i32 %2430, 4
  %2432 = trunc i32 %2431 to i8
  %2433 = and i8 %2432, 1
  store i8 %2433, i8* %27, align 1
  %2434 = icmp eq i32 %2421, 0
  %2435 = zext i1 %2434 to i8
  store i8 %2435, i8* %30, align 1
  %2436 = lshr i32 %2421, 31
  %2437 = trunc i32 %2436 to i8
  store i8 %2437, i8* %33, align 1
  %2438 = lshr i32 %2418, 31
  %2439 = lshr i32 %2420, 31
  %2440 = xor i32 %2439, %2438
  %2441 = xor i32 %2436, %2438
  %2442 = add nuw nsw i32 %2441, %2440
  %2443 = icmp eq i32 %2442, 2
  %2444 = zext i1 %2443 to i8
  store i8 %2444, i8* %39, align 1
  %.v162 = select i1 %2434, i64 117, i64 19
  %2445 = add i64 %2413, %.v162
  store i64 %2445, i64* %3, align 8
  br i1 %2434, label %block_.L_41252f, label %block_4124cd

block_4124cd:                                     ; preds = %block_.L_4124ba
  %2446 = add i64 %2445, 7
  store i64 %2446, i64* %3, align 8
  %2447 = load i32, i32* %2417, align 4
  %2448 = add i32 %2447, -3
  %2449 = icmp ult i32 %2447, 3
  %2450 = zext i1 %2449 to i8
  store i8 %2450, i8* %14, align 1
  %2451 = and i32 %2448, 255
  %2452 = tail call i32 @llvm.ctpop.i32(i32 %2451)
  %2453 = trunc i32 %2452 to i8
  %2454 = and i8 %2453, 1
  %2455 = xor i8 %2454, 1
  store i8 %2455, i8* %21, align 1
  %2456 = xor i32 %2448, %2447
  %2457 = lshr i32 %2456, 4
  %2458 = trunc i32 %2457 to i8
  %2459 = and i8 %2458, 1
  store i8 %2459, i8* %27, align 1
  %2460 = icmp eq i32 %2448, 0
  %2461 = zext i1 %2460 to i8
  store i8 %2461, i8* %30, align 1
  %2462 = lshr i32 %2448, 31
  %2463 = trunc i32 %2462 to i8
  store i8 %2463, i8* %33, align 1
  %2464 = lshr i32 %2447, 31
  %2465 = xor i32 %2462, %2464
  %2466 = add nuw nsw i32 %2465, %2464
  %2467 = icmp eq i32 %2466, 2
  %2468 = zext i1 %2467 to i8
  store i8 %2468, i8* %39, align 1
  %.v163 = select i1 %2460, i64 13, i64 28
  %2469 = add i64 %2445, %.v163
  store i64 %2469, i64* %3, align 8
  br i1 %2460, label %block_4124da, label %block_.L_4124e9

block_4124da:                                     ; preds = %block_4124cd
  %2470 = add i64 %2414, -24644
  %2471 = add i64 %2469, 10
  store i64 %2471, i64* %3, align 8
  %2472 = inttoptr i64 %2470 to i32*
  store i32 1, i32* %2472, align 4
  %2473 = load i64, i64* %3, align 8
  %2474 = add i64 %2473, 70
  br label %block_.L_41252a

block_.L_4124e9:                                  ; preds = %block_4124cd
  %2475 = add i64 %2469, 7
  store i64 %2475, i64* %3, align 8
  %2476 = load i32, i32* %2417, align 4
  store i8 0, i8* %14, align 1
  %2477 = and i32 %2476, 255
  %2478 = tail call i32 @llvm.ctpop.i32(i32 %2477)
  %2479 = trunc i32 %2478 to i8
  %2480 = and i8 %2479, 1
  %2481 = xor i8 %2480, 1
  store i8 %2481, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2482 = icmp eq i32 %2476, 0
  %2483 = zext i1 %2482 to i8
  store i8 %2483, i8* %30, align 1
  %2484 = lshr i32 %2476, 31
  %2485 = trunc i32 %2484 to i8
  store i8 %2485, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v164 = select i1 %2482, i64 13, i64 60
  %2486 = add i64 %2469, %.v164
  store i64 %2486, i64* %3, align 8
  br i1 %2482, label %block_4124f6, label %block_.L_412525

block_4124f6:                                     ; preds = %block_.L_4124e9
  store i8 0, i8* %14, align 1
  %2487 = and i32 %2420, 255
  %2488 = tail call i32 @llvm.ctpop.i32(i32 %2487)
  %2489 = trunc i32 %2488 to i8
  %2490 = and i8 %2489, 1
  %2491 = xor i8 %2490, 1
  store i8 %2491, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2492 = icmp eq i32 %2420, 0
  %2493 = zext i1 %2492 to i8
  store i8 %2493, i8* %30, align 1
  %2494 = trunc i32 %2439 to i8
  store i8 %2494, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v193 = select i1 %2492, i64 14, i64 47
  %2495 = add i64 %2486, %.v193
  store i64 %2495, i64* %3, align 8
  br i1 %2492, label %block_412504, label %block_.L_412525

block_412504:                                     ; preds = %block_4124f6
  store i64 ptrtoint (%G__0x428cdb_type* @G__0x428cdb to i64), i64* %RDI.i1270.pre-phi, align 8
  %AL.i304 = bitcast %union.anon* %126 to i8*
  store i8 0, i8* %AL.i304, align 1
  %2496 = add i64 %2495, -71764
  %2497 = add i64 %2495, 17
  %2498 = load i64, i64* %6, align 8
  %2499 = add i64 %2498, -8
  %2500 = inttoptr i64 %2499 to i64*
  store i64 %2497, i64* %2500, align 8
  store i64 %2499, i64* %6, align 8
  store i64 %2496, i64* %3, align 8
  %2501 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.34)
  %2502 = load i64, i64* %RBP.i, align 8
  %2503 = add i64 %2502, -24620
  %2504 = load i64, i64* %3, align 8
  %2505 = add i64 %2504, 10
  store i64 %2505, i64* %3, align 8
  %2506 = inttoptr i64 %2503 to i32*
  store i32 1, i32* %2506, align 4
  %2507 = load i64, i64* %RBP.i, align 8
  %2508 = add i64 %2507, -24676
  %2509 = load i32, i32* %EAX.i1519, align 4
  %2510 = load i64, i64* %3, align 8
  %2511 = add i64 %2510, 6
  store i64 %2511, i64* %3, align 8
  %2512 = inttoptr i64 %2508 to i32*
  store i32 %2509, i32* %2512, align 4
  %.pre132 = load i64, i64* %3, align 8
  br label %block_.L_412525

block_.L_412525:                                  ; preds = %block_4124f6, %block_.L_4124e9, %block_412504
  %2513 = phi i64 [ %2486, %block_.L_4124e9 ], [ %2495, %block_4124f6 ], [ %.pre132, %block_412504 ]
  %MEMORY.35 = phi %struct.Memory* [ %MEMORY.34, %block_.L_4124e9 ], [ %MEMORY.34, %block_4124f6 ], [ %2501, %block_412504 ]
  %2514 = add i64 %2513, 5
  store i64 %2514, i64* %3, align 8
  br label %block_.L_41252a

block_.L_41252a:                                  ; preds = %block_.L_412525, %block_4124da
  %storemerge = phi i64 [ %2474, %block_4124da ], [ %2514, %block_.L_412525 ]
  %MEMORY.36 = phi %struct.Memory* [ %MEMORY.34, %block_4124da ], [ %MEMORY.35, %block_.L_412525 ]
  %2515 = add i64 %storemerge, 5
  store i64 %2515, i64* %3, align 8
  %.pre133 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41252f

block_.L_41252f:                                  ; preds = %block_.L_41252a, %block_.L_4124ba
  %2516 = phi i64 [ %2445, %block_.L_4124ba ], [ %2515, %block_.L_41252a ]
  %2517 = phi i64 [ %2414, %block_.L_4124ba ], [ %.pre133, %block_.L_41252a ]
  %MEMORY.37 = phi %struct.Memory* [ %MEMORY.34, %block_.L_4124ba ], [ %MEMORY.36, %block_.L_41252a ]
  %2518 = add i64 %2517, -24628
  %2519 = add i64 %2516, 6
  store i64 %2519, i64* %3, align 8
  %2520 = inttoptr i64 %2518 to i32*
  %2521 = load i32, i32* %2520, align 4
  %2522 = zext i32 %2521 to i64
  store i64 %2522, i64* %RAX.i1510, align 8
  %2523 = load i32, i32* bitcast (%G_0x62daf4_type* @G_0x62daf4 to i32*), align 8
  %2524 = sub i32 %2521, %2523
  %2525 = icmp ult i32 %2521, %2523
  %2526 = zext i1 %2525 to i8
  store i8 %2526, i8* %14, align 1
  %2527 = and i32 %2524, 255
  %2528 = tail call i32 @llvm.ctpop.i32(i32 %2527)
  %2529 = trunc i32 %2528 to i8
  %2530 = and i8 %2529, 1
  %2531 = xor i8 %2530, 1
  store i8 %2531, i8* %21, align 1
  %2532 = xor i32 %2523, %2521
  %2533 = xor i32 %2532, %2524
  %2534 = lshr i32 %2533, 4
  %2535 = trunc i32 %2534 to i8
  %2536 = and i8 %2535, 1
  store i8 %2536, i8* %27, align 1
  %2537 = icmp eq i32 %2524, 0
  %2538 = zext i1 %2537 to i8
  store i8 %2538, i8* %30, align 1
  %2539 = lshr i32 %2524, 31
  %2540 = trunc i32 %2539 to i8
  store i8 %2540, i8* %33, align 1
  %2541 = lshr i32 %2521, 31
  %2542 = lshr i32 %2523, 31
  %2543 = xor i32 %2542, %2541
  %2544 = xor i32 %2539, %2541
  %2545 = add nuw nsw i32 %2544, %2543
  %2546 = icmp eq i32 %2545, 2
  %2547 = zext i1 %2546 to i8
  store i8 %2547, i8* %39, align 1
  %.v165 = select i1 %2537, i64 117, i64 19
  %2548 = add i64 %2516, %.v165
  store i64 %2548, i64* %3, align 8
  br i1 %2537, label %block_.L_4125a4, label %block_412542

block_412542:                                     ; preds = %block_.L_41252f
  %2549 = add i64 %2548, 7
  store i64 %2549, i64* %3, align 8
  %2550 = load i32, i32* %2520, align 4
  %2551 = add i32 %2550, -3
  %2552 = icmp ult i32 %2550, 3
  %2553 = zext i1 %2552 to i8
  store i8 %2553, i8* %14, align 1
  %2554 = and i32 %2551, 255
  %2555 = tail call i32 @llvm.ctpop.i32(i32 %2554)
  %2556 = trunc i32 %2555 to i8
  %2557 = and i8 %2556, 1
  %2558 = xor i8 %2557, 1
  store i8 %2558, i8* %21, align 1
  %2559 = xor i32 %2551, %2550
  %2560 = lshr i32 %2559, 4
  %2561 = trunc i32 %2560 to i8
  %2562 = and i8 %2561, 1
  store i8 %2562, i8* %27, align 1
  %2563 = icmp eq i32 %2551, 0
  %2564 = zext i1 %2563 to i8
  store i8 %2564, i8* %30, align 1
  %2565 = lshr i32 %2551, 31
  %2566 = trunc i32 %2565 to i8
  store i8 %2566, i8* %33, align 1
  %2567 = lshr i32 %2550, 31
  %2568 = xor i32 %2565, %2567
  %2569 = add nuw nsw i32 %2568, %2567
  %2570 = icmp eq i32 %2569, 2
  %2571 = zext i1 %2570 to i8
  store i8 %2571, i8* %39, align 1
  %.v166 = select i1 %2563, i64 13, i64 28
  %2572 = add i64 %2548, %.v166
  store i64 %2572, i64* %3, align 8
  br i1 %2563, label %block_41254f, label %block_.L_41255e

block_41254f:                                     ; preds = %block_412542
  %2573 = add i64 %2517, -24648
  %2574 = add i64 %2572, 10
  store i64 %2574, i64* %3, align 8
  %2575 = inttoptr i64 %2573 to i32*
  store i32 1, i32* %2575, align 4
  %2576 = load i64, i64* %3, align 8
  %2577 = add i64 %2576, 70
  br label %block_.L_41259f

block_.L_41255e:                                  ; preds = %block_412542
  %2578 = add i64 %2572, 7
  store i64 %2578, i64* %3, align 8
  %2579 = load i32, i32* %2520, align 4
  store i8 0, i8* %14, align 1
  %2580 = and i32 %2579, 255
  %2581 = tail call i32 @llvm.ctpop.i32(i32 %2580)
  %2582 = trunc i32 %2581 to i8
  %2583 = and i8 %2582, 1
  %2584 = xor i8 %2583, 1
  store i8 %2584, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2585 = icmp eq i32 %2579, 0
  %2586 = zext i1 %2585 to i8
  store i8 %2586, i8* %30, align 1
  %2587 = lshr i32 %2579, 31
  %2588 = trunc i32 %2587 to i8
  store i8 %2588, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v167 = select i1 %2585, i64 13, i64 60
  %2589 = add i64 %2572, %.v167
  store i64 %2589, i64* %3, align 8
  br i1 %2585, label %block_41256b, label %block_.L_41259a

block_41256b:                                     ; preds = %block_.L_41255e
  store i8 0, i8* %14, align 1
  %2590 = and i32 %2523, 255
  %2591 = tail call i32 @llvm.ctpop.i32(i32 %2590)
  %2592 = trunc i32 %2591 to i8
  %2593 = and i8 %2592, 1
  %2594 = xor i8 %2593, 1
  store i8 %2594, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2595 = icmp eq i32 %2523, 0
  %2596 = zext i1 %2595 to i8
  store i8 %2596, i8* %30, align 1
  %2597 = trunc i32 %2542 to i8
  store i8 %2597, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v192 = select i1 %2595, i64 14, i64 47
  %2598 = add i64 %2589, %.v192
  store i64 %2598, i64* %3, align 8
  br i1 %2595, label %block_412579, label %block_.L_41259a

block_412579:                                     ; preds = %block_41256b
  store i64 ptrtoint (%G__0x428d04_type* @G__0x428d04 to i64), i64* %RDI.i1270.pre-phi, align 8
  %AL.i273 = bitcast %union.anon* %126 to i8*
  store i8 0, i8* %AL.i273, align 1
  %2599 = add i64 %2598, -71881
  %2600 = add i64 %2598, 17
  %2601 = load i64, i64* %6, align 8
  %2602 = add i64 %2601, -8
  %2603 = inttoptr i64 %2602 to i64*
  store i64 %2600, i64* %2603, align 8
  store i64 %2602, i64* %6, align 8
  store i64 %2599, i64* %3, align 8
  %2604 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.37)
  %2605 = load i64, i64* %RBP.i, align 8
  %2606 = add i64 %2605, -24620
  %2607 = load i64, i64* %3, align 8
  %2608 = add i64 %2607, 10
  store i64 %2608, i64* %3, align 8
  %2609 = inttoptr i64 %2606 to i32*
  store i32 1, i32* %2609, align 4
  %2610 = load i64, i64* %RBP.i, align 8
  %2611 = add i64 %2610, -24680
  %2612 = load i32, i32* %EAX.i1519, align 4
  %2613 = load i64, i64* %3, align 8
  %2614 = add i64 %2613, 6
  store i64 %2614, i64* %3, align 8
  %2615 = inttoptr i64 %2611 to i32*
  store i32 %2612, i32* %2615, align 4
  %.pre134 = load i64, i64* %3, align 8
  br label %block_.L_41259a

block_.L_41259a:                                  ; preds = %block_41256b, %block_.L_41255e, %block_412579
  %2616 = phi i64 [ %2589, %block_.L_41255e ], [ %2598, %block_41256b ], [ %.pre134, %block_412579 ]
  %MEMORY.38 = phi %struct.Memory* [ %MEMORY.37, %block_.L_41255e ], [ %MEMORY.37, %block_41256b ], [ %2604, %block_412579 ]
  %2617 = add i64 %2616, 5
  store i64 %2617, i64* %3, align 8
  br label %block_.L_41259f

block_.L_41259f:                                  ; preds = %block_.L_41259a, %block_41254f
  %storemerge72 = phi i64 [ %2577, %block_41254f ], [ %2617, %block_.L_41259a ]
  %MEMORY.39 = phi %struct.Memory* [ %MEMORY.37, %block_41254f ], [ %MEMORY.38, %block_.L_41259a ]
  %2618 = add i64 %storemerge72, 5
  store i64 %2618, i64* %3, align 8
  %.pre135 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4125a4

block_.L_4125a4:                                  ; preds = %block_.L_41259f, %block_.L_41252f
  %2619 = phi i64 [ %2548, %block_.L_41252f ], [ %2618, %block_.L_41259f ]
  %2620 = phi i64 [ %2517, %block_.L_41252f ], [ %.pre135, %block_.L_41259f ]
  %MEMORY.40 = phi %struct.Memory* [ %MEMORY.37, %block_.L_41252f ], [ %MEMORY.39, %block_.L_41259f ]
  %2621 = add i64 %2620, -24632
  %2622 = add i64 %2619, 6
  store i64 %2622, i64* %3, align 8
  %2623 = inttoptr i64 %2621 to i32*
  %2624 = load i32, i32* %2623, align 4
  %2625 = zext i32 %2624 to i64
  store i64 %2625, i64* %RAX.i1510, align 8
  %2626 = load i32, i32* bitcast (%G_0x62daf8_type* @G_0x62daf8 to i32*), align 8
  %2627 = sub i32 %2624, %2626
  %2628 = icmp ult i32 %2624, %2626
  %2629 = zext i1 %2628 to i8
  store i8 %2629, i8* %14, align 1
  %2630 = and i32 %2627, 255
  %2631 = tail call i32 @llvm.ctpop.i32(i32 %2630)
  %2632 = trunc i32 %2631 to i8
  %2633 = and i8 %2632, 1
  %2634 = xor i8 %2633, 1
  store i8 %2634, i8* %21, align 1
  %2635 = xor i32 %2626, %2624
  %2636 = xor i32 %2635, %2627
  %2637 = lshr i32 %2636, 4
  %2638 = trunc i32 %2637 to i8
  %2639 = and i8 %2638, 1
  store i8 %2639, i8* %27, align 1
  %2640 = icmp eq i32 %2627, 0
  %2641 = zext i1 %2640 to i8
  store i8 %2641, i8* %30, align 1
  %2642 = lshr i32 %2627, 31
  %2643 = trunc i32 %2642 to i8
  store i8 %2643, i8* %33, align 1
  %2644 = lshr i32 %2624, 31
  %2645 = lshr i32 %2626, 31
  %2646 = xor i32 %2645, %2644
  %2647 = xor i32 %2642, %2644
  %2648 = add nuw nsw i32 %2647, %2646
  %2649 = icmp eq i32 %2648, 2
  %2650 = zext i1 %2649 to i8
  store i8 %2650, i8* %39, align 1
  %.v168 = select i1 %2640, i64 117, i64 19
  %2651 = add i64 %2619, %.v168
  store i64 %2651, i64* %3, align 8
  br i1 %2640, label %block_.L_412619, label %block_4125b7

block_4125b7:                                     ; preds = %block_.L_4125a4
  %2652 = add i64 %2651, 7
  store i64 %2652, i64* %3, align 8
  %2653 = load i32, i32* %2623, align 4
  %2654 = add i32 %2653, -3
  %2655 = icmp ult i32 %2653, 3
  %2656 = zext i1 %2655 to i8
  store i8 %2656, i8* %14, align 1
  %2657 = and i32 %2654, 255
  %2658 = tail call i32 @llvm.ctpop.i32(i32 %2657)
  %2659 = trunc i32 %2658 to i8
  %2660 = and i8 %2659, 1
  %2661 = xor i8 %2660, 1
  store i8 %2661, i8* %21, align 1
  %2662 = xor i32 %2654, %2653
  %2663 = lshr i32 %2662, 4
  %2664 = trunc i32 %2663 to i8
  %2665 = and i8 %2664, 1
  store i8 %2665, i8* %27, align 1
  %2666 = icmp eq i32 %2654, 0
  %2667 = zext i1 %2666 to i8
  store i8 %2667, i8* %30, align 1
  %2668 = lshr i32 %2654, 31
  %2669 = trunc i32 %2668 to i8
  store i8 %2669, i8* %33, align 1
  %2670 = lshr i32 %2653, 31
  %2671 = xor i32 %2668, %2670
  %2672 = add nuw nsw i32 %2671, %2670
  %2673 = icmp eq i32 %2672, 2
  %2674 = zext i1 %2673 to i8
  store i8 %2674, i8* %39, align 1
  %.v169 = select i1 %2666, i64 13, i64 28
  %2675 = add i64 %2651, %.v169
  store i64 %2675, i64* %3, align 8
  br i1 %2666, label %block_4125c4, label %block_.L_4125d3

block_4125c4:                                     ; preds = %block_4125b7
  %2676 = add i64 %2620, -24652
  %2677 = add i64 %2675, 10
  store i64 %2677, i64* %3, align 8
  %2678 = inttoptr i64 %2676 to i32*
  store i32 1, i32* %2678, align 4
  %2679 = load i64, i64* %3, align 8
  %2680 = add i64 %2679, 70
  br label %block_.L_412614

block_.L_4125d3:                                  ; preds = %block_4125b7
  %2681 = add i64 %2675, 7
  store i64 %2681, i64* %3, align 8
  %2682 = load i32, i32* %2623, align 4
  store i8 0, i8* %14, align 1
  %2683 = and i32 %2682, 255
  %2684 = tail call i32 @llvm.ctpop.i32(i32 %2683)
  %2685 = trunc i32 %2684 to i8
  %2686 = and i8 %2685, 1
  %2687 = xor i8 %2686, 1
  store i8 %2687, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2688 = icmp eq i32 %2682, 0
  %2689 = zext i1 %2688 to i8
  store i8 %2689, i8* %30, align 1
  %2690 = lshr i32 %2682, 31
  %2691 = trunc i32 %2690 to i8
  store i8 %2691, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v170 = select i1 %2688, i64 13, i64 60
  %2692 = add i64 %2675, %.v170
  store i64 %2692, i64* %3, align 8
  br i1 %2688, label %block_4125e0, label %block_.L_41260f

block_4125e0:                                     ; preds = %block_.L_4125d3
  store i8 0, i8* %14, align 1
  %2693 = and i32 %2626, 255
  %2694 = tail call i32 @llvm.ctpop.i32(i32 %2693)
  %2695 = trunc i32 %2694 to i8
  %2696 = and i8 %2695, 1
  %2697 = xor i8 %2696, 1
  store i8 %2697, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2698 = icmp eq i32 %2626, 0
  %2699 = zext i1 %2698 to i8
  store i8 %2699, i8* %30, align 1
  %2700 = trunc i32 %2645 to i8
  store i8 %2700, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v191 = select i1 %2698, i64 14, i64 47
  %2701 = add i64 %2692, %.v191
  store i64 %2701, i64* %3, align 8
  br i1 %2698, label %block_4125ee, label %block_.L_41260f

block_4125ee:                                     ; preds = %block_4125e0
  store i64 ptrtoint (%G__0x428d2d_type* @G__0x428d2d to i64), i64* %RDI.i1270.pre-phi, align 8
  %AL.i242 = bitcast %union.anon* %126 to i8*
  store i8 0, i8* %AL.i242, align 1
  %2702 = add i64 %2701, -71998
  %2703 = add i64 %2701, 17
  %2704 = load i64, i64* %6, align 8
  %2705 = add i64 %2704, -8
  %2706 = inttoptr i64 %2705 to i64*
  store i64 %2703, i64* %2706, align 8
  store i64 %2705, i64* %6, align 8
  store i64 %2702, i64* %3, align 8
  %2707 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.40)
  %2708 = load i64, i64* %RBP.i, align 8
  %2709 = add i64 %2708, -24620
  %2710 = load i64, i64* %3, align 8
  %2711 = add i64 %2710, 10
  store i64 %2711, i64* %3, align 8
  %2712 = inttoptr i64 %2709 to i32*
  store i32 1, i32* %2712, align 4
  %2713 = load i64, i64* %RBP.i, align 8
  %2714 = add i64 %2713, -24684
  %2715 = load i32, i32* %EAX.i1519, align 4
  %2716 = load i64, i64* %3, align 8
  %2717 = add i64 %2716, 6
  store i64 %2717, i64* %3, align 8
  %2718 = inttoptr i64 %2714 to i32*
  store i32 %2715, i32* %2718, align 4
  %.pre136 = load i64, i64* %3, align 8
  br label %block_.L_41260f

block_.L_41260f:                                  ; preds = %block_4125e0, %block_.L_4125d3, %block_4125ee
  %2719 = phi i64 [ %2692, %block_.L_4125d3 ], [ %2701, %block_4125e0 ], [ %.pre136, %block_4125ee ]
  %MEMORY.41 = phi %struct.Memory* [ %MEMORY.40, %block_.L_4125d3 ], [ %MEMORY.40, %block_4125e0 ], [ %2707, %block_4125ee ]
  %2720 = add i64 %2719, 5
  store i64 %2720, i64* %3, align 8
  br label %block_.L_412614

block_.L_412614:                                  ; preds = %block_.L_41260f, %block_4125c4
  %storemerge73 = phi i64 [ %2680, %block_4125c4 ], [ %2720, %block_.L_41260f ]
  %MEMORY.42 = phi %struct.Memory* [ %MEMORY.40, %block_4125c4 ], [ %MEMORY.41, %block_.L_41260f ]
  %2721 = add i64 %storemerge73, 5
  store i64 %2721, i64* %3, align 8
  %.pre137 = load i64, i64* %RBP.i, align 8
  br label %block_.L_412619

block_.L_412619:                                  ; preds = %block_.L_412614, %block_.L_4125a4
  %2722 = phi i64 [ %2651, %block_.L_4125a4 ], [ %2721, %block_.L_412614 ]
  %2723 = phi i64 [ %2620, %block_.L_4125a4 ], [ %.pre137, %block_.L_412614 ]
  %MEMORY.43 = phi %struct.Memory* [ %MEMORY.40, %block_.L_4125a4 ], [ %MEMORY.42, %block_.L_412614 ]
  %2724 = add i64 %2723, -24636
  %2725 = add i64 %2722, 6
  store i64 %2725, i64* %3, align 8
  %2726 = inttoptr i64 %2724 to i32*
  %2727 = load i32, i32* %2726, align 4
  %2728 = zext i32 %2727 to i64
  store i64 %2728, i64* %RAX.i1510, align 8
  %2729 = load i32, i32* bitcast (%G_0x62dafc_type* @G_0x62dafc to i32*), align 8
  %2730 = sub i32 %2727, %2729
  %2731 = icmp ult i32 %2727, %2729
  %2732 = zext i1 %2731 to i8
  store i8 %2732, i8* %14, align 1
  %2733 = and i32 %2730, 255
  %2734 = tail call i32 @llvm.ctpop.i32(i32 %2733)
  %2735 = trunc i32 %2734 to i8
  %2736 = and i8 %2735, 1
  %2737 = xor i8 %2736, 1
  store i8 %2737, i8* %21, align 1
  %2738 = xor i32 %2729, %2727
  %2739 = xor i32 %2738, %2730
  %2740 = lshr i32 %2739, 4
  %2741 = trunc i32 %2740 to i8
  %2742 = and i8 %2741, 1
  store i8 %2742, i8* %27, align 1
  %2743 = icmp eq i32 %2730, 0
  %2744 = zext i1 %2743 to i8
  store i8 %2744, i8* %30, align 1
  %2745 = lshr i32 %2730, 31
  %2746 = trunc i32 %2745 to i8
  store i8 %2746, i8* %33, align 1
  %2747 = lshr i32 %2727, 31
  %2748 = lshr i32 %2729, 31
  %2749 = xor i32 %2748, %2747
  %2750 = xor i32 %2745, %2747
  %2751 = add nuw nsw i32 %2750, %2749
  %2752 = icmp eq i32 %2751, 2
  %2753 = zext i1 %2752 to i8
  store i8 %2753, i8* %39, align 1
  %.v171 = select i1 %2743, i64 117, i64 19
  %2754 = add i64 %2722, %.v171
  store i64 %2754, i64* %3, align 8
  br i1 %2743, label %block_.L_41268e, label %block_41262c

block_41262c:                                     ; preds = %block_.L_412619
  %2755 = add i64 %2754, 7
  store i64 %2755, i64* %3, align 8
  %2756 = load i32, i32* %2726, align 4
  %2757 = add i32 %2756, -3
  %2758 = icmp ult i32 %2756, 3
  %2759 = zext i1 %2758 to i8
  store i8 %2759, i8* %14, align 1
  %2760 = and i32 %2757, 255
  %2761 = tail call i32 @llvm.ctpop.i32(i32 %2760)
  %2762 = trunc i32 %2761 to i8
  %2763 = and i8 %2762, 1
  %2764 = xor i8 %2763, 1
  store i8 %2764, i8* %21, align 1
  %2765 = xor i32 %2757, %2756
  %2766 = lshr i32 %2765, 4
  %2767 = trunc i32 %2766 to i8
  %2768 = and i8 %2767, 1
  store i8 %2768, i8* %27, align 1
  %2769 = icmp eq i32 %2757, 0
  %2770 = zext i1 %2769 to i8
  store i8 %2770, i8* %30, align 1
  %2771 = lshr i32 %2757, 31
  %2772 = trunc i32 %2771 to i8
  store i8 %2772, i8* %33, align 1
  %2773 = lshr i32 %2756, 31
  %2774 = xor i32 %2771, %2773
  %2775 = add nuw nsw i32 %2774, %2773
  %2776 = icmp eq i32 %2775, 2
  %2777 = zext i1 %2776 to i8
  store i8 %2777, i8* %39, align 1
  %.v172 = select i1 %2769, i64 13, i64 28
  %2778 = add i64 %2754, %.v172
  store i64 %2778, i64* %3, align 8
  br i1 %2769, label %block_412639, label %block_.L_412648

block_412639:                                     ; preds = %block_41262c
  %2779 = add i64 %2723, -24656
  %2780 = add i64 %2778, 10
  store i64 %2780, i64* %3, align 8
  %2781 = inttoptr i64 %2779 to i32*
  store i32 1, i32* %2781, align 4
  %2782 = load i64, i64* %3, align 8
  %2783 = add i64 %2782, 70
  br label %block_.L_412689

block_.L_412648:                                  ; preds = %block_41262c
  %2784 = add i64 %2778, 7
  store i64 %2784, i64* %3, align 8
  %2785 = load i32, i32* %2726, align 4
  store i8 0, i8* %14, align 1
  %2786 = and i32 %2785, 255
  %2787 = tail call i32 @llvm.ctpop.i32(i32 %2786)
  %2788 = trunc i32 %2787 to i8
  %2789 = and i8 %2788, 1
  %2790 = xor i8 %2789, 1
  store i8 %2790, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2791 = icmp eq i32 %2785, 0
  %2792 = zext i1 %2791 to i8
  store i8 %2792, i8* %30, align 1
  %2793 = lshr i32 %2785, 31
  %2794 = trunc i32 %2793 to i8
  store i8 %2794, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v173 = select i1 %2791, i64 13, i64 60
  %2795 = add i64 %2778, %.v173
  store i64 %2795, i64* %3, align 8
  br i1 %2791, label %block_412655, label %block_.L_412684

block_412655:                                     ; preds = %block_.L_412648
  store i8 0, i8* %14, align 1
  %2796 = and i32 %2729, 255
  %2797 = tail call i32 @llvm.ctpop.i32(i32 %2796)
  %2798 = trunc i32 %2797 to i8
  %2799 = and i8 %2798, 1
  %2800 = xor i8 %2799, 1
  store i8 %2800, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2801 = icmp eq i32 %2729, 0
  %2802 = zext i1 %2801 to i8
  store i8 %2802, i8* %30, align 1
  %2803 = trunc i32 %2748 to i8
  store i8 %2803, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v190 = select i1 %2801, i64 14, i64 47
  %2804 = add i64 %2795, %.v190
  store i64 %2804, i64* %3, align 8
  br i1 %2801, label %block_412663, label %block_.L_412684

block_412663:                                     ; preds = %block_412655
  store i64 ptrtoint (%G__0x428d56_type* @G__0x428d56 to i64), i64* %RDI.i1270.pre-phi, align 8
  %AL.i211 = bitcast %union.anon* %126 to i8*
  store i8 0, i8* %AL.i211, align 1
  %2805 = add i64 %2804, -72115
  %2806 = add i64 %2804, 17
  %2807 = load i64, i64* %6, align 8
  %2808 = add i64 %2807, -8
  %2809 = inttoptr i64 %2808 to i64*
  store i64 %2806, i64* %2809, align 8
  store i64 %2808, i64* %6, align 8
  store i64 %2805, i64* %3, align 8
  %2810 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.43)
  %2811 = load i64, i64* %RBP.i, align 8
  %2812 = add i64 %2811, -24620
  %2813 = load i64, i64* %3, align 8
  %2814 = add i64 %2813, 10
  store i64 %2814, i64* %3, align 8
  %2815 = inttoptr i64 %2812 to i32*
  store i32 1, i32* %2815, align 4
  %2816 = load i64, i64* %RBP.i, align 8
  %2817 = add i64 %2816, -24688
  %2818 = load i32, i32* %EAX.i1519, align 4
  %2819 = load i64, i64* %3, align 8
  %2820 = add i64 %2819, 6
  store i64 %2820, i64* %3, align 8
  %2821 = inttoptr i64 %2817 to i32*
  store i32 %2818, i32* %2821, align 4
  %.pre138 = load i64, i64* %3, align 8
  br label %block_.L_412684

block_.L_412684:                                  ; preds = %block_412655, %block_.L_412648, %block_412663
  %2822 = phi i64 [ %2795, %block_.L_412648 ], [ %2804, %block_412655 ], [ %.pre138, %block_412663 ]
  %MEMORY.44 = phi %struct.Memory* [ %MEMORY.43, %block_.L_412648 ], [ %MEMORY.43, %block_412655 ], [ %2810, %block_412663 ]
  %2823 = add i64 %2822, 5
  store i64 %2823, i64* %3, align 8
  br label %block_.L_412689

block_.L_412689:                                  ; preds = %block_.L_412684, %block_412639
  %storemerge74 = phi i64 [ %2783, %block_412639 ], [ %2823, %block_.L_412684 ]
  %MEMORY.45 = phi %struct.Memory* [ %MEMORY.43, %block_412639 ], [ %MEMORY.44, %block_.L_412684 ]
  %2824 = add i64 %storemerge74, 5
  store i64 %2824, i64* %3, align 8
  %.pre139 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41268e

block_.L_41268e:                                  ; preds = %block_.L_412689, %block_.L_412619
  %2825 = phi i64 [ %2754, %block_.L_412619 ], [ %2824, %block_.L_412689 ]
  %2826 = phi i64 [ %2723, %block_.L_412619 ], [ %.pre139, %block_.L_412689 ]
  %MEMORY.46 = phi %struct.Memory* [ %MEMORY.43, %block_.L_412619 ], [ %MEMORY.45, %block_.L_412689 ]
  %2827 = add i64 %2826, -24640
  %2828 = add i64 %2825, 6
  store i64 %2828, i64* %3, align 8
  %2829 = inttoptr i64 %2827 to i32*
  %2830 = load i32, i32* %2829, align 4
  %2831 = zext i32 %2830 to i64
  store i64 %2831, i64* %RAX.i1510, align 8
  %2832 = load i32, i32* bitcast (%G_0x62db00_type* @G_0x62db00 to i32*), align 8
  %2833 = sub i32 %2830, %2832
  %2834 = icmp ult i32 %2830, %2832
  %2835 = zext i1 %2834 to i8
  store i8 %2835, i8* %14, align 1
  %2836 = and i32 %2833, 255
  %2837 = tail call i32 @llvm.ctpop.i32(i32 %2836)
  %2838 = trunc i32 %2837 to i8
  %2839 = and i8 %2838, 1
  %2840 = xor i8 %2839, 1
  store i8 %2840, i8* %21, align 1
  %2841 = xor i32 %2832, %2830
  %2842 = xor i32 %2841, %2833
  %2843 = lshr i32 %2842, 4
  %2844 = trunc i32 %2843 to i8
  %2845 = and i8 %2844, 1
  store i8 %2845, i8* %27, align 1
  %2846 = icmp eq i32 %2833, 0
  %2847 = zext i1 %2846 to i8
  store i8 %2847, i8* %30, align 1
  %2848 = lshr i32 %2833, 31
  %2849 = trunc i32 %2848 to i8
  store i8 %2849, i8* %33, align 1
  %2850 = lshr i32 %2830, 31
  %2851 = lshr i32 %2832, 31
  %2852 = xor i32 %2851, %2850
  %2853 = xor i32 %2848, %2850
  %2854 = add nuw nsw i32 %2853, %2852
  %2855 = icmp eq i32 %2854, 2
  %2856 = zext i1 %2855 to i8
  store i8 %2856, i8* %39, align 1
  %.v174 = select i1 %2846, i64 117, i64 19
  %2857 = add i64 %2825, %.v174
  store i64 %2857, i64* %3, align 8
  br i1 %2846, label %block_.L_412703, label %block_4126a1

block_4126a1:                                     ; preds = %block_.L_41268e
  %2858 = add i64 %2857, 7
  store i64 %2858, i64* %3, align 8
  %2859 = load i32, i32* %2829, align 4
  %2860 = add i32 %2859, -3
  %2861 = icmp ult i32 %2859, 3
  %2862 = zext i1 %2861 to i8
  store i8 %2862, i8* %14, align 1
  %2863 = and i32 %2860, 255
  %2864 = tail call i32 @llvm.ctpop.i32(i32 %2863)
  %2865 = trunc i32 %2864 to i8
  %2866 = and i8 %2865, 1
  %2867 = xor i8 %2866, 1
  store i8 %2867, i8* %21, align 1
  %2868 = xor i32 %2860, %2859
  %2869 = lshr i32 %2868, 4
  %2870 = trunc i32 %2869 to i8
  %2871 = and i8 %2870, 1
  store i8 %2871, i8* %27, align 1
  %2872 = icmp eq i32 %2860, 0
  %2873 = zext i1 %2872 to i8
  store i8 %2873, i8* %30, align 1
  %2874 = lshr i32 %2860, 31
  %2875 = trunc i32 %2874 to i8
  store i8 %2875, i8* %33, align 1
  %2876 = lshr i32 %2859, 31
  %2877 = xor i32 %2874, %2876
  %2878 = add nuw nsw i32 %2877, %2876
  %2879 = icmp eq i32 %2878, 2
  %2880 = zext i1 %2879 to i8
  store i8 %2880, i8* %39, align 1
  %.v175 = select i1 %2872, i64 13, i64 28
  %2881 = add i64 %2857, %.v175
  store i64 %2881, i64* %3, align 8
  br i1 %2872, label %block_4126ae, label %block_.L_4126bd

block_4126ae:                                     ; preds = %block_4126a1
  %2882 = add i64 %2826, -24660
  %2883 = add i64 %2881, 10
  store i64 %2883, i64* %3, align 8
  %2884 = inttoptr i64 %2882 to i32*
  store i32 1, i32* %2884, align 4
  %2885 = load i64, i64* %3, align 8
  %2886 = add i64 %2885, 70
  br label %block_.L_4126fe

block_.L_4126bd:                                  ; preds = %block_4126a1
  %2887 = add i64 %2881, 7
  store i64 %2887, i64* %3, align 8
  %2888 = load i32, i32* %2829, align 4
  store i8 0, i8* %14, align 1
  %2889 = and i32 %2888, 255
  %2890 = tail call i32 @llvm.ctpop.i32(i32 %2889)
  %2891 = trunc i32 %2890 to i8
  %2892 = and i8 %2891, 1
  %2893 = xor i8 %2892, 1
  store i8 %2893, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2894 = icmp eq i32 %2888, 0
  %2895 = zext i1 %2894 to i8
  store i8 %2895, i8* %30, align 1
  %2896 = lshr i32 %2888, 31
  %2897 = trunc i32 %2896 to i8
  store i8 %2897, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v176 = select i1 %2894, i64 13, i64 60
  %2898 = add i64 %2881, %.v176
  store i64 %2898, i64* %3, align 8
  br i1 %2894, label %block_4126ca, label %block_.L_4126f9

block_4126ca:                                     ; preds = %block_.L_4126bd
  store i8 0, i8* %14, align 1
  %2899 = and i32 %2832, 255
  %2900 = tail call i32 @llvm.ctpop.i32(i32 %2899)
  %2901 = trunc i32 %2900 to i8
  %2902 = and i8 %2901, 1
  %2903 = xor i8 %2902, 1
  store i8 %2903, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2904 = icmp eq i32 %2832, 0
  %2905 = zext i1 %2904 to i8
  store i8 %2905, i8* %30, align 1
  %2906 = trunc i32 %2851 to i8
  store i8 %2906, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v189 = select i1 %2904, i64 14, i64 47
  %2907 = add i64 %2898, %.v189
  store i64 %2907, i64* %3, align 8
  br i1 %2904, label %block_4126d8, label %block_.L_4126f9

block_4126d8:                                     ; preds = %block_4126ca
  store i64 ptrtoint (%G__0x428d7f_type* @G__0x428d7f to i64), i64* %RDI.i1270.pre-phi, align 8
  %AL.i180 = bitcast %union.anon* %126 to i8*
  store i8 0, i8* %AL.i180, align 1
  %2908 = add i64 %2907, -72232
  %2909 = add i64 %2907, 17
  %2910 = load i64, i64* %6, align 8
  %2911 = add i64 %2910, -8
  %2912 = inttoptr i64 %2911 to i64*
  store i64 %2909, i64* %2912, align 8
  store i64 %2911, i64* %6, align 8
  store i64 %2908, i64* %3, align 8
  %2913 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.46)
  %2914 = load i64, i64* %RBP.i, align 8
  %2915 = add i64 %2914, -24620
  %2916 = load i64, i64* %3, align 8
  %2917 = add i64 %2916, 10
  store i64 %2917, i64* %3, align 8
  %2918 = inttoptr i64 %2915 to i32*
  store i32 1, i32* %2918, align 4
  %2919 = load i64, i64* %RBP.i, align 8
  %2920 = add i64 %2919, -24692
  %2921 = load i32, i32* %EAX.i1519, align 4
  %2922 = load i64, i64* %3, align 8
  %2923 = add i64 %2922, 6
  store i64 %2923, i64* %3, align 8
  %2924 = inttoptr i64 %2920 to i32*
  store i32 %2921, i32* %2924, align 4
  %.pre140 = load i64, i64* %3, align 8
  br label %block_.L_4126f9

block_.L_4126f9:                                  ; preds = %block_4126ca, %block_.L_4126bd, %block_4126d8
  %2925 = phi i64 [ %2898, %block_.L_4126bd ], [ %2907, %block_4126ca ], [ %.pre140, %block_4126d8 ]
  %MEMORY.47 = phi %struct.Memory* [ %MEMORY.46, %block_.L_4126bd ], [ %MEMORY.46, %block_4126ca ], [ %2913, %block_4126d8 ]
  %2926 = add i64 %2925, 5
  store i64 %2926, i64* %3, align 8
  br label %block_.L_4126fe

block_.L_4126fe:                                  ; preds = %block_.L_4126f9, %block_4126ae
  %storemerge75 = phi i64 [ %2886, %block_4126ae ], [ %2926, %block_.L_4126f9 ]
  %MEMORY.48 = phi %struct.Memory* [ %MEMORY.46, %block_4126ae ], [ %MEMORY.47, %block_.L_4126f9 ]
  %2927 = add i64 %storemerge75, 5
  store i64 %2927, i64* %3, align 8
  %.pre141 = load i64, i64* %RBP.i, align 8
  br label %block_.L_412703

block_.L_412703:                                  ; preds = %block_.L_4126fe, %block_.L_41268e
  %2928 = phi i64 [ %2857, %block_.L_41268e ], [ %2927, %block_.L_4126fe ]
  %2929 = phi i64 [ %2826, %block_.L_41268e ], [ %.pre141, %block_.L_4126fe ]
  %MEMORY.49 = phi %struct.Memory* [ %MEMORY.46, %block_.L_41268e ], [ %MEMORY.48, %block_.L_4126fe ]
  %2930 = add i64 %2929, -24644
  %2931 = add i64 %2928, 7
  store i64 %2931, i64* %3, align 8
  %2932 = inttoptr i64 %2930 to i32*
  %2933 = load i32, i32* %2932, align 4
  store i8 0, i8* %14, align 1
  %2934 = and i32 %2933, 255
  %2935 = tail call i32 @llvm.ctpop.i32(i32 %2934)
  %2936 = trunc i32 %2935 to i8
  %2937 = and i8 %2936, 1
  %2938 = xor i8 %2937, 1
  store i8 %2938, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2939 = icmp eq i32 %2933, 0
  %2940 = zext i1 %2939 to i8
  store i8 %2940, i8* %30, align 1
  %2941 = lshr i32 %2933, 31
  %2942 = trunc i32 %2941 to i8
  store i8 %2942, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v177 = select i1 %2939, i64 36, i64 13
  %2943 = add i64 %2928, %.v177
  store i64 %2943, i64* %3, align 8
  br i1 %2939, label %block_.L_412727, label %block_412710

block_412710:                                     ; preds = %block_.L_412703
  store i64 ptrtoint (%G__0x428da8_type* @G__0x428da8 to i64), i64* %RDI.i1270.pre-phi, align 8
  %AL.i163 = bitcast %union.anon* %126 to i8*
  store i8 0, i8* %AL.i163, align 1
  %2944 = add i64 %2943, -72288
  %2945 = add i64 %2943, 17
  %2946 = load i64, i64* %6, align 8
  %2947 = add i64 %2946, -8
  %2948 = inttoptr i64 %2947 to i64*
  store i64 %2945, i64* %2948, align 8
  store i64 %2947, i64* %6, align 8
  store i64 %2944, i64* %3, align 8
  %2949 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.49)
  %2950 = load i64, i64* %RBP.i, align 8
  %2951 = add i64 %2950, -24696
  %2952 = load i32, i32* %EAX.i1519, align 4
  %2953 = load i64, i64* %3, align 8
  %2954 = add i64 %2953, 6
  store i64 %2954, i64* %3, align 8
  %2955 = inttoptr i64 %2951 to i32*
  store i32 %2952, i32* %2955, align 4
  %.pre142 = load i64, i64* %RBP.i, align 8
  %.pre143 = load i64, i64* %3, align 8
  br label %block_.L_412727

block_.L_412727:                                  ; preds = %block_412710, %block_.L_412703
  %2956 = phi i64 [ %2943, %block_.L_412703 ], [ %.pre143, %block_412710 ]
  %2957 = phi i64 [ %2929, %block_.L_412703 ], [ %.pre142, %block_412710 ]
  %MEMORY.50 = phi %struct.Memory* [ %MEMORY.49, %block_.L_412703 ], [ %2949, %block_412710 ]
  %2958 = add i64 %2957, -24648
  %2959 = add i64 %2956, 7
  store i64 %2959, i64* %3, align 8
  %2960 = inttoptr i64 %2958 to i32*
  %2961 = load i32, i32* %2960, align 4
  store i8 0, i8* %14, align 1
  %2962 = and i32 %2961, 255
  %2963 = tail call i32 @llvm.ctpop.i32(i32 %2962)
  %2964 = trunc i32 %2963 to i8
  %2965 = and i8 %2964, 1
  %2966 = xor i8 %2965, 1
  store i8 %2966, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2967 = icmp eq i32 %2961, 0
  %2968 = zext i1 %2967 to i8
  store i8 %2968, i8* %30, align 1
  %2969 = lshr i32 %2961, 31
  %2970 = trunc i32 %2969 to i8
  store i8 %2970, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v178 = select i1 %2967, i64 36, i64 13
  %2971 = add i64 %2956, %.v178
  store i64 %2971, i64* %3, align 8
  br i1 %2967, label %block_.L_41274b, label %block_412734

block_412734:                                     ; preds = %block_.L_412727
  store i64 ptrtoint (%G__0x428dbc_type* @G__0x428dbc to i64), i64* %RDI.i1270.pre-phi, align 8
  %AL.i150 = bitcast %union.anon* %126 to i8*
  store i8 0, i8* %AL.i150, align 1
  %2972 = add i64 %2971, -72324
  %2973 = add i64 %2971, 17
  %2974 = load i64, i64* %6, align 8
  %2975 = add i64 %2974, -8
  %2976 = inttoptr i64 %2975 to i64*
  store i64 %2973, i64* %2976, align 8
  store i64 %2975, i64* %6, align 8
  store i64 %2972, i64* %3, align 8
  %2977 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.50)
  %2978 = load i64, i64* %RBP.i, align 8
  %2979 = add i64 %2978, -24700
  %2980 = load i32, i32* %EAX.i1519, align 4
  %2981 = load i64, i64* %3, align 8
  %2982 = add i64 %2981, 6
  store i64 %2982, i64* %3, align 8
  %2983 = inttoptr i64 %2979 to i32*
  store i32 %2980, i32* %2983, align 4
  %.pre144 = load i64, i64* %RBP.i, align 8
  %.pre145 = load i64, i64* %3, align 8
  br label %block_.L_41274b

block_.L_41274b:                                  ; preds = %block_412734, %block_.L_412727
  %2984 = phi i64 [ %2971, %block_.L_412727 ], [ %.pre145, %block_412734 ]
  %2985 = phi i64 [ %2957, %block_.L_412727 ], [ %.pre144, %block_412734 ]
  %MEMORY.51 = phi %struct.Memory* [ %MEMORY.50, %block_.L_412727 ], [ %2977, %block_412734 ]
  %2986 = add i64 %2985, -24652
  %2987 = add i64 %2984, 7
  store i64 %2987, i64* %3, align 8
  %2988 = inttoptr i64 %2986 to i32*
  %2989 = load i32, i32* %2988, align 4
  store i8 0, i8* %14, align 1
  %2990 = and i32 %2989, 255
  %2991 = tail call i32 @llvm.ctpop.i32(i32 %2990)
  %2992 = trunc i32 %2991 to i8
  %2993 = and i8 %2992, 1
  %2994 = xor i8 %2993, 1
  store i8 %2994, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2995 = icmp eq i32 %2989, 0
  %2996 = zext i1 %2995 to i8
  store i8 %2996, i8* %30, align 1
  %2997 = lshr i32 %2989, 31
  %2998 = trunc i32 %2997 to i8
  store i8 %2998, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v179 = select i1 %2995, i64 36, i64 13
  %2999 = add i64 %2984, %.v179
  store i64 %2999, i64* %3, align 8
  br i1 %2995, label %block_.L_41276f, label %block_412758

block_412758:                                     ; preds = %block_.L_41274b
  store i64 ptrtoint (%G__0x428dd0_type* @G__0x428dd0 to i64), i64* %RDI.i1270.pre-phi, align 8
  %AL.i137 = bitcast %union.anon* %126 to i8*
  store i8 0, i8* %AL.i137, align 1
  %3000 = add i64 %2999, -72360
  %3001 = add i64 %2999, 17
  %3002 = load i64, i64* %6, align 8
  %3003 = add i64 %3002, -8
  %3004 = inttoptr i64 %3003 to i64*
  store i64 %3001, i64* %3004, align 8
  store i64 %3003, i64* %6, align 8
  store i64 %3000, i64* %3, align 8
  %3005 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.51)
  %3006 = load i64, i64* %RBP.i, align 8
  %3007 = add i64 %3006, -24704
  %3008 = load i32, i32* %EAX.i1519, align 4
  %3009 = load i64, i64* %3, align 8
  %3010 = add i64 %3009, 6
  store i64 %3010, i64* %3, align 8
  %3011 = inttoptr i64 %3007 to i32*
  store i32 %3008, i32* %3011, align 4
  %.pre146 = load i64, i64* %RBP.i, align 8
  %.pre147 = load i64, i64* %3, align 8
  br label %block_.L_41276f

block_.L_41276f:                                  ; preds = %block_412758, %block_.L_41274b
  %3012 = phi i64 [ %2999, %block_.L_41274b ], [ %.pre147, %block_412758 ]
  %3013 = phi i64 [ %2985, %block_.L_41274b ], [ %.pre146, %block_412758 ]
  %MEMORY.52 = phi %struct.Memory* [ %MEMORY.51, %block_.L_41274b ], [ %3005, %block_412758 ]
  %3014 = add i64 %3013, -24656
  %3015 = add i64 %3012, 7
  store i64 %3015, i64* %3, align 8
  %3016 = inttoptr i64 %3014 to i32*
  %3017 = load i32, i32* %3016, align 4
  store i8 0, i8* %14, align 1
  %3018 = and i32 %3017, 255
  %3019 = tail call i32 @llvm.ctpop.i32(i32 %3018)
  %3020 = trunc i32 %3019 to i8
  %3021 = and i8 %3020, 1
  %3022 = xor i8 %3021, 1
  store i8 %3022, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3023 = icmp eq i32 %3017, 0
  %3024 = zext i1 %3023 to i8
  store i8 %3024, i8* %30, align 1
  %3025 = lshr i32 %3017, 31
  %3026 = trunc i32 %3025 to i8
  store i8 %3026, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v180 = select i1 %3023, i64 36, i64 13
  %3027 = add i64 %3012, %.v180
  store i64 %3027, i64* %3, align 8
  br i1 %3023, label %block_.L_412793, label %block_41277c

block_41277c:                                     ; preds = %block_.L_41276f
  store i64 ptrtoint (%G__0x428de4_type* @G__0x428de4 to i64), i64* %RDI.i1270.pre-phi, align 8
  %AL.i124 = bitcast %union.anon* %126 to i8*
  store i8 0, i8* %AL.i124, align 1
  %3028 = add i64 %3027, -72396
  %3029 = add i64 %3027, 17
  %3030 = load i64, i64* %6, align 8
  %3031 = add i64 %3030, -8
  %3032 = inttoptr i64 %3031 to i64*
  store i64 %3029, i64* %3032, align 8
  store i64 %3031, i64* %6, align 8
  store i64 %3028, i64* %3, align 8
  %3033 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.52)
  %3034 = load i64, i64* %RBP.i, align 8
  %3035 = add i64 %3034, -24708
  %3036 = load i32, i32* %EAX.i1519, align 4
  %3037 = load i64, i64* %3, align 8
  %3038 = add i64 %3037, 6
  store i64 %3038, i64* %3, align 8
  %3039 = inttoptr i64 %3035 to i32*
  store i32 %3036, i32* %3039, align 4
  %.pre148 = load i64, i64* %RBP.i, align 8
  %.pre149 = load i64, i64* %3, align 8
  br label %block_.L_412793

block_.L_412793:                                  ; preds = %block_41277c, %block_.L_41276f
  %3040 = phi i64 [ %3027, %block_.L_41276f ], [ %.pre149, %block_41277c ]
  %3041 = phi i64 [ %3013, %block_.L_41276f ], [ %.pre148, %block_41277c ]
  %MEMORY.53 = phi %struct.Memory* [ %MEMORY.52, %block_.L_41276f ], [ %3033, %block_41277c ]
  %3042 = add i64 %3041, -24660
  %3043 = add i64 %3040, 7
  store i64 %3043, i64* %3, align 8
  %3044 = inttoptr i64 %3042 to i32*
  %3045 = load i32, i32* %3044, align 4
  store i8 0, i8* %14, align 1
  %3046 = and i32 %3045, 255
  %3047 = tail call i32 @llvm.ctpop.i32(i32 %3046)
  %3048 = trunc i32 %3047 to i8
  %3049 = and i8 %3048, 1
  %3050 = xor i8 %3049, 1
  store i8 %3050, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3051 = icmp eq i32 %3045, 0
  %3052 = zext i1 %3051 to i8
  store i8 %3052, i8* %30, align 1
  %3053 = lshr i32 %3045, 31
  %3054 = trunc i32 %3053 to i8
  store i8 %3054, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v181 = select i1 %3051, i64 36, i64 13
  %3055 = add i64 %3040, %.v181
  store i64 %3055, i64* %3, align 8
  br i1 %3051, label %block_.L_4127b7, label %block_4127a0

block_4127a0:                                     ; preds = %block_.L_412793
  store i64 ptrtoint (%G__0x428df8_type* @G__0x428df8 to i64), i64* %RDI.i1270.pre-phi, align 8
  %AL.i111 = bitcast %union.anon* %126 to i8*
  store i8 0, i8* %AL.i111, align 1
  %3056 = add i64 %3055, -72432
  %3057 = add i64 %3055, 17
  %3058 = load i64, i64* %6, align 8
  %3059 = add i64 %3058, -8
  %3060 = inttoptr i64 %3059 to i64*
  store i64 %3057, i64* %3060, align 8
  store i64 %3059, i64* %6, align 8
  store i64 %3056, i64* %3, align 8
  %3061 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.53)
  %3062 = load i64, i64* %RBP.i, align 8
  %3063 = add i64 %3062, -24712
  %3064 = load i32, i32* %EAX.i1519, align 4
  %3065 = load i64, i64* %3, align 8
  %3066 = add i64 %3065, 6
  store i64 %3066, i64* %3, align 8
  %3067 = inttoptr i64 %3063 to i32*
  store i32 %3064, i32* %3067, align 4
  %.pre150 = load i64, i64* %3, align 8
  br label %block_.L_4127b7

block_.L_4127b7:                                  ; preds = %block_4127a0, %block_.L_412793
  %3068 = phi i64 [ %3055, %block_.L_412793 ], [ %.pre150, %block_4127a0 ]
  %MEMORY.54 = phi %struct.Memory* [ %MEMORY.53, %block_.L_412793 ], [ %3061, %block_4127a0 ]
  %3069 = load i32, i32* bitcast (%G_0x86bd74_type* @G_0x86bd74 to i32*), align 8
  store i8 0, i8* %14, align 1
  %3070 = and i32 %3069, 255
  %3071 = tail call i32 @llvm.ctpop.i32(i32 %3070)
  %3072 = trunc i32 %3071 to i8
  %3073 = and i8 %3072, 1
  %3074 = xor i8 %3073, 1
  store i8 %3074, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3075 = icmp eq i32 %3069, 0
  %3076 = zext i1 %3075 to i8
  store i8 %3076, i8* %30, align 1
  %3077 = lshr i32 %3069, 31
  %3078 = trunc i32 %3077 to i8
  store i8 %3078, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v182 = select i1 %3075, i64 95, i64 14
  %3079 = add i64 %3068, %.v182
  store i64 %3079, i64* %3, align 8
  br i1 %3075, label %block_.L_412816, label %block_4127c5

block_4127c5:                                     ; preds = %block_.L_4127b7
  %3080 = load i64, i64* %RBP.i, align 8
  %3081 = add i64 %3080, -24620
  %3082 = add i64 %3079, 7
  store i64 %3082, i64* %3, align 8
  %3083 = inttoptr i64 %3081 to i32*
  %3084 = load i32, i32* %3083, align 4
  store i8 0, i8* %14, align 1
  %3085 = and i32 %3084, 255
  %3086 = tail call i32 @llvm.ctpop.i32(i32 %3085)
  %3087 = trunc i32 %3086 to i8
  %3088 = and i8 %3087, 1
  %3089 = xor i8 %3088, 1
  store i8 %3089, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3090 = icmp eq i32 %3084, 0
  %3091 = zext i1 %3090 to i8
  store i8 %3091, i8* %30, align 1
  %3092 = lshr i32 %3084, 31
  %3093 = trunc i32 %3092 to i8
  store i8 %3093, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v183 = select i1 %3090, i64 81, i64 13
  %3094 = add i64 %3079, %.v183
  store i64 %3094, i64* %3, align 8
  br i1 %3090, label %block_.L_412816, label %block_4127d2

block_4127d2:                                     ; preds = %block_4127c5
  store i64 ptrtoint (%G__0x428e0c_type* @G__0x428e0c to i64), i64* %RDI.i1270.pre-phi, align 8
  store i32 0, i32* bitcast (%G_0x86bd74_type* @G_0x86bd74 to i32*), align 8
  %AL.i95 = bitcast %union.anon* %126 to i8*
  store i8 0, i8* %AL.i95, align 1
  %3095 = add i64 %3094, -72482
  %3096 = add i64 %3094, 28
  %3097 = load i64, i64* %6, align 8
  %3098 = add i64 %3097, -8
  %3099 = inttoptr i64 %3098 to i64*
  store i64 %3096, i64* %3099, align 8
  store i64 %3098, i64* %6, align 8
  store i64 %3095, i64* %3, align 8
  %3100 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %MEMORY.54)
  %3101 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x428e1d_type* @G__0x428e1d to i64), i64* %RDI.i1270.pre-phi, align 8
  %3102 = load i64, i64* %RBP.i, align 8
  %3103 = add i64 %3102, -24716
  %3104 = load i32, i32* %EAX.i1519, align 4
  %3105 = add i64 %3101, 16
  store i64 %3105, i64* %3, align 8
  %3106 = inttoptr i64 %3103 to i32*
  store i32 %3104, i32* %3106, align 4
  %3107 = load i64, i64* %3, align 8
  store i8 0, i8* %AL.i95, align 1
  %3108 = add i64 %3107, -72526
  %3109 = add i64 %3107, 7
  %3110 = load i64, i64* %6, align 8
  %3111 = add i64 %3110, -8
  %3112 = inttoptr i64 %3111 to i64*
  store i64 %3109, i64* %3112, align 8
  store i64 %3111, i64* %6, align 8
  store i64 %3108, i64* %3, align 8
  %3113 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %3100)
  %3114 = load i64, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x886a60_type* @G_0x886a60 to i32*), align 8
  %3115 = load i64, i64* %RBP.i, align 8
  %3116 = add i64 %3115, -24720
  %3117 = load i32, i32* %EAX.i1519, align 4
  %3118 = add i64 %3114, 17
  store i64 %3118, i64* %3, align 8
  %3119 = inttoptr i64 %3116 to i32*
  store i32 %3117, i32* %3119, align 4
  %.pre151 = load i64, i64* %3, align 8
  br label %block_.L_412816

block_.L_412816:                                  ; preds = %block_4127d2, %block_4127c5, %block_.L_4127b7
  %3120 = phi i64 [ %3079, %block_.L_4127b7 ], [ %3094, %block_4127c5 ], [ %.pre151, %block_4127d2 ]
  %MEMORY.55 = phi %struct.Memory* [ %MEMORY.54, %block_.L_4127b7 ], [ %MEMORY.54, %block_4127c5 ], [ %3113, %block_4127d2 ]
  %3121 = load i64, i64* %RBP.i, align 8
  %3122 = add i64 %3121, -24624
  %3123 = add i64 %3120, 7
  store i64 %3123, i64* %3, align 8
  %3124 = inttoptr i64 %3122 to i32*
  %3125 = load i32, i32* %3124, align 4
  store i8 0, i8* %14, align 1
  %3126 = and i32 %3125, 255
  %3127 = tail call i32 @llvm.ctpop.i32(i32 %3126)
  %3128 = trunc i32 %3127 to i8
  %3129 = and i8 %3128, 1
  %3130 = xor i8 %3129, 1
  store i8 %3130, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3131 = icmp eq i32 %3125, 0
  %3132 = zext i1 %3131 to i8
  store i8 %3132, i8* %30, align 1
  %3133 = lshr i32 %3125, 31
  %3134 = trunc i32 %3133 to i8
  store i8 %3134, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v184 = select i1 %3131, i64 31, i64 13
  %3135 = add i64 %3120, %.v184
  store i64 %3135, i64* %3, align 8
  br i1 %3131, label %block_.L_412835, label %block_412823

block_412823:                                     ; preds = %block_.L_412816
  %3136 = add i64 %3135, 6
  store i64 %3136, i64* %3, align 8
  %3137 = load i32, i32* %3124, align 4
  %3138 = zext i32 %3137 to i64
  store i64 %3138, i64* %RAX.i1510, align 8
  store i32 %3137, i32* bitcast (%G_0x62daf0_type* @G_0x62daf0 to i32*), align 8
  %3139 = add i64 %3135, 35
  store i64 %3139, i64* %3, align 8
  br label %block_.L_412846

block_.L_412835:                                  ; preds = %block_.L_412816
  %3140 = load i32, i32* bitcast (%G_0x62daf0_type* @G_0x62daf0 to i32*), align 8
  %3141 = add i32 %3140, -1
  %3142 = zext i32 %3141 to i64
  store i64 %3142, i64* %RAX.i1510, align 8
  %3143 = icmp ne i32 %3140, 0
  %3144 = zext i1 %3143 to i8
  store i8 %3144, i8* %14, align 1
  %3145 = and i32 %3141, 255
  %3146 = tail call i32 @llvm.ctpop.i32(i32 %3145)
  %3147 = trunc i32 %3146 to i8
  %3148 = and i8 %3147, 1
  %3149 = xor i8 %3148, 1
  store i8 %3149, i8* %21, align 1
  %3150 = xor i32 %3140, 16
  %3151 = xor i32 %3150, %3141
  %3152 = lshr i32 %3151, 4
  %3153 = trunc i32 %3152 to i8
  %3154 = and i8 %3153, 1
  store i8 %3154, i8* %27, align 1
  %3155 = icmp eq i32 %3141, 0
  %3156 = zext i1 %3155 to i8
  store i8 %3156, i8* %30, align 1
  %3157 = lshr i32 %3141, 31
  %3158 = trunc i32 %3157 to i8
  store i8 %3158, i8* %33, align 1
  %3159 = lshr i32 %3140, 31
  %3160 = xor i32 %3157, %3159
  %3161 = xor i32 %3157, 1
  %3162 = add nuw nsw i32 %3160, %3161
  %3163 = icmp eq i32 %3162, 2
  %3164 = zext i1 %3163 to i8
  store i8 %3164, i8* %39, align 1
  %3165 = add i64 %3135, 17
  store i64 %3165, i64* %3, align 8
  store i32 %3141, i32* bitcast (%G_0x62daf0_type* @G_0x62daf0 to i32*), align 8
  br label %block_.L_412846

block_.L_412846:                                  ; preds = %block_.L_412835, %block_412823
  %3166 = phi i64 [ %3165, %block_.L_412835 ], [ %3139, %block_412823 ]
  %3167 = add i64 %3121, -24632
  %3168 = add i64 %3166, 7
  store i64 %3168, i64* %3, align 8
  %3169 = inttoptr i64 %3167 to i32*
  %3170 = load i32, i32* %3169, align 4
  store i8 0, i8* %14, align 1
  %3171 = and i32 %3170, 255
  %3172 = tail call i32 @llvm.ctpop.i32(i32 %3171)
  %3173 = trunc i32 %3172 to i8
  %3174 = and i8 %3173, 1
  %3175 = xor i8 %3174, 1
  store i8 %3175, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3176 = icmp eq i32 %3170, 0
  %3177 = zext i1 %3176 to i8
  store i8 %3177, i8* %30, align 1
  %3178 = lshr i32 %3170, 31
  %3179 = trunc i32 %3178 to i8
  store i8 %3179, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v185 = select i1 %3176, i64 31, i64 13
  %3180 = add i64 %3166, %.v185
  store i64 %3180, i64* %3, align 8
  br i1 %3176, label %block_.L_412865, label %block_412853

block_412853:                                     ; preds = %block_.L_412846
  %3181 = add i64 %3180, 6
  store i64 %3181, i64* %3, align 8
  %3182 = load i32, i32* %3169, align 4
  %3183 = zext i32 %3182 to i64
  store i64 %3183, i64* %RAX.i1510, align 8
  store i32 %3182, i32* bitcast (%G_0x62daf8_type* @G_0x62daf8 to i32*), align 8
  %3184 = add i64 %3180, 35
  store i64 %3184, i64* %3, align 8
  br label %block_.L_412876

block_.L_412865:                                  ; preds = %block_.L_412846
  %3185 = load i32, i32* bitcast (%G_0x62daf8_type* @G_0x62daf8 to i32*), align 8
  %3186 = add i32 %3185, -1
  %3187 = zext i32 %3186 to i64
  store i64 %3187, i64* %RAX.i1510, align 8
  %3188 = icmp ne i32 %3185, 0
  %3189 = zext i1 %3188 to i8
  store i8 %3189, i8* %14, align 1
  %3190 = and i32 %3186, 255
  %3191 = tail call i32 @llvm.ctpop.i32(i32 %3190)
  %3192 = trunc i32 %3191 to i8
  %3193 = and i8 %3192, 1
  %3194 = xor i8 %3193, 1
  store i8 %3194, i8* %21, align 1
  %3195 = xor i32 %3185, 16
  %3196 = xor i32 %3195, %3186
  %3197 = lshr i32 %3196, 4
  %3198 = trunc i32 %3197 to i8
  %3199 = and i8 %3198, 1
  store i8 %3199, i8* %27, align 1
  %3200 = icmp eq i32 %3186, 0
  %3201 = zext i1 %3200 to i8
  store i8 %3201, i8* %30, align 1
  %3202 = lshr i32 %3186, 31
  %3203 = trunc i32 %3202 to i8
  store i8 %3203, i8* %33, align 1
  %3204 = lshr i32 %3185, 31
  %3205 = xor i32 %3202, %3204
  %3206 = xor i32 %3202, 1
  %3207 = add nuw nsw i32 %3205, %3206
  %3208 = icmp eq i32 %3207, 2
  %3209 = zext i1 %3208 to i8
  store i8 %3209, i8* %39, align 1
  %3210 = add i64 %3180, 17
  store i64 %3210, i64* %3, align 8
  store i32 %3186, i32* bitcast (%G_0x62daf8_type* @G_0x62daf8 to i32*), align 8
  br label %block_.L_412876

block_.L_412876:                                  ; preds = %block_.L_412865, %block_412853
  %3211 = phi i64 [ %3210, %block_.L_412865 ], [ %3184, %block_412853 ]
  %3212 = add i64 %3121, -24636
  %3213 = add i64 %3211, 7
  store i64 %3213, i64* %3, align 8
  %3214 = inttoptr i64 %3212 to i32*
  %3215 = load i32, i32* %3214, align 4
  store i8 0, i8* %14, align 1
  %3216 = and i32 %3215, 255
  %3217 = tail call i32 @llvm.ctpop.i32(i32 %3216)
  %3218 = trunc i32 %3217 to i8
  %3219 = and i8 %3218, 1
  %3220 = xor i8 %3219, 1
  store i8 %3220, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3221 = icmp eq i32 %3215, 0
  %3222 = zext i1 %3221 to i8
  store i8 %3222, i8* %30, align 1
  %3223 = lshr i32 %3215, 31
  %3224 = trunc i32 %3223 to i8
  store i8 %3224, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v186 = select i1 %3221, i64 31, i64 13
  %3225 = add i64 %3211, %.v186
  store i64 %3225, i64* %3, align 8
  br i1 %3221, label %block_.L_412895, label %block_412883

block_412883:                                     ; preds = %block_.L_412876
  %3226 = add i64 %3225, 6
  store i64 %3226, i64* %3, align 8
  %3227 = load i32, i32* %3214, align 4
  %3228 = zext i32 %3227 to i64
  store i64 %3228, i64* %RAX.i1510, align 8
  store i32 %3227, i32* bitcast (%G_0x62dafc_type* @G_0x62dafc to i32*), align 8
  %3229 = add i64 %3225, 35
  store i64 %3229, i64* %3, align 8
  br label %block_.L_4128a6

block_.L_412895:                                  ; preds = %block_.L_412876
  %3230 = load i32, i32* bitcast (%G_0x62dafc_type* @G_0x62dafc to i32*), align 8
  %3231 = add i32 %3230, -1
  %3232 = zext i32 %3231 to i64
  store i64 %3232, i64* %RAX.i1510, align 8
  %3233 = icmp ne i32 %3230, 0
  %3234 = zext i1 %3233 to i8
  store i8 %3234, i8* %14, align 1
  %3235 = and i32 %3231, 255
  %3236 = tail call i32 @llvm.ctpop.i32(i32 %3235)
  %3237 = trunc i32 %3236 to i8
  %3238 = and i8 %3237, 1
  %3239 = xor i8 %3238, 1
  store i8 %3239, i8* %21, align 1
  %3240 = xor i32 %3230, 16
  %3241 = xor i32 %3240, %3231
  %3242 = lshr i32 %3241, 4
  %3243 = trunc i32 %3242 to i8
  %3244 = and i8 %3243, 1
  store i8 %3244, i8* %27, align 1
  %3245 = icmp eq i32 %3231, 0
  %3246 = zext i1 %3245 to i8
  store i8 %3246, i8* %30, align 1
  %3247 = lshr i32 %3231, 31
  %3248 = trunc i32 %3247 to i8
  store i8 %3248, i8* %33, align 1
  %3249 = lshr i32 %3230, 31
  %3250 = xor i32 %3247, %3249
  %3251 = xor i32 %3247, 1
  %3252 = add nuw nsw i32 %3250, %3251
  %3253 = icmp eq i32 %3252, 2
  %3254 = zext i1 %3253 to i8
  store i8 %3254, i8* %39, align 1
  %3255 = add i64 %3225, 17
  store i64 %3255, i64* %3, align 8
  store i32 %3231, i32* bitcast (%G_0x62dafc_type* @G_0x62dafc to i32*), align 8
  br label %block_.L_4128a6

block_.L_4128a6:                                  ; preds = %block_.L_412895, %block_412883
  %3256 = phi i64 [ %3255, %block_.L_412895 ], [ %3229, %block_412883 ]
  %3257 = add i64 %3121, -24640
  %3258 = add i64 %3256, 7
  store i64 %3258, i64* %3, align 8
  %3259 = inttoptr i64 %3257 to i32*
  %3260 = load i32, i32* %3259, align 4
  store i8 0, i8* %14, align 1
  %3261 = and i32 %3260, 255
  %3262 = tail call i32 @llvm.ctpop.i32(i32 %3261)
  %3263 = trunc i32 %3262 to i8
  %3264 = and i8 %3263, 1
  %3265 = xor i8 %3264, 1
  store i8 %3265, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3266 = icmp eq i32 %3260, 0
  %3267 = zext i1 %3266 to i8
  store i8 %3267, i8* %30, align 1
  %3268 = lshr i32 %3260, 31
  %3269 = trunc i32 %3268 to i8
  store i8 %3269, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v187 = select i1 %3266, i64 31, i64 13
  %3270 = add i64 %3256, %.v187
  store i64 %3270, i64* %3, align 8
  br i1 %3266, label %block_.L_4128c5, label %block_4128b3

block_4128b3:                                     ; preds = %block_.L_4128a6
  %3271 = add i64 %3270, 6
  store i64 %3271, i64* %3, align 8
  %3272 = load i32, i32* %3259, align 4
  %3273 = zext i32 %3272 to i64
  store i64 %3273, i64* %RAX.i1510, align 8
  store i32 %3272, i32* bitcast (%G_0x62db00_type* @G_0x62db00 to i32*), align 8
  %3274 = add i64 %3270, 35
  store i64 %3274, i64* %3, align 8
  br label %block_.L_4128d6

block_.L_4128c5:                                  ; preds = %block_.L_4128a6
  %3275 = load i32, i32* bitcast (%G_0x62db00_type* @G_0x62db00 to i32*), align 8
  %3276 = add i32 %3275, -1
  %3277 = zext i32 %3276 to i64
  store i64 %3277, i64* %RAX.i1510, align 8
  %3278 = icmp ne i32 %3275, 0
  %3279 = zext i1 %3278 to i8
  store i8 %3279, i8* %14, align 1
  %3280 = and i32 %3276, 255
  %3281 = tail call i32 @llvm.ctpop.i32(i32 %3280)
  %3282 = trunc i32 %3281 to i8
  %3283 = and i8 %3282, 1
  %3284 = xor i8 %3283, 1
  store i8 %3284, i8* %21, align 1
  %3285 = xor i32 %3275, 16
  %3286 = xor i32 %3285, %3276
  %3287 = lshr i32 %3286, 4
  %3288 = trunc i32 %3287 to i8
  %3289 = and i8 %3288, 1
  store i8 %3289, i8* %27, align 1
  %3290 = icmp eq i32 %3276, 0
  %3291 = zext i1 %3290 to i8
  store i8 %3291, i8* %30, align 1
  %3292 = lshr i32 %3276, 31
  %3293 = trunc i32 %3292 to i8
  store i8 %3293, i8* %33, align 1
  %3294 = lshr i32 %3275, 31
  %3295 = xor i32 %3292, %3294
  %3296 = xor i32 %3292, 1
  %3297 = add nuw nsw i32 %3295, %3296
  %3298 = icmp eq i32 %3297, 2
  %3299 = zext i1 %3298 to i8
  store i8 %3299, i8* %39, align 1
  %3300 = add i64 %3270, 17
  store i64 %3300, i64* %3, align 8
  store i32 %3276, i32* bitcast (%G_0x62db00_type* @G_0x62db00 to i32*), align 8
  br label %block_.L_4128d6

block_.L_4128d6:                                  ; preds = %block_.L_4128c5, %block_4128b3
  %3301 = phi i64 [ %3300, %block_.L_4128c5 ], [ %3274, %block_4128b3 ]
  %3302 = add i64 %3121, -24628
  %3303 = add i64 %3301, 7
  store i64 %3303, i64* %3, align 8
  %3304 = inttoptr i64 %3302 to i32*
  %3305 = load i32, i32* %3304, align 4
  store i8 0, i8* %14, align 1
  %3306 = and i32 %3305, 255
  %3307 = tail call i32 @llvm.ctpop.i32(i32 %3306)
  %3308 = trunc i32 %3307 to i8
  %3309 = and i8 %3308, 1
  %3310 = xor i8 %3309, 1
  store i8 %3310, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3311 = icmp eq i32 %3305, 0
  %3312 = zext i1 %3311 to i8
  store i8 %3312, i8* %30, align 1
  %3313 = lshr i32 %3305, 31
  %3314 = trunc i32 %3313 to i8
  store i8 %3314, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v188 = select i1 %3311, i64 31, i64 13
  %3315 = add i64 %3301, %.v188
  store i64 %3315, i64* %3, align 8
  br i1 %3311, label %block_.L_4128f5, label %block_4128e3

block_4128e3:                                     ; preds = %block_.L_4128d6
  %3316 = add i64 %3315, 6
  store i64 %3316, i64* %3, align 8
  %3317 = load i32, i32* %3304, align 4
  %3318 = zext i32 %3317 to i64
  store i64 %3318, i64* %RAX.i1510, align 8
  store i32 %3317, i32* bitcast (%G_0x62daf4_type* @G_0x62daf4 to i32*), align 8
  %3319 = add i64 %3315, 35
  store i64 %3319, i64* %3, align 8
  br label %block_.L_412906

block_.L_4128f5:                                  ; preds = %block_.L_4128d6
  %3320 = load i32, i32* bitcast (%G_0x62daf4_type* @G_0x62daf4 to i32*), align 8
  %3321 = add i32 %3320, -1
  %3322 = zext i32 %3321 to i64
  store i64 %3322, i64* %RAX.i1510, align 8
  %3323 = icmp ne i32 %3320, 0
  %3324 = zext i1 %3323 to i8
  store i8 %3324, i8* %14, align 1
  %3325 = and i32 %3321, 255
  %3326 = tail call i32 @llvm.ctpop.i32(i32 %3325)
  %3327 = trunc i32 %3326 to i8
  %3328 = and i8 %3327, 1
  %3329 = xor i8 %3328, 1
  store i8 %3329, i8* %21, align 1
  %3330 = xor i32 %3320, 16
  %3331 = xor i32 %3330, %3321
  %3332 = lshr i32 %3331, 4
  %3333 = trunc i32 %3332 to i8
  %3334 = and i8 %3333, 1
  store i8 %3334, i8* %27, align 1
  %3335 = icmp eq i32 %3321, 0
  %3336 = zext i1 %3335 to i8
  store i8 %3336, i8* %30, align 1
  %3337 = lshr i32 %3321, 31
  %3338 = trunc i32 %3337 to i8
  store i8 %3338, i8* %33, align 1
  %3339 = lshr i32 %3320, 31
  %3340 = xor i32 %3337, %3339
  %3341 = xor i32 %3337, 1
  %3342 = add nuw nsw i32 %3340, %3341
  %3343 = icmp eq i32 %3342, 2
  %3344 = zext i1 %3343 to i8
  store i8 %3344, i8* %39, align 1
  %3345 = add i64 %3315, 17
  store i64 %3345, i64* %3, align 8
  store i32 %3321, i32* bitcast (%G_0x62daf4_type* @G_0x62daf4 to i32*), align 8
  br label %block_.L_412906

block_.L_412906:                                  ; preds = %block_.L_4128f5, %block_4128e3, %block_411906
  %3346 = phi i64 [ %3345, %block_.L_4128f5 ], [ %3319, %block_4128e3 ], [ %116, %block_411906 ]
  %MEMORY.60 = phi %struct.Memory* [ %MEMORY.55, %block_.L_4128f5 ], [ %MEMORY.55, %block_4128e3 ], [ %2, %block_411906 ]
  %3347 = load i64, i64* %6, align 8
  %3348 = add i64 %3347, 24720
  store i64 %3348, i64* %6, align 8
  %3349 = icmp ugt i64 %3347, -24721
  %3350 = zext i1 %3349 to i8
  store i8 %3350, i8* %14, align 1
  %3351 = trunc i64 %3348 to i32
  %3352 = and i32 %3351, 255
  %3353 = tail call i32 @llvm.ctpop.i32(i32 %3352)
  %3354 = trunc i32 %3353 to i8
  %3355 = and i8 %3354, 1
  %3356 = xor i8 %3355, 1
  store i8 %3356, i8* %21, align 1
  %3357 = xor i64 %3347, 16
  %3358 = xor i64 %3357, %3348
  %3359 = lshr i64 %3358, 4
  %3360 = trunc i64 %3359 to i8
  %3361 = and i8 %3360, 1
  store i8 %3361, i8* %27, align 1
  %3362 = icmp eq i64 %3348, 0
  %3363 = zext i1 %3362 to i8
  store i8 %3363, i8* %30, align 1
  %3364 = lshr i64 %3348, 63
  %3365 = trunc i64 %3364 to i8
  store i8 %3365, i8* %33, align 1
  %3366 = lshr i64 %3347, 63
  %3367 = xor i64 %3364, %3366
  %3368 = add nuw nsw i64 %3367, %3364
  %3369 = icmp eq i64 %3368, 2
  %3370 = zext i1 %3369 to i8
  store i8 %3370, i8* %39, align 1
  %3371 = add i64 %3346, 8
  store i64 %3371, i64* %3, align 8
  %3372 = add i64 %3347, 24728
  %3373 = inttoptr i64 %3348 to i64*
  %3374 = load i64, i64* %3373, align 8
  store i64 %3374, i64* %RBP.i, align 8
  store i64 %3372, i64* %6, align 8
  %3375 = add i64 %3346, 9
  store i64 %3375, i64* %3, align 8
  %3376 = inttoptr i64 %3372 to i64*
  %3377 = load i64, i64* %3376, align 8
  store i64 %3377, i64* %3, align 8
  %3378 = add i64 %3347, 24736
  store i64 %3378, i64* %6, align 8
  ret %struct.Memory* %MEMORY.60
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
define %struct.Memory* @routine_subq__0x6090___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -24720
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 24720
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
define %struct.Memory* @routine_movl__edi__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x602c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24620
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x6030__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24624
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x6034__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24628
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x6038__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24632
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x603c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24636
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x6040__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24640
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x6044__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24644
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x6048__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24648
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x604c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24652
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x6050__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24656
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x6054__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24660
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_je_.L_411942(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__0x62daf0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x62daf0_type* @G_0x62daf0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x62daf4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x62daf4_type* @G_0x62daf4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x62daf8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x62daf8_type* @G_0x62daf8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x62dafc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x62dafc_type* @G_0x62dafc to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x62db00(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x62db00_type* @G_0x62db00 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_412906(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.in_check(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x85f170___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x85f170_type* @G__0x85f170 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6024__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24612
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x8661bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
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
define %struct.Memory* @routine_setne__dil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %DIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorb__0xff___dil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %DIL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = xor i8 %4, -1
  store i8 %7, i8* %DIL, align 1
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
define %struct.Memory* @routine_andb__0x1___dil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %DIL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %DIL, align 1
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
define %struct.Memory* @routine_movzbl__dil___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %DIL = bitcast %union.anon* %3 to i8*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i8, i8* %DIL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RAX, align 8
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
define %struct.Memory* @routine_shlq__0x6___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 6
  store i64 %6, i64* %R8, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 58
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 192
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
  %23 = lshr i64 %3, 57
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r8___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R8, align 8
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
define %struct.Memory* @routine_movslq__ecx___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rsi__r8_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %10, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
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
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_411b96(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
  %11 = load i64, i64* %RAX, align 8
  %12 = select i1 %10, i64 %5, i64 %11
  %13 = and i64 %12, 4294967295
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_setne__dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %DL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorb__0xff___dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %DL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = xor i8 %4, -1
  store i8 %7, i8* %DL, align 1
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
define %struct.Memory* @routine_andb__0x1___dl(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %DL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
  store i8 %7, i8* %DL, align 1
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
define %struct.Memory* @routine_movzbl__dl___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %DL = bitcast %union.anon* %3 to i8*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i8, i8* %DL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
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
define %struct.Memory* @routine_callq_.DropaddHolding(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12304
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.gen(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x85f150___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6014__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24596
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x6020__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24608
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movl_MINUS0x6020__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24608
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
define %struct.Memory* @routine_cmpl_MINUS0x6014__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24596
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
define %struct.Memory* @routine_movb__cl__MINUS0x6055__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24661
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_411a1b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x6030__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24624
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
define %struct.Memory* @routine_sete__al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__MINUS0x6055__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24661
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x6055__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24661
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
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
define %struct.Memory* @routine_jne_.L_411a2e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_411b66(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x6020__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24608
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
define %struct.Memory* @routine_callq_.make(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x6024__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24612
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
define %struct.Memory* @routine_callq_.check_legal(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_411b40(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3__MINUS0x6030__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24624
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x6010__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24592
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6028__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24616
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6018__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24600
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x601c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24604
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x601c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24604
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
define %struct.Memory* @routine_cmpl_MINUS0x6018__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24600
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
define %struct.Memory* @routine_movb__cl__MINUS0x6056__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24662
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_411ac5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_setne__al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__MINUS0x6056__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24662
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x6056__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24662
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_411ad8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_411b3b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x601c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24604
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
define %struct.Memory* @routine_movl_MINUS0x6028__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24616
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
define %struct.Memory* @routine_je_.L_411b15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.unmake(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x601c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24604
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411a99(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411b40(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6020__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24608
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4119ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.DropremoveHolding(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x85f170___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x85f170_type* @G__0x85f170 to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_movzbl__sil___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i8, i8* %SIL, align 1
  %5 = zext i8 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__edi___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__r8___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0____rdx__r8_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %R8, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %10, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %18, align 1
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
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_411ddf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__cl__MINUS0x6057__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24663
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_411c64(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x6034__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24628
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
define %struct.Memory* @routine_movb__al__MINUS0x6057__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24663
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x6057__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24663
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_411c77(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_411daf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_411d89(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3__MINUS0x6034__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24628
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x6058__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24664
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_411d0e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__al__MINUS0x6058__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24664
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x6058__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24664
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_411d21(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_411d84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_411d5e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_411ce2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411d89(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411c38(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xc___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xb___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_412028(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__cl__MINUS0x6059__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24665
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_411ead(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x6038__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24632
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
define %struct.Memory* @routine_movb__al__MINUS0x6059__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24665
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x6059__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24665
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_411ec0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_411ff8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_411fd2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3__MINUS0x6038__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24632
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x605a__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24666
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_411f57(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__al__MINUS0x605a__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24666
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x605a__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24666
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_411f6a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_411fcd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_411fa7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_411f2b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411fd2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_411e81(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__0x7___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_412271(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__cl__MINUS0x605b__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24667
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4120f6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x603c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24636
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
define %struct.Memory* @routine_movb__al__MINUS0x605b__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24667
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x605b__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24667
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_412109(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_412241(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41221b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3__MINUS0x603c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24636
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x605c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24668
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4121a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__al__MINUS0x605c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24668
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x605c__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24668
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4121b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_412216(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4121f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_412174(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41221b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4120ca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xa___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x9___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4124ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__cl__MINUS0x605d__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24669
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_41233f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x6040__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24640
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
define %struct.Memory* @routine_movb__al__MINUS0x605d__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24669
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x605d__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24669
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_412352(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41248a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_412464(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3__MINUS0x6040__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24640
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x605e__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24670
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_4123e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__al__MINUS0x605e__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24670
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x605e__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24670
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4123fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41245f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_412439(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4123bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_412464(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_412313(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x6030__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24624
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
define %struct.Memory* @routine_cmpl_0x62daf0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x62daf0_type* @G_0x62daf0 to i32*), align 8
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
define %struct.Memory* @routine_je_.L_41252f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3__MINUS0x6030__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24624
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
define %struct.Memory* @routine_jne_.L_4124e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x6044__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24644
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41252a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_412525(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x62daf0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62daf0_type* @G_0x62daf0 to i32*), align 8
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
define %struct.Memory* @routine_movq__0x428cdb___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428cdb_type* @G__0x428cdb to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.printf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x602c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24620
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6064__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24676
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41252f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x6034__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24628
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
define %struct.Memory* @routine_cmpl_0x62daf4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x62daf4_type* @G_0x62daf4 to i32*), align 8
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
define %struct.Memory* @routine_je_.L_4125a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3__MINUS0x6034__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24628
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
define %struct.Memory* @routine_jne_.L_41255e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x6048__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24648
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41259f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41259a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x62daf4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62daf4_type* @G_0x62daf4 to i32*), align 8
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
define %struct.Memory* @routine_movq__0x428d04___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428d04_type* @G__0x428d04 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6068__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24680
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4125a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x6038__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24632
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
define %struct.Memory* @routine_cmpl_0x62daf8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x62daf8_type* @G_0x62daf8 to i32*), align 8
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
define %struct.Memory* @routine_je_.L_412619(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3__MINUS0x6038__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24632
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
define %struct.Memory* @routine_jne_.L_4125d3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x604c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24652
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_412614(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41260f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x62daf8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62daf8_type* @G_0x62daf8 to i32*), align 8
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
define %struct.Memory* @routine_movq__0x428d2d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428d2d_type* @G__0x428d2d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x606c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24684
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_412619(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x603c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24636
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
define %struct.Memory* @routine_cmpl_0x62dafc___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x62dafc_type* @G_0x62dafc to i32*), align 8
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
define %struct.Memory* @routine_je_.L_41268e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3__MINUS0x603c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24636
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
define %struct.Memory* @routine_jne_.L_412648(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x6050__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24656
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_412689(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_412684(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x62dafc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62dafc_type* @G_0x62dafc to i32*), align 8
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
define %struct.Memory* @routine_movq__0x428d56___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428d56_type* @G__0x428d56 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6070__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24688
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41268e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x6040__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24640
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
define %struct.Memory* @routine_cmpl_0x62db00___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x62db00_type* @G_0x62db00 to i32*), align 8
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
define %struct.Memory* @routine_je_.L_412703(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3__MINUS0x6040__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24640
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
define %struct.Memory* @routine_jne_.L_4126bd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x6054__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24660
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4126fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4126f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x62db00(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62db00_type* @G_0x62db00 to i32*), align 8
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
define %struct.Memory* @routine_movq__0x428d7f___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428d7f_type* @G__0x428d7f to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6074__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24692
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_412703(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x6044__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24644
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
define %struct.Memory* @routine_je_.L_412727(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x428da8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428da8_type* @G__0x428da8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6078__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24696
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x6048__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24648
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
define %struct.Memory* @routine_je_.L_41274b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x428dbc___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428dbc_type* @G__0x428dbc to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x607c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24700
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x604c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24652
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
define %struct.Memory* @routine_je_.L_41276f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x428dd0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428dd0_type* @G__0x428dd0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6080__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24704
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x6050__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24656
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
define %struct.Memory* @routine_je_.L_412793(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x428de4___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428de4_type* @G__0x428de4 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6084__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24708
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x6054__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24660
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
define %struct.Memory* @routine_je_.L_4127b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x428df8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428df8_type* @G__0x428df8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6088__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24712
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x86bd74(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x86bd74_type* @G_0x86bd74 to i32*), align 8
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
define %struct.Memory* @routine_je_.L_412816(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x602c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24620
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
define %struct.Memory* @routine_movq__0x428e0c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428e0c_type* @G__0x428e0c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x86bd74(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x86bd74_type* @G_0x86bd74 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x428e1d___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x428e1d_type* @G__0x428e1d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x608c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24716
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x886a60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x886a60_type* @G_0x886a60 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6090__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24720
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_412835(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x62daf0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62daf0_type* @G_0x62daf0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_412846(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62daf0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62daf0_type* @G_0x62daf0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_je_.L_412865(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x62daf8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62daf8_type* @G_0x62daf8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_412876(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62daf8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62daf8_type* @G_0x62daf8 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_412895(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x62dafc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62dafc_type* @G_0x62dafc to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4128a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62dafc___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62dafc_type* @G_0x62dafc to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4128c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x62db00(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62db00_type* @G_0x62db00 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4128d6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62db00___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62db00_type* @G_0x62db00 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4128f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__0x62daf4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62daf4_type* @G_0x62daf4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62daf4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62daf4_type* @G_0x62daf4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x6090___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 24720
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -24721
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
