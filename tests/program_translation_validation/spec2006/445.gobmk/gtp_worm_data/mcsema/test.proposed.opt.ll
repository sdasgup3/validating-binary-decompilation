; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x7ae438_type = type <{ [4 x i8] }>
%G__0x57f102_type = type <{ [8 x i8] }>
%G__0x586073_type = type <{ [8 x i8] }>
%G__0x58714b_type = type <{ [8 x i8] }>
%G__0x587188_type = type <{ [8 x i8] }>
%G__0x5871a4_type = type <{ [8 x i8] }>
%G__0x5871b8_type = type <{ [8 x i8] }>
%G__0x5871cc_type = type <{ [8 x i8] }>
%G__0x5871e2_type = type <{ [8 x i8] }>
%G__0x5871f6_type = type <{ [8 x i8] }>
%G__0x58720a_type = type <{ [8 x i8] }>
%G__0x58721e_type = type <{ [8 x i8] }>
%G__0x587232_type = type <{ [8 x i8] }>
%G__0x587246_type = type <{ [8 x i8] }>
%G__0x58725a_type = type <{ [8 x i8] }>
%G__0x58726e_type = type <{ [8 x i8] }>
%G__0x587282_type = type <{ [8 x i8] }>
%G__0x587296_type = type <{ [8 x i8] }>
%G__0x5872aa_type = type <{ [8 x i8] }>
%G__0x5872be_type = type <{ [8 x i8] }>
%G__0x5872d2_type = type <{ [8 x i8] }>
%G__0x5872e6_type = type <{ [8 x i8] }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
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
@G__0x57f102 = global %G__0x57f102_type zeroinitializer
@G__0x586073 = global %G__0x586073_type zeroinitializer
@G__0x58714b = global %G__0x58714b_type zeroinitializer
@G__0x587188 = global %G__0x587188_type zeroinitializer
@G__0x5871a4 = global %G__0x5871a4_type zeroinitializer
@G__0x5871b8 = global %G__0x5871b8_type zeroinitializer
@G__0x5871cc = global %G__0x5871cc_type zeroinitializer
@G__0x5871e2 = global %G__0x5871e2_type zeroinitializer
@G__0x5871f6 = global %G__0x5871f6_type zeroinitializer
@G__0x58720a = global %G__0x58720a_type zeroinitializer
@G__0x58721e = global %G__0x58721e_type zeroinitializer
@G__0x587232 = global %G__0x587232_type zeroinitializer
@G__0x587246 = global %G__0x587246_type zeroinitializer
@G__0x58725a = global %G__0x58725a_type zeroinitializer
@G__0x58726e = global %G__0x58726e_type zeroinitializer
@G__0x587282 = global %G__0x587282_type zeroinitializer
@G__0x587296 = global %G__0x587296_type zeroinitializer
@G__0x5872aa = global %G__0x5872aa_type zeroinitializer
@G__0x5872be = global %G__0x5872be_type zeroinitializer
@G__0x5872d2 = global %G__0x5872d2_type zeroinitializer
@G__0x5872e6 = global %G__0x5872e6_type zeroinitializer
@G__0xb0eff0 = global %G__0xb0eff0_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @__isoc99_sscanf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_48c880.gtp_decode_coord(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_48b8a0.gtp_failure(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_425c60.examine_position(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_48bbb0.gtp_start_response(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_48c2e0.gtp_print_vertex(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_48ba40.gtp_printf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_48bca0.gtp_mprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @gtp_worm_data(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -72
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 64
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i136 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x58714b_type* @G__0x58714b to i64), i64* %RSI.i136, align 8
  %RDI.i156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -24
  %41 = load i64, i64* %RDI.i156, align 8
  %42 = add i64 %10, 21
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -20
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 7
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %45 to i32*
  store i32 -1, i32* %48, align 4
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -24
  %51 = load i64, i64* %3, align 8
  %52 = add i64 %51, 7
  store i64 %52, i64* %3, align 8
  %53 = inttoptr i64 %50 to i32*
  store i32 -1, i32* %53, align 4
  %54 = load i64, i64* %RBP.i, align 8
  %55 = add i64 %54, -16
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %56, 4
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %55 to i64*
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %RDI.i156, align 8
  %60 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL.i301 = bitcast %union.anon* %60 to i8*
  store i8 0, i8* %AL.i301, align 1
  %61 = add i64 %56, -619092
  %62 = add i64 %56, 11
  %63 = load i64, i64* %6, align 8
  %64 = add i64 %63, -8
  %65 = inttoptr i64 %64 to i64*
  store i64 %62, i64* %65, align 8
  store i64 %64, i64* %6, align 8
  store i64 %61, i64* %3, align 8
  %66 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @__isoc99_sscanf to i64), %struct.Memory* %2)
  %EAX.i444 = bitcast %union.anon* %60 to i32*
  %67 = load i32, i32* %EAX.i444, align 4
  %68 = load i64, i64* %3, align 8
  %69 = add i64 %68, 3
  store i8 0, i8* %14, align 1
  %70 = and i32 %67, 255
  %71 = tail call i32 @llvm.ctpop.i32(i32 %70)
  %72 = trunc i32 %71 to i8
  %73 = and i8 %72, 1
  %74 = xor i8 %73, 1
  store i8 %74, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %75 = icmp eq i32 %67, 0
  %76 = zext i1 %75 to i8
  store i8 %76, i8* %29, align 1
  %77 = lshr i32 %67, 31
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %79 = icmp ne i8 %78, 0
  %.v = select i1 %79, i64 57, i64 6
  %80 = add i64 %69, %.v
  store i64 %80, i64* %3, align 8
  br i1 %79, label %entry.block_.L_4983db_crit_edge, label %block_4983a8

entry.block_.L_4983db_crit_edge:                  ; preds = %entry
  %.pre34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  br label %block_.L_4983db

block_4983a8:                                     ; preds = %entry
  %81 = load i64, i64* %RBP.i, align 8
  %82 = add i64 %81, -20
  store i64 %82, i64* %RSI.i136, align 8
  %RDX.i437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %83 = add i64 %81, -24
  store i64 %83, i64* %RDX.i437, align 8
  %84 = add i64 %81, -16
  %85 = add i64 %80, 12
  store i64 %85, i64* %3, align 8
  %86 = inttoptr i64 %84 to i64*
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %RDI.i156, align 8
  %88 = add i64 %80, -47912
  %89 = add i64 %80, 17
  %90 = load i64, i64* %6, align 8
  %91 = add i64 %90, -8
  %92 = inttoptr i64 %91 to i64*
  store i64 %89, i64* %92, align 8
  store i64 %91, i64* %6, align 8
  store i64 %88, i64* %3, align 8
  %call2_4983b4 = tail call %struct.Memory* @sub_48c880.gtp_decode_coord(%struct.State* nonnull %0, i64 %88, %struct.Memory* %66)
  %93 = load i32, i32* %EAX.i444, align 4
  %94 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %95 = and i32 %93, 255
  %96 = tail call i32 @llvm.ctpop.i32(i32 %95)
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  %99 = xor i8 %98, 1
  store i8 %99, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %100 = icmp eq i32 %93, 0
  %101 = zext i1 %100 to i8
  store i8 %101, i8* %29, align 1
  %102 = lshr i32 %93, 31
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v39 = select i1 %100, i64 9, i64 34
  %104 = add i64 %94, %.v39
  store i64 %104, i64* %3, align 8
  br i1 %100, label %block_4983c2, label %block_.L_4983db

block_4983c2:                                     ; preds = %block_4983a8
  store i64 ptrtoint (%G__0x587188_type* @G__0x587188 to i64), i64* %RDI.i156, align 8
  store i8 0, i8* %AL.i301, align 1
  %105 = add i64 %104, -52002
  %106 = add i64 %104, 17
  %107 = load i64, i64* %6, align 8
  %108 = add i64 %107, -8
  %109 = inttoptr i64 %108 to i64*
  store i64 %106, i64* %109, align 8
  store i64 %108, i64* %6, align 8
  store i64 %105, i64* %3, align 8
  %call2_4983ce = tail call %struct.Memory* @sub_48b8a0.gtp_failure(%struct.State* nonnull %0, i64 %105, %struct.Memory* %call2_4983b4)
  %110 = load i64, i64* %RBP.i, align 8
  %111 = add i64 %110, -4
  %112 = load i32, i32* %EAX.i444, align 4
  %113 = load i64, i64* %3, align 8
  %114 = add i64 %113, 3
  store i64 %114, i64* %3, align 8
  %115 = inttoptr i64 %111 to i32*
  store i32 %112, i32* %115, align 4
  %116 = load i64, i64* %3, align 8
  %117 = add i64 %116, 794
  store i64 %117, i64* %3, align 8
  %.pre33 = getelementptr inbounds %union.anon, %union.anon* %60, i64 0, i32 0
  br label %block_.L_4986f0

block_.L_4983db:                                  ; preds = %block_4983a8, %entry.block_.L_4983db_crit_edge
  %RDX.i367.pre-phi = phi i64* [ %.pre34, %entry.block_.L_4983db_crit_edge ], [ %RDX.i437, %block_4983a8 ]
  %118 = phi i64 [ %80, %entry.block_.L_4983db_crit_edge ], [ %104, %block_4983a8 ]
  %MEMORY.0 = phi %struct.Memory* [ %66, %entry.block_.L_4983db_crit_edge ], [ %call2_4983b4, %block_4983a8 ]
  store i64 0, i64* %RDI.i156, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 1, i64* %RSI.i136, align 8
  %119 = add i64 %118, -468859
  %120 = add i64 %118, 12
  %121 = load i64, i64* %6, align 8
  %122 = add i64 %121, -8
  %123 = inttoptr i64 %122 to i64*
  store i64 %120, i64* %123, align 8
  store i64 %122, i64* %6, align 8
  store i64 %119, i64* %3, align 8
  %call2_4983e2 = tail call %struct.Memory* @sub_425c60.examine_position(%struct.State* nonnull %0, i64 %119, %struct.Memory* %MEMORY.0)
  %124 = load i64, i64* %3, align 8
  store i64 0, i64* %RDI.i156, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %125 = add i64 %124, -51255
  %126 = add i64 %124, 7
  %127 = load i64, i64* %6, align 8
  %128 = add i64 %127, -8
  %129 = inttoptr i64 %128 to i64*
  store i64 %126, i64* %129, align 8
  store i64 %128, i64* %6, align 8
  store i64 %125, i64* %3, align 8
  %call2_4983e9 = tail call %struct.Memory* @sub_48bbb0.gtp_start_response(%struct.State* nonnull %0, i64 %125, %struct.Memory* %call2_4983e2)
  %130 = load i64, i64* %RBP.i, align 8
  %131 = add i64 %130, -28
  %132 = load i64, i64* %3, align 8
  %133 = add i64 %132, 7
  store i64 %133, i64* %3, align 8
  %134 = inttoptr i64 %131 to i32*
  store i32 0, i32* %134, align 4
  %RAX.i407 = getelementptr inbounds %union.anon, %union.anon* %60, i64 0, i32 0
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i374 = getelementptr inbounds %union.anon, %union.anon* %135, i64 0, i32 0
  %ECX.i366 = bitcast %union.anon* %135 to i32*
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %137 = bitcast %union.VectorReg* %136 to double*
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8.i294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %ESI.i284 = bitcast %union.anon* %39 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_4983f5

block_.L_4983f5:                                  ; preds = %block_.L_4986c5, %block_.L_4983db
  %139 = phi i64 [ %.pre, %block_.L_4983db ], [ %1145, %block_.L_4986c5 ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_4983e9, %block_.L_4983db ], [ %MEMORY.2, %block_.L_4986c5 ]
  %140 = load i64, i64* %RBP.i, align 8
  %141 = add i64 %140, -28
  %142 = add i64 %139, 3
  store i64 %142, i64* %3, align 8
  %143 = inttoptr i64 %141 to i32*
  %144 = load i32, i32* %143, align 4
  %145 = zext i32 %144 to i64
  store i64 %145, i64* %RAX.i407, align 8
  %146 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %147 = sub i32 %144, %146
  %148 = icmp ult i32 %144, %146
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %14, align 1
  %150 = and i32 %147, 255
  %151 = tail call i32 @llvm.ctpop.i32(i32 %150)
  %152 = trunc i32 %151 to i8
  %153 = and i8 %152, 1
  %154 = xor i8 %153, 1
  store i8 %154, i8* %21, align 1
  %155 = xor i32 %146, %144
  %156 = xor i32 %155, %147
  %157 = lshr i32 %156, 4
  %158 = trunc i32 %157 to i8
  %159 = and i8 %158, 1
  store i8 %159, i8* %26, align 1
  %160 = icmp eq i32 %147, 0
  %161 = zext i1 %160 to i8
  store i8 %161, i8* %29, align 1
  %162 = lshr i32 %147, 31
  %163 = trunc i32 %162 to i8
  store i8 %163, i8* %32, align 1
  %164 = lshr i32 %144, 31
  %165 = lshr i32 %146, 31
  %166 = xor i32 %165, %164
  %167 = xor i32 %162, %164
  %168 = add nuw nsw i32 %167, %166
  %169 = icmp eq i32 %168, 2
  %170 = zext i1 %169 to i8
  store i8 %170, i8* %38, align 1
  %171 = icmp ne i8 %163, 0
  %172 = xor i1 %171, %169
  %.v40 = select i1 %172, i64 16, i64 739
  %173 = add i64 %139, %.v40
  store i64 %173, i64* %3, align 8
  br i1 %172, label %block_498405, label %block_.L_4986d8

block_498405:                                     ; preds = %block_.L_4983f5
  %174 = add i64 %140, -32
  %175 = add i64 %173, 7
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %174 to i32*
  store i32 0, i32* %176, align 4
  %.pre10 = load i64, i64* %3, align 8
  br label %block_.L_49840c

block_.L_49840c:                                  ; preds = %block_.L_4986b2, %block_498405
  %177 = phi i64 [ %.pre10, %block_498405 ], [ %1115, %block_.L_4986b2 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_498405 ], [ %MEMORY.4, %block_.L_4986b2 ]
  %178 = load i64, i64* %RBP.i, align 8
  %179 = add i64 %178, -32
  %180 = add i64 %177, 3
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %179 to i32*
  %182 = load i32, i32* %181, align 4
  %183 = zext i32 %182 to i64
  store i64 %183, i64* %RAX.i407, align 8
  %184 = load i32, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*), align 8
  %185 = sub i32 %182, %184
  %186 = icmp ult i32 %182, %184
  %187 = zext i1 %186 to i8
  store i8 %187, i8* %14, align 1
  %188 = and i32 %185, 255
  %189 = tail call i32 @llvm.ctpop.i32(i32 %188)
  %190 = trunc i32 %189 to i8
  %191 = and i8 %190, 1
  %192 = xor i8 %191, 1
  store i8 %192, i8* %21, align 1
  %193 = xor i32 %184, %182
  %194 = xor i32 %193, %185
  %195 = lshr i32 %194, 4
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  store i8 %197, i8* %26, align 1
  %198 = icmp eq i32 %185, 0
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %29, align 1
  %200 = lshr i32 %185, 31
  %201 = trunc i32 %200 to i8
  store i8 %201, i8* %32, align 1
  %202 = lshr i32 %182, 31
  %203 = lshr i32 %184, 31
  %204 = xor i32 %203, %202
  %205 = xor i32 %200, %202
  %206 = add nuw nsw i32 %205, %204
  %207 = icmp eq i32 %206, 2
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %38, align 1
  %209 = icmp ne i8 %201, 0
  %210 = xor i1 %209, %207
  %.v38 = select i1 %210, i64 16, i64 697
  %211 = add i64 %177, %.v38
  store i64 %211, i64* %3, align 8
  br i1 %210, label %block_49841c, label %block_.L_4986c5

block_49841c:                                     ; preds = %block_.L_49840c
  %212 = add i64 %178, -20
  %213 = add i64 %211, 4
  store i64 %213, i64* %3, align 8
  %214 = inttoptr i64 %212 to i32*
  %215 = load i32, i32* %214, align 4
  %216 = add i32 %215, 1
  %217 = icmp ne i32 %215, -1
  %218 = zext i1 %217 to i8
  store i8 %218, i8* %14, align 1
  %219 = and i32 %216, 255
  %220 = tail call i32 @llvm.ctpop.i32(i32 %219)
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  %223 = xor i8 %222, 1
  store i8 %223, i8* %21, align 1
  %224 = xor i32 %215, 16
  %225 = xor i32 %224, %216
  %226 = lshr i32 %225, 4
  %227 = trunc i32 %226 to i8
  %228 = and i8 %227, 1
  store i8 %228, i8* %26, align 1
  %229 = icmp eq i32 %216, 0
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %29, align 1
  %231 = lshr i32 %216, 31
  %232 = trunc i32 %231 to i8
  store i8 %232, i8* %32, align 1
  %233 = lshr i32 %215, 31
  %234 = xor i32 %233, 1
  %235 = xor i32 %231, %233
  %236 = add nuw nsw i32 %235, %234
  %237 = icmp eq i32 %236, 2
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %38, align 1
  %.v41 = select i1 %229, i64 34, i64 10
  %239 = add i64 %211, %.v41
  store i64 %239, i64* %3, align 8
  %.pre35 = add i64 %178, -28
  br i1 %229, label %block_49841c.block_.L_49843e_crit_edge, label %block_498426

block_49841c.block_.L_49843e_crit_edge:           ; preds = %block_49841c
  %.pre36 = inttoptr i64 %.pre35 to i32*
  br label %block_.L_49843e

block_498426:                                     ; preds = %block_49841c
  %240 = add i64 %239, 3
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %.pre35 to i32*
  %242 = load i32, i32* %241, align 4
  %243 = zext i32 %242 to i64
  store i64 %243, i64* %RAX.i407, align 8
  %244 = add i64 %239, 6
  store i64 %244, i64* %3, align 8
  %245 = load i32, i32* %214, align 4
  %246 = sub i32 %242, %245
  %247 = icmp ult i32 %242, %245
  %248 = zext i1 %247 to i8
  store i8 %248, i8* %14, align 1
  %249 = and i32 %246, 255
  %250 = tail call i32 @llvm.ctpop.i32(i32 %249)
  %251 = trunc i32 %250 to i8
  %252 = and i8 %251, 1
  %253 = xor i8 %252, 1
  store i8 %253, i8* %21, align 1
  %254 = xor i32 %245, %242
  %255 = xor i32 %254, %246
  %256 = lshr i32 %255, 4
  %257 = trunc i32 %256 to i8
  %258 = and i8 %257, 1
  store i8 %258, i8* %26, align 1
  %259 = icmp eq i32 %246, 0
  %260 = zext i1 %259 to i8
  store i8 %260, i8* %29, align 1
  %261 = lshr i32 %246, 31
  %262 = trunc i32 %261 to i8
  store i8 %262, i8* %32, align 1
  %263 = lshr i32 %242, 31
  %264 = lshr i32 %245, 31
  %265 = xor i32 %264, %263
  %266 = xor i32 %261, %263
  %267 = add nuw nsw i32 %266, %265
  %268 = icmp eq i32 %267, 2
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %38, align 1
  %.v42 = select i1 %259, i64 12, i64 652
  %270 = add i64 %239, %.v42
  store i64 %270, i64* %3, align 8
  br i1 %259, label %block_498432, label %block_.L_4986b2

block_498432:                                     ; preds = %block_498426
  %271 = add i64 %270, 3
  store i64 %271, i64* %3, align 8
  %272 = load i32, i32* %181, align 4
  %273 = zext i32 %272 to i64
  store i64 %273, i64* %RAX.i407, align 8
  %274 = add i64 %178, -24
  %275 = add i64 %270, 6
  store i64 %275, i64* %3, align 8
  %276 = inttoptr i64 %274 to i32*
  %277 = load i32, i32* %276, align 4
  %278 = sub i32 %272, %277
  %279 = icmp ult i32 %272, %277
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %14, align 1
  %281 = and i32 %278, 255
  %282 = tail call i32 @llvm.ctpop.i32(i32 %281)
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  %285 = xor i8 %284, 1
  store i8 %285, i8* %21, align 1
  %286 = xor i32 %277, %272
  %287 = xor i32 %286, %278
  %288 = lshr i32 %287, 4
  %289 = trunc i32 %288 to i8
  %290 = and i8 %289, 1
  store i8 %290, i8* %26, align 1
  %291 = icmp eq i32 %278, 0
  %292 = zext i1 %291 to i8
  store i8 %292, i8* %29, align 1
  %293 = lshr i32 %278, 31
  %294 = trunc i32 %293 to i8
  store i8 %294, i8* %32, align 1
  %295 = lshr i32 %272, 31
  %296 = lshr i32 %277, 31
  %297 = xor i32 %296, %295
  %298 = xor i32 %293, %295
  %299 = add nuw nsw i32 %298, %297
  %300 = icmp eq i32 %299, 2
  %301 = zext i1 %300 to i8
  store i8 %301, i8* %38, align 1
  %.v43 = select i1 %291, i64 12, i64 640
  %302 = add i64 %270, %.v43
  store i64 %302, i64* %3, align 8
  br i1 %291, label %block_.L_49843e, label %block_.L_4986b2

block_.L_49843e:                                  ; preds = %block_498432, %block_49841c.block_.L_49843e_crit_edge
  %.pre-phi37 = phi i32* [ %.pre36, %block_49841c.block_.L_49843e_crit_edge ], [ %241, %block_498432 ]
  %303 = phi i64 [ %239, %block_49841c.block_.L_49843e_crit_edge ], [ %302, %block_498432 ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i407, align 8
  %304 = add i64 %303, 14
  store i64 %304, i64* %3, align 8
  %305 = load i32, i32* %.pre-phi37, align 4
  %306 = mul i32 %305, 20
  %307 = add i32 %306, 21
  %308 = zext i32 %307 to i64
  store i64 %308, i64* %RCX.i374, align 8
  %309 = icmp ugt i32 %306, -22
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %14, align 1
  %311 = and i32 %307, 253
  %312 = tail call i32 @llvm.ctpop.i32(i32 %311)
  %313 = trunc i32 %312 to i8
  %314 = and i8 %313, 1
  %315 = xor i8 %314, 1
  store i8 %315, i8* %21, align 1
  %316 = xor i32 %306, 16
  %317 = xor i32 %316, %307
  %318 = lshr i32 %317, 4
  %319 = trunc i32 %318 to i8
  %320 = and i8 %319, 1
  store i8 %320, i8* %26, align 1
  store i8 0, i8* %29, align 1
  %321 = lshr i32 %307, 31
  %322 = trunc i32 %321 to i8
  store i8 %322, i8* %32, align 1
  %323 = lshr i32 %306, 31
  %324 = xor i32 %321, %323
  %325 = add nuw nsw i32 %324, %321
  %326 = icmp eq i32 %325, 2
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %38, align 1
  %328 = add i64 %303, 20
  store i64 %328, i64* %3, align 8
  %329 = load i32, i32* %181, align 4
  %330 = add i32 %329, %307
  %331 = zext i32 %330 to i64
  store i64 %331, i64* %RCX.i374, align 8
  %332 = sext i32 %330 to i64
  %333 = mul nsw i64 %332, 380
  store i64 %333, i64* %RDX.i367.pre-phi, align 8
  %334 = lshr i64 %333, 63
  %335 = load i64, i64* %RAX.i407, align 8
  %336 = add i64 %333, %335
  store i64 %336, i64* %RAX.i407, align 8
  %337 = icmp ult i64 %336, %335
  %338 = icmp ult i64 %336, %333
  %339 = or i1 %337, %338
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %14, align 1
  %341 = trunc i64 %336 to i32
  %342 = and i32 %341, 255
  %343 = tail call i32 @llvm.ctpop.i32(i32 %342)
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  %346 = xor i8 %345, 1
  store i8 %346, i8* %21, align 1
  %347 = xor i64 %333, %335
  %348 = xor i64 %347, %336
  %349 = lshr i64 %348, 4
  %350 = trunc i64 %349 to i8
  %351 = and i8 %350, 1
  store i8 %351, i8* %26, align 1
  %352 = icmp eq i64 %336, 0
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %29, align 1
  %354 = lshr i64 %336, 63
  %355 = trunc i64 %354 to i8
  store i8 %355, i8* %32, align 1
  %356 = lshr i64 %335, 63
  %357 = xor i64 %354, %356
  %358 = xor i64 %354, %334
  %359 = add nuw nsw i64 %357, %358
  %360 = icmp eq i64 %359, 2
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %38, align 1
  %362 = load i64, i64* %RBP.i, align 8
  %363 = add i64 %362, -40
  %364 = add i64 %303, 37
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %363 to i64*
  store i64 %336, i64* %365, align 8
  %366 = load i64, i64* %RBP.i, align 8
  %367 = add i64 %366, -28
  %368 = load i64, i64* %3, align 8
  %369 = add i64 %368, 3
  store i64 %369, i64* %3, align 8
  %370 = inttoptr i64 %367 to i32*
  %371 = load i32, i32* %370, align 4
  %372 = zext i32 %371 to i64
  store i64 %372, i64* %RDI.i156, align 8
  %373 = add i64 %366, -32
  %374 = add i64 %368, 6
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = zext i32 %376 to i64
  store i64 %377, i64* %RSI.i136, align 8
  %378 = add i64 %368, -49539
  %379 = add i64 %368, 11
  %380 = load i64, i64* %6, align 8
  %381 = add i64 %380, -8
  %382 = inttoptr i64 %381 to i64*
  store i64 %379, i64* %382, align 8
  store i64 %381, i64* %6, align 8
  store i64 %378, i64* %3, align 8
  %call2_498469 = tail call %struct.Memory* @sub_48c2e0.gtp_print_vertex(%struct.State* nonnull %0, i64 %378, %struct.Memory* %MEMORY.2)
  %383 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x57f102_type* @G__0x57f102 to i64), i64* %RDI.i156, align 8
  store i8 0, i8* %AL.i301, align 1
  %384 = add i64 %383, -51758
  %385 = add i64 %383, 17
  %386 = load i64, i64* %6, align 8
  %387 = add i64 %386, -8
  %388 = inttoptr i64 %387 to i64*
  store i64 %385, i64* %388, align 8
  store i64 %387, i64* %6, align 8
  store i64 %384, i64* %3, align 8
  %call2_49847a = tail call %struct.Memory* @sub_48ba40.gtp_printf(%struct.State* nonnull %0, i64 %384, %struct.Memory* %MEMORY.2)
  %389 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5871a4_type* @G__0x5871a4 to i64), i64* %RDI.i156, align 8
  %390 = load i64, i64* %RBP.i, align 8
  %391 = add i64 %390, -40
  %392 = add i64 %389, 14
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %391 to i64*
  %394 = load i64, i64* %393, align 8
  store i64 %394, i64* %RDX.i367.pre-phi, align 8
  %395 = add i64 %389, 16
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %394 to i32*
  %397 = load i32, i32* %396, align 4
  %398 = zext i32 %397 to i64
  store i64 %398, i64* %RSI.i136, align 8
  store i8 0, i8* %AL.i301, align 1
  %399 = add i64 %389, -51167
  %400 = add i64 %389, 23
  %401 = load i64, i64* %6, align 8
  %402 = add i64 %401, -8
  %403 = inttoptr i64 %402 to i64*
  store i64 %400, i64* %403, align 8
  store i64 %402, i64* %6, align 8
  store i64 %399, i64* %3, align 8
  %call2_498491 = tail call %struct.Memory* @sub_48bca0.gtp_mprintf(%struct.State* nonnull %0, i64 %399, %struct.Memory* %MEMORY.2)
  %404 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5871b8_type* @G__0x5871b8 to i64), i64* %RDI.i156, align 8
  %405 = load i64, i64* %RBP.i, align 8
  %406 = add i64 %405, -40
  %407 = add i64 %404, 14
  store i64 %407, i64* %3, align 8
  %408 = inttoptr i64 %406 to i64*
  %409 = load i64, i64* %408, align 8
  store i64 %409, i64* %RDX.i367.pre-phi, align 8
  %410 = add i64 %409, 4
  %411 = add i64 %404, 17
  store i64 %411, i64* %3, align 8
  %412 = inttoptr i64 %410 to i32*
  %413 = load i32, i32* %412, align 4
  %414 = zext i32 %413 to i64
  store i64 %414, i64* %RSI.i136, align 8
  store i8 0, i8* %AL.i301, align 1
  %415 = add i64 %404, -51798
  %416 = add i64 %404, 24
  %417 = load i64, i64* %6, align 8
  %418 = add i64 %417, -8
  %419 = inttoptr i64 %418 to i64*
  store i64 %416, i64* %419, align 8
  store i64 %418, i64* %6, align 8
  store i64 %415, i64* %3, align 8
  %call2_4984a9 = tail call %struct.Memory* @sub_48ba40.gtp_printf(%struct.State* nonnull %0, i64 %415, %struct.Memory* %MEMORY.2)
  %420 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5871cc_type* @G__0x5871cc to i64), i64* %RDI.i156, align 8
  %421 = load i64, i64* %RBP.i, align 8
  %422 = add i64 %421, -40
  %423 = add i64 %420, 14
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %422 to i64*
  %425 = load i64, i64* %424, align 8
  store i64 %425, i64* %RDX.i367.pre-phi, align 8
  %426 = add i64 %425, 8
  %427 = add i64 %420, 19
  store i64 %427, i64* %3, align 8
  %428 = inttoptr i64 %426 to float*
  %429 = load float, float* %428, align 4
  %430 = fpext float %429 to double
  store double %430, double* %137, align 1
  store i8 1, i8* %AL.i301, align 1
  %431 = add i64 %420, -51822
  %432 = add i64 %420, 26
  %433 = load i64, i64* %6, align 8
  %434 = add i64 %433, -8
  %435 = inttoptr i64 %434 to i64*
  store i64 %432, i64* %435, align 8
  store i64 %434, i64* %6, align 8
  store i64 %431, i64* %3, align 8
  %call2_4984c3 = tail call %struct.Memory* @sub_48ba40.gtp_printf(%struct.State* nonnull %0, i64 %431, %struct.Memory* %MEMORY.2)
  %436 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5871e2_type* @G__0x5871e2 to i64), i64* %RDI.i156, align 8
  store i64 20, i64* %RCX.i374, align 8
  %437 = load i64, i64* %RBP.i, align 8
  %438 = add i64 %437, -40
  %439 = add i64 %436, 19
  store i64 %439, i64* %3, align 8
  %440 = inttoptr i64 %438 to i64*
  %441 = load i64, i64* %440, align 8
  store i64 %441, i64* %RDX.i367.pre-phi, align 8
  %442 = add i64 %441, 12
  %443 = add i64 %436, 22
  store i64 %443, i64* %3, align 8
  %444 = inttoptr i64 %442 to i32*
  %445 = load i32, i32* %444, align 4
  %446 = zext i32 %445 to i64
  store i64 %446, i64* %RAX.i407, align 8
  %447 = sext i32 %445 to i64
  %448 = lshr i64 %447, 32
  store i64 %448, i64* %RDX.i367.pre-phi, align 8
  %449 = add i64 %436, 25
  store i64 %449, i64* %3, align 8
  %450 = shl nuw i64 %448, 32
  %451 = or i64 %450, %446
  %452 = sdiv i64 %451, 20
  %453 = shl i64 %452, 32
  %454 = ashr exact i64 %453, 32
  %455 = icmp eq i64 %452, %454
  br i1 %455, label %458, label %456

; <label>:456:                                    ; preds = %block_.L_49843e
  %457 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %449, %struct.Memory* %MEMORY.2)
  %.pre11 = load i64, i64* %RAX.i407, align 8
  %.pre12 = load i64, i64* %3, align 8
  %.pre13 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit299

; <label>:458:                                    ; preds = %block_.L_49843e
  %459 = srem i64 %451, 20
  %460 = and i64 %452, 4294967295
  store i64 %460, i64* %RAX.i407, align 8
  %461 = and i64 %459, 4294967295
  store i64 %461, i64* %138, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit299

routine_idivl__ecx.exit299:                       ; preds = %458, %456
  %462 = phi i64 [ %.pre13, %456 ], [ %437, %458 ]
  %463 = phi i64 [ %.pre12, %456 ], [ %449, %458 ]
  %464 = phi i64 [ %.pre11, %456 ], [ %460, %458 ]
  %465 = phi %struct.Memory* [ %457, %456 ], [ %MEMORY.2, %458 ]
  %466 = trunc i64 %464 to i32
  %467 = add i32 %466, -1
  %468 = zext i32 %467 to i64
  store i64 %468, i64* %RAX.i407, align 8
  %469 = icmp eq i32 %466, 0
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %14, align 1
  %471 = and i32 %467, 255
  %472 = tail call i32 @llvm.ctpop.i32(i32 %471)
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  %475 = xor i8 %474, 1
  store i8 %475, i8* %21, align 1
  %476 = xor i32 %467, %466
  %477 = lshr i32 %476, 4
  %478 = trunc i32 %477 to i8
  %479 = and i8 %478, 1
  store i8 %479, i8* %26, align 1
  %480 = icmp eq i32 %467, 0
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %29, align 1
  %482 = lshr i32 %467, 31
  %483 = trunc i32 %482 to i8
  store i8 %483, i8* %32, align 1
  %484 = lshr i32 %466, 31
  %485 = xor i32 %482, %484
  %486 = add nuw nsw i32 %485, %484
  %487 = icmp eq i32 %486, 2
  %488 = zext i1 %487 to i8
  store i8 %488, i8* %38, align 1
  %489 = add i64 %462, -40
  %490 = add i64 %463, 7
  store i64 %490, i64* %3, align 8
  %491 = inttoptr i64 %489 to i64*
  %492 = load i64, i64* %491, align 8
  store i64 %492, i64* %R8.i294, align 8
  %493 = add i64 %492, 12
  %494 = add i64 %463, 11
  store i64 %494, i64* %3, align 8
  %495 = inttoptr i64 %493 to i32*
  %496 = load i32, i32* %495, align 4
  %497 = zext i32 %496 to i64
  store i64 %497, i64* %RSI.i136, align 8
  %498 = add i64 %462, -44
  %499 = add i64 %463, 14
  store i64 %499, i64* %3, align 8
  %500 = inttoptr i64 %498 to i32*
  store i32 %467, i32* %500, align 4
  %501 = load i32, i32* %ESI.i284, align 4
  %502 = zext i32 %501 to i64
  %503 = load i64, i64* %3, align 8
  store i64 %502, i64* %RAX.i407, align 8
  %504 = sext i32 %501 to i64
  %505 = lshr i64 %504, 32
  store i64 %505, i64* %RDX.i367.pre-phi, align 8
  %506 = load i32, i32* %ECX.i366, align 4
  %507 = add i64 %503, 5
  store i64 %507, i64* %3, align 8
  %508 = sext i32 %506 to i64
  %509 = shl nuw i64 %505, 32
  %510 = or i64 %509, %502
  %511 = sdiv i64 %510, %508
  %512 = shl i64 %511, 32
  %513 = ashr exact i64 %512, 32
  %514 = icmp eq i64 %511, %513
  br i1 %514, label %517, label %515

; <label>:515:                                    ; preds = %routine_idivl__ecx.exit299
  %516 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %507, %struct.Memory* %465)
  %.pre14 = load i64, i64* %RDX.i367.pre-phi, align 8
  %.pre15 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit278

; <label>:517:                                    ; preds = %routine_idivl__ecx.exit299
  %518 = srem i64 %510, %508
  %519 = and i64 %511, 4294967295
  store i64 %519, i64* %RAX.i407, align 8
  %520 = and i64 %518, 4294967295
  store i64 %520, i64* %138, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit278

routine_idivl__ecx.exit278:                       ; preds = %517, %515
  %521 = phi i64 [ %.pre15, %515 ], [ %507, %517 ]
  %522 = phi i64 [ %.pre14, %515 ], [ %520, %517 ]
  %523 = phi %struct.Memory* [ %516, %515 ], [ %465, %517 ]
  %524 = trunc i64 %522 to i32
  %525 = add i32 %524, -1
  %526 = zext i32 %525 to i64
  store i64 %526, i64* %RDX.i367.pre-phi, align 8
  %527 = icmp eq i32 %524, 0
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %14, align 1
  %529 = and i32 %525, 255
  %530 = tail call i32 @llvm.ctpop.i32(i32 %529)
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  %533 = xor i8 %532, 1
  store i8 %533, i8* %21, align 1
  %534 = xor i32 %525, %524
  %535 = lshr i32 %534, 4
  %536 = trunc i32 %535 to i8
  %537 = and i8 %536, 1
  store i8 %537, i8* %26, align 1
  %538 = icmp eq i32 %525, 0
  %539 = zext i1 %538 to i8
  store i8 %539, i8* %29, align 1
  %540 = lshr i32 %525, 31
  %541 = trunc i32 %540 to i8
  store i8 %541, i8* %32, align 1
  %542 = lshr i32 %524, 31
  %543 = xor i32 %540, %542
  %544 = add nuw nsw i32 %543, %542
  %545 = icmp eq i32 %544, 2
  %546 = zext i1 %545 to i8
  store i8 %546, i8* %38, align 1
  %547 = load i64, i64* %RBP.i, align 8
  %548 = add i64 %547, -44
  %549 = add i64 %521, 6
  store i64 %549, i64* %3, align 8
  %550 = inttoptr i64 %548 to i32*
  %551 = load i32, i32* %550, align 4
  %552 = zext i32 %551 to i64
  store i64 %552, i64* %RSI.i136, align 8
  store i8 0, i8* %AL.i301, align 1
  %553 = add i64 %521, -51284
  %554 = add i64 %521, 13
  %555 = load i64, i64* %6, align 8
  %556 = add i64 %555, -8
  %557 = inttoptr i64 %556 to i64*
  store i64 %554, i64* %557, align 8
  store i64 %556, i64* %6, align 8
  store i64 %553, i64* %3, align 8
  %call2_4984fc = tail call %struct.Memory* @sub_48bca0.gtp_mprintf(%struct.State* nonnull %0, i64 %553, %struct.Memory* %523)
  %558 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5871f6_type* @G__0x5871f6 to i64), i64* %RDI.i156, align 8
  %559 = load i64, i64* %RBP.i, align 8
  %560 = add i64 %559, -40
  %561 = add i64 %558, 14
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %560 to i64*
  %563 = load i64, i64* %562, align 8
  store i64 %563, i64* %R8.i294, align 8
  %564 = add i64 %563, 16
  %565 = add i64 %558, 18
  store i64 %565, i64* %3, align 8
  %566 = inttoptr i64 %564 to i32*
  %567 = load i32, i32* %566, align 4
  %568 = zext i32 %567 to i64
  store i64 %568, i64* %RSI.i136, align 8
  store i8 0, i8* %AL.i301, align 1
  %569 = add i64 %558, -51905
  %570 = add i64 %558, 25
  %571 = load i64, i64* %6, align 8
  %572 = add i64 %571, -8
  %573 = inttoptr i64 %572 to i64*
  store i64 %570, i64* %573, align 8
  store i64 %572, i64* %6, align 8
  store i64 %569, i64* %3, align 8
  %call2_498515 = tail call %struct.Memory* @sub_48ba40.gtp_printf(%struct.State* nonnull %0, i64 %569, %struct.Memory* %call2_4984fc)
  %574 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x58720a_type* @G__0x58720a to i64), i64* %RDI.i156, align 8
  %575 = load i64, i64* %RBP.i, align 8
  %576 = add i64 %575, -40
  %577 = add i64 %574, 14
  store i64 %577, i64* %3, align 8
  %578 = inttoptr i64 %576 to i64*
  %579 = load i64, i64* %578, align 8
  store i64 %579, i64* %R8.i294, align 8
  %580 = add i64 %579, 20
  %581 = add i64 %574, 18
  store i64 %581, i64* %3, align 8
  %582 = inttoptr i64 %580 to i32*
  %583 = load i32, i32* %582, align 4
  %584 = zext i32 %583 to i64
  store i64 %584, i64* %RSI.i136, align 8
  store i8 0, i8* %AL.i301, align 1
  %585 = add i64 %574, -51930
  %586 = add i64 %574, 25
  %587 = load i64, i64* %6, align 8
  %588 = add i64 %587, -8
  %589 = inttoptr i64 %588 to i64*
  store i64 %586, i64* %589, align 8
  store i64 %588, i64* %6, align 8
  store i64 %585, i64* %3, align 8
  %call2_49852e = tail call %struct.Memory* @sub_48ba40.gtp_printf(%struct.State* nonnull %0, i64 %585, %struct.Memory* %call2_498515)
  %590 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x58721e_type* @G__0x58721e to i64), i64* %RDI.i156, align 8
  %591 = load i64, i64* %RBP.i, align 8
  %592 = add i64 %591, -40
  %593 = add i64 %590, 14
  store i64 %593, i64* %3, align 8
  %594 = inttoptr i64 %592 to i64*
  %595 = load i64, i64* %594, align 8
  store i64 %595, i64* %R8.i294, align 8
  %596 = add i64 %595, 24
  %597 = add i64 %590, 18
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to i32*
  %599 = load i32, i32* %598, align 4
  %600 = zext i32 %599 to i64
  store i64 %600, i64* %RSI.i136, align 8
  store i8 0, i8* %AL.i301, align 1
  %601 = add i64 %590, -51955
  %602 = add i64 %590, 25
  %603 = load i64, i64* %6, align 8
  %604 = add i64 %603, -8
  %605 = inttoptr i64 %604 to i64*
  store i64 %602, i64* %605, align 8
  store i64 %604, i64* %6, align 8
  store i64 %601, i64* %3, align 8
  %call2_498547 = tail call %struct.Memory* @sub_48ba40.gtp_printf(%struct.State* nonnull %0, i64 %601, %struct.Memory* %call2_49852e)
  %606 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x587232_type* @G__0x587232 to i64), i64* %RDI.i156, align 8
  %607 = load i64, i64* %RBP.i, align 8
  %608 = add i64 %607, -40
  %609 = add i64 %606, 14
  store i64 %609, i64* %3, align 8
  %610 = inttoptr i64 %608 to i64*
  %611 = load i64, i64* %610, align 8
  store i64 %611, i64* %R8.i294, align 8
  %612 = add i64 %611, 28
  %613 = add i64 %606, 18
  store i64 %613, i64* %3, align 8
  %614 = inttoptr i64 %612 to i32*
  %615 = load i32, i32* %614, align 4
  %616 = zext i32 %615 to i64
  store i64 %616, i64* %RSI.i136, align 8
  store i8 0, i8* %AL.i301, align 1
  %617 = add i64 %606, -51980
  %618 = add i64 %606, 25
  %619 = load i64, i64* %6, align 8
  %620 = add i64 %619, -8
  %621 = inttoptr i64 %620 to i64*
  store i64 %618, i64* %621, align 8
  store i64 %620, i64* %6, align 8
  store i64 %617, i64* %3, align 8
  %call2_498560 = tail call %struct.Memory* @sub_48ba40.gtp_printf(%struct.State* nonnull %0, i64 %617, %struct.Memory* %call2_498547)
  %622 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x587246_type* @G__0x587246 to i64), i64* %RDI.i156, align 8
  store i64 20, i64* %RCX.i374, align 8
  %623 = load i64, i64* %RBP.i, align 8
  %624 = add i64 %623, -40
  %625 = add i64 %622, 19
  store i64 %625, i64* %3, align 8
  %626 = inttoptr i64 %624 to i64*
  %627 = load i64, i64* %626, align 8
  store i64 %627, i64* %R8.i294, align 8
  %628 = add i64 %627, 60
  %629 = add i64 %622, 23
  store i64 %629, i64* %3, align 8
  %630 = inttoptr i64 %628 to i32*
  %631 = load i32, i32* %630, align 4
  %632 = zext i32 %631 to i64
  store i64 %632, i64* %RAX.i407, align 8
  %633 = sext i32 %631 to i64
  %634 = lshr i64 %633, 32
  store i64 %634, i64* %RDX.i367.pre-phi, align 8
  %635 = add i64 %622, 26
  store i64 %635, i64* %3, align 8
  %636 = shl nuw i64 %634, 32
  %637 = or i64 %636, %632
  %638 = sdiv i64 %637, 20
  %639 = shl i64 %638, 32
  %640 = ashr exact i64 %639, 32
  %641 = icmp eq i64 %638, %640
  br i1 %641, label %644, label %642

; <label>:642:                                    ; preds = %routine_idivl__ecx.exit278
  %643 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %635, %struct.Memory* %call2_498560)
  %.pre16 = load i64, i64* %RAX.i407, align 8
  %.pre17 = load i64, i64* %3, align 8
  %.pre18 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit210

; <label>:644:                                    ; preds = %routine_idivl__ecx.exit278
  %645 = srem i64 %637, 20
  %646 = and i64 %638, 4294967295
  store i64 %646, i64* %RAX.i407, align 8
  %647 = and i64 %645, 4294967295
  store i64 %647, i64* %138, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit210

routine_idivl__ecx.exit210:                       ; preds = %644, %642
  %648 = phi i64 [ %.pre18, %642 ], [ %623, %644 ]
  %649 = phi i64 [ %.pre17, %642 ], [ %635, %644 ]
  %650 = phi i64 [ %.pre16, %642 ], [ %646, %644 ]
  %651 = phi %struct.Memory* [ %643, %642 ], [ %call2_498560, %644 ]
  %652 = trunc i64 %650 to i32
  %653 = add i32 %652, -1
  %654 = zext i32 %653 to i64
  store i64 %654, i64* %RAX.i407, align 8
  %655 = icmp eq i32 %652, 0
  %656 = zext i1 %655 to i8
  store i8 %656, i8* %14, align 1
  %657 = and i32 %653, 255
  %658 = tail call i32 @llvm.ctpop.i32(i32 %657)
  %659 = trunc i32 %658 to i8
  %660 = and i8 %659, 1
  %661 = xor i8 %660, 1
  store i8 %661, i8* %21, align 1
  %662 = xor i32 %653, %652
  %663 = lshr i32 %662, 4
  %664 = trunc i32 %663 to i8
  %665 = and i8 %664, 1
  store i8 %665, i8* %26, align 1
  %666 = icmp eq i32 %653, 0
  %667 = zext i1 %666 to i8
  store i8 %667, i8* %29, align 1
  %668 = lshr i32 %653, 31
  %669 = trunc i32 %668 to i8
  store i8 %669, i8* %32, align 1
  %670 = lshr i32 %652, 31
  %671 = xor i32 %668, %670
  %672 = add nuw nsw i32 %671, %670
  %673 = icmp eq i32 %672, 2
  %674 = zext i1 %673 to i8
  store i8 %674, i8* %38, align 1
  %675 = add i64 %648, -40
  %676 = add i64 %649, 7
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %675 to i64*
  %678 = load i64, i64* %677, align 8
  store i64 %678, i64* %R8.i294, align 8
  %679 = add i64 %678, 60
  %680 = add i64 %649, 11
  store i64 %680, i64* %3, align 8
  %681 = inttoptr i64 %679 to i32*
  %682 = load i32, i32* %681, align 4
  %683 = zext i32 %682 to i64
  store i64 %683, i64* %RSI.i136, align 8
  %684 = add i64 %648, -48
  %685 = add i64 %649, 14
  store i64 %685, i64* %3, align 8
  %686 = inttoptr i64 %684 to i32*
  store i32 %653, i32* %686, align 4
  %687 = load i32, i32* %ESI.i284, align 4
  %688 = zext i32 %687 to i64
  %689 = load i64, i64* %3, align 8
  store i64 %688, i64* %RAX.i407, align 8
  %690 = sext i32 %687 to i64
  %691 = lshr i64 %690, 32
  store i64 %691, i64* %RDX.i367.pre-phi, align 8
  %692 = load i32, i32* %ECX.i366, align 4
  %693 = add i64 %689, 5
  store i64 %693, i64* %3, align 8
  %694 = sext i32 %692 to i64
  %695 = shl nuw i64 %691, 32
  %696 = or i64 %695, %688
  %697 = sdiv i64 %696, %694
  %698 = shl i64 %697, 32
  %699 = ashr exact i64 %698, 32
  %700 = icmp eq i64 %697, %699
  br i1 %700, label %703, label %701

; <label>:701:                                    ; preds = %routine_idivl__ecx.exit210
  %702 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %693, %struct.Memory* %651)
  %.pre19 = load i64, i64* %RDX.i367.pre-phi, align 8
  %.pre20 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit190

; <label>:703:                                    ; preds = %routine_idivl__ecx.exit210
  %704 = srem i64 %696, %694
  %705 = and i64 %697, 4294967295
  store i64 %705, i64* %RAX.i407, align 8
  %706 = and i64 %704, 4294967295
  store i64 %706, i64* %138, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit190

routine_idivl__ecx.exit190:                       ; preds = %703, %701
  %707 = phi i64 [ %.pre20, %701 ], [ %693, %703 ]
  %708 = phi i64 [ %.pre19, %701 ], [ %706, %703 ]
  %709 = phi %struct.Memory* [ %702, %701 ], [ %651, %703 ]
  %710 = trunc i64 %708 to i32
  %711 = add i32 %710, -1
  %712 = zext i32 %711 to i64
  store i64 %712, i64* %RDX.i367.pre-phi, align 8
  %713 = icmp eq i32 %710, 0
  %714 = zext i1 %713 to i8
  store i8 %714, i8* %14, align 1
  %715 = and i32 %711, 255
  %716 = tail call i32 @llvm.ctpop.i32(i32 %715)
  %717 = trunc i32 %716 to i8
  %718 = and i8 %717, 1
  %719 = xor i8 %718, 1
  store i8 %719, i8* %21, align 1
  %720 = xor i32 %711, %710
  %721 = lshr i32 %720, 4
  %722 = trunc i32 %721 to i8
  %723 = and i8 %722, 1
  store i8 %723, i8* %26, align 1
  %724 = icmp eq i32 %711, 0
  %725 = zext i1 %724 to i8
  store i8 %725, i8* %29, align 1
  %726 = lshr i32 %711, 31
  %727 = trunc i32 %726 to i8
  store i8 %727, i8* %32, align 1
  %728 = lshr i32 %710, 31
  %729 = xor i32 %726, %728
  %730 = add nuw nsw i32 %729, %728
  %731 = icmp eq i32 %730, 2
  %732 = zext i1 %731 to i8
  store i8 %732, i8* %38, align 1
  %733 = load i64, i64* %RBP.i, align 8
  %734 = add i64 %733, -48
  %735 = add i64 %707, 6
  store i64 %735, i64* %3, align 8
  %736 = inttoptr i64 %734 to i32*
  %737 = load i32, i32* %736, align 4
  %738 = zext i32 %737 to i64
  store i64 %738, i64* %RSI.i136, align 8
  store i8 0, i8* %AL.i301, align 1
  %739 = add i64 %707, -51442
  %740 = add i64 %707, 13
  %741 = load i64, i64* %6, align 8
  %742 = add i64 %741, -8
  %743 = inttoptr i64 %742 to i64*
  store i64 %740, i64* %743, align 8
  store i64 %742, i64* %6, align 8
  store i64 %739, i64* %3, align 8
  %call2_49859a = tail call %struct.Memory* @sub_48bca0.gtp_mprintf(%struct.State* nonnull %0, i64 %739, %struct.Memory* %709)
  %744 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x58725a_type* @G__0x58725a to i64), i64* %RDI.i156, align 8
  %745 = load i64, i64* %RBP.i, align 8
  %746 = add i64 %745, -40
  %747 = add i64 %744, 14
  store i64 %747, i64* %3, align 8
  %748 = inttoptr i64 %746 to i64*
  %749 = load i64, i64* %748, align 8
  store i64 %749, i64* %R8.i294, align 8
  %750 = add i64 %749, 100
  %751 = add i64 %744, 18
  store i64 %751, i64* %3, align 8
  %752 = inttoptr i64 %750 to i32*
  %753 = load i32, i32* %752, align 4
  %754 = zext i32 %753 to i64
  store i64 %754, i64* %RSI.i136, align 8
  store i8 0, i8* %AL.i301, align 1
  %755 = add i64 %744, -52063
  %756 = add i64 %744, 25
  %757 = load i64, i64* %6, align 8
  %758 = add i64 %757, -8
  %759 = inttoptr i64 %758 to i64*
  store i64 %756, i64* %759, align 8
  store i64 %758, i64* %6, align 8
  store i64 %755, i64* %3, align 8
  %call2_4985b3 = tail call %struct.Memory* @sub_48ba40.gtp_printf(%struct.State* nonnull %0, i64 %755, %struct.Memory* %call2_49859a)
  %760 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x58726e_type* @G__0x58726e to i64), i64* %RDI.i156, align 8
  store i64 20, i64* %RCX.i374, align 8
  %761 = load i64, i64* %RBP.i, align 8
  %762 = add i64 %761, -40
  %763 = add i64 %760, 19
  store i64 %763, i64* %3, align 8
  %764 = inttoptr i64 %762 to i64*
  %765 = load i64, i64* %764, align 8
  store i64 %765, i64* %R8.i294, align 8
  %766 = add i64 %765, 32
  %767 = add i64 %760, 23
  store i64 %767, i64* %3, align 8
  %768 = inttoptr i64 %766 to i32*
  %769 = load i32, i32* %768, align 4
  %770 = zext i32 %769 to i64
  store i64 %770, i64* %RAX.i407, align 8
  %771 = sext i32 %769 to i64
  %772 = lshr i64 %771, 32
  store i64 %772, i64* %RDX.i367.pre-phi, align 8
  %773 = add i64 %760, 26
  store i64 %773, i64* %3, align 8
  %774 = shl nuw i64 %772, 32
  %775 = or i64 %774, %770
  %776 = sdiv i64 %775, 20
  %777 = shl i64 %776, 32
  %778 = ashr exact i64 %777, 32
  %779 = icmp eq i64 %776, %778
  br i1 %779, label %782, label %780

; <label>:780:                                    ; preds = %routine_idivl__ecx.exit190
  %781 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %773, %struct.Memory* %call2_4985b3)
  %.pre21 = load i64, i64* %RAX.i407, align 8
  %.pre22 = load i64, i64* %3, align 8
  %.pre23 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit154

; <label>:782:                                    ; preds = %routine_idivl__ecx.exit190
  %783 = srem i64 %775, 20
  %784 = and i64 %776, 4294967295
  store i64 %784, i64* %RAX.i407, align 8
  %785 = and i64 %783, 4294967295
  store i64 %785, i64* %138, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit154

routine_idivl__ecx.exit154:                       ; preds = %782, %780
  %786 = phi i64 [ %.pre23, %780 ], [ %761, %782 ]
  %787 = phi i64 [ %.pre22, %780 ], [ %773, %782 ]
  %788 = phi i64 [ %.pre21, %780 ], [ %784, %782 ]
  %789 = phi %struct.Memory* [ %781, %780 ], [ %call2_4985b3, %782 ]
  %790 = trunc i64 %788 to i32
  %791 = add i32 %790, -1
  %792 = zext i32 %791 to i64
  store i64 %792, i64* %RAX.i407, align 8
  %793 = icmp eq i32 %790, 0
  %794 = zext i1 %793 to i8
  store i8 %794, i8* %14, align 1
  %795 = and i32 %791, 255
  %796 = tail call i32 @llvm.ctpop.i32(i32 %795)
  %797 = trunc i32 %796 to i8
  %798 = and i8 %797, 1
  %799 = xor i8 %798, 1
  store i8 %799, i8* %21, align 1
  %800 = xor i32 %791, %790
  %801 = lshr i32 %800, 4
  %802 = trunc i32 %801 to i8
  %803 = and i8 %802, 1
  store i8 %803, i8* %26, align 1
  %804 = icmp eq i32 %791, 0
  %805 = zext i1 %804 to i8
  store i8 %805, i8* %29, align 1
  %806 = lshr i32 %791, 31
  %807 = trunc i32 %806 to i8
  store i8 %807, i8* %32, align 1
  %808 = lshr i32 %790, 31
  %809 = xor i32 %806, %808
  %810 = add nuw nsw i32 %809, %808
  %811 = icmp eq i32 %810, 2
  %812 = zext i1 %811 to i8
  store i8 %812, i8* %38, align 1
  %813 = add i64 %786, -40
  %814 = add i64 %787, 7
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %813 to i64*
  %816 = load i64, i64* %815, align 8
  store i64 %816, i64* %R8.i294, align 8
  %817 = add i64 %816, 32
  %818 = add i64 %787, 11
  store i64 %818, i64* %3, align 8
  %819 = inttoptr i64 %817 to i32*
  %820 = load i32, i32* %819, align 4
  %821 = zext i32 %820 to i64
  store i64 %821, i64* %RSI.i136, align 8
  %822 = add i64 %786, -52
  %823 = add i64 %787, 14
  store i64 %823, i64* %3, align 8
  %824 = inttoptr i64 %822 to i32*
  store i32 %791, i32* %824, align 4
  %825 = load i32, i32* %ESI.i284, align 4
  %826 = zext i32 %825 to i64
  %827 = load i64, i64* %3, align 8
  store i64 %826, i64* %RAX.i407, align 8
  %828 = sext i32 %825 to i64
  %829 = lshr i64 %828, 32
  store i64 %829, i64* %RDX.i367.pre-phi, align 8
  %830 = load i32, i32* %ECX.i366, align 4
  %831 = add i64 %827, 5
  store i64 %831, i64* %3, align 8
  %832 = sext i32 %830 to i64
  %833 = shl nuw i64 %829, 32
  %834 = or i64 %833, %826
  %835 = sdiv i64 %834, %832
  %836 = shl i64 %835, 32
  %837 = ashr exact i64 %836, 32
  %838 = icmp eq i64 %835, %837
  br i1 %838, label %841, label %839

; <label>:839:                                    ; preds = %routine_idivl__ecx.exit154
  %840 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %831, %struct.Memory* %789)
  %.pre24 = load i64, i64* %RDX.i367.pre-phi, align 8
  %.pre25 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit134

; <label>:841:                                    ; preds = %routine_idivl__ecx.exit154
  %842 = srem i64 %834, %832
  %843 = and i64 %835, 4294967295
  store i64 %843, i64* %RAX.i407, align 8
  %844 = and i64 %842, 4294967295
  store i64 %844, i64* %138, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit134

routine_idivl__ecx.exit134:                       ; preds = %841, %839
  %845 = phi i64 [ %.pre25, %839 ], [ %831, %841 ]
  %846 = phi i64 [ %.pre24, %839 ], [ %844, %841 ]
  %847 = phi %struct.Memory* [ %840, %839 ], [ %789, %841 ]
  %848 = trunc i64 %846 to i32
  %849 = add i32 %848, -1
  %850 = zext i32 %849 to i64
  store i64 %850, i64* %RDX.i367.pre-phi, align 8
  %851 = icmp eq i32 %848, 0
  %852 = zext i1 %851 to i8
  store i8 %852, i8* %14, align 1
  %853 = and i32 %849, 255
  %854 = tail call i32 @llvm.ctpop.i32(i32 %853)
  %855 = trunc i32 %854 to i8
  %856 = and i8 %855, 1
  %857 = xor i8 %856, 1
  store i8 %857, i8* %21, align 1
  %858 = xor i32 %849, %848
  %859 = lshr i32 %858, 4
  %860 = trunc i32 %859 to i8
  %861 = and i8 %860, 1
  store i8 %861, i8* %26, align 1
  %862 = icmp eq i32 %849, 0
  %863 = zext i1 %862 to i8
  store i8 %863, i8* %29, align 1
  %864 = lshr i32 %849, 31
  %865 = trunc i32 %864 to i8
  store i8 %865, i8* %32, align 1
  %866 = lshr i32 %848, 31
  %867 = xor i32 %864, %866
  %868 = add nuw nsw i32 %867, %866
  %869 = icmp eq i32 %868, 2
  %870 = zext i1 %869 to i8
  store i8 %870, i8* %38, align 1
  %871 = load i64, i64* %RBP.i, align 8
  %872 = add i64 %871, -52
  %873 = add i64 %845, 6
  store i64 %873, i64* %3, align 8
  %874 = inttoptr i64 %872 to i32*
  %875 = load i32, i32* %874, align 4
  %876 = zext i32 %875 to i64
  store i64 %876, i64* %RSI.i136, align 8
  store i8 0, i8* %AL.i301, align 1
  %877 = add i64 %845, -51525
  %878 = add i64 %845, 13
  %879 = load i64, i64* %6, align 8
  %880 = add i64 %879, -8
  %881 = inttoptr i64 %880 to i64*
  store i64 %878, i64* %881, align 8
  store i64 %880, i64* %6, align 8
  store i64 %877, i64* %3, align 8
  %call2_4985ed = tail call %struct.Memory* @sub_48bca0.gtp_mprintf(%struct.State* nonnull %0, i64 %877, %struct.Memory* %847)
  %882 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x587282_type* @G__0x587282 to i64), i64* %RDI.i156, align 8
  store i64 20, i64* %RCX.i374, align 8
  %883 = load i64, i64* %RBP.i, align 8
  %884 = add i64 %883, -40
  %885 = add i64 %882, 19
  store i64 %885, i64* %3, align 8
  %886 = inttoptr i64 %884 to i64*
  %887 = load i64, i64* %886, align 8
  store i64 %887, i64* %R8.i294, align 8
  %888 = add i64 %887, 140
  %889 = add i64 %882, 26
  store i64 %889, i64* %3, align 8
  %890 = inttoptr i64 %888 to i32*
  %891 = load i32, i32* %890, align 4
  %892 = zext i32 %891 to i64
  store i64 %892, i64* %RAX.i407, align 8
  %893 = sext i32 %891 to i64
  %894 = lshr i64 %893, 32
  store i64 %894, i64* %RDX.i367.pre-phi, align 8
  %895 = add i64 %882, 29
  store i64 %895, i64* %3, align 8
  %896 = shl nuw i64 %894, 32
  %897 = or i64 %896, %892
  %898 = sdiv i64 %897, 20
  %899 = shl i64 %898, 32
  %900 = ashr exact i64 %899, 32
  %901 = icmp eq i64 %898, %900
  br i1 %901, label %904, label %902

; <label>:902:                                    ; preds = %routine_idivl__ecx.exit134
  %903 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %895, %struct.Memory* %call2_4985ed)
  %.pre26 = load i64, i64* %RAX.i407, align 8
  %.pre27 = load i64, i64* %3, align 8
  %.pre28 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit111

; <label>:904:                                    ; preds = %routine_idivl__ecx.exit134
  %905 = srem i64 %897, 20
  %906 = and i64 %898, 4294967295
  store i64 %906, i64* %RAX.i407, align 8
  %907 = and i64 %905, 4294967295
  store i64 %907, i64* %138, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit111

routine_idivl__ecx.exit111:                       ; preds = %904, %902
  %908 = phi i64 [ %.pre28, %902 ], [ %883, %904 ]
  %909 = phi i64 [ %.pre27, %902 ], [ %895, %904 ]
  %910 = phi i64 [ %.pre26, %902 ], [ %906, %904 ]
  %911 = phi %struct.Memory* [ %903, %902 ], [ %call2_4985ed, %904 ]
  %912 = trunc i64 %910 to i32
  %913 = add i32 %912, -1
  %914 = zext i32 %913 to i64
  store i64 %914, i64* %RAX.i407, align 8
  %915 = icmp eq i32 %912, 0
  %916 = zext i1 %915 to i8
  store i8 %916, i8* %14, align 1
  %917 = and i32 %913, 255
  %918 = tail call i32 @llvm.ctpop.i32(i32 %917)
  %919 = trunc i32 %918 to i8
  %920 = and i8 %919, 1
  %921 = xor i8 %920, 1
  store i8 %921, i8* %21, align 1
  %922 = xor i32 %913, %912
  %923 = lshr i32 %922, 4
  %924 = trunc i32 %923 to i8
  %925 = and i8 %924, 1
  store i8 %925, i8* %26, align 1
  %926 = icmp eq i32 %913, 0
  %927 = zext i1 %926 to i8
  store i8 %927, i8* %29, align 1
  %928 = lshr i32 %913, 31
  %929 = trunc i32 %928 to i8
  store i8 %929, i8* %32, align 1
  %930 = lshr i32 %912, 31
  %931 = xor i32 %928, %930
  %932 = add nuw nsw i32 %931, %930
  %933 = icmp eq i32 %932, 2
  %934 = zext i1 %933 to i8
  store i8 %934, i8* %38, align 1
  %935 = add i64 %908, -40
  %936 = add i64 %909, 7
  store i64 %936, i64* %3, align 8
  %937 = inttoptr i64 %935 to i64*
  %938 = load i64, i64* %937, align 8
  store i64 %938, i64* %R8.i294, align 8
  %939 = add i64 %938, 140
  %940 = add i64 %909, 14
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %939 to i32*
  %942 = load i32, i32* %941, align 4
  %943 = zext i32 %942 to i64
  store i64 %943, i64* %RSI.i136, align 8
  %944 = add i64 %908, -56
  %945 = add i64 %909, 17
  store i64 %945, i64* %3, align 8
  %946 = inttoptr i64 %944 to i32*
  store i32 %913, i32* %946, align 4
  %947 = load i32, i32* %ESI.i284, align 4
  %948 = zext i32 %947 to i64
  %949 = load i64, i64* %3, align 8
  store i64 %948, i64* %RAX.i407, align 8
  %950 = sext i32 %947 to i64
  %951 = lshr i64 %950, 32
  store i64 %951, i64* %RDX.i367.pre-phi, align 8
  %952 = load i32, i32* %ECX.i366, align 4
  %953 = add i64 %949, 5
  store i64 %953, i64* %3, align 8
  %954 = sext i32 %952 to i64
  %955 = shl nuw i64 %951, 32
  %956 = or i64 %955, %948
  %957 = sdiv i64 %956, %954
  %958 = shl i64 %957, 32
  %959 = ashr exact i64 %958, 32
  %960 = icmp eq i64 %957, %959
  br i1 %960, label %963, label %961

; <label>:961:                                    ; preds = %routine_idivl__ecx.exit111
  %962 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %953, %struct.Memory* %911)
  %.pre29 = load i64, i64* %RDX.i367.pre-phi, align 8
  %.pre30 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:963:                                    ; preds = %routine_idivl__ecx.exit111
  %964 = srem i64 %956, %954
  %965 = and i64 %957, 4294967295
  store i64 %965, i64* %RAX.i407, align 8
  %966 = and i64 %964, 4294967295
  store i64 %966, i64* %138, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %963, %961
  %967 = phi i64 [ %.pre30, %961 ], [ %953, %963 ]
  %968 = phi i64 [ %.pre29, %961 ], [ %966, %963 ]
  %969 = phi %struct.Memory* [ %962, %961 ], [ %911, %963 ]
  %970 = trunc i64 %968 to i32
  %971 = add i32 %970, -1
  %972 = zext i32 %971 to i64
  store i64 %972, i64* %RDX.i367.pre-phi, align 8
  %973 = icmp eq i32 %970, 0
  %974 = zext i1 %973 to i8
  store i8 %974, i8* %14, align 1
  %975 = and i32 %971, 255
  %976 = tail call i32 @llvm.ctpop.i32(i32 %975)
  %977 = trunc i32 %976 to i8
  %978 = and i8 %977, 1
  %979 = xor i8 %978, 1
  store i8 %979, i8* %21, align 1
  %980 = xor i32 %971, %970
  %981 = lshr i32 %980, 4
  %982 = trunc i32 %981 to i8
  %983 = and i8 %982, 1
  store i8 %983, i8* %26, align 1
  %984 = icmp eq i32 %971, 0
  %985 = zext i1 %984 to i8
  store i8 %985, i8* %29, align 1
  %986 = lshr i32 %971, 31
  %987 = trunc i32 %986 to i8
  store i8 %987, i8* %32, align 1
  %988 = lshr i32 %970, 31
  %989 = xor i32 %986, %988
  %990 = add nuw nsw i32 %989, %988
  %991 = icmp eq i32 %990, 2
  %992 = zext i1 %991 to i8
  store i8 %992, i8* %38, align 1
  %993 = load i64, i64* %RBP.i, align 8
  %994 = add i64 %993, -56
  %995 = add i64 %967, 6
  store i64 %995, i64* %3, align 8
  %996 = inttoptr i64 %994 to i32*
  %997 = load i32, i32* %996, align 4
  %998 = zext i32 %997 to i64
  store i64 %998, i64* %RSI.i136, align 8
  store i8 0, i8* %AL.i301, align 1
  %999 = add i64 %967, -51589
  %1000 = add i64 %967, 13
  %1001 = load i64, i64* %6, align 8
  %1002 = add i64 %1001, -8
  %1003 = inttoptr i64 %1002 to i64*
  store i64 %1000, i64* %1003, align 8
  store i64 %1002, i64* %6, align 8
  store i64 %999, i64* %3, align 8
  %call2_49862d = tail call %struct.Memory* @sub_48bca0.gtp_mprintf(%struct.State* nonnull %0, i64 %999, %struct.Memory* %969)
  %1004 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x587296_type* @G__0x587296 to i64), i64* %RDI.i156, align 8
  %1005 = load i64, i64* %RBP.i, align 8
  %1006 = add i64 %1005, -40
  %1007 = add i64 %1004, 14
  store i64 %1007, i64* %3, align 8
  %1008 = inttoptr i64 %1006 to i64*
  %1009 = load i64, i64* %1008, align 8
  store i64 %1009, i64* %R8.i294, align 8
  %1010 = add i64 %1009, 180
  %1011 = add i64 %1004, 21
  store i64 %1011, i64* %3, align 8
  %1012 = inttoptr i64 %1010 to i32*
  %1013 = load i32, i32* %1012, align 4
  %1014 = zext i32 %1013 to i64
  store i64 %1014, i64* %RSI.i136, align 8
  store i8 0, i8* %AL.i301, align 1
  %1015 = add i64 %1004, -52210
  %1016 = add i64 %1004, 28
  %1017 = load i64, i64* %6, align 8
  %1018 = add i64 %1017, -8
  %1019 = inttoptr i64 %1018 to i64*
  store i64 %1016, i64* %1019, align 8
  store i64 %1018, i64* %6, align 8
  store i64 %1015, i64* %3, align 8
  %call2_498649 = tail call %struct.Memory* @sub_48ba40.gtp_printf(%struct.State* nonnull %0, i64 %1015, %struct.Memory* %call2_49862d)
  %1020 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5872aa_type* @G__0x5872aa to i64), i64* %RDI.i156, align 8
  %1021 = load i64, i64* %RBP.i, align 8
  %1022 = add i64 %1021, -40
  %1023 = add i64 %1020, 14
  store i64 %1023, i64* %3, align 8
  %1024 = inttoptr i64 %1022 to i64*
  %1025 = load i64, i64* %1024, align 8
  store i64 %1025, i64* %R8.i294, align 8
  %1026 = add i64 %1025, 36
  %1027 = add i64 %1020, 18
  store i64 %1027, i64* %3, align 8
  %1028 = inttoptr i64 %1026 to i32*
  %1029 = load i32, i32* %1028, align 4
  %1030 = zext i32 %1029 to i64
  store i64 %1030, i64* %RSI.i136, align 8
  store i8 0, i8* %AL.i301, align 1
  %1031 = add i64 %1020, -52238
  %1032 = add i64 %1020, 25
  %1033 = load i64, i64* %6, align 8
  %1034 = add i64 %1033, -8
  %1035 = inttoptr i64 %1034 to i64*
  store i64 %1032, i64* %1035, align 8
  store i64 %1034, i64* %6, align 8
  store i64 %1031, i64* %3, align 8
  %call2_498662 = tail call %struct.Memory* @sub_48ba40.gtp_printf(%struct.State* nonnull %0, i64 %1031, %struct.Memory* %call2_498649)
  %1036 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5872be_type* @G__0x5872be to i64), i64* %RDI.i156, align 8
  %1037 = load i64, i64* %RBP.i, align 8
  %1038 = add i64 %1037, -40
  %1039 = add i64 %1036, 14
  store i64 %1039, i64* %3, align 8
  %1040 = inttoptr i64 %1038 to i64*
  %1041 = load i64, i64* %1040, align 8
  store i64 %1041, i64* %R8.i294, align 8
  %1042 = add i64 %1041, 40
  %1043 = add i64 %1036, 18
  store i64 %1043, i64* %3, align 8
  %1044 = inttoptr i64 %1042 to i32*
  %1045 = load i32, i32* %1044, align 4
  %1046 = zext i32 %1045 to i64
  store i64 %1046, i64* %RSI.i136, align 8
  store i8 0, i8* %AL.i301, align 1
  %1047 = add i64 %1036, -52263
  %1048 = add i64 %1036, 25
  %1049 = load i64, i64* %6, align 8
  %1050 = add i64 %1049, -8
  %1051 = inttoptr i64 %1050 to i64*
  store i64 %1048, i64* %1051, align 8
  store i64 %1050, i64* %6, align 8
  store i64 %1047, i64* %3, align 8
  %call2_49867b = tail call %struct.Memory* @sub_48ba40.gtp_printf(%struct.State* nonnull %0, i64 %1047, %struct.Memory* %call2_498662)
  %1052 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5872d2_type* @G__0x5872d2 to i64), i64* %RDI.i156, align 8
  %1053 = load i64, i64* %RBP.i, align 8
  %1054 = add i64 %1053, -40
  %1055 = add i64 %1052, 14
  store i64 %1055, i64* %3, align 8
  %1056 = inttoptr i64 %1054 to i64*
  %1057 = load i64, i64* %1056, align 8
  store i64 %1057, i64* %R8.i294, align 8
  %1058 = add i64 %1057, 44
  %1059 = add i64 %1052, 18
  store i64 %1059, i64* %3, align 8
  %1060 = inttoptr i64 %1058 to i32*
  %1061 = load i32, i32* %1060, align 4
  %1062 = zext i32 %1061 to i64
  store i64 %1062, i64* %RSI.i136, align 8
  store i8 0, i8* %AL.i301, align 1
  %1063 = add i64 %1052, -52288
  %1064 = add i64 %1052, 25
  %1065 = load i64, i64* %6, align 8
  %1066 = add i64 %1065, -8
  %1067 = inttoptr i64 %1066 to i64*
  store i64 %1064, i64* %1067, align 8
  store i64 %1066, i64* %6, align 8
  store i64 %1063, i64* %3, align 8
  %call2_498694 = tail call %struct.Memory* @sub_48ba40.gtp_printf(%struct.State* nonnull %0, i64 %1063, %struct.Memory* %call2_49867b)
  %1068 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x5872e6_type* @G__0x5872e6 to i64), i64* %RDI.i156, align 8
  %1069 = load i64, i64* %RBP.i, align 8
  %1070 = add i64 %1069, -40
  %1071 = add i64 %1068, 14
  store i64 %1071, i64* %3, align 8
  %1072 = inttoptr i64 %1070 to i64*
  %1073 = load i64, i64* %1072, align 8
  store i64 %1073, i64* %R8.i294, align 8
  %1074 = add i64 %1073, 48
  %1075 = add i64 %1068, 18
  store i64 %1075, i64* %3, align 8
  %1076 = inttoptr i64 %1074 to i32*
  %1077 = load i32, i32* %1076, align 4
  %1078 = zext i32 %1077 to i64
  store i64 %1078, i64* %RSI.i136, align 8
  store i8 0, i8* %AL.i301, align 1
  %1079 = add i64 %1068, -52313
  %1080 = add i64 %1068, 25
  %1081 = load i64, i64* %6, align 8
  %1082 = add i64 %1081, -8
  %1083 = inttoptr i64 %1082 to i64*
  store i64 %1080, i64* %1083, align 8
  store i64 %1082, i64* %6, align 8
  store i64 %1079, i64* %3, align 8
  %call2_4986ad = tail call %struct.Memory* @sub_48ba40.gtp_printf(%struct.State* nonnull %0, i64 %1079, %struct.Memory* %call2_498694)
  %.pre31 = load i64, i64* %3, align 8
  %.pre32 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4986b2

block_.L_4986b2:                                  ; preds = %block_498432, %block_498426, %routine_idivl__ecx.exit
  %1084 = phi i64 [ %.pre32, %routine_idivl__ecx.exit ], [ %178, %block_498426 ], [ %178, %block_498432 ]
  %1085 = phi i64 [ %.pre31, %routine_idivl__ecx.exit ], [ %270, %block_498426 ], [ %302, %block_498432 ]
  %MEMORY.4 = phi %struct.Memory* [ %call2_4986ad, %routine_idivl__ecx.exit ], [ %MEMORY.2, %block_498426 ], [ %MEMORY.2, %block_498432 ]
  %1086 = add i64 %1084, -32
  %1087 = add i64 %1085, 8
  store i64 %1087, i64* %3, align 8
  %1088 = inttoptr i64 %1086 to i32*
  %1089 = load i32, i32* %1088, align 4
  %1090 = add i32 %1089, 1
  %1091 = zext i32 %1090 to i64
  store i64 %1091, i64* %RAX.i407, align 8
  %1092 = icmp eq i32 %1089, -1
  %1093 = icmp eq i32 %1090, 0
  %1094 = or i1 %1092, %1093
  %1095 = zext i1 %1094 to i8
  store i8 %1095, i8* %14, align 1
  %1096 = and i32 %1090, 255
  %1097 = tail call i32 @llvm.ctpop.i32(i32 %1096)
  %1098 = trunc i32 %1097 to i8
  %1099 = and i8 %1098, 1
  %1100 = xor i8 %1099, 1
  store i8 %1100, i8* %21, align 1
  %1101 = xor i32 %1090, %1089
  %1102 = lshr i32 %1101, 4
  %1103 = trunc i32 %1102 to i8
  %1104 = and i8 %1103, 1
  store i8 %1104, i8* %26, align 1
  %1105 = zext i1 %1093 to i8
  store i8 %1105, i8* %29, align 1
  %1106 = lshr i32 %1090, 31
  %1107 = trunc i32 %1106 to i8
  store i8 %1107, i8* %32, align 1
  %1108 = lshr i32 %1089, 31
  %1109 = xor i32 %1106, %1108
  %1110 = add nuw nsw i32 %1109, %1106
  %1111 = icmp eq i32 %1110, 2
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %38, align 1
  %1113 = add i64 %1085, 14
  store i64 %1113, i64* %3, align 8
  store i32 %1090, i32* %1088, align 4
  %1114 = load i64, i64* %3, align 8
  %1115 = add i64 %1114, -692
  store i64 %1115, i64* %3, align 8
  br label %block_.L_49840c

block_.L_4986c5:                                  ; preds = %block_.L_49840c
  %1116 = add i64 %178, -28
  %1117 = add i64 %211, 8
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i32*
  %1119 = load i32, i32* %1118, align 4
  %1120 = add i32 %1119, 1
  %1121 = zext i32 %1120 to i64
  store i64 %1121, i64* %RAX.i407, align 8
  %1122 = icmp eq i32 %1119, -1
  %1123 = icmp eq i32 %1120, 0
  %1124 = or i1 %1122, %1123
  %1125 = zext i1 %1124 to i8
  store i8 %1125, i8* %14, align 1
  %1126 = and i32 %1120, 255
  %1127 = tail call i32 @llvm.ctpop.i32(i32 %1126)
  %1128 = trunc i32 %1127 to i8
  %1129 = and i8 %1128, 1
  %1130 = xor i8 %1129, 1
  store i8 %1130, i8* %21, align 1
  %1131 = xor i32 %1120, %1119
  %1132 = lshr i32 %1131, 4
  %1133 = trunc i32 %1132 to i8
  %1134 = and i8 %1133, 1
  store i8 %1134, i8* %26, align 1
  %1135 = zext i1 %1123 to i8
  store i8 %1135, i8* %29, align 1
  %1136 = lshr i32 %1120, 31
  %1137 = trunc i32 %1136 to i8
  store i8 %1137, i8* %32, align 1
  %1138 = lshr i32 %1119, 31
  %1139 = xor i32 %1136, %1138
  %1140 = add nuw nsw i32 %1139, %1136
  %1141 = icmp eq i32 %1140, 2
  %1142 = zext i1 %1141 to i8
  store i8 %1142, i8* %38, align 1
  %1143 = add i64 %211, 14
  store i64 %1143, i64* %3, align 8
  store i32 %1120, i32* %1118, align 4
  %1144 = load i64, i64* %3, align 8
  %1145 = add i64 %1144, -734
  store i64 %1145, i64* %3, align 8
  br label %block_.L_4983f5

block_.L_4986d8:                                  ; preds = %block_.L_4983f5
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI.i156, align 8
  store i8 0, i8* %AL.i301, align 1
  %1146 = add i64 %173, -52376
  %1147 = add i64 %173, 17
  %1148 = load i64, i64* %6, align 8
  %1149 = add i64 %1148, -8
  %1150 = inttoptr i64 %1149 to i64*
  store i64 %1147, i64* %1150, align 8
  store i64 %1149, i64* %6, align 8
  store i64 %1146, i64* %3, align 8
  %call2_4986e4 = tail call %struct.Memory* @sub_48ba40.gtp_printf(%struct.State* nonnull %0, i64 %1146, %struct.Memory* %MEMORY.1)
  %1151 = load i64, i64* %RBP.i, align 8
  %1152 = add i64 %1151, -4
  %1153 = load i64, i64* %3, align 8
  %1154 = add i64 %1153, 7
  store i64 %1154, i64* %3, align 8
  %1155 = inttoptr i64 %1152 to i32*
  store i32 0, i32* %1155, align 4
  %.pre9 = load i64, i64* %3, align 8
  br label %block_.L_4986f0

block_.L_4986f0:                                  ; preds = %block_.L_4986d8, %block_4983c2
  %RAX.i.pre-phi = phi i64* [ %RAX.i407, %block_.L_4986d8 ], [ %.pre33, %block_4983c2 ]
  %1156 = phi i64 [ %.pre9, %block_.L_4986d8 ], [ %117, %block_4983c2 ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_4986e4, %block_.L_4986d8 ], [ %call2_4983ce, %block_4983c2 ]
  %1157 = load i64, i64* %RBP.i, align 8
  %1158 = add i64 %1157, -4
  %1159 = add i64 %1156, 3
  store i64 %1159, i64* %3, align 8
  %1160 = inttoptr i64 %1158 to i32*
  %1161 = load i32, i32* %1160, align 4
  %1162 = zext i32 %1161 to i64
  store i64 %1162, i64* %RAX.i.pre-phi, align 8
  %1163 = load i64, i64* %6, align 8
  %1164 = add i64 %1163, 64
  store i64 %1164, i64* %6, align 8
  %1165 = icmp ugt i64 %1163, -65
  %1166 = zext i1 %1165 to i8
  store i8 %1166, i8* %14, align 1
  %1167 = trunc i64 %1164 to i32
  %1168 = and i32 %1167, 255
  %1169 = tail call i32 @llvm.ctpop.i32(i32 %1168)
  %1170 = trunc i32 %1169 to i8
  %1171 = and i8 %1170, 1
  %1172 = xor i8 %1171, 1
  store i8 %1172, i8* %21, align 1
  %1173 = xor i64 %1164, %1163
  %1174 = lshr i64 %1173, 4
  %1175 = trunc i64 %1174 to i8
  %1176 = and i8 %1175, 1
  store i8 %1176, i8* %26, align 1
  %1177 = icmp eq i64 %1164, 0
  %1178 = zext i1 %1177 to i8
  store i8 %1178, i8* %29, align 1
  %1179 = lshr i64 %1164, 63
  %1180 = trunc i64 %1179 to i8
  store i8 %1180, i8* %32, align 1
  %1181 = lshr i64 %1163, 63
  %1182 = xor i64 %1179, %1181
  %1183 = add nuw nsw i64 %1182, %1179
  %1184 = icmp eq i64 %1183, 2
  %1185 = zext i1 %1184 to i8
  store i8 %1185, i8* %38, align 1
  %1186 = add i64 %1156, 8
  store i64 %1186, i64* %3, align 8
  %1187 = add i64 %1163, 72
  %1188 = inttoptr i64 %1164 to i64*
  %1189 = load i64, i64* %1188, align 8
  store i64 %1189, i64* %RBP.i, align 8
  store i64 %1187, i64* %6, align 8
  %1190 = add i64 %1156, 9
  store i64 %1190, i64* %3, align 8
  %1191 = inttoptr i64 %1187 to i64*
  %1192 = load i64, i64* %1191, align 8
  store i64 %1192, i64* %3, align 8
  %1193 = add i64 %1163, 80
  store i64 %1193, i64* %6, align 8
  ret %struct.Memory* %MEMORY.5
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
define %struct.Memory* @routine_subq__0x40___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -64
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 64
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
define %struct.Memory* @routine_movq__0x58714b___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58714b_type* @G__0x58714b to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1, i32* %7, align 4
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
define %struct.Memory* @routine_jl_.L_4983db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x14__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x18__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.gtp_decode_coord(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4983db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x587188___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x587188_type* @G__0x587188 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.gtp_failure(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4986f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
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
define %struct.Memory* @routine_callq_.examine_position(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.gtp_start_response(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4986d8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4986c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 1
  %10 = icmp ne i32 %8, -1
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
  %19 = xor i32 %8, 16
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
  %31 = lshr i32 %8, 31
  %32 = xor i32 %31, 1
  %33 = xor i32 %28, %31
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_49843e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20
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
define %struct.Memory* @routine_jne_.L_4986b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -24
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
define %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imull__0x14__MINUS0x1c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i64 %9, 20
  %11 = trunc i64 %10 to i32
  %12 = and i64 %10, 4294967292
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_addl__0x15___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 21
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_addl_MINUS0x20__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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
define %struct.Memory* @routine_imulq__0x17c___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 380
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 252
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %24, align 1
  %25 = lshr i64 %11, 63
  %26 = trunc i64 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %14, i8* %28, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i64 %4, %3
  store i64 %7, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
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
define %struct.Memory* @routine_callq_.gtp_print_vertex(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57f102___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57f102_type* @G__0x57f102 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.gtp_printf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x5871a4___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5871a4_type* @G__0x5871a4 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RDX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.gtp_mprintf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x5871b8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5871b8_type* @G__0x5871b8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x4__rdx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_movq__0x5871cc___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5871cc_type* @G__0x5871cc to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_0x8__rdx____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__0x5871e2___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5871e2_type* @G__0x5871e2 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x14___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 20, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__rdx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movq_MINUS0x28__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xc__r8____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 12
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
define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
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
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movq__0x5871f6___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5871f6_type* @G__0x5871f6 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x10__r8____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 16
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
define %struct.Memory* @routine_movq__0x58720a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58720a_type* @G__0x58720a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x14__r8____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 20
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
define %struct.Memory* @routine_movq__0x58721e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58721e_type* @G__0x58721e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x18__r8____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_movq__0x587232___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x587232_type* @G__0x587232 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1c__r8____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 28
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
define %struct.Memory* @routine_movq__0x587246___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x587246_type* @G__0x587246 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x3c__r8____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 60
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_movq__0x58725a___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58725a_type* @G__0x58725a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x64__r8____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 100
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
define %struct.Memory* @routine_movq__0x58726e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x58726e_type* @G__0x58726e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x20__r8____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x20__r8____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 32
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
define %struct.Memory* @routine_movq__0x587282___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x587282_type* @G__0x587282 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8c__r8____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 140
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x8c__r8____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 140
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
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
define %struct.Memory* @routine_movq__0x587296___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x587296_type* @G__0x587296 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb4__r8____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 180
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5872aa___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5872aa_type* @G__0x5872aa to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x24__r8____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 36
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
define %struct.Memory* @routine_movq__0x5872be___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5872be_type* @G__0x5872be to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x28__r8____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 40
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
define %struct.Memory* @routine_movq__0x5872d2___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5872d2_type* @G__0x5872d2 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x2c__r8____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 44
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
define %struct.Memory* @routine_movq__0x5872e6___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5872e6_type* @G__0x5872e6 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x30__r8____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 48
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
define %struct.Memory* @routine_jmpq_.L_4986b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_49840c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4986ca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_4983f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x586073___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_addq__0x40___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 64
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -65
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
