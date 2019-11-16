; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G__0x455d2b_type = type <{ [8 x i8] }>
%G__0x455d33_type = type <{ [8 x i8] }>
%G__0x458ccb_type = type <{ [8 x i8] }>
%G__0x458ce3_type = type <{ [8 x i8] }>
%G__0x458cfb_type = type <{ [8 x i8] }>
%G__0x458cfe_type = type <{ [8 x i8] }>
%G__0x45992c_type = type <{ [8 x i8] }>
%G__0x459931_type = type <{ [8 x i8] }>
%G__0x4599e3_type = type <{ [8 x i8] }>
%G__0x459a08_type = type <{ [8 x i8] }>
%G__0x459a0d_type = type <{ [8 x i8] }>
%G__0x459a12_type = type <{ [8 x i8] }>
%G__0x459a17_type = type <{ [8 x i8] }>
%G__0x459a1c_type = type <{ [8 x i8] }>
%G__0x459a49_type = type <{ [8 x i8] }>
%G__0x459a76_type = type <{ [8 x i8] }>
%G__0x459aa3_type = type <{ [8 x i8] }>
%G__0x459fa3_type = type <{ [8 x i8] }>
%G__0x459fa8_type = type <{ [8 x i8] }>
%G__0x459fae_type = type <{ [8 x i8] }>
%G__0x459fbc_type = type <{ [8 x i8] }>
%G__0x459fca_type = type <{ [8 x i8] }>
%G__0x459fd9_type = type <{ [8 x i8] }>
%G__0x459fe0_type = type <{ [8 x i8] }>
%G__0x459fe7_type = type <{ [8 x i8] }>
%G__0x459ff0_type = type <{ [8 x i8] }>
%G__0x459ff7_type = type <{ [8 x i8] }>
%G__0x459fff_type = type <{ [8 x i8] }>
%G__0x45a005_type = type <{ [8 x i8] }>
%G__0x45a00b_type = type <{ [8 x i8] }>
%G__0x45a00e_type = type <{ [8 x i8] }>
%G__0x45a1f5_type = type <{ [8 x i8] }>
%G__0x45a46f_type = type <{ [8 x i8] }>
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
@G__0x455d2b = global %G__0x455d2b_type zeroinitializer
@G__0x455d33 = global %G__0x455d33_type zeroinitializer
@G__0x458ccb = global %G__0x458ccb_type zeroinitializer
@G__0x458ce3 = global %G__0x458ce3_type zeroinitializer
@G__0x458cfb = global %G__0x458cfb_type zeroinitializer
@G__0x458cfe = global %G__0x458cfe_type zeroinitializer
@G__0x45992c = global %G__0x45992c_type zeroinitializer
@G__0x459931 = global %G__0x459931_type zeroinitializer
@G__0x4599e3 = global %G__0x4599e3_type zeroinitializer
@G__0x459a08 = global %G__0x459a08_type zeroinitializer
@G__0x459a0d = global %G__0x459a0d_type zeroinitializer
@G__0x459a12 = global %G__0x459a12_type zeroinitializer
@G__0x459a17 = global %G__0x459a17_type zeroinitializer
@G__0x459a1c = global %G__0x459a1c_type zeroinitializer
@G__0x459a49 = global %G__0x459a49_type zeroinitializer
@G__0x459a76 = global %G__0x459a76_type zeroinitializer
@G__0x459aa3 = global %G__0x459aa3_type zeroinitializer
@G__0x459fa3 = global %G__0x459fa3_type zeroinitializer
@G__0x459fa8 = global %G__0x459fa8_type zeroinitializer
@G__0x459fae = global %G__0x459fae_type zeroinitializer
@G__0x459fbc = global %G__0x459fbc_type zeroinitializer
@G__0x459fca = global %G__0x459fca_type zeroinitializer
@G__0x459fd9 = global %G__0x459fd9_type zeroinitializer
@G__0x459fe0 = global %G__0x459fe0_type zeroinitializer
@G__0x459fe7 = global %G__0x459fe7_type zeroinitializer
@G__0x459ff0 = global %G__0x459ff0_type zeroinitializer
@G__0x459ff7 = global %G__0x459ff7_type zeroinitializer
@G__0x459fff = global %G__0x459fff_type zeroinitializer
@G__0x45a005 = global %G__0x45a005_type zeroinitializer
@G__0x45a00b = global %G__0x45a00b_type zeroinitializer
@G__0x45a00e = global %G__0x45a00e_type zeroinitializer
@G__0x45a1f5 = global %G__0x45a1f5_type zeroinitializer
@G__0x45a46f = global %G__0x45a46f_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @free(i64)

declare extern_weak x86_64_sysvcc i64 @strncmp(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_446320.sre_fgets(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_446800.IsBlankline(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401700.strstr_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_446720.sre_strdup(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_446650.sre_strtok(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451270.IsInt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_401480.strchr_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43f970.Seqtype(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43ea10.Die(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4014a0.rewind_plt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @SeqfileFormat(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -88
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 80
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
  %RDI.i138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %40 = add i64 %7, -16
  %41 = load i64, i64* %RDI.i138, align 8
  %42 = add i64 %10, 11
  store i64 %42, i64* %3, align 8
  %43 = inttoptr i64 %40 to i64*
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %RBP.i, align 8
  %45 = add i64 %44, -24
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 7
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %45 to i32*
  store i32 0, i32* %48, align 4
  %49 = load i64, i64* %RBP.i, align 8
  %50 = add i64 %49, -16
  %51 = load i64, i64* %3, align 8
  %52 = add i64 %51, 8
  store i64 %52, i64* %3, align 8
  %53 = inttoptr i64 %50 to i64*
  store i64 0, i64* %53, align 8
  %54 = load i64, i64* %RBP.i, align 8
  %55 = add i64 %54, -20
  %56 = load i64, i64* %3, align 8
  %57 = add i64 %56, 7
  store i64 %57, i64* %3, align 8
  %58 = inttoptr i64 %55 to i32*
  store i32 0, i32* %58, align 4
  %59 = load i64, i64* %RBP.i, align 8
  %60 = add i64 %59, -28
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %61, 7
  store i64 %62, i64* %3, align 8
  %63 = inttoptr i64 %60 to i32*
  store i32 0, i32* %63, align 4
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -68
  %66 = load i64, i64* %3, align 8
  %67 = add i64 %66, 7
  store i64 %67, i64* %3, align 8
  %68 = inttoptr i64 %65 to i32*
  store i32 0, i32* %68, align 4
  %RSI.i312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDX.i329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i361 = getelementptr inbounds %union.anon, %union.anon* %69, i64 0, i32 0
  %EAX.i424 = bitcast %union.anon* %69 to i32*
  %RCX.i102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RCX.i654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_43f200

block_.L_43f200:                                  ; preds = %block_.L_43f200.backedge, %entry
  %70 = phi i64 [ %.pre, %entry ], [ %.sink, %block_.L_43f200.backedge ]
  %MEMORY.0 = phi %struct.Memory* [ %2, %entry ], [ %MEMORY.0.be, %block_.L_43f200.backedge ]
  %71 = load i64, i64* %RBP.i, align 8
  %72 = add i64 %71, -16
  store i64 %72, i64* %RDI.i138, align 8
  %73 = add i64 %71, -20
  store i64 %73, i64* %RSI.i312, align 8
  %74 = add i64 %71, -8
  %75 = add i64 %70, 12
  store i64 %75, i64* %3, align 8
  %76 = inttoptr i64 %74 to i64*
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %RDX.i329, align 8
  %78 = add i64 %70, 28960
  %79 = add i64 %70, 17
  %80 = load i64, i64* %6, align 8
  %81 = add i64 %80, -8
  %82 = inttoptr i64 %81 to i64*
  store i64 %79, i64* %82, align 8
  store i64 %81, i64* %6, align 8
  store i64 %78, i64* %3, align 8
  %call2_43f20c = tail call %struct.Memory* @sub_446320.sre_fgets(%struct.State* nonnull %0, i64 %78, %struct.Memory* %MEMORY.0)
  %83 = load i64, i64* %RAX.i361, align 8
  %84 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %85 = trunc i64 %83 to i32
  %86 = and i32 %85, 255
  %87 = tail call i32 @llvm.ctpop.i32(i32 %86)
  %88 = trunc i32 %87 to i8
  %89 = and i8 %88, 1
  %90 = xor i8 %89, 1
  store i8 %90, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %91 = icmp eq i64 %83, 0
  %92 = zext i1 %91 to i8
  store i8 %92, i8* %30, align 1
  %93 = lshr i64 %83, 63
  %94 = trunc i64 %93 to i8
  store i8 %94, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v166 = select i1 %91, i64 1611, i64 10
  %95 = add i64 %84, %.v166
  store i64 %95, i64* %3, align 8
  %.pre161 = load i64, i64* %RBP.i, align 8
  br i1 %91, label %block_.L_43f85c.loopexit, label %block_43f21b

block_43f21b:                                     ; preds = %block_.L_43f200
  %96 = add i64 %.pre161, -16
  %97 = add i64 %95, 4
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %96 to i64*
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %RDI.i138, align 8
  %100 = add i64 %95, 30181
  %101 = add i64 %95, 9
  %102 = load i64, i64* %6, align 8
  %103 = add i64 %102, -8
  %104 = inttoptr i64 %103 to i64*
  store i64 %101, i64* %104, align 8
  store i64 %103, i64* %6, align 8
  store i64 %100, i64* %3, align 8
  %call2_43f21f = tail call %struct.Memory* @sub_446800.IsBlankline(%struct.State* nonnull %0, i64 %100, %struct.Memory* %MEMORY.0)
  %105 = load i32, i32* %EAX.i424, align 4
  %106 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %107 = and i32 %105, 255
  %108 = tail call i32 @llvm.ctpop.i32(i32 %107)
  %109 = trunc i32 %108 to i8
  %110 = and i8 %109, 1
  %111 = xor i8 %110, 1
  store i8 %111, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %112 = icmp eq i32 %105, 0
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %30, align 1
  %114 = lshr i32 %105, 31
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v167 = select i1 %112, i64 14, i64 9
  %116 = add i64 %106, %.v167
  store i64 %116, i64* %3, align 8
  br i1 %112, label %block_.L_43f232, label %block_43f22d

block_43f22d:                                     ; preds = %block_43f21b
  %117 = add i64 %116, -45
  br label %block_.L_43f200.backedge

block_.L_43f200.backedge:                         ; preds = %block_43f22d, %block_43f7c2, %block_43f7e7, %block_.L_43f857
  %.sink = phi i64 [ %117, %block_43f22d ], [ %1116, %block_43f7c2 ], [ %1145, %block_43f7e7 ], [ %1281, %block_.L_43f857 ]
  %MEMORY.0.be = phi %struct.Memory* [ %MEMORY.0, %block_43f22d ], [ %call2_43f7af, %block_43f7c2 ], [ %call2_43f7d8, %block_43f7e7 ], [ %MEMORY.14, %block_.L_43f857 ]
  store i64 %.sink, i64* %3, align 8
  br label %block_.L_43f200

block_.L_43f232:                                  ; preds = %block_43f21b
  %118 = load i64, i64* %RBP.i, align 8
  %119 = add i64 %118, -28
  %120 = add i64 %116, 4
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %119 to i32*
  %122 = load i32, i32* %121, align 4
  store i8 0, i8* %14, align 1
  %123 = and i32 %122, 255
  %124 = tail call i32 @llvm.ctpop.i32(i32 %123)
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  %127 = xor i8 %126, 1
  store i8 %127, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %128 = icmp eq i32 %122, 0
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %30, align 1
  %130 = lshr i32 %122, 31
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v168 = select i1 %128, i64 10, i64 567
  %132 = add i64 %116, %.v168
  store i64 %132, i64* %3, align 8
  br i1 %128, label %block_43f23c, label %block_.L_43f469

block_43f23c:                                     ; preds = %block_.L_43f232
  store i64 ptrtoint (%G__0x459fa3_type* @G__0x459fa3 to i64), i64* %RSI.i312, align 8
  store i64 4, i64* %RAX.i361, align 8
  store i64 4, i64* %RDX.i329, align 8
  %133 = add i64 %118, -16
  %134 = add i64 %132, 21
  store i64 %134, i64* %3, align 8
  %135 = inttoptr i64 %133 to i64*
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %RDI.i138, align 8
  %137 = add i64 %132, -253548
  %138 = add i64 %132, 26
  %139 = load i64, i64* %6, align 8
  %140 = add i64 %139, -8
  %141 = inttoptr i64 %140 to i64*
  store i64 %138, i64* %141, align 8
  store i64 %140, i64* %6, align 8
  store i64 %137, i64* %3, align 8
  %142 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %MEMORY.0)
  %143 = load i32, i32* %EAX.i424, align 4
  %144 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %145 = and i32 %143, 255
  %146 = tail call i32 @llvm.ctpop.i32(i32 %145)
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  %149 = xor i8 %148, 1
  store i8 %149, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %150 = icmp eq i32 %143, 0
  %151 = zext i1 %150 to i8
  store i8 %151, i8* %30, align 1
  %152 = lshr i32 %143, 31
  %153 = trunc i32 %152 to i8
  store i8 %153, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v199 = select i1 %150, i64 9, i64 50
  %154 = add i64 %144, %.v199
  store i64 %154, i64* %3, align 8
  br i1 %150, label %block_43f25f, label %block_.L_43f288

block_43f25f:                                     ; preds = %block_43f23c
  store i64 ptrtoint (%G__0x459fa8_type* @G__0x459fa8 to i64), i64* %RSI.i312, align 8
  %155 = load i64, i64* %RBP.i, align 8
  %156 = add i64 %155, -16
  %157 = add i64 %154, 14
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %156 to i64*
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %RDI.i138, align 8
  %160 = add i64 %154, -252767
  %161 = add i64 %154, 19
  %162 = load i64, i64* %6, align 8
  %163 = add i64 %162, -8
  %164 = inttoptr i64 %163 to i64*
  store i64 %161, i64* %164, align 8
  store i64 %163, i64* %6, align 8
  store i64 %160, i64* %3, align 8
  %call2_43f26d = tail call %struct.Memory* @sub_401700.strstr_plt(%struct.State* nonnull %0, i64 %160, %struct.Memory* %142)
  %165 = load i64, i64* %RAX.i361, align 8
  %166 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %167 = trunc i64 %165 to i32
  %168 = and i32 %167, 255
  %169 = tail call i32 @llvm.ctpop.i32(i32 %168)
  %170 = trunc i32 %169 to i8
  %171 = and i8 %170, 1
  %172 = xor i8 %171, 1
  store i8 %172, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %173 = icmp eq i64 %165, 0
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %30, align 1
  %175 = lshr i64 %165, 63
  %176 = trunc i64 %175 to i8
  store i8 %176, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v212 = select i1 %173, i64 22, i64 10
  %177 = add i64 %166, %.v212
  store i64 %177, i64* %3, align 8
  br i1 %173, label %block_.L_43f288, label %block_43f27c

block_43f27c:                                     ; preds = %block_43f25f
  %178 = load i64, i64* %RBP.i, align 8
  %179 = add i64 %178, -24
  %180 = add i64 %177, 7
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %179 to i32*
  store i32 16, i32* %181, align 4
  br label %block_.L_43f899

block_.L_43f288:                                  ; preds = %block_43f23c, %block_43f25f
  %182 = phi i64 [ %154, %block_43f23c ], [ %177, %block_43f25f ]
  %MEMORY.1 = phi %struct.Memory* [ %142, %block_43f23c ], [ %call2_43f26d, %block_43f25f ]
  %183 = load i64, i64* %RBP.i, align 8
  %184 = add i64 %183, -16
  %185 = add i64 %182, 4
  store i64 %185, i64* %3, align 8
  %186 = inttoptr i64 %184 to i64*
  %187 = load i64, i64* %186, align 8
  store i64 %187, i64* %RAX.i361, align 8
  %188 = add i64 %182, 7
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %187 to i8*
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i64
  %192 = and i64 %191, 4294967295
  store i64 %192, i64* %RCX.i654, align 8
  %193 = sext i8 %190 to i32
  %194 = add nsw i32 %193, -62
  %195 = icmp ult i8 %190, 62
  %196 = zext i1 %195 to i8
  store i8 %196, i8* %14, align 1
  %197 = and i32 %194, 255
  %198 = tail call i32 @llvm.ctpop.i32(i32 %197)
  %199 = trunc i32 %198 to i8
  %200 = and i8 %199, 1
  %201 = xor i8 %200, 1
  store i8 %201, i8* %21, align 1
  %202 = xor i32 %193, 16
  %203 = xor i32 %202, %194
  %204 = lshr i32 %203, 4
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  store i8 %206, i8* %27, align 1
  %207 = icmp eq i32 %194, 0
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %30, align 1
  %209 = lshr i32 %194, 31
  %210 = trunc i32 %209 to i8
  store i8 %210, i8* %33, align 1
  %211 = lshr i32 %193, 31
  %212 = xor i32 %209, %211
  %213 = add nuw nsw i32 %212, %211
  %214 = icmp eq i32 %213, 2
  %215 = zext i1 %214 to i8
  store i8 %215, i8* %39, align 1
  %.v200 = select i1 %207, i64 16, i64 28
  %216 = add i64 %182, %.v200
  store i64 %216, i64* %3, align 8
  br i1 %207, label %block_43f298, label %block_.L_43f2a4

block_43f298:                                     ; preds = %block_.L_43f288
  %217 = add i64 %183, -24
  %218 = add i64 %216, 7
  store i64 %218, i64* %3, align 8
  %219 = inttoptr i64 %217 to i32*
  store i32 7, i32* %219, align 4
  br label %block_.L_43f899

block_.L_43f2a4:                                  ; preds = %block_.L_43f288
  store i64 ptrtoint (%G__0x459fae_type* @G__0x459fae to i64), i64* %RSI.i312, align 8
  store i64 13, i64* %RAX.i361, align 8
  store i64 13, i64* %RDX.i329, align 8
  %220 = add i64 %216, 21
  store i64 %220, i64* %3, align 8
  %221 = load i64, i64* %186, align 8
  store i64 %221, i64* %RDI.i138, align 8
  %222 = add i64 %216, -253652
  %223 = add i64 %216, 26
  %224 = load i64, i64* %6, align 8
  %225 = add i64 %224, -8
  %226 = inttoptr i64 %225 to i64*
  store i64 %223, i64* %226, align 8
  store i64 %225, i64* %6, align 8
  store i64 %222, i64* %3, align 8
  %227 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %MEMORY.1)
  %228 = load i32, i32* %EAX.i424, align 4
  %229 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %230 = and i32 %228, 255
  %231 = tail call i32 @llvm.ctpop.i32(i32 %230)
  %232 = trunc i32 %231 to i8
  %233 = and i8 %232, 1
  %234 = xor i8 %233, 1
  store i8 %234, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %235 = icmp eq i32 %228, 0
  %236 = zext i1 %235 to i8
  store i8 %236, i8* %30, align 1
  %237 = lshr i32 %228, 31
  %238 = trunc i32 %237 to i8
  store i8 %238, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v201 = select i1 %235, i64 44, i64 9
  %239 = add i64 %229, %.v201
  store i64 %239, i64* %3, align 8
  br i1 %235, label %block_.L_43f2ea, label %block_43f2c7

block_43f2c7:                                     ; preds = %block_.L_43f2a4
  store i64 ptrtoint (%G__0x459fbc_type* @G__0x459fbc to i64), i64* %RSI.i312, align 8
  store i64 13, i64* %RAX.i361, align 8
  store i64 13, i64* %RDX.i329, align 8
  %240 = load i64, i64* %RBP.i, align 8
  %241 = add i64 %240, -16
  %242 = add i64 %239, 21
  store i64 %242, i64* %3, align 8
  %243 = inttoptr i64 %241 to i64*
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %RDI.i138, align 8
  %245 = add i64 %239, -253687
  %246 = add i64 %239, 26
  %247 = load i64, i64* %6, align 8
  %248 = add i64 %247, -8
  %249 = inttoptr i64 %248 to i64*
  store i64 %246, i64* %249, align 8
  store i64 %248, i64* %6, align 8
  store i64 %245, i64* %3, align 8
  %250 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %227)
  %251 = load i32, i32* %EAX.i424, align 4
  %252 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %253 = and i32 %251, 255
  %254 = tail call i32 @llvm.ctpop.i32(i32 %253)
  %255 = trunc i32 %254 to i8
  %256 = and i8 %255, 1
  %257 = xor i8 %256, 1
  store i8 %257, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %258 = icmp eq i32 %251, 0
  %259 = zext i1 %258 to i8
  store i8 %259, i8* %30, align 1
  %260 = lshr i32 %251, 31
  %261 = trunc i32 %260 to i8
  store i8 %261, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v202 = select i1 %258, i64 9, i64 21
  %262 = add i64 %252, %.v202
  store i64 %262, i64* %3, align 8
  br i1 %258, label %block_.L_43f2ea, label %block_.L_43f2f6

block_.L_43f2ea:                                  ; preds = %block_43f2c7, %block_.L_43f2a4
  %263 = phi i64 [ %239, %block_.L_43f2a4 ], [ %262, %block_43f2c7 ]
  %MEMORY.2 = phi %struct.Memory* [ %227, %block_.L_43f2a4 ], [ %250, %block_43f2c7 ]
  %264 = load i64, i64* %RBP.i, align 8
  %265 = add i64 %264, -24
  %266 = add i64 %263, 7
  store i64 %266, i64* %3, align 8
  %267 = inttoptr i64 %265 to i32*
  store i32 5, i32* %267, align 4
  br label %block_.L_43f899

block_.L_43f2f6:                                  ; preds = %block_43f2c7
  store i64 ptrtoint (%G__0x459fca_type* @G__0x459fca to i64), i64* %RSI.i312, align 8
  store i64 14, i64* %RAX.i361, align 8
  store i64 14, i64* %RDX.i329, align 8
  %268 = load i64, i64* %RBP.i, align 8
  %269 = add i64 %268, -16
  %270 = add i64 %262, 21
  store i64 %270, i64* %3, align 8
  %271 = inttoptr i64 %269 to i64*
  %272 = load i64, i64* %271, align 8
  store i64 %272, i64* %RDI.i138, align 8
  %273 = add i64 %262, -253734
  %274 = add i64 %262, 26
  %275 = load i64, i64* %6, align 8
  %276 = add i64 %275, -8
  %277 = inttoptr i64 %276 to i64*
  store i64 %274, i64* %277, align 8
  store i64 %276, i64* %6, align 8
  store i64 %273, i64* %3, align 8
  %278 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %250)
  %279 = load i32, i32* %EAX.i424, align 4
  %280 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %281 = and i32 %279, 255
  %282 = tail call i32 @llvm.ctpop.i32(i32 %281)
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  %285 = xor i8 %284, 1
  store i8 %285, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %286 = icmp eq i32 %279, 0
  %287 = zext i1 %286 to i8
  store i8 %287, i8* %30, align 1
  %288 = lshr i32 %279, 31
  %289 = trunc i32 %288 to i8
  store i8 %289, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v203 = select i1 %286, i64 9, i64 21
  %290 = add i64 %280, %.v203
  store i64 %290, i64* %3, align 8
  br i1 %286, label %block_43f319, label %block_.L_43f325

block_43f319:                                     ; preds = %block_.L_43f2f6
  %291 = load i64, i64* %RBP.i, align 8
  %292 = add i64 %291, -24
  %293 = add i64 %290, 7
  store i64 %293, i64* %3, align 8
  %294 = inttoptr i64 %292 to i32*
  store i32 101, i32* %294, align 4
  br label %block_.L_43f899

block_.L_43f325:                                  ; preds = %block_.L_43f2f6
  store i64 ptrtoint (%G__0x455d2b_type* @G__0x455d2b to i64), i64* %RSI.i312, align 8
  store i64 7, i64* %RAX.i361, align 8
  store i64 7, i64* %RDX.i329, align 8
  %295 = load i64, i64* %RBP.i, align 8
  %296 = add i64 %295, -16
  %297 = add i64 %290, 21
  store i64 %297, i64* %3, align 8
  %298 = inttoptr i64 %296 to i64*
  %299 = load i64, i64* %298, align 8
  store i64 %299, i64* %RDI.i138, align 8
  %300 = add i64 %290, -253781
  %301 = add i64 %290, 26
  %302 = load i64, i64* %6, align 8
  %303 = add i64 %302, -8
  %304 = inttoptr i64 %303 to i64*
  store i64 %301, i64* %304, align 8
  store i64 %303, i64* %6, align 8
  store i64 %300, i64* %3, align 8
  %305 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %278)
  %306 = load i32, i32* %EAX.i424, align 4
  %307 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %308 = and i32 %306, 255
  %309 = tail call i32 @llvm.ctpop.i32(i32 %308)
  %310 = trunc i32 %309 to i8
  %311 = and i8 %310, 1
  %312 = xor i8 %311, 1
  store i8 %312, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %313 = icmp eq i32 %306, 0
  %314 = zext i1 %313 to i8
  store i8 %314, i8* %30, align 1
  %315 = lshr i32 %306, 31
  %316 = trunc i32 %315 to i8
  store i8 %316, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v204 = select i1 %313, i64 9, i64 50
  %317 = add i64 %307, %.v204
  store i64 %317, i64* %3, align 8
  br i1 %313, label %block_43f348, label %block_.L_43f371

block_43f348:                                     ; preds = %block_.L_43f325
  store i64 ptrtoint (%G__0x455d33_type* @G__0x455d33 to i64), i64* %RSI.i312, align 8
  %318 = load i64, i64* %RBP.i, align 8
  %319 = add i64 %318, -16
  %320 = add i64 %317, 14
  store i64 %320, i64* %3, align 8
  %321 = inttoptr i64 %319 to i64*
  %322 = load i64, i64* %321, align 8
  store i64 %322, i64* %RDI.i138, align 8
  %323 = add i64 %317, -253000
  %324 = add i64 %317, 19
  %325 = load i64, i64* %6, align 8
  %326 = add i64 %325, -8
  %327 = inttoptr i64 %326 to i64*
  store i64 %324, i64* %327, align 8
  store i64 %326, i64* %6, align 8
  store i64 %323, i64* %3, align 8
  %call2_43f356 = tail call %struct.Memory* @sub_401700.strstr_plt(%struct.State* nonnull %0, i64 %323, %struct.Memory* %305)
  %328 = load i64, i64* %RAX.i361, align 8
  %329 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %330 = trunc i64 %328 to i32
  %331 = and i32 %330, 255
  %332 = tail call i32 @llvm.ctpop.i32(i32 %331)
  %333 = trunc i32 %332 to i8
  %334 = and i8 %333, 1
  %335 = xor i8 %334, 1
  store i8 %335, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %336 = icmp eq i64 %328, 0
  %337 = zext i1 %336 to i8
  store i8 %337, i8* %30, align 1
  %338 = lshr i64 %328, 63
  %339 = trunc i64 %338 to i8
  store i8 %339, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v211 = select i1 %336, i64 22, i64 10
  %340 = add i64 %329, %.v211
  store i64 %340, i64* %3, align 8
  br i1 %336, label %block_.L_43f371, label %block_43f365

block_43f365:                                     ; preds = %block_43f348
  %341 = load i64, i64* %RBP.i, align 8
  %342 = add i64 %341, -24
  %343 = add i64 %340, 7
  store i64 %343, i64* %3, align 8
  %344 = inttoptr i64 %342 to i32*
  store i32 104, i32* %344, align 4
  br label %block_.L_43f899

block_.L_43f371:                                  ; preds = %block_.L_43f325, %block_43f348
  %345 = phi i64 [ %317, %block_.L_43f325 ], [ %340, %block_43f348 ]
  %MEMORY.3 = phi %struct.Memory* [ %305, %block_.L_43f325 ], [ %call2_43f356, %block_43f348 ]
  store i64 ptrtoint (%G__0x458ccb_type* @G__0x458ccb to i64), i64* %RSI.i312, align 8
  store i64 23, i64* %RAX.i361, align 8
  store i64 23, i64* %RDX.i329, align 8
  %346 = load i64, i64* %RBP.i, align 8
  %347 = add i64 %346, -16
  %348 = add i64 %345, 21
  store i64 %348, i64* %3, align 8
  %349 = inttoptr i64 %347 to i64*
  %350 = load i64, i64* %349, align 8
  store i64 %350, i64* %RDI.i138, align 8
  %351 = add i64 %345, -253857
  %352 = add i64 %345, 26
  %353 = load i64, i64* %6, align 8
  %354 = add i64 %353, -8
  %355 = inttoptr i64 %354 to i64*
  store i64 %352, i64* %355, align 8
  store i64 %354, i64* %6, align 8
  store i64 %351, i64* %3, align 8
  %356 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %MEMORY.3)
  %357 = load i32, i32* %EAX.i424, align 4
  %358 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %359 = and i32 %357, 255
  %360 = tail call i32 @llvm.ctpop.i32(i32 %359)
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  %363 = xor i8 %362, 1
  store i8 %363, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %364 = icmp eq i32 %357, 0
  %365 = zext i1 %364 to i8
  store i8 %365, i8* %30, align 1
  %366 = lshr i32 %357, 31
  %367 = trunc i32 %366 to i8
  store i8 %367, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v205 = select i1 %364, i64 44, i64 9
  %368 = add i64 %358, %.v205
  store i64 %368, i64* %3, align 8
  br i1 %364, label %block_.L_43f3b7, label %block_43f394

block_43f394:                                     ; preds = %block_.L_43f371
  store i64 ptrtoint (%G__0x458ce3_type* @G__0x458ce3 to i64), i64* %RSI.i312, align 8
  store i64 23, i64* %RAX.i361, align 8
  store i64 23, i64* %RDX.i329, align 8
  %369 = load i64, i64* %RBP.i, align 8
  %370 = add i64 %369, -16
  %371 = add i64 %368, 21
  store i64 %371, i64* %3, align 8
  %372 = inttoptr i64 %370 to i64*
  %373 = load i64, i64* %372, align 8
  store i64 %373, i64* %RDI.i138, align 8
  %374 = add i64 %368, -253892
  %375 = add i64 %368, 26
  %376 = load i64, i64* %6, align 8
  %377 = add i64 %376, -8
  %378 = inttoptr i64 %377 to i64*
  store i64 %375, i64* %378, align 8
  store i64 %377, i64* %6, align 8
  store i64 %374, i64* %3, align 8
  %379 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %356)
  %380 = load i32, i32* %EAX.i424, align 4
  %381 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %382 = and i32 %380, 255
  %383 = tail call i32 @llvm.ctpop.i32(i32 %382)
  %384 = trunc i32 %383 to i8
  %385 = and i8 %384, 1
  %386 = xor i8 %385, 1
  store i8 %386, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %387 = icmp eq i32 %380, 0
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %30, align 1
  %389 = lshr i32 %380, 31
  %390 = trunc i32 %389 to i8
  store i8 %390, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v206 = select i1 %387, i64 9, i64 21
  %391 = add i64 %381, %.v206
  store i64 %391, i64* %3, align 8
  br i1 %387, label %block_.L_43f3b7, label %block_.L_43f3c3

block_.L_43f3b7:                                  ; preds = %block_43f394, %block_.L_43f371
  %392 = phi i64 [ %368, %block_.L_43f371 ], [ %391, %block_43f394 ]
  %MEMORY.4 = phi %struct.Memory* [ %356, %block_.L_43f371 ], [ %379, %block_43f394 ]
  %393 = load i64, i64* %RBP.i, align 8
  %394 = add i64 %393, -24
  %395 = add i64 %392, 7
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %394 to i32*
  store i32 103, i32* %396, align 4
  br label %block_.L_43f899

block_.L_43f3c3:                                  ; preds = %block_43f394
  store i64 4294967295, i64* %RSI.i312, align 8
  %397 = load i64, i64* %RBP.i, align 8
  %398 = add i64 %397, -16
  %399 = add i64 %391, 9
  store i64 %399, i64* %3, align 8
  %400 = inttoptr i64 %398 to i64*
  %401 = load i64, i64* %400, align 8
  store i64 %401, i64* %RDI.i138, align 8
  %402 = add i64 %391, 29533
  %403 = add i64 %391, 14
  %404 = load i64, i64* %6, align 8
  %405 = add i64 %404, -8
  %406 = inttoptr i64 %405 to i64*
  store i64 %403, i64* %406, align 8
  store i64 %405, i64* %6, align 8
  store i64 %402, i64* %3, align 8
  %call2_43f3cc = tail call %struct.Memory* @sub_446720.sre_strdup(%struct.State* nonnull %0, i64 %402, %struct.Memory* %379)
  %407 = load i64, i64* %RBP.i, align 8
  %408 = add i64 %407, -48
  %409 = load i64, i64* %3, align 8
  store i64 %408, i64* %RDI.i138, align 8
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i312, align 8
  store i64 0, i64* %RCX.i654, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RDX.i329, align 8
  %410 = add i64 %407, -40
  %411 = load i64, i64* %RAX.i361, align 8
  %412 = add i64 %409, 22
  store i64 %412, i64* %3, align 8
  %413 = inttoptr i64 %410 to i64*
  store i64 %411, i64* %413, align 8
  %414 = load i64, i64* %RBP.i, align 8
  %415 = add i64 %414, -40
  %416 = load i64, i64* %3, align 8
  %417 = add i64 %416, 4
  store i64 %417, i64* %3, align 8
  %418 = inttoptr i64 %415 to i64*
  %419 = load i64, i64* %418, align 8
  store i64 %419, i64* %RAX.i361, align 8
  %420 = add i64 %414, -48
  %421 = add i64 %416, 8
  store i64 %421, i64* %3, align 8
  %422 = inttoptr i64 %420 to i64*
  store i64 %419, i64* %422, align 8
  %423 = load i64, i64* %3, align 8
  %424 = add i64 %423, 29281
  %425 = add i64 %423, 5
  %426 = load i64, i64* %6, align 8
  %427 = add i64 %426, -8
  %428 = inttoptr i64 %427 to i64*
  store i64 %425, i64* %428, align 8
  store i64 %427, i64* %6, align 8
  store i64 %424, i64* %3, align 8
  %call2_43f3ef = tail call %struct.Memory* @sub_446650.sre_strtok(%struct.State* nonnull %0, i64 %424, %struct.Memory* %call2_43f3cc)
  %429 = load i64, i64* %RBP.i, align 8
  %430 = add i64 %429, -56
  %431 = load i64, i64* %RAX.i361, align 8
  %432 = load i64, i64* %3, align 8
  %433 = add i64 %432, 4
  store i64 %433, i64* %3, align 8
  %434 = inttoptr i64 %430 to i64*
  store i64 %431, i64* %434, align 8
  %435 = load i64, i64* %RAX.i361, align 8
  %436 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %437 = trunc i64 %435 to i32
  %438 = and i32 %437, 255
  %439 = tail call i32 @llvm.ctpop.i32(i32 %438)
  %440 = trunc i32 %439 to i8
  %441 = and i8 %440, 1
  %442 = xor i8 %441, 1
  store i8 %442, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %443 = icmp eq i64 %435, 0
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %30, align 1
  %445 = lshr i64 %435, 63
  %446 = trunc i64 %445 to i8
  store i8 %446, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v207 = select i1 %443, i64 104, i64 10
  %447 = add i64 %436, %.v207
  store i64 %447, i64* %3, align 8
  br i1 %443, label %block_.L_43f460, label %block_43f402

block_43f402:                                     ; preds = %block_.L_43f3c3
  %448 = load i64, i64* %RBP.i, align 8
  %449 = add i64 %448, -48
  store i64 %449, i64* %RDI.i138, align 8
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i312, align 8
  store i64 0, i64* %RAX.i361, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RDX.i329, align 8
  %450 = add i64 %447, 29262
  %451 = add i64 %447, 23
  %452 = load i64, i64* %6, align 8
  %453 = add i64 %452, -8
  %454 = inttoptr i64 %453 to i64*
  store i64 %451, i64* %454, align 8
  store i64 %453, i64* %6, align 8
  store i64 %450, i64* %3, align 8
  %call2_43f414 = tail call %struct.Memory* @sub_446650.sre_strtok(%struct.State* nonnull %0, i64 %450, %struct.Memory* %call2_43f3ef)
  %455 = load i64, i64* %RBP.i, align 8
  %456 = add i64 %455, -64
  %457 = load i64, i64* %RAX.i361, align 8
  %458 = load i64, i64* %3, align 8
  %459 = add i64 %458, 4
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %456 to i64*
  store i64 %457, i64* %460, align 8
  %461 = load i64, i64* %RAX.i361, align 8
  %462 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %463 = trunc i64 %461 to i32
  %464 = and i32 %463, 255
  %465 = tail call i32 @llvm.ctpop.i32(i32 %464)
  %466 = trunc i32 %465 to i8
  %467 = and i8 %466, 1
  %468 = xor i8 %467, 1
  store i8 %468, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %469 = icmp eq i64 %461, 0
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %30, align 1
  %471 = lshr i64 %461, 63
  %472 = trunc i64 %471 to i8
  store i8 %472, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v208 = select i1 %469, i64 67, i64 10
  %473 = add i64 %462, %.v208
  store i64 %473, i64* %3, align 8
  br i1 %469, label %block_.L_43f460, label %block_43f427

block_43f427:                                     ; preds = %block_43f402
  %474 = load i64, i64* %RBP.i, align 8
  %475 = add i64 %474, -56
  %476 = add i64 %473, 4
  store i64 %476, i64* %3, align 8
  %477 = inttoptr i64 %475 to i64*
  %478 = load i64, i64* %477, align 8
  store i64 %478, i64* %RDI.i138, align 8
  %479 = add i64 %473, 73289
  %480 = add i64 %473, 9
  %481 = load i64, i64* %6, align 8
  %482 = add i64 %481, -8
  %483 = inttoptr i64 %482 to i64*
  store i64 %480, i64* %483, align 8
  store i64 %482, i64* %6, align 8
  store i64 %479, i64* %3, align 8
  %call2_43f42b = tail call %struct.Memory* @sub_451270.IsInt(%struct.State* nonnull %0, i64 %479, %struct.Memory* %call2_43f414)
  %484 = load i32, i32* %EAX.i424, align 4
  %485 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %486 = and i32 %484, 255
  %487 = tail call i32 @llvm.ctpop.i32(i32 %486)
  %488 = trunc i32 %487 to i8
  %489 = and i8 %488, 1
  %490 = xor i8 %489, 1
  store i8 %490, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %491 = icmp eq i32 %484, 0
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %30, align 1
  %493 = lshr i32 %484, 31
  %494 = trunc i32 %493 to i8
  store i8 %494, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v209 = select i1 %491, i64 48, i64 9
  %495 = add i64 %485, %.v209
  store i64 %495, i64* %3, align 8
  br i1 %491, label %block_.L_43f460, label %block_43f439

block_43f439:                                     ; preds = %block_43f427
  %496 = load i64, i64* %RBP.i, align 8
  %497 = add i64 %496, -64
  %498 = add i64 %495, 4
  store i64 %498, i64* %3, align 8
  %499 = inttoptr i64 %497 to i64*
  %500 = load i64, i64* %499, align 8
  store i64 %500, i64* %RDI.i138, align 8
  %501 = add i64 %495, 73271
  %502 = add i64 %495, 9
  %503 = load i64, i64* %6, align 8
  %504 = add i64 %503, -8
  %505 = inttoptr i64 %504 to i64*
  store i64 %502, i64* %505, align 8
  store i64 %504, i64* %6, align 8
  store i64 %501, i64* %3, align 8
  %call2_43f43d = tail call %struct.Memory* @sub_451270.IsInt(%struct.State* nonnull %0, i64 %501, %struct.Memory* %call2_43f42b)
  %506 = load i32, i32* %EAX.i424, align 4
  %507 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %508 = and i32 %506, 255
  %509 = tail call i32 @llvm.ctpop.i32(i32 %508)
  %510 = trunc i32 %509 to i8
  %511 = and i8 %510, 1
  %512 = xor i8 %511, 1
  store i8 %512, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %513 = icmp eq i32 %506, 0
  %514 = zext i1 %513 to i8
  store i8 %514, i8* %30, align 1
  %515 = lshr i32 %506, 31
  %516 = trunc i32 %515 to i8
  store i8 %516, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v210 = select i1 %513, i64 30, i64 9
  %517 = add i64 %507, %.v210
  store i64 %517, i64* %3, align 8
  br i1 %513, label %block_.L_43f460, label %block_43f44b

block_43f44b:                                     ; preds = %block_43f439
  %518 = load i64, i64* %RBP.i, align 8
  %519 = add i64 %518, -40
  %520 = add i64 %517, 4
  store i64 %520, i64* %3, align 8
  %521 = inttoptr i64 %519 to i64*
  %522 = load i64, i64* %521, align 8
  store i64 %522, i64* %RDI.i138, align 8
  %523 = add i64 %517, -254155
  %524 = add i64 %517, 9
  %525 = load i64, i64* %6, align 8
  %526 = add i64 %525, -8
  %527 = inttoptr i64 %526 to i64*
  store i64 %524, i64* %527, align 8
  store i64 %526, i64* %6, align 8
  store i64 %523, i64* %3, align 8
  %528 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %call2_43f43d)
  %529 = load i64, i64* %RBP.i, align 8
  %530 = add i64 %529, -24
  %531 = load i64, i64* %3, align 8
  %532 = add i64 %531, 7
  store i64 %532, i64* %3, align 8
  %533 = inttoptr i64 %530 to i32*
  store i32 106, i32* %533, align 4
  br label %block_.L_43f899

block_.L_43f460:                                  ; preds = %block_43f439, %block_43f427, %block_43f402, %block_.L_43f3c3
  %534 = phi i64 [ %447, %block_.L_43f3c3 ], [ %473, %block_43f402 ], [ %495, %block_43f427 ], [ %517, %block_43f439 ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_43f3ef, %block_.L_43f3c3 ], [ %call2_43f414, %block_43f402 ], [ %call2_43f42b, %block_43f427 ], [ %call2_43f43d, %block_43f439 ]
  %535 = load i64, i64* %RBP.i, align 8
  %536 = add i64 %535, -40
  %537 = add i64 %534, 4
  store i64 %537, i64* %3, align 8
  %538 = inttoptr i64 %536 to i64*
  %539 = load i64, i64* %538, align 8
  store i64 %539, i64* %RDI.i138, align 8
  %540 = add i64 %534, -254176
  %541 = add i64 %534, 9
  %542 = load i64, i64* %6, align 8
  %543 = add i64 %542, -8
  %544 = inttoptr i64 %543 to i64*
  store i64 %541, i64* %544, align 8
  store i64 %543, i64* %6, align 8
  store i64 %540, i64* %3, align 8
  %545 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %MEMORY.5)
  %.pre157 = load i64, i64* %3, align 8
  %.pre158 = load i64, i64* %RBP.i, align 8
  br label %block_.L_43f469

block_.L_43f469:                                  ; preds = %block_.L_43f232, %block_.L_43f460
  %546 = phi i64 [ %118, %block_.L_43f232 ], [ %.pre158, %block_.L_43f460 ]
  %547 = phi i64 [ %132, %block_.L_43f232 ], [ %.pre157, %block_.L_43f460 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.0, %block_.L_43f232 ], [ %545, %block_.L_43f460 ]
  store i64 ptrtoint (%G__0x459a08_type* @G__0x459a08 to i64), i64* %RSI.i312, align 8
  store i64 4, i64* %RAX.i361, align 8
  store i64 4, i64* %RDX.i329, align 8
  %548 = add i64 %546, -16
  %549 = add i64 %547, 21
  store i64 %549, i64* %3, align 8
  %550 = inttoptr i64 %548 to i64*
  %551 = load i64, i64* %550, align 8
  store i64 %551, i64* %RDI.i138, align 8
  %552 = add i64 %547, -254105
  %553 = add i64 %547, 26
  %554 = load i64, i64* %6, align 8
  %555 = add i64 %554, -8
  %556 = inttoptr i64 %555 to i64*
  store i64 %553, i64* %556, align 8
  store i64 %555, i64* %6, align 8
  store i64 %552, i64* %3, align 8
  %557 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %MEMORY.6)
  %558 = load i32, i32* %EAX.i424, align 4
  %559 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %560 = and i32 %558, 255
  %561 = tail call i32 @llvm.ctpop.i32(i32 %560)
  %562 = trunc i32 %561 to i8
  %563 = and i8 %562, 1
  %564 = xor i8 %563, 1
  store i8 %564, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %565 = icmp eq i32 %558, 0
  %566 = zext i1 %565 to i8
  store i8 %566, i8* %30, align 1
  %567 = lshr i32 %558, 31
  %568 = trunc i32 %567 to i8
  store i8 %568, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v169 = select i1 %565, i64 359, i64 9
  %569 = add i64 %559, %.v169
  store i64 %569, i64* %3, align 8
  br i1 %565, label %block_.L_43f5ea, label %block_43f48c

block_43f48c:                                     ; preds = %block_.L_43f469
  store i64 ptrtoint (%G__0x459a0d_type* @G__0x459a0d to i64), i64* %RSI.i312, align 8
  store i64 4, i64* %RAX.i361, align 8
  store i64 4, i64* %RDX.i329, align 8
  %570 = load i64, i64* %RBP.i, align 8
  %571 = add i64 %570, -16
  %572 = add i64 %569, 21
  store i64 %572, i64* %3, align 8
  %573 = inttoptr i64 %571 to i64*
  %574 = load i64, i64* %573, align 8
  store i64 %574, i64* %RDI.i138, align 8
  %575 = add i64 %569, -254140
  %576 = add i64 %569, 26
  %577 = load i64, i64* %6, align 8
  %578 = add i64 %577, -8
  %579 = inttoptr i64 %578 to i64*
  store i64 %576, i64* %579, align 8
  store i64 %578, i64* %6, align 8
  store i64 %575, i64* %3, align 8
  %580 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %557)
  %581 = load i32, i32* %EAX.i424, align 4
  %582 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %583 = and i32 %581, 255
  %584 = tail call i32 @llvm.ctpop.i32(i32 %583)
  %585 = trunc i32 %584 to i8
  %586 = and i8 %585, 1
  %587 = xor i8 %586, 1
  store i8 %587, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %588 = icmp eq i32 %581, 0
  %589 = zext i1 %588 to i8
  store i8 %589, i8* %30, align 1
  %590 = lshr i32 %581, 31
  %591 = trunc i32 %590 to i8
  store i8 %591, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v170 = select i1 %588, i64 324, i64 9
  %592 = add i64 %582, %.v170
  store i64 %592, i64* %3, align 8
  br i1 %588, label %block_.L_43f5ea, label %block_43f4af

block_43f4af:                                     ; preds = %block_43f48c
  store i64 ptrtoint (%G__0x459a12_type* @G__0x459a12 to i64), i64* %RSI.i312, align 8
  store i64 4, i64* %RAX.i361, align 8
  store i64 4, i64* %RDX.i329, align 8
  %593 = load i64, i64* %RBP.i, align 8
  %594 = add i64 %593, -16
  %595 = add i64 %592, 21
  store i64 %595, i64* %3, align 8
  %596 = inttoptr i64 %594 to i64*
  %597 = load i64, i64* %596, align 8
  store i64 %597, i64* %RDI.i138, align 8
  %598 = add i64 %592, -254175
  %599 = add i64 %592, 26
  %600 = load i64, i64* %6, align 8
  %601 = add i64 %600, -8
  %602 = inttoptr i64 %601 to i64*
  store i64 %599, i64* %602, align 8
  store i64 %601, i64* %6, align 8
  store i64 %598, i64* %3, align 8
  %603 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %580)
  %604 = load i32, i32* %EAX.i424, align 4
  %605 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %606 = and i32 %604, 255
  %607 = tail call i32 @llvm.ctpop.i32(i32 %606)
  %608 = trunc i32 %607 to i8
  %609 = and i8 %608, 1
  %610 = xor i8 %609, 1
  store i8 %610, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %611 = icmp eq i32 %604, 0
  %612 = zext i1 %611 to i8
  store i8 %612, i8* %30, align 1
  %613 = lshr i32 %604, 31
  %614 = trunc i32 %613 to i8
  store i8 %614, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v171 = select i1 %611, i64 289, i64 9
  %615 = add i64 %605, %.v171
  store i64 %615, i64* %3, align 8
  br i1 %611, label %block_.L_43f5ea, label %block_43f4d2

block_43f4d2:                                     ; preds = %block_43f4af
  store i64 ptrtoint (%G__0x459a17_type* @G__0x459a17 to i64), i64* %RSI.i312, align 8
  store i64 4, i64* %RAX.i361, align 8
  store i64 4, i64* %RDX.i329, align 8
  %616 = load i64, i64* %RBP.i, align 8
  %617 = add i64 %616, -16
  %618 = add i64 %615, 21
  store i64 %618, i64* %3, align 8
  %619 = inttoptr i64 %617 to i64*
  %620 = load i64, i64* %619, align 8
  store i64 %620, i64* %RDI.i138, align 8
  %621 = add i64 %615, -254210
  %622 = add i64 %615, 26
  %623 = load i64, i64* %6, align 8
  %624 = add i64 %623, -8
  %625 = inttoptr i64 %624 to i64*
  store i64 %622, i64* %625, align 8
  store i64 %624, i64* %6, align 8
  store i64 %621, i64* %3, align 8
  %626 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %603)
  %627 = load i32, i32* %EAX.i424, align 4
  %628 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %629 = and i32 %627, 255
  %630 = tail call i32 @llvm.ctpop.i32(i32 %629)
  %631 = trunc i32 %630 to i8
  %632 = and i8 %631, 1
  %633 = xor i8 %632, 1
  store i8 %633, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %634 = icmp eq i32 %627, 0
  %635 = zext i1 %634 to i8
  store i8 %635, i8* %30, align 1
  %636 = lshr i32 %627, 31
  %637 = trunc i32 %636 to i8
  store i8 %637, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v172 = select i1 %634, i64 254, i64 9
  %638 = add i64 %628, %.v172
  store i64 %638, i64* %3, align 8
  br i1 %634, label %block_.L_43f5ea, label %block_43f4f5

block_43f4f5:                                     ; preds = %block_43f4d2
  store i64 ptrtoint (%G__0x459a1c_type* @G__0x459a1c to i64), i64* %RSI.i312, align 8
  store i64 4, i64* %RAX.i361, align 8
  store i64 4, i64* %RDX.i329, align 8
  %639 = load i64, i64* %RBP.i, align 8
  %640 = add i64 %639, -16
  %641 = add i64 %638, 21
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %640 to i64*
  %643 = load i64, i64* %642, align 8
  store i64 %643, i64* %RDI.i138, align 8
  %644 = add i64 %638, -254245
  %645 = add i64 %638, 26
  %646 = load i64, i64* %6, align 8
  %647 = add i64 %646, -8
  %648 = inttoptr i64 %647 to i64*
  store i64 %645, i64* %648, align 8
  store i64 %647, i64* %6, align 8
  store i64 %644, i64* %3, align 8
  %649 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %626)
  %650 = load i32, i32* %EAX.i424, align 4
  %651 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %652 = and i32 %650, 255
  %653 = tail call i32 @llvm.ctpop.i32(i32 %652)
  %654 = trunc i32 %653 to i8
  %655 = and i8 %654, 1
  %656 = xor i8 %655, 1
  store i8 %656, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %657 = icmp eq i32 %650, 0
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %30, align 1
  %659 = lshr i32 %650, 31
  %660 = trunc i32 %659 to i8
  store i8 %660, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v173 = select i1 %657, i64 219, i64 9
  %661 = add i64 %651, %.v173
  store i64 %661, i64* %3, align 8
  br i1 %657, label %block_.L_43f5ea, label %block_43f518

block_43f518:                                     ; preds = %block_43f4f5
  store i64 ptrtoint (%G__0x459a49_type* @G__0x459a49 to i64), i64* %RSI.i312, align 8
  store i64 4, i64* %RAX.i361, align 8
  store i64 4, i64* %RDX.i329, align 8
  %662 = load i64, i64* %RBP.i, align 8
  %663 = add i64 %662, -16
  %664 = add i64 %661, 21
  store i64 %664, i64* %3, align 8
  %665 = inttoptr i64 %663 to i64*
  %666 = load i64, i64* %665, align 8
  store i64 %666, i64* %RDI.i138, align 8
  %667 = add i64 %661, -254280
  %668 = add i64 %661, 26
  %669 = load i64, i64* %6, align 8
  %670 = add i64 %669, -8
  %671 = inttoptr i64 %670 to i64*
  store i64 %668, i64* %671, align 8
  store i64 %670, i64* %6, align 8
  store i64 %667, i64* %3, align 8
  %672 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %649)
  %673 = load i32, i32* %EAX.i424, align 4
  %674 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %675 = and i32 %673, 255
  %676 = tail call i32 @llvm.ctpop.i32(i32 %675)
  %677 = trunc i32 %676 to i8
  %678 = and i8 %677, 1
  %679 = xor i8 %678, 1
  store i8 %679, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %680 = icmp eq i32 %673, 0
  %681 = zext i1 %680 to i8
  store i8 %681, i8* %30, align 1
  %682 = lshr i32 %673, 31
  %683 = trunc i32 %682 to i8
  store i8 %683, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v174 = select i1 %680, i64 184, i64 9
  %684 = add i64 %674, %.v174
  store i64 %684, i64* %3, align 8
  br i1 %680, label %block_.L_43f5ea, label %block_43f53b

block_43f53b:                                     ; preds = %block_43f518
  store i64 ptrtoint (%G__0x459a76_type* @G__0x459a76 to i64), i64* %RSI.i312, align 8
  store i64 4, i64* %RAX.i361, align 8
  store i64 4, i64* %RDX.i329, align 8
  %685 = load i64, i64* %RBP.i, align 8
  %686 = add i64 %685, -16
  %687 = add i64 %684, 21
  store i64 %687, i64* %3, align 8
  %688 = inttoptr i64 %686 to i64*
  %689 = load i64, i64* %688, align 8
  store i64 %689, i64* %RDI.i138, align 8
  %690 = add i64 %684, -254315
  %691 = add i64 %684, 26
  %692 = load i64, i64* %6, align 8
  %693 = add i64 %692, -8
  %694 = inttoptr i64 %693 to i64*
  store i64 %691, i64* %694, align 8
  store i64 %693, i64* %6, align 8
  store i64 %690, i64* %3, align 8
  %695 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %672)
  %696 = load i32, i32* %EAX.i424, align 4
  %697 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %698 = and i32 %696, 255
  %699 = tail call i32 @llvm.ctpop.i32(i32 %698)
  %700 = trunc i32 %699 to i8
  %701 = and i8 %700, 1
  %702 = xor i8 %701, 1
  store i8 %702, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %703 = icmp eq i32 %696, 0
  %704 = zext i1 %703 to i8
  store i8 %704, i8* %30, align 1
  %705 = lshr i32 %696, 31
  %706 = trunc i32 %705 to i8
  store i8 %706, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v175 = select i1 %703, i64 149, i64 9
  %707 = add i64 %697, %.v175
  store i64 %707, i64* %3, align 8
  br i1 %703, label %block_.L_43f5ea, label %block_43f55e

block_43f55e:                                     ; preds = %block_43f53b
  store i64 ptrtoint (%G__0x459aa3_type* @G__0x459aa3 to i64), i64* %RSI.i312, align 8
  store i64 4, i64* %RAX.i361, align 8
  store i64 4, i64* %RDX.i329, align 8
  %708 = load i64, i64* %RBP.i, align 8
  %709 = add i64 %708, -16
  %710 = add i64 %707, 21
  store i64 %710, i64* %3, align 8
  %711 = inttoptr i64 %709 to i64*
  %712 = load i64, i64* %711, align 8
  store i64 %712, i64* %RDI.i138, align 8
  %713 = add i64 %707, -254350
  %714 = add i64 %707, 26
  %715 = load i64, i64* %6, align 8
  %716 = add i64 %715, -8
  %717 = inttoptr i64 %716 to i64*
  store i64 %714, i64* %717, align 8
  store i64 %716, i64* %6, align 8
  store i64 %713, i64* %3, align 8
  %718 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %695)
  %719 = load i32, i32* %EAX.i424, align 4
  %720 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %721 = and i32 %719, 255
  %722 = tail call i32 @llvm.ctpop.i32(i32 %721)
  %723 = trunc i32 %722 to i8
  %724 = and i8 %723, 1
  %725 = xor i8 %724, 1
  store i8 %725, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %726 = icmp eq i32 %719, 0
  %727 = zext i1 %726 to i8
  store i8 %727, i8* %30, align 1
  %728 = lshr i32 %719, 31
  %729 = trunc i32 %728 to i8
  store i8 %729, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v176 = select i1 %726, i64 114, i64 9
  %730 = add i64 %720, %.v176
  store i64 %730, i64* %3, align 8
  br i1 %726, label %block_.L_43f5ea, label %block_43f581

block_43f581:                                     ; preds = %block_43f55e
  store i64 ptrtoint (%G__0x4599e3_type* @G__0x4599e3 to i64), i64* %RSI.i312, align 8
  store i64 4, i64* %RAX.i361, align 8
  store i64 4, i64* %RDX.i329, align 8
  %731 = load i64, i64* %RBP.i, align 8
  %732 = add i64 %731, -16
  %733 = add i64 %730, 21
  store i64 %733, i64* %3, align 8
  %734 = inttoptr i64 %732 to i64*
  %735 = load i64, i64* %734, align 8
  store i64 %735, i64* %RDI.i138, align 8
  %736 = add i64 %730, -254385
  %737 = add i64 %730, 26
  %738 = load i64, i64* %6, align 8
  %739 = add i64 %738, -8
  %740 = inttoptr i64 %739 to i64*
  store i64 %737, i64* %740, align 8
  store i64 %739, i64* %6, align 8
  store i64 %736, i64* %3, align 8
  %741 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %718)
  %742 = load i32, i32* %EAX.i424, align 4
  %743 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %744 = and i32 %742, 255
  %745 = tail call i32 @llvm.ctpop.i32(i32 %744)
  %746 = trunc i32 %745 to i8
  %747 = and i8 %746, 1
  %748 = xor i8 %747, 1
  store i8 %748, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %749 = icmp eq i32 %742, 0
  %750 = zext i1 %749 to i8
  store i8 %750, i8* %30, align 1
  %751 = lshr i32 %742, 31
  %752 = trunc i32 %751 to i8
  store i8 %752, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v177 = select i1 %749, i64 79, i64 9
  %753 = add i64 %743, %.v177
  store i64 %753, i64* %3, align 8
  br i1 %749, label %block_.L_43f5ea, label %block_43f5a4

block_43f5a4:                                     ; preds = %block_43f581
  store i64 ptrtoint (%G__0x45992c_type* @G__0x45992c to i64), i64* %RSI.i312, align 8
  store i64 4, i64* %RAX.i361, align 8
  store i64 4, i64* %RDX.i329, align 8
  %754 = load i64, i64* %RBP.i, align 8
  %755 = add i64 %754, -16
  %756 = add i64 %753, 21
  store i64 %756, i64* %3, align 8
  %757 = inttoptr i64 %755 to i64*
  %758 = load i64, i64* %757, align 8
  store i64 %758, i64* %RDI.i138, align 8
  %759 = add i64 %753, -254420
  %760 = add i64 %753, 26
  %761 = load i64, i64* %6, align 8
  %762 = add i64 %761, -8
  %763 = inttoptr i64 %762 to i64*
  store i64 %760, i64* %763, align 8
  store i64 %762, i64* %6, align 8
  store i64 %759, i64* %3, align 8
  %764 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %741)
  %765 = load i32, i32* %EAX.i424, align 4
  %766 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %767 = and i32 %765, 255
  %768 = tail call i32 @llvm.ctpop.i32(i32 %767)
  %769 = trunc i32 %768 to i8
  %770 = and i8 %769, 1
  %771 = xor i8 %770, 1
  store i8 %771, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %772 = icmp eq i32 %765, 0
  %773 = zext i1 %772 to i8
  store i8 %773, i8* %30, align 1
  %774 = lshr i32 %765, 31
  %775 = trunc i32 %774 to i8
  store i8 %775, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v178 = select i1 %772, i64 44, i64 9
  %776 = add i64 %766, %.v178
  store i64 %776, i64* %3, align 8
  br i1 %772, label %block_.L_43f5ea, label %block_43f5c7

block_43f5c7:                                     ; preds = %block_43f5a4
  store i64 ptrtoint (%G__0x459931_type* @G__0x459931 to i64), i64* %RSI.i312, align 8
  store i64 4, i64* %RAX.i361, align 8
  store i64 4, i64* %RDX.i329, align 8
  %777 = load i64, i64* %RBP.i, align 8
  %778 = add i64 %777, -16
  %779 = add i64 %776, 21
  store i64 %779, i64* %3, align 8
  %780 = inttoptr i64 %778 to i64*
  %781 = load i64, i64* %780, align 8
  store i64 %781, i64* %RDI.i138, align 8
  %782 = add i64 %776, -254455
  %783 = add i64 %776, 26
  %784 = load i64, i64* %6, align 8
  %785 = add i64 %784, -8
  %786 = inttoptr i64 %785 to i64*
  store i64 %783, i64* %786, align 8
  store i64 %785, i64* %6, align 8
  store i64 %782, i64* %3, align 8
  %787 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %764)
  %788 = load i32, i32* %EAX.i424, align 4
  %789 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %790 = and i32 %788, 255
  %791 = tail call i32 @llvm.ctpop.i32(i32 %790)
  %792 = trunc i32 %791 to i8
  %793 = and i8 %792, 1
  %794 = xor i8 %793, 1
  store i8 %794, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %795 = icmp eq i32 %788, 0
  %796 = zext i1 %795 to i8
  store i8 %796, i8* %30, align 1
  %797 = lshr i32 %788, 31
  %798 = trunc i32 %797 to i8
  store i8 %798, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v179 = select i1 %795, i64 9, i64 21
  %799 = add i64 %789, %.v179
  store i64 %799, i64* %3, align 8
  br i1 %795, label %block_.L_43f5ea, label %block_.L_43f5f6

block_.L_43f5ea:                                  ; preds = %block_43f5c7, %block_43f5a4, %block_43f581, %block_43f55e, %block_43f53b, %block_43f518, %block_43f4f5, %block_43f4d2, %block_43f4af, %block_43f48c, %block_.L_43f469
  %800 = phi i64 [ %569, %block_.L_43f469 ], [ %592, %block_43f48c ], [ %615, %block_43f4af ], [ %638, %block_43f4d2 ], [ %661, %block_43f4f5 ], [ %684, %block_43f518 ], [ %707, %block_43f53b ], [ %730, %block_43f55e ], [ %753, %block_43f581 ], [ %776, %block_43f5a4 ], [ %799, %block_43f5c7 ]
  %MEMORY.7 = phi %struct.Memory* [ %557, %block_.L_43f469 ], [ %580, %block_43f48c ], [ %603, %block_43f4af ], [ %626, %block_43f4d2 ], [ %649, %block_43f4f5 ], [ %672, %block_43f518 ], [ %695, %block_43f53b ], [ %718, %block_43f55e ], [ %741, %block_43f581 ], [ %764, %block_43f5a4 ], [ %787, %block_43f5c7 ]
  %801 = load i64, i64* %RBP.i, align 8
  %802 = add i64 %801, -24
  %803 = add i64 %800, 7
  store i64 %803, i64* %3, align 8
  %804 = inttoptr i64 %802 to i32*
  store i32 102, i32* %804, align 4
  br label %block_.L_43f899

block_.L_43f5f6:                                  ; preds = %block_43f5c7
  store i64 ptrtoint (%G__0x45a46f_type* @G__0x45a46f to i64), i64* %RSI.i312, align 8
  store i64 3, i64* %RAX.i361, align 8
  store i64 3, i64* %RDX.i329, align 8
  %805 = load i64, i64* %RBP.i, align 8
  %806 = add i64 %805, -16
  %807 = add i64 %799, 21
  store i64 %807, i64* %3, align 8
  %808 = inttoptr i64 %806 to i64*
  %809 = load i64, i64* %808, align 8
  store i64 %809, i64* %RDI.i138, align 8
  %810 = add i64 %799, -254502
  %811 = add i64 %799, 26
  %812 = load i64, i64* %6, align 8
  %813 = add i64 %812, -8
  %814 = inttoptr i64 %813 to i64*
  store i64 %811, i64* %814, align 8
  store i64 %813, i64* %6, align 8
  store i64 %810, i64* %3, align 8
  %815 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %787)
  %816 = load i32, i32* %EAX.i424, align 4
  %817 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %818 = and i32 %816, 255
  %819 = tail call i32 @llvm.ctpop.i32(i32 %818)
  %820 = trunc i32 %819 to i8
  %821 = and i8 %820, 1
  %822 = xor i8 %821, 1
  store i8 %822, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %823 = icmp eq i32 %816, 0
  %824 = zext i1 %823 to i8
  store i8 %824, i8* %30, align 1
  %825 = lshr i32 %816, 31
  %826 = trunc i32 %825 to i8
  store i8 %826, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v180 = select i1 %823, i64 44, i64 9
  %827 = add i64 %817, %.v180
  store i64 %827, i64* %3, align 8
  br i1 %823, label %block_.L_43f63c, label %block_43f619

block_43f619:                                     ; preds = %block_.L_43f5f6
  store i64 ptrtoint (%G__0x459fd9_type* @G__0x459fd9 to i64), i64* %RSI.i312, align 8
  store i64 6, i64* %RAX.i361, align 8
  store i64 6, i64* %RDX.i329, align 8
  %828 = load i64, i64* %RBP.i, align 8
  %829 = add i64 %828, -16
  %830 = add i64 %827, 21
  store i64 %830, i64* %3, align 8
  %831 = inttoptr i64 %829 to i64*
  %832 = load i64, i64* %831, align 8
  store i64 %832, i64* %RDI.i138, align 8
  %833 = add i64 %827, -254537
  %834 = add i64 %827, 26
  %835 = load i64, i64* %6, align 8
  %836 = add i64 %835, -8
  %837 = inttoptr i64 %836 to i64*
  store i64 %834, i64* %837, align 8
  store i64 %836, i64* %6, align 8
  store i64 %833, i64* %3, align 8
  %838 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %815)
  %839 = load i32, i32* %EAX.i424, align 4
  %840 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %841 = and i32 %839, 255
  %842 = tail call i32 @llvm.ctpop.i32(i32 %841)
  %843 = trunc i32 %842 to i8
  %844 = and i8 %843, 1
  %845 = xor i8 %844, 1
  store i8 %845, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %846 = icmp eq i32 %839, 0
  %847 = zext i1 %846 to i8
  store i8 %847, i8* %30, align 1
  %848 = lshr i32 %839, 31
  %849 = trunc i32 %848 to i8
  store i8 %849, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v181 = select i1 %846, i64 9, i64 21
  %850 = add i64 %840, %.v181
  store i64 %850, i64* %3, align 8
  br i1 %846, label %block_.L_43f63c, label %block_.L_43f648

block_.L_43f63c:                                  ; preds = %block_43f619, %block_.L_43f5f6
  %851 = phi i64 [ %827, %block_.L_43f5f6 ], [ %850, %block_43f619 ]
  %MEMORY.8 = phi %struct.Memory* [ %815, %block_.L_43f5f6 ], [ %838, %block_43f619 ]
  %852 = load i64, i64* %RBP.i, align 8
  %853 = add i64 %852, -24
  %854 = add i64 %851, 7
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %853 to i32*
  store i32 12, i32* %855, align 4
  br label %block_.L_43f899

block_.L_43f648:                                  ; preds = %block_43f619
  store i64 ptrtoint (%G__0x458cfb_type* @G__0x458cfb to i64), i64* %RSI.i312, align 8
  %856 = load i64, i64* %RBP.i, align 8
  %857 = add i64 %856, -16
  %858 = add i64 %850, 14
  store i64 %858, i64* %3, align 8
  %859 = inttoptr i64 %857 to i64*
  %860 = load i64, i64* %859, align 8
  store i64 %860, i64* %RDI.i138, align 8
  %861 = add i64 %850, -253768
  %862 = add i64 %850, 19
  %863 = load i64, i64* %6, align 8
  %864 = add i64 %863, -8
  %865 = inttoptr i64 %864 to i64*
  store i64 %862, i64* %865, align 8
  store i64 %864, i64* %6, align 8
  store i64 %861, i64* %3, align 8
  %call2_43f656 = tail call %struct.Memory* @sub_401700.strstr_plt(%struct.State* nonnull %0, i64 %861, %struct.Memory* %838)
  %866 = load i64, i64* %RAX.i361, align 8
  %867 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %868 = trunc i64 %866 to i32
  %869 = and i32 %868, 255
  %870 = tail call i32 @llvm.ctpop.i32(i32 %869)
  %871 = trunc i32 %870 to i8
  %872 = and i8 %871, 1
  %873 = xor i8 %872, 1
  store i8 %873, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %874 = icmp eq i64 %866, 0
  %875 = zext i1 %874 to i8
  store i8 %875, i8* %30, align 1
  %876 = lshr i64 %866, 63
  %877 = trunc i64 %876 to i8
  store i8 %877, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v182 = select i1 %874, i64 80, i64 10
  %878 = add i64 %867, %.v182
  store i64 %878, i64* %3, align 8
  br i1 %874, label %block_.L_43f6ab, label %block_43f665

block_43f665:                                     ; preds = %block_.L_43f648
  store i64 ptrtoint (%G__0x458cfe_type* @G__0x458cfe to i64), i64* %RSI.i312, align 8
  %879 = load i64, i64* %RBP.i, align 8
  %880 = add i64 %879, -16
  %881 = add i64 %878, 14
  store i64 %881, i64* %3, align 8
  %882 = inttoptr i64 %880 to i64*
  %883 = load i64, i64* %882, align 8
  store i64 %883, i64* %RDI.i138, align 8
  %884 = add i64 %878, -253797
  %885 = add i64 %878, 19
  %886 = load i64, i64* %6, align 8
  %887 = add i64 %886, -8
  %888 = inttoptr i64 %887 to i64*
  store i64 %885, i64* %888, align 8
  store i64 %887, i64* %6, align 8
  store i64 %884, i64* %3, align 8
  %call2_43f673 = tail call %struct.Memory* @sub_401700.strstr_plt(%struct.State* nonnull %0, i64 %884, %struct.Memory* %call2_43f656)
  %889 = load i64, i64* %RAX.i361, align 8
  %890 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %891 = trunc i64 %889 to i32
  %892 = and i32 %891, 255
  %893 = tail call i32 @llvm.ctpop.i32(i32 %892)
  %894 = trunc i32 %893 to i8
  %895 = and i8 %894, 1
  %896 = xor i8 %895, 1
  store i8 %896, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %897 = icmp eq i64 %889, 0
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %30, align 1
  %899 = lshr i64 %889, 63
  %900 = trunc i64 %899 to i8
  store i8 %900, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v183 = select i1 %897, i64 51, i64 10
  %901 = add i64 %890, %.v183
  store i64 %901, i64* %3, align 8
  br i1 %897, label %block_.L_43f6ab, label %block_43f682

block_43f682:                                     ; preds = %block_43f665
  store i64 ptrtoint (%G__0x459fe0_type* @G__0x459fe0 to i64), i64* %RSI.i312, align 8
  %902 = load i64, i64* %RBP.i, align 8
  %903 = add i64 %902, -16
  %904 = add i64 %901, 14
  store i64 %904, i64* %3, align 8
  %905 = inttoptr i64 %903 to i64*
  %906 = load i64, i64* %905, align 8
  store i64 %906, i64* %RDI.i138, align 8
  %907 = add i64 %901, -253826
  %908 = add i64 %901, 19
  %909 = load i64, i64* %6, align 8
  %910 = add i64 %909, -8
  %911 = inttoptr i64 %910 to i64*
  store i64 %908, i64* %911, align 8
  store i64 %910, i64* %6, align 8
  store i64 %907, i64* %3, align 8
  %call2_43f690 = tail call %struct.Memory* @sub_401700.strstr_plt(%struct.State* nonnull %0, i64 %907, %struct.Memory* %call2_43f673)
  %912 = load i64, i64* %RAX.i361, align 8
  %913 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %914 = trunc i64 %912 to i32
  %915 = and i32 %914, 255
  %916 = tail call i32 @llvm.ctpop.i32(i32 %915)
  %917 = trunc i32 %916 to i8
  %918 = and i8 %917, 1
  %919 = xor i8 %918, 1
  store i8 %919, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %920 = icmp eq i64 %912, 0
  %921 = zext i1 %920 to i8
  store i8 %921, i8* %30, align 1
  %922 = lshr i64 %912, 63
  %923 = trunc i64 %922 to i8
  store i8 %923, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v184 = select i1 %920, i64 22, i64 10
  %924 = add i64 %913, %.v184
  store i64 %924, i64* %3, align 8
  br i1 %920, label %block_.L_43f6ab, label %block_43f69f

block_43f69f:                                     ; preds = %block_43f682
  %925 = load i64, i64* %RBP.i, align 8
  %926 = add i64 %925, -24
  %927 = add i64 %924, 7
  store i64 %927, i64* %3, align 8
  %928 = inttoptr i64 %926 to i32*
  store i32 103, i32* %928, align 4
  br label %block_.L_43f899

block_.L_43f6ab:                                  ; preds = %block_43f682, %block_43f665, %block_.L_43f648
  %929 = phi i64 [ %878, %block_.L_43f648 ], [ %901, %block_43f665 ], [ %924, %block_43f682 ]
  %MEMORY.9 = phi %struct.Memory* [ %call2_43f656, %block_.L_43f648 ], [ %call2_43f673, %block_43f665 ], [ %call2_43f690, %block_43f682 ]
  store i64 ptrtoint (%G__0x459fe7_type* @G__0x459fe7 to i64), i64* %RSI.i312, align 8
  %930 = load i64, i64* %RBP.i, align 8
  %931 = add i64 %930, -16
  %932 = add i64 %929, 14
  store i64 %932, i64* %3, align 8
  %933 = inttoptr i64 %931 to i64*
  %934 = load i64, i64* %933, align 8
  store i64 %934, i64* %RDI.i138, align 8
  %935 = add i64 %929, -253867
  %936 = add i64 %929, 19
  %937 = load i64, i64* %6, align 8
  %938 = add i64 %937, -8
  %939 = inttoptr i64 %938 to i64*
  store i64 %936, i64* %939, align 8
  store i64 %938, i64* %6, align 8
  store i64 %935, i64* %3, align 8
  %call2_43f6b9 = tail call %struct.Memory* @sub_401700.strstr_plt(%struct.State* nonnull %0, i64 %935, %struct.Memory* %MEMORY.9)
  %940 = load i64, i64* %RAX.i361, align 8
  %941 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %942 = trunc i64 %940 to i32
  %943 = and i32 %942, 255
  %944 = tail call i32 @llvm.ctpop.i32(i32 %943)
  %945 = trunc i32 %944 to i8
  %946 = and i8 %945, 1
  %947 = xor i8 %946, 1
  store i8 %947, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %948 = icmp eq i64 %940, 0
  %949 = zext i1 %948 to i8
  store i8 %949, i8* %30, align 1
  %950 = lshr i64 %940, 63
  %951 = trunc i64 %950 to i8
  store i8 %951, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v186 = select i1 %948, i64 51, i64 10
  %952 = add i64 %941, %.v186
  store i64 %952, i64* %3, align 8
  br i1 %948, label %block_.L_43f6f1, label %block_43f6c8

block_43f6c8:                                     ; preds = %block_.L_43f6ab
  store i64 ptrtoint (%G__0x458cfb_type* @G__0x458cfb to i64), i64* %RSI.i312, align 8
  %953 = load i64, i64* %RBP.i, align 8
  %954 = add i64 %953, -16
  %955 = add i64 %952, 14
  store i64 %955, i64* %3, align 8
  %956 = inttoptr i64 %954 to i64*
  %957 = load i64, i64* %956, align 8
  store i64 %957, i64* %RDI.i138, align 8
  %958 = add i64 %952, -253896
  %959 = add i64 %952, 19
  %960 = load i64, i64* %6, align 8
  %961 = add i64 %960, -8
  %962 = inttoptr i64 %961 to i64*
  store i64 %959, i64* %962, align 8
  store i64 %961, i64* %6, align 8
  store i64 %958, i64* %3, align 8
  %call2_43f6d6 = tail call %struct.Memory* @sub_401700.strstr_plt(%struct.State* nonnull %0, i64 %958, %struct.Memory* %call2_43f6b9)
  %963 = load i64, i64* %RAX.i361, align 8
  %964 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %965 = trunc i64 %963 to i32
  %966 = and i32 %965, 255
  %967 = tail call i32 @llvm.ctpop.i32(i32 %966)
  %968 = trunc i32 %967 to i8
  %969 = and i8 %968, 1
  %970 = xor i8 %969, 1
  store i8 %970, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %971 = icmp eq i64 %963, 0
  %972 = zext i1 %971 to i8
  store i8 %972, i8* %30, align 1
  %973 = lshr i64 %963, 63
  %974 = trunc i64 %973 to i8
  store i8 %974, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v187 = select i1 %971, i64 22, i64 10
  %975 = add i64 %964, %.v187
  store i64 %975, i64* %3, align 8
  br i1 %971, label %block_.L_43f6f1, label %block_43f6e5

block_43f6e5:                                     ; preds = %block_43f6c8
  %976 = load i64, i64* %RBP.i, align 8
  %977 = add i64 %976, -24
  %978 = add i64 %975, 7
  store i64 %978, i64* %3, align 8
  %979 = inttoptr i64 %977 to i32*
  store i32 5, i32* %979, align 4
  br label %block_.L_43f899

block_.L_43f6f1:                                  ; preds = %block_43f6c8, %block_.L_43f6ab
  %980 = phi i64 [ %952, %block_.L_43f6ab ], [ %975, %block_43f6c8 ]
  %MEMORY.10 = phi %struct.Memory* [ %call2_43f6b9, %block_.L_43f6ab ], [ %call2_43f6d6, %block_43f6c8 ]
  store i64 ptrtoint (%G__0x459ff0_type* @G__0x459ff0 to i64), i64* %RSI.i312, align 8
  store i64 6, i64* %RAX.i361, align 8
  store i64 6, i64* %RDX.i329, align 8
  %981 = load i64, i64* %RBP.i, align 8
  %982 = add i64 %981, -16
  %983 = add i64 %980, 21
  store i64 %983, i64* %3, align 8
  %984 = inttoptr i64 %982 to i64*
  %985 = load i64, i64* %984, align 8
  store i64 %985, i64* %RDI.i138, align 8
  %986 = add i64 %980, -254753
  %987 = add i64 %980, 26
  %988 = load i64, i64* %6, align 8
  %989 = add i64 %988, -8
  %990 = inttoptr i64 %989 to i64*
  store i64 %987, i64* %990, align 8
  store i64 %989, i64* %6, align 8
  store i64 %986, i64* %3, align 8
  %991 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %MEMORY.10)
  %992 = load i32, i32* %EAX.i424, align 4
  %993 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %994 = and i32 %992, 255
  %995 = tail call i32 @llvm.ctpop.i32(i32 %994)
  %996 = trunc i32 %995 to i8
  %997 = and i8 %996, 1
  %998 = xor i8 %997, 1
  store i8 %998, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %999 = icmp eq i32 %992, 0
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %30, align 1
  %1001 = lshr i32 %992, 31
  %1002 = trunc i32 %1001 to i8
  store i8 %1002, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v188 = select i1 %999, i64 44, i64 9
  %1003 = add i64 %993, %.v188
  store i64 %1003, i64* %3, align 8
  br i1 %999, label %block_.L_43f737, label %block_43f714

block_43f714:                                     ; preds = %block_.L_43f6f1
  store i64 ptrtoint (%G__0x459ff7_type* @G__0x459ff7 to i64), i64* %RSI.i312, align 8
  store i64 6, i64* %RAX.i361, align 8
  store i64 6, i64* %RDX.i329, align 8
  %1004 = load i64, i64* %RBP.i, align 8
  %1005 = add i64 %1004, -16
  %1006 = add i64 %1003, 21
  store i64 %1006, i64* %3, align 8
  %1007 = inttoptr i64 %1005 to i64*
  %1008 = load i64, i64* %1007, align 8
  store i64 %1008, i64* %RDI.i138, align 8
  %1009 = add i64 %1003, -254788
  %1010 = add i64 %1003, 26
  %1011 = load i64, i64* %6, align 8
  %1012 = add i64 %1011, -8
  %1013 = inttoptr i64 %1012 to i64*
  store i64 %1010, i64* %1013, align 8
  store i64 %1012, i64* %6, align 8
  store i64 %1009, i64* %3, align 8
  %1014 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %991)
  %1015 = load i32, i32* %EAX.i424, align 4
  %1016 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1017 = and i32 %1015, 255
  %1018 = tail call i32 @llvm.ctpop.i32(i32 %1017)
  %1019 = trunc i32 %1018 to i8
  %1020 = and i8 %1019, 1
  %1021 = xor i8 %1020, 1
  store i8 %1021, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1022 = icmp eq i32 %1015, 0
  %1023 = zext i1 %1022 to i8
  store i8 %1023, i8* %30, align 1
  %1024 = lshr i32 %1015, 31
  %1025 = trunc i32 %1024 to i8
  store i8 %1025, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v189 = select i1 %1022, i64 9, i64 21
  %1026 = add i64 %1016, %.v189
  store i64 %1026, i64* %3, align 8
  br i1 %1022, label %block_.L_43f737, label %block_.L_43f743

block_.L_43f737:                                  ; preds = %block_43f714, %block_.L_43f6f1
  %1027 = phi i64 [ %1003, %block_.L_43f6f1 ], [ %1026, %block_43f714 ]
  %MEMORY.11 = phi %struct.Memory* [ %991, %block_.L_43f6f1 ], [ %1014, %block_43f714 ]
  %1028 = load i64, i64* %RBP.i, align 8
  %1029 = add i64 %1028, -24
  %1030 = add i64 %1027, 7
  store i64 %1030, i64* %3, align 8
  %1031 = inttoptr i64 %1029 to i32*
  store i32 2, i32* %1031, align 4
  br label %block_.L_43f899

block_.L_43f743:                                  ; preds = %block_43f714
  store i64 ptrtoint (%G__0x459fff_type* @G__0x459fff to i64), i64* %RSI.i312, align 8
  store i64 5, i64* %RAX.i361, align 8
  store i64 5, i64* %RDX.i329, align 8
  %1032 = load i64, i64* %RBP.i, align 8
  %1033 = add i64 %1032, -16
  %1034 = add i64 %1026, 21
  store i64 %1034, i64* %3, align 8
  %1035 = inttoptr i64 %1033 to i64*
  %1036 = load i64, i64* %1035, align 8
  store i64 %1036, i64* %RDI.i138, align 8
  %1037 = add i64 %1026, -254835
  %1038 = add i64 %1026, 26
  %1039 = load i64, i64* %6, align 8
  %1040 = add i64 %1039, -8
  %1041 = inttoptr i64 %1040 to i64*
  store i64 %1038, i64* %1041, align 8
  store i64 %1040, i64* %6, align 8
  store i64 %1037, i64* %3, align 8
  %1042 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1014)
  %1043 = load i32, i32* %EAX.i424, align 4
  %1044 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1045 = and i32 %1043, 255
  %1046 = tail call i32 @llvm.ctpop.i32(i32 %1045)
  %1047 = trunc i32 %1046 to i8
  %1048 = and i8 %1047, 1
  %1049 = xor i8 %1048, 1
  store i8 %1049, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1050 = icmp eq i32 %1043, 0
  %1051 = zext i1 %1050 to i8
  store i8 %1051, i8* %30, align 1
  %1052 = lshr i32 %1043, 31
  %1053 = trunc i32 %1052 to i8
  store i8 %1053, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v190 = select i1 %1050, i64 44, i64 9
  %1054 = add i64 %1044, %.v190
  store i64 %1054, i64* %3, align 8
  br i1 %1050, label %block_.L_43f789, label %block_43f766

block_43f766:                                     ; preds = %block_.L_43f743
  store i64 ptrtoint (%G__0x45a005_type* @G__0x45a005 to i64), i64* %RSI.i312, align 8
  store i64 5, i64* %RAX.i361, align 8
  store i64 5, i64* %RDX.i329, align 8
  %1055 = load i64, i64* %RBP.i, align 8
  %1056 = add i64 %1055, -16
  %1057 = add i64 %1054, 21
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1056 to i64*
  %1059 = load i64, i64* %1058, align 8
  store i64 %1059, i64* %RDI.i138, align 8
  %1060 = add i64 %1054, -254870
  %1061 = add i64 %1054, 26
  %1062 = load i64, i64* %6, align 8
  %1063 = add i64 %1062, -8
  %1064 = inttoptr i64 %1063 to i64*
  store i64 %1061, i64* %1064, align 8
  store i64 %1063, i64* %6, align 8
  store i64 %1060, i64* %3, align 8
  %1065 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64, i64, i64)* @strncmp to i64), %struct.Memory* %1042)
  %1066 = load i32, i32* %EAX.i424, align 4
  %1067 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1068 = and i32 %1066, 255
  %1069 = tail call i32 @llvm.ctpop.i32(i32 %1068)
  %1070 = trunc i32 %1069 to i8
  %1071 = and i8 %1070, 1
  %1072 = xor i8 %1071, 1
  store i8 %1072, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1073 = icmp eq i32 %1066, 0
  %1074 = zext i1 %1073 to i8
  store i8 %1074, i8* %30, align 1
  %1075 = lshr i32 %1066, 31
  %1076 = trunc i32 %1075 to i8
  store i8 %1076, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v191 = select i1 %1073, i64 9, i64 21
  %1077 = add i64 %1067, %.v191
  store i64 %1077, i64* %3, align 8
  br i1 %1073, label %block_.L_43f789, label %block_.L_43f795

block_.L_43f789:                                  ; preds = %block_43f766, %block_.L_43f743
  %1078 = phi i64 [ %1054, %block_.L_43f743 ], [ %1077, %block_43f766 ]
  %MEMORY.12 = phi %struct.Memory* [ %1042, %block_.L_43f743 ], [ %1065, %block_43f766 ]
  %1079 = load i64, i64* %RBP.i, align 8
  %1080 = add i64 %1079, -24
  %1081 = add i64 %1078, 7
  store i64 %1081, i64* %3, align 8
  %1082 = inttoptr i64 %1080 to i32*
  store i32 4, i32* %1082, align 4
  br label %block_.L_43f899

block_.L_43f795:                                  ; preds = %block_43f766
  %1083 = load i64, i64* %RBP.i, align 8
  %1084 = add i64 %1083, -48
  store i64 %1084, i64* %RDI.i138, align 8
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i312, align 8
  store i64 0, i64* %RAX.i361, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %RDX.i329, align 8
  %1085 = add i64 %1083, -16
  %1086 = add i64 %1077, 22
  store i64 %1086, i64* %3, align 8
  %1087 = inttoptr i64 %1085 to i64*
  %1088 = load i64, i64* %1087, align 8
  store i64 %1088, i64* %RCX.i102, align 8
  %1089 = add i64 %1077, 26
  store i64 %1089, i64* %3, align 8
  %1090 = inttoptr i64 %1084 to i64*
  store i64 %1088, i64* %1090, align 8
  %1091 = load i64, i64* %3, align 8
  %1092 = add i64 %1091, 28321
  %1093 = add i64 %1091, 5
  %1094 = load i64, i64* %6, align 8
  %1095 = add i64 %1094, -8
  %1096 = inttoptr i64 %1095 to i64*
  store i64 %1093, i64* %1096, align 8
  store i64 %1095, i64* %6, align 8
  store i64 %1092, i64* %3, align 8
  %call2_43f7af = tail call %struct.Memory* @sub_446650.sre_strtok(%struct.State* nonnull %0, i64 %1092, %struct.Memory* %1065)
  %1097 = load i64, i64* %RBP.i, align 8
  %1098 = add i64 %1097, -56
  %1099 = load i64, i64* %RAX.i361, align 8
  %1100 = load i64, i64* %3, align 8
  %1101 = add i64 %1100, 4
  store i64 %1101, i64* %3, align 8
  %1102 = inttoptr i64 %1098 to i64*
  store i64 %1099, i64* %1102, align 8
  %1103 = load i64, i64* %RAX.i361, align 8
  %1104 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1105 = trunc i64 %1103 to i32
  %1106 = and i32 %1105, 255
  %1107 = tail call i32 @llvm.ctpop.i32(i32 %1106)
  %1108 = trunc i32 %1107 to i8
  %1109 = and i8 %1108, 1
  %1110 = xor i8 %1109, 1
  store i8 %1110, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1111 = icmp eq i64 %1103, 0
  %1112 = zext i1 %1111 to i8
  store i8 %1112, i8* %30, align 1
  %1113 = lshr i64 %1103, 63
  %1114 = trunc i64 %1113 to i8
  store i8 %1114, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v192 = select i1 %1111, i64 10, i64 15
  %1115 = add i64 %1104, %.v192
  store i64 %1115, i64* %3, align 8
  br i1 %1111, label %block_43f7c2, label %block_.L_43f7c7

block_43f7c2:                                     ; preds = %block_.L_43f795
  %1116 = add i64 %1115, -1474
  br label %block_.L_43f200.backedge

block_.L_43f7c7:                                  ; preds = %block_.L_43f795
  store i64 ptrtoint (%G__0x45a00b_type* @G__0x45a00b to i64), i64* %RDI.i138, align 8
  %1117 = load i64, i64* %RBP.i, align 8
  %1118 = add i64 %1117, -56
  %1119 = add i64 %1115, 14
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1118 to i64*
  %1121 = load i64, i64* %1120, align 8
  store i64 %1121, i64* %RAX.i361, align 8
  %1122 = add i64 %1115, 17
  store i64 %1122, i64* %3, align 8
  %1123 = inttoptr i64 %1121 to i8*
  %1124 = load i8, i8* %1123, align 1
  %1125 = sext i8 %1124 to i64
  %1126 = and i64 %1125, 4294967295
  store i64 %1126, i64* %RSI.i312, align 8
  %1127 = add i64 %1115, -254791
  %1128 = add i64 %1115, 22
  %1129 = load i64, i64* %6, align 8
  %1130 = add i64 %1129, -8
  %1131 = inttoptr i64 %1130 to i64*
  store i64 %1128, i64* %1131, align 8
  store i64 %1130, i64* %6, align 8
  store i64 %1127, i64* %3, align 8
  %call2_43f7d8 = tail call %struct.Memory* @sub_401480.strchr_plt(%struct.State* nonnull %0, i64 %1127, %struct.Memory* %call2_43f7af)
  %1132 = load i64, i64* %RAX.i361, align 8
  %1133 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1134 = trunc i64 %1132 to i32
  %1135 = and i32 %1134, 255
  %1136 = tail call i32 @llvm.ctpop.i32(i32 %1135)
  %1137 = trunc i32 %1136 to i8
  %1138 = and i8 %1137, 1
  %1139 = xor i8 %1138, 1
  store i8 %1139, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1140 = icmp eq i64 %1132, 0
  %1141 = zext i1 %1140 to i8
  store i8 %1141, i8* %30, align 1
  %1142 = lshr i64 %1132, 63
  %1143 = trunc i64 %1142 to i8
  store i8 %1143, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v193 = select i1 %1140, i64 15, i64 10
  %1144 = add i64 %1133, %.v193
  store i64 %1144, i64* %3, align 8
  br i1 %1140, label %block_.L_43f7ec, label %block_43f7e7

block_43f7e7:                                     ; preds = %block_.L_43f7c7
  %1145 = add i64 %1144, -1511
  br label %block_.L_43f200.backedge

block_.L_43f7ec:                                  ; preds = %block_.L_43f7c7
  %1146 = load i64, i64* %RBP.i, align 8
  %1147 = add i64 %1146, -48
  store i64 %1147, i64* %RDI.i138, align 8
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI.i312, align 8
  %1148 = and i64 %1132, 4294967295
  store i64 %1148, i64* %RAX.i361, align 8
  store i8 0, i8* %14, align 1
  store i8 %1139, i8* %21, align 1
  %1149 = icmp eq i32 %1134, 0
  %1150 = zext i1 %1149 to i8
  store i8 %1150, i8* %30, align 1
  %1151 = lshr i32 %1134, 31
  %1152 = trunc i32 %1151 to i8
  store i8 %1152, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %1153 = and i64 %1132, 4294967295
  store i64 %1153, i64* %RDX.i329, align 8
  %1154 = add i64 %1144, 28260
  %1155 = add i64 %1144, 23
  %1156 = load i64, i64* %6, align 8
  %1157 = add i64 %1156, -8
  %1158 = inttoptr i64 %1157 to i64*
  store i64 %1155, i64* %1158, align 8
  store i64 %1157, i64* %6, align 8
  store i64 %1154, i64* %3, align 8
  %call2_43f7fe = tail call %struct.Memory* @sub_446650.sre_strtok(%struct.State* nonnull %0, i64 %1154, %struct.Memory* %call2_43f7d8)
  %1159 = load i64, i64* %RBP.i, align 8
  %1160 = add i64 %1159, -64
  %1161 = load i64, i64* %RAX.i361, align 8
  %1162 = load i64, i64* %3, align 8
  %1163 = add i64 %1162, 4
  store i64 %1163, i64* %3, align 8
  %1164 = inttoptr i64 %1160 to i64*
  store i64 %1161, i64* %1164, align 8
  %1165 = load i64, i64* %RAX.i361, align 8
  %1166 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1167 = trunc i64 %1165 to i32
  %1168 = and i32 %1167, 255
  %1169 = tail call i32 @llvm.ctpop.i32(i32 %1168)
  %1170 = trunc i32 %1169 to i8
  %1171 = and i8 %1170, 1
  %1172 = xor i8 %1171, 1
  store i8 %1172, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1173 = icmp eq i64 %1165, 0
  %1174 = zext i1 %1173 to i8
  store i8 %1174, i8* %30, align 1
  %1175 = lshr i64 %1165, 63
  %1176 = trunc i64 %1175 to i8
  store i8 %1176, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v194 = select i1 %1173, i64 10, i64 17
  %1177 = add i64 %1166, %.v194
  store i64 %1177, i64* %3, align 8
  br i1 %1173, label %block_43f811, label %block_.L_43f818

block_43f811:                                     ; preds = %block_.L_43f7ec
  %1178 = load i64, i64* %RBP.i, align 8
  %1179 = add i64 %1178, -68
  %1180 = add i64 %1177, 7
  store i64 %1180, i64* %3, align 8
  %1181 = inttoptr i64 %1179 to i32*
  store i32 1, i32* %1181, align 4
  %.pre159 = load i64, i64* %3, align 8
  br label %block_.L_43f818

block_.L_43f818:                                  ; preds = %block_.L_43f7ec, %block_43f811
  %1182 = phi i64 [ %.pre159, %block_43f811 ], [ %1177, %block_.L_43f7ec ]
  %1183 = load i64, i64* %RBP.i, align 8
  %1184 = add i64 %1183, -64
  %1185 = add i64 %1182, 5
  store i64 %1185, i64* %3, align 8
  %1186 = inttoptr i64 %1184 to i64*
  %1187 = load i64, i64* %1186, align 8
  store i8 0, i8* %14, align 1
  %1188 = trunc i64 %1187 to i32
  %1189 = and i32 %1188, 255
  %1190 = tail call i32 @llvm.ctpop.i32(i32 %1189)
  %1191 = trunc i32 %1190 to i8
  %1192 = and i8 %1191, 1
  %1193 = xor i8 %1192, 1
  store i8 %1193, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1194 = icmp eq i64 %1187, 0
  %1195 = zext i1 %1194 to i8
  store i8 %1195, i8* %30, align 1
  %1196 = lshr i64 %1187, 63
  %1197 = trunc i64 %1196 to i8
  store i8 %1197, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v195 = select i1 %1194, i64 36, i64 11
  %1198 = add i64 %1182, %.v195
  store i64 %1198, i64* %3, align 8
  br i1 %1194, label %block_.L_43f83c, label %block_43f823

block_43f823:                                     ; preds = %block_.L_43f818
  %1199 = add i64 %1198, 4
  store i64 %1199, i64* %3, align 8
  %1200 = load i64, i64* %1186, align 8
  store i64 %1200, i64* %RDI.i138, align 8
  %1201 = add i64 %1198, 333
  %1202 = add i64 %1198, 9
  %1203 = load i64, i64* %6, align 8
  %1204 = add i64 %1203, -8
  %1205 = inttoptr i64 %1204 to i64*
  store i64 %1202, i64* %1205, align 8
  store i64 %1204, i64* %6, align 8
  store i64 %1201, i64* %3, align 8
  %call2_43f827 = tail call %struct.Memory* @sub_43f970.Seqtype(%struct.State* nonnull %0, i64 %1201, %struct.Memory* %call2_43f7fe)
  %1206 = load i32, i32* %EAX.i424, align 4
  %1207 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1208 = and i32 %1206, 255
  %1209 = tail call i32 @llvm.ctpop.i32(i32 %1208)
  %1210 = trunc i32 %1209 to i8
  %1211 = and i8 %1210, 1
  %1212 = xor i8 %1211, 1
  store i8 %1212, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1213 = icmp eq i32 %1206, 0
  %1214 = zext i1 %1213 to i8
  store i8 %1214, i8* %30, align 1
  %1215 = lshr i32 %1206, 31
  %1216 = trunc i32 %1215 to i8
  store i8 %1216, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v196 = select i1 %1213, i64 9, i64 16
  %1217 = add i64 %1207, %.v196
  store i64 %1217, i64* %3, align 8
  br i1 %1213, label %block_43f835, label %block_.L_43f83c

block_43f835:                                     ; preds = %block_43f823
  %1218 = load i64, i64* %RBP.i, align 8
  %1219 = add i64 %1218, -68
  %1220 = add i64 %1217, 7
  store i64 %1220, i64* %3, align 8
  %1221 = inttoptr i64 %1219 to i32*
  store i32 1, i32* %1221, align 4
  %.pre160 = load i64, i64* %3, align 8
  br label %block_.L_43f83c

block_.L_43f83c:                                  ; preds = %block_43f823, %block_43f835, %block_.L_43f818
  %1222 = phi i64 [ %1198, %block_.L_43f818 ], [ %1217, %block_43f823 ], [ %.pre160, %block_43f835 ]
  %MEMORY.14 = phi %struct.Memory* [ %call2_43f7fe, %block_.L_43f818 ], [ %call2_43f827, %block_43f823 ], [ %call2_43f827, %block_43f835 ]
  %1223 = load i64, i64* %RBP.i, align 8
  %1224 = add i64 %1223, -28
  %1225 = add i64 %1222, 3
  store i64 %1225, i64* %3, align 8
  %1226 = inttoptr i64 %1224 to i32*
  %1227 = load i32, i32* %1226, align 4
  %1228 = add i32 %1227, 1
  %1229 = zext i32 %1228 to i64
  store i64 %1229, i64* %RAX.i361, align 8
  %1230 = icmp eq i32 %1227, -1
  %1231 = icmp eq i32 %1228, 0
  %1232 = or i1 %1230, %1231
  %1233 = zext i1 %1232 to i8
  store i8 %1233, i8* %14, align 1
  %1234 = and i32 %1228, 255
  %1235 = tail call i32 @llvm.ctpop.i32(i32 %1234)
  %1236 = trunc i32 %1235 to i8
  %1237 = and i8 %1236, 1
  %1238 = xor i8 %1237, 1
  store i8 %1238, i8* %21, align 1
  %1239 = xor i32 %1228, %1227
  %1240 = lshr i32 %1239, 4
  %1241 = trunc i32 %1240 to i8
  %1242 = and i8 %1241, 1
  store i8 %1242, i8* %27, align 1
  %1243 = zext i1 %1231 to i8
  store i8 %1243, i8* %30, align 1
  %1244 = lshr i32 %1228, 31
  %1245 = trunc i32 %1244 to i8
  store i8 %1245, i8* %33, align 1
  %1246 = lshr i32 %1227, 31
  %1247 = xor i32 %1244, %1246
  %1248 = add nuw nsw i32 %1247, %1244
  %1249 = icmp eq i32 %1248, 2
  %1250 = zext i1 %1249 to i8
  store i8 %1250, i8* %39, align 1
  %1251 = add i64 %1222, 9
  store i64 %1251, i64* %3, align 8
  store i32 %1228, i32* %1226, align 4
  %1252 = load i64, i64* %RBP.i, align 8
  %1253 = add i64 %1252, -28
  %1254 = load i64, i64* %3, align 8
  %1255 = add i64 %1254, 7
  store i64 %1255, i64* %3, align 8
  %1256 = inttoptr i64 %1253 to i32*
  %1257 = load i32, i32* %1256, align 4
  %1258 = add i32 %1257, -300
  %1259 = icmp ult i32 %1257, 300
  %1260 = zext i1 %1259 to i8
  store i8 %1260, i8* %14, align 1
  %1261 = and i32 %1258, 255
  %1262 = tail call i32 @llvm.ctpop.i32(i32 %1261)
  %1263 = trunc i32 %1262 to i8
  %1264 = and i8 %1263, 1
  %1265 = xor i8 %1264, 1
  store i8 %1265, i8* %21, align 1
  %1266 = xor i32 %1258, %1257
  %1267 = lshr i32 %1266, 4
  %1268 = trunc i32 %1267 to i8
  %1269 = and i8 %1268, 1
  store i8 %1269, i8* %27, align 1
  %1270 = icmp eq i32 %1258, 0
  %1271 = zext i1 %1270 to i8
  store i8 %1271, i8* %30, align 1
  %1272 = lshr i32 %1258, 31
  %1273 = trunc i32 %1272 to i8
  store i8 %1273, i8* %33, align 1
  %1274 = lshr i32 %1257, 31
  %1275 = xor i32 %1272, %1274
  %1276 = add nuw nsw i32 %1275, %1274
  %1277 = icmp eq i32 %1276, 2
  %1278 = zext i1 %1277 to i8
  store i8 %1278, i8* %39, align 1
  %.v197 = select i1 %1270, i64 13, i64 18
  %1279 = add i64 %1254, %.v197
  store i64 %1279, i64* %3, align 8
  br i1 %1270, label %block_43f852, label %block_.L_43f857

block_43f852:                                     ; preds = %block_.L_43f83c
  %1280 = add i64 %1279, 10
  store i64 %1280, i64* %3, align 8
  br label %block_.L_43f85c

block_.L_43f857:                                  ; preds = %block_.L_43f83c
  %1281 = add i64 %1279, -1623
  br label %block_.L_43f200.backedge

block_.L_43f85c.loopexit:                         ; preds = %block_.L_43f200
  br label %block_.L_43f85c

block_.L_43f85c:                                  ; preds = %block_.L_43f85c.loopexit, %block_43f852
  %1282 = phi i64 [ %1280, %block_43f852 ], [ %95, %block_.L_43f85c.loopexit ]
  %1283 = phi i64 [ %1252, %block_43f852 ], [ %.pre161, %block_.L_43f85c.loopexit ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.14, %block_43f852 ], [ %MEMORY.0, %block_.L_43f85c.loopexit ]
  %1284 = add i64 %1283, -28
  %1285 = add i64 %1282, 4
  store i64 %1285, i64* %3, align 8
  %1286 = inttoptr i64 %1284 to i32*
  %1287 = load i32, i32* %1286, align 4
  store i8 0, i8* %14, align 1
  %1288 = and i32 %1287, 255
  %1289 = tail call i32 @llvm.ctpop.i32(i32 %1288)
  %1290 = trunc i32 %1289 to i8
  %1291 = and i8 %1290, 1
  %1292 = xor i8 %1291, 1
  store i8 %1292, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1293 = icmp eq i32 %1287, 0
  %1294 = zext i1 %1293 to i8
  store i8 %1294, i8* %30, align 1
  %1295 = lshr i32 %1287, 31
  %1296 = trunc i32 %1295 to i8
  store i8 %1296, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v198 = select i1 %1293, i64 10, i64 27
  %1297 = add i64 %1282, %.v198
  store i64 %1297, i64* %3, align 8
  br i1 %1293, label %block_43f866, label %block_.L_43f877

block_43f866:                                     ; preds = %block_.L_43f85c
  store i64 ptrtoint (%G__0x45a00e_type* @G__0x45a00e to i64), i64* %RDI.i138, align 8
  %AL.i = bitcast %union.anon* %69 to i8*
  store i8 0, i8* %AL.i, align 1
  %1298 = add i64 %1297, -3670
  %1299 = add i64 %1297, 17
  %1300 = load i64, i64* %6, align 8
  %1301 = add i64 %1300, -8
  %1302 = inttoptr i64 %1301 to i64*
  store i64 %1299, i64* %1302, align 8
  store i64 %1301, i64* %6, align 8
  store i64 %1298, i64* %3, align 8
  %call2_43f872 = tail call %struct.Memory* @sub_43ea10.Die(%struct.State* nonnull %0, i64 %1298, %struct.Memory* %MEMORY.15)
  %.pre162 = load i64, i64* %RBP.i, align 8
  %.pre163 = load i64, i64* %3, align 8
  br label %block_.L_43f877

block_.L_43f877:                                  ; preds = %block_.L_43f85c, %block_43f866
  %1303 = phi i64 [ %1297, %block_.L_43f85c ], [ %.pre163, %block_43f866 ]
  %1304 = phi i64 [ %1283, %block_.L_43f85c ], [ %.pre162, %block_43f866 ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.15, %block_.L_43f85c ], [ %call2_43f872, %block_43f866 ]
  %1305 = add i64 %1304, -68
  %1306 = add i64 %1303, 4
  store i64 %1306, i64* %3, align 8
  %1307 = inttoptr i64 %1305 to i32*
  %1308 = load i32, i32* %1307, align 4
  %1309 = add i32 %1308, -1
  %1310 = icmp eq i32 %1308, 0
  %1311 = zext i1 %1310 to i8
  store i8 %1311, i8* %14, align 1
  %1312 = and i32 %1309, 255
  %1313 = tail call i32 @llvm.ctpop.i32(i32 %1312)
  %1314 = trunc i32 %1313 to i8
  %1315 = and i8 %1314, 1
  %1316 = xor i8 %1315, 1
  store i8 %1316, i8* %21, align 1
  %1317 = xor i32 %1309, %1308
  %1318 = lshr i32 %1317, 4
  %1319 = trunc i32 %1318 to i8
  %1320 = and i8 %1319, 1
  store i8 %1320, i8* %27, align 1
  %1321 = icmp eq i32 %1309, 0
  %1322 = zext i1 %1321 to i8
  store i8 %1322, i8* %30, align 1
  %1323 = lshr i32 %1309, 31
  %1324 = trunc i32 %1323 to i8
  store i8 %1324, i8* %33, align 1
  %1325 = lshr i32 %1308, 31
  %1326 = xor i32 %1323, %1325
  %1327 = add nuw nsw i32 %1326, %1325
  %1328 = icmp eq i32 %1327, 2
  %1329 = zext i1 %1328 to i8
  store i8 %1329, i8* %39, align 1
  %.v = select i1 %1321, i64 10, i64 22
  %1330 = add i64 %1303, %.v
  %1331 = add i64 %1304, -24
  %1332 = add i64 %1330, 7
  store i64 %1332, i64* %3, align 8
  %1333 = inttoptr i64 %1331 to i32*
  br i1 %1321, label %block_43f881, label %block_.L_43f88d

block_43f881:                                     ; preds = %block_.L_43f877
  store i32 0, i32* %1333, align 4
  %1334 = load i64, i64* %3, align 8
  %1335 = add i64 %1334, 12
  store i64 %1335, i64* %3, align 8
  br label %block_.L_43f899

block_.L_43f88d:                                  ; preds = %block_.L_43f877
  store i32 102, i32* %1333, align 4
  br label %block_.L_43f899

block_.L_43f899:                                  ; preds = %block_43f881, %block_.L_43f88d, %block_.L_43f789, %block_.L_43f737, %block_43f6e5, %block_43f69f, %block_.L_43f63c, %block_.L_43f5ea, %block_43f44b, %block_.L_43f3b7, %block_43f365, %block_43f319, %block_.L_43f2ea, %block_43f298, %block_43f27c
  %.sink49 = phi i64 [ 265, %block_.L_43f789 ], [ 347, %block_.L_43f737 ], [ 429, %block_43f6e5 ], [ 499, %block_43f69f ], [ 598, %block_.L_43f63c ], [ 680, %block_.L_43f5ea ], [ 1086, %block_43f44b ], [ 1243, %block_.L_43f3b7 ], [ 1325, %block_43f365 ], [ 1401, %block_43f319 ], [ 1448, %block_.L_43f2ea ], [ 1530, %block_43f298 ], [ 1558, %block_43f27c ], [ 5, %block_.L_43f88d ], [ 5, %block_43f881 ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.12, %block_.L_43f789 ], [ %MEMORY.11, %block_.L_43f737 ], [ %call2_43f6d6, %block_43f6e5 ], [ %call2_43f690, %block_43f69f ], [ %MEMORY.8, %block_.L_43f63c ], [ %MEMORY.7, %block_.L_43f5ea ], [ %528, %block_43f44b ], [ %MEMORY.4, %block_.L_43f3b7 ], [ %call2_43f356, %block_43f365 ], [ %278, %block_43f319 ], [ %MEMORY.2, %block_.L_43f2ea ], [ %MEMORY.1, %block_43f298 ], [ %call2_43f26d, %block_43f27c ], [ %MEMORY.16, %block_.L_43f88d ], [ %MEMORY.16, %block_43f881 ]
  %1336 = load i64, i64* %3, align 8
  %1337 = add i64 %1336, %.sink49
  %1338 = load i64, i64* %RBP.i, align 8
  %1339 = add i64 %1338, -16
  %1340 = add i64 %1337, 5
  store i64 %1340, i64* %3, align 8
  %1341 = inttoptr i64 %1339 to i64*
  %1342 = load i64, i64* %1341, align 8
  store i8 0, i8* %14, align 1
  %1343 = trunc i64 %1342 to i32
  %1344 = and i32 %1343, 255
  %1345 = tail call i32 @llvm.ctpop.i32(i32 %1344)
  %1346 = trunc i32 %1345 to i8
  %1347 = and i8 %1346, 1
  %1348 = xor i8 %1347, 1
  store i8 %1348, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %1349 = icmp eq i64 %1342, 0
  %1350 = zext i1 %1349 to i8
  store i8 %1350, i8* %30, align 1
  %1351 = lshr i64 %1342, 63
  %1352 = trunc i64 %1351 to i8
  store i8 %1352, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v185 = select i1 %1349, i64 20, i64 11
  %1353 = add i64 %1337, %.v185
  store i64 %1353, i64* %3, align 8
  br i1 %1349, label %block_.L_43f8ad, label %block_43f8a4

block_43f8a4:                                     ; preds = %block_.L_43f899
  %1354 = add i64 %1353, 4
  store i64 %1354, i64* %3, align 8
  %1355 = load i64, i64* %1341, align 8
  store i64 %1355, i64* %RDI.i138, align 8
  %1356 = add i64 %1353, -255268
  %1357 = add i64 %1353, 9
  %1358 = load i64, i64* %6, align 8
  %1359 = add i64 %1358, -8
  %1360 = inttoptr i64 %1359 to i64*
  store i64 %1357, i64* %1360, align 8
  store i64 %1359, i64* %6, align 8
  store i64 %1356, i64* %3, align 8
  %1361 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %MEMORY.18)
  %.pre164 = load i64, i64* %RBP.i, align 8
  %.pre165 = load i64, i64* %3, align 8
  br label %block_.L_43f8ad

block_.L_43f8ad:                                  ; preds = %block_43f8a4, %block_.L_43f899
  %1362 = phi i64 [ %1353, %block_.L_43f899 ], [ %.pre165, %block_43f8a4 ]
  %1363 = phi i64 [ %1338, %block_.L_43f899 ], [ %.pre164, %block_43f8a4 ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.18, %block_.L_43f899 ], [ %1361, %block_43f8a4 ]
  %1364 = add i64 %1363, -8
  %1365 = add i64 %1362, 4
  store i64 %1365, i64* %3, align 8
  %1366 = inttoptr i64 %1364 to i64*
  %1367 = load i64, i64* %1366, align 8
  store i64 %1367, i64* %RDI.i138, align 8
  %1368 = add i64 %1362, -254989
  %1369 = add i64 %1362, 9
  %1370 = load i64, i64* %6, align 8
  %1371 = add i64 %1370, -8
  %1372 = inttoptr i64 %1371 to i64*
  store i64 %1369, i64* %1372, align 8
  store i64 %1371, i64* %6, align 8
  store i64 %1368, i64* %3, align 8
  %call2_43f8b1 = tail call %struct.Memory* @sub_4014a0.rewind_plt(%struct.State* nonnull %0, i64 %1368, %struct.Memory* %MEMORY.19)
  %1373 = load i64, i64* %RBP.i, align 8
  %1374 = add i64 %1373, -24
  %1375 = load i64, i64* %3, align 8
  %1376 = add i64 %1375, 3
  store i64 %1376, i64* %3, align 8
  %1377 = inttoptr i64 %1374 to i32*
  %1378 = load i32, i32* %1377, align 4
  %1379 = zext i32 %1378 to i64
  store i64 %1379, i64* %RAX.i361, align 8
  %1380 = load i64, i64* %6, align 8
  %1381 = add i64 %1380, 80
  store i64 %1381, i64* %6, align 8
  %1382 = icmp ugt i64 %1380, -81
  %1383 = zext i1 %1382 to i8
  store i8 %1383, i8* %14, align 1
  %1384 = trunc i64 %1381 to i32
  %1385 = and i32 %1384, 255
  %1386 = tail call i32 @llvm.ctpop.i32(i32 %1385)
  %1387 = trunc i32 %1386 to i8
  %1388 = and i8 %1387, 1
  %1389 = xor i8 %1388, 1
  store i8 %1389, i8* %21, align 1
  %1390 = xor i64 %1380, 16
  %1391 = xor i64 %1390, %1381
  %1392 = lshr i64 %1391, 4
  %1393 = trunc i64 %1392 to i8
  %1394 = and i8 %1393, 1
  store i8 %1394, i8* %27, align 1
  %1395 = icmp eq i64 %1381, 0
  %1396 = zext i1 %1395 to i8
  store i8 %1396, i8* %30, align 1
  %1397 = lshr i64 %1381, 63
  %1398 = trunc i64 %1397 to i8
  store i8 %1398, i8* %33, align 1
  %1399 = lshr i64 %1380, 63
  %1400 = xor i64 %1397, %1399
  %1401 = add nuw nsw i64 %1400, %1397
  %1402 = icmp eq i64 %1401, 2
  %1403 = zext i1 %1402 to i8
  store i8 %1403, i8* %39, align 1
  %1404 = add i64 %1375, 8
  store i64 %1404, i64* %3, align 8
  %1405 = add i64 %1380, 88
  %1406 = inttoptr i64 %1381 to i64*
  %1407 = load i64, i64* %1406, align 8
  store i64 %1407, i64* %RBP.i, align 8
  store i64 %1405, i64* %6, align 8
  %1408 = add i64 %1375, 9
  store i64 %1408, i64* %3, align 8
  %1409 = inttoptr i64 %1405 to i64*
  %1410 = load i64, i64* %1409, align 8
  store i64 %1410, i64* %3, align 8
  %1411 = add i64 %1380, 96
  store i64 %1411, i64* %6, align 8
  ret %struct.Memory* %call2_43f8b1
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
define %struct.Memory* @routine_subq__0x50___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -80
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 80
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
define %struct.Memory* @routine_movq__rdi__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movq__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  store i64 0, i64* %7, align 8
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
define %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x10__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sre_fgets(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43f85c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.IsBlankline(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43f232(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43f200(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -28
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
define %struct.Memory* @routine_jne_.L_43f469(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x459fa3___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459fa3_type* @G__0x459fa3 to i64), i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43f288(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x459fa8___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459fa8_type* @G__0x459fa8 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strstr_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43f288(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x10__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 16, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_43f899(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3e___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -62
  %8 = icmp ult i32 %4, 62
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
define %struct.Memory* @routine_jne_.L_43f2a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x7__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 7, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459fae___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459fae_type* @G__0x459fae to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xd___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43f2ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x459fbc___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459fbc_type* @G__0x459fbc to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43f2f6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x5__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 5, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459fca___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459fca_type* @G__0x459fca to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xe___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43f325(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x65__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 101, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x455d2b___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x455d2b_type* @G__0x455d2b to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_jne_.L_43f371(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x455d33___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x455d33_type* @G__0x455d33 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43f371(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x68__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 104, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x458ccb___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458ccb_type* @G__0x458ccb to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x17___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 23, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43f3b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x458ce3___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458ce3_type* @G__0x458ce3 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43f3c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x67__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 103, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4294967295, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sre_strdup(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x30__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45a1f5___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45a1f5_type* @G__0x45a1f5 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RCX, align 8
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
define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sre_strtok(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43f460(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.IsInt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.free_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x6a__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 106, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459a08___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459a08_type* @G__0x459a08 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43f5ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x459a0d___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459a0d_type* @G__0x459a0d to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459a12___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459a12_type* @G__0x459a12 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459a17___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459a17_type* @G__0x459a17 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459a1c___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459a1c_type* @G__0x459a1c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459a49___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459a49_type* @G__0x459a49 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459a76___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459a76_type* @G__0x459a76 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459aa3___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459aa3_type* @G__0x459aa3 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x4599e3___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x4599e3_type* @G__0x4599e3 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45992c___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45992c_type* @G__0x45992c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459931___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459931_type* @G__0x459931 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43f5f6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x66__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 102, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x45a46f___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45a46f_type* @G__0x45a46f to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_je_.L_43f63c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x459fd9___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459fd9_type* @G__0x459fd9 to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_jne_.L_43f648(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xc__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 12, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x458cfb___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458cfb_type* @G__0x458cfb to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43f6ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x458cfe___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x458cfe_type* @G__0x458cfe to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459fe0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459fe0_type* @G__0x459fe0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459fe7___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459fe7_type* @G__0x459fe7 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43f6f1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x459ff0___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459ff0_type* @G__0x459ff0 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43f737(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x459ff7___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459ff7_type* @G__0x459ff7 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43f743(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x459fff___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x459fff_type* @G__0x459fff to i64), i64* %RSI, align 8
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
define %struct.Memory* @routine_je_.L_43f789(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45a005___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45a005_type* @G__0x45a005 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43f795(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x4__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 4, i32* %7, align 4
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
define %struct.Memory* @routine_movq__rcx__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43f7c7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45a00b___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45a00b_type* @G__0x45a00b to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl___rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RAX to i8**
  %4 = load i8*, i8** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i8, i8* %4, align 1
  %8 = sext i8 %7 to i64
  %9 = and i64 %8, 4294967295
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.strchr_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_43f7ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43f818(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43f83c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.Seqtype(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_43f83c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x12c__MINUS0x1c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %9 = add i32 %8, -300
  %10 = icmp ult i32 %8, 300
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
define %struct.Memory* @routine_jne_.L_43f857(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43f85c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_43f877(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45a00e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45a00e_type* @G__0x45a00e to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_callq_.Die(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_jne_.L_43f88d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_43f894(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpq__0x0__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = trunc i64 %8 to i32
  %11 = and i32 %10, 255
  %12 = tail call i32 @llvm.ctpop.i32(i32 %11)
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = xor i8 %14, 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %15, i8* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %17, align 1
  %18 = icmp eq i64 %8, 0
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %19, i8* %20, align 1
  %21 = lshr i64 %8, 63
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_43f8ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.rewind_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x50___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 80
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -81
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
