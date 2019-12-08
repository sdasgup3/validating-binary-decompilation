; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x40120d_type = type <{ [8 x i8] }>
%G__0x401228_type = type <{ [8 x i8] }>
%G__0x401241_type = type <{ [8 x i8] }>
%G__0x40125a_type = type <{ [8 x i8] }>
%G__0x401284_type = type <{ [8 x i8] }>
%G__0x4012a9_type = type <{ [8 x i8] }>
%G__0x4012d3_type = type <{ [8 x i8] }>
%G__0x4012f6_type = type <{ [8 x i8] }>
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
@G__0x40120d = global %G__0x40120d_type zeroinitializer
@G__0x401228 = global %G__0x401228_type zeroinitializer
@G__0x401241 = global %G__0x401241_type zeroinitializer
@G__0x40125a = global %G__0x40125a_type zeroinitializer
@G__0x401284 = global %G__0x401284_type zeroinitializer
@G__0x4012a9 = global %G__0x4012a9_type zeroinitializer
@G__0x4012d3 = global %G__0x4012d3_type zeroinitializer
@G__0x4012f6 = global %G__0x4012f6_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @exit(i64)

declare extern_weak x86_64_sysvcc i64 @free(i64)

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_400a40.list_sequence(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400bb0.list_copy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4009f0.list_new(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400850.list_equal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400730.list_empty(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4007d0.list_pop_head(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400650.list_push_tail(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4006b0.list_pop_tail(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400d00.list_reverse(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401060.list_first(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400ce0.list_last(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400760.list_length(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @test_lists(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %PC.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP.i, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %PC.i, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  %RSP.i8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -104
  store i64 %11, i64* %RSP.i8, align 8
  %12 = icmp ult i64 %8, 96
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
  %RDI.i20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  store i64 1, i64* %RDI.i20, align 8
  %RSI.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  store i64 100, i64* %RSI.i, align 8
  %39 = add i64 %7, -12
  %40 = add i64 %10, 24
  store i64 %40, i64* %PC.i, align 8
  %41 = inttoptr i64 %39 to i32*
  store i32 0, i32* %41, align 4
  %42 = load i64, i64* %PC.i, align 8
  %43 = add i64 %42, -809
  %44 = add i64 %42, 5
  %45 = load i64, i64* %6, align 8
  %46 = add i64 %45, -8
  %47 = inttoptr i64 %46 to i64*
  store i64 %44, i64* %47, align 8
  store i64 %46, i64* %6, align 8
  store i64 %43, i64* %3, align 8
  %call2_400d69 = tail call %struct.Memory* @sub_400a40.list_sequence(%struct.State* %0, i64 %43, %struct.Memory* %2)
  %48 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i62 = getelementptr inbounds %union.anon, %union.anon* %48, i64 0, i32 0
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -16
  %51 = load i64, i64* %RAX.i62, align 8
  %52 = load i64, i64* %PC.i, align 8
  %53 = add i64 %52, 4
  store i64 %53, i64* %PC.i, align 8
  %54 = inttoptr i64 %50 to i64*
  store i64 %51, i64* %54, align 8
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -16
  %57 = load i64, i64* %PC.i, align 8
  %58 = add i64 %57, 4
  store i64 %58, i64* %PC.i, align 8
  %59 = inttoptr i64 %56 to i64*
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %RDI.i20, align 8
  %61 = add i64 %57, -450
  %62 = add i64 %57, 9
  %63 = load i64, i64* %6, align 8
  %64 = add i64 %63, -8
  %65 = inttoptr i64 %64 to i64*
  store i64 %62, i64* %65, align 8
  store i64 %64, i64* %6, align 8
  store i64 %61, i64* %3, align 8
  %call2_400d76 = tail call %struct.Memory* @sub_400bb0.list_copy(%struct.State* %0, i64 %61, %struct.Memory* %call2_400d69)
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -24
  %68 = load i64, i64* %RAX.i62, align 8
  %69 = load i64, i64* %PC.i, align 8
  %70 = add i64 %69, 4
  store i64 %70, i64* %PC.i, align 8
  %71 = inttoptr i64 %67 to i64*
  store i64 %68, i64* %71, align 8
  %72 = load i64, i64* %PC.i, align 8
  %73 = add i64 %72, -911
  %74 = add i64 %72, 5
  %75 = load i64, i64* %6, align 8
  %76 = add i64 %75, -8
  %77 = inttoptr i64 %76 to i64*
  store i64 %74, i64* %77, align 8
  store i64 %76, i64* %6, align 8
  store i64 %73, i64* %3, align 8
  %call2_400d7f = tail call %struct.Memory* @sub_4009f0.list_new(%struct.State* %0, i64 %73, %struct.Memory* %call2_400d76)
  %78 = load i64, i64* %RBP.i, align 8
  %79 = add i64 %78, -32
  %80 = load i64, i64* %RAX.i62, align 8
  %81 = load i64, i64* %PC.i, align 8
  %82 = add i64 %81, 4
  store i64 %82, i64* %PC.i, align 8
  %83 = inttoptr i64 %79 to i64*
  store i64 %80, i64* %83, align 8
  %84 = load i64, i64* %RBP.i, align 8
  %85 = add i64 %84, -24
  %86 = load i64, i64* %PC.i, align 8
  %87 = add i64 %86, 4
  store i64 %87, i64* %PC.i, align 8
  %88 = inttoptr i64 %85 to i64*
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %RDI.i20, align 8
  %90 = add i64 %84, -16
  %91 = add i64 %86, 8
  store i64 %91, i64* %PC.i, align 8
  %92 = inttoptr i64 %90 to i64*
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %RSI.i, align 8
  %94 = add i64 %86, -1336
  %95 = add i64 %86, 13
  %96 = load i64, i64* %6, align 8
  %97 = add i64 %96, -8
  %98 = inttoptr i64 %97 to i64*
  store i64 %95, i64* %98, align 8
  store i64 %97, i64* %6, align 8
  store i64 %94, i64* %3, align 8
  %call2_400d90 = tail call %struct.Memory* @sub_400850.list_equal(%struct.State* %0, i64 %94, %struct.Memory* %call2_400d7f)
  %EAX.i215 = bitcast %union.anon* %48 to i32*
  %99 = load i32, i32* %EAX.i215, align 4
  %100 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %14, align 1
  %101 = and i32 %99, 255
  %102 = tail call i32 @llvm.ctpop.i32(i32 %101)
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  %105 = xor i8 %104, 1
  store i8 %105, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %106 = icmp eq i32 %99, 0
  %107 = zext i1 %106 to i8
  store i8 %107, i8* %29, align 1
  %108 = lshr i32 %99, 31
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v = select i1 %106, i64 9, i64 39
  %110 = add i64 %100, %.v
  store i64 %110, i64* %3, align 8
  br i1 %106, label %block_400d9e, label %block_.L_400dbc

block_400d9e:                                     ; preds = %entry
  store i64 ptrtoint (%G__0x40120d_type* @G__0x40120d to i64), i64* %RDI.i20, align 8
  %AL.i279 = bitcast %union.anon* %48 to i8*
  store i8 0, i8* %AL.i279, align 1
  %111 = add i64 %110, -2174
  %112 = add i64 %110, 17
  %113 = load i64, i64* %6, align 8
  %114 = add i64 %113, -8
  %115 = inttoptr i64 %114 to i64*
  store i64 %112, i64* %115, align 8
  store i64 %114, i64* %6, align 8
  store i64 %111, i64* %3, align 8
  %116 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400d90)
  %117 = load i64, i64* %PC.i, align 8
  store i64 1, i64* %RDI.i20, align 8
  %118 = load i64, i64* %RBP.i, align 8
  %119 = add i64 %118, -36
  %120 = load i32, i32* %EAX.i215, align 4
  %121 = add i64 %117, 8
  store i64 %121, i64* %PC.i, align 8
  %122 = inttoptr i64 %119 to i32*
  store i32 %120, i32* %122, align 4
  %123 = load i64, i64* %PC.i, align 8
  %124 = add i64 %123, -2151
  %125 = add i64 %123, 5
  %126 = load i64, i64* %6, align 8
  %127 = add i64 %126, -8
  %128 = inttoptr i64 %127 to i64*
  store i64 %125, i64* %128, align 8
  store i64 %127, i64* %6, align 8
  store i64 %124, i64* %3, align 8
  %129 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %116)
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_400dbc

block_.L_400dbc:                                  ; preds = %entry, %block_400d9e
  %130 = phi i64 [ %110, %entry ], [ %.pre, %block_400d9e ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_400d90, %entry ], [ %129, %block_400d9e ]
  %131 = add i64 %130, 5
  store i64 %131, i64* %3, align 8
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL.i320 = bitcast %union.anon* %132 to i8*
  br label %block_.L_400dc1

block_.L_400dc1:                                  ; preds = %block_.L_400de1, %block_.L_400dbc
  %133 = phi i64 [ %131, %block_.L_400dbc ], [ %210, %block_.L_400de1 ]
  %MEMORY.1 = phi %struct.Memory* [ %MEMORY.0, %block_.L_400dbc ], [ %call2_400dfc, %block_.L_400de1 ]
  %134 = load i64, i64* %RBP.i, align 8
  %135 = add i64 %134, -24
  %136 = add i64 %133, 4
  store i64 %136, i64* %PC.i, align 8
  %137 = inttoptr i64 %135 to i64*
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %RDI.i20, align 8
  %139 = add i64 %133, -1681
  %140 = add i64 %133, 9
  %141 = load i64, i64* %6, align 8
  %142 = add i64 %141, -8
  %143 = inttoptr i64 %142 to i64*
  store i64 %140, i64* %143, align 8
  store i64 %142, i64* %6, align 8
  store i64 %139, i64* %3, align 8
  %call2_400dc5 = tail call %struct.Memory* @sub_400730.list_empty(%struct.State* %0, i64 %139, %struct.Memory* %MEMORY.1)
  %144 = load i32, i32* %EAX.i215, align 4
  %145 = load i64, i64* %PC.i, align 8
  %146 = icmp ne i32 %144, 0
  %147 = zext i1 %146 to i8
  %148 = xor i8 %147, -1
  store i8 %148, i8* %CL.i320, align 1
  %149 = and i8 %148, 1
  store i8 0, i8* %14, align 1
  %150 = zext i8 %149 to i32
  %151 = tail call i32 @llvm.ctpop.i32(i32 %150)
  %152 = trunc i32 %151 to i8
  %153 = xor i8 %152, 1
  store i8 %153, i8* %21, align 1
  %154 = xor i8 %149, 1
  store i8 %154, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %155 = icmp eq i8 %154, 0
  %.v10 = select i1 %155, i64 23, i64 18
  %156 = add i64 %145, %.v10
  store i64 %156, i64* %3, align 8
  %157 = load i64, i64* %RBP.i, align 8
  br i1 %155, label %block_.L_400de1, label %block_400ddc

block_400ddc:                                     ; preds = %block_.L_400dc1
  %158 = add i64 %157, -24
  %159 = add i64 %156, 46
  store i64 %159, i64* %PC.i, align 8
  %160 = inttoptr i64 %158 to i64*
  %161 = load i64, i64* %160, align 8
  store i64 %161, i64* %RDI.i20, align 8
  %162 = add i64 %156, -1708
  %163 = add i64 %156, 51
  %164 = load i64, i64* %6, align 8
  %165 = add i64 %164, -8
  %166 = inttoptr i64 %165 to i64*
  store i64 %163, i64* %166, align 8
  store i64 %165, i64* %6, align 8
  store i64 %162, i64* %3, align 8
  %call2_400e0a = tail call %struct.Memory* @sub_400730.list_empty(%struct.State* %0, i64 %162, %struct.Memory* %call2_400dc5)
  %167 = load i32, i32* %EAX.i215, align 4
  %168 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %14, align 1
  %169 = and i32 %167, 255
  %170 = tail call i32 @llvm.ctpop.i32(i32 %169)
  %171 = trunc i32 %170 to i8
  %172 = and i8 %171, 1
  %173 = xor i8 %172, 1
  store i8 %173, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %174 = icmp eq i32 %167, 0
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %29, align 1
  %176 = lshr i32 %167, 31
  %177 = trunc i32 %176 to i8
  store i8 %177, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v11 = select i1 %174, i64 9, i64 39
  %178 = add i64 %168, %.v11
  store i64 %178, i64* %3, align 8
  br i1 %174, label %block_400e18, label %block_.L_400e36

block_.L_400de1:                                  ; preds = %block_.L_400dc1
  %179 = add i64 %157, -32
  %180 = add i64 %156, 4
  store i64 %180, i64* %PC.i, align 8
  %181 = inttoptr i64 %179 to i64*
  %182 = load i64, i64* %181, align 8
  store i64 %182, i64* %RDI.i20, align 8
  %183 = add i64 %157, -24
  %184 = add i64 %156, 8
  store i64 %184, i64* %PC.i, align 8
  %185 = inttoptr i64 %183 to i64*
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %RAX.i62, align 8
  %187 = add i64 %157, -48
  %188 = add i64 %156, 12
  store i64 %188, i64* %PC.i, align 8
  %189 = inttoptr i64 %187 to i64*
  store i64 %182, i64* %189, align 8
  %190 = load i64, i64* %RAX.i62, align 8
  %191 = load i64, i64* %PC.i, align 8
  store i64 %190, i64* %RDI.i20, align 8
  %192 = add i64 %191, -1565
  %193 = add i64 %191, 8
  %194 = load i64, i64* %6, align 8
  %195 = add i64 %194, -8
  %196 = inttoptr i64 %195 to i64*
  store i64 %193, i64* %196, align 8
  store i64 %195, i64* %6, align 8
  store i64 %192, i64* %3, align 8
  %call2_400df0 = tail call %struct.Memory* @sub_4007d0.list_pop_head(%struct.State* %0, i64 %192, %struct.Memory* %call2_400dc5)
  %197 = load i64, i64* %RBP.i, align 8
  %198 = add i64 %197, -48
  %199 = load i64, i64* %PC.i, align 8
  %200 = add i64 %199, 4
  store i64 %200, i64* %PC.i, align 8
  %201 = inttoptr i64 %198 to i64*
  %202 = load i64, i64* %201, align 8
  store i64 %202, i64* %RDI.i20, align 8
  %203 = load i64, i64* %RAX.i62, align 8
  store i64 %203, i64* %RSI.i, align 8
  %204 = add i64 %199, -1957
  %205 = add i64 %199, 12
  %206 = load i64, i64* %6, align 8
  %207 = add i64 %206, -8
  %208 = inttoptr i64 %207 to i64*
  store i64 %205, i64* %208, align 8
  store i64 %207, i64* %6, align 8
  store i64 %204, i64* %3, align 8
  %call2_400dfc = tail call %struct.Memory* @sub_400650.list_push_tail(%struct.State* %0, i64 %204, %struct.Memory* %call2_400df0)
  %209 = load i64, i64* %PC.i, align 8
  %210 = add i64 %209, -64
  store i64 %210, i64* %3, align 8
  br label %block_.L_400dc1

block_400e18:                                     ; preds = %block_400ddc
  store i64 ptrtoint (%G__0x401228_type* @G__0x401228 to i64), i64* %RDI.i20, align 8
  %AL.i282 = bitcast %union.anon* %48 to i8*
  store i8 0, i8* %AL.i282, align 1
  %211 = add i64 %178, -2296
  %212 = add i64 %178, 17
  %213 = load i64, i64* %6, align 8
  %214 = add i64 %213, -8
  %215 = inttoptr i64 %214 to i64*
  store i64 %212, i64* %215, align 8
  store i64 %214, i64* %6, align 8
  store i64 %211, i64* %3, align 8
  %216 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400e0a)
  %217 = load i64, i64* %PC.i, align 8
  store i64 1, i64* %RDI.i20, align 8
  %218 = load i64, i64* %RBP.i, align 8
  %219 = add i64 %218, -52
  %220 = load i32, i32* %EAX.i215, align 4
  %221 = add i64 %217, 8
  store i64 %221, i64* %PC.i, align 8
  %222 = inttoptr i64 %219 to i32*
  store i32 %220, i32* %222, align 4
  %223 = load i64, i64* %PC.i, align 8
  %224 = add i64 %223, -2273
  %225 = add i64 %223, 5
  %226 = load i64, i64* %6, align 8
  %227 = add i64 %226, -8
  %228 = inttoptr i64 %227 to i64*
  store i64 %225, i64* %228, align 8
  store i64 %227, i64* %6, align 8
  store i64 %224, i64* %3, align 8
  %229 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %216)
  %.pre1 = load i64, i64* %PC.i, align 8
  br label %block_.L_400e36

block_.L_400e36:                                  ; preds = %block_400ddc, %block_400e18
  %230 = phi i64 [ %178, %block_400ddc ], [ %.pre1, %block_400e18 ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_400e0a, %block_400ddc ], [ %229, %block_400e18 ]
  %231 = add i64 %230, 5
  br label %block_.L_400e3b

block_.L_400e3b:                                  ; preds = %block_.L_400e5b, %block_.L_400e36
  %232 = phi i64 [ %231, %block_.L_400e36 ], [ %309, %block_.L_400e5b ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_.L_400e36 ], [ %call2_400e76, %block_.L_400e5b ]
  %233 = load i64, i64* %RBP.i, align 8
  %234 = add i64 %233, -32
  %235 = add i64 %232, 4
  store i64 %235, i64* %PC.i, align 8
  %236 = inttoptr i64 %234 to i64*
  %237 = load i64, i64* %236, align 8
  store i64 %237, i64* %RDI.i20, align 8
  %238 = add i64 %232, -1803
  %239 = add i64 %232, 9
  %240 = load i64, i64* %6, align 8
  %241 = add i64 %240, -8
  %242 = inttoptr i64 %241 to i64*
  store i64 %239, i64* %242, align 8
  store i64 %241, i64* %6, align 8
  store i64 %238, i64* %3, align 8
  %call2_400e3f = tail call %struct.Memory* @sub_400730.list_empty(%struct.State* %0, i64 %238, %struct.Memory* %MEMORY.3)
  %243 = load i32, i32* %EAX.i215, align 4
  %244 = load i64, i64* %PC.i, align 8
  %245 = icmp ne i32 %243, 0
  %246 = zext i1 %245 to i8
  %247 = xor i8 %246, -1
  store i8 %247, i8* %CL.i320, align 1
  %248 = and i8 %247, 1
  store i8 0, i8* %14, align 1
  %249 = zext i8 %248 to i32
  %250 = tail call i32 @llvm.ctpop.i32(i32 %249)
  %251 = trunc i32 %250 to i8
  %252 = xor i8 %251, 1
  store i8 %252, i8* %21, align 1
  %253 = xor i8 %248, 1
  store i8 %253, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  %254 = icmp eq i8 %253, 0
  %.v12 = select i1 %254, i64 23, i64 18
  %255 = add i64 %244, %.v12
  store i64 %255, i64* %3, align 8
  %256 = load i64, i64* %RBP.i, align 8
  br i1 %254, label %block_.L_400e5b, label %block_400e56

block_400e56:                                     ; preds = %block_.L_400e3b
  %257 = add i64 %256, -32
  %258 = add i64 %255, 46
  store i64 %258, i64* %PC.i, align 8
  %259 = inttoptr i64 %257 to i64*
  %260 = load i64, i64* %259, align 8
  store i64 %260, i64* %RDI.i20, align 8
  %261 = add i64 %255, -1830
  %262 = add i64 %255, 51
  %263 = load i64, i64* %6, align 8
  %264 = add i64 %263, -8
  %265 = inttoptr i64 %264 to i64*
  store i64 %262, i64* %265, align 8
  store i64 %264, i64* %6, align 8
  store i64 %261, i64* %3, align 8
  %call2_400e84 = tail call %struct.Memory* @sub_400730.list_empty(%struct.State* %0, i64 %261, %struct.Memory* %call2_400e3f)
  %266 = load i32, i32* %EAX.i215, align 4
  %267 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %14, align 1
  %268 = and i32 %266, 255
  %269 = tail call i32 @llvm.ctpop.i32(i32 %268)
  %270 = trunc i32 %269 to i8
  %271 = and i8 %270, 1
  %272 = xor i8 %271, 1
  store i8 %272, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %273 = icmp eq i32 %266, 0
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %29, align 1
  %275 = lshr i32 %266, 31
  %276 = trunc i32 %275 to i8
  store i8 %276, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v13 = select i1 %273, i64 9, i64 39
  %277 = add i64 %267, %.v13
  store i64 %277, i64* %3, align 8
  br i1 %273, label %block_400e92, label %block_.L_400eb0

block_.L_400e5b:                                  ; preds = %block_.L_400e3b
  %278 = add i64 %256, -24
  %279 = add i64 %255, 4
  store i64 %279, i64* %PC.i, align 8
  %280 = inttoptr i64 %278 to i64*
  %281 = load i64, i64* %280, align 8
  store i64 %281, i64* %RDI.i20, align 8
  %282 = add i64 %256, -32
  %283 = add i64 %255, 8
  store i64 %283, i64* %PC.i, align 8
  %284 = inttoptr i64 %282 to i64*
  %285 = load i64, i64* %284, align 8
  store i64 %285, i64* %RAX.i62, align 8
  %286 = add i64 %256, -64
  %287 = add i64 %255, 12
  store i64 %287, i64* %PC.i, align 8
  %288 = inttoptr i64 %286 to i64*
  store i64 %281, i64* %288, align 8
  %289 = load i64, i64* %RAX.i62, align 8
  %290 = load i64, i64* %PC.i, align 8
  store i64 %289, i64* %RDI.i20, align 8
  %291 = add i64 %290, -1975
  %292 = add i64 %290, 8
  %293 = load i64, i64* %6, align 8
  %294 = add i64 %293, -8
  %295 = inttoptr i64 %294 to i64*
  store i64 %292, i64* %295, align 8
  store i64 %294, i64* %6, align 8
  store i64 %291, i64* %3, align 8
  %call2_400e6a = tail call %struct.Memory* @sub_4006b0.list_pop_tail(%struct.State* %0, i64 %291, %struct.Memory* %call2_400e3f)
  %296 = load i64, i64* %RBP.i, align 8
  %297 = add i64 %296, -64
  %298 = load i64, i64* %PC.i, align 8
  %299 = add i64 %298, 4
  store i64 %299, i64* %PC.i, align 8
  %300 = inttoptr i64 %297 to i64*
  %301 = load i64, i64* %300, align 8
  store i64 %301, i64* %RDI.i20, align 8
  %302 = load i64, i64* %RAX.i62, align 8
  store i64 %302, i64* %RSI.i, align 8
  %303 = add i64 %298, -2079
  %304 = add i64 %298, 12
  %305 = load i64, i64* %6, align 8
  %306 = add i64 %305, -8
  %307 = inttoptr i64 %306 to i64*
  store i64 %304, i64* %307, align 8
  store i64 %306, i64* %6, align 8
  store i64 %303, i64* %3, align 8
  %call2_400e76 = tail call %struct.Memory* @sub_400650.list_push_tail(%struct.State* %0, i64 %303, %struct.Memory* %call2_400e6a)
  %308 = load i64, i64* %PC.i, align 8
  %309 = add i64 %308, -64
  br label %block_.L_400e3b

block_400e92:                                     ; preds = %block_400e56
  store i64 ptrtoint (%G__0x401241_type* @G__0x401241 to i64), i64* %RDI.i20, align 8
  %AL.i225 = bitcast %union.anon* %48 to i8*
  store i8 0, i8* %AL.i225, align 1
  %310 = add i64 %277, -2418
  %311 = add i64 %277, 17
  %312 = load i64, i64* %6, align 8
  %313 = add i64 %312, -8
  %314 = inttoptr i64 %313 to i64*
  store i64 %311, i64* %314, align 8
  store i64 %313, i64* %6, align 8
  store i64 %310, i64* %3, align 8
  %315 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400e84)
  %316 = load i64, i64* %PC.i, align 8
  store i64 1, i64* %RDI.i20, align 8
  %317 = load i64, i64* %RBP.i, align 8
  %318 = add i64 %317, -68
  %319 = load i32, i32* %EAX.i215, align 4
  %320 = add i64 %316, 8
  store i64 %320, i64* %PC.i, align 8
  %321 = inttoptr i64 %318 to i32*
  store i32 %319, i32* %321, align 4
  %322 = load i64, i64* %PC.i, align 8
  %323 = add i64 %322, -2395
  %324 = add i64 %322, 5
  %325 = load i64, i64* %6, align 8
  %326 = add i64 %325, -8
  %327 = inttoptr i64 %326 to i64*
  store i64 %324, i64* %327, align 8
  store i64 %326, i64* %6, align 8
  store i64 %323, i64* %3, align 8
  %328 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %315)
  %.pre2 = load i64, i64* %PC.i, align 8
  br label %block_.L_400eb0

block_.L_400eb0:                                  ; preds = %block_400e56, %block_400e92
  %329 = phi i64 [ %277, %block_400e56 ], [ %.pre2, %block_400e92 ]
  %MEMORY.4 = phi %struct.Memory* [ %call2_400e84, %block_400e56 ], [ %328, %block_400e92 ]
  %330 = load i64, i64* %RBP.i, align 8
  %331 = add i64 %330, -16
  %332 = add i64 %329, 4
  store i64 %332, i64* %PC.i, align 8
  %333 = inttoptr i64 %331 to i64*
  %334 = load i64, i64* %333, align 8
  store i64 %334, i64* %RDI.i20, align 8
  %335 = add i64 %329, -432
  %336 = add i64 %329, 9
  %337 = load i64, i64* %6, align 8
  %338 = add i64 %337, -8
  %339 = inttoptr i64 %338 to i64*
  store i64 %336, i64* %339, align 8
  store i64 %338, i64* %6, align 8
  store i64 %335, i64* %3, align 8
  %call2_400eb4 = tail call %struct.Memory* @sub_400d00.list_reverse(%struct.State* %0, i64 %335, %struct.Memory* %MEMORY.4)
  %340 = load i64, i64* %RBP.i, align 8
  %341 = add i64 %340, -16
  %342 = load i64, i64* %PC.i, align 8
  %343 = add i64 %342, 4
  store i64 %343, i64* %PC.i, align 8
  %344 = inttoptr i64 %341 to i64*
  %345 = load i64, i64* %344, align 8
  store i64 %345, i64* %RDI.i20, align 8
  %346 = add i64 %342, 423
  %347 = add i64 %342, 9
  %348 = load i64, i64* %6, align 8
  %349 = add i64 %348, -8
  %350 = inttoptr i64 %349 to i64*
  store i64 %347, i64* %350, align 8
  store i64 %349, i64* %6, align 8
  store i64 %346, i64* %3, align 8
  %call2_400ebd = tail call %struct.Memory* @sub_401060.list_first(%struct.State* %0, i64 %346, %struct.Memory* %call2_400eb4)
  %351 = bitcast %union.anon* %48 to i32**
  %352 = load i32*, i32** %351, align 8
  %353 = load i64, i64* %PC.i, align 8
  %354 = add i64 %353, 3
  store i64 %354, i64* %PC.i, align 8
  %355 = load i32, i32* %352, align 4
  %356 = add i32 %355, -100
  %357 = icmp ult i32 %355, 100
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %14, align 1
  %359 = and i32 %356, 255
  %360 = tail call i32 @llvm.ctpop.i32(i32 %359)
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  %363 = xor i8 %362, 1
  store i8 %363, i8* %21, align 1
  %364 = xor i32 %355, %356
  %365 = lshr i32 %364, 4
  %366 = trunc i32 %365 to i8
  %367 = and i8 %366, 1
  store i8 %367, i8* %26, align 1
  %368 = icmp eq i32 %356, 0
  %369 = zext i1 %368 to i8
  store i8 %369, i8* %29, align 1
  %370 = lshr i32 %356, 31
  %371 = trunc i32 %370 to i8
  store i8 %371, i8* %32, align 1
  %372 = lshr i32 %355, 31
  %373 = xor i32 %370, %372
  %374 = add nuw nsw i32 %373, %372
  %375 = icmp eq i32 %374, 2
  %376 = zext i1 %375 to i8
  store i8 %376, i8* %38, align 1
  %.v14 = select i1 %368, i64 55, i64 9
  %377 = add i64 %353, %.v14
  store i64 %377, i64* %3, align 8
  br i1 %368, label %block_.L_400ef9, label %block_400ecb

block_400ecb:                                     ; preds = %block_.L_400eb0
  %378 = load i64, i64* %RBP.i, align 8
  %379 = add i64 %378, -16
  %380 = add i64 %377, 4
  store i64 %380, i64* %PC.i, align 8
  %381 = inttoptr i64 %379 to i64*
  %382 = load i64, i64* %381, align 8
  store i64 %382, i64* %RDI.i20, align 8
  %383 = add i64 %377, 405
  %384 = add i64 %377, 9
  %385 = load i64, i64* %6, align 8
  %386 = add i64 %385, -8
  %387 = inttoptr i64 %386 to i64*
  store i64 %384, i64* %387, align 8
  store i64 %386, i64* %6, align 8
  store i64 %383, i64* %3, align 8
  %call2_400ecf = tail call %struct.Memory* @sub_401060.list_first(%struct.State* %0, i64 %383, %struct.Memory* %call2_400ebd)
  %388 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x40125a_type* @G__0x40125a to i64), i64* %RDI.i20, align 8
  store i64 100, i64* %RSI.i, align 8
  %RDX.i194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %389 = bitcast %union.anon* %48 to i32**
  %390 = load i32*, i32** %389, align 8
  %391 = add i64 %388, 17
  store i64 %391, i64* %PC.i, align 8
  %392 = load i32, i32* %390, align 4
  %393 = zext i32 %392 to i64
  store i64 %393, i64* %RDX.i194, align 8
  %AL.i191 = bitcast %union.anon* %48 to i8*
  store i8 0, i8* %AL.i191, align 1
  %394 = add i64 %388, -2484
  %395 = add i64 %388, 24
  %396 = load i64, i64* %6, align 8
  %397 = add i64 %396, -8
  %398 = inttoptr i64 %397 to i64*
  store i64 %395, i64* %398, align 8
  store i64 %397, i64* %6, align 8
  store i64 %394, i64* %3, align 8
  %399 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400ecf)
  %400 = load i64, i64* %PC.i, align 8
  store i64 1, i64* %RDI.i20, align 8
  %401 = load i64, i64* %RBP.i, align 8
  %402 = add i64 %401, -72
  %403 = load i32, i32* %EAX.i215, align 4
  %404 = add i64 %400, 8
  store i64 %404, i64* %PC.i, align 8
  %405 = inttoptr i64 %402 to i32*
  store i32 %403, i32* %405, align 4
  %406 = load i64, i64* %PC.i, align 8
  %407 = add i64 %406, -2468
  %408 = add i64 %406, 5
  %409 = load i64, i64* %6, align 8
  %410 = add i64 %409, -8
  %411 = inttoptr i64 %410 to i64*
  store i64 %408, i64* %411, align 8
  store i64 %410, i64* %6, align 8
  store i64 %407, i64* %3, align 8
  %412 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %399)
  %.pre3 = load i64, i64* %PC.i, align 8
  br label %block_.L_400ef9

block_.L_400ef9:                                  ; preds = %block_400ecb, %block_.L_400eb0
  %413 = phi i64 [ %377, %block_.L_400eb0 ], [ %.pre3, %block_400ecb ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_400ebd, %block_.L_400eb0 ], [ %412, %block_400ecb ]
  %414 = load i64, i64* %RBP.i, align 8
  %415 = add i64 %414, -16
  %416 = add i64 %413, 4
  store i64 %416, i64* %PC.i, align 8
  %417 = inttoptr i64 %415 to i64*
  %418 = load i64, i64* %417, align 8
  store i64 %418, i64* %RDI.i20, align 8
  %419 = add i64 %413, -537
  %420 = add i64 %413, 9
  %421 = load i64, i64* %6, align 8
  %422 = add i64 %421, -8
  %423 = inttoptr i64 %422 to i64*
  store i64 %420, i64* %423, align 8
  store i64 %422, i64* %6, align 8
  store i64 %419, i64* %3, align 8
  %call2_400efd = tail call %struct.Memory* @sub_400ce0.list_last(%struct.State* %0, i64 %419, %struct.Memory* %MEMORY.5)
  %424 = bitcast %union.anon* %48 to i32**
  %425 = load i32*, i32** %424, align 8
  %426 = load i64, i64* %PC.i, align 8
  %427 = add i64 %426, 3
  store i64 %427, i64* %PC.i, align 8
  %428 = load i32, i32* %425, align 4
  %429 = add i32 %428, -1
  %430 = icmp eq i32 %428, 0
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %14, align 1
  %432 = and i32 %429, 255
  %433 = tail call i32 @llvm.ctpop.i32(i32 %432)
  %434 = trunc i32 %433 to i8
  %435 = and i8 %434, 1
  %436 = xor i8 %435, 1
  store i8 %436, i8* %21, align 1
  %437 = xor i32 %428, %429
  %438 = lshr i32 %437, 4
  %439 = trunc i32 %438 to i8
  %440 = and i8 %439, 1
  store i8 %440, i8* %26, align 1
  %441 = icmp eq i32 %429, 0
  %442 = zext i1 %441 to i8
  store i8 %442, i8* %29, align 1
  %443 = lshr i32 %429, 31
  %444 = trunc i32 %443 to i8
  store i8 %444, i8* %32, align 1
  %445 = lshr i32 %428, 31
  %446 = xor i32 %443, %445
  %447 = add nuw nsw i32 %446, %445
  %448 = icmp eq i32 %447, 2
  %449 = zext i1 %448 to i8
  store i8 %449, i8* %38, align 1
  %.v15 = select i1 %441, i64 55, i64 9
  %450 = add i64 %426, %.v15
  store i64 %450, i64* %3, align 8
  br i1 %441, label %block_.L_400f39, label %block_400f0b

block_400f0b:                                     ; preds = %block_.L_400ef9
  %451 = load i64, i64* %RBP.i, align 8
  %452 = add i64 %451, -16
  %453 = add i64 %450, 4
  store i64 %453, i64* %PC.i, align 8
  %454 = inttoptr i64 %452 to i64*
  %455 = load i64, i64* %454, align 8
  store i64 %455, i64* %RDI.i20, align 8
  %456 = add i64 %450, -555
  %457 = add i64 %450, 9
  %458 = load i64, i64* %6, align 8
  %459 = add i64 %458, -8
  %460 = inttoptr i64 %459 to i64*
  store i64 %457, i64* %460, align 8
  store i64 %459, i64* %6, align 8
  store i64 %456, i64* %3, align 8
  %call2_400f0f = tail call %struct.Memory* @sub_400ce0.list_last(%struct.State* %0, i64 %456, %struct.Memory* %call2_400efd)
  %461 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x401284_type* @G__0x401284 to i64), i64* %RDI.i20, align 8
  store i64 100, i64* %RSI.i, align 8
  %RDX.i163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %462 = bitcast %union.anon* %48 to i32**
  %463 = load i32*, i32** %462, align 8
  %464 = add i64 %461, 17
  store i64 %464, i64* %PC.i, align 8
  %465 = load i32, i32* %463, align 4
  %466 = zext i32 %465 to i64
  store i64 %466, i64* %RDX.i163, align 8
  %AL.i160 = bitcast %union.anon* %48 to i8*
  store i8 0, i8* %AL.i160, align 1
  %467 = add i64 %461, -2548
  %468 = add i64 %461, 24
  %469 = load i64, i64* %6, align 8
  %470 = add i64 %469, -8
  %471 = inttoptr i64 %470 to i64*
  store i64 %468, i64* %471, align 8
  store i64 %470, i64* %6, align 8
  store i64 %467, i64* %3, align 8
  %472 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400f0f)
  %473 = load i64, i64* %PC.i, align 8
  store i64 1, i64* %RDI.i20, align 8
  %474 = load i64, i64* %RBP.i, align 8
  %475 = add i64 %474, -76
  %476 = load i32, i32* %EAX.i215, align 4
  %477 = add i64 %473, 8
  store i64 %477, i64* %PC.i, align 8
  %478 = inttoptr i64 %475 to i32*
  store i32 %476, i32* %478, align 4
  %479 = load i64, i64* %PC.i, align 8
  %480 = add i64 %479, -2532
  %481 = add i64 %479, 5
  %482 = load i64, i64* %6, align 8
  %483 = add i64 %482, -8
  %484 = inttoptr i64 %483 to i64*
  store i64 %481, i64* %484, align 8
  store i64 %483, i64* %6, align 8
  store i64 %480, i64* %3, align 8
  %485 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %472)
  %.pre4 = load i64, i64* %PC.i, align 8
  br label %block_.L_400f39

block_.L_400f39:                                  ; preds = %block_400f0b, %block_.L_400ef9
  %486 = phi i64 [ %450, %block_.L_400ef9 ], [ %.pre4, %block_400f0b ]
  %MEMORY.6 = phi %struct.Memory* [ %call2_400efd, %block_.L_400ef9 ], [ %485, %block_400f0b ]
  %487 = load i64, i64* %RBP.i, align 8
  %488 = add i64 %487, -24
  %489 = add i64 %486, 4
  store i64 %489, i64* %PC.i, align 8
  %490 = inttoptr i64 %488 to i64*
  %491 = load i64, i64* %490, align 8
  store i64 %491, i64* %RDI.i20, align 8
  %492 = add i64 %486, 295
  %493 = add i64 %486, 9
  %494 = load i64, i64* %6, align 8
  %495 = add i64 %494, -8
  %496 = inttoptr i64 %495 to i64*
  store i64 %493, i64* %496, align 8
  store i64 %495, i64* %6, align 8
  store i64 %492, i64* %3, align 8
  %call2_400f3d = tail call %struct.Memory* @sub_401060.list_first(%struct.State* %0, i64 %492, %struct.Memory* %MEMORY.6)
  %497 = bitcast %union.anon* %48 to i32**
  %498 = load i32*, i32** %497, align 8
  %499 = load i64, i64* %PC.i, align 8
  %500 = add i64 %499, 3
  store i64 %500, i64* %PC.i, align 8
  %501 = load i32, i32* %498, align 4
  %502 = add i32 %501, -100
  %503 = icmp ult i32 %501, 100
  %504 = zext i1 %503 to i8
  store i8 %504, i8* %14, align 1
  %505 = and i32 %502, 255
  %506 = tail call i32 @llvm.ctpop.i32(i32 %505)
  %507 = trunc i32 %506 to i8
  %508 = and i8 %507, 1
  %509 = xor i8 %508, 1
  store i8 %509, i8* %21, align 1
  %510 = xor i32 %501, %502
  %511 = lshr i32 %510, 4
  %512 = trunc i32 %511 to i8
  %513 = and i8 %512, 1
  store i8 %513, i8* %26, align 1
  %514 = icmp eq i32 %502, 0
  %515 = zext i1 %514 to i8
  store i8 %515, i8* %29, align 1
  %516 = lshr i32 %502, 31
  %517 = trunc i32 %516 to i8
  store i8 %517, i8* %32, align 1
  %518 = lshr i32 %501, 31
  %519 = xor i32 %516, %518
  %520 = add nuw nsw i32 %519, %518
  %521 = icmp eq i32 %520, 2
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %38, align 1
  %.v16 = select i1 %514, i64 55, i64 9
  %523 = add i64 %499, %.v16
  store i64 %523, i64* %3, align 8
  br i1 %514, label %block_.L_400f79, label %block_400f4b

block_400f4b:                                     ; preds = %block_.L_400f39
  %524 = load i64, i64* %RBP.i, align 8
  %525 = add i64 %524, -24
  %526 = add i64 %523, 4
  store i64 %526, i64* %PC.i, align 8
  %527 = inttoptr i64 %525 to i64*
  %528 = load i64, i64* %527, align 8
  store i64 %528, i64* %RDI.i20, align 8
  %529 = add i64 %523, 277
  %530 = add i64 %523, 9
  %531 = load i64, i64* %6, align 8
  %532 = add i64 %531, -8
  %533 = inttoptr i64 %532 to i64*
  store i64 %530, i64* %533, align 8
  store i64 %532, i64* %6, align 8
  store i64 %529, i64* %3, align 8
  %call2_400f4f = tail call %struct.Memory* @sub_401060.list_first(%struct.State* %0, i64 %529, %struct.Memory* %call2_400f3d)
  %534 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x4012a9_type* @G__0x4012a9 to i64), i64* %RDI.i20, align 8
  store i64 100, i64* %RSI.i, align 8
  %RDX.i130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %535 = bitcast %union.anon* %48 to i32**
  %536 = load i32*, i32** %535, align 8
  %537 = add i64 %534, 17
  store i64 %537, i64* %PC.i, align 8
  %538 = load i32, i32* %536, align 4
  %539 = zext i32 %538 to i64
  store i64 %539, i64* %RDX.i130, align 8
  %AL.i127 = bitcast %union.anon* %48 to i8*
  store i8 0, i8* %AL.i127, align 1
  %540 = add i64 %534, -2612
  %541 = add i64 %534, 24
  %542 = load i64, i64* %6, align 8
  %543 = add i64 %542, -8
  %544 = inttoptr i64 %543 to i64*
  store i64 %541, i64* %544, align 8
  store i64 %543, i64* %6, align 8
  store i64 %540, i64* %3, align 8
  %545 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400f4f)
  %546 = load i64, i64* %PC.i, align 8
  store i64 1, i64* %RDI.i20, align 8
  %547 = load i64, i64* %RBP.i, align 8
  %548 = add i64 %547, -80
  %549 = load i32, i32* %EAX.i215, align 4
  %550 = add i64 %546, 8
  store i64 %550, i64* %PC.i, align 8
  %551 = inttoptr i64 %548 to i32*
  store i32 %549, i32* %551, align 4
  %552 = load i64, i64* %PC.i, align 8
  %553 = add i64 %552, -2596
  %554 = add i64 %552, 5
  %555 = load i64, i64* %6, align 8
  %556 = add i64 %555, -8
  %557 = inttoptr i64 %556 to i64*
  store i64 %554, i64* %557, align 8
  store i64 %556, i64* %6, align 8
  store i64 %553, i64* %3, align 8
  %558 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %545)
  %.pre5 = load i64, i64* %PC.i, align 8
  br label %block_.L_400f79

block_.L_400f79:                                  ; preds = %block_400f4b, %block_.L_400f39
  %559 = phi i64 [ %523, %block_.L_400f39 ], [ %.pre5, %block_400f4b ]
  %MEMORY.7 = phi %struct.Memory* [ %call2_400f3d, %block_.L_400f39 ], [ %558, %block_400f4b ]
  %560 = load i64, i64* %RBP.i, align 8
  %561 = add i64 %560, -24
  %562 = add i64 %559, 4
  store i64 %562, i64* %PC.i, align 8
  %563 = inttoptr i64 %561 to i64*
  %564 = load i64, i64* %563, align 8
  store i64 %564, i64* %RDI.i20, align 8
  %565 = add i64 %559, -665
  %566 = add i64 %559, 9
  %567 = load i64, i64* %6, align 8
  %568 = add i64 %567, -8
  %569 = inttoptr i64 %568 to i64*
  store i64 %566, i64* %569, align 8
  store i64 %568, i64* %6, align 8
  store i64 %565, i64* %3, align 8
  %call2_400f7d = tail call %struct.Memory* @sub_400ce0.list_last(%struct.State* %0, i64 %565, %struct.Memory* %MEMORY.7)
  %570 = bitcast %union.anon* %48 to i32**
  %571 = load i32*, i32** %570, align 8
  %572 = load i64, i64* %PC.i, align 8
  %573 = add i64 %572, 3
  store i64 %573, i64* %PC.i, align 8
  %574 = load i32, i32* %571, align 4
  %575 = add i32 %574, -1
  %576 = icmp eq i32 %574, 0
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %14, align 1
  %578 = and i32 %575, 255
  %579 = tail call i32 @llvm.ctpop.i32(i32 %578)
  %580 = trunc i32 %579 to i8
  %581 = and i8 %580, 1
  %582 = xor i8 %581, 1
  store i8 %582, i8* %21, align 1
  %583 = xor i32 %574, %575
  %584 = lshr i32 %583, 4
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  store i8 %586, i8* %26, align 1
  %587 = icmp eq i32 %575, 0
  %588 = zext i1 %587 to i8
  store i8 %588, i8* %29, align 1
  %589 = lshr i32 %575, 31
  %590 = trunc i32 %589 to i8
  store i8 %590, i8* %32, align 1
  %591 = lshr i32 %574, 31
  %592 = xor i32 %589, %591
  %593 = add nuw nsw i32 %592, %591
  %594 = icmp eq i32 %593, 2
  %595 = zext i1 %594 to i8
  store i8 %595, i8* %38, align 1
  %.v17 = select i1 %587, i64 55, i64 9
  %596 = add i64 %572, %.v17
  store i64 %596, i64* %3, align 8
  br i1 %587, label %block_.L_400fb9, label %block_400f8b

block_400f8b:                                     ; preds = %block_.L_400f79
  %597 = load i64, i64* %RBP.i, align 8
  %598 = add i64 %597, -24
  %599 = add i64 %596, 4
  store i64 %599, i64* %PC.i, align 8
  %600 = inttoptr i64 %598 to i64*
  %601 = load i64, i64* %600, align 8
  store i64 %601, i64* %RDI.i20, align 8
  %602 = add i64 %596, -683
  %603 = add i64 %596, 9
  %604 = load i64, i64* %6, align 8
  %605 = add i64 %604, -8
  %606 = inttoptr i64 %605 to i64*
  store i64 %603, i64* %606, align 8
  store i64 %605, i64* %6, align 8
  store i64 %602, i64* %3, align 8
  %call2_400f8f = tail call %struct.Memory* @sub_400ce0.list_last(%struct.State* %0, i64 %602, %struct.Memory* %call2_400f7d)
  %607 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x401284_type* @G__0x401284 to i64), i64* %RDI.i20, align 8
  store i64 100, i64* %RSI.i, align 8
  %RDX.i99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %608 = bitcast %union.anon* %48 to i32**
  %609 = load i32*, i32** %608, align 8
  %610 = add i64 %607, 17
  store i64 %610, i64* %PC.i, align 8
  %611 = load i32, i32* %609, align 4
  %612 = zext i32 %611 to i64
  store i64 %612, i64* %RDX.i99, align 8
  %AL.i96 = bitcast %union.anon* %48 to i8*
  store i8 0, i8* %AL.i96, align 1
  %613 = add i64 %607, -2676
  %614 = add i64 %607, 24
  %615 = load i64, i64* %6, align 8
  %616 = add i64 %615, -8
  %617 = inttoptr i64 %616 to i64*
  store i64 %614, i64* %617, align 8
  store i64 %616, i64* %6, align 8
  store i64 %613, i64* %3, align 8
  %618 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400f8f)
  %619 = load i64, i64* %PC.i, align 8
  store i64 1, i64* %RDI.i20, align 8
  %620 = load i64, i64* %RBP.i, align 8
  %621 = add i64 %620, -84
  %622 = load i32, i32* %EAX.i215, align 4
  %623 = add i64 %619, 8
  store i64 %623, i64* %PC.i, align 8
  %624 = inttoptr i64 %621 to i32*
  store i32 %622, i32* %624, align 4
  %625 = load i64, i64* %PC.i, align 8
  %626 = add i64 %625, -2660
  %627 = add i64 %625, 5
  %628 = load i64, i64* %6, align 8
  %629 = add i64 %628, -8
  %630 = inttoptr i64 %629 to i64*
  store i64 %627, i64* %630, align 8
  store i64 %629, i64* %6, align 8
  store i64 %626, i64* %3, align 8
  %631 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %618)
  %.pre6 = load i64, i64* %PC.i, align 8
  br label %block_.L_400fb9

block_.L_400fb9:                                  ; preds = %block_400f8b, %block_.L_400f79
  %632 = phi i64 [ %596, %block_.L_400f79 ], [ %.pre6, %block_400f8b ]
  %MEMORY.8 = phi %struct.Memory* [ %call2_400f7d, %block_.L_400f79 ], [ %631, %block_400f8b ]
  %633 = load i64, i64* %RBP.i, align 8
  %634 = add i64 %633, -16
  %635 = add i64 %632, 4
  store i64 %635, i64* %PC.i, align 8
  %636 = inttoptr i64 %634 to i64*
  %637 = load i64, i64* %636, align 8
  store i64 %637, i64* %RDI.i20, align 8
  %638 = add i64 %632, -2137
  %639 = add i64 %632, 9
  %640 = load i64, i64* %6, align 8
  %641 = add i64 %640, -8
  %642 = inttoptr i64 %641 to i64*
  store i64 %639, i64* %642, align 8
  store i64 %641, i64* %6, align 8
  store i64 %638, i64* %3, align 8
  %call2_400fbd = tail call %struct.Memory* @sub_400760.list_length(%struct.State* %0, i64 %638, %struct.Memory* %MEMORY.8)
  %643 = load i32, i32* %EAX.i215, align 4
  %644 = load i64, i64* %PC.i, align 8
  %645 = add i32 %643, -100
  %646 = icmp ult i32 %643, 100
  %647 = zext i1 %646 to i8
  store i8 %647, i8* %14, align 1
  %648 = and i32 %645, 255
  %649 = tail call i32 @llvm.ctpop.i32(i32 %648)
  %650 = trunc i32 %649 to i8
  %651 = and i8 %650, 1
  %652 = xor i8 %651, 1
  store i8 %652, i8* %21, align 1
  %653 = xor i32 %643, %645
  %654 = lshr i32 %653, 4
  %655 = trunc i32 %654 to i8
  %656 = and i8 %655, 1
  store i8 %656, i8* %26, align 1
  %657 = icmp eq i32 %645, 0
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %29, align 1
  %659 = lshr i32 %645, 31
  %660 = trunc i32 %659 to i8
  store i8 %660, i8* %32, align 1
  %661 = lshr i32 %643, 31
  %662 = xor i32 %659, %661
  %663 = add nuw nsw i32 %662, %661
  %664 = icmp eq i32 %663, 2
  %665 = zext i1 %664 to i8
  store i8 %665, i8* %38, align 1
  %.v18 = select i1 %657, i64 55, i64 9
  %666 = add i64 %644, %.v18
  store i64 %666, i64* %3, align 8
  br i1 %657, label %block_.L_400ff9, label %block_400fcb

block_400fcb:                                     ; preds = %block_.L_400fb9
  %667 = load i64, i64* %RBP.i, align 8
  %668 = add i64 %667, -16
  %669 = add i64 %666, 4
  store i64 %669, i64* %PC.i, align 8
  %670 = inttoptr i64 %668 to i64*
  %671 = load i64, i64* %670, align 8
  store i64 %671, i64* %RDI.i20, align 8
  %672 = add i64 %666, -2155
  %673 = add i64 %666, 9
  %674 = load i64, i64* %6, align 8
  %675 = add i64 %674, -8
  %676 = inttoptr i64 %675 to i64*
  store i64 %673, i64* %676, align 8
  store i64 %675, i64* %6, align 8
  store i64 %672, i64* %3, align 8
  %call2_400fcf = tail call %struct.Memory* @sub_400760.list_length(%struct.State* %0, i64 %672, %struct.Memory* %call2_400fbd)
  %677 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x4012d3_type* @G__0x4012d3 to i64), i64* %RDI.i20, align 8
  store i64 100, i64* %RSI.i, align 8
  %RDX.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %678 = load i32, i32* %EAX.i215, align 4
  %679 = zext i32 %678 to i64
  store i64 %679, i64* %RDX.i, align 8
  %AL.i66 = bitcast %union.anon* %48 to i8*
  store i8 0, i8* %AL.i66, align 1
  %680 = add i64 %677, -2740
  %681 = add i64 %677, 24
  %682 = load i64, i64* %6, align 8
  %683 = add i64 %682, -8
  %684 = inttoptr i64 %683 to i64*
  store i64 %681, i64* %684, align 8
  store i64 %683, i64* %6, align 8
  store i64 %680, i64* %3, align 8
  %685 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400fcf)
  %686 = load i64, i64* %PC.i, align 8
  store i64 1, i64* %RDI.i20, align 8
  %687 = load i64, i64* %RBP.i, align 8
  %688 = add i64 %687, -88
  %689 = load i32, i32* %EAX.i215, align 4
  %690 = add i64 %686, 8
  store i64 %690, i64* %PC.i, align 8
  %691 = inttoptr i64 %688 to i32*
  store i32 %689, i32* %691, align 4
  %692 = load i64, i64* %PC.i, align 8
  %693 = add i64 %692, -2724
  %694 = add i64 %692, 5
  %695 = load i64, i64* %6, align 8
  %696 = add i64 %695, -8
  %697 = inttoptr i64 %696 to i64*
  store i64 %694, i64* %697, align 8
  store i64 %696, i64* %6, align 8
  store i64 %693, i64* %3, align 8
  %698 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %685)
  %.pre7 = load i64, i64* %PC.i, align 8
  br label %block_.L_400ff9

block_.L_400ff9:                                  ; preds = %block_400fcb, %block_.L_400fb9
  %699 = phi i64 [ %666, %block_.L_400fb9 ], [ %.pre7, %block_400fcb ]
  %MEMORY.9 = phi %struct.Memory* [ %call2_400fbd, %block_.L_400fb9 ], [ %698, %block_400fcb ]
  %700 = load i64, i64* %RBP.i, align 8
  %701 = add i64 %700, -16
  %702 = add i64 %699, 4
  store i64 %702, i64* %PC.i, align 8
  %703 = inttoptr i64 %701 to i64*
  %704 = load i64, i64* %703, align 8
  store i64 %704, i64* %RDI.i20, align 8
  %705 = add i64 %700, -24
  %706 = add i64 %699, 8
  store i64 %706, i64* %PC.i, align 8
  %707 = inttoptr i64 %705 to i64*
  %708 = load i64, i64* %707, align 8
  store i64 %708, i64* %RSI.i, align 8
  %709 = add i64 %699, -1961
  %710 = add i64 %699, 13
  %711 = load i64, i64* %6, align 8
  %712 = add i64 %711, -8
  %713 = inttoptr i64 %712 to i64*
  store i64 %710, i64* %713, align 8
  store i64 %712, i64* %6, align 8
  store i64 %709, i64* %3, align 8
  %call2_401001 = tail call %struct.Memory* @sub_400850.list_equal(%struct.State* %0, i64 %709, %struct.Memory* %MEMORY.9)
  %714 = load i32, i32* %EAX.i215, align 4
  %715 = load i64, i64* %PC.i, align 8
  store i8 0, i8* %14, align 1
  %716 = and i32 %714, 255
  %717 = tail call i32 @llvm.ctpop.i32(i32 %716)
  %718 = trunc i32 %717 to i8
  %719 = and i8 %718, 1
  %720 = xor i8 %719, 1
  store i8 %720, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %721 = icmp eq i32 %714, 0
  %722 = zext i1 %721 to i8
  store i8 %722, i8* %29, align 1
  %723 = lshr i32 %714, 31
  %724 = trunc i32 %723 to i8
  store i8 %724, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v19 = select i1 %721, i64 9, i64 39
  %725 = add i64 %715, %.v19
  store i64 %725, i64* %3, align 8
  br i1 %721, label %block_40100f, label %block_.L_40102d

block_40100f:                                     ; preds = %block_.L_400ff9
  store i64 ptrtoint (%G__0x4012f6_type* @G__0x4012f6 to i64), i64* %RDI.i20, align 8
  %AL.i = bitcast %union.anon* %48 to i8*
  store i8 0, i8* %AL.i, align 1
  %726 = add i64 %725, -2799
  %727 = add i64 %725, 17
  %728 = load i64, i64* %6, align 8
  %729 = add i64 %728, -8
  %730 = inttoptr i64 %729 to i64*
  store i64 %727, i64* %730, align 8
  store i64 %729, i64* %6, align 8
  store i64 %726, i64* %3, align 8
  %731 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_401001)
  %732 = load i64, i64* %PC.i, align 8
  store i64 1, i64* %RDI.i20, align 8
  %733 = load i64, i64* %RBP.i, align 8
  %734 = add i64 %733, -92
  %735 = load i32, i32* %EAX.i215, align 4
  %736 = add i64 %732, 8
  store i64 %736, i64* %PC.i, align 8
  %737 = inttoptr i64 %734 to i32*
  store i32 %735, i32* %737, align 4
  %738 = load i64, i64* %PC.i, align 8
  %739 = add i64 %738, -2776
  %740 = add i64 %738, 5
  %741 = load i64, i64* %6, align 8
  %742 = add i64 %741, -8
  %743 = inttoptr i64 %742 to i64*
  store i64 %740, i64* %743, align 8
  store i64 %742, i64* %6, align 8
  store i64 %739, i64* %3, align 8
  %744 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exit to i64), %struct.Memory* %731)
  %.pre8 = load i64, i64* %PC.i, align 8
  br label %block_.L_40102d

block_.L_40102d:                                  ; preds = %block_.L_400ff9, %block_40100f
  %745 = phi i64 [ %725, %block_.L_400ff9 ], [ %.pre8, %block_40100f ]
  %MEMORY.10 = phi %struct.Memory* [ %call2_401001, %block_.L_400ff9 ], [ %744, %block_40100f ]
  %746 = load i64, i64* %RBP.i, align 8
  %747 = add i64 %746, -16
  %748 = add i64 %745, 4
  store i64 %748, i64* %PC.i, align 8
  %749 = inttoptr i64 %747 to i64*
  %750 = load i64, i64* %749, align 8
  store i64 %750, i64* %RDI.i20, align 8
  %751 = add i64 %745, -2253
  %752 = add i64 %745, 9
  %753 = load i64, i64* %6, align 8
  %754 = add i64 %753, -8
  %755 = inttoptr i64 %754 to i64*
  store i64 %752, i64* %755, align 8
  store i64 %754, i64* %6, align 8
  store i64 %751, i64* %3, align 8
  %call2_401031 = tail call %struct.Memory* @sub_400760.list_length(%struct.State* %0, i64 %751, %struct.Memory* %MEMORY.10)
  %756 = load i64, i64* %RBP.i, align 8
  %757 = add i64 %756, -4
  %758 = load i32, i32* %EAX.i215, align 4
  %759 = load i64, i64* %PC.i, align 8
  %760 = add i64 %759, 3
  store i64 %760, i64* %PC.i, align 8
  %761 = inttoptr i64 %757 to i32*
  store i32 %758, i32* %761, align 4
  %762 = load i64, i64* %RBP.i, align 8
  %763 = add i64 %762, -16
  %764 = load i64, i64* %PC.i, align 8
  %765 = add i64 %764, 4
  store i64 %765, i64* %PC.i, align 8
  %766 = inttoptr i64 %763 to i64*
  %767 = load i64, i64* %766, align 8
  store i64 %767, i64* %RDI.i20, align 8
  %768 = add i64 %764, -2873
  %769 = add i64 %764, 9
  %770 = load i64, i64* %6, align 8
  %771 = add i64 %770, -8
  %772 = inttoptr i64 %771 to i64*
  store i64 %769, i64* %772, align 8
  store i64 %771, i64* %6, align 8
  store i64 %768, i64* %3, align 8
  %773 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %call2_401031)
  %774 = load i64, i64* %RBP.i, align 8
  %775 = add i64 %774, -24
  %776 = load i64, i64* %PC.i, align 8
  %777 = add i64 %776, 4
  store i64 %777, i64* %PC.i, align 8
  %778 = inttoptr i64 %775 to i64*
  %779 = load i64, i64* %778, align 8
  store i64 %779, i64* %RDI.i20, align 8
  %780 = add i64 %776, -2882
  %781 = add i64 %776, 9
  %782 = load i64, i64* %6, align 8
  %783 = add i64 %782, -8
  %784 = inttoptr i64 %783 to i64*
  store i64 %781, i64* %784, align 8
  store i64 %783, i64* %6, align 8
  store i64 %780, i64* %3, align 8
  %785 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %773)
  %786 = load i64, i64* %RBP.i, align 8
  %787 = add i64 %786, -32
  %788 = load i64, i64* %PC.i, align 8
  %789 = add i64 %788, 4
  store i64 %789, i64* %PC.i, align 8
  %790 = inttoptr i64 %787 to i64*
  %791 = load i64, i64* %790, align 8
  store i64 %791, i64* %RDI.i20, align 8
  %792 = add i64 %788, -2891
  %793 = add i64 %788, 9
  %794 = load i64, i64* %6, align 8
  %795 = add i64 %794, -8
  %796 = inttoptr i64 %795 to i64*
  store i64 %793, i64* %796, align 8
  store i64 %795, i64* %6, align 8
  store i64 %792, i64* %3, align 8
  %797 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %785)
  %798 = load i64, i64* %RBP.i, align 8
  %799 = add i64 %798, -4
  %800 = load i64, i64* %PC.i, align 8
  %801 = add i64 %800, 3
  store i64 %801, i64* %PC.i, align 8
  %802 = inttoptr i64 %799 to i32*
  %803 = load i32, i32* %802, align 4
  %804 = zext i32 %803 to i64
  store i64 %804, i64* %RAX.i62, align 8
  %805 = load i64, i64* %RSP.i8, align 8
  %806 = add i64 %805, 96
  store i64 %806, i64* %RSP.i8, align 8
  %807 = icmp ugt i64 %805, -97
  %808 = zext i1 %807 to i8
  store i8 %808, i8* %14, align 1
  %809 = trunc i64 %806 to i32
  %810 = and i32 %809, 255
  %811 = tail call i32 @llvm.ctpop.i32(i32 %810)
  %812 = trunc i32 %811 to i8
  %813 = and i8 %812, 1
  %814 = xor i8 %813, 1
  store i8 %814, i8* %21, align 1
  %815 = xor i64 %805, %806
  %816 = lshr i64 %815, 4
  %817 = trunc i64 %816 to i8
  %818 = and i8 %817, 1
  store i8 %818, i8* %26, align 1
  %819 = icmp eq i64 %806, 0
  %820 = zext i1 %819 to i8
  store i8 %820, i8* %29, align 1
  %821 = lshr i64 %806, 63
  %822 = trunc i64 %821 to i8
  store i8 %822, i8* %32, align 1
  %823 = lshr i64 %805, 63
  %824 = xor i64 %821, %823
  %825 = add nuw nsw i64 %824, %821
  %826 = icmp eq i64 %825, 2
  %827 = zext i1 %826 to i8
  store i8 %827, i8* %38, align 1
  %828 = add i64 %800, 8
  store i64 %828, i64* %PC.i, align 8
  %829 = add i64 %805, 104
  %830 = inttoptr i64 %806 to i64*
  %831 = load i64, i64* %830, align 8
  store i64 %831, i64* %RBP.i, align 8
  store i64 %829, i64* %6, align 8
  %832 = add i64 %800, 9
  store i64 %832, i64* %PC.i, align 8
  %833 = inttoptr i64 %829 to i64*
  %834 = load i64, i64* %833, align 8
  store i64 %834, i64* %3, align 8
  %835 = add i64 %805, 112
  store i64 %835, i64* %6, align 8
  ret %struct.Memory* %797
}

define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -96
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 96
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
  %17 = xor i64 %3, %6
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

define %struct.Memory* @routine_movl__0x1___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x64___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 100, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_.list_sequence(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_.list_copy(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.list_new(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.list_equal(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jne_.L_400dbc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x40120d___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40120d_type* @G__0x40120d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x0___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 0, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.printf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -36
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.exit_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400dc1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.list_empty(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_setne__cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = icmp eq i8 %7, 0
  %9 = zext i1 %8 to i8
  store i8 %9, i8* %CL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorb__0xff___cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %CL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = xor i8 %4, -1
  store i8 %7, i8* %CL, align 1
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

define %struct.Memory* @routine_testb__0x1___cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %CL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
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

define %struct.Memory* @routine_jne_.L_400de1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e06(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_.list_pop_head(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rax___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_.list_push_tail(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_400e36(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x401228___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401228_type* @G__0x401228 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jmpq_.L_400e3b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_400e5b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400e80(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.list_pop_tail(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_jne_.L_400eb0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x401241___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401241_type* @G__0x401241 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_.list_reverse(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.list_first(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x64____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -100
  %9 = icmp ult i32 %7, 100
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
  %18 = xor i32 %7, %8
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %8, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_400ef9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x40125a___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x40125a_type* @G__0x40125a to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl___rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_.list_last(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -1
  %9 = icmp eq i32 %7, 0
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
  %18 = xor i32 %7, %8
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %8, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_400f39(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x401284___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x401284_type* @G__0x401284 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_je_.L_400f79(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4012a9___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4012a9_type* @G__0x4012a9 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_je_.L_400fb9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_.list_length(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x64___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -100
  %8 = icmp ult i32 %4, 100
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
  %17 = xor i32 %4, %7
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

define %struct.Memory* @routine_je_.L_400ff9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4012d3___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4012d3_type* @G__0x4012d3 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_40102d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5 = load i8, i8* %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = zext i1 %6 to i8
  store i8 %7, i8* %BRANCH_TAKEN, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %9 = add i64 %3, %.v
  store i64 %9, i64* %8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4012f6___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4012f6_type* @G__0x4012f6 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_callq_.free_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 96
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -97
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
  %17 = xor i64 %3, %6
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

define %struct.Memory* @routine_popq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_retq(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = add i64 %7, 8
  store i64 %10, i64* %6, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
