; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x99c0a0_type = type <{ [8 x i8] }>
%G_0xab0eec_type = type <{ [4 x i8] }>
%G_0xab0f30_type = type <{ [1 x i8] }>
%G__0x57dbac_type = type <{ [8 x i8] }>
%G__0x5809e2_type = type <{ [8 x i8] }>
%G__0x580a9a_type = type <{ [8 x i8] }>
%G__0x580aaa_type = type <{ [8 x i8] }>
%G__0x580ae0_type = type <{ [8 x i8] }>
%G__0x580b23_type = type <{ [8 x i8] }>
%G__0x580b5b_type = type <{ [8 x i8] }>
%G__0x580b90_type = type <{ [8 x i8] }>
%G__0x580bd4_type = type <{ [8 x i8] }>
%G__0x580c17_type = type <{ [8 x i8] }>
%G__0x580c48_type = type <{ [8 x i8] }>
%G__0x580c83_type = type <{ [8 x i8] }>
%G__0x580cbb_type = type <{ [8 x i8] }>
%G__0x580d02_type = type <{ [8 x i8] }>
%G__0x580d48_type = type <{ [8 x i8] }>
%G__0xab0f30_type = type <{ [8 x i8] }>
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
@G_0x99c0a0 = local_unnamed_addr global %G_0x99c0a0_type zeroinitializer
@G_0xab0eec = local_unnamed_addr global %G_0xab0eec_type zeroinitializer
@G_0xab0f30 = local_unnamed_addr global %G_0xab0f30_type zeroinitializer
@G__0x57dbac = global %G__0x57dbac_type zeroinitializer
@G__0x5809e2 = global %G__0x5809e2_type zeroinitializer
@G__0x580a9a = global %G__0x580a9a_type zeroinitializer
@G__0x580aaa = global %G__0x580aaa_type zeroinitializer
@G__0x580ae0 = global %G__0x580ae0_type zeroinitializer
@G__0x580b23 = global %G__0x580b23_type zeroinitializer
@G__0x580b5b = global %G__0x580b5b_type zeroinitializer
@G__0x580b90 = global %G__0x580b90_type zeroinitializer
@G__0x580bd4 = global %G__0x580bd4_type zeroinitializer
@G__0x580c17 = global %G__0x580c17_type zeroinitializer
@G__0x580c48 = global %G__0x580c48_type zeroinitializer
@G__0x580c83 = global %G__0x580c83_type zeroinitializer
@G__0x580cbb = global %G__0x580cbb_type zeroinitializer
@G__0x580d02 = global %G__0x580d02_type zeroinitializer
@G__0x580d48 = global %G__0x580d48_type zeroinitializer
@G__0xab0f30 = global %G__0xab0f30_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @fprintf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_472a30.sgffile_begindump(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_425bd0.reset_engine(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_452950.string_connect(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_45da70.disconnect(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_472c60.sgffile_enddump(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @decide_connection(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -136
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 128
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
  %EDI.i = bitcast %union.anon* %39 to i32*
  %40 = add i64 %7, -12
  %41 = load i32, i32* %EDI.i, align 4
  %42 = add i64 %10, 13
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i32*
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i = bitcast %union.anon* %44 to i32*
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, -8
  %47 = load i32, i32* %ESI.i, align 4
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, 3
  store i64 %49, i64* %3, align 8
  %50 = inttoptr i64 %46 to i32*
  store i32 %47, i32* %50, align 4
  %51 = load i64, i64* %RBP.i, align 8
  %52 = add i64 %51, -4
  %53 = load i64, i64* %3, align 8
  %54 = add i64 %53, 7
  store i64 %54, i64* %3, align 8
  %55 = inttoptr i64 %52 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = add i32 %56, -421
  %58 = icmp ult i32 %56, 421
  %59 = zext i1 %58 to i8
  store i8 %59, i8* %14, align 1
  %60 = and i32 %57, 255
  %61 = tail call i32 @llvm.ctpop.i32(i32 %60)
  %62 = trunc i32 %61 to i8
  %63 = and i8 %62, 1
  %64 = xor i8 %63, 1
  store i8 %64, i8* %21, align 1
  %65 = xor i32 %57, %56
  %66 = lshr i32 %65, 4
  %67 = trunc i32 %66 to i8
  %68 = and i8 %67, 1
  store i8 %68, i8* %26, align 1
  %69 = icmp eq i32 %57, 0
  %70 = zext i1 %69 to i8
  store i8 %70, i8* %29, align 1
  %71 = lshr i32 %57, 31
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %32, align 1
  %73 = lshr i32 %56, 31
  %74 = xor i32 %71, %73
  %75 = add nuw nsw i32 %74, %73
  %76 = icmp eq i32 %75, 2
  %77 = zext i1 %76 to i8
  store i8 %77, i8* %38, align 1
  %.v = select i1 %58, i64 13, i64 39
  %78 = add i64 %53, %.v
  store i64 %78, i64* %3, align 8
  br i1 %58, label %block_47119e, label %entry.block_.L_4711b8_crit_edge

entry.block_.L_4711b8_crit_edge:                  ; preds = %entry
  %.pre40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %.pre42 = getelementptr inbounds %union.anon, %union.anon* %.pre40, i64 0, i32 0
  br label %block_.L_4711b8

block_47119e:                                     ; preds = %entry
  %RAX.i455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %79 = add i64 %78, 4
  store i64 %79, i64* %3, align 8
  %80 = load i32, i32* %55, align 4
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %RAX.i455, align 8
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i453 = getelementptr inbounds %union.anon, %union.anon* %82, i64 0, i32 0
  %83 = add nsw i64 %81, 12099168
  %84 = add i64 %78, 12
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %83 to i8*
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i64
  store i64 %87, i64* %RCX.i453, align 8
  %88 = zext i8 %86 to i32
  %89 = add nsw i32 %88, -3
  %90 = icmp ult i8 %86, 3
  %91 = zext i1 %90 to i8
  store i8 %91, i8* %14, align 1
  %92 = and i32 %89, 255
  %93 = tail call i32 @llvm.ctpop.i32(i32 %92)
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  %96 = xor i8 %95, 1
  store i8 %96, i8* %21, align 1
  %97 = xor i32 %89, %88
  %98 = lshr i32 %97, 4
  %99 = trunc i32 %98 to i8
  %100 = and i8 %99, 1
  store i8 %100, i8* %26, align 1
  %101 = icmp eq i32 %89, 0
  %102 = zext i1 %101 to i8
  store i8 %102, i8* %29, align 1
  %103 = lshr i32 %89, 31
  %104 = trunc i32 %103 to i8
  store i8 %104, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v63 = select i1 %101, i64 26, i64 21
  %105 = add i64 %78, %.v63
  store i64 %105, i64* %3, align 8
  br i1 %101, label %block_.L_4711b8, label %block_4711b3

block_4711b3:                                     ; preds = %block_47119e
  %106 = add i64 %105, 94
  store i64 %106, i64* %3, align 8
  br label %block_.L_471211

block_.L_4711b8:                                  ; preds = %entry.block_.L_4711b8_crit_edge, %block_47119e
  %ECX.i431.pre-phi.in = phi %union.anon* [ %.pre40, %entry.block_.L_4711b8_crit_edge ], [ %82, %block_47119e ]
  %RCX.i437.pre-phi = phi i64* [ %.pre42, %entry.block_.L_4711b8_crit_edge ], [ %RCX.i453, %block_47119e ]
  %107 = phi i64 [ %78, %entry.block_.L_4711b8_crit_edge ], [ %105, %block_47119e ]
  %ECX.i431.pre-phi = bitcast %union.anon* %ECX.i431.pre-phi.in to i32*
  %RDI.i446 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x5809e2_type* @G__0x5809e2 to i64), i64* %RDI.i446, align 8
  %RSI.i444 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  store i64 127, i64* %RSI.i444, align 8
  %RDX.i442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 ptrtoint (%G__0x57dbac_type* @G__0x57dbac to i64), i64* %RDX.i442, align 8
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i440 = getelementptr inbounds %union.anon, %union.anon* %108, i64 0, i32 0
  store i64 20, i64* %RAX.i440, align 8
  %109 = add i64 %107, 33
  store i64 %109, i64* %3, align 8
  %110 = load i32, i32* %55, align 4
  %111 = zext i32 %110 to i64
  store i64 %111, i64* %RCX.i437.pre-phi, align 8
  %EAX.i434 = bitcast %union.anon* %108 to i32*
  %112 = add i64 %51, -36
  %113 = add i64 %107, 36
  store i64 %113, i64* %3, align 8
  %114 = inttoptr i64 %112 to i32*
  store i32 20, i32* %114, align 4
  %115 = load i32, i32* %ECX.i431.pre-phi, align 4
  %116 = zext i32 %115 to i64
  %117 = load i64, i64* %3, align 8
  store i64 %116, i64* %RAX.i440, align 8
  %118 = load i64, i64* %RBP.i, align 8
  %119 = add i64 %118, -48
  %120 = load i64, i64* %RDX.i442, align 8
  %121 = add i64 %117, 6
  store i64 %121, i64* %3, align 8
  %122 = inttoptr i64 %119 to i64*
  store i64 %120, i64* %122, align 8
  %123 = load i64, i64* %3, align 8
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %125 = load i32, i32* %EAX.i434, align 8
  %126 = sext i32 %125 to i64
  %127 = lshr i64 %126, 32
  store i64 %127, i64* %124, align 8
  %128 = load i64, i64* %RBP.i, align 8
  %129 = add i64 %128, -36
  %130 = add i64 %123, 4
  store i64 %130, i64* %3, align 8
  %131 = inttoptr i64 %129 to i32*
  %132 = load i32, i32* %131, align 4
  %133 = zext i32 %132 to i64
  store i64 %133, i64* %RCX.i437.pre-phi, align 8
  %134 = add i64 %123, 6
  store i64 %134, i64* %3, align 8
  %135 = zext i32 %125 to i64
  %136 = sext i32 %132 to i64
  %137 = shl nuw i64 %127, 32
  %138 = or i64 %137, %135
  %139 = sdiv i64 %138, %136
  %140 = shl i64 %139, 32
  %141 = ashr exact i64 %140, 32
  %142 = icmp eq i64 %139, %141
  br i1 %142, label %145, label %143

; <label>:143:                                    ; preds = %block_.L_4711b8
  %144 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %134, %struct.Memory* %2)
  %.pre = load i64, i64* %RAX.i440, align 8
  %.pre19 = load i64, i64* %3, align 8
  %.pre20 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit421

; <label>:145:                                    ; preds = %block_.L_4711b8
  %146 = srem i64 %138, %136
  %147 = and i64 %139, 4294967295
  store i64 %147, i64* %RAX.i440, align 8
  %148 = and i64 %146, 4294967295
  store i64 %148, i64* %RDX.i442, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit421

routine_idivl__ecx.exit421:                       ; preds = %145, %143
  %149 = phi i64 [ %.pre20, %143 ], [ %128, %145 ]
  %150 = phi i64 [ %.pre19, %143 ], [ %134, %145 ]
  %151 = phi i64 [ %.pre, %143 ], [ %147, %145 ]
  %152 = phi %struct.Memory* [ %144, %143 ], [ %2, %145 ]
  %153 = trunc i64 %151 to i32
  %154 = add i32 %153, -1
  %155 = zext i32 %154 to i64
  store i64 %155, i64* %RAX.i440, align 8
  %156 = icmp eq i32 %153, 0
  %157 = zext i1 %156 to i8
  store i8 %157, i8* %14, align 1
  %158 = and i32 %154, 255
  %159 = tail call i32 @llvm.ctpop.i32(i32 %158)
  %160 = trunc i32 %159 to i8
  %161 = and i8 %160, 1
  %162 = xor i8 %161, 1
  store i8 %162, i8* %21, align 1
  %163 = xor i32 %154, %153
  %164 = lshr i32 %163, 4
  %165 = trunc i32 %164 to i8
  %166 = and i8 %165, 1
  store i8 %166, i8* %26, align 1
  %167 = icmp eq i32 %154, 0
  %168 = zext i1 %167 to i8
  store i8 %168, i8* %29, align 1
  %169 = lshr i32 %154, 31
  %170 = trunc i32 %169 to i8
  store i8 %170, i8* %32, align 1
  %171 = lshr i32 %153, 31
  %172 = xor i32 %169, %171
  %173 = add nuw nsw i32 %172, %171
  %174 = icmp eq i32 %173, 2
  %175 = zext i1 %174 to i8
  store i8 %175, i8* %38, align 1
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i415 = bitcast %union.anon* %176 to i32*
  %177 = getelementptr inbounds %union.anon, %union.anon* %176, i64 0, i32 0
  %178 = add i64 %149, -4
  %179 = add i64 %150, 7
  store i64 %179, i64* %3, align 8
  %180 = inttoptr i64 %178 to i32*
  %181 = load i32, i32* %180, align 4
  %182 = zext i32 %181 to i64
  store i64 %182, i64* %177, align 8
  %183 = add i64 %149, -52
  %184 = add i64 %150, 10
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %183 to i32*
  store i32 %154, i32* %185, align 4
  %186 = load i32, i32* %R8D.i415, align 4
  %187 = zext i32 %186 to i64
  %188 = load i64, i64* %3, align 8
  store i64 %187, i64* %RAX.i440, align 8
  %189 = sext i32 %186 to i64
  %190 = lshr i64 %189, 32
  store i64 %190, i64* %124, align 8
  %191 = load i32, i32* %ECX.i431.pre-phi, align 4
  %192 = add i64 %188, 6
  store i64 %192, i64* %3, align 8
  %193 = sext i32 %191 to i64
  %194 = shl nuw i64 %190, 32
  %195 = or i64 %194, %187
  %196 = sdiv i64 %195, %193
  %197 = shl i64 %196, 32
  %198 = ashr exact i64 %197, 32
  %199 = icmp eq i64 %196, %198
  br i1 %199, label %202, label %200

; <label>:200:                                    ; preds = %routine_idivl__ecx.exit421
  %201 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %192, %struct.Memory* %152)
  %.pre21 = load i64, i64* %RDX.i442, align 8
  %.pre22 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit404

; <label>:202:                                    ; preds = %routine_idivl__ecx.exit421
  %203 = srem i64 %195, %193
  %204 = and i64 %196, 4294967295
  store i64 %204, i64* %RAX.i440, align 8
  %205 = and i64 %203, 4294967295
  store i64 %205, i64* %RDX.i442, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit404

routine_idivl__ecx.exit404:                       ; preds = %202, %200
  %206 = phi i64 [ %.pre22, %200 ], [ %192, %202 ]
  %207 = phi i64 [ %.pre21, %200 ], [ %205, %202 ]
  %208 = phi %struct.Memory* [ %201, %200 ], [ %152, %202 ]
  %209 = trunc i64 %207 to i32
  %210 = add i32 %209, -1
  %211 = zext i32 %210 to i64
  store i64 %211, i64* %RDX.i442, align 8
  %212 = icmp eq i32 %209, 0
  %213 = zext i1 %212 to i8
  store i8 %213, i8* %14, align 1
  %214 = and i32 %210, 255
  %215 = tail call i32 @llvm.ctpop.i32(i32 %214)
  %216 = trunc i32 %215 to i8
  %217 = and i8 %216, 1
  %218 = xor i8 %217, 1
  store i8 %218, i8* %21, align 1
  %219 = xor i32 %210, %209
  %220 = lshr i32 %219, 4
  %221 = trunc i32 %220 to i8
  %222 = and i8 %221, 1
  store i8 %222, i8* %26, align 1
  %223 = icmp eq i32 %210, 0
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %29, align 1
  %225 = lshr i32 %210, 31
  %226 = trunc i32 %225 to i8
  store i8 %226, i8* %32, align 1
  %227 = lshr i32 %209, 31
  %228 = xor i32 %225, %227
  %229 = add nuw nsw i32 %228, %227
  %230 = icmp eq i32 %229, 2
  %231 = zext i1 %230 to i8
  store i8 %231, i8* %38, align 1
  %R9.i399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %232 = load i64, i64* %RBP.i, align 8
  %233 = add i64 %232, -48
  %234 = add i64 %206, 7
  store i64 %234, i64* %3, align 8
  %235 = inttoptr i64 %233 to i64*
  %236 = load i64, i64* %235, align 8
  store i64 %236, i64* %R9.i399, align 8
  %237 = add i64 %232, -56
  %238 = add i64 %206, 10
  store i64 %238, i64* %3, align 8
  %239 = inttoptr i64 %237 to i32*
  store i32 %210, i32* %239, align 4
  %240 = load i64, i64* %R9.i399, align 8
  %241 = load i64, i64* %3, align 8
  store i64 %240, i64* %RDX.i442, align 8
  %242 = load i64, i64* %RBP.i, align 8
  %243 = add i64 %242, -52
  %244 = add i64 %241, 6
  store i64 %244, i64* %3, align 8
  %245 = inttoptr i64 %243 to i32*
  %246 = load i32, i32* %245, align 4
  %247 = zext i32 %246 to i64
  store i64 %247, i64* %RCX.i437.pre-phi, align 8
  %248 = add i64 %242, -56
  %249 = add i64 %241, 10
  store i64 %249, i64* %3, align 8
  %250 = inttoptr i64 %248 to i32*
  %251 = load i32, i32* %250, align 4
  %252 = zext i32 %251 to i64
  store i64 %252, i64* %177, align 8
  %253 = add i64 %241, -127346
  %254 = add i64 %241, 15
  %255 = load i64, i64* %6, align 8
  %256 = add i64 %255, -8
  %257 = inttoptr i64 %256 to i64*
  store i64 %254, i64* %257, align 8
  store i64 %256, i64* %6, align 8
  store i64 %253, i64* %3, align 8
  %call2_47120c = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %253, %struct.Memory* %208)
  %.pre23 = load i64, i64* %RBP.i, align 8
  %.pre24 = load i64, i64* %3, align 8
  br label %block_.L_471211

block_.L_471211:                                  ; preds = %routine_idivl__ecx.exit404, %block_4711b3
  %258 = phi i64 [ %.pre24, %routine_idivl__ecx.exit404 ], [ %106, %block_4711b3 ]
  %259 = phi i64 [ %.pre23, %routine_idivl__ecx.exit404 ], [ %51, %block_4711b3 ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_47120c, %routine_idivl__ecx.exit404 ], [ %2, %block_4711b3 ]
  %260 = add i64 %259, -8
  %261 = add i64 %258, 7
  store i64 %261, i64* %3, align 8
  %262 = inttoptr i64 %260 to i32*
  %263 = load i32, i32* %262, align 4
  %264 = add i32 %263, -421
  %265 = icmp ult i32 %263, 421
  %266 = zext i1 %265 to i8
  store i8 %266, i8* %14, align 1
  %267 = and i32 %264, 255
  %268 = tail call i32 @llvm.ctpop.i32(i32 %267)
  %269 = trunc i32 %268 to i8
  %270 = and i8 %269, 1
  %271 = xor i8 %270, 1
  store i8 %271, i8* %21, align 1
  %272 = xor i32 %264, %263
  %273 = lshr i32 %272, 4
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  store i8 %275, i8* %26, align 1
  %276 = icmp eq i32 %264, 0
  %277 = zext i1 %276 to i8
  store i8 %277, i8* %29, align 1
  %278 = lshr i32 %264, 31
  %279 = trunc i32 %278 to i8
  store i8 %279, i8* %32, align 1
  %280 = lshr i32 %263, 31
  %281 = xor i32 %278, %280
  %282 = add nuw nsw i32 %281, %280
  %283 = icmp eq i32 %282, 2
  %284 = zext i1 %283 to i8
  store i8 %284, i8* %38, align 1
  %.v49 = select i1 %265, i64 13, i64 39
  %285 = add i64 %258, %.v49
  store i64 %285, i64* %3, align 8
  br i1 %265, label %block_47121e, label %block_.L_471211.block_.L_471238_crit_edge

block_.L_471211.block_.L_471238_crit_edge:        ; preds = %block_.L_471211
  %.pre44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %.pre46 = getelementptr inbounds %union.anon, %union.anon* %.pre44, i64 0, i32 0
  br label %block_.L_471238

block_47121e:                                     ; preds = %block_.L_471211
  %RAX.i379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %286 = add i64 %285, 4
  store i64 %286, i64* %3, align 8
  %287 = load i32, i32* %262, align 4
  %288 = sext i32 %287 to i64
  store i64 %288, i64* %RAX.i379, align 8
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i377 = getelementptr inbounds %union.anon, %union.anon* %289, i64 0, i32 0
  %290 = add nsw i64 %288, 12099168
  %291 = add i64 %285, 12
  store i64 %291, i64* %3, align 8
  %292 = inttoptr i64 %290 to i8*
  %293 = load i8, i8* %292, align 1
  %294 = zext i8 %293 to i64
  store i64 %294, i64* %RCX.i377, align 8
  %295 = zext i8 %293 to i32
  %296 = add nsw i32 %295, -3
  %297 = icmp ult i8 %293, 3
  %298 = zext i1 %297 to i8
  store i8 %298, i8* %14, align 1
  %299 = and i32 %296, 255
  %300 = tail call i32 @llvm.ctpop.i32(i32 %299)
  %301 = trunc i32 %300 to i8
  %302 = and i8 %301, 1
  %303 = xor i8 %302, 1
  store i8 %303, i8* %21, align 1
  %304 = xor i32 %296, %295
  %305 = lshr i32 %304, 4
  %306 = trunc i32 %305 to i8
  %307 = and i8 %306, 1
  store i8 %307, i8* %26, align 1
  %308 = icmp eq i32 %296, 0
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %29, align 1
  %310 = lshr i32 %296, 31
  %311 = trunc i32 %310 to i8
  store i8 %311, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v62 = select i1 %308, i64 26, i64 21
  %312 = add i64 %285, %.v62
  store i64 %312, i64* %3, align 8
  br i1 %308, label %block_.L_471238, label %block_471233

block_471233:                                     ; preds = %block_47121e
  %313 = add i64 %312, 94
  store i64 %313, i64* %3, align 8
  %.pre37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %.pre38 = getelementptr inbounds %union.anon, %union.anon* %.pre37, i64 0, i32 0
  br label %block_.L_471291

block_.L_471238:                                  ; preds = %block_.L_471211.block_.L_471238_crit_edge, %block_47121e
  %ECX.i355.pre-phi.in = phi %union.anon* [ %.pre44, %block_.L_471211.block_.L_471238_crit_edge ], [ %289, %block_47121e ]
  %RCX.i361.pre-phi = phi i64* [ %.pre46, %block_.L_471211.block_.L_471238_crit_edge ], [ %RCX.i377, %block_47121e ]
  %314 = phi i64 [ %285, %block_.L_471211.block_.L_471238_crit_edge ], [ %312, %block_47121e ]
  %ECX.i355.pre-phi = bitcast %union.anon* %ECX.i355.pre-phi.in to i32*
  %RDI.i370 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  store i64 ptrtoint (%G__0x5809e2_type* @G__0x5809e2 to i64), i64* %RDI.i370, align 8
  %RSI.i368 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  store i64 128, i64* %RSI.i368, align 8
  %RDX.i366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  store i64 ptrtoint (%G__0x580a9a_type* @G__0x580a9a to i64), i64* %RDX.i366, align 8
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i364 = getelementptr inbounds %union.anon, %union.anon* %315, i64 0, i32 0
  store i64 20, i64* %RAX.i364, align 8
  %316 = add i64 %314, 33
  store i64 %316, i64* %3, align 8
  %317 = load i32, i32* %262, align 4
  %318 = zext i32 %317 to i64
  store i64 %318, i64* %RCX.i361.pre-phi, align 8
  %EAX.i358 = bitcast %union.anon* %315 to i32*
  %319 = add i64 %259, -60
  %320 = add i64 %314, 36
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to i32*
  store i32 20, i32* %321, align 4
  %322 = load i32, i32* %ECX.i355.pre-phi, align 4
  %323 = zext i32 %322 to i64
  %324 = load i64, i64* %3, align 8
  store i64 %323, i64* %RAX.i364, align 8
  %325 = load i64, i64* %RBP.i, align 8
  %326 = add i64 %325, -72
  %327 = load i64, i64* %RDX.i366, align 8
  %328 = add i64 %324, 6
  store i64 %328, i64* %3, align 8
  %329 = inttoptr i64 %326 to i64*
  store i64 %327, i64* %329, align 8
  %330 = load i64, i64* %3, align 8
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %332 = load i32, i32* %EAX.i358, align 8
  %333 = sext i32 %332 to i64
  %334 = lshr i64 %333, 32
  store i64 %334, i64* %331, align 8
  %335 = load i64, i64* %RBP.i, align 8
  %336 = add i64 %335, -60
  %337 = add i64 %330, 4
  store i64 %337, i64* %3, align 8
  %338 = inttoptr i64 %336 to i32*
  %339 = load i32, i32* %338, align 4
  %340 = zext i32 %339 to i64
  store i64 %340, i64* %RCX.i361.pre-phi, align 8
  %341 = add i64 %330, 6
  store i64 %341, i64* %3, align 8
  %342 = zext i32 %332 to i64
  %343 = sext i32 %339 to i64
  %344 = shl nuw i64 %334, 32
  %345 = or i64 %344, %342
  %346 = sdiv i64 %345, %343
  %347 = shl i64 %346, 32
  %348 = ashr exact i64 %347, 32
  %349 = icmp eq i64 %346, %348
  br i1 %349, label %352, label %350

; <label>:350:                                    ; preds = %block_.L_471238
  %351 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %341, %struct.Memory* %MEMORY.1)
  %.pre25 = load i64, i64* %RAX.i364, align 8
  %.pre26 = load i64, i64* %3, align 8
  %.pre27 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit344

; <label>:352:                                    ; preds = %block_.L_471238
  %353 = srem i64 %345, %343
  %354 = and i64 %346, 4294967295
  store i64 %354, i64* %RAX.i364, align 8
  %355 = and i64 %353, 4294967295
  store i64 %355, i64* %RDX.i366, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit344

routine_idivl__ecx.exit344:                       ; preds = %352, %350
  %356 = phi i64 [ %.pre27, %350 ], [ %335, %352 ]
  %357 = phi i64 [ %.pre26, %350 ], [ %341, %352 ]
  %358 = phi i64 [ %.pre25, %350 ], [ %354, %352 ]
  %359 = phi %struct.Memory* [ %351, %350 ], [ %MEMORY.1, %352 ]
  %360 = trunc i64 %358 to i32
  %361 = add i32 %360, -1
  %362 = zext i32 %361 to i64
  store i64 %362, i64* %RAX.i364, align 8
  %363 = icmp eq i32 %360, 0
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %14, align 1
  %365 = and i32 %361, 255
  %366 = tail call i32 @llvm.ctpop.i32(i32 %365)
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  %369 = xor i8 %368, 1
  store i8 %369, i8* %21, align 1
  %370 = xor i32 %361, %360
  %371 = lshr i32 %370, 4
  %372 = trunc i32 %371 to i8
  %373 = and i8 %372, 1
  store i8 %373, i8* %26, align 1
  %374 = icmp eq i32 %361, 0
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %29, align 1
  %376 = lshr i32 %361, 31
  %377 = trunc i32 %376 to i8
  store i8 %377, i8* %32, align 1
  %378 = lshr i32 %360, 31
  %379 = xor i32 %376, %378
  %380 = add nuw nsw i32 %379, %378
  %381 = icmp eq i32 %380, 2
  %382 = zext i1 %381 to i8
  store i8 %382, i8* %38, align 1
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i338 = bitcast %union.anon* %383 to i32*
  %384 = getelementptr inbounds %union.anon, %union.anon* %383, i64 0, i32 0
  %385 = add i64 %356, -8
  %386 = add i64 %357, 7
  store i64 %386, i64* %3, align 8
  %387 = inttoptr i64 %385 to i32*
  %388 = load i32, i32* %387, align 4
  %389 = zext i32 %388 to i64
  store i64 %389, i64* %384, align 8
  %390 = add i64 %356, -76
  %391 = add i64 %357, 10
  store i64 %391, i64* %3, align 8
  %392 = inttoptr i64 %390 to i32*
  store i32 %361, i32* %392, align 4
  %393 = load i32, i32* %R8D.i338, align 4
  %394 = zext i32 %393 to i64
  %395 = load i64, i64* %3, align 8
  store i64 %394, i64* %RAX.i364, align 8
  %396 = sext i32 %393 to i64
  %397 = lshr i64 %396, 32
  store i64 %397, i64* %331, align 8
  %398 = load i32, i32* %ECX.i355.pre-phi, align 4
  %399 = add i64 %395, 6
  store i64 %399, i64* %3, align 8
  %400 = sext i32 %398 to i64
  %401 = shl nuw i64 %397, 32
  %402 = or i64 %401, %394
  %403 = sdiv i64 %402, %400
  %404 = shl i64 %403, 32
  %405 = ashr exact i64 %404, 32
  %406 = icmp eq i64 %403, %405
  br i1 %406, label %409, label %407

; <label>:407:                                    ; preds = %routine_idivl__ecx.exit344
  %408 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %399, %struct.Memory* %359)
  %.pre28 = load i64, i64* %RDX.i366, align 8
  %.pre29 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:409:                                    ; preds = %routine_idivl__ecx.exit344
  %410 = srem i64 %402, %400
  %411 = and i64 %403, 4294967295
  store i64 %411, i64* %RAX.i364, align 8
  %412 = and i64 %410, 4294967295
  store i64 %412, i64* %RDX.i366, align 8
  store i8 0, i8* %14, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %26, align 1
  store i8 0, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %409, %407
  %413 = phi i64 [ %.pre29, %407 ], [ %399, %409 ]
  %414 = phi i64 [ %.pre28, %407 ], [ %412, %409 ]
  %415 = phi %struct.Memory* [ %408, %407 ], [ %359, %409 ]
  %416 = trunc i64 %414 to i32
  %417 = add i32 %416, -1
  %418 = zext i32 %417 to i64
  store i64 %418, i64* %RDX.i366, align 8
  %419 = icmp eq i32 %416, 0
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %14, align 1
  %421 = and i32 %417, 255
  %422 = tail call i32 @llvm.ctpop.i32(i32 %421)
  %423 = trunc i32 %422 to i8
  %424 = and i8 %423, 1
  %425 = xor i8 %424, 1
  store i8 %425, i8* %21, align 1
  %426 = xor i32 %417, %416
  %427 = lshr i32 %426, 4
  %428 = trunc i32 %427 to i8
  %429 = and i8 %428, 1
  store i8 %429, i8* %26, align 1
  %430 = icmp eq i32 %417, 0
  %431 = zext i1 %430 to i8
  store i8 %431, i8* %29, align 1
  %432 = lshr i32 %417, 31
  %433 = trunc i32 %432 to i8
  store i8 %433, i8* %32, align 1
  %434 = lshr i32 %416, 31
  %435 = xor i32 %432, %434
  %436 = add nuw nsw i32 %435, %434
  %437 = icmp eq i32 %436, 2
  %438 = zext i1 %437 to i8
  store i8 %438, i8* %38, align 1
  %R9.i323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %439 = load i64, i64* %RBP.i, align 8
  %440 = add i64 %439, -72
  %441 = add i64 %413, 7
  store i64 %441, i64* %3, align 8
  %442 = inttoptr i64 %440 to i64*
  %443 = load i64, i64* %442, align 8
  store i64 %443, i64* %R9.i323, align 8
  %444 = add i64 %439, -80
  %445 = add i64 %413, 10
  store i64 %445, i64* %3, align 8
  %446 = inttoptr i64 %444 to i32*
  store i32 %417, i32* %446, align 4
  %447 = load i64, i64* %R9.i323, align 8
  %448 = load i64, i64* %3, align 8
  store i64 %447, i64* %RDX.i366, align 8
  %449 = load i64, i64* %RBP.i, align 8
  %450 = add i64 %449, -76
  %451 = add i64 %448, 6
  store i64 %451, i64* %3, align 8
  %452 = inttoptr i64 %450 to i32*
  %453 = load i32, i32* %452, align 4
  %454 = zext i32 %453 to i64
  store i64 %454, i64* %RCX.i361.pre-phi, align 8
  %455 = add i64 %449, -80
  %456 = add i64 %448, 10
  store i64 %456, i64* %3, align 8
  %457 = inttoptr i64 %455 to i32*
  %458 = load i32, i32* %457, align 4
  %459 = zext i32 %458 to i64
  store i64 %459, i64* %384, align 8
  %460 = add i64 %448, -127474
  %461 = add i64 %448, 15
  %462 = load i64, i64* %6, align 8
  %463 = add i64 %462, -8
  %464 = inttoptr i64 %463 to i64*
  store i64 %461, i64* %464, align 8
  store i64 %463, i64* %6, align 8
  store i64 %460, i64* %3, align 8
  %call2_47128c = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %460, %struct.Memory* %415)
  %.pre30 = load i64, i64* %RBP.i, align 8
  %.pre31 = load i64, i64* %3, align 8
  br label %block_.L_471291

block_.L_471291:                                  ; preds = %routine_idivl__ecx.exit, %block_471233
  %RCX.i305.pre-phi = phi i64* [ %RCX.i361.pre-phi, %routine_idivl__ecx.exit ], [ %RCX.i377, %block_471233 ]
  %RAX.i307.pre-phi = phi i64* [ %RAX.i364, %routine_idivl__ecx.exit ], [ %.pre38, %block_471233 ]
  %.pre-phi = phi %union.anon* [ %315, %routine_idivl__ecx.exit ], [ %.pre37, %block_471233 ]
  %465 = phi i64 [ %.pre31, %routine_idivl__ecx.exit ], [ %313, %block_471233 ]
  %466 = phi i64 [ %.pre30, %routine_idivl__ecx.exit ], [ %259, %block_471233 ]
  %MEMORY.3 = phi %struct.Memory* [ %call2_47128c, %routine_idivl__ecx.exit ], [ %MEMORY.1, %block_471233 ]
  %467 = add i64 %466, -4
  %468 = add i64 %465, 4
  store i64 %468, i64* %3, align 8
  %469 = inttoptr i64 %467 to i32*
  %470 = load i32, i32* %469, align 4
  %471 = sext i32 %470 to i64
  store i64 %471, i64* %RAX.i307.pre-phi, align 8
  %472 = add nsw i64 %471, 12099168
  %473 = add i64 %465, 12
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %472 to i8*
  %475 = load i8, i8* %474, align 1
  %476 = zext i8 %475 to i64
  store i64 %476, i64* %RCX.i305.pre-phi, align 8
  %477 = zext i8 %475 to i32
  store i8 0, i8* %14, align 1
  %478 = tail call i32 @llvm.ctpop.i32(i32 %477)
  %479 = trunc i32 %478 to i8
  %480 = and i8 %479, 1
  %481 = xor i8 %480, 1
  store i8 %481, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %482 = icmp eq i8 %475, 0
  %483 = zext i1 %482 to i8
  store i8 %483, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v50 = select i1 %482, i64 42, i64 21
  %484 = add i64 %465, %.v50
  store i64 %484, i64* %3, align 8
  br i1 %482, label %block_.L_4712bb, label %block_4712a6

block_4712a6:                                     ; preds = %block_.L_471291
  %485 = add i64 %466, -8
  %486 = add i64 %484, 4
  store i64 %486, i64* %3, align 8
  %487 = inttoptr i64 %485 to i32*
  %488 = load i32, i32* %487, align 4
  %489 = sext i32 %488 to i64
  store i64 %489, i64* %RAX.i307.pre-phi, align 8
  %490 = add nsw i64 %489, 12099168
  %491 = add i64 %484, 12
  store i64 %491, i64* %3, align 8
  %492 = inttoptr i64 %490 to i8*
  %493 = load i8, i8* %492, align 1
  %494 = zext i8 %493 to i64
  store i64 %494, i64* %RCX.i305.pre-phi, align 8
  %495 = zext i8 %493 to i32
  store i8 0, i8* %14, align 1
  %496 = tail call i32 @llvm.ctpop.i32(i32 %495)
  %497 = trunc i32 %496 to i8
  %498 = and i8 %497, 1
  %499 = xor i8 %498, 1
  store i8 %499, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %500 = icmp eq i8 %493, 0
  %501 = zext i1 %500 to i8
  store i8 %501, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v51 = select i1 %500, i64 21, i64 54
  %502 = add i64 %484, %.v51
  store i64 %502, i64* %3, align 8
  br i1 %500, label %block_.L_4712bb, label %block_.L_4712dc

block_.L_4712bb:                                  ; preds = %block_4712a6, %block_.L_471291
  %503 = phi i64 [ %502, %block_4712a6 ], [ %484, %block_.L_471291 ]
  %RSI.i290 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  store i64 ptrtoint (%G__0x580aaa_type* @G__0x580aaa to i64), i64* %RSI.i290, align 8
  %RDI.i288 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %504 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %504, i64* %RDI.i288, align 8
  %AL.i286 = bitcast %union.anon* %.pre-phi to i8*
  store i8 0, i8* %AL.i286, align 1
  %505 = add i64 %503, -459243
  %506 = add i64 %503, 25
  %507 = load i64, i64* %6, align 8
  %508 = add i64 %507, -8
  %509 = inttoptr i64 %508 to i64*
  store i64 %506, i64* %509, align 8
  store i64 %508, i64* %6, align 8
  store i64 %505, i64* %3, align 8
  %510 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.3)
  %EAX.i280 = bitcast %union.anon* %.pre-phi to i32*
  %511 = load i64, i64* %RBP.i, align 8
  %512 = add i64 %511, -84
  %513 = load i32, i32* %EAX.i280, align 4
  %514 = load i64, i64* %3, align 8
  %515 = add i64 %514, 3
  store i64 %515, i64* %3, align 8
  %516 = inttoptr i64 %512 to i32*
  store i32 %513, i32* %516, align 4
  %517 = load i64, i64* %3, align 8
  %518 = add i64 %517, 676
  store i64 %518, i64* %3, align 8
  br label %block_.L_47157b

block_.L_4712dc:                                  ; preds = %block_4712a6
  %519 = add i64 %502, 4
  store i64 %519, i64* %3, align 8
  %520 = load i32, i32* %469, align 4
  %521 = sext i32 %520 to i64
  store i64 %521, i64* %RAX.i307.pre-phi, align 8
  %522 = add nsw i64 %521, 12099168
  %523 = add i64 %502, 12
  store i64 %523, i64* %3, align 8
  %524 = inttoptr i64 %522 to i8*
  %525 = load i8, i8* %524, align 1
  %526 = zext i8 %525 to i64
  store i64 %526, i64* %RCX.i305.pre-phi, align 8
  %527 = add i64 %502, 16
  store i64 %527, i64* %3, align 8
  %528 = load i32, i32* %487, align 4
  %529 = sext i32 %528 to i64
  store i64 %529, i64* %RAX.i307.pre-phi, align 8
  %RDX.i268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %530 = add nsw i64 %529, 12099168
  %531 = add i64 %502, 24
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %530 to i8*
  %533 = load i8, i8* %532, align 1
  %534 = zext i8 %533 to i64
  store i64 %534, i64* %RDX.i268, align 8
  %535 = zext i8 %525 to i32
  %536 = zext i8 %533 to i32
  %537 = sub nsw i32 %535, %536
  %538 = icmp ult i8 %525, %533
  %539 = zext i1 %538 to i8
  store i8 %539, i8* %14, align 1
  %540 = and i32 %537, 255
  %541 = tail call i32 @llvm.ctpop.i32(i32 %540)
  %542 = trunc i32 %541 to i8
  %543 = and i8 %542, 1
  %544 = xor i8 %543, 1
  store i8 %544, i8* %21, align 1
  %545 = xor i8 %533, %525
  %546 = zext i8 %545 to i32
  %547 = xor i32 %546, %537
  %548 = lshr i32 %547, 4
  %549 = trunc i32 %548 to i8
  %550 = and i8 %549, 1
  store i8 %550, i8* %26, align 1
  %551 = icmp eq i32 %537, 0
  %552 = zext i1 %551 to i8
  store i8 %552, i8* %29, align 1
  %553 = lshr i32 %537, 31
  %554 = trunc i32 %553 to i8
  store i8 %554, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v52 = select i1 %551, i64 65, i64 32
  %555 = add i64 %502, %.v52
  store i64 %555, i64* %3, align 8
  br i1 %551, label %block_.L_47131d, label %block_4712fc

block_4712fc:                                     ; preds = %block_.L_4712dc
  %RSI.i264 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  store i64 ptrtoint (%G__0x580ae0_type* @G__0x580ae0 to i64), i64* %RSI.i264, align 8
  %RDI.i262 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %556 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %556, i64* %RDI.i262, align 8
  %AL.i260 = bitcast %union.anon* %.pre-phi to i8*
  store i8 0, i8* %AL.i260, align 1
  %557 = add i64 %555, -459308
  %558 = add i64 %555, 25
  %559 = load i64, i64* %6, align 8
  %560 = add i64 %559, -8
  %561 = inttoptr i64 %560 to i64*
  store i64 %558, i64* %561, align 8
  store i64 %560, i64* %6, align 8
  store i64 %557, i64* %3, align 8
  %562 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @fprintf to i64), %struct.Memory* %MEMORY.3)
  %EAX.i253 = bitcast %union.anon* %.pre-phi to i32*
  %563 = load i64, i64* %RBP.i, align 8
  %564 = add i64 %563, -88
  %565 = load i32, i32* %EAX.i253, align 4
  %566 = load i64, i64* %3, align 8
  %567 = add i64 %566, 3
  store i64 %567, i64* %3, align 8
  %568 = inttoptr i64 %564 to i32*
  store i32 %565, i32* %568, align 4
  %569 = load i64, i64* %3, align 8
  %570 = add i64 %569, 611
  store i64 %570, i64* %3, align 8
  br label %block_.L_47157b

block_.L_47131d:                                  ; preds = %block_.L_4712dc
  %571 = load i8, i8* getelementptr inbounds (%G_0xab0f30_type, %G_0xab0f30_type* @G_0xab0f30, i64 0, i32 0, i64 0), align 8
  store i8 0, i8* %14, align 1
  %572 = zext i8 %571 to i32
  %573 = tail call i32 @llvm.ctpop.i32(i32 %572)
  %574 = trunc i32 %573 to i8
  %575 = and i8 %574, 1
  %576 = xor i8 %575, 1
  store i8 %576, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %577 = icmp eq i8 %571, 0
  %578 = zext i1 %577 to i8
  store i8 %578, i8* %29, align 1
  %579 = lshr i8 %571, 7
  store i8 %579, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v53 = select i1 %577, i64 23, i64 14
  %580 = add i64 %555, %.v53
  store i64 %580, i64* %3, align 8
  %.pre48 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  br i1 %577, label %block_.L_471334, label %block_47132b

block_47132b:                                     ; preds = %block_.L_47131d
  %581 = add i64 %466, -32
  store i64 %581, i64* %.pre48, align 8
  %582 = add i64 %580, 5893
  %583 = add i64 %580, 9
  %584 = load i64, i64* %6, align 8
  %585 = add i64 %584, -8
  %586 = inttoptr i64 %585 to i64*
  store i64 %583, i64* %586, align 8
  store i64 %585, i64* %6, align 8
  store i64 %582, i64* %3, align 8
  %call2_47132f = tail call %struct.Memory* @sub_472a30.sgffile_begindump(%struct.State* nonnull %0, i64 %582, %struct.Memory* %MEMORY.3)
  %.pre32 = load i64, i64* %3, align 8
  br label %block_.L_471334

block_.L_471334:                                  ; preds = %block_.L_47131d, %block_47132b
  %587 = phi i64 [ %.pre32, %block_47132b ], [ %580, %block_.L_47131d ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_47132f, %block_47132b ], [ %MEMORY.3, %block_.L_47131d ]
  %588 = add i64 %587, -309092
  %589 = add i64 %587, 5
  %590 = load i64, i64* %6, align 8
  %591 = add i64 %590, -8
  %592 = inttoptr i64 %591 to i64*
  store i64 %589, i64* %592, align 8
  store i64 %591, i64* %6, align 8
  store i64 %588, i64* %3, align 8
  %call2_471334 = tail call %struct.Memory* @sub_425bd0.reset_engine(%struct.State* nonnull %0, i64 %588, %struct.Memory* %MEMORY.5)
  %593 = load i64, i64* %RBP.i, align 8
  %594 = add i64 %593, -12
  %595 = load i64, i64* %3, align 8
  store i64 %594, i64* %RDX.i268, align 8
  store i32 1, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %596 = add i64 %593, -4
  %597 = add i64 %595, 18
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to i32*
  %599 = load i32, i32* %598, align 4
  %600 = zext i32 %599 to i64
  store i64 %600, i64* %.pre48, align 8
  %RSI.i235 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %601 = add i64 %593, -8
  %602 = add i64 %595, 21
  store i64 %602, i64* %3, align 8
  %603 = inttoptr i64 %601 to i32*
  %604 = load i32, i32* %603, align 4
  %605 = zext i32 %604 to i64
  store i64 %605, i64* %RSI.i235, align 8
  %606 = add i64 %595, -125417
  %607 = add i64 %595, 26
  %608 = load i64, i64* %6, align 8
  %609 = add i64 %608, -8
  %610 = inttoptr i64 %609 to i64*
  store i64 %607, i64* %610, align 8
  store i64 %609, i64* %6, align 8
  store i64 %606, i64* %3, align 8
  %call2_47134e = tail call %struct.Memory* @sub_452950.string_connect(%struct.State* nonnull %0, i64 %606, %struct.Memory* %call2_471334)
  %EAX.i231 = bitcast %union.anon* %.pre-phi to i32*
  %611 = load i64, i64* %RBP.i, align 8
  %612 = add i64 %611, -16
  %613 = load i32, i32* %EAX.i231, align 4
  %614 = load i64, i64* %3, align 8
  %615 = add i64 %614, 3
  store i64 %615, i64* %3, align 8
  %616 = inttoptr i64 %612 to i32*
  store i32 %613, i32* %616, align 4
  %617 = load i64, i64* %RBP.i, align 8
  %618 = add i64 %617, -16
  %619 = load i64, i64* %3, align 8
  %620 = add i64 %619, 4
  store i64 %620, i64* %3, align 8
  %621 = inttoptr i64 %618 to i32*
  %622 = load i32, i32* %621, align 4
  %623 = add i32 %622, -5
  %624 = icmp ult i32 %622, 5
  %625 = zext i1 %624 to i8
  store i8 %625, i8* %14, align 1
  %626 = and i32 %623, 255
  %627 = tail call i32 @llvm.ctpop.i32(i32 %626)
  %628 = trunc i32 %627 to i8
  %629 = and i8 %628, 1
  %630 = xor i8 %629, 1
  store i8 %630, i8* %21, align 1
  %631 = xor i32 %623, %622
  %632 = lshr i32 %631, 4
  %633 = trunc i32 %632 to i8
  %634 = and i8 %633, 1
  store i8 %634, i8* %26, align 1
  %635 = icmp eq i32 %623, 0
  %636 = zext i1 %635 to i8
  store i8 %636, i8* %29, align 1
  %637 = lshr i32 %623, 31
  %638 = trunc i32 %637 to i8
  store i8 %638, i8* %32, align 1
  %639 = lshr i32 %622, 31
  %640 = xor i32 %637, %639
  %641 = add nuw nsw i32 %640, %639
  %642 = icmp eq i32 %641, 2
  %643 = zext i1 %642 to i8
  store i8 %643, i8* %38, align 1
  %.v54 = select i1 %635, i64 10, i64 100
  %644 = add i64 %619, %.v54
  store i64 %644, i64* %3, align 8
  br i1 %635, label %block_471360, label %block_.L_4713ba

block_471360:                                     ; preds = %block_.L_471334
  %645 = add i64 %617, -12
  %646 = add i64 %644, 4
  store i64 %646, i64* %3, align 8
  %647 = inttoptr i64 %645 to i32*
  %648 = load i32, i32* %647, align 4
  store i8 0, i8* %14, align 1
  %649 = and i32 %648, 255
  %650 = tail call i32 @llvm.ctpop.i32(i32 %649)
  %651 = trunc i32 %650 to i8
  %652 = and i8 %651, 1
  %653 = xor i8 %652, 1
  store i8 %653, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %654 = icmp eq i32 %648, 0
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %29, align 1
  %656 = lshr i32 %648, 31
  %657 = trunc i32 %656 to i8
  store i8 %657, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v61 = select i1 %654, i64 10, i64 48
  %658 = add i64 %644, %.v61
  %659 = add i64 %658, 10
  store i64 %659, i64* %3, align 8
  br i1 %654, label %block_47136a, label %block_.L_471390

block_47136a:                                     ; preds = %block_471360
  store i64 ptrtoint (%G__0x580b23_type* @G__0x580b23 to i64), i64* %.pre48, align 8
  %660 = add i64 %617, -4
  %661 = add i64 %658, 13
  store i64 %661, i64* %3, align 8
  %662 = inttoptr i64 %660 to i32*
  %663 = load i32, i32* %662, align 4
  %664 = zext i32 %663 to i64
  store i64 %664, i64* %RSI.i235, align 8
  %665 = add i64 %617, -8
  %666 = add i64 %658, 16
  store i64 %666, i64* %3, align 8
  %667 = inttoptr i64 %665 to i32*
  %668 = load i32, i32* %667, align 4
  %669 = zext i32 %668 to i64
  store i64 %669, i64* %RDX.i268, align 8
  %670 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %671 = zext i32 %670 to i64
  store i64 %671, i64* %RCX.i305.pre-phi, align 8
  %AL.i213 = bitcast %union.anon* %.pre-phi to i8*
  store i8 0, i8* %AL.i213, align 1
  %672 = add i64 %658, -128442
  %673 = add i64 %658, 30
  %674 = load i64, i64* %6, align 8
  %675 = add i64 %674, -8
  %676 = inttoptr i64 %675 to i64*
  store i64 %673, i64* %676, align 8
  store i64 %675, i64* %6, align 8
  store i64 %672, i64* %3, align 8
  %call2_471383 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %672, %struct.Memory* %call2_47134e)
  %677 = load i64, i64* %RBP.i, align 8
  %678 = add i64 %677, -92
  %679 = load i32, i32* %EAX.i231, align 4
  %680 = load i64, i64* %3, align 8
  %681 = add i64 %680, 3
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %678 to i32*
  store i32 %679, i32* %682, align 4
  %683 = load i64, i64* %3, align 8
  %684 = add i64 %683, 42
  store i64 %684, i64* %3, align 8
  br label %block_.L_4713b5

block_.L_471390:                                  ; preds = %block_471360
  store i64 ptrtoint (%G__0x580b5b_type* @G__0x580b5b to i64), i64* %.pre48, align 8
  %685 = add i64 %617, -4
  %686 = add i64 %658, 13
  store i64 %686, i64* %3, align 8
  %687 = inttoptr i64 %685 to i32*
  %688 = load i32, i32* %687, align 4
  %689 = zext i32 %688 to i64
  store i64 %689, i64* %RSI.i235, align 8
  %690 = add i64 %617, -8
  %691 = add i64 %658, 16
  store i64 %691, i64* %3, align 8
  %692 = inttoptr i64 %690 to i32*
  %693 = load i32, i32* %692, align 4
  %694 = zext i32 %693 to i64
  store i64 %694, i64* %RDX.i268, align 8
  %695 = add i64 %658, 19
  store i64 %695, i64* %3, align 8
  %696 = load i32, i32* %647, align 4
  %697 = zext i32 %696 to i64
  store i64 %697, i64* %RCX.i305.pre-phi, align 8
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %699 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %700 = zext i32 %699 to i64
  store i64 %700, i64* %698, align 8
  %AL.i193 = bitcast %union.anon* %.pre-phi to i8*
  store i8 0, i8* %AL.i193, align 1
  %701 = add i64 %658, -128480
  %702 = add i64 %658, 34
  %703 = load i64, i64* %6, align 8
  %704 = add i64 %703, -8
  %705 = inttoptr i64 %704 to i64*
  store i64 %702, i64* %705, align 8
  store i64 %704, i64* %6, align 8
  store i64 %701, i64* %3, align 8
  %call2_4713ad = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %701, %struct.Memory* %call2_47134e)
  %706 = load i64, i64* %RBP.i, align 8
  %707 = add i64 %706, -96
  %708 = load i32, i32* %EAX.i231, align 4
  %709 = load i64, i64* %3, align 8
  %710 = add i64 %709, 3
  store i64 %710, i64* %3, align 8
  %711 = inttoptr i64 %707 to i32*
  store i32 %708, i32* %711, align 4
  %.pre33 = load i64, i64* %3, align 8
  br label %block_.L_4713b5

block_.L_4713b5:                                  ; preds = %block_.L_471390, %block_47136a
  %712 = phi i64 [ %.pre33, %block_.L_471390 ], [ %684, %block_47136a ]
  %MEMORY.6 = phi %struct.Memory* [ %call2_4713ad, %block_.L_471390 ], [ %call2_471383, %block_47136a ]
  %713 = add i64 %712, 152
  br label %block_.L_47144d

block_.L_4713ba:                                  ; preds = %block_.L_471334
  %714 = add i64 %644, 4
  store i64 %714, i64* %3, align 8
  %715 = load i32, i32* %621, align 4
  %716 = add i32 %715, -4
  %717 = icmp ult i32 %715, 4
  %718 = zext i1 %717 to i8
  store i8 %718, i8* %14, align 1
  %719 = and i32 %716, 255
  %720 = tail call i32 @llvm.ctpop.i32(i32 %719)
  %721 = trunc i32 %720 to i8
  %722 = and i8 %721, 1
  %723 = xor i8 %722, 1
  store i8 %723, i8* %21, align 1
  %724 = xor i32 %716, %715
  %725 = lshr i32 %724, 4
  %726 = trunc i32 %725 to i8
  %727 = and i8 %726, 1
  store i8 %727, i8* %26, align 1
  %728 = icmp eq i32 %716, 0
  %729 = zext i1 %728 to i8
  store i8 %729, i8* %29, align 1
  %730 = lshr i32 %716, 31
  %731 = trunc i32 %730 to i8
  store i8 %731, i8* %32, align 1
  %732 = lshr i32 %715, 31
  %733 = xor i32 %730, %732
  %734 = add nuw nsw i32 %733, %732
  %735 = icmp eq i32 %734, 2
  %736 = zext i1 %735 to i8
  store i8 %736, i8* %38, align 1
  %.v55 = select i1 %728, i64 10, i64 52
  %737 = add i64 %644, %.v55
  store i64 %737, i64* %3, align 8
  br i1 %728, label %block_4713c4, label %block_.L_4713ee

block_4713c4:                                     ; preds = %block_.L_4713ba
  store i64 ptrtoint (%G__0x580b90_type* @G__0x580b90 to i64), i64* %.pre48, align 8
  %738 = add i64 %617, -4
  %739 = add i64 %737, 13
  store i64 %739, i64* %3, align 8
  %740 = inttoptr i64 %738 to i32*
  %741 = load i32, i32* %740, align 4
  %742 = zext i32 %741 to i64
  store i64 %742, i64* %RSI.i235, align 8
  %743 = add i64 %617, -8
  %744 = add i64 %737, 16
  store i64 %744, i64* %3, align 8
  %745 = inttoptr i64 %743 to i32*
  %746 = load i32, i32* %745, align 4
  %747 = zext i32 %746 to i64
  store i64 %747, i64* %RDX.i268, align 8
  %748 = add i64 %617, -12
  %749 = add i64 %737, 19
  store i64 %749, i64* %3, align 8
  %750 = inttoptr i64 %748 to i32*
  %751 = load i32, i32* %750, align 4
  %752 = zext i32 %751 to i64
  store i64 %752, i64* %RCX.i305.pre-phi, align 8
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %754 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %755 = zext i32 %754 to i64
  store i64 %755, i64* %753, align 8
  %AL.i170 = bitcast %union.anon* %.pre-phi to i8*
  store i8 0, i8* %AL.i170, align 1
  %756 = add i64 %737, -128532
  %757 = add i64 %737, 34
  %758 = load i64, i64* %6, align 8
  %759 = add i64 %758, -8
  %760 = inttoptr i64 %759 to i64*
  store i64 %757, i64* %760, align 8
  store i64 %759, i64* %6, align 8
  store i64 %756, i64* %3, align 8
  %call2_4713e1 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %756, %struct.Memory* %call2_47134e)
  %761 = load i64, i64* %RBP.i, align 8
  %762 = add i64 %761, -100
  %763 = load i32, i32* %EAX.i231, align 4
  %764 = load i64, i64* %3, align 8
  %765 = add i64 %764, 3
  store i64 %765, i64* %3, align 8
  %766 = inttoptr i64 %762 to i32*
  store i32 %763, i32* %766, align 4
  %767 = load i64, i64* %3, align 8
  %768 = add i64 %767, 95
  br label %block_.L_471448

block_.L_4713ee:                                  ; preds = %block_.L_4713ba
  %769 = add i64 %737, 4
  store i64 %769, i64* %3, align 8
  %770 = load i32, i32* %621, align 4
  %771 = add i32 %770, -1
  %772 = icmp eq i32 %770, 0
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %14, align 1
  %774 = and i32 %771, 255
  %775 = tail call i32 @llvm.ctpop.i32(i32 %774)
  %776 = trunc i32 %775 to i8
  %777 = and i8 %776, 1
  %778 = xor i8 %777, 1
  store i8 %778, i8* %21, align 1
  %779 = xor i32 %771, %770
  %780 = lshr i32 %779, 4
  %781 = trunc i32 %780 to i8
  %782 = and i8 %781, 1
  store i8 %782, i8* %26, align 1
  %783 = icmp eq i32 %771, 0
  %784 = zext i1 %783 to i8
  store i8 %784, i8* %29, align 1
  %785 = lshr i32 %771, 31
  %786 = trunc i32 %785 to i8
  store i8 %786, i8* %32, align 1
  %787 = lshr i32 %770, 31
  %788 = xor i32 %785, %787
  %789 = add nuw nsw i32 %788, %787
  %790 = icmp eq i32 %789, 2
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %38, align 1
  %.v56 = select i1 %783, i64 10, i64 52
  %792 = add i64 %737, %.v56
  %793 = add i64 %792, 10
  store i64 %793, i64* %3, align 8
  br i1 %783, label %block_4713f8, label %block_.L_471422

block_4713f8:                                     ; preds = %block_.L_4713ee
  store i64 ptrtoint (%G__0x580bd4_type* @G__0x580bd4 to i64), i64* %.pre48, align 8
  %794 = add i64 %617, -4
  %795 = add i64 %792, 13
  store i64 %795, i64* %3, align 8
  %796 = inttoptr i64 %794 to i32*
  %797 = load i32, i32* %796, align 4
  %798 = zext i32 %797 to i64
  store i64 %798, i64* %RSI.i235, align 8
  %799 = add i64 %617, -8
  %800 = add i64 %792, 16
  store i64 %800, i64* %3, align 8
  %801 = inttoptr i64 %799 to i32*
  %802 = load i32, i32* %801, align 4
  %803 = zext i32 %802 to i64
  store i64 %803, i64* %RDX.i268, align 8
  %804 = add i64 %617, -12
  %805 = add i64 %792, 19
  store i64 %805, i64* %3, align 8
  %806 = inttoptr i64 %804 to i32*
  %807 = load i32, i32* %806, align 4
  %808 = zext i32 %807 to i64
  store i64 %808, i64* %RCX.i305.pre-phi, align 8
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %810 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %811 = zext i32 %810 to i64
  store i64 %811, i64* %809, align 8
  %AL.i147 = bitcast %union.anon* %.pre-phi to i8*
  store i8 0, i8* %AL.i147, align 1
  %812 = add i64 %792, -128584
  %813 = add i64 %792, 34
  %814 = load i64, i64* %6, align 8
  %815 = add i64 %814, -8
  %816 = inttoptr i64 %815 to i64*
  store i64 %813, i64* %816, align 8
  store i64 %815, i64* %6, align 8
  store i64 %812, i64* %3, align 8
  %call2_471415 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %812, %struct.Memory* %call2_47134e)
  %817 = load i64, i64* %RBP.i, align 8
  %818 = add i64 %817, -104
  %819 = load i32, i32* %EAX.i231, align 4
  %820 = load i64, i64* %3, align 8
  %821 = add i64 %820, 3
  store i64 %821, i64* %3, align 8
  %822 = inttoptr i64 %818 to i32*
  store i32 %819, i32* %822, align 4
  %823 = load i64, i64* %3, align 8
  %824 = add i64 %823, 38
  store i64 %824, i64* %3, align 8
  br label %block_.L_471443

block_.L_471422:                                  ; preds = %block_.L_4713ee
  store i64 ptrtoint (%G__0x580c17_type* @G__0x580c17 to i64), i64* %.pre48, align 8
  %825 = add i64 %617, -4
  %826 = add i64 %792, 13
  store i64 %826, i64* %3, align 8
  %827 = inttoptr i64 %825 to i32*
  %828 = load i32, i32* %827, align 4
  %829 = zext i32 %828 to i64
  store i64 %829, i64* %RSI.i235, align 8
  %830 = add i64 %617, -8
  %831 = add i64 %792, 16
  store i64 %831, i64* %3, align 8
  %832 = inttoptr i64 %830 to i32*
  %833 = load i32, i32* %832, align 4
  %834 = zext i32 %833 to i64
  store i64 %834, i64* %RDX.i268, align 8
  %835 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %836 = zext i32 %835 to i64
  store i64 %836, i64* %RCX.i305.pre-phi, align 8
  %AL.i130 = bitcast %union.anon* %.pre-phi to i8*
  store i8 0, i8* %AL.i130, align 1
  %837 = add i64 %792, -128626
  %838 = add i64 %792, 30
  %839 = load i64, i64* %6, align 8
  %840 = add i64 %839, -8
  %841 = inttoptr i64 %840 to i64*
  store i64 %838, i64* %841, align 8
  store i64 %840, i64* %6, align 8
  store i64 %837, i64* %3, align 8
  %call2_47143b = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %837, %struct.Memory* %call2_47134e)
  %842 = load i64, i64* %RBP.i, align 8
  %843 = add i64 %842, -108
  %844 = load i32, i32* %EAX.i231, align 4
  %845 = load i64, i64* %3, align 8
  %846 = add i64 %845, 3
  store i64 %846, i64* %3, align 8
  %847 = inttoptr i64 %843 to i32*
  store i32 %844, i32* %847, align 4
  %.pre34 = load i64, i64* %3, align 8
  br label %block_.L_471443

block_.L_471443:                                  ; preds = %block_.L_471422, %block_4713f8
  %848 = phi i64 [ %.pre34, %block_.L_471422 ], [ %824, %block_4713f8 ]
  %MEMORY.7 = phi %struct.Memory* [ %call2_47143b, %block_.L_471422 ], [ %call2_471415, %block_4713f8 ]
  %849 = add i64 %848, 5
  store i64 %849, i64* %3, align 8
  br label %block_.L_471448

block_.L_471448:                                  ; preds = %block_.L_471443, %block_4713c4
  %storemerge18 = phi i64 [ %768, %block_4713c4 ], [ %849, %block_.L_471443 ]
  %MEMORY.8 = phi %struct.Memory* [ %call2_4713e1, %block_4713c4 ], [ %MEMORY.7, %block_.L_471443 ]
  %850 = add i64 %storemerge18, 5
  store i64 %850, i64* %3, align 8
  br label %block_.L_47144d

block_.L_47144d:                                  ; preds = %block_.L_471448, %block_.L_4713b5
  %storemerge = phi i64 [ %713, %block_.L_4713b5 ], [ %850, %block_.L_471448 ]
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.6, %block_.L_4713b5 ], [ %MEMORY.8, %block_.L_471448 ]
  %851 = load i64, i64* %RBP.i, align 8
  %852 = add i64 %851, -12
  store i64 %852, i64* %RDX.i268, align 8
  store i32 1, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %853 = add i64 %851, -4
  %854 = add i64 %storemerge, 18
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %853 to i32*
  %856 = load i32, i32* %855, align 4
  %857 = zext i32 %856 to i64
  store i64 %857, i64* %.pre48, align 8
  %858 = add i64 %851, -8
  %859 = add i64 %storemerge, 21
  store i64 %859, i64* %3, align 8
  %860 = inttoptr i64 %858 to i32*
  %861 = load i32, i32* %860, align 4
  %862 = zext i32 %861 to i64
  store i64 %862, i64* %RSI.i235, align 8
  %863 = add i64 %storemerge, -80349
  %864 = add i64 %storemerge, 26
  %865 = load i64, i64* %6, align 8
  %866 = add i64 %865, -8
  %867 = inttoptr i64 %866 to i64*
  store i64 %864, i64* %867, align 8
  store i64 %866, i64* %6, align 8
  store i64 %863, i64* %3, align 8
  %call2_471462 = tail call %struct.Memory* @sub_45da70.disconnect(%struct.State* nonnull %0, i64 %863, %struct.Memory* %MEMORY.9)
  %868 = load i64, i64* %RBP.i, align 8
  %869 = add i64 %868, -16
  %870 = load i32, i32* %EAX.i231, align 4
  %871 = load i64, i64* %3, align 8
  %872 = add i64 %871, 3
  store i64 %872, i64* %3, align 8
  %873 = inttoptr i64 %869 to i32*
  store i32 %870, i32* %873, align 4
  %874 = load i64, i64* %RBP.i, align 8
  %875 = add i64 %874, -16
  %876 = load i64, i64* %3, align 8
  %877 = add i64 %876, 4
  store i64 %877, i64* %3, align 8
  %878 = inttoptr i64 %875 to i32*
  %879 = load i32, i32* %878, align 4
  %880 = add i32 %879, -5
  %881 = icmp ult i32 %879, 5
  %882 = zext i1 %881 to i8
  store i8 %882, i8* %14, align 1
  %883 = and i32 %880, 255
  %884 = tail call i32 @llvm.ctpop.i32(i32 %883)
  %885 = trunc i32 %884 to i8
  %886 = and i8 %885, 1
  %887 = xor i8 %886, 1
  store i8 %887, i8* %21, align 1
  %888 = xor i32 %880, %879
  %889 = lshr i32 %888, 4
  %890 = trunc i32 %889 to i8
  %891 = and i8 %890, 1
  store i8 %891, i8* %26, align 1
  %892 = icmp eq i32 %880, 0
  %893 = zext i1 %892 to i8
  store i8 %893, i8* %29, align 1
  %894 = lshr i32 %880, 31
  %895 = trunc i32 %894 to i8
  store i8 %895, i8* %32, align 1
  %896 = lshr i32 %879, 31
  %897 = xor i32 %894, %896
  %898 = add nuw nsw i32 %897, %896
  %899 = icmp eq i32 %898, 2
  %900 = zext i1 %899 to i8
  store i8 %900, i8* %38, align 1
  %.v57 = select i1 %892, i64 10, i64 100
  %901 = add i64 %876, %.v57
  store i64 %901, i64* %3, align 8
  br i1 %892, label %block_471474, label %block_.L_4714ce

block_471474:                                     ; preds = %block_.L_47144d
  %902 = add i64 %874, -12
  %903 = add i64 %901, 4
  store i64 %903, i64* %3, align 8
  %904 = inttoptr i64 %902 to i32*
  %905 = load i32, i32* %904, align 4
  store i8 0, i8* %14, align 1
  %906 = and i32 %905, 255
  %907 = tail call i32 @llvm.ctpop.i32(i32 %906)
  %908 = trunc i32 %907 to i8
  %909 = and i8 %908, 1
  %910 = xor i8 %909, 1
  store i8 %910, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %911 = icmp eq i32 %905, 0
  %912 = zext i1 %911 to i8
  store i8 %912, i8* %29, align 1
  %913 = lshr i32 %905, 31
  %914 = trunc i32 %913 to i8
  store i8 %914, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v60 = select i1 %911, i64 10, i64 48
  %915 = add i64 %901, %.v60
  %916 = add i64 %915, 10
  store i64 %916, i64* %3, align 8
  br i1 %911, label %block_47147e, label %block_.L_4714a4

block_47147e:                                     ; preds = %block_471474
  store i64 ptrtoint (%G__0x580c48_type* @G__0x580c48 to i64), i64* %.pre48, align 8
  %917 = add i64 %874, -4
  %918 = add i64 %915, 13
  store i64 %918, i64* %3, align 8
  %919 = inttoptr i64 %917 to i32*
  %920 = load i32, i32* %919, align 4
  %921 = zext i32 %920 to i64
  store i64 %921, i64* %RSI.i235, align 8
  %922 = add i64 %874, -8
  %923 = add i64 %915, 16
  store i64 %923, i64* %3, align 8
  %924 = inttoptr i64 %922 to i32*
  %925 = load i32, i32* %924, align 4
  %926 = zext i32 %925 to i64
  store i64 %926, i64* %RDX.i268, align 8
  %927 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %928 = zext i32 %927 to i64
  store i64 %928, i64* %RCX.i305.pre-phi, align 8
  %AL.i92 = bitcast %union.anon* %.pre-phi to i8*
  store i8 0, i8* %AL.i92, align 1
  %929 = add i64 %915, -128718
  %930 = add i64 %915, 30
  %931 = load i64, i64* %6, align 8
  %932 = add i64 %931, -8
  %933 = inttoptr i64 %932 to i64*
  store i64 %930, i64* %933, align 8
  store i64 %932, i64* %6, align 8
  store i64 %929, i64* %3, align 8
  %call2_471497 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %929, %struct.Memory* %call2_471462)
  %934 = load i64, i64* %RBP.i, align 8
  %935 = add i64 %934, -112
  %936 = load i32, i32* %EAX.i231, align 4
  %937 = load i64, i64* %3, align 8
  %938 = add i64 %937, 3
  store i64 %938, i64* %3, align 8
  %939 = inttoptr i64 %935 to i32*
  store i32 %936, i32* %939, align 4
  %940 = load i64, i64* %3, align 8
  %941 = add i64 %940, 42
  store i64 %941, i64* %3, align 8
  br label %block_.L_4714c9

block_.L_4714a4:                                  ; preds = %block_471474
  store i64 ptrtoint (%G__0x580c83_type* @G__0x580c83 to i64), i64* %.pre48, align 8
  %942 = add i64 %874, -4
  %943 = add i64 %915, 13
  store i64 %943, i64* %3, align 8
  %944 = inttoptr i64 %942 to i32*
  %945 = load i32, i32* %944, align 4
  %946 = zext i32 %945 to i64
  store i64 %946, i64* %RSI.i235, align 8
  %947 = add i64 %874, -8
  %948 = add i64 %915, 16
  store i64 %948, i64* %3, align 8
  %949 = inttoptr i64 %947 to i32*
  %950 = load i32, i32* %949, align 4
  %951 = zext i32 %950 to i64
  store i64 %951, i64* %RDX.i268, align 8
  %952 = add i64 %915, 19
  store i64 %952, i64* %3, align 8
  %953 = load i32, i32* %904, align 4
  %954 = zext i32 %953 to i64
  store i64 %954, i64* %RCX.i305.pre-phi, align 8
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %956 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %957 = zext i32 %956 to i64
  store i64 %957, i64* %955, align 8
  %AL.i72 = bitcast %union.anon* %.pre-phi to i8*
  store i8 0, i8* %AL.i72, align 1
  %958 = add i64 %915, -128756
  %959 = add i64 %915, 34
  %960 = load i64, i64* %6, align 8
  %961 = add i64 %960, -8
  %962 = inttoptr i64 %961 to i64*
  store i64 %959, i64* %962, align 8
  store i64 %961, i64* %6, align 8
  store i64 %958, i64* %3, align 8
  %call2_4714c1 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %958, %struct.Memory* %call2_471462)
  %963 = load i64, i64* %RBP.i, align 8
  %964 = add i64 %963, -116
  %965 = load i32, i32* %EAX.i231, align 4
  %966 = load i64, i64* %3, align 8
  %967 = add i64 %966, 3
  store i64 %967, i64* %3, align 8
  %968 = inttoptr i64 %964 to i32*
  store i32 %965, i32* %968, align 4
  %.pre35 = load i64, i64* %3, align 8
  br label %block_.L_4714c9

block_.L_4714c9:                                  ; preds = %block_.L_4714a4, %block_47147e
  %969 = phi i64 [ %.pre35, %block_.L_4714a4 ], [ %941, %block_47147e ]
  %MEMORY.10 = phi %struct.Memory* [ %call2_4714c1, %block_.L_4714a4 ], [ %call2_471497, %block_47147e ]
  %970 = add i64 %969, 152
  br label %block_.L_471561

block_.L_4714ce:                                  ; preds = %block_.L_47144d
  %971 = add i64 %901, 4
  store i64 %971, i64* %3, align 8
  %972 = load i32, i32* %878, align 4
  %973 = add i32 %972, -4
  %974 = icmp ult i32 %972, 4
  %975 = zext i1 %974 to i8
  store i8 %975, i8* %14, align 1
  %976 = and i32 %973, 255
  %977 = tail call i32 @llvm.ctpop.i32(i32 %976)
  %978 = trunc i32 %977 to i8
  %979 = and i8 %978, 1
  %980 = xor i8 %979, 1
  store i8 %980, i8* %21, align 1
  %981 = xor i32 %973, %972
  %982 = lshr i32 %981, 4
  %983 = trunc i32 %982 to i8
  %984 = and i8 %983, 1
  store i8 %984, i8* %26, align 1
  %985 = icmp eq i32 %973, 0
  %986 = zext i1 %985 to i8
  store i8 %986, i8* %29, align 1
  %987 = lshr i32 %973, 31
  %988 = trunc i32 %987 to i8
  store i8 %988, i8* %32, align 1
  %989 = lshr i32 %972, 31
  %990 = xor i32 %987, %989
  %991 = add nuw nsw i32 %990, %989
  %992 = icmp eq i32 %991, 2
  %993 = zext i1 %992 to i8
  store i8 %993, i8* %38, align 1
  %.v58 = select i1 %985, i64 10, i64 52
  %994 = add i64 %901, %.v58
  store i64 %994, i64* %3, align 8
  br i1 %985, label %block_4714d8, label %block_.L_471502

block_4714d8:                                     ; preds = %block_.L_4714ce
  store i64 ptrtoint (%G__0x580cbb_type* @G__0x580cbb to i64), i64* %.pre48, align 8
  %995 = add i64 %874, -4
  %996 = add i64 %994, 13
  store i64 %996, i64* %3, align 8
  %997 = inttoptr i64 %995 to i32*
  %998 = load i32, i32* %997, align 4
  %999 = zext i32 %998 to i64
  store i64 %999, i64* %RSI.i235, align 8
  %1000 = add i64 %874, -8
  %1001 = add i64 %994, 16
  store i64 %1001, i64* %3, align 8
  %1002 = inttoptr i64 %1000 to i32*
  %1003 = load i32, i32* %1002, align 4
  %1004 = zext i32 %1003 to i64
  store i64 %1004, i64* %RDX.i268, align 8
  %1005 = add i64 %874, -12
  %1006 = add i64 %994, 19
  store i64 %1006, i64* %3, align 8
  %1007 = inttoptr i64 %1005 to i32*
  %1008 = load i32, i32* %1007, align 4
  %1009 = zext i32 %1008 to i64
  store i64 %1009, i64* %RCX.i305.pre-phi, align 8
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %1011 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %1012 = zext i32 %1011 to i64
  store i64 %1012, i64* %1010, align 8
  %AL.i49 = bitcast %union.anon* %.pre-phi to i8*
  store i8 0, i8* %AL.i49, align 1
  %1013 = add i64 %994, -128808
  %1014 = add i64 %994, 34
  %1015 = load i64, i64* %6, align 8
  %1016 = add i64 %1015, -8
  %1017 = inttoptr i64 %1016 to i64*
  store i64 %1014, i64* %1017, align 8
  store i64 %1016, i64* %6, align 8
  store i64 %1013, i64* %3, align 8
  %call2_4714f5 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1013, %struct.Memory* %call2_471462)
  %1018 = load i64, i64* %RBP.i, align 8
  %1019 = add i64 %1018, -120
  %1020 = load i32, i32* %EAX.i231, align 4
  %1021 = load i64, i64* %3, align 8
  %1022 = add i64 %1021, 3
  store i64 %1022, i64* %3, align 8
  %1023 = inttoptr i64 %1019 to i32*
  store i32 %1020, i32* %1023, align 4
  %1024 = load i64, i64* %3, align 8
  %1025 = add i64 %1024, 95
  br label %block_.L_47155c

block_.L_471502:                                  ; preds = %block_.L_4714ce
  %1026 = add i64 %994, 4
  store i64 %1026, i64* %3, align 8
  %1027 = load i32, i32* %878, align 4
  %1028 = add i32 %1027, -1
  %1029 = icmp eq i32 %1027, 0
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %14, align 1
  %1031 = and i32 %1028, 255
  %1032 = tail call i32 @llvm.ctpop.i32(i32 %1031)
  %1033 = trunc i32 %1032 to i8
  %1034 = and i8 %1033, 1
  %1035 = xor i8 %1034, 1
  store i8 %1035, i8* %21, align 1
  %1036 = xor i32 %1028, %1027
  %1037 = lshr i32 %1036, 4
  %1038 = trunc i32 %1037 to i8
  %1039 = and i8 %1038, 1
  store i8 %1039, i8* %26, align 1
  %1040 = icmp eq i32 %1028, 0
  %1041 = zext i1 %1040 to i8
  store i8 %1041, i8* %29, align 1
  %1042 = lshr i32 %1028, 31
  %1043 = trunc i32 %1042 to i8
  store i8 %1043, i8* %32, align 1
  %1044 = lshr i32 %1027, 31
  %1045 = xor i32 %1042, %1044
  %1046 = add nuw nsw i32 %1045, %1044
  %1047 = icmp eq i32 %1046, 2
  %1048 = zext i1 %1047 to i8
  store i8 %1048, i8* %38, align 1
  %.v59 = select i1 %1040, i64 10, i64 52
  %1049 = add i64 %994, %.v59
  %1050 = add i64 %1049, 10
  store i64 %1050, i64* %3, align 8
  br i1 %1040, label %block_47150c, label %block_.L_471536

block_47150c:                                     ; preds = %block_.L_471502
  store i64 ptrtoint (%G__0x580d02_type* @G__0x580d02 to i64), i64* %.pre48, align 8
  %1051 = add i64 %874, -4
  %1052 = add i64 %1049, 13
  store i64 %1052, i64* %3, align 8
  %1053 = inttoptr i64 %1051 to i32*
  %1054 = load i32, i32* %1053, align 4
  %1055 = zext i32 %1054 to i64
  store i64 %1055, i64* %RSI.i235, align 8
  %1056 = add i64 %874, -8
  %1057 = add i64 %1049, 16
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1056 to i32*
  %1059 = load i32, i32* %1058, align 4
  %1060 = zext i32 %1059 to i64
  store i64 %1060, i64* %RDX.i268, align 8
  %1061 = add i64 %874, -12
  %1062 = add i64 %1049, 19
  store i64 %1062, i64* %3, align 8
  %1063 = inttoptr i64 %1061 to i32*
  %1064 = load i32, i32* %1063, align 4
  %1065 = zext i32 %1064 to i64
  store i64 %1065, i64* %RCX.i305.pre-phi, align 8
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %1067 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %1068 = zext i32 %1067 to i64
  store i64 %1068, i64* %1066, align 8
  %AL.i27 = bitcast %union.anon* %.pre-phi to i8*
  store i8 0, i8* %AL.i27, align 1
  %1069 = add i64 %1049, -128860
  %1070 = add i64 %1049, 34
  %1071 = load i64, i64* %6, align 8
  %1072 = add i64 %1071, -8
  %1073 = inttoptr i64 %1072 to i64*
  store i64 %1070, i64* %1073, align 8
  store i64 %1072, i64* %6, align 8
  store i64 %1069, i64* %3, align 8
  %call2_471529 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1069, %struct.Memory* %call2_471462)
  %1074 = load i64, i64* %RBP.i, align 8
  %1075 = add i64 %1074, -124
  %1076 = load i32, i32* %EAX.i231, align 4
  %1077 = load i64, i64* %3, align 8
  %1078 = add i64 %1077, 3
  store i64 %1078, i64* %3, align 8
  %1079 = inttoptr i64 %1075 to i32*
  store i32 %1076, i32* %1079, align 4
  %1080 = load i64, i64* %3, align 8
  %1081 = add i64 %1080, 38
  store i64 %1081, i64* %3, align 8
  br label %block_.L_471557

block_.L_471536:                                  ; preds = %block_.L_471502
  store i64 ptrtoint (%G__0x580d48_type* @G__0x580d48 to i64), i64* %.pre48, align 8
  %1082 = add i64 %874, -4
  %1083 = add i64 %1049, 13
  store i64 %1083, i64* %3, align 8
  %1084 = inttoptr i64 %1082 to i32*
  %1085 = load i32, i32* %1084, align 4
  %1086 = zext i32 %1085 to i64
  store i64 %1086, i64* %RSI.i235, align 8
  %1087 = add i64 %874, -8
  %1088 = add i64 %1049, 16
  store i64 %1088, i64* %3, align 8
  %1089 = inttoptr i64 %1087 to i32*
  %1090 = load i32, i32* %1089, align 4
  %1091 = zext i32 %1090 to i64
  store i64 %1091, i64* %RDX.i268, align 8
  %1092 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %1093 = zext i32 %1092 to i64
  store i64 %1093, i64* %RCX.i305.pre-phi, align 8
  %AL.i = bitcast %union.anon* %.pre-phi to i8*
  store i8 0, i8* %AL.i, align 1
  %1094 = add i64 %1049, -128902
  %1095 = add i64 %1049, 30
  %1096 = load i64, i64* %6, align 8
  %1097 = add i64 %1096, -8
  %1098 = inttoptr i64 %1097 to i64*
  store i64 %1095, i64* %1098, align 8
  store i64 %1097, i64* %6, align 8
  store i64 %1094, i64* %3, align 8
  %call2_47154f = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %1094, %struct.Memory* %call2_471462)
  %1099 = load i64, i64* %RBP.i, align 8
  %1100 = add i64 %1099, -128
  %1101 = load i32, i32* %EAX.i231, align 4
  %1102 = load i64, i64* %3, align 8
  %1103 = add i64 %1102, 3
  store i64 %1103, i64* %3, align 8
  %1104 = inttoptr i64 %1100 to i32*
  store i32 %1101, i32* %1104, align 4
  %.pre36 = load i64, i64* %3, align 8
  br label %block_.L_471557

block_.L_471557:                                  ; preds = %block_.L_471536, %block_47150c
  %1105 = phi i64 [ %.pre36, %block_.L_471536 ], [ %1081, %block_47150c ]
  %MEMORY.11 = phi %struct.Memory* [ %call2_47154f, %block_.L_471536 ], [ %call2_471529, %block_47150c ]
  %1106 = add i64 %1105, 5
  store i64 %1106, i64* %3, align 8
  br label %block_.L_47155c

block_.L_47155c:                                  ; preds = %block_.L_471557, %block_4714d8
  %storemerge17 = phi i64 [ %1025, %block_4714d8 ], [ %1106, %block_.L_471557 ]
  %MEMORY.12 = phi %struct.Memory* [ %call2_4714f5, %block_4714d8 ], [ %MEMORY.11, %block_.L_471557 ]
  %1107 = add i64 %storemerge17, 5
  store i64 %1107, i64* %3, align 8
  br label %block_.L_471561

block_.L_471561:                                  ; preds = %block_.L_47155c, %block_.L_4714c9
  %storemerge16 = phi i64 [ %970, %block_.L_4714c9 ], [ %1107, %block_.L_47155c ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.10, %block_.L_4714c9 ], [ %MEMORY.12, %block_.L_47155c ]
  store i64 ptrtoint (%G__0xab0f30_type* @G__0xab0f30 to i64), i64* %.pre48, align 8
  %1108 = add i64 %storemerge16, 5887
  %1109 = add i64 %storemerge16, 15
  %1110 = load i64, i64* %6, align 8
  %1111 = add i64 %1110, -8
  %1112 = inttoptr i64 %1111 to i64*
  store i64 %1109, i64* %1112, align 8
  store i64 %1111, i64* %6, align 8
  store i64 %1108, i64* %3, align 8
  %call2_47156b = tail call %struct.Memory* @sub_472c60.sgffile_enddump(%struct.State* nonnull %0, i64 %1108, %struct.Memory* %MEMORY.13)
  %1113 = load i64, i64* %3, align 8
  %1114 = add i64 %1113, 11
  store i64 %1114, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  br label %block_.L_47157b

block_.L_47157b:                                  ; preds = %block_.L_471561, %block_4712fc, %block_.L_4712bb
  %1115 = phi i64 [ %518, %block_.L_4712bb ], [ %1114, %block_.L_471561 ], [ %570, %block_4712fc ]
  %MEMORY.14 = phi %struct.Memory* [ %510, %block_.L_4712bb ], [ %call2_47156b, %block_.L_471561 ], [ %562, %block_4712fc ]
  %1116 = load i64, i64* %6, align 8
  %1117 = add i64 %1116, 128
  store i64 %1117, i64* %6, align 8
  %1118 = icmp ugt i64 %1116, -129
  %1119 = zext i1 %1118 to i8
  store i8 %1119, i8* %14, align 1
  %1120 = trunc i64 %1117 to i32
  %1121 = and i32 %1120, 255
  %1122 = tail call i32 @llvm.ctpop.i32(i32 %1121)
  %1123 = trunc i32 %1122 to i8
  %1124 = and i8 %1123, 1
  %1125 = xor i8 %1124, 1
  store i8 %1125, i8* %21, align 1
  %1126 = xor i64 %1117, %1116
  %1127 = lshr i64 %1126, 4
  %1128 = trunc i64 %1127 to i8
  %1129 = and i8 %1128, 1
  store i8 %1129, i8* %26, align 1
  %1130 = icmp eq i64 %1117, 0
  %1131 = zext i1 %1130 to i8
  store i8 %1131, i8* %29, align 1
  %1132 = lshr i64 %1117, 63
  %1133 = trunc i64 %1132 to i8
  store i8 %1133, i8* %32, align 1
  %1134 = lshr i64 %1116, 63
  %1135 = xor i64 %1132, %1134
  %1136 = add nuw nsw i64 %1135, %1132
  %1137 = icmp eq i64 %1136, 2
  %1138 = zext i1 %1137 to i8
  store i8 %1138, i8* %38, align 1
  %1139 = add i64 %1115, 8
  store i64 %1139, i64* %3, align 8
  %1140 = add i64 %1116, 136
  %1141 = inttoptr i64 %1117 to i64*
  %1142 = load i64, i64* %1141, align 8
  store i64 %1142, i64* %RBP.i, align 8
  store i64 %1140, i64* %6, align 8
  %1143 = add i64 %1115, 9
  store i64 %1143, i64* %3, align 8
  %1144 = inttoptr i64 %1140 to i64*
  %1145 = load i64, i64* %1144, align 8
  store i64 %1145, i64* %3, align 8
  %1146 = add i64 %1116, 144
  store i64 %1146, i64* %6, align 8
  ret %struct.Memory* %MEMORY.14
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
define %struct.Memory* @routine_subq__0x80___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -128
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 128
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
define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1a5__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -421
  %10 = icmp ult i32 %8, 421
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
define %struct.Memory* @routine_jae_.L_4711b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_je_.L_4711b8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_471211(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x5809e2___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x5809e2_type* @G__0x5809e2 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x7f___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 127, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57dbac___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57dbac_type* @G__0x57dbac to i64), i64* %RDX, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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
define %struct.Memory* @routine_movq__rdx__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
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
define %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
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
define %struct.Memory* @routine_movq_MINUS0x30__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -52
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
define %struct.Memory* @routine_movl_MINUS0x38__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -56
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1a5__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -421
  %10 = icmp ult i32 %8, 421
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
define %struct.Memory* @routine_jae_.L_471238(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_je_.L_471238(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_471291(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x80___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 128, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x580a9a___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x580a9a_type* @G__0x580a9a to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movq__rdx__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movl_MINUS0x8__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
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
define %struct.Memory* @routine_movq_MINUS0x48__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movl_MINUS0x50__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
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
define %struct.Memory* @routine_je_.L_4712bb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4712dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x580aaa___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x580aaa_type* @G__0x580aaa to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x99c0a0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x99c0a0_type* @G_0x99c0a0 to i64*), align 8
  store i64 %5, i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.fprintf_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_47157b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_je_.L_47131d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x580ae0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x580ae0_type* @G__0x580ae0 to i64), i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpb__0x0__0xab0f30(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i8, i8* getelementptr inbounds (%G_0xab0f30_type, %G_0xab0f30_type* @G_0xab0f30, i64 0, i32 0, i64 0), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1
  %7 = zext i8 %5 to i32
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1
  %14 = icmp eq i8 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1
  %17 = lshr i8 %5, 7
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %17, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_471334(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x20__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sgffile_begindump(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xc__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0xab0eec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movl_MINUS0x8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_callq_.string_connect(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_4713ba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_471390(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x580b23___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x580b23_type* @G__0x580b23 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movl_MINUS0x8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movl_0xab0eec___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
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
define %struct.Memory* @routine_jmpq_.L_4713b5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x580b5b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x580b5b_type* @G__0x580b5b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movl_0xab0eec___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %3, align 8
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
define %struct.Memory* @routine_jmpq_.L_47144d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_4713ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x580b90___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x580b90_type* @G__0x580b90 to i64), i64* %RDI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_471448(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jne_.L_471422(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x580bd4___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x580bd4_type* @G__0x580bd4 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_471443(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x580c17___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x580c17_type* @G__0x580c17 to i64), i64* %RDI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.disconnect(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4714ce(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4714a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x580c48___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x580c48_type* @G__0x580c48 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_4714c9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x580c83___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x580c83_type* @G__0x580c83 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_471561(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_471502(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x580cbb___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x580cbb_type* @G__0x580cbb to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_47155c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_471536(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x580d02___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x580d02_type* @G__0x580d02 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_jmpq_.L_471557(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x580d48___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x580d48_type* @G__0x580d48 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movq__0xab0f30___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xab0f30_type* @G__0xab0f30 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sgffile_enddump(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__0xab0eec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x80___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 128
  store i64 %6, i64* %RSP, align 8
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
