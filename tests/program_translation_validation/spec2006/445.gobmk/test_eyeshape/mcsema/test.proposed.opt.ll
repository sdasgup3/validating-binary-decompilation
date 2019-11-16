; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xab0f28_type = type <{ [4 x i8] }>
%G__0x57d7b6_type = type <{ [8 x i8] }>
%G__0x57dbcc_type = type <{ [8 x i8] }>
%G__0x57dbe7_type = type <{ [8 x i8] }>
%G__0x57dc04_type = type <{ [8 x i8] }>
%G__0x57dc2f_type = type <{ [8 x i8] }>
%G__0x57dc4b_type = type <{ [8 x i8] }>
%G__0x57dc62_type = type <{ [8 x i8] }>
%G__0x57dc7c_type = type <{ [8 x i8] }>
%G__0x57dc94_type = type <{ [8 x i8] }>
%G__0x586073_type = type <{ [8 x i8] }>
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
@G_0xab0f28 = local_unnamed_addr global %G_0xab0f28_type zeroinitializer
@G__0x57d7b6 = global %G__0x57d7b6_type zeroinitializer
@G__0x57dbcc = global %G__0x57dbcc_type zeroinitializer
@G__0x57dbe7 = global %G__0x57dbe7_type zeroinitializer
@G__0x57dc04 = global %G__0x57dc04_type zeroinitializer
@G__0x57dc2f = global %G__0x57dc2f_type zeroinitializer
@G__0x57dc4b = global %G__0x57dc4b_type zeroinitializer
@G__0x57dc62 = global %G__0x57dc62_type zeroinitializer
@G__0x57dc7c = global %G__0x57dc7c_type zeroinitializer
@G__0x57dc94 = global %G__0x57dc94_type zeroinitializer
@G__0x586073 = global %G__0x586073_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_408b90.clear_board(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_425bd0.reset_engine(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40e310.play_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_474e00.showboard(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407d50.store_board(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407f00.restore_board(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40ead0.is_legal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_425c60.examine_position(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_446910.owl_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44cb30.owl_does_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44c3c0.owl_does_defend(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_44aac0.owl_defend(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @test_eyeshape(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -6632
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 6624
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
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i960 = bitcast %union.anon* %39 to i32*
  %40 = add i64 %7, -12
  %41 = load i32, i32* %EDI.i960, align 4
  %42 = add i64 %10, 13
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i32*
  store i32 %41, i32* %43, align 4
  %RSI.i982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -16
  %46 = load i64, i64* %RSI.i982, align 8
  %47 = load i64, i64* %3, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* %3, align 8
  %49 = inttoptr i64 %45 to i64*
  store i64 %46, i64* %49, align 8
  %50 = load i64, i64* %RBP.i, align 8
  %51 = add i64 %50, -1640
  %52 = load i64, i64* %3, align 8
  %53 = add i64 %52, 10
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %51 to i32*
  store i32 0, i32* %54, align 4
  %55 = load i64, i64* %3, align 8
  %56 = add i64 %55, -216844
  %57 = add i64 %55, 5
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, -8
  %60 = inttoptr i64 %59 to i64*
  store i64 %57, i64* %60, align 8
  store i64 %59, i64* %6, align 8
  store i64 %56, i64* %3, align 8
  %call2_43da9c = tail call %struct.Memory* @sub_408b90.clear_board(%struct.State* %0, i64 %56, %struct.Memory* %2)
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %61, -98001
  %63 = add i64 %61, 5
  %64 = load i64, i64* %6, align 8
  %65 = add i64 %64, -8
  %66 = inttoptr i64 %65 to i64*
  store i64 %63, i64* %66, align 8
  store i64 %65, i64* %6, align 8
  store i64 %62, i64* %3, align 8
  %call2_43daa1 = tail call %struct.Memory* @sub_425bd0.reset_engine(%struct.State* %0, i64 %62, %struct.Memory* %call2_43da9c)
  %67 = load i64, i64* %3, align 8
  store i64 0, i64* %RSI.i982, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %RDI.i973 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %68 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i971 = getelementptr inbounds %union.anon, %union.anon* %68, i64 0, i32 0
  store i64 1600, i64* %RDX.i971, align 8
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i967 = getelementptr inbounds %union.anon, %union.anon* %69, i64 0, i32 0
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -1632
  store i64 %71, i64* %RAX.i967, align 8
  store i64 %71, i64* %RDI.i973, align 8
  %72 = add i64 %67, -248374
  %73 = add i64 %67, 24
  %74 = load i64, i64* %6, align 8
  %75 = add i64 %74, -8
  %76 = inttoptr i64 %75 to i64*
  store i64 %73, i64* %76, align 8
  store i64 %75, i64* %6, align 8
  store i64 %72, i64* %3, align 8
  %77 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %call2_43daa1)
  %78 = load i64, i64* %RBP.i, align 8
  %79 = add i64 %78, -20
  %80 = load i64, i64* %3, align 8
  %81 = add i64 %80, 7
  store i64 %81, i64* %3, align 8
  %82 = inttoptr i64 %79 to i32*
  store i32 0, i32* %82, align 4
  %EAX.i952 = bitcast %union.anon* %69 to i32*
  %RCX.i945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8.i912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i907 = bitcast %union.anon* %83 to i32*
  %84 = getelementptr inbounds %union.anon, %union.anon* %83, i64 0, i32 0
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %86 = bitcast %union.anon* %68 to i32*
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i878 = bitcast %union.anon* %87 to i32*
  %88 = getelementptr inbounds %union.anon, %union.anon* %87, i64 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_43dac5

block_.L_43dac5:                                  ; preds = %block_.L_43db8e, %entry
  %89 = phi i64 [ %.pre, %entry ], [ %414, %block_.L_43db8e ]
  %MEMORY.0 = phi %struct.Memory* [ %77, %entry ], [ %MEMORY.2, %block_.L_43db8e ]
  %90 = load i64, i64* %RBP.i, align 8
  %91 = add i64 %90, -20
  %92 = add i64 %89, 3
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %91 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = zext i32 %94 to i64
  store i64 %95, i64* %RAX.i967, align 8
  %96 = add i64 %90, -4
  %97 = add i64 %89, 6
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i32*
  %99 = load i32, i32* %98, align 4
  %100 = sub i32 %94, %99
  %101 = icmp ult i32 %94, %99
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %14, align 1
  %103 = and i32 %100, 255
  %104 = tail call i32 @llvm.ctpop.i32(i32 %103)
  %105 = trunc i32 %104 to i8
  %106 = and i8 %105, 1
  %107 = xor i8 %106, 1
  store i8 %107, i8* %21, align 1
  %108 = xor i32 %99, %94
  %109 = xor i32 %108, %100
  %110 = lshr i32 %109, 4
  %111 = trunc i32 %110 to i8
  %112 = and i8 %111, 1
  store i8 %112, i8* %26, align 1
  %113 = icmp eq i32 %100, 0
  %114 = zext i1 %113 to i8
  store i8 %114, i8* %29, align 1
  %115 = lshr i32 %100, 31
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %32, align 1
  %117 = lshr i32 %94, 31
  %118 = lshr i32 %99, 31
  %119 = xor i32 %118, %117
  %120 = xor i32 %115, %117
  %121 = add nuw nsw i32 %120, %119
  %122 = icmp eq i32 %121, 2
  %123 = zext i1 %122 to i8
  store i8 %123, i8* %38, align 1
  %124 = icmp ne i8 %116, 0
  %125 = xor i1 %124, %122
  %.v = select i1 %125, i64 12, i64 238
  %126 = add i64 %89, %.v
  store i64 %126, i64* %3, align 8
  br i1 %125, label %block_43dad1, label %block_.L_43dbb3

block_43dad1:                                     ; preds = %block_.L_43dac5
  %127 = add i64 %90, -16
  %128 = add i64 %126, 4
  store i64 %128, i64* %3, align 8
  %129 = inttoptr i64 %127 to i64*
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %RAX.i967, align 8
  %131 = add i64 %126, 8
  store i64 %131, i64* %3, align 8
  %132 = load i32, i32* %93, align 4
  %133 = sext i32 %132 to i64
  store i64 %133, i64* %RCX.i945, align 8
  %134 = shl nsw i64 %133, 2
  %135 = add i64 %134, %130
  %136 = add i64 %126, 15
  store i64 %136, i64* %3, align 8
  %137 = inttoptr i64 %135 to i32*
  %138 = load i32, i32* %137, align 4
  %139 = add i32 %138, -421
  %140 = icmp ult i32 %138, 421
  %141 = zext i1 %140 to i8
  store i8 %141, i8* %14, align 1
  %142 = and i32 %139, 255
  %143 = tail call i32 @llvm.ctpop.i32(i32 %142)
  %144 = trunc i32 %143 to i8
  %145 = and i8 %144, 1
  %146 = xor i8 %145, 1
  store i8 %146, i8* %21, align 1
  %147 = xor i32 %139, %138
  %148 = lshr i32 %147, 4
  %149 = trunc i32 %148 to i8
  %150 = and i8 %149, 1
  store i8 %150, i8* %26, align 1
  %151 = icmp eq i32 %139, 0
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %29, align 1
  %153 = lshr i32 %139, 31
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %32, align 1
  %155 = lshr i32 %138, 31
  %156 = xor i32 %153, %155
  %157 = add nuw nsw i32 %156, %155
  %158 = icmp eq i32 %157, 2
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %38, align 1
  %.v156 = select i1 %140, i64 21, i64 55
  %160 = add i64 %126, %.v156
  store i64 %160, i64* %3, align 8
  br i1 %140, label %block_43dae6, label %block_.L_43db08

block_43dae6:                                     ; preds = %block_43dad1
  %161 = add i64 %160, 4
  store i64 %161, i64* %3, align 8
  %162 = load i64, i64* %129, align 8
  store i64 %162, i64* %RAX.i967, align 8
  %163 = add i64 %160, 8
  store i64 %163, i64* %3, align 8
  %164 = load i32, i32* %93, align 4
  %165 = sext i32 %164 to i64
  store i64 %165, i64* %RCX.i945, align 8
  %166 = shl nsw i64 %165, 2
  %167 = add i64 %166, %162
  %168 = add i64 %160, 12
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %167 to i32*
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  store i64 %171, i64* %RAX.i967, align 8
  %172 = add nsw i64 %171, 12099168
  %173 = add i64 %160, 20
  store i64 %173, i64* %3, align 8
  %174 = inttoptr i64 %172 to i8*
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i64
  store i64 %176, i64* %RDX.i971, align 8
  %177 = zext i8 %175 to i32
  %178 = add nsw i32 %177, -3
  %179 = icmp ult i8 %175, 3
  %180 = zext i1 %179 to i8
  store i8 %180, i8* %14, align 1
  %181 = and i32 %178, 255
  %182 = tail call i32 @llvm.ctpop.i32(i32 %181)
  %183 = trunc i32 %182 to i8
  %184 = and i8 %183, 1
  %185 = xor i8 %184, 1
  store i8 %185, i8* %21, align 1
  %186 = xor i32 %178, %177
  %187 = lshr i32 %186, 4
  %188 = trunc i32 %187 to i8
  %189 = and i8 %188, 1
  store i8 %189, i8* %26, align 1
  %190 = icmp eq i32 %178, 0
  %191 = zext i1 %190 to i8
  store i8 %191, i8* %29, align 1
  %192 = lshr i32 %178, 31
  %193 = trunc i32 %192 to i8
  store i8 %193, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v157 = select i1 %190, i64 34, i64 29
  %194 = add i64 %160, %.v157
  store i64 %194, i64* %3, align 8
  br i1 %190, label %block_.L_43db08, label %block_43db03

block_43db03:                                     ; preds = %block_43dae6
  %195 = add i64 %194, 139
  store i64 %195, i64* %3, align 8
  br label %block_.L_43db8e

block_.L_43db08:                                  ; preds = %block_43dad1, %block_43dae6
  %196 = phi i64 [ %194, %block_43dae6 ], [ %160, %block_43dad1 ]
  store i64 ptrtoint (%G__0x57d7b6_type* @G__0x57d7b6 to i64), i64* %RDI.i973, align 8
  store i64 1909, i64* %RSI.i982, align 8
  store i64 ptrtoint (%G__0x57dbcc_type* @G__0x57dbcc to i64), i64* %RDX.i971, align 8
  store i64 20, i64* %RAX.i967, align 8
  %197 = add i64 %196, 34
  store i64 %197, i64* %3, align 8
  %198 = load i64, i64* %129, align 8
  store i64 %198, i64* %RCX.i945, align 8
  %199 = add i64 %196, 38
  store i64 %199, i64* %3, align 8
  %200 = load i32, i32* %93, align 4
  %201 = sext i32 %200 to i64
  store i64 %201, i64* %R8.i912, align 8
  %202 = shl nsw i64 %201, 2
  %203 = add i64 %202, %198
  %204 = add i64 %196, 42
  store i64 %204, i64* %3, align 8
  %205 = inttoptr i64 %203 to i32*
  %206 = load i32, i32* %205, align 4
  %207 = zext i32 %206 to i64
  store i64 %207, i64* %84, align 8
  %208 = add i64 %90, -6564
  %209 = add i64 %196, 48
  store i64 %209, i64* %3, align 8
  %210 = inttoptr i64 %208 to i32*
  store i32 20, i32* %210, align 4
  %211 = load i32, i32* %R9D.i907, align 4
  %212 = zext i32 %211 to i64
  %213 = load i64, i64* %3, align 8
  store i64 %212, i64* %RAX.i967, align 8
  %214 = load i64, i64* %RBP.i, align 8
  %215 = add i64 %214, -6576
  %216 = load i64, i64* %RDX.i971, align 8
  %217 = add i64 %213, 10
  store i64 %217, i64* %3, align 8
  %218 = inttoptr i64 %215 to i64*
  store i64 %216, i64* %218, align 8
  %219 = load i64, i64* %3, align 8
  %220 = load i32, i32* %EAX.i952, align 8
  %221 = sext i32 %220 to i64
  %222 = lshr i64 %221, 32
  store i64 %222, i64* %85, align 8
  %223 = load i64, i64* %RBP.i, align 8
  %224 = add i64 %223, -6564
  %225 = add i64 %219, 8
  store i64 %225, i64* %3, align 8
  %226 = inttoptr i64 %224 to i32*
  %227 = load i32, i32* %226, align 4
  %228 = zext i32 %227 to i64
  store i64 %228, i64* %84, align 8
  %229 = add i64 %219, 11
  store i64 %229, i64* %3, align 8
  %230 = zext i32 %220 to i64
  %231 = sext i32 %227 to i64
  %232 = shl nuw i64 %222, 32
  %233 = or i64 %232, %230
  %234 = sdiv i64 %233, %231
  %235 = shl i64 %234, 32
  %236 = ashr exact i64 %235, 32
  %237 = icmp eq i64 %234, %236
  br i1 %237, label %240, label %238

; <label>:238:                                    ; preds = %block_.L_43db08
  %239 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %229, %struct.Memory* %MEMORY.0)
  %.pre105 = load i64, i64* %RAX.i967, align 8
  %.pre106 = load i64, i64* %3, align 8
  %.pre107 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__r9d.exit890

; <label>:240:                                    ; preds = %block_.L_43db08
  %241 = srem i64 %233, %231
  %242 = and i64 %234, 4294967295
  store i64 %242, i64* %RAX.i967, align 8
  %243 = and i64 %241, 4294967295
  store i64 %243, i64* %RDX.i971, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__r9d.exit890

routine_idivl__r9d.exit890:                       ; preds = %240, %238
  %244 = phi i64 [ %.pre107, %238 ], [ %223, %240 ]
  %245 = phi i64 [ %.pre106, %238 ], [ %229, %240 ]
  %246 = phi i64 [ %.pre105, %238 ], [ %242, %240 ]
  %247 = phi %struct.Memory* [ %239, %238 ], [ %MEMORY.0, %240 ]
  %248 = trunc i64 %246 to i32
  %249 = add i32 %248, -1
  %250 = zext i32 %249 to i64
  store i64 %250, i64* %RAX.i967, align 8
  %251 = icmp eq i32 %248, 0
  %252 = zext i1 %251 to i8
  store i8 %252, i8* %14, align 1
  %253 = and i32 %249, 255
  %254 = tail call i32 @llvm.ctpop.i32(i32 %253)
  %255 = trunc i32 %254 to i8
  %256 = and i8 %255, 1
  %257 = xor i8 %256, 1
  store i8 %257, i8* %21, align 1
  %258 = xor i32 %249, %248
  %259 = lshr i32 %258, 4
  %260 = trunc i32 %259 to i8
  %261 = and i8 %260, 1
  store i8 %261, i8* %26, align 1
  %262 = icmp eq i32 %249, 0
  %263 = zext i1 %262 to i8
  store i8 %263, i8* %29, align 1
  %264 = lshr i32 %249, 31
  %265 = trunc i32 %264 to i8
  store i8 %265, i8* %32, align 1
  %266 = lshr i32 %248, 31
  %267 = xor i32 %264, %266
  %268 = add nuw nsw i32 %267, %266
  %269 = icmp eq i32 %268, 2
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %38, align 1
  %271 = add i64 %244, -16
  %272 = add i64 %245, 7
  store i64 %272, i64* %3, align 8
  %273 = inttoptr i64 %271 to i64*
  %274 = load i64, i64* %273, align 8
  store i64 %274, i64* %RCX.i945, align 8
  %275 = add i64 %244, -20
  %276 = add i64 %245, 11
  store i64 %276, i64* %3, align 8
  %277 = inttoptr i64 %275 to i32*
  %278 = load i32, i32* %277, align 4
  %279 = sext i32 %278 to i64
  store i64 %279, i64* %R8.i912, align 8
  %280 = shl nsw i64 %279, 2
  %281 = add i64 %280, %274
  %282 = add i64 %245, 15
  store i64 %282, i64* %3, align 8
  %283 = inttoptr i64 %281 to i32*
  %284 = load i32, i32* %283, align 4
  %285 = zext i32 %284 to i64
  store i64 %285, i64* %88, align 8
  %286 = add i64 %244, -6580
  %287 = add i64 %245, 21
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %286 to i32*
  store i32 %249, i32* %288, align 4
  %289 = load i32, i32* %R10D.i878, align 4
  %290 = zext i32 %289 to i64
  %291 = load i64, i64* %3, align 8
  store i64 %290, i64* %RAX.i967, align 8
  %292 = sext i32 %289 to i64
  %293 = lshr i64 %292, 32
  store i64 %293, i64* %85, align 8
  %294 = load i32, i32* %R9D.i907, align 4
  %295 = add i64 %291, 7
  store i64 %295, i64* %3, align 8
  %296 = sext i32 %294 to i64
  %297 = shl nuw i64 %293, 32
  %298 = or i64 %297, %290
  %299 = sdiv i64 %298, %296
  %300 = shl i64 %299, 32
  %301 = ashr exact i64 %300, 32
  %302 = icmp eq i64 %299, %301
  br i1 %302, label %305, label %303

; <label>:303:                                    ; preds = %routine_idivl__r9d.exit890
  %304 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %295, %struct.Memory* %247)
  %.pre108 = load i64, i64* %RDX.i971, align 8
  %.pre109 = load i64, i64* %3, align 8
  br label %routine_idivl__r9d.exit

; <label>:305:                                    ; preds = %routine_idivl__r9d.exit890
  %306 = srem i64 %298, %296
  %307 = and i64 %299, 4294967295
  store i64 %307, i64* %RAX.i967, align 8
  %308 = and i64 %306, 4294967295
  store i64 %308, i64* %RDX.i971, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__r9d.exit

routine_idivl__r9d.exit:                          ; preds = %305, %303
  %309 = phi i64 [ %.pre109, %303 ], [ %295, %305 ]
  %310 = phi i64 [ %.pre108, %303 ], [ %308, %305 ]
  %311 = phi %struct.Memory* [ %304, %303 ], [ %247, %305 ]
  %312 = trunc i64 %310 to i32
  %313 = add i32 %312, -1
  %314 = zext i32 %313 to i64
  store i64 %314, i64* %RDX.i971, align 8
  %315 = icmp eq i32 %312, 0
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %14, align 1
  %317 = and i32 %313, 255
  %318 = tail call i32 @llvm.ctpop.i32(i32 %317)
  %319 = trunc i32 %318 to i8
  %320 = and i8 %319, 1
  %321 = xor i8 %320, 1
  store i8 %321, i8* %21, align 1
  %322 = xor i32 %313, %312
  %323 = lshr i32 %322, 4
  %324 = trunc i32 %323 to i8
  %325 = and i8 %324, 1
  store i8 %325, i8* %26, align 1
  %326 = icmp eq i32 %313, 0
  %327 = zext i1 %326 to i8
  store i8 %327, i8* %29, align 1
  %328 = lshr i32 %313, 31
  %329 = trunc i32 %328 to i8
  store i8 %329, i8* %32, align 1
  %330 = lshr i32 %312, 31
  %331 = xor i32 %328, %330
  %332 = add nuw nsw i32 %331, %330
  %333 = icmp eq i32 %332, 2
  %334 = zext i1 %333 to i8
  store i8 %334, i8* %38, align 1
  %335 = load i64, i64* %RBP.i, align 8
  %336 = add i64 %335, -6576
  %337 = add i64 %309, 10
  store i64 %337, i64* %3, align 8
  %338 = inttoptr i64 %336 to i64*
  %339 = load i64, i64* %338, align 8
  store i64 %339, i64* %RCX.i945, align 8
  %340 = add i64 %335, -6584
  %341 = add i64 %309, 16
  store i64 %341, i64* %3, align 8
  %342 = inttoptr i64 %340 to i32*
  store i32 %313, i32* %342, align 4
  %343 = load i64, i64* %RCX.i945, align 8
  %344 = load i64, i64* %3, align 8
  store i64 %343, i64* %RDX.i971, align 8
  %345 = load i64, i64* %RBP.i, align 8
  %346 = add i64 %345, -6580
  %347 = add i64 %344, 9
  store i64 %347, i64* %3, align 8
  %348 = inttoptr i64 %346 to i32*
  %349 = load i32, i32* %348, align 4
  %350 = zext i32 %349 to i64
  store i64 %350, i64* %RCX.i945, align 8
  %351 = add i64 %345, -6584
  %352 = add i64 %344, 16
  store i64 %352, i64* %3, align 8
  %353 = inttoptr i64 %351 to i32*
  %354 = load i32, i32* %353, align 4
  %355 = zext i32 %354 to i64
  store i64 %355, i64* %R8.i912, align 8
  %356 = add i64 %344, 83223
  %357 = add i64 %344, 21
  %358 = load i64, i64* %6, align 8
  %359 = add i64 %358, -8
  %360 = inttoptr i64 %359 to i64*
  store i64 %357, i64* %360, align 8
  store i64 %359, i64* %6, align 8
  store i64 %356, i64* %3, align 8
  %call2_43db89 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %356, %struct.Memory* %311)
  %.pre110 = load i64, i64* %RBP.i, align 8
  %.pre111 = load i64, i64* %3, align 8
  br label %block_.L_43db8e

block_.L_43db8e:                                  ; preds = %routine_idivl__r9d.exit, %block_43db03
  %361 = phi i64 [ %.pre111, %routine_idivl__r9d.exit ], [ %195, %block_43db03 ]
  %362 = phi i64 [ %.pre110, %routine_idivl__r9d.exit ], [ %90, %block_43db03 ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_43db89, %routine_idivl__r9d.exit ], [ %MEMORY.0, %block_43db03 ]
  %363 = add i64 %362, -16
  %364 = add i64 %361, 4
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %363 to i64*
  %366 = load i64, i64* %365, align 8
  store i64 %366, i64* %RAX.i967, align 8
  %367 = add i64 %362, -20
  %368 = add i64 %361, 8
  store i64 %368, i64* %3, align 8
  %369 = inttoptr i64 %367 to i32*
  %370 = load i32, i32* %369, align 4
  %371 = sext i32 %370 to i64
  store i64 %371, i64* %RCX.i945, align 8
  %372 = shl nsw i64 %371, 2
  %373 = add i64 %372, %366
  %374 = add i64 %361, 12
  store i64 %374, i64* %3, align 8
  %375 = inttoptr i64 %373 to i32*
  %376 = load i32, i32* %375, align 4
  %377 = sext i32 %376 to i64
  store i64 %377, i64* %RAX.i967, align 8
  %378 = shl nsw i64 %377, 2
  %379 = add i64 %362, -1632
  %380 = add i64 %379, %378
  %381 = add i64 %361, 23
  store i64 %381, i64* %3, align 8
  %382 = inttoptr i64 %380 to i32*
  store i32 1, i32* %382, align 4
  %383 = load i64, i64* %RBP.i, align 8
  %384 = add i64 %383, -20
  %385 = load i64, i64* %3, align 8
  %386 = add i64 %385, 3
  store i64 %386, i64* %3, align 8
  %387 = inttoptr i64 %384 to i32*
  %388 = load i32, i32* %387, align 4
  %389 = add i32 %388, 1
  %390 = zext i32 %389 to i64
  store i64 %390, i64* %RAX.i967, align 8
  %391 = icmp eq i32 %388, -1
  %392 = icmp eq i32 %389, 0
  %393 = or i1 %391, %392
  %394 = zext i1 %393 to i8
  store i8 %394, i8* %14, align 1
  %395 = and i32 %389, 255
  %396 = tail call i32 @llvm.ctpop.i32(i32 %395)
  %397 = trunc i32 %396 to i8
  %398 = and i8 %397, 1
  %399 = xor i8 %398, 1
  store i8 %399, i8* %21, align 1
  %400 = xor i32 %389, %388
  %401 = lshr i32 %400, 4
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  store i8 %403, i8* %26, align 1
  %404 = zext i1 %392 to i8
  store i8 %404, i8* %29, align 1
  %405 = lshr i32 %389, 31
  %406 = trunc i32 %405 to i8
  store i8 %406, i8* %32, align 1
  %407 = lshr i32 %388, 31
  %408 = xor i32 %405, %407
  %409 = add nuw nsw i32 %408, %405
  %410 = icmp eq i32 %409, 2
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %38, align 1
  %412 = add i64 %385, 9
  store i64 %412, i64* %3, align 8
  store i32 %389, i32* %387, align 4
  %413 = load i64, i64* %3, align 8
  %414 = add i64 %413, -233
  store i64 %414, i64* %3, align 8
  br label %block_.L_43dac5

block_.L_43dbb3:                                  ; preds = %block_.L_43dac5
  %415 = add i64 %90, -1636
  %416 = add i64 %126, 10
  store i64 %416, i64* %3, align 8
  %417 = inttoptr i64 %415 to i32*
  store i32 21, i32* %417, align 4
  %RCX.i820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre79 = load i64, i64* %3, align 8
  br label %block_.L_43dbbd

block_.L_43dbbd:                                  ; preds = %block_.L_43dc90, %block_.L_43dbb3
  %418 = phi i64 [ %.pre79, %block_.L_43dbb3 ], [ %753, %block_.L_43dc90 ]
  %419 = load i64, i64* %RBP.i, align 8
  %420 = add i64 %419, -1636
  %421 = add i64 %418, 10
  store i64 %421, i64* %3, align 8
  %422 = inttoptr i64 %420 to i32*
  %423 = load i32, i32* %422, align 4
  %424 = add i32 %423, -400
  %425 = icmp ult i32 %423, 400
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %14, align 1
  %427 = and i32 %424, 255
  %428 = tail call i32 @llvm.ctpop.i32(i32 %427)
  %429 = trunc i32 %428 to i8
  %430 = and i8 %429, 1
  %431 = xor i8 %430, 1
  store i8 %431, i8* %21, align 1
  %432 = xor i32 %423, 16
  %433 = xor i32 %432, %424
  %434 = lshr i32 %433, 4
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  store i8 %436, i8* %26, align 1
  %437 = icmp eq i32 %424, 0
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %29, align 1
  %439 = lshr i32 %424, 31
  %440 = trunc i32 %439 to i8
  store i8 %440, i8* %32, align 1
  %441 = lshr i32 %423, 31
  %442 = xor i32 %439, %441
  %443 = add nuw nsw i32 %442, %441
  %444 = icmp eq i32 %443, 2
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %38, align 1
  %446 = icmp ne i8 %440, 0
  %447 = xor i1 %446, %444
  %.v116 = select i1 %447, i64 16, i64 231
  %448 = add i64 %418, %.v116
  store i64 %448, i64* %3, align 8
  br i1 %447, label %block_43dbcd, label %block_.L_43dca4

block_43dbcd:                                     ; preds = %block_.L_43dbbd
  %449 = add i64 %448, 7
  store i64 %449, i64* %3, align 8
  %450 = load i32, i32* %422, align 4
  %451 = sext i32 %450 to i64
  store i64 %451, i64* %RAX.i967, align 8
  %452 = add nsw i64 %451, 12099168
  %453 = add i64 %448, 15
  store i64 %453, i64* %3, align 8
  %454 = inttoptr i64 %452 to i8*
  %455 = load i8, i8* %454, align 1
  %456 = zext i8 %455 to i64
  store i64 %456, i64* %RCX.i820, align 8
  %457 = zext i8 %455 to i32
  %458 = add nsw i32 %457, -3
  %459 = icmp ult i8 %455, 3
  %460 = zext i1 %459 to i8
  store i8 %460, i8* %14, align 1
  %461 = and i32 %458, 255
  %462 = tail call i32 @llvm.ctpop.i32(i32 %461)
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 1
  %465 = xor i8 %464, 1
  store i8 %465, i8* %21, align 1
  %466 = xor i32 %458, %457
  %467 = lshr i32 %466, 4
  %468 = trunc i32 %467 to i8
  %469 = and i8 %468, 1
  store i8 %469, i8* %26, align 1
  %470 = icmp eq i32 %458, 0
  %471 = zext i1 %470 to i8
  store i8 %471, i8* %29, align 1
  %472 = lshr i32 %458, 31
  %473 = trunc i32 %472 to i8
  store i8 %473, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v151 = select i1 %470, i64 45, i64 24
  %474 = add i64 %448, %.v151
  store i64 %474, i64* %3, align 8
  br i1 %470, label %block_.L_43dbfa, label %block_43dbe5

block_43dbe5:                                     ; preds = %block_43dbcd
  %475 = add i64 %474, 7
  store i64 %475, i64* %3, align 8
  %476 = load i32, i32* %422, align 4
  %477 = sext i32 %476 to i64
  store i64 %477, i64* %RAX.i967, align 8
  %478 = shl nsw i64 %477, 2
  %479 = add i64 %419, -1632
  %480 = add i64 %479, %478
  %481 = add i64 %474, 15
  store i64 %481, i64* %3, align 8
  %482 = inttoptr i64 %480 to i32*
  %483 = load i32, i32* %482, align 4
  %484 = add i32 %483, -1
  %485 = icmp eq i32 %483, 0
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %14, align 1
  %487 = and i32 %484, 255
  %488 = tail call i32 @llvm.ctpop.i32(i32 %487)
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  %491 = xor i8 %490, 1
  store i8 %491, i8* %21, align 1
  %492 = xor i32 %484, %483
  %493 = lshr i32 %492, 4
  %494 = trunc i32 %493 to i8
  %495 = and i8 %494, 1
  store i8 %495, i8* %26, align 1
  %496 = icmp eq i32 %484, 0
  %497 = zext i1 %496 to i8
  store i8 %497, i8* %29, align 1
  %498 = lshr i32 %484, 31
  %499 = trunc i32 %498 to i8
  store i8 %499, i8* %32, align 1
  %500 = lshr i32 %483, 31
  %501 = xor i32 %498, %500
  %502 = add nuw nsw i32 %501, %500
  %503 = icmp eq i32 %502, 2
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %38, align 1
  %.v152 = select i1 %496, i64 21, i64 26
  %505 = add i64 %474, %.v152
  store i64 %505, i64* %3, align 8
  br i1 %496, label %block_.L_43dbfa, label %block_.L_43dbff

block_.L_43dbfa:                                  ; preds = %block_43dbe5, %block_43dbcd
  %506 = phi i64 [ %505, %block_43dbe5 ], [ %474, %block_43dbcd ]
  %507 = add i64 %506, 150
  br label %block_.L_43dc90

block_.L_43dbff:                                  ; preds = %block_43dbe5
  %508 = add i64 %419, -20
  %509 = add i64 %505, 7
  store i64 %509, i64* %3, align 8
  %510 = inttoptr i64 %508 to i32*
  store i32 0, i32* %510, align 4
  %.pre103 = load i64, i64* %3, align 8
  br label %block_.L_43dc06

block_.L_43dc06:                                  ; preds = %block_.L_43dc78, %block_.L_43dbff
  %511 = phi i64 [ %720, %block_.L_43dc78 ], [ %.pre103, %block_.L_43dbff ]
  %512 = load i64, i64* %RBP.i, align 8
  %513 = add i64 %512, -20
  %514 = add i64 %511, 4
  store i64 %514, i64* %3, align 8
  %515 = inttoptr i64 %513 to i32*
  %516 = load i32, i32* %515, align 4
  %517 = add i32 %516, -8
  %518 = icmp ult i32 %516, 8
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %14, align 1
  %520 = and i32 %517, 255
  %521 = tail call i32 @llvm.ctpop.i32(i32 %520)
  %522 = trunc i32 %521 to i8
  %523 = and i8 %522, 1
  %524 = xor i8 %523, 1
  store i8 %524, i8* %21, align 1
  %525 = xor i32 %517, %516
  %526 = lshr i32 %525, 4
  %527 = trunc i32 %526 to i8
  %528 = and i8 %527, 1
  store i8 %528, i8* %26, align 1
  %529 = icmp eq i32 %517, 0
  %530 = zext i1 %529 to i8
  store i8 %530, i8* %29, align 1
  %531 = lshr i32 %517, 31
  %532 = trunc i32 %531 to i8
  store i8 %532, i8* %32, align 1
  %533 = lshr i32 %516, 31
  %534 = xor i32 %531, %533
  %535 = add nuw nsw i32 %534, %533
  %536 = icmp eq i32 %535, 2
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %38, align 1
  %538 = icmp ne i8 %532, 0
  %539 = xor i1 %538, %536
  %.v153 = select i1 %539, i64 10, i64 133
  %540 = add i64 %511, %.v153
  store i64 %540, i64* %3, align 8
  br i1 %539, label %block_43dc10, label %block_.L_43dc8b.loopexit

block_43dc10:                                     ; preds = %block_.L_43dc06
  %541 = add i64 %512, -1636
  %542 = add i64 %540, 6
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %541 to i32*
  %544 = load i32, i32* %543, align 4
  %545 = zext i32 %544 to i64
  store i64 %545, i64* %RAX.i967, align 8
  %546 = add i64 %540, 10
  store i64 %546, i64* %3, align 8
  %547 = load i32, i32* %515, align 4
  %548 = sext i32 %547 to i64
  store i64 %548, i64* %RCX.i820, align 8
  %549 = shl nsw i64 %548, 2
  %550 = add nsw i64 %549, 8053168
  %551 = add i64 %540, 17
  store i64 %551, i64* %3, align 8
  %552 = inttoptr i64 %550 to i32*
  %553 = load i32, i32* %552, align 4
  %554 = add i32 %553, %544
  %555 = zext i32 %554 to i64
  store i64 %555, i64* %RAX.i967, align 8
  %556 = icmp ult i32 %554, %544
  %557 = icmp ult i32 %554, %553
  %558 = or i1 %556, %557
  %559 = zext i1 %558 to i8
  store i8 %559, i8* %14, align 1
  %560 = and i32 %554, 255
  %561 = tail call i32 @llvm.ctpop.i32(i32 %560)
  %562 = trunc i32 %561 to i8
  %563 = and i8 %562, 1
  %564 = xor i8 %563, 1
  store i8 %564, i8* %21, align 1
  %565 = xor i32 %553, %544
  %566 = xor i32 %565, %554
  %567 = lshr i32 %566, 4
  %568 = trunc i32 %567 to i8
  %569 = and i8 %568, 1
  store i8 %569, i8* %26, align 1
  %570 = icmp eq i32 %554, 0
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %29, align 1
  %572 = lshr i32 %554, 31
  %573 = trunc i32 %572 to i8
  store i8 %573, i8* %32, align 1
  %574 = lshr i32 %544, 31
  %575 = lshr i32 %553, 31
  %576 = xor i32 %572, %574
  %577 = xor i32 %572, %575
  %578 = add nuw nsw i32 %576, %577
  %579 = icmp eq i32 %578, 2
  %580 = zext i1 %579 to i8
  store i8 %580, i8* %38, align 1
  %581 = sext i32 %554 to i64
  store i64 %581, i64* %RCX.i820, align 8
  %582 = add nsw i64 %581, 12099168
  %583 = add i64 %540, 28
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %582 to i8*
  %585 = load i8, i8* %584, align 1
  %586 = zext i8 %585 to i64
  store i64 %586, i64* %RAX.i967, align 8
  %587 = zext i8 %585 to i32
  %588 = add nsw i32 %587, -3
  %589 = icmp ult i8 %585, 3
  %590 = zext i1 %589 to i8
  store i8 %590, i8* %14, align 1
  %591 = and i32 %588, 255
  %592 = tail call i32 @llvm.ctpop.i32(i32 %591)
  %593 = trunc i32 %592 to i8
  %594 = and i8 %593, 1
  %595 = xor i8 %594, 1
  store i8 %595, i8* %21, align 1
  %596 = xor i32 %588, %587
  %597 = lshr i32 %596, 4
  %598 = trunc i32 %597 to i8
  %599 = and i8 %598, 1
  store i8 %599, i8* %26, align 1
  %600 = icmp eq i32 %588, 0
  %601 = zext i1 %600 to i8
  store i8 %601, i8* %29, align 1
  %602 = lshr i32 %588, 31
  %603 = trunc i32 %602 to i8
  store i8 %603, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v154 = select i1 %600, i64 104, i64 37
  %604 = add i64 %540, %.v154
  store i64 %604, i64* %3, align 8
  br i1 %600, label %block_.L_43dc78, label %block_43dc35

block_43dc35:                                     ; preds = %block_43dc10
  %605 = add i64 %604, 6
  store i64 %605, i64* %3, align 8
  %606 = load i32, i32* %543, align 4
  %607 = zext i32 %606 to i64
  store i64 %607, i64* %RAX.i967, align 8
  %608 = add i64 %604, 10
  store i64 %608, i64* %3, align 8
  %609 = load i32, i32* %515, align 4
  %610 = sext i32 %609 to i64
  store i64 %610, i64* %RCX.i820, align 8
  %611 = shl nsw i64 %610, 2
  %612 = add nsw i64 %611, 8053168
  %613 = add i64 %604, 17
  store i64 %613, i64* %3, align 8
  %614 = inttoptr i64 %612 to i32*
  %615 = load i32, i32* %614, align 4
  %616 = add i32 %615, %606
  %617 = zext i32 %616 to i64
  store i64 %617, i64* %RAX.i967, align 8
  %618 = icmp ult i32 %616, %606
  %619 = icmp ult i32 %616, %615
  %620 = or i1 %618, %619
  %621 = zext i1 %620 to i8
  store i8 %621, i8* %14, align 1
  %622 = and i32 %616, 255
  %623 = tail call i32 @llvm.ctpop.i32(i32 %622)
  %624 = trunc i32 %623 to i8
  %625 = and i8 %624, 1
  %626 = xor i8 %625, 1
  store i8 %626, i8* %21, align 1
  %627 = xor i32 %615, %606
  %628 = xor i32 %627, %616
  %629 = lshr i32 %628, 4
  %630 = trunc i32 %629 to i8
  %631 = and i8 %630, 1
  store i8 %631, i8* %26, align 1
  %632 = icmp eq i32 %616, 0
  %633 = zext i1 %632 to i8
  store i8 %633, i8* %29, align 1
  %634 = lshr i32 %616, 31
  %635 = trunc i32 %634 to i8
  store i8 %635, i8* %32, align 1
  %636 = lshr i32 %606, 31
  %637 = lshr i32 %615, 31
  %638 = xor i32 %634, %636
  %639 = xor i32 %634, %637
  %640 = add nuw nsw i32 %638, %639
  %641 = icmp eq i32 %640, 2
  %642 = zext i1 %641 to i8
  store i8 %642, i8* %38, align 1
  %643 = sext i32 %616 to i64
  store i64 %643, i64* %RCX.i820, align 8
  %644 = shl nsw i64 %643, 2
  %645 = add nsw i64 %644, -1632
  %646 = add i64 %645, %512
  %647 = add i64 %604, 28
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %646 to i32*
  %649 = load i32, i32* %648, align 4
  %650 = add i32 %649, -1
  %651 = icmp eq i32 %649, 0
  %652 = zext i1 %651 to i8
  store i8 %652, i8* %14, align 1
  %653 = and i32 %650, 255
  %654 = tail call i32 @llvm.ctpop.i32(i32 %653)
  %655 = trunc i32 %654 to i8
  %656 = and i8 %655, 1
  %657 = xor i8 %656, 1
  store i8 %657, i8* %21, align 1
  %658 = xor i32 %650, %649
  %659 = lshr i32 %658, 4
  %660 = trunc i32 %659 to i8
  %661 = and i8 %660, 1
  store i8 %661, i8* %26, align 1
  %662 = icmp eq i32 %650, 0
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %29, align 1
  %664 = lshr i32 %650, 31
  %665 = trunc i32 %664 to i8
  store i8 %665, i8* %32, align 1
  %666 = lshr i32 %649, 31
  %667 = xor i32 %664, %666
  %668 = add nuw nsw i32 %667, %666
  %669 = icmp eq i32 %668, 2
  %670 = zext i1 %669 to i8
  store i8 %670, i8* %38, align 1
  %.v155 = select i1 %662, i64 34, i64 67
  %671 = add i64 %604, %.v155
  store i64 %671, i64* %3, align 8
  br i1 %662, label %block_43dc57, label %block_.L_43dc78

block_43dc57:                                     ; preds = %block_43dc35
  store i64 1, i64* %RSI.i982, align 8
  %672 = add i64 %671, 11
  store i64 %672, i64* %3, align 8
  %673 = load i32, i32* %543, align 4
  %674 = zext i32 %673 to i64
  store i64 %674, i64* %RDI.i973, align 8
  %675 = add i64 %671, -194887
  %676 = add i64 %671, 16
  %677 = load i64, i64* %6, align 8
  %678 = add i64 %677, -8
  %679 = inttoptr i64 %678 to i64*
  store i64 %676, i64* %679, align 8
  store i64 %678, i64* %6, align 8
  store i64 %675, i64* %3, align 8
  %call2_43dc62 = tail call %struct.Memory* @sub_40e310.play_move(%struct.State* nonnull %0, i64 %675, %struct.Memory* %MEMORY.0)
  %680 = load i64, i64* %RBP.i, align 8
  %681 = add i64 %680, -1636
  %682 = load i64, i64* %3, align 8
  %683 = add i64 %682, 6
  store i64 %683, i64* %3, align 8
  %684 = inttoptr i64 %681 to i32*
  %685 = load i32, i32* %684, align 4
  %686 = zext i32 %685 to i64
  store i64 %686, i64* %RSI.i982, align 8
  %687 = add i64 %680, -1640
  %688 = add i64 %682, 12
  store i64 %688, i64* %3, align 8
  %689 = inttoptr i64 %687 to i32*
  store i32 %685, i32* %689, align 4
  %690 = load i64, i64* %3, align 8
  %691 = add i64 %690, 24
  store i64 %691, i64* %3, align 8
  %.pre104.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_43dc8b

block_.L_43dc78:                                  ; preds = %block_43dc35, %block_43dc10
  %692 = phi i64 [ %671, %block_43dc35 ], [ %604, %block_43dc10 ]
  %693 = add i64 %692, 8
  store i64 %693, i64* %3, align 8
  %694 = load i32, i32* %515, align 4
  %695 = add i32 %694, 1
  %696 = zext i32 %695 to i64
  store i64 %696, i64* %RAX.i967, align 8
  %697 = icmp eq i32 %694, -1
  %698 = icmp eq i32 %695, 0
  %699 = or i1 %697, %698
  %700 = zext i1 %699 to i8
  store i8 %700, i8* %14, align 1
  %701 = and i32 %695, 255
  %702 = tail call i32 @llvm.ctpop.i32(i32 %701)
  %703 = trunc i32 %702 to i8
  %704 = and i8 %703, 1
  %705 = xor i8 %704, 1
  store i8 %705, i8* %21, align 1
  %706 = xor i32 %695, %694
  %707 = lshr i32 %706, 4
  %708 = trunc i32 %707 to i8
  %709 = and i8 %708, 1
  store i8 %709, i8* %26, align 1
  %710 = zext i1 %698 to i8
  store i8 %710, i8* %29, align 1
  %711 = lshr i32 %695, 31
  %712 = trunc i32 %711 to i8
  store i8 %712, i8* %32, align 1
  %713 = lshr i32 %694, 31
  %714 = xor i32 %711, %713
  %715 = add nuw nsw i32 %714, %711
  %716 = icmp eq i32 %715, 2
  %717 = zext i1 %716 to i8
  store i8 %717, i8* %38, align 1
  %718 = add i64 %692, 14
  store i64 %718, i64* %3, align 8
  store i32 %695, i32* %515, align 4
  %719 = load i64, i64* %3, align 8
  %720 = add i64 %719, -128
  store i64 %720, i64* %3, align 8
  br label %block_.L_43dc06

block_.L_43dc8b.loopexit:                         ; preds = %block_.L_43dc06
  br label %block_.L_43dc8b

block_.L_43dc8b:                                  ; preds = %block_.L_43dc8b.loopexit, %block_43dc57
  %.pre104 = phi i64 [ %.pre104.pre, %block_43dc57 ], [ %512, %block_.L_43dc8b.loopexit ]
  %721 = phi i64 [ %691, %block_43dc57 ], [ %540, %block_.L_43dc8b.loopexit ]
  %722 = add i64 %721, 5
  store i64 %722, i64* %3, align 8
  br label %block_.L_43dc90

block_.L_43dc90:                                  ; preds = %block_.L_43dc8b, %block_.L_43dbfa
  %723 = phi i64 [ %419, %block_.L_43dbfa ], [ %.pre104, %block_.L_43dc8b ]
  %storemerge = phi i64 [ %507, %block_.L_43dbfa ], [ %722, %block_.L_43dc8b ]
  %724 = add i64 %723, -1636
  %725 = add i64 %storemerge, 6
  store i64 %725, i64* %3, align 8
  %726 = inttoptr i64 %724 to i32*
  %727 = load i32, i32* %726, align 4
  %728 = add i32 %727, 1
  %729 = zext i32 %728 to i64
  store i64 %729, i64* %RAX.i967, align 8
  %730 = icmp eq i32 %727, -1
  %731 = icmp eq i32 %728, 0
  %732 = or i1 %730, %731
  %733 = zext i1 %732 to i8
  store i8 %733, i8* %14, align 1
  %734 = and i32 %728, 255
  %735 = tail call i32 @llvm.ctpop.i32(i32 %734)
  %736 = trunc i32 %735 to i8
  %737 = and i8 %736, 1
  %738 = xor i8 %737, 1
  store i8 %738, i8* %21, align 1
  %739 = xor i32 %728, %727
  %740 = lshr i32 %739, 4
  %741 = trunc i32 %740 to i8
  %742 = and i8 %741, 1
  store i8 %742, i8* %26, align 1
  %743 = zext i1 %731 to i8
  store i8 %743, i8* %29, align 1
  %744 = lshr i32 %728, 31
  %745 = trunc i32 %744 to i8
  store i8 %745, i8* %32, align 1
  %746 = lshr i32 %727, 31
  %747 = xor i32 %744, %746
  %748 = add nuw nsw i32 %747, %744
  %749 = icmp eq i32 %748, 2
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %38, align 1
  %751 = add i64 %storemerge, 15
  store i64 %751, i64* %3, align 8
  store i32 %728, i32* %726, align 4
  %752 = load i64, i64* %3, align 8
  %753 = add i64 %752, -226
  store i64 %753, i64* %3, align 8
  br label %block_.L_43dbbd

block_.L_43dca4:                                  ; preds = %block_.L_43dbbd
  %754 = add i64 %448, 10
  store i64 %754, i64* %3, align 8
  store i32 21, i32* %422, align 4
  %.pre80 = load i64, i64* %3, align 8
  br label %block_.L_43dcae

block_.L_43dcae:                                  ; preds = %block_.L_43dd94, %block_.L_43dca4
  %755 = phi i64 [ %.pre80, %block_.L_43dca4 ], [ %1095, %block_.L_43dd94 ]
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.0, %block_.L_43dca4 ], [ %MEMORY.14, %block_.L_43dd94 ]
  %756 = load i64, i64* %RBP.i, align 8
  %757 = add i64 %756, -1636
  %758 = add i64 %755, 10
  store i64 %758, i64* %3, align 8
  %759 = inttoptr i64 %757 to i32*
  %760 = load i32, i32* %759, align 4
  %761 = add i32 %760, -400
  %762 = icmp ult i32 %760, 400
  %763 = zext i1 %762 to i8
  store i8 %763, i8* %14, align 1
  %764 = and i32 %761, 255
  %765 = tail call i32 @llvm.ctpop.i32(i32 %764)
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  %768 = xor i8 %767, 1
  store i8 %768, i8* %21, align 1
  %769 = xor i32 %760, 16
  %770 = xor i32 %769, %761
  %771 = lshr i32 %770, 4
  %772 = trunc i32 %771 to i8
  %773 = and i8 %772, 1
  store i8 %773, i8* %26, align 1
  %774 = icmp eq i32 %761, 0
  %775 = zext i1 %774 to i8
  store i8 %775, i8* %29, align 1
  %776 = lshr i32 %761, 31
  %777 = trunc i32 %776 to i8
  store i8 %777, i8* %32, align 1
  %778 = lshr i32 %760, 31
  %779 = xor i32 %776, %778
  %780 = add nuw nsw i32 %779, %778
  %781 = icmp eq i32 %780, 2
  %782 = zext i1 %781 to i8
  store i8 %782, i8* %38, align 1
  %783 = icmp ne i8 %777, 0
  %784 = xor i1 %783, %781
  %.v117 = select i1 %784, i64 16, i64 250
  %785 = add i64 %755, %.v117
  store i64 %785, i64* %3, align 8
  br i1 %784, label %block_43dcbe, label %block_.L_43dda8

block_43dcbe:                                     ; preds = %block_.L_43dcae
  %786 = add i64 %785, 7
  store i64 %786, i64* %3, align 8
  %787 = load i32, i32* %759, align 4
  %788 = sext i32 %787 to i64
  store i64 %788, i64* %RAX.i967, align 8
  %789 = shl nsw i64 %788, 2
  %790 = add i64 %756, -1632
  %791 = add i64 %790, %789
  %792 = add i64 %785, 15
  store i64 %792, i64* %3, align 8
  %793 = inttoptr i64 %791 to i32*
  %794 = load i32, i32* %793, align 4
  %795 = add i32 %794, -1
  %796 = icmp eq i32 %794, 0
  %797 = zext i1 %796 to i8
  store i8 %797, i8* %14, align 1
  %798 = and i32 %795, 255
  %799 = tail call i32 @llvm.ctpop.i32(i32 %798)
  %800 = trunc i32 %799 to i8
  %801 = and i8 %800, 1
  %802 = xor i8 %801, 1
  store i8 %802, i8* %21, align 1
  %803 = xor i32 %795, %794
  %804 = lshr i32 %803, 4
  %805 = trunc i32 %804 to i8
  %806 = and i8 %805, 1
  store i8 %806, i8* %26, align 1
  %807 = icmp eq i32 %795, 0
  %808 = zext i1 %807 to i8
  store i8 %808, i8* %29, align 1
  %809 = lshr i32 %795, 31
  %810 = trunc i32 %809 to i8
  store i8 %810, i8* %32, align 1
  %811 = lshr i32 %794, 31
  %812 = xor i32 %809, %811
  %813 = add nuw nsw i32 %812, %811
  %814 = icmp eq i32 %813, 2
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %38, align 1
  %.v145 = select i1 %807, i64 71, i64 21
  %816 = add i64 %785, %.v145
  store i64 %816, i64* %3, align 8
  br i1 %807, label %block_.L_43dd05, label %block_43dcd3

block_43dcd3:                                     ; preds = %block_43dcbe
  %817 = add i64 %816, 7
  store i64 %817, i64* %3, align 8
  %818 = load i32, i32* %759, align 4
  %819 = sext i32 %818 to i64
  store i64 %819, i64* %RAX.i967, align 8
  %820 = add nsw i64 %819, 12099168
  %821 = add i64 %816, 15
  store i64 %821, i64* %3, align 8
  %822 = inttoptr i64 %820 to i8*
  %823 = load i8, i8* %822, align 1
  %824 = zext i8 %823 to i64
  store i64 %824, i64* %RCX.i820, align 8
  %825 = zext i8 %823 to i32
  store i8 0, i8* %14, align 1
  %826 = tail call i32 @llvm.ctpop.i32(i32 %825)
  %827 = trunc i32 %826 to i8
  %828 = and i8 %827, 1
  %829 = xor i8 %828, 1
  store i8 %829, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %830 = icmp eq i8 %823, 0
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v146 = select i1 %830, i64 24, i64 50
  %832 = add i64 %816, %.v146
  store i64 %832, i64* %3, align 8
  br i1 %830, label %block_43dceb, label %block_.L_43dd05

block_43dceb:                                     ; preds = %block_43dcd3
  %833 = add i64 %832, 6
  store i64 %833, i64* %3, align 8
  %834 = load i32, i32* %759, align 4
  %835 = zext i32 %834 to i64
  store i64 %835, i64* %RDI.i973, align 8
  %836 = add i64 %756, -1640
  %837 = add i64 %832, 12
  store i64 %837, i64* %3, align 8
  %838 = inttoptr i64 %836 to i32*
  %839 = load i32, i32* %838, align 4
  %840 = zext i32 %839 to i64
  store i64 %840, i64* %RSI.i982, align 8
  %841 = add i64 %832, -168507
  %842 = add i64 %832, 17
  %843 = load i64, i64* %6, align 8
  %844 = add i64 %843, -8
  %845 = inttoptr i64 %844 to i64*
  store i64 %842, i64* %845, align 8
  store i64 %844, i64* %6, align 8
  store i64 %841, i64* %3, align 8
  %call2_43dcf7 = tail call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* nonnull %0, i64 %841, %struct.Memory* %MEMORY.9)
  %846 = load i32, i32* %EAX.i952, align 4
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
  %.v147 = select i1 %853, i64 14, i64 9
  %857 = add i64 %847, %.v147
  store i64 %857, i64* %3, align 8
  br i1 %853, label %block_.L_43dd0a, label %block_.L_43dd05

block_.L_43dd05:                                  ; preds = %block_43dcd3, %block_43dceb, %block_43dcbe
  %858 = phi i64 [ %857, %block_43dceb ], [ %832, %block_43dcd3 ], [ %816, %block_43dcbe ]
  %859 = add i64 %858, 143
  br label %block_.L_43dd94

block_.L_43dd0a:                                  ; preds = %block_43dceb
  %860 = load i64, i64* %RBP.i, align 8
  %861 = add i64 %860, -20
  %862 = add i64 %857, 7
  store i64 %862, i64* %3, align 8
  %863 = inttoptr i64 %861 to i32*
  store i32 0, i32* %863, align 4
  %.pre101 = load i64, i64* %3, align 8
  br label %block_.L_43dd11

block_.L_43dd11:                                  ; preds = %block_.L_43dd7c, %block_.L_43dd0a
  %864 = phi i64 [ %.pre101, %block_.L_43dd0a ], [ %1062, %block_.L_43dd7c ]
  %865 = load i64, i64* %RBP.i, align 8
  %866 = add i64 %865, -20
  %867 = add i64 %864, 4
  store i64 %867, i64* %3, align 8
  %868 = inttoptr i64 %866 to i32*
  %869 = load i32, i32* %868, align 4
  %870 = add i32 %869, -8
  %871 = icmp ult i32 %869, 8
  %872 = zext i1 %871 to i8
  store i8 %872, i8* %14, align 1
  %873 = and i32 %870, 255
  %874 = tail call i32 @llvm.ctpop.i32(i32 %873)
  %875 = trunc i32 %874 to i8
  %876 = and i8 %875, 1
  %877 = xor i8 %876, 1
  store i8 %877, i8* %21, align 1
  %878 = xor i32 %870, %869
  %879 = lshr i32 %878, 4
  %880 = trunc i32 %879 to i8
  %881 = and i8 %880, 1
  store i8 %881, i8* %26, align 1
  %882 = icmp eq i32 %870, 0
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %29, align 1
  %884 = lshr i32 %870, 31
  %885 = trunc i32 %884 to i8
  store i8 %885, i8* %32, align 1
  %886 = lshr i32 %869, 31
  %887 = xor i32 %884, %886
  %888 = add nuw nsw i32 %887, %886
  %889 = icmp eq i32 %888, 2
  %890 = zext i1 %889 to i8
  store i8 %890, i8* %38, align 1
  %891 = icmp ne i8 %885, 0
  %892 = xor i1 %891, %889
  %.v148 = select i1 %892, i64 10, i64 126
  %893 = add i64 %864, %.v148
  store i64 %893, i64* %3, align 8
  br i1 %892, label %block_43dd1b, label %block_.L_43dd8f.loopexit

block_43dd1b:                                     ; preds = %block_.L_43dd11
  %894 = add i64 %865, -1636
  %895 = add i64 %893, 6
  store i64 %895, i64* %3, align 8
  %896 = inttoptr i64 %894 to i32*
  %897 = load i32, i32* %896, align 4
  %898 = zext i32 %897 to i64
  store i64 %898, i64* %RAX.i967, align 8
  %899 = add i64 %893, 10
  store i64 %899, i64* %3, align 8
  %900 = load i32, i32* %868, align 4
  %901 = sext i32 %900 to i64
  store i64 %901, i64* %RCX.i820, align 8
  %902 = shl nsw i64 %901, 2
  %903 = add nsw i64 %902, 8053168
  %904 = add i64 %893, 17
  store i64 %904, i64* %3, align 8
  %905 = inttoptr i64 %903 to i32*
  %906 = load i32, i32* %905, align 4
  %907 = add i32 %906, %897
  %908 = zext i32 %907 to i64
  store i64 %908, i64* %RAX.i967, align 8
  %909 = icmp ult i32 %907, %897
  %910 = icmp ult i32 %907, %906
  %911 = or i1 %909, %910
  %912 = zext i1 %911 to i8
  store i8 %912, i8* %14, align 1
  %913 = and i32 %907, 255
  %914 = tail call i32 @llvm.ctpop.i32(i32 %913)
  %915 = trunc i32 %914 to i8
  %916 = and i8 %915, 1
  %917 = xor i8 %916, 1
  store i8 %917, i8* %21, align 1
  %918 = xor i32 %906, %897
  %919 = xor i32 %918, %907
  %920 = lshr i32 %919, 4
  %921 = trunc i32 %920 to i8
  %922 = and i8 %921, 1
  store i8 %922, i8* %26, align 1
  %923 = icmp eq i32 %907, 0
  %924 = zext i1 %923 to i8
  store i8 %924, i8* %29, align 1
  %925 = lshr i32 %907, 31
  %926 = trunc i32 %925 to i8
  store i8 %926, i8* %32, align 1
  %927 = lshr i32 %897, 31
  %928 = lshr i32 %906, 31
  %929 = xor i32 %925, %927
  %930 = xor i32 %925, %928
  %931 = add nuw nsw i32 %929, %930
  %932 = icmp eq i32 %931, 2
  %933 = zext i1 %932 to i8
  store i8 %933, i8* %38, align 1
  %934 = sext i32 %907 to i64
  store i64 %934, i64* %RCX.i820, align 8
  %935 = add nsw i64 %934, 12099168
  %936 = add i64 %893, 28
  store i64 %936, i64* %3, align 8
  %937 = inttoptr i64 %935 to i8*
  %938 = load i8, i8* %937, align 1
  %939 = zext i8 %938 to i64
  store i64 %939, i64* %RAX.i967, align 8
  %940 = zext i8 %938 to i32
  %941 = add nsw i32 %940, -3
  %942 = icmp ult i8 %938, 3
  %943 = zext i1 %942 to i8
  store i8 %943, i8* %14, align 1
  %944 = and i32 %941, 255
  %945 = tail call i32 @llvm.ctpop.i32(i32 %944)
  %946 = trunc i32 %945 to i8
  %947 = and i8 %946, 1
  %948 = xor i8 %947, 1
  store i8 %948, i8* %21, align 1
  %949 = xor i32 %941, %940
  %950 = lshr i32 %949, 4
  %951 = trunc i32 %950 to i8
  %952 = and i8 %951, 1
  store i8 %952, i8* %26, align 1
  %953 = icmp eq i32 %941, 0
  %954 = zext i1 %953 to i8
  store i8 %954, i8* %29, align 1
  %955 = lshr i32 %941, 31
  %956 = trunc i32 %955 to i8
  store i8 %956, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v149 = select i1 %953, i64 97, i64 37
  %957 = add i64 %893, %.v149
  store i64 %957, i64* %3, align 8
  br i1 %953, label %block_.L_43dd7c, label %block_43dd40

block_43dd40:                                     ; preds = %block_43dd1b
  %958 = add i64 %957, 6
  store i64 %958, i64* %3, align 8
  %959 = load i32, i32* %896, align 4
  %960 = zext i32 %959 to i64
  store i64 %960, i64* %RAX.i967, align 8
  %961 = add i64 %957, 10
  store i64 %961, i64* %3, align 8
  %962 = load i32, i32* %868, align 4
  %963 = sext i32 %962 to i64
  store i64 %963, i64* %RCX.i820, align 8
  %964 = shl nsw i64 %963, 2
  %965 = add nsw i64 %964, 8053168
  %966 = add i64 %957, 17
  store i64 %966, i64* %3, align 8
  %967 = inttoptr i64 %965 to i32*
  %968 = load i32, i32* %967, align 4
  %969 = add i32 %968, %959
  %970 = zext i32 %969 to i64
  store i64 %970, i64* %RAX.i967, align 8
  %971 = icmp ult i32 %969, %959
  %972 = icmp ult i32 %969, %968
  %973 = or i1 %971, %972
  %974 = zext i1 %973 to i8
  store i8 %974, i8* %14, align 1
  %975 = and i32 %969, 255
  %976 = tail call i32 @llvm.ctpop.i32(i32 %975)
  %977 = trunc i32 %976 to i8
  %978 = and i8 %977, 1
  %979 = xor i8 %978, 1
  store i8 %979, i8* %21, align 1
  %980 = xor i32 %968, %959
  %981 = xor i32 %980, %969
  %982 = lshr i32 %981, 4
  %983 = trunc i32 %982 to i8
  %984 = and i8 %983, 1
  store i8 %984, i8* %26, align 1
  %985 = icmp eq i32 %969, 0
  %986 = zext i1 %985 to i8
  store i8 %986, i8* %29, align 1
  %987 = lshr i32 %969, 31
  %988 = trunc i32 %987 to i8
  store i8 %988, i8* %32, align 1
  %989 = lshr i32 %959, 31
  %990 = lshr i32 %968, 31
  %991 = xor i32 %987, %989
  %992 = xor i32 %987, %990
  %993 = add nuw nsw i32 %991, %992
  %994 = icmp eq i32 %993, 2
  %995 = zext i1 %994 to i8
  store i8 %995, i8* %38, align 1
  %996 = add i64 %865, -1640
  %997 = add i64 %957, 23
  store i64 %997, i64* %3, align 8
  %998 = inttoptr i64 %996 to i32*
  %999 = load i32, i32* %998, align 4
  %1000 = zext i32 %999 to i64
  store i64 %1000, i64* %RSI.i982, align 8
  store i64 %970, i64* %RDI.i973, align 8
  %1001 = add i64 %957, -168592
  %1002 = add i64 %957, 30
  %1003 = load i64, i64* %6, align 8
  %1004 = add i64 %1003, -8
  %1005 = inttoptr i64 %1004 to i64*
  store i64 %1002, i64* %1005, align 8
  store i64 %1004, i64* %6, align 8
  store i64 %1001, i64* %3, align 8
  %call2_43dd59 = tail call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* nonnull %0, i64 %1001, %struct.Memory* %MEMORY.9)
  %1006 = load i32, i32* %EAX.i952, align 4
  %1007 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1008 = and i32 %1006, 255
  %1009 = tail call i32 @llvm.ctpop.i32(i32 %1008)
  %1010 = trunc i32 %1009 to i8
  %1011 = and i8 %1010, 1
  %1012 = xor i8 %1011, 1
  store i8 %1012, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1013 = icmp eq i32 %1006, 0
  %1014 = zext i1 %1013 to i8
  store i8 %1014, i8* %29, align 1
  %1015 = lshr i32 %1006, 31
  %1016 = trunc i32 %1015 to i8
  store i8 %1016, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v150 = select i1 %1013, i64 30, i64 9
  %1017 = add i64 %1007, %.v150
  store i64 %1017, i64* %3, align 8
  br i1 %1013, label %block_43dd40.block_.L_43dd7c_crit_edge, label %block_43dd67

block_43dd40.block_.L_43dd7c_crit_edge:           ; preds = %block_43dd40
  %.pre102 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43dd7c

block_43dd67:                                     ; preds = %block_43dd40
  store i64 2, i64* %RSI.i982, align 8
  %1018 = load i64, i64* %RBP.i, align 8
  %1019 = add i64 %1018, -1636
  %1020 = add i64 %1017, 11
  store i64 %1020, i64* %3, align 8
  %1021 = inttoptr i64 %1019 to i32*
  %1022 = load i32, i32* %1021, align 4
  %1023 = zext i32 %1022 to i64
  store i64 %1023, i64* %RDI.i973, align 8
  %1024 = add i64 %1017, -195159
  %1025 = add i64 %1017, 16
  %1026 = load i64, i64* %6, align 8
  %1027 = add i64 %1026, -8
  %1028 = inttoptr i64 %1027 to i64*
  store i64 %1025, i64* %1028, align 8
  store i64 %1027, i64* %6, align 8
  store i64 %1024, i64* %3, align 8
  %call2_43dd72 = tail call %struct.Memory* @sub_40e310.play_move(%struct.State* nonnull %0, i64 %1024, %struct.Memory* %MEMORY.9)
  %1029 = load i64, i64* %3, align 8
  %1030 = add i64 %1029, 24
  store i64 %1030, i64* %3, align 8
  br label %block_.L_43dd8f

block_.L_43dd7c:                                  ; preds = %block_43dd40.block_.L_43dd7c_crit_edge, %block_43dd1b
  %1031 = phi i64 [ %.pre102, %block_43dd40.block_.L_43dd7c_crit_edge ], [ %865, %block_43dd1b ]
  %1032 = phi i64 [ %1017, %block_43dd40.block_.L_43dd7c_crit_edge ], [ %957, %block_43dd1b ]
  %1033 = add i64 %1031, -20
  %1034 = add i64 %1032, 8
  store i64 %1034, i64* %3, align 8
  %1035 = inttoptr i64 %1033 to i32*
  %1036 = load i32, i32* %1035, align 4
  %1037 = add i32 %1036, 1
  %1038 = zext i32 %1037 to i64
  store i64 %1038, i64* %RAX.i967, align 8
  %1039 = icmp eq i32 %1036, -1
  %1040 = icmp eq i32 %1037, 0
  %1041 = or i1 %1039, %1040
  %1042 = zext i1 %1041 to i8
  store i8 %1042, i8* %14, align 1
  %1043 = and i32 %1037, 255
  %1044 = tail call i32 @llvm.ctpop.i32(i32 %1043)
  %1045 = trunc i32 %1044 to i8
  %1046 = and i8 %1045, 1
  %1047 = xor i8 %1046, 1
  store i8 %1047, i8* %21, align 1
  %1048 = xor i32 %1037, %1036
  %1049 = lshr i32 %1048, 4
  %1050 = trunc i32 %1049 to i8
  %1051 = and i8 %1050, 1
  store i8 %1051, i8* %26, align 1
  %1052 = zext i1 %1040 to i8
  store i8 %1052, i8* %29, align 1
  %1053 = lshr i32 %1037, 31
  %1054 = trunc i32 %1053 to i8
  store i8 %1054, i8* %32, align 1
  %1055 = lshr i32 %1036, 31
  %1056 = xor i32 %1053, %1055
  %1057 = add nuw nsw i32 %1056, %1053
  %1058 = icmp eq i32 %1057, 2
  %1059 = zext i1 %1058 to i8
  store i8 %1059, i8* %38, align 1
  %1060 = add i64 %1032, 14
  store i64 %1060, i64* %3, align 8
  store i32 %1037, i32* %1035, align 4
  %1061 = load i64, i64* %3, align 8
  %1062 = add i64 %1061, -121
  store i64 %1062, i64* %3, align 8
  br label %block_.L_43dd11

block_.L_43dd8f.loopexit:                         ; preds = %block_.L_43dd11
  br label %block_.L_43dd8f

block_.L_43dd8f:                                  ; preds = %block_.L_43dd8f.loopexit, %block_43dd67
  %1063 = phi i64 [ %1030, %block_43dd67 ], [ %893, %block_.L_43dd8f.loopexit ]
  %MEMORY.13 = phi %struct.Memory* [ %call2_43dd72, %block_43dd67 ], [ %MEMORY.9, %block_.L_43dd8f.loopexit ]
  %1064 = add i64 %1063, 5
  store i64 %1064, i64* %3, align 8
  br label %block_.L_43dd94

block_.L_43dd94:                                  ; preds = %block_.L_43dd8f, %block_.L_43dd05
  %storemerge43 = phi i64 [ %859, %block_.L_43dd05 ], [ %1064, %block_.L_43dd8f ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.9, %block_.L_43dd05 ], [ %MEMORY.13, %block_.L_43dd8f ]
  %1065 = load i64, i64* %RBP.i, align 8
  %1066 = add i64 %1065, -1636
  %1067 = add i64 %storemerge43, 6
  store i64 %1067, i64* %3, align 8
  %1068 = inttoptr i64 %1066 to i32*
  %1069 = load i32, i32* %1068, align 4
  %1070 = add i32 %1069, 1
  %1071 = zext i32 %1070 to i64
  store i64 %1071, i64* %RAX.i967, align 8
  %1072 = icmp eq i32 %1069, -1
  %1073 = icmp eq i32 %1070, 0
  %1074 = or i1 %1072, %1073
  %1075 = zext i1 %1074 to i8
  store i8 %1075, i8* %14, align 1
  %1076 = and i32 %1070, 255
  %1077 = tail call i32 @llvm.ctpop.i32(i32 %1076)
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  %1080 = xor i8 %1079, 1
  store i8 %1080, i8* %21, align 1
  %1081 = xor i32 %1070, %1069
  %1082 = lshr i32 %1081, 4
  %1083 = trunc i32 %1082 to i8
  %1084 = and i8 %1083, 1
  store i8 %1084, i8* %26, align 1
  %1085 = zext i1 %1073 to i8
  store i8 %1085, i8* %29, align 1
  %1086 = lshr i32 %1070, 31
  %1087 = trunc i32 %1086 to i8
  store i8 %1087, i8* %32, align 1
  %1088 = lshr i32 %1069, 31
  %1089 = xor i32 %1086, %1088
  %1090 = add nuw nsw i32 %1089, %1086
  %1091 = icmp eq i32 %1090, 2
  %1092 = zext i1 %1091 to i8
  store i8 %1092, i8* %38, align 1
  %1093 = add i64 %storemerge43, 15
  store i64 %1093, i64* %3, align 8
  store i32 %1070, i32* %1068, align 4
  %1094 = load i64, i64* %3, align 8
  %1095 = add i64 %1094, -245
  store i64 %1095, i64* %3, align 8
  br label %block_.L_43dcae

block_.L_43dda8:                                  ; preds = %block_.L_43dcae
  %1096 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %14, align 1
  %1097 = and i32 %1096, 255
  %1098 = tail call i32 @llvm.ctpop.i32(i32 %1097)
  %1099 = trunc i32 %1098 to i8
  %1100 = and i8 %1099, 1
  %1101 = xor i8 %1100, 1
  store i8 %1101, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1102 = icmp eq i32 %1096, 0
  %1103 = zext i1 %1102 to i8
  store i8 %1103, i8* %29, align 1
  %1104 = lshr i32 %1096, 31
  %1105 = trunc i32 %1104 to i8
  store i8 %1105, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v118 = select i1 %1102, i64 21, i64 14
  %1106 = add i64 %785, %.v118
  store i64 %1106, i64* %3, align 8
  br i1 %1102, label %block_.L_43ddbd, label %block_43ddb6

block_43ddb6:                                     ; preds = %block_.L_43dda8
  store i64 0, i64* %RDI.i973, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1107 = add i64 %1106, 225354
  %1108 = add i64 %1106, 7
  %1109 = load i64, i64* %6, align 8
  %1110 = add i64 %1109, -8
  %1111 = inttoptr i64 %1110 to i64*
  store i64 %1108, i64* %1111, align 8
  store i64 %1110, i64* %6, align 8
  store i64 %1107, i64* %3, align 8
  %call2_43ddb8 = tail call %struct.Memory* @sub_474e00.showboard(%struct.State* nonnull %0, i64 %1107, %struct.Memory* %MEMORY.9)
  %.pre81 = load i64, i64* %RBP.i, align 8
  %.pre82 = load i64, i64* %3, align 8
  %.pre83 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  br label %block_.L_43ddbd

block_.L_43ddbd:                                  ; preds = %block_43ddb6, %block_.L_43dda8
  %1112 = phi i32 [ 0, %block_.L_43dda8 ], [ %.pre83, %block_43ddb6 ]
  %1113 = phi i64 [ %1106, %block_.L_43dda8 ], [ %.pre82, %block_43ddb6 ]
  %1114 = phi i64 [ %756, %block_.L_43dda8 ], [ %.pre81, %block_43ddb6 ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.9, %block_.L_43dda8 ], [ %call2_43ddb8, %block_43ddb6 ]
  %1115 = add i64 %1114, -6552
  store i64 %1115, i64* %RDI.i973, align 8
  %1116 = zext i32 %1112 to i64
  store i64 %1116, i64* %RAX.i967, align 8
  %1117 = add i64 %1114, -1660
  %1118 = add i64 %1113, 20
  store i64 %1118, i64* %3, align 8
  %1119 = inttoptr i64 %1117 to i32*
  store i32 %1112, i32* %1119, align 4
  %1120 = load i64, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  %1121 = add i64 %1120, -221313
  %1122 = add i64 %1120, 16
  %1123 = load i64, i64* %6, align 8
  %1124 = add i64 %1123, -8
  %1125 = inttoptr i64 %1124 to i64*
  store i64 %1122, i64* %1125, align 8
  store i64 %1124, i64* %6, align 8
  store i64 %1121, i64* %3, align 8
  %call2_43dddc = tail call %struct.Memory* @sub_407d50.store_board(%struct.State* nonnull %0, i64 %1121, %struct.Memory* %MEMORY.15)
  %1126 = load i64, i64* %3, align 8
  store i64 1, i64* %RAX.i967, align 8
  %1127 = load i64, i64* %RBP.i, align 8
  %1128 = add i64 %1127, -4
  %1129 = add i64 %1126, 8
  store i64 %1129, i64* %3, align 8
  %1130 = inttoptr i64 %1128 to i32*
  %1131 = load i32, i32* %1130, align 4
  %1132 = zext i32 %1131 to i64
  store i64 %1132, i64* %RCX.i820, align 8
  %1133 = add i64 %1126, 10
  store i64 %1133, i64* %3, align 8
  %1134 = trunc i32 %1131 to i5
  switch i5 %1134, label %1135 [
    i5 0, label %routine_shll__cl___eax.exit612
    i5 1, label %1144
  ]

; <label>:1135:                                   ; preds = %block_.L_43ddbd
  %1136 = and i32 %1131, 31
  %1137 = zext i32 %1136 to i64
  %1138 = add nuw nsw i64 %1137, 4294967295
  %1139 = and i64 %1138, 4294967295
  %1140 = shl i64 1, %1139
  %1141 = trunc i64 %1140 to i32
  %1142 = icmp slt i32 %1141, 0
  %1143 = shl i32 %1141, 1
  br label %1144

; <label>:1144:                                   ; preds = %block_.L_43ddbd, %1135
  %1145 = phi i1 [ %1142, %1135 ], [ false, %block_.L_43ddbd ]
  %1146 = phi i32 [ %1143, %1135 ], [ 2, %block_.L_43ddbd ]
  %1147 = zext i32 %1146 to i64
  store i64 %1147, i64* %RAX.i967, align 8
  %1148 = zext i1 %1145 to i8
  store i8 %1148, i8* %14, align 1
  %1149 = and i32 %1146, 254
  %1150 = tail call i32 @llvm.ctpop.i32(i32 %1149)
  %1151 = trunc i32 %1150 to i8
  %1152 = and i8 %1151, 1
  %1153 = xor i8 %1152, 1
  store i8 %1153, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1154 = icmp eq i32 %1146, 0
  %1155 = zext i1 %1154 to i8
  store i8 %1155, i8* %29, align 1
  %1156 = lshr i32 %1146, 31
  %1157 = trunc i32 %1156 to i8
  store i8 %1157, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_shll__cl___eax.exit612

routine_shll__cl___eax.exit612:                   ; preds = %1144, %block_.L_43ddbd
  %1158 = phi i32 [ %1146, %1144 ], [ 1, %block_.L_43ddbd ]
  %1159 = add i64 %1127, -28
  %1160 = add i64 %1126, 13
  store i64 %1160, i64* %3, align 8
  %1161 = inttoptr i64 %1159 to i32*
  store i32 %1158, i32* %1161, align 4
  %1162 = load i64, i64* %RBP.i, align 8
  %1163 = add i64 %1162, -24
  %1164 = load i64, i64* %3, align 8
  %1165 = add i64 %1164, 7
  store i64 %1165, i64* %3, align 8
  %1166 = inttoptr i64 %1163 to i32*
  store i32 0, i32* %1166, align 4
  %AL.i121 = bitcast %union.anon* %69 to i8*
  %.pre84 = load i64, i64* %3, align 8
  br label %block_.L_43ddf5

block_.L_43ddf5:                                  ; preds = %block_.L_43e2e0, %routine_shll__cl___eax.exit612
  %1167 = phi i64 [ %.pre84, %routine_shll__cl___eax.exit612 ], [ %2479, %block_.L_43e2e0 ]
  %MEMORY.16 = phi %struct.Memory* [ %call2_43dddc, %routine_shll__cl___eax.exit612 ], [ %MEMORY.36, %block_.L_43e2e0 ]
  %1168 = load i64, i64* %RBP.i, align 8
  %1169 = add i64 %1168, -24
  %1170 = add i64 %1167, 3
  store i64 %1170, i64* %3, align 8
  %1171 = inttoptr i64 %1169 to i32*
  %1172 = load i32, i32* %1171, align 4
  %1173 = zext i32 %1172 to i64
  store i64 %1173, i64* %RAX.i967, align 8
  %1174 = add i64 %1168, -28
  %1175 = add i64 %1167, 6
  store i64 %1175, i64* %3, align 8
  %1176 = inttoptr i64 %1174 to i32*
  %1177 = load i32, i32* %1176, align 4
  %1178 = sub i32 %1172, %1177
  %1179 = icmp ult i32 %1172, %1177
  %1180 = zext i1 %1179 to i8
  store i8 %1180, i8* %14, align 1
  %1181 = and i32 %1178, 255
  %1182 = tail call i32 @llvm.ctpop.i32(i32 %1181)
  %1183 = trunc i32 %1182 to i8
  %1184 = and i8 %1183, 1
  %1185 = xor i8 %1184, 1
  store i8 %1185, i8* %21, align 1
  %1186 = xor i32 %1177, %1172
  %1187 = xor i32 %1186, %1178
  %1188 = lshr i32 %1187, 4
  %1189 = trunc i32 %1188 to i8
  %1190 = and i8 %1189, 1
  store i8 %1190, i8* %26, align 1
  %1191 = icmp eq i32 %1178, 0
  %1192 = zext i1 %1191 to i8
  store i8 %1192, i8* %29, align 1
  %1193 = lshr i32 %1178, 31
  %1194 = trunc i32 %1193 to i8
  store i8 %1194, i8* %32, align 1
  %1195 = lshr i32 %1172, 31
  %1196 = lshr i32 %1177, 31
  %1197 = xor i32 %1196, %1195
  %1198 = xor i32 %1193, %1195
  %1199 = add nuw nsw i32 %1198, %1197
  %1200 = icmp eq i32 %1199, 2
  %1201 = zext i1 %1200 to i8
  store i8 %1201, i8* %38, align 1
  %1202 = icmp ne i8 %1194, 0
  %1203 = xor i1 %1202, %1200
  %.v119 = select i1 %1203, i64 12, i64 1273
  %1204 = add i64 %1167, %.v119
  store i64 %1204, i64* %3, align 8
  br i1 %1203, label %block_43de01, label %block_.L_43e2ee

block_43de01:                                     ; preds = %block_.L_43ddf5
  %1205 = add i64 %1168, -6552
  store i64 %1205, i64* %RDI.i973, align 8
  %1206 = add i64 %1168, -6556
  %1207 = add i64 %1204, 17
  store i64 %1207, i64* %3, align 8
  %1208 = inttoptr i64 %1206 to i32*
  store i32 1, i32* %1208, align 4
  %1209 = load i64, i64* %RBP.i, align 8
  %1210 = add i64 %1209, -6560
  %1211 = load i64, i64* %3, align 8
  %1212 = add i64 %1211, 10
  store i64 %1212, i64* %3, align 8
  %1213 = inttoptr i64 %1210 to i32*
  store i32 0, i32* %1213, align 4
  %1214 = load i64, i64* %3, align 8
  %1215 = add i64 %1214, -220956
  %1216 = add i64 %1214, 5
  %1217 = load i64, i64* %6, align 8
  %1218 = add i64 %1217, -8
  %1219 = inttoptr i64 %1218 to i64*
  store i64 %1216, i64* %1219, align 8
  store i64 %1218, i64* %6, align 8
  store i64 %1215, i64* %3, align 8
  %call2_43de1c = tail call %struct.Memory* @sub_407f00.restore_board(%struct.State* nonnull %0, i64 %1215, %struct.Memory* %MEMORY.16)
  %1220 = load i64, i64* %RBP.i, align 8
  %1221 = add i64 %1220, -20
  %1222 = load i64, i64* %3, align 8
  %1223 = add i64 %1222, 7
  store i64 %1223, i64* %3, align 8
  %1224 = inttoptr i64 %1221 to i32*
  store i32 0, i32* %1224, align 4
  %.pre85 = load i64, i64* %3, align 8
  br label %block_.L_43de28

block_.L_43de28:                                  ; preds = %block_.L_43deab, %block_43de01
  %1225 = phi i64 [ %.pre85, %block_43de01 ], [ %1450, %block_.L_43deab ]
  %1226 = load i64, i64* %RBP.i, align 8
  %1227 = add i64 %1226, -20
  %1228 = add i64 %1225, 3
  store i64 %1228, i64* %3, align 8
  %1229 = inttoptr i64 %1227 to i32*
  %1230 = load i32, i32* %1229, align 4
  %1231 = zext i32 %1230 to i64
  store i64 %1231, i64* %RAX.i967, align 8
  %1232 = add i64 %1226, -4
  %1233 = add i64 %1225, 6
  store i64 %1233, i64* %3, align 8
  %1234 = inttoptr i64 %1232 to i32*
  %1235 = load i32, i32* %1234, align 4
  %1236 = sub i32 %1230, %1235
  %1237 = icmp ult i32 %1230, %1235
  %1238 = zext i1 %1237 to i8
  store i8 %1238, i8* %14, align 1
  %1239 = and i32 %1236, 255
  %1240 = tail call i32 @llvm.ctpop.i32(i32 %1239)
  %1241 = trunc i32 %1240 to i8
  %1242 = and i8 %1241, 1
  %1243 = xor i8 %1242, 1
  store i8 %1243, i8* %21, align 1
  %1244 = xor i32 %1235, %1230
  %1245 = xor i32 %1244, %1236
  %1246 = lshr i32 %1245, 4
  %1247 = trunc i32 %1246 to i8
  %1248 = and i8 %1247, 1
  store i8 %1248, i8* %26, align 1
  %1249 = icmp eq i32 %1236, 0
  %1250 = zext i1 %1249 to i8
  store i8 %1250, i8* %29, align 1
  %1251 = lshr i32 %1236, 31
  %1252 = trunc i32 %1251 to i8
  store i8 %1252, i8* %32, align 1
  %1253 = lshr i32 %1230, 31
  %1254 = lshr i32 %1235, 31
  %1255 = xor i32 %1254, %1253
  %1256 = xor i32 %1251, %1253
  %1257 = add nuw nsw i32 %1256, %1255
  %1258 = icmp eq i32 %1257, 2
  %1259 = zext i1 %1258 to i8
  store i8 %1259, i8* %38, align 1
  %1260 = icmp ne i8 %1252, 0
  %1261 = xor i1 %1260, %1258
  %.v120 = select i1 %1261, i64 12, i64 150
  %1262 = add i64 %1225, %.v120
  store i64 %1262, i64* %3, align 8
  br i1 %1261, label %block_43de34, label %block_.L_43debe.loopexit

block_43de34:                                     ; preds = %block_.L_43de28
  store i64 1, i64* %RAX.i967, align 8
  %1263 = add i64 %1226, -24
  %1264 = add i64 %1262, 8
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1263 to i32*
  %1266 = load i32, i32* %1265, align 4
  %1267 = zext i32 %1266 to i64
  store i64 %1267, i64* %RCX.i820, align 8
  %1268 = add i64 %1262, 11
  store i64 %1268, i64* %3, align 8
  %1269 = load i32, i32* %1229, align 4
  %1270 = zext i32 %1269 to i64
  store i64 %1270, i64* %RDX.i971, align 8
  %1271 = add i64 %1226, -6588
  %1272 = add i64 %1262, 17
  store i64 %1272, i64* %3, align 8
  %1273 = inttoptr i64 %1271 to i32*
  store i32 %1266, i32* %1273, align 4
  %1274 = load i32, i32* %86, align 4
  %1275 = zext i32 %1274 to i64
  %1276 = load i64, i64* %3, align 8
  store i64 %1275, i64* %RCX.i820, align 8
  %1277 = load i64, i64* %RAX.i967, align 8
  %1278 = add i64 %1276, 4
  store i64 %1278, i64* %3, align 8
  %1279 = trunc i32 %1274 to i5
  %1280 = trunc i64 %1277 to i32
  switch i5 %1279, label %1286 [
    i5 0, label %routine_shll__cl___eax.exit
    i5 1, label %1281
  ]

; <label>:1281:                                   ; preds = %block_43de34
  %1282 = shl i32 %1280, 1
  %1283 = icmp slt i32 %1280, 0
  %1284 = icmp slt i32 %1282, 0
  %1285 = xor i1 %1283, %1284
  br label %1296

; <label>:1286:                                   ; preds = %block_43de34
  %1287 = and i32 %1274, 31
  %1288 = zext i32 %1287 to i64
  %1289 = add nuw nsw i64 %1288, 4294967295
  %1290 = and i64 %1277, 4294967295
  %1291 = and i64 %1289, 4294967295
  %1292 = shl i64 %1290, %1291
  %1293 = trunc i64 %1292 to i32
  %1294 = icmp slt i32 %1293, 0
  %1295 = shl i32 %1293, 1
  br label %1296

; <label>:1296:                                   ; preds = %1286, %1281
  %1297 = phi i1 [ %1283, %1281 ], [ %1294, %1286 ]
  %1298 = phi i1 [ %1285, %1281 ], [ false, %1286 ]
  %1299 = phi i32 [ %1282, %1281 ], [ %1295, %1286 ]
  %1300 = zext i32 %1299 to i64
  store i64 %1300, i64* %RAX.i967, align 8
  %1301 = zext i1 %1297 to i8
  store i8 %1301, i8* %14, align 1
  %1302 = and i32 %1299, 254
  %1303 = tail call i32 @llvm.ctpop.i32(i32 %1302)
  %1304 = trunc i32 %1303 to i8
  %1305 = and i8 %1304, 1
  %1306 = xor i8 %1305, 1
  store i8 %1306, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1307 = icmp eq i32 %1299, 0
  %1308 = zext i1 %1307 to i8
  store i8 %1308, i8* %29, align 1
  %1309 = lshr i32 %1299, 31
  %1310 = trunc i32 %1309 to i8
  store i8 %1310, i8* %32, align 1
  %1311 = zext i1 %1298 to i8
  store i8 %1311, i8* %38, align 1
  br label %routine_shll__cl___eax.exit

routine_shll__cl___eax.exit:                      ; preds = %1296, %block_43de34
  %1312 = phi i32 [ %1299, %1296 ], [ %1280, %block_43de34 ]
  %1313 = load i64, i64* %RBP.i, align 8
  %1314 = add i64 %1313, -6588
  %1315 = add i64 %1276, 10
  store i64 %1315, i64* %3, align 8
  %1316 = inttoptr i64 %1314 to i32*
  %1317 = load i32, i32* %1316, align 4
  %1318 = and i32 %1312, %1317
  %1319 = zext i32 %1318 to i64
  store i64 %1319, i64* %RDX.i971, align 8
  %1320 = and i32 %1318, 255
  %1321 = tail call i32 @llvm.ctpop.i32(i32 %1320)
  %1322 = trunc i32 %1321 to i8
  %1323 = and i8 %1322, 1
  %1324 = xor i8 %1323, 1
  %1325 = icmp eq i32 %1318, 0
  %1326 = zext i1 %1325 to i8
  %1327 = lshr i32 %1318, 31
  %1328 = trunc i32 %1327 to i8
  store i8 0, i8* %14, align 1
  store i8 %1324, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 %1326, i8* %29, align 1
  store i8 %1328, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v143 = select i1 %1325, i64 102, i64 21
  %1329 = add i64 %1276, %.v143
  store i64 %1329, i64* %3, align 8
  br i1 %1325, label %block_.L_43deab, label %block_43de5a

block_43de5a:                                     ; preds = %routine_shll__cl___eax.exit
  store i64 2, i64* %RSI.i982, align 8
  %1330 = add i64 %1313, -16
  %1331 = add i64 %1329, 9
  store i64 %1331, i64* %3, align 8
  %1332 = inttoptr i64 %1330 to i64*
  %1333 = load i64, i64* %1332, align 8
  store i64 %1333, i64* %RAX.i967, align 8
  %1334 = add i64 %1313, -20
  %1335 = add i64 %1329, 13
  store i64 %1335, i64* %3, align 8
  %1336 = inttoptr i64 %1334 to i32*
  %1337 = load i32, i32* %1336, align 4
  %1338 = sext i32 %1337 to i64
  store i64 %1338, i64* %RCX.i820, align 8
  %1339 = shl nsw i64 %1338, 2
  %1340 = add i64 %1339, %1333
  %1341 = add i64 %1329, 16
  store i64 %1341, i64* %3, align 8
  %1342 = inttoptr i64 %1340 to i32*
  %1343 = load i32, i32* %1342, align 4
  %1344 = zext i32 %1343 to i64
  store i64 %1344, i64* %RDI.i973, align 8
  %1345 = add i64 %1329, -193418
  %1346 = add i64 %1329, 21
  %1347 = load i64, i64* %6, align 8
  %1348 = add i64 %1347, -8
  %1349 = inttoptr i64 %1348 to i64*
  store i64 %1346, i64* %1349, align 8
  store i64 %1348, i64* %6, align 8
  store i64 %1345, i64* %3, align 8
  %call2_43de6a = tail call %struct.Memory* @sub_40ead0.is_legal(%struct.State* nonnull %0, i64 %1345, %struct.Memory* %MEMORY.16)
  %1350 = load i32, i32* %EAX.i952, align 4
  %1351 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1352 = and i32 %1350, 255
  %1353 = tail call i32 @llvm.ctpop.i32(i32 %1352)
  %1354 = trunc i32 %1353 to i8
  %1355 = and i8 %1354, 1
  %1356 = xor i8 %1355, 1
  store i8 %1356, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1357 = icmp eq i32 %1350, 0
  %1358 = zext i1 %1357 to i8
  store i8 %1358, i8* %29, align 1
  %1359 = lshr i32 %1350, 31
  %1360 = trunc i32 %1359 to i8
  store i8 %1360, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v144 = select i1 %1357, i64 9, i64 24
  %1361 = add i64 %1351, %.v144
  store i64 %1361, i64* %3, align 8
  br i1 %1357, label %block_43de78, label %block_.L_43de87

block_43de78:                                     ; preds = %block_43de5a
  %1362 = load i64, i64* %RBP.i, align 8
  %1363 = add i64 %1362, -6556
  %1364 = add i64 %1361, 10
  store i64 %1364, i64* %3, align 8
  %1365 = inttoptr i64 %1363 to i32*
  store i32 0, i32* %1365, align 4
  %1366 = load i64, i64* %3, align 8
  %1367 = add i64 %1366, 60
  store i64 %1367, i64* %3, align 8
  %.pre86 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43debe

block_.L_43de87:                                  ; preds = %block_43de5a
  store i64 2, i64* %RSI.i982, align 8
  %1368 = load i64, i64* %RBP.i, align 8
  %1369 = add i64 %1368, -16
  %1370 = add i64 %1361, 9
  store i64 %1370, i64* %3, align 8
  %1371 = inttoptr i64 %1369 to i64*
  %1372 = load i64, i64* %1371, align 8
  store i64 %1372, i64* %RAX.i967, align 8
  %1373 = add i64 %1368, -20
  %1374 = add i64 %1361, 13
  store i64 %1374, i64* %3, align 8
  %1375 = inttoptr i64 %1373 to i32*
  %1376 = load i32, i32* %1375, align 4
  %1377 = sext i32 %1376 to i64
  store i64 %1377, i64* %RCX.i820, align 8
  %1378 = shl nsw i64 %1377, 2
  %1379 = add i64 %1378, %1372
  %1380 = add i64 %1361, 16
  store i64 %1380, i64* %3, align 8
  %1381 = inttoptr i64 %1379 to i32*
  %1382 = load i32, i32* %1381, align 4
  %1383 = zext i32 %1382 to i64
  store i64 %1383, i64* %RDI.i973, align 8
  %1384 = add i64 %1361, -195447
  %1385 = add i64 %1361, 21
  %1386 = load i64, i64* %6, align 8
  %1387 = add i64 %1386, -8
  %1388 = inttoptr i64 %1387 to i64*
  store i64 %1385, i64* %1388, align 8
  store i64 %1387, i64* %6, align 8
  store i64 %1384, i64* %3, align 8
  %call2_43de97 = tail call %struct.Memory* @sub_40e310.play_move(%struct.State* nonnull %0, i64 %1384, %struct.Memory* %MEMORY.16)
  %1389 = load i64, i64* %RBP.i, align 8
  %1390 = add i64 %1389, -6560
  %1391 = load i64, i64* %3, align 8
  %1392 = add i64 %1391, 6
  store i64 %1392, i64* %3, align 8
  %1393 = inttoptr i64 %1390 to i32*
  %1394 = load i32, i32* %1393, align 4
  %1395 = add i32 %1394, 1
  %1396 = zext i32 %1395 to i64
  store i64 %1396, i64* %RSI.i982, align 8
  %1397 = icmp eq i32 %1394, -1
  %1398 = icmp eq i32 %1395, 0
  %1399 = or i1 %1397, %1398
  %1400 = zext i1 %1399 to i8
  store i8 %1400, i8* %14, align 1
  %1401 = and i32 %1395, 255
  %1402 = tail call i32 @llvm.ctpop.i32(i32 %1401)
  %1403 = trunc i32 %1402 to i8
  %1404 = and i8 %1403, 1
  %1405 = xor i8 %1404, 1
  store i8 %1405, i8* %21, align 1
  %1406 = xor i32 %1395, %1394
  %1407 = lshr i32 %1406, 4
  %1408 = trunc i32 %1407 to i8
  %1409 = and i8 %1408, 1
  store i8 %1409, i8* %26, align 1
  %1410 = zext i1 %1398 to i8
  store i8 %1410, i8* %29, align 1
  %1411 = lshr i32 %1395, 31
  %1412 = trunc i32 %1411 to i8
  store i8 %1412, i8* %32, align 1
  %1413 = lshr i32 %1394, 31
  %1414 = xor i32 %1411, %1413
  %1415 = add nuw nsw i32 %1414, %1411
  %1416 = icmp eq i32 %1415, 2
  %1417 = zext i1 %1416 to i8
  store i8 %1417, i8* %38, align 1
  %1418 = add i64 %1391, 15
  store i64 %1418, i64* %3, align 8
  store i32 %1395, i32* %1393, align 4
  %.pre99 = load i64, i64* %3, align 8
  %.pre100 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43deab

block_.L_43deab:                                  ; preds = %block_.L_43de87, %routine_shll__cl___eax.exit
  %1419 = phi i64 [ %.pre100, %block_.L_43de87 ], [ %1313, %routine_shll__cl___eax.exit ]
  %1420 = phi i64 [ %.pre99, %block_.L_43de87 ], [ %1329, %routine_shll__cl___eax.exit ]
  %1421 = add i64 %1419, -20
  %1422 = add i64 %1420, 8
  store i64 %1422, i64* %3, align 8
  %1423 = inttoptr i64 %1421 to i32*
  %1424 = load i32, i32* %1423, align 4
  %1425 = add i32 %1424, 1
  %1426 = zext i32 %1425 to i64
  store i64 %1426, i64* %RAX.i967, align 8
  %1427 = icmp eq i32 %1424, -1
  %1428 = icmp eq i32 %1425, 0
  %1429 = or i1 %1427, %1428
  %1430 = zext i1 %1429 to i8
  store i8 %1430, i8* %14, align 1
  %1431 = and i32 %1425, 255
  %1432 = tail call i32 @llvm.ctpop.i32(i32 %1431)
  %1433 = trunc i32 %1432 to i8
  %1434 = and i8 %1433, 1
  %1435 = xor i8 %1434, 1
  store i8 %1435, i8* %21, align 1
  %1436 = xor i32 %1425, %1424
  %1437 = lshr i32 %1436, 4
  %1438 = trunc i32 %1437 to i8
  %1439 = and i8 %1438, 1
  store i8 %1439, i8* %26, align 1
  %1440 = zext i1 %1428 to i8
  store i8 %1440, i8* %29, align 1
  %1441 = lshr i32 %1425, 31
  %1442 = trunc i32 %1441 to i8
  store i8 %1442, i8* %32, align 1
  %1443 = lshr i32 %1424, 31
  %1444 = xor i32 %1441, %1443
  %1445 = add nuw nsw i32 %1444, %1441
  %1446 = icmp eq i32 %1445, 2
  %1447 = zext i1 %1446 to i8
  store i8 %1447, i8* %38, align 1
  %1448 = add i64 %1420, 14
  store i64 %1448, i64* %3, align 8
  store i32 %1425, i32* %1423, align 4
  %1449 = load i64, i64* %3, align 8
  %1450 = add i64 %1449, -145
  store i64 %1450, i64* %3, align 8
  br label %block_.L_43de28

block_.L_43debe.loopexit:                         ; preds = %block_.L_43de28
  br label %block_.L_43debe

block_.L_43debe:                                  ; preds = %block_.L_43debe.loopexit, %block_43de78
  %1451 = phi i64 [ %1367, %block_43de78 ], [ %1262, %block_.L_43debe.loopexit ]
  %1452 = phi i64 [ %.pre86, %block_43de78 ], [ %1226, %block_.L_43debe.loopexit ]
  %1453 = add i64 %1452, -6556
  %1454 = add i64 %1451, 7
  store i64 %1454, i64* %3, align 8
  %1455 = inttoptr i64 %1453 to i32*
  %1456 = load i32, i32* %1455, align 4
  store i8 0, i8* %14, align 1
  %1457 = and i32 %1456, 255
  %1458 = tail call i32 @llvm.ctpop.i32(i32 %1457)
  %1459 = trunc i32 %1458 to i8
  %1460 = and i8 %1459, 1
  %1461 = xor i8 %1460, 1
  store i8 %1461, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1462 = icmp eq i32 %1456, 0
  %1463 = zext i1 %1462 to i8
  store i8 %1463, i8* %29, align 1
  %1464 = lshr i32 %1456, 31
  %1465 = trunc i32 %1464 to i8
  store i8 %1465, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v121 = select i1 %1462, i64 13, i64 18
  %1466 = add i64 %1451, %.v121
  store i64 %1466, i64* %3, align 8
  br i1 %1462, label %block_43decb, label %block_.L_43ded0

block_43decb:                                     ; preds = %block_.L_43debe
  %1467 = add i64 %1466, 1045
  br label %block_.L_43e2e0

block_.L_43ded0:                                  ; preds = %block_.L_43debe
  %1468 = add i64 %1452, -1660
  %1469 = add i64 %1466, 7
  store i64 %1469, i64* %3, align 8
  %1470 = inttoptr i64 %1468 to i32*
  %1471 = load i32, i32* %1470, align 4
  %1472 = add i32 %1471, -1
  %1473 = icmp eq i32 %1471, 0
  %1474 = zext i1 %1473 to i8
  store i8 %1474, i8* %14, align 1
  %1475 = and i32 %1472, 255
  %1476 = tail call i32 @llvm.ctpop.i32(i32 %1475)
  %1477 = trunc i32 %1476 to i8
  %1478 = and i8 %1477, 1
  %1479 = xor i8 %1478, 1
  store i8 %1479, i8* %21, align 1
  %1480 = xor i32 %1472, %1471
  %1481 = lshr i32 %1480, 4
  %1482 = trunc i32 %1481 to i8
  %1483 = and i8 %1482, 1
  store i8 %1483, i8* %26, align 1
  %1484 = icmp eq i32 %1472, 0
  %1485 = zext i1 %1484 to i8
  store i8 %1485, i8* %29, align 1
  %1486 = lshr i32 %1472, 31
  %1487 = trunc i32 %1486 to i8
  store i8 %1487, i8* %32, align 1
  %1488 = lshr i32 %1471, 31
  %1489 = xor i32 %1486, %1488
  %1490 = add nuw nsw i32 %1489, %1488
  %1491 = icmp eq i32 %1490, 2
  %1492 = zext i1 %1491 to i8
  store i8 %1492, i8* %38, align 1
  %1493 = icmp ne i8 %1487, 0
  %1494 = xor i1 %1493, %1491
  %1495 = or i1 %1484, %1494
  %.v122 = select i1 %1495, i64 20, i64 13
  %1496 = add i64 %1466, %.v122
  store i64 %1496, i64* %3, align 8
  br i1 %1495, label %block_.L_43dee4, label %block_43dedd

block_43dedd:                                     ; preds = %block_.L_43ded0
  store i64 0, i64* %RDI.i973, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1497 = add i64 %1496, 225059
  %1498 = add i64 %1496, 7
  %1499 = load i64, i64* %6, align 8
  %1500 = add i64 %1499, -8
  %1501 = inttoptr i64 %1500 to i64*
  store i64 %1498, i64* %1501, align 8
  store i64 %1500, i64* %6, align 8
  store i64 %1497, i64* %3, align 8
  %call2_43dedf = tail call %struct.Memory* @sub_474e00.showboard(%struct.State* nonnull %0, i64 %1497, %struct.Memory* %MEMORY.16)
  %.pre87 = load i64, i64* %3, align 8
  br label %block_.L_43dee4

block_.L_43dee4:                                  ; preds = %block_43dedd, %block_.L_43ded0
  %1502 = phi i64 [ %1496, %block_.L_43ded0 ], [ %.pre87, %block_43dedd ]
  %MEMORY.20 = phi %struct.Memory* [ %MEMORY.16, %block_.L_43ded0 ], [ %call2_43dedf, %block_43dedd ]
  store i64 1, i64* %RDI.i973, align 8
  store i64 3, i64* %RSI.i982, align 8
  %1503 = add i64 %1502, -98948
  %1504 = add i64 %1502, 15
  %1505 = load i64, i64* %6, align 8
  %1506 = add i64 %1505, -8
  %1507 = inttoptr i64 %1506 to i64*
  store i64 %1504, i64* %1507, align 8
  store i64 %1506, i64* %6, align 8
  store i64 %1503, i64* %3, align 8
  %call2_43deee = tail call %struct.Memory* @sub_425c60.examine_position(%struct.State* nonnull %0, i64 %1503, %struct.Memory* %MEMORY.20)
  %1508 = load i64, i64* %RBP.i, align 8
  %1509 = add i64 %1508, -1648
  %1510 = load i64, i64* %3, align 8
  store i64 %1509, i64* %RSI.i982, align 8
  store i64 0, i64* %RDI.i973, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RAX.i967, align 8
  %1511 = add i64 %1508, -1640
  %1512 = add i64 %1510, 17
  store i64 %1512, i64* %3, align 8
  %1513 = inttoptr i64 %1511 to i32*
  %1514 = load i32, i32* %1513, align 4
  %1515 = zext i32 %1514 to i64
  store i64 %1515, i64* %RDI.i973, align 8
  store i64 0, i64* %RDX.i971, align 8
  store i64 0, i64* %RCX.i820, align 8
  %1516 = add i64 %1510, 35357
  %1517 = add i64 %1510, 28
  %1518 = load i64, i64* %6, align 8
  %1519 = add i64 %1518, -8
  %1520 = inttoptr i64 %1519 to i64*
  store i64 %1517, i64* %1520, align 8
  store i64 %1519, i64* %6, align 8
  store i64 %1516, i64* %3, align 8
  %call2_43df0a = tail call %struct.Memory* @sub_446910.owl_attack(%struct.State* nonnull %0, i64 %1516, %struct.Memory* %call2_43deee)
  %1521 = load i64, i64* %RBP.i, align 8
  %1522 = add i64 %1521, -1644
  %1523 = load i32, i32* %EAX.i952, align 4
  %1524 = load i64, i64* %3, align 8
  %1525 = add i64 %1524, 6
  store i64 %1525, i64* %3, align 8
  %1526 = inttoptr i64 %1522 to i32*
  store i32 %1523, i32* %1526, align 4
  %1527 = load i64, i64* %RBP.i, align 8
  %1528 = add i64 %1527, -1644
  %1529 = load i64, i64* %3, align 8
  %1530 = add i64 %1529, 7
  store i64 %1530, i64* %3, align 8
  %1531 = inttoptr i64 %1528 to i32*
  %1532 = load i32, i32* %1531, align 4
  store i8 0, i8* %14, align 1
  %1533 = and i32 %1532, 255
  %1534 = tail call i32 @llvm.ctpop.i32(i32 %1533)
  %1535 = trunc i32 %1534 to i8
  %1536 = and i8 %1535, 1
  %1537 = xor i8 %1536, 1
  store i8 %1537, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1538 = icmp eq i32 %1532, 0
  %1539 = zext i1 %1538 to i8
  store i8 %1539, i8* %29, align 1
  %1540 = lshr i32 %1532, 31
  %1541 = trunc i32 %1540 to i8
  store i8 %1541, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v123 = select i1 %1538, i64 13, i64 383
  %1542 = add i64 %1529, %.v123
  store i64 %1542, i64* %3, align 8
  br i1 %1538, label %block_43df22, label %block_.L_43e094

block_43df22:                                     ; preds = %block_.L_43dee4
  %1543 = add i64 %1527, -20
  %1544 = add i64 %1542, 7
  store i64 %1544, i64* %3, align 8
  %1545 = inttoptr i64 %1543 to i32*
  store i32 0, i32* %1545, align 4
  %.pre88 = load i64, i64* %3, align 8
  br label %block_.L_43df29

block_.L_43df29:                                  ; preds = %block_.L_43dfd9, %block_43df22
  %1546 = phi i64 [ %.pre88, %block_43df22 ], [ %1757, %block_.L_43dfd9 ]
  %1547 = load i64, i64* %RBP.i, align 8
  %1548 = add i64 %1547, -20
  %1549 = add i64 %1546, 3
  store i64 %1549, i64* %3, align 8
  %1550 = inttoptr i64 %1548 to i32*
  %1551 = load i32, i32* %1550, align 4
  %1552 = zext i32 %1551 to i64
  store i64 %1552, i64* %RAX.i967, align 8
  %1553 = add i64 %1547, -4
  %1554 = add i64 %1546, 6
  store i64 %1554, i64* %3, align 8
  %1555 = inttoptr i64 %1553 to i32*
  %1556 = load i32, i32* %1555, align 4
  %1557 = sub i32 %1551, %1556
  %1558 = icmp ult i32 %1551, %1556
  %1559 = zext i1 %1558 to i8
  store i8 %1559, i8* %14, align 1
  %1560 = and i32 %1557, 255
  %1561 = tail call i32 @llvm.ctpop.i32(i32 %1560)
  %1562 = trunc i32 %1561 to i8
  %1563 = and i8 %1562, 1
  %1564 = xor i8 %1563, 1
  store i8 %1564, i8* %21, align 1
  %1565 = xor i32 %1556, %1551
  %1566 = xor i32 %1565, %1557
  %1567 = lshr i32 %1566, 4
  %1568 = trunc i32 %1567 to i8
  %1569 = and i8 %1568, 1
  store i8 %1569, i8* %26, align 1
  %1570 = icmp eq i32 %1557, 0
  %1571 = zext i1 %1570 to i8
  store i8 %1571, i8* %29, align 1
  %1572 = lshr i32 %1557, 31
  %1573 = trunc i32 %1572 to i8
  store i8 %1573, i8* %32, align 1
  %1574 = lshr i32 %1551, 31
  %1575 = lshr i32 %1556, 31
  %1576 = xor i32 %1575, %1574
  %1577 = xor i32 %1572, %1574
  %1578 = add nuw nsw i32 %1577, %1576
  %1579 = icmp eq i32 %1578, 2
  %1580 = zext i1 %1579 to i8
  store i8 %1580, i8* %38, align 1
  %1581 = icmp ne i8 %1573, 0
  %1582 = xor i1 %1581, %1579
  %.v135 = select i1 %1582, i64 12, i64 195
  %1583 = add i64 %1546, %.v135
  store i64 %1583, i64* %3, align 8
  br i1 %1582, label %block_43df35, label %block_.L_43dfec

block_43df35:                                     ; preds = %block_.L_43df29
  %1584 = add i64 %1547, -16
  %1585 = add i64 %1583, 4
  store i64 %1585, i64* %3, align 8
  %1586 = inttoptr i64 %1584 to i64*
  %1587 = load i64, i64* %1586, align 8
  store i64 %1587, i64* %RAX.i967, align 8
  %1588 = add i64 %1583, 8
  store i64 %1588, i64* %3, align 8
  %1589 = load i32, i32* %1550, align 4
  %1590 = sext i32 %1589 to i64
  store i64 %1590, i64* %RCX.i820, align 8
  %1591 = shl nsw i64 %1590, 2
  %1592 = add i64 %1591, %1587
  %1593 = add i64 %1583, 12
  store i64 %1593, i64* %3, align 8
  %1594 = inttoptr i64 %1592 to i32*
  %1595 = load i32, i32* %1594, align 4
  %1596 = sext i32 %1595 to i64
  store i64 %1596, i64* %RAX.i967, align 8
  %1597 = add nsw i64 %1596, 12099168
  %1598 = add i64 %1583, 20
  store i64 %1598, i64* %3, align 8
  %1599 = inttoptr i64 %1597 to i8*
  %1600 = load i8, i8* %1599, align 1
  %1601 = zext i8 %1600 to i64
  store i64 %1601, i64* %RDX.i971, align 8
  %1602 = zext i8 %1600 to i32
  store i8 0, i8* %14, align 1
  %1603 = tail call i32 @llvm.ctpop.i32(i32 %1602)
  %1604 = trunc i32 %1603 to i8
  %1605 = and i8 %1604, 1
  %1606 = xor i8 %1605, 1
  store i8 %1606, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1607 = icmp eq i8 %1600, 0
  %1608 = zext i1 %1607 to i8
  store i8 %1608, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v140 = select i1 %1607, i64 29, i64 164
  %1609 = add i64 %1583, %.v140
  store i64 %1609, i64* %3, align 8
  br i1 %1607, label %block_43df52, label %block_.L_43dfd9

block_43df52:                                     ; preds = %block_43df35
  store i64 2, i64* %RSI.i982, align 8
  %1610 = add i64 %1609, 9
  store i64 %1610, i64* %3, align 8
  %1611 = load i64, i64* %1586, align 8
  store i64 %1611, i64* %RAX.i967, align 8
  %1612 = add i64 %1609, 13
  store i64 %1612, i64* %3, align 8
  %1613 = load i32, i32* %1550, align 4
  %1614 = sext i32 %1613 to i64
  store i64 %1614, i64* %RCX.i820, align 8
  %1615 = shl nsw i64 %1614, 2
  %1616 = add i64 %1615, %1611
  %1617 = add i64 %1609, 16
  store i64 %1617, i64* %3, align 8
  %1618 = inttoptr i64 %1616 to i32*
  %1619 = load i32, i32* %1618, align 4
  %1620 = zext i32 %1619 to i64
  store i64 %1620, i64* %RDI.i973, align 8
  %1621 = add i64 %1609, -193666
  %1622 = add i64 %1609, 21
  %1623 = load i64, i64* %6, align 8
  %1624 = add i64 %1623, -8
  %1625 = inttoptr i64 %1624 to i64*
  store i64 %1622, i64* %1625, align 8
  store i64 %1624, i64* %6, align 8
  store i64 %1621, i64* %3, align 8
  %call2_43df62 = tail call %struct.Memory* @sub_40ead0.is_legal(%struct.State* nonnull %0, i64 %1621, %struct.Memory* %call2_43df0a)
  %1626 = load i32, i32* %EAX.i952, align 4
  %1627 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1628 = and i32 %1626, 255
  %1629 = tail call i32 @llvm.ctpop.i32(i32 %1628)
  %1630 = trunc i32 %1629 to i8
  %1631 = and i8 %1630, 1
  %1632 = xor i8 %1631, 1
  store i8 %1632, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1633 = icmp eq i32 %1626, 0
  %1634 = zext i1 %1633 to i8
  store i8 %1634, i8* %29, align 1
  %1635 = lshr i32 %1626, 31
  %1636 = trunc i32 %1635 to i8
  store i8 %1636, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v141 = select i1 %1633, i64 114, i64 9
  %1637 = add i64 %1627, %.v141
  store i64 %1637, i64* %3, align 8
  br i1 %1633, label %block_.L_43dfd9, label %block_43df70

block_43df70:                                     ; preds = %block_43df52
  store i64 0, i64* %RAX.i967, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RDX.i971, align 8
  %1638 = load i64, i64* %RBP.i, align 8
  %1639 = add i64 %1638, -16
  %1640 = add i64 %1637, 8
  store i64 %1640, i64* %3, align 8
  %1641 = inttoptr i64 %1639 to i64*
  %1642 = load i64, i64* %1641, align 8
  store i64 %1642, i64* %RCX.i820, align 8
  %1643 = add i64 %1638, -20
  %1644 = add i64 %1637, 12
  store i64 %1644, i64* %3, align 8
  %1645 = inttoptr i64 %1643 to i32*
  %1646 = load i32, i32* %1645, align 4
  %1647 = sext i32 %1646 to i64
  store i64 %1647, i64* %RSI.i982, align 8
  %1648 = shl nsw i64 %1647, 2
  %1649 = add i64 %1648, %1642
  %1650 = add i64 %1637, 15
  store i64 %1650, i64* %3, align 8
  %1651 = inttoptr i64 %1649 to i32*
  %1652 = load i32, i32* %1651, align 4
  %1653 = zext i32 %1652 to i64
  store i64 %1653, i64* %RDI.i973, align 8
  %1654 = add i64 %1638, -1640
  %1655 = add i64 %1637, 21
  store i64 %1655, i64* %3, align 8
  %1656 = inttoptr i64 %1654 to i32*
  %1657 = load i32, i32* %1656, align 4
  %1658 = zext i32 %1657 to i64
  store i64 %1658, i64* %RSI.i982, align 8
  %1659 = add i64 %1637, 60352
  %1660 = add i64 %1637, 26
  %1661 = load i64, i64* %6, align 8
  %1662 = add i64 %1661, -8
  %1663 = inttoptr i64 %1662 to i64*
  store i64 %1660, i64* %1663, align 8
  store i64 %1662, i64* %6, align 8
  store i64 %1659, i64* %3, align 8
  %call2_43df85 = tail call %struct.Memory* @sub_44cb30.owl_does_attack(%struct.State* nonnull %0, i64 %1659, %struct.Memory* %call2_43df0a)
  %1664 = load i32, i32* %EAX.i952, align 4
  %1665 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1666 = and i32 %1664, 255
  %1667 = tail call i32 @llvm.ctpop.i32(i32 %1666)
  %1668 = trunc i32 %1667 to i8
  %1669 = and i8 %1668, 1
  %1670 = xor i8 %1669, 1
  store i8 %1670, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1671 = icmp eq i32 %1664, 0
  %1672 = zext i1 %1671 to i8
  store i8 %1672, i8* %29, align 1
  %1673 = lshr i32 %1664, 31
  %1674 = trunc i32 %1673 to i8
  store i8 %1674, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v142 = select i1 %1671, i64 79, i64 9
  %1675 = add i64 %1665, %.v142
  store i64 %1675, i64* %3, align 8
  br i1 %1671, label %block_.L_43dfd9, label %block_43df93

block_43df93:                                     ; preds = %block_43df70
  store i64 ptrtoint (%G__0x57dbe7_type* @G__0x57dbe7 to i64), i64* %RDI.i973, align 8
  %1676 = load i64, i64* %RBP.i, align 8
  %1677 = add i64 %1676, -1640
  %1678 = add i64 %1675, 16
  store i64 %1678, i64* %3, align 8
  %1679 = inttoptr i64 %1677 to i32*
  %1680 = load i32, i32* %1679, align 4
  %1681 = zext i32 %1680 to i64
  store i64 %1681, i64* %RSI.i982, align 8
  %1682 = add i64 %1676, -16
  %1683 = add i64 %1675, 20
  store i64 %1683, i64* %3, align 8
  %1684 = inttoptr i64 %1682 to i64*
  %1685 = load i64, i64* %1684, align 8
  store i64 %1685, i64* %RAX.i967, align 8
  %1686 = add i64 %1676, -20
  %1687 = add i64 %1675, 24
  store i64 %1687, i64* %3, align 8
  %1688 = inttoptr i64 %1686 to i32*
  %1689 = load i32, i32* %1688, align 4
  %1690 = sext i32 %1689 to i64
  store i64 %1690, i64* %RCX.i820, align 8
  %1691 = shl nsw i64 %1690, 2
  %1692 = add i64 %1691, %1685
  %1693 = add i64 %1675, 27
  store i64 %1693, i64* %3, align 8
  %1694 = inttoptr i64 %1692 to i32*
  %1695 = load i32, i32* %1694, align 4
  %1696 = zext i32 %1695 to i64
  store i64 %1696, i64* %RDX.i971, align 8
  store i8 0, i8* %AL.i121, align 1
  %1697 = add i64 %1675, 81437
  %1698 = add i64 %1675, 34
  %1699 = load i64, i64* %6, align 8
  %1700 = add i64 %1699, -8
  %1701 = inttoptr i64 %1700 to i64*
  store i64 %1698, i64* %1701, align 8
  store i64 %1700, i64* %6, align 8
  store i64 %1697, i64* %3, align 8
  %call2_43dfb0 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1697, %struct.Memory* %call2_43df0a)
  %1702 = load i64, i64* %3, align 8
  store i64 0, i64* %RDI.i973, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1703 = load i64, i64* %RBP.i, align 8
  %1704 = add i64 %1703, -6592
  %1705 = load i32, i32* %EAX.i952, align 4
  %1706 = add i64 %1702, 8
  store i64 %1706, i64* %3, align 8
  %1707 = inttoptr i64 %1704 to i32*
  store i32 %1705, i32* %1707, align 4
  %1708 = load i64, i64* %3, align 8
  %1709 = add i64 %1708, 224835
  %1710 = add i64 %1708, 5
  %1711 = load i64, i64* %6, align 8
  %1712 = add i64 %1711, -8
  %1713 = inttoptr i64 %1712 to i64*
  store i64 %1710, i64* %1713, align 8
  store i64 %1712, i64* %6, align 8
  store i64 %1709, i64* %3, align 8
  %call2_43dfbd = tail call %struct.Memory* @sub_474e00.showboard(%struct.State* nonnull %0, i64 %1709, %struct.Memory* %call2_43df0a)
  %1714 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI.i973, align 8
  store i8 0, i8* %AL.i121, align 1
  %1715 = add i64 %1714, 81390
  %1716 = add i64 %1714, 17
  %1717 = load i64, i64* %6, align 8
  %1718 = add i64 %1717, -8
  %1719 = inttoptr i64 %1718 to i64*
  store i64 %1716, i64* %1719, align 8
  store i64 %1718, i64* %6, align 8
  store i64 %1715, i64* %3, align 8
  %call2_43dfce = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1715, %struct.Memory* %call2_43df0a)
  %1720 = load i64, i64* %RBP.i, align 8
  %1721 = add i64 %1720, -6596
  %1722 = load i32, i32* %EAX.i952, align 4
  %1723 = load i64, i64* %3, align 8
  %1724 = add i64 %1723, 6
  store i64 %1724, i64* %3, align 8
  %1725 = inttoptr i64 %1721 to i32*
  store i32 %1722, i32* %1725, align 4
  %.pre91 = load i64, i64* %3, align 8
  br label %block_.L_43dfd9

block_.L_43dfd9:                                  ; preds = %block_43df35, %block_43df93, %block_43df70, %block_43df52
  %1726 = phi i64 [ %.pre91, %block_43df93 ], [ %1675, %block_43df70 ], [ %1637, %block_43df52 ], [ %1609, %block_43df35 ]
  %1727 = load i64, i64* %RBP.i, align 8
  %1728 = add i64 %1727, -20
  %1729 = add i64 %1726, 8
  store i64 %1729, i64* %3, align 8
  %1730 = inttoptr i64 %1728 to i32*
  %1731 = load i32, i32* %1730, align 4
  %1732 = add i32 %1731, 1
  %1733 = zext i32 %1732 to i64
  store i64 %1733, i64* %RAX.i967, align 8
  %1734 = icmp eq i32 %1731, -1
  %1735 = icmp eq i32 %1732, 0
  %1736 = or i1 %1734, %1735
  %1737 = zext i1 %1736 to i8
  store i8 %1737, i8* %14, align 1
  %1738 = and i32 %1732, 255
  %1739 = tail call i32 @llvm.ctpop.i32(i32 %1738)
  %1740 = trunc i32 %1739 to i8
  %1741 = and i8 %1740, 1
  %1742 = xor i8 %1741, 1
  store i8 %1742, i8* %21, align 1
  %1743 = xor i32 %1732, %1731
  %1744 = lshr i32 %1743, 4
  %1745 = trunc i32 %1744 to i8
  %1746 = and i8 %1745, 1
  store i8 %1746, i8* %26, align 1
  %1747 = zext i1 %1735 to i8
  store i8 %1747, i8* %29, align 1
  %1748 = lshr i32 %1732, 31
  %1749 = trunc i32 %1748 to i8
  store i8 %1749, i8* %32, align 1
  %1750 = lshr i32 %1731, 31
  %1751 = xor i32 %1748, %1750
  %1752 = add nuw nsw i32 %1751, %1748
  %1753 = icmp eq i32 %1752, 2
  %1754 = zext i1 %1753 to i8
  store i8 %1754, i8* %38, align 1
  %1755 = add i64 %1726, 14
  store i64 %1755, i64* %3, align 8
  store i32 %1732, i32* %1730, align 4
  %1756 = load i64, i64* %3, align 8
  %1757 = add i64 %1756, -190
  store i64 %1757, i64* %3, align 8
  br label %block_.L_43df29

block_.L_43dfec:                                  ; preds = %block_.L_43df29
  %1758 = add i64 %1547, -6560
  %1759 = add i64 %1583, 6
  store i64 %1759, i64* %3, align 8
  %1760 = inttoptr i64 %1758 to i32*
  %1761 = load i32, i32* %1760, align 4
  %1762 = zext i32 %1761 to i64
  store i64 %1762, i64* %RAX.i967, align 8
  %1763 = add i64 %1583, 9
  store i64 %1763, i64* %3, align 8
  %1764 = load i32, i32* %1555, align 4
  %1765 = add i32 %1764, -1
  %1766 = zext i32 %1765 to i64
  store i64 %1766, i64* %RCX.i820, align 8
  %1767 = lshr i32 %1765, 31
  %1768 = sub i32 %1761, %1765
  %1769 = icmp ult i32 %1761, %1765
  %1770 = zext i1 %1769 to i8
  store i8 %1770, i8* %14, align 1
  %1771 = and i32 %1768, 255
  %1772 = tail call i32 @llvm.ctpop.i32(i32 %1771)
  %1773 = trunc i32 %1772 to i8
  %1774 = and i8 %1773, 1
  %1775 = xor i8 %1774, 1
  store i8 %1775, i8* %21, align 1
  %1776 = xor i32 %1765, %1761
  %1777 = xor i32 %1776, %1768
  %1778 = lshr i32 %1777, 4
  %1779 = trunc i32 %1778 to i8
  %1780 = and i8 %1779, 1
  store i8 %1780, i8* %26, align 1
  %1781 = icmp eq i32 %1768, 0
  %1782 = zext i1 %1781 to i8
  store i8 %1782, i8* %29, align 1
  %1783 = lshr i32 %1768, 31
  %1784 = trunc i32 %1783 to i8
  store i8 %1784, i8* %32, align 1
  %1785 = lshr i32 %1761, 31
  %1786 = xor i32 %1767, %1785
  %1787 = xor i32 %1783, %1785
  %1788 = add nuw nsw i32 %1787, %1786
  %1789 = icmp eq i32 %1788, 2
  %1790 = zext i1 %1789 to i8
  store i8 %1790, i8* %38, align 1
  %.v136 = select i1 %1781, i64 20, i64 163
  %1791 = add i64 %1583, %.v136
  store i64 %1791, i64* %3, align 8
  br i1 %1781, label %block_43e000, label %block_.L_43e08f

block_43e000:                                     ; preds = %block_.L_43dfec
  %1792 = add i64 %1791, 7
  store i64 %1792, i64* %3, align 8
  store i32 0, i32* %1550, align 4
  %.pre89 = load i64, i64* %3, align 8
  br label %block_.L_43e007

block_.L_43e007:                                  ; preds = %block_.L_43e077, %block_43e000
  %1793 = phi i64 [ %.pre89, %block_43e000 ], [ %1958, %block_.L_43e077 ]
  %1794 = load i64, i64* %RBP.i, align 8
  %1795 = add i64 %1794, -20
  %1796 = add i64 %1793, 3
  store i64 %1796, i64* %3, align 8
  %1797 = inttoptr i64 %1795 to i32*
  %1798 = load i32, i32* %1797, align 4
  %1799 = zext i32 %1798 to i64
  store i64 %1799, i64* %RAX.i967, align 8
  %1800 = add i64 %1794, -4
  %1801 = add i64 %1793, 6
  store i64 %1801, i64* %3, align 8
  %1802 = inttoptr i64 %1800 to i32*
  %1803 = load i32, i32* %1802, align 4
  %1804 = sub i32 %1798, %1803
  %1805 = icmp ult i32 %1798, %1803
  %1806 = zext i1 %1805 to i8
  store i8 %1806, i8* %14, align 1
  %1807 = and i32 %1804, 255
  %1808 = tail call i32 @llvm.ctpop.i32(i32 %1807)
  %1809 = trunc i32 %1808 to i8
  %1810 = and i8 %1809, 1
  %1811 = xor i8 %1810, 1
  store i8 %1811, i8* %21, align 1
  %1812 = xor i32 %1803, %1798
  %1813 = xor i32 %1812, %1804
  %1814 = lshr i32 %1813, 4
  %1815 = trunc i32 %1814 to i8
  %1816 = and i8 %1815, 1
  store i8 %1816, i8* %26, align 1
  %1817 = icmp eq i32 %1804, 0
  %1818 = zext i1 %1817 to i8
  store i8 %1818, i8* %29, align 1
  %1819 = lshr i32 %1804, 31
  %1820 = trunc i32 %1819 to i8
  store i8 %1820, i8* %32, align 1
  %1821 = lshr i32 %1798, 31
  %1822 = lshr i32 %1803, 31
  %1823 = xor i32 %1822, %1821
  %1824 = xor i32 %1819, %1821
  %1825 = add nuw nsw i32 %1824, %1823
  %1826 = icmp eq i32 %1825, 2
  %1827 = zext i1 %1826 to i8
  store i8 %1827, i8* %38, align 1
  %1828 = icmp ne i8 %1820, 0
  %1829 = xor i1 %1828, %1826
  %.v137 = select i1 %1829, i64 12, i64 131
  %1830 = add i64 %1793, %.v137
  store i64 %1830, i64* %3, align 8
  br i1 %1829, label %block_43e013, label %block_.L_43e08a

block_43e013:                                     ; preds = %block_.L_43e007
  %1831 = add i64 %1794, -16
  %1832 = add i64 %1830, 4
  store i64 %1832, i64* %3, align 8
  %1833 = inttoptr i64 %1831 to i64*
  %1834 = load i64, i64* %1833, align 8
  store i64 %1834, i64* %RAX.i967, align 8
  %1835 = add i64 %1830, 8
  store i64 %1835, i64* %3, align 8
  %1836 = load i32, i32* %1797, align 4
  %1837 = sext i32 %1836 to i64
  store i64 %1837, i64* %RCX.i820, align 8
  %1838 = shl nsw i64 %1837, 2
  %1839 = add i64 %1838, %1834
  %1840 = add i64 %1830, 12
  store i64 %1840, i64* %3, align 8
  %1841 = inttoptr i64 %1839 to i32*
  %1842 = load i32, i32* %1841, align 4
  %1843 = sext i32 %1842 to i64
  store i64 %1843, i64* %RAX.i967, align 8
  %1844 = add nsw i64 %1843, 12099168
  %1845 = add i64 %1830, 20
  store i64 %1845, i64* %3, align 8
  %1846 = inttoptr i64 %1844 to i8*
  %1847 = load i8, i8* %1846, align 1
  %1848 = zext i8 %1847 to i64
  store i64 %1848, i64* %RDX.i971, align 8
  %1849 = zext i8 %1847 to i32
  store i8 0, i8* %14, align 1
  %1850 = tail call i32 @llvm.ctpop.i32(i32 %1849)
  %1851 = trunc i32 %1850 to i8
  %1852 = and i8 %1851, 1
  %1853 = xor i8 %1852, 1
  store i8 %1853, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1854 = icmp eq i8 %1847, 0
  %1855 = zext i1 %1854 to i8
  store i8 %1855, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v138 = select i1 %1854, i64 29, i64 100
  %1856 = add i64 %1830, %.v138
  store i64 %1856, i64* %3, align 8
  br i1 %1854, label %block_43e030, label %block_.L_43e077

block_43e030:                                     ; preds = %block_43e013
  %1857 = zext i32 %1842 to i64
  %1858 = xor i64 %1857, %1843
  %1859 = trunc i64 %1858 to i32
  %1860 = and i64 %1858, 4294967295
  store i64 %1860, i64* %RAX.i967, align 8
  store i8 0, i8* %14, align 1
  %1861 = and i32 %1859, 255
  %1862 = tail call i32 @llvm.ctpop.i32(i32 %1861)
  %1863 = trunc i32 %1862 to i8
  %1864 = and i8 %1863, 1
  %1865 = xor i8 %1864, 1
  store i8 %1865, i8* %21, align 1
  %1866 = icmp eq i32 %1859, 0
  %1867 = zext i1 %1866 to i8
  store i8 %1867, i8* %29, align 1
  %1868 = lshr i32 %1859, 31
  %1869 = trunc i32 %1868 to i8
  store i8 %1869, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1870 = and i64 %1858, 4294967295
  store i64 %1870, i64* %RDX.i971, align 8
  %1871 = add i64 %1856, 8
  store i64 %1871, i64* %3, align 8
  %1872 = load i64, i64* %1833, align 8
  store i64 %1872, i64* %RCX.i820, align 8
  %1873 = add i64 %1856, 12
  store i64 %1873, i64* %3, align 8
  %1874 = load i32, i32* %1797, align 4
  %1875 = sext i32 %1874 to i64
  store i64 %1875, i64* %RSI.i982, align 8
  %1876 = shl nsw i64 %1875, 2
  %1877 = add i64 %1876, %1872
  %1878 = add i64 %1856, 15
  store i64 %1878, i64* %3, align 8
  %1879 = inttoptr i64 %1877 to i32*
  %1880 = load i32, i32* %1879, align 4
  %1881 = zext i32 %1880 to i64
  store i64 %1881, i64* %RDI.i973, align 8
  %1882 = add i64 %1794, -1640
  %1883 = add i64 %1856, 21
  store i64 %1883, i64* %3, align 8
  %1884 = inttoptr i64 %1882 to i32*
  %1885 = load i32, i32* %1884, align 4
  %1886 = zext i32 %1885 to i64
  store i64 %1886, i64* %RSI.i982, align 8
  %1887 = add i64 %1856, 58256
  %1888 = add i64 %1856, 26
  %1889 = load i64, i64* %6, align 8
  %1890 = add i64 %1889, -8
  %1891 = inttoptr i64 %1890 to i64*
  store i64 %1888, i64* %1891, align 8
  store i64 %1890, i64* %6, align 8
  store i64 %1887, i64* %3, align 8
  %call2_43e045 = tail call %struct.Memory* @sub_44c3c0.owl_does_defend(%struct.State* nonnull %0, i64 %1887, %struct.Memory* %call2_43df0a)
  %1892 = load i32, i32* %EAX.i952, align 4
  %1893 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1894 = and i32 %1892, 255
  %1895 = tail call i32 @llvm.ctpop.i32(i32 %1894)
  %1896 = trunc i32 %1895 to i8
  %1897 = and i8 %1896, 1
  %1898 = xor i8 %1897, 1
  store i8 %1898, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1899 = icmp eq i32 %1892, 0
  %1900 = zext i1 %1899 to i8
  store i8 %1900, i8* %29, align 1
  %1901 = lshr i32 %1892, 31
  %1902 = trunc i32 %1901 to i8
  store i8 %1902, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v139 = select i1 %1899, i64 9, i64 45
  %1903 = add i64 %1893, %.v139
  store i64 %1903, i64* %3, align 8
  br i1 %1899, label %block_43e053, label %block_.L_43e077

block_43e053:                                     ; preds = %block_43e030
  store i64 ptrtoint (%G__0x57dc04_type* @G__0x57dc04 to i64), i64* %RDI.i973, align 8
  %1904 = load i64, i64* %RBP.i, align 8
  %1905 = add i64 %1904, -1640
  %1906 = add i64 %1903, 16
  store i64 %1906, i64* %3, align 8
  %1907 = inttoptr i64 %1905 to i32*
  %1908 = load i32, i32* %1907, align 4
  %1909 = zext i32 %1908 to i64
  store i64 %1909, i64* %RSI.i982, align 8
  store i8 0, i8* %AL.i121, align 1
  %1910 = add i64 %1903, 81245
  %1911 = add i64 %1903, 23
  %1912 = load i64, i64* %6, align 8
  %1913 = add i64 %1912, -8
  %1914 = inttoptr i64 %1913 to i64*
  store i64 %1911, i64* %1914, align 8
  store i64 %1913, i64* %6, align 8
  store i64 %1910, i64* %3, align 8
  %call2_43e065 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1910, %struct.Memory* %call2_43df0a)
  %1915 = load i64, i64* %3, align 8
  store i64 0, i64* %RDI.i973, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %1916 = load i64, i64* %RBP.i, align 8
  %1917 = add i64 %1916, -6600
  %1918 = load i32, i32* %EAX.i952, align 4
  %1919 = add i64 %1915, 8
  store i64 %1919, i64* %3, align 8
  %1920 = inttoptr i64 %1917 to i32*
  store i32 %1918, i32* %1920, align 4
  %1921 = load i64, i64* %3, align 8
  %1922 = add i64 %1921, 224654
  %1923 = add i64 %1921, 5
  %1924 = load i64, i64* %6, align 8
  %1925 = add i64 %1924, -8
  %1926 = inttoptr i64 %1925 to i64*
  store i64 %1923, i64* %1926, align 8
  store i64 %1925, i64* %6, align 8
  store i64 %1922, i64* %3, align 8
  %call2_43e072 = tail call %struct.Memory* @sub_474e00.showboard(%struct.State* nonnull %0, i64 %1922, %struct.Memory* %call2_43df0a)
  %.pre90 = load i64, i64* %3, align 8
  br label %block_.L_43e077

block_.L_43e077:                                  ; preds = %block_43e030, %block_43e013, %block_43e053
  %1927 = phi i64 [ %.pre90, %block_43e053 ], [ %1903, %block_43e030 ], [ %1856, %block_43e013 ]
  %1928 = load i64, i64* %RBP.i, align 8
  %1929 = add i64 %1928, -20
  %1930 = add i64 %1927, 8
  store i64 %1930, i64* %3, align 8
  %1931 = inttoptr i64 %1929 to i32*
  %1932 = load i32, i32* %1931, align 4
  %1933 = add i32 %1932, 1
  %1934 = zext i32 %1933 to i64
  store i64 %1934, i64* %RAX.i967, align 8
  %1935 = icmp eq i32 %1932, -1
  %1936 = icmp eq i32 %1933, 0
  %1937 = or i1 %1935, %1936
  %1938 = zext i1 %1937 to i8
  store i8 %1938, i8* %14, align 1
  %1939 = and i32 %1933, 255
  %1940 = tail call i32 @llvm.ctpop.i32(i32 %1939)
  %1941 = trunc i32 %1940 to i8
  %1942 = and i8 %1941, 1
  %1943 = xor i8 %1942, 1
  store i8 %1943, i8* %21, align 1
  %1944 = xor i32 %1933, %1932
  %1945 = lshr i32 %1944, 4
  %1946 = trunc i32 %1945 to i8
  %1947 = and i8 %1946, 1
  store i8 %1947, i8* %26, align 1
  %1948 = zext i1 %1936 to i8
  store i8 %1948, i8* %29, align 1
  %1949 = lshr i32 %1933, 31
  %1950 = trunc i32 %1949 to i8
  store i8 %1950, i8* %32, align 1
  %1951 = lshr i32 %1932, 31
  %1952 = xor i32 %1949, %1951
  %1953 = add nuw nsw i32 %1952, %1949
  %1954 = icmp eq i32 %1953, 2
  %1955 = zext i1 %1954 to i8
  store i8 %1955, i8* %38, align 1
  %1956 = add i64 %1927, 14
  store i64 %1956, i64* %3, align 8
  store i32 %1933, i32* %1931, align 4
  %1957 = load i64, i64* %3, align 8
  %1958 = add i64 %1957, -126
  store i64 %1958, i64* %3, align 8
  br label %block_.L_43e007

block_.L_43e08a:                                  ; preds = %block_.L_43e007
  %1959 = add i64 %1830, 5
  store i64 %1959, i64* %3, align 8
  br label %block_.L_43e08f

block_.L_43e08f:                                  ; preds = %block_.L_43dfec, %block_.L_43e08a
  %.pre98113 = phi i64 [ %1547, %block_.L_43dfec ], [ %1794, %block_.L_43e08a ]
  %1960 = phi i64 [ %1791, %block_.L_43dfec ], [ %1959, %block_.L_43e08a ]
  %1961 = add i64 %1960, 588
  br label %block_.L_43e2db

block_.L_43e094:                                  ; preds = %block_.L_43dee4
  %1962 = add i64 %1527, -1656
  store i64 %1962, i64* %RSI.i982, align 8
  store i64 0, i64* %RAX.i967, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RCX.i820, align 8
  %1963 = add i64 %1527, -1640
  %1964 = add i64 %1542, 17
  store i64 %1964, i64* %3, align 8
  %1965 = inttoptr i64 %1963 to i32*
  %1966 = load i32, i32* %1965, align 4
  %1967 = zext i32 %1966 to i64
  store i64 %1967, i64* %RDI.i973, align 8
  store i64 0, i64* %RDX.i971, align 8
  %1968 = add i64 %1542, 51756
  %1969 = add i64 %1542, 25
  %1970 = load i64, i64* %6, align 8
  %1971 = add i64 %1970, -8
  %1972 = inttoptr i64 %1971 to i64*
  store i64 %1969, i64* %1972, align 8
  store i64 %1971, i64* %6, align 8
  store i64 %1968, i64* %3, align 8
  %call2_43e0a8 = tail call %struct.Memory* @sub_44aac0.owl_defend(%struct.State* nonnull %0, i64 %1968, %struct.Memory* %call2_43df0a)
  %1973 = load i64, i64* %RBP.i, align 8
  %1974 = add i64 %1973, -1652
  %1975 = load i32, i32* %EAX.i952, align 4
  %1976 = load i64, i64* %3, align 8
  %1977 = add i64 %1976, 6
  store i64 %1977, i64* %3, align 8
  %1978 = inttoptr i64 %1974 to i32*
  store i32 %1975, i32* %1978, align 4
  %1979 = load i64, i64* %RBP.i, align 8
  %1980 = add i64 %1979, -1652
  %1981 = load i64, i64* %3, align 8
  %1982 = add i64 %1981, 7
  store i64 %1982, i64* %3, align 8
  %1983 = inttoptr i64 %1980 to i32*
  %1984 = load i32, i32* %1983, align 4
  store i8 0, i8* %14, align 1
  %1985 = and i32 %1984, 255
  %1986 = tail call i32 @llvm.ctpop.i32(i32 %1985)
  %1987 = trunc i32 %1986 to i8
  %1988 = and i8 %1987, 1
  %1989 = xor i8 %1988, 1
  store i8 %1989, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1990 = icmp eq i32 %1984, 0
  %1991 = zext i1 %1990 to i8
  store i8 %1991, i8* %29, align 1
  %1992 = lshr i32 %1984, 31
  %1993 = trunc i32 %1992 to i8
  store i8 %1993, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v124 = select i1 %1990, i64 13, i64 220
  %1994 = add i64 %1981, %.v124
  store i64 %1994, i64* %3, align 8
  br i1 %1990, label %block_43e0c0, label %block_.L_43e18f

block_43e0c0:                                     ; preds = %block_.L_43e094
  %1995 = add i64 %1979, -20
  %1996 = add i64 %1994, 7
  store i64 %1996, i64* %3, align 8
  %1997 = inttoptr i64 %1995 to i32*
  store i32 0, i32* %1997, align 4
  %.pre92 = load i64, i64* %3, align 8
  br label %block_.L_43e0c7

block_.L_43e0c7:                                  ; preds = %block_.L_43e177, %block_43e0c0
  %1998 = phi i64 [ %.pre92, %block_43e0c0 ], [ %2209, %block_.L_43e177 ]
  %1999 = load i64, i64* %RBP.i, align 8
  %2000 = add i64 %1999, -20
  %2001 = add i64 %1998, 3
  store i64 %2001, i64* %3, align 8
  %2002 = inttoptr i64 %2000 to i32*
  %2003 = load i32, i32* %2002, align 4
  %2004 = zext i32 %2003 to i64
  store i64 %2004, i64* %RAX.i967, align 8
  %2005 = add i64 %1999, -4
  %2006 = add i64 %1998, 6
  store i64 %2006, i64* %3, align 8
  %2007 = inttoptr i64 %2005 to i32*
  %2008 = load i32, i32* %2007, align 4
  %2009 = sub i32 %2003, %2008
  %2010 = icmp ult i32 %2003, %2008
  %2011 = zext i1 %2010 to i8
  store i8 %2011, i8* %14, align 1
  %2012 = and i32 %2009, 255
  %2013 = tail call i32 @llvm.ctpop.i32(i32 %2012)
  %2014 = trunc i32 %2013 to i8
  %2015 = and i8 %2014, 1
  %2016 = xor i8 %2015, 1
  store i8 %2016, i8* %21, align 1
  %2017 = xor i32 %2008, %2003
  %2018 = xor i32 %2017, %2009
  %2019 = lshr i32 %2018, 4
  %2020 = trunc i32 %2019 to i8
  %2021 = and i8 %2020, 1
  store i8 %2021, i8* %26, align 1
  %2022 = icmp eq i32 %2009, 0
  %2023 = zext i1 %2022 to i8
  store i8 %2023, i8* %29, align 1
  %2024 = lshr i32 %2009, 31
  %2025 = trunc i32 %2024 to i8
  store i8 %2025, i8* %32, align 1
  %2026 = lshr i32 %2003, 31
  %2027 = lshr i32 %2008, 31
  %2028 = xor i32 %2027, %2026
  %2029 = xor i32 %2024, %2026
  %2030 = add nuw nsw i32 %2029, %2028
  %2031 = icmp eq i32 %2030, 2
  %2032 = zext i1 %2031 to i8
  store i8 %2032, i8* %38, align 1
  %2033 = icmp ne i8 %2025, 0
  %2034 = xor i1 %2033, %2031
  %.v131 = select i1 %2034, i64 12, i64 195
  %2035 = add i64 %1998, %.v131
  store i64 %2035, i64* %3, align 8
  br i1 %2034, label %block_43e0d3, label %block_.L_43e18a

block_43e0d3:                                     ; preds = %block_.L_43e0c7
  %2036 = add i64 %1999, -16
  %2037 = add i64 %2035, 4
  store i64 %2037, i64* %3, align 8
  %2038 = inttoptr i64 %2036 to i64*
  %2039 = load i64, i64* %2038, align 8
  store i64 %2039, i64* %RAX.i967, align 8
  %2040 = add i64 %2035, 8
  store i64 %2040, i64* %3, align 8
  %2041 = load i32, i32* %2002, align 4
  %2042 = sext i32 %2041 to i64
  store i64 %2042, i64* %RCX.i820, align 8
  %2043 = shl nsw i64 %2042, 2
  %2044 = add i64 %2043, %2039
  %2045 = add i64 %2035, 12
  store i64 %2045, i64* %3, align 8
  %2046 = inttoptr i64 %2044 to i32*
  %2047 = load i32, i32* %2046, align 4
  %2048 = sext i32 %2047 to i64
  store i64 %2048, i64* %RAX.i967, align 8
  %2049 = add nsw i64 %2048, 12099168
  %2050 = add i64 %2035, 20
  store i64 %2050, i64* %3, align 8
  %2051 = inttoptr i64 %2049 to i8*
  %2052 = load i8, i8* %2051, align 1
  %2053 = zext i8 %2052 to i64
  store i64 %2053, i64* %RDX.i971, align 8
  %2054 = zext i8 %2052 to i32
  store i8 0, i8* %14, align 1
  %2055 = tail call i32 @llvm.ctpop.i32(i32 %2054)
  %2056 = trunc i32 %2055 to i8
  %2057 = and i8 %2056, 1
  %2058 = xor i8 %2057, 1
  store i8 %2058, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2059 = icmp eq i8 %2052, 0
  %2060 = zext i1 %2059 to i8
  store i8 %2060, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v132 = select i1 %2059, i64 29, i64 164
  %2061 = add i64 %2035, %.v132
  store i64 %2061, i64* %3, align 8
  br i1 %2059, label %block_43e0f0, label %block_.L_43e177

block_43e0f0:                                     ; preds = %block_43e0d3
  store i64 1, i64* %RSI.i982, align 8
  %2062 = add i64 %2061, 9
  store i64 %2062, i64* %3, align 8
  %2063 = load i64, i64* %2038, align 8
  store i64 %2063, i64* %RAX.i967, align 8
  %2064 = add i64 %2061, 13
  store i64 %2064, i64* %3, align 8
  %2065 = load i32, i32* %2002, align 4
  %2066 = sext i32 %2065 to i64
  store i64 %2066, i64* %RCX.i820, align 8
  %2067 = shl nsw i64 %2066, 2
  %2068 = add i64 %2067, %2063
  %2069 = add i64 %2061, 16
  store i64 %2069, i64* %3, align 8
  %2070 = inttoptr i64 %2068 to i32*
  %2071 = load i32, i32* %2070, align 4
  %2072 = zext i32 %2071 to i64
  store i64 %2072, i64* %RDI.i973, align 8
  %2073 = add i64 %2061, -194080
  %2074 = add i64 %2061, 21
  %2075 = load i64, i64* %6, align 8
  %2076 = add i64 %2075, -8
  %2077 = inttoptr i64 %2076 to i64*
  store i64 %2074, i64* %2077, align 8
  store i64 %2076, i64* %6, align 8
  store i64 %2073, i64* %3, align 8
  %call2_43e100 = tail call %struct.Memory* @sub_40ead0.is_legal(%struct.State* nonnull %0, i64 %2073, %struct.Memory* %call2_43e0a8)
  %2078 = load i32, i32* %EAX.i952, align 4
  %2079 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2080 = and i32 %2078, 255
  %2081 = tail call i32 @llvm.ctpop.i32(i32 %2080)
  %2082 = trunc i32 %2081 to i8
  %2083 = and i8 %2082, 1
  %2084 = xor i8 %2083, 1
  store i8 %2084, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2085 = icmp eq i32 %2078, 0
  %2086 = zext i1 %2085 to i8
  store i8 %2086, i8* %29, align 1
  %2087 = lshr i32 %2078, 31
  %2088 = trunc i32 %2087 to i8
  store i8 %2088, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v133 = select i1 %2085, i64 114, i64 9
  %2089 = add i64 %2079, %.v133
  store i64 %2089, i64* %3, align 8
  br i1 %2085, label %block_.L_43e177, label %block_43e10e

block_43e10e:                                     ; preds = %block_43e0f0
  store i64 0, i64* %RAX.i967, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RDX.i971, align 8
  %2090 = load i64, i64* %RBP.i, align 8
  %2091 = add i64 %2090, -16
  %2092 = add i64 %2089, 8
  store i64 %2092, i64* %3, align 8
  %2093 = inttoptr i64 %2091 to i64*
  %2094 = load i64, i64* %2093, align 8
  store i64 %2094, i64* %RCX.i820, align 8
  %2095 = add i64 %2090, -20
  %2096 = add i64 %2089, 12
  store i64 %2096, i64* %3, align 8
  %2097 = inttoptr i64 %2095 to i32*
  %2098 = load i32, i32* %2097, align 4
  %2099 = sext i32 %2098 to i64
  store i64 %2099, i64* %RSI.i982, align 8
  %2100 = shl nsw i64 %2099, 2
  %2101 = add i64 %2100, %2094
  %2102 = add i64 %2089, 15
  store i64 %2102, i64* %3, align 8
  %2103 = inttoptr i64 %2101 to i32*
  %2104 = load i32, i32* %2103, align 4
  %2105 = zext i32 %2104 to i64
  store i64 %2105, i64* %RDI.i973, align 8
  %2106 = add i64 %2090, -1640
  %2107 = add i64 %2089, 21
  store i64 %2107, i64* %3, align 8
  %2108 = inttoptr i64 %2106 to i32*
  %2109 = load i32, i32* %2108, align 4
  %2110 = zext i32 %2109 to i64
  store i64 %2110, i64* %RSI.i982, align 8
  %2111 = add i64 %2089, 58034
  %2112 = add i64 %2089, 26
  %2113 = load i64, i64* %6, align 8
  %2114 = add i64 %2113, -8
  %2115 = inttoptr i64 %2114 to i64*
  store i64 %2112, i64* %2115, align 8
  store i64 %2114, i64* %6, align 8
  store i64 %2111, i64* %3, align 8
  %call2_43e123 = tail call %struct.Memory* @sub_44c3c0.owl_does_defend(%struct.State* nonnull %0, i64 %2111, %struct.Memory* %call2_43e0a8)
  %2116 = load i32, i32* %EAX.i952, align 4
  %2117 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2118 = and i32 %2116, 255
  %2119 = tail call i32 @llvm.ctpop.i32(i32 %2118)
  %2120 = trunc i32 %2119 to i8
  %2121 = and i8 %2120, 1
  %2122 = xor i8 %2121, 1
  store i8 %2122, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2123 = icmp eq i32 %2116, 0
  %2124 = zext i1 %2123 to i8
  store i8 %2124, i8* %29, align 1
  %2125 = lshr i32 %2116, 31
  %2126 = trunc i32 %2125 to i8
  store i8 %2126, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v134 = select i1 %2123, i64 79, i64 9
  %2127 = add i64 %2117, %.v134
  store i64 %2127, i64* %3, align 8
  br i1 %2123, label %block_.L_43e177, label %block_43e131

block_43e131:                                     ; preds = %block_43e10e
  store i64 ptrtoint (%G__0x57dc2f_type* @G__0x57dc2f to i64), i64* %RDI.i973, align 8
  %2128 = load i64, i64* %RBP.i, align 8
  %2129 = add i64 %2128, -1640
  %2130 = add i64 %2127, 16
  store i64 %2130, i64* %3, align 8
  %2131 = inttoptr i64 %2129 to i32*
  %2132 = load i32, i32* %2131, align 4
  %2133 = zext i32 %2132 to i64
  store i64 %2133, i64* %RSI.i982, align 8
  %2134 = add i64 %2128, -16
  %2135 = add i64 %2127, 20
  store i64 %2135, i64* %3, align 8
  %2136 = inttoptr i64 %2134 to i64*
  %2137 = load i64, i64* %2136, align 8
  store i64 %2137, i64* %RAX.i967, align 8
  %2138 = add i64 %2128, -20
  %2139 = add i64 %2127, 24
  store i64 %2139, i64* %3, align 8
  %2140 = inttoptr i64 %2138 to i32*
  %2141 = load i32, i32* %2140, align 4
  %2142 = sext i32 %2141 to i64
  store i64 %2142, i64* %RCX.i820, align 8
  %2143 = shl nsw i64 %2142, 2
  %2144 = add i64 %2143, %2137
  %2145 = add i64 %2127, 27
  store i64 %2145, i64* %3, align 8
  %2146 = inttoptr i64 %2144 to i32*
  %2147 = load i32, i32* %2146, align 4
  %2148 = zext i32 %2147 to i64
  store i64 %2148, i64* %RDX.i971, align 8
  store i8 0, i8* %AL.i121, align 1
  %2149 = add i64 %2127, 81023
  %2150 = add i64 %2127, 34
  %2151 = load i64, i64* %6, align 8
  %2152 = add i64 %2151, -8
  %2153 = inttoptr i64 %2152 to i64*
  store i64 %2150, i64* %2153, align 8
  store i64 %2152, i64* %6, align 8
  store i64 %2149, i64* %3, align 8
  %call2_43e14e = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2149, %struct.Memory* %call2_43e0a8)
  %2154 = load i64, i64* %3, align 8
  store i64 0, i64* %RDI.i973, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2155 = load i64, i64* %RBP.i, align 8
  %2156 = add i64 %2155, -6604
  %2157 = load i32, i32* %EAX.i952, align 4
  %2158 = add i64 %2154, 8
  store i64 %2158, i64* %3, align 8
  %2159 = inttoptr i64 %2156 to i32*
  store i32 %2157, i32* %2159, align 4
  %2160 = load i64, i64* %3, align 8
  %2161 = add i64 %2160, 224421
  %2162 = add i64 %2160, 5
  %2163 = load i64, i64* %6, align 8
  %2164 = add i64 %2163, -8
  %2165 = inttoptr i64 %2164 to i64*
  store i64 %2162, i64* %2165, align 8
  store i64 %2164, i64* %6, align 8
  store i64 %2161, i64* %3, align 8
  %call2_43e15b = tail call %struct.Memory* @sub_474e00.showboard(%struct.State* nonnull %0, i64 %2161, %struct.Memory* %call2_43e0a8)
  %2166 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x586073_type* @G__0x586073 to i64), i64* %RDI.i973, align 8
  store i8 0, i8* %AL.i121, align 1
  %2167 = add i64 %2166, 80976
  %2168 = add i64 %2166, 17
  %2169 = load i64, i64* %6, align 8
  %2170 = add i64 %2169, -8
  %2171 = inttoptr i64 %2170 to i64*
  store i64 %2168, i64* %2171, align 8
  store i64 %2170, i64* %6, align 8
  store i64 %2167, i64* %3, align 8
  %call2_43e16c = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2167, %struct.Memory* %call2_43e0a8)
  %2172 = load i64, i64* %RBP.i, align 8
  %2173 = add i64 %2172, -6608
  %2174 = load i32, i32* %EAX.i952, align 4
  %2175 = load i64, i64* %3, align 8
  %2176 = add i64 %2175, 6
  store i64 %2176, i64* %3, align 8
  %2177 = inttoptr i64 %2173 to i32*
  store i32 %2174, i32* %2177, align 4
  %.pre93 = load i64, i64* %3, align 8
  br label %block_.L_43e177

block_.L_43e177:                                  ; preds = %block_43e0d3, %block_43e131, %block_43e10e, %block_43e0f0
  %2178 = phi i64 [ %.pre93, %block_43e131 ], [ %2127, %block_43e10e ], [ %2089, %block_43e0f0 ], [ %2061, %block_43e0d3 ]
  %2179 = load i64, i64* %RBP.i, align 8
  %2180 = add i64 %2179, -20
  %2181 = add i64 %2178, 8
  store i64 %2181, i64* %3, align 8
  %2182 = inttoptr i64 %2180 to i32*
  %2183 = load i32, i32* %2182, align 4
  %2184 = add i32 %2183, 1
  %2185 = zext i32 %2184 to i64
  store i64 %2185, i64* %RAX.i967, align 8
  %2186 = icmp eq i32 %2183, -1
  %2187 = icmp eq i32 %2184, 0
  %2188 = or i1 %2186, %2187
  %2189 = zext i1 %2188 to i8
  store i8 %2189, i8* %14, align 1
  %2190 = and i32 %2184, 255
  %2191 = tail call i32 @llvm.ctpop.i32(i32 %2190)
  %2192 = trunc i32 %2191 to i8
  %2193 = and i8 %2192, 1
  %2194 = xor i8 %2193, 1
  store i8 %2194, i8* %21, align 1
  %2195 = xor i32 %2184, %2183
  %2196 = lshr i32 %2195, 4
  %2197 = trunc i32 %2196 to i8
  %2198 = and i8 %2197, 1
  store i8 %2198, i8* %26, align 1
  %2199 = zext i1 %2187 to i8
  store i8 %2199, i8* %29, align 1
  %2200 = lshr i32 %2184, 31
  %2201 = trunc i32 %2200 to i8
  store i8 %2201, i8* %32, align 1
  %2202 = lshr i32 %2183, 31
  %2203 = xor i32 %2200, %2202
  %2204 = add nuw nsw i32 %2203, %2200
  %2205 = icmp eq i32 %2204, 2
  %2206 = zext i1 %2205 to i8
  store i8 %2206, i8* %38, align 1
  %2207 = add i64 %2178, 14
  store i64 %2207, i64* %3, align 8
  store i32 %2184, i32* %2182, align 4
  %2208 = load i64, i64* %3, align 8
  %2209 = add i64 %2208, -190
  store i64 %2209, i64* %3, align 8
  br label %block_.L_43e0c7

block_.L_43e18a:                                  ; preds = %block_.L_43e0c7
  %2210 = add i64 %2035, 332
  br label %block_.L_43e2d6

block_.L_43e18f:                                  ; preds = %block_.L_43e094
  %2211 = add i64 %1979, -1648
  %2212 = add i64 %1994, 7
  store i64 %2212, i64* %3, align 8
  %2213 = inttoptr i64 %2211 to i32*
  %2214 = load i32, i32* %2213, align 4
  %2215 = sext i32 %2214 to i64
  store i64 %2215, i64* %RAX.i967, align 8
  %2216 = add nsw i64 %2215, 12099168
  %2217 = add i64 %1994, 15
  store i64 %2217, i64* %3, align 8
  %2218 = inttoptr i64 %2216 to i8*
  %2219 = load i8, i8* %2218, align 1
  %2220 = zext i8 %2219 to i64
  store i64 %2220, i64* %RCX.i820, align 8
  %2221 = zext i8 %2219 to i32
  store i8 0, i8* %14, align 1
  %2222 = tail call i32 @llvm.ctpop.i32(i32 %2221)
  %2223 = trunc i32 %2222 to i8
  %2224 = and i8 %2223, 1
  %2225 = xor i8 %2224, 1
  store i8 %2225, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2226 = icmp eq i8 %2219, 0
  %2227 = zext i1 %2226 to i8
  store i8 %2227, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v125 = select i1 %2226, i64 24, i64 49
  %2228 = add i64 %1994, %.v125
  store i64 %2228, i64* %3, align 8
  br i1 %2226, label %block_43e1a7, label %block_.L_43e1c0

block_43e1a7:                                     ; preds = %block_.L_43e18f
  store i64 2, i64* %RSI.i982, align 8
  %2229 = add i64 %2228, 11
  store i64 %2229, i64* %3, align 8
  %2230 = load i32, i32* %2213, align 4
  %2231 = zext i32 %2230 to i64
  store i64 %2231, i64* %RDI.i973, align 8
  %2232 = add i64 %2228, -194263
  %2233 = add i64 %2228, 16
  %2234 = load i64, i64* %6, align 8
  %2235 = add i64 %2234, -8
  %2236 = inttoptr i64 %2235 to i64*
  store i64 %2233, i64* %2236, align 8
  store i64 %2235, i64* %6, align 8
  store i64 %2232, i64* %3, align 8
  %call2_43e1b2 = tail call %struct.Memory* @sub_40ead0.is_legal(%struct.State* nonnull %0, i64 %2232, %struct.Memory* %call2_43e0a8)
  %2237 = load i32, i32* %EAX.i952, align 4
  %2238 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2239 = and i32 %2237, 255
  %2240 = tail call i32 @llvm.ctpop.i32(i32 %2239)
  %2241 = trunc i32 %2240 to i8
  %2242 = and i8 %2241, 1
  %2243 = xor i8 %2242, 1
  store i8 %2243, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2244 = icmp eq i32 %2237, 0
  %2245 = zext i1 %2244 to i8
  store i8 %2245, i8* %29, align 1
  %2246 = lshr i32 %2237, 31
  %2247 = trunc i32 %2246 to i8
  store i8 %2247, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v129 = select i1 %2244, i64 9, i64 50
  %2248 = add i64 %2238, %.v129
  store i64 %2248, i64* %3, align 8
  br i1 %2244, label %block_43e1a7.block_.L_43e1c0_crit_edge, label %block_.L_43e1e9

block_43e1a7.block_.L_43e1c0_crit_edge:           ; preds = %block_43e1a7
  %.pre95 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43e1c0

block_.L_43e1c0:                                  ; preds = %block_.L_43e18f, %block_43e1a7.block_.L_43e1c0_crit_edge
  %2249 = phi i64 [ %1979, %block_.L_43e18f ], [ %.pre95, %block_43e1a7.block_.L_43e1c0_crit_edge ]
  %2250 = phi i64 [ %2228, %block_.L_43e18f ], [ %2248, %block_43e1a7.block_.L_43e1c0_crit_edge ]
  %MEMORY.28 = phi %struct.Memory* [ %call2_43e0a8, %block_.L_43e18f ], [ %call2_43e1b2, %block_43e1a7.block_.L_43e1c0_crit_edge ]
  store i64 ptrtoint (%G__0x57dc4b_type* @G__0x57dc4b to i64), i64* %RDI.i973, align 8
  %2251 = add i64 %2249, -1648
  %2252 = add i64 %2250, 16
  store i64 %2252, i64* %3, align 8
  %2253 = inttoptr i64 %2251 to i32*
  %2254 = load i32, i32* %2253, align 4
  %2255 = zext i32 %2254 to i64
  store i64 %2255, i64* %RSI.i982, align 8
  store i8 0, i8* %AL.i121, align 1
  %2256 = add i64 %2250, 80880
  %2257 = add i64 %2250, 23
  %2258 = load i64, i64* %6, align 8
  %2259 = add i64 %2258, -8
  %2260 = inttoptr i64 %2259 to i64*
  store i64 %2257, i64* %2260, align 8
  store i64 %2259, i64* %6, align 8
  store i64 %2256, i64* %3, align 8
  %call2_43e1d2 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2256, %struct.Memory* %MEMORY.28)
  %2261 = load i64, i64* %3, align 8
  store i64 0, i64* %RDI.i973, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2262 = load i64, i64* %RBP.i, align 8
  %2263 = add i64 %2262, -6612
  %2264 = load i32, i32* %EAX.i952, align 4
  %2265 = add i64 %2261, 8
  store i64 %2265, i64* %3, align 8
  %2266 = inttoptr i64 %2263 to i32*
  store i32 %2264, i32* %2266, align 4
  %2267 = load i64, i64* %3, align 8
  %2268 = add i64 %2267, 224289
  %2269 = add i64 %2267, 5
  %2270 = load i64, i64* %6, align 8
  %2271 = add i64 %2270, -8
  %2272 = inttoptr i64 %2271 to i64*
  store i64 %2269, i64* %2272, align 8
  store i64 %2271, i64* %6, align 8
  store i64 %2268, i64* %3, align 8
  %call2_43e1df = tail call %struct.Memory* @sub_474e00.showboard(%struct.State* nonnull %0, i64 %2268, %struct.Memory* %call2_43e1d2)
  %2273 = load i64, i64* %3, align 8
  %2274 = add i64 %2273, 76
  br label %block_.L_43e230

block_.L_43e1e9:                                  ; preds = %block_43e1a7
  store i64 0, i64* %RAX.i967, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RDX.i971, align 8
  %2275 = load i64, i64* %RBP.i, align 8
  %2276 = add i64 %2275, -1648
  %2277 = add i64 %2248, 10
  store i64 %2277, i64* %3, align 8
  %2278 = inttoptr i64 %2276 to i32*
  %2279 = load i32, i32* %2278, align 4
  %2280 = zext i32 %2279 to i64
  store i64 %2280, i64* %RDI.i973, align 8
  %2281 = add i64 %2275, -1640
  %2282 = add i64 %2248, 16
  store i64 %2282, i64* %3, align 8
  %2283 = inttoptr i64 %2281 to i32*
  %2284 = load i32, i32* %2283, align 4
  %2285 = zext i32 %2284 to i64
  store i64 %2285, i64* %RSI.i982, align 8
  %2286 = add i64 %2248, 59719
  %2287 = add i64 %2248, 21
  %2288 = load i64, i64* %6, align 8
  %2289 = add i64 %2288, -8
  %2290 = inttoptr i64 %2289 to i64*
  store i64 %2287, i64* %2290, align 8
  store i64 %2289, i64* %6, align 8
  store i64 %2286, i64* %3, align 8
  %call2_43e1f9 = tail call %struct.Memory* @sub_44cb30.owl_does_attack(%struct.State* nonnull %0, i64 %2286, %struct.Memory* %call2_43e1b2)
  %2291 = load i32, i32* %EAX.i952, align 4
  %2292 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2293 = and i32 %2291, 255
  %2294 = tail call i32 @llvm.ctpop.i32(i32 %2293)
  %2295 = trunc i32 %2294 to i8
  %2296 = and i8 %2295, 1
  %2297 = xor i8 %2296, 1
  store i8 %2297, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2298 = icmp eq i32 %2291, 0
  %2299 = zext i1 %2298 to i8
  store i8 %2299, i8* %29, align 1
  %2300 = lshr i32 %2291, 31
  %2301 = trunc i32 %2300 to i8
  store i8 %2301, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v130 = select i1 %2298, i64 9, i64 45
  %2302 = add i64 %2292, %.v130
  store i64 %2302, i64* %3, align 8
  br i1 %2298, label %block_43e207, label %block_.L_43e22b

block_43e207:                                     ; preds = %block_.L_43e1e9
  store i64 ptrtoint (%G__0x57dc62_type* @G__0x57dc62 to i64), i64* %RDI.i973, align 8
  %2303 = load i64, i64* %RBP.i, align 8
  %2304 = add i64 %2303, -1648
  %2305 = add i64 %2302, 16
  store i64 %2305, i64* %3, align 8
  %2306 = inttoptr i64 %2304 to i32*
  %2307 = load i32, i32* %2306, align 4
  %2308 = zext i32 %2307 to i64
  store i64 %2308, i64* %RSI.i982, align 8
  store i8 0, i8* %AL.i121, align 1
  %2309 = add i64 %2302, 80809
  %2310 = add i64 %2302, 23
  %2311 = load i64, i64* %6, align 8
  %2312 = add i64 %2311, -8
  %2313 = inttoptr i64 %2312 to i64*
  store i64 %2310, i64* %2313, align 8
  store i64 %2312, i64* %6, align 8
  store i64 %2309, i64* %3, align 8
  %call2_43e219 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2309, %struct.Memory* %call2_43e1f9)
  %2314 = load i64, i64* %3, align 8
  store i64 0, i64* %RDI.i973, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2315 = load i64, i64* %RBP.i, align 8
  %2316 = add i64 %2315, -6616
  %2317 = load i32, i32* %EAX.i952, align 4
  %2318 = add i64 %2314, 8
  store i64 %2318, i64* %3, align 8
  %2319 = inttoptr i64 %2316 to i32*
  store i32 %2317, i32* %2319, align 4
  %2320 = load i64, i64* %3, align 8
  %2321 = add i64 %2320, 224218
  %2322 = add i64 %2320, 5
  %2323 = load i64, i64* %6, align 8
  %2324 = add i64 %2323, -8
  %2325 = inttoptr i64 %2324 to i64*
  store i64 %2322, i64* %2325, align 8
  store i64 %2324, i64* %6, align 8
  store i64 %2321, i64* %3, align 8
  %call2_43e226 = tail call %struct.Memory* @sub_474e00.showboard(%struct.State* nonnull %0, i64 %2321, %struct.Memory* %call2_43e219)
  %.pre94 = load i64, i64* %3, align 8
  br label %block_.L_43e22b

block_.L_43e22b:                                  ; preds = %block_.L_43e1e9, %block_43e207
  %2326 = phi i64 [ %2302, %block_.L_43e1e9 ], [ %.pre94, %block_43e207 ]
  %MEMORY.29 = phi %struct.Memory* [ %call2_43e1f9, %block_.L_43e1e9 ], [ %call2_43e226, %block_43e207 ]
  %2327 = add i64 %2326, 5
  store i64 %2327, i64* %3, align 8
  br label %block_.L_43e230

block_.L_43e230:                                  ; preds = %block_.L_43e22b, %block_.L_43e1c0
  %storemerge47 = phi i64 [ %2274, %block_.L_43e1c0 ], [ %2327, %block_.L_43e22b ]
  %MEMORY.30 = phi %struct.Memory* [ %call2_43e1df, %block_.L_43e1c0 ], [ %MEMORY.29, %block_.L_43e22b ]
  %2328 = load i64, i64* %RBP.i, align 8
  %2329 = add i64 %2328, -1656
  %2330 = add i64 %storemerge47, 7
  store i64 %2330, i64* %3, align 8
  %2331 = inttoptr i64 %2329 to i32*
  %2332 = load i32, i32* %2331, align 4
  %2333 = sext i32 %2332 to i64
  store i64 %2333, i64* %RAX.i967, align 8
  %2334 = add nsw i64 %2333, 12099168
  %2335 = add i64 %storemerge47, 15
  store i64 %2335, i64* %3, align 8
  %2336 = inttoptr i64 %2334 to i8*
  %2337 = load i8, i8* %2336, align 1
  %2338 = zext i8 %2337 to i64
  store i64 %2338, i64* %RCX.i820, align 8
  %2339 = zext i8 %2337 to i32
  store i8 0, i8* %14, align 1
  %2340 = tail call i32 @llvm.ctpop.i32(i32 %2339)
  %2341 = trunc i32 %2340 to i8
  %2342 = and i8 %2341, 1
  %2343 = xor i8 %2342, 1
  store i8 %2343, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2344 = icmp eq i8 %2337, 0
  %2345 = zext i1 %2344 to i8
  store i8 %2345, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v126 = select i1 %2344, i64 24, i64 49
  %2346 = add i64 %storemerge47, %.v126
  store i64 %2346, i64* %3, align 8
  br i1 %2344, label %block_43e248, label %block_.L_43e261

block_43e248:                                     ; preds = %block_.L_43e230
  store i64 1, i64* %RSI.i982, align 8
  %2347 = add i64 %2346, 11
  store i64 %2347, i64* %3, align 8
  %2348 = load i32, i32* %2331, align 4
  %2349 = zext i32 %2348 to i64
  store i64 %2349, i64* %RDI.i973, align 8
  %2350 = add i64 %2346, -194424
  %2351 = add i64 %2346, 16
  %2352 = load i64, i64* %6, align 8
  %2353 = add i64 %2352, -8
  %2354 = inttoptr i64 %2353 to i64*
  store i64 %2351, i64* %2354, align 8
  store i64 %2353, i64* %6, align 8
  store i64 %2350, i64* %3, align 8
  %call2_43e253 = tail call %struct.Memory* @sub_40ead0.is_legal(%struct.State* nonnull %0, i64 %2350, %struct.Memory* %MEMORY.30)
  %2355 = load i32, i32* %EAX.i952, align 4
  %2356 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2357 = and i32 %2355, 255
  %2358 = tail call i32 @llvm.ctpop.i32(i32 %2357)
  %2359 = trunc i32 %2358 to i8
  %2360 = and i8 %2359, 1
  %2361 = xor i8 %2360, 1
  store i8 %2361, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2362 = icmp eq i32 %2355, 0
  %2363 = zext i1 %2362 to i8
  store i8 %2363, i8* %29, align 1
  %2364 = lshr i32 %2355, 31
  %2365 = trunc i32 %2364 to i8
  store i8 %2365, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v127 = select i1 %2362, i64 9, i64 50
  %2366 = add i64 %2356, %.v127
  store i64 %2366, i64* %3, align 8
  br i1 %2362, label %block_43e248.block_.L_43e261_crit_edge, label %block_.L_43e28a

block_43e248.block_.L_43e261_crit_edge:           ; preds = %block_43e248
  %.pre97 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43e261

block_.L_43e261:                                  ; preds = %block_.L_43e230, %block_43e248.block_.L_43e261_crit_edge
  %2367 = phi i64 [ %2328, %block_.L_43e230 ], [ %.pre97, %block_43e248.block_.L_43e261_crit_edge ]
  %2368 = phi i64 [ %2346, %block_.L_43e230 ], [ %2366, %block_43e248.block_.L_43e261_crit_edge ]
  %MEMORY.31 = phi %struct.Memory* [ %MEMORY.30, %block_.L_43e230 ], [ %call2_43e253, %block_43e248.block_.L_43e261_crit_edge ]
  store i64 ptrtoint (%G__0x57dc7c_type* @G__0x57dc7c to i64), i64* %RDI.i973, align 8
  %2369 = add i64 %2367, -1656
  %2370 = add i64 %2368, 16
  store i64 %2370, i64* %3, align 8
  %2371 = inttoptr i64 %2369 to i32*
  %2372 = load i32, i32* %2371, align 4
  %2373 = zext i32 %2372 to i64
  store i64 %2373, i64* %RSI.i982, align 8
  store i8 0, i8* %AL.i121, align 1
  %2374 = add i64 %2368, 80719
  %2375 = add i64 %2368, 23
  %2376 = load i64, i64* %6, align 8
  %2377 = add i64 %2376, -8
  %2378 = inttoptr i64 %2377 to i64*
  store i64 %2375, i64* %2378, align 8
  store i64 %2377, i64* %6, align 8
  store i64 %2374, i64* %3, align 8
  %call2_43e273 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2374, %struct.Memory* %MEMORY.31)
  %2379 = load i64, i64* %3, align 8
  store i64 0, i64* %RDI.i973, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2380 = load i64, i64* %RBP.i, align 8
  %2381 = add i64 %2380, -6620
  %2382 = load i32, i32* %EAX.i952, align 4
  %2383 = add i64 %2379, 8
  store i64 %2383, i64* %3, align 8
  %2384 = inttoptr i64 %2381 to i32*
  store i32 %2382, i32* %2384, align 4
  %2385 = load i64, i64* %3, align 8
  %2386 = add i64 %2385, 224128
  %2387 = add i64 %2385, 5
  %2388 = load i64, i64* %6, align 8
  %2389 = add i64 %2388, -8
  %2390 = inttoptr i64 %2389 to i64*
  store i64 %2387, i64* %2390, align 8
  store i64 %2389, i64* %6, align 8
  store i64 %2386, i64* %3, align 8
  %call2_43e280 = tail call %struct.Memory* @sub_474e00.showboard(%struct.State* nonnull %0, i64 %2386, %struct.Memory* %call2_43e273)
  %2391 = load i64, i64* %3, align 8
  %2392 = add i64 %2391, 76
  br label %block_.L_43e2d1

block_.L_43e28a:                                  ; preds = %block_43e248
  store i64 0, i64* %RAX.i967, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RDX.i971, align 8
  %2393 = load i64, i64* %RBP.i, align 8
  %2394 = add i64 %2393, -1656
  %2395 = add i64 %2366, 10
  store i64 %2395, i64* %3, align 8
  %2396 = inttoptr i64 %2394 to i32*
  %2397 = load i32, i32* %2396, align 4
  %2398 = zext i32 %2397 to i64
  store i64 %2398, i64* %RDI.i973, align 8
  %2399 = add i64 %2393, -1640
  %2400 = add i64 %2366, 16
  store i64 %2400, i64* %3, align 8
  %2401 = inttoptr i64 %2399 to i32*
  %2402 = load i32, i32* %2401, align 4
  %2403 = zext i32 %2402 to i64
  store i64 %2403, i64* %RSI.i982, align 8
  %2404 = add i64 %2366, 57654
  %2405 = add i64 %2366, 21
  %2406 = load i64, i64* %6, align 8
  %2407 = add i64 %2406, -8
  %2408 = inttoptr i64 %2407 to i64*
  store i64 %2405, i64* %2408, align 8
  store i64 %2407, i64* %6, align 8
  store i64 %2404, i64* %3, align 8
  %call2_43e29a = tail call %struct.Memory* @sub_44c3c0.owl_does_defend(%struct.State* nonnull %0, i64 %2404, %struct.Memory* %call2_43e253)
  %2409 = load i32, i32* %EAX.i952, align 4
  %2410 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %2411 = and i32 %2409, 255
  %2412 = tail call i32 @llvm.ctpop.i32(i32 %2411)
  %2413 = trunc i32 %2412 to i8
  %2414 = and i8 %2413, 1
  %2415 = xor i8 %2414, 1
  store i8 %2415, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2416 = icmp eq i32 %2409, 0
  %2417 = zext i1 %2416 to i8
  store i8 %2417, i8* %29, align 1
  %2418 = lshr i32 %2409, 31
  %2419 = trunc i32 %2418 to i8
  store i8 %2419, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v128 = select i1 %2416, i64 9, i64 45
  %2420 = add i64 %2410, %.v128
  store i64 %2420, i64* %3, align 8
  br i1 %2416, label %block_43e2a8, label %block_.L_43e2cc

block_43e2a8:                                     ; preds = %block_.L_43e28a
  store i64 ptrtoint (%G__0x57dc94_type* @G__0x57dc94 to i64), i64* %RDI.i973, align 8
  %2421 = load i64, i64* %RBP.i, align 8
  %2422 = add i64 %2421, -1656
  %2423 = add i64 %2420, 16
  store i64 %2423, i64* %3, align 8
  %2424 = inttoptr i64 %2422 to i32*
  %2425 = load i32, i32* %2424, align 4
  %2426 = zext i32 %2425 to i64
  store i64 %2426, i64* %RSI.i982, align 8
  store i8 0, i8* %AL.i121, align 1
  %2427 = add i64 %2420, 80648
  %2428 = add i64 %2420, 23
  %2429 = load i64, i64* %6, align 8
  %2430 = add i64 %2429, -8
  %2431 = inttoptr i64 %2430 to i64*
  store i64 %2428, i64* %2431, align 8
  store i64 %2430, i64* %6, align 8
  store i64 %2427, i64* %3, align 8
  %call2_43e2ba = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2427, %struct.Memory* %call2_43e29a)
  %2432 = load i64, i64* %3, align 8
  store i64 0, i64* %RDI.i973, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %2433 = load i64, i64* %RBP.i, align 8
  %2434 = add i64 %2433, -6624
  %2435 = load i32, i32* %EAX.i952, align 4
  %2436 = add i64 %2432, 8
  store i64 %2436, i64* %3, align 8
  %2437 = inttoptr i64 %2434 to i32*
  store i32 %2435, i32* %2437, align 4
  %2438 = load i64, i64* %3, align 8
  %2439 = add i64 %2438, 224057
  %2440 = add i64 %2438, 5
  %2441 = load i64, i64* %6, align 8
  %2442 = add i64 %2441, -8
  %2443 = inttoptr i64 %2442 to i64*
  store i64 %2440, i64* %2443, align 8
  store i64 %2442, i64* %6, align 8
  store i64 %2439, i64* %3, align 8
  %call2_43e2c7 = tail call %struct.Memory* @sub_474e00.showboard(%struct.State* nonnull %0, i64 %2439, %struct.Memory* %call2_43e2ba)
  %.pre96 = load i64, i64* %3, align 8
  br label %block_.L_43e2cc

block_.L_43e2cc:                                  ; preds = %block_.L_43e28a, %block_43e2a8
  %2444 = phi i64 [ %2420, %block_.L_43e28a ], [ %.pre96, %block_43e2a8 ]
  %MEMORY.32 = phi %struct.Memory* [ %call2_43e29a, %block_.L_43e28a ], [ %call2_43e2c7, %block_43e2a8 ]
  %2445 = add i64 %2444, 5
  store i64 %2445, i64* %3, align 8
  br label %block_.L_43e2d1

block_.L_43e2d1:                                  ; preds = %block_.L_43e2cc, %block_.L_43e261
  %storemerge48 = phi i64 [ %2392, %block_.L_43e261 ], [ %2445, %block_.L_43e2cc ]
  %MEMORY.33 = phi %struct.Memory* [ %call2_43e280, %block_.L_43e261 ], [ %MEMORY.32, %block_.L_43e2cc ]
  %2446 = add i64 %storemerge48, 5
  store i64 %2446, i64* %3, align 8
  %.pre98.pre.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_43e2d6

block_.L_43e2d6:                                  ; preds = %block_.L_43e2d1, %block_.L_43e18a
  %.pre98.pre = phi i64 [ %1999, %block_.L_43e18a ], [ %.pre98.pre.pre, %block_.L_43e2d1 ]
  %storemerge46 = phi i64 [ %2210, %block_.L_43e18a ], [ %2446, %block_.L_43e2d1 ]
  %MEMORY.34 = phi %struct.Memory* [ %call2_43e0a8, %block_.L_43e18a ], [ %MEMORY.33, %block_.L_43e2d1 ]
  %2447 = add i64 %storemerge46, 5
  store i64 %2447, i64* %3, align 8
  br label %block_.L_43e2db

block_.L_43e2db:                                  ; preds = %block_.L_43e2d6, %block_.L_43e08f
  %.pre98 = phi i64 [ %.pre98113, %block_.L_43e08f ], [ %.pre98.pre, %block_.L_43e2d6 ]
  %storemerge45 = phi i64 [ %1961, %block_.L_43e08f ], [ %2447, %block_.L_43e2d6 ]
  %MEMORY.35 = phi %struct.Memory* [ %call2_43df0a, %block_.L_43e08f ], [ %MEMORY.34, %block_.L_43e2d6 ]
  %2448 = add i64 %storemerge45, 5
  store i64 %2448, i64* %3, align 8
  br label %block_.L_43e2e0

block_.L_43e2e0:                                  ; preds = %block_.L_43e2db, %block_43decb
  %2449 = phi i64 [ %1452, %block_43decb ], [ %.pre98, %block_.L_43e2db ]
  %storemerge44 = phi i64 [ %1467, %block_43decb ], [ %2448, %block_.L_43e2db ]
  %MEMORY.36 = phi %struct.Memory* [ %MEMORY.16, %block_43decb ], [ %MEMORY.35, %block_.L_43e2db ]
  %2450 = add i64 %2449, -24
  %2451 = add i64 %storemerge44, 3
  store i64 %2451, i64* %3, align 8
  %2452 = inttoptr i64 %2450 to i32*
  %2453 = load i32, i32* %2452, align 4
  %2454 = add i32 %2453, 1
  %2455 = zext i32 %2454 to i64
  store i64 %2455, i64* %RAX.i967, align 8
  %2456 = icmp eq i32 %2453, -1
  %2457 = icmp eq i32 %2454, 0
  %2458 = or i1 %2456, %2457
  %2459 = zext i1 %2458 to i8
  store i8 %2459, i8* %14, align 1
  %2460 = and i32 %2454, 255
  %2461 = tail call i32 @llvm.ctpop.i32(i32 %2460)
  %2462 = trunc i32 %2461 to i8
  %2463 = and i8 %2462, 1
  %2464 = xor i8 %2463, 1
  store i8 %2464, i8* %21, align 1
  %2465 = xor i32 %2454, %2453
  %2466 = lshr i32 %2465, 4
  %2467 = trunc i32 %2466 to i8
  %2468 = and i8 %2467, 1
  store i8 %2468, i8* %26, align 1
  %2469 = zext i1 %2457 to i8
  store i8 %2469, i8* %29, align 1
  %2470 = lshr i32 %2454, 31
  %2471 = trunc i32 %2470 to i8
  store i8 %2471, i8* %32, align 1
  %2472 = lshr i32 %2453, 31
  %2473 = xor i32 %2470, %2472
  %2474 = add nuw nsw i32 %2473, %2470
  %2475 = icmp eq i32 %2474, 2
  %2476 = zext i1 %2475 to i8
  store i8 %2476, i8* %38, align 1
  %2477 = add i64 %storemerge44, 9
  store i64 %2477, i64* %3, align 8
  store i32 %2454, i32* %2452, align 4
  %2478 = load i64, i64* %3, align 8
  %2479 = add i64 %2478, -1268
  store i64 %2479, i64* %3, align 8
  br label %block_.L_43ddf5

block_.L_43e2ee:                                  ; preds = %block_.L_43ddf5
  %2480 = add i64 %1168, -1660
  %2481 = add i64 %1204, 6
  store i64 %2481, i64* %3, align 8
  %2482 = inttoptr i64 %2480 to i32*
  %2483 = load i32, i32* %2482, align 4
  %2484 = zext i32 %2483 to i64
  store i64 %2484, i64* %RAX.i967, align 8
  store i32 %2483, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  %2485 = load i64, i64* %6, align 8
  %2486 = add i64 %2485, 6624
  store i64 %2486, i64* %6, align 8
  %2487 = icmp ugt i64 %2485, -6625
  %2488 = zext i1 %2487 to i8
  store i8 %2488, i8* %14, align 1
  %2489 = trunc i64 %2486 to i32
  %2490 = and i32 %2489, 255
  %2491 = tail call i32 @llvm.ctpop.i32(i32 %2490)
  %2492 = trunc i32 %2491 to i8
  %2493 = and i8 %2492, 1
  %2494 = xor i8 %2493, 1
  store i8 %2494, i8* %21, align 1
  %2495 = xor i64 %2486, %2485
  %2496 = lshr i64 %2495, 4
  %2497 = trunc i64 %2496 to i8
  %2498 = and i8 %2497, 1
  store i8 %2498, i8* %26, align 1
  %2499 = icmp eq i64 %2486, 0
  %2500 = zext i1 %2499 to i8
  store i8 %2500, i8* %29, align 1
  %2501 = lshr i64 %2486, 63
  %2502 = trunc i64 %2501 to i8
  store i8 %2502, i8* %32, align 1
  %2503 = lshr i64 %2485, 63
  %2504 = xor i64 %2501, %2503
  %2505 = add nuw nsw i64 %2504, %2501
  %2506 = icmp eq i64 %2505, 2
  %2507 = zext i1 %2506 to i8
  store i8 %2507, i8* %38, align 1
  %2508 = add i64 %1204, 21
  store i64 %2508, i64* %3, align 8
  %2509 = add i64 %2485, 6632
  %2510 = inttoptr i64 %2486 to i64*
  %2511 = load i64, i64* %2510, align 8
  store i64 %2511, i64* %RBP.i, align 8
  store i64 %2509, i64* %6, align 8
  %2512 = add i64 %1204, 22
  store i64 %2512, i64* %3, align 8
  %2513 = inttoptr i64 %2509 to i64*
  %2514 = load i64, i64* %2513, align 8
  store i64 %2514, i64* %3, align 8
  %2515 = add i64 %2485, 6640
  store i64 %2515, i64* %6, align 8
  ret %struct.Memory* %MEMORY.16
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
define %struct.Memory* @routine_subq__0x19e0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -6624
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 6624
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
define %struct.Memory* @routine_callq_.clear_board(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.reset_engine(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x640___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1600, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x660__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1632
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.memset_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -4
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
define %struct.Memory* @routine_jge_.L_43dbb3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1a5____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = load i32, i32* %9, align 4
  %11 = add i32 %10, -421
  %12 = icmp ult i32 %10, 421
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
  %21 = xor i32 %11, %10
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %11, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %11, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %10, 31
  %33 = xor i32 %29, %32
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jae_.L_43db08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
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
define %struct.Memory* @routine_movslq___rax__rcx_4____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_je_.L_43db08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43db8e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57d7b6___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57d7b6_type* @G__0x57d7b6 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x775___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1909, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57dbcc___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57dbcc_type* @G__0x57dbcc to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x14__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -20
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rcx__r8_4____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %R8, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x19a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -6564
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
define %struct.Memory* @routine_movq__rdx__MINUS0x19b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -6576
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl_MINUS0x19a4__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -6564
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R9D, align 4
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
define %struct.Memory* @routine_movl___rcx__r8_4____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = load i64, i64* %R8, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x19b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -6580
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r10d___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R10D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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
define %struct.Memory* @routine_movq_MINUS0x19b0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -6576
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x19b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -6584
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0x19b4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -6580
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
define %struct.Memory* @routine_movl_MINUS0x19b8__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -6584
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
define %struct.Memory* @routine_movl__0x1__MINUS0x660__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1632
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 1, i32* %10, align 4
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
define %struct.Memory* @routine_jmpq_.L_43dac5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x15__MINUS0x664__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1636
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0x664__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1636
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -400
  %10 = icmp ult i32 %8, 400
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
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43dca4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x664__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_je_.L_43dbfa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__MINUS0x660__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1632
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, -1
  %13 = icmp eq i32 %11, 0
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %12, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %12, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %12, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = xor i32 %30, %33
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43dbff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43dc90(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jge_.L_43dc8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43dc78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__MINUS0x660__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1632
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, -1
  %13 = icmp eq i32 %11, 0
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %12, %11
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %12, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %12, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %11, 31
  %34 = xor i32 %30, %33
  %35 = add nuw nsw i32 %34, %33
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43dc78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x664__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1636
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
define %struct.Memory* @routine_callq_.play_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x664__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1636
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
define %struct.Memory* @routine_movl__esi__MINUS0x668__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1640
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43dc8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43dc7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43dc06(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43dbbd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43dda8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43dd05(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43dd05(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x668__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1640
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
define %struct.Memory* @routine_je_.L_43dd0a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43dd94(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_43dd8f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43dd7c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43dd8f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43dd81(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43dd11(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43dcae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_je_.L_43ddbd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x1998__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -6552
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xab0f28___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__0x0__0xab0f28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.store_board(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x18__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_jge_.L_43e2ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x199c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -6556
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x19a0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -6560
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.restore_board(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43debe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_movl__ecx__MINUS0x19bc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -6588
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl_MINUS0x19bc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -6588
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
define %struct.Memory* @routine_andl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = and i64 %6, %4
  %10 = trunc i64 %9 to i32
  store i64 %9, i64* %RDX, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %11, align 1
  %12 = and i32 %10, 255
  %13 = tail call i32 @llvm.ctpop.i32(i32 %12)
  %14 = trunc i32 %13 to i8
  %15 = and i8 %14, 1
  %16 = xor i8 %15, 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %16, i8* %17, align 1
  %18 = icmp eq i32 %10, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i32 %10, 31
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
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
define %struct.Memory* @routine_je_.L_43deab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl___rax__rcx_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
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
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.is_legal(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43de87(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x199c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -6556
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43debe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x19a0__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -6560
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
define %struct.Memory* @routine_addl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 1
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x19a0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -6560
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43deb0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43de28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x199c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -6556
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
define %struct.Memory* @routine_jne_.L_43ded0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43e2e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x67c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1660
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
define %struct.Memory* @routine_jle_.L_43dee4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RSI, align 8
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
define %struct.Memory* @routine_leaq_MINUS0x670__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1648
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl_MINUS0x668__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1640
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
define %struct.Memory* @routine_movq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.owl_attack(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x66c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1644
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
define %struct.Memory* @routine_jne_.L_43e094(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43dfec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43dfd9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43dfd9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl___rcx__rsi_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.owl_does_attack(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57dbe7___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57dbe7_type* @G__0x57dbe7 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x19c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -6592
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_movl__eax__MINUS0x19c4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -6596
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43dfde(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43df29(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x19a0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -6560
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
define %struct.Memory* @routine_jne_.L_43e08f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43e08a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43e077(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.owl_does_defend(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57dc04___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57dc04_type* @G__0x57dc04 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x19c8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -6600
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e07c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e007(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e08f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e2db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x678__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1656
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
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
define %struct.Memory* @routine_callq_.owl_defend(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x674__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1652
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x674__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1652
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
define %struct.Memory* @routine_jne_.L_43e18f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_43e18a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43e177(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43e177(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57dc2f___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57dc2f_type* @G__0x57dc2f to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x19cc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -6604
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x19d0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -6608
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e17c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e0c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e2d6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x670__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1648
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
define %struct.Memory* @routine_jne_.L_43e1c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x670__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1648
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
define %struct.Memory* @routine_jne_.L_43e1e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57dc4b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57dc4b_type* @G__0x57dc4b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x670__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1648
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
define %struct.Memory* @routine_movl__eax__MINUS0x19d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -6612
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e230(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43e22b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57dc62___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57dc62_type* @G__0x57dc62 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x19d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -6616
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x678__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1656
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
define %struct.Memory* @routine_jne_.L_43e261(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x678__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1656
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
define %struct.Memory* @routine_jne_.L_43e28a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57dc7c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57dc7c_type* @G__0x57dc7c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x678__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1656
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
define %struct.Memory* @routine_movl__eax__MINUS0x19dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -6620
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43e2d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43e2cc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57dc94___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57dc94_type* @G__0x57dc94 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x19e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -6624
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43ddf5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__eax__0xab0f28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x19e0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 6624
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -6625
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
