; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xab0f24_type = type <{ [4 x i8] }>
%G_0xab0f28_type = type <{ [1 x i8] }>
%G_0xab0fe0_type = type <{ [8 x i8] }>
%G__0x57ba7e_type = type <{ [8 x i8] }>
%G__0x57baa1_type = type <{ [8 x i8] }>
%G__0x57babc_type = type <{ [8 x i8] }>
%G__0x57bad8_type = type <{ [8 x i8] }>
%G__0x57bb09_type = type <{ [8 x i8] }>
%G__0x57bb34_type = type <{ [8 x i8] }>
%G__0x57bb62_type = type <{ [8 x i8] }>
%G__0x57bb6f_type = type <{ [8 x i8] }>
%G__0x57bbab_type = type <{ [8 x i8] }>
%G__0x57bbce_type = type <{ [8 x i8] }>
%G__0x57bbf0_type = type <{ [8 x i8] }>
%G__0x57bc24_type = type <{ [8 x i8] }>
%G__0x57bc51_type = type <{ [8 x i8] }>
%G__0x57bc69_type = type <{ [8 x i8] }>
%G__0x57bc9f_type = type <{ [8 x i8] }>
%G__0x57bcdc_type = type <{ [8 x i8] }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
%G__0xb4bd20_type = type <{ [8 x i8] }>
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
@G_0xab0f24 = local_unnamed_addr global %G_0xab0f24_type zeroinitializer
@G_0xab0f28 = local_unnamed_addr global %G_0xab0f28_type zeroinitializer
@G_0xab0fe0 = local_unnamed_addr global %G_0xab0fe0_type zeroinitializer
@G__0x57ba7e = global %G__0x57ba7e_type zeroinitializer
@G__0x57baa1 = global %G__0x57baa1_type zeroinitializer
@G__0x57babc = global %G__0x57babc_type zeroinitializer
@G__0x57bad8 = global %G__0x57bad8_type zeroinitializer
@G__0x57bb09 = global %G__0x57bb09_type zeroinitializer
@G__0x57bb34 = global %G__0x57bb34_type zeroinitializer
@G__0x57bb62 = global %G__0x57bb62_type zeroinitializer
@G__0x57bb6f = global %G__0x57bb6f_type zeroinitializer
@G__0x57bbab = global %G__0x57bbab_type zeroinitializer
@G__0x57bbce = global %G__0x57bbce_type zeroinitializer
@G__0x57bbf0 = global %G__0x57bbf0_type zeroinitializer
@G__0x57bc24 = global %G__0x57bc24_type zeroinitializer
@G__0x57bc51 = global %G__0x57bc51_type zeroinitializer
@G__0x57bc69 = global %G__0x57bc69_type zeroinitializer
@G__0x57bc9f = global %G__0x57bc9f_type zeroinitializer
@G__0x57bcdc = global %G__0x57bcdc_type zeroinitializer
@G__0xb0eff0 = global %G__0xb0eff0_type zeroinitializer
@G__0xb4bd20 = global %G__0xb4bd20_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_424460.analyze_neighbor(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_46bc30.safe_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4246c0.filllib_confirm_safety(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4249e0.find_backfilling_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40ead0.is_legal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_415ac0.does_capture_something(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @fill_liberty(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -1784
  store i64 %11, i64* %6, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX.i1212 = bitcast %union.anon* %18 to i32*
  %RAX.i1213 = getelementptr inbounds %union.anon, %union.anon* %18, i64 0, i32 0
  store i64 0, i64* %RAX.i1213, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i1210 = getelementptr inbounds %union.anon, %union.anon* %19, i64 0, i32 0
  %ECX.i1207 = bitcast %union.anon* %19 to i32*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %RDX.i1208 = getelementptr inbounds %union.anon, %union.anon* %20, i64 0, i32 0
  store i64 1600, i64* %RDX.i1208, align 8
  %R8.i1205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %21 = add i64 %7, -1656
  store i64 %21, i64* %R8.i1205, align 8
  store i64 3, i64* %RCX.i1210, align 8
  %RDI.i1199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %22 = add i64 %7, -24
  %23 = load i64, i64* %RDI.i1199, align 8
  %24 = add i64 %10, 35
  store i64 %24, i64* %3, align 8
  %25 = inttoptr i64 %22 to i64*
  store i64 %23, i64* %25, align 8
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %26 to i32*
  %27 = load i64, i64* %RBP.i, align 8
  %28 = add i64 %27, -20
  %29 = load i32, i32* %ESI.i, align 4
  %30 = load i64, i64* %3, align 8
  %31 = add i64 %30, 3
  store i64 %31, i64* %3, align 8
  %32 = inttoptr i64 %28 to i32*
  store i32 %29, i32* %32, align 4
  %33 = load i64, i64* %RCX.i1210, align 8
  %34 = load i64, i64* %RBP.i, align 8
  %35 = add i64 %34, -20
  %36 = load i64, i64* %3, align 8
  %37 = add i64 %36, 3
  store i64 %37, i64* %3, align 8
  %38 = trunc i64 %33 to i32
  %39 = inttoptr i64 %35 to i32*
  %40 = load i32, i32* %39, align 4
  %41 = sub i32 %38, %40
  %42 = zext i32 %41 to i64
  store i64 %42, i64* %RCX.i1210, align 8
  %43 = icmp ult i32 %38, %40
  %44 = zext i1 %43 to i8
  store i8 %44, i8* %12, align 1
  %45 = and i32 %41, 255
  %46 = tail call i32 @llvm.ctpop.i32(i32 %45)
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, 1
  %49 = xor i8 %48, 1
  store i8 %49, i8* %13, align 1
  %50 = xor i32 %40, %38
  %51 = xor i32 %50, %41
  %52 = lshr i32 %51, 4
  %53 = trunc i32 %52 to i8
  %54 = and i8 %53, 1
  store i8 %54, i8* %14, align 1
  %55 = icmp eq i32 %41, 0
  %56 = zext i1 %55 to i8
  store i8 %56, i8* %15, align 1
  %57 = lshr i32 %41, 31
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %16, align 1
  %59 = lshr i32 %38, 31
  %60 = lshr i32 %40, 31
  %61 = xor i32 %60, %59
  %62 = xor i32 %57, %59
  %63 = add nuw nsw i32 %62, %61
  %64 = icmp eq i32 %63, 2
  %65 = zext i1 %64 to i8
  store i8 %65, i8* %17, align 1
  %66 = add i64 %34, -32
  %67 = add i64 %36, 6
  store i64 %67, i64* %3, align 8
  %68 = inttoptr i64 %66 to i32*
  store i32 %41, i32* %68, align 4
  %69 = load i64, i64* %R8.i1205, align 8
  %70 = load i64, i64* %3, align 8
  store i64 %69, i64* %RDI.i1199, align 8
  %RSI.i1187 = getelementptr inbounds %union.anon, %union.anon* %26, i64 0, i32 0
  %71 = load i32, i32* %EAX.i1212, align 4
  %72 = zext i32 %71 to i64
  store i64 %72, i64* %RSI.i1187, align 8
  %73 = add i64 %70, -141549
  %74 = add i64 %70, 10
  %75 = load i64, i64* %6, align 8
  %76 = add i64 %75, -8
  %77 = inttoptr i64 %76 to i64*
  store i64 %74, i64* %77, align 8
  store i64 %76, i64* %6, align 8
  store i64 %73, i64* %3, align 8
  %78 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %2)
  %79 = load i64, i64* %RBP.i, align 8
  %80 = add i64 %79, -28
  %81 = load i64, i64* %3, align 8
  %82 = add i64 %81, 7
  store i64 %82, i64* %3, align 8
  %83 = inttoptr i64 %80 to i32*
  store i32 21, i32* %83, align 4
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %85 = bitcast %union.anon* %20 to i32*
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_42396e

block_.L_42396e:                                  ; preds = %block_.L_423b93, %entry
  %86 = phi i64 [ %.pre, %entry ], [ %954, %block_.L_423b93 ]
  %MEMORY.0 = phi %struct.Memory* [ %78, %entry ], [ %MEMORY.11, %block_.L_423b93 ]
  %87 = load i64, i64* %RBP.i, align 8
  %88 = add i64 %87, -28
  %89 = add i64 %86, 7
  store i64 %89, i64* %3, align 8
  %90 = inttoptr i64 %88 to i32*
  %91 = load i32, i32* %90, align 4
  %92 = add i32 %91, -400
  %93 = icmp ult i32 %91, 400
  %94 = zext i1 %93 to i8
  store i8 %94, i8* %12, align 1
  %95 = and i32 %92, 255
  %96 = tail call i32 @llvm.ctpop.i32(i32 %95)
  %97 = trunc i32 %96 to i8
  %98 = and i8 %97, 1
  %99 = xor i8 %98, 1
  store i8 %99, i8* %13, align 1
  %100 = xor i32 %91, 16
  %101 = xor i32 %100, %92
  %102 = lshr i32 %101, 4
  %103 = trunc i32 %102 to i8
  %104 = and i8 %103, 1
  store i8 %104, i8* %14, align 1
  %105 = icmp eq i32 %92, 0
  %106 = zext i1 %105 to i8
  store i8 %106, i8* %15, align 1
  %107 = lshr i32 %92, 31
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %16, align 1
  %109 = lshr i32 %91, 31
  %110 = xor i32 %107, %109
  %111 = add nuw nsw i32 %110, %109
  %112 = icmp eq i32 %111, 2
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %17, align 1
  %114 = icmp ne i8 %108, 0
  %115 = xor i1 %114, %112
  %.v = select i1 %115, i64 13, i64 563
  %116 = add i64 %86, %.v
  store i64 %116, i64* %3, align 8
  br i1 %115, label %block_42397b, label %block_.L_423ba1

block_42397b:                                     ; preds = %block_.L_42396e
  %117 = add i64 %116, 4
  store i64 %117, i64* %3, align 8
  %118 = load i32, i32* %90, align 4
  %119 = sext i32 %118 to i64
  store i64 %119, i64* %RAX.i1213, align 8
  %120 = add nsw i64 %119, 12099168
  %121 = add i64 %116, 12
  store i64 %121, i64* %3, align 8
  %122 = inttoptr i64 %120 to i8*
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i64
  store i64 %124, i64* %RCX.i1210, align 8
  %125 = zext i8 %123 to i32
  %126 = add nsw i32 %125, -1
  %127 = icmp eq i8 %123, 0
  %128 = zext i1 %127 to i8
  store i8 %128, i8* %12, align 1
  %129 = and i32 %126, 255
  %130 = tail call i32 @llvm.ctpop.i32(i32 %129)
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  %133 = xor i8 %132, 1
  store i8 %133, i8* %13, align 1
  %134 = xor i32 %126, %125
  %135 = lshr i32 %134, 4
  %136 = trunc i32 %135 to i8
  %137 = and i8 %136, 1
  store i8 %137, i8* %14, align 1
  %138 = icmp eq i32 %126, 0
  %139 = zext i1 %138 to i8
  store i8 %139, i8* %15, align 1
  %140 = lshr i32 %126, 31
  %141 = trunc i32 %140 to i8
  store i8 %141, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v291 = select i1 %138, i64 47, i64 21
  %142 = add i64 %116, %.v291
  store i64 %142, i64* %3, align 8
  br i1 %138, label %block_.L_4239aa, label %block_423990

block_423990:                                     ; preds = %block_42397b
  %143 = add i64 %142, 4
  store i64 %143, i64* %3, align 8
  %144 = load i32, i32* %90, align 4
  %145 = sext i32 %144 to i64
  store i64 %145, i64* %RAX.i1213, align 8
  %146 = add nsw i64 %145, 12099168
  %147 = add i64 %142, 12
  store i64 %147, i64* %3, align 8
  %148 = inttoptr i64 %146 to i8*
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i64
  store i64 %150, i64* %RCX.i1210, align 8
  %151 = zext i8 %149 to i32
  %152 = add nsw i32 %151, -2
  %153 = icmp ult i8 %149, 2
  %154 = zext i1 %153 to i8
  store i8 %154, i8* %12, align 1
  %155 = and i32 %152, 255
  %156 = tail call i32 @llvm.ctpop.i32(i32 %155)
  %157 = trunc i32 %156 to i8
  %158 = and i8 %157, 1
  %159 = xor i8 %158, 1
  store i8 %159, i8* %13, align 1
  %160 = xor i32 %152, %151
  %161 = lshr i32 %160, 4
  %162 = trunc i32 %161 to i8
  %163 = and i8 %162, 1
  store i8 %163, i8* %14, align 1
  %164 = icmp eq i32 %152, 0
  %165 = zext i1 %164 to i8
  store i8 %165, i8* %15, align 1
  %166 = lshr i32 %152, 31
  %167 = trunc i32 %166 to i8
  store i8 %167, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v292 = select i1 %164, i64 26, i64 21
  %168 = add i64 %142, %.v292
  store i64 %168, i64* %3, align 8
  br i1 %164, label %block_.L_4239aa, label %block_.L_423b93

block_.L_4239aa:                                  ; preds = %block_423990, %block_42397b
  %169 = phi i64 [ %168, %block_423990 ], [ %142, %block_42397b ]
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i1213, align 8
  %170 = add i64 %169, 14
  store i64 %170, i64* %3, align 8
  %171 = load i32, i32* %90, align 4
  %172 = sext i32 %171 to i64
  %173 = mul nsw i64 %172, 380
  store i64 %173, i64* %RCX.i1210, align 8
  %174 = lshr i64 %173, 63
  %175 = add i64 %173, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %175, i64* %RAX.i1213, align 8
  %176 = icmp ult i64 %175, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %177 = icmp ult i64 %175, %173
  %178 = or i1 %176, %177
  %179 = zext i1 %178 to i8
  store i8 %179, i8* %12, align 1
  %180 = trunc i64 %175 to i32
  %181 = and i32 %180, 252
  %182 = tail call i32 @llvm.ctpop.i32(i32 %181)
  %183 = trunc i32 %182 to i8
  %184 = and i8 %183, 1
  %185 = xor i8 %184, 1
  store i8 %185, i8* %13, align 1
  %186 = xor i64 %173, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %187 = xor i64 %186, %175
  %188 = lshr i64 %187, 4
  %189 = trunc i64 %188 to i8
  %190 = and i8 %189, 1
  store i8 %190, i8* %14, align 1
  %191 = icmp eq i64 %175, 0
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %15, align 1
  %193 = lshr i64 %175, 63
  %194 = trunc i64 %193 to i8
  store i8 %194, i8* %16, align 1
  %195 = xor i64 %193, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %196 = xor i64 %193, %174
  %197 = add nuw nsw i64 %195, %196
  %198 = icmp eq i64 %197, 2
  %199 = zext i1 %198 to i8
  store i8 %199, i8* %17, align 1
  %200 = add i64 %173, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 48)
  %201 = add i64 %169, 28
  store i64 %201, i64* %3, align 8
  %202 = inttoptr i64 %200 to i32*
  %203 = load i32, i32* %202, align 4
  store i8 0, i8* %12, align 1
  %204 = and i32 %203, 255
  %205 = tail call i32 @llvm.ctpop.i32(i32 %204)
  %206 = trunc i32 %205 to i8
  %207 = and i8 %206, 1
  %208 = xor i8 %207, 1
  store i8 %208, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %209 = icmp eq i32 %203, 0
  %210 = zext i1 %209 to i8
  store i8 %210, i8* %15, align 1
  %211 = lshr i32 %203, 31
  %212 = trunc i32 %211 to i8
  store i8 %212, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v293 = select i1 %209, i64 34, i64 84
  %213 = add i64 %169, %.v293
  store i64 %213, i64* %3, align 8
  br i1 %209, label %block_4239cc, label %block_.L_423b93

block_4239cc:                                     ; preds = %block_.L_4239aa
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1213, align 8
  %214 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %214, i64* %RCX.i1210, align 8
  %215 = add i64 %213, 22
  store i64 %215, i64* %3, align 8
  %216 = load i32, i32* %90, align 4
  %217 = sext i32 %216 to i64
  %218 = mul nsw i64 %217, 76
  store i64 %218, i64* %RDX.i1208, align 8
  %219 = lshr i64 %218, 63
  %220 = add i64 %218, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %220, i64* %RAX.i1213, align 8
  %221 = icmp ult i64 %220, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %222 = icmp ult i64 %220, %218
  %223 = or i1 %221, %222
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %12, align 1
  %225 = trunc i64 %220 to i32
  %226 = and i32 %225, 252
  %227 = tail call i32 @llvm.ctpop.i32(i32 %226)
  %228 = trunc i32 %227 to i8
  %229 = and i8 %228, 1
  %230 = xor i8 %229, 1
  store i8 %230, i8* %13, align 1
  %231 = xor i64 %218, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %232 = xor i64 %231, %220
  %233 = lshr i64 %232, 4
  %234 = trunc i64 %233 to i8
  %235 = and i8 %234, 1
  store i8 %235, i8* %14, align 1
  %236 = icmp eq i64 %220, 0
  %237 = zext i1 %236 to i8
  store i8 %237, i8* %15, align 1
  %238 = lshr i64 %220, 63
  %239 = trunc i64 %238 to i8
  store i8 %239, i8* %16, align 1
  %240 = xor i64 %238, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %241 = xor i64 %238, %219
  %242 = add nuw nsw i64 %240, %241
  %243 = icmp eq i64 %242, 2
  %244 = zext i1 %243 to i8
  store i8 %244, i8* %17, align 1
  %245 = add i64 %218, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 4)
  %246 = add i64 %213, 33
  store i64 %246, i64* %3, align 8
  %247 = inttoptr i64 %245 to i32*
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  %250 = mul nsw i64 %249, 104
  store i64 %250, i64* %RAX.i1213, align 8
  %251 = lshr i64 %250, 63
  %252 = add i64 %250, %214
  store i64 %252, i64* %RCX.i1210, align 8
  %253 = icmp ult i64 %252, %214
  %254 = icmp ult i64 %252, %250
  %255 = or i1 %253, %254
  %256 = zext i1 %255 to i8
  store i8 %256, i8* %12, align 1
  %257 = trunc i64 %252 to i32
  %258 = and i32 %257, 255
  %259 = tail call i32 @llvm.ctpop.i32(i32 %258)
  %260 = trunc i32 %259 to i8
  %261 = and i8 %260, 1
  %262 = xor i8 %261, 1
  store i8 %262, i8* %13, align 1
  %263 = xor i64 %250, %214
  %264 = xor i64 %263, %252
  %265 = lshr i64 %264, 4
  %266 = trunc i64 %265 to i8
  %267 = and i8 %266, 1
  store i8 %267, i8* %14, align 1
  %268 = icmp eq i64 %252, 0
  %269 = zext i1 %268 to i8
  store i8 %269, i8* %15, align 1
  %270 = lshr i64 %252, 63
  %271 = trunc i64 %270 to i8
  store i8 %271, i8* %16, align 1
  %272 = lshr i64 %214, 63
  %273 = xor i64 %270, %272
  %274 = xor i64 %270, %251
  %275 = add nuw nsw i64 %273, %274
  %276 = icmp eq i64 %275, 2
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %17, align 1
  %278 = add i64 %252, 60
  %279 = add i64 %213, 44
  store i64 %279, i64* %3, align 8
  %280 = inttoptr i64 %278 to i32*
  %281 = load i32, i32* %280, align 4
  %282 = add i32 %281, -5
  %283 = icmp ult i32 %281, 5
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %12, align 1
  %285 = and i32 %282, 255
  %286 = tail call i32 @llvm.ctpop.i32(i32 %285)
  %287 = trunc i32 %286 to i8
  %288 = and i8 %287, 1
  %289 = xor i8 %288, 1
  store i8 %289, i8* %13, align 1
  %290 = xor i32 %282, %281
  %291 = lshr i32 %290, 4
  %292 = trunc i32 %291 to i8
  %293 = and i8 %292, 1
  store i8 %293, i8* %14, align 1
  %294 = icmp eq i32 %282, 0
  %295 = zext i1 %294 to i8
  store i8 %295, i8* %15, align 1
  %296 = lshr i32 %282, 31
  %297 = trunc i32 %296 to i8
  store i8 %297, i8* %16, align 1
  %298 = lshr i32 %281, 31
  %299 = xor i32 %296, %298
  %300 = add nuw nsw i32 %299, %298
  %301 = icmp eq i32 %300, 2
  %302 = zext i1 %301 to i8
  store i8 %302, i8* %17, align 1
  %.v294 = select i1 %294, i64 50, i64 55
  %303 = add i64 %213, %.v294
  store i64 %303, i64* %3, align 8
  br i1 %294, label %block_4239cc.block_.L_423b93_crit_edge, label %block_.L_423a03

block_4239cc.block_.L_423b93_crit_edge:           ; preds = %block_4239cc
  %.pre224 = load i64, i64* %RBP.i, align 8
  br label %block_.L_423b93

block_.L_423a03:                                  ; preds = %block_4239cc
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1213, align 8
  %304 = load i64, i64* %RBP.i, align 8
  %305 = add i64 %304, -28
  %306 = add i64 %303, 14
  store i64 %306, i64* %3, align 8
  %307 = inttoptr i64 %305 to i32*
  %308 = load i32, i32* %307, align 4
  %309 = sext i32 %308 to i64
  %310 = mul nsw i64 %309, 76
  store i64 %310, i64* %RCX.i1210, align 8
  %311 = lshr i64 %310, 63
  %312 = add i64 %310, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %312, i64* %RAX.i1213, align 8
  %313 = icmp ult i64 %312, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %314 = icmp ult i64 %312, %310
  %315 = or i1 %313, %314
  %316 = zext i1 %315 to i8
  store i8 %316, i8* %12, align 1
  %317 = trunc i64 %312 to i32
  %318 = and i32 %317, 252
  %319 = tail call i32 @llvm.ctpop.i32(i32 %318)
  %320 = trunc i32 %319 to i8
  %321 = and i8 %320, 1
  %322 = xor i8 %321, 1
  store i8 %322, i8* %13, align 1
  %323 = xor i64 %310, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %324 = xor i64 %323, %312
  %325 = lshr i64 %324, 4
  %326 = trunc i64 %325 to i8
  %327 = and i8 %326, 1
  store i8 %327, i8* %14, align 1
  %328 = icmp eq i64 %312, 0
  %329 = zext i1 %328 to i8
  store i8 %329, i8* %15, align 1
  %330 = lshr i64 %312, 63
  %331 = trunc i64 %330 to i8
  store i8 %331, i8* %16, align 1
  %332 = xor i64 %330, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %333 = xor i64 %330, %311
  %334 = add nuw nsw i64 %332, %333
  %335 = icmp eq i64 %334, 2
  %336 = zext i1 %335 to i8
  store i8 %336, i8* %17, align 1
  %337 = add i64 %310, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 64)
  %338 = add i64 %303, 25
  store i64 %338, i64* %3, align 8
  %339 = inttoptr i64 %337 to i32*
  %340 = load i32, i32* %339, align 4
  %341 = add i32 %340, -1
  %342 = icmp eq i32 %340, 0
  %343 = zext i1 %342 to i8
  store i8 %343, i8* %12, align 1
  %344 = and i32 %341, 255
  %345 = tail call i32 @llvm.ctpop.i32(i32 %344)
  %346 = trunc i32 %345 to i8
  %347 = and i8 %346, 1
  %348 = xor i8 %347, 1
  store i8 %348, i8* %13, align 1
  %349 = xor i32 %341, %340
  %350 = lshr i32 %349, 4
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  store i8 %352, i8* %14, align 1
  %353 = icmp eq i32 %341, 0
  %354 = zext i1 %353 to i8
  store i8 %354, i8* %15, align 1
  %355 = lshr i32 %341, 31
  %356 = trunc i32 %355 to i8
  store i8 %356, i8* %16, align 1
  %357 = lshr i32 %340, 31
  %358 = xor i32 %355, %357
  %359 = add nuw nsw i32 %358, %357
  %360 = icmp eq i32 %359, 2
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %17, align 1
  %.v295 = select i1 %353, i64 156, i64 31
  %362 = add i64 %303, %.v295
  store i64 %362, i64* %3, align 8
  %.pre215 = load i64, i64* %RBP.i, align 8
  br i1 %353, label %block_.L_423a9f, label %block_423a22

block_423a22:                                     ; preds = %block_.L_423a03
  %363 = add i64 %.pre215, -24
  %364 = add i64 %362, 7
  store i64 %364, i64* %3, align 8
  %365 = inttoptr i64 %363 to i32*
  store i32 0, i32* %365, align 4
  %.pre212 = load i64, i64* %3, align 8
  br label %block_.L_423a29

block_.L_423a29:                                  ; preds = %block_.L_423a87, %block_423a22
  %366 = phi i64 [ %543, %block_.L_423a87 ], [ %.pre212, %block_423a22 ]
  %367 = load i64, i64* %RBP.i, align 8
  %368 = add i64 %367, -24
  %369 = add i64 %366, 4
  store i64 %369, i64* %3, align 8
  %370 = inttoptr i64 %368 to i32*
  %371 = load i32, i32* %370, align 4
  %372 = add i32 %371, -4
  %373 = icmp ult i32 %371, 4
  %374 = zext i1 %373 to i8
  store i8 %374, i8* %12, align 1
  %375 = and i32 %372, 255
  %376 = tail call i32 @llvm.ctpop.i32(i32 %375)
  %377 = trunc i32 %376 to i8
  %378 = and i8 %377, 1
  %379 = xor i8 %378, 1
  store i8 %379, i8* %13, align 1
  %380 = xor i32 %372, %371
  %381 = lshr i32 %380, 4
  %382 = trunc i32 %381 to i8
  %383 = and i8 %382, 1
  store i8 %383, i8* %14, align 1
  %384 = icmp eq i32 %372, 0
  %385 = zext i1 %384 to i8
  store i8 %385, i8* %15, align 1
  %386 = lshr i32 %372, 31
  %387 = trunc i32 %386 to i8
  store i8 %387, i8* %16, align 1
  %388 = lshr i32 %371, 31
  %389 = xor i32 %386, %388
  %390 = add nuw nsw i32 %389, %388
  %391 = icmp eq i32 %390, 2
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %17, align 1
  %393 = icmp ne i8 %387, 0
  %394 = xor i1 %393, %391
  %.v296 = select i1 %394, i64 10, i64 113
  %395 = add i64 %366, %.v296
  store i64 %395, i64* %3, align 8
  br i1 %394, label %block_423a33, label %block_.L_423a9a

block_423a33:                                     ; preds = %block_.L_423a29
  %396 = add i64 %367, -28
  %397 = add i64 %395, 3
  store i64 %397, i64* %3, align 8
  %398 = inttoptr i64 %396 to i32*
  %399 = load i32, i32* %398, align 4
  %400 = zext i32 %399 to i64
  store i64 %400, i64* %RAX.i1213, align 8
  %401 = add i64 %395, 7
  store i64 %401, i64* %3, align 8
  %402 = load i32, i32* %370, align 4
  %403 = sext i32 %402 to i64
  store i64 %403, i64* %RCX.i1210, align 8
  %404 = shl nsw i64 %403, 2
  %405 = add nsw i64 %404, 8053168
  %406 = add i64 %395, 14
  store i64 %406, i64* %3, align 8
  %407 = inttoptr i64 %405 to i32*
  %408 = load i32, i32* %407, align 4
  %409 = add i32 %408, %399
  %410 = zext i32 %409 to i64
  store i64 %410, i64* %RAX.i1213, align 8
  %411 = icmp ult i32 %409, %399
  %412 = icmp ult i32 %409, %408
  %413 = or i1 %411, %412
  %414 = zext i1 %413 to i8
  store i8 %414, i8* %12, align 1
  %415 = and i32 %409, 255
  %416 = tail call i32 @llvm.ctpop.i32(i32 %415)
  %417 = trunc i32 %416 to i8
  %418 = and i8 %417, 1
  %419 = xor i8 %418, 1
  store i8 %419, i8* %13, align 1
  %420 = xor i32 %408, %399
  %421 = xor i32 %420, %409
  %422 = lshr i32 %421, 4
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  store i8 %424, i8* %14, align 1
  %425 = icmp eq i32 %409, 0
  %426 = zext i1 %425 to i8
  store i8 %426, i8* %15, align 1
  %427 = lshr i32 %409, 31
  %428 = trunc i32 %427 to i8
  store i8 %428, i8* %16, align 1
  %429 = lshr i32 %399, 31
  %430 = lshr i32 %408, 31
  %431 = xor i32 %427, %429
  %432 = xor i32 %427, %430
  %433 = add nuw nsw i32 %431, %432
  %434 = icmp eq i32 %433, 2
  %435 = zext i1 %434 to i8
  store i8 %435, i8* %17, align 1
  %436 = add i64 %367, -1652
  %437 = add i64 %395, 20
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %436 to i32*
  store i32 %409, i32* %438, align 4
  %439 = load i64, i64* %RBP.i, align 8
  %440 = add i64 %439, -1652
  %441 = load i64, i64* %3, align 8
  %442 = add i64 %441, 7
  store i64 %442, i64* %3, align 8
  %443 = inttoptr i64 %440 to i32*
  %444 = load i32, i32* %443, align 4
  %445 = sext i32 %444 to i64
  store i64 %445, i64* %RCX.i1210, align 8
  %446 = add nsw i64 %445, 12099168
  %447 = add i64 %441, 15
  store i64 %447, i64* %3, align 8
  %448 = inttoptr i64 %446 to i8*
  %449 = load i8, i8* %448, align 1
  %450 = zext i8 %449 to i64
  store i64 %450, i64* %RAX.i1213, align 8
  %451 = zext i8 %449 to i32
  store i8 0, i8* %12, align 1
  %452 = tail call i32 @llvm.ctpop.i32(i32 %451)
  %453 = trunc i32 %452 to i8
  %454 = and i8 %453, 1
  %455 = xor i8 %454, 1
  store i8 %455, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %456 = icmp eq i8 %449, 0
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v302 = select i1 %456, i64 24, i64 64
  %458 = add i64 %441, %.v302
  store i64 %458, i64* %3, align 8
  br i1 %456, label %block_423a5f, label %block_.L_423a87

block_423a5f:                                     ; preds = %block_423a33
  store i64 3, i64* %RAX.i1213, align 8
  %459 = add i64 %439, -28
  %460 = add i64 %458, 9
  store i64 %460, i64* %3, align 8
  %461 = inttoptr i64 %459 to i32*
  %462 = load i32, i32* %461, align 4
  %463 = sext i32 %462 to i64
  store i64 %463, i64* %RCX.i1210, align 8
  %464 = add nsw i64 %463, 12099168
  %465 = add i64 %458, 17
  store i64 %465, i64* %3, align 8
  %466 = inttoptr i64 %464 to i8*
  %467 = load i8, i8* %466, align 1
  %468 = zext i8 %467 to i64
  store i64 %468, i64* %RDX.i1208, align 8
  %469 = zext i8 %467 to i32
  %470 = sub nsw i32 3, %469
  %471 = zext i32 %470 to i64
  store i64 %471, i64* %RAX.i1213, align 8
  %472 = icmp ugt i8 %467, 3
  %473 = zext i1 %472 to i8
  store i8 %473, i8* %12, align 1
  %474 = and i32 %470, 255
  %475 = tail call i32 @llvm.ctpop.i32(i32 %474)
  %476 = trunc i32 %475 to i8
  %477 = and i8 %476, 1
  %478 = xor i8 %477, 1
  store i8 %478, i8* %13, align 1
  %479 = zext i8 %467 to i32
  %480 = xor i32 %479, %470
  %481 = lshr i32 %480, 4
  %482 = trunc i32 %481 to i8
  %483 = and i8 %482, 1
  store i8 %483, i8* %14, align 1
  %484 = icmp eq i32 %470, 0
  %485 = zext i1 %484 to i8
  store i8 %485, i8* %15, align 1
  %486 = lshr i32 %470, 31
  %487 = trunc i32 %486 to i8
  store i8 %487, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %488 = add i64 %458, 26
  store i64 %488, i64* %3, align 8
  %489 = load i32, i32* %443, align 4
  %490 = sext i32 %489 to i64
  store i64 %490, i64* %RCX.i1210, align 8
  %491 = shl nsw i64 %490, 2
  %492 = add nsw i64 %491, -1648
  %493 = add i64 %492, %439
  %494 = add i64 %458, 33
  store i64 %494, i64* %3, align 8
  %495 = inttoptr i64 %493 to i32*
  %496 = load i32, i32* %495, align 4
  %497 = or i32 %496, %470
  %498 = zext i32 %497 to i64
  store i64 %498, i64* %RAX.i1213, align 8
  store i8 0, i8* %12, align 1
  %499 = and i32 %497, 255
  %500 = tail call i32 @llvm.ctpop.i32(i32 %499)
  %501 = trunc i32 %500 to i8
  %502 = and i8 %501, 1
  %503 = xor i8 %502, 1
  store i8 %503, i8* %13, align 1
  %504 = icmp eq i32 %497, 0
  %505 = zext i1 %504 to i8
  store i8 %505, i8* %15, align 1
  %506 = lshr i32 %497, 31
  %507 = trunc i32 %506 to i8
  store i8 %507, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %508 = add i64 %439, -1648
  %509 = add i64 %508, %491
  %510 = add i64 %458, 40
  store i64 %510, i64* %3, align 8
  %511 = inttoptr i64 %509 to i32*
  store i32 %497, i32* %511, align 4
  %.pre213 = load i64, i64* %3, align 8
  %.pre214 = load i64, i64* %RBP.i, align 8
  br label %block_.L_423a87

block_.L_423a87:                                  ; preds = %block_423a33, %block_423a5f
  %512 = phi i64 [ %.pre214, %block_423a5f ], [ %439, %block_423a33 ]
  %513 = phi i64 [ %.pre213, %block_423a5f ], [ %458, %block_423a33 ]
  %514 = add i64 %512, -24
  %515 = add i64 %513, 8
  store i64 %515, i64* %3, align 8
  %516 = inttoptr i64 %514 to i32*
  %517 = load i32, i32* %516, align 4
  %518 = add i32 %517, 1
  %519 = zext i32 %518 to i64
  store i64 %519, i64* %RAX.i1213, align 8
  %520 = icmp eq i32 %517, -1
  %521 = icmp eq i32 %518, 0
  %522 = or i1 %520, %521
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %12, align 1
  %524 = and i32 %518, 255
  %525 = tail call i32 @llvm.ctpop.i32(i32 %524)
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  %528 = xor i8 %527, 1
  store i8 %528, i8* %13, align 1
  %529 = xor i32 %518, %517
  %530 = lshr i32 %529, 4
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  store i8 %532, i8* %14, align 1
  %533 = zext i1 %521 to i8
  store i8 %533, i8* %15, align 1
  %534 = lshr i32 %518, 31
  %535 = trunc i32 %534 to i8
  store i8 %535, i8* %16, align 1
  %536 = lshr i32 %517, 31
  %537 = xor i32 %534, %536
  %538 = add nuw nsw i32 %537, %534
  %539 = icmp eq i32 %538, 2
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %17, align 1
  %541 = add i64 %513, 14
  store i64 %541, i64* %3, align 8
  store i32 %518, i32* %516, align 4
  %542 = load i64, i64* %3, align 8
  %543 = add i64 %542, -108
  store i64 %543, i64* %3, align 8
  br label %block_.L_423a29

block_.L_423a9a:                                  ; preds = %block_.L_423a29
  %544 = add i64 %395, 5
  store i64 %544, i64* %3, align 8
  br label %block_.L_423a9f

block_.L_423a9f:                                  ; preds = %block_.L_423a03, %block_.L_423a9a
  %545 = phi i64 [ %367, %block_.L_423a9a ], [ %.pre215, %block_.L_423a03 ]
  %546 = phi i64 [ %544, %block_.L_423a9a ], [ %362, %block_.L_423a03 ]
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX.i1213, align 8
  %547 = add i64 %545, -28
  %548 = add i64 %546, 14
  store i64 %548, i64* %3, align 8
  %549 = inttoptr i64 %547 to i32*
  %550 = load i32, i32* %549, align 4
  %551 = sext i32 %550 to i64
  %552 = mul nsw i64 %551, 76
  store i64 %552, i64* %RCX.i1210, align 8
  %553 = lshr i64 %552, 63
  %554 = add i64 %552, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  store i64 %554, i64* %RAX.i1213, align 8
  %555 = icmp ult i64 %554, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %556 = icmp ult i64 %554, %552
  %557 = or i1 %555, %556
  %558 = zext i1 %557 to i8
  store i8 %558, i8* %12, align 1
  %559 = trunc i64 %554 to i32
  %560 = and i32 %559, 252
  %561 = tail call i32 @llvm.ctpop.i32(i32 %560)
  %562 = trunc i32 %561 to i8
  %563 = and i8 %562, 1
  %564 = xor i8 %563, 1
  store i8 %564, i8* %13, align 1
  %565 = xor i64 %552, ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64)
  %566 = xor i64 %565, %554
  %567 = lshr i64 %566, 4
  %568 = trunc i64 %567 to i8
  %569 = and i8 %568, 1
  store i8 %569, i8* %14, align 1
  %570 = icmp eq i64 %554, 0
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %15, align 1
  %572 = lshr i64 %554, 63
  %573 = trunc i64 %572 to i8
  store i8 %573, i8* %16, align 1
  %574 = xor i64 %572, lshr (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 63)
  %575 = xor i64 %572, %553
  %576 = add nuw nsw i64 %574, %575
  %577 = icmp eq i64 %576, 2
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %17, align 1
  %579 = add i64 %552, add (i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64 64)
  %580 = add i64 %546, 25
  store i64 %580, i64* %3, align 8
  %581 = inttoptr i64 %579 to i32*
  %582 = load i32, i32* %581, align 4
  store i8 0, i8* %12, align 1
  %583 = and i32 %582, 255
  %584 = tail call i32 @llvm.ctpop.i32(i32 %583)
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  %587 = xor i8 %586, 1
  store i8 %587, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %588 = icmp eq i32 %582, 0
  %589 = zext i1 %588 to i8
  store i8 %589, i8* %15, align 1
  %590 = lshr i32 %582, 31
  %591 = trunc i32 %590 to i8
  store i8 %591, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v297 = select i1 %588, i64 239, i64 31
  %592 = add i64 %546, %.v297
  store i64 %592, i64* %3, align 8
  br i1 %588, label %block_.L_423b93, label %block_423abe

block_423abe:                                     ; preds = %block_.L_423a9f
  %593 = add i64 %545, -24
  %594 = add i64 %592, 7
  store i64 %594, i64* %3, align 8
  %595 = inttoptr i64 %593 to i32*
  store i32 0, i32* %595, align 4
  %.pre216 = load i64, i64* %3, align 8
  br label %block_.L_423ac5

block_.L_423ac5:                                  ; preds = %block_.L_423b7b, %block_423abe
  %596 = phi i64 [ %.pre216, %block_423abe ], [ %921, %block_.L_423b7b ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.0, %block_423abe ], [ %662, %block_.L_423b7b ]
  %597 = load i64, i64* %RBP.i, align 8
  %598 = add i64 %597, -24
  %599 = add i64 %596, 4
  store i64 %599, i64* %3, align 8
  %600 = inttoptr i64 %598 to i32*
  %601 = load i32, i32* %600, align 4
  %602 = add i32 %601, -12
  %603 = icmp ult i32 %601, 12
  %604 = zext i1 %603 to i8
  store i8 %604, i8* %12, align 1
  %605 = and i32 %602, 255
  %606 = tail call i32 @llvm.ctpop.i32(i32 %605)
  %607 = trunc i32 %606 to i8
  %608 = and i8 %607, 1
  %609 = xor i8 %608, 1
  store i8 %609, i8* %13, align 1
  %610 = xor i32 %602, %601
  %611 = lshr i32 %610, 4
  %612 = trunc i32 %611 to i8
  %613 = and i8 %612, 1
  store i8 %613, i8* %14, align 1
  %614 = icmp eq i32 %602, 0
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %15, align 1
  %616 = lshr i32 %602, 31
  %617 = trunc i32 %616 to i8
  store i8 %617, i8* %16, align 1
  %618 = lshr i32 %601, 31
  %619 = xor i32 %616, %618
  %620 = add nuw nsw i32 %619, %618
  %621 = icmp eq i32 %620, 2
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %17, align 1
  %623 = icmp ne i8 %617, 0
  %624 = xor i1 %623, %621
  %.v298 = select i1 %624, i64 10, i64 196
  %625 = add i64 %596, %.v298
  %626 = add i64 %625, 5
  store i64 %626, i64* %3, align 8
  br i1 %624, label %block_423acf, label %block_.L_423b93.loopexit

block_423acf:                                     ; preds = %block_.L_423ac5
  store i64 8, i64* %RAX.i1213, align 8
  %627 = add i64 %625, 8
  store i64 %627, i64* %3, align 8
  %628 = load i32, i32* %600, align 4
  %629 = zext i32 %628 to i64
  store i64 %629, i64* %RCX.i1210, align 8
  %630 = add i64 %597, -1692
  %631 = add i64 %625, 14
  store i64 %631, i64* %3, align 8
  %632 = inttoptr i64 %630 to i32*
  store i32 8, i32* %632, align 4
  %633 = load i32, i32* %ECX.i1207, align 4
  %634 = zext i32 %633 to i64
  %635 = load i64, i64* %3, align 8
  store i64 %634, i64* %RAX.i1213, align 8
  %636 = sext i32 %633 to i64
  %637 = lshr i64 %636, 32
  store i64 %637, i64* %84, align 8
  %638 = load i64, i64* %RBP.i, align 8
  %639 = add i64 %638, -1692
  %640 = add i64 %635, 9
  store i64 %640, i64* %3, align 8
  %641 = inttoptr i64 %639 to i32*
  %642 = load i32, i32* %641, align 4
  %643 = zext i32 %642 to i64
  store i64 %643, i64* %RCX.i1210, align 8
  %644 = add i64 %635, 11
  store i64 %644, i64* %3, align 8
  %645 = sext i32 %642 to i64
  %646 = shl nuw i64 %637, 32
  %647 = or i64 %646, %634
  %648 = sdiv i64 %647, %645
  %649 = shl i64 %648, 32
  %650 = ashr exact i64 %649, 32
  %651 = icmp eq i64 %648, %650
  br i1 %651, label %654, label %652

; <label>:652:                                    ; preds = %block_423acf
  %653 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %644, %struct.Memory* %MEMORY.6)
  %.pre217 = load i32, i32* %85, align 4
  %.pre218 = load i64, i64* %3, align 8
  %.pre219 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit

; <label>:654:                                    ; preds = %block_423acf
  %655 = srem i64 %647, %645
  %656 = and i64 %648, 4294967295
  store i64 %656, i64* %RAX.i1213, align 8
  %657 = and i64 %655, 4294967295
  store i64 %657, i64* %RDX.i1208, align 8
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  store i8 0, i8* %14, align 1
  store i8 0, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %658 = trunc i64 %655 to i32
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %654, %652
  %659 = phi i64 [ %.pre219, %652 ], [ %638, %654 ]
  %660 = phi i64 [ %.pre218, %652 ], [ %644, %654 ]
  %661 = phi i32 [ %.pre217, %652 ], [ %658, %654 ]
  %662 = phi %struct.Memory* [ %653, %652 ], [ %MEMORY.6, %654 ]
  %663 = sext i32 %661 to i64
  store i64 %663, i64* %RSI.i1187, align 8
  %664 = shl nsw i64 %663, 2
  %665 = add nsw i64 %664, 8053168
  %666 = add i64 %660, 10
  store i64 %666, i64* %3, align 8
  %667 = inttoptr i64 %665 to i32*
  %668 = load i32, i32* %667, align 4
  %669 = zext i32 %668 to i64
  store i64 %669, i64* %RDX.i1208, align 8
  %670 = add i64 %659, -1656
  %671 = add i64 %660, 16
  store i64 %671, i64* %3, align 8
  %672 = inttoptr i64 %670 to i32*
  store i32 %668, i32* %672, align 4
  %673 = load i64, i64* %RBP.i, align 8
  %674 = add i64 %673, -24
  %675 = load i64, i64* %3, align 8
  %676 = add i64 %675, 4
  store i64 %676, i64* %3, align 8
  %677 = inttoptr i64 %674 to i32*
  %678 = load i32, i32* %677, align 4
  %679 = add i32 %678, -8
  %680 = icmp ult i32 %678, 8
  %681 = zext i1 %680 to i8
  store i8 %681, i8* %12, align 1
  %682 = and i32 %679, 255
  %683 = tail call i32 @llvm.ctpop.i32(i32 %682)
  %684 = trunc i32 %683 to i8
  %685 = and i8 %684, 1
  %686 = xor i8 %685, 1
  store i8 %686, i8* %13, align 1
  %687 = xor i32 %679, %678
  %688 = lshr i32 %687, 4
  %689 = trunc i32 %688 to i8
  %690 = and i8 %689, 1
  store i8 %690, i8* %14, align 1
  %691 = icmp eq i32 %679, 0
  %692 = zext i1 %691 to i8
  store i8 %692, i8* %15, align 1
  %693 = lshr i32 %679, 31
  %694 = trunc i32 %693 to i8
  store i8 %694, i8* %16, align 1
  %695 = lshr i32 %678, 31
  %696 = xor i32 %693, %695
  %697 = add nuw nsw i32 %696, %695
  %698 = icmp eq i32 %697, 2
  %699 = zext i1 %698 to i8
  store i8 %699, i8* %17, align 1
  %700 = icmp ne i8 %694, 0
  %701 = xor i1 %700, %698
  %.v299 = select i1 %701, i64 59, i64 10
  %702 = add i64 %675, %.v299
  store i64 %702, i64* %3, align 8
  br i1 %701, label %block_.L_423b33, label %block_423b02

block_423b02:                                     ; preds = %routine_idivl__ecx.exit
  %703 = add i64 %673, -28
  %704 = add i64 %702, 3
  store i64 %704, i64* %3, align 8
  %705 = inttoptr i64 %703 to i32*
  %706 = load i32, i32* %705, align 4
  %707 = zext i32 %706 to i64
  store i64 %707, i64* %RAX.i1213, align 8
  %708 = add i64 %673, -1656
  %709 = add i64 %702, 9
  store i64 %709, i64* %3, align 8
  %710 = inttoptr i64 %708 to i32*
  %711 = load i32, i32* %710, align 4
  %712 = add i32 %711, %706
  %713 = zext i32 %712 to i64
  store i64 %713, i64* %RAX.i1213, align 8
  %714 = icmp ult i32 %712, %706
  %715 = icmp ult i32 %712, %711
  %716 = or i1 %714, %715
  %717 = zext i1 %716 to i8
  store i8 %717, i8* %12, align 1
  %718 = and i32 %712, 255
  %719 = tail call i32 @llvm.ctpop.i32(i32 %718)
  %720 = trunc i32 %719 to i8
  %721 = and i8 %720, 1
  %722 = xor i8 %721, 1
  store i8 %722, i8* %13, align 1
  %723 = xor i32 %711, %706
  %724 = xor i32 %723, %712
  %725 = lshr i32 %724, 4
  %726 = trunc i32 %725 to i8
  %727 = and i8 %726, 1
  store i8 %727, i8* %14, align 1
  %728 = icmp eq i32 %712, 0
  %729 = zext i1 %728 to i8
  store i8 %729, i8* %15, align 1
  %730 = lshr i32 %712, 31
  %731 = trunc i32 %730 to i8
  store i8 %731, i8* %16, align 1
  %732 = lshr i32 %706, 31
  %733 = lshr i32 %711, 31
  %734 = xor i32 %730, %732
  %735 = xor i32 %730, %733
  %736 = add nuw nsw i32 %734, %735
  %737 = icmp eq i32 %736, 2
  %738 = zext i1 %737 to i8
  store i8 %738, i8* %17, align 1
  %739 = sext i32 %712 to i64
  store i64 %739, i64* %RCX.i1210, align 8
  %740 = add nsw i64 %739, 12099168
  %741 = add i64 %702, 20
  store i64 %741, i64* %3, align 8
  %742 = inttoptr i64 %740 to i8*
  %743 = load i8, i8* %742, align 1
  %744 = zext i8 %743 to i64
  store i64 %744, i64* %RAX.i1213, align 8
  %745 = zext i8 %743 to i32
  store i8 0, i8* %12, align 1
  %746 = tail call i32 @llvm.ctpop.i32(i32 %745)
  %747 = trunc i32 %746 to i8
  %748 = and i8 %747, 1
  %749 = xor i8 %748, 1
  store i8 %749, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %750 = icmp eq i8 %743, 0
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v300 = select i1 %750, i64 34, i64 29
  %752 = add i64 %702, %.v300
  store i64 %752, i64* %3, align 8
  br i1 %750, label %block_.L_423b24, label %block_423b1f

block_423b1f:                                     ; preds = %block_423b02
  %753 = add i64 %752, 92
  br label %block_.L_423b7b

block_.L_423b24:                                  ; preds = %block_423b02
  %754 = add i64 %752, 6
  store i64 %754, i64* %3, align 8
  %755 = load i32, i32* %710, align 4
  %756 = shl i32 %755, 1
  %757 = icmp slt i32 %755, 0
  %758 = icmp slt i32 %756, 0
  %759 = xor i1 %757, %758
  %760 = zext i32 %756 to i64
  store i64 %760, i64* %RAX.i1213, align 8
  %.lobit = lshr i32 %755, 31
  %761 = trunc i32 %.lobit to i8
  store i8 %761, i8* %12, align 1
  %762 = and i32 %756, 254
  %763 = tail call i32 @llvm.ctpop.i32(i32 %762)
  %764 = trunc i32 %763 to i8
  %765 = and i8 %764, 1
  %766 = xor i8 %765, 1
  store i8 %766, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %767 = icmp eq i32 %756, 0
  %768 = zext i1 %767 to i8
  store i8 %768, i8* %15, align 1
  %769 = lshr i32 %755, 30
  %770 = trunc i32 %769 to i8
  %771 = and i8 %770, 1
  store i8 %771, i8* %16, align 1
  %772 = zext i1 %759 to i8
  store i8 %772, i8* %17, align 1
  %773 = add i64 %752, 14
  store i64 %773, i64* %3, align 8
  store i32 %756, i32* %710, align 4
  %.pre220 = load i64, i64* %RBP.i, align 8
  %.pre221 = load i64, i64* %3, align 8
  br label %block_.L_423b33

block_.L_423b33:                                  ; preds = %block_.L_423b24, %routine_idivl__ecx.exit
  %774 = phi i64 [ %.pre221, %block_.L_423b24 ], [ %702, %routine_idivl__ecx.exit ]
  %775 = phi i64 [ %.pre220, %block_.L_423b24 ], [ %673, %routine_idivl__ecx.exit ]
  %776 = add i64 %775, -28
  %777 = add i64 %774, 3
  store i64 %777, i64* %3, align 8
  %778 = inttoptr i64 %776 to i32*
  %779 = load i32, i32* %778, align 4
  %780 = zext i32 %779 to i64
  store i64 %780, i64* %RAX.i1213, align 8
  %781 = add i64 %775, -1656
  %782 = add i64 %774, 9
  store i64 %782, i64* %3, align 8
  %783 = inttoptr i64 %781 to i32*
  %784 = load i32, i32* %783, align 4
  %785 = add i32 %784, %779
  %786 = zext i32 %785 to i64
  store i64 %786, i64* %RAX.i1213, align 8
  %787 = icmp ult i32 %785, %779
  %788 = icmp ult i32 %785, %784
  %789 = or i1 %787, %788
  %790 = zext i1 %789 to i8
  store i8 %790, i8* %12, align 1
  %791 = and i32 %785, 255
  %792 = tail call i32 @llvm.ctpop.i32(i32 %791)
  %793 = trunc i32 %792 to i8
  %794 = and i8 %793, 1
  %795 = xor i8 %794, 1
  store i8 %795, i8* %13, align 1
  %796 = xor i32 %784, %779
  %797 = xor i32 %796, %785
  %798 = lshr i32 %797, 4
  %799 = trunc i32 %798 to i8
  %800 = and i8 %799, 1
  store i8 %800, i8* %14, align 1
  %801 = icmp eq i32 %785, 0
  %802 = zext i1 %801 to i8
  store i8 %802, i8* %15, align 1
  %803 = lshr i32 %785, 31
  %804 = trunc i32 %803 to i8
  store i8 %804, i8* %16, align 1
  %805 = lshr i32 %779, 31
  %806 = lshr i32 %784, 31
  %807 = xor i32 %803, %805
  %808 = xor i32 %803, %806
  %809 = add nuw nsw i32 %807, %808
  %810 = icmp eq i32 %809, 2
  %811 = zext i1 %810 to i8
  store i8 %811, i8* %17, align 1
  %812 = sext i32 %785 to i64
  store i64 %812, i64* %RCX.i1210, align 8
  %813 = add nsw i64 %812, 12099168
  %814 = add i64 %774, 20
  store i64 %814, i64* %3, align 8
  %815 = inttoptr i64 %813 to i8*
  %816 = load i8, i8* %815, align 1
  %817 = zext i8 %816 to i64
  store i64 %817, i64* %RAX.i1213, align 8
  %818 = zext i8 %816 to i32
  store i8 0, i8* %12, align 1
  %819 = tail call i32 @llvm.ctpop.i32(i32 %818)
  %820 = trunc i32 %819 to i8
  %821 = and i8 %820, 1
  %822 = xor i8 %821, 1
  store i8 %822, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %823 = icmp eq i8 %816, 0
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v301 = select i1 %823, i64 29, i64 67
  %825 = add i64 %774, %.v301
  store i64 %825, i64* %3, align 8
  br i1 %823, label %block_423b50, label %block_.L_423b76

block_423b50:                                     ; preds = %block_.L_423b33
  %826 = add i64 %825, 4
  store i64 %826, i64* %3, align 8
  %827 = load i32, i32* %778, align 4
  %828 = sext i32 %827 to i64
  store i64 %828, i64* %RAX.i1213, align 8
  %829 = add nsw i64 %828, 12099168
  %830 = add i64 %825, 12
  store i64 %830, i64* %3, align 8
  %831 = inttoptr i64 %829 to i8*
  %832 = load i8, i8* %831, align 1
  %833 = zext i8 %832 to i64
  store i64 %833, i64* %RCX.i1210, align 8
  %834 = add i64 %825, 15
  store i64 %834, i64* %3, align 8
  %835 = load i32, i32* %778, align 4
  %836 = zext i32 %835 to i64
  store i64 %836, i64* %RDX.i1208, align 8
  %837 = add i64 %825, 21
  store i64 %837, i64* %3, align 8
  %838 = load i32, i32* %783, align 4
  %839 = add i32 %838, %835
  %840 = zext i32 %839 to i64
  store i64 %840, i64* %RDX.i1208, align 8
  %841 = icmp ult i32 %839, %835
  %842 = icmp ult i32 %839, %838
  %843 = or i1 %841, %842
  %844 = zext i1 %843 to i8
  store i8 %844, i8* %12, align 1
  %845 = and i32 %839, 255
  %846 = tail call i32 @llvm.ctpop.i32(i32 %845)
  %847 = trunc i32 %846 to i8
  %848 = and i8 %847, 1
  %849 = xor i8 %848, 1
  store i8 %849, i8* %13, align 1
  %850 = xor i32 %838, %835
  %851 = xor i32 %850, %839
  %852 = lshr i32 %851, 4
  %853 = trunc i32 %852 to i8
  %854 = and i8 %853, 1
  store i8 %854, i8* %14, align 1
  %855 = icmp eq i32 %839, 0
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %15, align 1
  %857 = lshr i32 %839, 31
  %858 = trunc i32 %857 to i8
  store i8 %858, i8* %16, align 1
  %859 = lshr i32 %835, 31
  %860 = lshr i32 %838, 31
  %861 = xor i32 %857, %859
  %862 = xor i32 %857, %860
  %863 = add nuw nsw i32 %861, %862
  %864 = icmp eq i32 %863, 2
  %865 = zext i1 %864 to i8
  store i8 %865, i8* %17, align 1
  %866 = sext i32 %839 to i64
  store i64 %866, i64* %RAX.i1213, align 8
  %867 = shl nsw i64 %866, 2
  %868 = add nsw i64 %867, -1648
  %869 = add i64 %868, %775
  %870 = add i64 %825, 31
  store i64 %870, i64* %3, align 8
  %871 = zext i8 %832 to i32
  %872 = inttoptr i64 %869 to i32*
  %873 = load i32, i32* %872, align 4
  %874 = or i32 %873, %871
  %875 = zext i32 %874 to i64
  store i64 %875, i64* %RCX.i1210, align 8
  store i8 0, i8* %12, align 1
  %876 = and i32 %874, 255
  %877 = tail call i32 @llvm.ctpop.i32(i32 %876)
  %878 = trunc i32 %877 to i8
  %879 = and i8 %878, 1
  %880 = xor i8 %879, 1
  store i8 %880, i8* %13, align 1
  %881 = icmp eq i32 %874, 0
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %15, align 1
  %883 = lshr i32 %873, 31
  %884 = trunc i32 %883 to i8
  store i8 %884, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %885 = add i64 %775, -1648
  %886 = add i64 %885, %867
  %887 = add i64 %825, 38
  store i64 %887, i64* %3, align 8
  %888 = inttoptr i64 %886 to i32*
  store i32 %874, i32* %888, align 4
  %.pre222 = load i64, i64* %3, align 8
  %.pre223.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_423b76

block_.L_423b76:                                  ; preds = %block_.L_423b33, %block_423b50
  %.pre223 = phi i64 [ %.pre223.pre, %block_423b50 ], [ %775, %block_.L_423b33 ]
  %889 = phi i64 [ %.pre222, %block_423b50 ], [ %825, %block_.L_423b33 ]
  %890 = add i64 %889, 5
  store i64 %890, i64* %3, align 8
  br label %block_.L_423b7b

block_.L_423b7b:                                  ; preds = %block_.L_423b76, %block_423b1f
  %891 = phi i64 [ %673, %block_423b1f ], [ %.pre223, %block_.L_423b76 ]
  %storemerge = phi i64 [ %753, %block_423b1f ], [ %890, %block_.L_423b76 ]
  %892 = add i64 %891, -24
  %893 = add i64 %storemerge, 3
  store i64 %893, i64* %3, align 8
  %894 = inttoptr i64 %892 to i32*
  %895 = load i32, i32* %894, align 4
  %896 = add i32 %895, 1
  %897 = zext i32 %896 to i64
  store i64 %897, i64* %RAX.i1213, align 8
  %898 = icmp eq i32 %895, -1
  %899 = icmp eq i32 %896, 0
  %900 = or i1 %898, %899
  %901 = zext i1 %900 to i8
  store i8 %901, i8* %12, align 1
  %902 = and i32 %896, 255
  %903 = tail call i32 @llvm.ctpop.i32(i32 %902)
  %904 = trunc i32 %903 to i8
  %905 = and i8 %904, 1
  %906 = xor i8 %905, 1
  store i8 %906, i8* %13, align 1
  %907 = xor i32 %896, %895
  %908 = lshr i32 %907, 4
  %909 = trunc i32 %908 to i8
  %910 = and i8 %909, 1
  store i8 %910, i8* %14, align 1
  %911 = zext i1 %899 to i8
  store i8 %911, i8* %15, align 1
  %912 = lshr i32 %896, 31
  %913 = trunc i32 %912 to i8
  store i8 %913, i8* %16, align 1
  %914 = lshr i32 %895, 31
  %915 = xor i32 %912, %914
  %916 = add nuw nsw i32 %915, %912
  %917 = icmp eq i32 %916, 2
  %918 = zext i1 %917 to i8
  store i8 %918, i8* %17, align 1
  %919 = add i64 %storemerge, 9
  store i64 %919, i64* %3, align 8
  store i32 %896, i32* %894, align 4
  %920 = load i64, i64* %3, align 8
  %921 = add i64 %920, -191
  store i64 %921, i64* %3, align 8
  br label %block_.L_423ac5

block_.L_423b93.loopexit:                         ; preds = %block_.L_423ac5
  br label %block_.L_423b93

block_.L_423b93:                                  ; preds = %block_.L_423b93.loopexit, %block_.L_4239aa, %block_4239cc.block_.L_423b93_crit_edge, %block_423990, %block_.L_423a9f
  %922 = phi i64 [ %.pre224, %block_4239cc.block_.L_423b93_crit_edge ], [ %87, %block_.L_4239aa ], [ %545, %block_.L_423a9f ], [ %87, %block_423990 ], [ %597, %block_.L_423b93.loopexit ]
  %923 = phi i64 [ %303, %block_4239cc.block_.L_423b93_crit_edge ], [ %213, %block_.L_4239aa ], [ %592, %block_.L_423a9f ], [ %168, %block_423990 ], [ %626, %block_.L_423b93.loopexit ]
  %.sink81 = phi i64 [ 405, %block_4239cc.block_.L_423b93_crit_edge ], [ 405, %block_.L_4239aa ], [ 5, %block_.L_423a9f ], [ 494, %block_423990 ], [ 5, %block_.L_423b93.loopexit ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.0, %block_4239cc.block_.L_423b93_crit_edge ], [ %MEMORY.0, %block_.L_4239aa ], [ %MEMORY.0, %block_.L_423a9f ], [ %MEMORY.0, %block_423990 ], [ %MEMORY.6, %block_.L_423b93.loopexit ]
  %924 = add i64 %923, %.sink81
  %925 = add i64 %922, -28
  %926 = add i64 %924, 3
  store i64 %926, i64* %3, align 8
  %927 = inttoptr i64 %925 to i32*
  %928 = load i32, i32* %927, align 4
  %929 = add i32 %928, 1
  %930 = zext i32 %929 to i64
  store i64 %930, i64* %RAX.i1213, align 8
  %931 = icmp eq i32 %928, -1
  %932 = icmp eq i32 %929, 0
  %933 = or i1 %931, %932
  %934 = zext i1 %933 to i8
  store i8 %934, i8* %12, align 1
  %935 = and i32 %929, 255
  %936 = tail call i32 @llvm.ctpop.i32(i32 %935)
  %937 = trunc i32 %936 to i8
  %938 = and i8 %937, 1
  %939 = xor i8 %938, 1
  store i8 %939, i8* %13, align 1
  %940 = xor i32 %929, %928
  %941 = lshr i32 %940, 4
  %942 = trunc i32 %941 to i8
  %943 = and i8 %942, 1
  store i8 %943, i8* %14, align 1
  %944 = zext i1 %932 to i8
  store i8 %944, i8* %15, align 1
  %945 = lshr i32 %929, 31
  %946 = trunc i32 %945 to i8
  store i8 %946, i8* %16, align 1
  %947 = lshr i32 %928, 31
  %948 = xor i32 %945, %947
  %949 = add nuw nsw i32 %948, %945
  %950 = icmp eq i32 %949, 2
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %17, align 1
  %952 = add i64 %924, 9
  store i64 %952, i64* %3, align 8
  store i32 %929, i32* %927, align 4
  %953 = load i64, i64* %3, align 8
  %954 = add i64 %953, -558
  store i64 %954, i64* %3, align 8
  br label %block_.L_42396e

block_.L_423ba1:                                  ; preds = %block_.L_42396e
  %955 = add i64 %116, 7
  store i64 %955, i64* %3, align 8
  store i32 21, i32* %90, align 4
  %AL.i815 = bitcast %union.anon* %18 to i8*
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %.pre180 = load i64, i64* %3, align 8
  br label %block_.L_423ba8

block_.L_423ba8:                                  ; preds = %block_.L_42440c, %block_.L_423ba1
  %957 = phi i64 [ %.pre180, %block_.L_423ba1 ], [ %2982, %block_.L_42440c ]
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.0, %block_.L_423ba1 ], [ %MEMORY.43, %block_.L_42440c ]
  %958 = load i64, i64* %RBP.i, align 8
  %959 = add i64 %958, -28
  %960 = add i64 %957, 7
  store i64 %960, i64* %3, align 8
  %961 = inttoptr i64 %959 to i32*
  %962 = load i32, i32* %961, align 4
  %963 = add i32 %962, -400
  %964 = icmp ult i32 %962, 400
  %965 = zext i1 %964 to i8
  store i8 %965, i8* %12, align 1
  %966 = and i32 %963, 255
  %967 = tail call i32 @llvm.ctpop.i32(i32 %966)
  %968 = trunc i32 %967 to i8
  %969 = and i8 %968, 1
  %970 = xor i8 %969, 1
  store i8 %970, i8* %13, align 1
  %971 = xor i32 %962, 16
  %972 = xor i32 %971, %963
  %973 = lshr i32 %972, 4
  %974 = trunc i32 %973 to i8
  %975 = and i8 %974, 1
  store i8 %975, i8* %14, align 1
  %976 = icmp eq i32 %963, 0
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %15, align 1
  %978 = lshr i32 %963, 31
  %979 = trunc i32 %978 to i8
  store i8 %979, i8* %16, align 1
  %980 = lshr i32 %962, 31
  %981 = xor i32 %978, %980
  %982 = add nuw nsw i32 %981, %980
  %983 = icmp eq i32 %982, 2
  %984 = zext i1 %983 to i8
  store i8 %984, i8* %17, align 1
  %985 = icmp ne i8 %979, 0
  %986 = xor i1 %985, %983
  %.v244 = select i1 %986, i64 13, i64 2162
  %987 = add i64 %957, %.v244
  store i64 %987, i64* %3, align 8
  br i1 %986, label %block_423bb5, label %block_.L_42441a

block_423bb5:                                     ; preds = %block_.L_423ba8
  %988 = add i64 %958, -1660
  %989 = add i64 %987, 10
  store i64 %989, i64* %3, align 8
  %990 = inttoptr i64 %988 to i32*
  store i32 0, i32* %990, align 4
  %991 = load i64, i64* %RBP.i, align 8
  %992 = add i64 %991, -1664
  %993 = load i64, i64* %3, align 8
  %994 = add i64 %993, 10
  store i64 %994, i64* %3, align 8
  %995 = inttoptr i64 %992 to i32*
  store i32 0, i32* %995, align 4
  %996 = load i64, i64* %RBP.i, align 8
  %997 = add i64 %996, -28
  %998 = load i64, i64* %3, align 8
  %999 = add i64 %998, 4
  store i64 %999, i64* %3, align 8
  %1000 = inttoptr i64 %997 to i32*
  %1001 = load i32, i32* %1000, align 4
  %1002 = sext i32 %1001 to i64
  store i64 %1002, i64* %RAX.i1213, align 8
  %1003 = add nsw i64 %1002, 12099168
  %1004 = add i64 %998, 12
  store i64 %1004, i64* %3, align 8
  %1005 = inttoptr i64 %1003 to i8*
  %1006 = load i8, i8* %1005, align 1
  %1007 = zext i8 %1006 to i64
  store i64 %1007, i64* %RCX.i1210, align 8
  %1008 = zext i8 %1006 to i32
  store i8 0, i8* %12, align 1
  %1009 = tail call i32 @llvm.ctpop.i32(i32 %1008)
  %1010 = trunc i32 %1009 to i8
  %1011 = and i8 %1010, 1
  %1012 = xor i8 %1011, 1
  store i8 %1012, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1013 = icmp eq i8 %1006, 0
  %1014 = zext i1 %1013 to i8
  store i8 %1014, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v246 = select i1 %1013, i64 26, i64 21
  %1015 = add i64 %998, %.v246
  store i64 %1015, i64* %3, align 8
  br i1 %1013, label %block_.L_423be3, label %block_423bde

block_423bde:                                     ; preds = %block_423bb5
  %1016 = add i64 %1015, 2094
  br label %block_.L_42440c

block_.L_423be3:                                  ; preds = %block_423bb5
  %1017 = add i64 %1015, 4
  store i64 %1017, i64* %3, align 8
  %1018 = load i32, i32* %1000, align 4
  %1019 = sext i32 %1018 to i64
  store i64 %1019, i64* %RAX.i1213, align 8
  %1020 = shl nsw i64 %1019, 2
  %1021 = add i64 %996, -1648
  %1022 = add i64 %1021, %1020
  %1023 = add i64 %1015, 12
  store i64 %1023, i64* %3, align 8
  %1024 = inttoptr i64 %1022 to i32*
  %1025 = load i32, i32* %1024, align 4
  %1026 = add i32 %1025, -3
  %1027 = icmp ult i32 %1025, 3
  %1028 = zext i1 %1027 to i8
  store i8 %1028, i8* %12, align 1
  %1029 = and i32 %1026, 255
  %1030 = tail call i32 @llvm.ctpop.i32(i32 %1029)
  %1031 = trunc i32 %1030 to i8
  %1032 = and i8 %1031, 1
  %1033 = xor i8 %1032, 1
  store i8 %1033, i8* %13, align 1
  %1034 = xor i32 %1026, %1025
  %1035 = lshr i32 %1034, 4
  %1036 = trunc i32 %1035 to i8
  %1037 = and i8 %1036, 1
  store i8 %1037, i8* %14, align 1
  %1038 = icmp eq i32 %1026, 0
  %1039 = zext i1 %1038 to i8
  store i8 %1039, i8* %15, align 1
  %1040 = lshr i32 %1026, 31
  %1041 = trunc i32 %1040 to i8
  store i8 %1041, i8* %16, align 1
  %1042 = lshr i32 %1025, 31
  %1043 = xor i32 %1040, %1042
  %1044 = add nuw nsw i32 %1043, %1042
  %1045 = icmp eq i32 %1044, 2
  %1046 = zext i1 %1045 to i8
  store i8 %1046, i8* %17, align 1
  %.v247 = select i1 %1038, i64 23, i64 18
  %1047 = add i64 %1015, %.v247
  store i64 %1047, i64* %3, align 8
  br i1 %1038, label %block_.L_423bfa, label %block_423bf5

block_423bf5:                                     ; preds = %block_.L_423be3
  %1048 = add i64 %1047, 2071
  br label %block_.L_42440c

block_.L_423bfa:                                  ; preds = %block_.L_423be3
  %1049 = add i64 %996, -24
  %1050 = add i64 %1047, 7
  store i64 %1050, i64* %3, align 8
  %1051 = inttoptr i64 %1049 to i32*
  store i32 0, i32* %1051, align 4
  %.pre183 = load i64, i64* %3, align 8
  br label %block_.L_423c01

block_.L_423c01:                                  ; preds = %block_.L_423c57, %block_.L_423bfa
  %1052 = phi i64 [ %.pre183, %block_.L_423bfa ], [ %1226, %block_.L_423c57 ]
  %1053 = load i64, i64* %RBP.i, align 8
  %1054 = add i64 %1053, -24
  %1055 = add i64 %1052, 4
  store i64 %1055, i64* %3, align 8
  %1056 = inttoptr i64 %1054 to i32*
  %1057 = load i32, i32* %1056, align 4
  %1058 = add i32 %1057, -4
  %1059 = icmp ult i32 %1057, 4
  %1060 = zext i1 %1059 to i8
  store i8 %1060, i8* %12, align 1
  %1061 = and i32 %1058, 255
  %1062 = tail call i32 @llvm.ctpop.i32(i32 %1061)
  %1063 = trunc i32 %1062 to i8
  %1064 = and i8 %1063, 1
  %1065 = xor i8 %1064, 1
  store i8 %1065, i8* %13, align 1
  %1066 = xor i32 %1058, %1057
  %1067 = lshr i32 %1066, 4
  %1068 = trunc i32 %1067 to i8
  %1069 = and i8 %1068, 1
  store i8 %1069, i8* %14, align 1
  %1070 = icmp eq i32 %1058, 0
  %1071 = zext i1 %1070 to i8
  store i8 %1071, i8* %15, align 1
  %1072 = lshr i32 %1058, 31
  %1073 = trunc i32 %1072 to i8
  store i8 %1073, i8* %16, align 1
  %1074 = lshr i32 %1057, 31
  %1075 = xor i32 %1072, %1074
  %1076 = add nuw nsw i32 %1075, %1074
  %1077 = icmp eq i32 %1076, 2
  %1078 = zext i1 %1077 to i8
  store i8 %1078, i8* %17, align 1
  %1079 = icmp ne i8 %1073, 0
  %1080 = xor i1 %1079, %1077
  %.v248 = select i1 %1080, i64 10, i64 105
  %1081 = add i64 %1052, %.v248
  store i64 %1081, i64* %3, align 8
  br i1 %1080, label %block_423c0b, label %block_.L_423c6a

block_423c0b:                                     ; preds = %block_.L_423c01
  %1082 = add i64 %1081, 4
  store i64 %1082, i64* %3, align 8
  %1083 = load i32, i32* %1056, align 4
  %1084 = sext i32 %1083 to i64
  store i64 %1084, i64* %RAX.i1213, align 8
  %1085 = shl nsw i64 %1084, 2
  %1086 = add nsw i64 %1085, 8053168
  %1087 = add i64 %1081, 11
  store i64 %1087, i64* %3, align 8
  %1088 = inttoptr i64 %1086 to i32*
  %1089 = load i32, i32* %1088, align 4
  %1090 = zext i32 %1089 to i64
  store i64 %1090, i64* %RCX.i1210, align 8
  %1091 = add i64 %1053, -1668
  %1092 = add i64 %1081, 17
  store i64 %1092, i64* %3, align 8
  %1093 = inttoptr i64 %1091 to i32*
  store i32 %1089, i32* %1093, align 4
  %1094 = load i64, i64* %RBP.i, align 8
  %1095 = add i64 %1094, -28
  %1096 = load i64, i64* %3, align 8
  %1097 = add i64 %1096, 3
  store i64 %1097, i64* %3, align 8
  %1098 = inttoptr i64 %1095 to i32*
  %1099 = load i32, i32* %1098, align 4
  %1100 = zext i32 %1099 to i64
  store i64 %1100, i64* %RCX.i1210, align 8
  %1101 = add i64 %1094, -1668
  %1102 = add i64 %1096, 9
  store i64 %1102, i64* %3, align 8
  %1103 = inttoptr i64 %1101 to i32*
  %1104 = load i32, i32* %1103, align 4
  %1105 = add i32 %1104, %1099
  %1106 = zext i32 %1105 to i64
  store i64 %1106, i64* %RCX.i1210, align 8
  %1107 = icmp ult i32 %1105, %1099
  %1108 = icmp ult i32 %1105, %1104
  %1109 = or i1 %1107, %1108
  %1110 = zext i1 %1109 to i8
  store i8 %1110, i8* %12, align 1
  %1111 = and i32 %1105, 255
  %1112 = tail call i32 @llvm.ctpop.i32(i32 %1111)
  %1113 = trunc i32 %1112 to i8
  %1114 = and i8 %1113, 1
  %1115 = xor i8 %1114, 1
  store i8 %1115, i8* %13, align 1
  %1116 = xor i32 %1104, %1099
  %1117 = xor i32 %1116, %1105
  %1118 = lshr i32 %1117, 4
  %1119 = trunc i32 %1118 to i8
  %1120 = and i8 %1119, 1
  store i8 %1120, i8* %14, align 1
  %1121 = icmp eq i32 %1105, 0
  %1122 = zext i1 %1121 to i8
  store i8 %1122, i8* %15, align 1
  %1123 = lshr i32 %1105, 31
  %1124 = trunc i32 %1123 to i8
  store i8 %1124, i8* %16, align 1
  %1125 = lshr i32 %1099, 31
  %1126 = lshr i32 %1104, 31
  %1127 = xor i32 %1123, %1125
  %1128 = xor i32 %1123, %1126
  %1129 = add nuw nsw i32 %1127, %1128
  %1130 = icmp eq i32 %1129, 2
  %1131 = zext i1 %1130 to i8
  store i8 %1131, i8* %17, align 1
  %1132 = sext i32 %1105 to i64
  store i64 %1132, i64* %RAX.i1213, align 8
  %1133 = add nsw i64 %1132, 12099168
  %1134 = add i64 %1096, 20
  store i64 %1134, i64* %3, align 8
  %1135 = inttoptr i64 %1133 to i8*
  %1136 = load i8, i8* %1135, align 1
  %1137 = zext i8 %1136 to i64
  store i64 %1137, i64* %RCX.i1210, align 8
  %1138 = zext i8 %1136 to i32
  %1139 = add nsw i32 %1138, -3
  %1140 = icmp ult i8 %1136, 3
  %1141 = zext i1 %1140 to i8
  store i8 %1141, i8* %12, align 1
  %1142 = and i32 %1139, 255
  %1143 = tail call i32 @llvm.ctpop.i32(i32 %1142)
  %1144 = trunc i32 %1143 to i8
  %1145 = and i8 %1144, 1
  %1146 = xor i8 %1145, 1
  store i8 %1146, i8* %13, align 1
  %1147 = xor i32 %1139, %1138
  %1148 = lshr i32 %1147, 4
  %1149 = trunc i32 %1148 to i8
  %1150 = and i8 %1149, 1
  store i8 %1150, i8* %14, align 1
  %1151 = icmp eq i32 %1139, 0
  %1152 = zext i1 %1151 to i8
  store i8 %1152, i8* %15, align 1
  %1153 = lshr i32 %1139, 31
  %1154 = trunc i32 %1153 to i8
  store i8 %1154, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v290 = select i1 %1151, i64 59, i64 29
  %1155 = add i64 %1096, %.v290
  store i64 %1155, i64* %3, align 8
  br i1 %1151, label %block_.L_423c57, label %block_423c39

block_423c39:                                     ; preds = %block_423c0b
  %1156 = add i64 %1094, -1664
  store i64 %1156, i64* %RSI.i1187, align 8
  %1157 = add i64 %1094, -1660
  store i64 %1157, i64* %RDX.i1208, align 8
  %1158 = add i64 %1155, 17
  store i64 %1158, i64* %3, align 8
  %1159 = load i32, i32* %1098, align 4
  %1160 = zext i32 %1159 to i64
  store i64 %1160, i64* %RAX.i1213, align 8
  %1161 = add i64 %1155, 23
  store i64 %1161, i64* %3, align 8
  %1162 = load i32, i32* %1103, align 4
  %1163 = add i32 %1162, %1159
  %1164 = zext i32 %1163 to i64
  store i64 %1164, i64* %RAX.i1213, align 8
  %1165 = icmp ult i32 %1163, %1159
  %1166 = icmp ult i32 %1163, %1162
  %1167 = or i1 %1165, %1166
  %1168 = zext i1 %1167 to i8
  store i8 %1168, i8* %12, align 1
  %1169 = and i32 %1163, 255
  %1170 = tail call i32 @llvm.ctpop.i32(i32 %1169)
  %1171 = trunc i32 %1170 to i8
  %1172 = and i8 %1171, 1
  %1173 = xor i8 %1172, 1
  store i8 %1173, i8* %13, align 1
  %1174 = xor i32 %1162, %1159
  %1175 = xor i32 %1174, %1163
  %1176 = lshr i32 %1175, 4
  %1177 = trunc i32 %1176 to i8
  %1178 = and i8 %1177, 1
  store i8 %1178, i8* %14, align 1
  %1179 = icmp eq i32 %1163, 0
  %1180 = zext i1 %1179 to i8
  store i8 %1180, i8* %15, align 1
  %1181 = lshr i32 %1163, 31
  %1182 = trunc i32 %1181 to i8
  store i8 %1182, i8* %16, align 1
  %1183 = lshr i32 %1159, 31
  %1184 = lshr i32 %1162, 31
  %1185 = xor i32 %1181, %1183
  %1186 = xor i32 %1181, %1184
  %1187 = add nuw nsw i32 %1185, %1186
  %1188 = icmp eq i32 %1187, 2
  %1189 = zext i1 %1188 to i8
  store i8 %1189, i8* %17, align 1
  store i64 %1164, i64* %RDI.i1199, align 8
  %1190 = add i64 %1155, 2087
  %1191 = add i64 %1155, 30
  %1192 = load i64, i64* %6, align 8
  %1193 = add i64 %1192, -8
  %1194 = inttoptr i64 %1193 to i64*
  store i64 %1191, i64* %1194, align 8
  store i64 %1193, i64* %6, align 8
  store i64 %1190, i64* %3, align 8
  %call2_423c52 = tail call %struct.Memory* @sub_424460.analyze_neighbor(%struct.State* nonnull %0, i64 %1190, %struct.Memory* %MEMORY.12)
  %.pre210 = load i64, i64* %3, align 8
  %.pre211 = load i64, i64* %RBP.i, align 8
  br label %block_.L_423c57

block_.L_423c57:                                  ; preds = %block_423c39, %block_423c0b
  %1195 = phi i64 [ %.pre211, %block_423c39 ], [ %1094, %block_423c0b ]
  %1196 = phi i64 [ %.pre210, %block_423c39 ], [ %1155, %block_423c0b ]
  %1197 = add i64 %1195, -24
  %1198 = add i64 %1196, 8
  store i64 %1198, i64* %3, align 8
  %1199 = inttoptr i64 %1197 to i32*
  %1200 = load i32, i32* %1199, align 4
  %1201 = add i32 %1200, 1
  %1202 = zext i32 %1201 to i64
  store i64 %1202, i64* %RAX.i1213, align 8
  %1203 = icmp eq i32 %1200, -1
  %1204 = icmp eq i32 %1201, 0
  %1205 = or i1 %1203, %1204
  %1206 = zext i1 %1205 to i8
  store i8 %1206, i8* %12, align 1
  %1207 = and i32 %1201, 255
  %1208 = tail call i32 @llvm.ctpop.i32(i32 %1207)
  %1209 = trunc i32 %1208 to i8
  %1210 = and i8 %1209, 1
  %1211 = xor i8 %1210, 1
  store i8 %1211, i8* %13, align 1
  %1212 = xor i32 %1201, %1200
  %1213 = lshr i32 %1212, 4
  %1214 = trunc i32 %1213 to i8
  %1215 = and i8 %1214, 1
  store i8 %1215, i8* %14, align 1
  %1216 = zext i1 %1204 to i8
  store i8 %1216, i8* %15, align 1
  %1217 = lshr i32 %1201, 31
  %1218 = trunc i32 %1217 to i8
  store i8 %1218, i8* %16, align 1
  %1219 = lshr i32 %1200, 31
  %1220 = xor i32 %1217, %1219
  %1221 = add nuw nsw i32 %1220, %1217
  %1222 = icmp eq i32 %1221, 2
  %1223 = zext i1 %1222 to i8
  store i8 %1223, i8* %17, align 1
  %1224 = add i64 %1196, 14
  store i64 %1224, i64* %3, align 8
  store i32 %1201, i32* %1199, align 4
  %1225 = load i64, i64* %3, align 8
  %1226 = add i64 %1225, -100
  store i64 %1226, i64* %3, align 8
  br label %block_.L_423c01

block_.L_423c6a:                                  ; preds = %block_.L_423c01
  %1227 = add i64 %1053, -1660
  %1228 = add i64 %1081, 7
  store i64 %1228, i64* %3, align 8
  %1229 = inttoptr i64 %1227 to i32*
  %1230 = load i32, i32* %1229, align 4
  store i8 0, i8* %12, align 1
  %1231 = and i32 %1230, 255
  %1232 = tail call i32 @llvm.ctpop.i32(i32 %1231)
  %1233 = trunc i32 %1232 to i8
  %1234 = and i8 %1233, 1
  %1235 = xor i8 %1234, 1
  store i8 %1235, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1236 = icmp eq i32 %1230, 0
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %15, align 1
  %1238 = lshr i32 %1230, 31
  %1239 = trunc i32 %1238 to i8
  store i8 %1239, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v249 = select i1 %1236, i64 26, i64 13
  %1240 = add i64 %1081, %.v249
  store i64 %1240, i64* %3, align 8
  br i1 %1236, label %block_.L_423c84, label %block_423c77

block_423c77:                                     ; preds = %block_.L_423c6a
  %1241 = add i64 %1053, -1664
  %1242 = add i64 %1240, 7
  store i64 %1242, i64* %3, align 8
  %1243 = inttoptr i64 %1241 to i32*
  %1244 = load i32, i32* %1243, align 4
  store i8 0, i8* %12, align 1
  %1245 = and i32 %1244, 255
  %1246 = tail call i32 @llvm.ctpop.i32(i32 %1245)
  %1247 = trunc i32 %1246 to i8
  %1248 = and i8 %1247, 1
  %1249 = xor i8 %1248, 1
  store i8 %1249, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1250 = icmp eq i32 %1244, 0
  %1251 = zext i1 %1250 to i8
  store i8 %1251, i8* %15, align 1
  %1252 = lshr i32 %1244, 31
  %1253 = trunc i32 %1252 to i8
  store i8 %1253, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v250 = select i1 %1250, i64 13, i64 18
  %1254 = add i64 %1240, %.v250
  store i64 %1254, i64* %3, align 8
  br i1 %1250, label %block_.L_423c84, label %block_.L_423c89

block_.L_423c84:                                  ; preds = %block_423c77, %block_.L_423c6a
  %1255 = phi i64 [ %1254, %block_423c77 ], [ %1240, %block_.L_423c6a ]
  %1256 = add i64 %1255, 1928
  br label %block_.L_42440c

block_.L_423c89:                                  ; preds = %block_423c77
  %1257 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1258 = and i32 %1257, 16384
  %1259 = zext i32 %1258 to i64
  store i64 %1259, i64* %RAX.i1213, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %.lobit228 = lshr exact i32 %1258, 14
  %1260 = trunc i32 %.lobit228 to i8
  %1261 = xor i8 %1260, 1
  store i8 %1261, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1262 = icmp eq i8 %1261, 0
  %.v251 = select i1 %1262, i64 26, i64 21
  %1263 = add i64 %1254, %.v251
  store i64 %1263, i64* %3, align 8
  br i1 %1262, label %block_.L_423ca3, label %block_423c9e

block_423c9e:                                     ; preds = %block_.L_423c89
  %1264 = add i64 %1263, 31
  store i64 %1264, i64* %3, align 8
  br label %block_.L_423cbd

block_.L_423ca3:                                  ; preds = %block_.L_423c89
  store i64 ptrtoint (%G__0x57ba7e_type* @G__0x57ba7e to i64), i64* %RDI.i1199, align 8
  %1265 = add i64 %1053, -28
  %1266 = add i64 %1263, 13
  store i64 %1266, i64* %3, align 8
  %1267 = inttoptr i64 %1265 to i32*
  %1268 = load i32, i32* %1267, align 4
  %1269 = zext i32 %1268 to i64
  store i64 %1269, i64* %RSI.i1187, align 8
  store i8 0, i8* %AL.i815, align 1
  %1270 = add i64 %1263, 188685
  %1271 = add i64 %1263, 20
  %1272 = load i64, i64* %6, align 8
  %1273 = add i64 %1272, -8
  %1274 = inttoptr i64 %1273 to i64*
  store i64 %1271, i64* %1274, align 8
  store i64 %1273, i64* %6, align 8
  store i64 %1270, i64* %3, align 8
  %call2_423cb2 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1270, %struct.Memory* %MEMORY.12)
  %1275 = load i64, i64* %RBP.i, align 8
  %1276 = add i64 %1275, -1696
  %1277 = load i32, i32* %EAX.i1212, align 4
  %1278 = load i64, i64* %3, align 8
  %1279 = add i64 %1278, 6
  store i64 %1279, i64* %3, align 8
  %1280 = inttoptr i64 %1276 to i32*
  store i32 %1277, i32* %1280, align 4
  %.pre184 = load i64, i64* %RBP.i, align 8
  %.pre185 = load i64, i64* %3, align 8
  br label %block_.L_423cbd

block_.L_423cbd:                                  ; preds = %block_.L_423ca3, %block_423c9e
  %1281 = phi i64 [ %.pre185, %block_.L_423ca3 ], [ %1264, %block_423c9e ]
  %1282 = phi i64 [ %.pre184, %block_.L_423ca3 ], [ %1053, %block_423c9e ]
  %MEMORY.16 = phi %struct.Memory* [ %call2_423cb2, %block_.L_423ca3 ], [ %MEMORY.12, %block_423c9e ]
  %1283 = add i64 %1282, -28
  %1284 = add i64 %1281, 3
  store i64 %1284, i64* %3, align 8
  %1285 = inttoptr i64 %1283 to i32*
  %1286 = load i32, i32* %1285, align 4
  %1287 = zext i32 %1286 to i64
  store i64 %1287, i64* %RDI.i1199, align 8
  %1288 = add i64 %1282, -20
  %1289 = add i64 %1281, 6
  store i64 %1289, i64* %3, align 8
  %1290 = inttoptr i64 %1288 to i32*
  %1291 = load i32, i32* %1290, align 4
  %1292 = zext i32 %1291 to i64
  store i64 %1292, i64* %RSI.i1187, align 8
  %1293 = add i64 %1281, 294771
  %1294 = add i64 %1281, 11
  %1295 = load i64, i64* %6, align 8
  %1296 = add i64 %1295, -8
  %1297 = inttoptr i64 %1296 to i64*
  store i64 %1294, i64* %1297, align 8
  store i64 %1296, i64* %6, align 8
  store i64 %1293, i64* %3, align 8
  %call2_423cc3 = tail call %struct.Memory* @sub_46bc30.safe_move(%struct.State* nonnull %0, i64 %1293, %struct.Memory* %MEMORY.16)
  %1298 = load i32, i32* %EAX.i1212, align 4
  %1299 = load i64, i64* %3, align 8
  %1300 = add i32 %1298, -5
  %1301 = icmp ult i32 %1298, 5
  %1302 = zext i1 %1301 to i8
  store i8 %1302, i8* %12, align 1
  %1303 = and i32 %1300, 255
  %1304 = tail call i32 @llvm.ctpop.i32(i32 %1303)
  %1305 = trunc i32 %1304 to i8
  %1306 = and i8 %1305, 1
  %1307 = xor i8 %1306, 1
  store i8 %1307, i8* %13, align 1
  %1308 = xor i32 %1300, %1298
  %1309 = lshr i32 %1308, 4
  %1310 = trunc i32 %1309 to i8
  %1311 = and i8 %1310, 1
  store i8 %1311, i8* %14, align 1
  %1312 = icmp eq i32 %1300, 0
  %1313 = zext i1 %1312 to i8
  store i8 %1313, i8* %15, align 1
  %1314 = lshr i32 %1300, 31
  %1315 = trunc i32 %1314 to i8
  store i8 %1315, i8* %16, align 1
  %1316 = lshr i32 %1298, 31
  %1317 = xor i32 %1314, %1316
  %1318 = add nuw nsw i32 %1317, %1316
  %1319 = icmp eq i32 %1318, 2
  %1320 = zext i1 %1319 to i8
  store i8 %1320, i8* %17, align 1
  %.v252 = select i1 %1312, i64 9, i64 331
  %1321 = add i64 %1299, %.v252
  store i64 %1321, i64* %3, align 8
  br i1 %1312, label %block_423cd1, label %block_.L_423e13

block_423cd1:                                     ; preds = %block_.L_423cbd
  %1322 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1323 = and i32 %1322, 16384
  %1324 = zext i32 %1323 to i64
  store i64 %1324, i64* %RAX.i1213, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %.lobit229 = lshr exact i32 %1323, 14
  %1325 = trunc i32 %.lobit229 to i8
  %1326 = xor i8 %1325, 1
  store i8 %1326, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1327 = icmp eq i8 %1326, 0
  %.v284 = select i1 %1327, i64 26, i64 21
  %1328 = add i64 %1321, %.v284
  store i64 %1328, i64* %3, align 8
  br i1 %1327, label %block_.L_423ceb, label %block_423ce6

block_423ce6:                                     ; preds = %block_423cd1
  %1329 = add i64 %1328, 28
  store i64 %1329, i64* %3, align 8
  br label %block_.L_423d02

block_.L_423ceb:                                  ; preds = %block_423cd1
  store i64 ptrtoint (%G__0x57baa1_type* @G__0x57baa1 to i64), i64* %RDI.i1199, align 8
  store i8 0, i8* %AL.i815, align 1
  %1330 = add i64 %1328, 188613
  %1331 = add i64 %1328, 17
  %1332 = load i64, i64* %6, align 8
  %1333 = add i64 %1332, -8
  %1334 = inttoptr i64 %1333 to i64*
  store i64 %1331, i64* %1334, align 8
  store i64 %1333, i64* %6, align 8
  store i64 %1330, i64* %3, align 8
  %call2_423cf7 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1330, %struct.Memory* %call2_423cc3)
  %1335 = load i64, i64* %RBP.i, align 8
  %1336 = add i64 %1335, -1700
  %1337 = load i32, i32* %EAX.i1212, align 4
  %1338 = load i64, i64* %3, align 8
  %1339 = add i64 %1338, 6
  store i64 %1339, i64* %3, align 8
  %1340 = inttoptr i64 %1336 to i32*
  store i32 %1337, i32* %1340, align 4
  %.pre186 = load i64, i64* %3, align 8
  br label %block_.L_423d02

block_.L_423d02:                                  ; preds = %block_.L_423ceb, %block_423ce6
  %1341 = phi i64 [ %.pre186, %block_.L_423ceb ], [ %1329, %block_423ce6 ]
  %MEMORY.17 = phi %struct.Memory* [ %call2_423cf7, %block_.L_423ceb ], [ %call2_423cc3, %block_423ce6 ]
  %1342 = load i64, i64* %RBP.i, align 8
  %1343 = add i64 %1342, -36
  store i64 %1343, i64* %RDX.i1208, align 8
  %1344 = add i64 %1342, -28
  %1345 = add i64 %1341, 7
  store i64 %1345, i64* %3, align 8
  %1346 = inttoptr i64 %1344 to i32*
  %1347 = load i32, i32* %1346, align 4
  %1348 = zext i32 %1347 to i64
  store i64 %1348, i64* %RDI.i1199, align 8
  %1349 = add i64 %1342, -20
  %1350 = add i64 %1341, 10
  store i64 %1350, i64* %3, align 8
  %1351 = inttoptr i64 %1349 to i32*
  %1352 = load i32, i32* %1351, align 4
  %1353 = zext i32 %1352 to i64
  store i64 %1353, i64* %RSI.i1187, align 8
  %1354 = add i64 %1341, 2494
  %1355 = add i64 %1341, 15
  %1356 = load i64, i64* %6, align 8
  %1357 = add i64 %1356, -8
  %1358 = inttoptr i64 %1357 to i64*
  store i64 %1355, i64* %1358, align 8
  store i64 %1357, i64* %6, align 8
  store i64 %1354, i64* %3, align 8
  %call2_423d0c = tail call %struct.Memory* @sub_4246c0.filllib_confirm_safety(%struct.State* nonnull %0, i64 %1354, %struct.Memory* %MEMORY.17)
  %1359 = load i32, i32* %EAX.i1212, align 4
  %1360 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %1361 = and i32 %1359, 255
  %1362 = tail call i32 @llvm.ctpop.i32(i32 %1361)
  %1363 = trunc i32 %1362 to i8
  %1364 = and i8 %1363, 1
  %1365 = xor i8 %1364, 1
  store i8 %1365, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1366 = icmp eq i32 %1359, 0
  %1367 = zext i1 %1366 to i8
  store i8 %1367, i8* %15, align 1
  %1368 = lshr i32 %1359, 31
  %1369 = trunc i32 %1368 to i8
  store i8 %1369, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v285 = select i1 %1366, i64 79, i64 9
  %1370 = add i64 %1360, %.v285
  store i64 %1370, i64* %3, align 8
  br i1 %1366, label %block_.L_423d60, label %block_423d1a

block_423d1a:                                     ; preds = %block_.L_423d02
  %1371 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1372 = and i32 %1371, 16384
  %1373 = zext i32 %1372 to i64
  store i64 %1373, i64* %RAX.i1213, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %.lobit230 = lshr exact i32 %1372, 14
  %1374 = trunc i32 %.lobit230 to i8
  %1375 = xor i8 %1374, 1
  store i8 %1375, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1376 = icmp eq i8 %1375, 0
  %.v286 = select i1 %1376, i64 26, i64 21
  %1377 = add i64 %1370, %.v286
  store i64 %1377, i64* %3, align 8
  br i1 %1376, label %block_.L_423d34, label %block_423d2f

block_423d2f:                                     ; preds = %block_423d1a
  %1378 = add i64 %1377, 28
  store i64 %1378, i64* %3, align 8
  br label %block_.L_423d4b

block_.L_423d34:                                  ; preds = %block_423d1a
  store i64 ptrtoint (%G__0x57babc_type* @G__0x57babc to i64), i64* %RDI.i1199, align 8
  store i8 0, i8* %AL.i815, align 1
  %1379 = add i64 %1377, 188540
  %1380 = add i64 %1377, 17
  %1381 = load i64, i64* %6, align 8
  %1382 = add i64 %1381, -8
  %1383 = inttoptr i64 %1382 to i64*
  store i64 %1380, i64* %1383, align 8
  store i64 %1382, i64* %6, align 8
  store i64 %1379, i64* %3, align 8
  %call2_423d40 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1379, %struct.Memory* %call2_423d0c)
  %1384 = load i64, i64* %RBP.i, align 8
  %1385 = add i64 %1384, -1704
  %1386 = load i32, i32* %EAX.i1212, align 4
  %1387 = load i64, i64* %3, align 8
  %1388 = add i64 %1387, 6
  store i64 %1388, i64* %3, align 8
  %1389 = inttoptr i64 %1385 to i32*
  store i32 %1386, i32* %1389, align 4
  %.pre187 = load i64, i64* %3, align 8
  br label %block_.L_423d4b

block_.L_423d4b:                                  ; preds = %block_.L_423d34, %block_423d2f
  %1390 = phi i64 [ %.pre187, %block_.L_423d34 ], [ %1378, %block_423d2f ]
  %MEMORY.18 = phi %struct.Memory* [ %call2_423d40, %block_.L_423d34 ], [ %call2_423d0c, %block_423d2f ]
  %1391 = load i64, i64* %RBP.i, align 8
  %1392 = add i64 %1391, -28
  %1393 = add i64 %1390, 3
  store i64 %1393, i64* %3, align 8
  %1394 = inttoptr i64 %1392 to i32*
  %1395 = load i32, i32* %1394, align 4
  %1396 = zext i32 %1395 to i64
  store i64 %1396, i64* %RAX.i1213, align 8
  %1397 = add i64 %1391, -16
  %1398 = add i64 %1390, 7
  store i64 %1398, i64* %3, align 8
  %1399 = inttoptr i64 %1397 to i64*
  %1400 = load i64, i64* %1399, align 8
  store i64 %1400, i64* %RCX.i1210, align 8
  %1401 = add i64 %1390, 9
  store i64 %1401, i64* %3, align 8
  %1402 = inttoptr i64 %1400 to i32*
  store i32 %1395, i32* %1402, align 4
  %1403 = load i64, i64* %RBP.i, align 8
  %1404 = add i64 %1403, -4
  %1405 = load i64, i64* %3, align 8
  %1406 = add i64 %1405, 7
  store i64 %1406, i64* %3, align 8
  %1407 = inttoptr i64 %1404 to i32*
  store i32 1, i32* %1407, align 4
  %1408 = load i64, i64* %3, align 8
  %1409 = add i64 %1408, 1783
  store i64 %1409, i64* %3, align 8
  br label %block_.L_424452

block_.L_423d60:                                  ; preds = %block_.L_423d02
  %1410 = load i64, i64* %RBP.i, align 8
  %1411 = add i64 %1410, -36
  %1412 = add i64 %1370, 4
  store i64 %1412, i64* %3, align 8
  %1413 = inttoptr i64 %1411 to i32*
  %1414 = load i32, i32* %1413, align 4
  %1415 = icmp eq i32 %1414, 0
  %.v287 = select i1 %1415, i64 83, i64 10
  %1416 = add i64 %1370, %.v287
  %1417 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1418 = and i32 %1417, 16384
  %1419 = zext i32 %1418 to i64
  store i64 %1419, i64* %RAX.i1213, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %.lobit231 = lshr exact i32 %1418, 14
  %1420 = trunc i32 %.lobit231 to i8
  %1421 = xor i8 %1420, 1
  store i8 %1421, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1422 = icmp eq i8 %1421, 0
  %.v288 = select i1 %1422, i64 26, i64 21
  %1423 = add i64 %1416, %.v288
  store i64 %1423, i64* %3, align 8
  br i1 %1415, label %block_.L_423db3, label %block_423d6a

block_423d6a:                                     ; preds = %block_.L_423d60
  br i1 %1422, label %block_.L_423d84, label %block_423d7f

block_423d7f:                                     ; preds = %block_423d6a
  %1424 = add i64 %1423, 31
  store i64 %1424, i64* %3, align 8
  br label %block_.L_423d9e

block_.L_423d84:                                  ; preds = %block_423d6a
  store i64 ptrtoint (%G__0x57bad8_type* @G__0x57bad8 to i64), i64* %RDI.i1199, align 8
  %1425 = add i64 %1423, 13
  store i64 %1425, i64* %3, align 8
  %1426 = load i32, i32* %1413, align 4
  %1427 = zext i32 %1426 to i64
  store i64 %1427, i64* %RSI.i1187, align 8
  store i8 0, i8* %AL.i815, align 1
  %1428 = add i64 %1423, 188460
  %1429 = add i64 %1423, 20
  %1430 = load i64, i64* %6, align 8
  %1431 = add i64 %1430, -8
  %1432 = inttoptr i64 %1431 to i64*
  store i64 %1429, i64* %1432, align 8
  store i64 %1431, i64* %6, align 8
  store i64 %1428, i64* %3, align 8
  %call2_423d93 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1428, %struct.Memory* %call2_423d0c)
  %1433 = load i64, i64* %RBP.i, align 8
  %1434 = add i64 %1433, -1708
  %1435 = load i32, i32* %EAX.i1212, align 4
  %1436 = load i64, i64* %3, align 8
  %1437 = add i64 %1436, 6
  store i64 %1437, i64* %3, align 8
  %1438 = inttoptr i64 %1434 to i32*
  store i32 %1435, i32* %1438, align 4
  %.pre188 = load i64, i64* %RBP.i, align 8
  %.pre189 = load i64, i64* %3, align 8
  br label %block_.L_423d9e

block_.L_423d9e:                                  ; preds = %block_.L_423d84, %block_423d7f
  %1439 = phi i64 [ %.pre189, %block_.L_423d84 ], [ %1424, %block_423d7f ]
  %1440 = phi i64 [ %.pre188, %block_.L_423d84 ], [ %1410, %block_423d7f ]
  %MEMORY.19 = phi %struct.Memory* [ %call2_423d93, %block_.L_423d84 ], [ %call2_423d0c, %block_423d7f ]
  %1441 = add i64 %1440, -36
  %1442 = add i64 %1439, 3
  store i64 %1442, i64* %3, align 8
  %1443 = inttoptr i64 %1441 to i32*
  %1444 = load i32, i32* %1443, align 4
  %1445 = zext i32 %1444 to i64
  store i64 %1445, i64* %RAX.i1213, align 8
  %1446 = add i64 %1440, -16
  %1447 = add i64 %1439, 7
  store i64 %1447, i64* %3, align 8
  %1448 = inttoptr i64 %1446 to i64*
  %1449 = load i64, i64* %1448, align 8
  store i64 %1449, i64* %RCX.i1210, align 8
  %1450 = add i64 %1439, 9
  store i64 %1450, i64* %3, align 8
  %1451 = inttoptr i64 %1449 to i32*
  store i32 %1444, i32* %1451, align 4
  %1452 = load i64, i64* %RBP.i, align 8
  %1453 = add i64 %1452, -4
  %1454 = load i64, i64* %3, align 8
  %1455 = add i64 %1454, 7
  store i64 %1455, i64* %3, align 8
  %1456 = inttoptr i64 %1453 to i32*
  store i32 1, i32* %1456, align 4
  %1457 = load i64, i64* %3, align 8
  %1458 = add i64 %1457, 1700
  store i64 %1458, i64* %3, align 8
  br label %block_.L_424452

block_.L_423db3:                                  ; preds = %block_.L_423d60
  br i1 %1422, label %block_.L_423dcd, label %block_423dc8

block_423dc8:                                     ; preds = %block_.L_423db3
  %1459 = add i64 %1423, 28
  store i64 %1459, i64* %3, align 8
  br label %block_.L_423de4

block_.L_423dcd:                                  ; preds = %block_.L_423db3
  store i64 ptrtoint (%G__0x57bb09_type* @G__0x57bb09 to i64), i64* %RDI.i1199, align 8
  store i8 0, i8* %AL.i815, align 1
  %1460 = add i64 %1423, 188387
  %1461 = add i64 %1423, 17
  %1462 = load i64, i64* %6, align 8
  %1463 = add i64 %1462, -8
  %1464 = inttoptr i64 %1463 to i64*
  store i64 %1461, i64* %1464, align 8
  store i64 %1463, i64* %6, align 8
  store i64 %1460, i64* %3, align 8
  %call2_423dd9 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1460, %struct.Memory* %call2_423d0c)
  %1465 = load i64, i64* %RBP.i, align 8
  %1466 = add i64 %1465, -1712
  %1467 = load i32, i32* %EAX.i1212, align 4
  %1468 = load i64, i64* %3, align 8
  %1469 = add i64 %1468, 6
  store i64 %1469, i64* %3, align 8
  %1470 = inttoptr i64 %1466 to i32*
  store i32 %1467, i32* %1470, align 4
  %.pre190 = load i64, i64* %3, align 8
  br label %block_.L_423de4

block_.L_423de4:                                  ; preds = %block_.L_423dcd, %block_423dc8
  %1471 = phi i64 [ %.pre190, %block_.L_423dcd ], [ %1459, %block_423dc8 ]
  %MEMORY.20 = phi %struct.Memory* [ %call2_423dd9, %block_.L_423dcd ], [ %call2_423d0c, %block_423dc8 ]
  %1472 = load i32, i32* bitcast (%G_0xab0f28_type* @G_0xab0f28 to i32*), align 8
  store i8 0, i8* %12, align 1
  %1473 = and i32 %1472, 255
  %1474 = tail call i32 @llvm.ctpop.i32(i32 %1473)
  %1475 = trunc i32 %1474 to i8
  %1476 = and i8 %1475, 1
  %1477 = xor i8 %1476, 1
  store i8 %1477, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1478 = icmp eq i32 %1472, 0
  %1479 = zext i1 %1478 to i8
  store i8 %1479, i8* %15, align 1
  %1480 = lshr i32 %1472, 31
  %1481 = trunc i32 %1480 to i8
  store i8 %1481, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v289 = select i1 %1478, i64 14, i64 19
  %1482 = add i64 %1471, %.v289
  store i64 %1482, i64* %3, align 8
  br i1 %1478, label %block_423df2, label %block_.L_423df7

block_423df2:                                     ; preds = %block_.L_423de4
  %1483 = add i64 %1482, 28
  store i64 %1483, i64* %3, align 8
  br label %block_.L_423e0e

block_.L_423df7:                                  ; preds = %block_.L_423de4
  store i64 ptrtoint (%G__0x57bb34_type* @G__0x57bb34 to i64), i64* %RDI.i1199, align 8
  store i8 0, i8* %AL.i815, align 1
  %1484 = add i64 %1482, 188345
  %1485 = add i64 %1482, 17
  %1486 = load i64, i64* %6, align 8
  %1487 = add i64 %1486, -8
  %1488 = inttoptr i64 %1487 to i64*
  store i64 %1485, i64* %1488, align 8
  store i64 %1487, i64* %6, align 8
  store i64 %1484, i64* %3, align 8
  %call2_423e03 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1484, %struct.Memory* %MEMORY.20)
  %1489 = load i64, i64* %RBP.i, align 8
  %1490 = add i64 %1489, -1716
  %1491 = load i32, i32* %EAX.i1212, align 4
  %1492 = load i64, i64* %3, align 8
  %1493 = add i64 %1492, 6
  store i64 %1493, i64* %3, align 8
  %1494 = inttoptr i64 %1490 to i32*
  store i32 %1491, i32* %1494, align 4
  %.pre191 = load i64, i64* %3, align 8
  br label %block_.L_423e0e

block_.L_423e0e:                                  ; preds = %block_.L_423df7, %block_423df2
  %1495 = phi i64 [ %.pre191, %block_.L_423df7 ], [ %1483, %block_423df2 ]
  %MEMORY.21 = phi %struct.Memory* [ %call2_423e03, %block_.L_423df7 ], [ %MEMORY.20, %block_423df2 ]
  %1496 = add i64 %1495, 1534
  br label %block_.L_42440c

block_.L_423e13:                                  ; preds = %block_.L_423cbd
  store i64 ptrtoint (%G__0x57bb62_type* @G__0x57bb62 to i64), i64* %RDX.i1208, align 8
  store i64 0, i64* %RAX.i1213, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 1, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  store i8 0, i8* %14, align 1
  %1497 = load i64, i64* %RBP.i, align 8
  %1498 = add i64 %1497, -28
  %1499 = add i64 %1321, 15
  store i64 %1499, i64* %3, align 8
  %1500 = inttoptr i64 %1498 to i32*
  %1501 = load i32, i32* %1500, align 4
  %1502 = zext i32 %1501 to i64
  store i64 %1502, i64* %RDI.i1199, align 8
  %1503 = add i64 %1497, -20
  %1504 = add i64 %1321, 18
  store i64 %1504, i64* %3, align 8
  %1505 = inttoptr i64 %1503 to i32*
  %1506 = load i32, i32* %1505, align 4
  %1507 = zext i32 %1506 to i64
  store i64 %1507, i64* %RSI.i1187, align 8
  store i64 0, i64* %RCX.i1210, align 8
  store i64 0, i64* %R8.i1205, align 8
  store i64 0, i64* %956, align 8
  %1508 = add i64 %1321, -110563
  %1509 = add i64 %1321, 31
  %1510 = load i64, i64* %6, align 8
  %1511 = add i64 %1510, -8
  %1512 = inttoptr i64 %1511 to i64*
  store i64 %1509, i64* %1512, align 8
  store i64 %1511, i64* %6, align 8
  store i64 %1508, i64* %3, align 8
  %call2_423e2d = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %1508, %struct.Memory* %call2_423cc3)
  %1513 = load i32, i32* %EAX.i1212, align 4
  %1514 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %1515 = and i32 %1513, 255
  %1516 = tail call i32 @llvm.ctpop.i32(i32 %1515)
  %1517 = trunc i32 %1516 to i8
  %1518 = and i8 %1517, 1
  %1519 = xor i8 %1518, 1
  store i8 %1519, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1520 = icmp eq i32 %1513, 0
  %1521 = zext i1 %1520 to i8
  store i8 %1521, i8* %15, align 1
  %1522 = lshr i32 %1513, 31
  %1523 = trunc i32 %1522 to i8
  store i8 %1523, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v253 = select i1 %1520, i64 500, i64 9
  %1524 = add i64 %1514, %.v253
  store i64 %1524, i64* %3, align 8
  br i1 %1520, label %block_.L_424026, label %block_423e3b

block_423e3b:                                     ; preds = %block_.L_423e13
  %1525 = add i64 %1524, -90331
  %1526 = add i64 %1524, 5
  %1527 = load i64, i64* %6, align 8
  %1528 = add i64 %1527, -8
  %1529 = inttoptr i64 %1528 to i64*
  store i64 %1526, i64* %1529, align 8
  store i64 %1528, i64* %6, align 8
  store i64 %1525, i64* %3, align 8
  %call2_423e3b = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %1525, %struct.Memory* %call2_423e2d)
  %1530 = load i64, i64* %3, align 8
  %1531 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1532 = and i32 %1531, 16384
  %1533 = zext i32 %1532 to i64
  store i64 %1533, i64* %RAX.i1213, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %.lobit232 = lshr exact i32 %1532, 14
  %1534 = trunc i32 %.lobit232 to i8
  %1535 = xor i8 %1534, 1
  store i8 %1535, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1536 = icmp eq i8 %1535, 0
  %.v254 = select i1 %1536, i64 26, i64 21
  %1537 = add i64 %1530, %.v254
  store i64 %1537, i64* %3, align 8
  br i1 %1536, label %block_.L_423e5a, label %block_423e55

block_423e55:                                     ; preds = %block_423e3b
  %1538 = add i64 %1537, 28
  store i64 %1538, i64* %3, align 8
  br label %block_.L_423e71

block_.L_423e5a:                                  ; preds = %block_423e3b
  store i64 ptrtoint (%G__0x57bb6f_type* @G__0x57bb6f to i64), i64* %RDI.i1199, align 8
  store i8 0, i8* %AL.i815, align 1
  %1539 = add i64 %1537, 188246
  %1540 = add i64 %1537, 17
  %1541 = load i64, i64* %6, align 8
  %1542 = add i64 %1541, -8
  %1543 = inttoptr i64 %1542 to i64*
  store i64 %1540, i64* %1543, align 8
  store i64 %1542, i64* %6, align 8
  store i64 %1539, i64* %3, align 8
  %call2_423e66 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1539, %struct.Memory* %call2_423e3b)
  %1544 = load i64, i64* %RBP.i, align 8
  %1545 = add i64 %1544, -1720
  %1546 = load i32, i32* %EAX.i1212, align 4
  %1547 = load i64, i64* %3, align 8
  %1548 = add i64 %1547, 6
  store i64 %1548, i64* %3, align 8
  %1549 = inttoptr i64 %1545 to i32*
  store i32 %1546, i32* %1549, align 4
  %.pre192 = load i64, i64* %3, align 8
  br label %block_.L_423e71

block_.L_423e71:                                  ; preds = %block_.L_423e5a, %block_423e55
  %1550 = phi i64 [ %.pre192, %block_.L_423e5a ], [ %1538, %block_423e55 ]
  %MEMORY.22 = phi %struct.Memory* [ %call2_423e66, %block_.L_423e5a ], [ %call2_423e3b, %block_423e55 ]
  %1551 = load i64, i64* %RBP.i, align 8
  %1552 = add i64 %1551, -28
  %1553 = add i64 %1550, 3
  store i64 %1553, i64* %3, align 8
  %1554 = inttoptr i64 %1552 to i32*
  %1555 = load i32, i32* %1554, align 4
  %1556 = zext i32 %1555 to i64
  store i64 %1556, i64* %RDI.i1199, align 8
  %1557 = add i64 %1551, -20
  %1558 = add i64 %1550, 6
  store i64 %1558, i64* %3, align 8
  %1559 = inttoptr i64 %1557 to i32*
  %1560 = load i32, i32* %1559, align 4
  %1561 = zext i32 %1560 to i64
  store i64 %1561, i64* %RSI.i1187, align 8
  %1562 = add i64 %1551, -16
  %1563 = add i64 %1550, 10
  store i64 %1563, i64* %3, align 8
  %1564 = inttoptr i64 %1562 to i64*
  %1565 = load i64, i64* %1564, align 8
  store i64 %1565, i64* %RDX.i1208, align 8
  %1566 = add i64 %1550, 2927
  %1567 = add i64 %1550, 15
  %1568 = load i64, i64* %6, align 8
  %1569 = add i64 %1568, -8
  %1570 = inttoptr i64 %1569 to i64*
  store i64 %1567, i64* %1570, align 8
  store i64 %1569, i64* %6, align 8
  store i64 %1566, i64* %3, align 8
  %call2_423e7b = tail call %struct.Memory* @sub_4249e0.find_backfilling_move(%struct.State* nonnull %0, i64 %1566, %struct.Memory* %MEMORY.22)
  %1571 = load i32, i32* %EAX.i1212, align 4
  %1572 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %1573 = and i32 %1571, 255
  %1574 = tail call i32 @llvm.ctpop.i32(i32 %1573)
  %1575 = trunc i32 %1574 to i8
  %1576 = and i8 %1575, 1
  %1577 = xor i8 %1576, 1
  store i8 %1577, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1578 = icmp eq i32 %1571, 0
  %1579 = zext i1 %1578 to i8
  store i8 %1579, i8* %15, align 1
  %1580 = lshr i32 %1571, 31
  %1581 = trunc i32 %1580 to i8
  store i8 %1581, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v255 = select i1 %1578, i64 244, i64 9
  %1582 = add i64 %1572, %.v255
  store i64 %1582, i64* %3, align 8
  br i1 %1578, label %block_.L_423f74, label %block_423e89

block_423e89:                                     ; preds = %block_.L_423e71
  %1583 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1584 = and i32 %1583, 16384
  %1585 = zext i32 %1584 to i64
  store i64 %1585, i64* %RAX.i1213, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %.lobit233 = lshr exact i32 %1584, 14
  %1586 = trunc i32 %.lobit233 to i8
  %1587 = xor i8 %1586, 1
  store i8 %1587, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1588 = icmp eq i8 %1587, 0
  %.v256 = select i1 %1588, i64 26, i64 21
  %1589 = add i64 %1582, %.v256
  store i64 %1589, i64* %3, align 8
  br i1 %1588, label %block_.L_423ea3, label %block_423e9e

block_423e9e:                                     ; preds = %block_423e89
  %1590 = add i64 %1589, 34
  store i64 %1590, i64* %3, align 8
  br label %block_.L_423ec0

block_.L_423ea3:                                  ; preds = %block_423e89
  store i64 ptrtoint (%G__0x57bbab_type* @G__0x57bbab to i64), i64* %RDI.i1199, align 8
  %1591 = load i64, i64* %RBP.i, align 8
  %1592 = add i64 %1591, -16
  %1593 = add i64 %1589, 14
  store i64 %1593, i64* %3, align 8
  %1594 = inttoptr i64 %1592 to i64*
  %1595 = load i64, i64* %1594, align 8
  store i64 %1595, i64* %RAX.i1213, align 8
  %1596 = add i64 %1589, 16
  store i64 %1596, i64* %3, align 8
  %1597 = inttoptr i64 %1595 to i32*
  %1598 = load i32, i32* %1597, align 4
  %1599 = zext i32 %1598 to i64
  store i64 %1599, i64* %RSI.i1187, align 8
  store i8 0, i8* %AL.i815, align 1
  %1600 = add i64 %1589, 188173
  %1601 = add i64 %1589, 23
  %1602 = load i64, i64* %6, align 8
  %1603 = add i64 %1602, -8
  %1604 = inttoptr i64 %1603 to i64*
  store i64 %1601, i64* %1604, align 8
  store i64 %1603, i64* %6, align 8
  store i64 %1600, i64* %3, align 8
  %call2_423eb5 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1600, %struct.Memory* %call2_423e7b)
  %1605 = load i64, i64* %RBP.i, align 8
  %1606 = add i64 %1605, -1724
  %1607 = load i32, i32* %EAX.i1212, align 4
  %1608 = load i64, i64* %3, align 8
  %1609 = add i64 %1608, 6
  store i64 %1609, i64* %3, align 8
  %1610 = inttoptr i64 %1606 to i32*
  store i32 %1607, i32* %1610, align 4
  %.pre193 = load i64, i64* %3, align 8
  br label %block_.L_423ec0

block_.L_423ec0:                                  ; preds = %block_.L_423ea3, %block_423e9e
  %1611 = phi i64 [ %.pre193, %block_.L_423ea3 ], [ %1590, %block_423e9e ]
  %MEMORY.23 = phi %struct.Memory* [ %call2_423eb5, %block_.L_423ea3 ], [ %call2_423e7b, %block_423e9e ]
  %1612 = load i64, i64* %RBP.i, align 8
  %1613 = add i64 %1612, -16
  %1614 = add i64 %1611, 4
  store i64 %1614, i64* %3, align 8
  %1615 = inttoptr i64 %1613 to i64*
  %1616 = load i64, i64* %1615, align 8
  store i64 %1616, i64* %RAX.i1213, align 8
  %1617 = add i64 %1611, 6
  store i64 %1617, i64* %3, align 8
  %1618 = inttoptr i64 %1616 to i32*
  %1619 = load i32, i32* %1618, align 4
  %1620 = zext i32 %1619 to i64
  store i64 %1620, i64* %RDI.i1199, align 8
  %1621 = add i64 %1612, -20
  %1622 = add i64 %1611, 9
  store i64 %1622, i64* %3, align 8
  %1623 = inttoptr i64 %1621 to i32*
  %1624 = load i32, i32* %1623, align 4
  %1625 = zext i32 %1624 to i64
  store i64 %1625, i64* %RSI.i1187, align 8
  %1626 = add i64 %1611, -87024
  %1627 = add i64 %1611, 14
  %1628 = load i64, i64* %6, align 8
  %1629 = add i64 %1628, -8
  %1630 = inttoptr i64 %1629 to i64*
  store i64 %1627, i64* %1630, align 8
  store i64 %1629, i64* %6, align 8
  store i64 %1626, i64* %3, align 8
  %call2_423ec9 = tail call %struct.Memory* @sub_40ead0.is_legal(%struct.State* nonnull %0, i64 %1626, %struct.Memory* %MEMORY.23)
  %1631 = load i32, i32* %EAX.i1212, align 4
  %1632 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %1633 = and i32 %1631, 255
  %1634 = tail call i32 @llvm.ctpop.i32(i32 %1633)
  %1635 = trunc i32 %1634 to i8
  %1636 = and i8 %1635, 1
  %1637 = xor i8 %1636, 1
  store i8 %1637, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1638 = icmp eq i32 %1631, 0
  %1639 = zext i1 %1638 to i8
  store i8 %1639, i8* %15, align 1
  %1640 = lshr i32 %1631, 31
  %1641 = trunc i32 %1640 to i8
  store i8 %1641, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v257 = select i1 %1638, i64 9, i64 73
  %1642 = add i64 %1632, %.v257
  store i64 %1642, i64* %3, align 8
  br i1 %1638, label %block_423ed7, label %block_.L_423f17

block_423ed7:                                     ; preds = %block_.L_423ec0
  %1643 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1644 = and i32 %1643, 16384
  %1645 = zext i32 %1644 to i64
  store i64 %1645, i64* %RAX.i1213, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %.lobit234 = lshr exact i32 %1644, 14
  %1646 = trunc i32 %.lobit234 to i8
  %1647 = xor i8 %1646, 1
  store i8 %1647, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1648 = icmp eq i8 %1647, 0
  %.v260 = select i1 %1648, i64 26, i64 21
  %1649 = add i64 %1642, %.v260
  store i64 %1649, i64* %3, align 8
  br i1 %1648, label %block_.L_423ef1, label %block_423eec

block_423eec:                                     ; preds = %block_423ed7
  %1650 = add i64 %1649, 28
  store i64 %1650, i64* %3, align 8
  br label %block_.L_423f08

block_.L_423ef1:                                  ; preds = %block_423ed7
  store i64 ptrtoint (%G__0x57bbce_type* @G__0x57bbce to i64), i64* %RDI.i1199, align 8
  store i8 0, i8* %AL.i815, align 1
  %1651 = add i64 %1649, 188095
  %1652 = add i64 %1649, 17
  %1653 = load i64, i64* %6, align 8
  %1654 = add i64 %1653, -8
  %1655 = inttoptr i64 %1654 to i64*
  store i64 %1652, i64* %1655, align 8
  store i64 %1654, i64* %6, align 8
  store i64 %1651, i64* %3, align 8
  %call2_423efd = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1651, %struct.Memory* %call2_423ec9)
  %1656 = load i64, i64* %RBP.i, align 8
  %1657 = add i64 %1656, -1728
  %1658 = load i32, i32* %EAX.i1212, align 4
  %1659 = load i64, i64* %3, align 8
  %1660 = add i64 %1659, 6
  store i64 %1660, i64* %3, align 8
  %1661 = inttoptr i64 %1657 to i32*
  store i32 %1658, i32* %1661, align 4
  %.pre194 = load i64, i64* %3, align 8
  br label %block_.L_423f08

block_.L_423f08:                                  ; preds = %block_.L_423ef1, %block_423eec
  %1662 = phi i64 [ %.pre194, %block_.L_423ef1 ], [ %1650, %block_423eec ]
  %MEMORY.24 = phi %struct.Memory* [ %call2_423efd, %block_.L_423ef1 ], [ %call2_423ec9, %block_423eec ]
  %1663 = load i64, i64* %RBP.i, align 8
  %1664 = add i64 %1663, -16
  %1665 = add i64 %1662, 4
  store i64 %1665, i64* %3, align 8
  %1666 = inttoptr i64 %1664 to i64*
  %1667 = load i64, i64* %1666, align 8
  store i64 %1667, i64* %RAX.i1213, align 8
  %1668 = add i64 %1662, 10
  store i64 %1668, i64* %3, align 8
  %1669 = inttoptr i64 %1667 to i32*
  store i32 0, i32* %1669, align 4
  %1670 = load i64, i64* %3, align 8
  %1671 = add i64 %1670, 1274
  br label %block_.L_42440c

block_.L_423f17:                                  ; preds = %block_.L_423ec0
  %1672 = load i64, i64* %RBP.i, align 8
  %1673 = add i64 %1672, -36
  store i64 %1673, i64* %RDX.i1208, align 8
  %1674 = add i64 %1672, -16
  %1675 = add i64 %1642, 8
  store i64 %1675, i64* %3, align 8
  %1676 = inttoptr i64 %1674 to i64*
  %1677 = load i64, i64* %1676, align 8
  store i64 %1677, i64* %RAX.i1213, align 8
  %1678 = add i64 %1642, 10
  store i64 %1678, i64* %3, align 8
  %1679 = inttoptr i64 %1677 to i32*
  %1680 = load i32, i32* %1679, align 4
  %1681 = zext i32 %1680 to i64
  store i64 %1681, i64* %RDI.i1199, align 8
  %1682 = add i64 %1672, -20
  %1683 = add i64 %1642, 13
  store i64 %1683, i64* %3, align 8
  %1684 = inttoptr i64 %1682 to i32*
  %1685 = load i32, i32* %1684, align 4
  %1686 = zext i32 %1685 to i64
  store i64 %1686, i64* %RSI.i1187, align 8
  %1687 = add i64 %1642, 1961
  %1688 = add i64 %1642, 18
  %1689 = load i64, i64* %6, align 8
  %1690 = add i64 %1689, -8
  %1691 = inttoptr i64 %1690 to i64*
  store i64 %1688, i64* %1691, align 8
  store i64 %1690, i64* %6, align 8
  store i64 %1687, i64* %3, align 8
  %call2_423f24 = tail call %struct.Memory* @sub_4246c0.filllib_confirm_safety(%struct.State* nonnull %0, i64 %1687, %struct.Memory* %call2_423ec9)
  %1692 = load i32, i32* %EAX.i1212, align 4
  %1693 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %1694 = and i32 %1692, 255
  %1695 = tail call i32 @llvm.ctpop.i32(i32 %1694)
  %1696 = trunc i32 %1695 to i8
  %1697 = and i8 %1696, 1
  %1698 = xor i8 %1697, 1
  store i8 %1698, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1699 = icmp eq i32 %1692, 0
  %1700 = zext i1 %1699 to i8
  store i8 %1700, i8* %15, align 1
  %1701 = lshr i32 %1692, 31
  %1702 = trunc i32 %1701 to i8
  store i8 %1702, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v258 = select i1 %1699, i64 9, i64 63
  %1703 = add i64 %1693, %.v258
  store i64 %1703, i64* %3, align 8
  br i1 %1699, label %block_423f32, label %block_.L_423f68

block_423f32:                                     ; preds = %block_.L_423f17
  %1704 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1705 = and i32 %1704, 16384
  %1706 = zext i32 %1705 to i64
  store i64 %1706, i64* %RAX.i1213, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %.lobit235 = lshr exact i32 %1705, 14
  %1707 = trunc i32 %.lobit235 to i8
  %1708 = xor i8 %1707, 1
  store i8 %1708, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1709 = icmp eq i8 %1708, 0
  %.v259 = select i1 %1709, i64 26, i64 21
  %1710 = add i64 %1703, %.v259
  store i64 %1710, i64* %3, align 8
  br i1 %1709, label %block_.L_423f4c, label %block_423f47

block_423f47:                                     ; preds = %block_423f32
  %1711 = add i64 %1710, 28
  store i64 %1711, i64* %3, align 8
  br label %block_.L_423f63

block_.L_423f4c:                                  ; preds = %block_423f32
  store i64 ptrtoint (%G__0x57bb09_type* @G__0x57bb09 to i64), i64* %RDI.i1199, align 8
  store i8 0, i8* %AL.i815, align 1
  %1712 = add i64 %1710, 188004
  %1713 = add i64 %1710, 17
  %1714 = load i64, i64* %6, align 8
  %1715 = add i64 %1714, -8
  %1716 = inttoptr i64 %1715 to i64*
  store i64 %1713, i64* %1716, align 8
  store i64 %1715, i64* %6, align 8
  store i64 %1712, i64* %3, align 8
  %call2_423f58 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1712, %struct.Memory* %call2_423f24)
  %1717 = load i64, i64* %RBP.i, align 8
  %1718 = add i64 %1717, -1732
  %1719 = load i32, i32* %EAX.i1212, align 4
  %1720 = load i64, i64* %3, align 8
  %1721 = add i64 %1720, 6
  store i64 %1721, i64* %3, align 8
  %1722 = inttoptr i64 %1718 to i32*
  store i32 %1719, i32* %1722, align 4
  %.pre195 = load i64, i64* %3, align 8
  br label %block_.L_423f63

block_.L_423f63:                                  ; preds = %block_.L_423f4c, %block_423f47
  %1723 = phi i64 [ %.pre195, %block_.L_423f4c ], [ %1711, %block_423f47 ]
  %MEMORY.25 = phi %struct.Memory* [ %call2_423f58, %block_.L_423f4c ], [ %call2_423f24, %block_423f47 ]
  %1724 = add i64 %1723, 1193
  br label %block_.L_42440c

block_.L_423f68:                                  ; preds = %block_.L_423f17
  %1725 = load i64, i64* %RBP.i, align 8
  %1726 = add i64 %1725, -4
  %1727 = add i64 %1703, 7
  store i64 %1727, i64* %3, align 8
  %1728 = inttoptr i64 %1726 to i32*
  store i32 1, i32* %1728, align 4
  %1729 = load i64, i64* %3, align 8
  %1730 = add i64 %1729, 1251
  store i64 %1730, i64* %3, align 8
  br label %block_.L_424452

block_.L_423f74:                                  ; preds = %block_.L_423e71
  %1731 = load i64, i64* %RBP.i, align 8
  %1732 = add i64 %1731, -28
  %1733 = add i64 %1582, 3
  store i64 %1733, i64* %3, align 8
  %1734 = inttoptr i64 %1732 to i32*
  %1735 = load i32, i32* %1734, align 4
  %1736 = zext i32 %1735 to i64
  store i64 %1736, i64* %RDI.i1199, align 8
  %1737 = add i64 %1731, -20
  %1738 = add i64 %1582, 6
  store i64 %1738, i64* %3, align 8
  %1739 = inttoptr i64 %1737 to i32*
  %1740 = load i32, i32* %1739, align 4
  %1741 = zext i32 %1740 to i64
  store i64 %1741, i64* %RSI.i1187, align 8
  %1742 = add i64 %1582, -58548
  %1743 = add i64 %1582, 11
  %1744 = load i64, i64* %6, align 8
  %1745 = add i64 %1744, -8
  %1746 = inttoptr i64 %1745 to i64*
  store i64 %1743, i64* %1746, align 8
  store i64 %1745, i64* %6, align 8
  store i64 %1742, i64* %3, align 8
  %call2_423f7a = tail call %struct.Memory* @sub_415ac0.does_capture_something(%struct.State* nonnull %0, i64 %1742, %struct.Memory* %call2_423e7b)
  %1747 = load i32, i32* %EAX.i1212, align 4
  %1748 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %1749 = and i32 %1747, 255
  %1750 = tail call i32 @llvm.ctpop.i32(i32 %1749)
  %1751 = trunc i32 %1750 to i8
  %1752 = and i8 %1751, 1
  %1753 = xor i8 %1752, 1
  store i8 %1753, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1754 = icmp eq i32 %1747, 0
  %1755 = zext i1 %1754 to i8
  store i8 %1755, i8* %15, align 1
  %1756 = lshr i32 %1747, 31
  %1757 = trunc i32 %1756 to i8
  store i8 %1757, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v261 = select i1 %1754, i64 157, i64 9
  %1758 = add i64 %1748, %.v261
  store i64 %1758, i64* %3, align 8
  br i1 %1754, label %block_.L_42401c, label %block_423f88

block_423f88:                                     ; preds = %block_.L_423f74
  %1759 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1760 = and i32 %1759, 16384
  %1761 = zext i32 %1760 to i64
  store i64 %1761, i64* %RAX.i1213, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %.lobit236 = lshr exact i32 %1760, 14
  %1762 = trunc i32 %.lobit236 to i8
  %1763 = xor i8 %1762, 1
  store i8 %1763, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1764 = icmp eq i8 %1763, 0
  %.v262 = select i1 %1764, i64 26, i64 21
  %1765 = add i64 %1758, %.v262
  store i64 %1765, i64* %3, align 8
  br i1 %1764, label %block_.L_423fa2, label %block_423f9d

block_423f9d:                                     ; preds = %block_423f88
  %1766 = add i64 %1765, 28
  store i64 %1766, i64* %3, align 8
  br label %block_.L_423fb9

block_.L_423fa2:                                  ; preds = %block_423f88
  store i64 ptrtoint (%G__0x57bbf0_type* @G__0x57bbf0 to i64), i64* %RDI.i1199, align 8
  store i8 0, i8* %AL.i815, align 1
  %1767 = add i64 %1765, 187918
  %1768 = add i64 %1765, 17
  %1769 = load i64, i64* %6, align 8
  %1770 = add i64 %1769, -8
  %1771 = inttoptr i64 %1770 to i64*
  store i64 %1768, i64* %1771, align 8
  store i64 %1770, i64* %6, align 8
  store i64 %1767, i64* %3, align 8
  %call2_423fae = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1767, %struct.Memory* %call2_423f7a)
  %1772 = load i64, i64* %RBP.i, align 8
  %1773 = add i64 %1772, -1736
  %1774 = load i32, i32* %EAX.i1212, align 4
  %1775 = load i64, i64* %3, align 8
  %1776 = add i64 %1775, 6
  store i64 %1776, i64* %3, align 8
  %1777 = inttoptr i64 %1773 to i32*
  store i32 %1774, i32* %1777, align 4
  %.pre196 = load i64, i64* %3, align 8
  br label %block_.L_423fb9

block_.L_423fb9:                                  ; preds = %block_.L_423fa2, %block_423f9d
  %1778 = phi i64 [ %.pre196, %block_.L_423fa2 ], [ %1766, %block_423f9d ]
  %MEMORY.26 = phi %struct.Memory* [ %call2_423fae, %block_.L_423fa2 ], [ %call2_423f7a, %block_423f9d ]
  %1779 = load i64, i64* %RBP.i, align 8
  %1780 = add i64 %1779, -36
  store i64 %1780, i64* %RDX.i1208, align 8
  %1781 = add i64 %1779, -28
  %1782 = add i64 %1778, 7
  store i64 %1782, i64* %3, align 8
  %1783 = inttoptr i64 %1781 to i32*
  %1784 = load i32, i32* %1783, align 4
  %1785 = zext i32 %1784 to i64
  store i64 %1785, i64* %RDI.i1199, align 8
  %1786 = add i64 %1779, -20
  %1787 = add i64 %1778, 10
  store i64 %1787, i64* %3, align 8
  %1788 = inttoptr i64 %1786 to i32*
  %1789 = load i32, i32* %1788, align 4
  %1790 = zext i32 %1789 to i64
  store i64 %1790, i64* %RSI.i1187, align 8
  %1791 = add i64 %1778, 1799
  %1792 = add i64 %1778, 15
  %1793 = load i64, i64* %6, align 8
  %1794 = add i64 %1793, -8
  %1795 = inttoptr i64 %1794 to i64*
  store i64 %1792, i64* %1795, align 8
  store i64 %1794, i64* %6, align 8
  store i64 %1791, i64* %3, align 8
  %call2_423fc3 = tail call %struct.Memory* @sub_4246c0.filllib_confirm_safety(%struct.State* nonnull %0, i64 %1791, %struct.Memory* %MEMORY.26)
  %1796 = load i32, i32* %EAX.i1212, align 4
  %1797 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %1798 = and i32 %1796, 255
  %1799 = tail call i32 @llvm.ctpop.i32(i32 %1798)
  %1800 = trunc i32 %1799 to i8
  %1801 = and i8 %1800, 1
  %1802 = xor i8 %1801, 1
  store i8 %1802, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %1803 = icmp eq i32 %1796, 0
  %1804 = zext i1 %1803 to i8
  store i8 %1804, i8* %15, align 1
  %1805 = lshr i32 %1796, 31
  %1806 = trunc i32 %1805 to i8
  store i8 %1806, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v263 = select i1 %1803, i64 9, i64 63
  %1807 = add i64 %1797, %.v263
  store i64 %1807, i64* %3, align 8
  br i1 %1803, label %block_423fd1, label %block_.L_424007

block_423fd1:                                     ; preds = %block_.L_423fb9
  %1808 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1809 = and i32 %1808, 16384
  %1810 = zext i32 %1809 to i64
  store i64 %1810, i64* %RAX.i1213, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %.lobit237 = lshr exact i32 %1809, 14
  %1811 = trunc i32 %.lobit237 to i8
  %1812 = xor i8 %1811, 1
  store i8 %1812, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1813 = icmp eq i8 %1812, 0
  %.v264 = select i1 %1813, i64 26, i64 21
  %1814 = add i64 %1807, %.v264
  store i64 %1814, i64* %3, align 8
  br i1 %1813, label %block_.L_423feb, label %block_423fe6

block_423fe6:                                     ; preds = %block_423fd1
  %1815 = add i64 %1814, 28
  store i64 %1815, i64* %3, align 8
  br label %block_.L_424002

block_.L_423feb:                                  ; preds = %block_423fd1
  store i64 ptrtoint (%G__0x57bb09_type* @G__0x57bb09 to i64), i64* %RDI.i1199, align 8
  store i8 0, i8* %AL.i815, align 1
  %1816 = add i64 %1814, 187845
  %1817 = add i64 %1814, 17
  %1818 = load i64, i64* %6, align 8
  %1819 = add i64 %1818, -8
  %1820 = inttoptr i64 %1819 to i64*
  store i64 %1817, i64* %1820, align 8
  store i64 %1819, i64* %6, align 8
  store i64 %1816, i64* %3, align 8
  %call2_423ff7 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1816, %struct.Memory* %call2_423fc3)
  %1821 = load i64, i64* %RBP.i, align 8
  %1822 = add i64 %1821, -1740
  %1823 = load i32, i32* %EAX.i1212, align 4
  %1824 = load i64, i64* %3, align 8
  %1825 = add i64 %1824, 6
  store i64 %1825, i64* %3, align 8
  %1826 = inttoptr i64 %1822 to i32*
  store i32 %1823, i32* %1826, align 4
  %.pre197 = load i64, i64* %3, align 8
  br label %block_.L_424002

block_.L_424002:                                  ; preds = %block_.L_423feb, %block_423fe6
  %1827 = phi i64 [ %.pre197, %block_.L_423feb ], [ %1815, %block_423fe6 ]
  %MEMORY.27 = phi %struct.Memory* [ %call2_423ff7, %block_.L_423feb ], [ %call2_423fc3, %block_423fe6 ]
  %1828 = add i64 %1827, 1034
  br label %block_.L_42440c

block_.L_424007:                                  ; preds = %block_.L_423fb9
  %1829 = load i64, i64* %RBP.i, align 8
  %1830 = add i64 %1829, -28
  %1831 = add i64 %1807, 3
  store i64 %1831, i64* %3, align 8
  %1832 = inttoptr i64 %1830 to i32*
  %1833 = load i32, i32* %1832, align 4
  %1834 = zext i32 %1833 to i64
  store i64 %1834, i64* %RAX.i1213, align 8
  %1835 = add i64 %1829, -16
  %1836 = add i64 %1807, 7
  store i64 %1836, i64* %3, align 8
  %1837 = inttoptr i64 %1835 to i64*
  %1838 = load i64, i64* %1837, align 8
  store i64 %1838, i64* %RCX.i1210, align 8
  %1839 = add i64 %1807, 9
  store i64 %1839, i64* %3, align 8
  %1840 = inttoptr i64 %1838 to i32*
  store i32 %1833, i32* %1840, align 4
  %1841 = load i64, i64* %RBP.i, align 8
  %1842 = add i64 %1841, -4
  %1843 = load i64, i64* %3, align 8
  %1844 = add i64 %1843, 7
  store i64 %1844, i64* %3, align 8
  %1845 = inttoptr i64 %1842 to i32*
  store i32 1, i32* %1845, align 4
  %1846 = load i64, i64* %3, align 8
  %1847 = add i64 %1846, 1083
  store i64 %1847, i64* %3, align 8
  br label %block_.L_424452

block_.L_42401c:                                  ; preds = %block_.L_423f74
  %1848 = add i64 %1758, 1003
  br label %block_.L_424407

block_.L_424026:                                  ; preds = %block_.L_423e13
  %1849 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %1850 = and i32 %1849, 16384
  %1851 = zext i32 %1850 to i64
  store i64 %1851, i64* %RAX.i1213, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %.lobit238 = lshr exact i32 %1850, 14
  %1852 = trunc i32 %.lobit238 to i8
  %1853 = xor i8 %1852, 1
  store i8 %1853, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %1854 = icmp eq i8 %1853, 0
  %.v265 = select i1 %1854, i64 26, i64 21
  %1855 = add i64 %1524, %.v265
  store i64 %1855, i64* %3, align 8
  br i1 %1854, label %block_.L_424040, label %block_42403b

block_42403b:                                     ; preds = %block_.L_424026
  %1856 = add i64 %1855, 28
  store i64 %1856, i64* %3, align 8
  br label %block_.L_424057

block_.L_424040:                                  ; preds = %block_.L_424026
  store i64 ptrtoint (%G__0x57bc24_type* @G__0x57bc24 to i64), i64* %RDI.i1199, align 8
  store i8 0, i8* %AL.i815, align 1
  %1857 = add i64 %1855, 187760
  %1858 = add i64 %1855, 17
  %1859 = load i64, i64* %6, align 8
  %1860 = add i64 %1859, -8
  %1861 = inttoptr i64 %1860 to i64*
  store i64 %1858, i64* %1861, align 8
  store i64 %1860, i64* %6, align 8
  store i64 %1857, i64* %3, align 8
  %call2_42404c = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1857, %struct.Memory* %call2_423e2d)
  %1862 = load i64, i64* %RBP.i, align 8
  %1863 = add i64 %1862, -1744
  %1864 = load i32, i32* %EAX.i1212, align 4
  %1865 = load i64, i64* %3, align 8
  %1866 = add i64 %1865, 6
  store i64 %1866, i64* %3, align 8
  %1867 = inttoptr i64 %1863 to i32*
  store i32 %1864, i32* %1867, align 4
  %.pre198 = load i64, i64* %3, align 8
  br label %block_.L_424057

block_.L_424057:                                  ; preds = %block_.L_424040, %block_42403b
  %1868 = phi i64 [ %.pre198, %block_.L_424040 ], [ %1856, %block_42403b ]
  %MEMORY.28 = phi %struct.Memory* [ %call2_42404c, %block_.L_424040 ], [ %call2_423e2d, %block_42403b ]
  %1869 = load i64, i64* %RBP.i, align 8
  %1870 = add i64 %1869, -24
  %1871 = add i64 %1868, 7
  store i64 %1871, i64* %3, align 8
  %1872 = inttoptr i64 %1870 to i32*
  store i32 0, i32* %1872, align 4
  %.pre199 = load i64, i64* %3, align 8
  br label %block_.L_42405e

block_.L_42405e:                                  ; preds = %block_.L_42412d, %block_.L_424057
  %1873 = phi i64 [ %2166, %block_.L_42412d ], [ %.pre199, %block_.L_424057 ]
  %1874 = load i64, i64* %RBP.i, align 8
  %1875 = add i64 %1874, -24
  %1876 = add i64 %1873, 4
  store i64 %1876, i64* %3, align 8
  %1877 = inttoptr i64 %1875 to i32*
  %1878 = load i32, i32* %1877, align 4
  %1879 = add i32 %1878, -4
  %1880 = icmp ult i32 %1878, 4
  %1881 = zext i1 %1880 to i8
  store i8 %1881, i8* %12, align 1
  %1882 = and i32 %1879, 255
  %1883 = tail call i32 @llvm.ctpop.i32(i32 %1882)
  %1884 = trunc i32 %1883 to i8
  %1885 = and i8 %1884, 1
  %1886 = xor i8 %1885, 1
  store i8 %1886, i8* %13, align 1
  %1887 = xor i32 %1879, %1878
  %1888 = lshr i32 %1887, 4
  %1889 = trunc i32 %1888 to i8
  %1890 = and i8 %1889, 1
  store i8 %1890, i8* %14, align 1
  %1891 = icmp eq i32 %1879, 0
  %1892 = zext i1 %1891 to i8
  store i8 %1892, i8* %15, align 1
  %1893 = lshr i32 %1879, 31
  %1894 = trunc i32 %1893 to i8
  store i8 %1894, i8* %16, align 1
  %1895 = lshr i32 %1878, 31
  %1896 = xor i32 %1893, %1895
  %1897 = add nuw nsw i32 %1896, %1895
  %1898 = icmp eq i32 %1897, 2
  %1899 = zext i1 %1898 to i8
  store i8 %1899, i8* %17, align 1
  %1900 = icmp ne i8 %1894, 0
  %1901 = xor i1 %1900, %1898
  %.v266 = select i1 %1901, i64 10, i64 226
  %1902 = add i64 %1873, %.v266
  store i64 %1902, i64* %3, align 8
  br i1 %1901, label %block_424068, label %block_.L_424140

block_424068:                                     ; preds = %block_.L_42405e
  %1903 = add i64 %1902, 4
  store i64 %1903, i64* %3, align 8
  %1904 = load i32, i32* %1877, align 4
  %1905 = sext i32 %1904 to i64
  store i64 %1905, i64* %RAX.i1213, align 8
  %1906 = shl nsw i64 %1905, 2
  %1907 = add nsw i64 %1906, 8053168
  %1908 = add i64 %1902, 11
  store i64 %1908, i64* %3, align 8
  %1909 = inttoptr i64 %1907 to i32*
  %1910 = load i32, i32* %1909, align 4
  %1911 = zext i32 %1910 to i64
  store i64 %1911, i64* %RCX.i1210, align 8
  %1912 = add i64 %1874, -1672
  %1913 = add i64 %1902, 17
  store i64 %1913, i64* %3, align 8
  %1914 = inttoptr i64 %1912 to i32*
  store i32 %1910, i32* %1914, align 4
  %1915 = load i64, i64* %RBP.i, align 8
  %1916 = add i64 %1915, -28
  %1917 = load i64, i64* %3, align 8
  %1918 = add i64 %1917, 3
  store i64 %1918, i64* %3, align 8
  %1919 = inttoptr i64 %1916 to i32*
  %1920 = load i32, i32* %1919, align 4
  %1921 = zext i32 %1920 to i64
  store i64 %1921, i64* %RCX.i1210, align 8
  %1922 = add i64 %1915, -1672
  %1923 = add i64 %1917, 9
  store i64 %1923, i64* %3, align 8
  %1924 = inttoptr i64 %1922 to i32*
  %1925 = load i32, i32* %1924, align 4
  %1926 = add i32 %1925, %1920
  %1927 = zext i32 %1926 to i64
  store i64 %1927, i64* %RCX.i1210, align 8
  %1928 = icmp ult i32 %1926, %1920
  %1929 = icmp ult i32 %1926, %1925
  %1930 = or i1 %1928, %1929
  %1931 = zext i1 %1930 to i8
  store i8 %1931, i8* %12, align 1
  %1932 = and i32 %1926, 255
  %1933 = tail call i32 @llvm.ctpop.i32(i32 %1932)
  %1934 = trunc i32 %1933 to i8
  %1935 = and i8 %1934, 1
  %1936 = xor i8 %1935, 1
  store i8 %1936, i8* %13, align 1
  %1937 = xor i32 %1925, %1920
  %1938 = xor i32 %1937, %1926
  %1939 = lshr i32 %1938, 4
  %1940 = trunc i32 %1939 to i8
  %1941 = and i8 %1940, 1
  store i8 %1941, i8* %14, align 1
  %1942 = icmp eq i32 %1926, 0
  %1943 = zext i1 %1942 to i8
  store i8 %1943, i8* %15, align 1
  %1944 = lshr i32 %1926, 31
  %1945 = trunc i32 %1944 to i8
  store i8 %1945, i8* %16, align 1
  %1946 = lshr i32 %1920, 31
  %1947 = lshr i32 %1925, 31
  %1948 = xor i32 %1944, %1946
  %1949 = xor i32 %1944, %1947
  %1950 = add nuw nsw i32 %1948, %1949
  %1951 = icmp eq i32 %1950, 2
  %1952 = zext i1 %1951 to i8
  store i8 %1952, i8* %17, align 1
  %1953 = sext i32 %1926 to i64
  store i64 %1953, i64* %RAX.i1213, align 8
  %1954 = add nsw i64 %1953, 12099168
  %1955 = add i64 %1917, 20
  store i64 %1955, i64* %3, align 8
  %1956 = inttoptr i64 %1954 to i8*
  %1957 = load i8, i8* %1956, align 1
  %1958 = zext i8 %1957 to i64
  store i64 %1958, i64* %RCX.i1210, align 8
  %1959 = zext i8 %1957 to i32
  %1960 = add i64 %1915, -32
  %1961 = add i64 %1917, 23
  store i64 %1961, i64* %3, align 8
  %1962 = inttoptr i64 %1960 to i32*
  %1963 = load i32, i32* %1962, align 4
  %1964 = sub i32 %1959, %1963
  %1965 = icmp ult i32 %1959, %1963
  %1966 = zext i1 %1965 to i8
  store i8 %1966, i8* %12, align 1
  %1967 = and i32 %1964, 255
  %1968 = tail call i32 @llvm.ctpop.i32(i32 %1967)
  %1969 = trunc i32 %1968 to i8
  %1970 = and i8 %1969, 1
  %1971 = xor i8 %1970, 1
  store i8 %1971, i8* %13, align 1
  %1972 = xor i32 %1963, %1959
  %1973 = xor i32 %1972, %1964
  %1974 = lshr i32 %1973, 4
  %1975 = trunc i32 %1974 to i8
  %1976 = and i8 %1975, 1
  store i8 %1976, i8* %14, align 1
  %1977 = icmp eq i32 %1964, 0
  %1978 = zext i1 %1977 to i8
  store i8 %1978, i8* %15, align 1
  %1979 = lshr i32 %1964, 31
  %1980 = trunc i32 %1979 to i8
  store i8 %1980, i8* %16, align 1
  %1981 = lshr i32 %1963, 31
  %1982 = add nuw nsw i32 %1979, %1981
  %1983 = icmp eq i32 %1982, 2
  %1984 = zext i1 %1983 to i8
  store i8 %1984, i8* %17, align 1
  %.v281 = select i1 %1977, i64 29, i64 180
  %1985 = add i64 %1917, %.v281
  store i64 %1985, i64* %3, align 8
  br i1 %1977, label %block_424096, label %block_.L_42412d

block_424096:                                     ; preds = %block_424068
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i1213, align 8
  %1986 = add i64 %1985, 13
  store i64 %1986, i64* %3, align 8
  %1987 = load i32, i32* %1919, align 4
  %1988 = zext i32 %1987 to i64
  store i64 %1988, i64* %RCX.i1210, align 8
  %1989 = add i64 %1985, 19
  store i64 %1989, i64* %3, align 8
  %1990 = load i32, i32* %1924, align 4
  %1991 = add i32 %1990, %1987
  %1992 = zext i32 %1991 to i64
  store i64 %1992, i64* %RCX.i1210, align 8
  %1993 = sext i32 %1991 to i64
  %1994 = mul nsw i64 %1993, 380
  store i64 %1994, i64* %RDX.i1208, align 8
  %1995 = lshr i64 %1994, 63
  %1996 = add i64 %1994, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %1996, i64* %RAX.i1213, align 8
  %1997 = icmp ult i64 %1996, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %1998 = icmp ult i64 %1996, %1994
  %1999 = or i1 %1997, %1998
  %2000 = zext i1 %1999 to i8
  store i8 %2000, i8* %12, align 1
  %2001 = trunc i64 %1996 to i32
  %2002 = and i32 %2001, 252
  %2003 = tail call i32 @llvm.ctpop.i32(i32 %2002)
  %2004 = trunc i32 %2003 to i8
  %2005 = and i8 %2004, 1
  %2006 = xor i8 %2005, 1
  store i8 %2006, i8* %13, align 1
  %2007 = xor i64 %1994, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2008 = xor i64 %2007, %1996
  %2009 = lshr i64 %2008, 4
  %2010 = trunc i64 %2009 to i8
  %2011 = and i8 %2010, 1
  store i8 %2011, i8* %14, align 1
  %2012 = icmp eq i64 %1996, 0
  %2013 = zext i1 %2012 to i8
  store i8 %2013, i8* %15, align 1
  %2014 = lshr i64 %1996, 63
  %2015 = trunc i64 %2014 to i8
  store i8 %2015, i8* %16, align 1
  %2016 = xor i64 %2014, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %2017 = xor i64 %2014, %1995
  %2018 = add nuw nsw i64 %2016, %2017
  %2019 = icmp eq i64 %2018, 2
  %2020 = zext i1 %2019 to i8
  store i8 %2020, i8* %17, align 1
  %2021 = add i64 %1994, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 100)
  %2022 = add i64 %1985, 36
  store i64 %2022, i64* %3, align 8
  %2023 = inttoptr i64 %2021 to i32*
  %2024 = load i32, i32* %2023, align 4
  %2025 = add i32 %2024, -5
  %2026 = icmp ult i32 %2024, 5
  %2027 = zext i1 %2026 to i8
  store i8 %2027, i8* %12, align 1
  %2028 = and i32 %2025, 255
  %2029 = tail call i32 @llvm.ctpop.i32(i32 %2028)
  %2030 = trunc i32 %2029 to i8
  %2031 = and i8 %2030, 1
  %2032 = xor i8 %2031, 1
  store i8 %2032, i8* %13, align 1
  %2033 = xor i32 %2025, %2024
  %2034 = lshr i32 %2033, 4
  %2035 = trunc i32 %2034 to i8
  %2036 = and i8 %2035, 1
  store i8 %2036, i8* %14, align 1
  %2037 = icmp eq i32 %2025, 0
  %2038 = zext i1 %2037 to i8
  store i8 %2038, i8* %15, align 1
  %2039 = lshr i32 %2025, 31
  %2040 = trunc i32 %2039 to i8
  store i8 %2040, i8* %16, align 1
  %2041 = lshr i32 %2024, 31
  %2042 = xor i32 %2039, %2041
  %2043 = add nuw nsw i32 %2042, %2041
  %2044 = icmp eq i32 %2043, 2
  %2045 = zext i1 %2044 to i8
  store i8 %2045, i8* %17, align 1
  %.v282 = select i1 %2037, i64 42, i64 151
  %2046 = add i64 %1985, %.v282
  store i64 %2046, i64* %3, align 8
  br i1 %2037, label %block_4240c0, label %block_424096.block_.L_42412d_crit_edge

block_424096.block_.L_42412d_crit_edge:           ; preds = %block_424096
  %.pre225 = load i64, i64* %RBP.i, align 8
  br label %block_.L_42412d

block_4240c0:                                     ; preds = %block_424096
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i1213, align 8
  %2047 = load i64, i64* %RBP.i, align 8
  %2048 = add i64 %2047, -28
  %2049 = add i64 %2046, 13
  store i64 %2049, i64* %3, align 8
  %2050 = inttoptr i64 %2048 to i32*
  %2051 = load i32, i32* %2050, align 4
  %2052 = zext i32 %2051 to i64
  store i64 %2052, i64* %RCX.i1210, align 8
  %2053 = add i64 %2047, -1672
  %2054 = add i64 %2046, 19
  store i64 %2054, i64* %3, align 8
  %2055 = inttoptr i64 %2053 to i32*
  %2056 = load i32, i32* %2055, align 4
  %2057 = add i32 %2056, %2051
  %2058 = zext i32 %2057 to i64
  store i64 %2058, i64* %RCX.i1210, align 8
  %2059 = sext i32 %2057 to i64
  %2060 = mul nsw i64 %2059, 380
  store i64 %2060, i64* %RDX.i1208, align 8
  %2061 = lshr i64 %2060, 63
  %2062 = add i64 %2060, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %2062, i64* %RAX.i1213, align 8
  %2063 = icmp ult i64 %2062, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2064 = icmp ult i64 %2062, %2060
  %2065 = or i1 %2063, %2064
  %2066 = zext i1 %2065 to i8
  store i8 %2066, i8* %12, align 1
  %2067 = trunc i64 %2062 to i32
  %2068 = and i32 %2067, 252
  %2069 = tail call i32 @llvm.ctpop.i32(i32 %2068)
  %2070 = trunc i32 %2069 to i8
  %2071 = and i8 %2070, 1
  %2072 = xor i8 %2071, 1
  store i8 %2072, i8* %13, align 1
  %2073 = xor i64 %2060, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2074 = xor i64 %2073, %2062
  %2075 = lshr i64 %2074, 4
  %2076 = trunc i64 %2075 to i8
  %2077 = and i8 %2076, 1
  store i8 %2077, i8* %14, align 1
  %2078 = icmp eq i64 %2062, 0
  %2079 = zext i1 %2078 to i8
  store i8 %2079, i8* %15, align 1
  %2080 = lshr i64 %2062, 63
  %2081 = trunc i64 %2080 to i8
  store i8 %2081, i8* %16, align 1
  %2082 = xor i64 %2080, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %2083 = xor i64 %2080, %2061
  %2084 = add nuw nsw i64 %2082, %2083
  %2085 = icmp eq i64 %2084, 2
  %2086 = zext i1 %2085 to i8
  store i8 %2086, i8* %17, align 1
  %2087 = add i64 %2060, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 60)
  %2088 = add i64 %2046, 35
  store i64 %2088, i64* %3, align 8
  %2089 = inttoptr i64 %2087 to i32*
  %2090 = load i32, i32* %2089, align 4
  %2091 = zext i32 %2090 to i64
  store i64 %2091, i64* %RCX.i1210, align 8
  %2092 = load i64, i64* %RBP.i, align 8
  %2093 = add i64 %2092, -16
  %2094 = add i64 %2046, 39
  store i64 %2094, i64* %3, align 8
  %2095 = inttoptr i64 %2093 to i64*
  %2096 = load i64, i64* %2095, align 8
  store i64 %2096, i64* %RAX.i1213, align 8
  %2097 = add i64 %2046, 41
  store i64 %2097, i64* %3, align 8
  %2098 = inttoptr i64 %2096 to i32*
  store i32 %2090, i32* %2098, align 4
  %2099 = load i64, i64* %3, align 8
  %2100 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %2101 = and i32 %2100, 16384
  %2102 = zext i32 %2101 to i64
  store i64 %2102, i64* %RCX.i1210, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %.lobit243 = lshr exact i32 %2101, 14
  %2103 = trunc i32 %.lobit243 to i8
  %2104 = xor i8 %2103, 1
  store i8 %2104, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %2105 = icmp eq i8 %2104, 0
  %.v283 = select i1 %2105, i64 27, i64 22
  %2106 = add i64 %2099, %.v283
  store i64 %2106, i64* %3, align 8
  br i1 %2105, label %block_.L_424104, label %block_4240ff

block_4240ff:                                     ; preds = %block_4240c0
  %2107 = add i64 %2106, 34
  store i64 %2107, i64* %3, align 8
  br label %block_.L_424121

block_.L_424104:                                  ; preds = %block_4240c0
  store i64 ptrtoint (%G__0x57bc51_type* @G__0x57bc51 to i64), i64* %RDI.i1199, align 8
  %2108 = load i64, i64* %RBP.i, align 8
  %2109 = add i64 %2108, -16
  %2110 = add i64 %2106, 14
  store i64 %2110, i64* %3, align 8
  %2111 = inttoptr i64 %2109 to i64*
  %2112 = load i64, i64* %2111, align 8
  store i64 %2112, i64* %RAX.i1213, align 8
  %2113 = add i64 %2106, 16
  store i64 %2113, i64* %3, align 8
  %2114 = inttoptr i64 %2112 to i32*
  %2115 = load i32, i32* %2114, align 4
  %2116 = zext i32 %2115 to i64
  store i64 %2116, i64* %RSI.i1187, align 8
  store i8 0, i8* %AL.i815, align 1
  %2117 = add i64 %2106, 187564
  %2118 = add i64 %2106, 23
  %2119 = load i64, i64* %6, align 8
  %2120 = add i64 %2119, -8
  %2121 = inttoptr i64 %2120 to i64*
  store i64 %2118, i64* %2121, align 8
  store i64 %2120, i64* %6, align 8
  store i64 %2117, i64* %3, align 8
  %call2_424116 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2117, %struct.Memory* %MEMORY.28)
  %2122 = load i64, i64* %RBP.i, align 8
  %2123 = add i64 %2122, -1748
  %2124 = load i32, i32* %EAX.i1212, align 4
  %2125 = load i64, i64* %3, align 8
  %2126 = add i64 %2125, 6
  store i64 %2126, i64* %3, align 8
  %2127 = inttoptr i64 %2123 to i32*
  store i32 %2124, i32* %2127, align 4
  %.pre208 = load i64, i64* %3, align 8
  br label %block_.L_424121

block_.L_424121:                                  ; preds = %block_.L_424104, %block_4240ff
  %2128 = phi i64 [ %.pre208, %block_.L_424104 ], [ %2107, %block_4240ff ]
  %MEMORY.30 = phi %struct.Memory* [ %call2_424116, %block_.L_424104 ], [ %MEMORY.28, %block_4240ff ]
  %2129 = load i64, i64* %RBP.i, align 8
  %2130 = add i64 %2129, -4
  %2131 = add i64 %2128, 7
  store i64 %2131, i64* %3, align 8
  %2132 = inttoptr i64 %2130 to i32*
  store i32 1, i32* %2132, align 4
  %2133 = load i64, i64* %3, align 8
  %2134 = add i64 %2133, 810
  store i64 %2134, i64* %3, align 8
  br label %block_.L_424452

block_.L_42412d:                                  ; preds = %block_424068, %block_424096.block_.L_42412d_crit_edge
  %2135 = phi i64 [ %.pre225, %block_424096.block_.L_42412d_crit_edge ], [ %1915, %block_424068 ]
  %2136 = phi i64 [ %2046, %block_424096.block_.L_42412d_crit_edge ], [ %1985, %block_424068 ]
  %2137 = add i64 %2135, -24
  %2138 = add i64 %2136, 8
  store i64 %2138, i64* %3, align 8
  %2139 = inttoptr i64 %2137 to i32*
  %2140 = load i32, i32* %2139, align 4
  %2141 = add i32 %2140, 1
  %2142 = zext i32 %2141 to i64
  store i64 %2142, i64* %RAX.i1213, align 8
  %2143 = icmp eq i32 %2140, -1
  %2144 = icmp eq i32 %2141, 0
  %2145 = or i1 %2143, %2144
  %2146 = zext i1 %2145 to i8
  store i8 %2146, i8* %12, align 1
  %2147 = and i32 %2141, 255
  %2148 = tail call i32 @llvm.ctpop.i32(i32 %2147)
  %2149 = trunc i32 %2148 to i8
  %2150 = and i8 %2149, 1
  %2151 = xor i8 %2150, 1
  store i8 %2151, i8* %13, align 1
  %2152 = xor i32 %2141, %2140
  %2153 = lshr i32 %2152, 4
  %2154 = trunc i32 %2153 to i8
  %2155 = and i8 %2154, 1
  store i8 %2155, i8* %14, align 1
  %2156 = zext i1 %2144 to i8
  store i8 %2156, i8* %15, align 1
  %2157 = lshr i32 %2141, 31
  %2158 = trunc i32 %2157 to i8
  store i8 %2158, i8* %16, align 1
  %2159 = lshr i32 %2140, 31
  %2160 = xor i32 %2157, %2159
  %2161 = add nuw nsw i32 %2160, %2157
  %2162 = icmp eq i32 %2161, 2
  %2163 = zext i1 %2162 to i8
  store i8 %2163, i8* %17, align 1
  %2164 = add i64 %2136, 14
  store i64 %2164, i64* %3, align 8
  store i32 %2141, i32* %2139, align 4
  %2165 = load i64, i64* %3, align 8
  %2166 = add i64 %2165, -221
  store i64 %2166, i64* %3, align 8
  br label %block_.L_42405e

block_.L_424140:                                  ; preds = %block_.L_42405e
  %2167 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %2168 = and i32 %2167, 16384
  %2169 = zext i32 %2168 to i64
  store i64 %2169, i64* %RAX.i1213, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %.lobit239 = lshr exact i32 %2168, 14
  %2170 = trunc i32 %.lobit239 to i8
  %2171 = xor i8 %2170, 1
  store i8 %2171, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %2172 = icmp eq i8 %2171, 0
  %.v267 = select i1 %2172, i64 26, i64 21
  %2173 = add i64 %1902, %.v267
  store i64 %2173, i64* %3, align 8
  br i1 %2172, label %block_.L_42415a, label %block_424155

block_424155:                                     ; preds = %block_.L_424140
  %2174 = add i64 %2173, 28
  store i64 %2174, i64* %3, align 8
  br label %block_.L_424171

block_.L_42415a:                                  ; preds = %block_.L_424140
  store i64 ptrtoint (%G__0x57bc69_type* @G__0x57bc69 to i64), i64* %RDI.i1199, align 8
  store i8 0, i8* %AL.i815, align 1
  %2175 = add i64 %2173, 187478
  %2176 = add i64 %2173, 17
  %2177 = load i64, i64* %6, align 8
  %2178 = add i64 %2177, -8
  %2179 = inttoptr i64 %2178 to i64*
  store i64 %2176, i64* %2179, align 8
  store i64 %2178, i64* %6, align 8
  store i64 %2175, i64* %3, align 8
  %call2_424166 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2175, %struct.Memory* %MEMORY.28)
  %2180 = load i64, i64* %RBP.i, align 8
  %2181 = add i64 %2180, -1752
  %2182 = load i32, i32* %EAX.i1212, align 4
  %2183 = load i64, i64* %3, align 8
  %2184 = add i64 %2183, 6
  store i64 %2184, i64* %3, align 8
  %2185 = inttoptr i64 %2181 to i32*
  store i32 %2182, i32* %2185, align 4
  %.pre200 = load i64, i64* %RBP.i, align 8
  %.pre201 = load i64, i64* %3, align 8
  br label %block_.L_424171

block_.L_424171:                                  ; preds = %block_.L_42415a, %block_424155
  %2186 = phi i64 [ %.pre201, %block_.L_42415a ], [ %2174, %block_424155 ]
  %2187 = phi i64 [ %.pre200, %block_.L_42415a ], [ %1874, %block_424155 ]
  %MEMORY.32 = phi %struct.Memory* [ %call2_424166, %block_.L_42415a ], [ %MEMORY.28, %block_424155 ]
  %2188 = add i64 %2187, -24
  %2189 = add i64 %2186, 7
  store i64 %2189, i64* %3, align 8
  %2190 = inttoptr i64 %2188 to i32*
  store i32 0, i32* %2190, align 4
  %.pre202 = load i64, i64* %3, align 8
  br label %block_.L_424178

block_.L_424178:                                  ; preds = %block_.L_42427b, %block_.L_424171
  %2191 = phi i64 [ %.pre202, %block_.L_424171 ], [ %2540, %block_.L_42427b ]
  %2192 = load i64, i64* %RBP.i, align 8
  %2193 = add i64 %2192, -24
  %2194 = add i64 %2191, 4
  store i64 %2194, i64* %3, align 8
  %2195 = inttoptr i64 %2193 to i32*
  %2196 = load i32, i32* %2195, align 4
  %2197 = add i32 %2196, -4
  %2198 = icmp ult i32 %2196, 4
  %2199 = zext i1 %2198 to i8
  store i8 %2199, i8* %12, align 1
  %2200 = and i32 %2197, 255
  %2201 = tail call i32 @llvm.ctpop.i32(i32 %2200)
  %2202 = trunc i32 %2201 to i8
  %2203 = and i8 %2202, 1
  %2204 = xor i8 %2203, 1
  store i8 %2204, i8* %13, align 1
  %2205 = xor i32 %2197, %2196
  %2206 = lshr i32 %2205, 4
  %2207 = trunc i32 %2206 to i8
  %2208 = and i8 %2207, 1
  store i8 %2208, i8* %14, align 1
  %2209 = icmp eq i32 %2197, 0
  %2210 = zext i1 %2209 to i8
  store i8 %2210, i8* %15, align 1
  %2211 = lshr i32 %2197, 31
  %2212 = trunc i32 %2211 to i8
  store i8 %2212, i8* %16, align 1
  %2213 = lshr i32 %2196, 31
  %2214 = xor i32 %2211, %2213
  %2215 = add nuw nsw i32 %2214, %2213
  %2216 = icmp eq i32 %2215, 2
  %2217 = zext i1 %2216 to i8
  store i8 %2217, i8* %17, align 1
  %2218 = icmp ne i8 %2212, 0
  %2219 = xor i1 %2218, %2216
  %.v268 = select i1 %2219, i64 10, i64 278
  %2220 = add i64 %2191, %.v268
  store i64 %2220, i64* %3, align 8
  br i1 %2219, label %block_424182, label %block_.L_42428e

block_424182:                                     ; preds = %block_.L_424178
  %2221 = add i64 %2220, 4
  store i64 %2221, i64* %3, align 8
  %2222 = load i32, i32* %2195, align 4
  %2223 = sext i32 %2222 to i64
  store i64 %2223, i64* %RAX.i1213, align 8
  %2224 = shl nsw i64 %2223, 2
  %2225 = add nsw i64 %2224, 8053168
  %2226 = add i64 %2220, 11
  store i64 %2226, i64* %3, align 8
  %2227 = inttoptr i64 %2225 to i32*
  %2228 = load i32, i32* %2227, align 4
  %2229 = zext i32 %2228 to i64
  store i64 %2229, i64* %RCX.i1210, align 8
  %2230 = add i64 %2192, -1676
  %2231 = add i64 %2220, 17
  store i64 %2231, i64* %3, align 8
  %2232 = inttoptr i64 %2230 to i32*
  store i32 %2228, i32* %2232, align 4
  %2233 = load i64, i64* %RBP.i, align 8
  %2234 = add i64 %2233, -28
  %2235 = load i64, i64* %3, align 8
  %2236 = add i64 %2235, 3
  store i64 %2236, i64* %3, align 8
  %2237 = inttoptr i64 %2234 to i32*
  %2238 = load i32, i32* %2237, align 4
  %2239 = zext i32 %2238 to i64
  store i64 %2239, i64* %RCX.i1210, align 8
  %2240 = add i64 %2233, -1676
  %2241 = add i64 %2235, 9
  store i64 %2241, i64* %3, align 8
  %2242 = inttoptr i64 %2240 to i32*
  %2243 = load i32, i32* %2242, align 4
  %2244 = add i32 %2243, %2238
  %2245 = zext i32 %2244 to i64
  store i64 %2245, i64* %RCX.i1210, align 8
  %2246 = icmp ult i32 %2244, %2238
  %2247 = icmp ult i32 %2244, %2243
  %2248 = or i1 %2246, %2247
  %2249 = zext i1 %2248 to i8
  store i8 %2249, i8* %12, align 1
  %2250 = and i32 %2244, 255
  %2251 = tail call i32 @llvm.ctpop.i32(i32 %2250)
  %2252 = trunc i32 %2251 to i8
  %2253 = and i8 %2252, 1
  %2254 = xor i8 %2253, 1
  store i8 %2254, i8* %13, align 1
  %2255 = xor i32 %2243, %2238
  %2256 = xor i32 %2255, %2244
  %2257 = lshr i32 %2256, 4
  %2258 = trunc i32 %2257 to i8
  %2259 = and i8 %2258, 1
  store i8 %2259, i8* %14, align 1
  %2260 = icmp eq i32 %2244, 0
  %2261 = zext i1 %2260 to i8
  store i8 %2261, i8* %15, align 1
  %2262 = lshr i32 %2244, 31
  %2263 = trunc i32 %2262 to i8
  store i8 %2263, i8* %16, align 1
  %2264 = lshr i32 %2238, 31
  %2265 = lshr i32 %2243, 31
  %2266 = xor i32 %2262, %2264
  %2267 = xor i32 %2262, %2265
  %2268 = add nuw nsw i32 %2266, %2267
  %2269 = icmp eq i32 %2268, 2
  %2270 = zext i1 %2269 to i8
  store i8 %2270, i8* %17, align 1
  %2271 = sext i32 %2244 to i64
  store i64 %2271, i64* %RAX.i1213, align 8
  %2272 = add nsw i64 %2271, 12099168
  %2273 = add i64 %2235, 20
  store i64 %2273, i64* %3, align 8
  %2274 = inttoptr i64 %2272 to i8*
  %2275 = load i8, i8* %2274, align 1
  %2276 = zext i8 %2275 to i64
  store i64 %2276, i64* %RCX.i1210, align 8
  %2277 = zext i8 %2275 to i32
  %2278 = add i64 %2233, -32
  %2279 = add i64 %2235, 23
  store i64 %2279, i64* %3, align 8
  %2280 = inttoptr i64 %2278 to i32*
  %2281 = load i32, i32* %2280, align 4
  %2282 = sub i32 %2277, %2281
  %2283 = icmp ult i32 %2277, %2281
  %2284 = zext i1 %2283 to i8
  store i8 %2284, i8* %12, align 1
  %2285 = and i32 %2282, 255
  %2286 = tail call i32 @llvm.ctpop.i32(i32 %2285)
  %2287 = trunc i32 %2286 to i8
  %2288 = and i8 %2287, 1
  %2289 = xor i8 %2288, 1
  store i8 %2289, i8* %13, align 1
  %2290 = xor i32 %2281, %2277
  %2291 = xor i32 %2290, %2282
  %2292 = lshr i32 %2291, 4
  %2293 = trunc i32 %2292 to i8
  %2294 = and i8 %2293, 1
  store i8 %2294, i8* %14, align 1
  %2295 = icmp eq i32 %2282, 0
  %2296 = zext i1 %2295 to i8
  store i8 %2296, i8* %15, align 1
  %2297 = lshr i32 %2282, 31
  %2298 = trunc i32 %2297 to i8
  store i8 %2298, i8* %16, align 1
  %2299 = lshr i32 %2281, 31
  %2300 = add nuw nsw i32 %2297, %2299
  %2301 = icmp eq i32 %2300, 2
  %2302 = zext i1 %2301 to i8
  store i8 %2302, i8* %17, align 1
  %.v277 = select i1 %2295, i64 29, i64 232
  %2303 = add i64 %2235, %.v277
  store i64 %2303, i64* %3, align 8
  br i1 %2295, label %block_4241b0, label %block_.L_42427b

block_4241b0:                                     ; preds = %block_424182
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i1213, align 8
  %2304 = add i64 %2303, 13
  store i64 %2304, i64* %3, align 8
  %2305 = load i32, i32* %2237, align 4
  %2306 = zext i32 %2305 to i64
  store i64 %2306, i64* %RCX.i1210, align 8
  %2307 = add i64 %2303, 19
  store i64 %2307, i64* %3, align 8
  %2308 = load i32, i32* %2242, align 4
  %2309 = add i32 %2308, %2305
  %2310 = zext i32 %2309 to i64
  store i64 %2310, i64* %RCX.i1210, align 8
  %2311 = sext i32 %2309 to i64
  %2312 = mul nsw i64 %2311, 380
  store i64 %2312, i64* %RDX.i1208, align 8
  %2313 = lshr i64 %2312, 63
  %2314 = add i64 %2312, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %2314, i64* %RAX.i1213, align 8
  %2315 = icmp ult i64 %2314, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2316 = icmp ult i64 %2314, %2312
  %2317 = or i1 %2315, %2316
  %2318 = zext i1 %2317 to i8
  store i8 %2318, i8* %12, align 1
  %2319 = trunc i64 %2314 to i32
  %2320 = and i32 %2319, 252
  %2321 = tail call i32 @llvm.ctpop.i32(i32 %2320)
  %2322 = trunc i32 %2321 to i8
  %2323 = and i8 %2322, 1
  %2324 = xor i8 %2323, 1
  store i8 %2324, i8* %13, align 1
  %2325 = xor i64 %2312, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2326 = xor i64 %2325, %2314
  %2327 = lshr i64 %2326, 4
  %2328 = trunc i64 %2327 to i8
  %2329 = and i8 %2328, 1
  store i8 %2329, i8* %14, align 1
  %2330 = icmp eq i64 %2314, 0
  %2331 = zext i1 %2330 to i8
  store i8 %2331, i8* %15, align 1
  %2332 = lshr i64 %2314, 63
  %2333 = trunc i64 %2332 to i8
  store i8 %2333, i8* %16, align 1
  %2334 = xor i64 %2332, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %2335 = xor i64 %2332, %2313
  %2336 = add nuw nsw i64 %2334, %2335
  %2337 = icmp eq i64 %2336, 2
  %2338 = zext i1 %2337 to i8
  store i8 %2338, i8* %17, align 1
  %2339 = add i64 %2312, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 100)
  %2340 = add i64 %2303, 36
  store i64 %2340, i64* %3, align 8
  %2341 = inttoptr i64 %2339 to i32*
  %2342 = load i32, i32* %2341, align 4
  store i8 0, i8* %12, align 1
  %2343 = and i32 %2342, 255
  %2344 = tail call i32 @llvm.ctpop.i32(i32 %2343)
  %2345 = trunc i32 %2344 to i8
  %2346 = and i8 %2345, 1
  %2347 = xor i8 %2346, 1
  store i8 %2347, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2348 = icmp eq i32 %2342, 0
  %2349 = zext i1 %2348 to i8
  store i8 %2349, i8* %15, align 1
  %2350 = lshr i32 %2342, 31
  %2351 = trunc i32 %2350 to i8
  store i8 %2351, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v278 = select i1 %2348, i64 203, i64 42
  %2352 = add i64 %2303, %.v278
  store i64 %2352, i64* %3, align 8
  br i1 %2348, label %block_.L_42427b, label %block_4241da

block_4241da:                                     ; preds = %block_4241b0
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i1213, align 8
  %2353 = load i64, i64* %RBP.i, align 8
  %2354 = add i64 %2353, -28
  %2355 = add i64 %2352, 13
  store i64 %2355, i64* %3, align 8
  %2356 = inttoptr i64 %2354 to i32*
  %2357 = load i32, i32* %2356, align 4
  %2358 = zext i32 %2357 to i64
  store i64 %2358, i64* %RCX.i1210, align 8
  %2359 = add i64 %2353, -1676
  %2360 = add i64 %2352, 19
  store i64 %2360, i64* %3, align 8
  %2361 = inttoptr i64 %2359 to i32*
  %2362 = load i32, i32* %2361, align 4
  %2363 = add i32 %2362, %2357
  %2364 = zext i32 %2363 to i64
  store i64 %2364, i64* %RCX.i1210, align 8
  %2365 = sext i32 %2363 to i64
  %2366 = mul nsw i64 %2365, 380
  store i64 %2366, i64* %RDX.i1208, align 8
  %2367 = lshr i64 %2366, 63
  %2368 = add i64 %2366, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %2368, i64* %RAX.i1213, align 8
  %2369 = icmp ult i64 %2368, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2370 = icmp ult i64 %2368, %2366
  %2371 = or i1 %2369, %2370
  %2372 = zext i1 %2371 to i8
  store i8 %2372, i8* %12, align 1
  %2373 = trunc i64 %2368 to i32
  %2374 = and i32 %2373, 252
  %2375 = tail call i32 @llvm.ctpop.i32(i32 %2374)
  %2376 = trunc i32 %2375 to i8
  %2377 = and i8 %2376, 1
  %2378 = xor i8 %2377, 1
  store i8 %2378, i8* %13, align 1
  %2379 = xor i64 %2366, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2380 = xor i64 %2379, %2368
  %2381 = lshr i64 %2380, 4
  %2382 = trunc i64 %2381 to i8
  %2383 = and i8 %2382, 1
  store i8 %2383, i8* %14, align 1
  %2384 = icmp eq i64 %2368, 0
  %2385 = zext i1 %2384 to i8
  store i8 %2385, i8* %15, align 1
  %2386 = lshr i64 %2368, 63
  %2387 = trunc i64 %2386 to i8
  store i8 %2387, i8* %16, align 1
  %2388 = xor i64 %2386, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %2389 = xor i64 %2386, %2367
  %2390 = add nuw nsw i64 %2388, %2389
  %2391 = icmp eq i64 %2390, 2
  %2392 = zext i1 %2391 to i8
  store i8 %2392, i8* %17, align 1
  %2393 = add i64 %2366, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 60)
  %2394 = add i64 %2352, 35
  store i64 %2394, i64* %3, align 8
  %2395 = inttoptr i64 %2393 to i32*
  %2396 = load i32, i32* %2395, align 4
  %2397 = zext i32 %2396 to i64
  store i64 %2397, i64* %RDI.i1199, align 8
  %2398 = load i64, i64* %RBP.i, align 8
  %2399 = add i64 %2398, -20
  %2400 = add i64 %2352, 38
  store i64 %2400, i64* %3, align 8
  %2401 = inttoptr i64 %2399 to i32*
  %2402 = load i32, i32* %2401, align 4
  %2403 = zext i32 %2402 to i64
  store i64 %2403, i64* %RSI.i1187, align 8
  %2404 = add i64 %2352, -87818
  %2405 = add i64 %2352, 43
  %2406 = load i64, i64* %6, align 8
  %2407 = add i64 %2406, -8
  %2408 = inttoptr i64 %2407 to i64*
  store i64 %2405, i64* %2408, align 8
  store i64 %2407, i64* %6, align 8
  store i64 %2404, i64* %3, align 8
  %call2_424200 = tail call %struct.Memory* @sub_40ead0.is_legal(%struct.State* nonnull %0, i64 %2404, %struct.Memory* %MEMORY.32)
  %2409 = load i32, i32* %EAX.i1212, align 4
  %2410 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %2411 = and i32 %2409, 255
  %2412 = tail call i32 @llvm.ctpop.i32(i32 %2411)
  %2413 = trunc i32 %2412 to i8
  %2414 = and i8 %2413, 1
  %2415 = xor i8 %2414, 1
  store i8 %2415, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2416 = icmp eq i32 %2409, 0
  %2417 = zext i1 %2416 to i8
  store i8 %2417, i8* %15, align 1
  %2418 = lshr i32 %2409, 31
  %2419 = trunc i32 %2418 to i8
  store i8 %2419, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v279 = select i1 %2416, i64 118, i64 9
  %2420 = add i64 %2410, %.v279
  store i64 %2420, i64* %3, align 8
  br i1 %2416, label %block_.L_42427b, label %block_42420e

block_42420e:                                     ; preds = %block_4241da
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i1213, align 8
  %2421 = load i64, i64* %RBP.i, align 8
  %2422 = add i64 %2421, -28
  %2423 = add i64 %2420, 13
  store i64 %2423, i64* %3, align 8
  %2424 = inttoptr i64 %2422 to i32*
  %2425 = load i32, i32* %2424, align 4
  %2426 = zext i32 %2425 to i64
  store i64 %2426, i64* %RCX.i1210, align 8
  %2427 = add i64 %2421, -1676
  %2428 = add i64 %2420, 19
  store i64 %2428, i64* %3, align 8
  %2429 = inttoptr i64 %2427 to i32*
  %2430 = load i32, i32* %2429, align 4
  %2431 = add i32 %2430, %2425
  %2432 = zext i32 %2431 to i64
  store i64 %2432, i64* %RCX.i1210, align 8
  %2433 = sext i32 %2431 to i64
  %2434 = mul nsw i64 %2433, 380
  store i64 %2434, i64* %RDX.i1208, align 8
  %2435 = lshr i64 %2434, 63
  %2436 = add i64 %2434, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %2436, i64* %RAX.i1213, align 8
  %2437 = icmp ult i64 %2436, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2438 = icmp ult i64 %2436, %2434
  %2439 = or i1 %2437, %2438
  %2440 = zext i1 %2439 to i8
  store i8 %2440, i8* %12, align 1
  %2441 = trunc i64 %2436 to i32
  %2442 = and i32 %2441, 252
  %2443 = tail call i32 @llvm.ctpop.i32(i32 %2442)
  %2444 = trunc i32 %2443 to i8
  %2445 = and i8 %2444, 1
  %2446 = xor i8 %2445, 1
  store i8 %2446, i8* %13, align 1
  %2447 = xor i64 %2434, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2448 = xor i64 %2447, %2436
  %2449 = lshr i64 %2448, 4
  %2450 = trunc i64 %2449 to i8
  %2451 = and i8 %2450, 1
  store i8 %2451, i8* %14, align 1
  %2452 = icmp eq i64 %2436, 0
  %2453 = zext i1 %2452 to i8
  store i8 %2453, i8* %15, align 1
  %2454 = lshr i64 %2436, 63
  %2455 = trunc i64 %2454 to i8
  store i8 %2455, i8* %16, align 1
  %2456 = xor i64 %2454, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %2457 = xor i64 %2454, %2435
  %2458 = add nuw nsw i64 %2456, %2457
  %2459 = icmp eq i64 %2458, 2
  %2460 = zext i1 %2459 to i8
  store i8 %2460, i8* %17, align 1
  %2461 = add i64 %2434, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 60)
  %2462 = add i64 %2420, 35
  store i64 %2462, i64* %3, align 8
  %2463 = inttoptr i64 %2461 to i32*
  %2464 = load i32, i32* %2463, align 4
  %2465 = zext i32 %2464 to i64
  store i64 %2465, i64* %RCX.i1210, align 8
  %2466 = load i64, i64* %RBP.i, align 8
  %2467 = add i64 %2466, -16
  %2468 = add i64 %2420, 39
  store i64 %2468, i64* %3, align 8
  %2469 = inttoptr i64 %2467 to i64*
  %2470 = load i64, i64* %2469, align 8
  store i64 %2470, i64* %RAX.i1213, align 8
  %2471 = add i64 %2420, 41
  store i64 %2471, i64* %3, align 8
  %2472 = inttoptr i64 %2470 to i32*
  store i32 %2464, i32* %2472, align 4
  %2473 = load i64, i64* %3, align 8
  %2474 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %2475 = and i32 %2474, 16384
  %2476 = zext i32 %2475 to i64
  store i64 %2476, i64* %RCX.i1210, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %.lobit242 = lshr exact i32 %2475, 14
  %2477 = trunc i32 %.lobit242 to i8
  %2478 = xor i8 %2477, 1
  store i8 %2478, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %2479 = icmp eq i8 %2478, 0
  %.v280 = select i1 %2479, i64 27, i64 22
  %2480 = add i64 %2473, %.v280
  store i64 %2480, i64* %3, align 8
  br i1 %2479, label %block_.L_424252, label %block_42424d

block_42424d:                                     ; preds = %block_42420e
  %2481 = add i64 %2480, 34
  store i64 %2481, i64* %3, align 8
  br label %block_.L_42426f

block_.L_424252:                                  ; preds = %block_42420e
  store i64 ptrtoint (%G__0x57bc51_type* @G__0x57bc51 to i64), i64* %RDI.i1199, align 8
  %2482 = load i64, i64* %RBP.i, align 8
  %2483 = add i64 %2482, -16
  %2484 = add i64 %2480, 14
  store i64 %2484, i64* %3, align 8
  %2485 = inttoptr i64 %2483 to i64*
  %2486 = load i64, i64* %2485, align 8
  store i64 %2486, i64* %RAX.i1213, align 8
  %2487 = add i64 %2480, 16
  store i64 %2487, i64* %3, align 8
  %2488 = inttoptr i64 %2486 to i32*
  %2489 = load i32, i32* %2488, align 4
  %2490 = zext i32 %2489 to i64
  store i64 %2490, i64* %RSI.i1187, align 8
  store i8 0, i8* %AL.i815, align 1
  %2491 = add i64 %2480, 187230
  %2492 = add i64 %2480, 23
  %2493 = load i64, i64* %6, align 8
  %2494 = add i64 %2493, -8
  %2495 = inttoptr i64 %2494 to i64*
  store i64 %2492, i64* %2495, align 8
  store i64 %2494, i64* %6, align 8
  store i64 %2491, i64* %3, align 8
  %call2_424264 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2491, %struct.Memory* %MEMORY.32)
  %2496 = load i64, i64* %RBP.i, align 8
  %2497 = add i64 %2496, -1756
  %2498 = load i32, i32* %EAX.i1212, align 4
  %2499 = load i64, i64* %3, align 8
  %2500 = add i64 %2499, 6
  store i64 %2500, i64* %3, align 8
  %2501 = inttoptr i64 %2497 to i32*
  store i32 %2498, i32* %2501, align 4
  %.pre207 = load i64, i64* %3, align 8
  br label %block_.L_42426f

block_.L_42426f:                                  ; preds = %block_.L_424252, %block_42424d
  %2502 = phi i64 [ %.pre207, %block_.L_424252 ], [ %2481, %block_42424d ]
  %MEMORY.34 = phi %struct.Memory* [ %call2_424264, %block_.L_424252 ], [ %MEMORY.32, %block_42424d ]
  %2503 = load i64, i64* %RBP.i, align 8
  %2504 = add i64 %2503, -4
  %2505 = add i64 %2502, 7
  store i64 %2505, i64* %3, align 8
  %2506 = inttoptr i64 %2504 to i32*
  store i32 1, i32* %2506, align 4
  %2507 = load i64, i64* %3, align 8
  %2508 = add i64 %2507, 476
  store i64 %2508, i64* %3, align 8
  br label %block_.L_424452

block_.L_42427b:                                  ; preds = %block_424182, %block_4241da, %block_4241b0
  %2509 = phi i64 [ %2420, %block_4241da ], [ %2352, %block_4241b0 ], [ %2303, %block_424182 ]
  %2510 = load i64, i64* %RBP.i, align 8
  %2511 = add i64 %2510, -24
  %2512 = add i64 %2509, 8
  store i64 %2512, i64* %3, align 8
  %2513 = inttoptr i64 %2511 to i32*
  %2514 = load i32, i32* %2513, align 4
  %2515 = add i32 %2514, 1
  %2516 = zext i32 %2515 to i64
  store i64 %2516, i64* %RAX.i1213, align 8
  %2517 = icmp eq i32 %2514, -1
  %2518 = icmp eq i32 %2515, 0
  %2519 = or i1 %2517, %2518
  %2520 = zext i1 %2519 to i8
  store i8 %2520, i8* %12, align 1
  %2521 = and i32 %2515, 255
  %2522 = tail call i32 @llvm.ctpop.i32(i32 %2521)
  %2523 = trunc i32 %2522 to i8
  %2524 = and i8 %2523, 1
  %2525 = xor i8 %2524, 1
  store i8 %2525, i8* %13, align 1
  %2526 = xor i32 %2515, %2514
  %2527 = lshr i32 %2526, 4
  %2528 = trunc i32 %2527 to i8
  %2529 = and i8 %2528, 1
  store i8 %2529, i8* %14, align 1
  %2530 = zext i1 %2518 to i8
  store i8 %2530, i8* %15, align 1
  %2531 = lshr i32 %2515, 31
  %2532 = trunc i32 %2531 to i8
  store i8 %2532, i8* %16, align 1
  %2533 = lshr i32 %2514, 31
  %2534 = xor i32 %2531, %2533
  %2535 = add nuw nsw i32 %2534, %2531
  %2536 = icmp eq i32 %2535, 2
  %2537 = zext i1 %2536 to i8
  store i8 %2537, i8* %17, align 1
  %2538 = add i64 %2509, 14
  store i64 %2538, i64* %3, align 8
  store i32 %2515, i32* %2513, align 4
  %2539 = load i64, i64* %3, align 8
  %2540 = add i64 %2539, -273
  store i64 %2540, i64* %3, align 8
  br label %block_.L_424178

block_.L_42428e:                                  ; preds = %block_.L_424178
  %2541 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %2542 = and i32 %2541, 16384
  %2543 = zext i32 %2542 to i64
  store i64 %2543, i64* %RAX.i1213, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %.lobit240 = lshr exact i32 %2542, 14
  %2544 = trunc i32 %.lobit240 to i8
  %2545 = xor i8 %2544, 1
  store i8 %2545, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %2546 = icmp eq i8 %2545, 0
  %.v269 = select i1 %2546, i64 26, i64 21
  %2547 = add i64 %2220, %.v269
  store i64 %2547, i64* %3, align 8
  br i1 %2546, label %block_.L_4242a8, label %block_4242a3

block_4242a3:                                     ; preds = %block_.L_42428e
  %2548 = add i64 %2547, 28
  store i64 %2548, i64* %3, align 8
  br label %block_.L_4242bf

block_.L_4242a8:                                  ; preds = %block_.L_42428e
  store i64 ptrtoint (%G__0x57bc9f_type* @G__0x57bc9f to i64), i64* %RDI.i1199, align 8
  store i8 0, i8* %AL.i815, align 1
  %2549 = add i64 %2547, 187144
  %2550 = add i64 %2547, 17
  %2551 = load i64, i64* %6, align 8
  %2552 = add i64 %2551, -8
  %2553 = inttoptr i64 %2552 to i64*
  store i64 %2550, i64* %2553, align 8
  store i64 %2552, i64* %6, align 8
  store i64 %2549, i64* %3, align 8
  %call2_4242b4 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2549, %struct.Memory* %MEMORY.32)
  %2554 = load i64, i64* %RBP.i, align 8
  %2555 = add i64 %2554, -1760
  %2556 = load i32, i32* %EAX.i1212, align 4
  %2557 = load i64, i64* %3, align 8
  %2558 = add i64 %2557, 6
  store i64 %2558, i64* %3, align 8
  %2559 = inttoptr i64 %2555 to i32*
  store i32 %2556, i32* %2559, align 4
  %.pre203 = load i64, i64* %RBP.i, align 8
  %.pre204 = load i64, i64* %3, align 8
  br label %block_.L_4242bf

block_.L_4242bf:                                  ; preds = %block_.L_4242a8, %block_4242a3
  %2560 = phi i64 [ %.pre204, %block_.L_4242a8 ], [ %2548, %block_4242a3 ]
  %2561 = phi i64 [ %.pre203, %block_.L_4242a8 ], [ %2192, %block_4242a3 ]
  %MEMORY.36 = phi %struct.Memory* [ %call2_4242b4, %block_.L_4242a8 ], [ %MEMORY.32, %block_4242a3 ]
  %2562 = add i64 %2561, -24
  %2563 = add i64 %2560, 7
  store i64 %2563, i64* %3, align 8
  %2564 = inttoptr i64 %2562 to i32*
  store i32 0, i32* %2564, align 4
  %.pre205 = load i64, i64* %3, align 8
  br label %block_.L_4242c6

block_.L_4242c6:                                  ; preds = %block_.L_4243f4, %block_.L_4242bf
  %2565 = phi i64 [ %.pre205, %block_.L_4242bf ], [ %2949, %block_.L_4243f4 ]
  %2566 = load i64, i64* %RBP.i, align 8
  %2567 = add i64 %2566, -24
  %2568 = add i64 %2565, 4
  store i64 %2568, i64* %3, align 8
  %2569 = inttoptr i64 %2567 to i32*
  %2570 = load i32, i32* %2569, align 4
  %2571 = add i32 %2570, -4
  %2572 = icmp ult i32 %2570, 4
  %2573 = zext i1 %2572 to i8
  store i8 %2573, i8* %12, align 1
  %2574 = and i32 %2571, 255
  %2575 = tail call i32 @llvm.ctpop.i32(i32 %2574)
  %2576 = trunc i32 %2575 to i8
  %2577 = and i8 %2576, 1
  %2578 = xor i8 %2577, 1
  store i8 %2578, i8* %13, align 1
  %2579 = xor i32 %2571, %2570
  %2580 = lshr i32 %2579, 4
  %2581 = trunc i32 %2580 to i8
  %2582 = and i8 %2581, 1
  store i8 %2582, i8* %14, align 1
  %2583 = icmp eq i32 %2571, 0
  %2584 = zext i1 %2583 to i8
  store i8 %2584, i8* %15, align 1
  %2585 = lshr i32 %2571, 31
  %2586 = trunc i32 %2585 to i8
  store i8 %2586, i8* %16, align 1
  %2587 = lshr i32 %2570, 31
  %2588 = xor i32 %2585, %2587
  %2589 = add nuw nsw i32 %2588, %2587
  %2590 = icmp eq i32 %2589, 2
  %2591 = zext i1 %2590 to i8
  store i8 %2591, i8* %17, align 1
  %2592 = icmp ne i8 %2586, 0
  %2593 = xor i1 %2592, %2590
  %.v270 = select i1 %2593, i64 10, i64 316
  %2594 = add i64 %2565, %.v270
  store i64 %2594, i64* %3, align 8
  br i1 %2593, label %block_4242d0, label %block_.L_424402

block_4242d0:                                     ; preds = %block_.L_4242c6
  %2595 = add i64 %2594, 4
  store i64 %2595, i64* %3, align 8
  %2596 = load i32, i32* %2569, align 4
  %2597 = sext i32 %2596 to i64
  store i64 %2597, i64* %RAX.i1213, align 8
  %2598 = shl nsw i64 %2597, 2
  %2599 = add nsw i64 %2598, 8053168
  %2600 = add i64 %2594, 11
  store i64 %2600, i64* %3, align 8
  %2601 = inttoptr i64 %2599 to i32*
  %2602 = load i32, i32* %2601, align 4
  %2603 = zext i32 %2602 to i64
  store i64 %2603, i64* %RCX.i1210, align 8
  %2604 = add i64 %2566, -1680
  %2605 = add i64 %2594, 17
  store i64 %2605, i64* %3, align 8
  %2606 = inttoptr i64 %2604 to i32*
  store i32 %2602, i32* %2606, align 4
  %2607 = load i64, i64* %RBP.i, align 8
  %2608 = add i64 %2607, -28
  %2609 = load i64, i64* %3, align 8
  %2610 = add i64 %2609, 3
  store i64 %2610, i64* %3, align 8
  %2611 = inttoptr i64 %2608 to i32*
  %2612 = load i32, i32* %2611, align 4
  %2613 = zext i32 %2612 to i64
  store i64 %2613, i64* %RCX.i1210, align 8
  %2614 = add i64 %2607, -1680
  %2615 = add i64 %2609, 9
  store i64 %2615, i64* %3, align 8
  %2616 = inttoptr i64 %2614 to i32*
  %2617 = load i32, i32* %2616, align 4
  %2618 = add i32 %2617, %2612
  %2619 = zext i32 %2618 to i64
  store i64 %2619, i64* %RCX.i1210, align 8
  %2620 = icmp ult i32 %2618, %2612
  %2621 = icmp ult i32 %2618, %2617
  %2622 = or i1 %2620, %2621
  %2623 = zext i1 %2622 to i8
  store i8 %2623, i8* %12, align 1
  %2624 = and i32 %2618, 255
  %2625 = tail call i32 @llvm.ctpop.i32(i32 %2624)
  %2626 = trunc i32 %2625 to i8
  %2627 = and i8 %2626, 1
  %2628 = xor i8 %2627, 1
  store i8 %2628, i8* %13, align 1
  %2629 = xor i32 %2617, %2612
  %2630 = xor i32 %2629, %2618
  %2631 = lshr i32 %2630, 4
  %2632 = trunc i32 %2631 to i8
  %2633 = and i8 %2632, 1
  store i8 %2633, i8* %14, align 1
  %2634 = icmp eq i32 %2618, 0
  %2635 = zext i1 %2634 to i8
  store i8 %2635, i8* %15, align 1
  %2636 = lshr i32 %2618, 31
  %2637 = trunc i32 %2636 to i8
  store i8 %2637, i8* %16, align 1
  %2638 = lshr i32 %2612, 31
  %2639 = lshr i32 %2617, 31
  %2640 = xor i32 %2636, %2638
  %2641 = xor i32 %2636, %2639
  %2642 = add nuw nsw i32 %2640, %2641
  %2643 = icmp eq i32 %2642, 2
  %2644 = zext i1 %2643 to i8
  store i8 %2644, i8* %17, align 1
  %2645 = sext i32 %2618 to i64
  store i64 %2645, i64* %RAX.i1213, align 8
  %2646 = add nsw i64 %2645, 12099168
  %2647 = add i64 %2609, 20
  store i64 %2647, i64* %3, align 8
  %2648 = inttoptr i64 %2646 to i8*
  %2649 = load i8, i8* %2648, align 1
  %2650 = zext i8 %2649 to i64
  store i64 %2650, i64* %RCX.i1210, align 8
  %2651 = zext i8 %2649 to i32
  %2652 = add i64 %2607, -32
  %2653 = add i64 %2609, 23
  store i64 %2653, i64* %3, align 8
  %2654 = inttoptr i64 %2652 to i32*
  %2655 = load i32, i32* %2654, align 4
  %2656 = sub i32 %2651, %2655
  %2657 = icmp ult i32 %2651, %2655
  %2658 = zext i1 %2657 to i8
  store i8 %2658, i8* %12, align 1
  %2659 = and i32 %2656, 255
  %2660 = tail call i32 @llvm.ctpop.i32(i32 %2659)
  %2661 = trunc i32 %2660 to i8
  %2662 = and i8 %2661, 1
  %2663 = xor i8 %2662, 1
  store i8 %2663, i8* %13, align 1
  %2664 = xor i32 %2655, %2651
  %2665 = xor i32 %2664, %2656
  %2666 = lshr i32 %2665, 4
  %2667 = trunc i32 %2666 to i8
  %2668 = and i8 %2667, 1
  store i8 %2668, i8* %14, align 1
  %2669 = icmp eq i32 %2656, 0
  %2670 = zext i1 %2669 to i8
  store i8 %2670, i8* %15, align 1
  %2671 = lshr i32 %2656, 31
  %2672 = trunc i32 %2671 to i8
  store i8 %2672, i8* %16, align 1
  %2673 = lshr i32 %2655, 31
  %2674 = add nuw nsw i32 %2671, %2673
  %2675 = icmp eq i32 %2674, 2
  %2676 = zext i1 %2675 to i8
  store i8 %2676, i8* %17, align 1
  %.v271 = select i1 %2669, i64 29, i64 270
  %2677 = add i64 %2609, %.v271
  store i64 %2677, i64* %3, align 8
  br i1 %2669, label %block_4242fe, label %block_.L_4243ef

block_4242fe:                                     ; preds = %block_4242d0
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i1213, align 8
  %2678 = add i64 %2677, 13
  store i64 %2678, i64* %3, align 8
  %2679 = load i32, i32* %2611, align 4
  %2680 = zext i32 %2679 to i64
  store i64 %2680, i64* %RCX.i1210, align 8
  %2681 = add i64 %2677, 19
  store i64 %2681, i64* %3, align 8
  %2682 = load i32, i32* %2616, align 4
  %2683 = add i32 %2682, %2679
  %2684 = zext i32 %2683 to i64
  store i64 %2684, i64* %RCX.i1210, align 8
  %2685 = sext i32 %2683 to i64
  %2686 = mul nsw i64 %2685, 380
  store i64 %2686, i64* %RDX.i1208, align 8
  %2687 = lshr i64 %2686, 63
  %2688 = add i64 %2686, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  store i64 %2688, i64* %RAX.i1213, align 8
  %2689 = icmp ult i64 %2688, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2690 = icmp ult i64 %2688, %2686
  %2691 = or i1 %2689, %2690
  %2692 = zext i1 %2691 to i8
  store i8 %2692, i8* %12, align 1
  %2693 = trunc i64 %2688 to i32
  %2694 = and i32 %2693, 252
  %2695 = tail call i32 @llvm.ctpop.i32(i32 %2694)
  %2696 = trunc i32 %2695 to i8
  %2697 = and i8 %2696, 1
  %2698 = xor i8 %2697, 1
  store i8 %2698, i8* %13, align 1
  %2699 = xor i64 %2686, ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64)
  %2700 = xor i64 %2699, %2688
  %2701 = lshr i64 %2700, 4
  %2702 = trunc i64 %2701 to i8
  %2703 = and i8 %2702, 1
  store i8 %2703, i8* %14, align 1
  %2704 = icmp eq i64 %2688, 0
  %2705 = zext i1 %2704 to i8
  store i8 %2705, i8* %15, align 1
  %2706 = lshr i64 %2688, 63
  %2707 = trunc i64 %2706 to i8
  store i8 %2707, i8* %16, align 1
  %2708 = xor i64 %2706, lshr (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 63)
  %2709 = xor i64 %2706, %2687
  %2710 = add nuw nsw i64 %2708, %2709
  %2711 = icmp eq i64 %2710, 2
  %2712 = zext i1 %2711 to i8
  store i8 %2712, i8* %17, align 1
  %2713 = add i64 %2686, add (i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64 100)
  %2714 = add i64 %2677, 36
  store i64 %2714, i64* %3, align 8
  %2715 = inttoptr i64 %2713 to i32*
  %2716 = load i32, i32* %2715, align 4
  store i8 0, i8* %12, align 1
  %2717 = and i32 %2716, 255
  %2718 = tail call i32 @llvm.ctpop.i32(i32 %2717)
  %2719 = trunc i32 %2718 to i8
  %2720 = and i8 %2719, 1
  %2721 = xor i8 %2720, 1
  store i8 %2721, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2722 = icmp eq i32 %2716, 0
  %2723 = zext i1 %2722 to i8
  store i8 %2723, i8* %15, align 1
  %2724 = lshr i32 %2716, 31
  %2725 = trunc i32 %2724 to i8
  store i8 %2725, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v272 = select i1 %2722, i64 241, i64 42
  %2726 = add i64 %2677, %.v272
  store i64 %2726, i64* %3, align 8
  br i1 %2722, label %block_.L_4243ef, label %block_424328

block_424328:                                     ; preds = %block_4242fe
  store i64 2, i64* %RSI.i1187, align 8
  %2727 = load i64, i64* %RBP.i, align 8
  %2728 = add i64 %2727, -1688
  store i64 %2728, i64* %RDX.i1208, align 8
  %2729 = add i64 %2727, -28
  %2730 = add i64 %2726, 15
  store i64 %2730, i64* %3, align 8
  %2731 = inttoptr i64 %2729 to i32*
  %2732 = load i32, i32* %2731, align 4
  %2733 = zext i32 %2732 to i64
  store i64 %2733, i64* %RAX.i1213, align 8
  %2734 = add i64 %2727, -1680
  %2735 = add i64 %2726, 21
  store i64 %2735, i64* %3, align 8
  %2736 = inttoptr i64 %2734 to i32*
  %2737 = load i32, i32* %2736, align 4
  %2738 = add i32 %2737, %2732
  %2739 = zext i32 %2738 to i64
  store i64 %2739, i64* %RAX.i1213, align 8
  %2740 = icmp ult i32 %2738, %2732
  %2741 = icmp ult i32 %2738, %2737
  %2742 = or i1 %2740, %2741
  %2743 = zext i1 %2742 to i8
  store i8 %2743, i8* %12, align 1
  %2744 = and i32 %2738, 255
  %2745 = tail call i32 @llvm.ctpop.i32(i32 %2744)
  %2746 = trunc i32 %2745 to i8
  %2747 = and i8 %2746, 1
  %2748 = xor i8 %2747, 1
  store i8 %2748, i8* %13, align 1
  %2749 = xor i32 %2737, %2732
  %2750 = xor i32 %2749, %2738
  %2751 = lshr i32 %2750, 4
  %2752 = trunc i32 %2751 to i8
  %2753 = and i8 %2752, 1
  store i8 %2753, i8* %14, align 1
  %2754 = icmp eq i32 %2738, 0
  %2755 = zext i1 %2754 to i8
  store i8 %2755, i8* %15, align 1
  %2756 = lshr i32 %2738, 31
  %2757 = trunc i32 %2756 to i8
  store i8 %2757, i8* %16, align 1
  %2758 = lshr i32 %2732, 31
  %2759 = lshr i32 %2737, 31
  %2760 = xor i32 %2756, %2758
  %2761 = xor i32 %2756, %2759
  %2762 = add nuw nsw i32 %2760, %2761
  %2763 = icmp eq i32 %2762, 2
  %2764 = zext i1 %2763 to i8
  store i8 %2764, i8* %17, align 1
  store i64 %2739, i64* %RDI.i1199, align 8
  %2765 = add i64 %2726, -84712
  %2766 = add i64 %2726, 28
  %2767 = load i64, i64* %6, align 8
  %2768 = add i64 %2767, -8
  %2769 = inttoptr i64 %2768 to i64*
  store i64 %2766, i64* %2769, align 8
  store i64 %2768, i64* %6, align 8
  store i64 %2765, i64* %3, align 8
  %call2_42433f = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* nonnull %0, i64 %2765, %struct.Memory* %MEMORY.36)
  %2770 = load i32, i32* %EAX.i1212, align 4
  %2771 = load i64, i64* %3, align 8
  %2772 = add i32 %2770, -1
  %2773 = icmp eq i32 %2770, 0
  %2774 = zext i1 %2773 to i8
  store i8 %2774, i8* %12, align 1
  %2775 = and i32 %2772, 255
  %2776 = tail call i32 @llvm.ctpop.i32(i32 %2775)
  %2777 = trunc i32 %2776 to i8
  %2778 = and i8 %2777, 1
  %2779 = xor i8 %2778, 1
  store i8 %2779, i8* %13, align 1
  %2780 = xor i32 %2772, %2770
  %2781 = lshr i32 %2780, 4
  %2782 = trunc i32 %2781 to i8
  %2783 = and i8 %2782, 1
  store i8 %2783, i8* %14, align 1
  %2784 = icmp eq i32 %2772, 0
  %2785 = zext i1 %2784 to i8
  store i8 %2785, i8* %15, align 1
  %2786 = lshr i32 %2772, 31
  %2787 = trunc i32 %2786 to i8
  store i8 %2787, i8* %16, align 1
  %2788 = lshr i32 %2770, 31
  %2789 = xor i32 %2786, %2788
  %2790 = add nuw nsw i32 %2789, %2788
  %2791 = icmp eq i32 %2790, 2
  %2792 = zext i1 %2791 to i8
  store i8 %2792, i8* %17, align 1
  %2793 = icmp ne i8 %2787, 0
  %2794 = xor i1 %2793, %2791
  %2795 = or i1 %2784, %2794
  %.v273 = select i1 %2795, i64 166, i64 9
  %2796 = add i64 %2771, %.v273
  store i64 %2796, i64* %3, align 8
  br i1 %2795, label %block_.L_4243ea, label %block_42434d

block_42434d:                                     ; preds = %block_424328
  %2797 = load i64, i64* %RBP.i, align 8
  %2798 = add i64 %2797, -1688
  %2799 = add i64 %2796, 6
  store i64 %2799, i64* %3, align 8
  %2800 = inttoptr i64 %2798 to i32*
  %2801 = load i32, i32* %2800, align 4
  %2802 = zext i32 %2801 to i64
  store i64 %2802, i64* %RDI.i1199, align 8
  %2803 = add i64 %2797, -20
  %2804 = add i64 %2796, 9
  store i64 %2804, i64* %3, align 8
  %2805 = inttoptr i64 %2803 to i32*
  %2806 = load i32, i32* %2805, align 4
  %2807 = zext i32 %2806 to i64
  store i64 %2807, i64* %RSI.i1187, align 8
  %2808 = add i64 %2796, -88189
  %2809 = add i64 %2796, 14
  %2810 = load i64, i64* %6, align 8
  %2811 = add i64 %2810, -8
  %2812 = inttoptr i64 %2811 to i64*
  store i64 %2809, i64* %2812, align 8
  store i64 %2811, i64* %6, align 8
  store i64 %2808, i64* %3, align 8
  %call2_424356 = tail call %struct.Memory* @sub_40ead0.is_legal(%struct.State* nonnull %0, i64 %2808, %struct.Memory* %MEMORY.36)
  %2813 = load i32, i32* %EAX.i1212, align 4
  %2814 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %2815 = and i32 %2813, 255
  %2816 = tail call i32 @llvm.ctpop.i32(i32 %2815)
  %2817 = trunc i32 %2816 to i8
  %2818 = and i8 %2817, 1
  %2819 = xor i8 %2818, 1
  store i8 %2819, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2820 = icmp eq i32 %2813, 0
  %2821 = zext i1 %2820 to i8
  store i8 %2821, i8* %15, align 1
  %2822 = lshr i32 %2813, 31
  %2823 = trunc i32 %2822 to i8
  store i8 %2823, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v274 = select i1 %2820, i64 26, i64 9
  %2824 = add i64 %2814, %.v274
  store i64 %2824, i64* %3, align 8
  %2825 = load i64, i64* %RBP.i, align 8
  br i1 %2820, label %block_.L_424375, label %block_424364

block_424364:                                     ; preds = %block_42434d
  %2826 = add i64 %2825, -1688
  %2827 = add i64 %2824, 6
  store i64 %2827, i64* %3, align 8
  %2828 = inttoptr i64 %2826 to i32*
  %2829 = load i32, i32* %2828, align 4
  %2830 = zext i32 %2829 to i64
  store i64 %2830, i64* %RAX.i1213, align 8
  %2831 = add i64 %2825, -16
  %2832 = add i64 %2824, 10
  store i64 %2832, i64* %3, align 8
  %2833 = inttoptr i64 %2831 to i64*
  %2834 = load i64, i64* %2833, align 8
  store i64 %2834, i64* %RCX.i1210, align 8
  %2835 = add i64 %2824, 12
  store i64 %2835, i64* %3, align 8
  %2836 = inttoptr i64 %2834 to i32*
  store i32 %2829, i32* %2836, align 4
  %2837 = load i64, i64* %3, align 8
  %2838 = add i64 %2837, 55
  br label %block_.L_4243a7

block_.L_424375:                                  ; preds = %block_42434d
  %2839 = add i64 %2825, -1684
  %2840 = add i64 %2824, 6
  store i64 %2840, i64* %3, align 8
  %2841 = inttoptr i64 %2839 to i32*
  %2842 = load i32, i32* %2841, align 4
  %2843 = zext i32 %2842 to i64
  store i64 %2843, i64* %RDI.i1199, align 8
  %2844 = add i64 %2825, -20
  %2845 = add i64 %2824, 9
  store i64 %2845, i64* %3, align 8
  %2846 = inttoptr i64 %2844 to i32*
  %2847 = load i32, i32* %2846, align 4
  %2848 = zext i32 %2847 to i64
  store i64 %2848, i64* %RSI.i1187, align 8
  %2849 = add i64 %2824, -88229
  %2850 = add i64 %2824, 14
  %2851 = load i64, i64* %6, align 8
  %2852 = add i64 %2851, -8
  %2853 = inttoptr i64 %2852 to i64*
  store i64 %2850, i64* %2853, align 8
  store i64 %2852, i64* %6, align 8
  store i64 %2849, i64* %3, align 8
  %call2_42437e = tail call %struct.Memory* @sub_40ead0.is_legal(%struct.State* nonnull %0, i64 %2849, %struct.Memory* %MEMORY.36)
  %2854 = load i32, i32* %EAX.i1212, align 4
  %2855 = load i64, i64* %3, align 8
  store i8 0, i8* %12, align 1
  %2856 = and i32 %2854, 255
  %2857 = tail call i32 @llvm.ctpop.i32(i32 %2856)
  %2858 = trunc i32 %2857 to i8
  %2859 = and i8 %2858, 1
  %2860 = xor i8 %2859, 1
  store i8 %2860, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %2861 = icmp eq i32 %2854, 0
  %2862 = zext i1 %2861 to i8
  store i8 %2862, i8* %15, align 1
  %2863 = lshr i32 %2854, 31
  %2864 = trunc i32 %2863 to i8
  store i8 %2864, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %.v276 = select i1 %2861, i64 26, i64 9
  %2865 = add i64 %2855, %.v276
  store i64 %2865, i64* %3, align 8
  br i1 %2861, label %block_.L_42439d, label %block_42438c

block_42438c:                                     ; preds = %block_.L_424375
  %2866 = load i64, i64* %RBP.i, align 8
  %2867 = add i64 %2866, -1684
  %2868 = add i64 %2865, 6
  store i64 %2868, i64* %3, align 8
  %2869 = inttoptr i64 %2867 to i32*
  %2870 = load i32, i32* %2869, align 4
  %2871 = zext i32 %2870 to i64
  store i64 %2871, i64* %RAX.i1213, align 8
  %2872 = add i64 %2866, -16
  %2873 = add i64 %2865, 10
  store i64 %2873, i64* %3, align 8
  %2874 = inttoptr i64 %2872 to i64*
  %2875 = load i64, i64* %2874, align 8
  store i64 %2875, i64* %RCX.i1210, align 8
  %2876 = add i64 %2865, 12
  store i64 %2876, i64* %3, align 8
  %2877 = inttoptr i64 %2875 to i32*
  store i32 %2870, i32* %2877, align 4
  %2878 = load i64, i64* %3, align 8
  %2879 = add i64 %2878, 15
  store i64 %2879, i64* %3, align 8
  br label %block_.L_4243a7

block_.L_42439d:                                  ; preds = %block_.L_424375
  %2880 = add i64 %2865, 87
  br label %block_.L_4243f4

block_.L_4243a7:                                  ; preds = %block_42438c, %block_424364
  %storemerge76 = phi i64 [ %2838, %block_424364 ], [ %2879, %block_42438c ]
  %2881 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %2882 = and i32 %2881, 16384
  %2883 = zext i32 %2882 to i64
  store i64 %2883, i64* %RAX.i1213, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %.lobit241 = lshr exact i32 %2882, 14
  %2884 = trunc i32 %.lobit241 to i8
  %2885 = xor i8 %2884, 1
  store i8 %2885, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %2886 = icmp eq i8 %2885, 0
  %.v275 = select i1 %2886, i64 26, i64 21
  %2887 = add i64 %storemerge76, %.v275
  store i64 %2887, i64* %3, align 8
  br i1 %2886, label %block_.L_4243c1, label %block_4243bc

block_4243bc:                                     ; preds = %block_.L_4243a7
  %2888 = add i64 %2887, 34
  store i64 %2888, i64* %3, align 8
  br label %block_.L_4243de

block_.L_4243c1:                                  ; preds = %block_.L_4243a7
  store i64 ptrtoint (%G__0x57bc51_type* @G__0x57bc51 to i64), i64* %RDI.i1199, align 8
  %2889 = load i64, i64* %RBP.i, align 8
  %2890 = add i64 %2889, -16
  %2891 = add i64 %2887, 14
  store i64 %2891, i64* %3, align 8
  %2892 = inttoptr i64 %2890 to i64*
  %2893 = load i64, i64* %2892, align 8
  store i64 %2893, i64* %RAX.i1213, align 8
  %2894 = add i64 %2887, 16
  store i64 %2894, i64* %3, align 8
  %2895 = inttoptr i64 %2893 to i32*
  %2896 = load i32, i32* %2895, align 4
  %2897 = zext i32 %2896 to i64
  store i64 %2897, i64* %RSI.i1187, align 8
  store i8 0, i8* %AL.i815, align 1
  %2898 = add i64 %2887, 186863
  %2899 = add i64 %2887, 23
  %2900 = load i64, i64* %6, align 8
  %2901 = add i64 %2900, -8
  %2902 = inttoptr i64 %2901 to i64*
  store i64 %2899, i64* %2902, align 8
  store i64 %2901, i64* %6, align 8
  store i64 %2898, i64* %3, align 8
  %call2_4243d3 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2898, %struct.Memory* %MEMORY.36)
  %2903 = load i64, i64* %RBP.i, align 8
  %2904 = add i64 %2903, -1764
  %2905 = load i32, i32* %EAX.i1212, align 4
  %2906 = load i64, i64* %3, align 8
  %2907 = add i64 %2906, 6
  store i64 %2907, i64* %3, align 8
  %2908 = inttoptr i64 %2904 to i32*
  store i32 %2905, i32* %2908, align 4
  %.pre206 = load i64, i64* %3, align 8
  br label %block_.L_4243de

block_.L_4243de:                                  ; preds = %block_.L_4243c1, %block_4243bc
  %2909 = phi i64 [ %.pre206, %block_.L_4243c1 ], [ %2888, %block_4243bc ]
  %MEMORY.39 = phi %struct.Memory* [ %call2_4243d3, %block_.L_4243c1 ], [ %MEMORY.36, %block_4243bc ]
  %2910 = load i64, i64* %RBP.i, align 8
  %2911 = add i64 %2910, -4
  %2912 = add i64 %2909, 7
  store i64 %2912, i64* %3, align 8
  %2913 = inttoptr i64 %2911 to i32*
  store i32 1, i32* %2913, align 4
  %2914 = load i64, i64* %3, align 8
  %2915 = add i64 %2914, 109
  store i64 %2915, i64* %3, align 8
  br label %block_.L_424452

block_.L_4243ea:                                  ; preds = %block_424328
  %2916 = add i64 %2796, 5
  store i64 %2916, i64* %3, align 8
  br label %block_.L_4243ef

block_.L_4243ef:                                  ; preds = %block_4242d0, %block_.L_4243ea, %block_4242fe
  %2917 = phi i64 [ %2916, %block_.L_4243ea ], [ %2726, %block_4242fe ], [ %2677, %block_4242d0 ]
  %2918 = add i64 %2917, 5
  store i64 %2918, i64* %3, align 8
  br label %block_.L_4243f4

block_.L_4243f4:                                  ; preds = %block_.L_4243ef, %block_.L_42439d
  %storemerge78 = phi i64 [ %2880, %block_.L_42439d ], [ %2918, %block_.L_4243ef ]
  %2919 = load i64, i64* %RBP.i, align 8
  %2920 = add i64 %2919, -24
  %2921 = add i64 %storemerge78, 3
  store i64 %2921, i64* %3, align 8
  %2922 = inttoptr i64 %2920 to i32*
  %2923 = load i32, i32* %2922, align 4
  %2924 = add i32 %2923, 1
  %2925 = zext i32 %2924 to i64
  store i64 %2925, i64* %RAX.i1213, align 8
  %2926 = icmp eq i32 %2923, -1
  %2927 = icmp eq i32 %2924, 0
  %2928 = or i1 %2926, %2927
  %2929 = zext i1 %2928 to i8
  store i8 %2929, i8* %12, align 1
  %2930 = and i32 %2924, 255
  %2931 = tail call i32 @llvm.ctpop.i32(i32 %2930)
  %2932 = trunc i32 %2931 to i8
  %2933 = and i8 %2932, 1
  %2934 = xor i8 %2933, 1
  store i8 %2934, i8* %13, align 1
  %2935 = xor i32 %2924, %2923
  %2936 = lshr i32 %2935, 4
  %2937 = trunc i32 %2936 to i8
  %2938 = and i8 %2937, 1
  store i8 %2938, i8* %14, align 1
  %2939 = zext i1 %2927 to i8
  store i8 %2939, i8* %15, align 1
  %2940 = lshr i32 %2924, 31
  %2941 = trunc i32 %2940 to i8
  store i8 %2941, i8* %16, align 1
  %2942 = lshr i32 %2923, 31
  %2943 = xor i32 %2940, %2942
  %2944 = add nuw nsw i32 %2943, %2940
  %2945 = icmp eq i32 %2944, 2
  %2946 = zext i1 %2945 to i8
  store i8 %2946, i8* %17, align 1
  %2947 = add i64 %storemerge78, 9
  store i64 %2947, i64* %3, align 8
  store i32 %2924, i32* %2922, align 4
  %2948 = load i64, i64* %3, align 8
  %2949 = add i64 %2948, -311
  store i64 %2949, i64* %3, align 8
  br label %block_.L_4242c6

block_.L_424402:                                  ; preds = %block_.L_4242c6
  %2950 = add i64 %2594, 5
  store i64 %2950, i64* %3, align 8
  br label %block_.L_424407

block_.L_424407:                                  ; preds = %block_.L_424402, %block_.L_42401c
  %storemerge70 = phi i64 [ %1848, %block_.L_42401c ], [ %2950, %block_.L_424402 ]
  %MEMORY.42 = phi %struct.Memory* [ %call2_423f7a, %block_.L_42401c ], [ %MEMORY.36, %block_.L_424402 ]
  %2951 = add i64 %storemerge70, 5
  br label %block_.L_42440c

block_.L_42440c:                                  ; preds = %block_.L_424407, %block_.L_424002, %block_.L_423f63, %block_.L_423f08, %block_.L_423e0e, %block_.L_423c84, %block_423bf5, %block_423bde
  %.sink = phi i64 [ %2951, %block_.L_424407 ], [ %1828, %block_.L_424002 ], [ %1724, %block_.L_423f63 ], [ %1671, %block_.L_423f08 ], [ %1496, %block_.L_423e0e ], [ %1256, %block_.L_423c84 ], [ %1048, %block_423bf5 ], [ %1016, %block_423bde ]
  %MEMORY.43 = phi %struct.Memory* [ %MEMORY.42, %block_.L_424407 ], [ %MEMORY.27, %block_.L_424002 ], [ %MEMORY.25, %block_.L_423f63 ], [ %MEMORY.24, %block_.L_423f08 ], [ %MEMORY.21, %block_.L_423e0e ], [ %MEMORY.12, %block_.L_423c84 ], [ %MEMORY.12, %block_423bf5 ], [ %MEMORY.12, %block_423bde ]
  %2952 = load i64, i64* %RBP.i, align 8
  %2953 = add i64 %2952, -28
  %2954 = add i64 %.sink, 3
  store i64 %2954, i64* %3, align 8
  %2955 = inttoptr i64 %2953 to i32*
  %2956 = load i32, i32* %2955, align 4
  %2957 = add i32 %2956, 1
  %2958 = zext i32 %2957 to i64
  store i64 %2958, i64* %RAX.i1213, align 8
  %2959 = icmp eq i32 %2956, -1
  %2960 = icmp eq i32 %2957, 0
  %2961 = or i1 %2959, %2960
  %2962 = zext i1 %2961 to i8
  store i8 %2962, i8* %12, align 1
  %2963 = and i32 %2957, 255
  %2964 = tail call i32 @llvm.ctpop.i32(i32 %2963)
  %2965 = trunc i32 %2964 to i8
  %2966 = and i8 %2965, 1
  %2967 = xor i8 %2966, 1
  store i8 %2967, i8* %13, align 1
  %2968 = xor i32 %2957, %2956
  %2969 = lshr i32 %2968, 4
  %2970 = trunc i32 %2969 to i8
  %2971 = and i8 %2970, 1
  store i8 %2971, i8* %14, align 1
  %2972 = zext i1 %2960 to i8
  store i8 %2972, i8* %15, align 1
  %2973 = lshr i32 %2957, 31
  %2974 = trunc i32 %2973 to i8
  store i8 %2974, i8* %16, align 1
  %2975 = lshr i32 %2956, 31
  %2976 = xor i32 %2973, %2975
  %2977 = add nuw nsw i32 %2976, %2973
  %2978 = icmp eq i32 %2977, 2
  %2979 = zext i1 %2978 to i8
  store i8 %2979, i8* %17, align 1
  %2980 = add i64 %.sink, 9
  store i64 %2980, i64* %3, align 8
  store i32 %2957, i32* %2955, align 4
  %2981 = load i64, i64* %3, align 8
  %2982 = add i64 %2981, -2157
  store i64 %2982, i64* %3, align 8
  br label %block_.L_423ba8

block_.L_42441a:                                  ; preds = %block_.L_423ba8
  %2983 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %2984 = and i32 %2983, 16384
  %2985 = zext i32 %2984 to i64
  store i64 %2985, i64* %RAX.i1213, align 8
  store i8 0, i8* %12, align 1
  store i8 1, i8* %13, align 1
  store i8 0, i8* %14, align 1
  %.lobit227 = lshr exact i32 %2984, 14
  %2986 = trunc i32 %.lobit227 to i8
  %2987 = xor i8 %2986, 1
  store i8 %2987, i8* %15, align 1
  store i8 0, i8* %16, align 1
  store i8 0, i8* %17, align 1
  %2988 = icmp eq i8 %2987, 0
  %.v245 = select i1 %2988, i64 26, i64 21
  %2989 = add i64 %987, %.v245
  store i64 %2989, i64* %3, align 8
  br i1 %2988, label %block_.L_424434, label %block_42442f

block_42442f:                                     ; preds = %block_.L_42441a
  %2990 = add i64 %2989, 28
  store i64 %2990, i64* %3, align 8
  br label %block_.L_42444b

block_.L_424434:                                  ; preds = %block_.L_42441a
  store i64 ptrtoint (%G__0x57bcdc_type* @G__0x57bcdc to i64), i64* %RDI.i1199, align 8
  store i8 0, i8* %AL.i815, align 1
  %2991 = add i64 %2989, 186748
  %2992 = add i64 %2989, 17
  %2993 = load i64, i64* %6, align 8
  %2994 = add i64 %2993, -8
  %2995 = inttoptr i64 %2994 to i64*
  store i64 %2992, i64* %2995, align 8
  store i64 %2994, i64* %6, align 8
  store i64 %2991, i64* %3, align 8
  %call2_424440 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %2991, %struct.Memory* %MEMORY.12)
  %2996 = load i64, i64* %RBP.i, align 8
  %2997 = add i64 %2996, -1768
  %2998 = load i32, i32* %EAX.i1212, align 4
  %2999 = load i64, i64* %3, align 8
  %3000 = add i64 %2999, 6
  store i64 %3000, i64* %3, align 8
  %3001 = inttoptr i64 %2997 to i32*
  store i32 %2998, i32* %3001, align 4
  %.pre181 = load i64, i64* %RBP.i, align 8
  %.pre182 = load i64, i64* %3, align 8
  br label %block_.L_42444b

block_.L_42444b:                                  ; preds = %block_.L_424434, %block_42442f
  %3002 = phi i64 [ %.pre182, %block_.L_424434 ], [ %2990, %block_42442f ]
  %3003 = phi i64 [ %.pre181, %block_.L_424434 ], [ %958, %block_42442f ]
  %MEMORY.44 = phi %struct.Memory* [ %call2_424440, %block_.L_424434 ], [ %MEMORY.12, %block_42442f ]
  %3004 = add i64 %3003, -4
  %3005 = add i64 %3002, 7
  store i64 %3005, i64* %3, align 8
  %3006 = inttoptr i64 %3004 to i32*
  store i32 0, i32* %3006, align 4
  %.pre209 = load i64, i64* %3, align 8
  br label %block_.L_424452

block_.L_424452:                                  ; preds = %block_.L_42444b, %block_.L_4243de, %block_.L_42426f, %block_.L_424121, %block_.L_424007, %block_.L_423f68, %block_.L_423d9e, %block_.L_423d4b
  %3007 = phi i64 [ %.pre209, %block_.L_42444b ], [ %2915, %block_.L_4243de ], [ %2508, %block_.L_42426f ], [ %2134, %block_.L_424121 ], [ %1847, %block_.L_424007 ], [ %1730, %block_.L_423f68 ], [ %1458, %block_.L_423d9e ], [ %1409, %block_.L_423d4b ]
  %MEMORY.45 = phi %struct.Memory* [ %MEMORY.44, %block_.L_42444b ], [ %MEMORY.39, %block_.L_4243de ], [ %MEMORY.34, %block_.L_42426f ], [ %MEMORY.30, %block_.L_424121 ], [ %call2_423fc3, %block_.L_424007 ], [ %call2_423f24, %block_.L_423f68 ], [ %MEMORY.19, %block_.L_423d9e ], [ %MEMORY.18, %block_.L_423d4b ]
  %3008 = load i64, i64* %RBP.i, align 8
  %3009 = add i64 %3008, -4
  %3010 = add i64 %3007, 3
  store i64 %3010, i64* %3, align 8
  %3011 = inttoptr i64 %3009 to i32*
  %3012 = load i32, i32* %3011, align 4
  %3013 = zext i32 %3012 to i64
  store i64 %3013, i64* %RAX.i1213, align 8
  %3014 = load i64, i64* %6, align 8
  %3015 = add i64 %3014, 1776
  store i64 %3015, i64* %6, align 8
  %3016 = icmp ugt i64 %3014, -1777
  %3017 = zext i1 %3016 to i8
  store i8 %3017, i8* %12, align 1
  %3018 = trunc i64 %3015 to i32
  %3019 = and i32 %3018, 255
  %3020 = tail call i32 @llvm.ctpop.i32(i32 %3019)
  %3021 = trunc i32 %3020 to i8
  %3022 = and i8 %3021, 1
  %3023 = xor i8 %3022, 1
  store i8 %3023, i8* %13, align 1
  %3024 = xor i64 %3014, 16
  %3025 = xor i64 %3024, %3015
  %3026 = lshr i64 %3025, 4
  %3027 = trunc i64 %3026 to i8
  %3028 = and i8 %3027, 1
  store i8 %3028, i8* %14, align 1
  %3029 = icmp eq i64 %3015, 0
  %3030 = zext i1 %3029 to i8
  store i8 %3030, i8* %15, align 1
  %3031 = lshr i64 %3015, 63
  %3032 = trunc i64 %3031 to i8
  store i8 %3032, i8* %16, align 1
  %3033 = lshr i64 %3014, 63
  %3034 = xor i64 %3031, %3033
  %3035 = add nuw nsw i64 %3034, %3031
  %3036 = icmp eq i64 %3035, 2
  %3037 = zext i1 %3036 to i8
  store i8 %3037, i8* %17, align 1
  %3038 = add i64 %3007, 11
  store i64 %3038, i64* %3, align 8
  %3039 = add i64 %3014, 1784
  %3040 = inttoptr i64 %3015 to i64*
  %3041 = load i64, i64* %3040, align 8
  store i64 %3041, i64* %RBP.i, align 8
  store i64 %3039, i64* %6, align 8
  %3042 = add i64 %3007, 12
  store i64 %3042, i64* %3, align 8
  %3043 = inttoptr i64 %3039 to i64*
  %3044 = load i64, i64* %3043, align 8
  store i64 %3044, i64* %3, align 8
  %3045 = add i64 %3014, 1792
  store i64 %3045, i64* %6, align 8
  ret %struct.Memory* %MEMORY.45
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
define %struct.Memory* @routine_subq__0x6f0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1776
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 1776
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
define %struct.Memory* @routine_movl__0x640___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1600, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x670__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1648
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %R8, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x14__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__0x15__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 21, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x190__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jge_.L_423ba1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_je_.L_4239aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_423b93(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 380
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
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
define %struct.Memory* @routine_addq__rcx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x30__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 48
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
define %struct.Memory* @routine_jne_.L_4239fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xb4bd20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xb4bd20_type* @G__0xb4bd20 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xab0fe0___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xab0fe0_type* @G_0xab0fe0 to i64*), align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_imulq__0x4c___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 76
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
define %struct.Memory* @routine_movslq_0x4__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x68___rax___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 104
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 248
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
define %struct.Memory* @routine_addq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RAX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__0x3c__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_jne_.L_423a03(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_imulq__0x4c___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 76
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
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
define %struct.Memory* @routine_cmpl__0x1__0x40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
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
define %struct.Memory* @routine_je_.L_423a9f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_jge_.L_423a9a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x674__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1652
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
define %struct.Memory* @routine_jne_.L_423a87(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__edx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %EDX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
  %12 = icmp ult i32 %9, %5
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
  %21 = xor i64 %6, %4
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %22, %10
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %10, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %10, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %9, 31
  %35 = lshr i32 %5, 31
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
define %struct.Memory* @routine_orl_MINUS0x670__rbp__rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1648
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RAX, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = and i32 %14, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %14, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %14, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x670__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1648
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
define %struct.Memory* @routine_jmpq_.L_423a8c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jmpq_.L_423a29(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_423a9f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x40__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 64
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
define %struct.Memory* @routine_je_.L_423b8e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xc__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -12
  %10 = icmp ult i32 %8, 12
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
define %struct.Memory* @routine_jge_.L_423b89(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x69c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1692
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
define %struct.Memory* @routine_movslq__edx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x7ae1b0___rsi_4____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8053168
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x678__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1656
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x8__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
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
define %struct.Memory* @routine_jl_.L_423b33(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_MINUS0x678__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1656
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
define %struct.Memory* @routine_je_.L_423b24(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_423b7b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x678__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1656
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
define %struct.Memory* @routine_shll__0x1___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = shl i32 %6, 1
  %8 = icmp slt i32 %6, 0
  %9 = icmp slt i32 %7, 0
  %10 = xor i1 %8, %9
  %11 = zext i32 %7 to i64
  store i64 %11, i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_423b76(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_MINUS0x678__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1656
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
define %struct.Memory* @routine_movslq__edx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl_MINUS0x670__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1648
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC, align 8
  %11 = trunc i64 %3 to i32
  %12 = inttoptr i64 %8 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %11
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %16, align 1
  %17 = and i32 %14, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %14, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %14, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %30, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x670__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1648
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
define %struct.Memory* @routine_jmpq_.L_423ac5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_423b8e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42396e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_42441a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_423be3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42440c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0x670__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1648
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 8
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, -3
  %13 = icmp ult i32 %11, 3
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
define %struct.Memory* @routine_je_.L_423bfa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_423c6a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x7ae1b0___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8053168
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
define %struct.Memory* @routine_movl__ecx__MINUS0x684__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1668
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x684__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1668
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
define %struct.Memory* @routine_movslq__ecx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
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
define %struct.Memory* @routine_je_.L_423c57(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x680__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1664
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x67c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1660
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x684__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1668
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
define %struct.Memory* @routine_callq_.analyze_neighbor(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_423c5c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_423c01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x67c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_je_.L_423c84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x680__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1664
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
define %struct.Memory* @routine_jne_.L_423c89(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_andl__0x4000___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 5
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 16384
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 14
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_423ca3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_423cbd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57ba7e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57ba7e_type* @G__0x57ba7e to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.safe_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x5___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -5
  %8 = icmp ult i32 %4, 5
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
define %struct.Memory* @routine_jne_.L_423e13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_423ceb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_423d02(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57baa1___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57baa1_type* @G__0x57baa1 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_leaq_MINUS0x24__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.filllib_confirm_safety(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_423d60(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_423d34(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_423d4b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57babc___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57babc_type* @G__0x57babc to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_424452(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_je_.L_423db3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_423d84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_423d9e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57bad8___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57bad8_type* @G__0x57bad8 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x24__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -36
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
define %struct.Memory* @routine_jne_.L_423dcd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_423de4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57bb09___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57bb09_type* @G__0x57bb09 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jne_.L_423df7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_423e0e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57bb34___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57bb34_type* @G__0x57bb34 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__0x57bb62___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57bb62_type* @G__0x57bb62 to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__eax___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %5 = load i32, i32* %EAX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.trymove(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_424026(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.popgo(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_423e5a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_423e71(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57bb6f___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57bb6f_type* @G__0x57bb6f to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.find_backfilling_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_423f74(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_423ea3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_423ec0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57bbab___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57bbab_type* @G__0x57bbab to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl___rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
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
define %struct.Memory* @routine_movl__eax__MINUS0x6bc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1724
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDI, align 8
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
define %struct.Memory* @routine_jne_.L_423f17(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_423ef1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_423f08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57bbce___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57bbce_type* @G__0x57bbce to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1728
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 0, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_423f68(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_423f4c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_423f63(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6c4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1732
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.does_capture_something(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42401c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_423fa2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_423fb9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57bbf0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57bbf0_type* @G__0x57bbf0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6c8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1736
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_424007(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_423feb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_424002(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6cc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1740
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424021(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424407(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_424040(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_424057(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57bc24___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57bc24_type* @G__0x57bc24 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6d0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1744
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_424140(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x688__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1672
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x688__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1672
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
define %struct.Memory* @routine_cmpl_MINUS0x20__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -32
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
define %struct.Memory* @routine_jne_.L_42412d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x5__0x64__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 100
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
define %struct.Memory* @routine_movl_0x3c__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 60
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
define %struct.Memory* @routine_movl__ecx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = bitcast i64* %RAX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xab0f24___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_andl__0x4000___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 16384
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7, align 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %8, align 1
  %.lobit = lshr exact i64 %6, 14
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_424104(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_424121(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57bc51___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57bc51_type* @G__0x57bc51 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1748
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424132(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42405e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42415a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_424171(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57bc69___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57bc69_type* @G__0x57bc69 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1752
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_42428e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x68c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1676
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x68c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1676
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
define %struct.Memory* @routine_jne_.L_42427b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x64__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 100
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
define %struct.Memory* @routine_je_.L_42427b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x3c__rax____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_jne_.L_424252(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42426f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1756
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424280(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_424178(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4242a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4242bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57bc9f___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57bc9f_type* @G__0x57bc9f to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1760
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_424402(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x690__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1680
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x690__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1680
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
define %struct.Memory* @routine_jne_.L_4243ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4243ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x698__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1688
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_MINUS0x690__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1680
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
define %struct.Memory* @routine_jle_.L_4243ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x698__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1688
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
define %struct.Memory* @routine_je_.L_424375(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4243a7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x694__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1684
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
define %struct.Memory* @routine_je_.L_42439d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4243a2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4243f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4243c1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4243de(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6e4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1764
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4243ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4242c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_423ba8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_424434(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42444b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57bcdc___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57bcdc_type* @G__0x57bcdc to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x6e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1768
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_addq__0x6f0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1776
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -1777
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
